local args = {
    [1] = "Experience",
    [2] = 15000000
}

game:GetService("ReplicatedStorage").Events.RewardPlayer:FireServer(unpack(args))

local args = {
    [1] = "Coins",
    [2] = 99999999999
}

game:GetService("ReplicatedStorage").Events.RewardPlayer:FireServer(unpack(args))

local args = {
    [1] = "Tokens",
    [2] = 300000000
}

game:GetService("ReplicatedStorage").Events.RewardPlayer:FireServer(unpack(args))

game:GetService("ReplicatedStorage").Events.GetData:InvokeServer()
game:GetService("ReplicatedStorage").Events.GetData:InvokeServer()
game:GetService("ReplicatedStorage").Events.GetData:InvokeServer()
game:GetService("ReplicatedStorage").Events.GetData:InvokeServer()
game:GetService("ReplicatedStorage").Events.GetData:InvokeServer()
