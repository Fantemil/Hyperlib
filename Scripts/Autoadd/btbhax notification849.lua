local TEXT_COLOR = Color3.new(1, 1, 1)
local BACKGROUND_COLOR_START = Color3.fromRGB(30, 30, 60)
local BACKGROUND_COLOR_END = Color3.fromRGB(60, 60, 90)
local ICON_IMAGE = "http://www.roblox.com/asset/?id=14758644530" --// Add your logo here
local GUI_SIZE = UDim2.new(0, 300, 0, 100)
local GUI_POSITION = UDim2.new(0.5, -150, 0.8, 0)
local GUI_DURATION = 5
local SOUND_ID = "rbxassetid://3238007702" --// Put your booting up system in here

local sound = Instance.new("Sound")
sound.SoundId = SOUND_ID 
sound.Volume = 2

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "NotificationGui"
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local frame = Instance.new("Frame")
frame.Name = "NotificationFrame"
frame.Size = GUI_SIZE
frame.Position = GUI_POSITION
frame.BorderSizePixel = 0
frame.Parent = screenGui

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(1, 0)
uiCorner.Parent = frame

local gradient = Instance.new("UIGradient")
gradient.Rotation = 90
gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, BACKGROUND_COLOR_START),
    ColorSequenceKeypoint.new(1, BACKGROUND_COLOR_END)
}
gradient.Parent = frame

local iconImage = Instance.new("ImageLabel")
iconImage.Name = "Icon"
iconImage.Size = UDim2.new(0, 80, 0, 80)
iconImage.Position = UDim2.new(0, 20, 0.5, -40)
iconImage.AnchorPoint = Vector2.new(0, 0)
iconImage.BackgroundTransparency = 1
iconImage.Image = ICON_IMAGE
iconImage.ImageColor3 = TEXT_COLOR
iconImage.Parent = frame

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(1, 0)
uiCorner.Parent = iconImage

local textLabel = Instance.new("TextLabel")
textLabel.Name = "NotificationText"
textLabel.Size = UDim2.new(1, -100, 1, 0)
textLabel.Position = UDim2.new(0, 100, 0, 0)
textLabel.TextSize = 18
textLabel.TextColor3 = TEXT_COLOR
textLabel.BackgroundTransparency = 1
textLabel.Font = Enum.Font.GothamSemibold
textLabel.TextWrapped = true
textLabel.Parent = frame

local function showNotification(message)
    local clone = screenGui:Clone()
    clone.Parent = game:GetService("CoreGui")
    clone.NotificationFrame.NotificationText.Text = message
    
    sound.Parent = clone.NotificationFrame
    sound:Play()
    
    clone.NotificationFrame:TweenPosition(UDim2.new(0.5, -150, 0.8, -GUI_SIZE.Y.Offset), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.5, true)
    wait(GUI_DURATION)
    clone.NotificationFrame:TweenPosition(
        UDim2.new(0.5, -150, 0.8, 0),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Quart,
        0.5,
        true,
        function()
            clone:Destroy()
        end
    )
end

showNotification("btbhax")