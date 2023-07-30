game:GetService("RunService").Heartbeat:Connect(function()
    game.ReplicatedStorage.Knit.Services.TycoonService.RF.PayIncome:InvokeServer(game.Players.LocalPlayer)
end)