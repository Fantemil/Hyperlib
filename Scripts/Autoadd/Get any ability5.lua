local args = {
    [1] = "Rika",
    [2] = "Ten Shadows",
    [3] = 1,
    [4] = 0.005
}

game:GetService("ReplicatedStorage"):WaitForChild("SetTechnique"):FireServer(unpack(args))