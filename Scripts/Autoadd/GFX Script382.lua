repeat
        wait()
    until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game:IsLoaded()

    local function loadassets()
        sethiddenproperty(workspace.Terrain, "Decoration", true)
        sethiddenproperty(game.Lighting, "Technology", "ShadowMap")
        sethiddenproperty(game.Lighting, "ShadowSoftness", .2)
        sethiddenproperty(game.Lighting, "Brightness", 3)
        sethiddenproperty(game.Lighting, "ExposureCompensation", -.9)

        local CC = Instance.new("ColorCorrectionEffect", game.Lighting)
        local Atmosphere = Instance.new("Atmosphere", game.Lighting)
        
        local Bloom = Instance.new("BloomEffect", game.Lighting)
        local DOP = Instance.new("DepthOfFieldEffect", game.Lighting)
        local Blur = Instance.new("BlurEffect", game.Lighting)
        local SunRays = Instance.new("SunRaysEffect", game.Lighting)
        
        CC.Saturation = .25
        

        Atmosphere.Color = Color3.fromRGB(199, 170, 107)
        Atmosphere.Decay = Color3.fromRGB(92, 60, 13)
        
        Bloom.Intensity = .8
        Bloom.Size = 50
        Bloom.Threshold = .9

        DOP.FarIntensity = .75
        DOP.InFocusRadius = 200
        DOP.NearIntensity = .75
        
        Blur.Size = 2

        SunRays.Intensity = .04
        SunRays.Spread = .4
        
        local function refreshparticles()
            while wait(5) do
                for i, v in pairs(game:GetDescendants()) do
                    if v.ClassName == "ParticleEmitter" then
                        v.Brightness = 5
                    end
                end
            end
        end

        task.spawn(refreshparticles)
    end

    local Success, Failed = pcall(function()
        loadassets()
    end)

    if Failed then 
        task.delay(3, loadassets)
    end