local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({
    Name = "KioHub", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "OrionTest"
})

-- Get the player's character
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Create the Special tab with the Awakening Name textbox
local SpecialTab = Window:MakeTab({
    Name = "Special",
    Icon = "rbxassetid://72436427438218",
    PremiumOnly = false
})

local SpecialSection = SpecialTab:AddSection({
    Name = "Special"
})

-- Add the Awakening Name textbox in the Special tab
SpecialTab:AddTextbox({
    Name = "Awakening Name",
    Default = "",
    TextDisappear = true, -- Set to false if you want the text to remain after focus loss
    Callback = function(Text)
        -- Reference to the player's GUI to update MagicHealth label
        local magicHealthLabel = player.PlayerGui:WaitForChild("ScreenGui"):WaitForChild("MagicHealth"):WaitForChild("TextLabel")

        -- Change the text to the entered text
        magicHealthLabel.Text = Text

        print("Awakening Name: " .. Text)
    end
})