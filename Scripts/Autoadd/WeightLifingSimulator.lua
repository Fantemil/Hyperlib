local ScreenGui = Instance.new("ScreenGui")
local start = Instance.new("Frame")
local open = Instance.new("TextButton")
local MEnubase = Instance.new("Frame")
local gainmuscle = Instance.new("TextButton")
local Tittle = Instance.new("TextLabel")
local X = Instance.new("TextButton")
local sellmuscle = Instance.new("TextButton")
local AimKill = Instance.new("TextButton")
local Sfe = Instance.new("TextButton")
local aler = Instance.new("Frame")
local allllrt = Instance.new("TextLabel")
local cloooose = Instance.new("TextButton")
local afk = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

start.Name = "start"
start.Parent = ScreenGui
start.BackgroundColor3 = Color3.fromRGB(1, 39, 255)
start.Position = UDim2.new(0, 0, 0.305546227, 0)
start.Size = UDim2.new(0, 100, 0, 31)

open.Name = "open"
open.Parent = start
open.BackgroundColor3 = Color3.fromRGB(48, 255, 255)
open.Position = UDim2.new(0.0299999993, 0, 0.129032254, 0)
open.Size = UDim2.new(0, 94, 0, 22)
open.Font = Enum.Font.SciFi
open.Text = "OPEN"
open.TextColor3 = Color3.fromRGB(0, 0, 0)
open.TextSize = 14.000

MEnubase.Name = "MEnubase"
MEnubase.Parent = ScreenGui
MEnubase.BackgroundColor3 = Color3.fromRGB(56, 196, 255)
MEnubase.Position = UDim2.new(0.285714269, 0, 0.258403361, 0)
MEnubase.Size = UDim2.new(0, 144, 0, 255)
MEnubase.Visible = false
MEnubase.Active = true
MEnubase.Draggable = true

gainmuscle.Name = "gainmuscle"
gainmuscle.Parent = MEnubase
gainmuscle.BackgroundColor3 = Color3.fromRGB(119, 255, 251)
gainmuscle.Position = UDim2.new(0.0694445521, 0, 0.142436057, 0)
gainmuscle.Size = UDim2.new(0, 124, 0, 29)
gainmuscle.Font = Enum.Font.SourceSans
gainmuscle.Text = "AUTO MUSCLE"
gainmuscle.TextColor3 = Color3.fromRGB(0, 0, 0)
gainmuscle.TextSize = 14.000
_G.gain = true

Tittle.Name = "Tittle"
Tittle.Parent = MEnubase
Tittle.BackgroundColor3 = Color3.fromRGB(13, 186, 186)
Tittle.Position = UDim2.new(0, 0, 0.00323624606, 0)
Tittle.Size = UDim2.new(0, 124, 0, 18)
Tittle.Font = Enum.Font.SourceSans
Tittle.Text = "LifitingSimulator"
Tittle.TextColor3 = Color3.fromRGB(0, 0, 0)
Tittle.TextSize = 14.000

X.Name = "X"
X.Parent = MEnubase
X.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
X.Position = UDim2.new(0.861111224, 0, 0.00323624606, 0)
X.Size = UDim2.new(0, 20, 0, 18)
X.Font = Enum.Font.SourceSans
X.Text = "X"
X.TextColor3 = Color3.fromRGB(0, 0, 0)
X.TextSize = 14.000

sellmuscle.Name = "sellmuscle"
sellmuscle.Parent = MEnubase
sellmuscle.BackgroundColor3 = Color3.fromRGB(119, 255, 251)
sellmuscle.Position = UDim2.new(0.0694445521, 0, 0.301432967, 0)
sellmuscle.Size = UDim2.new(0, 124, 0, 29)
sellmuscle.Font = Enum.Font.SourceSans
sellmuscle.Text = "AUTO SELL"
sellmuscle.TextColor3 = Color3.fromRGB(0, 0, 0)
sellmuscle.TextSize = 14.000

AimKill.Name = "AimKill"
AimKill.Parent = MEnubase
AimKill.BackgroundColor3 = Color3.fromRGB(119, 255, 251)
AimKill.Position = UDim2.new(0.0694445521, 0, 0.472422361, 0)
AimKill.Size = UDim2.new(0, 124, 0, 29)
AimKill.Font = Enum.Font.SourceSans
AimKill.Text = "AUTO KILL"
AimKill.TextColor3 = Color3.fromRGB(0, 0, 0)
AimKill.TextSize = 14.000

Sfe.Name = "Sfe"
Sfe.Parent = MEnubase
Sfe.BackgroundColor3 = Color3.fromRGB(119, 255, 251)
Sfe.Position = UDim2.new(0.0694445521, 0, 0.637694538, 0)
Sfe.Size = UDim2.new(0, 124, 0, 29)
Sfe.Font = Enum.Font.SourceSans
Sfe.Text = "SAFE POINT"
Sfe.TextColor3 = Color3.fromRGB(0, 0, 0)
Sfe.TextSize = 14.000

afk.Name = "afk"
afk.Parent = MEnubase
afk.BackgroundColor3 = Color3.fromRGB(119, 255, 251)
afk.Position = UDim2.new(0.0694445521, 0, 0.797193348, 0)
afk.Size = UDim2.new(0, 124, 0, 29)
afk.Font = Enum.Font.SourceSans
afk.Text = "ANT AFK"
afk.TextColor3 = Color3.fromRGB(0, 0, 0)
afk.TextSize = 14.000

aler.Name = "aler"
aler.Parent = ScreenGui
aler.BackgroundColor3 = Color3.fromRGB(18, 97, 113)
aler.Position = UDim2.new(0.255216688, 0, 0.369747937, 0)
aler.Size = UDim2.new(0, 304, 0, 124)
aler.Visible = false
aler.Active = true
aler.Draggable = false

allllrt.Name = "allllrt"
allllrt.Parent = aler
allllrt.BackgroundColor3 = Color3.fromRGB(28, 176, 255)
allllrt.Position = UDim2.new(0.0506357104, 0, 0.121103287, 0)
allllrt.Size = UDim2.new(0, 273, 0, 92)
allllrt.Font = Enum.Font.SciFi
allllrt.Text = "Made By Kramos!!!"
allllrt.TextColor3 = Color3.fromRGB(0, 0, 0)
allllrt.TextSize = 10.000

cloooose.Name = "cloooose"
cloooose.Parent = aler
cloooose.BackgroundColor3 = Color3.fromRGB(16, 89, 206)
cloooose.Position = UDim2.new(0.356556743, 0, 0.790458083, 0)
cloooose.Size = UDim2.new(0, 88, 0, 16)
cloooose.Font = Enum.Font.SourceSans
cloooose.Text = "Close"
cloooose.TextColor3 = Color3.fromRGB(0, 0, 0)
cloooose.TextSize = 14.000

afk.Name = "afk"
afk.Parent = MEnubase
afk.BackgroundColor3 = Color3.fromRGB(119, 255, 251)
afk.Position = UDim2.new(0.0694445521, 0, 0.797193348, 0)
afk.Size = UDim2.new(0, 124, 0, 29)
afk.Font = Enum.Font.SourceSans
afk.Text = "ANT AFK"
afk.TextColor3 = Color3.fromRGB(0, 0, 0)
afk.TextSize = 14.000

----------------function--------------

local plr = game.Players.LocalPlayer

local char = plr.Character

local mouse = plr:GetMouse()

local GAINMUSCLE = false

local SELLMUSCLE = false







open.MouseButton1Click:Connect(function()
 MEnubase.Visible = true
 start.Visible = false
end)

X.MouseButton1Click:Connect(function()
 MEnubase.Visible = false
 start.Visible = true
end)

gainmuscle.MouseButton1Click:Connect(function()
 GAINMUSCLE = true
 wait()
 while GAINMUSCLE == true do
  wait(0)
  local table_1 = {
   [1] = 'GainMuscle'};
  local Target = game:GetService("ReplicatedStorage").RemoteEvent;
  Target:FireServer(table_1);
 end
end)

sellmuscle.MouseButton1Click:Connect(function()
 SELLMUSCLE = true
 wait()
 while SELLMUSCLE == true do
  wait()
  local table_1 = {
   [1] = 'SellMuscle'};
  local Target = game:GetService("ReplicatedStorage").RemoteEvent;
  Target:FireServer(table_1);
 end
end)


AimKill.MouseButton1Click:Connect(function()
 aler.Visible = true
 local LP = game:GetService("Players").LocalPlayer
 while wait(0.1) do
  for i,v in pairs(game:GetService("Players"):GetPlayers()) do
   if v and v.Character and v ~= LP and v.Character:FindFirstChild("Head") then
    local hrp = v.Character:FindFirstChild("Head") --// I thought of using humanoidrootpart first but it works better with the head!
    hrp:BreakJoints()
    hrp.Transparency = 0
    hrp.Anchored = true
    hrp.CanCollide = false
    pcall(function()
     hrp.CFrame = LP.Character.HumanoidRootPart.CFrame * CFrame.new(0.5,0,-2.5)
    end)
   end
  end
 end
end)
cloooose.MouseButton1Click:Connect(function()
 aler.Visible = false
end)

Sfe.MouseButton1Click:Connect(function()
 local plr = game.Players
 local lplr = plr.LocalPlayer
 local lchar = lplr.Character
 local HRP = lchar.HumanoidRootPart

 HRP.CFrame = CFrame.new(-500, 630, 2000)

 local C = Instance.new("Part")
 C.Parent = workspace
 C.CFrame = CFrame.new(-500, 610, 2000)
 C.Size = Vector3.new(200, 10, 200)
 C.Anchored = true

end)

afk.MouseButton1Click:Connect(function()
wait (10)
game:GetService('Players').LocalPlayer.Idled:Connect(function()
game:GetService('VirtualUser'):CaptureController();
wait();
game:GetService('VirtualUser'):ClickButton2(Vector2.new(0,0))
end)
end)