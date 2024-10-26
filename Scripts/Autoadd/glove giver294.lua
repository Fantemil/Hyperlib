for l, j in pairs(game.workspace.Lobby.GloveStands:GetChildren()) do
for i, v in pairs (game.ReplicatedStorage._NETWORK:GetChildren()) do if v.ClassName == "RemoteEvent" then
v:FireServer(j.Name)
end
end
end