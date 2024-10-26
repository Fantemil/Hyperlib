local TweenService = game:GetService("TweenService")
local SoundService = game:GetService("SoundService")

-- Ensure LocalPlayer is available
local player = game.Players.LocalPlayer
if not player then
    warn("LocalPlayer not found!")
    return
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "NotificationGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

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

local function playSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://12345678" -- Replace with a valid sound ID
    sound.Volume = 0.5
    sound.Parent = SoundService
    sound:Play()
    sound.Ended:Connect(function()
        sound:Destroy()
    end)
end

local function createNotification(title, description, notificationType, duration, showProgressBar)
    description = description or ""
    duration = duration or 5

    -- Validate notification type
    if not notificationColors[notificationType] then
        warn("Invalid notification type: " .. tostring(notificationType))
        return
    end

    local notificationTemplate = Instance.new("Frame")
    notificationTemplate.Size = UDim2.new(1, 0, 0.25, 0) -- Increased height to accommodate spacing
    notificationTemplate.BackgroundTransparency = 1
    notificationTemplate.BorderSizePixel = 0
    notificationTemplate.ClipsDescendants = true

    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 12)
    uiCorner.Parent = notificationTemplate

    local uiStroke = Instance.new("UIStroke")
    uiStroke.Thickness = 1
    uiStroke.Transparency = 0.7
    uiStroke.Parent = notificationTemplate

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, -10, 0.3, -10)
    titleLabel.Position = UDim2.new(0, 5, 0, 5)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.TextScaled = false
    titleLabel.TextSize = 14
    titleLabel.TextTransparency = 1
    titleLabel.TextColor3 = notificationColors[notificationType].text
    titleLabel.Text = title
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.Parent = notificationTemplate

    local descriptionLabel = Instance.new("TextLabel")
    descriptionLabel.Size = UDim2.new(1, -10, 0.3, -10)
    descriptionLabel.Position = UDim2.new(0, 5, 0.3, 5)
    descriptionLabel.BackgroundTransparency = 1
    descriptionLabel.Font = Enum.Font.Gotham
    descriptionLabel.TextScaled = false
    descriptionLabel.TextSize = 12
    descriptionLabel.TextTransparency = 1
    descriptionLabel.TextColor3 = notificationColors[notificationType].text
    descriptionLabel.Text = description
    descriptionLabel.TextXAlignment = Enum.TextXAlignment.Left
    descriptionLabel.Parent = notificationTemplate

    if showProgressBar then
        local progressBar = Instance.new("Frame")
        progressBar.Size = UDim2.new(0, 0, 0, 2) -- Set thickness to 2
        progressBar.Position = UDim2.new(0, 5, 0.7, 5)
        progressBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        progressBar.BorderSizePixel = 0
        progressBar.Parent = notificationTemplate

        local progressTween = TweenService:Create(progressBar, TweenInfo.new(duration, Enum.EasingStyle.Linear), {Size = UDim2.new(1, -10, 0, 2)})
        progressTween:Play()
    end

    notificationTemplate.BackgroundColor3 = notificationColors[notificationType].bg
    uiStroke.Color = notificationColors[notificationType].bg
    notificationTemplate.Visible = true
    notificationTemplate.Parent = notificationFrame

    notificationTemplate.Position = UDim2.new(1.5, 0, 0, 0) -- Start off-screen
    notificationTemplate.Size = UDim2.new(0, 0, 0.25, 0) -- Start with zero width
    local slideInTween = TweenService:Create(notificationTemplate, TweenInfo.new(0.5, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {Position = UDim2.new(1, -20, 0, 0), BackgroundTransparency = 0, Size = UDim2.new(1, 0, 0.25, 0)})
    local titleFadeInTween = TweenService:Create(titleLabel, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {TextTransparency = 0})
    local descriptionFadeInTween = TweenService:Create(descriptionLabel, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {TextTransparency = 0})
    slideInTween:Play()
    titleFadeInTween:Play()
    descriptionFadeInTween:Play()

    playSound()

    task.wait(duration)

    local slideOutTween = TweenService:Create(notificationTemplate, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {Position = UDim2.new(1.5, 0, 0, 0), BackgroundTransparency = 1, Size = UDim2.new(0, 0, 0.25, 0)})
    local titleFadeOutTween = TweenService:Create(titleLabel, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {TextTransparency = 1})
    local descriptionFadeOutTween = TweenService:Create(descriptionLabel, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {TextTransparency = 1})
    slideOutTween:Play()
    titleFadeOutTween:Play()
    descriptionFadeOutTween:Play()

    slideOutTween.Completed:Connect(function()
        notificationTemplate:Destroy()
    end)
end

-- Example notifications with optional progress bar
local notifications = {
    {title = "Information", description = "This is an information message.", type = "Info", duration = 3, showProgressBar = false},
    {title = "Success", description = "This is a success message.", type = "Success", duration = 3, showProgressBar = true},
    {title = "Warning", description = "This is a warning message.", type = "Warning", duration = 3, showProgressBar = false},
    {title = "Error", description = "This is an error message.", type = "Error", duration = 3, showProgressBar = false},
    {title = "Neutral", description = "This is a neutral message.", type = "Neutral", duration = 3, showProgressBar = false},
    {title = "Achievement", description = "Congratulations! You've achieved a new milestone!", type = "Achievement", duration = 3, showProgressBar = true},
    {title = "Update", description = "A new update is available. Check it out!", type = "Update", duration = 3, showProgressBar = false},
    {title = "Reminder", description = "Don't forget to complete your daily tasks!", type = "Reminder", duration = 3, showProgressBar = false}
}

for _, notification in ipairs(notifications) do
    createNotification(notification.title, notification.description, notification.type, notification.duration, notification.showProgressBar)
    task.wait(0.5) 
end