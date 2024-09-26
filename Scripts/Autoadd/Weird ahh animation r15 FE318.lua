local adidasSwimIdleAnimationId = "rbxassetid://18537387180" -- Adidas swim idle animation ID
local fallAnimationId = "rbxassetid://18537367238" -- Fall animation ID

local function replaceAnimations()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local animateScript = character:WaitForChild("Animate")

    -- Check if the character is using R15
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid and humanoid.RigType == Enum.HumanoidRigType.R15 then
        -- Replace the idle animation
        local idleAnimation = animateScript:FindFirstChild("idle")
        if idleAnimation then
            for _, anim in ipairs(idleAnimation:GetChildren()) do
                if anim:IsA("Animation") then
                    anim.AnimationId = adidasSwimIdleAnimationId
                end
            end
        end
        
        -- Replace other animations with fall animation
        for _, animationType in ipairs({"run", "jump", "climb", "fall"}) do
            local animationTrack = animateScript:FindFirstChild(animationType)
            if animationTrack then
                for _, anim in ipairs(animationTrack:GetChildren()) do
                    if anim:IsA("Animation") then
                        anim.AnimationId = fallAnimationId
                    end
                end
            end
        end
    else
        print("Character is not R15. No animations will be replaced.")
    end
end

local player = game.Players.LocalPlayer
player.CharacterAdded:Connect(replaceAnimations)

-- Run the function immediately if the character is already loaded
if player.Character then
    replaceAnimations()
end