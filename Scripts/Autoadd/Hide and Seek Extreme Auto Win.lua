local function hider()
local me = game.Players.LocalPlayer
local char = me.Character
local players = game.Players:GetChildren()
local mechar = me.Character
for i,v in pairs(game.Workspace.GameObjects:GetChildren()) do
wait(.15)
mechar.HumanoidRootPart.CFrame = v.CFrame
end
char.Humanoid.WalkSpeed = 100
char.Humanoid.JumpPower = 250
for i,v in pairs(players)do
wait(.5)
   local billboard = Instance.new("BillboardGui",v.Character.Head)
billboard.Size = UDim2.new (0,200,0,50)
billboard.ExtentsOffset = Vector3.new(0,2.5,0)
billboard.AlwaysOnTop = true
wait(.1)
   local textbox = Instance.new ("TextBox",billboard)
   textbox.Size = UDim2.new (0, 200,0, 50)
   textbox.Name = "textbox"
   wait(.1)
   textbox.TextColor3 = Color3.fromRGB(0,0,255)
   textbox.TextSize = 20
   textbox.BackgroundTransparency = 1
if v.PlayerData.It.Value == true then 
textbox.Text = "It"
textbox.TextColor3 = Color3.fromRGB(255,0,0)
else
textbox.Text = "Hider"
end
end
end
local function seeker()
local map = game.Workspace.Map.Map
local mapchildren = map:GetChildren()
local me = game.Players.LocalPlayer
for i,v in pairs(game.Workspace.GameObjects:GetChildren()) do
wait(.15)
me.Character.HumanoidRootPart.CFrame = v.CFrame
end
wait(5)
local players = game.Players:GetChildren()
local me = game.Players.LocalPlayer
local mechar = me.Character
wait(1)
for i,v in pairs(players) do
wait(.1)
mechar.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
end
end
local player = game.Players.LocalPlayer
local plrchar = player.Character
local guiopen = Instance.new("ScreenGui",player.PlayerGui)
guiopen.Name = "openhack"
local openbutton = Instance.new("TextButton",guiopen)
openbutton.Name = "openbutton"
openbutton.BackgroundColor3 = Color3.fromRGB(255,255,255)
openbutton.TextColor3 = Color3.fromRGB(1,1,1)
openbutton.Size = UDim2.new(.05,0,.05,0)
openbutton.Text = "Open"
openbutton.Style = Enum.ButtonStyle.RobloxRoundButton
openbutton.Position = UDim2.new(0.475,0,0.9,0)
local gui1 = Instance.new("ScreenGui",player.PlayerGui)
gui1.Enabled = false
gui1.Name = "HackGui"
local frame1 = Instance.new("Frame",gui1)
frame1.Name = "frame1"
frame1.Size = UDim2.new(.3,0,.3,0)
frame1.Active = true
frame1.Selectable = true
frame1.Draggable = true
frame1.BackgroundColor3 = Color3.fromRGB(50,0,205)
frame1.BorderColor3 = Color3.fromRGB(205,0,50)
frame1.BorderSizePixel = 3
frame1.Position = UDim2.new(0.35,0,0.35,0)
local hiderbutton = Instance.new("TextButton",frame1)
hiderbutton.Name = "hider"
hiderbutton.Size = UDim2.new(.3,0,.3,0)
hiderbutton.Position = UDim2.new(.35,0,0,0)
hiderbutton.BackgroundColor3 = Color3.fromRGB(205,0,50)
hiderbutton.BorderSizePixel = 0
hiderbutton.Text = "Hider"
local seekerbutton = Instance.new("TextButton",frame1)
seekerbutton.Name = "seeker"
seekerbutton.Size = UDim2.new(.3,0,.3,0)
seekerbutton.Position = UDim2.new(.35,0,.7,0)
seekerbutton.BackgroundColor3 = Color3.fromRGB(205,0,50)
seekerbutton.BorderSizePixel = 0
seekerbutton.Text = "Seeker"
local creditlabel = Instance.new("TextLabel",frame1)
creditlabel.Text = "Click one of the buttons each round depending on what you are! -(Made By ALÄ° EGEMEN KÄ°NÄ°K)"
creditlabel.Size = UDim2.new(1,0,.3,0)
creditlabel.TextScaled = true
creditlabel.TextColor3 = Color3.fromRGB(0,0,0)
creditlabel.BackgroundTransparency = 1
creditlabel.Position = UDim2.new(0,0,.35,0)
openbutton.Activated:connect(function()
if gui1.Enabled == true then
openbutton.Text = "Open"
gui1.Enabled = false
elseif gui1.Enabled == false then
openbutton.Text = "Close"
gui1.Enabled = true
end
end)
seekerbutton.Activated:connect(function()
seeker()
end)
hiderbutton.Activated:connect(function()
hider()
end)