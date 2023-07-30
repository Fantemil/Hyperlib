local args = {
    [1] = "Volleyball",
    [2] = 800
}

game:GetService("ReplicatedStorage"):WaitForChild("ServerEvents"):WaitForChild("Reward"):FireServer(unpack(args))
