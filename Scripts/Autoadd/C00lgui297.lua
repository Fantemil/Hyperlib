-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "LeftSideGUI"
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

-- Set the display order
screenGui.DisplayOrder = 10

-- Create the Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 120, 0, 150) -- Adjusted size to accommodate all elements
frame.Position = UDim2.new(0, 10, 0.75, -80) -- Left side of the screen, a bit lower
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.BorderSizePixel = 2
frame.BorderColor3 = Color3.fromRGB(0, 0, 0) -- Black border
frame.Parent = screenGui

-- Create the Speed TextBox
local speedTextBox = Instance.new("TextBox")
speedTextBox.Size = UDim2.new(0, 100, 0, 25)
speedTextBox.Position = UDim2.new(0.5, -50, 0, 10) -- Top of the frame
speedTextBox.PlaceholderText = "Speed (Amount)"
speedTextBox.Parent = frame

-- Create the Jump TextBox
local jumpTextBox = Instance.new("TextBox")
jumpTextBox.Size = UDim2.new(0, 100, 0, 25)
jumpTextBox.Position = UDim2.new(0.5, -50, 0, 45) -- Below the speed text box
jumpTextBox.PlaceholderText = "Jump (Amount)"
jumpTextBox.Parent = frame

-- Create the ESP Toggle Button
local espToggle = Instance.new("TextButton")
espToggle.Size = UDim2.new(0, 100, 0, 25)
espToggle.Position = UDim2.new(0.5, -50, 0, 80) -- Below the jump text box
espToggle.Text = "ESP: Off"
espToggle.Parent = frame

-- Variable to keep track of ESP state
local espEnabled = false

-- Function to toggle ESP
local function toggleESP()
    espEnabled = not espEnabled
    if espEnabled then
        espToggle.Text = "ESP: On"
        -- Add code to enable ESP
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player.Character then
                local torso = player.Character:FindFirstChild("HumanoidRootPart")
                if torso then
                    local esp = Instance.new("BoxHandleAdornment")
                    esp.Name = "ESP"
                    esp.Adornee = torso
                    esp.Size = torso.Size
                    esp.Color3 = Color3.new(1, 0, 0) -- Red color
                    esp.AlwaysOnTop = true
                    esp.ZIndex = 1
                    esp.Parent = torso
                end
            end
        end
    else
        espToggle.Text = "ESP: Off"
        -- Add code to disable ESP
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player.Character then
                local torso = player.Character:FindFirstChild("HumanoidRootPart")
                if torso then
                    local esp = torso:FindFirstChild("ESP")
                    if esp then
                        esp:Destroy()
                    end
                end
            end
        end
    end
end

-- Connect the button click event to the toggleESP function
espToggle.MouseButton1Click:Connect(toggleESP)

-- Function to update the player's speed
local function updateSpeed()
    local speedValue = tonumber(speedTextBox.Text)
    if speedValue then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speedValue
    end
end

-- Connect the TextBox 'FocusLost' event to the updateSpeed function
speedTextBox.FocusLost:Connect(updateSpeed)

-- Function to update the player's jump power
local function updateJump()
    local jumpValue = tonumber(jumpTextBox.Text)
    if jumpValue then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = jumpValue
    end
end

-- Connect the TextBox 'FocusLost' event to the updateJump function
jumpTextBox.FocusLost:Connect(updateJump)

-- Create the Credits label
local creditsLabel = Instance.new("TextLabel")
creditsLabel.Size = UDim2.new(0, 100, 0, 20)
creditsLabel.Position = UDim2.new(0.5, -50, 0, 115) -- Below the ESP toggle button
creditsLabel.Text = "Credits: ChatGPT & MrMaster"
creditsLabel.TextScaled = true
creditsLabel.Parent = frame