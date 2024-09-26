--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.6) ~  Much Love, Ferib 

]]--

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
			local FlatIdent_7126A = 0;
			while true do
				if (FlatIdent_7126A == 0) then
					repeatNext = StrToNumber(Sub(byte, 1, 1));
					return "";
				end
			end
		else
			local a = Char(StrToNumber(byte, 16));
			if repeatNext then
				local FlatIdent_669F5 = 0;
				local b;
				while true do
					if (1 == FlatIdent_669F5) then
						return b;
					end
					if (FlatIdent_669F5 == 0) then
						b = Rep(a, repeatNext);
						repeatNext = nil;
						FlatIdent_669F5 = 1;
					end
				end
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
			local FlatIdent_12703 = 0;
			local Plc;
			while true do
				if (FlatIdent_12703 == 0) then
					Plc = 2 ^ (Start - 1);
					return (((Bit % (Plc + Plc)) >= Plc) and 1) or 0;
				end
			end
		end
	end
	local function gBits8()
		local FlatIdent_2BD95 = 0;
		local a;
		while true do
			if (FlatIdent_2BD95 == 1) then
				return a;
			end
			if (FlatIdent_2BD95 == 0) then
				a = Byte(ByteString, DIP, DIP);
				DIP = DIP + 1;
				FlatIdent_2BD95 = 1;
			end
		end
	end
	local function gBits16()
		local FlatIdent_60EA1 = 0;
		local a;
		local b;
		while true do
			if (FlatIdent_60EA1 == 1) then
				return (b * 256) + a;
			end
			if (FlatIdent_60EA1 == 0) then
				a, b = Byte(ByteString, DIP, DIP + 2);
				DIP = DIP + 2;
				FlatIdent_60EA1 = 1;
			end
		end
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
				local FlatIdent_8F047 = 0;
				while true do
					if (FlatIdent_8F047 == 0) then
						Exponent = 1;
						IsNormal = 0;
						break;
					end
				end
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
		local FlatIdent_31905 = 0;
		local Instrs;
		local Functions;
		local Lines;
		local Chunk;
		local ConstCount;
		local Consts;
		while true do
			if (FlatIdent_31905 == 2) then
				for Idx = 1, gBits32() do
					local FlatIdent_E652 = 0;
					local Descriptor;
					while true do
						if (0 == FlatIdent_E652) then
							Descriptor = gBits8();
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
									local FlatIdent_17AE1 = 0;
									while true do
										if (0 == FlatIdent_17AE1) then
											Inst[3] = gBits32() - (2 ^ 16);
											Inst[4] = gBits16();
											break;
										end
									end
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
							break;
						end
					end
				end
				for Idx = 1, gBits32() do
					Functions[Idx - 1] = Deserialize();
				end
				return Chunk;
			end
			if (1 == FlatIdent_31905) then
				ConstCount = gBits32();
				Consts = {};
				for Idx = 1, ConstCount do
					local FlatIdent_35C62 = 0;
					local Type;
					local Cons;
					while true do
						if (FlatIdent_35C62 == 0) then
							Type = gBits8();
							Cons = nil;
							FlatIdent_35C62 = 1;
						end
						if (FlatIdent_35C62 == 1) then
							if (Type == 1) then
								Cons = gBits8() ~= 0;
							elseif (Type == 2) then
								Cons = gFloat();
							elseif (Type == 3) then
								Cons = gString();
							end
							Consts[Idx] = Cons;
							break;
						end
					end
				end
				Chunk[3] = gBits8();
				FlatIdent_31905 = 2;
			end
			if (0 == FlatIdent_31905) then
				Instrs = {};
				Functions = {};
				Lines = {};
				Chunk = {Instrs,Functions,nil,Lines};
				FlatIdent_31905 = 1;
			end
		end
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
				local FlatIdent_27957 = 0;
				while true do
					if (FlatIdent_27957 == 1) then
						if (Enum <= 43) then
							if (Enum <= 21) then
								if (Enum <= 10) then
									if (Enum <= 4) then
										if (Enum <= 1) then
											if (Enum > 0) then
												local FlatIdent_43E8E = 0;
												local Edx;
												local Results;
												local Limit;
												local A;
												while true do
													if (FlatIdent_43E8E == 17) then
														VIP = VIP + 1;
														Inst = Instr[VIP];
														A = Inst[2];
														Stk[A](Unpack(Stk, A + 1, Top));
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Inst[3];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														VIP = Inst[3];
														break;
													end
													if (FlatIdent_43E8E == 6) then
														Inst = Instr[VIP];
														Stk[Inst[2]] = Stk[Inst[3]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														A = Inst[2];
														Stk[A] = Stk[A](Stk[A + 1]);
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Inst[3];
														VIP = VIP + 1;
														FlatIdent_43E8E = 7;
													end
													if (FlatIdent_43E8E == 7) then
														Inst = Instr[VIP];
														Stk[Inst[2]] = Inst[3];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														A = Inst[2];
														Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
														Top = (Limit + A) - 1;
														Edx = 0;
														for Idx = A, Top do
															local FlatIdent_8F59B = 0;
															while true do
																if (FlatIdent_8F59B == 0) then
																	Edx = Edx + 1;
																	Stk[Idx] = Results[Edx];
																	break;
																end
															end
														end
														VIP = VIP + 1;
														FlatIdent_43E8E = 8;
													end
													if (FlatIdent_43E8E == 0) then
														Edx = nil;
														Results, Limit = nil;
														A = nil;
														Stk[Inst[2]] = Upvalues[Inst[3]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Stk[Inst[3]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Env[Inst[3]];
														FlatIdent_43E8E = 1;
													end
													if (FlatIdent_43E8E == 8) then
														Inst = Instr[VIP];
														A = Inst[2];
														Stk[A](Unpack(Stk, A + 1, Top));
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Env[Inst[3]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
														VIP = VIP + 1;
														FlatIdent_43E8E = 9;
													end
													if (FlatIdent_43E8E == 3) then
														Inst = Instr[VIP];
														Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														FlatIdent_43E8E = 4;
													end
													if (FlatIdent_43E8E == 5) then
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Env[Inst[3]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
														VIP = VIP + 1;
														FlatIdent_43E8E = 6;
													end
													if (FlatIdent_43E8E == 12) then
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
														VIP = VIP + 1;
														FlatIdent_43E8E = 13;
													end
													if (FlatIdent_43E8E == 4) then
														Stk[Inst[2]] = Stk[Inst[3]] * Stk[Inst[4]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Stk[Inst[3]] / Inst[4];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Stk[Inst[3]] + Stk[Inst[4]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Env[Inst[3]];
														FlatIdent_43E8E = 5;
													end
													if (FlatIdent_43E8E == 15) then
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Stk[Inst[3]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														A = Inst[2];
														Stk[A] = Stk[A](Stk[A + 1]);
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Inst[3];
														FlatIdent_43E8E = 16;
													end
													if (FlatIdent_43E8E == 14) then
														Stk[Inst[2]] = Env[Inst[3]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Env[Inst[3]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
														FlatIdent_43E8E = 15;
													end
													if (FlatIdent_43E8E == 10) then
														Stk[Inst[2]] = Env[Inst[3]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Inst[3];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Inst[3];
														FlatIdent_43E8E = 11;
													end
													if (FlatIdent_43E8E == 11) then
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Inst[3];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														A = Inst[2];
														Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Upvalues[Inst[3]];
														FlatIdent_43E8E = 12;
													end
													if (FlatIdent_43E8E == 2) then
														Inst = Instr[VIP];
														Stk[Inst[2]] = Inst[3];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														A = Inst[2];
														Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Upvalues[Inst[3]];
														VIP = VIP + 1;
														FlatIdent_43E8E = 3;
													end
													if (13 == FlatIdent_43E8E) then
														Inst = Instr[VIP];
														Stk[Inst[2]] = Stk[Inst[3]] * Stk[Inst[4]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Stk[Inst[3]] / Inst[4];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Stk[Inst[3]] + Stk[Inst[4]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														FlatIdent_43E8E = 14;
													end
													if (FlatIdent_43E8E == 16) then
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Inst[3];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														A = Inst[2];
														Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
														Top = (Limit + A) - 1;
														Edx = 0;
														for Idx = A, Top do
															Edx = Edx + 1;
															Stk[Idx] = Results[Edx];
														end
														FlatIdent_43E8E = 17;
													end
													if (FlatIdent_43E8E == 1) then
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Inst[3];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Inst[3];
														VIP = VIP + 1;
														FlatIdent_43E8E = 2;
													end
													if (FlatIdent_43E8E == 9) then
														Inst = Instr[VIP];
														Stk[Inst[2]]();
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Upvalues[Inst[3]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														Stk[Inst[2]] = Stk[Inst[3]];
														VIP = VIP + 1;
														Inst = Instr[VIP];
														FlatIdent_43E8E = 10;
													end
												end
											else
												local FlatIdent_2AC68 = 0;
												local A;
												local Cls;
												while true do
													if (FlatIdent_2AC68 == 0) then
														A = Inst[2];
														Cls = {};
														FlatIdent_2AC68 = 1;
													end
													if (FlatIdent_2AC68 == 1) then
														for Idx = 1, #Lupvals do
															local List = Lupvals[Idx];
															for Idz = 0, #List do
																local FlatIdent_2A1A = 0;
																local Upv;
																local NStk;
																local DIP;
																while true do
																	if (FlatIdent_2A1A == 1) then
																		DIP = Upv[2];
																		if ((NStk == Stk) and (DIP >= A)) then
																			Cls[DIP] = NStk[DIP];
																			Upv[1] = Cls;
																		end
																		break;
																	end
																	if (0 == FlatIdent_2A1A) then
																		Upv = List[Idz];
																		NStk = Upv[1];
																		FlatIdent_2A1A = 1;
																	end
																end
															end
														end
														break;
													end
												end
											end
										elseif (Enum <= 2) then
											if (Stk[Inst[2]] ~= Stk[Inst[4]]) then
												VIP = VIP + 1;
											else
												VIP = Inst[3];
											end
										elseif (Enum > 3) then
											if (Inst[2] == Stk[Inst[4]]) then
												VIP = VIP + 1;
											else
												VIP = Inst[3];
											end
										else
											local A = Inst[2];
											do
												return Unpack(Stk, A, Top);
											end
										end
									elseif (Enum <= 7) then
										if (Enum <= 5) then
											local FlatIdent_33EA4 = 0;
											local A;
											while true do
												if (FlatIdent_33EA4 == 2) then
													Inst = Instr[VIP];
													Stk[Inst[2]] = Inst[3];
													VIP = VIP + 1;
													FlatIdent_33EA4 = 3;
												end
												if (FlatIdent_33EA4 == 0) then
													A = nil;
													Stk[Inst[2]] = Inst[3];
													VIP = VIP + 1;
													FlatIdent_33EA4 = 1;
												end
												if (FlatIdent_33EA4 == 4) then
													VIP = VIP + 1;
													Inst = Instr[VIP];
													VIP = Inst[3];
													break;
												end
												if (FlatIdent_33EA4 == 1) then
													Inst = Instr[VIP];
													Stk[Inst[2]] = Inst[3];
													VIP = VIP + 1;
													FlatIdent_33EA4 = 2;
												end
												if (FlatIdent_33EA4 == 3) then
													Inst = Instr[VIP];
													A = Inst[2];
													Stk[A](Unpack(Stk, A + 1, Inst[3]));
													FlatIdent_33EA4 = 4;
												end
											end
										elseif (Enum == 6) then
											local FlatIdent_1784A = 0;
											while true do
												if (2 == FlatIdent_1784A) then
													Inst = Instr[VIP];
													Stk[Inst[2]] = Stk[Inst[3]] - Stk[Inst[4]];
													VIP = VIP + 1;
													Inst = Instr[VIP];
													FlatIdent_1784A = 3;
												end
												if (FlatIdent_1784A == 3) then
													Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
													VIP = VIP + 1;
													Inst = Instr[VIP];
													if (Inst[2] < Stk[Inst[4]]) then
														VIP = VIP + 1;
													else
														VIP = Inst[3];
													end
													break;
												end
												if (FlatIdent_1784A == 1) then
													VIP = VIP + 1;
													Inst = Instr[VIP];
													Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
													VIP = VIP + 1;
													FlatIdent_1784A = 2;
												end
												if (FlatIdent_1784A == 0) then
													Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
													VIP = VIP + 1;
													Inst = Instr[VIP];
													Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
													FlatIdent_1784A = 1;
												end
											end
										else
											Stk[Inst[2]] = Stk[Inst[3]][Stk[Inst[4]]];
										end
									elseif (Enum <= 8) then
										Stk[Inst[2]] = not Stk[Inst[3]];
									elseif (Enum > 9) then
										Stk[Inst[2]] = Inst[3] / Inst[4];
									else
										local A = Inst[2];
										local Results = {Stk[A](Stk[A + 1])};
										local Edx = 0;
										for Idx = A, Inst[4] do
											Edx = Edx + 1;
											Stk[Idx] = Results[Edx];
										end
									end
								elseif (Enum <= 15) then
									if (Enum <= 12) then
										if (Enum == 11) then
											Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
										else
											local Edx;
											local Results, Limit;
											local A;
											Stk[Inst[2]] = Stk[Inst[3]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Env[Inst[3]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Inst[3];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Inst[3];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Upvalues[Inst[3]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											A = Inst[2];
											Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Env[Inst[3]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Env[Inst[3]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Inst[3];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											A = Inst[2];
											Stk[A] = Stk[A](Stk[A + 1]);
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Inst[3];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Inst[3];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											A = Inst[2];
											Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
											Top = (Limit + A) - 1;
											Edx = 0;
											for Idx = A, Top do
												local FlatIdent_39764 = 0;
												while true do
													if (FlatIdent_39764 == 0) then
														Edx = Edx + 1;
														Stk[Idx] = Results[Edx];
														break;
													end
												end
											end
											VIP = VIP + 1;
											Inst = Instr[VIP];
											A = Inst[2];
											Stk[A](Unpack(Stk, A + 1, Top));
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Env[Inst[3]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]]();
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Upvalues[Inst[3]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Stk[Inst[3]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Env[Inst[3]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Inst[3];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Inst[3];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Upvalues[Inst[3]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Stk[Inst[3]] / Inst[4];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											A = Inst[2];
											Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Env[Inst[3]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Env[Inst[3]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Inst[3];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											A = Inst[2];
											Stk[A] = Stk[A](Stk[A + 1]);
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Inst[3];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Inst[3];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											A = Inst[2];
											Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
											Top = (Limit + A) - 1;
											Edx = 0;
											for Idx = A, Top do
												local FlatIdent_494DF = 0;
												while true do
													if (FlatIdent_494DF == 0) then
														Edx = Edx + 1;
														Stk[Idx] = Results[Edx];
														break;
													end
												end
											end
											VIP = VIP + 1;
											Inst = Instr[VIP];
											A = Inst[2];
											Stk[A](Unpack(Stk, A + 1, Top));
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Env[Inst[3]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]]();
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Inst[3];
										end
									elseif (Enum <= 13) then
										local A;
										A = Inst[2];
										Stk[A](Unpack(Stk, A + 1, Inst[3]));
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A] = Stk[A]();
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										if not Stk[Inst[2]] then
											VIP = VIP + 1;
										else
											VIP = Inst[3];
										end
									elseif (Enum == 14) then
										Stk[Inst[2]] = {};
									else
										local Edx;
										local Results, Limit;
										local A;
										Stk[Inst[2]] = Stk[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A] = Stk[A](Stk[A + 1]);
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
										Top = (Limit + A) - 1;
										Edx = 0;
										for Idx = A, Top do
											Edx = Edx + 1;
											Stk[Idx] = Results[Edx];
										end
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A](Unpack(Stk, A + 1, Top));
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]]();
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Upvalues[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
										Top = (Limit + A) - 1;
										Edx = 0;
										for Idx = A, Top do
											local FlatIdent_27404 = 0;
											while true do
												if (FlatIdent_27404 == 0) then
													Edx = Edx + 1;
													Stk[Idx] = Results[Edx];
													break;
												end
											end
										end
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A](Unpack(Stk, A + 1, Top));
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]]();
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
									end
								elseif (Enum <= 18) then
									if (Enum <= 16) then
										local K;
										local B;
										local A;
										A = Inst[2];
										B = Stk[Inst[3]];
										Stk[A + 1] = B;
										Stk[A] = B[Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A] = Stk[A](Stk[A + 1]);
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										B = Stk[Inst[3]];
										Stk[A + 1] = B;
										Stk[A] = B[Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										B = Inst[3];
										K = Stk[B];
										for Idx = B + 1, Inst[4] do
											K = K .. Stk[Idx];
										end
										Stk[Inst[2]] = K;
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
										VIP = VIP + 1;
										Inst = Instr[VIP];
										if Stk[Inst[2]] then
											VIP = VIP + 1;
										else
											VIP = Inst[3];
										end
									elseif (Enum > 17) then
										Stk[Inst[2]] = #Stk[Inst[3]];
									else
										Stk[Inst[2]]();
									end
								elseif (Enum <= 19) then
									local FlatIdent_9622C = 0;
									local A;
									local B;
									while true do
										if (FlatIdent_9622C == 1) then
											Stk[A + 1] = B;
											Stk[A] = B[Inst[4]];
											break;
										end
										if (FlatIdent_9622C == 0) then
											A = Inst[2];
											B = Stk[Inst[3]];
											FlatIdent_9622C = 1;
										end
									end
								elseif (Enum > 20) then
									Stk[Inst[2]][Inst[3]] = Inst[4];
								else
									local FlatIdent_2EAC6 = 0;
									local B;
									while true do
										if (FlatIdent_2EAC6 == 0) then
											B = Stk[Inst[4]];
											if B then
												VIP = VIP + 1;
											else
												Stk[Inst[2]] = B;
												VIP = Inst[3];
											end
											break;
										end
									end
								end
							elseif (Enum <= 32) then
								if (Enum <= 26) then
									if (Enum <= 23) then
										if (Enum > 22) then
											Stk[Inst[2]] = Stk[Inst[3]] + Stk[Inst[4]];
										else
											local B;
											local A;
											for Idx = Inst[2], Inst[3] do
												Stk[Idx] = nil;
											end
											VIP = VIP + 1;
											Inst = Instr[VIP];
											A = Inst[2];
											B = Stk[Inst[3]];
											Stk[A + 1] = B;
											Stk[A] = B[Inst[4]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Inst[3];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											A = Inst[2];
											Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
											VIP = VIP + 1;
											Inst = Instr[VIP];
											if Stk[Inst[2]] then
												VIP = VIP + 1;
											else
												VIP = Inst[3];
											end
										end
									elseif (Enum <= 24) then
										if (Stk[Inst[2]] == Inst[4]) then
											VIP = VIP + 1;
										else
											VIP = Inst[3];
										end
									elseif (Enum > 25) then
										local B;
										local A;
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A] = Stk[A](Stk[A + 1]);
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]][Inst[3]] = Inst[4];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3] / Inst[4];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3] / Inst[4];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3] / Inst[4];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										B = Stk[Inst[3]];
										Stk[A + 1] = B;
										Stk[A] = B[Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3] ~= 0;
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A](Unpack(Stk, A + 1, Inst[3]));
										VIP = VIP + 1;
										Inst = Instr[VIP];
										if Stk[Inst[2]] then
											VIP = VIP + 1;
										else
											VIP = Inst[3];
										end
									else
										local FlatIdent_75B50 = 0;
										local Edx;
										local Results;
										local Limit;
										local A;
										while true do
											if (FlatIdent_75B50 == 7) then
												Edx = 0;
												for Idx = A, Top do
													local FlatIdent_28014 = 0;
													while true do
														if (FlatIdent_28014 == 0) then
															Edx = Edx + 1;
															Stk[Idx] = Results[Edx];
															break;
														end
													end
												end
												VIP = VIP + 1;
												Inst = Instr[VIP];
												A = Inst[2];
												Stk[A](Unpack(Stk, A + 1, Top));
												VIP = VIP + 1;
												Inst = Instr[VIP];
												FlatIdent_75B50 = 8;
											end
											if (FlatIdent_75B50 == 6) then
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Inst[3];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												A = Inst[2];
												Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
												Top = (Limit + A) - 1;
												FlatIdent_75B50 = 7;
											end
											if (FlatIdent_75B50 == 1) then
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Inst[3];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Inst[3];
												FlatIdent_75B50 = 2;
											end
											if (FlatIdent_75B50 == 16) then
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Env[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												FlatIdent_75B50 = 17;
											end
											if (FlatIdent_75B50 == 5) then
												Stk[Inst[2]] = Inst[3];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												A = Inst[2];
												Stk[A] = Stk[A](Stk[A + 1]);
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Inst[3];
												FlatIdent_75B50 = 6;
											end
											if (FlatIdent_75B50 == 11) then
												Stk[Inst[2]] = Inst[3];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Upvalues[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												VIP = VIP + 1;
												FlatIdent_75B50 = 12;
											end
											if (FlatIdent_75B50 == 13) then
												Stk[Inst[2]] = Env[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Inst[3];
												VIP = VIP + 1;
												FlatIdent_75B50 = 14;
											end
											if (0 == FlatIdent_75B50) then
												Edx = nil;
												Results, Limit = nil;
												A = nil;
												Stk[Inst[2]] = Stk[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Env[Inst[3]];
												VIP = VIP + 1;
												FlatIdent_75B50 = 1;
											end
											if (FlatIdent_75B50 == 4) then
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Env[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												FlatIdent_75B50 = 5;
											end
											if (17 == FlatIdent_75B50) then
												Stk[Inst[2]]();
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Inst[3];
												break;
											end
											if (FlatIdent_75B50 == 10) then
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Inst[3];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												FlatIdent_75B50 = 11;
											end
											if (FlatIdent_75B50 == 2) then
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Upvalues[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												FlatIdent_75B50 = 3;
											end
											if (3 == FlatIdent_75B50) then
												A = Inst[2];
												Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Env[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												FlatIdent_75B50 = 4;
											end
											if (FlatIdent_75B50 == 14) then
												Inst = Instr[VIP];
												Stk[Inst[2]] = Inst[3];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Inst[3];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												A = Inst[2];
												FlatIdent_75B50 = 15;
											end
											if (FlatIdent_75B50 == 9) then
												Inst = Instr[VIP];
												Stk[Inst[2]] = Upvalues[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Env[Inst[3]];
												FlatIdent_75B50 = 10;
											end
											if (FlatIdent_75B50 == 12) then
												Inst = Instr[VIP];
												Stk[Inst[2]] = -Stk[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												A = Inst[2];
												Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
												VIP = VIP + 1;
												Inst = Instr[VIP];
												FlatIdent_75B50 = 13;
											end
											if (FlatIdent_75B50 == 15) then
												Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
												Top = (Limit + A) - 1;
												Edx = 0;
												for Idx = A, Top do
													local FlatIdent_21449 = 0;
													while true do
														if (FlatIdent_21449 == 0) then
															Edx = Edx + 1;
															Stk[Idx] = Results[Edx];
															break;
														end
													end
												end
												VIP = VIP + 1;
												Inst = Instr[VIP];
												A = Inst[2];
												Stk[A](Unpack(Stk, A + 1, Top));
												FlatIdent_75B50 = 16;
											end
											if (8 == FlatIdent_75B50) then
												Stk[Inst[2]] = Env[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]]();
												VIP = VIP + 1;
												FlatIdent_75B50 = 9;
											end
										end
									end
								elseif (Enum <= 29) then
									if (Enum <= 27) then
										Stk[Inst[2]] = Stk[Inst[3]] + Inst[4];
									elseif (Enum == 28) then
										local FlatIdent_3EC52 = 0;
										local B;
										local A;
										while true do
											if (FlatIdent_3EC52 == 6) then
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												FlatIdent_3EC52 = 7;
											end
											if (FlatIdent_3EC52 == 5) then
												Stk[A] = B[Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Env[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												FlatIdent_3EC52 = 6;
											end
											if (FlatIdent_3EC52 == 3) then
												Stk[Inst[2]] = Stk[Inst[3]] * Stk[Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												FlatIdent_3EC52 = 4;
											end
											if (FlatIdent_3EC52 == 7) then
												A = Inst[2];
												Stk[A] = Stk[A](Stk[A + 1]);
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]] * Stk[Inst[4]];
												VIP = VIP + 1;
												FlatIdent_3EC52 = 8;
											end
											if (FlatIdent_3EC52 == 9) then
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Inst[3];
												break;
											end
											if (4 == FlatIdent_3EC52) then
												Stk[Inst[2]] = Upvalues[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												A = Inst[2];
												B = Stk[Inst[3]];
												Stk[A + 1] = B;
												FlatIdent_3EC52 = 5;
											end
											if (0 == FlatIdent_3EC52) then
												B = nil;
												A = nil;
												Stk[Inst[2]] = Env[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												FlatIdent_3EC52 = 1;
											end
											if (FlatIdent_3EC52 == 1) then
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												A = Inst[2];
												FlatIdent_3EC52 = 2;
											end
											if (FlatIdent_3EC52 == 8) then
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]] * Stk[Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												A = Inst[2];
												Stk[A](Unpack(Stk, A + 1, Inst[3]));
												FlatIdent_3EC52 = 9;
											end
											if (FlatIdent_3EC52 == 2) then
												Stk[A] = Stk[A](Stk[A + 1]);
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]] * Stk[Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												FlatIdent_3EC52 = 3;
											end
										end
									elseif (Inst[2] < Stk[Inst[4]]) then
										VIP = VIP + 1;
									else
										VIP = Inst[3];
									end
								elseif (Enum <= 30) then
									local A;
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A] = Stk[A]();
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A] = Stk[A]();
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
								elseif (Enum == 31) then
									if (Stk[Inst[2]] == Stk[Inst[4]]) then
										VIP = VIP + 1;
									else
										VIP = Inst[3];
									end
								else
									local A;
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A] = Stk[A]();
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]] - Stk[Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									if (Stk[Inst[2]] < Inst[4]) then
										VIP = VIP + 1;
									else
										VIP = Inst[3];
									end
								end
							elseif (Enum <= 37) then
								if (Enum <= 34) then
									if (Enum > 33) then
										local FlatIdent_67691 = 0;
										local A;
										while true do
											if (FlatIdent_67691 == 3) then
												VIP = VIP + 1;
												Inst = Instr[VIP];
												A = Inst[2];
												do
													return Unpack(Stk, A, Top);
												end
												break;
											end
											if (FlatIdent_67691 == 1) then
												Stk[Inst[2]] = Inst[3];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Inst[3];
												FlatIdent_67691 = 2;
											end
											if (FlatIdent_67691 == 2) then
												VIP = VIP + 1;
												Inst = Instr[VIP];
												A = Inst[2];
												do
													return Stk[A](Unpack(Stk, A + 1, Inst[3]));
												end
												FlatIdent_67691 = 3;
											end
											if (FlatIdent_67691 == 0) then
												A = nil;
												Stk[Inst[2]] = Inst[3];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												FlatIdent_67691 = 1;
											end
										end
									else
										local DIP;
										local NStk;
										local Upv;
										local List;
										local Cls;
										local A;
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A] = Stk[A]();
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Cls = {};
										for Idx = 1, #Lupvals do
											List = Lupvals[Idx];
											for Idz = 0, #List do
												local FlatIdent_77172 = 0;
												while true do
													if (FlatIdent_77172 == 1) then
														DIP = Upv[2];
														if ((NStk == Stk) and (DIP >= A)) then
															local FlatIdent_7E707 = 0;
															while true do
																if (FlatIdent_7E707 == 0) then
																	Cls[DIP] = NStk[DIP];
																	Upv[1] = Cls;
																	break;
																end
															end
														end
														break;
													end
													if (FlatIdent_77172 == 0) then
														Upv = List[Idz];
														NStk = Upv[1];
														FlatIdent_77172 = 1;
													end
												end
											end
										end
										VIP = VIP + 1;
										Inst = Instr[VIP];
										VIP = Inst[3];
									end
								elseif (Enum <= 35) then
									local FlatIdent_32BB2 = 0;
									local A;
									local T;
									local B;
									while true do
										if (FlatIdent_32BB2 == 0) then
											A = Inst[2];
											T = Stk[A];
											FlatIdent_32BB2 = 1;
										end
										if (FlatIdent_32BB2 == 1) then
											B = Inst[3];
											for Idx = 1, B do
												T[Idx] = Stk[A + Idx];
											end
											break;
										end
									end
								elseif (Enum == 36) then
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
										local FlatIdent_42BD8 = 0;
										local Mvm;
										while true do
											if (FlatIdent_42BD8 == 1) then
												if (Mvm[1] == 76) then
													Indexes[Idx - 1] = {Stk,Mvm[3]};
												else
													Indexes[Idx - 1] = {Upvalues,Mvm[3]};
												end
												Lupvals[#Lupvals + 1] = Indexes;
												break;
											end
											if (FlatIdent_42BD8 == 0) then
												VIP = VIP + 1;
												Mvm = Instr[VIP];
												FlatIdent_42BD8 = 1;
											end
										end
									end
									Stk[Inst[2]] = Wrap(NewProto, NewUvals, Env);
								else
									local B;
									local A;
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									B = Stk[Inst[3]];
									Stk[A + 1] = B;
									Stk[A] = B[Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									B = Stk[Inst[3]];
									Stk[A + 1] = B;
									Stk[A] = B[Inst[4]];
								end
							elseif (Enum <= 40) then
								if (Enum <= 38) then
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								elseif (Enum == 39) then
									local Edx;
									local Results, Limit;
									local A;
									Stk[Inst[2]] = Stk[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A] = Stk[A](Stk[A + 1]);
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
									Top = (Limit + A) - 1;
									Edx = 0;
									for Idx = A, Top do
										local FlatIdent_54124 = 0;
										while true do
											if (FlatIdent_54124 == 0) then
												Edx = Edx + 1;
												Stk[Idx] = Results[Edx];
												break;
											end
										end
									end
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A](Unpack(Stk, A + 1, Top));
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]]();
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Upvalues[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
									Top = (Limit + A) - 1;
									Edx = 0;
									for Idx = A, Top do
										local FlatIdent_869A9 = 0;
										while true do
											if (FlatIdent_869A9 == 0) then
												Edx = Edx + 1;
												Stk[Idx] = Results[Edx];
												break;
											end
										end
									end
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A](Unpack(Stk, A + 1, Top));
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]]();
									VIP = VIP + 1;
									Inst = Instr[VIP];
									VIP = Inst[3];
								else
									local A;
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Upvalues[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									VIP = Inst[3];
								end
							elseif (Enum <= 41) then
								local K;
								local B;
								local A;
								A = Inst[2];
								B = Stk[Inst[3]];
								Stk[A + 1] = B;
								Stk[A] = B[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A] = Stk[A](Stk[A + 1]);
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								B = Stk[Inst[3]];
								Stk[A + 1] = B;
								Stk[A] = B[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								B = Inst[3];
								K = Stk[B];
								for Idx = B + 1, Inst[4] do
									K = K .. Stk[Idx];
								end
								Stk[Inst[2]] = K;
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								if Stk[Inst[2]] then
									VIP = VIP + 1;
								else
									VIP = Inst[3];
								end
							elseif (Enum > 42) then
								local FlatIdent_276C2 = 0;
								local Edx;
								local Results;
								local Limit;
								local A;
								while true do
									if (9 == FlatIdent_276C2) then
										Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
										Top = (Limit + A) - 1;
										Edx = 0;
										for Idx = A, Top do
											local FlatIdent_90113 = 0;
											while true do
												if (FlatIdent_90113 == 0) then
													Edx = Edx + 1;
													Stk[Idx] = Results[Edx];
													break;
												end
											end
										end
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A](Unpack(Stk, A + 1, Top));
										VIP = VIP + 1;
										FlatIdent_276C2 = 10;
									end
									if (FlatIdent_276C2 == 8) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										FlatIdent_276C2 = 9;
									end
									if (17 == FlatIdent_276C2) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										FlatIdent_276C2 = 18;
									end
									if (FlatIdent_276C2 == 7) then
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A] = Stk[A](Stk[A + 1]);
										FlatIdent_276C2 = 8;
									end
									if (FlatIdent_276C2 == 15) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]] * Stk[Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]] / Inst[4];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]] + Stk[Inst[4]];
										FlatIdent_276C2 = 16;
									end
									if (4 == FlatIdent_276C2) then
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										FlatIdent_276C2 = 5;
									end
									if (FlatIdent_276C2 == 2) then
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_276C2 = 3;
									end
									if (FlatIdent_276C2 == 5) then
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]] * Stk[Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]] / Inst[4];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]] + Stk[Inst[4]];
										VIP = VIP + 1;
										FlatIdent_276C2 = 6;
									end
									if (FlatIdent_276C2 == 0) then
										Edx = nil;
										Results, Limit = nil;
										A = nil;
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]]();
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_276C2 = 1;
									end
									if (FlatIdent_276C2 == 10) then
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]]();
										VIP = VIP + 1;
										FlatIdent_276C2 = 11;
									end
									if (FlatIdent_276C2 == 3) then
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Upvalues[Inst[3]];
										VIP = VIP + 1;
										FlatIdent_276C2 = 4;
									end
									if (FlatIdent_276C2 == 16) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										FlatIdent_276C2 = 17;
									end
									if (FlatIdent_276C2 == 20) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										break;
									end
									if (FlatIdent_276C2 == 19) then
										A = Inst[2];
										Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
										Top = (Limit + A) - 1;
										Edx = 0;
										for Idx = A, Top do
											local FlatIdent_67F21 = 0;
											while true do
												if (FlatIdent_67F21 == 0) then
													Edx = Edx + 1;
													Stk[Idx] = Results[Edx];
													break;
												end
											end
										end
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A](Unpack(Stk, A + 1, Top));
										FlatIdent_276C2 = 20;
									end
									if (FlatIdent_276C2 == 6) then
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										FlatIdent_276C2 = 7;
									end
									if (FlatIdent_276C2 == 13) then
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Upvalues[Inst[3]];
										FlatIdent_276C2 = 14;
									end
									if (FlatIdent_276C2 == 18) then
										Stk[A] = Stk[A](Stk[A + 1]);
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_276C2 = 19;
									end
									if (FlatIdent_276C2 == 12) then
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										FlatIdent_276C2 = 13;
									end
									if (FlatIdent_276C2 == 14) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										FlatIdent_276C2 = 15;
									end
									if (FlatIdent_276C2 == 1) then
										Stk[Inst[2]] = Upvalues[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_276C2 = 2;
									end
									if (FlatIdent_276C2 == 11) then
										Inst = Instr[VIP];
										Stk[Inst[2]] = Upvalues[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										FlatIdent_276C2 = 12;
									end
								end
							else
								local B;
								local A;
								A = Inst[2];
								Stk[A] = Stk[A]();
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Env[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]] * Stk[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								B = Stk[Inst[3]];
								Stk[A + 1] = B;
								Stk[A] = B[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Env[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A] = Stk[A]();
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Env[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]] * Stk[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
							end
						elseif (Enum <= 65) then
							if (Enum <= 54) then
								if (Enum <= 48) then
									if (Enum <= 45) then
										if (Enum > 44) then
											Stk[Inst[2]] = Stk[Inst[3]] / Inst[4];
										else
											local FlatIdent_37DBD = 0;
											local A;
											while true do
												if (FlatIdent_37DBD == 2) then
													VIP = VIP + 1;
													Inst = Instr[VIP];
													A = Inst[2];
													do
														return Stk[A](Unpack(Stk, A + 1, Inst[3]));
													end
													FlatIdent_37DBD = 3;
												end
												if (FlatIdent_37DBD == 1) then
													Stk[Inst[2]] = Inst[3];
													VIP = VIP + 1;
													Inst = Instr[VIP];
													Stk[Inst[2]] = Inst[3];
													FlatIdent_37DBD = 2;
												end
												if (0 == FlatIdent_37DBD) then
													A = nil;
													Stk[Inst[2]] = Inst[3];
													VIP = VIP + 1;
													Inst = Instr[VIP];
													FlatIdent_37DBD = 1;
												end
												if (FlatIdent_37DBD == 3) then
													VIP = VIP + 1;
													Inst = Instr[VIP];
													A = Inst[2];
													do
														return Unpack(Stk, A, Top);
													end
													break;
												end
											end
										end
									elseif (Enum <= 46) then
										local FlatIdent_8EA6E = 0;
										local A;
										while true do
											if (FlatIdent_8EA6E == 0) then
												A = Inst[2];
												Stk[A](Unpack(Stk, A + 1, Inst[3]));
												break;
											end
										end
									elseif (Enum == 47) then
										local FlatIdent_5B0A0 = 0;
										local A;
										while true do
											if (FlatIdent_5B0A0 == 0) then
												A = Inst[2];
												Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
												break;
											end
										end
									else
										local FlatIdent_9128B = 0;
										local A;
										local Results;
										local Limit;
										local Edx;
										while true do
											if (FlatIdent_9128B == 1) then
												Top = (Limit + A) - 1;
												Edx = 0;
												FlatIdent_9128B = 2;
											end
											if (FlatIdent_9128B == 2) then
												for Idx = A, Top do
													local FlatIdent_84C31 = 0;
													while true do
														if (0 == FlatIdent_84C31) then
															Edx = Edx + 1;
															Stk[Idx] = Results[Edx];
															break;
														end
													end
												end
												break;
											end
											if (FlatIdent_9128B == 0) then
												A = Inst[2];
												Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
												FlatIdent_9128B = 1;
											end
										end
									end
								elseif (Enum <= 51) then
									if (Enum <= 49) then
										local FlatIdent_2DD98 = 0;
										local A;
										while true do
											if (0 == FlatIdent_2DD98) then
												A = Inst[2];
												Stk[A](Unpack(Stk, A + 1, Top));
												break;
											end
										end
									elseif (Enum == 50) then
										local B;
										local A;
										A = Inst[2];
										Stk[A](Stk[A + 1]);
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										B = Stk[Inst[3]];
										Stk[A + 1] = B;
										Stk[A] = B[Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3] ~= 0;
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A](Unpack(Stk, A + 1, Inst[3]));
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
									else
										Stk[Inst[2]] = Wrap(Proto[Inst[3]], nil, Env);
									end
								elseif (Enum <= 52) then
									do
										return;
									end
								elseif (Enum > 53) then
									Stk[Inst[2]] = Stk[Inst[3]] * Stk[Inst[4]];
								else
									Stk[Inst[2]] = Env[Inst[3]];
								end
							elseif (Enum <= 59) then
								if (Enum <= 56) then
									if (Enum > 55) then
										do
											return Stk[Inst[2]];
										end
									else
										local A = Inst[2];
										do
											return Stk[A](Unpack(Stk, A + 1, Inst[3]));
										end
									end
								elseif (Enum <= 57) then
									local FlatIdent_33DE6 = 0;
									local A;
									while true do
										if (FlatIdent_33DE6 == 1) then
											Stk[Inst[2]] = Inst[3];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Inst[3];
											FlatIdent_33DE6 = 2;
										end
										if (2 == FlatIdent_33DE6) then
											VIP = VIP + 1;
											Inst = Instr[VIP];
											A = Inst[2];
											Stk[A](Unpack(Stk, A + 1, Inst[3]));
											FlatIdent_33DE6 = 3;
										end
										if (3 == FlatIdent_33DE6) then
											VIP = VIP + 1;
											Inst = Instr[VIP];
											VIP = Inst[3];
											break;
										end
										if (FlatIdent_33DE6 == 0) then
											A = nil;
											Stk[Inst[2]] = Inst[3];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											FlatIdent_33DE6 = 1;
										end
									end
								elseif (Enum == 58) then
									for Idx = Inst[2], Inst[3] do
										Stk[Idx] = nil;
									end
								else
									local FlatIdent_1DFAF = 0;
									local A;
									while true do
										if (FlatIdent_1DFAF == 0) then
											A = Inst[2];
											Stk[A](Stk[A + 1]);
											break;
										end
									end
								end
							elseif (Enum <= 62) then
								if (Enum <= 60) then
									local FlatIdent_1351F = 0;
									local B;
									local K;
									while true do
										if (1 == FlatIdent_1351F) then
											for Idx = B + 1, Inst[4] do
												K = K .. Stk[Idx];
											end
											Stk[Inst[2]] = K;
											break;
										end
										if (0 == FlatIdent_1351F) then
											B = Inst[3];
											K = Stk[B];
											FlatIdent_1351F = 1;
										end
									end
								elseif (Enum > 61) then
									Stk[Inst[2]] = Upvalues[Inst[3]];
								else
									Stk[Inst[2]] = Stk[Inst[3]] - Stk[Inst[4]];
								end
							elseif (Enum <= 63) then
								Stk[Inst[2]] = Inst[3] ~= 0;
							elseif (Enum > 64) then
								local FlatIdent_699E4 = 0;
								local A;
								while true do
									if (FlatIdent_699E4 == 0) then
										A = Inst[2];
										do
											return Unpack(Stk, A, A + Inst[3]);
										end
										break;
									end
								end
							else
								local A;
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								do
									return Stk[A](Unpack(Stk, A + 1, Inst[3]));
								end
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								do
									return Unpack(Stk, A, Top);
								end
							end
						elseif (Enum <= 76) then
							if (Enum <= 70) then
								if (Enum <= 67) then
									if (Enum == 66) then
										Stk[Inst[2]] = -Stk[Inst[3]];
									else
										local FlatIdent_5AB84 = 0;
										local Edx;
										local Results;
										local Limit;
										local A;
										while true do
											if (8 == FlatIdent_5AB84) then
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]]();
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Upvalues[Inst[3]];
												VIP = VIP + 1;
												FlatIdent_5AB84 = 9;
											end
											if (12 == FlatIdent_5AB84) then
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Env[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Env[Inst[3]];
												VIP = VIP + 1;
												FlatIdent_5AB84 = 13;
											end
											if (FlatIdent_5AB84 == 7) then
												Top = (Limit + A) - 1;
												Edx = 0;
												for Idx = A, Top do
													local FlatIdent_2C7C4 = 0;
													while true do
														if (FlatIdent_2C7C4 == 0) then
															Edx = Edx + 1;
															Stk[Idx] = Results[Edx];
															break;
														end
													end
												end
												VIP = VIP + 1;
												Inst = Instr[VIP];
												A = Inst[2];
												Stk[A](Unpack(Stk, A + 1, Top));
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Env[Inst[3]];
												FlatIdent_5AB84 = 8;
											end
											if (FlatIdent_5AB84 == 5) then
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												A = Inst[2];
												Stk[A] = Stk[A](Stk[A + 1]);
												FlatIdent_5AB84 = 6;
											end
											if (FlatIdent_5AB84 == 6) then
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Inst[3];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Inst[3];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												A = Inst[2];
												Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
												FlatIdent_5AB84 = 7;
											end
											if (9 == FlatIdent_5AB84) then
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Env[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												FlatIdent_5AB84 = 10;
											end
											if (FlatIdent_5AB84 == 1) then
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Env[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												VIP = VIP + 1;
												FlatIdent_5AB84 = 2;
											end
											if (FlatIdent_5AB84 == 14) then
												Inst = Instr[VIP];
												Stk[Inst[2]] = Inst[3];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Inst[3];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												A = Inst[2];
												Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
												Top = (Limit + A) - 1;
												FlatIdent_5AB84 = 15;
											end
											if (11 == FlatIdent_5AB84) then
												Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Upvalues[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]] + Stk[Inst[4]];
												FlatIdent_5AB84 = 12;
											end
											if (FlatIdent_5AB84 == 3) then
												A = Inst[2];
												Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Upvalues[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												FlatIdent_5AB84 = 4;
											end
											if (FlatIdent_5AB84 == 0) then
												Edx = nil;
												Results, Limit = nil;
												A = nil;
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]]();
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Upvalues[Inst[3]];
												FlatIdent_5AB84 = 1;
											end
											if (FlatIdent_5AB84 == 4) then
												Stk[Inst[2]] = Stk[Inst[3]] + Stk[Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Env[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Env[Inst[3]];
												FlatIdent_5AB84 = 5;
											end
											if (FlatIdent_5AB84 == 15) then
												Edx = 0;
												for Idx = A, Top do
													local FlatIdent_2F94A = 0;
													while true do
														if (FlatIdent_2F94A == 0) then
															Edx = Edx + 1;
															Stk[Idx] = Results[Edx];
															break;
														end
													end
												end
												VIP = VIP + 1;
												Inst = Instr[VIP];
												A = Inst[2];
												Stk[A](Unpack(Stk, A + 1, Top));
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Inst[3];
												break;
											end
											if (FlatIdent_5AB84 == 10) then
												Stk[Inst[2]] = Inst[3];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Inst[3];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Inst[3];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												A = Inst[2];
												FlatIdent_5AB84 = 11;
											end
											if (FlatIdent_5AB84 == 13) then
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												A = Inst[2];
												Stk[A] = Stk[A](Stk[A + 1]);
												VIP = VIP + 1;
												FlatIdent_5AB84 = 14;
											end
											if (2 == FlatIdent_5AB84) then
												Inst = Instr[VIP];
												Stk[Inst[2]] = Inst[3];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Inst[3];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												Stk[Inst[2]] = Inst[3];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												FlatIdent_5AB84 = 3;
											end
										end
									end
								elseif (Enum <= 68) then
									if (Stk[Inst[2]] < Inst[4]) then
										VIP = VIP + 1;
									else
										VIP = Inst[3];
									end
								elseif (Enum == 69) then
									local A = Inst[2];
									local T = Stk[A];
									for Idx = A + 1, Inst[3] do
										Insert(T, Stk[Idx]);
									end
								elseif Stk[Inst[2]] then
									VIP = VIP + 1;
								else
									VIP = Inst[3];
								end
							elseif (Enum <= 73) then
								if (Enum <= 71) then
									if (Stk[Inst[2]] > Inst[4]) then
										VIP = VIP + 1;
									else
										VIP = Inst[3];
									end
								elseif (Enum > 72) then
									if (Inst[2] < Stk[Inst[4]]) then
										VIP = Inst[3];
									else
										VIP = VIP + 1;
									end
								else
									local FlatIdent_771FD = 0;
									local A;
									while true do
										if (3 == FlatIdent_771FD) then
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Stk[Inst[3]][Stk[Inst[4]]];
											FlatIdent_771FD = 4;
										end
										if (FlatIdent_771FD == 5) then
											VIP = VIP + 1;
											Inst = Instr[VIP];
											VIP = Inst[3];
											break;
										end
										if (FlatIdent_771FD == 4) then
											VIP = VIP + 1;
											Inst = Instr[VIP];
											do
												return Stk[Inst[2]];
											end
											FlatIdent_771FD = 5;
										end
										if (FlatIdent_771FD == 1) then
											Inst = Instr[VIP];
											Stk[Inst[2]] = #Stk[Inst[3]];
											VIP = VIP + 1;
											FlatIdent_771FD = 2;
										end
										if (0 == FlatIdent_771FD) then
											A = nil;
											Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
											VIP = VIP + 1;
											FlatIdent_771FD = 1;
										end
										if (2 == FlatIdent_771FD) then
											Inst = Instr[VIP];
											A = Inst[2];
											Stk[A] = Stk[A](Stk[A + 1]);
											FlatIdent_771FD = 3;
										end
									end
								end
							elseif (Enum <= 74) then
								if not Stk[Inst[2]] then
									VIP = VIP + 1;
								else
									VIP = Inst[3];
								end
							elseif (Enum > 75) then
								Stk[Inst[2]] = Stk[Inst[3]];
							else
								local FlatIdent_32B1C = 0;
								local B;
								local A;
								while true do
									if (FlatIdent_32B1C == 2) then
										A = Inst[2];
										Stk[A] = Stk[A](Stk[A + 1]);
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_32B1C = 3;
									end
									if (FlatIdent_32B1C == 0) then
										B = nil;
										A = nil;
										A = Inst[2];
										B = Stk[Inst[3]];
										FlatIdent_32B1C = 1;
									end
									if (FlatIdent_32B1C == 4) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										FlatIdent_32B1C = 5;
									end
									if (FlatIdent_32B1C == 7) then
										Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
										VIP = VIP + 1;
										Inst = Instr[VIP];
										if Stk[Inst[2]] then
											VIP = VIP + 1;
										else
											VIP = Inst[3];
										end
										break;
									end
									if (FlatIdent_32B1C == 1) then
										Stk[A + 1] = B;
										Stk[A] = B[Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_32B1C = 2;
									end
									if (FlatIdent_32B1C == 3) then
										Stk[Inst[2]] = Stk[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										FlatIdent_32B1C = 4;
									end
									if (FlatIdent_32B1C == 6) then
										Stk[Inst[2]] = Upvalues[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										FlatIdent_32B1C = 7;
									end
									if (FlatIdent_32B1C == 5) then
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_32B1C = 6;
									end
								end
							end
						elseif (Enum <= 81) then
							if (Enum <= 78) then
								if (Enum == 77) then
									local Edx;
									local Results, Limit;
									local A;
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Upvalues[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
									Top = (Limit + A) - 1;
									Edx = 0;
									for Idx = A, Top do
										Edx = Edx + 1;
										Stk[Idx] = Results[Edx];
									end
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A](Unpack(Stk, A + 1, Top));
								else
									local A = Inst[2];
									local C = Inst[4];
									local CB = A + 2;
									local Result = {Stk[A](Stk[A + 1], Stk[CB])};
									for Idx = 1, C do
										Stk[CB + Idx] = Result[Idx];
									end
									local R = Result[1];
									if R then
										Stk[CB] = R;
										VIP = Inst[3];
									else
										VIP = VIP + 1;
									end
								end
							elseif (Enum <= 79) then
								local FlatIdent_1C13F = 0;
								local A;
								while true do
									if (FlatIdent_1C13F == 0) then
										A = Inst[2];
										Stk[A] = Stk[A]();
										break;
									end
								end
							elseif (Enum == 80) then
								local FlatIdent_1F538 = 0;
								local B;
								local A;
								while true do
									if (FlatIdent_1F538 == 3) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
										FlatIdent_1F538 = 4;
									end
									if (8 == FlatIdent_1F538) then
										Inst = Instr[VIP];
										Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_1F538 = 9;
									end
									if (FlatIdent_1F538 == 7) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
										VIP = VIP + 1;
										FlatIdent_1F538 = 8;
									end
									if (5 == FlatIdent_1F538) then
										Stk[A + 1] = B;
										Stk[A] = B[Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_1F538 = 6;
									end
									if (FlatIdent_1F538 == 0) then
										B = nil;
										A = nil;
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										FlatIdent_1F538 = 1;
									end
									if (FlatIdent_1F538 == 10) then
										Stk[A](Unpack(Stk, A + 1, Inst[3]));
										VIP = VIP + 1;
										Inst = Instr[VIP];
										do
											return;
										end
										break;
									end
									if (FlatIdent_1F538 == 2) then
										Stk[A] = B[Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										FlatIdent_1F538 = 3;
									end
									if (FlatIdent_1F538 == 4) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										B = Stk[Inst[3]];
										FlatIdent_1F538 = 5;
									end
									if (FlatIdent_1F538 == 1) then
										Inst = Instr[VIP];
										A = Inst[2];
										B = Stk[Inst[3]];
										Stk[A + 1] = B;
										FlatIdent_1F538 = 2;
									end
									if (FlatIdent_1F538 == 9) then
										Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										FlatIdent_1F538 = 10;
									end
									if (FlatIdent_1F538 == 6) then
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = {};
										FlatIdent_1F538 = 7;
									end
								end
							else
								VIP = Inst[3];
							end
						elseif (Enum <= 84) then
							if (Enum <= 82) then
								Stk[Inst[2]] = Inst[3];
							elseif (Enum == 83) then
								if (Stk[Inst[2]] < Stk[Inst[4]]) then
									VIP = VIP + 1;
								else
									VIP = Inst[3];
								end
							else
								local Edx;
								local Results, Limit;
								local A;
								Stk[Inst[2]] = Stk[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Env[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Upvalues[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = -Stk[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]] / Inst[4];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Env[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
								Top = (Limit + A) - 1;
								Edx = 0;
								for Idx = A, Top do
									local FlatIdent_8239F = 0;
									while true do
										if (0 == FlatIdent_8239F) then
											Edx = Edx + 1;
											Stk[Idx] = Results[Edx];
											break;
										end
									end
								end
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Top));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Env[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]]();
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Upvalues[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Env[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Upvalues[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]] / Inst[4];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Env[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Env[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A] = Stk[A](Stk[A + 1]);
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
								Top = (Limit + A) - 1;
								Edx = 0;
								for Idx = A, Top do
									Edx = Edx + 1;
									Stk[Idx] = Results[Edx];
								end
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Top));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Env[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]]();
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
							end
						elseif (Enum <= 85) then
							if (Stk[Inst[2]] ~= Inst[4]) then
								VIP = VIP + 1;
							else
								VIP = Inst[3];
							end
						elseif (Enum == 86) then
							local B;
							local A;
							Stk[Inst[2]] = Inst[3];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							Stk[A](Unpack(Stk, A + 1, Inst[3]));
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Env[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							B = Stk[Inst[3]];
							Stk[A + 1] = B;
							Stk[A] = B[Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							Stk[A] = Stk[A](Stk[A + 1]);
						else
							local FlatIdent_43917 = 0;
							local A;
							while true do
								if (FlatIdent_43917 == 0) then
									A = Inst[2];
									Stk[A] = Stk[A](Stk[A + 1]);
									break;
								end
							end
						end
						VIP = VIP + 1;
						break;
					end
					if (0 == FlatIdent_27957) then
						Inst = Instr[VIP];
						Enum = Inst[1];
						FlatIdent_27957 = 1;
					end
				end
			end
		end;
	end
	return Wrap(Deserialize(), {}, vmenv)(...);
end
return VMCall("LOL!113O002O033O00412O6C03043O0067616D65030A3O004765745365727669636503073O00506C6179657273030B3O004C6F63616C506C6179657203043O00456E756D03073O004B6579436F646503013O005803103O0055736572496E70757453657276696365030A3O00496E707574426567616E03073O00436F2O6E65637403073O0067657467656E7603073O0057656C636F6D65030F3O0053637269707420627920333837314903063O00456E6A6F7921026O0014402O0100314O000E3O00013O001252000100014O00233O00010001001235000100023O002013000100010003001252000300044O002F00010003000200202600020001000500062400033O000100022O004C3O00014O004C3O00023O000233000400013O00062400050002000100032O004C3O00024O004C3O00044O004C3O00013O001225000600063O00202O00060006000700202O00060006000800122O000700023O00202O00070007000300122O000900096O00070009000200202O00070007000A00202O00070007000B00062400090003000100072O004C3O00064O004C8O004C3O00034O004C3O00024O004C3O00054O004C3O00044O004C3O00014O000D00070009000100122O0007000C6O00070001000200202O00070007000D00062O0007002C000100010004513O002C00012O004C000700043O0012520008000E3O0012520009000F3O001252000A00104O002E0007000A00010012350007000C4O004F0007000100020030150007000D00119O002O00343O00013O00043O00113O00028O0003053O006C6F7765722O033O00612O6C03063O006F74686572732O033O00412O6C03063O0072616E646F6D030A3O00476574506C617965727303053O007461626C6503043O0066696E6403063O0072656D6F7665026O00F03F03043O006D61746803043O006E65787403043O004E616D6503053O006D6174636803013O005E030B3O00446973706C61794E616D65015E3O001252000100013O00261800010001000100010004513O0001000100201300023O00022O00570002000200022O004C3O00023O0026553O000A000100030004513O000A00010026183O000D000100040004513O000D0001001252000200054O0038000200023O0004513O005D00010026183O0032000100060004513O00320001001252000200014O003A000300033O00261800020028000100010004513O002800012O003E00045O00204B0004000400074O0004000200024O000300043O00122O000400083O00202O0004000400094O000500036O000600016O00040006000200062O0004002700013O0004513O00270001001235000400083O00204D00040004000A4O000500033O00122O000600083O00202O0006000600094O000700036O000800016O000600086O00043O00010012520002000B3O000E04000B0011000100020004513O001100010012350004000C3O0020480004000400064O000500036O0004000200024O0004000300044O000400023O00044O001100010004513O005D00010026553O005A000100060004513O005A00010026553O005A000100030004513O005A00010026553O005A000100040004513O005A00010012350002000D4O003E00035O0020130003000300072O00090003000200040004513O005700012O003E000700013O00060200060057000100070004513O0057000100202600070006000E0020100007000700024O00070002000200202O00070007000F00122O000900106O000A8O00090009000A4O00070009000200062O0007004C00013O0004513O004C00012O0038000600023O0004513O005700010020260007000600110020100007000700024O00070002000200202O00070007000F00122O000900106O000A8O00090009000A4O00070009000200062O0007005700013O0004513O005700012O0038000600023O00064E0002003D000100020004513O003D00010004513O005D00012O00343O00013O0004513O005D00010004513O000100012O00343O00017O00083O0003043O0067616D65030A3O0047657453657276696365030A3O005374617274657247756903073O00536574436F726503103O0053656E644E6F74696669636174696F6E03053O005469746C6503043O005465787403083O004475726174696F6E030C3O001250000300013O00202O00030003000200122O000500036O00030005000200202O00030003000400122O000500056O00063O000300102O000600063O00102O00060007000100102O0006000800024O0003000600016O00017O00393O0003093O0043686172616374657203153O0046696E6446697273744368696C644F66436C612O7303083O0048756D616E6F696403083O00522O6F7450617274030E3O0046696E6446697273744368696C6403043O004865616403093O00412O63652O736F727903063O0048616E646C6503083O0056656C6F6369747903093O004D61676E6974756465026O00494003073O0067657467656E7603063O004F6C64506F7303063O00434672616D652O033O00536974030E3O00452O726F72204F2O63752O72656403143O00546172676574696E672069732073692O74696E67026O00144003093O00776F726B7370616365030D3O0043752O72656E7443616D657261030D3O0043616D6572615375626A65637403163O0046696E6446697273744368696C64576869636849734103083O00426173655061727403183O0046612O6C656E506172747344657374726F794865696768742O033O004E614E03083O00496E7374616E63652O033O006E6577030C3O00426F647956656C6F6369747903043O004E616D6503073O004570697856656C03063O00506172656E7403073O00566563746F7233023O008074D2CA4103083O004D6178466F726365028O00026O00F03F030F3O005365745374617465456E61626C656403043O00456E756D03113O0048756D616E6F696453746174655479706503063O0053656174656403013O0070031C3O00546172676574206973206D692O73696E672065766572797468696E6703073O0044657374726F79026O00E03F03143O005365745072696D61727950617274434672616D65027O004003043O007461736B03043O0077616974030B3O004368616E6765537461746503093O0047652O74696E67557003053O007461626C6503073O00666F7265616368030B3O004765744368696C6472656E03083O00506F736974696F6E026O00394003043O0046504448030C3O0052616E646F6D20652O726F72011B013O003E00015O00202600010001000100061400020007000100010004513O00070001002013000200010002001252000400034O002F0002000400020006140003000A000100020004513O000A000100202600030002000400202600043O00012O0016000500093O00202O000A0004000200122O000C00036O000A000C000200062O000A001500013O0004513O00150001002013000A00040002001252000C00034O002F000A000C00022O004C0005000A3O0006460005001B00013O0004513O001B0001002026000A00050004000646000A001B00013O0004513O001B0001002026000600050004002013000A00040005001252000C00064O002F000A000C0002000646000A002100013O0004513O00210001002026000700040006002013000A00040002001252000C00074O002F000A000C0002000646000A002A00013O0004513O002A0001002013000A00040002001252000C00074O002F000A000C00022O004C0008000A3O0006460008003200013O0004513O00320001002013000A00080005001252000C00084O002F000A000C0002000646000A003200013O0004513O00320001002026000900080008000646000100142O013O0004513O00142O01000646000200142O013O0004513O00142O01000646000300142O013O0004513O00142O01002026000A00030009002026000A000A000A002644000A00400001000B0004513O00400001001235000A000C4O004F000A00010002002026000B0003000E00100B000A000D000B0006460005004B00013O0004513O004B0001002026000A0005000F000646000A004B00013O0004513O004B00012O003E000A00013O00122C000B00103O00122O000C00113O00122O000D00126O000A000D6O000A5O0006460007005100013O0004513O00510001001235000A00133O002026000A000A001400100B000A001500070004513O0060000100064A00070059000100010004513O005900010006460009005900013O0004513O00590001001235000A00133O002026000A000A001400100B000A001500090004513O006000010006460005006000013O0004513O006000010006460006006000013O0004513O00600001001235000A00133O002026000A000A001400100B000A00150005002013000A00040016001252000C00174O002F000A000C000200064A000A0066000100010004513O006600012O00343O00013O000624000A3O000100022O004C3O00034O004C3O00013O000624000B0001000100082O004C3O00034O004C3O00054O004C3O000A4O004C3O00064O004C8O003E3O00024O004C3O00044O004C3O00023O00121A000C00133O00122O000D00193O00102O000C0018000D00122O000C001A3O00202O000C000C001B00122O000D001C6O000C0002000200302O000C001D001E00102O000C001F000300122O000D00203O00202O000D000D001B00122O000E00213O00122O000F00213O00122O001000216O000D0010000200102O000C0009000D00122O000D00203O00202O000D000D001B00302O000E0024002300302O000F0024002300302O0010002400234O000D0010000200102O000C0022000D00202O000D0002002500122O000F00263O00202O000F000F002700202O000F000F00284O00108O000D0010000100062O000600A300013O0004513O00A30001000646000700A300013O0004513O00A30001002026000D0006000E002006000D000D002900202O000E0007000E00202O000E000E00294O000D000D000E00202O000D000D000A000E2O0012009F0001000D0004513O009F00012O004C000D000B4O004C000E00074O003B000D000200010004513O00C500012O004C000D000B4O004C000E00064O003B000D000200010004513O00C50001000646000600AB00013O0004513O00AB000100064A000700AB000100010004513O00AB00012O004C000D000B4O004C000E00064O003B000D000200010004513O00C5000100064A000600B3000100010004513O00B30001000646000700B300013O0004513O00B300012O004C000D000B4O004C000E00074O003B000D000200010004513O00C5000100064A000600BF000100010004513O00BF000100064A000700BF000100010004513O00BF0001000646000800BF00013O0004513O00BF0001000646000900BF00013O0004513O00BF00012O004C000D000B4O004C000E00094O003B000D000200010004513O00C500012O003E000D00013O00122C000E00103O00122O000F002A3O00122O001000126O000D00106O000D5O002013000D000C002B2O0032000D0002000100202O000D0002002500122O000F00263O00202O000F000F002700202O000F000F00284O001000016O000D0010000100122O000D00133O00202O000D000D001400102O000D00150002001252000D00234O003A000E000E3O002618000D00D2000100230004513O00D20001001252000E00233O002618000E00EF000100230004513O00EF0001001235000F000C4O002A000F0001000200202O000F000F000D00122O0010000E3O00202O00100010001B00122O001100233O00122O0012002C3O00122O001300236O0010001300024O000F000F001000102O0003000E000F00202O000F0001002D00122O0011000C6O00110001000200202O00110011000D00122O0012000E3O00202O00120012001B00122O001300233O00122O0014002C3O00122O001500236O0012001500024O0011001100124O000F0011000100122O000E00243O002618000E00F50001002E0004513O00F50001001235000F002F3O002026000F000F00302O0011000F000100010004513O00042O01002618000E00D5000100240004513O00D50001002013000F00020031001256001100326O000F0011000100122O000F00333O00202O000F000F003400202O0010000100354O001000020002000233001100024O002E000F00110001001252000E002E3O0004513O00D500010004513O00042O010004513O00D20001002026000F000300360012200010000C6O00100001000200202O00100010000D00202O0010001000294O000F000F001000202O000F000F000A00262O000F00D0000100370004513O00D00001001235000D00133O001221000E000C6O000E0001000200202O000E000E003800102O000D0018000E4O000A5O00044O001A2O012O003E000A00013O00122C000B00103O00122O000C00393O00122O000D00126O000A000D6O000A6O00343O00013O00033O000B3O00028O0003063O00434672616D652O033O006E657703083O00506F736974696F6E03143O005365745072696D61727950617274434672616D65026O00F03F03083O0056656C6F6369747903073O00566563746F7233024O002A759541023O008074D2CA41030B3O00526F7456656C6F6369747903303O001252000300014O003A000400043O000E0400010002000100030004513O00020001001252000400013O00261800040019000100010004513O001900012O003E00055O00121C000600023O00202O00060006000300202O00073O00044O0006000200024O0006000600014O00060006000200102O0005000200064O000500013O00202O00050005000500122O000700023O00202O00070007000300202O00083O00044O0007000200024O0007000700014O0007000700024O00050007000100122O000400063O00261800040005000100060004513O000500012O003E00055O001228000600083O00202O00060006000300122O000700093O00122O0008000A3O00122O000900096O00060009000200102O0005000700064O00055O00122O000600083O00202O00060006000300122O0007000A3O00122O0008000A3O00122O0009000A6O00060009000200102O0005000B000600044O002F00010004513O000500010004513O002F00010004513O000200012O00343O00017O00203O00029A5O99B93F03043O007469636B028O0003083O0056656C6F6369747903093O004D61676E6974756465026O004940026O00F03F03043O007461736B03043O007761697403063O00434672616D652O033O006E6577026O000240026O00F83F026O0002C0030D3O004D6F7665446972656374696F6E026O00F43F03063O00416E676C657303043O006D6174682O033O00726164026O00F8BF027O0040026O000840026O00594003093O0057616C6B53702O6564025O00805640026O001040025O008056C0025O00407F4003063O00506172656E7403093O004368617261637465722O033O0053697403063O004865616C746801C7012O001252000100013O001235000200024O004F000200010002001252000300034O003E00045O000646000400C62O013O0004513O00C62O012O003E000400013O000646000400C62O013O0004513O00C62O0100202600043O0004002026000400040005002644000400BE000100060004513O00BE0001001252000400033O0026180004004A000100070004513O004A0001001235000500083O00202B0005000500094O0005000100014O000500026O00065O00122O0007000A3O00202O00070007000B00122O0008000C3O00122O0009000D3O00122O000A000E6O0007000A00024O000800013O00202O00080008000F00202O00093O000400202O0009000900054O00080008000900202O0008000800104O00070007000800122O0008000A3O00202O00080008001100122O000900123O00202O0009000900134O000A00036O00090002000200122O000A00033O00122O000B00036O0008000B6O00053O000100122O000500083O00202O0005000500094O0005000100014O000500026O00065O00122O0007000A3O00202O00070007000B00122O0008000E3O00122O000900143O00122O000A000C6O0007000A00024O000800013O00202O00080008000F00202O00093O000400202O0009000900054O00080008000900202O0008000800104O00070007000800122O0008000A3O00202O00080008001100122O000900123O00202O0009000900134O000A00036O00090002000200122O000A00033O00122O000B00036O0008000B6O00053O000100122O000400153O0026180004007D000100150004513O007D0001001235000500083O0020430005000500094O0005000100014O000500026O00065O00122O0007000A3O00202O00070007000B00122O000800033O00122O0009000D3O00122O000A00036O0007000A00024O000800013O00202O00080008000F4O00070007000800122O0008000A3O00202O00080008001100122O000900123O00202O0009000900134O000A00036O00090002000200122O000A00033O00122O000B00036O0008000B6O00053O000100122O000500083O00202O0005000500094O0005000100014O000500026O00065O00122O0007000A3O00202O00070007000B00122O000800033O00122O000900143O00122O000A00036O0007000A00024O000800013O00202O00080008000F4O00070007000800122O0008000A3O00202O00080008001100122O000900123O00202O0009000900134O000A00036O00090002000200122O000A00033O00122O000B00036O0008000B6O00053O000100122O000400163O00261800040083000100160004513O00830001001235000500083O0020260005000500092O00110005000100010004513O00A52O010026180004000F000100030004513O000F000100201B0003000300172O0001000500026O00065O00122O0007000A3O00202O00070007000B00122O000800033O00122O0009000D3O00122O000A00036O0007000A00024O000800013O00202O00080008000F00202O00093O000400202O0009000900054O00080008000900202O0008000800104O00070007000800122O0008000A3O00202O00080008001100122O000900123O00202O0009000900134O000A00036O00090002000200122O000A00033O00122O000B00036O0008000B6O00053O000100122O000500083O00202O0005000500094O0005000100014O000500026O00065O00122O0007000A3O00202O00070007000B00122O000800033O00122O000900143O00122O000A00036O0007000A00024O000800013O00202O00080008000F00202O00093O000400202O0009000900054O00080008000900202O0008000800104O00070007000800122O0008000A3O00202O00080008001100122O000900123O00202O0009000900134O000A00036O00090002000200122O000A00033O00122O000B00036O0008000B6O00053O000100122O000400073O00044O000F00010004513O00A52O01001252000400033O002618000400EC000100030004513O00EC00012O003E000500024O001900065O00122O0007000A3O00202O00070007000B00122O000800033O00122O0009000D6O000A00013O00202O000A000A00184O0007000A000200122O0008000A3O00202O00080008001100122O000900123O00202O00090009001300122O000A00196O00090002000200122O000A00033O00122O000B00036O0008000B6O00053O000100122O000500083O00202O0005000500094O0005000100014O000500026O00065O00122O0007000A3O00202O00070007000B00122O000800033O00122O000900146O000A00013O00202O000A000A00184O000A000A6O0007000A000200122O0008000A3O00202O00080008001100122O000900033O00122O000A00033O00122O000B00036O0008000B6O00053O000100122O000500083O00202O0005000500094O00050001000100122O000400073O0026180004001D2O0100150004513O001D2O012O003E000500024O005400065O00122O0007000A3O00202O00070007000B00122O000800033O00122O000900146O000A00033O00202O000A000A000400202O000A000A00054O000A000A3O00202O000A000A00104O0007000A000200122O0008000A3O00202O00080008001100122O000900033O00122O000A00033O00122O000B00036O0008000B6O00053O000100122O000500083O00202O0005000500094O0005000100014O000500026O00065O00122O0007000A3O00202O00070007000B00122O000800033O00122O0009000D6O000A00033O00202O000A000A000400202O000A000A000500202O000A000A00104O0007000A000200122O0008000A3O00202O00080008001100122O000900123O00202O00090009001300122O000A00196O00090002000200122O000A00033O00122O000B00036O0008000B6O00053O000100122O000500083O00202O0005000500094O00050001000100122O000400163O002618000400472O0100160004513O00472O012O003E000500024O000F00065O00122O0007000A3O00202O00070007000B00122O000800033O00122O000900143O00122O000A00036O0007000A000200122O0008000A3O00202O00080008001100122O000900123O00202O00090009001300122O000A00196O00090002000200122O000A00033O00122O000B00036O0008000B6O00053O000100122O000500083O00202O0005000500094O0005000100014O000500026O00065O00122O0007000A3O00202O00070007000B00122O000800033O00122O000900143O00122O000A00036O0007000A000200122O0008000A3O00202O00080008001100122O000900033O00122O000A00033O00122O000B00036O0008000B6O00053O000100122O000500083O00202O0005000500094O00050001000100122O0004001A3O002618000400782O0100070004513O00782O012O003E000500024O000C00065O00122O0007000A3O00202O00070007000B00122O000800033O00122O0009000D6O000A00013O00202O000A000A00184O0007000A000200122O0008000A3O00202O00080008001100122O000900123O00202O00090009001300122O000A00196O00090002000200122O000A00033O00122O000B00036O0008000B6O00053O000100122O000500083O00202O0005000500094O0005000100014O000500026O00065O00122O0007000A3O00202O00070007000B00122O000800033O00122O0009000D6O000A00033O00202O000A000A000400202O000A000A000500202O000A000A00104O0007000A000200122O0008000A3O00202O00080008001100122O000900123O00202O00090009001300122O000A00196O00090002000200122O000A00033O00122O000B00036O0008000B6O00053O000100122O000500083O00202O0005000500094O00050001000100122O000400153O000E04001A00BF000100040004513O00BF00012O003E000500024O002700065O00122O0007000A3O00202O00070007000B00122O000800033O00122O000900143O00122O000A00036O0007000A000200122O0008000A3O00202O00080008001100122O000900123O00202O00090009001300122O000A001B6O00090002000200122O000A00033O00122O000B00036O0008000B6O00053O000100122O000500083O00202O0005000500094O0005000100014O000500026O00065O00122O0007000A3O00202O00070007000B00122O000800033O00122O000900143O00122O000A00036O0007000A000200122O0008000A3O00202O00080008001100122O000900033O00122O000A00033O00122O000B00036O0008000B6O00053O000100122O000500083O00202O0005000500094O00050001000100044O00A52O010004513O00BF00010004513O00A52O010004513O00C62O0100202600043O0004002026000400040005000E49001C00C62O0100040004513O00C62O0100202600043O001D2O003E000500043O00202600050005001E00061F000400C62O0100050004513O00C62O012O003E000400043O00202600040004001D2O003E000500053O00061F000400C62O0100050004513O00C62O012O003E000400043O00202600040004001E2O0008000400044O003E000500063O000602000400C62O0100050004513O00C62O012O003E000400013O00202600040004001F00064A000400C62O0100010004513O00C62O012O003E000400073O002026000400040020002647000400C62O0100030004513O00C62O01001235000400024O004F0004000100022O001700050002000100065300050004000100040004513O000400012O00343O00017O00063O002O033O0049734103083O00426173655061727403083O0056656C6F63697479030B3O00526F7456656C6F6369747903073O00566563746F72332O033O006E6577020E3O002013000200010001001252000400024O002F0002000400020006460002000D00013O0004513O000D0001001235000200053O00201E0002000200064O00020001000200122O000300053O00202O0003000300064O00030001000200102O00010004000300102O0001000300022O00343O00017O000B3O0003073O004B6579436F646503043O006E657874028O002O033O00412O6C03063O00557365724964022O00C0CCB615D541030E3O00452O726F72204F2O63752O72656403213O005468697320757365722069732077686974656C69737465642120284F776E657229026O001440030A3O00476574506C617965727303103O00557365726E616D6520496E76616C696401423O00202600013O00012O003E00025O00061F00010041000100020004513O00410001001235000100024O003E000200014O003A000300033O0004513O003F0001001252000600034O003A000700073O0026180006000A000100030004513O000A00012O003E000800024O004C000900054O00570008000200022O004C000700083O0006460007002400013O0004513O0024000100265500070024000100040004513O002400012O003E000800033O00060200070024000100080004513O002400010020260008000700050026550008001E000100060004513O001E00012O003E000800044O004C000900074O003B0008000200010004513O003F00012O003E000800053O001205000900073O00122O000A00083O00122O000B00096O0008000B000100044O003F000100261800070034000100040004513O00340001001235000800024O003E000900063O00201300090009000A2O000900090002000A0004513O003100012O003E000D00033O000602000C00310001000D0004513O003100012O003E000D00044O004C000E000C4O003B000D0002000100064E0008002B000100020004513O002B00010004513O003F000100064A0007003F000100010004513O003F00010026550005003F000100040004513O003F00012O003E000800053O001205000900073O00122O000A000B3O00122O000B00096O0008000B000100044O003F00010004513O000A000100064E00010008000100020004513O000800012O00343O00017O00", GetFEnv(), ...);