local DraggableGUI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local PlayerLabel1 = Instance.new("TextLabel")
local Shutdown = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local TextButton_6 = Instance.new("TextButton")
local TextButton_7 = Instance.new("TextButton")
local TextButton_8 = Instance.new("TextButton")
local TextButton_9 = Instance.new("TextButton")
local PlayerLabel9 = Instance.new("TextLabel")
local PlayerLabel8 = Instance.new("TextLabel")
local PlayerLabel7 = Instance.new("TextLabel")
local PlayerLabel6 = Instance.new("TextLabel")
local PlayerLabel5 = Instance.new("TextLabel")
local PlayerLabel4 = Instance.new("TextLabel")
local PlayerLabel3 = Instance.new("TextLabel")
local PlayerLabel2 = Instance.new("TextLabel")
local PlayerLabel14 = Instance.new("TextLabel")
local PlayerLabel13 = Instance.new("TextLabel")
local PlayerLabel12 = Instance.new("TextLabel")
local PlayerLabel11 = Instance.new("TextLabel")
local PlayerLabel10 = Instance.new("TextLabel")

--Properties:

DraggableGUI.Name = "Draggable GUI"
DraggableGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
DraggableGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = DraggableGUI
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
Frame.Draggable = true
Frame.Position = UDim2.new(0.186740875, 194, 0.199356914, 115)
Frame.Selectable = true
Frame.Size = UDim2.new(0, 508, 0, 307)

PlayerLabel1.Name = "PlayerLabel1"
PlayerLabel1.Parent = Frame
PlayerLabel1.BackgroundColor3 = Color3.fromRGB(178, 178, 178)
PlayerLabel1.BackgroundTransparency = 1.000
PlayerLabel1.BorderColor3 = Color3.fromRGB(27, 42, 53)
PlayerLabel1.BorderSizePixel = 0
PlayerLabel1.Position = UDim2.new(0, 2, 0, 13)
PlayerLabel1.Size = UDim2.new(0, 13, 0, 50)
PlayerLabel1.SizeConstraint = Enum.SizeConstraint.RelativeXX
PlayerLabel1.Font = Enum.Font.Cartoon
PlayerLabel1.Text = "JDjump12"
PlayerLabel1.TextColor3 = Color3.fromRGB(255, 255, 153)
PlayerLabel1.TextSize = 25.000
PlayerLabel1.TextXAlignment = Enum.TextXAlignment.Left

Shutdown.Name = "Shutdown"
Shutdown.Parent = Frame
Shutdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shutdown.Position = UDim2.new(0.790371358, 0, 0.042345278, 0)
Shutdown.Size = UDim2.new(0, 86, 0, 18)
Shutdown.Font = Enum.Font.SourceSans
Shutdown.Text = "Shutdown"
Shutdown.TextColor3 = Color3.fromRGB(0, 0, 0)
Shutdown.TextScaled = true
Shutdown.TextSize = 14.000
Shutdown.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.722440958, 0, 0.885993481, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "By REX V0.2(BETA)"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0.343520939, 0, 0.0908652693, 0)
TextButton.Size = UDim2.new(0, 200, 0, 19)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "BAN"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.Position = UDim2.new(0.34352091, 0, 0.266890854, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 19)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "BAN"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.Position = UDim2.new(0.345489413, 0, 0.538868546, 0)
TextButton_3.Size = UDim2.new(0, 200, 0, 19)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "BAN"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

TextButton_4.Parent = Frame
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.Position = UDim2.new(0.34352091, 0, 0.735321879, 0)
TextButton_4.Size = UDim2.new(0, 200, 0, 19)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "BAN"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14.000
TextButton_4.TextWrapped = true

TextButton_5.Parent = Frame
TextButton_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_5.Position = UDim2.new(0.345489413, 0, 0.826465368, 0)
TextButton_5.Size = UDim2.new(0, 200, 0, 19)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = "BAN"
TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.TextScaled = true
TextButton_5.TextSize = 14.000
TextButton_5.TextWrapped = true

TextButton_6.Parent = Frame
TextButton_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_6.Position = UDim2.new(0.345489442, 0, 0.444276184, 0)
TextButton_6.Size = UDim2.new(0, 200, 0, 19)
TextButton_6.Font = Enum.Font.SourceSans
TextButton_6.Text = "BAN"
TextButton_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.TextScaled = true
TextButton_6.TextSize = 14.000
TextButton_6.TextWrapped = true

TextButton_7.Parent = Frame
TextButton_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_7.Position = UDim2.new(0.345489442, 0, 0.177929297, 0)
TextButton_7.Size = UDim2.new(0, 200, 0, 19)
TextButton_7.Font = Enum.Font.SourceSans
TextButton_7.Text = "BAN"
TextButton_7.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_7.TextScaled = true
TextButton_7.TextSize = 14.000
TextButton_7.TextWrapped = true

TextButton_8.Parent = Frame
TextButton_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_8.Position = UDim2.new(0.345489413, 0, 0.355852395, 0)
TextButton_8.Size = UDim2.new(0, 200, 0, 19)
TextButton_8.Font = Enum.Font.SourceSans
TextButton_8.Text = "BAN"
TextButton_8.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_8.TextScaled = true
TextButton_8.TextSize = 14.000
TextButton_8.TextWrapped = true

TextButton_9.Parent = Frame
TextButton_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_9.Position = UDim2.new(0.345489442, 0, 0.635574758, 0)
TextButton_9.Size = UDim2.new(0, 200, 0, 19)
TextButton_9.Font = Enum.Font.SourceSans
TextButton_9.Text = "BAN"
TextButton_9.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_9.TextScaled = true
TextButton_9.TextSize = 14.000
TextButton_9.TextWrapped = true

PlayerLabel9.Name = "PlayerLabel9"
PlayerLabel9.Parent = Frame
PlayerLabel9.BackgroundColor3 = Color3.fromRGB(178, 178, 178)
PlayerLabel9.BackgroundTransparency = 1.000
PlayerLabel9.BorderColor3 = Color3.fromRGB(27, 42, 53)
PlayerLabel9.BorderSizePixel = 0
PlayerLabel9.Position = UDim2.new(0, 1, 0.270000011, 0)
PlayerLabel9.Size = UDim2.new(0, 13, 0, 180)
PlayerLabel9.SizeConstraint = Enum.SizeConstraint.RelativeXX
PlayerLabel9.Visible = false
PlayerLabel9.Font = Enum.Font.Cartoon
PlayerLabel9.Text = "Player"
PlayerLabel9.TextColor3 = Color3.fromRGB(255, 255, 153)
PlayerLabel9.TextSize = 25.000
PlayerLabel9.TextXAlignment = Enum.TextXAlignment.Left

PlayerLabel8.Name = "PlayerLabel8"
PlayerLabel8.Parent = Frame
PlayerLabel8.BackgroundColor3 = Color3.fromRGB(178, 178, 178)
PlayerLabel8.BackgroundTransparency = 1.000
PlayerLabel8.BorderColor3 = Color3.fromRGB(27, 42, 53)
PlayerLabel8.BorderSizePixel = 0
PlayerLabel8.Position = UDim2.new(0, 1, 0.239999995, 0)
PlayerLabel8.Size = UDim2.new(0, 13, 0, 165)
PlayerLabel8.SizeConstraint = Enum.SizeConstraint.RelativeXX
PlayerLabel8.Visible = false
PlayerLabel8.Font = Enum.Font.Cartoon
PlayerLabel8.Text = "Player"
PlayerLabel8.TextColor3 = Color3.fromRGB(204, 0, 0)
PlayerLabel8.TextSize = 25.000
PlayerLabel8.TextXAlignment = Enum.TextXAlignment.Left

PlayerLabel7.Name = "PlayerLabel7"
PlayerLabel7.Parent = Frame
PlayerLabel7.BackgroundColor3 = Color3.fromRGB(178, 178, 178)
PlayerLabel7.BackgroundTransparency = 1.000
PlayerLabel7.BorderColor3 = Color3.fromRGB(27, 42, 53)
PlayerLabel7.BorderSizePixel = 0
PlayerLabel7.Position = UDim2.new(0, 1, 0.209999993, 0)
PlayerLabel7.Size = UDim2.new(0, 13, 0, 150)
PlayerLabel7.SizeConstraint = Enum.SizeConstraint.RelativeXX
PlayerLabel7.Visible = false
PlayerLabel7.Font = Enum.Font.Cartoon
PlayerLabel7.Text = "Player"
PlayerLabel7.TextColor3 = Color3.fromRGB(255, 102, 255)
PlayerLabel7.TextSize = 25.000
PlayerLabel7.TextXAlignment = Enum.TextXAlignment.Left

PlayerLabel6.Name = "PlayerLabel6"
PlayerLabel6.Parent = Frame
PlayerLabel6.BackgroundColor3 = Color3.fromRGB(178, 178, 178)
PlayerLabel6.BackgroundTransparency = 1.000
PlayerLabel6.BorderColor3 = Color3.fromRGB(27, 42, 53)
PlayerLabel6.BorderSizePixel = 0
PlayerLabel6.Position = UDim2.new(0, 1, 0.180000007, 0)
PlayerLabel6.Size = UDim2.new(0, 13, 0, 135)
PlayerLabel6.SizeConstraint = Enum.SizeConstraint.RelativeXX
PlayerLabel6.Visible = false
PlayerLabel6.Font = Enum.Font.Cartoon
PlayerLabel6.Text = "Player"
PlayerLabel6.TextColor3 = Color3.fromRGB(102, 0, 102)
PlayerLabel6.TextSize = 25.000
PlayerLabel6.TextXAlignment = Enum.TextXAlignment.Left

PlayerLabel5.Name = "PlayerLabel5"
PlayerLabel5.Parent = Frame
PlayerLabel5.BackgroundColor3 = Color3.fromRGB(178, 178, 178)
PlayerLabel5.BackgroundTransparency = 1.000
PlayerLabel5.BorderColor3 = Color3.fromRGB(27, 42, 53)
PlayerLabel5.BorderSizePixel = 0
PlayerLabel5.Position = UDim2.new(0, 1, 0.150000006, 0)
PlayerLabel5.Size = UDim2.new(0, 13, 0, 120)
PlayerLabel5.SizeConstraint = Enum.SizeConstraint.RelativeXX
PlayerLabel5.Visible = false
PlayerLabel5.Font = Enum.Font.Cartoon
PlayerLabel5.Text = "Player"
PlayerLabel5.TextColor3 = Color3.fromRGB(0, 51, 204)
PlayerLabel5.TextSize = 25.000
PlayerLabel5.TextXAlignment = Enum.TextXAlignment.Left

PlayerLabel4.Name = "PlayerLabel4"
PlayerLabel4.Parent = Frame
PlayerLabel4.BackgroundColor3 = Color3.fromRGB(178, 178, 178)
PlayerLabel4.BackgroundTransparency = 1.000
PlayerLabel4.BorderColor3 = Color3.fromRGB(27, 42, 53)
PlayerLabel4.BorderSizePixel = 0
PlayerLabel4.Position = UDim2.new(0, 1, 0.119999997, 0)
PlayerLabel4.Size = UDim2.new(0, 13, 0, 105)
PlayerLabel4.SizeConstraint = Enum.SizeConstraint.RelativeXX
PlayerLabel4.Visible = false
PlayerLabel4.Font = Enum.Font.Cartoon
PlayerLabel4.Text = "Player"
PlayerLabel4.TextColor3 = Color3.fromRGB(204, 0, 0)
PlayerLabel4.TextSize = 25.000
PlayerLabel4.TextXAlignment = Enum.TextXAlignment.Left

PlayerLabel3.Name = "PlayerLabel3"
PlayerLabel3.Parent = Frame
PlayerLabel3.BackgroundColor3 = Color3.fromRGB(178, 178, 178)
PlayerLabel3.BackgroundTransparency = 1.000
PlayerLabel3.BorderColor3 = Color3.fromRGB(27, 42, 53)
PlayerLabel3.BorderSizePixel = 0
PlayerLabel3.Position = UDim2.new(0, 1, 0.0900000036, 0)
PlayerLabel3.Size = UDim2.new(0, 13, 0, 90)
PlayerLabel3.SizeConstraint = Enum.SizeConstraint.RelativeXX
PlayerLabel3.Visible = false
PlayerLabel3.Font = Enum.Font.Cartoon
PlayerLabel3.Text = "Player"
PlayerLabel3.TextColor3 = Color3.fromRGB(255, 255, 0)
PlayerLabel3.TextSize = 25.000
PlayerLabel3.TextXAlignment = Enum.TextXAlignment.Left

PlayerLabel2.Name = "PlayerLabel2"
PlayerLabel2.Parent = Frame
PlayerLabel2.BackgroundColor3 = Color3.fromRGB(178, 178, 178)
PlayerLabel2.BackgroundTransparency = 1.000
PlayerLabel2.BorderColor3 = Color3.fromRGB(27, 42, 53)
PlayerLabel2.BorderSizePixel = 0
PlayerLabel2.Position = UDim2.new(0, 1, 0.0599999987, 0)
PlayerLabel2.Size = UDim2.new(0, 13, 0, 75)
PlayerLabel2.SizeConstraint = Enum.SizeConstraint.RelativeXX
PlayerLabel2.Visible = false
PlayerLabel2.Font = Enum.Font.Cartoon
PlayerLabel2.Text = "Player"
PlayerLabel2.TextColor3 = Color3.fromRGB(0, 0, 204)
PlayerLabel2.TextSize = 25.000
PlayerLabel2.TextXAlignment = Enum.TextXAlignment.Left

PlayerLabel14.Name = "PlayerLabel14"
PlayerLabel14.Parent = Frame
PlayerLabel14.BackgroundColor3 = Color3.fromRGB(178, 178, 178)
PlayerLabel14.BackgroundTransparency = 1.000
PlayerLabel14.BorderColor3 = Color3.fromRGB(27, 42, 53)
PlayerLabel14.BorderSizePixel = 0
PlayerLabel14.Position = UDim2.new(0, 1, 0.540000021, 0)
PlayerLabel14.Size = UDim2.new(0, 13, 0, 195)
PlayerLabel14.SizeConstraint = Enum.SizeConstraint.RelativeXX
PlayerLabel14.Visible = false
PlayerLabel14.Font = Enum.Font.Cartoon
PlayerLabel14.Text = "Player"
PlayerLabel14.TextColor3 = Color3.fromRGB(255, 255, 153)
PlayerLabel14.TextSize = 25.000
PlayerLabel14.TextXAlignment = Enum.TextXAlignment.Left

PlayerLabel13.Name = "PlayerLabel13"
PlayerLabel13.Parent = Frame
PlayerLabel13.BackgroundColor3 = Color3.fromRGB(178, 178, 178)
PlayerLabel13.BackgroundTransparency = 1.000
PlayerLabel13.BorderColor3 = Color3.fromRGB(27, 42, 53)
PlayerLabel13.BorderSizePixel = 0
PlayerLabel13.Position = UDim2.new(0, 1, 0.479999989, 0)
PlayerLabel13.Size = UDim2.new(0, 13, 0, 195)
PlayerLabel13.SizeConstraint = Enum.SizeConstraint.RelativeXX
PlayerLabel13.Visible = false
PlayerLabel13.Font = Enum.Font.Cartoon
PlayerLabel13.Text = "Player"
PlayerLabel13.TextColor3 = Color3.fromRGB(102, 0, 102)
PlayerLabel13.TextSize = 25.000
PlayerLabel13.TextXAlignment = Enum.TextXAlignment.Left

PlayerLabel12.Name = "PlayerLabel12"
PlayerLabel12.Parent = Frame
PlayerLabel12.BackgroundColor3 = Color3.fromRGB(178, 178, 178)
PlayerLabel12.BackgroundTransparency = 1.000
PlayerLabel12.BorderColor3 = Color3.fromRGB(27, 42, 53)
PlayerLabel12.BorderSizePixel = 0
PlayerLabel12.Position = UDim2.new(0, 1, 0.419999987, 0)
PlayerLabel12.Size = UDim2.new(0, 13, 0, 195)
PlayerLabel12.SizeConstraint = Enum.SizeConstraint.RelativeXX
PlayerLabel12.Visible = false
PlayerLabel12.Font = Enum.Font.Cartoon
PlayerLabel12.Text = "Player"
PlayerLabel12.TextColor3 = Color3.fromRGB(255, 255, 0)
PlayerLabel12.TextSize = 25.000
PlayerLabel12.TextXAlignment = Enum.TextXAlignment.Left

PlayerLabel11.Name = "PlayerLabel11"
PlayerLabel11.Parent = Frame
PlayerLabel11.BackgroundColor3 = Color3.fromRGB(178, 178, 178)
PlayerLabel11.BackgroundTransparency = 1.000
PlayerLabel11.BorderColor3 = Color3.fromRGB(27, 42, 53)
PlayerLabel11.BorderSizePixel = 0
PlayerLabel11.Position = UDim2.new(0, 1, 0.360000014, 0)
PlayerLabel11.Size = UDim2.new(0, 13, 0, 195)
PlayerLabel11.SizeConstraint = Enum.SizeConstraint.RelativeXX
PlayerLabel11.Visible = false
PlayerLabel11.Font = Enum.Font.Cartoon
PlayerLabel11.Text = "Player"
PlayerLabel11.TextColor3 = Color3.fromRGB(0, 0, 204)
PlayerLabel11.TextSize = 25.000
PlayerLabel11.TextXAlignment = Enum.TextXAlignment.Left

PlayerLabel10.Name = "PlayerLabel10"
PlayerLabel10.Parent = Frame
PlayerLabel10.BackgroundColor3 = Color3.fromRGB(178, 178, 178)
PlayerLabel10.BackgroundTransparency = 1.000
PlayerLabel10.BorderColor3 = Color3.fromRGB(27, 42, 53)
PlayerLabel10.BorderSizePixel = 0
PlayerLabel10.Position = UDim2.new(0, 1, 0.300000012, 0)
PlayerLabel10.Size = UDim2.new(0, 13, 0, 195)
PlayerLabel10.SizeConstraint = Enum.SizeConstraint.RelativeXX
PlayerLabel10.Visible = false
PlayerLabel10.Font = Enum.Font.Cartoon
PlayerLabel10.Text = "Player"
PlayerLabel10.TextColor3 = Color3.fromRGB(255, 0, 0)
PlayerLabel10.TextSize = 25.000
PlayerLabel10.TextXAlignment = Enum.TextXAlignment.Left

-- Scripts:

local function YEGZYQ_fake_script() -- Shutdown.Script 
 local script = Instance.new('Script', Shutdown)

 function die()
 p= game.Players:GetChildren()
 for i= 1, #p do
 p[i]:remove()
 end 
 end
 
 
 script.Parent.MouseButton1Down:connect(die)
end
coroutine.wrap(YEGZYQ_fake_script)()
local function VIEALTK_fake_script() -- Frame.Script 
 local script = Instance.new('Script', Frame)

 
end
coroutine.wrap(VIEALTK_fake_script)()
local function FHCK_fake_script() -- Frame.Script 
 local script = Instance.new('Script', Frame)

 
end
coroutine.wrap(FHCK_fake_script)()
local function EYDGNF_fake_script() -- Frame.Script 
 local script = Instance.new('Script', Frame)

 function update()
  c = script.Parent:GetChildren()
  for i = 1,#c do
   if string.sub(c[i].Name, 1, 11) == "PlayerLabel" then
    c[i].Visible = false
   end
  end
  for i = 1,#plr do
   item = script.Parent:findFirstChild("PlayerLabel" .. tostring(i))
   if (item~=nil) then
    item.Visible = true
    item.Text = plr[i].Name
   end
  end
 end
 
 function getNumber(obj)
  for i = 1,#plr do
   if plr[i]==obj then
    return i
   end
  end
 end
 
 plr = {}
 p = game.Players:GetChildren()
 
 for i = 1,#p do
  table.insert(plr, p[i])
 end
 
 update()
 game.Players.ChildAdded:connect(function (guy) table.insert(plr, guy) update() end)
 game.Players.ChildRemoved:connect(function (guy) table.remove(plr, getNumber(guy)) update() end)
end
coroutine.wrap(EYDGNF_fake_script)()