local args = {
    [1] = "Character",
    [2] = "Jogo",
    [3] = "Select"
}

game:GetService("ReplicatedStorage"):WaitForChild("Attribute"):FireServer(unpack(args))