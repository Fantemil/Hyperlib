shared.killaura = true --change it false to stop if it's laggy for you
local localPlayer = game:GetService("Players").LocalPlayer
shared.mobs = game:GetService("Workspace").RENDER.ENTITIES:GetChildren()


game:GetService("Workspace").RENDER.ENTITIES.ChildAdded:Connect(function(instance)
   if not table.find(shared.mobs, instance) and instance:FindFirstChild("HumanoidRootPart") then
       table.insert(shared.mobs, instance)
   end
end)

game:GetService("Workspace").RENDER.ENTITIES.ChildRemoved:Connect(function(instance)
   if table.find(shared.mobs, instance) then
       for i,v in pairs(shared.mobs) do
           if v == instance then
               table.remove(shared.mobs, i)
           end
       end
   end
end)


game:GetService("Workspace").DROPS.ChildAdded:Connect(function(instance)
   if instance:IsA("Part") then
       instance.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
   end
end)


function getClosestTarget()
   local distance;
   local maxdistance = math.huge
   local target;
   for i,v in pairs (shared.mobs) do
       if v:FindFirstChild("HumanoidRootPart") and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
           distance =  (localPlayer.Character:FindFirstChild("HumanoidRootPart").Position -  v:FindFirstChild("HumanoidRootPart").Position).Magnitude
           if distance < maxdistance then
               maxdistance = distance
               target = v;
           end
       end
   end
   return target;
end






game:GetService("RunService").Stepped:Connect(function()
   if shared.killaura and getClosestTarget() then
       local enemy = getClosestTarget()
           local args = {
               [1] = "Enemy",
               [2] = enemy.Name
           }
           
           game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.1.0-rc.1").knit.Services.PetsService.__comm__.RE.SwordAttack:FireServer(unpack(args))
   end
end)