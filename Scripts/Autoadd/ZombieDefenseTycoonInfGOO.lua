--[[ Variables ]]
local RS = game:GetService("ReplicatedStorage")
local Client = RS:WaitForChild("CIient")

Client:FireServer("PlaceObject", "Turrets", "Crossbow Turret",CFrame.new(0,0,0,0,0,0,0), -math.huge)