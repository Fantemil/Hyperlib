local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 200, 0, 100)
mainFrame.Position = UDim2.new(1, -220, 1, -120)
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.BackgroundTransparency = 0.3
mainFrame.Parent = screenGui

local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 10)
frameCorner.Parent = mainFrame

local notificationLabel = Instance.new("TextLabel")
notificationLabel.Size = UDim2.new(1, 0, 0.4, 0)
notificationLabel.Position = UDim2.new(0, 0, 0, 0)
notificationLabel.BackgroundTransparency = 1
notificationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
notificationLabel.Text = "Example notification"
notificationLabel.TextScaled = true
notificationLabel.Parent = mainFrame

local creditsLabel = Instance.new("TextLabel")
creditsLabel.Size = UDim2.new(1, 0, 0.3, 0)
creditsLabel.Position = UDim2.new(0, 0, 0.7, 0)
creditsLabel.BackgroundTransparency = 1
creditsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
creditsLabel.Text = "Made by PlayerExploits"
creditsLabel.TextScaled = true
creditsLabel.Parent = mainFrame

local progressBar = Instance.new("Frame")
progressBar.Size = UDim2.new(0, 0, 0.15, 0)
progressBar.Position = UDim2.new(0.025, 0, 0.475, 0)
progressBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
progressBar.Parent = mainFrame

local progressBarCorner = Instance.new("UICorner")
progressBarCorner.CornerRadius = UDim.new(0, 5)
progressBarCorner.Parent = progressBar

local tweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(5, Enum.EasingStyle.Linear)

local goal = {}
goal.Size = UDim2.new(0.95, 0, 0.15, 0)

local tween = tweenService:Create(progressBar, tweenInfo, goal)
tween:Play()

tween.Completed:Connect(function()
    local slideTweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear)
    local slideGoal = {}
    slideGoal.Position = UDim2.new(1.2, 0, 1, -120)

    local slideTween = tweenService:Create(mainFrame, slideTweenInfo, slideGoal)
    
    local fadeGoal = {}
    fadeGoal.BackgroundTransparency = 1

    local fadeTween = tweenService:Create(mainFrame, slideTweenInfo, fadeGoal)
    
    slideTween:Play()
    slideTween.Completed:Connect(function()
        fadeTween:Play()
    end)
    
    fadeTween.Completed:Connect(function()
        mainFrame:Destroy()
    end)
end)