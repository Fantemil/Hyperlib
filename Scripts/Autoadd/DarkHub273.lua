-- Gui to Lua
-- Version: 1.0
-- Gui Name: DarkHub v10
-- Game: Brockaven

game.StarterGui:SetCore("SendNotification", {
Title = "DarkHub";
Text = "Script made by DarkModder"; -- what the text says (ofc)
Duration = 10;
})

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local TextButton_6 = Instance.new("TextButton")
local TextButton_7 = Instance.new("TextButton")
local TextButton_8 = Instance.new("TextButton")
local TextButton_9 = Instance.new("TextButton")
local TextButton_10 = Instance.new("TextButton")
local TextButton_11 = Instance.new("TextButton")
local TextButton_12 = Instance.new("TextButton")
local TextButton_13 = Instance.new("TextButton")
local TextButton_14 = Instance.new("TextButton")
local TextButton_15 = Instance.new("TextButton")
local TextButton_16 = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
Main.BorderColor3 = Color3.fromRGB(255, 255, 255)
Main.BorderSizePixel = 5
Main.Position = UDim2.new(0.21171169, 0, 0.181818172, 0)
Main.Size = UDim2.new(0, 383, 0, 237)
Main.Active = true
Main.Draggable = true

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderSizePixel = 4
TextLabel.Position = UDim2.new(-0.0652741492, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 429, 0, 41)
TextLabel.Font = Enum.Font.PatrickHand
TextLabel.Text = "Brockaven Hub 1.0"
TextLabel.TextColor3 = Color3.fromRGB(225, 0, 3)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton.Parent = Main
TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton.BorderSizePixel = 3
TextButton.Position = UDim2.new(0.0208877288, 0, 0.23206751, 0)
TextButton.Size = UDim2.new(0, 68, 0, 30)
TextButton.Font = Enum.Font.PatrickHand
TextButton.Text = "Legad Admin"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.MouseButton1Down:connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/leg1337/legadmv2/main/legadminv2.lua'))()
end)
TextButton_2.Parent = Main
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_2.BorderSizePixel = 3
TextButton_2.Position = UDim2.new(0.263707578, 0, 0.23206751, 0)
TextButton_2.Size = UDim2.new(0, 68, 0, 30)
TextButton_2.Font = Enum.Font.PatrickHand
TextButton_2.Text = "Fates Admin"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true
TextButton_2.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
end)
TextButton_3.Parent = Main
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_3.BorderSizePixel = 3
TextButton_3.Position = UDim2.new(0.498694509, 0, 0.23206751, 0)
TextButton_3.Size = UDim2.new(0, 68, 0, 30)
TextButton_3.Font = Enum.Font.PatrickHand
TextButton_3.Text = "Iv Admin"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true
TextButton_3.MouseButton1Down:connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/BloodyBurns/Hexx/main/Iv%20Admin/Admin%202.lua'))()
end)
TextButton_4.Parent = Main
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_4.BorderSizePixel = 3
TextButton_4.Position = UDim2.new(0.736292422, 0, 0.23206751, 0)
TextButton_4.Size = UDim2.new(0, 68, 0, 30)
TextButton_4.Font = Enum.Font.PatrickHand
TextButton_4.Text = "Ghost Hub"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14.000
TextButton_4.TextWrapped = true
TextButton_4.MouseButton1Down:connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
end)
TextButton_5.Parent = Main
TextButton_5.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_5.BorderSizePixel = 3
TextButton_5.Position = UDim2.new(0.736292422, 0, 0.434599161, 0)
TextButton_5.Size = UDim2.new(0, 68, 0, 30)
TextButton_5.Font = Enum.Font.PatrickHand
TextButton_5.Text = "Ice Hub"
TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.TextScaled = true
TextButton_5.TextSize = 14.000
TextButton_5.TextWrapped = true
TextButton_5.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
end)
TextButton_6.Parent = Main
TextButton_6.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_6.BorderSizePixel = 3
TextButton_6.Position = UDim2.new(0.498694509, 0, 0.434599161, 0)
TextButton_6.Size = UDim2.new(0, 68, 0, 30)
TextButton_6.Font = Enum.Font.PatrickHand
TextButton_6.Text = "Resizer"
TextButton_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.TextScaled = true
TextButton_6.TextSize = 14.000
TextButton_6.TextWrapped = true
TextButton_6.MouseButton1Down:connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/Leg Resize'))()
--r15
end)
TextButton_7.Parent = Main
TextButton_7.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_7.BorderSizePixel = 3
TextButton_7.Position = UDim2.new(0.263707578, 0, 0.434599161, 0)
TextButton_7.Size = UDim2.new(0, 68, 0, 30)
TextButton_7.Font = Enum.Font.PatrickHand
TextButton_7.Text = "Keyboard"
TextButton_7.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_7.TextScaled = true
TextButton_7.TextSize = 14.000
TextButton_7.TextWrapped = true
TextButton_7.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)
TextButton_8.Parent = Main
TextButton_8.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_8.BorderSizePixel = 3
TextButton_8.Position = UDim2.new(0.0208877325, 0, 0.434599161, 0)
TextButton_8.Size = UDim2.new(0, 68, 0, 30)
TextButton_8.Font = Enum.Font.PatrickHand
TextButton_8.Text = "Chat Troll"
TextButton_8.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_8.TextScaled = true
TextButton_8.TextSize = 14.000
TextButton_8.TextWrapped = true
TextButton_8.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/vUsHbiTR"))()
end)
TextButton_9.Parent = Main
TextButton_9.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_9.BorderSizePixel = 3
TextButton_9.Position = UDim2.new(0.736292422, 0, 0.637130797, 0)
TextButton_9.Size = UDim2.new(0, 68, 0, 30)
TextButton_9.Font = Enum.Font.PatrickHand
TextButton_9.Text = "Editor Size Tall"
TextButton_9.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_9.TextScaled = true
TextButton_9.TextSize = 14.000
TextButton_9.TextWrapped = true
TextButton_9.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/gDmAuwhC",true))()
end)
TextButton_10.Parent = Main
TextButton_10.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_10.BorderSizePixel = 3
TextButton_10.Position = UDim2.new(0.498694509, 0, 0.637130797, 0)
TextButton_10.Size = UDim2.new(0, 68, 0, 30)
TextButton_10.Font = Enum.Font.PatrickHand
TextButton_10.Text = "Fe hancho"
TextButton_10.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_10.TextScaled = true
TextButton_10.TextSize = 14.000
TextButton_10.TextWrapped = true
TextButton_10.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/VWKwHNkD"))()
end)
TextButton_11.Parent = Main
TextButton_11.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_11.BorderSizePixel = 3
TextButton_11.Position = UDim2.new(0.263707578, 0, 0.637130797, 0)
TextButton_11.Size = UDim2.new(0, 68, 0, 30)
TextButton_11.Font = Enum.Font.PatrickHand
TextButton_11.Text = "Universal Admin"
TextButton_11.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_11.TextScaled = true
TextButton_11.TextSize = 14.000
TextButton_11.TextWrapped = true
TextButton_11.MouseButton1Down:connect(function()
loadstring(game:HttpGet('https://gist.githubusercontent.com/iiDk-the-actual/d14e473e35c851a3d6f93821f19287b8/raw/54fec68da51692cc96f5a987ab7cfbb83acb7856/SimpleAdmin%253C3U'))()
end)
TextButton_12.Parent = Main
TextButton_12.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_12.BorderSizePixel = 3
TextButton_12.Position = UDim2.new(0.0208877325, 0, 0.637130797, 0)
TextButton_12.Size = UDim2.new(0, 68, 0, 30)
TextButton_12.Font = Enum.Font.PatrickHand
TextButton_12.Text = "Aura Destrozer 1"
TextButton_12.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_12.TextScaled = true
TextButton_12.TextSize = 14.000
TextButton_12.TextWrapped = true
TextButton_12.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/f1Q3KhR7"))()
end)
TextButton_13.Parent = Main
TextButton_13.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_13.BorderSizePixel = 3
TextButton_13.Position = UDim2.new(0.0208877325, 0, 0.83544302, 0)
TextButton_13.Size = UDim2.new(0, 68, 0, 30)
TextButton_13.Font = Enum.Font.PatrickHand
TextButton_13.Text = "Aura Destrozer 2"
TextButton_13.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_13.TextScaled = true
TextButton_13.TextSize = 14.000
TextButton_13.TextWrapped = true
TextButton_13.MouseButton1Down:Connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/j9du6CyS"))()
end)
TextButton_14.Parent = Main
TextButton_14.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_14.BorderSizePixel = 3
TextButton_14.Position = UDim2.new(0.263707578, 0, 0.83544302, 0)
TextButton_14.Size = UDim2.new(0, 68, 0, 30)
TextButton_14.Font = Enum.Font.PatrickHand
TextButton_14.Text = "Big Hat V1"
TextButton_14.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_14.TextScaled = true
TextButton_14.TextSize = 14.000
TextButton_14.TextWrapped = true
TextButton_14.MouseButton1Down:Connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/i55hjHEE"))()
end)
TextButton_15.Parent = Main
TextButton_15.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_15.BorderSizePixel = 3
TextButton_15.Position = UDim2.new(0.498694539, 0, 0.83544302, 0)
TextButton_15.Size = UDim2.new(0, 68, 0, 30)
TextButton_15.Font = Enum.Font.PatrickHand
TextButton_15.Text = "All Emotes R15"
TextButton_15.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_15.TextScaled = true
TextButton_15.TextSize = 14.000
TextButton_15.TextWrapped = true
TextButton_15.MouseButton1Down:Connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/BloodyBurns/Hexx/main/R15%20Emotes/R15%20Emotes.lua'))()
end)
TextButton_16.Parent = Main
TextButton_16.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_16.BorderSizePixel = 3
TextButton_16.Position = UDim2.new(0.736292481, 0, 0.83544302, 0)
TextButton_16.Size = UDim2.new(0, 68, 0, 30)
TextButton_16.Font = Enum.Font.PatrickHand
TextButton_16.Text = "Abuser Game"
TextButton_16.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_16.TextScaled = true
TextButton_16.TextSize = 14.000
TextButton_16.TextWrapped = true
TextButton_16.MouseButton1Down:Connect(function()
loadstring(game:HttpGet("https://pastefy.ga/MtsA4gBU/raw"))()
end)
TextLabel_2.Parent = Main
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BorderSizePixel = 4
TextLabel_2.Position = UDim2.new(-0.0652741492, 0, 0.995780587, 0)
TextLabel_2.Size = UDim2.new(0, 429, 0, 41)
TextLabel_2.Font = Enum.Font.PatrickHand
TextLabel_2.Text = "Script Made By JUANKO MODS"
TextLabel_2.TextColor3 = Color3.fromRGB(225, 0, 3)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true