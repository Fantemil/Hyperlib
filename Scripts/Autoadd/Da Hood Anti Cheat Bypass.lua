-- want more scripts like this? join our discord! https://discord.gg/CkSYPCYxtM

local a = game.ReplicatedStorage.MainEvent
local b = {"CHECKER_1", "TeleportDetect", "OneMoreTime"}
local c
c =
    hookmetamethod(
    game,
    "__namecall",
    function(...)
        local d = {...}
        local self = d[1]
        local e = getnamecallmethod()
        local f = getcallingscript()
        if e == "FireServer" and self == a and table.find(b, d[2]) then
            return
        end
        if not checkcaller() and getfenv(2).crash then
            hookfunction(
                getfenv(2).crash,
                function()
                end
            )
        end
        return c(...)
    end
)