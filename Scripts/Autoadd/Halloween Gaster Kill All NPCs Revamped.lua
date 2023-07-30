for i,d in pairs(game.Workspace:GetDescendants()) do
if d.ClassName == 'Humanoid' and not game.Players:GetPlayerFromCharacter(d.Parent) then
d.Health = 0
end
end