local startTime = tick()

-- the IYR's loadstring/source should be here in order to get the loading time correctly

local endTime = tick()
local elapsedTime = endTime - startTime

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")
screenGui.Name = "ImageFadeGui"
screenGui.DisplayOrder = 10^6
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local sound = Instance.new("Sound")
sound.Parent = screenGui
sound.SoundId = "rbxassetid://8795831946"
sound.Volume = 1
sound.Looped = false
sound:Play()

local imageIDs = { "rbxassetid://17645082538" }
local credits = { "Edge // Zwolf // Moon // Toon // _Real // Ry" }
local loadTimeMessage = "IYR LOADED IN " .. string.format("%.20f", elapsedTime) .. " SECONDS"

local imageLabels = {}
local positions = {
    UDim2.new(0.5, -563 / 2, 0.1, -563 / 2), -- top
    UDim2.new(0.5, -563 / 2, 0.9, -563 / 2), -- bottom
    UDim2.new(0.1, -563 / 2, 0.5, -563 / 2), -- left
    UDim2.new(0.9, -563 / 2, 0.5, -563 / 2)  -- right
}
local moveGoals = {
    UDim2.new(0.5, -563 / 2, 0.5, -563 / 2), -- to center from top
    UDim2.new(0.5, -563 / 2, 0.5, -563 / 2), -- to center from bottom
    UDim2.new(0.5, -563 / 2, 0.5, -563 / 2), -- to center from left
    UDim2.new(0.5, -563 / 2, 0.5, -563 / 2)  -- to center from right
}

local moveDuration = 1.5
local fadeDuration = 1.5
local moveTweenInfo = TweenInfo.new(moveDuration, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
local fadeTweenInfo = TweenInfo.new(fadeDuration, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)

for i = 1, 4 do
    local imageLabel = Instance.new("ImageLabel")
    imageLabel.Parent = screenGui
    imageLabel.Name = "IYRLOGO" .. i
    imageLabel.Size = UDim2.new(0, 563, 0, 563)
    imageLabel.Position = positions[i]
    imageLabel.Image = imageIDs[1]
    imageLabel.BackgroundTransparency = 1
    imageLabel.ImageTransparency = 1
    imageLabel.ScaleType = Enum.ScaleType.Stretch
    imageLabel.ZIndex = 10^6

    local textLabel = Instance.new("TextLabel")
    textLabel.Name = "Credits"
    textLabel.Parent = screenGui
    textLabel.BackgroundTransparency = 1
    textLabel.BorderSizePixel = 0
    textLabel.Size = UDim2.new(0, 560, 0, -40)
    textLabel.Font = Enum.Font.Code
    textLabel.FontSize = Enum.FontSize.Size18
    textLabel.Text = credits[1]
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.TextTransparency = 1
    textLabel.ZIndex = 10^6 + 1

    textLabel.Position = UDim2.new(imageLabel.Position.X.Scale, imageLabel.Position.X.Offset, imageLabel.Position.Y.Scale + 563 / screenGui.AbsoluteSize.Y, imageLabel.Position.Y.Offset + imageLabel.Size.Y.Offset + 10)

    local moveGoal = { Position = moveGoals[i] }
    local moveTween = TweenService:Create(imageLabel, moveTweenInfo, moveGoal)

    local moveTextGoal = {
        Position = UDim2.new(
            moveGoals[i].X.Scale,
            moveGoals[i].X.Offset,
            moveGoals[i].Y.Scale + 563 / screenGui.AbsoluteSize.Y,
            moveGoals[i].Y.Offset + 10
        )
    }
    local moveTextTween = TweenService:Create(textLabel, moveTweenInfo, moveTextGoal)

    local fadeInGoal = { ImageTransparency = 0 }
    local fadeOutGoal = { ImageTransparency = 1 }

    local fadeInTween = TweenService:Create(imageLabel, fadeTweenInfo, fadeInGoal)
    local fadeInTextTween = TweenService:Create(textLabel, fadeTweenInfo, { TextTransparency = 0 })
    local fadeOutTween = TweenService:Create(imageLabel, fadeTweenInfo, fadeOutGoal)
    local fadeOutTextTween = TweenService:Create(textLabel, fadeTweenInfo, { TextTransparency = 1 })

    table.insert(imageLabels, {imageLabel, textLabel, moveTween, moveTextTween, fadeInTween, fadeInTextTween, fadeOutTween, fadeOutTextTween})
end

local function fadeInAndMove()
    for _, labelData in ipairs(imageLabels) do
        local imageLabel, textLabel, moveTween, moveTextTween, fadeInTween, fadeInTextTween, fadeOutTween, fadeOutTextTween = unpack(labelData)
        fadeInTween:Play()
        fadeInTextTween:Play()
        moveTween:Play()
        moveTextTween:Play()
        moveTween.Completed:Connect(
            function()
                wait(1)
                textLabel.Text = loadTimeMessage
                fadeOutTween:Play()
                fadeOutTextTween:Play()
                fadeOutTween.Completed:Connect(
                    function()
                        imageLabel:Destroy()
                        textLabel:Destroy()
                    end
                )
            end
        )
    end
end

fadeInAndMove()