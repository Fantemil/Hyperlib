while wait () do
for i,v in pairs(game.Players:GetPlayers()) do
      if v.Name == game.Players.LocalPlayer.Name then
else

local args = {
   [1] = "HEAL_PLAYER",
   [2] = game:GetService("Players")[v.Name],
   [3] = -10000000000
}

game:GetService("ReplicatedStorage").NetworkEvents.RemoteFunction:InvokeServer(unpack(args))
end end end