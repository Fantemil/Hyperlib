
local args = {
    [1] = 99999999999999999, -- change value here
    [2] = 4123
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GetReward"):FireServer(unpack(args))
