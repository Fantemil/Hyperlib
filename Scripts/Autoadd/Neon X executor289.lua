-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "NeonXExecutor"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false

-- Create a Frame for the executor (Movable)
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 600, 0, 350) -- Increased height to make it taller
frame.Position = UDim2.new(0.5, -300, 0.5, -175) -- Centered with increased height
frame.BackgroundColor3 = Color3.new(0, 0, 0) -- Black background
frame.Draggable = true
frame.Active = true
frame.Parent = screenGui

-- Title of the Executor
local titleLabel = Instance.new("TextLabel")
titleLabel.Text = "Neon X Executor"
titleLabel.Size = UDim2.new(1, 0, 0, 50)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 24
titleLabel.Parent = frame

-- Rainbow effect for title
local TweenService = game:GetService("TweenService")
local rainbowColors = {
    Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 127, 0),
    Color3.fromRGB(255, 255, 0), Color3.fromRGB(0, 255, 0),
    Color3.fromRGB(0, 255, 255), Color3.fromRGB(0, 0, 255),
    Color3.fromRGB(139, 0, 255)
}

local function createRainbowEffect(label)
    local currentIndex = 1
    while true do
        local tween = TweenService:Create(label, TweenInfo.new(0.5), {TextColor3 = rainbowColors[currentIndex]})
        tween:Play()
        tween.Completed:Wait()
        currentIndex = (currentIndex % #rainbowColors) + 1
    end
end

-- Run the rainbow effect for the title
spawn(function()
    createRainbowEffect(titleLabel)
end)

-- Create TextBox for script input
local scriptBox = Instance.new("TextBox")
scriptBox.Size = UDim2.new(0.65, -10, 0, 180) -- Adjusted height
scriptBox.Position = UDim2.new(0, 5, 0, 60)
scriptBox.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
scriptBox.TextColor3 = Color3.new(1, 1, 1)
scriptBox.Font = Enum.Font.Gotham
scriptBox.TextSize = 18
scriptBox.Text = ""
scriptBox.ClearTextOnFocus = false
scriptBox.MultiLine = true
scriptBox.Parent = frame

-- Create the Output Box (logs and error messages)
local outputBox = Instance.new("TextLabel")
outputBox.Size = UDim2.new(0.65, -10, 0, 50)
outputBox.Position = UDim2.new(0, 5, 0, 250) -- Moved down for more height
outputBox.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
outputBox.TextColor3 = Color3.new(1, 0, 0)
outputBox.Font = Enum.Font.Gotham
outputBox.TextSize = 16
outputBox.Text = "Output..."
outputBox.TextWrapped = true
outputBox.Parent = frame

-- Table to store the scan log
local scanLog = {}

-- Function to play sound when executing script
local function playExecutionSound()
    local sound = Instance.new("Sound", game.Players.LocalPlayer.PlayerGui)
    sound.SoundId = "rbxassetid://7271660285"
    sound:Play()
    game.Debris:AddItem(sound, 2)
end

-- Create Execute Button
local executeButton = Instance.new("TextButton")
executeButton.Size = UDim2.new(0.4, 0, 0, 40)
executeButton.Position = UDim2.new(0.05, 0, 0, 210)
executeButton.BackgroundColor3 = Color3.fromRGB(0, 255, 127) -- Neon green
executeButton.TextColor3 = Color3.new(1, 1, 1)
executeButton.Font = Enum.Font.GothamBold
executeButton.TextSize = 18
executeButton.Text = "Execute"
executeButton.Parent = frame

-- Execute the script from the TextBox when clicked
executeButton.MouseButton1Click:Connect(function()
    local scriptToRun = scriptBox.Text
    if scriptToRun and scriptToRun ~= "" then
        local success, errorMessage = pcall(function()
            loadstring(scriptToRun)()
        end)
        -- Check for FE compatibility (simple simulation here)
        local isFECompatible = (success and errorMessage == nil)

        -- Log the result in the scanLog
        table.insert(scanLog, {script = scriptToRun, feCompatible = isFECompatible})

        -- Display results in the Output Box
        if success then
            outputBox.Text = "Executed successfully!"
        else
            outputBox.Text = "Error: " .. errorMessage
        end
        playExecutionSound()

        -- Disable the script after execution (simulation)
        scriptBox.Text = "-- Script was executed and disabled for FE compatibility"

    else
        outputBox.Text = "No script to execute!"
    end
end)

-- Create Clear Button (moved up and slightly aligned with Execute button)
local clearButton = Instance.new("TextButton")
clearButton.Size = UDim2.new(0.4, 0, 0, 40)
clearButton.Position = UDim2.new(0.55, 0, 0, 170) -- Moved higher and aligned with Execute
clearButton.BackgroundColor3 = Color3.fromRGB(0, 255, 127) -- Neon green
clearButton.TextColor3 = Color3.new(1, 1, 1)
clearButton.Font = Enum.Font.GothamBold
clearButton.TextSize = 18
clearButton.Text = "Clear"
clearButton.Parent = frame

-- Clear the TextBox when clicked
clearButton.MouseButton1Click:Connect(function()
    scriptBox.Text = ""
end)

-- Create Scan Game Button
local scanButton = Instance.new("TextButton")
scanButton.Size = UDim2.new(0.4, 0, 0, 40)
scanButton.Position = UDim2.new(0.05, 0, 0, 270)
scanButton.BackgroundColor3 = Color3.fromRGB(0, 255, 127) -- Neon green
scanButton.TextColor3 = Color3.new(1, 1, 1)
scanButton.Font = Enum.Font.GothamBold
scanButton.TextSize = 18
scanButton.Text = "Scan Game"
scanButton.Parent = frame

-- Scan the game for joints and vulnerabilities
scanButton.MouseButton1Click:Connect(function()
    local partsWithJoints = {}
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("JointInstance") then
            table.insert(partsWithJoints, obj.Parent.Name)
        end
    end
    if #partsWithJoints > 0 then
        outputBox.Text = "Joints found in: " .. table.concat(partsWithJoints, ", ")
    else
        outputBox.Text = "No joints found."
    end
end)

-- Create a notification when executed
local function showNotification()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Neon X Executor",
        Text = "Made by team k00lkidd81",
        Icon = "rbxassetid://74242141997056",
        Duration = 5
    })
end

 -- Add the image slightly up with text above it
local imageText = Instance.new("TextLabel")
imageText.Text = "Team k00lkidd81 made it"
imageText.Size = UDim2.new(0.3, -10, 0, 30) -- Same width as the image
imageText.Position = UDim2.new(0.7, 5, 0, 50) -- Moved text above the image
imageText.BackgroundTransparency = 1
imageText.TextColor3 = Color3.new(1, 1, 1)
imageText.Font = Enum.Font.Gotham
imageText.TextSize = 16
imageText.Parent = frame

-- Create an Image for the bottom part (logo or custom image)
local logoImage = Instance.new("ImageLabel")
logoImage.Size = UDim2.new(0.3, -10, 0, 50)
logoImage.Position = UDim2.new(0.7, 5, 0, 100)
logoImage.Image = "rbxassetid://18782375225" -- Replace with your custom image ID
logoImage.BackgroundTransparency = 1
logoImage.Parent = frame

-- Notification function for Scan Button
local function showNotification()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Neon X Executor",
        Text = "Made by team k00lkidd81",
        Icon = "rbxassetid://74242141997056", -- Replace with your custom icon
        Duration = 5
    })
end

-- Call the notification when Scan Game is clicked
scanButton.MouseButton1Click:Connect(function()
    showNotification()
end)