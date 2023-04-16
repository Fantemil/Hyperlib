for i=1,600 do

   local v1 = 1
   local v2 = true
   local event = game:GetService("ReplicatedStorage")["Remote Events"]["Checkpoint Touched"]
   
   event:FireServer(v1, v2)    
end

game.Players.LocalPlayer.Character.Humanoid.Health = 0