
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
				if (Enum <= 15) then
					if (Enum <= 7) then
						if (Enum <= 3) then
							if (Enum <= 1) then
								if (Enum == 0) then
									Stk[Inst[2]] = Inst[3];
								else
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								end
							elseif (Enum > 2) then
								if Stk[Inst[2]] then
									VIP = VIP + 1;
								else
									VIP = Inst[3];
								end
							else
								Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
							end
						elseif (Enum <= 5) then
							if (Enum > 4) then
								Stk[Inst[2]] = Env[Inst[3]];
							else
								local A = Inst[2];
								Stk[A](Stk[A + 1]);
							end
						elseif (Enum == 6) then
							Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
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
					elseif (Enum <= 11) then
						if (Enum <= 9) then
							if (Enum > 8) then
								Stk[Inst[2]] = {};
							else
								Stk[Inst[2]] = Stk[Inst[3]];
							end
						elseif (Enum > 10) then
							local A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
						else
							do
								return;
							end
						end
					elseif (Enum <= 13) then
						if (Enum > 12) then
							local A = Inst[2];
							local B = Stk[Inst[3]];
							Stk[A + 1] = B;
							Stk[A] = B[Inst[4]];
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
					elseif (Enum > 14) then
						local A = Inst[2];
						Stk[A](Unpack(Stk, A + 1, Inst[3]));
					else
						Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
					end
				elseif (Enum <= 23) then
					if (Enum <= 19) then
						if (Enum <= 17) then
							if (Enum > 16) then
								VIP = Inst[3];
							else
								Stk[Inst[2]] = Env[Inst[3]];
							end
						elseif (Enum > 18) then
							local A = Inst[2];
							Stk[A](Unpack(Stk, A + 1, Top));
						elseif Stk[Inst[2]] then
							VIP = VIP + 1;
						else
							VIP = Inst[3];
						end
					elseif (Enum <= 21) then
						if (Enum > 20) then
							Stk[Inst[2]] = Stk[Inst[3]];
						else
							local A = Inst[2];
							local B = Stk[Inst[3]];
							Stk[A + 1] = B;
							Stk[A] = B[Inst[4]];
						end
					elseif (Enum > 22) then
						VIP = Inst[3];
					else
						Stk[Inst[2]] = Inst[3];
					end
				elseif (Enum <= 27) then
					if (Enum <= 25) then
						if (Enum == 24) then
							do
								return;
							end
						else
							Stk[Inst[2]] = {};
						end
					elseif (Enum == 26) then
						local A = Inst[2];
						Stk[A](Stk[A + 1]);
					else
						local A = Inst[2];
						Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
					end
				elseif (Enum <= 29) then
					if (Enum == 28) then
						local A = Inst[2];
						Stk[A](Unpack(Stk, A + 1, Inst[3]));
					else
						Stk[Inst[2]][Inst[3]] = Inst[4];
					end
				elseif (Enum > 30) then
					Stk[Inst[2]][Inst[3]] = Inst[4];
				else
					local A = Inst[2];
					Stk[A](Unpack(Stk, A + 1, Top));
				end
				VIP = VIP + 1;
			end
		end;
	end
	return Wrap(Deserialize(), {}, vmenv)(...);
end
VMCall("LOL!213O0003043O0067616D65030A3O0047657453657276696365030A3O005374617274657247756903073O00536574436F726503103O0053656E644E6F74696669636174696F6E03053O005469746C652O033O004C6F6703043O005465787403103O00776F726B73706163652E42616467657303083O004475726174696F6E026O00144003043O0077616974026O00E03F03153O00776F726B73706163652E436F696E732E56616C7565029A5O99D93F031D3O00776F726B73706163652E506C61796572732E4C6F63616C506C61796572026O66E63F03223O00506C656173652045717569702047722O656E202F2047726F77746820506F74696F6E026O00F03F03073O00446973636F726403453O004A6F696E204F757220446973636F726420436F7069656420546F20436C6970626F617264202D20682O7470733A2O2F646973636F72642E2O672F53727954764664466D5120030C3O00736574636C6970626F617264031D3O00682O7470733A2O2F646973636F72642E2O672F53727954764664466D51027O004003073O00506C6179657273030B3O004C6F63616C506C6179657203093O0043686172616374657203083O0048756D616E6F6964030E3O0046696E6446697273744368696C64030D3O0047726F77746820506F74696F6E03113O00506F74696F6E52656D6F74654576656E74030A3O004669726553657276657203063O00756E7061636B006A3O0012053O00013O0020145O0002001216000200034O001B3O000200020020145O0004001216000200054O001900033O000300301D00030006000700301D00030008000900301D0003000A000B2O001C3O000300010012053O000C3O0012160001000D4O001A3O000200010012053O00013O0020145O0002001216000200034O001B3O000200020020145O0004001216000200054O001900033O000300301D00030006000700301D00030008000E00301D0003000A000B2O001C3O000300010012053O000C3O0012160001000F4O001A3O000200010012053O00013O0020145O0002001216000200034O001B3O000200020020145O0004001216000200054O001900033O000300301D00030006000700301D00030008001000301D0003000A000B2O001C3O000300010012053O000C3O001216000100114O001A3O000200010012053O00013O0020145O0002001216000200034O001B3O000200020020145O0004001216000200054O001900033O000300301D00030006000700301D00030008001200301D0003000A000B2O001C3O000300010012053O000C3O001216000100134O001A3O000200010012053O00013O0020145O0002001216000200034O001B3O000200020020145O0004001216000200054O001900033O000300301D00030006001400301D00030008001500301D0003000A000B2O001C3O000300010012053O00163O001216000100174O001A3O000200010012053O000C3O001216000100184O001A3O000200010012053O00013O0020145O0002001216000200194O001B3O000200020020015O001A0020015O001B0020015O001C001205000100013O002014000100010002001216000300194O001B00010003000200200100010001001A00200100010001001B00201400010001001D0012160003001E4O001B0001000300020006123O006500013O0004113O006500010006120001006500013O0004113O006500012O001900023O0001001002000200133O00200100030001001F002014000300030020001205000500214O0008000600024O0007000500064O001300033O00010012050002000C3O0012160003000D4O001A0002000200010004113O004900012O00183O00017O00", GetFEnv(), ...);
