
--[[ 
    WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]

-- Load Rayfield Interface Suite from a verified URL (Ensure the URL is verified)
local Rayfield = loadstring(game:HttpGet('https://verified-url/rayfield'))()

-- Create the main window for the script
local Window = Rayfield:CreateWindow({
    Name = "aksh69's Blox Fruits Script",
    LoadingTitle = "Rayfield Interface Suite",
    LoadingSubtitle = "by RetributionMK8", -- Adjust credits accordingly
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "BloxFruitsHub", -- Optional: custom folder for script settings
        FileName = "RBS"
    },
    Discord = {
        Enabled = false, -- Enable if you have a Discord server
        Invite = "", -- Add your Discord invite code
        RememberJoins = true -- Remember if users join your Discord server
    },
    KeySystem = false, -- No key system enabled
})

-- Create a tab named "Fruits"
local MainTab = Window:CreateTab("Fruits")

-- Add a section under the tab for "Blox Fruits"
local MainSection = MainTab:CreateSection("Blox Fruits Features")

-- Notify the player that the script has been successfully executed
Rayfield:Notify({
    Title = "Script Executed!",
    Content = "Thanks for using RetributionMK8's Blox Fruits Script",
    Duration = 5, -- Notification lasts for 5 seconds
    Actions = {
        Ignore = {
            Name = "Okay!",
            Callback = function()
                print("User acknowledged the notification.")
            end
        }
    }
})

-- Create a button for "Find Fruits" functionality
local Button = MainTab:CreateButton({
    Name = "Find Fruits",
    Callback = function()
        -- Load and execute an external script to find fruits (Ensure the URL is valid)
        loadstring(game:HttpGet("https://verified-url/find-fruits"))()
    end
})

-- Load additional external scripts (Ensure the URLs are valid)
loadstring(game:HttpGet("https://raw.githubusercontent.com/xDepressionx/Free-Script/main/BloxFruit.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/RaitoHub/main/Script"))()

-- Handling Dark Blade functionality
local replicatedStorage = game:GetService("ReplicatedStorage")
local darkBladeTool = replicatedStorage:FindFirstChild("DarkBlade") -- Ensure the tool exists

if not darkBladeTool then
    warn("DarkBlade tool not found in ReplicatedStorage.")
else
    -- Reference to the player
    local player = game.Players.LocalPlayer

    -- Create a GUI button to obtain the Dark Blade
    local screenGui = Instance.new("ScreenGui")
    local tabButton = Instance.new("TextButton")

    -- Set properties for the ScreenGui and Button
    screenGui.Parent = player:WaitForChild("PlayerGui")
    screenGui.Name = "DarkBladeTab"

    tabButton.Parent = screenGui
    tabButton.Size = UDim2.new(0, 200, 0, 50) -- Button dimensions
    tabButton.Position = UDim2.new(0.5, -100, 0.5, 0) -- Button position (centered)
    tabButton.Text = "Get Dark Blade"
    tabButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Black background
    tabButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
    tabButton.Font = Enum.Font.SourceSansBold
    tabButton.TextSize = 20

    -- Add functionality to give the Dark Blade when the button is clicked
    tabButton.MouseButton1Click:Connect(function()
        -- Check if the player already has the Dark Blade
        if not player.Backpack:FindFirstChild("DarkBlade") then
            -- Clone the Dark Blade and give it to the player
            local darkBladeClone = darkBladeTool:Clone()
            darkBladeClone.Parent = player.Backpack
            print("Dark Blade given to player")
        else
            print("Player already has the Dark Blade")
        end
    end)
end
