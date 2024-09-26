-- Define GUI elements
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ActivateButton = Instance.new("TextButton")
local ActivateButtonUICorner = Instance.new("UICorner")
local WarningLabel = Instance.new("TextLabel")
local UIS = game:GetService("UserInputService")
local SoundService = game:GetService("SoundService")

-- Set properties for the GUI elements
ScreenGui.Name = "ChatbotGUI"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.Position = UDim2.new(0.5, -100, 0.5, -50)
Frame.Size = UDim2.new(0, 200, 0, 120)
Frame.BackgroundTransparency = 0.2
Frame.BorderSizePixel = 0
Frame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Frame.Draggable = true

UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = Frame

ActivateButton.Parent = Frame
ActivateButton.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
ActivateButton.Position = UDim2.new(0.5, -50, 0.4, -20)
ActivateButton.Size = UDim2.new(0, 100, 0, 40)
ActivateButton.Font = Enum.Font.SourceSans
ActivateButton.Text = "Activate Chatbot"
ActivateButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ActivateButton.TextSize = 14
ActivateButton.AutoButtonColor = false

ActivateButtonUICorner.CornerRadius = UDim.new(0, 10)
ActivateButtonUICorner.Parent = ActivateButton

WarningLabel.Parent = Frame
WarningLabel.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
WarningLabel.Position = UDim2.new(0.5, -100, 1, -10)
WarningLabel.Size = UDim2.new(0, 200, 0, 40)
WarningLabel.Font = Enum.Font.SourceSans
WarningLabel.Text = 'The chatbot can only be stopped by typing "/chatbot stop" in the chat'
WarningLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
WarningLabel.TextSize = 12
WarningLabel.TextWrapped = true

-- Make the GUI draggable
local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Frame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UIS.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

-- Function to play sound
local function playSound()
    local sound = Instance.new("Sound", SoundService)
    sound.SoundId = "rbxassetid://2296072875" -- Your sound asset ID
    sound:Play()
    sound.Ended:Connect(function()
        sound:Destroy()
    end)
end

-- Function to activate the chatbot
ActivateButton.MouseButton1Click:Connect(function()
    playSound()
    getgenv().bot_name  = game.Players.LocalPlayer.Name --/ change name with quotation mark. ex : "Min" or 'Min'
    getgenv().bot_owner = "MinWasTaken 2873" --/ this too
    getgenv().slashtorespond = false --/ respond to player when they say /botin [msg]
    getgenv().max_dist = 30 --/ respond to player in distance

    --/ say "/chatbot stop" to stop responding

    loadstring((syn and syn.request or http_request or request)({Url="https://raw.githubusercontent.com/MinWasTakenOnGitHub/Roblox-Scripts/main/Universal/chatbot",Method="GET"}).Body)()
end)

-- Add some animations (example of a simple tween)
local TweenService = game:GetService("TweenService")
local TweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

ActivateButton.MouseEnter:Connect(function()
    TweenService:Create(ActivateButton, TweenInfo, {BackgroundColor3 = Color3.fromRGB(100, 100, 100)}):Play()
end)

ActivateButton.MouseLeave:Connect(function()
    TweenService:Create(ActivateButton, TweenInfo, {BackgroundColor3 = Color3.fromRGB(75, 75, 75)}):Play()
end)
