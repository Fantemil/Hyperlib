local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
-- Instances:

local Notify = Instance.new("ScreenGui")
local Normal = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local Warning = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local ImageLabel_2 = Instance.new("ImageLabel")

--Properties:

Notify.Name = "Notify"
Notify.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Notify.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Normal.Name = "Normal"
Normal.Parent = Notify
Normal.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Normal.BorderColor3 = Color3.fromRGB(0, 0, 0)
Normal.BorderSizePixel = 0
Normal.Position = UDim2.new(0.767689407, 0, 0.812967598, 0)
Normal.Size = UDim2.new(0, 344, 0, 128)
Normal.Visible = false

UICorner.CornerRadius = UDim.new(0.100000001, 8)
UICorner.Parent = Normal

TextLabel.Parent = Normal
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.372093022, 0, 0.1875, 0)
TextLabel.Size = UDim2.new(0, 196, 0, 80)
TextLabel.Font = Enum.Font.Ubuntu
TextLabel.Text = "Notification Test"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

ImageLabel.Parent = Normal
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0465116277, 0, 0.109375, 0)
ImageLabel.Size = UDim2.new(0, 100, 0, 100)
ImageLabel.Image = "rbxassetid://6257079049"

Warning.Name = "Warning"
Warning.Parent = Notify
Warning.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Warning.BorderColor3 = Color3.fromRGB(0, 0, 0)
Warning.BorderSizePixel = 0
Warning.Position = UDim2.new(0.767689407, 0, 0.812967598, 0)
Warning.Size = UDim2.new(0, 344, 0, 128)

UICorner_2.CornerRadius = UDim.new(0.100000001, 8)
UICorner_2.Parent = Warning

TextLabel_2.Parent = Warning
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.372093022, 0, 0.1875, 0)
TextLabel_2.Size = UDim2.new(0, 196, 0, 80)
TextLabel_2.Font = Enum.Font.Ubuntu
TextLabel_2.Text = "Warning Test"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 170, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

ImageLabel_2.Parent = Warning
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(0.0465116277, 0, 0.109375, 0)
ImageLabel_2.Size = UDim2.new(0, 100, 0, 100)
ImageLabel_2.Image = "rbxassetid://11745872910"

-- Animation properties
local showUI = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local hideUI = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In)

-- Animation Tweens
local ShowNormalUITween = TweenService:Create(Normal, showUI, {Position = UDim2.new(0.767689407, 0, 0.812967598, 0)})
local HideNormalUITween = TweenService:Create(Normal, hideUI, {Position = UDim2.new(0.767689407, 0, 1, 0)})

local ShowWarningUITween = TweenService:Create(Warning, showUI, {Position = UDim2.new(0.767689407, 0, 0.812967598, 0)})
local HideWarningUITween = TweenService:Create(Warning, hideUI, {Position = UDim2.new(0.767689407, 0, 1, 0)})

-- Initial State
Normal.Position = UDim2.new(0.767689407, 0, 1, 0)
Warning.Position = UDim2.new(0.767689407, 0, 1, 0)

-- Key Press Events
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.F then
        if Normal.Visible then
            HideNormalUITween:Play()
            HideNormalUITween.Completed:Wait()
            Normal.Visible = false
        else
            Normal.Visible = true
            ShowNormalUITween:Play()
        end
    elseif input.KeyCode == Enum.KeyCode.G then
        if Warning.Visible then
            HideWarningUITween:Play()
            HideWarningUITween.Completed:Wait()
            Warning.Visible = false
        else
            Warning.Visible = true
            ShowWarningUITween:Play()
        end
    end
end)