local screenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local executeButton = Instance.new("TextButton")
local clearButton = Instance.new("TextButton")
local minimizeButton = Instance.new("TextButton")
local closeButton = Instance.new("TextButton")
local recommendButton = Instance.new("TextButton")
local scriptInput = Instance.new("TextBox")
local label = Instance.new("TextLabel")
local uiCorner = Instance.new("UICorner")

local recommendGui = Instance.new("Frame")
local recommendLabel = Instance.new("TextLabel")
local executeRecommendButton1 = Instance.new("TextButton")
local executeRecommendButton2 = Instance.new("TextButton")
local closeRecommendButton = Instance.new("TextButton")
local executeRecommendButton3 = Instance.new("TextButton")

screenGui.Parent = game.CoreGui

frame.Size = UDim2.new(0, 500, 0, 350)
frame.Position = UDim2.new(0.5, -250, 0.5, -175)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Parent = screenGui
uiCorner.CornerRadius = UDim.new(0, 10)
uiCorner.Parent = frame

executeButton.Size = UDim2.new(0, 123, 0, 34)
executeButton.Position = UDim2.new(0, 20, 0, 310)
executeButton.Text = "Execute"
executeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
executeButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
executeButton.BorderSizePixel = 0
executeButton.Parent = frame
uiCorner:Clone().Parent = executeButton

clearButton.Size = UDim2.new(0, 123, 0, 34)
clearButton.Position = UDim2.new(0, 145, 0, 310)
clearButton.Text = "Clear"
clearButton.TextColor3 = Color3.fromRGB(255, 255, 255)
clearButton.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
clearButton.BorderSizePixel = 0
clearButton.Parent = frame
uiCorner:Clone().Parent = clearButton

minimizeButton.Size = UDim2.new(0, 40, 0, 30)
minimizeButton.Position = UDim2.new(0, 420, 0, 0)
minimizeButton.Text = "-"
minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeButton.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
minimizeButton.BorderSizePixel = 0
minimizeButton.Parent = frame
uiCorner:Clone().Parent = minimizeButton

closeButton.Size = UDim2.new(0, 40, 0, 30)
closeButton.Position = UDim2.new(0, 460, 0, 0)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BackgroundColor3 = Color3.fromRGB(128, 0, 0)
closeButton.BorderSizePixel = 0
closeButton.Parent = frame
uiCorner:Clone().Parent = closeButton

recommendButton.Size = UDim2.new(0, 123, 0, 34)
recommendButton.Position = UDim2.new(0, 370, 0, 310)
recommendButton.Text = "Recommend"
recommendButton.TextColor3 = Color3.fromRGB(255, 255, 255)
recommendButton.BackgroundColor3 = Color3.fromRGB(0, 0, 170)
recommendButton.BorderSizePixel = 0
recommendButton.Parent = frame
uiCorner:Clone().Parent = recommendButton

scriptInput.Size = UDim2.new(0, 480, 0, 250)
scriptInput.Position = UDim2.new(0, 10, 0, 40)
scriptInput.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
scriptInput.TextColor3 = Color3.fromRGB(255, 255, 255)
scriptInput.Font = Enum.Font.SourceSans
scriptInput.PlaceholderText = "Enter your script here..."
scriptInput.TextSize = 16
scriptInput.BorderSizePixel = 0
scriptInput.ClearTextOnFocus = false
scriptInput.MultiLine = true
scriptInput.Parent = frame
uiCorner:Clone().Parent = scriptInput

label.Size = UDim2.new(0, 410, 0, 30)
label.Position = UDim2.new(0, 10, 0, 0)
label.Text = "Josh Script Executor [Updated]"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
label.Font = Enum.Font.SourceSansBold
label.TextSize = 20
label.BorderSizePixel = 0
label.Parent = frame
uiCorner:Clone().Parent = label

-- Recommend GUI elements
recommendGui.Size = UDim2.new(0, 200, 0, 238)
recommendGui.Position = UDim2.new(0.5, -100, 0.5, -100)
recommendGui.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
recommendGui.BorderSizePixel = 0
recommendGui.Visible = false
recommendGui.Parent = screenGui
uiCorner:Clone().Parent = recommendGui

recommendLabel.Size = UDim2.new(0, 180, 0, 30)
recommendLabel.Position = UDim2.new(0, 10, 0, 10)
recommendLabel.Text = "Recommended Scripts"
recommendLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
recommendLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
recommendLabel.Font = Enum.Font.SourceSansBold
recommendLabel.TextSize = 18
recommendLabel.BorderSizePixel = 0
recommendLabel.Parent = recommendGui

executeRecommendButton1.Size = UDim2.new(0, 180, 0, 30)
executeRecommendButton1.Position = UDim2.new(0, 10, 0, 50)
executeRecommendButton1.Text = "Alexis Universal Script"
executeRecommendButton1.TextColor3 = Color3.fromRGB(255, 255, 255)
executeRecommendButton1.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
executeRecommendButton1.BorderSizePixel = 0
executeRecommendButton1.Parent = recommendGui
uiCorner:Clone().Parent = executeRecommendButton1

executeRecommendButton2.Size = UDim2.new(0, 180, 0, 30)
executeRecommendButton2.Position = UDim2.new(0, 10, 0, 90)
executeRecommendButton2.Text = "Infinite Yield"
executeRecommendButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
executeRecommendButton2.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
executeRecommendButton2.BorderSizePixel = 0
executeRecommendButton2.Parent = recommendGui
uiCorner:Clone().Parent = executeRecommendButton2

executeRecommendButton3.Size = UDim2.new(0, 180, 0, 30)
executeRecommendButton3.Position = UDim2.new(0, 10, 0, 134)
executeRecommendButton3.Text = "YARHM For Mm2/FLE"
executeRecommendButton3.TextColor3 = Color3.fromRGB(255, 255, 255)
executeRecommendButton3.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
executeRecommendButton3.BorderSizePixel = 0
executeRecommendButton3.Parent = recommendGui
uiCorner:Clone().Parent = executeRecommendButton3

closeRecommendButton.Size = UDim2.new(0, 180, 0, 30)
closeRecommendButton.Position = UDim2.new(0, 10, 0, 180)
closeRecommendButton.Text = "Close"
closeRecommendButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeRecommendButton.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
closeRecommendButton.BorderSizePixel = 0
closeRecommendButton.Parent = recommendGui
uiCorner:Clone().Parent = closeRecommendButton

-- Close main GUI button function
closeButton.MouseButton1Click:Connect(function()
screenGui:Destroy()
end)

-- Recommend button function to show recommend GUI
recommendButton.MouseButton1Click:Connect(function()
recommendGui.Visible = true
end)

-- Execute recommend button functions
executeRecommendButton1.MouseButton1Click:Connect(function()
local scriptUrl = "https://raw.githubusercontent.com/AlexScripts1/AlexUniversalV4/main/LUHHH"
local script = game:HttpGet(scriptUrl)
local func = loadstring(script)
if func then func() end
end)

executeRecommendButton2.MouseButton1Click:Connect(function()
local scriptUrl = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"
local script = game:HttpGet(scriptUrl)
local func = loadstring(script)
if func then func() end
end)

executeRecommendButton3.MouseButton1Click:Connect(function()
local scriptUrl = "https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua"
local script = game:HttpGet(scriptUrl)
local func = loadstring(script)
if func then func() end
end)


-- Close recommend GUI button function
closeRecommendButton.MouseButton1Click:Connect(function()
recommendGui.Visible = false
end)

-- Execute button function
executeButton.MouseButton1Click:Connect(function()
local script = scriptInput.Text
local func = loadstring(script)
if func then func() end
end)

-- Clear button function
clearButton.MouseButton1Click:Connect(function()
scriptInput.Text = ""
end)

-- Minimize button function
local isMinimized = false
minimizeButton.MouseButton1Click:Connect(function()
isMinimized = not isMinimized
if isMinimized then
scriptInput.Visible = false
executeButton.Visible = false
clearButton.Visible = false
recommendButton.Visible = false
frame.Size = UDim2.new(0, 500, 0, 35)
minimizeButton.Text = "+"
else
scriptInput.Visible = true
executeButton.Visible = true
clearButton.Visible = true
recommendButton.Visible = true
frame.Size = UDim2.new(0, 500, 0, 350)
minimizeButton.Text = "-"
end
end)

-- Draggable frame
local dragging
local dragInput
local dragStart
local startPos

local function updateInput(input)
local delta = input.Position - dragStart
frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

frame.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
dragging = true
dragStart = input.Position
startPos = frame.Position

input.Changed:Connect(function()
if input.UserInputState == Enum.UserInputState.End then
dragging = false
end
end)
end
end)

frame.InputChanged:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
dragInput = input
end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
if input == dragInput and dragging then
updateInput(input)
end
end)
