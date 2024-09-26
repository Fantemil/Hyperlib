local args = {
    [1] = "Value"
}

while true do
    -- Invoke the server function
    game:GetService("ReplicatedStorage").Services.DailyService.RF.GetReward:InvokeServer(unpack(args))
end