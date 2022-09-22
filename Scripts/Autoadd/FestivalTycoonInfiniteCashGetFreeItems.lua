local args = {
    [1] = 50000000 -- amount of money
}

game:GetService("ReplicatedStorage").RemoteObjects.DanceGameCash:FireServer(unpack(args))