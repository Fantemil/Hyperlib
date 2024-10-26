

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
			local FlatIdent_76979 = 0;
			local a;
			while true do
				if (FlatIdent_76979 == 0) then
					a = Char(StrToNumber(byte, 16));
					if repeatNext then
						local b = Rep(a, repeatNext);
						repeatNext = nil;
						return b;
					else
						return a;
					end
					break;
				end
			end
		end
	end);
	local function gBit(Bit, Start, End)
		if End then
			local Res = (Bit / (2 ^ (Start - 1))) % (2 ^ (((End - 1) - (Start - 1)) + 1));
			return Res - (Res % 1);
		else
			local FlatIdent_69270 = 0;
			local Plc;
			while true do
				if (FlatIdent_69270 == 0) then
					Plc = 2 ^ (Start - 1);
					return (((Bit % (Plc + Plc)) >= Plc) and 1) or 0;
				end
			end
		end
	end
	local function gBits8()
		local a = Byte(ByteString, DIP, DIP);
		DIP = DIP + 1;
		return a;
	end
	local function gBits16()
		local FlatIdent_6D4CB = 0;
		local a;
		local b;
		while true do
			if (FlatIdent_6D4CB == 1) then
				return (b * 256) + a;
			end
			if (FlatIdent_6D4CB == 0) then
				a, b = Byte(ByteString, DIP, DIP + 2);
				DIP = DIP + 2;
				FlatIdent_6D4CB = 1;
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
									if (Enum > 0) then
										do
											return Stk[Inst[2]];
										end
									else
										local FlatIdent_23BE8 = 0;
										local Edx;
										local Results;
										local A;
										while true do
											if (FlatIdent_23BE8 == 6) then
												Inst = Instr[VIP];
												A = Inst[2];
												Results = {Stk[A](Stk[A + 1])};
												FlatIdent_23BE8 = 7;
											end
											if (FlatIdent_23BE8 == 3) then
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]];
												VIP = VIP + 1;
												FlatIdent_23BE8 = 4;
											end
											if (FlatIdent_23BE8 == 2) then
												A = Inst[2];
												Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
												VIP = VIP + 1;
												FlatIdent_23BE8 = 3;
											end
											if (8 == FlatIdent_23BE8) then
												Inst = Instr[VIP];
												VIP = Inst[3];
												break;
											end
											if (7 == FlatIdent_23BE8) then
												Edx = 0;
												for Idx = A, Inst[4] do
													local FlatIdent_27957 = 0;
													while true do
														if (0 == FlatIdent_27957) then
															Edx = Edx + 1;
															Stk[Idx] = Results[Edx];
															break;
														end
													end
												end
												VIP = VIP + 1;
												FlatIdent_23BE8 = 8;
											end
											if (FlatIdent_23BE8 == 4) then
												Inst = Instr[VIP];
												Stk[Inst[2]] = Env[Inst[3]];
												VIP = VIP + 1;
												FlatIdent_23BE8 = 5;
											end
											if (FlatIdent_23BE8 == 1) then
												Stk[Inst[2]] = Stk[Inst[3]];
												VIP = VIP + 1;
												Inst = Instr[VIP];
												FlatIdent_23BE8 = 2;
											end
											if (FlatIdent_23BE8 == 5) then
												Inst = Instr[VIP];
												Stk[Inst[2]] = Stk[Inst[3]];
												VIP = VIP + 1;
												FlatIdent_23BE8 = 6;
											end
											if (FlatIdent_23BE8 == 0) then
												Edx = nil;
												Results = nil;
												A = nil;
												FlatIdent_23BE8 = 1;
											end
										end
									end
								elseif (Enum == 2) then
									Stk[Inst[2]] = Env[Inst[3]];
								else
									local B;
									local A;
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
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
									Stk[Inst[2]] = Stk[Inst[3]];
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
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
								end
							elseif (Enum <= 5) then
								if (Enum > 4) then
									local A;
									Stk[Inst[2]] = Stk[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = {};
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
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
								else
									local B;
									local A;
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A](Stk[A + 1]);
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Upvalues[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									B = Stk[Inst[3]];
									Stk[A + 1] = B;
									Stk[A] = B[Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									VIP = Inst[3];
								end
							elseif (Enum == 6) then
								if Stk[Inst[2]] then
									VIP = VIP + 1;
								else
									VIP = Inst[3];
								end
							else
								Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
							end
						elseif (Enum <= 11) then
							if (Enum <= 9) then
								if (Enum == 8) then
									local FlatIdent_77C29 = 0;
									local A;
									local B;
									while true do
										if (FlatIdent_77C29 == 0) then
											A = Inst[2];
											B = Stk[Inst[3]];
											FlatIdent_77C29 = 1;
										end
										if (FlatIdent_77C29 == 1) then
											Stk[A + 1] = B;
											Stk[A] = B[Inst[4]];
											break;
										end
									end
								else
									local FlatIdent_2AC68 = 0;
									local A;
									while true do
										if (FlatIdent_2AC68 == 0) then
											A = Inst[2];
											do
												return Unpack(Stk, A, A + Inst[3]);
											end
											break;
										end
									end
								end
							elseif (Enum > 10) then
								local A;
								Stk[Inst[2]]();
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]];
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
								Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								VIP = Inst[3];
							else
								local A = Inst[2];
								local Cls = {};
								for Idx = 1, #Lupvals do
									local List = Lupvals[Idx];
									for Idz = 0, #List do
										local FlatIdent_1B51D = 0;
										local Upv;
										local NStk;
										local DIP;
										while true do
											if (FlatIdent_1B51D == 1) then
												DIP = Upv[2];
												if ((NStk == Stk) and (DIP >= A)) then
													Cls[DIP] = NStk[DIP];
													Upv[1] = Cls;
												end
												break;
											end
											if (FlatIdent_1B51D == 0) then
												Upv = List[Idz];
												NStk = Upv[1];
												FlatIdent_1B51D = 1;
											end
										end
									end
								end
							end
						elseif (Enum <= 13) then
							if (Enum == 12) then
								local FlatIdent_25DF3 = 0;
								local A;
								local Results;
								local Edx;
								while true do
									if (FlatIdent_25DF3 == 1) then
										Edx = 0;
										for Idx = A, Inst[4] do
											Edx = Edx + 1;
											Stk[Idx] = Results[Edx];
										end
										break;
									end
									if (FlatIdent_25DF3 == 0) then
										A = Inst[2];
										Results = {Stk[A](Stk[A + 1])};
										FlatIdent_25DF3 = 1;
									end
								end
							else
								local FlatIdent_66799 = 0;
								local A;
								while true do
									if (2 == FlatIdent_66799) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]];
										VIP = VIP + 1;
										FlatIdent_66799 = 3;
									end
									if (4 == FlatIdent_66799) then
										Inst = Instr[VIP];
										VIP = Inst[3];
										break;
									end
									if (FlatIdent_66799 == 0) then
										A = nil;
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_66799 = 1;
									end
									if (FlatIdent_66799 == 1) then
										Stk[Inst[2]] = Stk[Inst[3]] - Stk[Inst[4]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]];
										FlatIdent_66799 = 2;
									end
									if (FlatIdent_66799 == 3) then
										Inst = Instr[VIP];
										A = Inst[2];
										do
											return Stk[A], Stk[A + 1];
										end
										VIP = VIP + 1;
										FlatIdent_66799 = 4;
									end
								end
							end
						elseif (Enum > 14) then
							Stk[Inst[2]] = Stk[Inst[3]] / Inst[4];
						else
							local FlatIdent_189F0 = 0;
							local A;
							while true do
								if (FlatIdent_189F0 == 2) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									FlatIdent_189F0 = 3;
								end
								if (7 == FlatIdent_189F0) then
									A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
									break;
								end
								if (FlatIdent_189F0 == 1) then
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									FlatIdent_189F0 = 2;
								end
								if (FlatIdent_189F0 == 6) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_189F0 = 7;
								end
								if (3 == FlatIdent_189F0) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_189F0 = 4;
								end
								if (FlatIdent_189F0 == 5) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									FlatIdent_189F0 = 6;
								end
								if (4 == FlatIdent_189F0) then
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Env[Inst[3]];
									FlatIdent_189F0 = 5;
								end
								if (FlatIdent_189F0 == 0) then
									A = nil;
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_189F0 = 1;
								end
							end
						end
					elseif (Enum <= 23) then
						if (Enum <= 19) then
							if (Enum <= 17) then
								if (Enum == 16) then
									Stk[Inst[2]] = Stk[Inst[3]] * Stk[Inst[4]];
								else
									local FlatIdent_49280 = 0;
									local K;
									local B;
									local A;
									while true do
										if (FlatIdent_49280 == 3) then
											Stk[Inst[2]] = Inst[3];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											Stk[Inst[2]] = Stk[Inst[3]];
											FlatIdent_49280 = 4;
										end
										if (FlatIdent_49280 == 0) then
											K = nil;
											B = nil;
											A = nil;
											A = Inst[2];
											FlatIdent_49280 = 1;
										end
										if (FlatIdent_49280 == 4) then
											VIP = VIP + 1;
											Inst = Instr[VIP];
											B = Inst[3];
											K = Stk[B];
											FlatIdent_49280 = 5;
										end
										if (FlatIdent_49280 == 1) then
											B = Stk[Inst[3]];
											Stk[A + 1] = B;
											Stk[A] = B[Inst[4]];
											VIP = VIP + 1;
											FlatIdent_49280 = 2;
										end
										if (FlatIdent_49280 == 2) then
											Inst = Instr[VIP];
											Stk[Inst[2]] = Stk[Inst[3]];
											VIP = VIP + 1;
											Inst = Instr[VIP];
											FlatIdent_49280 = 3;
										end
										if (FlatIdent_49280 == 5) then
											for Idx = B + 1, Inst[4] do
												K = K .. Stk[Idx];
											end
											Stk[Inst[2]] = K;
											break;
										end
									end
								end
							elseif (Enum > 18) then
								local B;
								local A;
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								B = Stk[Inst[3]];
								Stk[A + 1] = B;
								Stk[A] = B[Inst[4]];
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
								A = Inst[2];
								Stk[A] = Stk[A](Stk[A + 1]);
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]] * Stk[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Env[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Stk[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								VIP = Inst[3];
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
									if (Mvm[1] == 28) then
										Indexes[Idx - 1] = {Stk,Mvm[3]};
									else
										Indexes[Idx - 1] = {Upvalues,Mvm[3]};
									end
									Lupvals[#Lupvals + 1] = Indexes;
								end
								Stk[Inst[2]] = Wrap(NewProto, NewUvals, Env);
							end
						elseif (Enum <= 21) then
							if (Enum == 20) then
								local B;
								local A;
								A = Inst[2];
								B = Stk[Inst[3]];
								Stk[A + 1] = B;
								Stk[A] = B[Inst[4]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A](Stk[A + 1]);
								VIP = VIP + 1;
								Inst = Instr[VIP];
								Stk[Inst[2]] = Upvalues[Inst[3]];
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
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								Inst = Instr[VIP];
								VIP = Inst[3];
							else
								Stk[Inst[2]] = Stk[Inst[3]][Stk[Inst[4]]];
							end
						elseif (Enum > 22) then
							local B;
							local A;
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
							Stk[Inst[2]] = Env[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
						else
							local FlatIdent_45D37 = 0;
							local A;
							while true do
								if (FlatIdent_45D37 == 0) then
									A = Inst[2];
									Stk[A](Unpack(Stk, A + 1, Inst[3]));
									break;
								end
							end
						end
					elseif (Enum <= 27) then
						if (Enum <= 25) then
							if (Enum > 24) then
								local FlatIdent_6A091 = 0;
								local A;
								local Results;
								local Edx;
								while true do
									if (1 == FlatIdent_6A091) then
										Edx = 0;
										for Idx = A, Inst[4] do
											local FlatIdent_6D9D2 = 0;
											while true do
												if (FlatIdent_6D9D2 == 0) then
													Edx = Edx + 1;
													Stk[Idx] = Results[Edx];
													break;
												end
											end
										end
										break;
									end
									if (FlatIdent_6A091 == 0) then
										A = Inst[2];
										Results = {Stk[A](Unpack(Stk, A + 1, Top))};
										FlatIdent_6A091 = 1;
									end
								end
							else
								local FlatIdent_6225E = 0;
								local Results;
								local Edx;
								local Limit;
								local B;
								local A;
								while true do
									if (FlatIdent_6225E == 5) then
										Results = {Stk[A](Unpack(Stk, A + 1, Top))};
										Edx = 0;
										for Idx = A, Inst[4] do
											Edx = Edx + 1;
											Stk[Idx] = Results[Edx];
										end
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_6225E = 6;
									end
									if (FlatIdent_6225E == 0) then
										Results = nil;
										Edx = nil;
										Results, Limit = nil;
										B = nil;
										A = nil;
										FlatIdent_6225E = 1;
									end
									if (FlatIdent_6225E == 3) then
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Results, Limit = _R(Stk[A](Stk[A + 1]));
										Top = (Limit + A) - 1;
										FlatIdent_6225E = 4;
									end
									if (FlatIdent_6225E == 4) then
										Edx = 0;
										for Idx = A, Top do
											Edx = Edx + 1;
											Stk[Idx] = Results[Edx];
										end
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										FlatIdent_6225E = 5;
									end
									if (FlatIdent_6225E == 6) then
										VIP = Inst[3];
										break;
									end
									if (FlatIdent_6225E == 2) then
										Inst = Instr[VIP];
										A = Inst[2];
										B = Stk[Inst[3]];
										Stk[A + 1] = B;
										Stk[A] = B[Inst[4]];
										FlatIdent_6225E = 3;
									end
									if (FlatIdent_6225E == 1) then
										Stk[Inst[2]] = Stk[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										FlatIdent_6225E = 2;
									end
								end
							end
						elseif (Enum == 26) then
							Stk[Inst[2]] = Stk[Inst[3]] - Stk[Inst[4]];
						else
							local FlatIdent_8ABD6 = 0;
							local A;
							while true do
								if (FlatIdent_8ABD6 == 3) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]] / Inst[4];
									FlatIdent_8ABD6 = 4;
								end
								if (FlatIdent_8ABD6 == 0) then
									A = nil;
									Stk[Inst[2]] = Env[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									FlatIdent_8ABD6 = 1;
								end
								if (FlatIdent_8ABD6 == 1) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_8ABD6 = 2;
								end
								if (FlatIdent_8ABD6 == 7) then
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									VIP = Inst[3];
									break;
								end
								if (FlatIdent_8ABD6 == 6) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_8ABD6 = 7;
								end
								if (FlatIdent_8ABD6 == 2) then
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									FlatIdent_8ABD6 = 3;
								end
								if (FlatIdent_8ABD6 == 4) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]] - Stk[Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_8ABD6 = 5;
								end
								if (FlatIdent_8ABD6 == 5) then
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
									FlatIdent_8ABD6 = 6;
								end
							end
						end
					elseif (Enum <= 29) then
						if (Enum == 28) then
							Stk[Inst[2]] = Stk[Inst[3]];
						else
							local B;
							local A;
							Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							B = Stk[Inst[3]];
							Stk[A + 1] = B;
							Stk[A] = B[Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Stk[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Stk[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							if Stk[Inst[2]] then
								VIP = VIP + 1;
							else
								VIP = Inst[3];
							end
						end
					elseif (Enum == 30) then
						local B = Inst[3];
						local K = Stk[B];
						for Idx = B + 1, Inst[4] do
							K = K .. Stk[Idx];
						end
						Stk[Inst[2]] = K;
					else
						local A;
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
					end
				elseif (Enum <= 47) then
					if (Enum <= 39) then
						if (Enum <= 35) then
							if (Enum <= 33) then
								if (Enum == 32) then
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								else
									local A = Inst[2];
									local Results = {Stk[A]()};
									local Limit = Inst[4];
									local Edx = 0;
									for Idx = A, Limit do
										Edx = Edx + 1;
										Stk[Idx] = Results[Edx];
									end
								end
							elseif (Enum == 34) then
								Stk[Inst[2]] = {};
							else
								do
									return;
								end
							end
						elseif (Enum <= 37) then
							if (Enum > 36) then
								Stk[Inst[2]] = Wrap(Proto[Inst[3]], nil, Env);
							else
								Stk[Inst[2]] = Upvalues[Inst[3]];
							end
						elseif (Enum > 38) then
							local A = Inst[2];
							Stk[A](Stk[A + 1]);
						elseif (Inst[2] == Stk[Inst[4]]) then
							VIP = VIP + 1;
						else
							VIP = Inst[3];
						end
					elseif (Enum <= 43) then
						if (Enum <= 41) then
							if (Enum == 40) then
								Stk[Inst[2]]();
							else
								local FlatIdent_2DA99 = 0;
								local Edx;
								local Results;
								local Limit;
								local B;
								local A;
								while true do
									if (FlatIdent_2DA99 == 0) then
										Edx = nil;
										Results, Limit = nil;
										B = nil;
										A = nil;
										Stk[Inst[2]] = Env[Inst[3]];
										VIP = VIP + 1;
										FlatIdent_2DA99 = 1;
									end
									if (FlatIdent_2DA99 == 2) then
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
										FlatIdent_2DA99 = 3;
									end
									if (FlatIdent_2DA99 == 3) then
										Top = (Limit + A) - 1;
										Edx = 0;
										for Idx = A, Top do
											Edx = Edx + 1;
											Stk[Idx] = Results[Edx];
										end
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										FlatIdent_2DA99 = 4;
									end
									if (FlatIdent_2DA99 == 1) then
										Inst = Instr[VIP];
										A = Inst[2];
										B = Stk[Inst[3]];
										Stk[A + 1] = B;
										Stk[A] = B[Inst[4]];
										VIP = VIP + 1;
										FlatIdent_2DA99 = 2;
									end
									if (FlatIdent_2DA99 == 4) then
										Stk[A] = Stk[A](Unpack(Stk, A + 1, Top));
										VIP = VIP + 1;
										Inst = Instr[VIP];
										A = Inst[2];
										Stk[A] = Stk[A]();
										VIP = VIP + 1;
										FlatIdent_2DA99 = 5;
									end
									if (FlatIdent_2DA99 == 5) then
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
										VIP = VIP + 1;
										FlatIdent_2DA99 = 6;
									end
									if (6 == FlatIdent_2DA99) then
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										Stk[Inst[2]] = Inst[3];
										break;
									end
								end
							end
						elseif (Enum > 42) then
							local FlatIdent_43626 = 0;
							local A;
							while true do
								if (FlatIdent_43626 == 5) then
									Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Env[Inst[3]];
									FlatIdent_43626 = 6;
								end
								if (FlatIdent_43626 == 6) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									FlatIdent_43626 = 7;
								end
								if (FlatIdent_43626 == 1) then
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									FlatIdent_43626 = 2;
								end
								if (FlatIdent_43626 == 3) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_43626 = 4;
								end
								if (FlatIdent_43626 == 2) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									FlatIdent_43626 = 3;
								end
								if (FlatIdent_43626 == 4) then
									A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_43626 = 5;
								end
								if (0 == FlatIdent_43626) then
									A = nil;
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_43626 = 1;
								end
								if (FlatIdent_43626 == 7) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									break;
								end
							end
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
								local FlatIdent_512FF = 0;
								while true do
									if (FlatIdent_512FF == 0) then
										Stk[CB] = R;
										VIP = Inst[3];
										break;
									end
								end
							else
								VIP = VIP + 1;
							end
						end
					elseif (Enum <= 45) then
						if (Enum > 44) then
							local A;
							local K;
							local B;
							Stk[Inst[2]] = Inst[3];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Stk[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Inst[3];
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
							Stk[A](Stk[A + 1]);
							VIP = VIP + 1;
							Inst = Instr[VIP];
							VIP = Inst[3];
						else
							Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Inst[3];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							VIP = Inst[3];
						end
					elseif (Enum > 46) then
						local A;
						Stk[Inst[2]] = Inst[3];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						A = Inst[2];
						Stk[A](Stk[A + 1]);
						VIP = VIP + 1;
						Inst = Instr[VIP];
						for Idx = Inst[2], Inst[3] do
							Stk[Idx] = nil;
						end
						VIP = VIP + 1;
						Inst = Instr[VIP];
						do
							return Stk[Inst[2]];
						end
						VIP = VIP + 1;
						Inst = Instr[VIP];
						VIP = Inst[3];
					elseif (Stk[Inst[2]] == Inst[4]) then
						VIP = VIP + 1;
					else
						VIP = Inst[3];
					end
				elseif (Enum <= 55) then
					if (Enum <= 51) then
						if (Enum <= 49) then
							if (Enum == 48) then
								local A = Inst[2];
								do
									return Stk[A], Stk[A + 1];
								end
							else
								local A = Inst[2];
								Stk[A] = Stk[A]();
							end
						elseif (Enum == 50) then
							local A = Inst[2];
							local Results, Limit = _R(Stk[A](Stk[A + 1]));
							Top = (Limit + A) - 1;
							local Edx = 0;
							for Idx = A, Top do
								local FlatIdent_829F9 = 0;
								while true do
									if (FlatIdent_829F9 == 0) then
										Edx = Edx + 1;
										Stk[Idx] = Results[Edx];
										break;
									end
								end
							end
						else
							local A = Inst[2];
							Stk[A] = Stk[A](Stk[A + 1]);
						end
					elseif (Enum <= 53) then
						if (Enum > 52) then
							local A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
						else
							local FlatIdent_89562 = 0;
							local B;
							local A;
							while true do
								if (FlatIdent_89562 == 2) then
									A = Inst[2];
									B = Stk[Inst[3]];
									Stk[A + 1] = B;
									Stk[A] = B[Inst[4]];
									FlatIdent_89562 = 3;
								end
								if (FlatIdent_89562 == 1) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_89562 = 2;
								end
								if (FlatIdent_89562 == 0) then
									B = nil;
									A = nil;
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									VIP = VIP + 1;
									FlatIdent_89562 = 1;
								end
								if (FlatIdent_89562 == 5) then
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_89562 = 6;
								end
								if (FlatIdent_89562 == 6) then
									if Stk[Inst[2]] then
										VIP = VIP + 1;
									else
										VIP = Inst[3];
									end
									break;
								end
								if (4 == FlatIdent_89562) then
									Inst = Instr[VIP];
									A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
									VIP = VIP + 1;
									FlatIdent_89562 = 5;
								end
								if (FlatIdent_89562 == 3) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									VIP = VIP + 1;
									FlatIdent_89562 = 4;
								end
							end
						end
					elseif (Enum > 54) then
						VIP = Inst[3];
					else
						local FlatIdent_65194 = 0;
						local A;
						while true do
							if (FlatIdent_65194 == 0) then
								A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Top));
								break;
							end
						end
					end
				elseif (Enum <= 59) then
					if (Enum <= 57) then
						if (Enum == 56) then
							local A;
							Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Inst[3];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Stk[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Stk[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Inst[3];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							VIP = Inst[3];
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
							Stk[A](Unpack(Stk, A + 1, Inst[3]));
							VIP = VIP + 1;
							Inst = Instr[VIP];
							Stk[Inst[2]] = Inst[3];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							VIP = Inst[3];
						end
					elseif (Enum > 58) then
						for Idx = Inst[2], Inst[3] do
							Stk[Idx] = nil;
						end
					else
						local FlatIdent_86E18 = 0;
						local A;
						local Results;
						local Limit;
						local Edx;
						while true do
							if (FlatIdent_86E18 == 1) then
								Top = (Limit + A) - 1;
								Edx = 0;
								FlatIdent_86E18 = 2;
							end
							if (FlatIdent_86E18 == 2) then
								for Idx = A, Top do
									local FlatIdent_3121 = 0;
									while true do
										if (FlatIdent_3121 == 0) then
											Edx = Edx + 1;
											Stk[Idx] = Results[Edx];
											break;
										end
									end
								end
								break;
							end
							if (FlatIdent_86E18 == 0) then
								A = Inst[2];
								Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
								FlatIdent_86E18 = 1;
							end
						end
					end
				elseif (Enum <= 61) then
					if (Enum == 60) then
						Stk[Inst[2]] = Inst[3];
					else
						Stk[Inst[2]][Inst[3]] = Inst[4];
					end
				elseif (Enum == 62) then
					Stk[Inst[2]][Stk[Inst[3]]] = Stk[Inst[4]];
				else
					local FlatIdent_90A69 = 0;
					local Edx;
					local Results;
					local A;
					while true do
						if (FlatIdent_90A69 == 0) then
							Edx = nil;
							Results = nil;
							A = nil;
							FlatIdent_90A69 = 1;
						end
						if (FlatIdent_90A69 == 2) then
							Stk[Inst[2]] = Env[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							FlatIdent_90A69 = 3;
						end
						if (FlatIdent_90A69 == 1) then
							Stk[Inst[2]] = Stk[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							FlatIdent_90A69 = 2;
						end
						if (5 == FlatIdent_90A69) then
							for Idx = A, Inst[4] do
								local FlatIdent_77529 = 0;
								while true do
									if (0 == FlatIdent_77529) then
										Edx = Edx + 1;
										Stk[Idx] = Results[Edx];
										break;
									end
								end
							end
							VIP = VIP + 1;
							Inst = Instr[VIP];
							FlatIdent_90A69 = 6;
						end
						if (FlatIdent_90A69 == 3) then
							Stk[Inst[2]] = Stk[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							FlatIdent_90A69 = 4;
						end
						if (FlatIdent_90A69 == 6) then
							VIP = Inst[3];
							break;
						end
						if (FlatIdent_90A69 == 4) then
							A = Inst[2];
							Results = {Stk[A](Stk[A + 1])};
							Edx = 0;
							FlatIdent_90A69 = 5;
						end
					end
				end
				VIP = VIP + 1;
			end
		end;
	end
	return Wrap(Deserialize(), {}, vmenv)(...);
end
return VMCall("LOL!2C3O00028O00027O0040026O00F03F026O000840026O00204003043O00506C617903093O00436F6D706C6574656403073O00436F2O6E656374026O00144003083O00496E7374616E63652O033O006E657703053O004672616D65026O00184003043O0067616D65030A3O0047657453657276696365030C3O0054772O656E5365727669636503093O005363722O656E47756903073O00436F7265477569030A3O006C6F6164737472696E6703073O00482O747047657403483O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F7848657074632F4B61766F2D55492D4C6962726172792F6D61696E2F736F757263652E6C756103093O004372656174654C696203073O005342544420563203093O004461726B5468656D65026O00104003043O0053697A6503053O005544696D3203083O00506F736974696F6E026O00E03F030B3O00416E63686F72506F696E7403073O00566563746F7232026O001C4003063O0043726561746503163O004261636B67726F756E645472616E73706172656E637903093O0054772O656E496E666F03043O00456E756D030B3O00456173696E675374796C6503063O00426F756E6365030F3O00456173696E67446972656374696F6E2O033O004F757403083O004D61737465726564030F3O004D6173746572656420546F7765727303063O00546F7765727303103O00537061776E61626C6520546F7765727300B93O00123C3O00014O003B0001000C3O00262E3O0012000100020004373O0012000100123C000D00013O00262E000D000C000100010004373O000C00012O003B000500053O00061200053O000100022O001C3O00034O001C3O00043O00123C000D00033O00262E000D0005000100030004373O000500012O003B000600063O00123C3O00043O0004373O001200010004373O0005000100262E3O001D000100050004373O001D0001002008000D000C00062O0027000D00020001002O20000D000C0007002008000D000D0008000612000F0001000100022O001C3O00094O001C3O00014O0016000D000F00010004373O00B7000100262E3O003A000100090004373O003A000100123C000D00013O000E260003002A0001000D0004373O002A0001001202000E000A3O002038000E000E000B00122O000F000C6O001000096O000E001000024O000A000E3O00124O000D3O00044O003A000100262E000D0020000100010004373O00200001001202000E000E3O002017000E000E000F00122O001000106O000E001000024O0008000E3O00122O000E000A3O00202O000E000E000B00122O000F00113O00122O0010000E3O00202O0010001000124O000E001000022O001C0009000E3O00123C000D00033O0004373O0020000100262E3O004B000100010004373O004B0001001202000D00133O001229000E000E3O00202O000E000E001400122O001000156O000E00106O000D3O00024O000D000100024O0001000D3O00202O000D0001001600122O000E00173O00122O000F00184O0035000D000F00022O001C0002000D4O003B000300033O00123C3O00033O00262E3O0053000100040004373O0053000100061200060002000100022O001C3O00054O001C3O00024O003B000700073O000225000700033O00123C3O00193O00262E3O006C0001000D0004373O006C0001001202000D001B3O00202B000D000D000B00122O000E00013O00122O000F00013O00122O001000013O00122O001100016O000D0011000200102O000A001A000D00122O000D001B3O00202O000D000D000B00122O000E001D3O00123C000F00013O00121F0010001D3O00122O001100016O000D0011000200102O000A001C000D00122O000D001F3O00202O000D000D000B00122O000E001D3O00122O000F001D6O000D000F000200102O000A001E000D00123C3O00203O00262E3O007A000100030004373O007A000100123C000D00013O00262E000D0074000100030004373O00740001000225000400043O00123C3O00023O0004373O007A000100262E000D006F000100010004373O006F0001000225000300054O003B000400043O00123C000D00033O0004373O006F000100262E3O009F000100200004373O009F000100123C000D00013O00262E000D008F000100030004373O008F0001002008000E000800212O00050010000A6O0011000B6O00123O000100122O0013001B3O00202O00130013000B00122O001400033O00122O001500013O00122O001600033O00122O001700016O0013001700020010070012001A00132O0035000E001200022O001C000C000E3O00123C3O00053O0004373O009F000100262E000D007D000100010004373O007D000100303D000A0022000300120E000E00233O00202O000E000E000B00122O000F00033O00122O001000243O00202O00100010002500202O00100010002600122O001100243O00202O00110011002700202O0011001100284O000E001100022O001C000B000E3O00123C000D00033O0004373O007D000100262E3O0002000100190004373O0002000100123C000D00013O00262E000D00AB000100030004373O00AB00012O001C000E00063O001239000F00293O00122O0010002A3O00122O0011002A6O000E0011000100124O00093O00044O0002000100262E000D00A2000100010004373O00A200012O001C000E00074O000B000E000100014O000E00063O00122O000F002B3O00122O0010002C3O00122O0011002C6O000E0011000100122O000D00033O00044O00A200010004373O000200012O000A8O00233O00013O00063O00093O00028O0003053O007072696E74030F3O00537061776E696E6720746F7765723A030C3O00496E766F6B6553657276657203063O00434672616D652O033O006E6577030D3O00537061776E20726573756C743A03043O007761726E03163O004661696C656420746F20737061776E20746F7765723A012F3O00123C000100014O003B000200033O000E2600010002000100010004373O000200012O002400046O00210004000100052O001C000300054O001C000200043O002O060002002E00013O0004373O002E0001002O060003002E00013O0004373O002E000100123C000400014O003B000500053O00262E0004000E000100010004373O000E00012O0024000600014O00310006000100022O001C000500063O002O060005002600013O0004373O00260001001202000600023O001213000700036O00088O00060008000100202O0006000500044O00085O00122O000900053O00202O0009000900064O000A00026O0009000200024O0009000900034O00060009000200122O000700023O00122O000800076O000900066O00070009000100044O002E0001001202000600083O00123C000700094O001C00086O00160006000800010004373O002E00010004373O000E00010004373O002E00010004373O000200012O00233O00017O00053O00028O0003073O0044657374726F7903093O004372656174654C696203073O005342544420563203093O004461726B5468656D65000E3O00123C3O00013O00262E3O0001000100010004373O000100012O002400015O0020140001000100024O0001000200014O000100013O00202O00010001000300122O000300043O00122O000400056O00010004000100044O000D00010004373O000100012O00233O00017O00153O00028O0003043O0067616D6503113O005265706C69636174656453746F72616765030E3O0046696E6446697273744368696C6403053O007061697273030B3O004765744368696C6472656E03043O004E616D65026O00F03F03053O007461626C6503063O00696E73657274027O0040026O000840030A3O004E657753656374696F6E03063O0069706169727303093O004E657742752O746F6E03063O00537061776E2003043O00736F727403063O004E657754616203043O007761726E03083O00466F6C646572202703203O0027206E6F7420666F756E6420696E205265706C69636174656453746F7261676503633O00123C000300014O003B000400043O00262E00030002000100010004373O00020001001202000500023O00201D00050005000300202O0005000500044O00078O0005000700024O000400053O00062O0004005A00013O0004373O005A000100123C000500014O003B000600093O00262E0005001C000100010004373O001C00012O0022000A6O00180006000A3O00122O000A00053O00202O000B000400064O000B000C6O000A3O000C00044O00190001002O20000F000E00072O003E0006000F000E00062A000A0017000100020004373O0017000100123C000500083O00262E00050034000100080004373O0034000100123C000A00013O00262E000A002F000100010004373O002F00012O0022000B6O003F0007000B3O00122O000B00056O000C00066O000B0002000D00044O002C0001001202001000093O002O2000100010000A2O001C001100074O001C0012000E4O001600100012000100062A000B0027000100020004373O0027000100123C000A00083O00262E000A001F000100080004373O001F000100123C0005000B3O0004373O003400010004373O001F000100262E0005004C0001000C0004373O004C0001002008000A0008000D4O000C00026O000A000C00024O0009000A3O00122O000A000E6O000B00076O000A0002000C00044O004900012O0015000F0006000E00201100100009000F4O0012000E3O00122O001300106O0014000E6O00130013001400061200143O000100022O00248O001C3O000E4O00160010001400012O000A000D5O00062A000A003E000100020004373O003E00010004373O0062000100262E0005000E0001000B0004373O000E0001001202000A00093O002004000A000A00114O000B00076O000A000200014O000A00013O00202O000A000A00124O000C00016O000A000C00024O0008000A3O00122O0005000C3O00044O000E00010004373O00620001001202000500133O00122D000600146O00075O00122O000800156O0006000600084O00050002000100044O006200010004373O000200012O00233O00013O00018O00044O00248O0024000100014O00273O000200012O00233O00017O000D3O00028O0003043O0067616D6503113O005265706C69636174656453746F72616765030E3O0046696E6446697273744368696C6403063O00546F7765727303083O004D61737465726564026O00F03F03053O007061697273030B3O004765744368696C6472656E03043O004E616D6503073O0044657374726F7903043O007761726E033D3O00466F6C646572732027546F7765727327206F7220274D6173746572656427206E6F7420666F756E6420696E205265706C69636174656453746F72616765003B3O00123C3O00014O003B000100023O00262E3O0019000100010004373O0019000100123C000300013O00262E00030014000100010004373O00140001001202000400023O00200300040004000300202O00040004000400122O000600056O0004000600024O000100043O00122O000400023O00202O00040004000300202O00040004000400122O000600066O0004000600024O000200043O00122O000300073O00262E00030005000100070004373O0005000100123C3O00073O0004373O001900010004373O0005000100262E3O0002000100070004373O00020001002O060001003500013O0004373O00350001002O060002003500013O0004373O00350001001202000300083O0020080004000200092O0032000400054O001900033O00050004373O0032000100123C000800014O003B000900093O00262E00080026000100010004373O00260001002008000A00010004002O20000C0007000A2O0035000A000C00022O001C0009000A3O002O060009003200013O0004373O00320001002008000A0009000B2O0027000A000200010004373O003200010004373O0026000100062A00030024000100020004373O002400010004373O003A00010012020003000C3O00123C0004000D4O00270003000200010004373O003A00010004373O000200012O00233O00017O000A3O00028O0003043O0067616D6503113O005265706C69636174656453746F7261676503093O0046756E6374696F6E73030E3O0046696E6446697273744368696C64030A3O00537061776E546F7765722O033O00497341030E3O0052656D6F746546756E6374696F6E03043O007761726E033A3O0052656D6F746546756E6374696F6E2027537061776E546F77657227206E6F7420666F756E6420696E205265706C69636174656453746F72616765002A3O00123C3O00014O003B000100013O00262E3O0002000100010004373O00020001001202000200023O00203400020002000300202O00020002000400202O00020002000500122O000400066O0002000400024O000100023O00062O0001001400013O0004373O0014000100200800020001000700123C000400084O0035000200040002002O060002001400013O0004373O001400012O0001000100023O0004373O0029000100123C000200014O003B000300033O00262E00020016000100010004373O0016000100123C000300013O00262E00030019000100010004373O0019000100123C000400013O00262E0004001C000100010004373O001C0001001202000500093O00122F0006000A6O0005000200014O000500056O000500023O00044O001C00010004373O001900010004373O002900010004373O001600010004373O002900010004373O000200012O00233O00017O00113O00028O00026O00F03F030E3O0046696E6446697273744368696C6403103O0048756D616E6F6964522O6F745061727403083O00506F736974696F6E03073O00566563746F72332O033O006E657703013O005803013O005903043O0053697A65027O004003013O005A03063O00434672616D6503043O0067616D6503073O00506C6179657273030B3O004C6F63616C506C6179657203093O0043686172616374657200633O00123C3O00014O003B000100033O00262E3O005C000100020004373O005C00012O003B000300033O00123C000400013O00262E00040006000100010004373O0006000100262E00010049000100020004373O0049000100123C000500013O00262E0005000B000100010004373O000B0001002O060003004600013O0004373O0046000100123C000600014O003B000700073O00262E00060011000100010004373O0011000100200800080003000300123C000A00044O00350008000A00022O001C000700083O002O060007004600013O0004373O0046000100123C000800014O003B0009000B3O00123C000C00013O00262E000C001C000100010004373O001C000100262E00080035000100010004373O0035000100123C000D00013O00262E000D0025000100020004373O0025000100123C000800023O0004373O0035000100262E000D0021000100010004373O00210001002O2000090007000500121B000E00063O00202O000E000E000700202O000F0009000800202O00100009000900202O00110007000A00202O00110011000900202O00110011000B4O00100010001100202O00110009000C4O000E001100024O000A000E3O00122O000D00023O00044O00210001000E260002001B000100080004373O001B000100123C000D00013O00262E000D0038000100010004373O00380001002O20000E0007000D00200D000F000700054O000B000E000F4O000E000A6O000F000B6O000E00033O00044O003800010004373O001B00010004373O001C00010004373O001B00010004373O004600010004373O001100012O003B000600074O0030000600033O0004373O000B0001000E2600010005000100010004373O0005000100123C000500013O00262E00050050000100020004373O0050000100123C000100023O0004373O0005000100262E0005004C000100010004373O004C00010012020006000E3O00202C00060006000F00202O00020006001000202O00030002001100122O000500023O00044O004C00010004373O000500010004373O000600010004373O000500010004373O0062000100262E3O0002000100010004373O0002000100123C000100014O003B000200023O00123C3O00023O0004373O000200012O00233O00017O00", GetFEnv(), ...);