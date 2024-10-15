local args = {
    [1] = "5"
}

while true do

game:GetService("ReplicatedStorage"):WaitForChild("RewardEvents"):WaitForChild("GiveReward"):FireServer(unpack(args))
task.wait()
end