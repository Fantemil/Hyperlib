--// Script \\--
while task.wait() do
for i=2,#game.Players:GetPlayers() do
pcall(function()
v=game.Players:GetPlayers()[i]
game.Players.LocalPlayer.Character.Killstreak:Activate()
firetouchinterest(game.Players.LocalPlayer.Character.Killstreak.Hitbox,v.Character.HumanoidRootPart,0)
firetouchinterest(game.Players.LocalPlayer.Character.Killstreak.Hitbox,v.Character.HumanoidRootPart,1)
task.wait(.05)
end)
end
end