-- https://discord.gg/PwrSGtuEnc join for more scripts
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(Vector3.new(100, 4500000, 100))

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local brickWidth = 9999999999
local brickHeight = 1
local brickDepth = 9999999999

local function placeBrick()
    local brick = Instance.new("Part")
    brick.Size = Vector3.new(brickWidth, brickHeight, brickDepth)
    brick.Position = character.HumanoidRootPart.Position - Vector3.new(0, 3, 0)
    brick.Anchored = true
    brick.Transparency = 0.95 -- Make the brick invisible
    brick.CanCollide = true -- Ensure the brick is still collidable
    brick.Parent = workspace
end

placeBrick()

player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    placeBrick()
end)