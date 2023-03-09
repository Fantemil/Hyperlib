local args = {
    [1] = "Character",
    [2] = "FallDamageServer",
    [3] = 0/0
}

game:GetService("ReplicatedStorage").Remotes.Async:FireServer(unpack(args))