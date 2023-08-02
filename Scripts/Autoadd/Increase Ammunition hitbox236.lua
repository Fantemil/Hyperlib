while wait(5) do
for i, stuff in pairs(game:GetService("Workspace").Vehicles:GetDescendants()) do
if stuff.Name == 'Ammunition1' or stuff.Name == 'Ammunition2' or stuff.Name == 'Ammunition3' or stuff.Name == 'Ammunition4' or stuff.Name == 'Ammunition5' then
stuff. Size = Vector3.new(5, 5, 5)
stuff. Transparency = 0.9
stuff.CanCollide = false
end
end
end