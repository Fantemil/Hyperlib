-- Define the shoe jet engine speed
local JET_ENGINE_SPEED = 80

-- Define the shoe jet engine sound ID
local JET_ENGINE_SOUND_ID = "rbxassetid://INSERT_SOUND_ID_HERE"

-- Define a function to check if the player is pressing the X key
local function isXKeyPressed()
    return game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.X)
end

-- Define a function to add the jet engine effects to a player's shoes
local function addJetEngineEffects(player)
    -- Get the player's character and humanoid
    local character = player.Character
    local humanoid = character:FindFirstChildOfClass("Humanoid")

    -- Create two new Part objects for the shoe jet engines
    local leftEngine = Instance.new("Part")
    leftEngine.Name = "LeftShoeJetEngine"
    leftEngine.Size = Vector3.new(0.2, 0.2, 0.2)
    leftEngine.BrickColor = BrickColor.new("Bright red")
    leftEngine.Transparency = 0.5
    leftEngine.Anchored = true
    leftEngine.CanCollide = false
    leftEngine.Parent = character

    local rightEngine = Instance.new("Part")
    rightEngine.Name = "RightShoeJetEngine"
    rightEngine.Size = Vector3.new(0.2, 0.2, 0.2)
    rightEngine.BrickColor = BrickColor.new("Bright red")
    rightEngine.Transparency = 0.5
    rightEngine.Anchored = true
    rightEngine.CanCollide = false
    rightEngine.Parent = character

    -- Create a new Sound object for the jet engine sound
    local jetEngineSound = Instance.new("Sound")
    jetEngineSound.SoundId = JET_ENGINE_SOUND_ID
    jetEngineSound.Volume = 0.5
    jetEngineSound.Parent = leftEngine

    -- Create a new Attachment object for each shoe jet engine
    local leftAttachment = Instance.new("Attachment")
    leftAttachment.Position = Vector3.new(-0.5, 0, 0)
    leftAttachment.Parent = leftEngine

    local rightAttachment = Instance.new("Attachment")
    rightAttachment.Position = Vector3.new(0.5, 0, 0)
    rightAttachment.Parent = rightEngine

    -- Attach the shoe jet engines to the player's shoes
    local leftFoot = character.LeftFoot
    local rightFoot = character.RightFoot
    leftAttachment.CFrame = leftFoot.CFrame * CFrame.new(0, -leftFoot.Size.Y / 2, 0)
    leftAttachment.Parent = leftFoot
    leftEngine.CFrame = leftFoot.CFrame * CFrame.new(0, -leftFoot.Size.Y / 2, 0)

    rightAttachment.CFrame = rightFoot.CFrame * CFrame.new(0, -rightFoot.Size.Y / 2, 0)
    rightAttachment.Parent = rightFoot
    rightEngine.CFrame = rightFoot.CFrame * CFrame.new(0, -rightFoot.Size.Y / 2, 0)

    -- Define a function to update the shoe jet engines every frame
    local function updateShoeJetEngines()
        -- Check if the player is pressing the X key
        local isPressed = isXKeyPressed()

        -- Play or stop the jet engine sound based on the X key state
        if isPressed then
            jetEngineSound:Play()
        else
            jetEngineSound:
