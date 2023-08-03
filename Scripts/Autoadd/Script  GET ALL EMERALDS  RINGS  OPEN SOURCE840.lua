GET ALL RINGS


ringsfarm = true
while ringsfarm do wait(5)
pcall(function()
for i,v in pairs(game:GetService("Workspace").Rings:GetDescendants()) do
if v:IsA("Part") and v.Name == "Ring" then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
end)
end





GET ALL EMERALDS





emeraldfarm = true
while emeraldfarm do wait()
pcall(function()
for i,v in pairs(game:GetService("Workspace").ChaosEmeralds:GetChildren()) do
if v:IsA("MeshPart")  then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
end)
end