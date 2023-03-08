function nearestChests()
local dist = math.huge
local dekat = nil
for i,v in pairs(game:GetService("Workspace").Debree:GetDescendants()) do
if v:FindFirstChild("Drops") then
if v.Name == "Loot_Chest" then
for i,v1 in pairs(v:GetDescendants()) do
if v1.Name == "Root" then
local mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1.Position).magnitude
if mag < dist then
dist = mag
dekat = v1.Parent
end
end
end
end
end
end
return dekat
end

spawn(function()
while task.wait() do
if nearestChests() ~= nil then
for i,v in pairs(nearestChests().Drops:GetChildren()) do
if not table.find(invTable, v.Name) then
nearestChests().Add_To_Inventory:InvokeServer(v.Name)
end
end
end
end
end)