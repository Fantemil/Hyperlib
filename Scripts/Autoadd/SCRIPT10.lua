local args = {
    [1] = "changeClass",
    [2] = "minigun",
    [3] = "none"
}

game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("guiEvent"):FireServer(unpack(args))
