-- Set up variables
local numBlocks = 1000000000000000 -- Number of blocks to create
local delay = 0.1 -- Delay between creating each block (in seconds)

-- Create the blocks
for i = 1, numBlocks do
    local block = Instance.new("Part")
    block.Shape = Enum.PartType.Block -- Set the block shape to square
    block.Size = Vector3.new(10, 10, 10) -- Size of the block
    block.Position = Vector3.new(math.random(-500, 500), 100, math.random(-500, 500)) -- Randomize position
    block.BrickColor = BrickColor.new("Light blue") -- Set block color to light blue
    block.Material = Enum.Material.Ice -- Set block material to ice
    block.CanCollide = false -- Disable collision so the blocks can pass through each other
    block.Anchored = true -- Prevent the blocks from moving after they spawn
    
    block.Parent = game.Workspace -- Add the block to the workspace
    
    wait(delay) -- Wait for the delay before creating the next block
end