local args = {
    [1] = {
        ["Player"] = game:GetService("Players").LocalPlayer,
        ["Amount"] = 1,
        ["Which"] = "Add"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Rolls"):FireServer(unpack(args))