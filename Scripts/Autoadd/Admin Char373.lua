local args = {
    [1] = "SetMoveset",
    [2] = "JK"
}

game:GetService("ReplicatedStorage").Remotes.Comunicator.Set:FireServer(unpack(args))