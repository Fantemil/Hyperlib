while task.wait() do
    game:GetService("ReplicatedStorage").Remote.Event.Game:FindFirstChild("[C-S]PlayerPickCoin"):FireServer()
end