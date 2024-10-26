local args = {
    [1] = "Value"
}

game:GetService("ReplicatedStorage").Services.DailyService.RF.GetReward:InvokeServer(unpack(args))
