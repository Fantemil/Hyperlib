local plr = game:GetService("Players").LocalPlayer

getgenv().Anti = true -- Re-Execute if you change it

local Anti
Anti = hookmetamethod(game, "__namecall", function(self, ...)
        if self == plr and getnamecallmethod():lower() == "kick" and getgenv().Anti then
            return warn("[ANTI-KICK] Client Tried To Call Kick Function On LocalPlayer")
        end
        return Anti(self, ...)
    end)
