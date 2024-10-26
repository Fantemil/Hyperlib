-- Load Orion Library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Create a new window
local Window = OrionLib:MakeWindow({Name = "Auto Sell & Sell Once", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionConfig"})

-- Variables
local autoSellEnabled = false
local sellEvent = game:GetService("ReplicatedStorage"):WaitForChild("Buckets"):WaitForChild("Core"):WaitForChild("Default"):WaitForChild("Remotes"):WaitForChild("Sell")
local RunService = game:GetService("RunService")

-- Function to handle auto-selling
local function autoSell()
    local interval = 1 / 90 -- Adjust the interval for your desired speed (90 clicks per second here)
    while autoSellEnabled do
        local startTime = tick()
        sellEvent:InvokeServer()
        local elapsedTime = tick() - startTime
        if elapsedTime < interval then
            wait(interval - elapsedTime)
        end
    end
end

-- Create the Main tab
local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Create the Auto Sell toggle button
MainTab:AddToggle({
    Name = "Auto Sell",
    Default = false,
    Callback = function(value)
        autoSellEnabled = value
        if autoSellEnabled then
            spawn(autoSell)
        end
    end
})

-- Create the Sell Once button
MainTab:AddButton({
    Name = "Sell Once",
    Callback = function()
        sellEvent:InvokeServer()
    end
})

-- Initialize Orion Library
OrionLib:Init()