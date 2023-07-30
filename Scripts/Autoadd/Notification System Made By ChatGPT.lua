local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local PlayerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Define GUI elements
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Icon = Instance.new("ImageLabel")

-- Properties
ScreenGui.Parent = PlayerGui
Frame.Parent = ScreenGui
TextLabel.Parent = Frame
Icon.Parent = Frame

-- Frame (to allow rounded corners and a background color)
Frame.Size = UDim2.new(0, 300, 0, 100)
Frame.Position = UDim2.new(0.5, -150, 0, -100) -- starts outside of the screen
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderSizePixel = 0 -- Remove the border
Frame.BackgroundTransparency = 0.1 -- Add some transparency
Frame.ZIndex = 1
Frame.Visible = false

-- You will need an asset ID for the image
Icon.Size = UDim2.new(0, 50, 0, 50)
Icon.Position = UDim2.new(0, 10, 0.5, -25) -- near the left side of the frame, vertically centered
Icon.BackgroundTransparency = 1 -- transparent background
Icon.Image = "rbxassetid://11856964772"
Icon.ZIndex = 2

-- TextLabel
TextLabel.Size = UDim2.new(1, -70, 1, 0) -- fill the frame, but leave space for the icon
TextLabel.Position = UDim2.new(0, 70, 0, 0) -- to the right of the icon
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Text = "Notification"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.TextSize = 24
TextLabel.BorderSizePixel = 0 -- Remove the border
TextLabel.TextStrokeTransparency = 0.5 -- Add some stroke for visibility
TextLabel.BackgroundTransparency = 1 -- Transparent background
TextLabel.ZIndex = 2

-- Tweening information
local tweenInfo = TweenInfo.new(1) -- The number represents the animation duration in seconds
local targetPosition = {Position = UDim2.new(0.5, -150, 0, 0)} -- The target position, in this case, the center-top of the screen

-- Key press event
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.F then
        if not Frame.Visible then
            Frame.Visible = true
            local tween = TweenService:Create(Frame, tweenInfo, targetPosition)
            tween:Play()
        else
            local reverseTween = TweenService:Create(Frame, tweenInfo, {Position = UDim2.new(0.5, -150, 0, -100)})
            reverseTween:Play()
            reverseTween.Completed:Wait() -- Wait until the reverse animation is complete
            Frame.Visible = false
        end
    end
end)
