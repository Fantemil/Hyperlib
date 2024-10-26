local player = game.Players.LocalPlayer

local screenGui = Instance.new("ScreenGui")
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

local notificationFrame = Instance.new("Frame")
notificationFrame.Size = UDim2.new(0, 250, 0, 60)
notificationFrame.Position = UDim2.new(0.5, -125, 0, -70)
notificationFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
notificationFrame.BorderSizePixel = 0
notificationFrame.Parent = screenGui

local notificationCorner = Instance.new("UICorner")
notificationCorner.CornerRadius = UDim.new(0, 10)
notificationCorner.Parent = notificationFrame

local messageLabel = Instance.new("TextLabel")
messageLabel.Size = UDim2.new(1, -20, 1, -30)
messageLabel.Position = UDim2.new(0, 10, 0, 10)
messageLabel.Text = "by lordi_scripts"
messageLabel.Font = Enum.Font.Gotham
messageLabel.TextSize = 20
messageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
messageLabel.BackgroundTransparency = 1
messageLabel.TextWrapped = true
messageLabel.Parent = notificationFrame

local progressBar = Instance.new("Frame")
progressBar.Size = UDim2.new(1, -20, 0, 4)
progressBar.Position = UDim2.new(0, 10, 1, -14)
progressBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
progressBar.BorderSizePixel = 0
progressBar.Parent = notificationFrame

local progressBarCorner = Instance.new("UICorner")
progressBarCorner.CornerRadius = UDim.new(0, 2)
progressBarCorner.Parent = progressBar

notificationFrame:TweenPosition(UDim2.new(0.5, -125, 0, 10), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.5, true)

local tweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(5, Enum.EasingStyle.Linear)
local progressBarTween = tweenService:Create(progressBar, tweenInfo, {Size = UDim2.new(0, 0, 0, 4)})
progressBarTween:Play()

wait(5)

notificationFrame:TweenPosition(UDim2.new(0.5, -125, 0, -70), Enum.EasingDirection.In, Enum.EasingStyle.Quint, 0.5, true, function()
    screenGui:Destroy()
end)