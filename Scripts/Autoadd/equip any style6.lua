local StyleProgression = {
    ["Boxing"] = "Mohammed Alai Mixed Martial Arts",
    -- Add more style progressions as needed
}

-- Assuming you have a function to retrieve the player's current style
function GetCurrentStyle(player)
    -- Implement the logic to get the player's current style
    -- Return the player's current style (e.g., "Boxing")
end

-- Function to progress the player's style based on the style cards
function ProgressStyle(player)
    local currentStyle = GetCurrentStyle(player)
    local evolvedStyle = StyleProgression[currentStyle]

    if evolvedStyle then
        -- Implement the logic to change the player's style to the evolved style
        -- This can include changing their abilities, appearance, etc.
        ChangeStyle(player, evolvedStyle)
    else
        print("No progression available for the current style.")
    end
end

-- Function to handle equipping any style
function EquipStyle(player, newStyle)
    -- Implement the logic to equip the new style
    -- This can include changing their abilities, appearance, etc.
    ChangeStyle(player, newStyle)
end

-- Assuming you have a player instance
local player = game.Players:GetPlayerFromCharacter(character)

-- Event handlers for controls
game:GetService("UserInputService").InputBegan:Connect(function(input)
    -- ... Existing control handling code ...

    -- Add handling for equipping any style
    if input.KeyCode == Enum.KeyCode.E then
        EquipStyle(player, "NewStyle") -- Replace "NewStyle" with the actual style name
    end
end)