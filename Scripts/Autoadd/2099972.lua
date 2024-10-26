game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
 if key == "t" then
game:GetService("ReplicatedStorage").Characters:FindFirstChild("2099").Remotes.Backup:FireServer()
 end
end)