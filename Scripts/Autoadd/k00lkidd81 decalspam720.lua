-- Combined DecalSpam, Skybox, and Particles Script
local decalId = "18782375225"
local skyboxId = "18782375225"
local particleImageId = "18782375225"

local function applyDecal(part)
    -- Create a new Decal instance
    local decal = Instance.new("Decal")
    
    -- Set the decal texture ID
    decal.Texture = "rbxassetid://" .. decalId
    
    -- Apply the decal to all faces of the part
    for _, face in pairs(Enum.NormalId:GetEnumItems()) do
        local faceDecal = decal:Clone()
        faceDecal.Face = face
        faceDecal.Parent = part
    end
end

local function decalSpam()
    -- Iterate through all parts in the workspace
    for _, part in pairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            applyDecal(part)
        end
    end
end

local function setSkybox()
    -- Create a new Sky object
    local sky = Instance.new("Sky")

    -- Set the skybox texture IDs
    sky.SkyboxBk = "rbxassetid://" .. skyboxId
    sky.SkyboxDn = "rbxassetid://" .. skyboxId
    sky.SkyboxFt = "rbxassetid://" .. skyboxId
    sky.SkyboxLf = "rbxassetid://" .. skyboxId
    sky.SkyboxRt = "rbxassetid://" .. skyboxId
    sky.SkyboxUp = "rbxassetid://" .. skyboxId

    -- Parent the skybox to the Lighting service
    sky.Parent = game.Lighting
end

local function createParticles(player)
    -- Create a new ParticleEmitter instance
    local particleEmitter = Instance.new("ParticleEmitter")
    
    -- Set the particle texture ID
    particleEmitter.Texture = "rbxassetid://" .. particleImageId
    
    -- Set particle properties
    particleEmitter.Size = NumberSequence.new(1)  -- You can adjust the size as needed
    particleEmitter.Transparency = NumberSequence.new(0)  -- Fully opaque particles
    particleEmitter.Lifetime = NumberRange.new(1, 2)  -- Particles live between 1 and 2 seconds
    particleEmitter.Rate = 10  -- Emit 10 particles per second
    particleEmitter.Speed = NumberRange.new(1, 2)  -- Particles move at a speed between 1 and 2
    
    -- Attach the particle emitter to the player's character
    if player.Character then
        particleEmitter.Parent = player.Character:FindFirstChild("HumanoidRootPart")
    end
end

local function addParticlesToAllPlayers()
    -- Iterate through all players
    for _, player in pairs(game.Players:GetPlayers()) do
        createParticles(player)
    end
end

-- Connect to PlayerAdded event to add particles to new players
game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        createParticles(player)
    end)
end)

-- Add particles to all players currently in the game
addParticlesToAllPlayers()

-- Execute all functions
decalSpam()
setSkybox()
addParticlesToAllPlayers()