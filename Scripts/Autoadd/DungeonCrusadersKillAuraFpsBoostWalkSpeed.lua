local library =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("ZZZZ", nil)
local themes = {
    Background = Color3.fromRGB(45, 45, 45),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),
    TextColor = Color3.fromRGB(255, 255, 255)
}

local page = venyx:addPage("Main", nil)
local section1 = page:addSection("Main")
section1:addButton(
    "Enable",
    function()
        while wait() do
            local mouse = game.Players.LocalPlayer:GetMouse()
            local args = {
                [1] = "Swing",
                [2] = Vector3.new(mouse.hit.p.X, mouse.hit.p.Y, mouse.hit.p.Z)
            }

            game:GetService("ReplicatedStorage").ClientServerNetwork.MagicNetwork:FireServer(unpack(args))
        end
    end
)
section1:addButton(
    "FPS Boost",
    function()
        local decalsyeeted = false -- Leaving this on makes games look shitty but the fps goes up by at least 20.
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
        l.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for i, v in pairs(w:GetDescendants()) do
            if v:IsA("BasePart") and not v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif (v:IsA("Decal") or v:IsA("Texture")) and decalsyeeted then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastPressure = 1
                v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                v.Enabled = false
            elseif v:IsA("MeshPart") and decalsyeeted then
                v.Material = "Plastic"
                v.Reflectance = 0
                v.TextureID = 10385902758728957
            elseif v:IsA("SpecialMesh") and decalsyeeted then
                v.TextureId = 0
            elseif v:IsA("ShirtGraphic") and decalsyeeted then
                v.Graphic = 0
            elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then
                v[v.ClassName .. "Template"] = 0
            end
        end
        for i = 1, #l:GetChildren() do
            e = l:GetChildren()[i]
            if
                e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or
                    e:IsA("DepthOfFieldEffect")
             then
                e.Enabled = false
            end
        end
        while wait() do
            for i, v in pairs(game.Workspace:GetChildren()) do --path of the thing
                if v.Name == "Camera" then --filter by name
                    for a, b in pairs(v:GetChildren()) do
                        b:Destroy() --delete the b(the selected parts)
                    end
                end
            end
        end
        w.DescendantAdded:Connect(
            function(v)
                wait()
                --prevent errors and shit
                if v:IsA("BasePart") and not v:IsA("MeshPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                    v.Transparency = 1
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(0)
                elseif v:IsA("Explosion") then
                    v.BlastPressure = 1
                    v.BlastRadius = 1
                elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                    v.Enabled = false
                elseif v:IsA("MeshPart") and decalsyeeted then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                    v.TextureID = 10385902758728957
                elseif v:IsA("SpecialMesh") and decalsyeeted then
                    v.TextureId = 0
                elseif v:IsA("ShirtGraphic") and decalsyeeted then
                    v.ShirtGraphic = 0
                elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then
                    v[v.ClassName .. "Template"] = 0
                end
            end
        )
    end
)

section1:addButton(
    "Walkspeed",
    function()
        while wait(1) do
            local WS = 30

            local Player = game:GetService("Players").LocalPlayer
            local Humanoid = Player.Character:FindFirstChildOfClass("Humanoid")
            local mt = getrawmetatable(game)
            local index = mt.__index
            local newindex = mt.__newindex
            setreadonly(mt, false)

            mt.__index =
                newcclosure(
                function(t, k)
                    if k:lower() == "walkspeed" then
                        return 16
                    end
                    return index(t, k)
                end
            )
            mt.__newindex =
                newcclosure(
                function(self, k, n)
                    if k == "WalkSpeed" then
                        n = WS
                    end
                    return newindex(self, k, n)
                end
            )
            Humanoid.WalkSpeed = WS

            setreadonly(mt, true)
        end
    end
)
section1:addKeybind(
    "Close",
    Enum.KeyCode.LeftControl,
    function()
        venyx:toggle()
    end
)
local theme = venyx:addPage("Theme", nil)
local colors = theme:addSection("Colors")
for theme, color in pairs(themes) do
    colors:addColorPicker(
        theme,
        color,
        function(color3)
            venyx:setTheme(theme, color3)
        end
    )
end
venyx:SelectPage(venyx.pages[1], true)