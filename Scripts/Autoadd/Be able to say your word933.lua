--Made By: Shag420#6729

while wait() do
for i,v in next, game:GetService("Players").LocalPlayer.PlayerGui:GetChildren() do
if v.Name == 'LocalScript' then
v:Remove()
end
end
end