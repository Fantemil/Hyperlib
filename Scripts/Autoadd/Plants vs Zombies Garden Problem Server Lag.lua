while task.wait() do
for i,v in next, game.Players:GetPlayers() do
local args = {
    [1] = v
}

for a,b in next, game.ReplicatedStorage:GetDescendants() do
if b.Name == "RemoteT" and b.IsA(b,"RemoteEvent") then
b:FireServer(unpack(args))
end
end
end
end