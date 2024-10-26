--inf spins
local args = {
    [1] = "Spins",
    [2] = 9e9
}

game:GetService("ReplicatedStorage").Remotes.AddWheelSpinValue:FireServer(unpack(args))

--Inf Power
local args = {
    [1] = "Power",
    [2] = 9e20
}

game:GetService("ReplicatedStorage").Remotes.ClaimReward:FireServer(unpack(args))
