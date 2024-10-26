local args = {
    [1] = -9e0,
    [2] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoveMoney"):InvokeServer(unpack(args))
