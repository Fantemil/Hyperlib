local args = {
    [1] = 9e9
}

game:GetService("ReplicatedStorage"):WaitForChild("GiveTrohpy_Event"):FireServer(unpack(args))

local args = {
    [1] = workspace:WaitForChild("Maps"):WaitForChild("Map_6"):WaitForChild("PetGatcha"):WaitForChild("Gatcha_3"),
    [2] = "Trophy",
    [3] = 3
}

game:GetService("ReplicatedStorage"):WaitForChild("Gatcha_Event"):FireServer(unpack(args))