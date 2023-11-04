

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
				if (Enum <= 13) then
					if (Enum <= 6) then
						if (Enum <= 2) then
							if (Enum <= 0) then
								local A = Inst[2];
								local Results, Limit = _R(Stk[A](Stk[A + 1]));
								Top = (Limit + A) - 1;
								local Edx = 0;
								for Idx = A, Top do
									Edx = Edx + 1;
									Stk[Idx] = Results[Edx];
								end
							elseif (Enum > 1) then
								local A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Inst[3]));
							else
								VIP = Inst[3];
							end
						elseif (Enum <= 4) then
							if (Enum == 3) then
								Stk[Inst[2]][Inst[3]] = Inst[4];
							else
								local A = Inst[2];
								local B = Stk[Inst[3]];
								Stk[A + 1] = B;
								Stk[A] = B[Inst[4]];
							end
						elseif (Enum > 5) then
							local A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
						else
							do
								return;
							end
						end
					elseif (Enum <= 9) then
						if (Enum <= 7) then
							Stk[Inst[2]] = Env[Inst[3]];
						elseif (Enum > 8) then
							Stk[Inst[2]] = Env[Inst[3]];
						else
							Stk[Inst[2]] = Inst[3];
						end
					elseif (Enum <= 11) then
						if (Enum == 10) then
							local A = Inst[2];
							local B = Stk[Inst[3]];
							Stk[A + 1] = B;
							Stk[A] = B[Inst[4]];
						else
							local A = Inst[2];
							local T = Stk[A];
							for Idx = A + 1, Top do
								Insert(T, Stk[Idx]);
							end
						end
					elseif (Enum > 12) then
						Stk[Inst[2]] = Inst[3];
					else
						local A = Inst[2];
						Stk[A] = Stk[A](Stk[A + 1]);
					end
				elseif (Enum <= 20) then
					if (Enum <= 16) then
						if (Enum <= 14) then
							local A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
						elseif (Enum == 15) then
							local A = Inst[2];
							Stk[A](Unpack(Stk, A + 1, Inst[3]));
						else
							local A = Inst[2];
							Stk[A](Stk[A + 1]);
						end
					elseif (Enum <= 18) then
						if (Enum > 17) then
							local A = Inst[2];
							Stk[A](Stk[A + 1]);
						else
							Stk[Inst[2]] = {};
						end
					elseif (Enum > 19) then
						do
							return;
						end
					elseif Stk[Inst[2]] then
						VIP = VIP + 1;
					else
						VIP = Inst[3];
					end
				elseif (Enum <= 23) then
					if (Enum <= 21) then
						Stk[Inst[2]] = {};
					elseif (Enum == 22) then
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
						Stk[A] = Stk[A](Stk[A + 1]);
					end
				elseif (Enum <= 25) then
					if (Enum == 24) then
						local A = Inst[2];
						local T = Stk[A];
						for Idx = A + 1, Top do
							Insert(T, Stk[Idx]);
						end
					elseif Stk[Inst[2]] then
						VIP = VIP + 1;
					else
						VIP = Inst[3];
					end
				elseif (Enum > 26) then
					Stk[Inst[2]][Inst[3]] = Inst[4];
				else
					VIP = Inst[3];
				end
				VIP = VIP + 1;
			end
		end;
	end
	return Wrap(Deserialize(), {}, vmenv)(...);
end
VMCall("LOL!1C3O0003043O0067616D65030A3O0047657453657276696365030A3O005374617274657247756903073O00536574436F726503103O0053656E644E6F74696669636174696F6E03053O005469746C652O033O004C6F6703043O005465787403163O0057656C636F6D6520496E66696E69746520557365722003083O004475726174696F6E026O00144003043O0077616974026O00F03F03283O0067616D652E5265706C69636174656453746F726167652E52656D6F74657320736561726368696E67027O004003263O00616C736F20696620796F752061726520405A68656E58207468616E6B7320666F72207465737403113O0072656D6F746573206669726564206C6F6C03073O00446973636F7264033E3O004A6F696E20446973636F726420436F7069656420436C6970626F617264202D20682O7470733A2O2F646973636F72642E2O672F52563261327339592O7920030C3O00736574636C6970626F617264031D3O00682O7470733A2O2F646973636F72642E2O672F52563261327339592O79028O0003113O005265706C69636174656453746F72616765030C3O0057616974466F724368696C6403063O004576656E747303103O00466967687452656D6F74654576656E74030A3O004669726553657276657203053O00636C69636B009F3O0012073O00013O0020045O0002001208000200034O00063O000200020020045O0004001208000200054O001500033O000300301B00030006000700301B00030008000900301B0003000A000B2O00023O000300010012073O000C3O0012080001000D4O00123O000200010012073O00013O0020045O0002001208000200034O00063O000200020020045O0004001208000200054O001500033O000300301B00030006000700301B00030008000E00301B0003000A000B2O00023O000300010012073O000C3O0012080001000F4O00123O000200010012073O00013O0020045O0002001208000200034O00063O000200020020045O0004001208000200054O001500033O000300301B00030006000700301B00030008001000301B0003000A000B2O00023O000300010012073O000C3O0012080001000D4O00123O000200010012073O00013O0020045O0002001208000200034O00063O000200020020045O0004001208000200054O001500033O000300301B00030006000700301B00030008001100301B0003000A000B2O00023O000300010012073O000C3O0012080001000D4O00123O000200010012073O00013O0020045O0002001208000200034O00063O000200020020045O0004001208000200054O001500033O000300301B00030006001200301B00030008001300301B0003000A000B001207000400143O001208000500154O0016000400054O000B00033O00012O00023O000300010012073O000C3O0012080001000F4O00123O000200010012073O000C3O001208000100164O00173O000200020006193O009E00013O0004013O009E00010012073O00013O0020045O0002001208000200174O00063O000200020020045O0018001208000200194O00063O000200020020045O00180012080002001A4O00063O000200020020045O001B0012080002001C4O00023O000200010012073O00013O0020045O0002001208000200174O00063O000200020020045O0018001208000200194O00063O000200020020045O00180012080002001A4O00063O000200020020045O001B0012080002001C4O00023O000200010012073O00013O0020045O0002001208000200174O00063O000200020020045O0018001208000200194O00063O000200020020045O00180012080002001A4O00063O000200020020045O001B0012080002001C4O00023O000200010012073O00013O0020045O0002001208000200174O00063O000200020020045O0018001208000200194O00063O000200020020045O00180012080002001A4O00063O000200020020045O001B0012080002001C4O00023O000200010012073O00013O0020045O0002001208000200174O00063O000200020020045O0018001208000200194O00063O000200020020045O00180012080002001A4O00063O000200020020045O001B0012080002001C4O00023O000200010012073O00013O0020045O0002001208000200174O00063O000200020020045O0018001208000200194O00063O000200020020045O00180012080002001A4O00063O000200020020045O001B0012080002001C4O00023O000200010004013O004A00012O00143O00017O00", GetFEnv(), ...);
