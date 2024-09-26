local args = {
    [1] = "deposit",
    [2] = -899100
}

game:GetService("ReplicatedStorage"):WaitForChild("ATMRF"):InvokeServer(unpack(args))