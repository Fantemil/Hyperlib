setsimulationradius(math.huge,math.huge)
for i,v in pairs(workspace:GetDescendants()) do
if v:IsA("Humanoid") and v.Parent:FindFirstChild("enemyStyle") then
v.Health = 0
end
end
workspace.DescendantAdded:Connect(function(d)
pcall(function()
repeat wait() until d.Parent:FindFirstChild("enemyStyle")
if d:IsA("Humanoid") then
d.Health=0
end
end)
end)