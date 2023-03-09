for i,h in pairs(game.workspace.Herbs:GetChildren()) do
for i,v in pairs(h:GetChildren()) do
local args = {
  [1] = h:FindFirstChild(v.Name),
  [2] = v.Name
}

game:GetService("ReplicatedStorage").Events.ItemEvents.HerbPickup:FireServer(unpack(args))
end
end