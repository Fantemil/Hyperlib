function getplrsname()
for i,v in pairs(game:GetChildren()) do
if v.ClassName == "Players" then
return v.Name
end
end
end
local players = getplrsname()
local plr = game[players].LocalPlayer
coroutine.resume(coroutine.create(function()
while  wait(1) do
coroutine.resume(coroutine.create(function()
for _,v in pairs(game[players]:GetPlayers()) do
if v.Name ~= plr.Name and v.Character then
v.Character.RightUpperLeg.CanCollide = false
v.Character.RightUpperLeg.Transparency = 10
v.Character.RightUpperLeg.Size = Vector3.new(13,13,13)

v.Character.LeftUpperLeg.CanCollide = false
v.Character.LeftUpperLeg.Transparency = 10
v.Character.LeftUpperLeg.Size = Vector3.new(13,13,13)

v.Character.HeadHB.CanCollide = false
v.Character.HeadHB.Transparency = 10
v.Character.HeadHB.Size = Vector3.new(13,13,13)

v.Character.HumanoidRootPart.CanCollide = false
v.Character.HumanoidRootPart.Transparency = 10
v.Character.HumanoidRootPart.Size = Vector3.new(13,13,13)

end
end
end))
end
end))