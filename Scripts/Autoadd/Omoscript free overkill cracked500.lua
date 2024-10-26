
for i, v in pairs (game.ReplicatedStorage._NETWORK:GetChildren()) do if v.ClassName == "RemoteEvent" then
v:FireServer("OVERKILL")
end
end
