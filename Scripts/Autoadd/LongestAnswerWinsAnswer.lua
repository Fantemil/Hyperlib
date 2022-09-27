-- Gui to Lua
-- Version: 3.2

-- Instances:

local LongestAnswerWins = Instance.new("ScreenGui")
local Gradient = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local UICorner = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Shadow = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local Pattern = Instance.new("ImageLabel")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

LongestAnswerWins.Name = "Longest Answer Wins"
LongestAnswerWins.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Gradient.Name = "Gradient"
Gradient.Parent = LongestAnswerWins
Gradient.AnchorPoint = Vector2.new(0.5, 0.5)
Gradient.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Gradient.BorderColor3 = Color3.fromRGB(27, 42, 53)
Gradient.BorderSizePixel = 0
Gradient.Position = UDim2.new(0.49960503, 0, 0.5, 0)
Gradient.Size = UDim2.new(0, 243, 0, 122)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(102, 45, 113)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(197, 66, 110))}
UIGradient.Parent = Gradient

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Gradient

Frame.Parent = Gradient
Frame.BackgroundColor3 = Color3.fromRGB(122, 17, 73)
Frame.Position = UDim2.new(0.127929747, 0, 0.291059643, 0)
Frame.Size = UDim2.new(0, 180, 0, 49)
Frame.ZIndex = 9999

UICorner_2.CornerRadius = UDim.new(1, 0)
UICorner_2.Parent = Frame

Shadow.Name = "Shadow"
Shadow.Parent = Frame
Shadow.BackgroundColor3 = Color3.fromRGB(103, 17, 54)
Shadow.BorderSizePixel = 0
Shadow.Size = UDim2.new(1.00554669, 0, 1, 4)

UICorner_3.CornerRadius = UDim.new(1, 0)
UICorner_3.Parent = Shadow

TextLabel.Parent = Frame
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel.Size = UDim2.new(1, -20, 1, -20)
TextLabel.ZIndex = 999999999
TextLabel.Font = Enum.Font.GothamMedium
TextLabel.Text = "Answer"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Pattern.Name = "Pattern"
Pattern.Parent = Gradient
Pattern.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pattern.BackgroundTransparency = 1.000
Pattern.Position = UDim2.new(0, 0, 0.00819672085, 0)
Pattern.Size = UDim2.new(0, 243, 0, 122)
Pattern.ZIndex = 9
Pattern.Image = "rbxassetid://2151741365"
Pattern.ImageTransparency = 0.600
Pattern.ScaleType = Enum.ScaleType.Tile
Pattern.SliceCenter = Rect.new(0, 256, 0, 256)
Pattern.TileSize = UDim2.new(0, 250, 0, 250)

TextLabel_2.Parent = Gradient
TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.502057612, 0, 0.145529836, 0)
TextLabel_2.Size = UDim2.new(0.51028806, -20, 0.323846549, -20)
TextLabel_2.ZIndex = 999999999
TextLabel_2.Font = Enum.Font.GothamMedium
TextLabel_2.Text = "Ishi#0366"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 41, 162)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

-- Scripts:

local function NLPWLR_fake_script() -- Gradient.DragScript 
 local script = Instance.new('LocalScript', Gradient)

 --Not made by me, check out this video: https://www.youtube.com/watch?v=z25nyNBG7Js&t=22s
 --Put this inside of your Frame and configure the speed if you would like.
 --Enjoy! Credits go to: https://www.youtube.com/watch?v=z25nyNBG7Js&t=22s
 
 local UIS = game:GetService('UserInputService')
 local frame = script.Parent
 local dragToggle = nil
 local dragSpeed = 0.25
 local dragStart = nil
 local startPos = nil
 
 local function updateInput(input)
  local delta = input.Position - dragStart
  local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
   startPos.Y.Scale, startPos.Y.Offset + delta.Y)
  game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
 end
 
 frame.InputBegan:Connect(function(input)
  if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
   dragToggle = true
   dragStart = input.Position
   startPos = frame.Position
   input.Changed:Connect(function()
    if input.UserInputState == Enum.UserInputState.End then
     dragToggle = false
    end
   end)
  end
 end)
 
 UIS.InputChanged:Connect(function(input)
  if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
   if dragToggle then
    updateInput(input)
   end
  end
 end)
 
end
coroutine.wrap(NLPWLR_fake_script)()
local function XDII_fake_script() -- Frame.Script 
 local script = Instance.new('Script', Frame)

 local answer = game:GetService("ReplicatedStorage").HintAnswer.Value
 while true do
  wait(0.5)
  script.Parent.TextLabel.Text = game:GetService("ReplicatedStorage").HintAnswer.Value
  print(answer)
 end
end
coroutine.wrap(XDII_fake_script)()