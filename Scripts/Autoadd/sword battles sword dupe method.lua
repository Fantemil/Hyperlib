local args = {
    [1] = "enter",
    [2] = "(REPLACE WITH SWORD NAME)"
}

game:GetService("Players").LocalPlayer.PlayerGui.Selection.Event:FireServer(unpack(args))
