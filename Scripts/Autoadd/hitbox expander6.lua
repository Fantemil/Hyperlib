_G.HeadSize = 20 --adjust this if you want the hitbox to be bigger or smaller (20 recommended)
_G.Disabled = true
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.8 --transparency, lower = more visible, higher = less visible and more transparent
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Forest Green") --you can make this any color if you want
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)