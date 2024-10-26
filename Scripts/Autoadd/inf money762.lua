local args = {
    [1] = 15e14,
    [2] = true
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GiveQuestCash"):FireServer(unpack(args))
