spawn(function()
for i ,v in pairs(game:GetService("Workspace").Eggs:GetDescendants()) do
   if v.Name == "TouchInterest" and v.Parent then
       firetouchinterest(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
       wait()
end
end
end)

spawn(function()
for i ,v in pairs(game:GetService("Workspace").Trophies:GetDescendants()) do
   if v.Name == "TouchInterest" and v.Parent then
       firetouchinterest(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
       wait()
end
end
end)