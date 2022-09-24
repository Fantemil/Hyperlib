--ONE PUNCH
loadstring(game:HttpGet('https://raw.githubusercontent.com/yeerma/such/main/street%20sweeper%20damage%20mod.txt'))()

--HITBOXES
game:GetService('RunService').RenderStepped:connect(function()

for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(15,15,15)
v.Character.HumanoidRootPart.Transparency = 0.8
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end

end)