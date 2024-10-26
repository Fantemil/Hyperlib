-- FPS Cap Script with Advanced Mode
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui

-- Create Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 250, 0, 100)
frame.Position = UDim2.new(0.5, -125, 0.5, -50)
frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
frame.Active = true
frame.Draggable = true
frame.Parent = screenGui

-- Create TextBox
local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0, 140, 0, 50)
textBox.Position = UDim2.new(0, 10, 0, 10)
textBox.PlaceholderText = "Enter FPS Cap"
textBox.Text = ""
textBox.Parent = frame

-- Create Set FPS Button
local setButton = Instance.new("TextButton")
setButton.Size = UDim2.new(0, 80, 0, 30)
setButton.Position = UDim2.new(0, 10, 0, 70)
setButton.Text = "Set FPS"
setButton.Parent = frame

-- Create Advanced Button
local advancedButton = Instance.new("TextButton")
advancedButton.Size = UDim2.new(0, 80, 0, 50)
advancedButton.Position = UDim2.new(0, 160, 0, 10)
advancedButton.Text = "Advanced"
advancedButton.Parent = frame

local isAdvanced = false
local connection

-- Function to set FPS cap
local function setFPSCap(fps)
    if connection then
        connection:Disconnect()
    end

    if not fps or fps <= 0 or fps ~= fps then -- Check for invalid input
        fps = 1 -- Default to 60 FPM
    end

    local frameTime = isAdvanced and (60 / fps) or (1 / fps)
    connection = RunService.RenderStepped:Connect(function()
        local startTime = tick()
        RunService.Heartbeat:Wait()
        while (tick() - startTime) < frameTime do
            -- Wait until the next frame
        end
    end)
end

-- Set Button click event
setButton.MouseButton1Click:Connect(function()
    local fps = tonumber(textBox.Text)
    if fps and fps > 0 then
        setFPSCap(fps)
    else
        textBox.Text = "Invalid number"
        setFPSCap(1) -- Default to 60 FPM
    end
end)

-- Advanced Button click event
advancedButton.MouseButton1Click:Connect(function()
    isAdvanced = not isAdvanced
    if isAdvanced then
        advancedButton.Text = "Basic"
        textBox.PlaceholderText = "Enter FPM Cap"
        setButton.Text = "Set FPM"
    else
        advancedButton.Text = "Advanced"
        textBox.PlaceholderText = "Enter FPS Cap"
        setButton.Text = "Set FPS"
    end
end)