local args = {
    [1] = "hack loaded",
    [2] = Color3.new(1.000000, 0.000000, 0.000000)
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("NotifsEvent"):FireServer(unpack(args))

local args = {
    [1] = "Cash",
    [2] = 9e99
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AddRewardEvent"):FireServer(unpack(args))

local args = {
    [1] = "Gems",
    [2] = 9e99
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AddRewardEvent"):FireServer(unpack(args))

local args = {
    [1] = "Spins",
    [2] = 9e99
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AddRewardEvent"):FireServer(unpack(args))

