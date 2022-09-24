while true do
   wait(1)
   spawn(function()
for i,v in pairs(game:GetService("Workspace").Buildings:GetDescendants()) do
if v.Name == "Vent" or v.Name == "Pci" or v.Name == "Mesh" and v.Parent.Parent.Name == "CardPlace" then


 v:Destroy()
end
end
end)
end