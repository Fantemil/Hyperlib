local args = {
    [1] = {
        ["Valet"] = game:GetService("Players").LocalPlayer.Status.Currencies.Tokens,
        ["MaxCount"] = 100000,
        ["BoxName"] = "BrawlBox",
        ["Button"] = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ShopFrame.BoxesFrame.BrawlBox,
        ["DropChances"] = {
            [1] = "TD",
            [2] = "TD",
            [3] = "Gems",
            [4] = "Gold",
            [5] = "PowerPoints",
            [6] = "PowerPoints",
            [7] = "PowerPoints"
        },
        ["MinCount"] = 1,
        ["Price"] = 0
    }
}

game:GetService("ReplicatedStorage").RemoteEvents.BoxLossFunction:InvokeServer(unpack(args))