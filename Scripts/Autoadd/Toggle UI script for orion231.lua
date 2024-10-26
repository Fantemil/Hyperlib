local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ScreenGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

local Toggle = Instance.new("TextButton")
Toggle.Name = "Toggle"
Toggle.Parent = ScreenGui
Toggle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Start with red (off)
Toggle.BackgroundTransparency = 0.5  -- Set the button transparency to 0.5
Toggle.Position = UDim2.new(0, 0, 0.454706937, 0)
Toggle.Size = UDim2.new(0, 50, 0, 50)  -- Smaller size for a compact circular button
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "Close"  -- Start with "Close"
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248)
Toggle.TextSize = 18.000  -- Adjust text size for smaller button
Toggle.Draggable = true

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0.5, 0)  -- Make the button circular
Corner.Parent = Toggle

local isOn = false  -- Initial state is off

-- Function to handle the "On" state
local function onButtonClicked()
    -- Add your code for what should happen when the button is in the "On" state
    if gethui():FindFirstChild("Orion") then
        gethui().Orion.Enabled = not gethui().Orion.Enabled
    end
end

-- Function to handle the "Off" state
local function offButtonClicked()
    -- Add your code for what should happen when the button is in the "Off" state
    if gethui():FindFirstChild("Orion") then
        gethui().Orion.Enabled = not gethui().Orion.Enabled
    end
end

Toggle.MouseButton1Click:Connect(function()
    isOn = not isOn  -- Toggle state
    if isOn then
        Toggle.BackgroundColor3 = Color3.fromRGB(0, 255, 0)  -- Green (on)
        Toggle.Text = "Open"
        onButtonClicked()  -- Call the function for "On" state
    else
        Toggle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Red (off)
        Toggle.Text = "Close"
        offButtonClicked()  -- Call the function for "Off" state
    end
end)

-- Paste Your Script Orion Here
-- orion blue themed https://github.com/RScripter/ORION-BLUE-THEME
-- orion original https://github.com/shlexware/orion