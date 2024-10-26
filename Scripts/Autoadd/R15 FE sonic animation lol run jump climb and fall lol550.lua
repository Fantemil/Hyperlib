local fallAnimationId = "rbxassetid://18537367238"

local function replaceAnimationsWithFall()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local animateScript = character:WaitForChild("Animate")

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
end

local player = game.Players.LocalPlayer
player.CharacterAdded:Connect(replaceAnimationsWithFall)

if player.Character then
    replaceAnimationsWithFall()
end