local args = {
    [1] = "buy",
    [2] = {
        [1] = "Whale",
        [2] = -500000
    }
}

game:GetService("ReplicatedStorage").OnCouponBuyState:InvokeServer(unpack(args))
