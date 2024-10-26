game:GetService("RunService").RenderStepped:Connect(function()
    game:GetService("ReplicatedStorage").Services.DailyService.RF.GetReward:InvokeServer()
end)