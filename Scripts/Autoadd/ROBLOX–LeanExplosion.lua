for i,v in next, workspace:GetDescendants() do
       if v:IsA"Part" or v:IsA"UnionOperation" or v:IsA"MeshPart" then
           v.Color = Color3.fromRGB(148,0,211)
       end
   end
   for i,v in next, workspace:GetDescendants() do
       if v.Name == "Clothing" then
           v.Color3 = Color3.fromRGB(148,0,211)
       end
   end