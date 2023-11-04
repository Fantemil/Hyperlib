
local StrToNumber = tonumber;
local Byte = string.byte;
local Char = string.char;
local Sub = string.sub;
local Subg = string.gsub;
local Rep = string.rep;
local Concat = table.concat;
local Insert = table.insert;
local LDExp = math.ldexp;
local GetFEnv = getfenv or function()
	return _ENV;
end;
local Setmetatable = setmetatable;
local PCall = pcall;
local Select = select;
local Unpack = unpack or table.unpack;
local ToNumber = tonumber;
local function VMCall(ByteString, vmenv, ...)
	local DIP = 1;
	local repeatNext;
	ByteString = Subg(Sub(ByteString, 5), "..", function(byte)
		if (Byte(byte, 2) == 79) then
			repeatNext = StrToNumber(Sub(byte, 1, 1));
			return "";
		else
			local a = Char(StrToNumber(byte, 16));
			if repeatNext then
				local b = Rep(a, repeatNext);
				repeatNext = nil;
				return b;
			else
				return a;
			end
		end
	end);
	local function gBit(Bit, Start, End)
		if End then
			local Res = (Bit / (2 ^ (Start - 1))) % (2 ^ (((End - 1) - (Start - 1)) + 1));
			return Res - (Res % 1);
		else
			local Plc = 2 ^ (Start - 1);
			return (((Bit % (Plc + Plc)) >= Plc) and 1) or 0;
		end
	end
	local function gBits8()
		local a = Byte(ByteString, DIP, DIP);
		DIP = DIP + 1;
		return a;
	end
	local function gBits16()
		local a, b = Byte(ByteString, DIP, DIP + 2);
		DIP = DIP + 2;
		return (b * 256) + a;
	end
	local function gBits32()
		local a, b, c, d = Byte(ByteString, DIP, DIP + 3);
		DIP = DIP + 4;
		return (d * 16777216) + (c * 65536) + (b * 256) + a;
	end
	local function gFloat()
		local Left = gBits32();
		local Right = gBits32();
		local IsNormal = 1;
		local Mantissa = (gBit(Right, 1, 20) * (2 ^ 32)) + Left;
		local Exponent = gBit(Right, 21, 31);
		local Sign = ((gBit(Right, 32) == 1) and -1) or 1;
		if (Exponent == 0) then
			if (Mantissa == 0) then
				return Sign * 0;
			else
				Exponent = 1;
				IsNormal = 0;
			end
		elseif (Exponent == 2047) then
			return ((Mantissa == 0) and (Sign * (1 / 0))) or (Sign * NaN);
		end
		return LDExp(Sign, Exponent - 1023) * (IsNormal + (Mantissa / (2 ^ 52)));
	end
	local function gString(Len)
		local Str;
		if not Len then
			Len = gBits32();
			if (Len == 0) then
				return "";
			end
		end
		Str = Sub(ByteString, DIP, (DIP + Len) - 1);
		DIP = DIP + Len;
		local FStr = {};
		for Idx = 1, #Str do
			FStr[Idx] = Char(Byte(Sub(Str, Idx, Idx)));
		end
		return Concat(FStr);
	end
	local gInt = gBits32;
	local function _R(...)
		return {...}, Select("#", ...);
	end
	local function Deserialize()
		local Instrs = {};
		local Functions = {};
		local Lines = {};
		local Chunk = {Instrs,Functions,nil,Lines};
		local ConstCount = gBits32();
		local Consts = {};
		for Idx = 1, ConstCount do
			local Type = gBits8();
			local Cons;
			if (Type == 1) then
				Cons = gBits8() ~= 0;
			elseif (Type == 2) then
				Cons = gFloat();
			elseif (Type == 3) then
				Cons = gString();
			end
			Consts[Idx] = Cons;
		end
		Chunk[3] = gBits8();
		for Idx = 1, gBits32() do
			local Descriptor = gBits8();
			if (gBit(Descriptor, 1, 1) == 0) then
				local Type = gBit(Descriptor, 2, 3);
				local Mask = gBit(Descriptor, 4, 6);
				local Inst = {gBits16(),gBits16(),nil,nil};
				if (Type == 0) then
					Inst[3] = gBits16();
					Inst[4] = gBits16();
				elseif (Type == 1) then
					Inst[3] = gBits32();
				elseif (Type == 2) then
					Inst[3] = gBits32() - (2 ^ 16);
				elseif (Type == 3) then
					Inst[3] = gBits32() - (2 ^ 16);
					Inst[4] = gBits16();
				end
				if (gBit(Mask, 1, 1) == 1) then
					Inst[2] = Consts[Inst[2]];
				end
				if (gBit(Mask, 2, 2) == 1) then
					Inst[3] = Consts[Inst[3]];
				end
				if (gBit(Mask, 3, 3) == 1) then
					Inst[4] = Consts[Inst[4]];
				end
				Instrs[Idx] = Inst;
			end
		end
		for Idx = 1, gBits32() do
			Functions[Idx - 1] = Deserialize();
		end
		return Chunk;
	end
	local function Wrap(Chunk, Upvalues, Env)
		local Instr = Chunk[1];
		local Proto = Chunk[2];
		local Params = Chunk[3];
		return function(...)
			local Instr = Instr;
			local Proto = Proto;
			local Params = Params;
			local _R = _R;
			local VIP = 1;
			local Top = -1;
			local Vararg = {};
			local Args = {...};
			local PCount = Select("#", ...) - 1;
			local Lupvals = {};
			local Stk = {};
			for Idx = 0, PCount do
				if (Idx >= Params) then
					Vararg[Idx - Params] = Args[Idx + 1];
				else
					Stk[Idx] = Args[Idx + 1];
				end
			end
			local Varargsz = (PCount - Params) + 1;
			local Inst;
			local Enum;
			while true do
				Inst = Instr[VIP];
				Enum = Inst[1];
				if (Enum <= 31) then
					if (Enum <= 15) then
						if (Enum <= 7) then
							if (Enum <= 3) then
								if (Enum <= 1) then
									if (Enum == 0) then
										Stk[Inst[2]][Stk[Inst[3]]] = Inst[4];
									else
										local A = Inst[2];
										do
											return Stk[A](Unpack(Stk, A + 1, Inst[3]));
										end
									end
								elseif (Enum > 2) then
									local A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Top));
								else
									Stk[Inst[2]] = Inst[3];
								end
							elseif (Enum <= 5) then
								if (Enum == 4) then
									Stk[Inst[2]] = Stk[Inst[3]] % Stk[Inst[4]];
								else
									local A = Inst[2];
									Stk[A](Unpack(Stk, A + 1, Top));
								end
							elseif (Enum == 6) then
								local A = Inst[2];
								local B = Stk[Inst[3]];
								Stk[A + 1] = B;
								Stk[A] = B[Inst[4]];
							else
								local A = Inst[2];
								local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
								Top = (Limit + A) - 1;
								local Edx = 0;
								for Idx = A, Top do
									Edx = Edx + 1;
									Stk[Idx] = Results[Edx];
								end
							end
						elseif (Enum <= 11) then
							if (Enum <= 9) then
								if (Enum == 8) then
									if not Stk[Inst[2]] then
										VIP = VIP + 1;
									else
										VIP = Inst[3];
									end
								else
									local A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Top));
								end
							elseif (Enum == 10) then
								Stk[Inst[2]] = Stk[Inst[3]];
							else
								Stk[Inst[2]] = #Stk[Inst[3]];
							end
						elseif (Enum <= 13) then
							if (Enum > 12) then
								do
									return;
								end
							else
								Stk[Inst[2]] = Stk[Inst[3]] % Inst[4];
							end
						elseif (Enum > 14) then
							Stk[Inst[2]] = Env[Inst[3]];
						else
							local A = Inst[2];
							local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Top)));
							Top = (Limit + A) - 1;
							local Edx = 0;
							for Idx = A, Top do
								Edx = Edx + 1;
								Stk[Idx] = Results[Edx];
							end
						end
					elseif (Enum <= 23) then
						if (Enum <= 19) then
							if (Enum <= 17) then
								if (Enum > 16) then
									local A = Inst[2];
									local B = Stk[Inst[3]];
									Stk[A + 1] = B;
									Stk[A] = B[Inst[4]];
								else
									local A = Inst[2];
									Stk[A](Stk[A + 1]);
								end
							elseif (Enum == 18) then
								Stk[Inst[2]] = {};
							else
								local A = Inst[2];
								local Results, Limit = _R(Stk[A](Stk[A + 1]));
								Top = (Limit + A) - 1;
								local Edx = 0;
								for Idx = A, Top do
									Edx = Edx + 1;
									Stk[Idx] = Results[Edx];
								end
							end
						elseif (Enum <= 21) then
							if (Enum == 20) then
								Stk[Inst[2]][Stk[Inst[3]]] = Inst[4];
							else
								local NewProto = Proto[Inst[3]];
								local NewUvals;
								local Indexes = {};
								NewUvals = Setmetatable({}, {__index=function(_, Key)
									local Val = Indexes[Key];
									return Val[1][Val[2]];
								end,__newindex=function(_, Key, Value)
									local Val = Indexes[Key];
									Val[1][Val[2]] = Value;
								end});
								for Idx = 1, Inst[4] do
									VIP = VIP + 1;
									local Mvm = Instr[VIP];
									if (Mvm[1] == 39) then
										Indexes[Idx - 1] = {Stk,Mvm[3]};
									else
										Indexes[Idx - 1] = {Upvalues,Mvm[3]};
									end
									Lupvals[#Lupvals + 1] = Indexes;
								end
								Stk[Inst[2]] = Wrap(NewProto, NewUvals, Env);
							end
						elseif (Enum > 22) then
							Stk[Inst[2]] = {};
						else
							Stk[Inst[2]] = Inst[3];
						end
					elseif (Enum <= 27) then
						if (Enum <= 25) then
							if (Enum > 24) then
								local A = Inst[2];
								local T = Stk[A];
								for Idx = A + 1, Top do
									Insert(T, Stk[Idx]);
								end
							else
								local A = Inst[2];
								do
									return Stk[A](Unpack(Stk, A + 1, Inst[3]));
								end
							end
						elseif (Enum > 26) then
							local A = Inst[2];
							local Results, Limit = _R(Stk[A](Stk[A + 1]));
							Top = (Limit + A) - 1;
							local Edx = 0;
							for Idx = A, Top do
								Edx = Edx + 1;
								Stk[Idx] = Results[Edx];
							end
						else
							Stk[Inst[2]] = Inst[3] + Stk[Inst[4]];
						end
					elseif (Enum <= 29) then
						if (Enum == 28) then
							local A = Inst[2];
							Stk[A](Unpack(Stk, A + 1, Inst[3]));
						else
							Stk[Inst[2]] = Inst[3] ~= 0;
						end
					elseif (Enum > 30) then
						local A = Inst[2];
						do
							return Unpack(Stk, A, Top);
						end
					else
						local A = Inst[2];
						Stk[A](Unpack(Stk, A + 1, Top));
					end
				elseif (Enum <= 47) then
					if (Enum <= 39) then
						if (Enum <= 35) then
							if (Enum <= 33) then
								if (Enum > 32) then
									local A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
								else
									Stk[Inst[2]] = Stk[Inst[3]] + Inst[4];
								end
							elseif (Enum == 34) then
								Stk[Inst[2]][Stk[Inst[3]]] = Stk[Inst[4]];
							else
								local A = Inst[2];
								local Index = Stk[A];
								local Step = Stk[A + 2];
								if (Step > 0) then
									if (Index > Stk[A + 1]) then
										VIP = Inst[3];
									else
										Stk[A + 3] = Index;
									end
								elseif (Index < Stk[A + 1]) then
									VIP = Inst[3];
								else
									Stk[A + 3] = Index;
								end
							end
						elseif (Enum <= 37) then
							if (Enum > 36) then
								if not Stk[Inst[2]] then
									VIP = VIP + 1;
								else
									VIP = Inst[3];
								end
							else
								VIP = Inst[3];
							end
						elseif (Enum > 38) then
							Stk[Inst[2]] = Stk[Inst[3]];
						else
							Stk[Inst[2]] = #Stk[Inst[3]];
						end
					elseif (Enum <= 43) then
						if (Enum <= 41) then
							if (Enum == 40) then
								local A = Inst[2];
								local T = Stk[A];
								for Idx = A + 1, Top do
									Insert(T, Stk[Idx]);
								end
							else
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
							end
						elseif (Enum > 42) then
							Stk[Inst[2]] = Upvalues[Inst[3]];
						else
							local NewProto = Proto[Inst[3]];
							local NewUvals;
							local Indexes = {};
							NewUvals = Setmetatable({}, {__index=function(_, Key)
								local Val = Indexes[Key];
								return Val[1][Val[2]];
							end,__newindex=function(_, Key, Value)
								local Val = Indexes[Key];
								Val[1][Val[2]] = Value;
							end});
							for Idx = 1, Inst[4] do
								VIP = VIP + 1;
								local Mvm = Instr[VIP];
								if (Mvm[1] == 39) then
									Indexes[Idx - 1] = {Stk,Mvm[3]};
								else
									Indexes[Idx - 1] = {Upvalues,Mvm[3]};
								end
								Lupvals[#Lupvals + 1] = Indexes;
							end
							Stk[Inst[2]] = Wrap(NewProto, NewUvals, Env);
						end
					elseif (Enum <= 45) then
						if (Enum == 44) then
							local A = Inst[2];
							local Step = Stk[A + 2];
							local Index = Stk[A] + Step;
							Stk[A] = Index;
							if (Step > 0) then
								if (Index <= Stk[A + 1]) then
									VIP = Inst[3];
									Stk[A + 3] = Index;
								end
							elseif (Index >= Stk[A + 1]) then
								VIP = Inst[3];
								Stk[A + 3] = Index;
							end
						else
							VIP = Inst[3];
						end
					elseif (Enum > 46) then
						local A = Inst[2];
						Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
					else
						local A = Inst[2];
						Stk[A](Stk[A + 1]);
					end
				elseif (Enum <= 55) then
					if (Enum <= 51) then
						if (Enum <= 49) then
							if (Enum > 48) then
								local A = Inst[2];
								do
									return Unpack(Stk, A, Top);
								end
							else
								Stk[Inst[2]] = Stk[Inst[3]] % Inst[4];
							end
						elseif (Enum > 50) then
							local A = Inst[2];
							local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
							Top = (Limit + A) - 1;
							local Edx = 0;
							for Idx = A, Top do
								Edx = Edx + 1;
								Stk[Idx] = Results[Edx];
							end
						else
							Stk[Inst[2]] = Env[Inst[3]];
						end
					elseif (Enum <= 53) then
						if (Enum > 52) then
							Stk[Inst[2]] = Inst[3] ~= 0;
						else
							local A = Inst[2];
							Stk[A](Unpack(Stk, A + 1, Inst[3]));
						end
					elseif (Enum == 54) then
						Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
					else
						Stk[Inst[2]] = Inst[3] + Stk[Inst[4]];
					end
				elseif (Enum <= 59) then
					if (Enum <= 57) then
						if (Enum > 56) then
							local A = Inst[2];
							local Index = Stk[A];
							local Step = Stk[A + 2];
							if (Step > 0) then
								if (Index > Stk[A + 1]) then
									VIP = Inst[3];
								else
									Stk[A + 3] = Index;
								end
							elseif (Index < Stk[A + 1]) then
								VIP = Inst[3];
							else
								Stk[A + 3] = Index;
							end
						else
							Stk[Inst[2]] = Upvalues[Inst[3]];
						end
					elseif (Enum == 58) then
						Stk[Inst[2]] = Stk[Inst[3]] % Stk[Inst[4]];
					else
						Stk[Inst[2]] = Stk[Inst[3]] + Inst[4];
					end
				elseif (Enum <= 61) then
					if (Enum == 60) then
						do
							return;
						end
					else
						local A = Inst[2];
						local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Top)));
						Top = (Limit + A) - 1;
						local Edx = 0;
						for Idx = A, Top do
							Edx = Edx + 1;
							Stk[Idx] = Results[Edx];
						end
					end
				elseif (Enum > 62) then
					local A = Inst[2];
					local Step = Stk[A + 2];
					local Index = Stk[A] + Step;
					Stk[A] = Index;
					if (Step > 0) then
						if (Index <= Stk[A + 1]) then
							VIP = Inst[3];
							Stk[A + 3] = Index;
						end
					elseif (Index >= Stk[A + 1]) then
						VIP = Inst[3];
						Stk[A + 3] = Index;
					end
				else
					Stk[Inst[2]][Stk[Inst[3]]] = Stk[Inst[4]];
				end
				VIP = VIP + 1;
			end
		end;
	end
	return Wrap(Deserialize(), {}, vmenv)(...);
end
VMCall("LOL!503O0003063O00737472696E6703043O006368617203043O00627974652O033O0073756203053O0062697433322O033O0062697403043O0062786F7203053O007461626C6503063O00636F6E63617403063O00696E7365727403043O0067616D65030A3O0047657453657276696365030A3O00E2D7DA37F2BED539C4CA03083O007EB1A3BB4586DBA703073O00536574436F726503103O0010C824C1D22CD923C3F520CC3ECCF32D03053O009C43AD4AA503054O00BE5D1AB903073O002654D72976DC462O033O007C192503053O009E3076427203043O009F21082203073O009BCB44705613C5030E3O0060D424F54E7FA5CA43D039E8456B03083O009826BD569C20188503083O00D842B547E85EA84803043O00269C37C7026O00144003043O0077616974026O00F03F030A3O009B697D3A0771E864BD7403083O0023C81D1C4873149A03103O002ABADFDBA3232010B9D8DC8C383D16B103073O005479DFB1BFED4C03053O008F5FDDAC3F03083O00A1DB36A9C05A30502O033O00654D0703043O004529226003043O0088C6CF1E03063O004BDCA3B76A62032D3O0021B28A39DE0BB48C77EA12B38577EF03B69E32CA429B85339923BE8F3ED705FADE2F9921BB983F9920B58424CD03053O00B962DAEB5703083O00EF2935E7CAA3C43203063O00CAAB5C4786BE027O0040030A3O001AD52D9A3DC43EAF3CC803043O00E849A14C03103O0088DC4C5930B4CD4B5B17B8D8565411B503053O007EDBB9223D03053O0038C74A7E7B03083O00876CAE3E121E179303073O0092E039C817BC3703083O00A7D6894AAB78CE5303043O00BFF52A4903063O00C7EB90523D9803453O004A6F696E204F757220446973636F726420436F7069656420546F20436C6970626F617264202D20682O7470733A2O2F646973636F72642E2O672F53727954764664466D512003083O002303AB2A131FB62503043O004B6776D9030C3O00736574636C6970626F617264031D3O00682O7470733A2O2F646973636F72642E2O672F53727954764664466D5103113O00F5516018B01DC64075108A0AC8467113BC03063O007EA7341074D903063O0052656D6F746503093O004461696C795370696E03093O005370696E4576656E74030A3O004669726553657276657203043O006D61746803043O0068756765022O0040E6FA4CD94103113O00FA2B308CBD1AFDDC2B24B3A016EEC9292503073O009CA84E40E0D479030C3O0057616974466F724368696C6403063O0035EBA8C113EB03043O00AE678EC503093O00722956343C6DE85F2603073O009836483F58453E030E3O00F5C0EA68DBEDE04AD1CAFA53C6DD03043O003CB4A48E03063O000D46262834E503073O0072383E6549478D00BE3O0012323O00013O0020295O0002001232000100013O002029000100010003001232000200013O002029000200020004001232000300053O0006080003000A000100010004243O000A0001001232000300063O002029000400030007001232000500083O002029000500050009001232000600083O00202900060006000A00061500073O000100062O00273O00064O00278O00273O00044O00273O00014O00273O00024O00273O00053O0012320008000B3O00200600080008000C2O000A000A00073O001216000B000D3O001216000C000E4O0007000A000C4O000900083O000200200600080008000F2O000A000A00073O001216000B00103O001216000C00114O002F000A000C00022O0017000B3O00032O000A000C00073O001216000D00123O001216000E00134O002F000C000E00022O000A000D00073O001216000E00143O001216000F00154O002F000D000F00022O0022000B000C000D2O000A000C00073O001216000D00163O001216000E00174O002F000C000E00022O000A000D00073O001216000E00183O001216000F00194O002F000D000F00022O0022000B000C000D2O000A000C00073O001216000D001A3O001216000E001B4O002F000C000E0002002014000B000C001C2O00340008000B00010012320008001D3O0012160009001E4O00100008000200010012320008000B3O00200600080008000C2O000A000A00073O001216000B001F3O001216000C00204O0007000A000C4O000900083O000200200600080008000F2O000A000A00073O001216000B00213O001216000C00224O002F000A000C00022O0017000B3O00032O000A000C00073O001216000D00233O001216000E00244O002F000C000E00022O000A000D00073O001216000E00253O001216000F00264O002F000D000F00022O0022000B000C000D2O000A000C00073O001216000D00273O001216000E00284O002F000C000E00022O000A000D00073O001216000E00293O001216000F002A4O002F000D000F00022O0022000B000C000D2O000A000C00073O001216000D002B3O001216000E002C4O002F000C000E0002002014000B000C001C2O00340008000B00010012320008001D3O0012160009002D4O00100008000200010012320008000B3O00200600080008000C2O000A000A00073O001216000B002E3O001216000C002F4O0007000A000C4O000900083O000200200600080008000F2O000A000A00073O001216000B00303O001216000C00314O002F000A000C00022O0017000B3O00032O000A000C00073O001216000D00323O001216000E00334O002F000C000E00022O000A000D00073O001216000E00343O001216000F00354O002F000D000F00022O0022000B000C000D2O000A000C00073O001216000D00363O001216000E00374O002F000C000E0002002014000B000C00382O000A000C00073O001216000D00393O001216000E003A4O002F000C000E0002002014000B000C001C001232000C003B3O001216000D003C4O001B000C000D4O0028000B3O00012O00340008000B00010012320008001D3O0012160009002D4O00100008000200010012320008000B3O00200600080008000C2O000A000A00073O001216000B003D3O001216000C003E4O0007000A000C4O000900083O000200202900080008003F002029000800080040002029000800080041002006000800080042001232000A00433O002029000A000A0044001216000B00454O00340008000B00010012320008000B3O00200600080008000C2O000A000A00073O001216000B00463O001216000C00474O0007000A000C4O000900083O00020020060008000800482O000A000A00073O001216000B00493O001216000C004A4O0007000A000C4O000900083O00020020060008000800482O000A000A00073O001216000B004B3O001216000C004C4O0007000A000C4O000900083O00020020060008000800482O000A000A00073O001216000B004D3O001216000C004E4O0007000A000C4O000900083O00020020060008000800422O000A000A00073O001216000B004F3O001216000C00504O002F000A000C00022O0035000B00014O00340008000B00012O003C3O00013O00013O00023O00026O00F03F026O00704002264O001700025O001216000300014O002600045O001216000500013O0004390003002100012O003800076O000A000800024O0038000900014O0038000A00024O0038000B00034O0038000C00044O000A000D6O000A000E00063O00203B000F000600012O0007000C000F4O0009000B3O00022O0038000C00034O0038000D00044O000A000E00014O0026000F00014O003A000F0006000F001037000F0001000F2O0026001000014O003A00100006001000103700100001001000203B0010001000012O0007000D00104O003D000C6O0009000A3O0002002030000A000A00022O001B0009000A4O001E00073O000100043F0003000500012O0038000300054O000A000400024O0001000300044O001F00036O003C3O00017O00", GetFEnv(), ...);
