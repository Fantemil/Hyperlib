function toggleInvis(val)
    local character = game.Players.LocalPlayer.Character
    if not character then return end

    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not humanoid then return end

    local animationId = game:GetService("ReplicatedStorage").Assets.ResAnimations.Storm.PursuitClone2.AnimationId

    if val then
        local anim = Instance.new("Animation")
        anim.AnimationId = animationId
        local animationTrack = humanoid:LoadAnimation(anim)
        if animationTrack then
            animationTrack.Priority = Enum.AnimationPriority.Action4
            animationTrack:Play()
            animationTrack.TimePosition = 2
            animationTrack:AdjustSpeed(0)
        end
    else
        local animator = humanoid:FindFirstChildOfClass("Animator")
        if animator then
            for _, track in pairs(animator:GetPlayingAnimationTracks()) do
                if track.Animation.AnimationId == animationId then
                    track:Stop()
                    track:Destroy()
                    break
                end
            end
        end
    end
end
toggleInvis(true)