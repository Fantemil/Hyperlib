-- THIS SCRIPT WAS MADE BY: GodofLove076 --

-- Send notifications
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Wassupp",
    Text = "no by no",
})

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Wait...",
    Text = "Loading...",
})

wait()

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Loaded!",
    Text = "Have fun!",
})

-- Load the library
local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

-- Create the main window
local Window = Library.CreateLib("Project ZX", "Sentinel")

-- Create tabs and sections
local HomeTab = Window:NewTab("Home")
local WelcomeSection = HomeTab:NewSection("Welcome user")
local ScriptsSection = HomeTab:NewSection("Scripts In the Next Tab")
local CreditSection = HomeTab:NewSection("Roblox: GodofLove076")

local ScriptsTab = Window:NewTab("Scripts")
local ScriptsSection = ScriptsTab:NewSection("Scripts")

ScriptsSection:NewButton("BABFT Old quests", "BABFT Old quests", function()
    print("Clicked")
    loadstring(game:HttpGet('https://pastebin.com/raw/wZcf0PwT'))()
end)

ScriptsSection:NewButton("Domain X Hub", "Domain X script", function()
    print("Clicked")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/DomainX/main/source", true))()
end)

ScriptsSection:NewButton("Owl Hub", "MM2 Script", function()
    print("Clicked")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()
end)

ScriptsSection:NewButton("JulzHub", "Brookheaven", function()
    print("Clicked")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JulHubz/JulHub/main/JulHub"))()
end)

ScriptsSection:NewButton("Prison life", "Prison life Admin", function()
    print("Clicked")
    loadstring(game:HttpGet('https://raw.githubusercontent.com/elliexmln/PrizzLife/main/pladmin.lua'))()
end)

ScriptsSection:NewButton("Tiger X V3", "Tiger like rawr", function()
    print("Clicked")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/balintTheDevX/Tiger-X-V3/main/Tiger%20X%20its%20Back"))()
end)

local AdminTab = Window:NewTab("Admin")
local AdminSection = AdminTab:NewSection("Admin")

AdminSection:NewButton("Simple Spy", "Admin ig?", function()
    print("Clicked")
    loadstring(game:HttpGet("https://pastebin.com/raw/GE6Yii93", true))()
end)

AdminSection:NewButton("Infinite yield", "this good", function()
    print("Clicked")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)

AdminSection:NewButton("Fates Admin", "Admin ig???", function()
    print("Clicked")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua", true))()
end)

AdminSection:NewButton("Fedora Admin", "Admin", function()
    print("Clicked")
    loadstring(game:HttpGet('https://raw.githubusercontent.com/alexx1212/fedoratoomutch/main/toomucth'))()   
end)

AdminSection:NewButton("Nameless Admin", "nameless i think", function()
    print("Clicked")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source", true))()
end)

local HubTab = Window:NewTab("Hubs")
local HubSection = HubTab:NewSection("Hubs")

HubSection:NewButton("Op trolling hub", "...", function()
    --[[
    WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
    loadstring(game:HttpGet("https://pastebin.com/raw/bZFnsBZv"))()
end)

HubSection:NewButton("Syntax Hub ", "... ", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Memeboiyot/SyntaxRebornOfficial/main/SyntaxReborn", true))()
end)

HubSection:NewButton("Sky hub", "Sky", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/SkyHub.txt"))()  
end)

-- Create and play the sound
local Sound = Instance.new("Sound")
Sound.SoundId = "rbxassetid://6712558779"
Sound.Volume = 1
Sound.Parent = game:GetService("Workspace")
Sound:Play()

-- Ensure the sound stops and cleans up after it finishes playing
Sound.Ended:Connect(function()
    Sound:Destroy()
end)

-- Create a ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a frame for the background image
local BackgroundFrame = Instance.new("Frame")
BackgroundFrame.Size = UDim2.new(1, 0, 1, 0)
BackgroundFrame.BackgroundTransparency = 1
BackgroundFrame.Parent = ScreenGui

local BackgroundImage = Instance.new("ImageLabel")
BackgroundImage.Size = UDim2.new(1, 0, 1, 0)
BackgroundImage.BackgroundTransparency = 1
BackgroundImage.Image = "rbxassetid://<YOUR_IMAGE_ASSET_ID>"
BackgroundImage.Parent = BackgroundFrame

-- Create a button to toggle the GUI
local ToggleButton = Instance.new("TextButton")
ToggleButton.Size = UDim2.new(0, 50, 0, 50) -- Square button
ToggleButton.Position = UDim2.new(0, 10, 0, 10)
ToggleButton.BackgroundColor3 = Color3.new(1, 1, 1) -- White color
ToggleButton.Text = "" -- No text on the button
ToggleButton.Parent = ScreenGui

-- Make the button draggable
local UserInputService = game:GetService("UserInputService")
local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    ToggleButton.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

ToggleButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = ToggleButton.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

ToggleButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

-- Function to toggle the GUI
local guiVisible = true
local function toggleGUI()
    guiVisible = not guiVisible
    Window.MainFrame.Visible = guiVisible -- Assuming 'Window.MainFrame' is the main frame of the GUI
end

ToggleButton.MouseButton1Click:Connect(toggleGUI)