-- kewl and bad rtx thing
-- for any executor

-- make like hawaii light yeah
local function applyHawaiiLighting()
    local lighting = game:GetService("Lighting")

    -- adjust global lighting settings or sum
    lighting.Brightness = 0.35
    lighting.GlobalShadows = true
    lighting.OutdoorAmbient = Color3.fromRGB(200, 150, 50)  -- soft orange
    lighting.TimeOfDay = "12:00:00"
    lighting.FogEnd = 500
    lighting.FogColor = Color3.fromRGB(200, 150, 50)  -- soft orange

    -- add bloom for glow
    local bloom = Instance.new("BloomEffect")
    bloom.Intensity = 0.2
    bloom.Threshold = 0
    bloom.Size = 17
    bloom.Parent = lighting

    -- add colorcorrectioneffect for enhanced colors
    local colorCorrection = Instance.new("ColorCorrectionEffect")
    colorCorrection.Saturation = 2.5  -- saturation hhhhhh
    colorCorrection.Contrast = 0.4
    colorCorrection.TintColor = Color3.fromRGB(200, 180, 50)  -- also soft orang
    colorCorrection.Parent = lighting

    -- add depth of field for depth of field
    local depthOfField = Instance.new("DepthOfFieldEffect")
    depthOfField.FarIntensity = 0.5
    depthOfField.FocusDistance = 35
    depthOfField.InFocusRadius = 40
    depthOfField.NearIntensity = 0.5
    depthOfField.Parent = lighting

    -- sun rays yeah
    local sunRays = Instance.new("SunRaysEffect")
    sunRays.Intensity = 0.2
    sunRays.Spread = 0.5
    sunRays.Parent = lighting
end

-- APPLY MINIMAL BLUR AUUUUGH
local function applyBlurEffects()
    local blur = Instance.new("BlurEffect")
    blur.Size = 1.5  -- change blur maybe
    blur.Parent = game:GetService("Lighting")

    -- blur size dynamically for smoother effects
    game:GetService("RunService").RenderStepped:Connect(function()
        blur.Size = 2  -- also changable
    end)
end

-- add the effects
applyHawaiiLighting()
applyBlurEffects()
