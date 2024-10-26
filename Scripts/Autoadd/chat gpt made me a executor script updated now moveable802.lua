-- UI Loader Script
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ExecuteButton = Instance.new("TextButton")
local ClearButton = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")

-- Properties
ScreenGui.Name = "ExecutorUI"
ScreenGui.Parent = game:GetService("CoreGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, -200, 0.5, -150)
Frame.Size = UDim2.new(0, 400, 0, 300)
Frame.Visible = true
Frame.Active = true
Frame.Draggable = true

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextBox.Position = UDim2.new(0.05, 0, 0.05, 0)
TextBox.Size = UDim2.new(0.9, 0, 0.7, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Enter script here..."
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 18
TextBox.TextWrapped = true
TextBox.TextYAlignment = Enum.TextYAlignment.Top
TextBox.ClearTextOnFocus = false
TextBox.MultiLine = true

ExecuteButton.Parent = Frame
ExecuteButton.BackgroundColor3 = Color3.fromRGB(0, 128, 255)
ExecuteButton.Position = UDim2.new(0.05, 0, 0.8, 0)
ExecuteButton.Size = UDim2.new(0.425, 0, 0.15, 0)
ExecuteButton.Font = Enum.Font.SourceSans
ExecuteButton.Text = "Execute"
ExecuteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecuteButton.TextSize = 18

ClearButton.Parent = Frame
ClearButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ClearButton.Position = UDim2.new(0.525, 0, 0.8, 0)
ClearButton.Size = UDim2.new(0.425, 0, 0.15, 0)
ClearButton.Font = Enum.Font.SourceSans
ClearButton.Text = "Clear"
ClearButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ClearButton.TextSize = 18

-- Functions
local function ExecuteScript()
    local scriptText = TextBox.Text
    if scriptText and scriptText ~= "" then
        loadstring(scriptText)()
    end
end

local function ClearText()
    TextBox.Text = ""
end

ExecuteButton.MouseButton1Click:Connect(ExecuteScript)
ClearButton.MouseButton1Click:Connect(ClearText)

-- Toggle UI Visibility
local UIS = game:GetService("UserInputService")
local function onKeyPress(input)
    if input.KeyCode == Enum.KeyCode.RightShift then
        Frame.Visible = not Frame.Visible
    end
end

UIS.InputBegan:Connect(onKeyPress)
