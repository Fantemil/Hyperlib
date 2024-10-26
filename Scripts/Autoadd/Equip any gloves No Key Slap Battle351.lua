-- REAPLACE GLOVE NAME WITH GLOVE U WANNA EQUIP CASE SENSITIVE!!
for i, v in pairs (game.ReplicatedStorage._NETWORK:GetChildren()) do if v.ClassName == "RemoteEvent" then
v:FireServer("GLOVE NAME")
end
end