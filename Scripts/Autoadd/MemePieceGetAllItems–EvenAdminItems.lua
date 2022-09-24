for i,v in pairs(game.ReplicatedStorage.Tools:GetChildren()) do
if v:IsA("RemoteEvent") then
v:FireServer()
end
end