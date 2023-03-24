game:GetService("RunService").RenderStepped:Connect(function()
for i,v in next, game:GetService("Workspace").tower.finishes:GetChildren() do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
end
end)