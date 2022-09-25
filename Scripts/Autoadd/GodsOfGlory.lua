 local args = {
    [1] = {
        ["Value"] = 9e9
    }
}

game:GetService("ReplicatedStorage").Remotes.GiveMana:FireServer(unpack(args))