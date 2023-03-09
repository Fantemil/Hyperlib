_G.anti_zombie = true
while _G.anti_zombie do
   for _, obj in next, workspace.Zombies.Mobs:GetChildren() do
       if isnetworkowner(obj.HumanoidRootPart) then
           obj.HumanoidRootPart.Anchored = true
       end
   end
  task.wait()
end