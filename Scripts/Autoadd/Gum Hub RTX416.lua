-- Load the Kavo UI Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

-- Create a new window
local Window = Library.CreateLib("Gum Hub RTX", "DarkTheme")

-- Create a tab for Ultra Graphics
local RTXTab = Window:NewTab("Ultra Graphics")

-- Create a section for RTX settings
local RTXSection = RTXTab:NewSection("RTX Settings")

-- Create a new tab for Day/Night RTX settings
local DayNightTab = Window:NewTab("Day/Night Cycle")

-- Create a section for Day/Night settings
local DayNightSection = DayNightTab:NewSection("Day/Night RTX Settings")

-- Function to create a toggle and corresponding textbox for an effect
local function createToggleWithTextbox(name, effectType, defaultValue, setValueFunc)
    local effectInstance = nil
    
    -- Toggle button to enable/disable the effect
    RTXSection:NewToggle(name, "Toggle " .. name, function(state)
        local Lighting = game:GetService("Lighting")
        if state then
            -- Create the effect instance if it doesn't already exist
            effectInstance = Lighting:FindFirstChildOfClass(effectType) or Instance.new(effectType, Lighting)
            setValueFunc(effectInstance, defaultValue)
        else
            if effectInstance then
                effectInstance:Destroy()
                effectInstance = nil
            end
        end
    end)
    
    -- Textbox to control the effect's intensity or other properties
    RTXSection:NewTextBox(name .. " Value", "Enter a value", function(value)
        local numValue = tonumber(value)
        if numValue and effectInstance then
            setValueFunc(effectInstance, numValue)
        elseif not effectInstance then
            warn(name .. " is not enabled.")
        else
            warn("Invalid input. Please enter a number.")
        end
    end)
end

-- Define how to set values for the Color Correction effect
local function setColorCorrectionValues(effect, value)
    effect.Saturation = value
    effect.Contrast = 0.4 -- Slightly higher contrast for more vivid colors
    effect.Brightness = 0.15 -- Enhanced brightness
    effect.TintColor = Color3.fromRGB(240, 230, 255) -- Soft, warm tint for a glossy look
end

-- Function to set up Day RTX mode
local function setDayMode()
    local Lighting = game:GetService("Lighting")
    
    -- Adjust Lighting settings for day mode
    Lighting.TimeOfDay = "14:00:00"
    Lighting.Brightness = 3
    Lighting.OutdoorAmbient = Color3.fromRGB(180, 180, 180)
    Lighting.Ambient = Color3.fromRGB(255, 255, 255)
    Lighting.FogEnd = 1000
    Lighting.FogColor = Color3.fromRGB(255, 255, 255)
    Lighting.EnvironmentDiffuseScale = 1 -- Enhance environment light diffusion
    Lighting.EnvironmentSpecularScale = 1 -- Enhance specular reflection
    Lighting.GlobalShadows = true -- Enable global shadows for a realistic effect

    -- Adjust the sky color and sun direction
    local sky = Lighting:FindFirstChildOfClass("Sky") or Instance.new("Sky", Lighting)
    sky.SkyboxBk = "rbxassetid://169210149"
    sky.SkyboxDn = "rbxassetid://169210195"
    sky.SkyboxFt = "rbxassetid://169210195"
    sky.SkyboxLf = "rbxassetid://169210149"
    sky.SkyboxRt = "rbxassetid://169210149"
    sky.SkyboxUp = "rbxassetid://169210149"
    sky.SunAngularSize = 21 -- Larger sun for a more realistic effect
end

-- Function to set up Night RTX mode
local function setNightMode()
    local Lighting = game:GetService("Lighting")
    
    -- Adjust Lighting settings for night mode
    Lighting.TimeOfDay = "02:00:00"
    Lighting.Brightness = 0.2
    Lighting.OutdoorAmbient = Color3.fromRGB(30, 30, 60)
    Lighting.Ambient = Color3.fromRGB(100, 100, 150)
    Lighting.FogEnd = 300
    Lighting.FogColor = Color3.fromRGB(10, 10, 20)
    Lighting.EnvironmentDiffuseScale = 0.5 -- Lower environment light diffusion
    Lighting.EnvironmentSpecularScale = 0.5 -- Lower specular reflection
    Lighting.GlobalShadows = true -- Keep global shadows for moonlight

    -- Adjust the sky color and moon direction
    local sky = Lighting:FindFirstChildOfClass("Sky") or Instance.new("Sky", Lighting)
    sky.SkyboxBk = "rbxassetid://1026133518"
    sky.SkyboxDn = "rbxassetid://1026133261"
    sky.SkyboxFt = "rbxassetid://1026133518"
    sky.SkyboxLf = "rbxassetid://1026133518"
    sky.SkyboxRt = "rbxassetid://1026133518"
    sky.SkyboxUp = "rbxassetid://1026133261"
    sky.SunAngularSize = 0 -- No visible sun at night
end

-- Toggle for Day Mode
DayNightSection:NewToggle("Day Mode", "Toggle Day RTX", function(state)
    if state then
        setDayMode()
    end
end)

-- Toggle for Night Mode
DayNightSection:NewToggle("Night Mode", "Toggle Night RTX", function(state)
    if state then
        setNightMode()
    end
end)

-- Create a toggle and textbox for Color Correction
createToggleWithTextbox("Color Correction", "ColorCorrectionEffect", 0.4, setColorCorrectionValues)