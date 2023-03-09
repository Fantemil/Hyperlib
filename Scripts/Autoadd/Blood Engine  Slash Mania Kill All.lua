for i,v in pairs(game.Players:GetPlayers()) do
   local ohInstance1 = v.Character.Humanoid
   local ohNumber2 = -math.huge
   
   v.Character.Client.Block.hp01:FireServer(ohInstance1, ohNumber2)
end