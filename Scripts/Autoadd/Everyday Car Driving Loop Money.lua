game.RunService.Heartbeat:Connect(function()
    game:GetService("ReplicatedStorage").GetCash:FireServer()
end)