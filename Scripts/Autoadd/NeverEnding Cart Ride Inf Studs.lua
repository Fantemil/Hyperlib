local args = {
    [1] = 10000000000
}

game:GetService("ReplicatedStorage").distanceToServer:FireServer(unpack(args))