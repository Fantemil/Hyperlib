-- CopyTools Script Without Player's Username
-- Its Auto CopyTools From Players Backpack
-- Some Tools Are FE
-- Some Tools Are Not FE

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local localPlayer = Players.LocalPlayer

local function copyToolsFromPlayer(player)
    local playerBackpack = player:FindFirstChildOfClass("Backpack")
    if playerBackpack and player ~= localPlayer then
        for _, tool in ipairs(playerBackpack:GetChildren()) do
            if tool:IsA("Tool") then
                local toolClone = tool:Clone()
                toolClone.Parent = localPlayer.Backpack
            end
        end
    end
end

local function copyToolsFromAllPlayers()
    for _, player in ipairs(Players:GetPlayers()) do
        copyToolsFromPlayer(player)
    end
end

local function printUsernames()
    for _, player in ipairs(Players:GetPlayers()) do
        print(player.Name)
    end
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        wait(2) 
        copyToolsFromPlayer(player)
    end)
end)

copyToolsFromAllPlayers()
printUsernames()