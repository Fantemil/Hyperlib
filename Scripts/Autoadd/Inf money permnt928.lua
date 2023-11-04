--// Made by ⚔Saint#6099
local A_Number = 500345445455454444444444444444444444400 --// This would be the cash you receive
local B_Number = 5099999999999999999999999999999999990 --// Idk wtf this shit is
local OldNamecall; OldNamecall = hookmetamethod(game, "__namecall", function(Self, ...) local Args = {...}; if tostring(Self) == "validate_skydive" then Args[1] = A_Number; Args[2] = B_Number; return Self.FireServer(Self, unpack(Args)) end; return OldNamecall(Self, ...) end)