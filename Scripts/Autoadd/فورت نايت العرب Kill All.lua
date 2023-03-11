for i , player in pairs (game.Players:GetChildren()) do

   if (player.Name ~= game.Players.LocalPlayer.Name) then
     
      local args = {
           [1] = game:GetService("Players").LocalPlayer.Backpack.Sniper,
           [2] = {
               ["p"] = player.Character.Head.Position,
               ["pid"] = 1,
               ["part"] = player.Character.Head,
               ["d"] = 104.91844177246094,
               ["maxDist"] = 104.19622802734375,
               ["h"] = player.Character.Humanoid,
               ["m"] = Enum.Material.Plastic,
               ["sid"] = 1,
               ["t"] = 0.033940485041488104,
               ["n"] = player.Character.Head.Position
           }
       }
       
       game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(unpack(args))
       
   end

end