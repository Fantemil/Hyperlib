
while wait(5) do
for i,v in pairs(game:GetService("Workspace").Vehicles:GetDescendants()) do
if v.Name == 'Armour' or v.Name == 'Armor' or v.Name == 'RHA' or v.Name == 'Internal Structural Steel' or v.Name == 'CHA'  then
v:Destroy()
end
end
end