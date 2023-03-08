local player = game.Players.LocalPlayer
while task.wait() do
for i,v in pairs(game.Workspace.Thrown:GetChildren()) do
if v.Name == "Candy" and v:IsA("BasePart") then
player.Character.HumanoidRootPart.CFrame = v.CFrame
end
end
end