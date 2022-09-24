for i,v in pairs(workspace:GetChildren()) do
if v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Mob") then
v.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
if v.Humanoid.Health>0 and v.Humanoid.Health<v.Humanoid.MaxHealth and v.PrimaryPart and isnetworkowner(v.PrimaryPart) then
end
end)
end
end
workspace.ChildAdded:Connect(function(v)
task.wait()
if v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Mob") then
v.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
if v.Humanoid.Health>0 and v.Humanoid.Health<v.Humanoid.MaxHealth and v.PrimaryPart and isnetworkowner(v.PrimaryPart)then
v.Humanoid.Health=0
end
end)
end
end)
while wait() do
game:GetService("ReplicatedStorage").Combat.M1:FireServer(3,false,Enum.HumanoidStateType.Running)
end