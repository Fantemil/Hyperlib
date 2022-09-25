local killaura = true
local player = game:GetService("Players").LocalPlayer
player:GetMouse().KeyDown:Connect(function(key)
if key == "r" then
killaura = not killaura
end
end)
while wait() do
if killaura then
for i,v in pairs(workspace.NPCS:GetChildren()) do
if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0
and (player.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 15 then
game.ReplicatedStorage.SKILL_EVENT:FireServer("NonePunch")
game.ReplicatedStorage.HITBOX_EVENT:FireServer("NonePunch",v.HumanoidRootPart.Position,v,true)
end
end
end
end