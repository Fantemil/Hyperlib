for i,v in pairs(game.Players.LocalPlayer.PlayerScripts:GetChildren()) do
if string.find(v.Name,"Il") or string.find(v.Name,"lI") or string.find(v.Name,"II") or string.find(v.Name,"ll") then
v:Destroy();
end
end