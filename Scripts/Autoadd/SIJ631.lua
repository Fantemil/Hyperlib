local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
local imageLabel = Instance.new("ImageLabel")
local sound = Instance.new("Sound")

screenGui.Parent = player:WaitForChild("PlayerGui")
screenGui.Name = "ImageFadeGui"
screenGui.DisplayOrder = 10 ^ 6
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

imageLabel.Parent = screenGui
imageLabel.Name = "FadingImage"
imageLabel.Size = UDim2.new(0, 563, 0, 124)
imageLabel.Position = UDim2.new(0.5, -563 / 2, 0, -124)
imageLabel.Image = "rbxassetid://18896126670"
imageLabel.BackgroundTransparency = 1
imageLabel.ImageTransparency = 1
imageLabel.ScaleType = Enum.ScaleType.Stretch
imageLabel.ZIndex = 10 ^ 6

sound.Parent = screenGui
sound.SoundId = "rbxassetid://8795831946"
sound.Volume = 1
sound.Looped = false
sound:Play()

local moveDuration = 1
local fadeDuration = 1
local moveTweenInfo = TweenInfo.new(moveDuration, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)

local fadeTweenInfo = TweenInfo.new(fadeDuration, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)

local moveGoal = {Position = UDim2.new(0.5, -563 / 2, 0.5, -124 / 2)}
local moveTween = TweenService:Create(imageLabel, moveTweenInfo, moveGoal)

local fadeInGoal = {ImageTransparency = 0}
local fadeOutGoal = {ImageTransparency = 1}

local fadeInTween = TweenService:Create(imageLabel, fadeTweenInfo, fadeInGoal)
local fadeOutTween = TweenService:Create(imageLabel, fadeTweenInfo, fadeOutGoal)

local function fadeInAndMove()
    fadeInTween:Play()
    moveTween:Play()
    moveTween.Completed:Connect(
        function()
            wait(1)
            fadeOutTween:Play()
            fadeOutTween.Completed:Connect(
                function()
                    screenGui:Destroy()
                end
            )
        end
    )
end

fadeInAndMove()
