local plr = game.Players.LocalPlayer
local char = game.Players.LocalPlayer.Character
local srv = game:GetService('RunService')
local ct = {}
local te = table.insert
_G.Dead=false

char.Archivable=true
local reanim = char:Clone()
fl=Instance.new('Folder',char) fl.Name='NexoR15'

for i,v in next, char:GetDescendants() do 
if v:IsA('MeshPart') then
te(ct,srv.Heartbeat:Connect(function()
v.Velocity = Vector3.new(0,-30,0)
sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",10000)
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",10000)
end))
end
end

for i,v in next, char.Humanoid:GetPlayingAnimationTracks() do
v:Stop()
end
char.Animate:Remove()

for i,v in next, reanim:GetDescendants() do
if v:IsA('MeshPart') or v:IsA('Decal') then
v.Transparency=1
end
end

hats=0
function create(part, parent, p, r)
hats=hats+1
Instance.new("Attachment",part)
Instance.new("AlignPosition",part)
Instance.new("AlignOrientation",part)
Instance.new("Attachment",parent)
part.Attachment.Name = part.Name..hats
parent.Attachment.Name = part.Name..hats
part.AlignPosition.Attachment0 = part[part.Name..hats]
part.AlignOrientation.Attachment0 = part[part.Name..hats]
part.AlignPosition.Attachment1 = parent[part.Name..hats]
part.AlignOrientation.Attachment1 = parent[part.Name..hats]
parent[part.Name..hats].Position = p or Vector3.new()
part[part.Name..hats].Orientation = r or Vector3.new()
part.AlignPosition.MaxForce = 999999999
part.AlignPosition.MaxVelocity = 99999999
part.AlignPosition.ReactionForceEnabled = false
part.AlignPosition.Responsiveness = 99999999
part.AlignOrientation.Responsiveness = 99999999
part.AlignPosition.RigidityEnabled = false
part.AlignOrientation.MaxTorque = 999999
end

for i,v in next, char:GetDescendants() do
if v:IsA('Motor6D') and v.Name ~= 'Neck' then
v:Destroy()
end
end

for i,v in next, char:GetChildren() do
if v:IsA('MeshPart') and v.Name ~= 'Head' and v.Name ~= 'HumanoidRootPart' and v.Parent == char then
create(v,reanim[v.Name])
end
end

for i,v in next, char:GetDescendants() do
if v:IsA('Accessory') then
v.Handle:BreakJoints()
create(v.Handle,reanim[v.Name].Handle)
end
end

--char.HumanoidRootPart:Destroy()

function noc()
for i,v in next, reanim:GetDescendants() do
if v:IsA('MeshPart') or v:IsA('BasePart') then
table.insert(ct,srv.Stepped:Connect(function()
v.CanCollide = false
end))
end
end
for i,v in next, char:GetDescendants() do
if v:IsA('MeshPart') or v:IsA('BasePart') then
table.insert(ct,srv.Stepped:Connect(function()
v.CanCollide = false
end))
end
end
for i,v in next, reanim:GetDescendants() do
if v:IsA('MeshPart') or v:IsA('BasePart') then
table.insert(ct,srv.RenderStepped:Connect(function()
v.CanCollide = false
end))
end
end
for i,v in next, char:GetDescendants() do
if v:IsA('MeshPart') or v:IsA('BasePart') then
table.insert(ct,srv.RenderStepped:Connect(function()
v.CanCollide = false
end))
end
end
end

noc()

create(char.HumanoidRootPart,reanim.UpperTorso)
char.Humanoid:ChangeState(16)

reanim.Animate.Disabled=true
reanim.Parent=fl

plr.Character=reanim
workspace.Camera.CameraSubject=reanim.Humanoid

te(ct,reanim.Humanoid.Died:Connect(function()
_G.Dead=true
plr.Character=char
char.Humanoid:Destroy()
hc=Instance.new('Humanoid',char)
game.Players:Chat('-gr')
for i,v in next, ct do v:Disconnect() end
end))

reanim=game.Players.LocalPlayer.Character

sine=1
speed=1

HRP=reanim.HumanoidRootPart

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

Neck=reanim:FindFirstChild("Neck",true)
Neck.C1=CFrame.new(0,-0.5,0)
Waist=reanim:FindFirstChild("Waist",true)
Waist.C1=CFrame.new(0,-0.7,0)
Root=reanim:FindFirstChild("Root",true)
Root.C1=CFrame.new(0,0,0)
Luarm=reanim:FindFirstChild("LeftShoulder",true)
Luarm.C1=CFrame.new(0.5,0.2,0)
Llarm=reanim:FindFirstChild("LeftElbow",true)
Llarm.C1=CFrame.new(0,0.2,0)
Lhand=reanim:FindFirstChild("LeftWrist",true)
Lhand.C1=CFrame.new(0,0.10,0)
Ruarm=reanim:FindFirstChild("RightShoulder",true)
Ruarm.C1=CFrame.new(-0.5,0.2,0)
Rlarm=reanim:FindFirstChild("RightElbow",true)
Rlarm.C1=CFrame.new(0,0.2,0)
Rhand=reanim:FindFirstChild("RightWrist",true)
Rhand.C1=CFrame.new(0,0.10,0)
Luleg=reanim:FindFirstChild("LeftHip",true)
Luleg.C1=CFrame.new(0,0.3,0)
Llleg=reanim:FindFirstChild("LeftKnee",true)
Llleg.C1=CFrame.new(0,0.3,0)
Lhleg=reanim:FindFirstChild("LeftAnkle",true)
Lhleg.C1=CFrame.new(0,0.10,0)
Ruleg=reanim:FindFirstChild("RightHip",true)
Ruleg.C1=CFrame.new(0,0.3,0)
Rlleg=reanim:FindFirstChild("RightKnee",true)
Rlleg.C1=CFrame.new(0,0.3,0)
Rhleg=reanim:FindFirstChild("RightAnkle",true)
Rhleg.C1=CFrame.new(0,0.10,0)

coroutine.wrap(function()
while true do -- anim changer
if _G.Dead == true then break end
sine = sine + speed
local rightvector = (HRP.Velocity * HRP.CFrame.rightVector).X + (HRP.Velocity * HRP.CFrame.rightVector).Z
local lookvector = (HRP.Velocity * HRP.CFrame.lookVector).X + (HRP.Velocity * HRP.CFrame.lookVector).Z
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
if HRP.Velocity.y > 1 then -- jump
--jump clerp here
Neck.C0 = Neck.C0:Lerp(CF(0+0*math.cos(sine/13),0.8+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+9999999999999999*math.cos(sine/13)),RAD(0+99999999999999999999999*math.cos(sine/13)),RAD(0+99999999*math.cos(sine/13))),.3)
Waist.C0 = Waist.C0:Lerp(CF(0+0*math.cos(sine/13),0.3+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+9999999999999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999*math.cos(sine/13))),.3)
Root.C0 = Root.C0:Lerp(CF(0+0*math.cos(sine/1),-0.8+0*math.cos(sine/1),0+0*math.cos(sine/1))*ANGLES(RAD(0+999999999999999*math.cos(sine/1)),RAD(0+9999999999999999999999999999*math.cos(sine/1)),RAD(0+99999999*math.cos(sine/1))),.3)
Luarm.C0 = Luarm.C0:Lerp(CF(-1+0*math.cos(sine/13),0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+9999999999999*math.cos(sine/13)),RAD(0+99999999999999999999999*math.cos(sine/13)),RAD(0+999999999999999999999999999999*math.cos(sine/13))),.3)
Llarm.C0 = Llarm.C0:Lerp(CF(0+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999999*math.cos(sine/13)),RAD(0+9999999*math.cos(sine/13)),RAD(0+999999999*math.cos(sine/13))),.3)
Lhand.C0 = Lhand.C0:Lerp(CF(0+0*math.cos(sine/13),-0.52+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999*math.cos(sine/13)),RAD(0+999999999*math.cos(sine/13)),RAD(0+999999*math.cos(sine/13))),.3)
Ruarm.C0 = Ruarm.C0:Lerp(CF(1+0*math.cos(sine/13),0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+9999999999999999999999999999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999*math.cos(sine/13)),RAD(0+999999999999999999999*math.cos(sine/13))),.3)
Rlarm.C0 = Rlarm.C0:Lerp(CF(0+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999*math.cos(sine/13)),RAD(0+999999999999999999999999999999999999999999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999999999999999999999999*math.cos(sine/13))),.3)
Rhand.C0 = Rhand.C0:Lerp(CF(0+0*math.cos(sine/13),-0.52+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999*math.cos(sine/13))),.3)
Luleg.C0 = Luleg.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-0.42+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
Llleg.C0 = Llleg.C0:Lerp(CF(0+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
Lhleg.C0 = Lhleg.C0:Lerp(CF(0+0*math.cos(sine/13),-0.52+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
Ruleg.C0 = Ruleg.C0:Lerp(CF(0.5+0*math.cos(sine/13),-0.42+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999999999999999*math.cos(sine/13)),RAD(0+999999999999*math.cos(sine/13)),RAD(0+99999999999*math.cos(sine/13))),.3)
Rlleg.C0 = Rlleg.C0:Lerp(CF(0+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+999999999999999999*math.cos(sine/13)),RAD(0+9999999999*math.cos(sine/13)),RAD(0+9999999999999*math.cos(sine/13))),.3)
Rhleg.C0 = Rhleg.C0:Lerp(CF(0+0*math.cos(sine/13),-0.52+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif HRP.Velocity.y < -1 then -- fall
--fall clerp here
Neck.C0 = Neck.C0:Lerp(CF(0+0*math.cos(sine/13),0.8+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+9999999999999999*math.cos(sine/13)),RAD(0+99999999999999999999999*math.cos(sine/13)),RAD(0+99999999*math.cos(sine/13))),.3)
Waist.C0 = Waist.C0:Lerp(CF(0+0*math.cos(sine/13),0.3+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+9999999999999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999*math.cos(sine/13))),.3)
Root.C0 = Root.C0:Lerp(CF(0+0*math.cos(sine/1),-0.8+0*math.cos(sine/1),0+0*math.cos(sine/1))*ANGLES(RAD(0+999999999999999*math.cos(sine/1)),RAD(0+9999999999999999999999999999*math.cos(sine/1)),RAD(0+99999999*math.cos(sine/1))),.3)
Luarm.C0 = Luarm.C0:Lerp(CF(-1+0*math.cos(sine/13),0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+9999999999999*math.cos(sine/13)),RAD(0+99999999999999999999999*math.cos(sine/13)),RAD(0+999999999999999999999999999999*math.cos(sine/13))),.3)
Llarm.C0 = Llarm.C0:Lerp(CF(0+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999999*math.cos(sine/13)),RAD(0+9999999*math.cos(sine/13)),RAD(0+999999999*math.cos(sine/13))),.3)
Lhand.C0 = Lhand.C0:Lerp(CF(0+0*math.cos(sine/13),-0.52+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999*math.cos(sine/13)),RAD(0+999999999*math.cos(sine/13)),RAD(0+999999*math.cos(sine/13))),.3)
Ruarm.C0 = Ruarm.C0:Lerp(CF(1+0*math.cos(sine/13),0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+9999999999999999999999999999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999*math.cos(sine/13)),RAD(0+999999999999999999999*math.cos(sine/13))),.3)
Rlarm.C0 = Rlarm.C0:Lerp(CF(0+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999*math.cos(sine/13)),RAD(0+999999999999999999999999999999999999999999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999999999999999999999999*math.cos(sine/13))),.3)
Rhand.C0 = Rhand.C0:Lerp(CF(0+0*math.cos(sine/13),-0.52+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999*math.cos(sine/13))),.3)
Luleg.C0 = Luleg.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-0.42+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
Llleg.C0 = Llleg.C0:Lerp(CF(0+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
Lhleg.C0 = Lhleg.C0:Lerp(CF(0+0*math.cos(sine/13),-0.52+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
Ruleg.C0 = Ruleg.C0:Lerp(CF(0.5+0*math.cos(sine/13),-0.42+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999999999999999*math.cos(sine/13)),RAD(0+999999999999*math.cos(sine/13)),RAD(0+99999999999*math.cos(sine/13))),.3)
Rlleg.C0 = Rlleg.C0:Lerp(CF(0+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+999999999999999999*math.cos(sine/13)),RAD(0+9999999999*math.cos(sine/13)),RAD(0+9999999999999*math.cos(sine/13))),.3)
Rhleg.C0 = Rhleg.C0:Lerp(CF(0+0*math.cos(sine/13),-0.52+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif HRP.Velocity.Magnitude < 2 then -- idle
--idle clerp here
Neck.C0 = Neck.C0:Lerp(CF(0+0*math.cos(sine/13),0.8+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+9999999999999999*math.cos(sine/13)),RAD(0+99999999999999999999999*math.cos(sine/13)),RAD(0+99999999*math.cos(sine/13))),.3)
Waist.C0 = Waist.C0:Lerp(CF(0+0*math.cos(sine/13),0.3+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+9999999999999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999*math.cos(sine/13))),.3)
Root.C0 = Root.C0:Lerp(CF(0+0*math.cos(sine/1),-0.8+0*math.cos(sine/1),0+0*math.cos(sine/1))*ANGLES(RAD(0+999999999999999*math.cos(sine/1)),RAD(0+9999999999999999999999999999*math.cos(sine/1)),RAD(0+99999999*math.cos(sine/1))),.3)
Luarm.C0 = Luarm.C0:Lerp(CF(-1+0*math.cos(sine/13),0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+9999999999999*math.cos(sine/13)),RAD(0+99999999999999999999999*math.cos(sine/13)),RAD(0+999999999999999999999999999999*math.cos(sine/13))),.3)
Llarm.C0 = Llarm.C0:Lerp(CF(0+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999999*math.cos(sine/13)),RAD(0+9999999*math.cos(sine/13)),RAD(0+999999999*math.cos(sine/13))),.3)
Lhand.C0 = Lhand.C0:Lerp(CF(0+0*math.cos(sine/13),-0.52+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999*math.cos(sine/13)),RAD(0+999999999*math.cos(sine/13)),RAD(0+999999*math.cos(sine/13))),.3)
Ruarm.C0 = Ruarm.C0:Lerp(CF(1+0*math.cos(sine/13),0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+9999999999999999999999999999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999*math.cos(sine/13)),RAD(0+999999999999999999999*math.cos(sine/13))),.3)
Rlarm.C0 = Rlarm.C0:Lerp(CF(0+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999*math.cos(sine/13)),RAD(0+999999999999999999999999999999999999999999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999999999999999999999999*math.cos(sine/13))),.3)
Rhand.C0 = Rhand.C0:Lerp(CF(0+0*math.cos(sine/13),-0.52+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999*math.cos(sine/13))),.3)
Luleg.C0 = Luleg.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-0.42+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
Llleg.C0 = Llleg.C0:Lerp(CF(0+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
Lhleg.C0 = Lhleg.C0:Lerp(CF(0+0*math.cos(sine/13),-0.52+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
Ruleg.C0 = Ruleg.C0:Lerp(CF(0.5+0*math.cos(sine/13),-0.42+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999999999999999*math.cos(sine/13)),RAD(0+999999999999*math.cos(sine/13)),RAD(0+99999999999*math.cos(sine/13))),.3)
Rlleg.C0 = Rlleg.C0:Lerp(CF(0+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+999999999999999999*math.cos(sine/13)),RAD(0+9999999999*math.cos(sine/13)),RAD(0+9999999999999*math.cos(sine/13))),.3)
Rhleg.C0 = Rhleg.C0:Lerp(CF(0+0*math.cos(sine/13),-0.52+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif HRP.Velocity.Magnitude < 20 then -- walk
--walk clerp here
Neck.C0 = Neck.C0:Lerp(CF(0+0*math.cos(sine/13),0.8+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+9999999999999999*math.cos(sine/13)),RAD(0+99999999999999999999999*math.cos(sine/13)),RAD(0+99999999*math.cos(sine/13))),.3)
Waist.C0 = Waist.C0:Lerp(CF(0+0*math.cos(sine/13),0.3+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+9999999999999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999*math.cos(sine/13))),.3)
Root.C0 = Root.C0:Lerp(CF(0+0*math.cos(sine/1),-0.8+0*math.cos(sine/1),0+0*math.cos(sine/1))*ANGLES(RAD(0+999999999999999*math.cos(sine/1)),RAD(0+9999999999999999999999999999*math.cos(sine/1)),RAD(0+99999999*math.cos(sine/1))),.3)
Luarm.C0 = Luarm.C0:Lerp(CF(-1+0*math.cos(sine/13),0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+9999999999999*math.cos(sine/13)),RAD(0+99999999999999999999999*math.cos(sine/13)),RAD(0+999999999999999999999999999999*math.cos(sine/13))),.3)
Llarm.C0 = Llarm.C0:Lerp(CF(0+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999999*math.cos(sine/13)),RAD(0+9999999*math.cos(sine/13)),RAD(0+999999999*math.cos(sine/13))),.3)
Lhand.C0 = Lhand.C0:Lerp(CF(0+0*math.cos(sine/13),-0.52+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999*math.cos(sine/13)),RAD(0+999999999*math.cos(sine/13)),RAD(0+999999*math.cos(sine/13))),.3)
Ruarm.C0 = Ruarm.C0:Lerp(CF(1+0*math.cos(sine/13),0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+9999999999999999999999999999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999*math.cos(sine/13)),RAD(0+999999999999999999999*math.cos(sine/13))),.3)
Rlarm.C0 = Rlarm.C0:Lerp(CF(0+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999*math.cos(sine/13)),RAD(0+999999999999999999999999999999999999999999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999999999999999999999999*math.cos(sine/13))),.3)
Rhand.C0 = Rhand.C0:Lerp(CF(0+0*math.cos(sine/13),-0.52+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999*math.cos(sine/13))),.3)
Luleg.C0 = Luleg.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-0.42+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
Llleg.C0 = Llleg.C0:Lerp(CF(0+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
Lhleg.C0 = Lhleg.C0:Lerp(CF(0+0*math.cos(sine/13),-0.52+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
Ruleg.C0 = Ruleg.C0:Lerp(CF(0.5+0*math.cos(sine/13),-0.42+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999999999999999*math.cos(sine/13)),RAD(0+999999999999*math.cos(sine/13)),RAD(0+99999999999*math.cos(sine/13))),.3)
Rlleg.C0 = Rlleg.C0:Lerp(CF(0+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+999999999999999999*math.cos(sine/13)),RAD(0+9999999999*math.cos(sine/13)),RAD(0+9999999999999*math.cos(sine/13))),.3)
Rhleg.C0 = Rhleg.C0:Lerp(CF(0+0*math.cos(sine/13),-0.52+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif HRP.Velocity.Magnitude > 20 then -- run
--run clerp here
Neck.C0 = Neck.C0:Lerp(CF(0+0*math.cos(sine/13),0.8+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+9999999999999999*math.cos(sine/13)),RAD(0+99999999999999999999999*math.cos(sine/13)),RAD(0+99999999*math.cos(sine/13))),.3)
Waist.C0 = Waist.C0:Lerp(CF(0+0*math.cos(sine/13),0.3+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+9999999999999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999*math.cos(sine/13))),.3)
Root.C0 = Root.C0:Lerp(CF(0+0*math.cos(sine/1),-0.8+0*math.cos(sine/1),0+0*math.cos(sine/1))*ANGLES(RAD(0+999999999999999*math.cos(sine/1)),RAD(0+9999999999999999999999999999*math.cos(sine/1)),RAD(0+99999999*math.cos(sine/1))),.3)
Luarm.C0 = Luarm.C0:Lerp(CF(-1+0*math.cos(sine/13),0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+9999999999999*math.cos(sine/13)),RAD(0+99999999999999999999999*math.cos(sine/13)),RAD(0+999999999999999999999999999999*math.cos(sine/13))),.3)
Llarm.C0 = Llarm.C0:Lerp(CF(0+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999999*math.cos(sine/13)),RAD(0+9999999*math.cos(sine/13)),RAD(0+999999999*math.cos(sine/13))),.3)
Lhand.C0 = Lhand.C0:Lerp(CF(0+0*math.cos(sine/13),-0.52+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999*math.cos(sine/13)),RAD(0+999999999*math.cos(sine/13)),RAD(0+999999*math.cos(sine/13))),.3)
Ruarm.C0 = Ruarm.C0:Lerp(CF(1+0*math.cos(sine/13),0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+9999999999999999999999999999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999*math.cos(sine/13)),RAD(0+999999999999999999999*math.cos(sine/13))),.3)
Rlarm.C0 = Rlarm.C0:Lerp(CF(0+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999*math.cos(sine/13)),RAD(0+999999999999999999999999999999999999999999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999999999999999999999999*math.cos(sine/13))),.3)
Rhand.C0 = Rhand.C0:Lerp(CF(0+0*math.cos(sine/13),-0.52+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999999*math.cos(sine/13)),RAD(0+9999999999999999999999999*math.cos(sine/13))),.3)
Luleg.C0 = Luleg.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-0.42+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
Llleg.C0 = Llleg.C0:Lerp(CF(0+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
Lhleg.C0 = Lhleg.C0:Lerp(CF(0+0*math.cos(sine/13),-0.52+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
Ruleg.C0 = Ruleg.C0:Lerp(CF(0.5+0*math.cos(sine/13),-0.42+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+99999999999999999999*math.cos(sine/13)),RAD(0+999999999999*math.cos(sine/13)),RAD(0+99999999999*math.cos(sine/13))),.3)
Rlleg.C0 = Rlleg.C0:Lerp(CF(0+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+999999999999999999*math.cos(sine/13)),RAD(0+9999999999*math.cos(sine/13)),RAD(0+9999999999999*math.cos(sine/13))),.3)
Rhleg.C0 = Rhleg.C0:Lerp(CF(0+0*math.cos(sine/13),-0.52+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
end
game:GetService('RunService').RenderStepped:Wait()
end
end)()
--Created using Nexo Animator (Premium)