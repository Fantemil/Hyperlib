local userInputService = game:GetService("UserInputService")
local virtualUser = game:GetService("VirtualUser")
local antiAfkEnabled = false
local timeInAfk = 0

local link = "https://youtube.com/@awlo1d?si=4NTDg2YjdRDHhfvm"
pcall(function()
    setclipboard(link)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Link Copied";
        Text = "The link has been copied to your clipboard.";
        Duration = 5;
    })
end)

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false

local menuFrame = Instance.new("Frame")
menuFrame.Parent = screenGui
menuFrame.Size = UDim2.new(0, 300, 0, 200)
menuFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
menuFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
menuFrame.BorderSizePixel = 0
menuFrame.AnchorPoint = Vector2.new(0.5, 0.5)
menuFrame.Visible = true
menuFrame.Active = true
menuFrame.Draggable = true

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 6)
corner.Parent = menuFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Parent = menuFrame
titleLabel.Size = UDim2.new(1, 0, 0, 40)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Anti AFK"
titleLabel.TextColor3 = Color3.fromRGB(200, 200, 255)
titleLabel.TextScaled = true
titleLabel.Font = Enum.Font.FredokaOne
titleLabel.TextStrokeTransparency = 0.8
titleLabel.ZIndex = 2

local separator = Instance.new("Frame")
separator.Parent = menuFrame
separator.Size = UDim2.new(1, 0, 0, 2)
separator.Position = UDim2.new(0, 0, 0, 40)
separator.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
separator.ZIndex = 2

local antiAfkButton = Instance.new("TextButton")
antiAfkButton.Parent = menuFrame
antiAfkButton.Size = UDim2.new(0, 180, 0, 40)
antiAfkButton.Position = UDim2.new(0.5, -90, 0.4, -20)
antiAfkButton.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
antiAfkButton.Text = "Anti AFK: OFF"
antiAfkButton.TextColor3 = Color3.fromRGB(255, 255, 255)
antiAfkButton.TextScaled = true
antiAfkButton.Font = Enum.Font.FredokaOne
antiAfkButton.BorderSizePixel = 0
antiAfkButton.ZIndex = 2

local antiAfkCorner = Instance.new("UICorner")
antiAfkCorner.CornerRadius = UDim.new(0, 6)
antiAfkCorner.Parent = antiAfkButton

local afkTimerLabel = Instance.new("TextLabel")
afkTimerLabel.Parent = menuFrame
afkTimerLabel.Size = UDim2.new(1, 0, 0, 30)
afkTimerLabel.Position = UDim2.new(0, 0, 0.7, -15)
afkTimerLabel.BackgroundTransparency = 1
afkTimerLabel.Text = "AFK Time: 0s"
afkTimerLabel.TextColor3 = Color3.fromRGB(200, 200, 255)
afkTimerLabel.TextScaled = true
afkTimerLabel.Font = Enum.Font.FredokaOne
afkTimerLabel.TextStrokeTransparency = 0.8
afkTimerLabel.ZIndex = 2

local function startAfkTimer()
    spawn(function()
        while antiAfkEnabled do
            wait(1)
            timeInAfk = timeInAfk + 1
            afkTimerLabel.Text = "AFK Time: " .. tostring(timeInAfk) .. "s"
        end
    end)
end

local function startAntiAfk()
    spawn(function()
        while antiAfkEnabled do
            wait(60)
            virtualUser:CaptureController()
            virtualUser:ClickButton2(Vector2.new())
        end
    end)
end

antiAfkButton.MouseButton1Click:Connect(function()
    antiAfkEnabled = not antiAfkEnabled
    if antiAfkEnabled then
        antiAfkButton.Text = "Anti AFK: ON"
        startAntiAfk()
        startAfkTimer()
    else
        antiAfkButton.Text = "Anti AFK: OFF"
        timeInAfk = 0
        afkTimerLabel.Text = "AFK Time: 0s"
    end
end)

local closeButton = Instance.new("TextButton")
closeButton.Parent = menuFrame
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.BackgroundTransparency = 1
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(100, 100, 255)
closeButton.TextScaled = true
closeButton.Font = Enum.Font.FredokaOne
closeButton.BorderSizePixel = 0
closeButton.ZIndex = 3

closeButton.MouseButton1Click:Connect(function()
    menuFrame.Visible = false
end)

local footerLabel = Instance.new("TextLabel")
footerLabel.Parent = menuFrame
footerLabel.Size = UDim2.new(1, 0, 0, 30)
footerLabel.Position = UDim2.new(0, 0, 1, -30)
footerLabel.BackgroundTransparency = 1
footerLabel.Text = "BY: AWLOID"
footerLabel.TextColor3 = Color3.fromRGB(200, 200, 255)
footerLabel.TextScaled = true
footerLabel.Font = Enum.Font.FredokaOne
footerLabel.TextStrokeTransparency = 0.8
footerLabel.ZIndex = 2
