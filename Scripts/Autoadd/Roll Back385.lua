local args = {
    [1] = "Settings",
    [2] = "Trigger",
    [3] = "\255" -- Put "Music" to stop rollback
}

game:GetService("ReplicatedStorage"):WaitForChild("Bridge"):FireServer(unpack(args))