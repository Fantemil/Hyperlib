--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- Monstrum's Gui to Lua\n-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local _666 = Instance.new("TextButton")
local decal = Instance.new("TextButton")
local disco = Instance.new("TextButton")
local hint = Instance.new("TextButton")
local jump = Instance.new("TextButton")
local message = Instance.new("TextButton")
local parts = Instance.new("TextButton")
local theme = Instance.new("TextButton")
local shut = Instance.new("TextButton")
local sky = Instance.new("TextButton")
local eses = Instance.new("TextButton")
local unanchor = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(255, 256, 255)
Frame.BorderSizePixel = 5
Frame.Position = UDim2.new(0.358271539, 0, 0.266487002, 0)
Frame.Size = UDim2.new(0, 386, 0, 349)

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.Position = UDim2.new(0.0542240441, 0, 0.06919498, 0)
ScrollingFrame.Size = UDim2.new(0, 347, 0, 298)
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)

TextLabel.Parent = ScrollingFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.271820426, 0, 0.0183245987, 0)
TextLabel.Size = UDim2.new(0, 170, 0, 32)
TextLabel.Font = Enum.Font.Arial
TextLabel.Text = "n0tagui [Sounds Edition]"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = TextLabel
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(-0.00465016067, 0, 1.28959417, 0)
TextLabel_2.Size = UDim2.new(0, 170, 0, 32)
TextLabel_2.Font = Enum.Font.Arial
TextLabel_2.Text = "some sounds may not work"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = TextLabel_2
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.395349801, 0, 21.8208447, 0)
TextLabel_3.Size = UDim2.new(0, 170, 0, 14)
TextLabel_3.Font = Enum.Font.Arial
TextLabel_3.Text = "yes"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

_666.Name = "666"
_666.Parent = TextLabel_3
_666.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_666.BorderColor3 = Color3.fromRGB(255, 255, 254)
_666.Position = UDim2.new(-0.241176382, 0, -43, 0)
_666.Size = UDim2.new(0, 99, 0, 39)
_666.Font = Enum.Font.SourceSans
_666.Text = "Sound 1"
_666.TextColor3 = Color3.fromRGB(255, 255, 255)
_666.TextScaled = true
_666.TextSize = 14.000
_666.TextWrapped = true
_666.MouseButton1Down:Connect(function()
  local sound = Instance.new("Sound",game.Workspace)
  sound.Name = "H4xed By not4player214"
  sound.SoundId = "rbxassetid://1839246711"
  sound.Volume = 999999999999999999999
  sound.PlaybackSpeed = 0.9
  sound:Play()
end)
decal.Name = "decal"
decal.Parent = TextLabel_3
decal.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
decal.BorderColor3 = Color3.fromRGB(255, 255, 255)
decal.Position = UDim2.new(-0.864705801, 0, -46.5, 0)
decal.Size = UDim2.new(0, 99, 0, 39)
decal.Font = Enum.Font.SourceSans
decal.Text = "Sound 2"
decal.TextColor3 = Color3.fromRGB(255, 255, 255)
decal.TextScaled = true
decal.TextSize = 14.000
decal.TextWrapped = true
decal.MouseButton1Down:Connect(function()
  local sound = Instance.new("Sound",game.Workspace)
  sound.Name = "H4xed By not4player214"
  sound.SoundId = "rbxassetid://6953866301"
  sound.Volume = 999999999999999999999
  sound:Play()
end)

disco.Name = "disco"
disco.Parent = TextLabel_3
disco.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
disco.BorderColor3 = Color3.fromRGB(255, 255, 255)
disco.Position = UDim2.new(0.394117653, 0, -39.5714302, 0)
disco.Size = UDim2.new(0, 99, 0, 39)
disco.Font = Enum.Font.SourceSans
disco.Text = "Sound 3"
disco.TextColor3 = Color3.fromRGB(255, 255, 255)
disco.TextScaled = true
disco.TextSize = 14.000
disco.TextWrapped = true
disco.MouseButton1Down:Connect(function()
  local sound = Instance.new("Sound",game.Workspace)
  sound.Name = "H4xed By not4player214"
  sound.SoundId = "rbxassetid://6970996018"
  sound.Volume = 999999999999999999999
  sound.PlaybackSpeed = 0.9
  sound:Play()
end)
hint.Name = "hint"
hint.Parent = TextLabel_3
hint.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
hint.BorderColor3 = Color3.fromRGB(255, 255, 255)
hint.Position = UDim2.new(0.394117713, 0, -46.5, 0)
hint.Size = UDim2.new(0, 99, 0, 39)
hint.Font = Enum.Font.SourceSans
hint.Text = "Br00khaven siren"
hint.TextColor3 = Color3.fromRGB(255, 255, 255)
hint.TextScaled = true
hint.TextSize = 14.000
hint.TextWrapped = true
hint.MouseButton1Down:Connect(function()
  local sound = Instance.new("Sound",game.Workspace)
  sound.Name = "H4xed By not4player214"
  sound.SoundId = "rbxassetid://9109836322"
  sound.Volume = 999999999999999999999
  sound.PlaybackSpeed = 1
  sound.Looped = true
  sound:Play()
end)

jump.Name = "jump"
jump.Parent = TextLabel_3
jump.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
jump.BorderColor3 = Color3.fromRGB(255, 255, 255)
jump.Position = UDim2.new(0.394117713, 0, -43, 0)
jump.Size = UDim2.new(0, 99, 0, 39)
jump.Font = Enum.Font.SourceSans
jump.Text = "Sound 5"
jump.TextColor3 = Color3.fromRGB(255, 255, 255)
jump.TextScaled = true
jump.TextSize = 14.000
jump.TextWrapped = true
jump.MouseButton1Down:Connect(function()
  local sound = Instance.new("Sound",game.Workspace)
  sound.Name = "H4xed By not4player214"
  sound.SoundId = "rbxassetid://6984999899"
  sound.Volume = 999999999999999999999
  sound.PlaybackSpeed = 0.9
  sound:Play()
end)

message.Name = "message"
message.Parent = TextLabel_3
message.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
message.BorderColor3 = Color3.fromRGB(255, 255, 255)
message.Position = UDim2.new(-0.241176471, 0, -39.5714302, 0)
message.Size = UDim2.new(0, 99, 0, 39)
message.Font = Enum.Font.SourceSans
message.Text = "Clear Sounds"
message.TextColor3 = Color3.fromRGB(255, 255, 255)
message.TextScaled = true
message.TextSize = 14.000
message.TextWrapped = true
message.MouseButton1Down:Connect(function()
  for i,v in pairs(game.Workspace:GetDescendants()) do
    if v:IsA("Sound") then do
      v:Destroy()
    end
    end
    end
end)



parts.Name = "parts"
parts.Parent = TextLabel_3
parts.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
parts.BorderColor3 = Color3.fromRGB(255, 255, 255)
parts.Position = UDim2.new(-0.864705801, 0, -43, 0)
parts.Size = UDim2.new(0, 99, 0, 39)
parts.Font = Enum.Font.SourceSans
parts.Text = "Particles"
parts.TextColor3 = Color3.fromRGB(255, 255, 255)
parts.TextScaled = true
parts.TextSize = 14.000
parts.TextWrapped = true

theme.Name = "theme"
theme.Parent = TextLabel_3
theme.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
theme.BorderColor3 = Color3.fromRGB(255, 255, 255)
theme.Position = UDim2.new(-0.947058797, 0, -51.6428566, 0)
theme.Size = UDim2.new(0, 59, 0, 24)
theme.Font = Enum.Font.SourceSans
theme.Text = "theme"
theme.TextColor3 = Color3.fromRGB(255, 255, 255)
theme.TextScaled = true
theme.TextSize = 14.000
theme.TextWrapped = true

shut.Name = "shut"
shut.Parent = TextLabel_3
shut.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
shut.BorderColor3 = Color3.fromRGB(255, 255, 255)
shut.Position = UDim2.new(-0.241176471, 0, -36.0714302, 0)
shut.Size = UDim2.new(0, 99, 0, 39)
shut.Font = Enum.Font.SourceSans
shut.Text = "Shutdown"
shut.TextColor3 = Color3.fromRGB(255, 255, 255)
shut.TextScaled = true
shut.TextSize = 14.000
shut.TextWrapped = true

sky.Name = "sky"
sky.Parent = TextLabel_3
sky.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
sky.BorderColor3 = Color3.fromRGB(255, 255, 255)
sky.Position = UDim2.new(-0.241176382, 0, -46.5, 0)
sky.Size = UDim2.new(0, 99, 0, 39)
sky.Font = Enum.Font.SourceSans
sky.Text = "SkyBox"
sky.TextColor3 = Color3.fromRGB(255, 255, 255)
sky.TextScaled = true
sky.TextSize = 14.000
sky.TextWrapped = true

eses.Name = "eses"
eses.Parent = TextLabel_3
eses.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
eses.BorderColor3 = Color3.fromRGB(255,  255, 255)
eses.Position = UDim2.new(-0.870588183, 0, -39.5714302, 0)
eses.Size = UDim2.new(0, 99, 0, 39)
eses.Font = Enum.Font.SourceSans
eses.Text = "IS1S JumpScare"
eses.TextColor3 = Color3.fromRGB(255, 255, 255)
eses.TextScaled = true
eses.TextSize = 14.000
eses.TextWrapped = true

unanchor.Name = "unanchor"
unanchor.Parent = TextLabel_3
unanchor.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
unanchor.BorderColor3 = Color3.fromRGB(255, 255, 255)
unanchor.Position = UDim2.new(-0.241176292, 0, -32.3571434, 0)
unanchor.Size = UDim2.new(0, 99, 0, 39)
unanchor.Font = Enum.Font.SourceSans
unanchor.Text = "UnAnchor"
unanchor.TextColor3 = Color3.fromRGB(255, 255, 255)
unanchor.TextScaled = true
unanchor.TextSize = 14.000
unanchor.TextWrapped = true

-- Scripts:

local dragging = false
local dragInput, mousePos, framePos

local function update(input)
    local delta = input.Position - mousePos
    Frame.Position = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
end

Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        mousePos = input.Position
        framePos = Frame.Position
        
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

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        update(input)
    end
end)