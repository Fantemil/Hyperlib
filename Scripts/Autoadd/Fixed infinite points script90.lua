

local args = {
    [1] = -1000000000000000000, -- here the ammount dont delte the minus
    [2] = -10
}

game:GetService("ReplicatedStorage").GameValues.SendItem:FireServer(unpack(args))
