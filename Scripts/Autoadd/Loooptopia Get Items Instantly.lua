for i=1,100 do
for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
if v:IsA("RemoteEvent") then
v:FireServer()
end
end
end