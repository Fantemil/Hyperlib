for i,v in pairs(game.Workspace:GetChildren()) do
game:GetService("ReplicatedStorage").Events.DestroyUI:FireServer(v)
end