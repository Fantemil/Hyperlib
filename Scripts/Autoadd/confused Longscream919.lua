game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
 if key == "r" then
game:GetService("ReplicatedStorage").Characters:FindFirstChild("2099").Remotes.CellCounter:FireServer(game:GetService("Players").LocalPlayer)
 end
end)
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
 if key == "t" then
game:GetService("ReplicatedStorage").Characters.DoctorStrange.Remotes.TendrillSlam:FireServer(game:GetService("Players").LocalPlayer)
 end
end)
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
 if key == "z" then
game:GetService("ReplicatedStorage").Characters.Jeffrey.Remotes.Counter:FireServer(game:GetService("Players").LocalPlayer)
 end
end)