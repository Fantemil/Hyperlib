local args = {
    [1] = "Random",
    [2] = "D E A T H",
    [3] = 1666,
    [4] = game.Players.LocalPlayer
}

game:GetService("ReplicatedStorage").EventsFolder.GenerateAttack:FireServer(unpack(args))
