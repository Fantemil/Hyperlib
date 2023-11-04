
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
				if (Enum <= 16) then
					if (Enum <= 7) then
						if (Enum <= 3) then
							if (Enum <= 1) then
								if (Enum > 0) then
									local A = Inst[2];
									local Results, Limit = _R(Stk[A](Stk[A + 1]));
									Top = (Limit + A) - 1;
									local Edx = 0;
									for Idx = A, Top do
										Edx = Edx + 1;
										Stk[Idx] = Results[Edx];
									end
								else
									do
										return;
									end
								end
							elseif (Enum == 2) then
								local A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
							else
								VIP = Inst[3];
							end
						elseif (Enum <= 5) then
							if (Enum > 4) then
								Stk[Inst[2]] = Env[Inst[3]];
							else
								local A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Inst[3]));
							end
						elseif (Enum > 6) then
							local A = Inst[2];
							local T = Stk[A];
							for Idx = A + 1, Top do
								Insert(T, Stk[Idx]);
							end
						else
							local A = Inst[2];
							Stk[A] = Stk[A](Stk[A + 1]);
						end
					elseif (Enum <= 11) then
						if (Enum <= 9) then
							if (Enum == 8) then
								Stk[Inst[2]] = {};
							else
								local A = Inst[2];
								Stk[A](Stk[A + 1]);
							end
						elseif (Enum > 10) then
							local A = Inst[2];
							Stk[A](Unpack(Stk, A + 1, Inst[3]));
						else
							local A = Inst[2];
							Stk[A](Stk[A + 1]);
						end
					elseif (Enum <= 13) then
						if (Enum > 12) then
							Stk[Inst[2]] = Inst[3];
						else
							Stk[Inst[2]] = {};
						end
					elseif (Enum <= 14) then
						local A = Inst[2];
						local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
						Top = (Limit + A) - 1;
						local Edx = 0;
						for Idx = A, Top do
							Edx = Edx + 1;
							Stk[Idx] = Results[Edx];
						end
					elseif (Enum == 15) then
						local A = Inst[2];
						local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
						Top = (Limit + A) - 1;
						local Edx = 0;
						for Idx = A, Top do
							Edx = Edx + 1;
							Stk[Idx] = Results[Edx];
						end
					else
						Stk[Inst[2]][Inst[3]] = Inst[4];
					end
				elseif (Enum <= 24) then
					if (Enum <= 20) then
						if (Enum <= 18) then
							if (Enum == 17) then
								do
									return;
								end
							else
								VIP = Inst[3];
							end
						elseif (Enum > 19) then
							Stk[Inst[2]] = Env[Inst[3]];
						else
							Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
						end
					elseif (Enum <= 22) then
						if (Enum > 21) then
							local A = Inst[2];
							Stk[A](Unpack(Stk, A + 1, Top));
						else
							local A = Inst[2];
							Stk[A](Unpack(Stk, A + 1, Top));
						end
					elseif (Enum == 23) then
						if Stk[Inst[2]] then
							VIP = VIP + 1;
						else
							VIP = Inst[3];
						end
					else
						Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
					end
				elseif (Enum <= 28) then
					if (Enum <= 26) then
						if (Enum > 25) then
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
					elseif (Enum == 27) then
						local A = Inst[2];
						local B = Stk[Inst[3]];
						Stk[A + 1] = B;
						Stk[A] = B[Inst[4]];
					else
						Stk[Inst[2]][Inst[3]] = Inst[4];
					end
				elseif (Enum <= 30) then
					if (Enum > 29) then
						local A = Inst[2];
						local Results, Limit = _R(Stk[A](Stk[A + 1]));
						Top = (Limit + A) - 1;
						local Edx = 0;
						for Idx = A, Top do
							Edx = Edx + 1;
							Stk[Idx] = Results[Edx];
						end
					else
						local A = Inst[2];
						Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
					end
				elseif (Enum <= 31) then
					local A = Inst[2];
					Stk[A] = Stk[A](Stk[A + 1]);
				elseif (Enum == 32) then
					Stk[Inst[2]] = Inst[3];
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
VMCall("LOL!253O0003043O0067616D65030A3O0047657453657276696365030A3O005374617274657247756903073O00536574436F726503103O0053656E644E6F74696669636174696F6E03053O005469746C652O033O004C6F6703043O0054657874032E3O0054686973205461736B2057692O6C20446570656E64204F6E20596F7572205065747320416E64205265626972746803083O004475726174696F6E026O00144003043O0077616974026O00F03F031F3O004F6E20486F77204D75636820436173682056616C75657320596F7520476574030D3O003A57616974466F724368696C64026O33D33F03053O004D6F6E6579029A5O99C93F03063O00536572766572030B3O00436F2O6C656374202C203503183O006D6174682E72616E646F6D2831202C20355O302O2903073O00446973636F726403443O004A6F696E204F757220446973636F7264202D20682O7470733A2O2F646973636F72642E2O672F2O55355A59466138665820636F7069656420746F20636C6970626F617264030C3O00736574636C6970626F617264031D3O00682O7470733A2O2F646973636F72642E2O672F2O55355A594661386658028O0003113O005265706C69636174656453746F72616765030C3O0057616974466F724368696C6403073O0052656D6F746573030A3O004669726553657276657203073O00436F2O6C656374026O00594003073O005265776172647303053O00476966747303043O006D61746803063O0072616E646F6D025O00407F4000A93O0012053O00013O0020215O000200120D000200034O00023O000200020020215O000400120D000200054O000C00033O00030030100003000600070030100003000800090030100003000A000B2O00043O000300010012053O000C3O00120D0001000D4O00093O000200010012053O00013O0020215O000200120D000200034O00023O000200020020215O000400120D000200054O000C00033O000300301000030006000700301000030008000E0030100003000A000B2O00043O000300010012053O000C3O00120D0001000D4O00093O000200010012053O00013O0020215O000200120D000200034O00023O000200020020215O000400120D000200054O000C00033O000300301000030006000700301000030008000F0030100003000A000B2O00043O000300010012053O000C3O00120D000100104O00093O000200010012053O00013O0020215O000200120D000200034O00023O000200020020215O000400120D000200054O000C00033O00030030100003000600070030100003000800110030100003000A000B2O00043O000300010012053O000C3O00120D000100124O00093O000200010012053O00013O0020215O000200120D000200034O00023O000200020020215O000400120D000200054O000C00033O00030030100003000600070030100003000800130030100003000A000B2O00043O000300010012053O000C3O00120D000100104O00093O000200010012053O00013O0020215O000200120D000200034O00023O000200020020215O000400120D000200054O000C00033O00030030100003000600070030100003000800140030100003000A000B2O00043O000300010012053O000C3O00120D000100104O00093O000200010012053O00013O0020215O000200120D000200034O00023O000200020020215O000400120D000200054O000C00033O00030030100003000600070030100003000800150030100003000A000B2O00043O000300010012053O000C3O00120D000100104O00093O000200010012053O00013O0020215O000200120D000200034O00023O000200020020215O000400120D000200054O000C00033O00030030100003000600160030100003000800170030100003000A000B001205000400183O00120D000500194O0001000400054O000700033O00012O00043O000300010012053O000C3O00120D000100104O00093O000200010012053O000C3O00120D0001001A4O00063O0002000200061A3O00A800013O0004033O00A800010012053O00013O0020215O000200120D0002001B4O00023O000200020020215O001C00120D0002001D4O00023O000200020020215O001C00120D000200114O00023O000200020020215O001E00120D0002001F3O00120D000300204O00023O00030002001205000100013O00202100010001000200120D0003001B4O000200010003000200202100010001001C00120D0003001D4O000200010003000200202100010001001C00120D000300114O000200010003000200202100010001001E00120D0003001F3O00120D0004000B4O0002000100040002001205000200013O00202100020002000200120D0004001B4O000200020004000200202100020002001C00120D0004001D4O000200020004000200202100030002001C00120D000500214O000200030005000200202100040003001E00120D000600223O001205000700233O00201800070007002400120D0008000D3O00120D000900254O000F000700094O001600043O00010004033O007400016O00017O00", GetFEnv(), ...);
