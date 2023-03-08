-- made by axdwt plis no stealy or skid!11!1
-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton_3 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
getfenv().play = false
getfenv().skipplaying = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.319946706, 0, 0.430141568, 0)
Frame.Size = UDim2.new(0, 463, 0, 219)
Frame.Style = Enum.FrameStyle.RobloxRound

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(-0.021598272, 0, -0.037979193, 0)
TextLabel.Size = UDim2.new(0, 466, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "r0bl0x s0und sp4m h4x 2016!111!!!"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(-0.0159438848, 0, 0.74393785, 0)
TextButton.Size = UDim2.new(0, 197, 0, 57)
TextButton.Style = Enum.ButtonStyle.RobloxButtonDefault
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Dont skip if playing"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.Position = UDim2.new(0.578008592, 0, 0.74393785, 0)
TextButton_2.Size = UDim2.new(0, 197, 0, 57)
TextButton_2.Style = Enum.ButtonStyle.RobloxButtonDefault
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Disabled"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(-0.0259179268, 0, 0.31818521, 0)
TextLabel_2.Size = UDim2.new(0, 466, 0, 50)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "m4de by axdwt!1111 pro h4x3r"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextWrapped = true

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.Position = UDim2.new(0.88680011, 0, -0.324853063, 0)
TextButton_3.Size = UDim2.new(0, 58, 0, 58)
TextButton_3.Style = Enum.ButtonStyle.RobloxButtonDefault
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "X"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

-- Scripts:

local function BZAK_fake_script() -- TextButton.LocalScript 
 local script = Instance.new('LocalScript', TextButton)

 script.Parent.MouseButton1Click:Connect(function()
  if script.Parent.Text == "Dont skip if playing" then
   script.Parent.Text = "Skip if playing"
   getfenv().skipplaying = true
  elseif script.Parent.Text == "Skip if playing" then
   getfenv().skipplaying = false
   script.Parent.Text = "Dont skip if playing"
  end
 end)
end
coroutine.wrap(BZAK_fake_script)()
local function ACQZN_fake_script() -- TextButton_2.LocalScript 
 local script = Instance.new('LocalScript', TextButton_2)

 script.Parent.MouseButton1Click:Connect(function()
  if script.Parent.Text == "Disabled" then
   script.Parent.Text = "Enabled"
   getfenv().play = true
  elseif script.Parent.Text == "Enabled" then
   script.Parent.Text = "Disabled"
   getfenv().play = false
  end
 end)
end
coroutine.wrap(ACQZN_fake_script)()
local function BKNNTB_fake_script() -- TextButton_3.LocalScript 
 local script = Instance.new('LocalScript', TextButton_3)

 script.Parent.MouseButton1Click:Connect(function()
  print("quitting hax")
  getfenv().play = false
  getfenv().skipplaying = false
  script.Parent.Parent.Parent:Destroy()
 end)
end
coroutine.wrap(BKNNTB_fake_script)()
local function AYDPXHQ_fake_script() -- Frame.Dragify 
 local script = Instance.new('LocalScript', Frame)

 --lazy to make one also "random.Draggable" is not working
 local UIS = game:GetService("UserInputService")
 function dragify(Frame)
  dragToggle = nil
  dragSpeed = 0.15
  dragInput = nil
  dragStart = nil
  dragPos = nil
  function updateInput(input)
   Delta = input.Position - dragStart
   Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
   game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
  end
  Frame.InputBegan:Connect(function(input)
   if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
    dragToggle = true
    dragStart = input.Position
    startPos = Frame.Position
    input.Changed:Connect(function()
     if input.UserInputState == Enum.UserInputState.End then
      dragToggle = false
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
   if input == dragInput and dragToggle then
    updateInput(input)
   end
  end)
 end
 dragify(script.Parent)
 
end
coroutine.wrap(AYDPXHQ_fake_script)()
local function QXYTW_fake_script() -- ScreenGui.SFE checker 
 local script = Instance.new('LocalScript', ScreenGui)

 function runerror(text:string)
  for i,v in pairs(workspace:GetDescendants()) do
   if not v:IsA("Terrain") then
    v:destroy()
    print(v.Name.." Destroyed bc "..text)
   elseif v:IsA("Terrain") then
    print(v.Name.."Could not be destroyed")
   end
  end
  game:GetService("Players").LocalPlayer:Destroy()
  print(text)
 end
 if game:GetService("SoundService").RespectFilteringEnabled == true then
  game:GetService("Players").LocalPlayer:Kick("SFE == ENABLED")
  runerror("SFE ENABLED")
 elseif game:GetService("SoundService").RespectFilteringEnabled == false then
  print("Setting up workspace.remote")
  print("ready to use axdwt's sound nuke")
 end
end
coroutine.wrap(QXYTW_fake_script)()
local function GDFHBDL_fake_script() -- ScreenGui.Spam 
 local script = Instance.new('LocalScript', ScreenGui)

 game:GetService("RunService").RenderStepped:Connect(function()
  if getfenv().play == true then
   if getfenv().skipplaying == false then
    for i,v in pairs(workspace:GetDescendants()) do
     if v:IsA("Sound") then
      v:Play()
     end
    end
   elseif getfenv().skipplaying == true then
    for i,v in pairs(workspace:GetDescendants()) do
     if v:IsA("Sound") then
      if v.Playing == false then
       v:Play()
      elseif v.Playing == true then
      end
     end
    end
   end
  end
 end)
end
coroutine.wrap(GDFHBDL_fake_script)()