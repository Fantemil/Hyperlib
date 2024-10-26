local args = {
    [1] = 9999999
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GiveCash"):FireServer(unpack(args))
