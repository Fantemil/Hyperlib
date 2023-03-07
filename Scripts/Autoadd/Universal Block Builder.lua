loadstring(game:HttpGet(('https://raw.githubusercontent.com/GlitterLov3r/EliteScripts/main/Notification'),true))()

-- the keybind
local keybind = Enum.KeyCode.B

-- Define the size and color of the block
local blockSize = Vector3.new(4, 4, 4)
local blockColor = BrickColor.new("Bright blue")

-- how long the block will stay before disappearing
local blockLifetime = 5

-- Creating The Block
local function createBlock()
    local block = Instance.new("Part")
    block.Size = blockSize
    block.BrickColor = blockColor
    block.Position = game.Players.LocalPlayer.Character.Head.Position + Vector3.new(0, -5, 0)
    block.Anchored = true
    block.CanCollide = true
    block.Parent = workspace
    
    -- Schedule the block to be removed after the specified lifetime
    spawn(function()
        wait(blockLifetime)
        block:Destroy()
    end)
end

-- Bind the key to the block creation function
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == keybind then
        createBlock()
    end
end)