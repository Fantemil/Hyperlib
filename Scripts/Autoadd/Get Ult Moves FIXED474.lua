local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local toolNames = {"20-20-20 Dropkick", "Unlimited Flexworks", "Stoic Bomb", "Five Seasons"}

local function getTools()
    local toolsFound = false

    for _, tool in ipairs(game:GetDescendants()) do
        if tool:IsA("Tool") then
            for _, name in ipairs(toolNames) do
                if tool.Name == name then
                    local clonedTool = tool:Clone()
                    clonedTool.Parent = player.Backpack
                    print(name .. " has been added to your inventory.")
                    toolsFound = true
                    break
                end
            end
        end
    end

    if not toolsFound then
        print("None of the specified tools were found.")
    end
end

local function onCharacterAdded(character)
    character:WaitForChild("Humanoid").Died:Connect(function()
        getTools()
    end)
end

player.CharacterAdded:Connect(onCharacterAdded)
if player.Character then
    onCharacterAdded(player.Character)
end

getTools()
