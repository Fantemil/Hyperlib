game.workspace.slimes.ChildAdded:Connect(function(child) game:GetService("ReplicatedStorage").shared.remotes.Igiveup:FireServer(child, 999)
end)