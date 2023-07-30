-- Create a LocalScript in StarterGui

-- Change this to the Key Enum you want to use to toggle night vision
local TOGGLE_KEY = Enum.KeyCode.N

-- Create the night vision filter
local nightVisionFilter = Instance.new("ColorCorrectionEffect")
nightVisionFilter.Name = "NightVisionFilter"
nightVisionFilter.Brightness = 0.2
nightVisionFilter.Contrast = 1
nightVisionFilter.Saturation = 1
nightVisionFilter.TintColor = Color3.new(0, 0, 0)
nightVisionFilter.Enabled = false

-- Insert the night vision filter into the game's Lighting object
game:GetService("Lighting").ColorCorrection:InsertFirstChild(nightVisionFilter)

-- Define a function to toggle the night vision filter
local function toggleNightVision()
    nightVisionFilter.Enabled = not nightVisionFilter.Enabled
end

-- Create a UserInputService object
local userInputService = game:GetService("UserInputService")

-- Connect the UserInputService's InputBegan event to the toggleNightVision function
userInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == TOGGLE_KEY and not gameProcessedEvent then
        toggleNightVision()
    end
end)

-- Create a ScreenGui in the StarterGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "Night Vision Script"
screenGui.Parent = game:GetService("StarterGui")

-- Create a TextLabel to display instructions for the player
local instructions = Instance.new("TextLabel")
instructions.Name = "Instructions"
instructions.Text = "Press " .. TOGGLE_KEY.Name .. " to toggle night vision"
instructions.Position = UDim2.new(0.5, 0, 0.5, 0)
instructions.Size = UDim2.new(0, 200, 0, 50)
instructions.Parent = screenGui

-- Create a TouchEnabled check to enable touch support on mobile and tablet devices
if userInputService.TouchEnabled then
    local guiButton = Instance.new("TextButton")
    guiButton.Name = "ToggleButton"
    guiButton.Text = "Toggle Night Vision"
    guiButton.Size = UDim2.new(0, 150, 0, 50)
    guiButton.Position = UDim2.new(0.5, 0, 0.75, 0)
    guiButton.Parent = screenGui
    
    -- Connect the GuiButton's MouseButton1Click event to the toggleNightVision function
    guiButton.MouseButton1Click:Connect(function()
        toggleNightVision()
    end)
end
