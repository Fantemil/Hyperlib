local args = {
   [1] = game:GetService("Players").LocalPlayer.GoldCoins,
   [2] = 9999
}

game:GetService("ReplicatedStorage").ChangeValue:FireServer(unpack(args))