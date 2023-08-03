--Made By: Shag420#6729

for i,v in next, game.Workspace:GetDescendants() do
if v.Name == 'new_food' and v:IsA("Part") then
task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
end
end