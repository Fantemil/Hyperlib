local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 400)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -200)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
mainFrame.BackgroundTransparency = 0.2
mainFrame.BorderSizePixel = 0
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.Parent = screenGui

local UICornerFrame = Instance.new("UICorner")
UICornerFrame.CornerRadius = UDim.new(0, 12)
UICornerFrame.Parent = mainFrame

local shadow = Instance.new("ImageLabel")
shadow.Size = UDim2.new(1, 25, 1, 25)
shadow.Position = UDim2.new(0, -12, 0, -12)
shadow.BackgroundTransparency = 1
shadow.Image = "rbxassetid://1316045217"
shadow.ImageColor3 = Color3.new(0, 0, 0)
shadow.ImageTransparency = 0.6 -- Subtle shadow effect
shadow.ScaleType = Enum.ScaleType.Slice
shadow.SliceCenter = Rect.new(10, 10, 118, 118)
shadow.Parent = mainFrame

local function createToggle(text, position, state)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 250, 0, 50)
    frame.Position = position
    frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    frame.Parent = mainFrame

    local UICornerToggle = Instance.new("UICorner")
    UICornerToggle.CornerRadius = UDim.new(0, 8)
    UICornerToggle.Parent = frame

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0.7, 0, 1, 0)
    label.Position = UDim2.new(0.05, 0, 0, 0)
    label.BackgroundTransparency = 1
    label.Text = text
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Font = Enum.Font.Gotham
    label.TextSize = 18
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = frame

    local toggleButton = Instance.new("TextButton")
    toggleButton.Size = UDim2.new(0.2, 0, 0.8, 0)
    toggleButton.Position = UDim2.new(0.75, 0, 0.1, 0)
    toggleButton.BackgroundColor3 = state and Color3.fromRGB(100, 255, 100) or Color3.fromRGB(255, 100, 100)
    toggleButton.Text = ""
    toggleButton.Parent = frame

    local UICornerButton = Instance.new("UICorner")
    UICornerButton.CornerRadius = UDim.new(0, 20)
    UICornerButton.Parent = toggleButton

    return toggleButton
end

local toggleHit = createToggle("Toggle Auto Hit", UDim2.new(0.5, -125, 0, 60), false)
local toggleRun = createToggle("Toggle Auto Run", UDim2.new(0.5, -125, 0, 130), false)
local toggleRebirth = createToggle("Toggle Auto Rebirth", UDim2.new(0.5, -125, 0, 200), false)
local toggleCollect = createToggle("Toggle Auto Collect", UDim2.new(0.5, -125, 0, 270), false)

local closeButton = createToggle("Close", UDim2.new(0.5, -125, 0, 340), false)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 75, 75)

local isHitEnabled = false
local isRunEnabled = false
local isRebirthEnabled = false
local isCollectEnabled = false

local function fireHitEvent()
    game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Hit"):FireServer()
end

local function toggleHitScript()
    isHitEnabled = not isHitEnabled
    toggleHit.BackgroundColor3 = isHitEnabled and Color3.fromRGB(100, 255, 100) or Color3.fromRGB(255, 100, 100)
    while isHitEnabled do
        fireHitEvent()
        task.wait()
    end
end

local function toggleRunScript()
    isRunEnabled = not isRunEnabled
    toggleRun.BackgroundColor3 = isRunEnabled and Color3.fromRGB(100, 255, 100) or Color3.fromRGB(255, 100, 100)
    while isRunEnabled do
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("StartRun"):FireServer()
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("FinishRun"):FireServer(9e9)
        task.wait()
    end
end

local function toggleRebirthScript()
    isRebirthEnabled = not isRebirthEnabled
    toggleRebirth.BackgroundColor3 = isRebirthEnabled and Color3.fromRGB(100, 255, 100) or Color3.fromRGB(255, 100, 100)
    while isRebirthEnabled do
        game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Rebirth"):FireServer()
        task.wait()
    end
end

local function toggleCollectScript()
    isCollectEnabled = not isCollectEnabled
    toggleCollect.BackgroundColor3 = isCollectEnabled and Color3.fromRGB(100, 255, 100) or Color3.fromRGB(255, 100, 100)
    while isCollectEnabled do
        for i = 1, 16 do
            game:GetService("ReplicatedStorage").Communication.CollectLuckyblock:FireServer(i)
        end
        task.wait()
    end
end

local function closeGui()
    screenGui:Destroy()
    isHitEnabled = false
    isRunEnabled = false
    isRebirthEnabled = false
    isCollectEnabled = false
end

toggleHit.MouseButton1Click:Connect(toggleHitScript)
toggleRun.MouseButton1Click:Connect(toggleRunScript)
toggleRebirth.MouseButton1Click:Connect(toggleRebirthScript)
toggleCollect.MouseButton1Click:Connect(toggleCollectScript)
closeButton.MouseButton1Click:Connect(closeGui)

local dragging, dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

mainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        update(input)
    end
end)