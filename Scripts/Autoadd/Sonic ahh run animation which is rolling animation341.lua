local fallAnimationId = "rbxassetid://18537367238"

local function replaceRunAnimationWithFall()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    local animateScript = character:WaitForChild("Animate")

    if animateScript:FindFirstChild("run") then
        for _, anim in ipairs(animateScript.run:GetChildren()) do
            if anim:IsA("Animation") then
                anim.AnimationId = fallAnimationId
            end
        end
    end
end

replaceRunAnimationWithFall()