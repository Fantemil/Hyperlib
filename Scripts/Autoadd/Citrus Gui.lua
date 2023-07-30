-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local Citrus = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local Selectors = Instance.new("Frame")
local Commands = Instance.new("TextButton")
local Executor = Instance.new("TextButton")
local Scripts = Instance.new("TextButton")
local Settings = Instance.new("TextButton")
local Exit = Instance.new("TextButton")
local Kill = Instance.new("TextButton")
local Logo = Instance.new("TextLabel")
local CommandsFrame = Instance.new("Frame")
local WalkSpeed = Instance.new("TextButton")
local JumpPower = Instance.new("TextButton")
local NoClip = Instance.new("TextButton")
local Fly = Instance.new("TextButton")
local Btools = Instance.new("TextButton")
local Chat = Instance.new("TextButton")
local Rape = Instance.new("TextButton")
local TpToThem = Instance.new("TextButton")
local Amount = Instance.new("TextBox")
local ChatBox = Instance.new("TextBox")
local Kill_2 = Instance.new("TextButton")
local Username = Instance.new("TextBox")
local Username_2 = Instance.new("TextBox")
local FlyPrefix = Instance.new("TextBox")
local FlingKill = Instance.new("TextButton")
local ClickTp = Instance.new("TextButton")
local ExecutorFrame = Instance.new("Frame")
local Input = Instance.new("ScrollingFrame")
local Insert = Instance.new("TextBox")
local Execute = Instance.new("TextButton")
local Clear = Instance.new("TextButton")
local BuilerScripts = Instance.new("TextButton")
local NonFeMain = Instance.new("Frame")
local NonFeScroll = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Caducus = Instance.new("TextButton")
local Wristband = Instance.new("TextButton")
local Reaper = Instance.new("TextButton")
local Geno = Instance.new("TextButton")
local Warden = Instance.new("TextButton")
local Nebula = Instance.new("TextButton")
local NoobBat = Instance.new("TextButton")
local Ender = Instance.new("TextButton")
local GrabKnife = Instance.new("TextButton")
local DemiGod = Instance.new("TextButton")
local Nuke = Instance.new("TextButton")
local Hitler = Instance.new("TextButton")
local Extermina = Instance.new("TextButton")
local Phoenix = Instance.new("TextButton")
local Sans = Instance.new("TextButton")
local Hunter = Instance.new("TextButton")
local Ravenger = Instance.new("TextButton")
local Titan = Instance.new("TextButton")
local MapDraw = Instance.new("TextButton")
local Scythe = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local SelectionFrame = Instance.new("Frame")
local GameButton = Instance.new("TextButton")
local GuiButton = Instance.new("TextButton")
local GamesFrame = Instance.new("Frame")
local ArsenalGui = Instance.new("TextButton")
local ArsenalAutoFarm = Instance.new("TextButton")
local CounterBloxGui = Instance.new("TextButton")
local RbWorld2 = Instance.new("TextButton")
local Strucid = Instance.new("TextButton")
local MurderMystery = Instance.new("TextButton")
local VehicleSim = Instance.new("TextButton")
local DancingSim = Instance.new("TextButton")
local PrisonLife = Instance.new("TextButton")
local KnifeSim = Instance.new("TextButton")
local BadBusiness = Instance.new("TextButton")
local MadCity = Instance.new("TextButton")
local TextingSim = Instance.new("TextButton")
local PetRanch = Instance.new("TextButton")
local Omnom = Instance.new("TextButton")
local FarmTown = Instance.new("TextButton")
local Ruddev = Instance.new("TextButton")
local LumberT = Instance.new("TextButton")
local GuiFrame = Instance.new("Frame")
local ShatterVast = Instance.new("TextButton")
local Revis = Instance.new("TextButton")
local Fathom = Instance.new("TextButton")
local RoXploit = Instance.new("TextButton")
local TopKek = Instance.new("TextButton")
local Arosia = Instance.new("TextButton")
local OpFinality = Instance.new("TextButton")
local TheBoss = Instance.new("TextButton")
local InfiniteYield = Instance.new("TextButton")
local FilterShark = Instance.new("TextButton")
local ChatBypass = Instance.new("TextButton")
local RoseHub = Instance.new("TextButton")
local SettingsFrame = Instance.new("Frame")
local Credits = Instance.new("TextLabel")
local CreditsLogo = Instance.new("TextLabel")
local Black = Instance.new("TextButton")
local White = Instance.new("TextButton")
local Color = Instance.new("TextLabel")
local Open = Instance.new("TextButton")
local NextFrame = Instance.new("Frame")
local Prev = Instance.new("TextButton")
local AloneBR = Instance.new("TextButton")
local BreakingPoint = Instance.new("TextButton")
local BeeSwarm = Instance.new("TextButton")
local Nerf = Instance.new("TextButton")
local DragonBall = Instance.new("TextButton")
local JailBreakFarm = Instance.new("TextButton")
local ProjectLaz = Instance.new("TextButton")
local Unbox = Instance.new("TextButton")
local DungeonQ = Instance.new("TextButton")
local Rocitizens = Instance.new("TextButton")
local SuperHero = Instance.new("TextButton")
local TreasureQ = Instance.new("TextButton")
local PJJ = Instance.new("TextButton")
local PhantomForces = Instance.new("TextButton")
local BrokenBones = Instance.new("TextButton")
local Booga = Instance.new("TextButton")
local ApocR = Instance.new("TextButton")
local SharkBite = Instance.new("TextButton")
local Next = Instance.new("TextButton")
--Properties:
Citrus.Name = "Citrus"
Citrus.Parent = game.CoreGui
Citrus.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Background.Name = "Background"
Background.Parent = Citrus
Background.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Background.Position = UDim2.new(0.175317064, 0, 0.186541736, 0)
Background.Size = UDim2.new(0, 629, 0, 439)
Background.Visible = false
Background.Active = true
Background.Draggable = true

Selectors.Name = "Selectors"
Selectors.Parent = Background
Selectors.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Selectors.Size = UDim2.new(0, 125, 0, 439)

Commands.Name = "Commands"
Commands.Parent = Selectors
Commands.BackgroundColor3 = Color3.new(1, 1, 1)
Commands.BackgroundTransparency = 1
Commands.Position = UDim2.new(0.0920000002, 0, 0.134396344, 0)
Commands.Size = UDim2.new(0, 102, 0, 69)
Commands.Font = Enum.Font.SourceSans
Commands.Text = "Commands"
Commands.TextColor3 = Color3.new(0, 0, 0)
Commands.TextSize = 26
Commands.TextWrapped = true
Commands.MouseButton1Click:connect(function()
ExecutorFrame.Visible = false
GuiFrame.Visible = false
SelectionFrame.Visible = false
GamesFrame.Visible = false
CommandsFrame.Visible = true
SettingsFrame.Visible = false
NextFrame.Visible = false
end)

Executor.Name = "Executor"
Executor.Parent = Selectors
Executor.BackgroundColor3 = Color3.new(1, 1, 1)
Executor.BackgroundTransparency = 1
Executor.Position = UDim2.new(0.0920000002, 0, 0.315602899, 0)
Executor.Size = UDim2.new(0, 102, 0, 69)
Executor.Font = Enum.Font.SourceSans
Executor.Text = "Executor"
Executor.TextColor3 = Color3.new(0, 0, 0)
Executor.TextSize = 26
Executor.TextWrapped = true
Executor.MouseButton1Click:connect(function()
ExecutorFrame.Visible = true
GuiFrame.Visible = false
SelectionFrame.Visible = false
GamesFrame.Visible = false
CommandsFrame.Visible = false
SettingsFrame.Visible = false
NextFrame.Visible = false
end)

Scripts.Name = "Scripts"
Scripts.Parent = Selectors
Scripts.BackgroundColor3 = Color3.new(1, 1, 1)
Scripts.BackgroundTransparency = 1
Scripts.Position = UDim2.new(0.0920000002, 0, 0.496809453, 0)
Scripts.Size = UDim2.new(0, 102, 0, 69)
Scripts.Font = Enum.Font.SourceSans
Scripts.Text = "Scripts"
Scripts.TextColor3 = Color3.new(0, 0, 0)
Scripts.TextSize = 26
Scripts.TextWrapped = true
Scripts.MouseButton1Click:connect(function()
ExecutorFrame.Visible = false
GuiFrame.Visible = false
SelectionFrame.Visible = true
GamesFrame.Visible = false
CommandsFrame.Visible = false
SettingsFrame.Visible = false
NextFrame.Visible = false
end)

Settings.Name = "Settings"
Settings.Parent = Selectors
Settings.BackgroundColor3 = Color3.new(1, 1, 1)
Settings.BackgroundTransparency = 1
Settings.Position = UDim2.new(0.0920000002, 0, 0.678016067, 0)
Settings.Size = UDim2.new(0, 102, 0, 69)
Settings.Font = Enum.Font.SourceSans
Settings.Text = "Settings"
Settings.TextColor3 = Color3.new(0, 0, 0)
Settings.TextSize = 26
Settings.TextWrapped = true
Settings.MouseButton1Click:connect(function()
ExecutorFrame.Visible = false
GuiFrame.Visible = false
SelectionFrame.Visible = false
GamesFrame.Visible = false
CommandsFrame.Visible = false
SettingsFrame.Visible = true
NextFrame.Visible = false
end)

Exit.Name = "Exit"
Exit.Parent = Selectors
Exit.BackgroundColor3 = Color3.new(1, 1, 1)
Exit.BackgroundTransparency = 1
Exit.Position = UDim2.new(-0.00400000019, 0, 0, 0)
Exit.Size = UDim2.new(0, 33, 0, 32)
Exit.Font = Enum.Font.SourceSans
Exit.Text = "X"
Exit.TextColor3 = Color3.new(0, 0, 0)
Exit.TextSize = 36
Exit.TextWrapped = true
Exit.MouseButton1Click:connect(function()
Background.Visible = false
Open.Visible = true
end)

Kill.Name = "Kill"
Kill.Parent = Selectors
Kill.BackgroundColor3 = Color3.new(1, 1, 1)
Kill.BackgroundTransparency = 1
Kill.Position = UDim2.new(0.0920000002, 0, 0.946808755, 0)
Kill.Size = UDim2.new(0, 102, 0, 23)
Kill.Font = Enum.Font.SourceSans
Kill.Text = "Kill Gui"
Kill.TextColor3 = Color3.new(0, 0, 0)
Kill.TextSize = 26
Kill.TextWrapped = true
Kill.MouseButton1Click:connect(function()
Background.Visible = false
end)

Logo.Name = "Logo"
Logo.Parent = Selectors
Logo.BackgroundColor3 = Color3.new(1, 1, 1)
Logo.BackgroundTransparency = 1
Logo.Position = UDim2.new(0.25999999, 0, 0, 0)
Logo.Size = UDim2.new(0, 92, 0, 51)
Logo.Font = Enum.Font.SourceSans
Logo.Text = "Citrus Gui"
Logo.TextColor3 = Color3.new(1, 1, 1)
Logo.TextScaled = true
Logo.TextSize = 14
Logo.TextWrapped = true

CommandsFrame.Name = "CommandsFrame"
CommandsFrame.Parent = Background
CommandsFrame.BackgroundColor3 = Color3.new(1, 1, 1)
CommandsFrame.BackgroundTransparency = 1
CommandsFrame.Position = UDim2.new(0.198728144, 0, 0, 0)
CommandsFrame.Size = UDim2.new(0, 504, 0, 438)
CommandsFrame.Visible = false

WalkSpeed.Name = "WalkSpeed"
WalkSpeed.Parent = CommandsFrame
WalkSpeed.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
WalkSpeed.Position = UDim2.new(0.0376984142, 0, 0.0388127863, 0)
WalkSpeed.Size = UDim2.new(0, 200, 0, 50)
WalkSpeed.Font = Enum.Font.SourceSans
WalkSpeed.Text = "Walkspeed"
WalkSpeed.TextColor3 = Color3.new(0, 0, 0)
WalkSpeed.TextSize = 40
WalkSpeed.TextWrapped = true
WalkSpeed.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Amount.Text
end)


JumpPower.Name = "JumpPower"
JumpPower.Parent = CommandsFrame
JumpPower.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
JumpPower.Position = UDim2.new(0.555555522, 0, 0.0388127863, 0)
JumpPower.Size = UDim2.new(0, 200, 0, 50)
JumpPower.Font = Enum.Font.SourceSans
JumpPower.Text = "JumpPower"
JumpPower.TextColor3 = Color3.new(0, 0, 0)
JumpPower.TextSize = 40
JumpPower.TextWrapped = true
JumpPower.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Amount.Text
end)

NoClip.Name = "NoClip"
NoClip.Parent = CommandsFrame
NoClip.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
NoClip.Position = UDim2.new(0.0376984142, 0, 0.232876718, 0)
NoClip.Size = UDim2.new(0, 200, 0, 50)
NoClip.Font = Enum.Font.SourceSans
NoClip.Text = "NoClip"
NoClip.TextColor3 = Color3.new(0, 0, 0)
NoClip.TextSize = 40
NoClip.TextWrapped = true
noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
NoClip.MouseButton1Down:connect(function()
noclip = not noclip
if NoClip.Text == "NoClip" then
    NoClip.Text = "Clip"
else
    NoClip.Text = "NoClip"
end
end)

Fly.Name = "Fly"
Fly.Parent = CommandsFrame
Fly.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Fly.Position = UDim2.new(0.587301552, 0, 0.232876718, 0)
Fly.Size = UDim2.new(0, 200, 0, 50)
Fly.Font = Enum.Font.SourceSans
Fly.Text = "Fly"
Fly.TextColor3 = Color3.new(0, 0, 0)
Fly.TextSize = 40
Fly.TextWrapped = true
Fly.MouseButton1Click:connect(function()
repeat wait() 
	until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Torso 
local flying = true
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 50 
local speed = 0 

function Fly() 
local bg = Instance.new("BodyGyro", torso) 
bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame 
local bv = Instance.new("BodyVelocity", torso) 
bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
repeat wait() 
plr.Character.Humanoid.PlatformStand = true 
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
speed = speed+.5+(speed/maxspeed) 
if speed > maxspeed then 
speed = maxspeed 
end 
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
speed = speed-1 
if speed < 0 then 
speed = 0 
end 
end 
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
else 
bv.velocity = Vector3.new(0,0.1,0) 
end 
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
until not flying 
ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 0 
bg:Destroy() 
bv:Destroy() 
plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
if key:lower() == FlyPrefix.Text then 
if flying then flying = false 
else 
flying = true 
Fly() 
end 
elseif key:lower() == "w" then 
ctrl.f = 1 
elseif key:lower() == "s" then 
ctrl.b = -1 
elseif key:lower() == "a" then 
ctrl.l = -1 
elseif key:lower() == "d" then 
ctrl.r = 1 
end 
end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
ctrl.f = 0 
elseif key:lower() == "s" then 
ctrl.b = 0 
elseif key:lower() == "a" then 
ctrl.l = 0 
elseif key:lower() == "d" then 
ctrl.r = 0 
end 
end)
Fly()
end)

Btools.Name = "Btools"
Btools.Parent = CommandsFrame
Btools.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Btools.Position = UDim2.new(0.0376984142, 0, 0.415525109, 0)
Btools.Size = UDim2.new(0, 99, 0, 50)
Btools.Font = Enum.Font.SourceSans
Btools.Text = "Btools"
Btools.TextColor3 = Color3.new(0, 0, 0)
Btools.TextSize = 40
Btools.TextWrapped = true
Btools.MouseButton1Click:connect(function()
print("Getting Btools") --This is a normal script >_>
wait()
print("Drag Success")
a = Instance.new("HopperBin") 
a.BinType = 1 
a.Parent = game.Players.LocalPlayer.Backpack --Replace killerboy634 With your name!
wait()
print("Delete Success")
a = Instance.new("HopperBin") 
a.BinType = 4 
a.Parent = game.Players.LocalPlayer.Backpack --Replace killerboy634 With your name!
wait()
print("Copy Success")
a = Instance.new("HopperBin") 
a.BinType = 3 
a.Parent = game.Players.LocalPlayer.Backpack --Replace killerboy634 With your name!
end)

Chat.Name = "Chat"
Chat.Parent = CommandsFrame
Chat.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Chat.Position = UDim2.new(0.0376984179, 0, 0.856164396, 0)
Chat.Size = UDim2.new(0, 200, 0, 50)
Chat.Font = Enum.Font.SourceSans
Chat.Text = "Chat"
Chat.TextColor3 = Color3.new(0, 0, 0)
Chat.TextSize = 40
Chat.TextWrapped = true
Chat.MouseButton1Click:connect(function()
game.Chat:Chat(game.Players.LocalPlayer.Character.Head, ChatBox.Text, "Blue")
	local bc = Color3.fromRGB(57, 239, 255)
	local xd = game.Players.LocalPlayer.Name
	game.StarterGui:SetCore("ChatMakeSystemMessage", {Text = "["..xd.."]: "..ChatBox.Text.."", Font = Enum.Font.SourceSansBold, Color = bc, FontSize = Enum.FontSize.Size96})
end)


Rape.Name = "Rape"
Rape.Parent = CommandsFrame
Rape.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Rape.Position = UDim2.new(0.571428537, 0, 0.856164396, 0)
Rape.Size = UDim2.new(0, 200, 0, 50)
Rape.Font = Enum.Font.SourceSans
Rape.Text = "Rape"
Rape.TextColor3 = Color3.new(0, 0, 0)
Rape.TextSize = 40
Rape.TextWrapped = true
Rape.MouseButton1Click:connect(function()
function fWeld(zName, zParent, zPart0, zPart1, zCoco, a, b, c, d, e, f)
local funcw = Instance.new("Weld")
funcw.Name = zName
funcw.Parent = zParent
funcw.Part0 = zPart0
funcw.Part1 = zPart1
if (zCoco == true) then
funcw.C0 = CFrame.new(a, b, c) * CFrame.fromEulerAnglesXYZ(d, e, f)
else
funcw.C1 = CFrame.new(a, b, c) * CFrame.fromEulerAnglesXYZ(d, e, f)
end
return funcw
end
function fun(n1, n2)
pcall(function()
t1 = game.Players[n1].Character.Torso
t2 = game.Players[n2].Character.Torso
t2.Parent.Humanoid.PlatformStand = true
t1["Left Shoulder"]:Remove()
ls1 = Instance.new("Weld")
ls1.Parent = t1
ls1.Part0 = t1
ls1.Part1 = t1.Parent["Left Arm"]
ls1.C0 = CFrame.new(-1.5,0,0)
ls1.Name = "Left Shoulder"
t1["Right Shoulder"]:Remove()
rs1 = Instance.new("Weld")
rs1.Parent = t1
rs1.Part0 = t1
rs1.Part1 = t1.Parent["Right Arm"]
rs1.C0 = CFrame.new(1.5,0,0)
rs1.Name = "Right Shoulder"
t2["Left Shoulder"]:Remove()
ls2 = Instance.new("Weld")
ls2.Parent = t2
ls2.Part0 = t2
ls2.Part1 = t2.Parent["Left Arm"]
ls2.C0 = CFrame.new(-1.5,0,0)
ls2.Name = "Left Shoulder"
t2["Right Shoulder"]:Remove()
rs2 = Instance.new("Weld")
rs2.Parent = t2
rs2.Part0 = t2
rs2.Part1 = t2.Parent["Right Arm"]
rs2.C0 = CFrame.new(1.5,0,0)
rs2.Name = "Right Shoulder"
t2["Left Hip"]:Remove()
lh2 = Instance.new("Weld")
lh2.Parent = t2
lh2.Part0 = t2
lh2.Part1 = t2.Parent["Left Leg"]
lh2.C0 = CFrame.new(-0.5,-2,0)
lh2.Name = "Left Hip"
t2["Right Hip"]:Remove()
rh2 = Instance.new("Weld")
rh2.Parent = t2
rh2.Part0 = t2
rh2.Part1 = t2.Parent["Right Leg"]
rh2.C0 = CFrame.new(0.5,-2,0)
rh2.Name = "Right Hip"
local d = Instance.new("Part")
d.TopSurface = 0
d.BottomSurface = 0
d.CanCollide = false
d.BrickColor = BrickColor.new("Medium stone grey")
d.Shape = "Ball"
d.Parent = t1
d.Size = Vector3.new(1,1,1)
local dm = Instance.new("SpecialMesh")
dm.MeshType = "Sphere"
dm.Parent = d
dm.Scale = Vector3.new(0.4,0.4,0.4)
fWeld("weld",t1,t1,d,true,-0.2,-1.3,-0.6,0,0,0)
d2 = d:Clone()
d2.Parent = t1
fWeld("weld",t1,t1,d2,true,0.2,-1.3,-0.6,0,0,0)
local c = Instance.new("Part")
c.TopSurface = 0
c.BottomSurface = 0
c.CanCollide = false
c.BrickColor = BrickColor.new("Pastel brown")
c.Parent = t1
c.formFactor = "Custom"
c.Size = Vector3.new(0.4,1.3,0.4)
cm = Instance.new("CylinderMesh")
cm.Parent = c
a = fWeld("weld",t1,t1,c,true,0,-1,-0.52+(-c.Size.y/2),math.rad(-80),0,0)
c2 = d:Clone()
c2.BrickColor = BrickColor.new("Medium stone grey")
c2.Mesh.Scale = Vector3.new(0.4,0.62,0.4)
c2.Parent = t1
fWeld("weld",c,c,c2,true,0,0+(c.Size.y/2),0,math.rad(-10),0,0)
local bl = Instance.new("Part")
bl.TopSurface = 0
bl.BottomSurface = 0
bl.CanCollide = false
bl.BrickColor = BrickColor.new("Pastel brown")
bl.Shape = "Ball"
bl.Parent = t2
bl.Size = Vector3.new(1,1,1)
local dm = Instance.new("SpecialMesh")
dm.MeshType = "Sphere"
dm.Parent = bl
dm.Scale = Vector3.new(1.2,1.2,1.2)
fWeld("weld",t2,t2,bl,true,-0.5,0.5,-0.6,0,0,0)
local br = Instance.new("Part")
br.TopSurface = 0
br.BottomSurface = 0
br.CanCollide = false
br.BrickColor = BrickColor.new("Pastel brown")
br.Shape = "Ball"
br.Parent = t2
br.Size = Vector3.new(1,1,1)
local dm = Instance.new("SpecialMesh")
dm.MeshType = "Sphere"
dm.Parent = br
dm.Scale = Vector3.new(1.2,1.2,1.2)
fWeld("weld",t2,t2,br,true,0.5,0.5,-0.6,0,0,0)
local bln = Instance.new("Part")
bln.TopSurface = 0
bln.BottomSurface = 0
bln.CanCollide = false
bln.Shape = "Ball"
bln.Parent = t2
bln.Size = Vector3.new(1,1,1)
local dm = Instance.new("SpecialMesh")
dm.MeshType = "Sphere"
dm.Parent = bln
dm.Scale = Vector3.new(0.2,0.2,0.2)
fWeld("weld",t2,t2,bln,true,-0.5,0.5,-1.2,0,0,0)
local brn = Instance.new("Part")
brn.TopSurface = 0
brn.BottomSurface = 0
brn.CanCollide = false
brn.Shape = "Ball"
brn.Parent = t2
brn.Size = Vector3.new(1,1,1)
local dm = Instance.new("SpecialMesh")
dm.MeshType = "Sphere"
dm.Parent = brn
dm.Scale = Vector3.new(0.2,0.2,0.2)
fWeld("weld",t2,t2,brn,true,0.5,0.5,-1.2,0,0,0)
lh2.C1 = CFrame.new(0,-1.5,-0.5) * CFrame.Angles(0.9,-0.4,0)
rh2.C1 = CFrame.new(0,-1.5,-0.5) * CFrame.Angles(0.9,0.4,0)
ls2.C1 = CFrame.new(-0.5,-1.3,-0.5) * CFrame.Angles(0.9,-0.4,0)
rs2.C1 = CFrame.new(0.5,-1.3,-0.5) * CFrame.Angles(0.9,0.4,0)
ls1.C1 = CFrame.new(-0.5,0.7,0) * CFrame.Angles(-0.9,-0.4,0)
rs1.C1 = CFrame.new(0.5,0.7,0) * CFrame.Angles(-0.9,0.4,0)
if t1:findFirstChild("weldx") ~= nil then
t1.weldx:Remove()
end
we = fWeld("weldx", t1, t1, t2, true, 0, -0.9, -1.3, math.rad(-90), 0, 0)
n = t2.Neck
n.C0 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-210), math.rad(180), 0)
end)
coroutine.resume(coroutine.create(function()
while wait() do
for i = 1,6 do
we.C1 = we.C1 * CFrame.new(0,-0.3,0)
wait()
end
 
for i = 1,6 do
we.C1 = we.C1 * CFrame.new(0,0.3,0)
wait()
end
end
end))
end
fun(Username_2.Text, Username.Text)
end)

TpToThem.Name = "TpToThem"
TpToThem.Parent = CommandsFrame
TpToThem.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
TpToThem.Position = UDim2.new(0.571428537, 0, 0.563926935, 0)
TpToThem.Size = UDim2.new(0, 200, 0, 50)
TpToThem.Font = Enum.Font.SourceSans
TpToThem.Text = "Tp To Them"
TpToThem.TextColor3 = Color3.new(0, 0, 0)
TpToThem.TextSize = 40
TpToThem.TextWrapped = true
TpToThem.MouseButton1Click:connect(function()
local plr = game.Players:FindFirstChild(Username.Text)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(plr.Character.HumanoidRootPart.Position)
end)


Amount.Name = "Amount"
Amount.Parent = CommandsFrame
Amount.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Amount.Position = UDim2.new(0.454365075, 0, 0.0388127863, 0)
Amount.Size = UDim2.new(0, 43, 0, 50)
Amount.Font = Enum.Font.SourceSans
Amount.Text = "Amount"
Amount.TextColor3 = Color3.new(0, 0, 0)
Amount.TextScaled = true
Amount.TextSize = 14
Amount.TextWrapped = true

ChatBox.Name = "ChatBox"
ChatBox.Parent = CommandsFrame
ChatBox.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
ChatBox.Position = UDim2.new(0.0376984142, 0, 0.602739751, 0)
ChatBox.Size = UDim2.new(0, 200, 0, 102)
ChatBox.Font = Enum.Font.SourceSans
ChatBox.Text = "What you Want to Chat"
ChatBox.TextColor3 = Color3.new(0, 0, 0)
ChatBox.TextSize = 20
ChatBox.TextWrapped = true

Kill_2.Name = "Kill"
Kill_2.Parent = CommandsFrame
Kill_2.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Kill_2.Position = UDim2.new(0.783730149, 0, 0.415525109, 0)
Kill_2.Size = UDim2.new(0, 93, 0, 50)
Kill_2.Font = Enum.Font.SourceSans
Kill_2.Text = "Kill"
Kill_2.TextColor3 = Color3.new(0, 0, 0)
Kill_2.TextSize = 40
Kill_2.TextWrapped = true
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local function RemoveSpaces(String)
	return String:gsub("%s+", "") or String
end

local function FindPlayer(String)
	String = RemoveSpaces(String)
	for _, _Player in pairs(Players:GetPlayers()) do
		if _Player.Name:lower():match('^'.. String:lower()) then
			return _Player
		end
	end
	return nil
end

Kill_2.MouseButton1Click:Connect(function()
	local Target = FindPlayer(Username.Text)
	if Target and Target.Character then
		local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
		local Torso = Character:FindFirstChild("Torso") or Character:FindFirstChild("UpperTorso")
		
		local savepos = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
	    Torso.Anchored = true
	    local tool = Instance.new("Tool", LocalPlayer.Backpack)
	    local hat = LocalPlayer.Character:FindFirstChildOfClass("Accessory")
	    local hathandle = hat.Handle
	    hathandle.Parent = tool
	    hathandle.Massless = true
	    tool.GripPos = Vector3.new(0, 9e99, 0)
	    tool.Parent = LocalPlayer.Character
	    repeat wait() until LocalPlayer.Character:FindFirstChildOfClass("Tool") ~= nil
	    tool.Grip = CFrame.new(Vector3.new(0, 0, 0))
		Torso.Anchored = false
	    repeat LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = Target.Character:FindFirstChild("HumanoidRootPart").CFrame wait()
	    until Target.Character == nil or Target.Character:FindFirstChild("Humanoid").Health <= 0 or LocalPlayer.Character == nil or LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0 or (Target.Character:FindFirstChild("HumanoidRootPart").Velocity.magnitude - Target.Character:FindFirstChild("Humanoid").WalkSpeed) > (Target.Character:FindFirstChild("Humanoid").WalkSpeed + 20)
	    LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
	    hathandle.Parent = hat
	    hathandle.Massless = false
	    tool:Destroy()
	    LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = savepos
	else
		warn'no player found named like that or he has no char'
	end
end)

Username.Name = "Username"
Username.Parent = CommandsFrame
Username.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Username.Position = UDim2.new(0.783730149, 0, 0.719178081, 0)
Username.Size = UDim2.new(0, 101, 0, 40)
Username.Font = Enum.Font.SourceSans
Username.Text = "Victims Username"
Username.TextColor3 = Color3.new(0, 0, 0)
Username.TextSize = 14
Username.TextWrapped = true

Username_2.Name = "Username"
Username_2.Parent = CommandsFrame
Username_2.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Username_2.Position = UDim2.new(0.555555582, 0, 0.719178081, 0)
Username_2.Size = UDim2.new(0, 101, 0, 40)
Username_2.Font = Enum.Font.SourceSans
Username_2.Text = "Your Username"
Username_2.TextColor3 = Color3.new(0, 0, 0)
Username_2.TextSize = 14
Username_2.TextWrapped = true

FlyPrefix.Name = "FlyPrefix"
FlyPrefix.Parent = CommandsFrame
FlyPrefix.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
FlyPrefix.Position = UDim2.new(0.501984119, 0, 0.232876718, 0)
FlyPrefix.Size = UDim2.new(0, 43, 0, 50)
FlyPrefix.Font = Enum.Font.SourceSans
FlyPrefix.Text = "Fly Prefix"
FlyPrefix.TextColor3 = Color3.new(0, 0, 0)
FlyPrefix.TextScaled = true
FlyPrefix.TextSize = 14
FlyPrefix.TextWrapped = true

FlingKill.Name = "FlingKill"
FlingKill.Parent = CommandsFrame
FlingKill.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
FlingKill.Position = UDim2.new(0.571428537, 0, 0.415525109, 0)
FlingKill.Size = UDim2.new(0, 93, 0, 50)
FlingKill.Font = Enum.Font.SourceSans
FlingKill.Text = "Fling Kill"
FlingKill.TextColor3 = Color3.new(0, 0, 0)
FlingKill.TextSize = 30
FlingKill.TextWrapped = true
FlingKill.MouseButton1Click:connect(function()
power = 1000 

game:GetService('RunService').Stepped:connect(function()
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.Torso.CanCollide = false
game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
end)

wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position 
end)

ClickTp.Name = "Click Tp"
ClickTp.Parent = CommandsFrame
ClickTp.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
ClickTp.Position = UDim2.new(0.259920627, 0, 0.415525109, 0)
ClickTp.Size = UDim2.new(0, 88, 0, 50)
ClickTp.Font = Enum.Font.SourceSans
ClickTp.Text = "Click Tp"
ClickTp.TextColor3 = Color3.new(0, 0, 0)
ClickTp.TextSize = 30
ClickTp.TextWrapped = true
ClickTp.MouseButton1Click:connect(function()
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Click Teleport"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end)

ExecutorFrame.Name = "Executor Frame"
ExecutorFrame.Parent = Background
ExecutorFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ExecutorFrame.BackgroundTransparency = 1
ExecutorFrame.Position = UDim2.new(0.197138309, 0, 0.00455580885, 0)
ExecutorFrame.Size = UDim2.new(0, 505, 0, 436)
ExecutorFrame.Visible = false

Input.Name = "Input"
Input.Parent = ExecutorFrame
Input.BackgroundColor3 = Color3.new(1, 1, 1)
Input.Position = UDim2.new(0.00198019808, 0, 0, 0)
Input.Size = UDim2.new(0, 504, 0, 333)
Input.CanvasSize = UDim2.new(0, 0, 0, 1000)

Insert.Name = "Insert"
Insert.Parent = Input
Insert.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Insert.Size = UDim2.new(0, 490, 0, 1000)
Insert.Font = Enum.Font.SourceSans
Insert.Text = "--Scripts Here, Does not execute very big scripts, but it does execute Loadstrings."
Insert.TextColor3 = Color3.new(0, 0, 0)
Insert.TextSize = 24
Insert.TextWrapped = true
Insert.TextXAlignment = Enum.TextXAlignment.Left
Insert.TextYAlignment = Enum.TextYAlignment.Top

Execute.Name = "Execute"
Execute.Parent = ExecutorFrame
Execute.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Execute.Position = UDim2.new(0.0356435627, 0, 0.834862411, 0)
Execute.Size = UDim2.new(0, 146, 0, 50)
Execute.Font = Enum.Font.SourceSans
Execute.Text = "Execute"
Execute.TextColor3 = Color3.new(0, 0, 0)
Execute.TextSize = 30
Execute.MouseButton1Click:connect(function()
loadstring(Insert.Text)()
end)

Clear.Name = "Clear"
Clear.Parent = ExecutorFrame
Clear.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Clear.Position = UDim2.new(0.354455441, 0, 0.834862411, 0)
Clear.Size = UDim2.new(0, 146, 0, 50)
Clear.Font = Enum.Font.SourceSans
Clear.Text = "Clear"
Clear.TextColor3 = Color3.new(0, 0, 0)
Clear.TextSize = 30

BuilerScripts.Name = "BuilerScripts"
BuilerScripts.Parent = ExecutorFrame
BuilerScripts.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
BuilerScripts.Position = UDim2.new(0.683168292, 0, 0.832568824, 0)
BuilerScripts.Size = UDim2.new(0, 146, 0, 50)
BuilerScripts.Font = Enum.Font.SourceSans
BuilerScripts.Text = "Non-Fe Scripts"
BuilerScripts.TextColor3 = Color3.new(0, 0, 0)
BuilerScripts.TextSize = 27
BuilerScripts.MouseButton1Click:connect(function()
NonFeMain.Visible = true
end)

NonFeMain.Name = "NonFe Main"
NonFeMain.Parent = ExecutorFrame
NonFeMain.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
NonFeMain.Position = UDim2.new(1.07123351, 0, 0.288990825, 0)
NonFeMain.Size = UDim2.new(0, 197, 0, 310)
NonFeMain.Visible = false
NonFeMain.Active = true
NonFeMain.Draggable = true

NonFeScroll.Name = "NonFeScroll"
NonFeScroll.Parent = NonFeMain
NonFeScroll.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
NonFeScroll.Position = UDim2.new(-0.000565509428, 0, -0.00491273962, 0)
NonFeScroll.Size = UDim2.new(0, 197, 0, 278)

UIListLayout.Parent = NonFeScroll

Caducus.Name = "Caducus"
Caducus.Parent = NonFeScroll
Caducus.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Caducus.Size = UDim2.new(0, 183, 0, 32)
Caducus.Font = Enum.Font.SourceSans
Caducus.Text = "Caducus"
Caducus.TextColor3 = Color3.new(0, 0, 0)
Caducus.TextSize = 14
Caducus.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/J7dbqLSc", true))()
end)

Wristband.Name = "Wristband"
Wristband.Parent = NonFeScroll
Wristband.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Wristband.Position = UDim2.new(0, 0, 0.115761958, 0)
Wristband.Size = UDim2.new(0, 183, 0, 32)
Wristband.Font = Enum.Font.SourceSans
Wristband.Text = "WristBand"
Wristband.TextColor3 = Color3.new(0, 0, 0)
Wristband.TextSize = 14
Wristband.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/aQS2ksZf", true))()
end)

Reaper.Name = "Reaper"
Reaper.Parent = NonFeScroll
Reaper.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Reaper.Position = UDim2.new(0, 0, 0.231523916, 0)
Reaper.Size = UDim2.new(0, 183, 0, 32)
Reaper.Font = Enum.Font.SourceSans
Reaper.Text = "Reaper"
Reaper.TextColor3 = Color3.new(0, 0, 0)
Reaper.TextSize = 14
Reaper.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/MVQzJiWt", true))()
end)

Geno.Name = "Geno"
Geno.Parent = NonFeScroll
Geno.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Geno.Position = UDim2.new(0, 0, 0.347285867, 0)
Geno.Size = UDim2.new(0, 183, 0, 32)
Geno.Font = Enum.Font.SourceSans
Geno.Text = "GenoCider"
Geno.TextColor3 = Color3.new(0, 0, 0)
Geno.TextSize = 14
Geno.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/BQf8iTA8", true))()
end)

Warden.Name = "Warden"
Warden.Parent = NonFeScroll
Warden.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Warden.Position = UDim2.new(0, 0, 0.463047832, 0)
Warden.Size = UDim2.new(0, 183, 0, 32)
Warden.Font = Enum.Font.SourceSans
Warden.Text = "Warden"
Warden.TextColor3 = Color3.new(0, 0, 0)
Warden.TextSize = 14
Warden.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/sX2482fs", true))()
end)

Nebula.Name = "Nebula"
Nebula.Parent = NonFeScroll
Nebula.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Nebula.Position = UDim2.new(0, 0, 0.578809559, 0)
Nebula.Size = UDim2.new(0, 183, 0, 32)
Nebula.Font = Enum.Font.SourceSans
Nebula.Text = "Nebula Angel"
Nebula.TextColor3 = Color3.new(0, 0, 0)
Nebula.TextSize = 14
Nebula.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/ccq3QgQv", true))()
end)

NoobBat.Name = "NoobBat"
NoobBat.Parent = NonFeScroll
NoobBat.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
NoobBat.Position = UDim2.new(0, 0, 0.694571733, 0)
NoobBat.Size = UDim2.new(0, 183, 0, 32)
NoobBat.Font = Enum.Font.SourceSans
NoobBat.Text = "Noob Baseball bat"
NoobBat.TextColor3 = Color3.new(0, 0, 0)
NoobBat.TextSize = 14
NoobBat.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/C0s5G3Hi", true))()
end)

Ender.Name = "Ender"
Ender.Parent = NonFeScroll
Ender.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Ender.Position = UDim2.new(0, 0, 0.81033349, 0)
Ender.Size = UDim2.new(0, 183, 0, 32)
Ender.Font = Enum.Font.SourceSans
Ender.Text = "Ender"
Ender.TextColor3 = Color3.new(0, 0, 0)
Ender.TextSize = 14
Ender.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/VPWDZWzz", true))()
end)

GrabKnife.Name = "GrabKnife"
GrabKnife.Parent = NonFeScroll
GrabKnife.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
GrabKnife.Position = UDim2.new(0, 0, 0.926095665, 0)
GrabKnife.Size = UDim2.new(0, 183, 0, 32)
GrabKnife.Font = Enum.Font.SourceSans
GrabKnife.Text = "Grab Knife V4"
GrabKnife.TextColor3 = Color3.new(0, 0, 0)
GrabKnife.TextSize = 14
GrabKnife.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/9DCttcRh", true))()
end)

DemiGod.Name = "DemiGod"
DemiGod.Parent = NonFeScroll
DemiGod.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
DemiGod.Position = UDim2.new(0, 0, 1.04185736, 0)
DemiGod.Size = UDim2.new(0, 183, 0, 32)
DemiGod.Font = Enum.Font.SourceSans
DemiGod.Text = "DemiGod Form"
DemiGod.TextColor3 = Color3.new(0, 0, 0)
DemiGod.TextSize = 14
DemiGod.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/rGAq71KF", true))()
end)

Nuke.Name = "Nuke"
Nuke.Parent = NonFeScroll
Nuke.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Nuke.Position = UDim2.new(0, 0, 1.15761936, 0)
Nuke.Size = UDim2.new(0, 183, 0, 32)
Nuke.Font = Enum.Font.SourceSans
Nuke.Text = "Nuke Launcher"
Nuke.TextColor3 = Color3.new(0, 0, 0)
Nuke.TextSize = 14
Nuke.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/7F5RpdZ3", true))()
end)

Hitler.Name = "Hitler"
Hitler.Parent = NonFeScroll
Hitler.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Hitler.Position = UDim2.new(0, 0, 0.535971224, 0)
Hitler.Size = UDim2.new(0, 183, 0, 25)
Hitler.Font = Enum.Font.SourceSans
Hitler.Text = "Hitler"
Hitler.TextColor3 = Color3.new(0, 0, 0)
Hitler.TextSize = 14
Hitler.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/EhrpBHJF", true))()
end)

Extermina.Name = "Extermina"
Extermina.Parent = NonFeScroll
Extermina.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Extermina.Position = UDim2.new(0, 0, 0.375899285, 0)
Extermina.Size = UDim2.new(0, 183, 0, 34)
Extermina.Font = Enum.Font.SourceSans
Extermina.Text = "Extermina"
Extermina.TextColor3 = Color3.new(0, 0, 0)
Extermina.TextSize = 14
Extermina.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/keuCRCRq", true))()
end)

Phoenix.Name = "Phoenix"
Phoenix.Parent = NonFeScroll
Phoenix.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Phoenix.Position = UDim2.new(0, 0, 0.500627041, 0)
Phoenix.Size = UDim2.new(0, 183, 0, 34)
Phoenix.Font = Enum.Font.SourceSans
Phoenix.Text = "Phoenix Blade"
Phoenix.TextColor3 = Color3.new(0, 0, 0)
Phoenix.TextSize = 14
Phoenix.MouseButton1Click:connect(function()
loadstring(game:GetObjects("rbxassetid://3172265608")[1].Source)()
end)

Sans.Name = "Sans"
Sans.Parent = NonFeScroll
Sans.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Sans.Position = UDim2.new(0, 0, 0.625354767, 0)
Sans.Size = UDim2.new(0, 183, 0, 34)
Sans.Font = Enum.Font.SourceSans
Sans.Text = "Sans Morph"
Sans.TextColor3 = Color3.new(0, 0, 0)
Sans.TextSize = 14
Sans.MouseButton1Click:connect(function()
loadstring(game:GetObjects("rbxassetid://3172282193")[1].Source)()
end)

Hunter.Name = "Hunter"
Hunter.Parent = NonFeScroll
Hunter.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Hunter.Position = UDim2.new(0, 0, 0.907194316, 0)
Hunter.Size = UDim2.new(0, 183, 0, 25)
Hunter.Font = Enum.Font.SourceSans
Hunter.Text = "Hunter"
Hunter.TextColor3 = Color3.new(0, 0, 0)
Hunter.TextSize = 14
Hunter.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/emcYKDi7", true))()
end)

Ravenger.Name = "Ravenger"
Ravenger.Parent = NonFeScroll
Ravenger.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Ravenger.Position = UDim2.new(0, 0, 0.907194316, 0)
Ravenger.Size = UDim2.new(0, 183, 0, 25)
Ravenger.Font = Enum.Font.SourceSans
Ravenger.Text = "Ravenger Hands"
Ravenger.TextColor3 = Color3.new(0, 0, 0)
Ravenger.TextSize = 14
Ravenger.MouseButton1Click:connect(function()
loadstring(game:GetObjects("rbxassetid://3172274072")[1].Source)()
end)

Titan.Name = "Titan"
Titan.Parent = NonFeScroll
Titan.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Titan.Position = UDim2.new(0, 0, 0.907194316, 0)
Titan.Size = UDim2.new(0, 183, 0, 25)
Titan.Font = Enum.Font.SourceSans
Titan.Text = "Titan With Axe"
Titan.TextColor3 = Color3.new(0, 0, 0)
Titan.TextSize = 14
Titan.MouseButton1Click:connect(function()
loadstring(game:GetObjects("rbxassetid://3172319028")[1].Source)()
end)

MapDraw.Name = "MapDraw"
MapDraw.Parent = NonFeScroll
MapDraw.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
MapDraw.Position = UDim2.new(0, 0, 0.907194316, 0)
MapDraw.Size = UDim2.new(0, 183, 0, 25)
MapDraw.Font = Enum.Font.SourceSans
MapDraw.Text = "Map Drawing"
MapDraw.TextColor3 = Color3.new(0, 0, 0)
MapDraw.TextSize = 14
MapDraw.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/BY32DiVC", true))()
end)

Scythe.Name = "Scythe"
Scythe.Parent = NonFeScroll
Scythe.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Scythe.Position = UDim2.new(0, 0, 0.907194316, 0)
Scythe.Size = UDim2.new(0, 183, 0, 25)
Scythe.Font = Enum.Font.SourceSans
Scythe.Text = "Red Scythe"
Scythe.TextColor3 = Color3.new(0, 0, 0)
Scythe.TextSize = 14
Scythe.MouseButton1Click:connect(function()
loadstring(game:GetObjects("rbxassetid://3172502979")[1].Source)()
end)

Close.Name = "Close"
Close.Parent = NonFeMain
Close.BackgroundColor3 = Color3.new(1, 1, 1)
Close.BackgroundTransparency = 1
Close.Position = UDim2.new(0, 0, 0.929032266, 0)
Close.Size = UDim2.new(0, 154, 0, 23)
Close.Font = Enum.Font.SourceSans
Close.Text = "Close Gui"
Close.TextColor3 = Color3.new(1, 0.52549, 0.188235)
Close.TextScaled = true
Close.TextSize = 14
Close.TextWrapped = true
Close.MouseButton1Click:connect(function()
NonFeMain.Visible = false
end)

SelectionFrame.Name = "SelectionFrame"
SelectionFrame.Parent = Background
SelectionFrame.BackgroundColor3 = Color3.new(1, 1, 1)
SelectionFrame.BackgroundTransparency = 1
SelectionFrame.Position = UDim2.new(0.198728144, 0, 0, 0)
SelectionFrame.Size = UDim2.new(0, 504, 0, 438)
SelectionFrame.Visible = false

GameButton.Name = "GameButton"
GameButton.Parent = SelectionFrame
GameButton.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
GameButton.Position = UDim2.new(0.0178571418, 0, 0.422374427, 0)
GameButton.Size = UDim2.new(0, 236, 0, 68)
GameButton.Font = Enum.Font.SourceSans
GameButton.Text = "Games"
GameButton.TextColor3 = Color3.new(0, 0, 0)
GameButton.TextSize = 50
GameButton.TextWrapped = true
GameButton.MouseButton1Click:connect(function()
GamesFrame.Visible = true
SelectionFrame.Visible = false
end)

GuiButton.Name = "GuiButton"
GuiButton.Parent = SelectionFrame
GuiButton.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
GuiButton.Position = UDim2.new(0.515873015, 0, 0.422374427, 0)
GuiButton.Size = UDim2.new(0, 236, 0, 68)
GuiButton.Font = Enum.Font.SourceSans
GuiButton.Text = "Gui's"
GuiButton.TextColor3 = Color3.new(0, 0, 0)
GuiButton.TextSize = 50
GuiButton.MouseButton1Click:connect(function()
GuiFrame.Visible = true
SelectionFrame.Visible = false
end)


GamesFrame.Name = "GamesFrame"
GamesFrame.Parent = Background
GamesFrame.BackgroundColor3 = Color3.new(1, 1, 1)
GamesFrame.BackgroundTransparency = 1
GamesFrame.Position = UDim2.new(0.198728144, 0, 0, 0)
GamesFrame.Size = UDim2.new(0, 504, 0, 438)
GamesFrame.Visible = false

ArsenalGui.Name = "ArsenalGui"
ArsenalGui.Parent = GamesFrame
ArsenalGui.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
ArsenalGui.Position = UDim2.new(0.0376984142, 0, 0.0365296789, 0)
ArsenalGui.Size = UDim2.new(0, 137, 0, 50)
ArsenalGui.Font = Enum.Font.SourceSans
ArsenalGui.Text = "Arsenal Gui"
ArsenalGui.TextColor3 = Color3.new(0, 0, 0)
ArsenalGui.TextSize = 30
ArsenalGui.TextWrapped = true
ArsenalGui.MouseButton1Click:connect(function()
loadstring(game:HttpGet('https://pastebin.com/raw/T3fzg7tm', true))()
end)

ArsenalAutoFarm.Name = "ArsenalAutoFarm"
ArsenalAutoFarm.Parent = GamesFrame
ArsenalAutoFarm.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
ArsenalAutoFarm.Position = UDim2.new(0.0376984142, 0, 0.200913236, 0)
ArsenalAutoFarm.Size = UDim2.new(0, 137, 0, 50)
ArsenalAutoFarm.Font = Enum.Font.SourceSans
ArsenalAutoFarm.Text = "Arsenal AutoFarm"
ArsenalAutoFarm.TextColor3 = Color3.new(0, 0, 0)
ArsenalAutoFarm.TextSize = 24
ArsenalAutoFarm.TextWrapped = true
ArsenalAutoFarm.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/mL0KN79M"))()
end)


CounterBloxGui.Name = "CounterBloxGui"
CounterBloxGui.Parent = GamesFrame
CounterBloxGui.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
CounterBloxGui.Position = UDim2.new(0.0376984142, 0, 0.358447492, 0)
CounterBloxGui.Size = UDim2.new(0, 137, 0, 50)
CounterBloxGui.Font = Enum.Font.SourceSans
CounterBloxGui.Text = "Counter Blox"
CounterBloxGui.TextColor3 = Color3.new(0, 0, 0)
CounterBloxGui.TextSize = 30
CounterBloxGui.TextWrapped = true
CounterBloxGui.MouseButton1Click:connect(function()
loadstring(game:GetObjects("rbxassetid://3179355213")[1].Source)()
end)


RbWorld2.Name = "RbWorld 2"
RbWorld2.Parent = GamesFrame
RbWorld2.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
RbWorld2.Position = UDim2.new(0.0376984142, 0, 0.51826483, 0)
RbWorld2.Size = UDim2.new(0, 137, 0, 50)
RbWorld2.Font = Enum.Font.SourceSans
RbWorld2.Text = "Rb World 2"
RbWorld2.TextColor3 = Color3.new(0, 0, 0)
RbWorld2.TextSize = 30
RbWorld2.TextWrapped = true
RbWorld2.MouseButton1Click:connect(function()
loadstring(game:GetObjects("rbxassetid://3454510703")[1].Source)()

end)

Strucid.Name = "Strucid"
Strucid.Parent = GamesFrame
Strucid.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Strucid.Position = UDim2.new(0.0376984142, 0, 0.678082168, 0)
Strucid.Size = UDim2.new(0, 137, 0, 50)
Strucid.Font = Enum.Font.SourceSans
Strucid.Text = "Strucid"
Strucid.TextColor3 = Color3.new(0, 0, 0)
Strucid.TextSize = 30
Strucid.TextWrapped = true
Strucid.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/61vdJN2e", true))()
end)

MurderMystery.Name = "MurderMystery"
MurderMystery.Parent = GamesFrame
MurderMystery.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
MurderMystery.Position = UDim2.new(0.0376984142, 0, 0.83561641, 0)
MurderMystery.Size = UDim2.new(0, 137, 0, 50)
MurderMystery.Font = Enum.Font.SourceSans
MurderMystery.Text = "Murder Mystery"
MurderMystery.TextColor3 = Color3.new(0, 0, 0)
MurderMystery.TextSize = 24
MurderMystery.TextWrapped = true
MurderMystery.MouseButton1Click:connect(function()
loadstring(game:GetObjects("rbxassetid://3454416214")[1].Source)()
end)

VehicleSim.Name = "VehicleSim"
VehicleSim.Parent = GamesFrame
VehicleSim.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
VehicleSim.Position = UDim2.new(0.377211303, 0, 0.0342465751, 0)
VehicleSim.Size = UDim2.new(0, 137, 0, 50)
VehicleSim.Font = Enum.Font.SourceSans
VehicleSim.Text = "Vehicle Simulator"
VehicleSim.TextColor3 = Color3.new(0, 0, 0)
VehicleSim.TextSize = 24
VehicleSim.TextWrapped = true
VehicleSim.MouseButton1Click:connect(function()
loadstring(game:GetObjects("rbxassetid://3458133221 ")[1].Source)()
end)

DancingSim.Name = "DancingSim"
DancingSim.Parent = GamesFrame
DancingSim.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
DancingSim.Position = UDim2.new(0.377211303, 0, 0.198630139, 0)
DancingSim.Size = UDim2.new(0, 137, 0, 50)
DancingSim.Font = Enum.Font.SourceSans
DancingSim.Text = "Dancing Sim Coins"
DancingSim.TextColor3 = Color3.new(0, 0, 0)
DancingSim.TextSize = 24
DancingSim.TextWrapped = true
DancingSim.MouseButton1Click:connect(function()
game:GetService("ReplicatedStorage").NETWORK.AddValue:FireServer("Coins",100000000)
end)

PrisonLife.Name = "PrisonLife"
PrisonLife.Parent = GamesFrame
PrisonLife.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
PrisonLife.Position = UDim2.new(0.377211303, 0, 0.356164396, 0)
PrisonLife.Size = UDim2.new(0, 137, 0, 50)
PrisonLife.Font = Enum.Font.SourceSans
PrisonLife.Text = "Prison Life"
PrisonLife.TextColor3 = Color3.new(0, 0, 0)
PrisonLife.TextSize = 30
PrisonLife.TextWrapped = true
PrisonLife.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/Zfb9LSD9", true))()
end)


KnifeSim.Name = "KnifeSim"
KnifeSim.Parent = GamesFrame
KnifeSim.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
KnifeSim.Position = UDim2.new(0.377211303, 0, 0.515981734, 0)
KnifeSim.Size = UDim2.new(0, 137, 0, 50)
KnifeSim.Font = Enum.Font.SourceSans
KnifeSim.Text = "Knife Simulator Aimbot"
KnifeSim.TextColor3 = Color3.new(0, 0, 0)
KnifeSim.TextSize = 24
KnifeSim.TextWrapped = true
KnifeSim.MouseButton1Click:connect(function()
local plrs = game:service("Players")
local ms = plrs.LocalPlayer:GetMouse()
local nearest = function()
local plr,dist = nil,5000
for k,l in pairs(plrs:GetPlayers()) do
local pos = l.Character:GetPrimaryPartCFrame().p
local len = (ms.Hit.p - pos).Magnitude
if len <= dist then
plr = l
dist = len
end
end
return plr.Character:GetPrimaryPartCFrame().p
end
workspace.CurrentCamera.trash.ChildAdded:connect(function(c)
c.CFrame = CFrame.new(nearest())
end)
end)

BadBusiness.Name = "BadBusiness"
BadBusiness.Parent = GamesFrame
BadBusiness.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
BadBusiness.Position = UDim2.new(0.377211303, 0, 0.675799072, 0)
BadBusiness.Size = UDim2.new(0, 137, 0, 50)
BadBusiness.Font = Enum.Font.SourceSans
BadBusiness.Text = "Bad Business"
BadBusiness.TextColor3 = Color3.new(0, 0, 0)
BadBusiness.TextSize = 24
BadBusiness.TextWrapped = true
BadBusiness.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/c7xYXhdF", true))()
end)

MadCity.Name = "MadCity"
MadCity.Parent = GamesFrame
MadCity.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
MadCity.Position = UDim2.new(0.377211303, 0, 0.833333313, 0)
MadCity.Size = UDim2.new(0, 137, 0, 50)
MadCity.Font = Enum.Font.SourceSans
MadCity.Text = "Mad City"
MadCity.TextColor3 = Color3.new(0, 0, 0)
MadCity.TextSize = 30
MadCity.TextWrapped = true
MadCity.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/vdr3zxKD",true))()
end)


TextingSim.Name = "TextingSim"
TextingSim.Parent = GamesFrame
TextingSim.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
TextingSim.Position = UDim2.new(0.702608109, 0, 0.0342465751, 0)
TextingSim.Size = UDim2.new(0, 137, 0, 50)
TextingSim.Font = Enum.Font.SourceSans
TextingSim.Text = "Texting Simulator"
TextingSim.TextColor3 = Color3.new(0, 0, 0)
TextingSim.TextSize = 24
TextingSim.TextWrapped = true
TextingSim.MouseButton1Click:connect(function()
spawn(loadstring(game:HttpGet("https://pastebin.com/raw/dqLP93cZ")))
end)

PetRanch.Name = "PetRanch"
PetRanch.Parent = GamesFrame
PetRanch.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
PetRanch.Position = UDim2.new(0.702608109, 0, 0.198630139, 0)
PetRanch.Size = UDim2.new(0, 137, 0, 50)
PetRanch.Font = Enum.Font.SourceSans
PetRanch.Text = "Pet Ranch Simulator"
PetRanch.TextColor3 = Color3.new(0, 0, 0)
PetRanch.TextSize = 24
PetRanch.TextWrapped = true
PetRanch.MouseButton1Click:connect(function()
spawn(loadstring(game:HttpGet("https://pastebin.com/raw/y4GLqGWN")))
end)


Omnom.Name = "Omnom"
Omnom.Parent = GamesFrame
Omnom.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Omnom.Position = UDim2.new(0.702608109, 0, 0.356164396, 0)
Omnom.Size = UDim2.new(0, 137, 0, 50)
Omnom.Font = Enum.Font.SourceSans
Omnom.Text = "Om Nom Simulator"
Omnom.TextColor3 = Color3.new(0, 0, 0)
Omnom.TextSize = 24
Omnom.TextWrapped = true
Omnom.MouseButton1Click:connect(function()
loadstring(game:HttpGet("http://207.148.81.217:8989/_s/csmit195/OmNomSim/latest.txt"))()
end)

FarmTown.Name = "FarmTown"
FarmTown.Parent = GamesFrame
FarmTown.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
FarmTown.Position = UDim2.new(0.702608109, 0, 0.515981734, 0)
FarmTown.Size = UDim2.new(0, 137, 0, 50)
FarmTown.Font = Enum.Font.SourceSans
FarmTown.Text = "Farm Town"
FarmTown.TextColor3 = Color3.new(0, 0, 0)
FarmTown.TextSize = 30
FarmTown.TextWrapped = true
FarmTown.MouseButton1Click:connect(function()
loadstring(game:HttpGet("http://207.148.81.217:8989/_s/csmit195/Farmtown/latest.txt"))()
end)

Ruddev.Name = "Ruddev"
Ruddev.Parent = GamesFrame
Ruddev.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Ruddev.Position = UDim2.new(0.702608109, 0, 0.675799072, 0)
Ruddev.Size = UDim2.new(0, 137, 0, 50)
Ruddev.Font = Enum.Font.SourceSans
Ruddev.Text = "Ruddev's Battle Royale"
Ruddev.TextColor3 = Color3.new(0, 0, 0)
Ruddev.TextSize = 24
Ruddev.TextWrapped = true
Ruddev.MouseButton1Click:connect(function()
loadstring(game:HttpGet('https://pastebin.com/raw/rZ7xg4qD', true))()
end)

LumberT.Name = "LumberT"
LumberT.Parent = GamesFrame
LumberT.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
LumberT.Position = UDim2.new(0.702608109, 0, 0.833333313, 0)
LumberT.Size = UDim2.new(0, 137, 0, 50)
LumberT.Font = Enum.Font.SourceSans
LumberT.Text = "Lumber Tycoon"
LumberT.TextColor3 = Color3.new(0, 0, 0)
LumberT.TextSize = 24
LumberT.TextWrapped = true
LumberT.MouseButton1Click:connect(function()
loadstring(game:GetObjects("rbxassetid://3465732268 ")[1].Source)()
end)

GuiFrame.Name = "GuiFrame"
GuiFrame.Parent = Background
GuiFrame.BackgroundColor3 = Color3.new(1, 1, 1)
GuiFrame.BackgroundTransparency = 1
GuiFrame.Position = UDim2.new(0.198728144, 0, 0, 0)
GuiFrame.Size = UDim2.new(0, 504, 0, 438)
GuiFrame.Visible = false

ShatterVast.Name = "ShatterVast"
ShatterVast.Parent = GuiFrame
ShatterVast.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
ShatterVast.Position = UDim2.new(0.0357142873, 0, 0.0867579877, 0)
ShatterVast.Size = UDim2.new(0, 200, 0, 50)
ShatterVast.Font = Enum.Font.SourceSans
ShatterVast.Text = "ShatterVast"
ShatterVast.TextColor3 = Color3.new(0, 0, 0)
ShatterVast.TextSize = 36
ShatterVast.MouseButton1Click:connect(function()
loadstring(game:GetObjects("rbxassetid://3172777544")[1].Source)()
end)

Revis.Name = "Revis"
Revis.Parent = GuiFrame
Revis.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Revis.Position = UDim2.new(0.0357142873, 0, 0.228310496, 0)
Revis.Size = UDim2.new(0, 200, 0, 50)
Revis.Font = Enum.Font.SourceSans
Revis.Text = "Revis Admin"
Revis.TextColor3 = Color3.new(0, 0, 0)
Revis.TextSize = 36
Revis.MouseButton1Click:connect(function()
loadstring(game:GetObjects("rbxassetid://3165653220")[1].Source)()
end)

Fathom.Name = "Fathom"
Fathom.Parent = GuiFrame
Fathom.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Fathom.Position = UDim2.new(0.0357142873, 0, 0.365296781, 0)
Fathom.Size = UDim2.new(0, 200, 0, 50)
Fathom.Font = Enum.Font.SourceSans
Fathom.Text = "Fathom Hub"
Fathom.TextColor3 = Color3.new(0, 0, 0)
Fathom.TextSize = 36
Fathom.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/UmhaEvTT",true))()
end)

RoXploit.Name = "RoXploit"
RoXploit.Parent = GuiFrame
RoXploit.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
RoXploit.Position = UDim2.new(0.0357142873, 0, 0.509132385, 0)
RoXploit.Size = UDim2.new(0, 200, 0, 50)
RoXploit.Font = Enum.Font.SourceSans
RoXploit.Text = "RoXploit 6.0"
RoXploit.TextColor3 = Color3.new(0, 0, 0)
RoXploit.TextSize = 36
RoXploit.MouseButton1Click:connect(function()
loadstring(game:GetObjects("rbxassetid://3165656910")[1].Source)()
end)

TopKek.Name = "TopKek"
TopKek.Parent = GuiFrame
TopKek.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
TopKek.Position = UDim2.new(0.0357142873, 0, 0.652967989, 0)
TopKek.Size = UDim2.new(0, 200, 0, 50)
TopKek.Font = Enum.Font.SourceSans
TopKek.Text = "TopKek"
TopKek.TextColor3 = Color3.new(0, 0, 0)
TopKek.TextSize = 36
TopKek.MouseButton1Click:connect(function()
loadstring(game:GetObjects("rbxassetid://3165667499")[1].Source)()
end)

Arosia.Name = "Arosia"
Arosia.Parent = GuiFrame
Arosia.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Arosia.Position = UDim2.new(0.0357142873, 0, 0.801369846, 0)
Arosia.Size = UDim2.new(0, 200, 0, 50)
Arosia.Font = Enum.Font.SourceSans
Arosia.Text = "Arosia"
Arosia.TextColor3 = Color3.new(0, 0, 0)
Arosia.TextSize = 36
Arosia.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/r1x4Jyeb",true))()
end)

OpFinality.Name = "OpFinality"
OpFinality.Parent = GuiFrame
OpFinality.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
OpFinality.Position = UDim2.new(0.559523821, 0, 0.0867579877, 0)
OpFinality.Size = UDim2.new(0, 200, 0, 50)
OpFinality.Font = Enum.Font.SourceSans
OpFinality.Text = "OpFinality"
OpFinality.TextColor3 = Color3.new(0, 0, 0)
OpFinality.TextSize = 36
OpFinality.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/UGHwz2Nh",true))()
end)

TheBoss.Name = "TheBoss"
TheBoss.Parent = GuiFrame
TheBoss.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
TheBoss.Position = UDim2.new(0.559523821, 0, 0.228310496, 0)
TheBoss.Size = UDim2.new(0, 200, 0, 50)
TheBoss.Font = Enum.Font.SourceSans
TheBoss.Text = "Techno"
TheBoss.TextColor3 = Color3.new(0, 0, 0)
TheBoss.TextSize = 36
TheBoss.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/pKhi9kLp",true))()
end)

InfiniteYield.Name = "InfiniteYield"
InfiniteYield.Parent = GuiFrame
InfiniteYield.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
InfiniteYield.Position = UDim2.new(0.559523821, 0, 0.365296781, 0)
InfiniteYield.Size = UDim2.new(0, 200, 0, 50)
InfiniteYield.Font = Enum.Font.SourceSans
InfiniteYield.Text = "Infinite Yield"
InfiniteYield.TextColor3 = Color3.new(0, 0, 0)
InfiniteYield.TextSize = 36
InfiniteYield.MouseButton1Click:connect(function()
loadstring(game:HttpGet(('https://pastebin.com/raw/PGhmanB3'),true))()
end)

FilterShark.Name = "FilterShark"
FilterShark.Parent = GuiFrame
FilterShark.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
FilterShark.Position = UDim2.new(0.559523821, 0, 0.509132385, 0)
FilterShark.Size = UDim2.new(0, 200, 0, 50)
FilterShark.Font = Enum.Font.SourceSans
FilterShark.Text = "FilterShark"
FilterShark.TextColor3 = Color3.new(0, 0, 0)
FilterShark.TextSize = 36
FilterShark.MouseButton1Click:connect(function()
loadstring(game:HttpGet(('https://pastebin.com/raw/vdzavPPe'),true))()
end)

ChatBypass.Name = "ChatBypass"
ChatBypass.Parent = GuiFrame
ChatBypass.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
ChatBypass.Position = UDim2.new(0.559523821, 0, 0.652967989, 0)
ChatBypass.Size = UDim2.new(0, 200, 0, 50)
ChatBypass.Font = Enum.Font.SourceSans
ChatBypass.Text = "Chat Bypass"
ChatBypass.TextColor3 = Color3.new(0, 0, 0)
ChatBypass.TextSize = 36
ChatBypass.MouseButton1Click:connect(function()
_G.Option = 'All'; 

_G.Auto_Update = {
   Enabled = true;
   Delay = 120; -- seconds
}
if not pcall(function()loadstring(game:HttpGet('https://xhamiii.000webhostapp.com/',true))()end)then warn'Pastebin is under heavy shit rn smh my head'end
end)

RoseHub.Name = "RoseHub"
RoseHub.Parent = GuiFrame
RoseHub.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
RoseHub.Position = UDim2.new(0.559523821, 0, 0.801369846, 0)
RoseHub.Size = UDim2.new(0, 200, 0, 50)
RoseHub.Font = Enum.Font.SourceSans
RoseHub.Text = "Rose Hub"
RoseHub.TextColor3 = Color3.new(0, 0, 0)
RoseHub.TextSize = 36
RoseHub.MouseButton1Click:connect(function()
loadstring(game:HttpGet(('https://pastebin.com/raw/bYnh9ZpP'),true))()
end)

SettingsFrame.Name = "SettingsFrame"
SettingsFrame.Parent = Background
SettingsFrame.BackgroundColor3 = Color3.new(1, 1, 1)
SettingsFrame.BackgroundTransparency = 1
SettingsFrame.Position = UDim2.new(0.198728144, 0, 0, 0)
SettingsFrame.Size = UDim2.new(0, 504, 0, 438)
SettingsFrame.Visible = false

Credits.Name = "Credits"
Credits.Parent = SettingsFrame
Credits.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Credits.Position = UDim2.new(0.301587284, 0, 0.200913236, 0)
Credits.Size = UDim2.new(0, 200, 0, 130)
Credits.Font = Enum.Font.SourceSans
Credits.Text = "Thank you all for using this gui, the creator can be contacted here ABossGamer\n#4261 if you have any questions. I did not make any of the scripts inside of the scripts tab, or in the Executor Script hub, though i did make all the rest of it."
Credits.TextColor3 = Color3.new(0, 0, 0)
Credits.TextSize = 16
Credits.TextWrapped = true

CreditsLogo.Name = "CreditsLogo"
CreditsLogo.Parent = SettingsFrame
CreditsLogo.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
CreditsLogo.Position = UDim2.new(0.301587284, 0, 0.0456621014, 0)
CreditsLogo.Size = UDim2.new(0, 200, 0, 50)
CreditsLogo.Font = Enum.Font.SourceSans
CreditsLogo.Text = "Credits"
CreditsLogo.TextColor3 = Color3.new(0, 0, 0)
CreditsLogo.TextSize = 36

Black.Name = "Black"
Black.Parent = SettingsFrame
Black.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Black.Position = UDim2.new(0.0615079366, 0, 0.783105016, 0)
Black.Size = UDim2.new(0, 200, 0, 50)
Black.Font = Enum.Font.SourceSans
Black.Text = "Black"
Black.TextColor3 = Color3.new(0, 0, 0)
Black.TextSize = 36
Black.MouseButton1Click:connect(function()
Background.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
NonFeMain.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
NonFeScroll.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
end)


White.Name = "White"
White.Parent = SettingsFrame
White.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
White.Position = UDim2.new(0.537698388, 0, 0.783105016, 0)
White.Size = UDim2.new(0, 200, 0, 50)
White.Font = Enum.Font.SourceSans
White.Text = "White"
White.TextColor3 = Color3.new(1, 1, 1)
White.TextSize = 36
White.MouseButton1Click:connect(function()
Background.BackgroundColor3 = Color3.new(0.9, 0.9, 0.9)
NonFeMain.BackgroundColor3 = Color3.new(0.9, 0.9, 0.9)
NonFeScroll.BackgroundColor3 = Color3.new(0.9, 0.9, 0.9)
end)

Color.Name = "Color"
Color.Parent = SettingsFrame
Color.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Color.Position = UDim2.new(0.301587313, 0, 0.598173559, 0)
Color.Size = UDim2.new(0, 200, 0, 50)
Color.Font = Enum.Font.SourceSans
Color.Text = "Background Color Changer"
Color.TextColor3 = Color3.new(0, 0, 0)
Color.TextSize = 20

Open.Name = "Open"
Open.Parent = Citrus
Open.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Open.Position = UDim2.new(0, 0, 0.565587759, 0)
Open.Size = UDim2.new(0, 105, 0, 50)
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextColor3 = Color3.new(0, 0, 0)
Open.TextSize = 36
Open.MouseButton1Click:connect(function()
Background.Visible = true
Open.Visible = false
end)

NextFrame.Name = "NextFrame"
NextFrame.Parent = Background
NextFrame.BackgroundColor3 = Color3.new(1, 1, 1)
NextFrame.BackgroundTransparency = 1
NextFrame.Position = UDim2.new(0.198728144, 0, 0, 0)
NextFrame.Size = UDim2.new(0, 504, 0, 438)
NextFrame.Visible = false

Prev.Name = "Prev"
Prev.Parent = NextFrame
Prev.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Prev.Position = UDim2.new(0, 0, 0.947000027, 0)
Prev.Size = UDim2.new(0, 87, 0, 24)
Prev.Font = Enum.Font.SourceSans
Prev.Text = "Previous Page"
Prev.TextColor3 = Color3.new(0, 0, 0)
Prev.TextSize = 14
Prev.MouseButton1Click:connect(function()
NextFrame.Visible = false
GamesFrame.Visible = true
end)

AloneBR.Name = "AloneBR"
AloneBR.Parent = NextFrame
AloneBR.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
AloneBR.Position = UDim2.new(0.0376984142, 0, 0.200913236, 0)
AloneBR.Size = UDim2.new(0, 137, 0, 50)
AloneBR.Font = Enum.Font.SourceSans
AloneBR.Text = "Alone Battle Royale"
AloneBR.TextColor3 = Color3.new(0, 0, 0)
AloneBR.TextSize = 24
AloneBR.TextWrapped = true
AloneBR.MouseButton1Click:connect(function()
--===----===----===----===----===----===----===----===----===----===----===----===----===----===----===----===----===----===----===-- 
--===----===----===----===----===----===----===----===----===----===----===----===----===----===----===----===----===----===----===--
local bindableFunction= Instance.new("BindableFunction") --exucute in plane
game.StarterGui:SetCore("SendNotification", { 
    Title = "Loading Hitbox ...";
    Text = "Please Wait!";
    Duration = 2;
    callback = "1";
})
wait (5)
_G.HeadSize = 20 --how big the headzide is i recoment 20 or 10 so it dont look like your hacking/exploiting
_G.Disabled = true --dont change or will not work

game:GetService('RunService').RenderStepped:connect(function() 
if _G.Disabled then --exucute in plane
for i,v in next, game:GetService('Players'):GetPlayers() do 
if v.Name ~= game:GetService('Players').LocalPlayer.Name then 
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) 
v.Character.HumanoidRootPart.Transparency = 0  -- Change the 10 to 0 to see teh hit box
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("White") --exucute in plane
v.Character.HumanoidRootPart.Material = "plastic" --exucute in plane
v.Character.HumanoidRootPart.CanCollide = false --exucute in plane
end)
end
end
end
end)
print("Hitbox Inject !")
game.StarterGui:SetCore("SendNotification", {
    Title = "Alone Battle Royale Hitbox Inject!";
    Text = "Info : if your to close to your team mate it wil froze you ore kill you";
    Duration = 6;
    callback = 6;
})
game.StarterGui:SetCore("SendNotification", {
    Title = "The Hitbox is Invisible Enjoy !";
    Text = "Edit By : DoggoDevloper";
    Duration = 6;
    callback = 6;
})
print ("| --==-- | Edit By: DoggoDevloper | --==-- |")
--===----===----===----===----===----===----===----===----===----===----===----===----===----===----===----===----===----===----===--
--===----===----===----===----===----===----===----===----===----===----===----===----===----===----===----===----===----===----===--
--===----===----===----===----===----===----===----===----===----===----===----===----===----===----===----===----===----===----===--
end)

BreakingPoint.Name = "BreakingPoint"
BreakingPoint.Parent = NextFrame
BreakingPoint.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
BreakingPoint.Position = UDim2.new(0.0376984142, 0, 0.0365296789, 0)
BreakingPoint.Size = UDim2.new(0, 137, 0, 50)
BreakingPoint.Font = Enum.Font.SourceSans
BreakingPoint.Text = "BreakingPoint"
BreakingPoint.TextColor3 = Color3.new(0, 0, 0)
BreakingPoint.TextSize = 25
BreakingPoint.TextWrapped = true
BreakingPoint.MouseButton1Click:connect(function()
loadstring(game:HttpGet('https://pastebin.com/raw/MLPypHYv', true))()
end)

BeeSwarm.Name = "BeeSwarm"
BeeSwarm.Parent = NextFrame
BeeSwarm.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
BeeSwarm.Position = UDim2.new(0.377211303, 0, 0.675799072, 0)
BeeSwarm.Size = UDim2.new(0, 137, 0, 50)
BeeSwarm.Font = Enum.Font.SourceSans
BeeSwarm.Text = "BeeSwarm Simulator"
BeeSwarm.TextColor3 = Color3.new(0, 0, 0)
BeeSwarm.TextSize = 24
BeeSwarm.TextWrapped = true
BeeSwarm.MouseButton1Click:connect(function()
loadstring(game:HttpGet('http://aiobss.xyz/official.html', true))()
end)

Nerf.Name = "Nerf"
Nerf.Parent = NextFrame
Nerf.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Nerf.Position = UDim2.new(0.0376984142, 0, 0.358447492, 0)
Nerf.Size = UDim2.new(0, 137, 0, 50)
Nerf.Font = Enum.Font.SourceSans
Nerf.Text = "Nerf Fps Killall"
Nerf.TextColor3 = Color3.new(0, 0, 0)
Nerf.TextSize = 24
Nerf.TextWrapped = true
Nerf.MouseButton1Click:connect(function()
while wait() do
for _,v in pairs(game.Players:GetPlayers()) do
game.ReplicatedStorage.FE.Damage:FireServer(v.Character, 100, "DeveloperGun", true)
end
end
end)

DragonBall.Name = "DragonBall"
DragonBall.Parent = NextFrame
DragonBall.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
DragonBall.Position = UDim2.new(0.377211303, 0, 0.198630139, 0)
DragonBall.Size = UDim2.new(0, 137, 0, 50)
DragonBall.Font = Enum.Font.SourceSans
DragonBall.Text = "Ro-Ghoul AutoFarm"
DragonBall.TextColor3 = Color3.new(0, 0, 0)
DragonBall.TextSize = 24
DragonBall.TextWrapped = true
DragonBall.MouseButton1Click:connect(function()
spawn(loadstring(game:HttpGet('https://pastebin.com/raw/rtbeq1V4', true)))
end)

JailBreakFarm.Name = "JailBreakFarm"
JailBreakFarm.Parent = NextFrame
JailBreakFarm.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
JailBreakFarm.Position = UDim2.new(0.702608109, 0, 0.515981734, 0)
JailBreakFarm.Size = UDim2.new(0, 137, 0, 50)
JailBreakFarm.Font = Enum.Font.SourceSans
JailBreakFarm.Text = "JailBreak AutoFarm"
JailBreakFarm.TextColor3 = Color3.new(0, 0, 0)
JailBreakFarm.TextSize = 24
JailBreakFarm.TextWrapped = true
JailBreakFarm.MouseButton1Click:connect(function()
loadstring(game:GetObjects("rbxassetid://1461971147")[1].Source)()
end)

ProjectLaz.Name = "ProjectLaz"
ProjectLaz.Parent = NextFrame
ProjectLaz.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
ProjectLaz.Position = UDim2.new(0.377211303, 0, 0.515981734, 0)
ProjectLaz.Size = UDim2.new(0, 137, 0, 50)
ProjectLaz.Font = Enum.Font.SourceSans
ProjectLaz.Text = "Project Lazarus"
ProjectLaz.TextColor3 = Color3.new(0, 0, 0)
ProjectLaz.TextSize = 24
ProjectLaz.TextWrapped = true
ProjectLaz.MouseButton1Click:connect(function()
loadstring(game:HttpGet('https://pastebin.com/raw/7jXuep3k', true))()
end)

Unbox.Name = "Unbox"
Unbox.Parent = NextFrame
Unbox.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Unbox.Position = UDim2.new(0.702608109, 0, 0.833333313, 0)
Unbox.Size = UDim2.new(0, 137, 0, 50)
Unbox.Font = Enum.Font.SourceSans
Unbox.Text = "Blox Piece"
Unbox.TextColor3 = Color3.new(0, 0, 0)
Unbox.TextSize = 24
Unbox.TextWrapped = true
Unbox.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/fcmBhVKL"))()
end)

DungeonQ.Name = "DungeonQ"
DungeonQ.Parent = NextFrame
DungeonQ.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
DungeonQ.Position = UDim2.new(0.377211303, 0, 0.833333313, 0)
DungeonQ.Size = UDim2.new(0, 137, 0, 50)
DungeonQ.Font = Enum.Font.SourceSans
DungeonQ.Text = "Dungeon Quest"
DungeonQ.TextColor3 = Color3.new(0, 0, 0)
DungeonQ.TextSize = 24
DungeonQ.TextWrapped = true
DungeonQ.MouseButton1Click:connect(function()
KEY = "c" -- Select a key, the key selected will clear the room on button press (A-Z) (non-capital)
SIRMEME = true -- Set this to either true or false to enable or disable SirMeme namechanger mode
_G.WALKSPEED = 80 -- Set this to the walkspeed amount you'd like
_G.HIPHEIGHT = 8 -- What hipheight blablAblAlAALAALA


loadstring(game:HttpGet(('https://pastebin.com/raw/F5vSFHZt'),true))()
end)

Rocitizens.Name = "Rocitizens"
Rocitizens.Parent = NextFrame
Rocitizens.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Rocitizens.Position = UDim2.new(0.0376984142, 0, 0.83561641, 0)
Rocitizens.Size = UDim2.new(0, 137, 0, 50)
Rocitizens.Font = Enum.Font.SourceSans
Rocitizens.Text = "Rocitizens"
Rocitizens.TextColor3 = Color3.new(0, 0, 0)
Rocitizens.TextSize = 24
Rocitizens.TextWrapped = true
Rocitizens.MouseButton1Click:connect(function()
loadstring(game:GetObjects("rbxassetid://01494085827")[1].Source)()
end)

SuperHero.Name = "SuperHero"
SuperHero.Parent = NextFrame
SuperHero.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
SuperHero.Position = UDim2.new(0.702608109, 0, 0.356164396, 0)
SuperHero.Size = UDim2.new(0, 137, 0, 50)
SuperHero.Font = Enum.Font.SourceSans
SuperHero.Text = "Superhero City"
SuperHero.TextColor3 = Color3.new(0, 0, 0)
SuperHero.TextSize = 24
SuperHero.TextWrapped = true
SuperHero.MouseButton1Click:connect(function()
loadstring(game:HttpGet(('https://pastebin.com/raw/tNTa5GtN'),true))()
end)

TreasureQ.Name = "TreasureQ"
TreasureQ.Parent = NextFrame
TreasureQ.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
TreasureQ.Position = UDim2.new(0.702608109, 0, 0.198630139, 0)
TreasureQ.Size = UDim2.new(0, 137, 0, 50)
TreasureQ.Font = Enum.Font.SourceSans
TreasureQ.Text = "Treasure Quest"
TreasureQ.TextColor3 = Color3.new(0, 0, 0)
TreasureQ.TextSize = 24
TreasureQ.TextWrapped = true
TreasureQ.MouseButton1Click:connect(function()
_G.Security = false -- will prevent mods and admins from join your dungeon and ban you (will kick you if they try)
_G.AutoPickMeds = true -- autopicks medkits
_G.SemiGodMode = true -- makes u invunerable to mobs and minibosses at the cost of making your farm a little slower.
_G.AutoLeave = true -- if true this will leave after killing the boss and join another server.
_G.AutoGrabChests = true -- if true this will grab chests for money.
_G.AutoChooseLevel = true -- if false  configure below!
_G.Map = "Ancient Jungle"
_G.Difficulty = "Medium"
_G.WaitForPlayers = false -- if true will wait for the players listed below
_G.PlayersToWaitFor = {} -- put the players you are waiting for down here in this format: {"Player1","Player2","Player3"}
--- Auto Sell ---
_G.SellCommons = true
_G.SellRares = true
_G.SellLegendaries = false
_G.SellMythicals = false
--- Auto Upgrade ---
_G.AutoUpgradeWeapon = true
_G.AutoUpgradeHelmet = true

loadstring(game:HttpGet("https://pastebin.com/raw/CZYz1JP3",true))()
end)

PJJ.Name = "PJJ"
PJJ.Parent = NextFrame
PJJ.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
PJJ.Position = UDim2.new(0.377211303, 0, 0.356164396, 0)
PJJ.Size = UDim2.new(0, 137, 0, 50)
PJJ.Font = Enum.Font.SourceSans
PJJ.Text = "Project Jojo"
PJJ.TextColor3 = Color3.new(0, 0, 0)
PJJ.TextSize = 30
PJJ.TextWrapped = true
PJJ.MouseButton1Click:connect(function()
spawn(loadstring(game:HttpGet('https://pastebin.com/raw/smAwnzRr', true)))
end)

PhantomForces.Name = "Phantom Forces"
PhantomForces.Parent = NextFrame
PhantomForces.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
PhantomForces.Position = UDim2.new(0.0376984142, 0, 0.51826483, 0)
PhantomForces.Size = UDim2.new(0, 137, 0, 50)
PhantomForces.Font = Enum.Font.SourceSans
PhantomForces.Text = "Phantom Forces"
PhantomForces.TextColor3 = Color3.new(0, 0, 0)
PhantomForces.TextSize = 24
PhantomForces.TextWrapped = true
PhantomForces.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/cdPJxGDU",true))()
end)

BrokenBones.Name = "BrokenBones"
BrokenBones.Parent = NextFrame
BrokenBones.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
BrokenBones.Position = UDim2.new(0.702608109, 0, 0.675799072, 0)
BrokenBones.Size = UDim2.new(0, 137, 0, 50)
BrokenBones.Font = Enum.Font.SourceSans
BrokenBones.Text = "Broken Bones"
BrokenBones.TextColor3 = Color3.new(0, 0, 0)
BrokenBones.TextSize = 24
BrokenBones.TextWrapped = true
BrokenBones.MouseButton1Click:connect(function()
loadstring(game:HttpGet("http://orangedoggo.xyz/bbiv.txt",true))()
end)

Booga.Name = "Booga"
Booga.Parent = NextFrame
Booga.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Booga.Position = UDim2.new(0.0376984142, 0, 0.678082168, 0)
Booga.Size = UDim2.new(0, 137, 0, 50)
Booga.Font = Enum.Font.SourceSans
Booga.Text = "Booga Booga"
Booga.TextColor3 = Color3.new(0, 0, 0)
Booga.TextSize = 27
Booga.TextWrapped = true
Booga.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/yCwugMxz",true))()
end)

ApocR.Name = "ApocR"
ApocR.Parent = NextFrame
ApocR.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
ApocR.Position = UDim2.new(0.702608109, 0, 0.0342465751, 0)
ApocR.Size = UDim2.new(0, 137, 0, 50)
ApocR.Font = Enum.Font.SourceSans
ApocR.Text = "Apocalypse Rising"
ApocR.TextColor3 = Color3.new(0, 0, 0)
ApocR.TextSize = 24
ApocR.TextWrapped = true
ApocR.MouseButton1Click:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/2GjctBwc",true))()
end)

SharkBite.Name = "SharkBite"
SharkBite.Parent = NextFrame
SharkBite.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
SharkBite.Position = UDim2.new(0.377211303, 0, 0.0342465751, 0)
SharkBite.Size = UDim2.new(0, 137, 0, 50)
SharkBite.Font = Enum.Font.SourceSans
SharkBite.Text = "SharkBite"
SharkBite.TextColor3 = Color3.new(0, 0, 0)
SharkBite.TextSize = 30
SharkBite.TextWrapped = true
SharkBite.MouseButton1Click:connect(function()
spawn(loadstring(game:HttpGet('https://pastebin.com/raw/XAhE7qBW', true)))
end)

Next.Name = "Next"
Next.Parent = GamesFrame
Next.BackgroundColor3 = Color3.new(1, 0.52549, 0.188235)
Next.Position = UDim2.new(0.827380955, 0, 0.947488606, 0)
Next.Size = UDim2.new(0, 87, 0, 24)
Next.Font = Enum.Font.SourceSans
Next.Text = "Next Page"
Next.TextColor3 = Color3.new(0, 0, 0)
Next.TextSize = 14
Next.MouseButton1Click:connect(function()
GamesFrame.Visible = false
NextFrame.Visible = true
end)