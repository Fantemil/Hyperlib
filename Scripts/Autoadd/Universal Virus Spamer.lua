local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
 
--Properties:
 
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
 
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.0978520289, 0, 0.104709111, 0)
Frame.Size = UDim2.new(0, 378, 0, 316)
 
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(184, 19, 255)
TextLabel.Size = UDim2.new(0, 378, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Game Notification"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 39.000
TextLabel.TextWrapped = true
 
ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Position = UDim2.new(0.0580481477, 0, 0.231585056, 0)
ImageLabel.Size = UDim2.new(0, 334, 0, 124)
ImageLabel.Image = "http://www.roblox.com/asset/?id=1247544808"
 
TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.Position = UDim2.new(0.0582010597, 0, 0.66772145, 0)
TextLabel_2.Size = UDim2.new(0, 334, 0, 46)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "this game secretly is giving away free robux click\"yes'to get 10k robux"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true
 
TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(165, 19, 255)
TextButton.BorderColor3 = Color3.fromRGB(173, 41, 255)
TextButton.Position = UDim2.new(0.0343915336, 0, 0.841772139, 0)
TextButton.Size = UDim2.new(0, 147, 0, 39)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "no lol"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 33.000
 
TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(165, 19, 255)
TextButton_2.BorderColor3 = Color3.fromRGB(173, 41, 255)
TextButton_2.Position = UDim2.new(0.57407409, 0, 0.841772139, 0)
TextButton_2.Size = UDim2.new(0, 138, 0, 39)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "yes"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 33.000
 
-- Scripts:
 
local function QEOTTNX_fake_script() -- TextButton.LocalScript 
 local script = Instance.new('LocalScript', TextButton)
 
 script.Parent.MouseButton1Down:Connect(function()
  -- Gui to Lua
  -- Version: 3.2
 
  -- Instances:
 
  local ScreenGui = Instance.new("ScreenGui")
  local Frame = Instance.new("Frame")
  local TextLabel = Instance.new("TextLabel")
  local ImageLabel = Instance.new("ImageLabel")
  local TextLabel_2 = Instance.new("TextLabel")
  local TextButton = Instance.new("TextButton")
 
  --Properties:
 
  ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
  ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  ScreenGui.ResetOnSpawn = false
 
  Frame.Parent = ScreenGui
  Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
  Frame.Position = UDim2.new(0.300715983, 0, 0.389799625, 0)
  Frame.Size = UDim2.new(0, 361, 0, 325)
 
  TextLabel.Parent = Frame
  TextLabel.BackgroundColor3 = Color3.fromRGB(255, 221, 49)
  TextLabel.BorderColor3 = Color3.fromRGB(255, 210, 46)
  TextLabel.Size = UDim2.new(0, 361, 0, 37)
  TextLabel.Font = Enum.Font.SourceSans
  TextLabel.Text = "FREE ROBUX"
  TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
  TextLabel.TextSize = 42.000
 
  ImageLabel.Parent = Frame
  ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  ImageLabel.Position = UDim2.new(0.0609418266, 0, 0.156153858, 0)
  ImageLabel.Size = UDim2.new(0, 317, 0, 137)
  ImageLabel.Image = "http://www.roblox.com/asset/?id=126187494"
 
  TextLabel_2.Parent = Frame
  TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  TextLabel_2.BorderColor3 = Color3.fromRGB(254, 254, 254)
  TextLabel_2.Position = UDim2.new(0.155124664, 0, 0.636312068, 0)
  TextLabel_2.Size = UDim2.new(0, 267, 0, 50)
  TextLabel_2.Font = Enum.Font.SourceSans
  TextLabel_2.Text = "Hey guys it me builderman and hired the game owner to give people free robux so MAKE SURE TO PRESS YES FOR 25 ROBUX"
  TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
  TextLabel_2.TextScaled = true
  TextLabel_2.TextSize = 14.000
  TextLabel_2.TextWrapped = true
 
  TextButton.Parent = Frame
  TextButton.BackgroundColor3 = Color3.fromRGB(255, 196, 46)
  TextButton.BorderColor3 = Color3.fromRGB(255, 213, 61)
  TextButton.Position = UDim2.new(0.180055395, 0, 0.818461537, 0)
  TextButton.Size = UDim2.new(0, 243, 0, 50)
  TextButton.Font = Enum.Font.SourceSans
  TextButton.Text = "Generate 25K Robux"
  TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
  TextButton.TextSize = 27.000
 
  -- Scripts:
 
  local function FEUJLLM_fake_script() -- TextButton.LocalScript 
   local script = Instance.new('LocalScript', TextButton)
 
   script.Parent.MouseButton1Down:Connect(function()
    -- Gui to Lua
    -- Version: 3.2
 
    -- Instances:
 
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local ImageLabel = Instance.new("ImageLabel")
    local TextLabel_2 = Instance.new("TextLabel")
    local TextButton = Instance.new("TextButton")
 
    --Properties:
 
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.ResetOnSpawn = false
 
    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame.Position = UDim2.new(0.304295957, 0, 0.366120249, 0)
    Frame.Size = UDim2.new(0, 512, 0, 275)
 
    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    TextLabel.Size = UDim2.new(0, 512, 0, 45)
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.Text = "VIRUS ALERT"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 37.000
 
    ImageLabel.Parent = Frame
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 3, 3)
    ImageLabel.Position = UDim2.new(0.060546875, 0, 0.213703066, 0)
    ImageLabel.Size = UDim2.new(0, 451, 0, 100)
    ImageLabel.Image = "http://www.roblox.com/asset/?id=22854007"
 
    TextLabel_2.Parent = Frame
    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.Position = UDim2.new(0.060546875, 0, 0.632264018, 0)
    TextLabel_2.Size = UDim2.new(0, 451, 0, 50)
    TextLabel_2.Font = Enum.Font.SourceSans
    TextLabel_2.Text = "YOUR ROBLOX GAME HAS BEEN INFECTED BY BLUEROSE. PRESS DELETE NOW TO REMOVE THE VIRUS IF YOU IGNORE THIS YOUR GAME WILL BE DELETED"
    TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_2.TextSize = 17.000
    TextLabel_2.TextWrapped = true
 
    TextButton.Parent = Frame
    TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    TextButton.Position = UDim2.new(0.15625, 0, 0.810909092, 0)
    TextButton.Size = UDim2.new(0, 346, 0, 35)
    TextButton.Font = Enum.Font.SourceSans
    TextButton.Text = "DELETE NOW"
    TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.TextSize = 31.000
    TextButton.TextWrapped = true
 
    -- Scripts:
 
    local function UOGW_fake_script() -- TextButton.LocalScript 
     local script = Instance.new('LocalScript', TextButton)
 
     script.Parent.MouseButton1Down:Connect(function()
      -- Gui to Lua
      -- Version: 3.2
 
      -- Instances:
 
      local ScreenGui = Instance.new("ScreenGui")
      local Frame = Instance.new("Frame")
      local TextLabel = Instance.new("TextLabel")
      local TextButton = Instance.new("TextButton")
      local TextButton_2 = Instance.new("TextButton")
      local TextButton_3 = Instance.new("TextButton")
 
      --Properties:
 
      ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
      ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
      ScreenGui.ResetOnSpawn = false
 
      Frame.Parent = ScreenGui
      Frame.BackgroundColor3 = Color3.fromRGB(255, 6, 6)
      Frame.Position = UDim2.new(0, 0, -0.0220820196, 0)
      Frame.Size = UDim2.new(0, 1534, 0, 648)
 
      TextLabel.Parent = Frame
      TextLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
      TextLabel.BorderColor3 = Color3.fromRGB(255, 0, 0)
      TextLabel.Position = UDim2.new(0.00651890505, 0, 0.0324074067, 0)
      TextLabel.Size = UDim2.new(0, 1078, 0, 336)
      TextLabel.Font = Enum.Font.Cartoon
      TextLabel.Text = "You have been infected by the virus this computer will explode shortly"
      TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
      TextLabel.TextScaled = true
      TextLabel.TextSize = 1.000
      TextLabel.TextWrapped = true
 
      TextButton.Parent = Frame
      TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
      TextButton.Position = UDim2.new(0.229465455, 0, 0.56635803, 0)
      TextButton.Size = UDim2.new(0, 357, 0, 70)
      TextButton.Font = Enum.Font.SourceSans
      TextButton.Text = "NopeSk1d"
      TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
      TextButton.TextSize = 14.000
 
      TextButton_2.Parent = Frame
      TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
      TextButton_2.Position = UDim2.new(0.229465455, 0, 0.694444418, 0)
      TextButton_2.Size = UDim2.new(0, 357, 0, 57)
      TextButton_2.Font = Enum.Font.SourceSans
      TextButton_2.Text = "Sussy it a test script"
      TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
      TextButton_2.TextSize = 14.000
 
      TextButton_3.Parent = Frame
      TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
      TextButton_3.BorderColor3 = Color3.fromRGB(182, 0, 0)
      TextButton_3.Position = UDim2.new(0.0704041719, 0, 0.825617313, 0)
      TextButton_3.Size = UDim2.new(0, 882, 0, 75)
      TextButton_3.Font = Enum.Font.SourceSans
      TextButton_3.Text = "lose your account"
      TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
      TextButton_3.TextSize = 26.000
 
      -- Scripts:
 
      local function DHYIEWA_fake_script() -- Frame.LocalScript 
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
      coroutine.wrap(DHYIEWA_fake_script)()
 
     end)
    end
    coroutine.wrap(UOGW_fake_script)()
    local function TVUSVHS_fake_script() -- Frame.LocalScript 
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
    coroutine.wrap(TVUSVHS_fake_script)()
 
   end)
  end
  coroutine.wrap(FEUJLLM_fake_script)()
  local function NTGUY_fake_script() -- Frame.LocalScript 
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
  coroutine.wrap(NTGUY_fake_script)()
 
 end)
end
coroutine.wrap(QEOTTNX_fake_script)()
local function CGKZNX_fake_script() -- TextButton_2.LocalScript 
 local script = Instance.new('LocalScript', TextButton_2)
 
 script.Parent.MouseButton1Down:Connect(function()
  -- Gui to Lua
  -- Version: 3.2
 
  -- Instances:
 
  local ScreenGui = Instance.new("ScreenGui")
  local Frame = Instance.new("Frame")
  local TextLabel = Instance.new("TextLabel")
  local ImageLabel = Instance.new("ImageLabel")
  local TextLabel_2 = Instance.new("TextLabel")
  local TextButton = Instance.new("TextButton")
 
  --Properties:
 
  ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
  ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  ScreenGui.ResetOnSpawn = false
 
  Frame.Parent = ScreenGui
  Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
  Frame.Position = UDim2.new(0.300715983, 0, 0.389799625, 0)
  Frame.Size = UDim2.new(0, 361, 0, 325)
 
  TextLabel.Parent = Frame
  TextLabel.BackgroundColor3 = Color3.fromRGB(255, 221, 49)
  TextLabel.BorderColor3 = Color3.fromRGB(255, 210, 46)
  TextLabel.Size = UDim2.new(0, 361, 0, 37)
  TextLabel.Font = Enum.Font.SourceSans
  TextLabel.Text = "FREE ROBUX"
  TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
  TextLabel.TextSize = 42.000
 
  ImageLabel.Parent = Frame
  ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  ImageLabel.Position = UDim2.new(0.0609418266, 0, 0.156153858, 0)
  ImageLabel.Size = UDim2.new(0, 317, 0, 137)
  ImageLabel.Image = "http://www.roblox.com/asset/?id=126187494"
 
  TextLabel_2.Parent = Frame
  TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  TextLabel_2.BorderColor3 = Color3.fromRGB(254, 254, 254)
  TextLabel_2.Position = UDim2.new(0.155124664, 0, 0.636312068, 0)
  TextLabel_2.Size = UDim2.new(0, 267, 0, 50)
  TextLabel_2.Font = Enum.Font.SourceSans
  TextLabel_2.Text = "Hey guys it me builderman and hired the game owner to give people free robux so MAKE SURE TO PRESS YES FOR 25 ROBUX"
  TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
  TextLabel_2.TextScaled = true
  TextLabel_2.TextSize = 14.000
  TextLabel_2.TextWrapped = true
 
  TextButton.Parent = Frame
  TextButton.BackgroundColor3 = Color3.fromRGB(255, 196, 46)
  TextButton.BorderColor3 = Color3.fromRGB(255, 213, 61)
  TextButton.Position = UDim2.new(0.180055395, 0, 0.818461537, 0)
  TextButton.Size = UDim2.new(0, 243, 0, 50)
  TextButton.Font = Enum.Font.SourceSans
  TextButton.Text = "Generate 25K Robux"
  TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
  TextButton.TextSize = 27.000
 
  -- Scripts:
 
  local function FEUJLLM_fake_script() -- TextButton.LocalScript 
   local script = Instance.new('LocalScript', TextButton)
 
   script.Parent.MouseButton1Down:Connect(function()
    -- Gui to Lua
    -- Version: 3.2
 
    -- Instances:
 
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local ImageLabel = Instance.new("ImageLabel")
    local TextLabel_2 = Instance.new("TextLabel")
    local TextButton = Instance.new("TextButton")
 
    --Properties:
 
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.ResetOnSpawn = false
 
    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame.Position = UDim2.new(0.304295957, 0, 0.366120249, 0)
    Frame.Size = UDim2.new(0, 512, 0, 275)
 
    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    TextLabel.Size = UDim2.new(0, 512, 0, 45)
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.Text = "VIRUS ALERT"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 37.000
 
    ImageLabel.Parent = Frame
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 3, 3)
    ImageLabel.Position = UDim2.new(0.060546875, 0, 0.213703066, 0)
    ImageLabel.Size = UDim2.new(0, 451, 0, 100)
    ImageLabel.Image = "http://www.roblox.com/asset/?id=22854007"
 
    TextLabel_2.Parent = Frame
    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.Position = UDim2.new(0.060546875, 0, 0.632264018, 0)
    TextLabel_2.Size = UDim2.new(0, 451, 0, 50)
    TextLabel_2.Font = Enum.Font.SourceSans
    TextLabel_2.Text = "YOUR ROBLOX GAME HAS BEEN INFECTED BY BLUEROSE. PRESS DELETE NOW TO REMOVE THE VIRUS IF YOU IGNORE THIS YOUR GAME WILL BE DELETED"
    TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_2.TextSize = 17.000
    TextLabel_2.TextWrapped = true
 
    TextButton.Parent = Frame
    TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    TextButton.Position = UDim2.new(0.15625, 0, 0.810909092, 0)
    TextButton.Size = UDim2.new(0, 346, 0, 35)
    TextButton.Font = Enum.Font.SourceSans
    TextButton.Text = "DELETE NOW"
    TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.TextSize = 31.000
    TextButton.TextWrapped = true
 
    -- Scripts:
 
    local function UOGW_fake_script() -- TextButton.LocalScript 
     local script = Instance.new('LocalScript', TextButton)
 
     script.Parent.MouseButton1Down:Connect(function()
      -- Gui to Lua
      -- Version: 3.2
 
      -- Instances:
 
      local ScreenGui = Instance.new("ScreenGui")
      local Frame = Instance.new("Frame")
      local TextLabel = Instance.new("TextLabel")
      local TextButton = Instance.new("TextButton")
      local TextButton_2 = Instance.new("TextButton")
      local TextButton_3 = Instance.new("TextButton")
 
      --Properties:
 
      ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
      ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
      ScreenGui.ResetOnSpawn = false
 
      Frame.Parent = ScreenGui
      Frame.BackgroundColor3 = Color3.fromRGB(255, 6, 6)
      Frame.Position = UDim2.new(0, 0, -0.0220820196, 0)
      Frame.Size = UDim2.new(0, 1534, 0, 648)
 
      TextLabel.Parent = Frame
      TextLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
      TextLabel.BorderColor3 = Color3.fromRGB(255, 0, 0)
      TextLabel.Position = UDim2.new(0.00651890505, 0, 0.0324074067, 0)
      TextLabel.Size = UDim2.new(0, 1078, 0, 336)
      TextLabel.Font = Enum.Font.Cartoon
      TextLabel.Text = "You have been infected by the virus this computer will explode shortly"
      TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
      TextLabel.TextScaled = true
      TextLabel.TextSize = 1.000
      TextLabel.TextWrapped = true
 
      TextButton.Parent = Frame
      TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
      TextButton.Position = UDim2.new(0.229465455, 0, 0.56635803, 0)
      TextButton.Size = UDim2.new(0, 357, 0, 70)
      TextButton.Font = Enum.Font.SourceSans
      TextButton.Text = "NopeSk1d"
      TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
      TextButton.TextSize = 14.000
 
      TextButton_2.Parent = Frame
      TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
      TextButton_2.Position = UDim2.new(0.229465455, 0, 0.694444418, 0)
      TextButton_2.Size = UDim2.new(0, 357, 0, 57)
      TextButton_2.Font = Enum.Font.SourceSans
      TextButton_2.Text = "Sussy it a test script"
      TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
      TextButton_2.TextSize = 14.000
 
      TextButton_3.Parent = Frame
      TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
      TextButton_3.BorderColor3 = Color3.fromRGB(182, 0, 0)
      TextButton_3.Position = UDim2.new(0.0704041719, 0, 0.825617313, 0)
      TextButton_3.Size = UDim2.new(0, 882, 0, 75)
      TextButton_3.Font = Enum.Font.SourceSans
      TextButton_3.Text = "lose your account"
      TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
      TextButton_3.TextSize = 26.000
 
      -- Scripts:
 
      local function DHYIEWA_fake_script() -- Frame.LocalScript 
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
      coroutine.wrap(DHYIEWA_fake_script)()
 
     end)
    end
    coroutine.wrap(UOGW_fake_script)()
    local function TVUSVHS_fake_script() -- Frame.LocalScript 
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
    coroutine.wrap(TVUSVHS_fake_script)()
 
   end)
  end
  coroutine.wrap(FEUJLLM_fake_script)()
  local function NTGUY_fake_script() -- Frame.LocalScript 
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
  coroutine.wrap(NTGUY_fake_script)()
 
 end)
end
coroutine.wrap(CGKZNX_fake_script)()
local function VNRIDN_fake_script() -- Frame.LocalScript 
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
coroutine.wrap(VNRIDN_fake_script)()