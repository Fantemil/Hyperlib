local CommandPrompt = Instance.new("ScreenGui")
local TopFrame = Instance.new("Frame")
local HideFrame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Open = Instance.new("TextButton")
local Hide = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel_3 = Instance.new("TextLabel")

CommandPrompt.Name = "Command Prompt"
CommandPrompt.Parent = game.CoreGui

TopFrame.Name = "TopFrame"
TopFrame.Parent = CommandPrompt
TopFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TopFrame.BorderColor3 = Color3.fromRGB(40, 40, 40)
TopFrame.BorderSizePixel = 0
TopFrame.Position = UDim2.new(0.271897823, 0, 0.201195225, 0)
TopFrame.Size = UDim2.new(0, 500, 0, 25)

HideFrame.Name = "HideFrame"
HideFrame.Parent = TopFrame
HideFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
HideFrame.BorderColor3 = Color3.fromRGB(40, 40, 40)
HideFrame.BorderSizePixel = 0
HideFrame.Position = UDim2.new(-0.000102221966, 0, 0.96119523, 0)
HideFrame.Size = UDim2.new(0, 500, 0, 300)

TextBox.Parent = HideFrame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.Position = UDim2.new(0.316000015, 0, 0.13333334, 0)
TextBox.Size = UDim2.new(0, 341, 0, 260)
TextBox.Font = Enum.Font.Code
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 15.000
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

TextLabel.Parent = HideFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.00600000005, 0, -0.0333333351, 0)
TextLabel.Size = UDim2.new(0, 375, 0, 50)
TextLabel.Font = Enum.Font.Code
TextLabel.Text = "Roblox Corporation [Version 69.420.69420.1337]\nÂ© 2023 Roblox Corporation. All rights reserved."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 15.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_2.Parent = HideFrame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.00600000005, 0, 0.13333334, 0)
TextLabel_2.Size = UDim2.new(0, 155, 0, 15)
TextLabel_2.Font = Enum.Font.Code
TextLabel_2.Text = "C:\\Users\\Gaara2733>"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 15.000
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

Close.Name = "Close"
Close.Parent = TopFrame
Close.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.952000022, 0, 0, 0)
Close.Size = UDim2.new(0, 24, 0, 24)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 20.000
Close.TextYAlignment = Enum.TextYAlignment.Top
Close.MouseButton1Down:connect(function()
CommandPrompt:Destroy()
end)

Open.Name = "Open"
Open.Parent = TopFrame
Open.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0.904000044, 0, 0, 0)
Open.Size = UDim2.new(0, 24, 0, 24)
Open.Font = Enum.Font.SourceSans
Open.Text = "M"
Open.TextColor3 = Color3.fromRGB(255, 255, 255)
Open.TextSize = 20.000
Open.TextYAlignment = Enum.TextYAlignment.Top
Open.MouseButton1Down:connect(function()
HideFrame.Visible = true
    TextLabel.Visible = true
    TextLabel_2.Visible = true
end)

Hide.Name = "Hide"
Hide.Parent = TopFrame
Hide.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Hide.BorderSizePixel = 0
Hide.Position = UDim2.new(0.856000066, 0, 0, 0)
Hide.Size = UDim2.new(0, 24, 0, 24)
Hide.Font = Enum.Font.SourceSans
Hide.Text = "-"
Hide.TextColor3 = Color3.fromRGB(255, 255, 255)
Hide.TextSize = 20.000
Hide.TextYAlignment = Enum.TextYAlignment.Top
Hide.MouseButton1Down:connect(function()
HideFrame.Visible = false
    TextLabel.Visible = false
    TextLabel_2.Visible = false
end)

ImageLabel.Parent = TopFrame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.00600000005, 0, 0.119999997, 0)
ImageLabel.Size = UDim2.new(0, 18, 0, 18)
ImageLabel.Image = "http://www.roblox.com/asset/?id=5040009517"

TextLabel_3.Parent = TopFrame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.0480000004, 0, 0, 0)
TextLabel_3.Size = UDim2.new(0, 100, 0, 24)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Command Prompt"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 14.000

local function SADLHAH_fake_script() 
local script = Instance.new('LocalScript', TopFrame)

local UIS = game:GetService("UserInputService")
function dragify(Frame)
dragToggle = nil
local dragSpeed = 0
dragInput = nil
dragStart = nil
local dragPos = nil
function updateInput(input)
local Delta = input.Position - dragStart
local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
end
Frame.InputBegan:Connect(function(input)
if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
dragToggle = true
dragStart = input.Position
startPos = Frame.Position
input.Changed:Connect(function()
if input.UserInputState == Enum.UserInputState.End then
dragToggle = false
end
end)
end
end)
Frame.InputChanged:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
dragInput = input
end
end)
game:GetService("UserInputService").InputChanged:Connect(function(input)
if input == dragInput and dragToggle then
updateInput(input)
end
end)
end

dragify(script.Parent)
end
coroutine.wrap(SADLHAH_fake_script)()