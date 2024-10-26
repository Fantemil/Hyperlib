local Orion = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()

local Window = Orion:MakeWindow({Name = "Full Bright", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local LightingTab = Window:MakeTab({
    Name = "Lighting",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

LightingTab:AddToggle({
    Name = "Full Bright",
    Default = false,
    Callback = function(Value)
        if Value then
            game:GetService("Lighting").Brightness = 2
            game:GetService("Lighting").ClockTime = 14
            game:GetService("Lighting").FogEnd = 100000
            game:GetService("Lighting").GlobalShadows = false
            game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(128, 128, 128)
        else
            game:GetService("Lighting").Brightness = 10
            game:GetService("Lighting").ClockTime = 12
            game:GetService("Lighting").FogEnd = 10000
            game:GetService("Lighting").GlobalShadows = true
            game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(127, 127, 127)
        end
    end
})