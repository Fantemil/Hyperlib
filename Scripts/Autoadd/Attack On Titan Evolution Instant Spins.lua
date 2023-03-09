for i,v in pairs(game.Players.LocalPlayer.Gamepasses:GetChildren()) do
   if v:IsA('BoolValue') and v.Value == false then
       v.Value = true
   end
end