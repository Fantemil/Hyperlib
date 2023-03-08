while true and task.wait() do
for i,v in pairs(game:GetService("Workspace").Stages:GetDescendants()) do
   if v.Name == 'TouchInterest' then
       v.Parent.Transparency = 1
       end
   end
end

-- edited by assassinator - idk who made it