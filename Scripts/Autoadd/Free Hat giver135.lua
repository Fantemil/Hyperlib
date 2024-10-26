--[[
Give hats to people (R15, R6) V2

WARNING : KEEP RESETTING WHEN HATS FALL DOWN THEN THE SCRIPT WILL GET BETTER AT NOT FALLING DOWN AND GRADUALLY BECOMES ALMOST UNABLE TO FALL DOWN

UpdateLog V2 :
Better Netless (Unable to fall down when in your radius) (V2)

Works well on R6, R15 games are impossible to detect the point of height so expect inaccuracy of hats given to a certain player


Made By Fedoratum()()
--]]

-- This will say stuff like admin do

local fakeadmin = false
-- set to true or false

-- givehats hatname fedoratum

function mOut(txt, type)
if type == 1 then
spawn(function()
local m = Instance.new("Message", game.CoreGui)
m.Text = txt
task.wait(3)
m:Destroy()
end)
elseif type == 2 then
spawn(function()
local h = Instance.new("Hint", game.CoreGui)
h.Text = txt
task.wait(3)
h:Destroy()
end)
end
end


local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Punish = Instance.new("TextBox")
local SilentCMD = Instance.new("TextBox")
local SilentC = Instance.new("TextButton")
local X = Instance.new("TextButton")
local plr = game:GetService"Players".LocalPlayer

ScreenGui.Parent = game.CoreGui
ScreenGui.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.new(0.333333, 0.666667, 0.498039)
Main.BorderSizePixel = 4
Main.Position = UDim2.new(0.117575757, 0, 0.152334154, 0)
Main.Size = UDim2.new(0, 334, 0, 120)
Main.Active = true
Main.Draggable = true
Main.Visible = false

Punish.Name = "Punish"
Punish.Parent = Main
Punish.BackgroundColor3 = Color3.new(0.168627, 0.513726, 0.25098)
Punish.BorderColor3 = Color3.new(0.168627, 0.513726, 0.25098)
Punish.Position = UDim2.new(0.0209580846, 0, 0.094202876, 0)
Punish.Size = UDim2.new(0, 162, 0, 50)
Punish.Font = Enum.Font.GothamBlack
Punish.PlaceholderText = "Player Name"
Punish.Text = ""
Punish.TextColor3 = Color3.new(1, 1, 1)
Punish.TextSize = 14
Punish.TextStrokeColor3 = Color3.new(1, 1, 1)

SilentCMD.Name = "SilentCMD"
SilentCMD.Parent = Main
SilentCMD.BackgroundColor3 = Color3.new(0.168627, 0.513726, 0.25098)
SilentCMD.BorderColor3 = Color3.new(0.168627, 0.513726, 0.25098)
SilentCMD.Position = UDim2.new(0.514970064, 0, 0.094202876, 0)
SilentCMD.Size = UDim2.new(0, 152, 0, 50)
SilentCMD.Font = Enum.Font.GothamBlack
SilentCMD.PlaceholderText = "Hat Name"
SilentCMD.Text = ""
SilentCMD.TextColor3 = Color3.new(1, 1, 1)
SilentCMD.TextSize = 14
SilentCMD.TextStrokeColor3 = Color3.new(1, 1, 1)

SilentC.Name = "SilentC"
SilentC.Parent = Main
SilentC.BackgroundColor3 = Color3.new(0.168627, 0.513726, 0.25098)
SilentC.BorderColor3 = Color3.new(0.168627, 0.513726, 0.25098)
SilentC.Position = UDim2.new(0.280070064, 0, 0.554202876, 0)
SilentC.Size = UDim2.new(0, 152, 0, 50)
SilentC.Font = Enum.Font.GothamBlack
SilentC.Text = "Hat him/her"
SilentC.TextColor3 = Color3.new(1, 1, 1)
SilentC.TextSize = 14
SilentC.TextStrokeColor3 = Color3.new(1, 1, 1)

X.Name = "X"
X.Parent = Main
X.BackgroundColor3 = Color3.new(0.168627, 0.513726, 0.25098)
X.BorderColor3 = Color3.new(0.168627, 0.513726, 0.25098)
X.BorderSizePixel = 0
X.Position = UDim2.new(0.952095807, 0, 0, 0)
X.Size = UDim2.new(0, 16, 0, 16)
X.Font = Enum.Font.SourceSans
X.Text = "X"
X.TextColor3 = Color3.new(1, 1, 1)
X.TextScaled = true
X.TextSize = 14
X.TextWrapped = true

function getPlayer(shortcut)
local player = nil
local g = game.Players:GetPlayers()
for i = 1, #g do
if string.lower(string.sub(g[i].Name,1,string.len(shortcut))) == string.lower(shortcut) then
if g[i] ~= nil then
player = g[i]
break
end
end
end
return player
end

function getHat(shortcuts)
local hat = nil
for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if v:IsA("Accessory") then
if string.lower(string.sub(v.Name,1,string.len(shortcuts))) == string.lower(shortcuts) then
if v.Name ~= nil then
hat = v
break
end
end
end
end
return hat
end

local runcode = true
local spawntime = game.Players.RespawnTime + 3

local chr = game.Players.LocalPlayer.Character

mOut("Wait For Script To Load", 1)

for i, v in pairs(chr:GetChildren()) do
if v:IsA("Accessory") then
sethiddenproperty(v, "BackendAccoutrementState", 4)
end
end

task.wait(1)
chr.Humanoid.Health = 0
task.wait(spawntime)
Main.Visible = true

local hatstored = {}

SilentC.MouseButton1Click:Connect(function()
pcall(function()
local char = plr.Character
if runcode then
runcode = false

local dfc = game.ReplicatedStorage.DefaultChatSystemChatEvents
local smr = dfc.SayMessageRequest

local hatse = getHat(SilentCMD.Text)
local arg = getPlayer(Punish.Text)

if table.find(hatstored, hatse.Name) then
mOut("Hat is already given away, error", 1)
return end

argplr = game.Players[arg.Name].Character

local rs = game:GetService("RunService")
local fc
local dc
local dic
local coc
char.Archivable = true
headname = char.Head.Name
local cchar = char:Clone()
cchar.Parent = Workspace

for i, v in pairs(char:GetChildren()) do
if v:IsA("Accessory") then
sethiddenproperty(v, "BackendAccoutrementState", 4)
end
end

local con
con = char.Humanoid.Died:Connect(function()
cchar:Destroy()
Main.Visible = false
runcode = false
mOut("Wait For "..tostring(spawntime).." Second", 1)
table.clear(hatstored)
task.wait(spawntime)
Main.Visible = true
runcode = true
con:Disconnect()
end)

if fakeadmin then
smr:FireServer(";givehat "..hatse.Name.." "..arg.Name, "All")
end

cchar.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame
for i, x in pairs(cchar:GetDescendants()) do
if x:IsA("BasePart") then
x.Transparency = 1
end
end
for i, x in pairs(cchar:GetDescendants()) do
if x.Name == "LeftUpperLeg" and x.Name == "RightUpperLeg" then
x.Transparency = 1
end
end
for i, v in pairs(cchar.Head:GetDescendants()) do
if v.className == "Decal" or v.className == "Texture" then
v.Transparency = 1
end
end

for i,v in pairs(char:GetDescendants()) do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then
fc = rs.Heartbeat:Connect(function()
if char.Humanoid.Health <= 0 then fc:Disconnect() return end
v.Velocity = Vector3.new(30, 4, 0)
v.RotVelocity = Vector3.new(30, 4, 0)
end)
end
end

dic = rs.RenderStepped:Connect(function()
setscriptable(plr, "SimulationRadius", true)
plr.SimulationRadius = math.huge * math.huge, math.huge * math.huge * 1 / 0 * 1 / 0 * 1 / 0 * 1 / 0 * 1 / 0
end)

coc = plr.SimulationRadiusChanged:Connect(function(radius)
   radius = math.huge
   return radius
end)

char[hatse.Name].Handle.AccessoryWeld:Destroy()

dc = rs.RenderStepped:Connect(function()
if char.Humanoid.Health <= 0 then dc:Disconnect() cchar:Destroy() coc:Disconnect() dic:Disconnect() return end
cchar.HumanoidRootPart.CFrame = argplr.HumanoidRootPart.CFrame
char[hatse.Name].Handle.CFrame = cchar[hatse.Name].Handle.CFrame
end)
table.insert(hatstored, hatse.Name)
end
runcode = true
end)
end)

X.MouseButton1Click:Connect(function()
ScreenGui:Destroy()
end)

mOut("Fedoratum Hat Giver Has Loaded", 2)

print("What accessories you have on")
for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if v:IsA("Accessory") then
print("What accessories you have on")
print(v.Name)
end
end