local args = {
    [1] = "Name "
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("getCrateReward"):FireServer(unpack(args))