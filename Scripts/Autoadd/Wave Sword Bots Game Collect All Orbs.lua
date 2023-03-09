getgenv().Orbs = true

spawn(function()
   local plr = game:GetService("Players").LocalPlayer.Character.Head
   local boss = game:GetService("Workspace").DeathOrb.BossOrbTemplate2
   local death = game:GetService("Workspace").DeathOrb.DeathOrb.base
   while wait() do
       if not getgenv().Orbs then break end
       for i,v in pairs(game:GetService("Workspace").Orbss:GetDescendants()) do
           if v.Name == "TouchInterest" and v.Parent then
               firetouchinterest(plr, v.Parent, 0)
               firetouchinterest(plr, boss, 0) -- remove if boss orb isnt being collected
               firetouchinterest(plr, death, 0) -- remove if death orb isnt being collected
           end
       end
   end
end)