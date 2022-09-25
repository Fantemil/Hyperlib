local FXdbXCT6OLt75edXIpv7 = Instance.new("ScreenGui")
local ECHVOobLFifwdKiIQxSQ = Instance.new("Frame")
local gFYMIIjGNajoDppJf4WA = Instance.new("TextLabel")

FXdbXCT6OLt75edXIpv7.Name = "FXdbXCT6OLt75edXIpv7"
FXdbXCT6OLt75edXIpv7.Parent = game:WaitForChild("CoreGui")
FXdbXCT6OLt75edXIpv7.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ECHVOobLFifwdKiIQxSQ.Name = "ECHVOobLFifwdKiIQxSQ"
ECHVOobLFifwdKiIQxSQ.Parent = FXdbXCT6OLt75edXIpv7
ECHVOobLFifwdKiIQxSQ.AnchorPoint = Vector2.new(0.5, 0.5)
ECHVOobLFifwdKiIQxSQ.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ECHVOobLFifwdKiIQxSQ.BorderColor3 = Color3.fromRGB(255, 255, 255)
ECHVOobLFifwdKiIQxSQ.Position = UDim2.new(0.899999976, 0, 0.100000001, 0)
ECHVOobLFifwdKiIQxSQ.Size = UDim2.new(0.0900000036, 0, 0.0399999991, 0)

gFYMIIjGNajoDppJf4WA.Name = "gFYMIIjGNajoDppJf4WA"
gFYMIIjGNajoDppJf4WA.Parent = ECHVOobLFifwdKiIQxSQ
gFYMIIjGNajoDppJf4WA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gFYMIIjGNajoDppJf4WA.BackgroundTransparency = 1.000
gFYMIIjGNajoDppJf4WA.BorderSizePixel = 0
gFYMIIjGNajoDppJf4WA.Size = UDim2.new(1, 0, 1, 0)
gFYMIIjGNajoDppJf4WA.Font = Enum.Font.RobotoMono
gFYMIIjGNajoDppJf4WA.Text = "Ping : Calculating"
gFYMIIjGNajoDppJf4WA.TextColor3 = Color3.fromRGB(255, 255, 255)
gFYMIIjGNajoDppJf4WA.TextSize = 14.000
gFYMIIjGNajoDppJf4WA.TextWrapped = true

local function BTQHWCD_fake_script() -- FXdbXCT6OLt75edXIpv7.34TRSWKGcLtlaHHhhgpW 
 local script = Instance.new('LocalScript', FXdbXCT6OLt75edXIpv7)

 local Script = script
 local Gui = Script.Parent
 local Frame = Gui:FindFirstChildOfClass("Frame")
 local Ping = Frame:FindFirstChildOfClass("TextLabel")
 
 local Drag = Frame
 gsCoreGui = game:GetService("CoreGui")
 gsTween = game:GetService("TweenService")
 local UserInputService = game:GetService("UserInputService")
 local dragging
 local dragInput
 local dragStart
 local startPos
 local function update(input)
  local delta = input.Position - dragStart
  local dragTime = 0.04
  local SmoothDrag = {}
  SmoothDrag.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
  local dragSmoothFunction = gsTween:Create(Drag, TweenInfo.new(dragTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), SmoothDrag)
  dragSmoothFunction:Play()
 end
 Drag.InputBegan:Connect(function(input)
  if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
   dragging = true
   dragStart = input.Position
   startPos = Drag.Position
   input.Changed:Connect(function()
    if input.UserInputState == Enum.UserInputState.End then
     dragging = false
    end
   end)
  end
 end)
 Drag.InputChanged:Connect(function(input)
  if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
   dragInput = input
  end
 end)
 UserInputService.InputChanged:Connect(function(input)
  if input == dragInput and dragging and Drag.Size then
   update(input)
  end
 end)
 
 while Script and task.wait() do
  local PingString = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
  local Split = string.split(PingString, " ")
  local PingValue = Split[1]
  
  Ping.Text = "Ping : "..PingValue
 end
end
coroutine.wrap(BTQHWCD_fake_script)()