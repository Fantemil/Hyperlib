-- Load the Kavo UI Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

-- Create the main window
local Window = Library.CreateLib("Speed Changer", "Ocean")

-- Create a tab
local Tab = Window:NewTab("Speed Control")

-- Create a section in the tab
local Section = Tab:NewSection("Change Speed")

-- Add a textbox for speed input
Section:NewTextBox("Set Speed", "Enter a number to change speed", function(txt)
    -- Convert the input to a number
    local speed = tonumber(txt)
    
    -- Check if the input is a valid number
    if speed then
        -- Get the local player
        local player = game.Players.LocalPlayer
        
        -- Check if the player's character exists
        if player.Character then
            -- Get the Humanoid
            local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
            
            -- Set the walk speed
            if humanoid then
                humanoid.WalkSpeed = speed
                print("Speed set to: " .. speed)
            else
                print("Humanoid not found")
            end
        else
            print("Character not found")
        end
    else
        print("Please enter a valid number")
    end
end)

-- Add a button to reset speed to default (16)
Section:NewButton("Reset Speed", "Reset speed to default (16)", function()
    local player = game.Players.LocalPlayer
    if player.Character then
        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = 16
            print("Speed reset to default (16)")
        end
    end
end)- Load Kavo UI Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

-- Create a new window
local Window = Library.CreateLib("Speed Changer", "Ocean")

-- Create a new tab
local Tab = Window:NewTab("Main")

-- Create a new section within the tab
local Section = Tab:NewSection("Speed Controls")

-- Add a button to the section to set the speed to 90
Section:NewButton("Set Speed to 90", "Sets the player's walk speed to 90", function()
    local player = game.Players.LocalPlayer
    player.Character.Humanoid.WalkSpeed = 90
end)

-- Optional: Reset speed button
Section:NewButton("Reset Speed", "Resets the player's walk speed to default", function()
    local player = game.Players.LocalPlayer
    player.Character.Humanoid.WalkSpeed = 16
end)