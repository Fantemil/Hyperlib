for i, v in pairs(game.Workspace:GetDescendants()) do
   
   if v:IsA("Tool") then
       
       spawn(function()
       
           for i = 1, 50000 do
           
               game.ReplicatedStorage.SoundEffect:FireServer(v.Tip, "FN-FAL", "Fire", true, false)
           
               wait(0.1)
           
           end
   
       end)
   
   end
   
end