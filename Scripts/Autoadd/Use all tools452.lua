for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren())do
if v.ClassName == "Tool" then
v.Parent = game:GetService("Players").LocalPlayer.Character
end
end
for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren())do
if v.ClassName == "Tool" then
v:Activate()
end
end