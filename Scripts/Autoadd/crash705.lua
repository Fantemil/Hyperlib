local args = {
    [1] = "Blocks",
    [2] = 1e9
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AddRewardEvent"):FireServer(unpack(args))
