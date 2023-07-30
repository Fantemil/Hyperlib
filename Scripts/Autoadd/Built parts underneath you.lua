-- wait for player character to load
repeat wait() until game.Players.LocalPlayer.Character

-- define the key to press
local KEY_TO_PRESS = Enum.KeyCode.B

-- define how long the parts will stay before disappearing
local DURATION = 5  -- in seconds

-- define the function to create the parts
local function createParts()
    -- get the player's position
    local player = game.Players.LocalPlayer.Character
    local playerPos = player:GetBoundingBox().Position

    -- create a new part beneath the player
    local newPart = Instance.new("Part")
    newPart.Position = playerPos - Vector3.new(0, 2, 0)
    newPart.Anchored = true
    newPart.Parent = workspace

    -- destroy the part after the duration has passed
    wait(DURATION)
    newPart:Destroy()
end

-- define the function to handle the input
local function onKeyDown(input, gameProcessedEvent)
    -- check if the input is the key we want
    if input.KeyCode == KEY_TO_PRESS and not gameProcessedEvent then
        -- create a new part
        createParts()
    end
end

-- connect the function to the input event
game:GetService("UserInputService").InputBegan:Connect(onKeyDown)
