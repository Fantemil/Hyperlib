local Kick
Kick = hookmetamethod(game.Players.LocalPlayer, "__namecall", function(Self, ...)
if getnamecallmethod() == "Kick" then
return
end
return Kick(Self, ...)
end)