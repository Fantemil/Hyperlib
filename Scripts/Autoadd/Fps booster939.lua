loadstring([[
    -- Function to enhance FPS while maintaining colors and good visual quality
    local function enhanceFPS()
        -- Access essential services
        local runService = game:GetService("RunService")
        local lighting = game:GetService("Lighting")
        local terrain = workspace:FindFirstChildOfClass("Terrain")
        local currentCamera = workspace.CurrentCamera

        -- Adjust rendering quality to a medium-high level (use pcall to handle potential errors)
        pcall(function()
            settings().Rendering.QualityLevel = Enum.QualityLevel.Level07 -- Medium-high quality
        end)

        -- Optimize lighting settings for performance without losing color
        if lighting then
            lighting.GlobalShadows = true -- Keep global shadows for quality
            lighting.EnvironmentDiffuseScale = 1 -- Maintain original diffuse scale for accurate lighting
            lighting.EnvironmentSpecularScale = 1 -- Maintain original specular scale for reflections
            lighting.Brightness = 2 -- Standard brightness for color balance
            lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128) -- Neutral outdoor ambient light

            -- Adjust shadow softness to a moderate level for performance
            pcall(function()
                lighting.ShadowSoftness = 0.4
            end)
        end

        -- Adjust terrain settings for performance while keeping water quality and colors
        if terrain then
            terrain.WaterWaveSize = 0.1 -- Small waves for visual effect
            terrain.WaterWaveSpeed = 10 -- Adjust wave speed
            terrain.WaterReflectance = 0.4 -- Moderate reflectance for water
            terrain.WaterTransparency = 0.3 -- Low transparency for realistic water
        end

        -- Adjust camera properties to reduce the rendering load while keeping good visual quality
        if currentCamera then
            currentCamera.FieldOfView = 70 -- Standard FOV to avoid excessive rendering load
        end

        -- Optimize particle effects and decals for performance
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("ParticleEmitter") or obj:IsA("Beam") or obj:IsA("Trail") then
                obj.Enabled = false -- Disable heavy visual effects
            elseif obj:IsA("Decal") or obj:IsA("Texture") then
                obj.Transparency = 0 -- Keep decals and textures visible for color accuracy
            end
        end

        -- Additional optimizations without altering colors
        -- Disable bloom and depth of field effects for performance but keep color balance
        pcall(function()
            for _, effect in pairs(lighting:GetChildren()) do
                if effect:IsA("BloomEffect") or effect:IsA("DepthOfFieldEffect") then
                    effect.Enabled = false
                end
            end
        end)

        -- No color correction or alteration effects are applied here to preserve the original colors

        -- Connect a function to the Heartbeat event for real-time optimization
        runService.Heartbeat:Connect(function()
            -- Perform garbage collection periodically to free up memory
            collectgarbage("collect")
        end)
    end

    -- Execute the script in a protected call to avoid crashing in case of errors
    pcall(function()
        -- Call the original FPS booster script (if needed)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RezWare-SoftWare/fpsboost.rez/refs/heads/main/boost.rez", true))()

        -- Enhance FPS with custom optimizations
        enhanceFPS()
    end)
]])()