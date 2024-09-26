-- Load the Orion UI Library
local Library = loadstring(game:HttpGet("https://pastebin.com/raw/xwW9BAbn"))()

-- Create the window
local Window = Library:MakeWindow({Name = "Auto Teleport Script", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

-- Create a tab
local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Create a section in the tab
Tab:AddSection({
    Name = "Teleport"
})

-- Teleport coordinates
local teleportPosition = Vector3.new(-966.961182, 144.36174, 260.000458)

-- Auto Teleport toggle variable
local autoTeleportEnabled = false

-- Function to teleport the player
local function teleportPlayer()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    -- Check if the character exists and has a HumanoidRootPart (used for teleporting)
    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = CFrame.new(teleportPosition)
        print("Teleported to: " .. tostring(teleportPosition))
    else
        warn("Character or HumanoidRootPart not found!")
    end
end

-- Toggle for Auto Teleport
Tab:AddToggle({
    Name = "Auto Teleport",
    Default = false,
    Callback = function(state)
        autoTeleportEnabled = state
        print("Auto Teleport is " .. (state and "enabled" or "disabled"))

        -- Start auto-teleport if enabled
        while autoTeleportEnabled do
            teleportPlayer()
            wait(1)  -- Teleport interval (1 second)
        end
    end
})

-- Add a button for manual teleport
Tab:AddButton({
    Name = "Teleport",
    Callback = function()
        teleportPlayer()
    end    
})

-- Initialize the UI
OrionLib:Init()