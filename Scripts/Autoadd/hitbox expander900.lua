--Head
while true do
wait()
for index,value in pairs(game.Workspace.NPCs.Monsters:GetDescendants()) do
if value:FindFirstChild("HumanoidRootPart") then
if value.Name == game.Players.LocalPlayer.Name then else
value.Head.Transparency = 0.5 -- HOW TRANSPARENT HEAD WILL BE
value.Head.Size = Vector3.new(5, 2.5, 3) -- dont change, if too big then monster dont move on client (not good)
end
end
end
end

--torso
while true do
wait()
for index,value in pairs(game.Workspace.NPCs.Monsters:GetDescendants()) do
if value:FindFirstChild("HumanoidRootPart") then
if value.Name == game.Players.LocalPlayer.Name then else
value.HumanoidRootPart.Transparency = 0.8 -- HOW TRANSPARENT TORSO WILL BE
value.HumanoidRootPart.Size = Vector3.new(11, 11, 11) -- dont change, if too big then monster dont move on client (not good)
end
end
end
end
