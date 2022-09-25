-- Gui to Lua
-- Version: 3.2

-- Instances:

local FindthemarkersGUI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local MarkerESP = Instance.new("TextButton")
local HEADER = Instance.new("TextLabel")
local TPRANDOM = Instance.new("TextButton")

--Properties:

FindthemarkersGUI.Name = "Find the markers GUI"
FindthemarkersGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
FindthemarkersGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = FindthemarkersGUI
Frame.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.260368675, 0, 0.296158612, 0)
Frame.Size = UDim2.new(0, 106, 0, 98)

MarkerESP.Name = "Marker ESP"
MarkerESP.Parent = Frame
MarkerESP.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
MarkerESP.BorderSizePixel = 0
MarkerESP.Position = UDim2.new(0, 0, 0.32872498, 0)
MarkerESP.Size = UDim2.new(0, 104, 0, 28)
MarkerESP.Font = Enum.Font.SourceSans
MarkerESP.Text = "Marker ESP"
MarkerESP.TextColor3 = Color3.fromRGB(255, 255, 255)
MarkerESP.TextScaled = true
MarkerESP.TextSize = 14.000
MarkerESP.TextWrapped = true

HEADER.Name = "HEADER"
HEADER.Parent = Frame
HEADER.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HEADER.BackgroundTransparency = 1.000
HEADER.Size = UDim2.new(1, 0, 0.32872498, 0)
HEADER.Font = Enum.Font.SourceSans
HEADER.Text = "Find The Markers GUI"
HEADER.TextColor3 = Color3.fromRGB(255, 255, 255)
HEADER.TextScaled = true
HEADER.TextSize = 14.000
HEADER.TextWrapped = true

TPRANDOM.Name = "TPRANDOM"
TPRANDOM.Parent = Frame
TPRANDOM.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
TPRANDOM.BorderSizePixel = 0
TPRANDOM.Position = UDim2.new(0.0094339624, 0, 0.705051124, 0)
TPRANDOM.Size = UDim2.new(0, 104, 0, 28)
TPRANDOM.Font = Enum.Font.SourceSans
TPRANDOM.Text = "Teleport to random marker"
TPRANDOM.TextColor3 = Color3.fromRGB(255, 255, 255)
TPRANDOM.TextScaled = true
TPRANDOM.TextSize = 14.000
TPRANDOM.TextWrapped = true

-- Scripts:

local function OGVDEV_fake_script() -- Frame.MakeDraggable 
 local script = Instance.new('LocalScript', Frame)

 frame = script.Parent
 frame.Draggable = true
 frame.Active = true
 frame.Selectable = true
end
coroutine.wrap(OGVDEV_fake_script)()
local function EKFIWUG_fake_script() -- Frame.Buttons 
 local script = Instance.new('LocalScript', Frame)

 local MAIN = script.Parent
 
 MAIN["Marker ESP"].MouseButton1Down:Connect(function()
  local Attach1 = Instance.new("Attachment")
  Attach1.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
  for i,v in pairs(game.Workspace:GetChildren()) do
   if string.find(v.Name, "Marker") ~= nil then
    local attach2 = Instance.new("Attachment")
    attach2.Parent = v:FindFirstChildWhichIsA("Part")
    local line = Instance.new("Beam")
    line.Parent = v:FindFirstChildWhichIsA("Part")
    line.Attachment0 = Attach1
    line.Attachment1 = attach2
    line.FaceCamera = true
    line.Width0 = .1
    line.Width1 = .1
   end
  end
 end)
 
 MAIN["TPRANDOM"].MouseButton1Down:Connect(function()
  local MarkerTable = {}
  for i,v in pairs(game.Workspace:GetChildren()) do
   if string.find(v.Name, "Marker") ~= nil then
    table.insert(MarkerTable, v)
   end
  end
  local e = 0
  for _ in pairs(MarkerTable) do e = e + 1; end
  local ran = math.random(1, e)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = MarkerTable[ran]:FindFirstChildWhichIsA("Part").CFrame
 end)
 
end
coroutine.wrap(EKFIWUG_fake_script)()