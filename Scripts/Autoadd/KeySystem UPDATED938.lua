--UPDATED VERSION 
--made by fablo1358 

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local getKeyButton = Instance.new("TextButton")
local submitButton = Instance.new("TextButton")
local textBox = Instance.new("TextBox")
local uiCorner = Instance.new("UICorner")
local uiStroke = Instance.new("UIStroke")
local uiGradient = Instance.new("UIGradient")
local titleLabel = Instance.new("TextLabel")
local correctCode = "1234ABCD"-- Change "1234ABCD" to your link or code

screenGui.Parent = PlayerGui

frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
frame.BackgroundTransparency = 0.3
frame.ZIndex = 1
frame.Parent = screenGui

uiCorner.CornerRadius = UDim.new(0, 15)
uiCorner.Parent = frame

uiStroke.Thickness = 2
uiStroke.Color = Color3.fromRGB(255, 255, 255)
uiStroke.Parent = frame

uiGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 85, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(85, 170, 255))
}
uiGradient.Rotation = 45
uiGradient.Parent = frame

titleLabel.Size = UDim2.new(1, 0, 0, 30)
titleLabel.Position = UDim2.new(0, 0, 0, -30)
titleLabel.Text = "by fablo1358" --pls dont change this
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.BackgroundTransparency = 1
titleLabel.TextScaled = true
titleLabel.Parent = frame

getKeyButton.Size = UDim2.new(0, 100, 0, 50)
getKeyButton.Position = UDim2.new(0.1, 0, 0.7, 0)
getKeyButton.Text = "Get Key"
getKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
getKeyButton.BackgroundColor3 = Color3.fromRGB(0, 85, 255)
getKeyButton.Parent = frame

local getKeyUICorner = Instance.new("UICorner")
getKeyUICorner.CornerRadius = UDim.new(0, 10)
getKeyUICorner.Parent = getKeyButton

submitButton.Size = UDim2.new(0, 100, 0, 50)
submitButton.Position = UDim2.new(0.6, 0, 0.7, 0)
submitButton.Text = "Submit"
submitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
submitButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
submitButton.Parent = frame

local submitUICorner = Instance.new("UICorner")
submitUICorner.CornerRadius = UDim.new(0, 10)
submitUICorner.Parent = submitButton

textBox.Size = UDim2.new(0, 200, 0, 50)
textBox.Position = UDim2.new(0.5, -100, 0.3, 0)
textBox.PlaceholderText = "Enter Code"
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
textBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
textBox.PlaceholderColor3 = Color3.fromRGB(200, 200, 200)
textBox.Parent = frame

local textBoxUICorner = Instance.new("UICorner")
textBoxUICorner.CornerRadius = UDim.new(0, 10)
textBoxUICorner.Parent = textBox

getKeyButton.MouseButton1Click:Connect(function()
    setclipboard(correctCode)
end)

submitButton.MouseButton1Click:Connect(function()
    if textBox.Text == correctCode then
        screenGui:Destroy()
        print("Running another script!")
        -- Your script code here
    else
        print("Wrong codeee")
    end
end)


--USE CREDITS :)