--// DISCLAIMER: Don't use math.huge, that'll get you banned
--// USAGE: Just jump off your building and once you land, you'll receive the amout of cash set below
--// Made by ⚔Saint#6099

local A_Number = 500000000 --// This would be the cash you receive
local B_Number = 500 --// Idk wtf this shit is

local OldNamecall

OldNamecall = hookmetamethod(game, "__namecall", function(Self, ...)
    local Args = {...}

    if tostring(Self) == "validate_skydive" then
        Args[1] = A_Number
        Args[2] = B_Number

        return Self.FireServer(Self, unpack(Args))
    end

    return OldNamecall(Self, ...)
end)