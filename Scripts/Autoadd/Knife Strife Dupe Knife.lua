local args = {
    [1] = "Teleport"
}

game:GetService("Players").LocalPlayer.Character.clientMain.Remote:FireServer(unpack(args))