local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Close = Instance.new("TextButton")
local ChestTp = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local Dig = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local Open = Instance.new("TextButton")
 
-- Properties
 
ScreenGui.Parent = game.CoreGui
 
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.282353, 0.282353, 0.282353)
Frame.BackgroundTransparency = 0.40000000596046
Frame.Draggable = true
Frame.Position = UDim2.new(0, 440, 0, 350)
Frame.Size = UDim2.new(0, 230, 0, 220)
Frame.Visible = false
 
Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.new(0.337255, 0.333333, 0.337255)
Close.Size = UDim2.new(0, 20, 0, 20)
Close.Font = Enum.Font.SciFi
Close.Text = "XxX"
Close.TextColor3 = Color3.new(1, 0, 0)
Close.TextScaled = true
Close.TextSize = 14
Close.TextWrapped = true
Close.MouseButton1Click:connect(function()
    if game.CoreGui.ScreenGui.Frame.Visible == true then
       game.CoreGui.ScreenGui.Frame.Visible = false
    end
end)
ChestTp.Name = "Chest Tp"
ChestTp.Parent = Frame
ChestTp.BackgroundColor3 = Color3.new(0, 0, 0)
ChestTp.BackgroundTransparency = 0.40000000596046
ChestTp.Position = UDim2.new(0, 0, 0, 50)
ChestTp.Size = UDim2.new(0, 230, 0, 40)
ChestTp.Font = Enum.Font.SciFi
ChestTp.Text = "Teleport Chest"
ChestTp.TextColor3 = Color3.new(1, 0, 0)
ChestTp.TextScaled = true
ChestTp.TextSize = 14
ChestTp.TextWrapped = true
ChestTp.MouseButton1Click:connect(function()
    while true do
wait(.1)
for _,v in pairs(game.Workspace.SandBlocks:GetChildren()) do
if v:FindFirstChild("BasicChest") or v:FindFirstChild("EpicChest") or v:FindFirstChild("RareChest") then
v.CanCollide = false
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame+Vector3.new(math.random(0,0),0,math.random(0,0))
end
end
end
end)
TextLabel.Parent = ChestTp
TextLabel.BackgroundColor3 = Color3.new(0.345098, 0.337255, 0.345098)
TextLabel.BackgroundTransparency = 0.30000001192093
TextLabel.Position = UDim2.new(0, 0, 0, 40)
TextLabel.Size = UDim2.new(0, 230, 0, 20)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Credits To Error!"
TextLabel.TextColor3 = Color3.new(0, 1, 0)
TextLabel.TextSize = 28
 
Dig.Name = "Dig"
Dig.Parent = Frame
Dig.BackgroundColor3 = Color3.new(0, 0, 0)
Dig.BackgroundTransparency = 0.40000000596046
Dig.Position = UDim2.new(0, 0, 0, 110)
Dig.Size = UDim2.new(0, 230, 0, 40)
Dig.Font = Enum.Font.SciFi
Dig.Text = "Dig Faster!"
Dig.TextColor3 = Color3.new(1, 0, 0)
Dig.TextScaled = true
Dig.TextSize = 14
Dig.TextWrapped = true
Dig.MouseButton1Click:connect(function()
    local Clicking = false
local Mouse = game.Players.LocalPlayer:GetMouse()
local RS = game:GetService("RunService").RenderStepped
_G.digSpeed = 0
local ClicksPerLoop = 5
 
function FindTool()
local found = false
local tool = nil
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.ClassName=="Tool" then
found = true
tool = v
end
end
if found then
return true, tool
end
end
 
function Dig()
local pass, tool = FindTool()
while Clicking and pass do
RS:wait(_G.digSpeed)
if not Mouse.Target:FindFirstChild("Rock") then
for i=1,ClicksPerLoop do
tool.RemoteClick:FireServer(Mouse.Target)
end
end
end
end
 
Mouse.Button1Down:Connect(function()
Clicking = true
Dig()
end)
 
Mouse.Button1Up:Connect(function()
Clicking = false
end)
end)
TextLabel_2.Parent = Dig
TextLabel_2.BackgroundColor3 = Color3.new(0.345098, 0.337255, 0.345098)
TextLabel_2.BackgroundTransparency = 0.30000001192093
TextLabel_2.Position = UDim2.new(0, 0, 0, 40)
TextLabel_2.Size = UDim2.new(0, 230, 0, 20)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Credits To EpicShow! "
TextLabel_2.TextColor3 = Color3.new(0, 1, 0)
TextLabel_2.TextSize = 28
 
TextLabel_3.Parent = Dig
TextLabel_3.BackgroundColor3 = Color3.new(0.345098, 0.337255, 0.345098)
TextLabel_3.BackgroundTransparency = 0.30000001192093
TextLabel_3.Position = UDim2.new(0, 0, 0, 60)
TextLabel_3.Size = UDim2.new(0, 230, 0, 50)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Made By CoElder!"
TextLabel_3.TextColor3 = Color3.new(0, 0, 1)
TextLabel_3.TextSize = 28
 
TextLabel_4.Parent = Frame
TextLabel_4.BackgroundColor3 = Color3.new(0.337255, 0.329412, 0.337255)
TextLabel_4.BackgroundTransparency = 0.40000000596046
TextLabel_4.Position = UDim2.new(0, 0, 0, 20)
TextLabel_4.Size = UDim2.new(0, 230, 0, 30)
TextLabel_4.Font = Enum.Font.SciFi
TextLabel_4.Text = "Treasure Hunt Simulator GUI"
TextLabel_4.TextColor3 = Color3.new(0, 0, 0)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 28
TextLabel_4.TextWrapped = true
 
Open.Name = "Hack"
Open.Parent = ScreenGui
Open.BackgroundColor3 = Color3.new(0, 0, 0)
Open.BackgroundTransparency = 0.30000001192093
Open.Position = UDim2.new(0, 0, 0, 340)
Open.Size = UDim2.new(0, 100, 0, 30)
Open.Font = Enum.Font.SciFi
Open.Text = "Hack"
Open.TextColor3 = Color3.new(0, 1, 1)
Open.TextScaled = true
Open.TextSize = 14
Open.TextWrapped = true
Open.MouseButton1Click:connect(function()
    if game.CoreGui.ScreenGui.Frame.Visible == false then
       game.CoreGui.ScreenGui.Frame.Visible = true
    end
end)