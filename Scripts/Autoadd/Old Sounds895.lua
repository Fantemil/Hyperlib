--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.6) ~  Much Love, Ferib 

]]--

-- // Comment below what else should I make

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
		local FlatIdent_12703 = 0;
		local a;
		while true do
			if (FlatIdent_12703 == 0) then
				a = Byte(ByteString, DIP, DIP);
				DIP = DIP + 1;
				FlatIdent_12703 = 1;
			end
			if (FlatIdent_12703 == 1) then
				return a;
			end
		end
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
				local FlatIdent_475BC = 0;
				while true do
					if (FlatIdent_475BC == 0) then
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
		local FlatIdent_60EA1 = 0;
		local Instrs;
		local Functions;
		local Lines;
		local Chunk;
		local ConstCount;
		local Consts;
		while true do
			if (FlatIdent_60EA1 == 2) then
				for Idx = 1, gBits32() do
					local Descriptor = gBits8();
					if (gBit(Descriptor, 1, 1) == 0) then
						local FlatIdent_61B23 = 0;
						local Type;
						local Mask;
						local Inst;
						while true do
							if (2 == FlatIdent_61B23) then
								if (gBit(Mask, 1, 1) == 1) then
									Inst[2] = Consts[Inst[2]];
								end
								if (gBit(Mask, 2, 2) == 1) then
									Inst[3] = Consts[Inst[3]];
								end
								FlatIdent_61B23 = 3;
							end
							if (FlatIdent_61B23 == 3) then
								if (gBit(Mask, 3, 3) == 1) then
									Inst[4] = Consts[Inst[4]];
								end
								Instrs[Idx] = Inst;
								break;
							end
							if (FlatIdent_61B23 == 0) then
								Type = gBit(Descriptor, 2, 3);
								Mask = gBit(Descriptor, 4, 6);
								FlatIdent_61B23 = 1;
							end
							if (FlatIdent_61B23 == 1) then
								Inst = {gBits16(),gBits16(),nil,nil};
								if (Type == 0) then
									local FlatIdent_2FD19 = 0;
									while true do
										if (FlatIdent_2FD19 == 0) then
											Inst[3] = gBits16();
											Inst[4] = gBits16();
											break;
										end
									end
								elseif (Type == 1) then
									Inst[3] = gBits32();
								elseif (Type == 2) then
									Inst[3] = gBits32() - (2 ^ 16);
								elseif (Type == 3) then
									local FlatIdent_79536 = 0;
									while true do
										if (FlatIdent_79536 == 0) then
											Inst[3] = gBits32() - (2 ^ 16);
											Inst[4] = gBits16();
											break;
										end
									end
								end
								FlatIdent_61B23 = 2;
							end
						end
					end
				end
				for Idx = 1, gBits32() do
					Functions[Idx - 1] = Deserialize();
				end
				return Chunk;
			end
			if (FlatIdent_60EA1 == 0) then
				Instrs = {};
				Functions = {};
				Lines = {};
				Chunk = {Instrs,Functions,nil,Lines};
				FlatIdent_60EA1 = 1;
			end
			if (1 == FlatIdent_60EA1) then
				ConstCount = gBits32();
				Consts = {};
				for Idx = 1, ConstCount do
					local FlatIdent_31905 = 0;
					local Type;
					local Cons;
					while true do
						if (FlatIdent_31905 == 1) then
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
						if (0 == FlatIdent_31905) then
							Type = gBits8();
							Cons = nil;
							FlatIdent_31905 = 1;
						end
					end
				end
				Chunk[3] = gBits8();
				FlatIdent_60EA1 = 2;
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
				Inst = Instr[VIP];
				Enum = Inst[1];
				if (Enum <= 18) then
					if (Enum <= 8) then
						if (Enum <= 3) then
							if (Enum <= 1) then
								if (Enum == 0) then
									local FlatIdent_7A75F = 0;
									local A;
									while true do
										if (FlatIdent_7A75F == 0) then
											A = Inst[2];
											Stk[A](Stk[A + 1]);
											break;
										end
									end
								else
									local A;
									local K;
									local B;
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
									Stk[Inst[2]] = Stk[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									if Stk[Inst[2]] then
										VIP = VIP + 1;
									else
										VIP = Inst[3];
									end
								end
							elseif (Enum == 2) then
								Stk[Inst[2]] = Env[Inst[3]];
							else
								local A;
								local K;
								local B;
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
								Stk[Inst[2]] = Stk[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								if Stk[Inst[2]] then
									VIP = VIP + 1;
								else
									VIP = Inst[3];
								end
							end
						elseif (Enum <= 5) then
							if (Enum == 4) then
								local FlatIdent_1B1BA = 0;
								local A;
								local K;
								local B;
								while true do
									if (FlatIdent_1B1BA == 0) then
										A = nil;
										K = nil;
										B = nil;
										FlatIdent_1B1BA = 1;
									end
									if (FlatIdent_1B1BA == 2) then
										Stk[Inst[2]] = Stk[Inst[3]];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_1B1BA = 3;
									end
									if (FlatIdent_1B1BA == 7) then
										Inst = Instr[VIP];
										if Stk[Inst[2]] then
											VIP = VIP + 1;
										else
											VIP = Inst[3];
										end
										break;
									end
									if (6 == FlatIdent_1B1BA) then
										Inst = Instr[VIP];
										Stk[Inst[2]] = Stk[Inst[3]];
										VIP = VIP + 1;
										FlatIdent_1B1BA = 7;
									end
									if (FlatIdent_1B1BA == 1) then
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_1B1BA = 2;
									end
									if (FlatIdent_1B1BA == 4) then
										Stk[Inst[2]] = K;
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_1B1BA = 5;
									end
									if (FlatIdent_1B1BA == 5) then
										A = Inst[2];
										Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
										VIP = VIP + 1;
										FlatIdent_1B1BA = 6;
									end
									if (FlatIdent_1B1BA == 3) then
										B = Inst[3];
										K = Stk[B];
										for Idx = B + 1, Inst[4] do
											K = K .. Stk[Idx];
										end
										FlatIdent_1B1BA = 4;
									end
								end
							else
								local A = Inst[2];
								local Step = Stk[A + 2];
								local Index = Stk[A] + Step;
								Stk[A] = Index;
								if (Step > 0) then
									if (Index <= Stk[A + 1]) then
										local FlatIdent_9622C = 0;
										while true do
											if (FlatIdent_9622C == 0) then
												VIP = Inst[3];
												Stk[A + 3] = Index;
												break;
											end
										end
									end
								elseif (Index >= Stk[A + 1]) then
									VIP = Inst[3];
									Stk[A + 3] = Index;
								end
							end
						elseif (Enum <= 6) then
							local FlatIdent_2D88C = 0;
							local A;
							local Index;
							local Step;
							while true do
								if (1 == FlatIdent_2D88C) then
									Step = Stk[A + 2];
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
									break;
								end
								if (FlatIdent_2D88C == 0) then
									A = Inst[2];
									Index = Stk[A];
									FlatIdent_2D88C = 1;
								end
							end
						elseif (Enum > 7) then
							local A = Inst[2];
							local T = Stk[A];
							local B = Inst[3];
							for Idx = 1, B do
								T[Idx] = Stk[A + Idx];
							end
						else
							Stk[Inst[2]] = Stk[Inst[3]][Stk[Inst[4]]];
						end
					elseif (Enum <= 13) then
						if (Enum <= 10) then
							if (Enum == 9) then
								for Idx = Inst[2], Inst[3] do
									Stk[Idx] = nil;
								end
							else
								local A;
								local K;
								local B;
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
								Stk[Inst[2]] = Stk[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								if Stk[Inst[2]] then
									VIP = VIP + 1;
								else
									VIP = Inst[3];
								end
							end
						elseif (Enum <= 11) then
							local A = Inst[2];
							local B = Stk[Inst[3]];
							Stk[A + 1] = B;
							Stk[A] = B[Inst[4]];
						elseif (Enum == 12) then
							Stk[Inst[2]] = Inst[3];
						else
							Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
						end
					elseif (Enum <= 15) then
						if (Enum > 14) then
							Stk[Inst[2]] = Stk[Inst[3]];
						else
							local FlatIdent_5346B = 0;
							local B;
							local A;
							while true do
								if (FlatIdent_5346B == 4) then
									B = Stk[Inst[3]];
									Stk[A + 1] = B;
									Stk[A] = B[Inst[4]];
									FlatIdent_5346B = 5;
								end
								if (FlatIdent_5346B == 7) then
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_5346B = 8;
								end
								if (6 == FlatIdent_5346B) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									FlatIdent_5346B = 7;
								end
								if (FlatIdent_5346B == 3) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									FlatIdent_5346B = 4;
								end
								if (FlatIdent_5346B == 8) then
									Stk[Inst[2]] = Stk[Inst[3]];
									VIP = VIP + 1;
									Inst = Instr[VIP];
									FlatIdent_5346B = 9;
								end
								if (FlatIdent_5346B == 9) then
									Stk[Inst[2]] = Inst[3];
									break;
								end
								if (1 == FlatIdent_5346B) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Env[Inst[3]];
									FlatIdent_5346B = 2;
								end
								if (FlatIdent_5346B == 0) then
									B = nil;
									A = nil;
									Stk[Inst[2]] = Inst[3];
									FlatIdent_5346B = 1;
								end
								if (FlatIdent_5346B == 5) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Inst[3];
									FlatIdent_5346B = 6;
								end
								if (FlatIdent_5346B == 2) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
									FlatIdent_5346B = 3;
								end
							end
						end
					elseif (Enum <= 16) then
						local A;
						local K;
						local B;
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
						Stk[Inst[2]] = Stk[Inst[3]];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						if Stk[Inst[2]] then
							VIP = VIP + 1;
						else
							VIP = Inst[3];
						end
					elseif (Enum == 17) then
						local FlatIdent_19F98 = 0;
						local A;
						local T;
						while true do
							if (FlatIdent_19F98 == 0) then
								A = Inst[2];
								T = Stk[A];
								FlatIdent_19F98 = 1;
							end
							if (FlatIdent_19F98 == 1) then
								for Idx = A + 1, Inst[3] do
									Insert(T, Stk[Idx]);
								end
								break;
							end
						end
					else
						local A;
						local K;
						local B;
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
						Stk[Inst[2]] = Stk[Inst[3]];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						if Stk[Inst[2]] then
							VIP = VIP + 1;
						else
							VIP = Inst[3];
						end
					end
				elseif (Enum <= 27) then
					if (Enum <= 22) then
						if (Enum <= 20) then
							if (Enum > 19) then
								local FlatIdent_2BE02 = 0;
								local B;
								local T;
								local A;
								while true do
									if (FlatIdent_2BE02 == 3) then
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_2BE02 = 4;
									end
									if (FlatIdent_2BE02 == 5) then
										A = Inst[2];
										T = Stk[A];
										B = Inst[3];
										FlatIdent_2BE02 = 6;
									end
									if (FlatIdent_2BE02 == 2) then
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_2BE02 = 3;
									end
									if (FlatIdent_2BE02 == 4) then
										Stk[Inst[2]] = Inst[3];
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_2BE02 = 5;
									end
									if (0 == FlatIdent_2BE02) then
										B = nil;
										T = nil;
										A = nil;
										FlatIdent_2BE02 = 1;
									end
									if (FlatIdent_2BE02 == 6) then
										for Idx = 1, B do
											T[Idx] = Stk[A + Idx];
										end
										break;
									end
									if (FlatIdent_2BE02 == 1) then
										Stk[Inst[2]] = {};
										VIP = VIP + 1;
										Inst = Instr[VIP];
										FlatIdent_2BE02 = 2;
									end
								end
							else
								local FlatIdent_691EB = 0;
								local A;
								while true do
									if (FlatIdent_691EB == 0) then
										A = Inst[2];
										Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
										break;
									end
								end
							end
						elseif (Enum == 21) then
							local A;
							local K;
							local B;
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
							Stk[Inst[2]] = Stk[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							if Stk[Inst[2]] then
								VIP = VIP + 1;
							else
								VIP = Inst[3];
							end
						else
							local A;
							local K;
							local B;
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
							Stk[Inst[2]] = Stk[Inst[3]];
							VIP = VIP + 1;
							Inst = Instr[VIP];
							if Stk[Inst[2]] then
								VIP = VIP + 1;
							else
								VIP = Inst[3];
							end
						end
					elseif (Enum <= 24) then
						if (Enum > 23) then
							Stk[Inst[2]] = {};
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
							Stk[Inst[2]] = Inst[3];
						else
							VIP = Inst[3];
						end
					elseif (Enum <= 25) then
						local FlatIdent_3B7E2 = 0;
						local A;
						local K;
						local B;
						while true do
							if (FlatIdent_3B7E2 == 0) then
								A = nil;
								K = nil;
								B = nil;
								FlatIdent_3B7E2 = 1;
							end
							if (FlatIdent_3B7E2 == 2) then
								Stk[Inst[2]] = Stk[Inst[3]];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								FlatIdent_3B7E2 = 3;
							end
							if (FlatIdent_3B7E2 == 3) then
								B = Inst[3];
								K = Stk[B];
								for Idx = B + 1, Inst[4] do
									K = K .. Stk[Idx];
								end
								FlatIdent_3B7E2 = 4;
							end
							if (FlatIdent_3B7E2 == 5) then
								A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
								VIP = VIP + 1;
								FlatIdent_3B7E2 = 6;
							end
							if (FlatIdent_3B7E2 == 6) then
								Inst = Instr[VIP];
								if Stk[Inst[2]] then
									VIP = VIP + 1;
								else
									VIP = Inst[3];
								end
								break;
							end
							if (FlatIdent_3B7E2 == 1) then
								Stk[Inst[2]] = Inst[3];
								VIP = VIP + 1;
								Inst = Instr[VIP];
								FlatIdent_3B7E2 = 2;
							end
							if (FlatIdent_3B7E2 == 4) then
								Stk[Inst[2]] = K;
								VIP = VIP + 1;
								Inst = Instr[VIP];
								FlatIdent_3B7E2 = 5;
							end
						end
					elseif (Enum > 26) then
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
						Stk[Inst[2]] = Inst[3];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						Stk[Inst[2]] = Inst[3];
					else
						Stk[Inst[2]] = {};
					end
				elseif (Enum <= 32) then
					if (Enum <= 29) then
						if (Enum > 28) then
							local B;
							local T;
							local A;
							Stk[Inst[2]] = {};
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
							T = Stk[A];
							B = Inst[3];
							for Idx = 1, B do
								T[Idx] = Stk[A + Idx];
							end
						else
							local FlatIdent_21297 = 0;
							local A;
							local K;
							local B;
							while true do
								if (FlatIdent_21297 == 4) then
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]];
									FlatIdent_21297 = 5;
								end
								if (FlatIdent_21297 == 5) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									if Stk[Inst[2]] then
										VIP = VIP + 1;
									else
										VIP = Inst[3];
									end
									break;
								end
								if (FlatIdent_21297 == 0) then
									A = nil;
									K = nil;
									B = nil;
									Stk[Inst[2]] = Inst[3];
									FlatIdent_21297 = 1;
								end
								if (FlatIdent_21297 == 3) then
									Stk[Inst[2]] = K;
									VIP = VIP + 1;
									Inst = Instr[VIP];
									A = Inst[2];
									FlatIdent_21297 = 4;
								end
								if (FlatIdent_21297 == 2) then
									Inst = Instr[VIP];
									B = Inst[3];
									K = Stk[B];
									for Idx = B + 1, Inst[4] do
										K = K .. Stk[Idx];
									end
									FlatIdent_21297 = 3;
								end
								if (FlatIdent_21297 == 1) then
									VIP = VIP + 1;
									Inst = Instr[VIP];
									Stk[Inst[2]] = Stk[Inst[3]];
									VIP = VIP + 1;
									FlatIdent_21297 = 2;
								end
							end
						end
					elseif (Enum <= 30) then
						if (Inst[2] == Stk[Inst[4]]) then
							VIP = VIP + 1;
						else
							VIP = Inst[3];
						end
					elseif (Enum > 31) then
						if (Stk[Inst[2]] == Inst[4]) then
							VIP = VIP + 1;
						else
							VIP = Inst[3];
						end
					else
						local A;
						local K;
						local B;
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
						Stk[Inst[2]] = Stk[Inst[3]];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						if Stk[Inst[2]] then
							VIP = VIP + 1;
						else
							VIP = Inst[3];
						end
					end
				elseif (Enum <= 34) then
					if (Enum == 33) then
						local A;
						local K;
						local B;
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
						Stk[Inst[2]] = Stk[Inst[3]];
						VIP = VIP + 1;
						Inst = Instr[VIP];
						if Stk[Inst[2]] then
							VIP = VIP + 1;
						else
							VIP = Inst[3];
						end
					elseif Stk[Inst[2]] then
						VIP = VIP + 1;
					else
						VIP = Inst[3];
					end
				elseif (Enum <= 35) then
					local FlatIdent_69C4C = 0;
					local B;
					local K;
					while true do
						if (FlatIdent_69C4C == 0) then
							B = Inst[3];
							K = Stk[B];
							FlatIdent_69C4C = 1;
						end
						if (1 == FlatIdent_69C4C) then
							for Idx = B + 1, Inst[4] do
								K = K .. Stk[Idx];
							end
							Stk[Inst[2]] = K;
							break;
						end
					end
				elseif (Enum > 36) then
					do
						return;
					end
				else
					Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
				end
				VIP = VIP + 1;
			end
		end;
	end
	return Wrap(Deserialize(), {}, vmenv)(...);
end
return VMCall("LOL!503O00028O00026O00104003173O00726278612O73657469643A2O2F3736302O32362O32313703173O00726278612O73657469643A2O2F32372O3139353934313303163O00726278612O73657469643A2O2F333134333930363735026O001440026O00F03F03173O00726278612O73657469643A2O2F3736302O32363730373203173O00726278612O73657469643A2O2F3736302O3236372O303203173O00726278612O73657469643A2O2F3736302O322O3639343603173O00726278612O73657469643A2O2F3736393735373533313203173O00726278612O73657469643A2O2F3736393735373538363203173O00726278612O73657469643A2O2F3736393735373537333503173O00726278612O73657469643A2O2F3736393735373534313903173O00726278612O73657469643A2O2F3736302O3236312O373103173O00726278612O73657469643A2O2F3736302O323632353331027O0040026O00084003173O00726278612O73657469643A2O2F37363937352O372O363203173O00726278612O73657469643A2O2F37363937352O3733393003173O00726278612O73657469643A2O2F37363937352O3732343803173O00726278612O73657469643A2O2F3736302O3236322O333403173O00726278612O73657469643A2O2F3231373439342O31373903043O0067616D6503113O005265706C69636174656453746F72616765030E3O0046696E6446697273744368696C6403063O00536F756E6473026O00184003173O00726278612O73657469643A2O2F3736302O3236332O373903173O00726278612O73657469643A2O2F3736302O32363336373103173O00726278612O73657469643A2O2F3736302O32363335313903173O00726278612O73657469643A2O2F3736302O322O3638373003173O00726278612O73657469643A2O2F3736302O322O3637323403173O00726278612O73657469643A2O2F3736393735372O352O3403173O00726278612O73657469643A2O2F3736393735373532313003173O00726278612O73657469643A2O2F3736393735373630333103053O0056616C756503053O00686968697403063O00555377696E67026O00244003093O0068656176796B69636B030A3O00686561767970756E6368026O00224003053O0070756E636803043O006B69636B03043O004772616203093O00546967657244726F7003043O00536C6170030B3O0070756E63685F7765616B5F03053O004576616465030A3O00627275746570756E636803093O00426F6E65427265616B03063O006D656468697403053O006C6F68697403063O004B5377696E67030A3O0053776F72647377696E6703053O00736C696365030E3O0070756E63685F626C6F636B65645F030A3O0054696765725377696E6703043O007761726E032D3O00536F756E647320666F6C646572206E6F7420666F756E6420696E205265706C69636174656453746F726167652E03173O00726278612O73657469643A2O2F3736302O32363537333503173O00726278612O73657469643A2O2F3736302O32363O353203173O00726278612O73657469643A2O2F3736302O32363533363903173O00726278612O73657469643A2O2F3736302O323635322O3403173O00726278612O73657469643A2O2F3736302O32363438313303173O00726278612O73657469643A2O2F3736302O32363433303103173O00726278612O73657469643A2O2F3736302O32363435303803173O00726278612O73657469643A2O2F3736302O3236342O363303173O00726278612O73657469643A2O2F3736302O3236342O313303173O00726278612O73657469643A2O2F3736302O32363531343203173O00726278612O73657469643A2O2F3736302O32362O33393303173O00726278612O73657469643A2O2F3736302O32363332343903173O00726278612O73657469643A2O2F3736302O32363331333403173O00726278612O73657469643A2O2F3736302O323632392O3203173O00726278612O73657469643A2O2F3736302O32363230373103173O00726278612O73657469643A2O2F3736302O32363238323503173O00726278612O73657469643A2O2F3736302O32363237303803173O00726278612O73657469643A2O2F3736302O32363236333803173O00726278612O73657469643A2O2F3736302O322O362O353600B7012O00120C3O00014O0009000100123O0026203O0008000100020004173O0008000100120C000D00033O00120C000E00043O00120C000F00053O00120C3O00063O0026203O001D000100070004173O001D00012O001A001300033O00120C001400083O00120C001500093O00120C0016000A4O00080013000300012O000F000400134O001D001300043O00122O0014000B3O00122O0015000C3O00122O0016000D3O00122O0017000E6O0013000400012O000F000500134O001A001300023O00120C0014000F3O00120C001500104O00080013000200012O000F000600133O00120C3O00113O0026203O0023000100120004173O0023000100120C000A00133O00120C000B00143O00120C000C00153O00120C3O00023O0026203O002E000100060004173O002E000100120C001000163O00120E001100173O00122O001300183O00202O00130013001900202O00130013001A00122O0015001B6O0013001500024O001200133O00124O001C3O0026203O0042000100110004173O004200012O001A001300033O00120C0014001D3O00120C0015001E3O00120C0016001F4O00080013000300012O000F000700134O001A001300023O00120C001400203O00120C001500214O00080013000200012O000F000800134O0014001300033O00122O001400223O00122O001500233O00122O001600246O0013000300012O000F000900133O00120C3O00123O0026203O00982O01001C0004173O00982O01000622001200942O013O0004173O00942O0100120C001300014O00090014001B3O00262000130059000100060004173O005900010006220018004D00013O0004173O004D000100102400180025000B00200B001C0012001A00120C001E00264O0013001C001E00022O000F0019001C3O0006220019005400013O0004173O0054000100102400190025000C00200B001C0012001A00120C001E00274O0013001C001E00022O000F001A001C3O00120C0013001C3O002620001300C8000100010004173O00C8000100120C001C00073O00120C001D00283O00120C001E00073O000406001C008F000100120C002000014O0009002100233O00262000200066000100010004173O0066000100120C002100014O0009002200223O00120C002000073O00262000200061000100070004173O006100012O0009002300233O00262000210076000100070004173O0076000100200B00240012001A001203002600296O0027001F6O0026002600274O0024002600024O002300243O00062O0023008E00013O0004173O008E00012O000700240001001F0010240023002500240004173O008E000100262000210069000100010004173O0069000100120C002400013O0026200024007D000100070004173O007D000100120C002100073O0004173O0069000100262000240079000100010004173O0079000100200B00250012001A0012030027002A6O0028001F6O0027002700284O0025002700024O002200253O00062O0022008900013O0004173O008900012O000700250001001F00102400220025002500120C002400073O0004173O007900010004173O006900010004173O008E00010004173O00610001000405001C005F000100120C001C00073O00120C001D002B3O00120C001E00073O000406001C00A4000100120C002000014O0009002100213O00262000200095000100010004173O0095000100200B00220012001A0012030024002C6O0025001F6O0024002400254O0022002400024O002100223O00062O002100A300013O0004173O00A300012O000700220002001F0010240021002500220004173O00A300010004173O00950001000405001C0093000100120C001C00073O00120C001D002B3O00120C001E00073O000406001C00B2000100200B00200012001A0012190022002D6O0023001F6O0022002200234O00200022000200062O002000B100013O0004173O00B100012O000700210002001F001024002000250021000405001C00A8000100120C001C00073O00120C001D00113O00120C001E00073O000406001C00C7000100120C002000014O0009002100213O002620002000B8000100010004173O00B8000100200B00220012001A0012030024002E6O0025001F6O0024002400254O0022002400024O002100223O00062O002100C600013O0004173O00C600012O000700220008001F0010240021002500220004173O00C600010004173O00B80001000405001C00B6000100120C001300073O002620001300D9000100120004173O00D90001000622001400CD00013O0004173O00CD000100102400140025000F00200B001C0012001A00120C001E002F4O0013001C001E00022O000F0015001C3O000622001500D400013O0004173O00D4000100102400150025001000200B001C0012001A00120C001E00304O0013001C001E00022O000F0016001C3O00120C001300023O0026200013001E2O0100110004173O001E2O0100120C001C00073O00120C001D00063O00120C001E00073O000406001C00EF000100120C002000014O0009002100213O002620002000E1000100010004173O00E1000100200B00220012001A001203002400316O0025001F6O0024002400254O0022002400024O002100223O00062O002100EE00013O0004173O00EE00010010240021002500030004173O00EE00010004173O00E10001000405001C00DF000100120C001C00073O00120C001D00123O00120C001E00073O000406001C00042O0100120C002000014O0009002100213O002620002000F5000100010004173O00F5000100200B00220012001A001203002400326O0025001F6O0024002400254O0022002400024O002100223O00062O002100032O013O0004173O00032O012O000700220004001F0010240021002500220004173O00032O010004173O00F50001000405001C00F3000100120C001C00073O00120C001D00283O00120C001E00073O000406001C00192O0100120C002000014O0009002100213O0026200020000A2O0100010004173O000A2O0100200B00220012001A001203002400336O0025001F6O0024002400254O0022002400024O002100223O00062O002100182O013O0004173O00182O012O000700220001001F0010240021002500220004173O00182O010004173O000A2O01000405001C00082O0100200B001C0012001A00120C001E00344O0013001C001E00022O000F0014001C3O00120C001300123O0026200013002F2O0100020004173O002F2O01000622001600232O013O0004173O00232O0100102400160025000E00200B001C0012001A00120C001E00354O0013001C001E00022O000F0017001C3O0006220017002A2O013O0004173O002A2O0100102400170025000A00200B001C0012001A00120C001E00364O0013001C001E00022O000F0018001C3O00120C001300063O000E1E000700852O0100130004173O00852O0100120C001C00073O00120C001D00123O00120C001E00073O000406001C00462O0100120C002000014O0009002100213O002620002000372O0100010004173O00372O0100200B00220012001A001203002400376O0025001F6O0024002400254O0022002400024O002100223O00062O002100452O013O0004173O00452O012O000700220007001F0010240021002500220004173O00452O010004173O00372O01000405001C00352O0100120C001C00073O00120C001D00023O00120C001E00073O000406001C005B2O0100120C002000014O0009002100213O0026200020004C2O0100010004173O004C2O0100200B00220012001A001203002400386O0025001F6O0024002400254O0022002400024O002100223O00062O0021005A2O013O0004173O005A2O012O000700220005001F0010240021002500220004173O005A2O010004173O004C2O01000405001C004A2O0100120C001C00073O00120C001D00123O00120C001E00073O000406001C00702O0100120C002000014O0009002100213O002620002000612O0100010004173O00612O0100200B00220012001A001203002400396O0025001F6O0024002400254O0022002400024O002100223O00062O0021006F2O013O0004173O006F2O012O000700220009001F0010240021002500220004173O006F2O010004173O00612O01000405001C005F2O0100120C001C00073O00120C001D00063O00120C001E00073O000406001C00842O0100120C002000014O0009002100213O002620002000762O0100010004173O00762O0100200B00220012001A0012030024003A6O0025001F6O0024002400254O0022002400024O002100223O00062O002100832O013O0004173O00832O010010240021002500030004173O00832O010004173O00762O01000405001C00742O0100120C001300113O002620001300480001001C0004173O00480001000622001A008A2O013O0004173O008A2O01001024001A0025000D00200B001C0012001A00120C001E003B4O0013001C001E00022O000F001B001C3O000622001B00B62O013O0004173O00B62O01001024001B002500110004173O00B62O010004173O004800010004173O00B62O010012020013003C3O00120C0014003D6O0013000200010004173O00B62O010026203O0002000100010004173O000200012O001A0013000A3O00121B0014003E3O00122O0015003F3O00122O001600403O00122O001700413O00122O001800423O00122O001900433O00122O001A00443O00122O001B00453O00122O001C00463O00122O001D00474O00080013000A00012O000F000100134O0018001300093O00122O001400483O00122O001500493O00122O0016004A3O00122O0017004B3O00122O0018004C3O00122O0019004D3O00122O001A004E3O00122O001B004F3O00122O001C00484O00080013000900012O000F000200133O00120C000300503O00120C3O00073O0004173O000200012O00253O00017O00", GetFEnv(), ...);