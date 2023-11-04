local args = {
    [1] = -100000000000,
    [2] = 0
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Tycoon"):WaitForChild("Convert"):FireServer(unpack(args))
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Tycoon"):WaitForChild("Rebirth"):FireServer()