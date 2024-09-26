local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local Noclip = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Toggle = Instance.new("TextButton")
local StatusPF = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local Credit = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")

local ClipOn = false
local NoclipConnection

Noclip.Name = "Noclip"
Noclip.Parent = CoreGui

BG.Name = "BG"
BG.Parent = Noclip
BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
BG.BorderSizePixel = 2
BG.Position = UDim2.new(0.5, -75, 0.5, -63)
BG.Size = UDim2.new(0, 150, 0, 127)
BG.Active = true
BG.Draggable = true

Title.Name = "Title"
Title.Parent = BG
Title.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Title.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Title.BorderSizePixel = 2
Title.Size = UDim2.new(0, 150, 0, 33)
Title.Font = Enum.Font.Highway
Title.Text = "Noclip"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.FontSize = Enum.FontSize.Size24
Title.TextSize = 24
Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Title.TextStrokeTransparency = 0

Toggle.Parent = BG
Toggle.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Toggle.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.BorderSizePixel = 2
Toggle.Position = UDim2.new(0.5, -73, 0.7, -43)
Toggle.Size = UDim2.new(0, 146, 0, 36)
Toggle.Font = Enum.Font.Highway
Toggle.FontSize = Enum.FontSize.Size18
Toggle.Text = "Toggle"
Toggle.TextColor3 = Color3.new(1, 1, 1)
Toggle.TextSize = 18
Toggle.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.TextStrokeTransparency = 0

StatusPF.Name = "StatusPF"
StatusPF.Parent = BG
StatusPF.BackgroundColor3 = Color3.new(1, 1, 1)
StatusPF.BackgroundTransparency = 1
StatusPF.Position = UDim2.new(0.5, -43, 0.88, -23)
StatusPF.Size = UDim2.new(0, 56, 0, 20)
StatusPF.Font = Enum.Font.Highway
StatusPF.FontSize = Enum.FontSize.Size18
StatusPF.Text = "Status:"
StatusPF.TextColor3 = Color3.new(1, 1, 1)
StatusPF.TextSize = 18
StatusPF.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)
StatusPF.TextStrokeTransparency = 0
StatusPF.TextWrapped = true

Status.Name = "Status"
Status.Parent = BG
Status.BackgroundColor3 = Color3.new(1, 1, 1)
Status.BackgroundTransparency = 1
Status.Position = UDim2.new(0.5, -4, 0.88, -22)
Status.Size = UDim2.new(0, 50, 0, 20)
Status.Font = Enum.Font.Highway
Status.FontSize = Enum.FontSize.Size18
Status.Text = "Off"
Status.TextColor3 = Color3.new(1, 0, 0)
Status.TextWrapped = true

Credit.Name = "Credit"
Credit.Parent = BG
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.Position = UDim2.new(0.5, -64, 0.93, -10)
Credit.Size = UDim2.new(0, 128, 0, 17)
Credit.Font = Enum.Font.SourceSans
Credit.FontSize = Enum.FontSize.Size14
Credit.Text = "Created by alexis.isback00"
Credit.TextColor3 = Color3.new(1, 1, 1)
Credit.TextSize = 14
Credit.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Credit.TextStrokeTransparency = 0
Credit.TextWrapped = true

CloseButton.Name = "CloseButton"
CloseButton.Parent = BG
CloseButton.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
CloseButton.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
CloseButton.BorderSizePixel = 2
CloseButton.Position = UDim2.new(0.9, -15, 0.02, 0)
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Font = Enum.Font.Highway
CloseButton.FontSize = Enum.FontSize.Size18
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.TextSize = 18
CloseButton.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
CloseButton.TextStrokeTransparency = 0
CloseButton.MouseButton1Click:Connect(CloseGui)

local function ToggleNoclip(enabled)
    for _, player in pairs(Players:GetPlayers()) do
        local character = player.Character
        if character then
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = not enabled
                end
            end
        end
    end
    ClipOn = enabled
end

local function UpdateToggleVisual()
    Toggle.Text = ClipOn and "On" or "Off"
    local color = ClipOn and Color3.new(0, 1, 0) or Color3.new(1, 0, 0)

    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
    local tweenGoal = { TextStrokeColor3 = color, TextColor3 = color }

    local toggleTween = TweenService:Create(Toggle, tweenInfo, tweenGoal)
    toggleTween:Play()
end

local function ActivateNoclip()
    ToggleNoclip(not ClipOn)
    Status.Text = ClipOn and "On" or "Off"
    Status.TextColor3 = ClipOn and Color3.new(0, 1, 0) or Color3.new(1, 0, 0)
    UpdateToggleVisual()
end

Toggle.MouseButton1Click:Connect(ActivateNoclip)
CloseButton.MouseButton1Click:Connect(function()
    Noclip:Destroy()
end)

local function DraggingFunction(input)
    return UDim2.new(0, input.Position.X - Offset.X, 0, input.Position.Y - Offset.Y)
end

BG.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        Offset = input.Position - BG.Position
        BG.CaptureFocus = true
    end
end)

BG.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        BG.Position = DraggingFunction(input)
    end
end)

BG.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        BG.CaptureFocus = false
    end
end)

RunService.Heartbeat:Connect(function()
    if ClipOn then
        for _, player in pairs(Players:GetPlayers()) do
            local character = player.Character
            if character then
                for _, part in pairs(character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            end
        end
    end
end)