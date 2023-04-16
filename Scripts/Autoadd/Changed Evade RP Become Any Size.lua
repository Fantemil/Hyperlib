local args = {
    [1] = 2
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):WaitForChild("UpdateSize"):FireServer(unpack(args))