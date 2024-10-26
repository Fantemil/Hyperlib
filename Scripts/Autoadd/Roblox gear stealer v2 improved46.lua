local localplayer = game.Players.LocalPlayer
local localbackpack = localplayer:WaitForChild("Backpack")

-- Function to clone tools from a given source to the local player's backpack
local function cloneToolsToBackpack(source)
    for _, item in pairs(source:GetDescendants()) do
        if item:IsA("Tool") then
            local clonedTool = item:Clone()
            clonedTool.Parent = localbackpack
        end
    end
end

-- Clone tools from other players' backpacks
for _, player in pairs(game.Players:GetPlayers()) do
    if player ~= localplayer then
        local playerBackpack = player:FindFirstChild("Backpack")
        if playerBackpack then
            cloneToolsToBackpack(playerBackpack)
        end
    end
end

-- Clone equipped tools from other players
for _, player in pairs(game.Players:GetPlayers()) do
    if player ~= localplayer and player.Character then
        local equippedTool = player.Character:FindFirstChildOfClass("Tool")
        if equippedTool then
            local clonedTool = equippedTool:Clone()
            clonedTool.Parent = localbackpack
        end
    end
end

-- Clone tools from ReplicatedStorage
cloneToolsToBackpack(game:GetService("ReplicatedStorage"))
