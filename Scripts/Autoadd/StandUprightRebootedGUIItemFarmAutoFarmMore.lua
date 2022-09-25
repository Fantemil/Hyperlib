-- Gui to Lua
-- Version: 3.2

-- Instances:

local MainGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ASada = Instance.new("TextButton")
local Speed = Instance.new("TextButton")
local Speed2 = Instance.new("TextButton")
local Speed3 = Instance.new("TextButton")
local Speed4 = Instance.new("TextButton")
local Speed5 = Instance.new("TextButton")
local Speed6 = Instance.new("TextButton")
local Speed7 = Instance.new("TextButton")
local Speed8 = Instance.new("TextButton")
local Speed10 = Instance.new("TextButton")
local Speed11 = Instance.new("TextButton")
local Speed12 = Instance.new("TextButton")
local Speed13 = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Frame_2 = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local A1 = Instance.new("TextButton")
local A2 = Instance.new("TextButton")
local A3 = Instance.new("TextButton")
local A3_2 = Instance.new("TextButton")
local A1_2 = Instance.new("TextButton")
local A2_2 = Instance.new("TextButton")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")

--Properties:

MainGui.Name = "MainGui"
MainGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = MainGui
Frame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Frame.BorderColor3 = Color3.fromRGB(33, 33, 33)
Frame.BorderSizePixel = 4
Frame.Position = UDim2.new(0.0993214101, 0, 0.305309743, 0)
Frame.Size = UDim2.new(0.277606428, 0, 0.536480665, 0)

ASada.Name = "ASada"
ASada.Parent = Frame
ASada.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
ASada.BackgroundTransparency = 1.000
ASada.Position = UDim2.new(0.195555568, 0, 0, 0)
ASada.Size = UDim2.new(0.608888865, 0, 0.115999997, 0)
ASada.Font = Enum.Font.Jura
ASada.Text = "Stand Upright: Rebooted"
ASada.TextColor3 = Color3.fromRGB(255, 85, 127)
ASada.TextSize = 27.000

Speed.Name = "Speed"
Speed.Parent = Frame
Speed.BackgroundColor3 = Color3.fromRGB(255, 85, 127)
Speed.BorderColor3 = Color3.fromRGB(255, 255, 255)
Speed.BorderSizePixel = 0
Speed.Position = UDim2.new(0.0357603617, 0, 0.806653798, 0)
Speed.Size = UDim2.new(0.286666662, 0, 0.115999997, 0)
Speed.Font = Enum.Font.Jura
Speed.Text = "Speed"
Speed.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed.TextSize = 19.000
Speed.TextStrokeColor3 = Color3.fromRGB(47, 15, 0)

Speed2.Name = "Speed2"
Speed2.Parent = Frame
Speed2.BackgroundColor3 = Color3.fromRGB(255, 85, 127)
Speed2.BorderColor3 = Color3.fromRGB(255, 255, 255)
Speed2.BorderSizePixel = 0
Speed2.Position = UDim2.new(0.0357603617, 0, 0.622653782, 0)
Speed2.Size = UDim2.new(0.286666662, 0, 0.115999997, 0)
Speed2.Font = Enum.Font.Jura
Speed2.Text = "Farm Items"
Speed2.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed2.TextSize = 19.000
Speed2.TextStrokeColor3 = Color3.fromRGB(47, 15, 0)

Speed3.Name = "Speed3"
Speed3.Parent = Frame
Speed3.BackgroundColor3 = Color3.fromRGB(255, 85, 127)
Speed3.BorderColor3 = Color3.fromRGB(255, 255, 255)
Speed3.BorderSizePixel = 0
Speed3.Position = UDim2.new(0.0357603617, 0, 0.438653767, 0)
Speed3.Size = UDim2.new(0.286666662, 0, 0.115999997, 0)
Speed3.Font = Enum.Font.Jura
Speed3.Text = "Sell Ketchup"
Speed3.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed3.TextSize = 19.000
Speed3.TextStrokeColor3 = Color3.fromRGB(47, 15, 0)

Speed4.Name = "Speed4"
Speed4.Parent = Frame
Speed4.BackgroundColor3 = Color3.fromRGB(255, 85, 127)
Speed4.BorderColor3 = Color3.fromRGB(255, 255, 255)
Speed4.BorderSizePixel = 0
Speed4.Position = UDim2.new(0.0357603617, 0, 0.254653782, 0)
Speed4.Size = UDim2.new(0.286666662, 0, 0.115999997, 0)
Speed4.Font = Enum.Font.Jura
Speed4.Text = "Backpack"
Speed4.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed4.TextSize = 19.000
Speed4.TextStrokeColor3 = Color3.fromRGB(47, 15, 0)

Speed5.Name = "Speed5"
Speed5.Parent = Frame
Speed5.BackgroundColor3 = Color3.fromRGB(255, 85, 127)
Speed5.BorderColor3 = Color3.fromRGB(255, 255, 255)
Speed5.BorderSizePixel = 0
Speed5.Position = UDim2.new(0.355760366, 0, 0.438653767, 0)
Speed5.Size = UDim2.new(0.286666662, 0, 0.115999997, 0)
Speed5.Font = Enum.Font.Jura
Speed5.Text = "Auto M1"
Speed5.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed5.TextSize = 19.000
Speed5.TextStrokeColor3 = Color3.fromRGB(47, 15, 0)

Speed6.Name = "Speed6"
Speed6.Parent = Frame
Speed6.BackgroundColor3 = Color3.fromRGB(255, 85, 127)
Speed6.BorderColor3 = Color3.fromRGB(255, 255, 255)
Speed6.BorderSizePixel = 0
Speed6.Position = UDim2.new(0.355760366, 0, 0.622653782, 0)
Speed6.Size = UDim2.new(0.286666662, 0, 0.115999997, 0)
Speed6.Font = Enum.Font.Jura
Speed6.Text = "Anti Afk"
Speed6.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed6.TextSize = 19.000
Speed6.TextStrokeColor3 = Color3.fromRGB(47, 15, 0)

Speed7.Name = "Speed7"
Speed7.Parent = Frame
Speed7.BackgroundColor3 = Color3.fromRGB(255, 85, 127)
Speed7.BorderColor3 = Color3.fromRGB(255, 255, 255)
Speed7.BorderSizePixel = 0
Speed7.Position = UDim2.new(0.355760366, 0, 0.806653798, 0)
Speed7.Size = UDim2.new(0.286666662, 0, 0.115999997, 0)
Speed7.Font = Enum.Font.Jura
Speed7.Text = "Rokaka"
Speed7.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed7.TextSize = 19.000
Speed7.TextStrokeColor3 = Color3.fromRGB(47, 15, 0)

Speed8.Name = "Speed8"
Speed8.Parent = Frame
Speed8.BackgroundColor3 = Color3.fromRGB(255, 85, 127)
Speed8.BorderColor3 = Color3.fromRGB(255, 255, 255)
Speed8.BorderSizePixel = 0
Speed8.Position = UDim2.new(0.682427049, 0, 0.806653798, 0)
Speed8.Size = UDim2.new(0.286666662, 0, 0.115999997, 0)
Speed8.Font = Enum.Font.Jura
Speed8.Text = "Use S. Arrow"
Speed8.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed8.TextSize = 19.000
Speed8.TextStrokeColor3 = Color3.fromRGB(47, 15, 0)

Speed10.Name = "Speed10"
Speed10.Parent = Frame
Speed10.BackgroundColor3 = Color3.fromRGB(255, 85, 127)
Speed10.BorderColor3 = Color3.fromRGB(255, 255, 255)
Speed10.BorderSizePixel = 0
Speed10.Position = UDim2.new(0.682427049, 0, 0.622653782, 0)
Speed10.Size = UDim2.new(0.286666662, 0, 0.115999997, 0)
Speed10.Font = Enum.Font.Jura
Speed10.Text = "Use C. Arrow"
Speed10.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed10.TextSize = 19.000
Speed10.TextStrokeColor3 = Color3.fromRGB(47, 15, 0)

Speed11.Name = "Speed11"
Speed11.Parent = Frame
Speed11.BackgroundColor3 = Color3.fromRGB(255, 85, 127)
Speed11.BorderColor3 = Color3.fromRGB(255, 255, 255)
Speed11.BorderSizePixel = 0
Speed11.Position = UDim2.new(0.682427049, 0, 0.438653767, 0)
Speed11.Size = UDim2.new(0.286666662, 0, 0.115999997, 0)
Speed11.Font = Enum.Font.Jura
Speed11.Text = "Use R. Arrow"
Speed11.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed11.TextSize = 19.000
Speed11.TextStrokeColor3 = Color3.fromRGB(47, 15, 0)

Speed12.Name = "Speed12"
Speed12.Parent = Frame
Speed12.BackgroundColor3 = Color3.fromRGB(255, 85, 127)
Speed12.BorderColor3 = Color3.fromRGB(255, 255, 255)
Speed12.BorderSizePixel = 0
Speed12.Position = UDim2.new(0.682427049, 0, 0.254653782, 0)
Speed12.Size = UDim2.new(0.286666662, 0, 0.115999997, 0)
Speed12.Font = Enum.Font.Jura
Speed12.Text = "Use C. Orb"
Speed12.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed12.TextSize = 19.000
Speed12.TextStrokeColor3 = Color3.fromRGB(47, 15, 0)

Speed13.Name = "Speed13"
Speed13.Parent = Frame
Speed13.BackgroundColor3 = Color3.fromRGB(255, 85, 127)
Speed13.BorderColor3 = Color3.fromRGB(255, 255, 255)
Speed13.BorderSizePixel = 0
Speed13.Position = UDim2.new(0.355760396, 0, 0.254653782, 0)
Speed13.Size = UDim2.new(0.286666662, 0, 0.115999997, 0)
Speed13.Font = Enum.Font.Jura
Speed13.Text = "Use G. Baby"
Speed13.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed13.TextSize = 19.000
Speed13.TextStrokeColor3 = Color3.fromRGB(47, 15, 0)

ImageLabel.Parent = Frame
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.497816324, 0, 0.496653795, 0)
ImageLabel.Size = UDim2.new(1.12060726, 0, 1.15392196, 0)
ImageLabel.ZIndex = 0
ImageLabel.Image = "http://www.roblox.com/asset/?id=6906809185"
ImageLabel.ImageColor3 = Color3.fromRGB(255, 85, 127)

UIAspectRatioConstraint.Parent = Frame
UIAspectRatioConstraint.AspectRatio = 1.800

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(1.04444492, 0, 0, 0)
Frame_2.Size = UDim2.new(0.244444445, 0, 0.996000051, 0)
Frame_2.ZIndex = -1

TextButton.Parent = Frame_2
TextButton.BackgroundColor3 = Color3.fromRGB(255, 85, 127)
TextButton.BorderSizePixel = 0
TextButton.Size = UDim2.new(1, 0, 0.116465867, 0)
TextButton.Font = Enum.Font.Jura
TextButton.Text = "Teleports"
TextButton.TextColor3 = Color3.fromRGB(221, 221, 221)
TextButton.TextSize = 22.000

A1.Name = "A1"
A1.Parent = Frame_2
A1.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
A1.BorderSizePixel = 0
A1.Position = UDim2.new(0, 0, 0.204819277, 0)
A1.Size = UDim2.new(1, 0, 0.0642570257, 0)
A1.Font = Enum.Font.SourceSans
A1.Text = "Inner Sanctum"
A1.TextColor3 = Color3.fromRGB(255, 255, 255)
A1.TextSize = 14.000

A2.Name = "A2"
A2.Parent = Frame_2
A2.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
A2.BorderSizePixel = 0
A2.Position = UDim2.new(0, 0, 0.710843444, 0)
A2.Size = UDim2.new(1, 0, 0.0642570257, 0)
A2.Font = Enum.Font.SourceSans
A2.Text = "Rarity Boards"
A2.TextColor3 = Color3.fromRGB(255, 255, 255)
A2.TextSize = 14.000

A3.Name = "A3"
A3.Parent = Frame_2
A3.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
A3.BorderSizePixel = 0
A3.Position = UDim2.new(0, 0, 0.329317272, 0)
A3.Size = UDim2.new(1, 0, 0.0642570257, 0)
A3.Font = Enum.Font.SourceSans
A3.Text = "D4c Dimension"
A3.TextColor3 = Color3.fromRGB(255, 255, 255)
A3.TextSize = 14.000

A3_2.Name = "A3"
A3_2.Parent = Frame_2
A3_2.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
A3_2.BorderSizePixel = 0
A3_2.Position = UDim2.new(0, 0, 0.586345375, 0)
A3_2.Size = UDim2.new(1, 0, 0.0642570257, 0)
A3_2.Font = Enum.Font.SourceSans
A3_2.Text = "Sewer"
A3_2.TextColor3 = Color3.fromRGB(255, 255, 255)
A3_2.TextSize = 14.000

A1_2.Name = "A1"
A1_2.Parent = Frame_2
A1_2.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
A1_2.BorderSizePixel = 0
A1_2.Position = UDim2.new(0, 0, 0.457831323, 0)
A1_2.Size = UDim2.new(1, 0, 0.0642570257, 0)
A1_2.Font = Enum.Font.SourceSans
A1_2.Text = "Stand Storage"
A1_2.TextColor3 = Color3.fromRGB(255, 255, 255)
A1_2.TextSize = 14.000

A2_2.Name = "A2"
A2_2.Parent = Frame_2
A2_2.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
A2_2.BorderSizePixel = 0
A2_2.Position = UDim2.new(0, 0, 0.843373537, 0)
A2_2.Size = UDim2.new(1, 0, 0.0642570257, 0)
A2_2.Font = Enum.Font.SourceSans
A2_2.Text = "Vehicle Shop"
A2_2.TextColor3 = Color3.fromRGB(255, 255, 255)
A2_2.TextSize = 14.000

UIAspectRatioConstraint_2.Parent = MainGui
UIAspectRatioConstraint_2.AspectRatio = 3.479

-- Scripts:

local function MWRG_fake_script() -- Frame.LocalScript 
 local script = Instance.new('LocalScript', Frame)

 local UserInputService = game:GetService("UserInputService")
 
 local gui = script.Parent
 
 local dragging
 local dragInput
 local dragStart
 local startPos
 
 local function update(input)
  local delta = input.Position - dragStart
  gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
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
coroutine.wrap(MWRG_fake_script)()
local function GNXLCLD_fake_script() -- A1.LScript 
 local script = Instance.new('LocalScript', A1)

 
 script.Parent.MouseButton1Up:Connect (function ()
  local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
  local location = CFrame.new(27959, 30, -113)
  local humanoid = game.Players.LocalPlayer.Character.Humanoid
  humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
  wait(0.1)
  pl.CFrame = location
 
 
 end)
end
coroutine.wrap(GNXLCLD_fake_script)()
local function LGYJKFD_fake_script() -- A2.LScript 
 local script = Instance.new('LocalScript', A2)

 
 script.Parent.MouseButton1Up:Connect (function ()
  local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
  local location = CFrame.new(-668, 68, -440)
  local humanoid = game.Players.LocalPlayer.Character.Humanoid
  humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
  wait(0.1)
  pl.CFrame = location
 
 
 end)
end
coroutine.wrap(LGYJKFD_fake_script)()
local function SYCSX_fake_script() -- A3.LScript 
 local script = Instance.new('LocalScript', A3)

 
 script.Parent.MouseButton1Up:Connect (function ()
  local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
  local location = CFrame.new(11927, -3, -4466)
  local humanoid = game.Players.LocalPlayer.Character.Humanoid
  humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
  wait(0.1)
  pl.CFrame = location
 
 
 end)
end
coroutine.wrap(SYCSX_fake_script)()
local function NLMHRX_fake_script() -- A3_2.LScript 
 local script = Instance.new('LocalScript', A3_2)

 
 script.Parent.MouseButton1Up:Connect (function ()
  local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
  local location = CFrame.new(-5306, -450, -3796)
  local humanoid = game.Players.LocalPlayer.Character.Humanoid
  humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
  wait(0.1)
  pl.CFrame = location
 
 
 end)
end
coroutine.wrap(NLMHRX_fake_script)()
local function XMFS_fake_script() -- A1_2.LScript 
 local script = Instance.new('LocalScript', A1_2)

 
 script.Parent.MouseButton1Up:Connect (function ()
  workspace:FindFirstChild("hello exploiter why u see the Annoying Orange").ratio.Done:FireServer()
 
 
 
 end)
end
coroutine.wrap(XMFS_fake_script)()
local function XIJKF_fake_script() -- A2_2.LScript 
 local script = Instance.new('LocalScript', A2_2)

 
 script.Parent.MouseButton1Up:Connect (function ()
  local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
  local location = CFrame.new(-182, 79, -1076)
  local humanoid = game.Players.LocalPlayer.Character.Humanoid
  humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
  wait(0.1)
  pl.CFrame = location
 
 
 end)
end
coroutine.wrap(XIJKF_fake_script)()
local function KPMSS_fake_script() -- MainGui.AhScript 
 local script = Instance.new('LocalScript', MainGui)

 local MainGui = script.Parent
 local TextButton = MainGui.Frame.Speed3
 
 TextButton.MouseButton1Up:Connect (function ()
  while true do wait()
   game.ReplicatedStorage.Events.SellKetchup:FireServer("Lots");
  end
 end)
end
coroutine.wrap(KPMSS_fake_script)()
local function YBAAGKA_fake_script() -- MainGui.AhScript 
 local script = Instance.new('LocalScript', MainGui)

 local MainGui = script.Parent
 local TextButton = MainGui.Frame.Speed4
 
 TextButton.MouseButton1Up:Connect (function ()
 local mouse = game.Players.LocalPlayer:GetMouse()
 local GUI = game.CoreGui
 local Back = GUI.RobloxGui.Backpack
  Back.Visible = true
 
 
  mouse.KeyDown:Connect(function(key)
   if key == "q" then
    if Back.Inventory.Visible ~= true then
     Back.Inventory.Visible = true
    else
     Back.Inventory.Visible = false
    end
   end
  end)
 end)
end
coroutine.wrap(YBAAGKA_fake_script)()
local function FWVKWO_fake_script() -- MainGui.AhScript 
 local script = Instance.new('LocalScript', MainGui)

 local MainGui = script.Parent
 local TextButton = MainGui.Frame.Speed5
 
 TextButton.MouseButton1Up:Connect (function ()
  while true do wait()
  game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
 end
 
 end)
end
coroutine.wrap(FWVKWO_fake_script)()
local function YBADUPV_fake_script() -- MainGui.AhScript 
 local script = Instance.new('LocalScript', MainGui)

 local MainGui = script.Parent
 local TextButton = MainGui.Frame.Speed6
 
 TextButton.MouseButton1Up:Connect (function ()
  local vu = game:GetService("VirtualUser")
  game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
  end)
 
 end)
end
coroutine.wrap(YBADUPV_fake_script)()
local function IXNO_fake_script() -- MainGui.AhScript 
 local script = Instance.new('LocalScript', MainGui)

 local MainGui = script.Parent
 local TextButton = MainGui.Frame.Speed7
 
 TextButton.MouseButton1Up:Connect (function ()
  local Players = game:GetService("Players")
 
  local player = Players:FindFirstChildOfClass('Player')
  if player and player.Character then
   local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
   if humanoid then
    local tool = player.Backpack:FindFirstChild("Rokakaka")
    if tool then
     humanoid:EquipTool(tool) 
    end
   end
  end
  game:GetService("Players").LocalPlayer.Character.Rokakaka.Use:FireServer()
 
 end)
end
coroutine.wrap(IXNO_fake_script)()
local function PAELR_fake_script() -- MainGui.AhScript 
 local script = Instance.new('LocalScript', MainGui)

 local MainGui = script.Parent
 local TextButton = MainGui.Frame.Speed8
 
 TextButton.MouseButton1Up:Connect (function ()
  local Players = game:GetService("Players")
 
  local player = Players:FindFirstChildOfClass('Player')
  if player and player.Character then
   local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
   if humanoid then
    local tool = player.Backpack:FindFirstChild("Stand Arrow")
    if tool then
     humanoid:EquipTool(tool) 
    end
   end
  end
  game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stand Arrow").Use:FireServer()
 
 end)
end
coroutine.wrap(PAELR_fake_script)()
local function EVTY_fake_script() -- MainGui.AhScript 
 local script = Instance.new('LocalScript', MainGui)

 local MainGui = script.Parent
 local TextButton = MainGui.Frame.Speed10
 
 TextButton.MouseButton1Up:Connect (function ()
  local Players = game:GetService("Players")
 
  local player = Players:FindFirstChildOfClass('Player')
  if player and player.Character then
   local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
   if humanoid then
    local tool = player.Backpack:FindFirstChild("Charged Arrow")
    if tool then
     humanoid:EquipTool(tool) 
    end
   end
  end
  game:GetService("Players").LocalPlayer.Character:FindFirstChild("Charged Arrow").Use:FireServer()
 
 
 end)
end
coroutine.wrap(EVTY_fake_script)()
local function FEOO_fake_script() -- MainGui.AhScript 
 local script = Instance.new('LocalScript', MainGui)

 local MainGui = script.Parent
 local TextButton = MainGui.Frame.Speed13
 
 TextButton.MouseButton1Up:Connect (function ()
  local Players = game:GetService("Players")
 
  local player = Players:FindFirstChildOfClass('Player')
  if player and player.Character then
   local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
   if humanoid then
    local tool = player.Backpack:FindFirstChild("Green Baby")
    if tool then
     humanoid:EquipTool(tool) 
    end
   end
  end
  game:GetService("Players").LocalPlayer.Character:FindFirstChild("Green Baby").Use:FireServer()
 
 
 
 
 end)
end
coroutine.wrap(FEOO_fake_script)()
local function CVBC_fake_script() -- MainGui.AhScript 
 local script = Instance.new('LocalScript', MainGui)

 local MainGui = script.Parent
 local TextButton = MainGui.Frame.Speed12
 
 TextButton.MouseButton1Up:Connect (function ()
  local Players = game:GetService("Players")
 
  local player = Players:FindFirstChildOfClass('Player')
  if player and player.Character then
   local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
   if humanoid then
    local tool = player.Backpack:FindFirstChild("Cursed Orb")
    if tool then
     humanoid:EquipTool(tool) 
    end
   end
  end
  game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cursed Orb").Use:FireServer()
 
 end)
end
coroutine.wrap(CVBC_fake_script)()
local function AAMIIH_fake_script() -- MainGui.AhScript 
 local script = Instance.new('LocalScript', MainGui)

 local MainGui = script.Parent
 local TextButton = MainGui.Frame.Speed11
 
 TextButton.MouseButton1Up:Connect (function ()
  local Players = game:GetService("Players")
 
  local player = Players:FindFirstChildOfClass('Player')
  if player and player.Character then
   local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
   if humanoid then
    local tool = player.Backpack:FindFirstChild("Requiem Arrow")
    if tool then
     humanoid:EquipTool(tool) 
    end
   end
  end
  game:GetService("Players").LocalPlayer.Character:FindFirstChild("Requiem Arrow").Use:FireServer()
 end)
end
coroutine.wrap(AAMIIH_fake_script)()
local function ZPSHQ_fake_script() -- MainGui.AhScript 
 local script = Instance.new('LocalScript', MainGui)

 local MainGui = script.Parent
 local TextButton = MainGui.Frame.Speed2
 
 TextButton.MouseButton1Up:Connect (function ()
  for i,v in pairs(workspace.ItemSpawns:GetChildren()) do
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
   wait(0.1)
  end
 
 end)
end
coroutine.wrap(ZPSHQ_fake_script)()
local function SQBD_fake_script() -- MainGui.AhScript 
 local script = Instance.new('LocalScript', MainGui)

 local MainGui = script.Parent
 local TextButton = MainGui.Frame.Speed
 
 TextButton.MouseButton1Up:Connect (function ()
  getgenv().WalkSpeedValue = 50;
  local Player = game:service'Players'.LocalPlayer;
  Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
   Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
  end)
  Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
 
 end)
end
coroutine.wrap(SQBD_fake_script)()