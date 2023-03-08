for i,v in pairs(Game.Players:GetChildren()) do
if v.Name ~= "PlaceUserNameHere" then
Game:GetService("TeleportService"):Teleport(7633631511, v.Character)
end
end