local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Get the left arm object
local leftArm = character:WaitForChild("Left Arm")

-- Create animation object
local armAnimation = Instance.new("Animation")
armAnimation.AnimationId = "rbxassetid://1234567890" -- Replace with your animation ID

-- Load the animation onto the humanoid
local animationTrack = humanoid:LoadAnimation(armAnimation)

-- Function to play the animation
local function playAnimation()
    animationTrack:Play()
end

-- Bind the function to a key press event
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.Q then
        playAnimation()
    end
end)

-- Function to stop the animation
local function stopAnimation()
    animationTrack:Stop()
end

-- Bind the function to a key release event
game:GetService("UserInputService").InputEnded:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.Q then
        stopAnimation()
    end
end)