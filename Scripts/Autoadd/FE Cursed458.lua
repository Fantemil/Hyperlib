--Netless is activated------
------------------------
--Keybinds:-------------
--Click - Punch---------
--C - Crouch------------
------------------------
--The Main Script------
----------------------
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,35,0)
wait(0.5)
end)
end
end

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Notification";
	Text = "Netless activated";
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 16;

HumanDied = false
local reanim
function noplsmesh(hat)
_G.OldCF=workspace.Camera.CFrame
oldchar=game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character=workspace[game.Players.LocalPlayer.Name]
for i,v in next, workspace[game.Players.LocalPlayer.Name][hat]:GetDescendants() do
if v:IsA('Mesh') or v:IsA('SpecialMesh') then
v:Remove()
end
end
game.Players.LocalPlayer.Character=oldchar
wait()
workspace.Camera.CFrame=_G.OldCF
game.Players.LocalPlayer.Character=oldchar
end
_G.ClickFling=false -- Set this to true if u want.
loadstring(game:HttpGet(('https://raw.githubusercontent.com/OofHead-FE/nexo-before-deleted/main/NexoPD'),true))()

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

speed = 1
sine = 1
srv = game:GetService('RunService')

function hatset(yes,part,c1,c0,nm)
reanim[yes].Handle.AccessoryWeld.Part1=reanim[part]
reanim[yes].Handle.AccessoryWeld.C1=c1 or CFrame.new()
reanim[yes].Handle.AccessoryWeld.C0=c0 or CFrame.new()--3bbb322dad5929d0d4f25adcebf30aa5
if nm==true then
noplsmesh(yes)
end
end

--put the hat script converted below

reanim = game.Players.LocalPlayer.Character.CWExtra.NexoPD
RJ = reanim.HumanoidRootPart.RootJoint
RS = reanim.Torso['Right Shoulder']
LS = reanim.Torso['Left Shoulder']
RH = reanim.Torso['Right Hip']
LH = reanim.Torso['Left Hip']
Root = reanim.HumanoidRootPart
NECK = reanim.Torso.Neck
NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C1 = CF(-0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C1 = CF(0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))

Mode='1'

mousechanger=game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
if k == 'q' then-- first mode
Mode='1'
elseif k == 'c' then-- second mode
Mode='2'
elseif k == 'ayowtf' then-- third mode
Mode='3'
end
end)



attacklol=game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
Mode='Attack0'
wait(0.3) -- Time Of Attack
Mode='Attack1'
wait(0.2) -- Time Of Attack
Mode='Attack2'
end)



coroutine.wrap(function()
while true do -- anim changer
if HumanDied then mousechanger:Disconnect() break end
sine = sine + speed
local rlegray = Ray.new(reanim["Right Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)
local llegray = Ray.new(reanim["Left Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)
local rightvector = (Root.Velocity * Root.CFrame.rightVector).X + (Root.Velocity * Root.CFrame.rightVector).Z
local lookvector = (Root.Velocity * Root.CFrame.lookVector).X + (Root.Velocity * Root.CFrame.lookVector).Z
if lookvector > reanim.Humanoid.WalkSpeed then
lookvector = reanim.Humanoid.WalkSpeed
end
if lookvector < -reanim.Humanoid.WalkSpeed then
lookvector = -reanim.Humanoid.WalkSpeed
end
if rightvector > reanim.Humanoid.WalkSpeed then
rightvector = reanim.Humanoid.WalkSpeed
end
if rightvector < -reanim.Humanoid.WalkSpeed then
rightvector = -reanim.Humanoid.WalkSpeed
end
local lookvel = lookvector / reanim.Humanoid.WalkSpeed
local rightvel = rightvector / reanim.Humanoid.WalkSpeed
if Mode == '1' then
if Root.Velocity.y > 1 then -- jump
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(3+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-8+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/6),0.2+0.05*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(-24+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(10+0*math.cos(sine/6))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/6),1+0.05*math.cos(sine/6),-0.2+0*math.cos(sine/6))*ANGLES(RAD(141+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
RH.C0 = RH.C0:Lerp(CF(1+0*math.cos(sine/6),-0.4+0*math.cos(sine/6),-0.3+0*math.cos(sine/6))*ANGLES(RAD(1+0*math.cos(sine/6)),RAD(-8+0*math.cos(sine/6)),RAD(5+0*math.cos(sine/6))),.3)
LH.C0 = LH.C0:Lerp(CF(-1+0*math.cos(sine/6),0+0*math.cos(sine/6),-1+0*math.cos(sine/6))*ANGLES(RAD(-22+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(-6+0*math.cos(sine/6))),.3)
elseif Root.Velocity.y < -1 then -- fall
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(-26+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-8+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/6),0.4+0.05*math.cos(sine/6),-0.2+0*math.cos(sine/6))*ANGLES(RAD(16+0*math.cos(sine/6)),RAD(7+0*math.cos(sine/6)),RAD(32+0*math.cos(sine/6))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/6),0.4+0.05*math.cos(sine/6),-0.2+0*math.cos(sine/6))*ANGLES(RAD(25+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(-28+0*math.cos(sine/6))),.3)
RH.C0 = RH.C0:Lerp(CF(1+0*math.cos(sine/6),-0.4+0*math.cos(sine/6),-0.3+0*math.cos(sine/6))*ANGLES(RAD(1+0*math.cos(sine/6)),RAD(-8+0*math.cos(sine/6)),RAD(5+0*math.cos(sine/6))),.3)
LH.C0 = LH.C0:Lerp(CF(-1+0*math.cos(sine/6),-0.3+0*math.cos(sine/6),-1+0*math.cos(sine/6))*ANGLES(RAD(-22+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(-6+0*math.cos(sine/6))),.3)
elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+-2*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10),-0.6+0.1*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/10),0.2+0.05*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(45+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(10+0*math.cos(sine/10))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/10),0.2+0.05*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(36+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(-8+0*math.cos(sine/10))),.3)
RH.C0 = RH.C0:Lerp(CF(1+0*math.cos(sine/10),-0.4+-0.1*math.cos(sine/10),-0.3+0*math.cos(sine/10))*ANGLES(RAD(1+0*math.cos(sine/10)),RAD(-31+0*math.cos(sine/10)),RAD(5+0*math.cos(sine/10))),.3)
LH.C0 = LH.C0:Lerp(CF(-1+0*math.cos(sine/10),-0.38+-0.1*math.cos(sine/10),-0.2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(39+0*math.cos(sine/10)),RAD(-4+0*math.cos(sine/10))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(1+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/3),-0.6+0.1*math.cos(sine/3),0+0*math.cos(sine/3))*ANGLES(RAD(-8+0*math.cos(sine/3)),RAD(0+0*math.cos(sine/3)),RAD(0+0*math.cos(sine/3))),.3)
RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/6),0.2+0.05*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(45+-7*math.cos(sine/6)),RAD(0+-59*math.cos(sine/6)),RAD(47+0*math.cos(sine/6))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/6),0.2+0.05*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(36+17*math.cos(sine/6)),RAD(0+-81*math.cos(sine/6)),RAD(-51+0*math.cos(sine/6))),.3)
RH.C0 = RH.C0:Lerp(CF(1+0*math.cos(sine/6),-0.4+-0.1*math.cos(sine/6),-0.3+0*math.cos(sine/6))*ANGLES(RAD(1+32*math.cos(sine/6)),RAD(-8+0*math.cos(sine/6)),RAD(5+0*math.cos(sine/6))),.3)
LH.C0 = LH.C0:Lerp(CF(-1+0*math.cos(sine/6),-0.38+0*math.cos(sine/6),-0.2+0*math.cos(sine/6))*ANGLES(RAD(1.2+-32*math.cos(sine/6)),RAD(16+0*math.cos(sine/6)),RAD(-4+0*math.cos(sine/6))),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
--run clerp here
end
elseif Mode == '2' then
if Root.Velocity.y > 1 then -- jump
--jump clerp here
elseif Root.Velocity.y < -1 then -- fall
--fall clerp here
elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-57+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),-1.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-51+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1.2+0*math.cos(sine/13),0.5+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(143+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-26+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.3+0*math.cos(sine/13),0.5+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(141+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(25+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),0.82+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(51+0*math.cos(sine/13)),RAD(-14+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),0.82+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(51+0*math.cos(sine/13)),RAD(14+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(54+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),-1.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),1+-0.4*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(181+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),1+0.4*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(180+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),0+0.3*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),0+-0.3*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(1+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
--jopa
end
elseif Mode == '3' then
if Root.Velocity.y > 1 then -- jump
--jump clerp here
elseif Root.Velocity.y < -1 then -- fall
--fall clerp here
elseif Root.Velocity.Magnitude < 2 then -- idle
--idle clerp here
elseif Root.Velocity.Magnitude < 20 then -- walk
--walk clerp here
elseif Root.Velocity.Magnitude > 20 then -- run
--run clerp here
end
elseif Mode == 'Attack0' then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-6+0*math.cos(sine/13)),RAD(30+0*math.cos(sine/13)),RAD(5+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(3+0*math.cos(sine/13)),RAD(-31+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0.3+0*math.cos(sine/13))*ANGLES(RAD(88+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/13),0.3+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(92+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-31+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-6+0*math.cos(sine/13)),RAD(-19+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-4+0*math.cos(sine/13)),RAD(12+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Mode == 'Attack1' then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-6+0*math.cos(sine/13)),RAD(-28+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-13+0*math.cos(sine/13)),RAD(23+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/13),0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(88+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-26+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-22+0*math.cos(sine/13)),RAD(5+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-0.82+0*math.cos(sine/13),-0.4+0*math.cos(sine/13))*ANGLES(RAD(-2+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Mode == 'Attack2' then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-6+0*math.cos(sine/13)),RAD(-28+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-6+0*math.cos(sine/13)),RAD(30+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(81+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(3+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/13),0.2+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(5+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
end
srv.RenderStepped:Wait()
end
end)()

--This was copied from neptunian V
local muter = false
local ORGID = 6214466272
local ORVOL = 1.15
local ORPIT = 1.01
local kan = Instance.new("Sound",char)
kan.Volume = 0
if not NoSound then
	kan.Volume = 1.15
end
kan.TimePosition = 0
kan.PlaybackSpeed = 1.01
kan.Pitch = 1.01
kan.SoundId = "rbxassetid://6214466272"
kan.Name = "mariowashere"
kan.Looped = true
kan:Play()
--Created using Nexo Animator