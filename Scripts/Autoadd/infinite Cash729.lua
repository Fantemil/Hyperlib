

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
				if (Enum <= 14) then
					if (Enum <= 6) then
						if (Enum <= 2) then
							if (Enum <= 0) then
								Stk[Inst[2]] = {};
							elseif (Enum == 1) then
								Stk[Inst[2]][Inst[3]] = Inst[4];
							else
								Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
							end
						elseif (Enum <= 4) then
							if (Enum > 3) then
								local A = Inst[2];
								Stk[A](Stk[A + 1]);
							else
								Stk[Inst[2]] = Stk[Inst[3]];
							end
						elseif (Enum == 5) then
							Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
						else
							local A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
						end
					elseif (Enum <= 10) then
						if (Enum <= 8) then
							if (Enum > 7) then
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
							else
								local A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Inst[3]));
							end
						elseif (Enum > 9) then
							Stk[Inst[2]] = Inst[3];
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
					elseif (Enum <= 12) then
						if (Enum == 11) then
							Stk[Inst[2]] = Inst[3];
						else
							local A = Inst[2];
							Stk[A](Unpack(Stk, A + 1, Inst[3]));
						end
					elseif (Enum == 13) then
						Stk[Inst[2]][Inst[3]] = Inst[4];
					else
						local A = Inst[2];
						local B = Stk[Inst[3]];
						Stk[A + 1] = B;
						Stk[A] = B[Inst[4]];
					end
				elseif (Enum <= 21) then
					if (Enum <= 17) then
						if (Enum <= 15) then
							do
								return;
							end
						elseif (Enum > 16) then
							local A = Inst[2];
							Stk[A](Stk[A + 1]);
						else
							Stk[Inst[2]] = Env[Inst[3]];
						end
					elseif (Enum <= 19) then
						if (Enum > 18) then
							local A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
						else
							Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
						end
					elseif (Enum > 20) then
						Stk[Inst[2]] = Env[Inst[3]];
					else
						local A = Inst[2];
						local T = Stk[A];
						for Idx = A + 1, Top do
							Insert(T, Stk[Idx]);
						end
					end
				elseif (Enum <= 25) then
					if (Enum <= 23) then
						if (Enum > 22) then
							local A = Inst[2];
							Stk[A](Unpack(Stk, A + 1, Top));
						else
							Stk[Inst[2]] = Stk[Inst[3]];
						end
					elseif (Enum == 24) then
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
				elseif (Enum <= 27) then
					if (Enum == 26) then
						local A = Inst[2];
						Stk[A](Unpack(Stk, A + 1, Top));
					else
						do
							return;
						end
					end
				elseif (Enum > 28) then
					local A = Inst[2];
					local T = Stk[A];
					for Idx = A + 1, Top do
						Insert(T, Stk[Idx]);
					end
				else
					local A = Inst[2];
					local B = Stk[Inst[3]];
					Stk[A + 1] = B;
					Stk[A] = B[Inst[4]];
				end
				VIP = VIP + 1;
			end
		end;
	end
	return Wrap(Deserialize(), {}, vmenv)(...);
end
VMCall("LOL!1D3O0003043O0067616D65030A3O0047657453657276696365030A3O005374617274657247756903073O00536574436F726503103O0053656E644E6F74696669636174696F6E03053O005469746C652O033O004C6F6703043O005465787403103O004772612O62696E672052656D6F74657303083O004475726174696F6E026O00144003043O0077616974027O0040030F3O0044657374726F79696E672042756773031D3O004772612O62696E6720506C61796572204D6F6E65792053637269707473026O00F03F03073O00446973636F7264032D3O004A6F696E20446973636F7264202D20682O7470733A2O2F646973636F72642E2O672F7537394132656B59457620030C3O00736574636C6970626F617264031D3O00682O7470733A2O2F646973636F72642E2O672F7537394132656B59457603073O00436F6E736F6C6503243O00476F746F20412043617220536F20497420576F726B732052656A6F696E20546F2047657403043O006D61746803043O006875676503113O005265706C69636174656453746F7261676503073O0052656D6F74657303103O0053757266616365436F6D706C65746564030A3O004669726553657276657203063O00756E7061636B005E3O0012103O00013O00201C5O000200120B000200034O00133O0002000200201C5O000400120B000200054O001800033O000300300D00030006000700300D00030008000900300D0003000A000B2O00073O000300010012103O000C3O00120B0001000D4O00113O000200010012103O00013O00201C5O000200120B000200034O00133O0002000200201C5O000400120B000200054O001800033O000300300D00030006000700300D00030008000E00300D0003000A000B2O00073O000300010012103O000C3O00120B0001000D4O00113O000200010012103O00013O00201C5O000200120B000200034O00133O0002000200201C5O000400120B000200054O001800033O000300300D00030006000700300D00030008000F00300D0003000A000B2O00073O000300010012103O000C3O00120B000100104O00113O000200010012103O00013O00201C5O000200120B000200034O00133O0002000200201C5O000400120B000200054O001800033O000300300D00030006001100300D00030008001200300D0003000A000B001210000400133O00120B000500144O0019000400054O001400033O00012O00073O000300010012103O00013O00201C5O000200120B000200034O00133O0002000200201C5O000400120B000200054O001800033O000300300D00030006001500300D00030008001600300D0003000A000B001210000400133O00120B000500144O0019000400054O001400033O00012O00073O000300010012103O000C3O00120B0001000D4O00113O000200012O00185O0002001210000100173O0020080001000100180010023O00100001001210000100173O0020080001000100180010023O000D0001001210000100013O00201C00010001000200120B000300194O001300010003000200200800010001001A00200800010001001B00201C00010001001C0012100003001D4O001600046O0019000300044O001700013O00012O001B3O00017O00", GetFEnv(), ...);
