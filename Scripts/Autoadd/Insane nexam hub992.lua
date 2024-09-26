-- LocalScript to be placed in StarterPlayerScripts

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DiscordNotification"
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Create a black background
local background = Instance.new("Frame")
background.Size = UDim2.new(1, 0, 1, 0)
background.Position = UDim2.new(0, 0, 0, 0)
background.BackgroundColor3 = Color3.new(0, 0, 0)
background.Parent = screenGui

-- Create Title Text
local title = Instance.new("TextLabel")
title.Size = UDim2.new(0.5, 0, 0.1, 0)
title.Position = UDim2.new(0.25, 0, 0.4, 0)
title.BackgroundTransparency = 1
title.Text = "Join the new discord server to be whitelisted so you can use the script."
title.TextColor3 = Color3.new(1, 1, 1)
title.TextScaled = true
title.Font = Enum.Font.SourceSansBold
title.Parent = screenGui

-- Create Copy Button
local copyButton = Instance.new("TextButton")
copyButton.Size = UDim2.new(0.5, 0, 0.1, 0)
copyButton.Position = UDim2.new(0.25, 0, 0.55, 0)
copyButton.BackgroundColor3 = Color3.new(1, 1, 1)
copyButton.Text = "Copy new discord server link"
copyButton.TextColor3 = Color3.new(0, 0, 0)
copyButton.TextScaled = true
copyButton.Font = Enum.Font.SourceSansBold
copyButton.Parent = screenGui

-- Function to copy text to clipboard
local function copyToClipboard(text)
    if setclipboard then
        setclipboard(text)
    elseif syn and syn.write_clipboard then
        syn.write_clipboard(text)
    elseif Clipboard then
        Clipboard.set(text)
    else
        warn("Clipboard copying is not supported on this exploit.")
    end
end

-- Connect button click to function
copyButton.MouseButton1Click:Connect(function()
    local discordLink = "https://discord.gg/jPpM5Pt8BP"
    copyToClipboard(discordLink)
end)