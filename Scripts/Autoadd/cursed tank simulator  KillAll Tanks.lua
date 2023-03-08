for i,v in pairs(game:GetService("Workspace").Vehicles:GetDescendants()) do
if string.find(v.Name, 'Ammunition') then
wait(.5)
local ohNumber1 = math.random(0,100000)
local ohTable2 = {
 [v] = -90
}
local ohTable3 = {
 [1] = v
}
local ohTable4 = {
 [1] = -90
}
local ohString6 = "APHE"

game:GetService("ReplicatedStorage").ReplicatorShellHit:FireServer(ohNumber1, ohTable2, ohTable3, ohTable4, ohString6)
end
end