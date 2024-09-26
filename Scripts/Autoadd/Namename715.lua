-- LocalScript

-- Function to highlight a player
local function highlightPlayer(player)
    -- Ensure the player's character exists and has a HumanoidRootPart
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        -- Check if a Highlight object already exists to avoid duplicates
        if not player.Character:FindFirstChildOfClass("Highlight") then
            -- Create a new Highlight object
            local highlight = Instance.new("Highlight")
            highlight.Parent = player.Character
            -- Customize the highlight properties
            highlight.FillColor = Color3.fromRGB(255, 0, 0)  -- Red fill color
            highlight.OutlineColor = Color3.fromRGB(0, 0, 0)  -- Black outline color
        end
    end
end

-- Get the Players service
local Players = game:GetService("Players")

-- Highlight all players currently in the server
for _, player in ipairs(Players:GetPlayers()) do
    highlightPlayer(player)
end

-- Highlight any new players that join the server
Players.PlayerAdded:Connect(function(player)
    -- Delay to ensure the player's character is loaded
    player.CharacterAdded:Connect(function(character)
        highlightPlayer(player)
    end)
end)

-- Ensure existing players' highlights are updated when they respawn
Players.PlayerRemoving:Connect(function(player)
    player.CharacterRemoving:Connect(function(character)
        if character:FindFirstChildOfClass("Highlight") then
            character:FindFirstChildOfClass("Highlight"):Destroy()
        end
    end)
end)
