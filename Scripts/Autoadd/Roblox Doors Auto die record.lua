local humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")

humanoid.Died:Connect(function()
    game:GetService("ReplicatedStorage").EntityInfo.Lobby:FireServer()
end)

humanoid.Health = 0