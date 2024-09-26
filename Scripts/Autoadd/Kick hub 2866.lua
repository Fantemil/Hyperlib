-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "UsernameGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a frame to hold the TextBox and TextButton
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.4, 0, 0.3, 0)
frame.Position = UDim2.new(0.3, 0, 0.35, 0)
frame.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- Green background
frame.Parent = screenGui

-- Create the TextBox for the username
local usernameTextBox = Instance.new("TextBox")
usernameTextBox.Name = "UsernameTextBox"
usernameTextBox.Size = UDim2.new(0.8, 0, 0.3, 0)
usernameTextBox.Position = UDim2.new(0.1, 0, 0.2, 0)
usernameTextBox.PlaceholderText = "Enter your username"
usernameTextBox.Parent = frame

-- Create the TextButton
local submitButton = Instance.new("TextButton")
submitButton.Name = "SubmitButton"
submitButton.Size = UDim2.new(0.8, 0, 0.3, 0)
submitButton.Position = UDim2.new(0.1, 0, 0.55, 0)
submitButton.Text = "Submit"
submitButton.Parent = frame

-- Create a label with text
local devLabel = Instance.new("TextLabel")
devLabel.Size = UDim2.new(1, 0, 0.1, 0)
devLabel.Position = UDim2.new(0, 0, 0, 0)
devLabel.Text = "DEV: ALAPATIVENKATARATNAM"
devLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text color
devLabel.BackgroundTransparency = 1
devLabel.Parent = frame

-- Function to handle button click
local function onButtonClick()
    local username = usernameTextBox.Text
    local player = game.Players:FindFirstChild(username)
    if player then
        player:Kick("You are banned. Have fun being banned for hacks and cheats!")
    else
        print("Player not found.")
    end
end

-- Connect the button click event to the function
submitButton.MouseButton1Click:Connect(onButtonClick)

-- Allow dragging of the GUI
local userInputService = game:GetService("UserInputService")
local dragging, dragInput, startPos

local function update(input)
    local delta = input.Position - dragInput
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

local function onInputBegan(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragInput = input.Position
        startPos = frame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end

userInputService.InputChanged:Connect(function(input)
    if dragging then
        update(input)
    end
end)

userInputService.InputBegan:Connect(onInputBegan)
