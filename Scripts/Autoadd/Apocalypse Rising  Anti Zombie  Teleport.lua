_G.anti_zombie = true
while _G.anti_zombie do
   for _, obj in next, workspace.Zombies.Mobs:GetChildren() do
       if isnetworkowner(obj.HumanoidRootPart) then
           obj.HumanoidRootPart.CFrame = CFrame.new(0,0,0)
       end
   end
  task.wait()
end