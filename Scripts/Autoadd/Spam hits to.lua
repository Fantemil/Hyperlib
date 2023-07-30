local args = {
    [1] = "Hit",
    [2] = workspace.Rake
}

game:GetService("Players").LocalPlayer.Character.Newspaper.RemoteEvent:FireServer(unpack(args))