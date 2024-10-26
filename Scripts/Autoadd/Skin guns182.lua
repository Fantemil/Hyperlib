local Players = game:GetService("Players")
local player = Players.LocalPlayer
local backpack = player:FindFirstChildOfClass("Backpack") or player:WaitForChild("Backpack")

-- List of guns you want to apply the rainbow color to
local gunsToRainbow = {"AK-47", "M4A1", "Remington 870", "M9"}

-- Function to change the color of a gun to a rainbow pattern
local function applyRainbowColor(gun)
    local hue = 0
    while gun and gun.Parent do
        hue = (hue + 0.01) % 1 -- Increase hue slightly each time for rainbow effect
        local rainbowColor = Color3.fromHSV(hue, 1, 1) -- Create a color based on HSV

        -- Apply the color to all parts of the gun
        for _, part in ipairs(gun:GetDescendants()) do
            if part:IsA("BasePart") then
                part.Color = rainbowColor -- Apply rainbow color
            end
        end
        
        wait(0.1) -- Delay to make the effect visible
    end
end

-- Function to apply the rainbow effect to guns in the player's inventory
local function enableRainbowGuns()
    for _, gunName in ipairs(gunsToRainbow) do
        local gun = backpack:FindFirstChild(gunName) or player.Character:FindFirstChild(gunName)
        
        if gun then
            -- Start applying the rainbow effect to the gun
            spawn(function() applyRainbowColor(gun) end)
        else
            print(gunName .. " is not found in your inventory.")
        end
    end
end

-- Run the function to apply rainbow color to guns
enableRainbowGuns()