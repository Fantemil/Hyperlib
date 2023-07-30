local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local function teleportTo(position)
    humanoidRootPart.CFrame = CFrame.new(position)
end
local function getGemPositions()
    local gemPositions = {}
    for _, gem in ipairs(game.Workspace.Gems:GetChildren()) do
        if gem.Name:find("Gem[123]") then
            table.insert(gemPositions, gem.Position)
        end
    end
    return gemPositions
end
while true do
    local gemPositions = getGemPositions()
    for _, position in ipairs(gemPositions) do
        teleportTo(position)
        wait(0.5)
    end
end
