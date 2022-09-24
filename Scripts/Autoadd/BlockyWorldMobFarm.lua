while wait() do
for i,v in pairs(workspace.MobArea.Mobs:GetDescendants()) do
if v:IsA("Model") then
game:GetService("ReplicatedStorage").Remotes.Events.HitMob:FireServer(v,3)
end
end