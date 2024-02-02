local ItemList = require(game:GetService("ReplicatedStorage").Systems.Items.ItemList)
local SpawnItem = game["ReplicatedStorage"]:FindFirstChild("Systems"):FindFirstChild("Admin"):FindFirstChild("SpawnItem")

for i, v in next, ItemList do
SpawnItem:FireServer(i)
end