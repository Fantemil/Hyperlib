while wait(5) do
for i, crew in pairs(game:GetService("Workspace").Vehicles:GetDescendants()) do
if crew.Name == 'Driver' or crew.Name == 'Gunner' or crew.Name == 'Commander' then
crew.Size = Vector3.new(4, 8, 10)
end
end
end