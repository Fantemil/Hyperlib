-- RRKILLER SPEED Script

local players = game:GetService("Players")
local player = players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Default speed variable
local defaultSpeed = 16 -- Default walking speed
local speed = defaultSpeed -- Current speed

-- Function to create the UI
local function createUI()
    local ScreenGui = Instance.new("ScreenGui", player.PlayerGui)
    local Frame = Instance.new("Frame", ScreenGui)
    Frame.Position = UDim2.new(0.5, -100, 0.5, -50)
    Frame.Size = UDim2.new(0, 200, 0, 150)
    Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Red background color
    Frame.BackgroundTransparency = 0.2
    Frame.Active = true
    Frame.Draggable = true -- Make the frame draggable

    local TitleLabel = Instance.new("TextLabel", Frame)
    TitleLabel.Size = UDim2.new(1, 0, 0.33, 0)
    TitleLabel.Text = "RRKILLER SPEED"
    TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Font = Enum.Font.SourceSansBold
    TitleLabel.TextScaled = true

    local TextLabel = Instance.new("TextLabel", Frame)
    TextLabel.Position = UDim2.new(0, 0, 0.33, 0)
    TextLabel.Size = UDim2.new(1, 0, 0.33, 0)
    TextLabel.Text = "Choose your speed"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.TextScaled = true

    local TextBox = Instance.new("TextBox", Frame)
    TextBox.Position = UDim2.new(0, 10, 0.66, 0)
    TextBox.Size = UDim2.new(1, -20, 0.34, 0)
    TextBox.Text = tostring(defaultSpeed)
    TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextBox.BackgroundTransparency = 0.3
    TextBox.Font = Enum.Font.SourceSans
    TextBox.TextScaled = true

    -- Function to adjust the speed
    TextBox.FocusLost:Connect(function(enterPressed)
        if enterPressed then
            local newSpeed = tonumber(TextBox.Text)
            if newSpeed and newSpeed >= 0 and newSpeed <= 1000 then
                speed = newSpeed
                humanoid.WalkSpeed = speed
            else
                TextBox.Text = tostring(defaultSpeed) -- Reset to default speed in case of error
            end
        end
    end)

    -- Reset speed when the character respawns
    player.CharacterAdded:Connect(function(newCharacter)
        character = newCharacter
        humanoid = character:WaitForChild("Humanoid")
        speed = defaultSpeed
        humanoid.WalkSpeed = speed
        TextBox.Text = tostring(defaultSpeed)
    end)
end

-- Create the UI
createUI()

-- Apply the initial speed when the script starts
humanoid.WalkSpeed = speed

print("RRKILLER SPEED Script activated.")