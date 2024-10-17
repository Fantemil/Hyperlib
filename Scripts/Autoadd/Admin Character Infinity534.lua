local args = {
    [1] = "SetMoveset",
    [2] = "Gojo"
}

game:GetService("ReplicatedStorage").Remotes.Comunicator.Set:FireServer(unpack(args))