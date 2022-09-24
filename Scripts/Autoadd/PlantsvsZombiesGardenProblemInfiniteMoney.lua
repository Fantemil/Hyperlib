local args = {
    [1] = "owned by peke (ripbozo)",
    [2] = -15525555255,
    [3] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Remote.PrizeMap.Consigues:FireServer(unpack(args))