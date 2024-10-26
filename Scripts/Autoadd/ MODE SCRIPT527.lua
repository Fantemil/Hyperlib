getgenv().GodMode = true
while getgenv().GodMode do
wait(0.1)
if game.Players.LocalPlayer.Character.Humanoid.Health <=100 then
game:GetService("Players").LocalPlayer.Character.FallDamageRagdoll.Damage:FireServer(-1*math.huge)
end
end