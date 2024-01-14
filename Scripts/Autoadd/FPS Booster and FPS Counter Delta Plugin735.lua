--[[
    Script by : iamhuman
    DeltaX Plugin Library : https://github.com/AZYsGithub/DeltaXPlugin/tree/main
]]--

-- FPS Counter
delta.Settings:AddSwitch(
    "FPS Counter",
    "Display the fps on your screen!",
    false,
    function(state)
        if state == true then
            local ScreenGui = Instance.new("ScreenGui")
            local Fps = Instance.new("TextLabel")
            local Ping = Instance.new("TextLabel")

            ScreenGui.Parent = game.CoreGui
            ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

            Fps.Name = "Fps"
            Fps.Parent = ScreenGui
            Fps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Fps.BackgroundTransparency = 1.000
            Fps.Position = UDim2.new(0.786138654, 0, 0, 0)
            Fps.Size = UDim2.new(0, 125, 0, 25)
            Fps.Font = Enum.Font.GothamBlack
            Fps.TextColor3 = Color3.fromRGB(0, 255, 0)
            Fps.TextScaled = true
            Fps.TextSize = 14.000
            Fps.TextWrapped = true

            script = Instance.new("LocalScript", Fps)
            renderS =
                game:GetService("RunService").RenderStepped:Connect(
                function(frame)
                    script.Parent.Text = ("FPS: " .. tostring(math.floor(1 / frame)) .. " ")
                    wait(1.5)
                end
            )
        elseif state == false then
            renderS:Disconnect()
            script.Parent.Text = (" ")
        end
    end
)

delta.Settings:AddButton(
    "Boost FPS",
    "Removing lighting, shadow",
    function()
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        sethiddenproperty(l, "Technology", 2)
        sethiddenproperty(t, "Decoration", false)
        t.WaterWaveSize = 0
        t.WaterWaveSpeed = 0
        t.WaterReflectance = 0
        t.WaterTransparency = 0
        l.GlobalShadows = 0
        l.FogEnd = 9e9
        l.Brightness = 1
        for i, v in pairs(w:GetDescendants()) do
            if v:IsA("BasePart") and not v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastPressure = 1
                v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                v.Enabled = false
            end
        end
    end
)
