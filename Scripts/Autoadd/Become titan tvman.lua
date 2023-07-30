local args = {
    [1] = "NewForm",
    [2] = 8
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
