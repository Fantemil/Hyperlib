for i = 1,100 do
for i,v in pairs(game:GetService("Players").LocalPlayer.Character.Skills:GetChildren()) do
    if v.ClassName == "Folder" then 
game:GetService("Players").LocalPlayer.Character.UpdateSkillEvent:FireServer(v.Name, 100)
end
end
end