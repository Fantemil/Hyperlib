--Made By: Shag420#6729

for i,v in next, game:GetService("Players").LocalPlayer.PlayerGui.Main:GetDescendants() do
if v.Name == 'RemoteEvent1' then
v:FireServer()
end
end