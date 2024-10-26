-- Load Orion Library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Create Window
local Window = OrionLib:MakeWindow({Name = "Auto Clicker", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

-- Create Tab
local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Add Toggle
Tab:AddToggle({
    Name = "Auto Click",
    Default = false,
    Callback = function(Value)
        _G.AutoClick = Value
        while _G.AutoClick do
            local args = {
                [1] = true
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Tap"):InvokeServer(unpack(args))
            wait() -- Adjust the wait time as needed
        end
    end    
})

-- Initialize Orion
OrionLib:Init()