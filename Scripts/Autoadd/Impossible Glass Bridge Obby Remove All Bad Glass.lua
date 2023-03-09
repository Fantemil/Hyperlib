while true and task.wait() do
for i,v in pairs(game:GetService("Workspace")["Glass Bridge"].GlassPane:GetDescendants()) do
   if v.Name == 'TouchInterest' then
       v.Parent.Transparency = 1
       end
   end
end