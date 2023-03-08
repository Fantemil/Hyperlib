--This one will give bronze badge
local args = {
    [1] = 20,
    [2] = true
}

game:GetService("ReplicatedStorage").GameValues.StageChange:FireServer(unpack(args))