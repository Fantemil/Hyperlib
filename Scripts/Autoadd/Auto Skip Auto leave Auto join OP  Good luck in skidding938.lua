-- Load the Orion library
local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()

-- Create a new window with Orion
local window = OrionLib:MakeWindow({
    Name = "Death Row ð",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "AutoCutConfig"
})

-- Create tabs
local controlsTab = window:MakeTab({
    Name = "Controls",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local infoTab = window:MakeTab({
    Name = "Info",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Main controls section
local mainSection = controlsTab:AddSection({
    Name = "Main Controls"
})

-- Miscellaneous section
local MiscSection = controlsTab:AddSection({
    Name = "Miscellaneous"
})

-- Auto Actions section
local AutoActionsSection = controlsTab:AddSection({
    Name = "Auto Actions"
})

-- Info section
local infoSection = infoTab:AddSection({
    Name = "Information"
})

-- Variables to manage auto-cutting, auto-joining, and auto-leaving state
local isAutoCutting = false
local autoCutCoroutine = nil
local isAutoJoining = false
local isAutoLeaving = false

-- Function to start auto-cutting
local function StartAutoCut()
    if isAutoCutting then
        OrionLib:MakeNotification({
            Name = "Error",
            Content = "Auto-cutting is already running.",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        return
    end

    isAutoCutting = true
    autoCutCoroutine = coroutine.create(function()
        while isAutoCutting do
            game:GetService("ReplicatedStorage").Cut:FireServer()
            wait(1)  -- Adjust the wait time as needed
        end
    end)
    coroutine.resume(autoCutCoroutine)

    OrionLib:MakeNotification({
        Name = "Auto-Cut Started",
        Content = "The auto-cut process has started.",
        Image = "rbxassetid://4483345998",
        Time = 3
    })
end

-- Function to stop auto-cutting
local function StopAutoCut()
    if not isAutoCutting then
        OrionLib:MakeNotification({
            Name = "Error",
            Content = "Auto-cutting is not running.",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        return
    end

    isAutoCutting = false
    if autoCutCoroutine then
        coroutine.yield(autoCutCoroutine) -- Stop the coroutine
    end

    OrionLib:MakeNotification({
        Name = "Auto-Cut Stopped",
        Content = "The auto-cut process has stopped.",
        Image = "rbxassetid://4483345998",
        Time = 3
    })
end

-- Function to print player count
local function PrintPlayerCount()
    local Players = game:GetService("Players")
    local playerCount = #Players:GetPlayers()
    print("Number of players in the game: " .. playerCount)
end

-- Function to refresh the character
local function RefreshCharacter()
    local player = game.Players.LocalPlayer
    if player then
        -- Clear existing character if any
        if player.Character then
            player.Character:BreakJoints()  -- This effectively resets the character
        end

        -- Wait for a short period to ensure the character is fully cleared
        wait(1)

        -- Load the character again
        player:LoadCharacter()
    end
end

-- Function to start auto-joining
local function StartAutoJoin()
    if isAutoJoining then
        OrionLib:MakeNotification({
            Name = "Error",
            Content = "Auto-joining is already running.",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        return
    end

    isAutoJoining = true
    while isAutoJoining do
        game:GetService("ReplicatedStorage").Enter:FireServer()
        wait(10) -- Adjust the wait time as needed
    end
end

-- Function to stop auto-joining
local function StopAutoJoin()
    if not isAutoJoining then
        OrionLib:MakeNotification({
            Name = "Error",
            Content = "Auto-joining is not running.",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        return
    end

    isAutoJoining = false
end

-- Function to start auto-leaving
local function StartAutoLeave()
    if isAutoLeaving then
        OrionLib:MakeNotification({
            Name = "Error",
            Content = "Auto-leaving is already running.",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        return
    end

    isAutoLeaving = true
    while isAutoLeaving do
        game:GetService("ReplicatedStorage").Leave:FireServer()
        wait(10) -- Adjust the wait time as needed
    end
end

-- Function to stop auto-leaving
local function StopAutoLeave()
    if not isAutoLeaving then
        OrionLib:MakeNotification({
            Name = "Error",
            Content = "Auto-leaving is not running.",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        return
    end

    isAutoLeaving = false
end

-- Add buttons and toggles to sections
controlsTab:AddButton({
    Name = "Start Auto-Cut",
    Callback = StartAutoCut
})

controlsTab:AddButton({
    Name = "Stop Auto-Cut",
    Callback = StopAutoCut
})

controlsTab:AddToggle({
    Name = "Toggle Auto-Cut",
    Default = false,
    Callback = function(state)
        if state then
            StartAutoCut()
        else
            StopAutoCut()
        end
    end
})

-- Add a button to the "Miscellaneous" section for printing player count
MiscSection:AddButton({
    Name = "Print Player Count",
    Callback = PrintPlayerCount
})

-- Add a button to the "Miscellaneous" section for refreshing
MiscSection:AddButton({
    Name = "Refresh Character",
    Callback = RefreshCharacter
})

-- Add a toggle to the "Auto Actions" section for Auto Join
AutoActionsSection:AddToggle({
    Name = "Auto Join",
    Default = false,
    Callback = function(value)
        if value then
            StartAutoJoin()
        else
            StopAutoJoin()
        end
    end
})

-- Add a toggle to the "Auto Actions" section for Auto Leave
AutoActionsSection:AddToggle({
    Name = "Auto Leave",
    Default = false,
    Callback = function(value)
        if value then
            StartAutoLeave()
        else
            StopAutoLeave()
        end
    end
})

-- Add credits to the Info tab
infoSection:AddLabel("Developed by: BrySadW")
infoSection:AddLabel("GitHub: https://github.com/BrySadW")
infoSection:AddLabel("Discord: dr.rox")

-- Add additional features to the Info tab
infoSection:AddButton({
    Name = "Open GitHub",
    Callback = function()
        -- Open GitHub or other relevant site
        game:GetService("HttpService"):GetAsync("https://github.com/BrySadW")
    end
})

-- Example of another feature (e.g., an additional toggle or button)
infoSection:AddButton({
    Name = "Example Feature",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "Feature",
            Content = "This is an example feature.",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
    end
})

-- Add info labels to Info tab
infoSection:AddLabel("Auto-Cutting Feature: Automatically cuts when enabled.")
infoSection:AddLabel("Control the feature using the buttons or toggle.")
