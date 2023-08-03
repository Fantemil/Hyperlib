local args = {
    [1] = -999111111111111,
    [2] = "Crowns",
    [3] = "NormalWhite"
}

game:GetService("ReplicatedStorage").ItemBought:FireServer(unpack(args))
