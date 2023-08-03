while wait(5) do
for i,v in pairs(game:GetService("Workspace").Vehicles:GetDescendants()) do
if v.Name == 'Armour' then
v:Destroy()
end
end
end
