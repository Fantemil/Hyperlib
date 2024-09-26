-- Load the Kavo UI library
local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

-- Define the Midnight color scheme with custom colors
local colors = {
    SchemeColor = Color3.fromRGB(26, 189, 158),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(28, 29, 34),
    TextColor = Color3.fromRGB(255, 255, 255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}

-- Create the main window with the Midnight color scheme
local Window = Library.CreateLib("Roblox Account Info", colors)

-- Create the main tab
local Tab = Window:NewTab("Account Details")

-- Create a section for the account information
local Section = Tab:NewSection("Your Roblox Account")

-- Add a label for the player's username
local username = game.Players.LocalPlayer.Name
Section:NewLabel("Username: " .. username)

-- Add a label for the player's account age
local accountAge = game.Players.LocalPlayer.AccountAge
Section:NewLabel("Account Age: " .. tostring(accountAge) .. " days old")

-- Detect the type of executor being used
local executor = nil
if syn then
    executor = "Synapse X"
elseif KRNL_LOADED then
    executor = "KRNL"
elseif ScriptWare then
    executor = "Script-Ware"
elseif Fluxus then
    executor = "Fluxus"
elseif Sentinel then
    executor = "Sentinel"
elseif is_sirhurt_closure then
    executor = "Sirhurt"
elseif Vega_Loaded then
    executor = "Vega X"
else
    executor = "Unknown"
end

-- Add a label for the executor type
Section:NewLabel("Executor: " .. executor)

-- Create a new section for additional features
local FeatureSection = Tab:NewSection("Additional Features")

-- Add a button to copy the player's username to the clipboard
FeatureSection:NewButton("Copy Username", "Copies your username to the clipboard", function()
    setclipboard(username)
    Library:Notify("Username copied to clipboard!")
end)

-- Add a button to copy the player's account age to the clipboard
FeatureSection:NewButton("Copy Account Age", "Copies your account age to the clipboard", function()
    setclipboard(tostring(accountAge))
    Library:Notify("Account age copied to clipboard!")
end)

-- Add a button to copy the executor type to the clipboard
FeatureSection:NewButton("Copy Executor", "Copies the executor type to the clipboard", function()
    setclipboard(executor)
    Library:Notify("Executor type copied to clipboard!")
end)