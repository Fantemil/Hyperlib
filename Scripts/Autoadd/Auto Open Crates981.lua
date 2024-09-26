-- Initialize Orion Library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Example GUI", HidePremium = false, SaveConfig = true, ConfigFolder = "ExampleConfig"})

-- Create a Tab
local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Variables to hold the number of crates to open and control the auto-open process
local crateCount = 1
local autoOpenExplosionCrate = false
local autoOpenSwordCrate = false

-- Add a text box to input the number of crates
Tab:AddTextbox({
    Name = "Number of Crates to Open",
    Default = "1",
    TextDisappear = true,
    Callback = function(value)
        crateCount = tonumber(value) or 1
    end
})

-- Function to open Normal Explosion Crates once
local function openExplosionCrateOnce()
    local args = {
        [1] = "PromptPurchaseCrate",
        [2] = workspace:WaitForChild("Spawn"):WaitForChild("Crates"):WaitForChild("NormalExplosionCrate")
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
end

-- Function to open Normal Sword Crates once
local function openSwordCrateOnce()
    local args = {
        [1] = "PromptPurchaseCrate",
        [2] = workspace:WaitForChild("Spawn"):WaitForChild("Crates"):WaitForChild("NormalSwordCrate")
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
end

-- Add a button to open Normal Explosion Crates once
Tab:AddButton({
    Name = "Open Normal Explosion Crate Once",
    Callback = function()
        openExplosionCrateOnce()
    end
})

-- Add a button to open Normal Sword Crates once
Tab:AddButton({
    Name = "Open Normal Sword Crate Once",
    Callback = function()
        openSwordCrateOnce()
    end
})

-- Function to auto-open Normal Explosion Crates
local function autoOpenExplosionCrates()
    while autoOpenExplosionCrate do
        for i = 1, crateCount do
            if not autoOpenExplosionCrate then break end
            openExplosionCrateOnce()
            wait(1) -- Add a delay to prevent spamming the server
        end
    end
end

-- Function to auto-open Normal Sword Crates
local function autoOpenSwordCrates()
    while autoOpenSwordCrate do
        for i = 1, crateCount do
            if not autoOpenSwordCrate then break end
            openSwordCrateOnce()
            wait(1) -- Add a delay to prevent spamming the server
        end
    end
end

-- Add a toggle for auto-opening Normal Explosion Crates
Tab:AddToggle({
    Name = "Auto-Open Normal Explosion Crate",
    Default = false,
    Callback = function(value)
        autoOpenExplosionCrate = value
        if autoOpenExplosionCrate then
            coroutine.wrap(autoOpenExplosionCrates)()
        end
    end
})

-- Add a toggle for auto-opening Normal Sword Crates
Tab:AddToggle({
    Name = "Auto-Open Normal Sword Crate",
    Default = false,
    Callback = function(value)
        autoOpenSwordCrate = value
        if autoOpenSwordCrate then
            coroutine.wrap(autoOpenSwordCrates)()
        end
    end
})

-- Initialize the GUI
OrionLib:Init()