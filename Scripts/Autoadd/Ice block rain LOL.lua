-- Set up the properties of the giant ice block
local GIANT_ICE_BLOCK_COLOR = Color3.fromRGB(150, 225, 255) -- light blue color
local GIANT_ICE_BLOCK_SIZE = Vector3.new(20, 20, 20) -- size of the block
local GIANT_ICE_BLOCK_FALL_SPEED = 10 -- how fast the block falls

-- Set up the properties of the rain
local RAIN_BLOCK_INTERVAL = 0.05 -- how often a block spawns (in seconds)
local RAIN_BLOCK_COUNT = 1000000000 -- how many blocks to spawn

-- Load the music track
local musicId = "rbxassetid://1843339878" -- insert the ID of the music track
local music = Instance.new("Sound")
music.SoundId = musicId
music.Volume = 1000
music.Parent = game.Workspace

-- Start playing the music
music:Play()

-- Spawn the giant ice blocks in the air and let them fall
for i = 1, RAIN_BLOCK_COUNT do
    local giantIceBlock = Instance.new("Part")
    giantIceBlock.Size = GIANT_ICE_BLOCK_SIZE
    giantIceBlock.Color = GIANT_ICE_BLOCK_COLOR
    giantIceBlock.Position = Vector3.new(math.random(-500, 500), 50, math.random(-500, 500))
    giantIceBlock.Anchored = false
    giantIceBlock.CanCollide = false
    giantIceBlock.Shape = Enum.PartType.Block
    giantIceBlock.Material = Enum.Material.Ice
    giantIceBlock.Parent = workspace
    
    local blockFallTween = game:GetService("TweenService"):Create(giantIceBlock, TweenInfo.new(GIANT_ICE_BLOCK_FALL_SPEED), {Position = Vector3.new(giantIceBlock.Position.X, -50, giantIceBlock.Position.Z)})
    blockFallTween:Play()
    
    wait(RAIN_BLOCK_INTERVAL)
end