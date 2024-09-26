
local TweenService = game:GetService("TweenService")
    local NeonWaterMark = Instance.new("ScreenGui")
    local TextLabel = Instance.new("TextLabel")
    local UITextSizeConstraint = Instance.new("UITextSizeConstraint")


    NeonWaterMark.Name = "NeonWaterMark"
    NeonWaterMark.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    NeonWaterMark.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    NeonWaterMark.ResetOnSpawn = false

    TextLabel.Parent = NeonWaterMark
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0, 0, 0, 0)
    TextLabel.Size = UDim2.new(0.2, 0, 0.15, 0)
    TextLabel.Font = Enum.Font.RobotoMono
    TextLabel.Text = "Tbao Hub ð¤«ð§"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 28.000
    TextLabel.TextWrapped = true
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left

    
    UITextSizeConstraint.MaxTextSize = 28
    UITextSizeConstraint.MinTextSize = 14
    UITextSizeConstraint.Parent = TextLabel

    
    local function changeColor()
        local rainbowColor = Color3.fromHSV(tick() % 5 / 5, 1, 1)
        local info = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
        local tween = TweenService:Create(TextLabel, info, {TextColor3 = rainbowColor})
        tween:Play()
    end

    
    while true do
        changeColor()
        wait(1) 
end