for i, v in pairs(workspace:GetDescendants()) do
   if v.Parent.Name == "Up" and v.ClassName == "ClickDetector" then
       spawn(function()
            while true do
                 wait()
                 if v then
                    fireclickdetector(v)
                else
                   break;
               end
           end
       end)
   elseif v.Parent.Name == "On" and v.ClassName == "ClickDetector" then
       if v.Parent.BrickColor ~= BrickColor.new("Dark green") then
           fireclickdetector(v)
       end
       v.Parent:GetPropertyChangedSignal("BrickColor"):Connect(function()
           if v.Parent.BrickColor ~= BrickColor.new("Dark green") then
               fireclickdetector(v)
           end
       end)
   end
end

workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Parent.Name == "Up" and descendant.ClassName == "ClickDetector" then
       spawn(function()
              while true do
              wait()
               if descendant then
                   fireclickdetector(descendant)
                else
                    break;
               end
           end
        end)
   elseif descendant.Parent.Name == "On" and descendant.ClassName == "ClickDetector" then
       if descendant.Parent.BrickColor ~= BrickColor.new("Dark green") then
           fireclickdetector(descendant)
       end
       descendant.Parent:GetPropertyChangedSignal("BrickColor"):Connect(function()
           if descendant.Parent.BrickColor ~= BrickColor.new("Dark green") then
               fireclickdetector(descendant)
           end
       end)
   end
end)