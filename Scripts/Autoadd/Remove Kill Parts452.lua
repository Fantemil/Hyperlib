local killparts = game.workspace.tower:GetDescendants()

for i,v in pairs (killparts) do 
   if v:IsA("BoolValue") or v:IsA("StringValue") then 
       v.Parent:Destroy()
   end
   if v:IsA("ManualWeld") then
       if v.Name == "kills" then
   v.Parent:Destroy()
       end
   end
   if v:IsA("Part") then
   v.Anchored = true
   end
end