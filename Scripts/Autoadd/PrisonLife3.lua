 for _,v in pairs(game.Players:GetPlayers()) do
   local humanoid = v.Character:FindFirstChildOfClass("Humanoid")
   if humanoid then
      game.ReplicatedStorage.GunRemotes.TakeDamage:FireServer(humanoid, math.huge, false)
       end
   end