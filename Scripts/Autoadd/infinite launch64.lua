
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
				if (Enum <= 23) then
					if (Enum <= 11) then
						if (Enum <= 5) then
							if (Enum <= 2) then
								if (Enum <= 0) then
									VIP = Inst[3];
								elseif (Enum == 1) then
									Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
								else
									local A = Inst[2];
									Stk[A](Unpack(Stk, A + 1, Top));
								end
							elseif (Enum <= 3) then
								local A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Inst[3]));
							elseif (Enum > 4) then
								Stk[Inst[2]] = Inst[3] * Stk[Inst[4]];
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
						elseif (Enum <= 8) then
							if (Enum <= 6) then
								VIP = Inst[3];
							elseif (Enum > 7) then
								Stk[Inst[2]] = Inst[3] * Stk[Inst[4]];
							else
								Stk[Inst[2]][Inst[3]] = Inst[4];
							end
						elseif (Enum <= 9) then
							local A = Inst[2];
							Stk[A] = Stk[A](Stk[A + 1]);
						elseif (Enum > 10) then
							Stk[Inst[2]] = Stk[Inst[3]];
						else
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
						end
					elseif (Enum <= 17) then
						if (Enum <= 14) then
							if (Enum <= 12) then
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
							elseif (Enum > 13) then
								local A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
							else
								Stk[Inst[2]] = Stk[Inst[3]] * Stk[Inst[4]];
							end
						elseif (Enum <= 15) then
							Stk[Inst[2]] = Inst[3];
						elseif (Enum > 16) then
							local A = Inst[2];
							local B = Stk[Inst[3]];
							Stk[A + 1] = B;
							Stk[A] = B[Inst[4]];
						else
							local A = Inst[2];
							local B = Stk[Inst[3]];
							Stk[A + 1] = B;
							Stk[A] = B[Inst[4]];
						end
					elseif (Enum <= 20) then
						if (Enum <= 18) then
							Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
						elseif (Enum > 19) then
							local A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
						else
							Stk[Inst[2]] = Inst[3];
						end
					elseif (Enum <= 21) then
						if Stk[Inst[2]] then
							VIP = VIP + 1;
						else
							VIP = Inst[3];
						end
					elseif (Enum > 22) then
						Stk[Inst[2]][Inst[3]] = Inst[4];
					else
						local A = Inst[2];
						Stk[A](Unpack(Stk, A + 1, Inst[3]));
					end
				elseif (Enum <= 35) then
					if (Enum <= 29) then
						if (Enum <= 26) then
							if (Enum <= 24) then
								Stk[Inst[2]] = {};
							elseif (Enum > 25) then
								if Stk[Inst[2]] then
									VIP = VIP + 1;
								else
									VIP = Inst[3];
								end
							else
								local A = Inst[2];
								local T = Stk[A];
								for Idx = A + 1, Top do
									Insert(T, Stk[Idx]);
								end
							end
						elseif (Enum <= 27) then
							local A = Inst[2];
							local T = Stk[A];
							for Idx = A + 1, Top do
								Insert(T, Stk[Idx]);
							end
						elseif (Enum == 28) then
							Stk[Inst[2]] = Stk[Inst[3]];
						else
							Stk[Inst[2]] = Stk[Inst[3]] / Inst[4];
						end
					elseif (Enum <= 32) then
						if (Enum <= 30) then
							local A = Inst[2];
							Stk[A] = Stk[A](Stk[A + 1]);
						elseif (Enum > 31) then
							local A = Inst[2];
							Stk[A] = Stk[A]();
						else
							Stk[Inst[2]] = {};
						end
					elseif (Enum <= 33) then
						local A = Inst[2];
						Stk[A](Stk[A + 1]);
					elseif (Enum == 34) then
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
						local A = Inst[2];
						Stk[A](Unpack(Stk, A + 1, Top));
					end
				elseif (Enum <= 41) then
					if (Enum <= 38) then
						if (Enum <= 36) then
							local A = Inst[2];
							Stk[A](Stk[A + 1]);
						elseif (Enum == 37) then
							local A = Inst[2];
							Stk[A] = Stk[A]();
						else
							Stk[Inst[2]] = Stk[Inst[3]] * Stk[Inst[4]];
						end
					elseif (Enum <= 39) then
						Stk[Inst[2]] = Env[Inst[3]];
					elseif (Enum == 40) then
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
						Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
					end
				elseif (Enum <= 44) then
					if (Enum <= 42) then
						Stk[Inst[2]] = Env[Inst[3]];
					elseif (Enum > 43) then
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
						local A = Inst[2];
						local Results, Limit = _R(Stk[A](Stk[A + 1]));
						Top = (Limit + A) - 1;
						local Edx = 0;
						for Idx = A, Top do
							Edx = Edx + 1;
							Stk[Idx] = Results[Edx];
						end
					end
				elseif (Enum <= 45) then
					do
						return;
					end
				elseif (Enum == 46) then
					Stk[Inst[2]] = Stk[Inst[3]] / Inst[4];
				else
					do
						return;
					end
				end
				VIP = VIP + 1;
			end
		end;
	end
	return Wrap(Deserialize(), {}, vmenv)(...);
end
VMCall("LOL!283O0003043O0067616D65030A3O0047657453657276696365030A3O005374617274657247756903073O00536574436F726503103O0053656E644E6F74696669636174696F6E03053O005469746C652O033O004C6F6703043O0054657874031C3O004475706C69636174696E67204C61756E63686572205363726970747303083O004475726174696F6E026O00144003043O0077616974026O00F03F03173O0053455420434F6F6C646F776E20546F20302E31202F7320027O0040031C3O00537563652O7320457175697020526F636B6574204C61756E6368657203293O00526545786563757465204966204E6F7420457175692O706564206974207768656E206578656375746503073O00446973636F7264033E3O004A6F696E20446973636F726420436F7069656420436C6970626F617264202D20682O7470733A2O2F646973636F72642E2O672F52563261327339592O7920030C3O00736574636C6970626F617264031D3O00682O7470733A2O2F646973636F72642E2O672F52563261327339592O79029A5O99B93F03073O00506C6179657273030B3O004C6F63616C506C6179657203093O0043686172616374657203103O0048756D616E6F6964522O6F745061727403083O00506F736974696F6E030E3O0046696E6446697273744368696C64030F3O00526F636B6574204C61756E6368657203043O006D6174682O033O00726164026O007440026O00244003063O00434672616D652O033O006E657703063O00416E676C6573028O00030B3O0052656D6F74654576656E74030A3O004669726553657276657203063O00756E7061636B008F3O00122A3O00013O0020115O0002001213000200034O000E3O000200020020115O0004001213000200054O001800033O00030030170003000600070030170003000800090030170003000A000B2O00163O0003000100122A3O000C3O0012130001000D4O00213O0002000100122A3O00013O0020115O0002001213000200034O000E3O000200020020115O0004001213000200054O001800033O000300301700030006000700301700030008000E0030170003000A000B2O00163O0003000100122A3O000C3O0012130001000F4O00213O0002000100122A3O00013O0020115O0002001213000200034O000E3O000200020020115O0004001213000200054O001800033O00030030170003000600070030170003000800100030170003000A000B2O00163O0003000100122A3O000C3O0012130001000D4O00213O0002000100122A3O00013O0020115O0002001213000200034O000E3O000200020020115O0004001213000200054O001800033O00030030170003000600070030170003000800110030170003000A000B2O00163O0003000100122A3O000C3O0012130001000D4O00213O0002000100122A3O00013O0020115O0002001213000200034O000E3O000200020020115O0004001213000200054O001800033O00030030170003000600120030170003000800130030170003000A000B00122A000400143O001213000500154O0004000400054O001B00033O00012O00163O0003000100122A3O000C3O0012130001000F4O00213O0002000100122A3O000C3O001213000100164O001E3O000200020006153O008E00013O0004063O008E00012O00185O000200122A000100013O00202900010001001700202900010001001800202900010001001900202900010001001A00202900010001001B0010123O000D000100122A000100013O002011000100010002001213000300174O000E00010003000200202900010001001800202900010001001900201100010001001C0012130003001D4O000E0001000300020010123O000F00010012130001000D3O0012130002000B3O0012130003000D3O00042C0001008D000100122A0005001E3O00202900050005001F00100500060020000400202E0006000600212O001E00050002000200122A000600223O0020290006000600232O002000060001000200122A000700223O002029000700070024001213000800254O001C000900053O001213000A00254O000E0007000A00022O000D00060006000700122A000700223O002029000700070023001213000800253O001213000900253O001213000A00214O000E0007000A00022O000D00060006000700202900070006001B0010123O000D000700122A000700013O002011000700070002001213000900174O000E00070009000200202900070007001800202900070007001900201100070007001C0012130009001D4O000E00070009000200202900070007002600201100070007002700122A000900284O001C000A6O00040009000A4O002300073O00010004220001006500010004063O004A00012O002D3O00017O00", GetFEnv(), ...);
