local watersped = 100 --  normal is 25
for i,v in pairs(workspace:GetDescendants()) do
if v:IsA("Part") and v.Name == "Sand" or v.Name == "Water" then
v.Velocity = Vector3.new(0,0,watersped)
end
end