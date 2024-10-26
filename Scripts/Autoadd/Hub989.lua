-- Load the Orion Library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Create the main window
local Window = OrionLib:MakeWindow({Name = "Money Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

-- Variable to control the auto-roll loop
local autoRollEnabled = false

-- Function to perform the roll
local function performRoll()
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RollStart"):FireServer()
end

-- Create a tab in the window
local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Add a toggle to the tab
MainTab:AddToggle({
    Name = "Auto Roll",
    Default = false,
    Callback = function(Value)
        autoRollEnabled = Value
        if autoRollEnabled then
            -- Start the auto-roll loop
            spawn(function()
                while autoRollEnabled do
                    performRoll()
                    wait(1) -- Wait for 1 second before the next roll
                end
            end)
        end
    end
})

-- Add a button to perform a single roll
MainTab:AddButton({
    Name = "Roll Once",
    Callback = function()
        performRoll()
    end
})

-- Initialize the library
OrionLib:Init()