while task.wait() do
for i,v in next, game.Players:GetPlayers() do
pcall(function()
for a,b in next, workspace[v.Name]:GetDescendants() do
if b.IsA(b,"Tool") then
b:FindFirstChildOfClass("RemoteFunction"):InvokeServer(v.Character)
b.Hit:FireServer(v.Character) -- for bat
end
end
end)
end
end