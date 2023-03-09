local args = {
    [1] = "addCoin",
    [2] = 9999999
}

game:GetService("ReplicatedStorage").CoinRemote:FireServer(unpack(args))