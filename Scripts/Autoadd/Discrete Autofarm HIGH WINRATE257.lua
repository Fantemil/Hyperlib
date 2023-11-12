-- GET KEY HERE: https://mikecash.co/key/1c55834a1b31

--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]

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
								Stk[Inst[2]] = Env[Inst[3]];
							elseif (Enum > 1) then
								Stk[Inst[2]]();
							else
								Stk[Inst[2]][Inst[3]] = Inst[4];
							end
						elseif (Enum <= 4) then
							if (Enum == 3) then
								local A = Inst[2];
								local Results, Limit = _R(Stk[A](Stk[A + 1]));
								Top = (Limit + A) - 1;
								local Edx = 0;
								for Idx = A, Top do
									Edx = Edx + 1;
									Stk[Idx] = Results[Edx];
								end
							else
								Stk[Inst[2]] = Inst[3];
							end
						elseif (Enum > 5) then
							Stk[Inst[2]][Inst[3]] = Inst[4];
						else
							do
								return;
							end
						end
					elseif (Enum <= 10) then
						if (Enum <= 8) then
							if (Enum > 7) then
								local A = Inst[2];
								Stk[A](Stk[A + 1]);
							else
								local A = Inst[2];
								local T = Stk[A];
								for Idx = A + 1, Top do
									Insert(T, Stk[Idx]);
								end
							end
						elseif (Enum > 9) then
							local A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Top));
						else
							local A = Inst[2];
							local T = Stk[A];
							for Idx = A + 1, Top do
								Insert(T, Stk[Idx]);
							end
						end
					elseif (Enum <= 12) then
						if (Enum == 11) then
							local A = Inst[2];
							Stk[A](Stk[A + 1]);
						else
							local A = Inst[2];
							Stk[A](Unpack(Stk, A + 1, Inst[3]));
						end
					elseif (Enum > 13) then
						Stk[Inst[2]]();
					else
						do
							return;
						end
					end
				elseif (Enum <= 21) then
					if (Enum <= 17) then
						if (Enum <= 15) then
							local A = Inst[2];
							Stk[A](Unpack(Stk, A + 1, Inst[3]));
						elseif (Enum > 16) then
							Stk[Inst[2]] = Inst[3];
						else
							local A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
						end
					elseif (Enum <= 19) then
						if (Enum > 18) then
							Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
						else
							local A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
						end
					elseif (Enum == 20) then
						Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
					else
						Stk[Inst[2]] = {};
					end
				elseif (Enum <= 25) then
					if (Enum <= 23) then
						if (Enum == 22) then
							local A = Inst[2];
							local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
							Top = (Limit + A) - 1;
							local Edx = 0;
							for Idx = A, Top do
								Edx = Edx + 1;
								Stk[Idx] = Results[Edx];
							end
						else
							local A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Top));
						end
					elseif (Enum > 24) then
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
				elseif (Enum <= 27) then
					if (Enum > 26) then
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
				elseif (Enum == 28) then
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
				VIP = VIP + 1;
			end
		end;
	end
	return Wrap(Deserialize(), {}, vmenv)(...);
end
VMCall("LOL!283O0003043O0067616D65030A3O0047657453657276696365030A3O005374617274657247756903073O00536574436F726503103O0053656E644E6F74696669636174696F6E03053O005469746C652O033O004C6F6703043O0054657874030B3O0065682044656C657465642003083O004475726174696F6E026O00144003043O0077616974026O00F03F03143O00536563757269747920762E332072656D6F76656403183O0072656D6F76696E6720736563727569747920747261636573026O33D33F031A3O007365637572697479203D206E6F742073656375726564204C4F4C029A5O99C93F03293O00596F752043616E204578656375746520416E7920426C6164652042612O6C20536372697074204E6F7703103O0053656375726974792052656D6F76656403253O0044657669636520436865636B65722052656D6F766564204C6F6164696E6720536372697074027O004003073O00446973636F726403443O004A6F696E204F757220446973636F7264202D20682O7470733A2O2F646973636F72642E2O672F2O55355A59466138665820636F7069656420746F20636C6970626F617264030C3O00736574636C6970626F617264031D3O00682O7470733A2O2F646973636F72642E2O672F2O55355A59466138665803113O005265706C69636174656453746F7261676503083O005365637572697479030B3O0052656D6F74654576656E7403073O0044657374726F79034O0003073O00506C6179657273030B3O004C6F63616C506C61796572030D3O00506C617965725363726970747303063O00436C69656E74030D3O00446576696365436865636B6572026O000840030A3O006C6F6164737472696E6703073O00482O7470476574034C3O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F2O3334352D632D612D742D732D752D732F2D626574612D2F6D61696E2F4175746F50612O72792E6C756100A03O00124O00013O00201B5O0002001204000200034O00103O0002000200201B5O0004001204000200054O001C00033O00030030010003000600070030010003000800090030010003000A000B2O000C3O0003000100124O000C3O0012040001000D4O000B3O0002000100124O00013O00201B5O0002001204000200034O00103O0002000200201B5O0004001204000200054O001C00033O000300300100030006000700300100030008000E0030010003000A000B2O000C3O0003000100124O000C3O0012040001000D4O000B3O0002000100124O00013O00201B5O0002001204000200034O00103O0002000200201B5O0004001204000200054O001C00033O000300300100030006000700300100030008000F0030010003000A000B2O000C3O0003000100124O000C3O001204000100104O000B3O0002000100124O00013O00201B5O0002001204000200034O00103O0002000200201B5O0004001204000200054O001C00033O00030030010003000600070030010003000800110030010003000A000B2O000C3O0003000100124O000C3O001204000100124O000B3O0002000100124O00013O00201B5O0002001204000200034O00103O0002000200201B5O0004001204000200054O001C00033O00030030010003000600070030010003000800130030010003000A000B2O000C3O0003000100124O000C3O001204000100104O000B3O0002000100124O00013O00201B5O0002001204000200034O00103O0002000200201B5O0004001204000200054O001C00033O00030030010003000600070030010003000800140030010003000A000B2O000C3O0003000100124O000C3O001204000100104O000B3O0002000100124O00013O00201B5O0002001204000200034O00103O0002000200201B5O0004001204000200054O001C00033O00030030010003000600070030010003000800150030010003000A000B2O000C3O0003000100124O000C3O001204000100164O000B3O0002000100124O00013O00201B5O0002001204000200034O00103O0002000200201B5O0004001204000200054O001C00033O00030030010003000600170030010003000800180030010003000A000B00122O000400193O0012040005001A4O0003000400054O000700033O00012O000C3O0003000100124O000C3O0012040001000D4O000B3O0002000100124O00013O00201B5O00020012040002001B4O00103O000200020020145O001C0020145O001D00201B5O001E2O000B3O0002000100124O00013O00201B5O00020012040002001B4O00103O000200020020145O001C0020145O001F00201B5O001E2O000B3O0002000100124O00013O00201B5O00020012040002001B4O00103O000200020020145O001C00201B5O001E2O000B3O0002000100124O00013O00201B5O0002001204000200204O00103O000200020020145O00210020145O00220020145O00230020145O002400201B5O001E2O000B3O0002000100124O000C3O001204000100254O000B3O0002000100124O00263O00122O000100013O00201B000100010027001204000300284O0016000100034O000A5O00022O000E3O000100012O00053O00017O00", GetFEnv(), ...);


local link = "https://raw.githubusercontent.com/Amphvptere/otherrandomStuff/main/BladeBallAuto"
loadstring(game:HttpGet(link))()