local args = {
    [1] = game:GetService("Players"):WaitForChild("playerusehere") -- at playerusehere replace with the player user
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Trading"):WaitForChild("TradeAccepted"):FireServer(unpack(args))
