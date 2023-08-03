--BROUGHT TO YOU BY RSCRIPTS.NET--

getgenv().killAll = true
weaponToUse = "AWM"

function kill(weapon)
  while wait() and killAll do
      pcall(function()
           --autoequip the weapon of your choice yikes
           local plr = game:service('Players')
           plr.LocalPlayer:findFirstChildOfClass('Backpack')[weapon].Parent = plr.LocalPlayer.Character
       end)
       pcall(function()
           for i,v in pairs(game:service('Players'):GetChildren()) do
               if v.Name ~= game.Players.LocalPlayer.Name then
                   local args = {
                       [1] = game:GetService("Players").LocalPlayer.Character[weapon],
                       [2] = {
                           ["p"] = Vector3.new(-467.2731628418, 1440.794921875, 617.81994628906),
                           ["pid"] = 1,
                           ["part"] = game:GetService("Players")[v.Name].Character.Head,
                           ["d"] = 69.598503112793,
                           ["maxDist"] = 69.598472595215,
                           ["h"] = game:GetService("Players")[v.Name].Character.Humanoid,
                           ["m"] = Enum.Material.Plastic,
                           ["sid"] = 1,
                           ["t"] = 0.21159138190384,
                           ["n"] = Vector3.new(0.69171553850174, 0.28560146689415, 0.6632958650589)
                       }
                   }

                   game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(unpack(args))
               end
           end
       end)
   end
end

kill(weaponToUse)