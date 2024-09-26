-- https://discord.gg/PwrSGtuEnc
local TweenService = game:GetService("TweenService")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ImageTextSoundGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(1, 0, 1, 0)
frame.Position = UDim2.new(0, 0, 0, 0)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  -- White background (optional)
frame.Parent = screenGui

local imageLabel = Instance.new("ImageLabel")
imageLabel.Size = UDim2.new(0.5, 0, 0.5, 0)  -- Size the image label as needed
imageLabel.Position = UDim2.new(0.25, 0, 0.1, 0)  -- Adjust position as needed
imageLabel.Image = "rbxassetid://15619115587"  -- Replace with your image asset ID
imageLabel.Parent = frame

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 0.1, 0)  -- Size the text label as needed
textLabel.Position = UDim2.new(0, 0, 0.7, 0)  -- Adjust position as needed
textLabel.BackgroundTransparency = 1
textLabel.Text = "fucking dumbass"
textLabel.TextColor3 = Color3.fromRGB(0, 0, 0)  -- Black text
textLabel.TextScaled = true
textLabel.Parent = frame

local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://7197843961"  -- Replace with your sound asset ID
sound.Parent = screenGui

local function fadeOutAndDestroy()
    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0)

    local imageTween = TweenService:Create(imageLabel, tweenInfo, {ImageTransparency = 1})
    imageTween:Play()

    local textTween = TweenService:Create(textLabel, tweenInfo, {TextTransparency = 1})
    textTween:Play()

    local soundTween = TweenService:Create(sound, tweenInfo, {Volume = 0})
    soundTween:Play()

    wait(1)
    screenGui:Destroy()
end

sound:Play()

wait(5)
fadeOutAndDestroy()