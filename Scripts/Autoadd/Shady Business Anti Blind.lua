game.Players.LocalPlayer.CharacterAdded:Connect(function()
game:GetService("Players").LocalPlayer.PlayerGui.Client.Blind:Destroy()
end)
if(game:GetService("Players").LocalPlayer.PlayerGui.Client:FindFirstChild("Blind")) then
game:GetService("Players").LocalPlayer.PlayerGui.Client.Blind:Destroy()
end