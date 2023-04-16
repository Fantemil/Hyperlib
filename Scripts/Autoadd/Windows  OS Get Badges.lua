for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
if v:IsA("RemoteEvent") then
v:FireServer()
end
end
--simple script to get every badge ð