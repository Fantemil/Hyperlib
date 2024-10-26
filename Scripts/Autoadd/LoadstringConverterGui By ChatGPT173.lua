-- Open Source Codes
-- Do What Ever You With My Script
-- Credits : Irfannnnn

-- Function to create a notification
local function createNotification(title, text, icon, duration)
    local NotificationService = game:GetService("NotificationService")
    local notification = {
        Title = title,
        Text = text,
        Icon = icon,
        Duration = duration
    }
    NotificationService:CreateNotification(notification):Display()
end

-- Create the GUI
local gui = Instance.new("ScreenGui")
gui.Name = "ScriptConverterGUI"
gui.ResetOnSpawn = false
gui.Parent = game.Players.LocalPlayer.PlayerGui

local frame = Instance.new("Frame")
frame.Name = "ScriptLoader"
frame.Size = UDim2.new(0, 300, 0, 400)
frame.Position = UDim2.new(0.5, -150, 0.5, -200)
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local inputTextBox = Instance.new("TextBox")
inputTextBox.Name = "InputTextBox"
inputTextBox.Size = UDim2.new(0.95, 0, 0.45, 0)
inputTextBox.Position = UDim2.new(0.025, 0, 0.025, 0)
inputTextBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
inputTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
inputTextBox.TextWrapped = true
inputTextBox.ClearTextOnFocus = false
inputTextBox.Text = "Paste or type any script here..."
inputTextBox.MultiLine = true
inputTextBox.Parent = frame

local outputTextBox = Instance.new("TextBox")
outputTextBox.Name = "OutputTextBox"
outputTextBox.Size = UDim2.new(0.95, 0, 0.45, 0)
outputTextBox.Position = UDim2.new(0.025, 0, 0.525, 0)
outputTextBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
outputTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
outputTextBox.TextWrapped = true
outputTextBox.ClearTextOnFocus = false
outputTextBox.TextEditable = false
outputTextBox.Text = "Converted script will appear here..."
outputTextBox.MultiLine = true
outputTextBox.Parent = frame

local convertButton = Instance.new("TextButton")
convertButton.Name = "ConvertButton"
convertButton.Size = UDim2.new(0.9, 0, 0.1, 0)
convertButton.Position = UDim2.new(0.05, 0, 0.95, 0)
convertButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
convertButton.TextColor3 = Color3.fromRGB(255, 255, 255)
convertButton.Text = "Convert"
convertButton.Parent = frame

-- Function to convert input to output and display notification
local function convertInput()
    local inputText = inputTextBox.Text
    local convertedText = "loadstring(game:HttpGet(\"" .. inputText .. "\"))()"
    outputTextBox.Text = convertedText
    createNotification("Script Converted!", "Thanks for using my script!", "https://cdn.restorecord.com/logo512.png", 10)
end

-- Connect button click event
convertButton.MouseButton1Click:Connect(convertInput)

-- Create the Open/Close button
local openCloseButton = Instance.new("TextButton")
openCloseButton.Name = "OpenCloseButton"
openCloseButton.Size = UDim2.new(0, 100, 0, 30)
openCloseButton.Position = UDim2.new(0, 10, 0, 625)
openCloseButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
openCloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
openCloseButton.Text = "Open Script Loader"
openCloseButton.Parent = gui

-- Function to toggle visibility of the ScriptLoader frame
local function toggleScriptLoader()
    frame.Visible = not frame.Visible
    if frame.Visible then
        openCloseButton.Text = "Close Script Loader"
    else
        openCloseButton.Text = "Open Script Loader"
    end
end

-- Connect Open/Close button click event
openCloseButton.MouseButton1Click:Connect(toggleScriptLoader)