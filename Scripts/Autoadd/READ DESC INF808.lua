while wait() do
local args = {
    [1] = "World1",
    [2] = 1
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Race"):WaitForChild("AwardRace"):FireServer(unpack(args))


local args = {
    [1] = "Treadmill1",
    [2] = "World1"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Training"):WaitForChild("Train"):FireServer(unpack(args))


end