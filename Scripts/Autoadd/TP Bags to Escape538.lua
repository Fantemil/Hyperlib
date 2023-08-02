
for i,v in pairs(game:GetService("Workspace").Bags:GetDescendants()) do
if v.Name == 'MoneyBag' then
v.CFrame = game:GetService("Workspace").BagSecuredArea.FloorPart.CFrame
end
end
