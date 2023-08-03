game:GetService("Players").LocalPlayer.Backpack.RocketLauncher.LauncherLocalScript:Destroy()

game:GetService("Players")["r_ryp"].Backpack.RocketLauncher.Activated:Connect(function()
    local args = {
    [1] = game.Players.LocalPlayer:GetMouse().Hit.p
}

game:GetService("Players").LocalPlayer.Character.RocketLauncher.Event:FireServer(unpack(args))
end)