 local args = {
   [1] = -9999999
}

game:GetService("Players").LocalPlayer.PlayerGui.StatsGui.Background.Amount.RemoteEvent:FireServer(unpack(args))