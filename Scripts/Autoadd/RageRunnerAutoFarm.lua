game:GetService"RunService".RenderStepped:Connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Maps.End.Light.Position)
end)