local args = {
    [1] = "SetMoveset",
    [2] = "El Primo"
}

game:GetService("ReplicatedStorage").Remotes.Comunicator.Set:FireServer(unpack(args))