game:GetService("RunService").RenderStepped:Connect(
   function()
   for i, v in pairs(game:GetService("Players"):GetChildren()) do
       if v.Name ~= game.Players.LocalPlayer.Name and not v.Character:FindFirstChildOfClass("ForceField") and v.Character.Humanoid.Health ~= 0 then
           local args = {
               [1] = game:GetService("Players").LocalPlayer.Backpack.AWM,
               [2] = {
                   ["p"] = nil --[[Vector3]],
                   ["pid"] = 1,
                   ["part"] = v.Character.Head,
                   ["d"] = 0.27019029855728,
                   ["maxDist"] = 0.027385782450438,
                   ["h"] = v.Character.Humanoid,
                   ["m"] = Enum.Material.Plastic,
                   ["sid"] = 250,
                   ["t"] = 0.0010933135312908,
                   ["n"] = nil --[[Vector3]]
               }
           }

           game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(unpack(args))
       end
   end
end)