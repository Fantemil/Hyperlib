local args = {
    [1] = "change",
    [2] = "50000000"
}

game:GetService("ReplicatedStorage").UpdateCash:FireServer(unpack(args))