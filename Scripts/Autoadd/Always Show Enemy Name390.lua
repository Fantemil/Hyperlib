while wait(3) do
for i,tag in pairs(game:GetService("Workspace").Vehicles:GetDescendants()) do
if tag.Name == 'yom' then
tag.BillboardGui.AlwaysOnTop = true
tag.BillboardGui.Size = UDim2.new(40,0, 8,0)
end
end
end