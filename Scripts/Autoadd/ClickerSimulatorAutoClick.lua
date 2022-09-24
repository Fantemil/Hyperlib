for i,v in pairs(game.Players.LocalPlayer.Boosts:GetDescendants()) do
   if v.Name == "isActive" then
       v.Value = true
   end
end