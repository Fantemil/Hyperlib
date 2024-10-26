--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- Define the animation IDs for the Adidas Sports Animation Pack
local animations = {
    idle = "rbxassetid://18537387180",    -- Primary idle animation
    idleAlt = "rbxassetid://18537376492", -- Alternate idle animation
    walk = "rbxassetid://18537392113",    -- Walk animation
    run = "rbxassetid://18537387180",     -- Run animation
    jump = "rbxassetid://18537367238",    -- Jump animation
    fall = "rbxassetid://18537367238",    -- Fall animation
    swim = "rbxassetid://18537367238",    -- Swim animation
    swimIdle = "rbxassetid://18537387180",-- Swim idle animation
    climb = "rbxassetid://18537367238"    -- Climb animation
}

-- Function to replace the default animations
local function replaceAnimations()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    -- Wait for the Animate script to load
    local animateScript = character:WaitForChild("Animate")

    -- Replace each animation
    for animationType, animationId in pairs(animations) do
        if animateScript:FindFirstChild(animationType) then
            for _, anim in ipairs(animateScript[animationType]:GetChildren()) do
                if anim:IsA("Animation") then
                    anim.AnimationId = animationId
                end
            end
        end
    end

    -- Handle alternate idle animation separately
    local idle = animateScript:FindFirstChild("idle")
    if idle then
        local animAlt = idle:FindFirstChild("Animation2")
        if animAlt then
            animAlt.AnimationId = animations.idleAlt
        end
    end
end

-- Function to ensure animations loop
local function ensureAnimationsLoop()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    -- Wait for the Humanoid to load
    local humanoid = character:WaitForChild("Humanoid")

    -- Connect to the AnimationPlayed event
    humanoid.AnimationPlayed:Connect(function(animationTrack)
        -- Ensure the animation loops
        animationTrack.Looped = true
    end)
end

-- Additional function to debug swimIdle animation
local function debugSwimIdle()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local animateScript = character:WaitForChild("Animate")
    local swimIdle = animateScript:FindFirstChild("swimIdle")
    
    if swimIdle then
        for _, anim in ipairs(swimIdle:GetChildren()) do
            if anim:IsA("Animation") then
                print("SwimIdle Animation ID:", anim.AnimationId)
                anim.AnimationId = animations.swimIdle
                print("Updated SwimIdle Animation ID:", anim.AnimationId)
            end
        end
    else
        print("swimIdle animation not found in Animate script.")
    end
end

-- Run the functions to replace animations, ensure they loop, and debug swimIdle
replaceAnimations()
ensureAnimationsLoop()
debugSwimIdle()
