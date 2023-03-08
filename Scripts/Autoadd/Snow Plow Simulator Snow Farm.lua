local Snow = game:GetService("Workspace").HitParts
while task.wait() do
for _,v in pairs(Snow:GetChildren()) do
if v.Name == "Snow" then
game:GetService("ReplicatedStorage").Events.HitPart:FireServer(v)
end
end
end