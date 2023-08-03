

local args = {
    [1] = "AwardCash",
    [2] = 999999999999999999999999999
}

game:GetService("ReplicatedStorage").NetworkEvent:FireServer(unpack(args))
