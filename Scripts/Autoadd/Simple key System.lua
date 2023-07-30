-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local TextBox = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.42517221, 0, -1, 0) -- Move the UI off the screen initially
Frame.Size = UDim2.new(0, 238, 0, 274)

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.289915979, 0, 0.0693430677, 0)
ImageLabel.Size = UDim2.new(0, 100, 0, 100)
ImageLabel.Image = "rbxassetid://6561414979"

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.155462191, 0, 0.503649652, 0)
TextBox.Size = UDim2.new(0, 164, 0, 40)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = "EnterKeyHere"
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000

UICorner.CornerRadius = UDim.new(0.100000001, 8)
UICorner.Parent = TextBox

UICorner_2.CornerRadius = UDim.new(0.100000001, 8)
UICorner_2.Parent = Frame

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.159663871, 0, 0.755474448, 0)
TextButton.Size = UDim2.new(0, 161, 0, 46)
TextButton.Font = Enum.Font.Ubuntu
TextButton.Text = "Enter"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 33.000

UICorner_3.CornerRadius = UDim.new(0.100000001, 8)
UICorner_3.Parent = TextButton

-- Tweening Service and UI Animations

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local correctKey = "mySecretKey" -- Replace this with your actual key

-- Animation settings
local showUI = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local hideUI = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local buttonPress = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local buttonRelease = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

-- Create animation tweens
local ShowUITween = TweenService:Create(Frame, showUI, {Position = UDim2.new(0.42517221, 0, 0.329177052, 0)})
local HideUITween = TweenService:Create(Frame, hideUI, {Position = UDim2.new(0.42517221, 0, -1, 0)})
local ButtonPressTween = TweenService:Create(TextButton, buttonPress, {Size = UDim2.new(0, 156, 0, 44)})
local ButtonReleaseTween = TweenService:Create(TextButton, buttonRelease, {Size = UDim2.new(0, 161, 0, 46)})

-- Bind button press and release to animate size
TextButton.MouseButton1Down:Connect(function()
    ButtonPressTween:Play()
end)

TextButton.MouseButton1Up:Connect(function()
    ButtonReleaseTween:Play()
    if TextBox.Text == correctKey then
        -- Correct key entered, delete the key system UI and load the loadstring or new gui
        ScreenGui:Destroy()
        local Main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")

--Properties:

Main.Name = "Main"
Main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = Main
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.321853489, 0, 0.276807994, 0)
Frame.Size = UDim2.new(0, 568, 0, 357)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.103873238, 0, 0.0392156877, 0)
TextLabel.Size = UDim2.new(0, 450, 0, 178)
TextLabel.Font = Enum.Font.LuckiestGuy
TextLabel.Text = "The key system was made by chatgpt i made this for fun"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.34330985, 0, 0.462184876, 0)
ImageLabel.Size = UDim2.new(0, 177, 0, 171)
ImageLabel.Image = "rbxassetid://12818934883"
    else
        -- Wrong key entered
        print("Wrong Key Entered")
    end
end)

-- Bind key press to show/hide UI
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.F then
        if Frame.Position == UDim2.new(0.42517221, 0, -1, 0) then
            ShowUITween:Play()
        else
            HideUITween:Play()
        end
    end
end)
