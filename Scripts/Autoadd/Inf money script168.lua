--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- Load required Roblox services
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui

-- Create a Frame for the main UI
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 400, 0, 250)
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -125)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Sleek black background
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)

-- Make the Frame draggable
mainFrame.Active = true
mainFrame.Draggable = true

-- Round the corners of the Frame
local roundCorner = Instance.new("UICorner")
roundCorner.CornerRadius = UDim.new(0, 25)
roundCorner.Parent = mainFrame

-- Add the "Key system" bold, italic, and neon text at the top
local keySystemText = Instance.new("TextLabel")
keySystemText.Size = UDim2.new(0, 300, 0, 40)
keySystemText.Position = UDim2.new(0.5, -150, 0, 10)
keySystemText.BackgroundTransparency = 1
keySystemText.Text = "<b><i>Key System</i></b>"
keySystemText.TextColor3 = Color3.fromRGB(0, 255, 255) -- Neon cyan color
keySystemText.Font = Enum.Font.Garamond -- Sleek and rich font
keySystemText.TextScaled = true
keySystemText.RichText = true -- Enable rich text
keySystemText.Parent = mainFrame

-- Add the "Enter" button in the bottom right
local enterButton = Instance.new("TextButton")
enterButton.Size = UDim2.new(0, 100, 0, 50)
enterButton.Position = UDim2.new(1, -120, 1, -60)
enterButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- Neon green
enterButton.Text = "<b><i>Enter</i></b>"
enterButton.TextColor3 = Color3.fromRGB(255, 255, 255)
enterButton.Font = Enum.Font.Garamond -- Rich font for buttons too
enterButton.TextScaled = true
enterButton.RichText = true -- Enable rich text
enterButton.Parent = mainFrame

local enterCorner = Instance.new("UICorner")
enterCorner.CornerRadius = UDim.new(0, 25)
enterCorner.Parent = enterButton

-- Add a text input in the middle
local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0.7, 0, 0, 50)
textBox.Position = UDim2.new(0.5, -140, 0.5, -25)
textBox.PlaceholderText = "Enter your key..."
textBox.Text = ""
textBox.Font = Enum.Font.Garamond -- Rich text style
textBox.TextScaled = true
textBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Glossy dark background
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
textBox.Parent = mainFrame

local textBoxCorner = Instance.new("UICorner")
textBoxCorner.CornerRadius = UDim.new(0, 20)
textBoxCorner.Parent = textBox

-- Add a label for key validation feedback
local feedbackLabel = Instance.new("TextLabel")
feedbackLabel.Size = UDim2.new(0.7, 0, 0, 30)
feedbackLabel.Position = UDim2.new(0.5, -140, 0.5, 30)
feedbackLabel.BackgroundTransparency = 1
feedbackLabel.Text = ""
feedbackLabel.TextColor3 = Color3.fromRGB(255, 0, 0) -- Red for error messages
feedbackLabel.Font = Enum.Font.Garamond
feedbackLabel.TextScaled = true
feedbackLabel.Parent = mainFrame

-- Add the "Discord=Key" text in the bottom left
local discordText = Instance.new("TextLabel")
discordText.Size = UDim2.new(0, 150, 0, 20)
discordText.Position = UDim2.new(0, 10, 1, -80)
discordText.BackgroundTransparency = 1
discordText.Text = "<b><i>Discord = Key</i></b>"
discordText.TextColor3 = Color3.fromRGB(0, 255, 255) -- Neon cyan for Discord text
discordText.Font = Enum.Font.Garamond
discordText.TextScaled = true
discordText.RichText = true -- Rich text for this label too
discordText.Parent = mainFrame

-- Add the "Discord" button in the bottom left
local discordButton = Instance.new("TextButton")
discordButton.Size = UDim2.new(0, 100, 0, 50)
discordButton.Position = UDim2.new(0, 10, 1, -60)
discordButton.BackgroundColor3 = Color3.fromRGB(0, 102, 255) -- Neon blue button
discordButton.Text = "<b><i>Discord</i></b>"
discordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
discordButton.Font = Enum.Font.Garamond
discordButton.TextScaled = true
discordButton.RichText = true
discordButton.Parent = mainFrame

local discordCorner = Instance.new("UICorner")
discordCorner.CornerRadius = UDim.new(0, 25)
discordCorner.Parent = discordButton

-- Functionality for the Discord button
discordButton.MouseButton1Click:Connect(function()
    setclipboard("https://direct-link.net/1035621/dc-tycoon-very-good") -- Copy Discord link to clipboard
    feedbackLabel.TextColor3 = Color3.fromRGB(0, 255, 0) -- Green for success
    feedbackLabel.Text = "Discord link copied!"
    wait(3)
    feedbackLabel.Text = ""
end)

-- Add the "X" button to close the UI in the top right
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -40, 0, 10)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Neon red close button
closeButton.Text = "<b><i>X</i></b>"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Font = Enum.Font.Garamond
closeButton.TextScaled = true
closeButton.RichText = true
closeButton.Parent = mainFrame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 10)
closeCorner.Parent = closeButton

-- Close the GUI when the "X" button is clicked
closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Key validation logic
local correctKey = "quicktest" -- The actual key

enterButton.MouseButton1Click:Connect(function()
    if textBox.Text == correctKey then
        feedbackLabel.TextColor3 = Color3.fromRGB(0, 255, 0) -- Green for success
        feedbackLabel.Text = "Access granted!"
        
        wait(1) -- Short wait to confirm access

        -- Load the Kavo UI library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

-- Create the main window
local Window = Library.CreateLib("My Game GUI", "DarkTheme")

-- Create the "Main" tab
local MainTab = Window:NewTab("Main")

-- Create the "Credits" tab
local CreditsTab = Window:NewTab("Credits")

-- Create a section in the Main tab for toggles
local MainSection = MainTab:NewSection("Main Controls")

-- Function to fire the Inf Money remote
local function spamCash()
    while wait(0.1) do
        game:GetService("ReplicatedStorage").Rewards.Cash:FireServer()
    end
end

-- Toggle for Infinite Money
MainSection:NewToggle("Inf Money", "Toggle to spam cash remote.", function(state)
    if state then
        print("Inf Money enabled")  -- Debugging output
        spamCash()  -- Start spamming cash
    else
        print("Inf Money disabled")  -- Debugging output
    end
end)

-- Toggle for Auto Crates
MainSection:NewToggle("Auto Crates", "Toggle to auto-collect crates.", function(state)
    if state then
        print("Auto Crates enabled")  -- Debugging output
        while wait(2) do
            -- Scan for all CrateParent folders and collect crates
            for _, crateParent in ipairs(game:GetService("Workspace"):GetChildren()) do
                if crateParent:IsA("Folder") and crateParent.Name == "CrateParent" then
                    local cashCrate = crateParent:FindFirstChild("CashCrate")
                    if cashCrate then
                        cashCrate:FireServer()  -- Fire server for collecting cash crate
                        print("Collected a cash crate")  -- Debugging output
                    end
                end
            end
        end
    else
        print("Auto Crates disabled")  -- Debugging output
    end
end)

-- Create a section in the Credits tab for information
local CreditsSection = CreditsTab:NewSection("Credits")

-- Button in the Credits tab
CreditsSection:NewButton("Made by x11px on Discord", "Text button in credits.", function()
    print("Made by x11px on Discord")  -- You can change this to any other action if needed
end)

-- Show the window
Window:Show()


    else
        feedbackLabel.TextColor3 = Color3.fromRGB(255, 0, 0) -- Red for error
        feedbackLabel.Text = "Invalid key. Try again."
        print("Error: Invalid key entered.")
        wait(2)
        feedbackLabel.Text = "" -- Clear feedback text
    end
end)
