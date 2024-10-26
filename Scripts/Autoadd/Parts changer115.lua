local args = {
    [1] = 999999999999999999 -- Change here
}

game:GetService("ReplicatedStorage"):WaitForChild("dataTransfer"):FireServer(unpack(args))
