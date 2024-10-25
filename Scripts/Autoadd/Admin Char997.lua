local args = {
    [1] = "SetMoveset",
    [2] = "Kokushibo"
}

game:GetService("ReplicatedStorage").Remotes.Comunicator.Set:FireServer(unpack(args))