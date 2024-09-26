-- Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¸Ðµ GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SpinSizeGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 300, 0, 150)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -75)
MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Title.BorderSizePixel = 0
Title.Text = "Award Spin Size"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.SourceSans
Title.TextSize = 18
Title.Parent = MainFrame

local SpinSizeTextBox = Instance.new("TextBox")
SpinSizeTextBox.Name = "SpinSizeTextBox"
SpinSizeTextBox.Size = UDim2.new(0, 200, 0, 30)
SpinSizeTextBox.Position = UDim2.new(0.5, -100, 0.5, -15)
SpinSizeTextBox.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
SpinSizeTextBox.BorderSizePixel = 0
SpinSizeTextBox.Text = "99999999999999"
SpinSizeTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SpinSizeTextBox.Font = Enum.Font.SourceSans
SpinSizeTextBox.TextSize = 18
SpinSizeTextBox.Parent = MainFrame

local AwardButton = Instance.new("TextButton")
AwardButton.Name = "AwardButton"
AwardButton.Size = UDim2.new(0, 100, 0, 30)
AwardButton.Position = UDim2.new(0.5, -50, 1, -40)
AwardButton.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
AwardButton.BorderSizePixel = 0
AwardButton.Text = "Award"
AwardButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AwardButton.Font = Enum.Font.SourceSans
AwardButton.TextSize = 18
AwardButton.Parent = MainFrame

local CloseButton = Instance.new("TextButton")
CloseButton.Name = "CloseButton"
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -30, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
CloseButton.BorderSizePixel = 0
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Font = Enum.Font.SourceSans
CloseButton.TextSize = 18
CloseButton.Parent = MainFrame

-- Ð¡ÐºÑÐ¸Ð¿Ñ Ð´Ð»Ñ Ð¿ÐµÑÐµÐ´Ð²Ð¸Ð¶ÐµÐ½Ð¸Ñ ÑÑÐµÐ¹Ð¼Ð°
local UserInputService = game:GetService("UserInputService")

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

MainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

MainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

-- Ð¡ÐºÑÐ¸Ð¿Ñ Ð´Ð»Ñ ÐºÐ½Ð¾Ð¿ÐºÐ¸ Award
AwardButton.MouseButton1Click:Connect(function()
    local spinSize = tonumber(SpinSizeTextBox.Text) or 0

    local replicatedStorage = game:GetService("ReplicatedStorage")
    local honeypot = replicatedStorage:FindFirstChild("Honeypot")
    local internal = honeypot and honeypot:FindFirstChild("Internal")
    local remoteStorage = internal and internal:FindFirstChild("RemoteStorage")
    local awardSpinEvent = remoteStorage and remoteStorage:FindFirstChild("AwardSpinSize - RemoteEvent")

    if awardSpinEvent then
        awardSpinEvent:FireServer(spinSize)
    else
        warn("ÐÐµ ÑÐ´Ð°Ð»Ð¾ÑÑ Ð½Ð°Ð¹ÑÐ¸ 'AwardSpinSize - RemoteEvent'. ÐÑÐ¾Ð²ÐµÑÑÑÐµ Ð½Ð°Ð»Ð¸ÑÐ¸Ðµ Ð¾Ð±ÑÐµÐºÑÐ¾Ð² Ð² Ð¸ÐµÑÐ°ÑÑÐ¸Ð¸.")
    end
end)

-- Ð¡ÐºÑÐ¸Ð¿Ñ Ð´Ð»Ñ ÐºÐ½Ð¾Ð¿ÐºÐ¸ Close
CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)
