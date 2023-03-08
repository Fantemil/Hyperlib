-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local PlayerImage = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local PlayerName = Instance.new("TextLabel")
local MainSection = Instance.new("TextButton")
local CenterFun = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local SnowGun = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")
local UICorner_6 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.1801406, 0, 0.260598511, 0)
ImageLabel.Size = UDim2.new(0, 650, 0, 450)
ImageLabel.Image = "rbxassetid://11889829924"

UICorner.Parent = ImageLabel

PlayerImage.Name = "Player Image"
PlayerImage.Parent = ImageLabel
PlayerImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerImage.Position = UDim2.new(0.0153846145, 0, 0.0222222246, 0)
PlayerImage.Size = UDim2.new(0, 50, 0, 50)
PlayerImage.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner_2.CornerRadius = UDim.new(1, 1)
UICorner_2.Parent = PlayerImage

PlayerName.Name = "PlayerName"
PlayerName.Parent = ImageLabel
PlayerName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerName.BackgroundTransparency = 1.000
PlayerName.BorderSizePixel = 0
PlayerName.Position = UDim2.new(0.0923076943, 0, 0.0222222228, 0)
PlayerName.Size = UDim2.new(0, 128, 0, 50)
PlayerName.Font = Enum.Font.Unknown
PlayerName.Text = "Welcome"
PlayerName.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerName.TextSize = 20.000
PlayerName.TextWrapped = true

MainSection.Name = "Main Section"
MainSection.Parent = ImageLabel
MainSection.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainSection.BackgroundTransparency = 0.500
MainSection.BorderSizePixel = 0
MainSection.Position = UDim2.new(0.0153846154, 0, 0.175555557, 0)
MainSection.Size = UDim2.new(0, 170, 0, 50)
MainSection.Font = Enum.Font.Unknown
MainSection.Text = "Fun"
MainSection.TextColor3 = Color3.fromRGB(255, 255, 255)
MainSection.TextSize = 20.000
MainSection.TextWrapped = true

CenterFun.Name = "Center Fun"
CenterFun.Parent = ImageLabel
CenterFun.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CenterFun.BackgroundTransparency = 0.500
CenterFun.Position = UDim2.new(0.304615378, 0, 0.0222222228, 0)
CenterFun.Size = UDim2.new(0, 442, 0, 430)
CenterFun.Visible = false

UICorner_3.Parent = CenterFun

TextButton.Parent = CenterFun
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 0.900
TextButton.Position = UDim2.new(0.0271493215, 0, 0.0279069766, 0)
TextButton.Size = UDim2.new(0, 100, 0, 25)
TextButton.Font = Enum.Font.Unknown
TextButton.Text = "SnowGun"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UICorner_4.Parent = TextButton

SnowGun.Name = "SnowGun"
SnowGun.Parent = CenterFun
SnowGun.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SnowGun.BackgroundTransparency = 0.800
SnowGun.Position = UDim2.new(0.339366525, 0, 0.0279069766, 0)
SnowGun.Size = UDim2.new(0, 280, 0, 107)
SnowGun.Visible = false

UICorner_5.Parent = SnowGun

TextButton_2.Parent = SnowGun
TextButton_2.BackgroundColor3 = Color3.fromRGB(5, 22, 24)
TextButton_2.Position = UDim2.new(0.0464285724, 0, 0.644859791, 0)
TextButton_2.Size = UDim2.new(0, 100, 0, 25)
TextButton_2.Font = Enum.Font.Unknown
TextButton_2.Text = "Begin"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 14.000

TextBox.Parent = SnowGun
TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BackgroundTransparency = 0.500
TextBox.Position = UDim2.new(0.589285731, 0, 0.0560747646, 0)
TextBox.Size = UDim2.new(0, 68, 0, 32)
TextBox.Font = Enum.Font.Unknown
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

UICorner_6.Parent = TextBox

TextLabel.Parent = SnowGun
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 158, 0, 38)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "Number of Balls:"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = SnowGun
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.403571427, 0, 0.644859791, 0)
TextLabel_2.Size = UDim2.new(0, 156, 0, 25)
TextLabel_2.Font = Enum.Font.Unknown
TextLabel_2.Text = "Number Of Balls"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

-- Scripts:

local function HVOYT_fake_script() -- PlayerImage.LocalScript 
 local script = Instance.new('LocalScript', PlayerImage)

 local lPlr = game:GetService("Players").LocalPlayer
 
 script.Parent.Image = game:GetService("Players"):GetUserThumbnailAsync(lPlr.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
end
coroutine.wrap(HVOYT_fake_script)()
local function XYVYUFY_fake_script() -- PlayerName.LocalScript 
 local script = Instance.new('LocalScript', PlayerName)

 script.Parent.Text = "Welcome "..game.Players.LocalPlayer.Name
end
coroutine.wrap(XYVYUFY_fake_script)()
local function IPHK_fake_script() -- ImageLabel.LocalScript 
 local script = Instance.new('LocalScript', ImageLabel)

 script.Parent.Draggable = true
 script.Parent.Active = true
 
 game:GetService("UserInputService").InputBegan:Connect(function(key)
  if key.KeyCode == Enum.KeyCode.RightAlt then
   if script.Parent.Visible == false then
    script.Parent.Visible = true
   else
    script.Parent.Visible = false
   end
  end
 end)
 
 script.Parent.ImageTransparency = 1
 script.Parent.BackgroundTransparency = 1
 
 for Index,Frame in pairs(script.Parent:GetChildren()) do
  if Frame.ClassName == "ImageLabel" then
   print(Frame.Name)
   Frame.ImageTransparency = 1
   Frame.BackgroundTransparency = 1
  end
  if Frame.ClassName == "Frame" or Frame.ClassName == "TextButton" or Frame.ClassName == "TextLabel" then
   Frame.Visible = false
  end
 end
 
 for Iter = 1,100 do
  script.Parent.ImageTransparency = script.Parent.ImageTransparency - .01
  task.wait()
 end
 
 for Index,Frame in pairs(script.Parent:GetChildren()) do
  if Frame.ClassName == "ImageLabel" then
   Frame.ImageTransparency = 0
  end
  if Frame.ClassName == "Frame" or Frame.ClassName == "TextButton" or Frame.ClassName == "TextLabel" then
   if Frame.Name ~= "Center Fun" then
    Frame.Visible = true
   end
  end
 end
end
coroutine.wrap(IPHK_fake_script)()
local function LHYCNRF_fake_script() -- MainSection.LocalScript 
 local script = Instance.new('LocalScript', MainSection)

 script.Parent.MouseButton1Click:Connect(function()
  if script.Parent.Parent["Center Fun"].Visible == false then
   script.Parent.Parent["Center Fun"].Visible = true
  else
   script.Parent.Parent["Center Fun"].Visible = false
  end
 end)
end
coroutine.wrap(LHYCNRF_fake_script)()
local function GHWVQX_fake_script() -- TextButton.LocalScript 
 local script = Instance.new('LocalScript', TextButton)

 script.Parent.MouseButton1Click:Connect(function()
  if script.Parent.Parent.SnowGun.Visible == false then
   script.Parent.Parent.SnowGun.Visible = true
  else
   script.Parent.Parent.SnowGun.Visible = false
  end
 end)
end
coroutine.wrap(GHWVQX_fake_script)()
local function KAAULHP_fake_script() -- TextButton_2.LocalScript 
 local script = Instance.new('LocalScript', TextButton_2)

 _G.Num = 0
 script.Parent.MouseButton1Click:Connect(function()
  local Balls = tonumber(script.Parent.Parent.TextBox.Text)
  local Pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
  local function Start()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(492, 75, -928)
   wait(.5)
   for Iter = 1, Balls  do
    game:GetService("ReplicatedStorage").MainEvent:FireServer("PickSnow")
    _G.Num = _G.Num + 1
    task.wait(1.05)
   end
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
   _G.Num = 0
  end
 
  local function Trig()
   local Items = 0
   local Name = "[SnowBall]"
 
   for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.Name == Name then
     Items = Items + 1
    end
   end
 
 
 
   local radius = 3
   local number_of_parts = Items
   local circle = math.pi * 2
   local i = 1
 
 
   for _,v in pairs(game.Players.LocalPlayer:GetDescendants()) do
    local angle = circle / number_of_parts * i
    local x_pos = math.cos(angle) * radius
    local y_pos = math.sin(angle) * radius
    if v.ClassName == "Tool" and v.Name == Name then
     v.Parent = game.Players.LocalPlayer.Character
     v.GripPos = Vector3.new(1.5 + x_pos, 1.5 + y_pos, -1)
     i = i + 1
     task.wait()
    end
   end
  end
 
  local function INV_TO_PLR()
   local Plr = game:GetService("Players").LocalPlayer
   for Index,Tool in pairs(Plr.Character:GetChildren()) do
    if Tool:IsA("Tool") then
     Tool.Parent = Plr.Backpack
    end
    task.wait()
   end
  end
 
  local function Loop()
   local Name = "[SnowBall]"
   while _G.Toggle do
    for Index,Tool in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
     if Tool.Name == Name and Tool.Parent == game.Players.LocalPlayer.Backpack then
      pcall(function()
       Tool.Parent = game.Players.LocalPlayer.Character
       wait()
       Tool.Parent = game.Players.LocalPlayer.Backpack
      end)
     end
     if not game.Players.LocalPlayer.Backpack:FindFirstChild(Name) then
      _G.Toggle = false
     end
    end
    task.wait()
   end
  end
 
  Start()
  Trig()
  INV_TO_PLR()
  _G.Toggle = true
  Loop()
 
 end)
end
coroutine.wrap(KAAULHP_fake_script)()
local function CLWHDUF_fake_script() -- TextBox.LocalScript 
 local script = Instance.new('LocalScript', TextBox)

 
end
coroutine.wrap(CLWHDUF_fake_script)()
local function HTHN_fake_script() -- TextLabel_2.LocalScript 
 local script = Instance.new('LocalScript', TextLabel_2)

 while true do
  if script.Parent.Parent.TextBox.Text ~= nil then
   script.Parent.Text = _G.Num.."/"..script.Parent.Parent.TextBox.Text
  end
  task.wait()
 end
end
coroutine.wrap(HTHN_fake_script)()