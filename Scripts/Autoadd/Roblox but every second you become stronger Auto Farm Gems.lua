while wait(1) do
for i,v in pairs(game:GetService("Workspace").Gems:GetChildren()) do
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
end
end