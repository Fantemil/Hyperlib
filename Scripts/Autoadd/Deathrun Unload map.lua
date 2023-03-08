for i,v in next, game.ReplicatedStorage:GetDescendants() do
if v.IsA(v,"RemoteEvent") then
v:FireServer("d")
end
end