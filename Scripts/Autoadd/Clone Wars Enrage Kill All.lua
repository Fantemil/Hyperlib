local name = game.Players.LocalPlayer.Name
for i,v in pairs(game:GetDescendants()) do
if v:IsA("Humanoid") then
local args = {
   [1] = 999999999999999,
   [2] = v,
   [3] = "Aeth on v3rmillion"
}

game:GetService("ReplicatedStorage").AllPlayers[name].GunFEs.Damage:FireServer(unpack(args))
end
end