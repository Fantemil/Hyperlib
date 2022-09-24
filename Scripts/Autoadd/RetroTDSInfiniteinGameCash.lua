getgenv().on = true 

local ohString1 = "Scout"
local ohVector32 = -71.050964355469
local ohInstance3 = nil

game:GetService("ReplicatedStorage").PlaceTower:FireServer(ohString1, ohVector32, ohInstance3)

-- if it doesn't work the first time then execute it twice

while getgenv().on do
task.wait()
local ohInstance1 = game:GetService("Workspace").Towers.Scout
for i = 0 , 100 , 1 do -- change 100 to a smaller number if you lag
game:GetService("ReplicatedStorage").SellTower:FireServer(ohInstance1)
end
end