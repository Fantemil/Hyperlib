local args = {
    [1] = 6000000
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoveStars"):InvokeServer(unpack(args))