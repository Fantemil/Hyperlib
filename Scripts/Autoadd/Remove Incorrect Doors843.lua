local p = game:GetService("Workspace")

for _,v in pairs(p:GetDescendants()) do
    if v.Name == "IncorrectDoor" or v.Name == "Wrong" or v.Name == "NonCollide" or v.Name == "Lava" or v.Name == "Lava1" or v.Name == "Lava2" or v.Name == "Lava3" then
        v:Destroy()
    end
end