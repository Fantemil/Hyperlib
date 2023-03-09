local args = {
    [1] = workspace.Tycoons.WhiteTycoon.Buttons.Dragon.Floor1.DragonSpot_1,
    [2] = "Giant Rainbow Dragon"
}

game:GetService("ReplicatedStorage").Remotes.SellDragon:FireServer(unpack(args))