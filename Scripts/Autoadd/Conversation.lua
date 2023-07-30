local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 0.520
Frame.Position = UDim2.new(0.131235614, 0, 0.710723221, 0)
Frame.Size = UDim2.new(0, 961, 0, 207)

UICorner.Parent = Frame

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Position = UDim2.new(0.0312174819, 0, 0.144927531, 0)
TextButton.Size = UDim2.new(0, 901, 0, 146)
TextButton.Font = Enum.Font.Unknown
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

local messages = {"Hello", "How are you?", "Good, thank you! And you?", "Very well too, thanks for asking"} --Edit this for the messages.
local currentMessageIndex = 1

local function showMessage()
    TextButton.Text = messages[currentMessageIndex]
    currentMessageIndex = currentMessageIndex + 1
    if currentMessageIndex > #messages then
        currentMessageIndex = 1
    end
end

local function onButtonClicked()
    showMessage()
end

local function onKeyPressed(inputObject)
    if inputObject.KeyCode == Enum.KeyCode.N then
        ScreenGui:Destroy()
        script:Destroy()
    end
end

TextButton.MouseButton1Click:Connect(onButtonClicked)
game:GetService("UserInputService").InputBegan:Connect(onKeyPressed)
showMessage()
