for i,v in pairs(game.Players:GetPlayers()) do
workspace.Events.Character.Abilities:FindFirstChild("DNA Tester").Use:FireServer(workspace[v.Name])
end