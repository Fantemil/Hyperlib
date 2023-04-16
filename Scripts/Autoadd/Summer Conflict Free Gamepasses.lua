for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
if v.Name == "GP Door" then
v:Destroy()
end
end