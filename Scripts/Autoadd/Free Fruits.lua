local args = {
    [1] = 0
}

game:GetService("ReplicatedStorage").Remotes.CanBuy:FireServer(unpack(args))
