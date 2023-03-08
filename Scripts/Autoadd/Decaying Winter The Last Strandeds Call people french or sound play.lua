 game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
 if key == "any button to bind it to here" then
local args = {
    [1] = {
        [1] = "weapons",
        [2] = "SMG"
    },
    [2] = "aughfrench",
    [3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
}

workspace.ServerStuff.playAudio:FireServer(unpack(args))
 end
end)