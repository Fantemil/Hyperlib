local TweenService = game:GetService("TweenService")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "NotificationGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local notificationFrame = Instance.new("Frame")
notificationFrame.Name = "NotificationFrame"
notificationFrame.Size = UDim2.new(0.3, 0, 0.5, 0)
notificationFrame.Position = UDim2.new(1, -20, 1, -20)
notificationFrame.AnchorPoint = Vector2.new(1, 1)
notificationFrame.BackgroundTransparency = 1
notificationFrame.Parent = screenGui

local uiListLayout = Instance.new("UIListLayout")
uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
uiListLayout.Padding = UDim.new(0, 10)
uiListLayout.Parent = notificationFrame

local notificationColors = {
    Info = {bg = Color3.fromRGB(45, 125, 255), text = Color3.new(1, 1, 1)},
    Success = {bg = Color3.fromRGB(40, 167, 69), text = Color3.new(1, 1, 1)},
    Warning = {bg = Color3.fromRGB(255, 193, 7), text = Color3.new(0, 0, 0)},
    Error = {bg = Color3.fromRGB(220, 53, 69), text = Color3.new(1, 1, 1)},
    Neutral = {bg = Color3.fromRGB(108, 117, 125), text = Color3.new(1, 1, 1)},
    Achievement = {bg = Color3.fromRGB(255, 215, 0), text = Color3.new(0, 0, 0)},
    Update = {bg = Color3.fromRGB(0, 123, 255), text = Color3.new(1, 1, 1)},
    Reminder = {bg = Color3.fromRGB(255, 87, 34), text = Color3.new(1, 1, 1)}
}

local function createNotification(title, description, notificationType, duration, priority)
    description = description or ""
    duration = duration or 5
    priority = priority or 1

    local notificationTemplate = Instance.new("Frame")
    notificationTemplate.Size = UDim2.new(1, 0, 0.2, 0)
    notificationTemplate.BackgroundTransparency = 1
    notificationTemplate.BorderSizePixel = 0
    notificationTemplate.ClipsDescendants = true
    notificationTemplate.LayoutOrder = priority

    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 12)
    uiCorner.Parent = notificationTemplate

    local uiStroke = Instance.new("UIStroke")
    uiStroke.Thickness = 1
    uiStroke.Transparency = 0.7
    uiStroke.Parent = notificationTemplate

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, -10, 0.5, -10)
    titleLabel.Position = UDim2.new(0, 5, 0, 5)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.TextScaled = true
    titleLabel.TextSize = 14
    titleLabel.TextTransparency = 1
    titleLabel.TextColor3 = notificationColors[notificationType].text
    titleLabel.Text = title
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.Parent = notificationTemplate

    local descriptionLabel = Instance.new("TextLabel")
    descriptionLabel.Size = UDim2.new(1, -10, 0.5, -10)
    descriptionLabel.Position = UDim2.new(0, 5, 0.5, 5)
    descriptionLabel.BackgroundTransparency = 1
    descriptionLabel.Font = Enum.Font.Gotham
    descriptionLabel.TextScaled = true
    descriptionLabel.TextSize = 14
    descriptionLabel.TextTransparency = 1
    descriptionLabel.TextColor3 = notificationColors[notificationType].text
    descriptionLabel.Text = description
    descriptionLabel.TextXAlignment = Enum.TextXAlignment.Left
    descriptionLabel.Parent = notificationTemplate

    notificationTemplate.BackgroundColor3 = notificationColors[notificationType].bg
    uiStroke.Color = notificationColors[notificationType].bg
    notificationTemplate.Visible = true
    notificationTemplate.Parent = notificationFrame

    notificationTemplate.Position = UDim2.new(1.5, 0, notificationTemplate.Position.Y.Scale, notificationTemplate.Position.Y.Offset)
    local slideInTween = TweenService:Create(notificationTemplate, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = UDim2.new(1, -20, notificationTemplate.Position.Y.Scale, notificationTemplate.Position.Y.Offset), BackgroundTransparency = 0})
    local titleFadeInTween = TweenService:Create(titleLabel, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {TextTransparency = 0})
    local descriptionFadeInTween = TweenService:Create(descriptionLabel, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {TextTransparency = 0})
    slideInTween:Play()
    titleFadeInTween:Play()
    descriptionFadeInTween:Play()

    wait(duration)

    local slideOutTween = TweenService:Create(notificationTemplate, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {Position = UDim2.new(1.5, 0, notificationTemplate.Position.Y.Scale, notificationTemplate.Position.Y.Offset), BackgroundTransparency = 1})
    local titleFadeOutTween = TweenService:Create(titleLabel, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {TextTransparency = 1})
    local descriptionFadeOutTween = TweenService:Create(descriptionLabel, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {TextTransparency = 1})
    slideOutTween:Play()
    titleFadeOutTween:Play()
    descriptionFadeOutTween:Play()

    slideOutTween.Completed:Connect(function()
        notificationTemplate:Destroy()
    end)
end

createNotification("Information", "This is an information message.", "Info", 3, 1)
wait(1)
createNotification("Success", "This is a success message.", "Success", 3, 2)
wait(1)
createNotification("Warning", "This is a warning message.", "Warning", 3, 3)
wait(1)
createNotification("Error", "This is an error message.", "Error", 3, 4)
wait(1)
createNotification("Neutral", "This is a neutral message.", "Neutral", 3, 5)
wait(1)
createNotification("Achievement", "Congratulations! You've achieved a new milestone!", "Achievement", 3, 0)
wait(1)
createNotification("Update", "A new update is available. Check it out!", "Update", 3, 1)
wait(1)
createNotification("Reminder", "Don't forget to complete your daily tasks!", "Reminder", 3, 2)