for i,v in pairs(workspace:GetDescendants()) do
   if v:IsA('ClickDetector') and not v.Parent.Name:match('Purchase') then
       spawn(function()
           for i=1, 20 do
               fireclickdetector(v)
               task.wait(.01)
           end
       end)
   end
end