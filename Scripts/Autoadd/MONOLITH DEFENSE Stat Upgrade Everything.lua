for i,h in pairs(game.Players.LocalPlayer.PlayerGui.TechTrees.Trees:GetChildren()) do
for i,v in pairs(h:GetChildren()) do
local args = {
   [1] = h:FindFirstChild(v.Name),
   [2] = v.Name
}

game:GetService("ReplicatedStorage").UnlockNode:FireServer(unpack(args))
end
end