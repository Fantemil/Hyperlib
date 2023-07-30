local Players = game:GetService("Players")

local function createTrail(character)
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        local trail = Instance.new("Trail", humanoid)
        trail.Enabled = true
        trail.MinLength = 0.1
        trail.Lifetime = 2
        trail.TextureMode = Enum.TextureMode.Stretch
        trail.Transparency = NumberSequence.new(0.5, 1)
        trail.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.new(1, 0, 0)), -- Red
            ColorSequenceKeypoint.new(0.16, Color3.new(1, 0.65, 0)), -- Orange
            ColorSequenceKeypoint.new(0.32, Color3.new(1, 1, 0)), -- Yellow
            ColorSequenceKeypoint.new(0.5, Color3.new(0, 1, 0)), -- Green
            ColorSequenceKeypoint.new(0.66, Color3.new(0, 0, 1)), -- Blue
            ColorSequenceKeypoint.new(0.83, Color3.new(0.29, 0, 0.51)), -- Indigo
            ColorSequenceKeypoint.new(1, Color3.new(0.58, 0, 0.83)), -- Violet
        })

        local RightFoot = character:FindFirstChild("RightFoot")
        local LeftFoot = character:FindFirstChild("LeftFoot")

        if RightFoot and LeftFoot then
            local trailAttachment0 = Instance.new("Attachment", RightFoot)
            local trailAttachment1 = Instance.new("Attachment", LeftFoot)

            trail.Attachment0 = trailAttachment0
            trail.Attachment1 = trailAttachment1
        end
    end
end

local character = Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()
createTrail(character)
