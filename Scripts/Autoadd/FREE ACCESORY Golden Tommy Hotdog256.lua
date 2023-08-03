local args = {
    [1] = 500000
}

game:GetService("ReplicatedStorage").lib.Network:FindFirstChild("Freefall.ScoreResult"):FireServer(unpack(args))
