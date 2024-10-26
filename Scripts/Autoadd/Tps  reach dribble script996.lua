game.Players.LocalPlayer.PlayerGui.Start.TouchControlFrame.LayoutPlayer.DribbleButton.MouseButton1Click:Connect(function()


local args = {
    [1] = workspace.TPSSystem.TPS
}

workspace.FE.Scorer.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = workspace.TPSSystem.TPS,
    [2] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Right Leg")
}

workspace.FE.Dribble.Dribble:FireServer(unpack(args))

end)