local player = game.Players.LocalPlayer.Character.Head


for i,v in pairs(game.workspace:GetDescendants()) do
if v:IsA("Part") and v.Name == "GunGiver" then
firetouchinterest(player,v,0)
end
end