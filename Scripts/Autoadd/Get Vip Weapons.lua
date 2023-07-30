-- made by wedn#7257

local gearsFolder = game:GetService("Lighting")
local gearsFolder2 = game:GetService("ReplicatedStorage").Tools
local playerName = game.Players.LocalPlayer.Name
local player = game:GetService("Players"):FindFirstChild(playerName)
local backpack = player:WaitForChild("Backpack")
for _, gear in ipairs(gearsFolder:GetChildren()) do
    if gear:IsA("Tool") then
        local newGear = gear:Clone()
        newGear.Parent = backpack
    end
end
for _, gear in ipairs(gearsFolder2:GetChildren()) do
    if gear:IsA("Tool") then
        local newGear = gear:Clone()
        newGear.Parent = backpack
    end
end
