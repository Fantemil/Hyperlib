local args = {
    [1] = game.Players.LocalPlayer.Character.Humanoid,
    [2] = nil,
    [3] = -math.huge,
    [4] = 0.05,
    [5] = nil --[[Vector3]],
    [6] = "rbxassetid://241837157",
    [7] = 0.075,
    [8] = nil --[[Color3]],
    [9] = "rbxassetid://260430079",
    [10] = 1.1,
    [11] = 0.2
}

game:GetService("ReplicatedStorage").Damage:FireServer(unpack(args))
