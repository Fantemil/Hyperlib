-- Must have at least 168 Money

local args = {
    [1] = 2930,
    [2] = -math.huge
}

game:GetService("ReplicatedStorage").ServerMsg.BuyShopGoods:InvokeServer(unpack(args))