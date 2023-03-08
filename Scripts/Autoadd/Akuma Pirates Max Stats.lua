local args = {
    [1] = game:GetService("Players").LocalPlayer.Data.Melee, -- Melee, Weapon, DevilFruit, Defense
    [2] = -500
}

game:GetService("ReplicatedStorage").Remotes.Stats:FireServer(unpack(args))