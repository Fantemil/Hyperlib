local args = {
    [1] = "Name"
}

game:GetService("ReplicatedStorage"):WaitForChild("equiprolls"):FireServer(unpack(args))