-- Load the Orion Library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Create a window
local Window = OrionLib:MakeWindow({Name = "Screenshot", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionExample"})

-- Create a tab
local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Add a section
local Section = Tab:AddSection({
    Name = "Section 1"
})

-- Add a button to take a screenshot
Tab:AddButton({
    Name = "Take Screenshot",
    Callback = function()
        game:GetService("CoreGui"):TakeScreenshot()
        OrionLib:MakeNotification({
            Name = "Screenshot Taken",
            Content = "A screenshot has been successfully taken.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end    
})

-- Initialize the GUI
OrionLib:Init()