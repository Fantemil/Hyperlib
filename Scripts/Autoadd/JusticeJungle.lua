-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local AutoWin = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local AutoWin_2 = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
Frame.Position = UDim2.new(0.114236996, 0, 0.18225807, 0)
Frame.Size = UDim2.new(0, 127, 0, 185)

AutoWin.Name = "AutoWin"
AutoWin.Parent = Frame
AutoWin.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
AutoWin.Position = UDim2.new(0.0516762324, 0, 0.0650171265, 0)
AutoWin.Size = UDim2.new(0, 112, 0, 51)
AutoWin.Font = Enum.Font.Nunito
AutoWin.Text = "Auto win"
AutoWin.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoWin.TextSize = 22.000

UICorner.Parent = AutoWin

UICorner_2.Parent = Frame

AutoWin_2.Name = "AutoWin"
AutoWin_2.Parent = Frame
AutoWin_2.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
AutoWin_2.Position = UDim2.new(0.0674242675, 0, 0.437704563, 0)
AutoWin_2.Size = UDim2.new(0, 108, 0, 51)
AutoWin_2.Font = Enum.Font.Nunito
AutoWin_2.Text = "Auto chest"
AutoWin_2.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoWin_2.TextSize = 22.000

UICorner_3.Parent = AutoWin_2

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.14173229, 0, 0.762162149, 0)
TextLabel.Size = UDim2.new(0, 87, 0, 37)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "GUI made by Derpuw#3558 for Justice Jungle"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 12.000
TextLabel.TextWrapped = true

-- Scripts:

local function VNGVBDF_fake_script() -- AutoWin.LocalScript 
 local script = Instance.new('LocalScript', AutoWin)

 script.Parent.MouseButton1Click:Connect(function()
  local loop = 1
 
  while loop < 5 do
   game.Players.LocalPlayer.Character.Humanoid.Health = 0
   wait(3)
   local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
   local location = CFrame.new(-410, 4, -37)
   local humanoid = game.Players.LocalPlayer.Character.Humanoid
   humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
   pl.CFrame = location
 
 
 
  end
 end)
end
coroutine.wrap(VNGVBDF_fake_script)()
local function KVQE_fake_script() -- AutoWin_2.LocalScript 
 local script = Instance.new('LocalScript', AutoWin_2)

 script.Parent.MouseButton1Click:Connect(function()
  local loop = 1
 
  while loop < 5 do
   game.Players.LocalPlayer.Character.Humanoid.Health = 0
   wait(3)
   local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
   local location = CFrame.new(-410, 4, -37)
   local humanoid = game.Players.LocalPlayer.Character.Humanoid
   humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
   pl.CFrame = location
 
 
 
  end
 end)
end
coroutine.wrap(KVQE_fake_script)()
local function HFZKZVP_fake_script() -- Frame.LocalScript 
 local script = Instance.new('LocalScript', Frame)

 Frame = script.Parent.Frame --Name of your frame
 Frame.Draggable = true
 Frame.Active = true
 Frame.Selectable = true
end
coroutine.wrap(HFZKZVP_fake_script)()