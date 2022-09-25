local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Startbutton = Instance.new("TextButton")
local Stopbutton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local closebtn = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Frame.BorderColor3 = Color3.fromRGB(130, 130, 130)
Frame.Position = UDim2.new(0.0169971585, 0, 0.0130813867, 0)
Frame.Size = UDim2.new(0, 298, 0, 62)

Startbutton.Name = "Startbutton"
Startbutton.Parent = Frame
Startbutton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Startbutton.BorderColor3 = Color3.fromRGB(130, 130, 130)
Startbutton.Position = UDim2.new(0.0671140924, 0, 0.268817216, 0)
Startbutton.Size = UDim2.new(0, 118, 0, 28)
Startbutton.Font = Enum.Font.SourceSans
Startbutton.Text = "Start AutoFarm"
Startbutton.TextColor3 = Color3.fromRGB(222, 222, 222)
Startbutton.TextSize = 14.000
Startbutton.MouseButton1Click:Connect(function()
 start = true 
end)

Stopbutton.Name = "Stopbutton"
Stopbutton.Parent = Frame
Stopbutton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Stopbutton.BorderColor3 = Color3.fromRGB(130, 130, 130)
Stopbutton.Position = UDim2.new(0.535000026, 0, 0.268999994, 0)
Stopbutton.Size = UDim2.new(0, 118, 0, 28)
Stopbutton.Font = Enum.Font.SourceSans
Stopbutton.Text = "Stop AutoFarm"
Stopbutton.TextColor3 = Color3.fromRGB(222, 222, 222)
Stopbutton.TextSize = 14.000
Stopbutton.MouseButton1Click:Connect(function()
 start = false
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").SpawnLocation.Position)
end)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
TextLabel.BorderColor3 = Color3.fromRGB(60, 60, 60)
TextLabel.Position = UDim2.new(0.0671140924, 0, 0.800000012, 0)
TextLabel.Size = UDim2.new(0, 257, 0, 8)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "\"G\" To Hide The Gui"
TextLabel.TextColor3 = Color3.fromRGB(222, 222, 222)
TextLabel.TextSize = 14.000

closebtn.Name = "closebtn"
closebtn.Parent = Frame
closebtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
closebtn.BorderSizePixel = 0
closebtn.Position = UDim2.new(0.929530203, 0, 0.0300000105, 0)
closebtn.Size = UDim2.new(0, 19, 0, 13)
closebtn.Font = Enum.Font.SourceSans
closebtn.Text = "X"
closebtn.TextColor3 = Color3.fromRGB(222, 222, 222)
closebtn.TextSize = 14.000
closebtn.MouseButton1Click:Connect(function()
    start = false
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").SpawnLocation.Position)
 closebtn.Parent:Destroy()
end)

local function SFTYXF_fake_script() 
 local script = Instance.new('LocalScript', Frame)

 local UserInputService = game:GetService("UserInputService")
 local mouse =  game.Players.LocalPlayer:GetMouse()
 local hidden = false

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

 mouse.KeyDown:connect(function(key)
  if key == "g" then
   if hidden == false then
    script.Parent.Visible = false
    hidden = true
   else
    script.Parent.Visible = true
    hidden = false
   end
  end
 end)

 start = false
 local coin = game:GetService("Workspace").Coins:GetDescendants()
 game:GetService("RunService").RenderStepped:Connect(function()
  for i, C in pairs(coin) do
   if C:IsA('Part') and C.Name == "Coin" and start == true then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(C.Position)
    wait(0)
   end
  end
 end)
end
coroutine.wrap(SFTYXF_fake_script)()