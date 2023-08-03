local args = {
    [1] = 100000000000,
    [2] = game:GetService("Players").LocalPlayer.leaderstats.Cash
}

game:GetService("ReplicatedStorage").SellIron:FireServer(unpack(args))
