local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Gui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")

Gui.Parent = LocalPlayer:FindFirstChild("PlayerGui")
TextLabel.Parent = Gui

TextLabel.Size = UDim2.new(0, 300, 0, 100)
TextLabel.Position = UDim2.new(0.5, -150, 0.5, -50) -- Center the label on the screen
TextLabel.Text = "Join our Discord server at discord.gg/nitr to get the script for free, silly goose"
TextLabel.TextWrapped = true
TextLabel.TextSize = 24
TextLabel.Font = Enum.Font.SourceSans
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BackgroundTransparency = 0.5
TextLabel.BorderSizePixel = 0

local function showDiscordInvite()
    TextLabel.Visible = true
    wait(10) -- Display the invite for 5 seconds
    TextLabel.Visible = false
end

-- Run this function every time you want to show the invite
showDiscordInvite()
