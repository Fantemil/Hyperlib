local args = {
    [1] = "SetMoveset",
    [2] = "Jun"
}

game:GetService("ReplicatedStorage").Remotes.Comunicator.Set:FireServer(unpack(args)) 
