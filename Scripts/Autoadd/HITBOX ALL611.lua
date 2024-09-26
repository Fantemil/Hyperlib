-- PLEASE BEFORE USING THE SCRIPT
-- IT MAKES THE ENEMIES FLOAT IN THE SKY, PLEASE LOOK UP!
--TRY TO FARM FOR A GUN BEFORE EXECUTING THE SCRIPT SO YOU CAN SHOOT THEM UP

local enemyNames = {
    "Robloxian",
    "Angry Robloxian",
    "Giant Robloxian",
    "Tiny Robloxian",
    "Orc",
    "Goblin"
}

local function resizeTorso(part, scale)
    part.Size = part.Size * scale
    part.CanCollide = false
    part.CanQuery = false
    part.CanTouch = false
    part.Transparency = 0.5 -- put how transparent is the torso
end

-- if you want to stop the modification from running click L (on keyboard)
local function resetTorso(part, originalSize, originalTransparency)
    part.Size = originalSize
    part.CanCollide = true
    part.CanQuery = true
    part.CanTouch = true
    part.Transparency = originalTransparency
end

local originalProperties = {}

-- loop to auto check for enemies
local running = true
while running do
    for _, enemyName in ipairs(enemyNames) do
        for _, instance in ipairs(workspace:GetChildren()) do
            if instance:IsA("Model") and instance.Name == enemyName then
                local torso = instance:FindFirstChild("Torso")
                if torso and not originalProperties[torso] then
                    -- restore original torso size
                    originalProperties[torso] = { Size = torso.Size, Transparency = torso.Transparency }
                    -- resize torso
                    resizeTorso(torso, 15)
                end
            end
        end
    end
    wait(0.1) -- it checks every 0.1 seconds ig
end

--key press detection
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.L then
        running = false
        -- revert torso to normal
        for torso, properties in pairs(originalProperties) do
            resetTorso(torso, properties.Size, properties.Transparency)
        end
    end
end)
