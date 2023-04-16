local args = {
    [1] = 1500 -- value of the money you want
}

game:GetService("ReplicatedStorage"):WaitForChild("money"):FireServer(unpack(args))