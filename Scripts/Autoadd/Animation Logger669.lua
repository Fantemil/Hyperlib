-- Made by WaveStorag and ChatGPT
-- Upload: 19/5/2024 | Update: 21/5/2024

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Thx for usingð¤",
    Text = "Made by WaveStorag",
    Duration = 15,
    Icon = "rbxassetid://17395172104"
})

local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.315, 0, 0.4, 0)
frame.Position = UDim2.new(0.350, 0, 0.3, 0)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 0
frame.Parent = gui
frame.Draggable = true
frame.Active = true

local topBar = Instance.new("Frame")
topBar.Size = UDim2.new(1.0017, 0, 0, 30)
topBar.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
topBar.BorderSizePixel = 0
topBar.Parent = frame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -365, 1, 0)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Animation Logger"
titleLabel.Font = Enum.Font.SourceSans
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.TextSize = 20
titleLabel.Parent = topBar

local scrollFrame = Instance.new("ScrollingFrame")
scrollFrame.Size = UDim2.new(1, 0, 1, -30)
scrollFrame.Position = UDim2.new(0, 0, 0, 30)
scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollFrame.ScrollBarThickness = 10
scrollFrame.Parent = frame
scrollFrame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)

local logLayout = Instance.new("UIListLayout")
logLayout.Parent = scrollFrame
logLayout.SortOrder = Enum.SortOrder.LayoutOrder

local loggedAnimations = {}
local isCopyingAsLinkEnabled = false
local originalColor = Color3.new(0.2, 0.2, 0.2)
local toggleColor = Color3.new(0, 1, 0)

local function logAnimation(animationName, animationId)
    if loggedAnimations[animationId] then
        return
    end
    
    loggedAnimations[animationId] = true
    
    local numericId = tonumber(animationId:match("%d+"))

    local logEntry = Instance.new("TextButton")
    logEntry.Size = UDim2.new(1, -10, 0, 60)
    logEntry.BackgroundColor3 = originalColor
    local linkStatus = isCopyingAsLinkEnabled and "Enabled" or "Disabled"
    logEntry.Text = string.format("%s\nAnimation ID: %d\nCopy as link: %s", animationName, numericId, linkStatus)
    logEntry.TextWrapped = true
    logEntry.Font = Enum.Font.SourceSans
    logEntry.TextColor3 = Color3.new(1, 1, 1)
    logEntry.TextSize = 22
    logEntry.Parent = scrollFrame

    logEntry.MouseButton1Click:Connect(function()
        if isCopyingAsLinkEnabled then
            local link = "https://www.roblox.com/library/" .. numericId
            setclipboard(link)
        else
            setclipboard(tostring(numericId))
        end
    end)

    scrollFrame.CanvasSize = UDim2.new(0, 0, 0, logLayout.AbsoluteContentSize.Y)
end

logLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    scrollFrame.CanvasSize = UDim2.new(0, 0, 0, logLayout.AbsoluteContentSize.Y)
end)

local function onAnimationPlayed(animationTrack)
    local animation = animationTrack.Animation
    if animation then
        local animationId = animation.AnimationId
        local animationName = animation.Name or "Unknown Animation"
        logAnimation(animationName, animationId, isCopyingAsLinkEnabled)
    end
end

local function trackPlayerAnimations()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    
    humanoid.AnimationPlayed:Connect(onAnimationPlayed)
end

trackPlayerAnimations()

local xButton = Instance.new("TextButton")
xButton.Size = UDim2.new(0, 30, 0, 30)
xButton.Position = UDim2.new(1, -30, 0, 0)
xButton.BackgroundColor3 = Color3.new(1, 0, 0)
xButton.Text = "X"
xButton.TextColor3 = Color3.new(1, 1, 1)
xButton.TextSize = 24
xButton.Font = Enum.Font.SourceSans
xButton.BackgroundTransparency = 1
xButton.Parent = topBar

xButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

local minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0, 30, 0, 30)
minimizeButton.Position = UDim2.new(1, -60, 0, 0)
minimizeButton.BackgroundColor3 = Color3.new(0, 0, 1)
minimizeButton.Text = "â"
minimizeButton.TextColor3 = Color3.new(1, 1, 1)
minimizeButton.TextSize = 24
minimizeButton.Font = Enum.Font.SourceSans
minimizeButton.BackgroundTransparency = 1
minimizeButton.Parent = topBar

local additionalGUI = Instance.new("Frame")
additionalGUI.Size = UDim2.new(0.5, 0, 1, 0)
additionalGUI.Position = UDim2.new(-0.53, 0, 0, 0)
additionalGUI.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
additionalGUI.BorderSizePixel = 0
additionalGUI.Visible = false
additionalGUI.Parent = frame

local settingsTopBar = Instance.new("Frame")
settingsTopBar.Size = UDim2.new(1, 0, 0, 30)
settingsTopBar.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
settingsTopBar.BorderSizePixel = 0
settingsTopBar.Parent = additionalGUI

local settingsLabel = Instance.new("TextLabel")
settingsLabel.Size = UDim2.new(1, 0, 0, 30)
settingsLabel.Position = UDim2.new(0, 0, 0, 0)
settingsLabel.BackgroundTransparency = 1
settingsLabel.Text = "Settings"
settingsLabel.Font = Enum.Font.SourceSans
settingsLabel.TextColor3 = Color3.new(1, 1, 1)
settingsLabel.TextSize = 20
settingsLabel.Parent = additionalGUI

local clearButton = Instance.new("TextButton")
clearButton.Size = UDim2.new(0.95, 0, 0, 30)
clearButton.Position = UDim2.new(0.023, 0, 0, 40)
clearButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
clearButton.Text = "Clear All"
clearButton.TextColor3 = Color3.new(1, 1, 1)
clearButton.TextSize = 18
clearButton.Font = Enum.Font.SourceSans
clearButton.Parent = additionalGUI

local optionalSettingToggle = Instance.new("TextButton")
optionalSettingToggle.Size = UDim2.new(0.95, 0, 0, 30)
optionalSettingToggle.Position = UDim2.new(0.023, 0, 0, 80)
optionalSettingToggle.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
optionalSettingToggle.Text = "Copy as link"
optionalSettingToggle.TextColor3 = Color3.new(1, 1, 1)
optionalSettingToggle.TextSize = 18
optionalSettingToggle.Font = Enum.Font.SourceSans
optionalSettingToggle.Parent = additionalGUI

local toggleButton = Instance.new("ImageButton")
toggleButton.Size = UDim2.new(0, 30, 0, 30)
toggleButton.Position = UDim2.new(0.002, 0, 0, 0)
toggleButton.BackgroundTransparency = 1
toggleButton.Image = "rbxassetid://11932591062"
toggleButton.Parent = topBar

toggleButton.MouseButton1Click:Connect(function()
    additionalGUI.Visible = not additionalGUI.Visible
end)

local isMinimized = false
local originalSize = frame.Size
local originalTitlePosition = titleLabel.Position

minimizeButton.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    if isMinimized then
        minimizeButton.Text = "+"
        frame.Size = UDim2.new(originalSize.X.Scale, originalSize.X.Offset, 0, 30)
scrollFrame.Visible = false
        additionalGUI.Visible = false
        toggleButton.Visible = false
        titleLabel.Position = UDim2.new(originalTitlePosition.X.Scale, originalTitlePosition.X.Offset - 20, originalTitlePosition.Y.Scale, originalTitlePosition.Y.Offset)
    else
        minimizeButton.Text = "â"
        frame.Size = originalSize
        scrollFrame.Visible = true
        toggleButton.Visible = true
        titleLabel.Position = originalTitlePosition
    end
end)

clearButton.MouseButton1Click:Connect(function()
    for _, child in ipairs(scrollFrame:GetChildren()) do
        if child:IsA("TextButton") then
            child:Destroy()
        end
    end
    loggedAnimations = {}
    scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
end)

local function toggleOptionalSetting()
    isCopyingAsLinkEnabled = not isCopyingAsLinkEnabled
    optionalSettingToggle.BackgroundColor3 = isCopyingAsLinkEnabled and toggleColor or originalColor
    print("Copying as link " .. (isCopyingAsLinkEnabled and "enabled" or "disabled"))
end

optionalSettingToggle.MouseButton1Click:Connect(toggleOptionalSetting)

local function onAnimationPlayed(animationTrack)
    local animation = animationTrack.Animation
    if animation then
        local animationId = animation.AnimationId
        local animationName = animation.Name or "Unknown Animation"
        logAnimation(animationName, animationId)
    end
end

local function trackPlayerAnimations()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    
    humanoid.AnimationPlayed:Connect(onAnimationPlayed)
end

trackPlayerAnimations()