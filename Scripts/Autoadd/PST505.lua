-- Money Giver

local args = {
    [1] = 5000000000000000
}

game:GetService("ReplicatedStorage").GetCoin:FireServer(unpack(args))

-- Best Glove

local args = {
    [1] = 50000000
}

game:GetService("ReplicatedStorage").RemoteEvents.BuyItemCash:InvokeServer(unpack(args))
