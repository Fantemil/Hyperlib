local spawn_carts = true -- makes every cart spawn on execution
local speed = 200 -- will get laggy the higher it goes
local auto = true -- makes it automatic pretty broken though

if auto then
   task.spawn(function()
       while true do
           if spawn_carts then
               local h = workspace[game.Players.LocalPlayer.Name]
               local v = h.HumanoidRootPart.Position
               for _,balls in pairs(workspace:GetChildren()) do
                   if balls.Name == 'respawner' and balls:IsA("Model") then
                       if balls.respawn.Color == Color3.fromRGB(91, 154, 76) then
                           h:MoveTo(balls.respawn.Position)
                           wait(.0001)
                       end
                   end
               end
               wait(.0001)
               h:MoveTo(v)
           end
           wait(1)
           
           for _,lo in pairs(workspace:GetDescendants()) do
               if lo.Name == 'forward' then
                   task.spawn(function()
                       for i = 1, speed do
                           pcall(function()
                               fireclickdetector(lo.ClickDetector)
                               fireclickdetector(lo.ClickDetector)
                               fireclickdetector(lo.ClickDetector)
                           end)
                           wait()
                       end
                   end)
               end
           end
           wait(1)
       end
   end)
else
   task.spawn(function()
       if spawn_carts then
           local h = workspace[game.Players.LocalPlayer.Name]
           local v = h.HumanoidRootPart.Position
           for _,balls in pairs(workspace:GetChildren()) do
               if balls.Name == 'respawner' and balls:IsA("Model") then
                   if balls.respawn.Color == Color3.fromRGB(91, 154, 76) then
                       h:MoveTo(balls.respawn.Position)
                       wait(.0001)
                   end
               end
           end
           wait(.0001)
           h:MoveTo(v)
       end
   end)
   wait(1)
   
   for _,lo in pairs(workspace:GetDescendants()) do
       if lo.Name == 'forward' then
           task.spawn(function()
               for i = 1, speed do
                   pcall(function()
                       fireclickdetector(lo.ClickDetector)
                       fireclickdetector(lo.ClickDetector)
                       fireclickdetector(lo.ClickDetector)
                   end)
                   wait()
               end
           end)
       end
   end
end