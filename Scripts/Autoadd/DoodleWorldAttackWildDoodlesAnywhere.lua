-- Attack Wild Doodles Anywhere
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v.Name == "WildGrass" then
        game:GetService("Players").LocalPlayer.Event:FireServer("GUIDHERE", "RequestWild", v.Parent.Name, v.Name)
        break
    end
end