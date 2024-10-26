for i = 1, 2500 do
local args = {
    [1] = "x2 Potion",
    [2] = 900000
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ClaimReward"):FireServer(unpack(args))
local args = {
    [1] = "Power",
    [2] = 6e10
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AddWheelSpinValue"):FireServer(unpack(args))
end