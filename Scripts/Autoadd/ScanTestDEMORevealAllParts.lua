for i,v in pairs(game.Workspace:GetDescendants()) do
if v:IsA("Part") then
   if v.Transparency == 1 then
       v.Transparency = 0
      else
       v.Transparency = 1
       end
   end
end