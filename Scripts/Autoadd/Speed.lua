local args = {
    [1] = workspace.SpawnedCarts:FindFirstChild("YOURUSERNAME's_Cart"),
    [2] = 450 --Change this to your speed
}

game:GetService("ReplicatedStorage").Events.UpdateSpeed:FireServer(unpack(args))
