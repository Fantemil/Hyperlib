while task.wait() do
local args = {
    [1] = "Soldato",
    [2] = true,
    [3] = false
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ChangeWalkingMafia"):FireServer(unpack(args))
end