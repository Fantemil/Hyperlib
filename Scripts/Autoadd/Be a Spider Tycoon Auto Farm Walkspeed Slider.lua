local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Frame.BorderColor3 = Color3.fromRGB(255, 0, 0)
Frame.Position = UDim2.new(0.435361236, 0, 0, 0)
Frame.Size = UDim2.new(0, 135, 0, 74)
Frame.Visible = true
Frame.Active = true
Frame.Draggable = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Size = UDim2.new(0, 135, 0, 15)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "SR | Spider Tycoon"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 16.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(64, 101, 127)
TextButton.Position = UDim2.new(0.0660970062, 0, 0.363513649, 0)
TextButton.Size = UDim2.new(0, 54, 0, 20)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "farm on"
TextButton.TextColor3 = Color3.fromRGB(1, 255, 18)
TextButton.TextSize = 16.000
TextButton.MouseButton1Down:connect(function()
 _G.toggled = true

 while _G.toggled == true do 
  wait(3)
  local stuff = workspace:getDescendants()
  for i=1,#stuff do
   if stuff[i].Name == "Hitbox" then
    if stuff[i].Parent.Name ~= game.Players.LocalPlayer.Name then
     stuff[i].Massless = true
     stuff[i].Size = Vector3.new(800,2,800)
     stuff[i].Transparency = 1
    end
   end
  end
 end
end)

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderColor3 = Color3.fromRGB(64, 101, 127)
TextButton_2.Position = UDim2.new(0.540171146, 0, 0.363513589, 0)
TextButton_2.Size = UDim2.new(0, 54, 0, 20)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Farm off"
TextButton_2.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_2.TextSize = 16.000
TextButton_2.MouseButton1Down:connect(function()
 _G.toggled = false

 while _G.toggled == true do 
  wait(3)
  local stuff = workspace:getDescendants()
  for i=1,#stuff do
   if stuff[i].Name == "Hitbox" then
    if stuff[i].Parent.Name ~= game.Players.LocalPlayer.Name then
     stuff[i].Massless = true
     stuff[i].Size = Vector3.new(800,2,800)
     stuff[i].Transparency = 1
    end
   end
  end
 end
end)

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderColor3 = Color3.fromRGB(64, 101, 127)
TextButton_3.Position = UDim2.new(0.296000004, 0, 0.699999988, 0)
TextButton_3.Size = UDim2.new(0, 54, 0, 20)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Speed"
TextButton_3.TextColor3 = Color3.fromRGB(0, 234, 255)
TextButton_3.TextSize = 16.000
TextButton_3.MouseButton1Down:connect(function()
 while wait() do
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 60
 end
end)

-- Scripts:

local function RAVOPZP_fake_script() -- Frame.LocalScript 
 local script = Instance.new('LocalScript', Frame)

 function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
  
  counter = 0
  
  while wait(0.1)do
   script.Parent.BorderColor3 = Color3.fromHSV(zigzag(counter),1,1)
  
   counter = counter + 0.01
while wait(7) do
print ("  ||| YTsean24  ||| DONT SKID!")
end
  end
end
coroutine.wrap(RAVOPZP_fake_script)()