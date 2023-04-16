for i,v in pairs(game.Players.LocalPlayer.ItemOwned:GetDescendants()) do 
if v:IsA("BoolValue") then 
v.Value = true
end 
end