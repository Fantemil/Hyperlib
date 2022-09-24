for i = 1,9 do
    game:GetService('ReplicatedStorage').Knit.Services.RewardService.RF.GiveRewardInBank:InvokeServer(tostring(i))
end