local OwnUser = game.Players.LocalPlayer.Name

local args = {
    [1] = "buysomething",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = "Bandage",
    [4] = game:GetService("ReplicatedStorage").Player_Data[OwnUser].Spins,
    [5] = game:GetService("ReplicatedStorage").Player_Data[OwnUser].Inventory,
    [6] = 1000000
}

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))