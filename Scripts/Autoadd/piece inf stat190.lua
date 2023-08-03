local jaff = {
    [1] = game:GetService("Players").LocalPlayer.PlayerData.StaminaLevel,
    [2] = "-9e9"
}

game:GetService("Players").LocalPlayer.PlayerGui.GameGui.Stats.Stats.SpendPoints:FireServer(unpack(jaff))