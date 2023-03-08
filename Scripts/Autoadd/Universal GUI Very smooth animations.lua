getgenv().GelatekReanimateConfig = {
    ["AnimationsDisabled"] = false,
    ["R15ToR6"] = true,
    ["PermanentDeath"] = true,
    ["TorsoFling"] = false,
    ["BulletEnabled"] = false,
    ["LoadLibrary"] = false,
    ["NewVelocityMethod"] = false,
    ["DontBreakHairWelds"] = false,
    ["TeleportBackWhenVoided"] = false,
    ["MoreAccurateOffsets"] = false,
    ["DetailedCredits"] = false,
    ["Headless"] = false,
    ["BulletConfig"] = {
        ["RunAfterReanimate"] = true,
        ["LockBulletOnTorso"] = false,
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/StrokeThePea/GelatekReanimate/main/Main.lua"))()
wait(8)
getgenv().LoadLibrary = function(lib) return loadstring(game:HttpGet("https://raw.githubusercontent.com/Roblox/Core-Scripts/master/CoreScriptsRoot/Libraries/" .. lib .. ".lua"))() end
m = game.Players.LocalPlayer
char = m.Character

function Random(num)
    local section=num % 1 * 3;
    local secondary=0.5 * math.pi * (section % 1);
    if section < 1 then
        return 1,1 - math.cos(secondary),1 - math.sin(secondary);
    elseif section < 2 then
        return 1 - math.sin(secondary),1,1 - math.cos(secondary);
    else
        return 1 - math.cos(secondary),1 - math.sin(secondary),1;
    end
end

--//Lol try to figure this one out//
function rainb(hue)
    local section = hue % 1 * 3
    local secondary = 0.5 * math.pi * (section % 1)
    if section < 1 then
        return Color3.new(1, 1 - math.cos(secondary), 1 - math.sin(secondary))
    elseif section < 2 then
        return Color3.new(1 - math.sin(secondary), 1, 1 - math.cos(secondary))
    else
        return Color3.new(1 - math.cos(secondary), 1 - math.sin(secondary), 1)
    end
end

Chillmusic = Instance.new("Sound", workspace)
Chillmusic.Parent = game.Chat
Chillmusic.Volume = 8
Chillmusic.SoundId = "rbxassetid://1221694420"
Chillmusic.Looped = true
Chillmusic:Play()

local txt = Instance.new("BillboardGui", char)
txt.Adornee = char.Head
txt.Name = "_status"
txt.Size = UDim2.new(2, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-9, 8, 0)
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(10, 0, 7, 0)
text.FontSize = "Size24"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "Arcade"
text.TextStrokeColor3 = Color3.new(0, 0, 0)
v = Instance.new("Part")
v.Name = "ColorBrick"
v.Parent = m.Character
v.FormFactor = "Symmetric"
v.Anchored = true
v.CanCollide = false
v.BottomSurface = "Smooth"
v.TopSurface = "Smooth"
v.Size = Vector3.new(10, 5, 3)
v.Transparency = 1
v.CFrame = char.Torso.CFrame
v.BrickColor = BrickColor.new("Really black")
v.Transparency = 1
spawn(function()
TweenService = game:GetService("TweenService")
Colours = {Color3.fromRGB(0,100,200),Color3.fromRGB(4, 175, 236)}
Int = 0
while wait(2) do
    if Int == #Colours then Int = 0 end
    Int = Int+1
    TweenService:Create(text,TweenInfo.new(1),{TextColor3 = Colours[Int]}):Play()
end
end)
v.Shape = "Block"
text.Text = "~Â»Chill AfÂ«~"
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
m = Instance.new("Model", Character)
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
LS = Torso["Left Shoulder"]
LH = Torso["Left Hip"]
RS = Torso["Right Shoulder"]
RH = Torso["Right Hip"]
Face = Head.face
Neck = Torso.Neck
it = Instance.new
attacktype = 1
vt = Vector3.new
cf = CFrame.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
cloaked = false
necko = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false
attackdebounce = false
equipped = false
trispeed = 0.2
attackmode = "none"
local idle = 0
local Anim = "Idle"
Head.face.Texture = "rbxassetid://206844132"

local Trail = Instance.new("Trail",char)
local attachment0 = Instance.new("Attachment",char["Right Arm"])
attachment0.Name = "TrailAttachment0"
attachment0.CFrame = CFrame.new(-0.25,-1,0)
local attachment1 = Instance.new("Attachment",char["Right Arm"])
attachment1.CFrame = CFrame.new(0.25,-1,0)
attachment1.Name = "TrailAttachment1"
Trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
Trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0)),ColorSequenceKeypoint.new(0.2,Color3.new(1,1,0)),ColorSequenceKeypoint.new(0.4,Color3.new(0,1,0)),ColorSequenceKeypoint.new(0.6,Color3.new(0,1,1)),ColorSequenceKeypoint.new(0.8,Color3.new(0,0,1)),ColorSequenceKeypoint.new(1,Color3.new(0,0,1))})
Trail.Lifetime = 0.5
Trail.Attachment0 = attachment0
Trail.Attachment1 = attachment1

local Trail = Instance.new("Trail",char)
local attachment0 = Instance.new("Attachment",char["Left Arm"])
attachment0.Name = "TrailAttachment0"
attachment0.CFrame = CFrame.new(-0.25,-1,0)
local attachment1 = Instance.new("Attachment",char["Left Arm"])
attachment1.CFrame = CFrame.new(0.25,-1,0)
attachment1.Name = "TrailAttachment1"
Trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
Trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0)),ColorSequenceKeypoint.new(0.2,Color3.new(1,1,0)),ColorSequenceKeypoint.new(0.4,Color3.new(0,1,0)),ColorSequenceKeypoint.new(0.6,Color3.new(0,1,1)),ColorSequenceKeypoint.new(0.8,Color3.new(0,0,1)),ColorSequenceKeypoint.new(1,Color3.new(0,0,1))})
Trail.Lifetime = 0.5
Trail.Attachment0 = attachment0
Trail.Attachment1 = attachment1

local Trail = Instance.new("Trail",char)
local attachment0 = Instance.new("Attachment",char["Right Leg"])
attachment0.Name = "TrailAttachment0"
attachment0.CFrame = CFrame.new(-0.25,-1,0)
local attachment1 = Instance.new("Attachment",char["Right Leg"])
attachment1.CFrame = CFrame.new(0.25,-1,0)
attachment1.Name = "TrailAttachment1"
Trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
Trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0)),ColorSequenceKeypoint.new(0.2,Color3.new(1,1,0)),ColorSequenceKeypoint.new(0.4,Color3.new(0,1,0)),ColorSequenceKeypoint.new(0.6,Color3.new(0,1,1)),ColorSequenceKeypoint.new(0.8,Color3.new(0,0,1)),ColorSequenceKeypoint.new(1,Color3.new(0,0,1))})
Trail.Lifetime = 0.5
Trail.Attachment0 = attachment0
Trail.Attachment1 = attachment1

local Trail = Instance.new("Trail",char)
local attachment0 = Instance.new("Attachment",char["Left Leg"])
attachment0.Name = "TrailAttachment0"
attachment0.CFrame = CFrame.new(-0.25,-1,0)
local attachment1 = Instance.new("Attachment",char["Left Leg"])
attachment1.CFrame = CFrame.new(0.25,-1,0)
attachment1.Name = "TrailAttachment1"
Trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
Trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0)),ColorSequenceKeypoint.new(0.2,Color3.new(1,1,0)),ColorSequenceKeypoint.new(0.4,Color3.new(0,1,0)),ColorSequenceKeypoint.new(0.6,Color3.new(0,1,1)),ColorSequenceKeypoint.new(0.8,Color3.new(0,0,1)),ColorSequenceKeypoint.new(1,Color3.new(0,0,1))})
Trail.Lifetime = 0.5
Trail.Attachment0 = attachment0
Trail.Attachment1 = attachment1


Humanoid.Animator.Parent = nil
Character.Animate.Parent = nil
function FindNearestTorso(Position, Distance, SinglePlayer)
 if SinglePlayer then
  return Distance > (SinglePlayer.Torso.CFrame.p - Position).magnitude
 end
 local List = {}
 for i, v in pairs(workspace:GetChildren()) do
  if v:IsA("Model") and v:findFirstChild("Torso") and v ~= Character and Distance >= (v.Torso.Position - Position).magnitude then
   table.insert(List, v)
  end
 end
 return List
end
function lerp(a, b, t)
 return a + (b - a) * t
end
function slerp(a, b, t)
 dot = a:Dot(b)
 if dot > 0.99999 or dot < -0.99999 then
  return t <= 0.5 and a or b
 else
  r = math.acos(dot)
  return (a * math.sin((1 - t) * r) + b * math.sin(t * r)) / math.sin(r)
 end
end
function matrixInterpolate(a, b, t)
 local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
 local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
 local v0 = lerp(Vector3.new(ax, ay, az), Vector3.new(bx, by, bz), t)
 local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t)
 local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t)
 local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t)
 local t = v1:Dot(v2)
 if not (t < 0) and t ~= 0 and not (t > 0) then
  return CFrame.new()
 end
 return CFrame.new(v0.x, v0.y, v0.z, v1.x, v1.y, v1.z, v2.x, v2.y, v2.z, v3.x, v3.y, v3.z)
end
function genWeld(a, b)
 local w = Instance.new("Weld", a)
 w.Part0 = a
 w.Part1 = b
 return w
end
function weld(a, b)
 local weld = Instance.new("Weld")
 weld.Name = "W"
 weld.Part0 = a
 weld.Part1 = b
 weld.C0 = a.CFrame:inverse() * b.CFrame
 weld.Parent = a
 return weld
end
function Lerp(c1, c2, al)
 local com1 = {
  c1.X,
  c1.Y,
  c1.Z,
  c1:toEulerAnglesXYZ()
 }
 local com2 = {
  c2.X,
  c2.Y,
  c2.Z,
  c2:toEulerAnglesXYZ()
 }
 for i, v in pairs(com1) do
  com1[i] = v + (com2[i] - v) * al
 end
 return CFrame.new(com1[1], com1[2], com1[3]) * CFrame.Angles(select(4, unpack(com1)))
end
function clerp(a, b, t)
 local qa = {
  QuaternionFromCFrame(a)
 }
 local qb = {
  QuaternionFromCFrame(b)
 }
 local ax, ay, az = a.x, a.y, a.z
 local bx, by, bz = b.x, b.y, b.z
 local _t = 1 - t
 return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end
function QuaternionFromCFrame(cf)
 local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
 local trace = m00 + m11 + m22
 if trace > 0 then
  local s = math.sqrt(1 + trace)
  local recip = 0.5 / s
  return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
 else
  local i = 0
  if m00 < m11 then
   i = 1
  end
  if m22 > (i == 0 and m00 or m11) then
   i = 2
  end
  if i == 0 then
   local s = math.sqrt(m00 - m11 - m22 + 1)
   local recip = 0.5 / s
   return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
  elseif i == 1 then
   local s = math.sqrt(m11 - m22 - m00 + 1)
   local recip = 0.5 / s
   return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
  elseif i == 2 then
   local s = math.sqrt(m22 - m00 - m11 + 1)
   local recip = 0.5 / s
   return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
  end
 end
end
function QuaternionToCFrame(px, py, pz, x, y, z, w)
 local xs, ys, zs = x + x, y + y, z + z
 local wx, wy, wz = w * xs, w * ys, w * zs
 local xx = x * xs
 local xy = x * ys
 local xz = x * zs
 local yy = y * ys
 local yz = y * zs
 local zz = z * zs
 return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
function QuaternionSlerp(a, b, t)
 local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
 local startInterp, finishInterp
 if cosTheta >= 1.0E-4 then
  if 1 - cosTheta > 1.0E-4 then
   local theta = math.acos(cosTheta)
   local invSinTheta = 1 / math.sin(theta)
   startInterp = math.sin((1 - t) * theta) * invSinTheta
   finishInterp = math.sin(t * theta) * invSinTheta
  else
   startInterp = 1 - t
   finishInterp = t
  end
 elseif 1 + cosTheta > 1.0E-4 then
  local theta = math.acos(-cosTheta)
  local invSinTheta = 1 / math.sin(theta)
  startInterp = math.sin((t - 1) * theta) * invSinTheta
  finishInterp = math.sin(t * theta) * invSinTheta
 else
  startInterp = t - 1
  finishInterp = t
 end
 return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function rayCast(Pos, Dir, Max, Ignore)
 return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
function part(formfactor, parent, reflectance, transparency, brickcolor, name, size)
 local fp = it("Part")
 fp.formFactor = formfactor
 fp.Parent = parent
 fp.Reflectance = reflectance
 fp.Transparency = transparency
 fp.CanCollide = false
 fp.Locked = true
 fp.BrickColor = brickcolor
 fp.Name = name
 fp.Size = size
 fp.Position = Torso.Position
 fp.BottomSurface = "Smooth"
 fp.TopSurface = "Smooth"
 fp:BreakJoints()
 return fp
end
function mesh(Mesh, part, meshtype, meshid, offset, scale)
 local mesh = it(Mesh)
 mesh.Parent = part
 if Mesh == "SpecialMesh" then
  mesh.MeshType = meshtype
  mesh.MeshId = meshid
 end
 mesh.Offset = offset
 mesh.Scale = scale
 return mesh
end
function weld(parent, part0, part1, c0)
 local weld = it("Weld")
 weld.Parent = parent
 weld.Part0 = part0
 weld.Part1 = part1
 weld.C0 = c0
 return weld
end
function rayCast(Pos, Dir, Max, Ignore)
 return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
RSH, LSH = nil, nil
RW, LW = Instance.new("Weld"), Instance.new("Weld")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
function NoOutline(Part)
 Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
end
player = Player
ch = Character
RSH = ch.Torso["Right Shoulder"]
LSH = ch.Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW.Name = "Right Shoulder"
RW.Part0 = ch.Torso
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0)
RW.Part1 = ch["Right Arm"]
RW.Parent = ch.Torso
LW.Name = "Left Shoulder"
LW.Part0 = ch.Torso
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0)
LW.Part1 = ch["Left Arm"]
LW.Parent = ch.Torso
function newWeld(wp0, wp1, wc0x, wc0y, wc0z)
 local wld = Instance.new("Weld", wp1)
 wld.Part0 = wp0
 wld.Part1 = wp1
 wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
newWeld(RootPart, Torso, 0, -1, 0)
Torso.Weld.C1 = CFrame.new(0, -1, 0)
newWeld(Torso, LeftLeg, -0.5, -1, 0)
LeftLeg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(Torso, RightLeg, 0.5, -1, 0)
RightLeg.Weld.C1 = CFrame.new(0, 1, 0)
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
mouse = Player:GetMouse()
m = Instance.new("Model", Character)
local weldBetween = function(a, b)
 local weldd = Instance.new("ManualWeld")
 weldd.Part0 = a
 weldd.Part1 = b
 weldd.C0 = CFrame.new()
 weldd.C1 = b.CFrame:inverse() * a.CFrame
 weldd.Parent = a
 return weldd
end
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.016666666666666666
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
 tf = tf + s
 if tf >= frame then
  if allowframeloss then
   script.Heartbeat:Fire()
   lastframe = tick()
  else
   for i = 1, math.floor(tf / frame) do
    script.Heartbeat:Fire()
   end
   lastframe = tick()
  end
  if tossremainder then
   tf = 0
  else
   tf = tf - frame * math.floor(tf / frame)
  end
 end
end)
function swait(num)
 if num == 0 or num == nil then
  ArtificialHB.Event:wait()
 else
  for i = 0, num do
   ArtificialHB.Event:wait()
  end
 end
end
mouse.KeyDown:connect(function(key)
 if key == "c" then
  repeat
   swait()
   Chillmusic.Volume = Chillmusic.Volume - 0.05
  until Chillmusic.Volume == 0
  Chillmusic:Stop()
  swait()
  Chillmusic2:Play()
  Chillmusic.Volume = 1
 end
end)
mouse.KeyDown:connect(function(key)
 if key == "f" then
  text.Text = "Guys why not just chill?"
  wait(1)
  text.Text = "It's just the way life should be."
  wait(1)
  text.Text = "Chill is life."
  wait(1)
  text.Text = "Chill is love."
  wait(1)
  text.Text = "Chill is for the best."
  wait(1)
  text.Text = "Maybe if you were chill you wouldn't be a skid..."
  wait(3)
  text.Text = "But some people cant handle the chill can they."
  wait(3)
  text.Text = "Chill Af"
 end
end)
mouse.KeyDown:connect(function(key)
 if key == "v" then
  repeat
   swait()
   Chillmusic2.Volume = Chillmusic2.Volume - 0.05
  until Chillmusic2.Volume == 0
  Chillmusic2:Stop()
  swait()
  Chillmusic:Play()
  Chillmusic2.Volume = 1
 end
end)
mouse.KeyDown:connect(function(key)
 if key == "b" then
  text.Text = "Be back scrubs."
  wait(1)
  text.Text = "Afk nibba..."
 end
end)
mouse.KeyDown:connect(function(key)
 if key == "n" then
  text.Text = "K back you nubs's!"
  wait(1)
  text.Text = "Chill Af"
 end
end)
m = Instance.new("ForceField", Character)
m.Visible = false
Character.Humanoid.WalkSpeed = 4
mouse.KeyDown:connect(function(key)
 if string.byte(key) == 48 then
  Swing = 2
  Character.Humanoid.WalkSpeed = 40
 end
end)
mouse.KeyUp:connect(function(key)
 if string.byte(key) == 48 then
  Swing = 1
  Character.Humanoid.WalkSpeed = 4
 end
end)
local sine = 0
local change = 1
local val = 0
spawn(function()
while true do
 swait()
 sine = sine + change
 local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
 local velderp = RootPart.Velocity.y
 hitfloor, posfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
 if equipped == true or equipped == false then
  if attack == false then
   idle = idle + 1
   Character.Humanoid.MaxHealth = math.huge
   Character.Humanoid.Health = math.huge
  else
   idle = 0
  end
  if not (idle >= 500) or attack == false then
  end
  if torvel < 1 and hitfloor ~= nil then
   Anim = "Chill"
   if attack == false then
    Humanoid.CameraOffset = Vector3.new(0, 10.25 - 5.45 * math.cos(sine / 65), 0)
    Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 10.25 - 5.45 * math.cos(sine / 65), 0) * CFrame.Angles(math.rad(90 + 15 * math.sin(sine / 60)), math.rad(0), math.rad(0)), 0.8)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20 + 20 * math.cos(sine / 60)), math.rad(0 + 4 * math.sin(sine / 60)), math.rad(0)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-90 + 25 * math.cos(sine / 60)), math.rad(0 + 20 * math.sin(sine / 60)), math.rad(0 + 55 * math.sin(sine / 60))), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-90 + 25 * math.cos(sine / 60)), math.rad(-20 - 20 * math.sin(sine / 60)), math.rad(0 - 55 * math.sin(sine / 60))), 0.3)
    LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -0.86 + 0.03 * math.cos(sine / 65), -0.4) * CFrame.Angles(math.rad(15 - 45 * math.cos(sine / 70)), math.rad(3), math.rad(-4)), 0.8)
    RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1 + 0.05 * math.cos(sine / 65), -0.4) * CFrame.Angles(math.rad(15 - 35 * math.cos(sine / 65)), math.rad(-3), math.rad(4)), 0.8)
   end
  elseif torvel > 2 and torvel < 22 and hitfloor ~= nil then
   Anim = "Walk"
   if attack == false then
    Humanoid.CameraOffset = Vector3.new(0, 6 - 2.55 * math.cos(sine / 48.5), 0)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), 0.2)
    Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 6 - 2.55 * math.cos(sine / 48.5), 0) * CFrame.Angles(math.rad(-90 + 5 * math.cos(sine / 45)), math.rad(180 * math.cos(sine / 48.5)), math.rad(0)), 0.8)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-4 + 2 * math.sin(sine / 48)), math.rad(0), math.rad(0)), 0.2)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5 + 0.1 * math.cos(sine / 45), 0) * angles(math.rad(90), math.rad(0), math.rad(90 - 20.5 * math.cos(sine / 45))), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5 + 0.1 * math.cos(sine / 45), 0) * angles(math.rad(90), math.rad(0), math.rad(-90 + 20.5 * math.cos(sine / 45))), 0.3)
    LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1 - 0.05 * math.cos(sine / 45), 0) * CFrame.Angles(math.rad(0), math.rad(3), math.rad(-4)), 0.8)
    RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1 + 0.05 * math.cos(sine / 45), 0) * CFrame.Angles(math.rad(0), math.rad(-3), math.rad(4)), 0.8)
   end
  elseif torvel >= 22 and hitfloor ~= nil then
   Anim = "Run"
   if attack == false then
    Humanoid.CameraOffset = Vector3.new(0, 6 - 1.55 * math.cos(sine / 68.5), 0)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 6 - 1.55 * math.cos(sine / 68.5), -0.2) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.2)
    Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 6 - 1.55 * math.cos(sine / 68.5), 0) * CFrame.Angles(math.rad(-40 + 20 * math.sin(sine / 68.5)), 0, 0), 0.8)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-12 + 17 * math.cos(sine / 68.5)), math.rad(0), math.rad(0)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-90), math.rad(0), math.rad(40 - 20 * math.cos(sine / 68.5))), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-90), math.rad(0), math.rad(-40 + 20 * math.cos(sine / 68.5))), 0.2)
    LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -0.87, -0.25) * CFrame.Angles(math.rad(-45 - 10 * math.cos(sine / 68.5)), math.rad(0), math.rad(0)), 0.8)
    RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, -0.1) * CFrame.Angles(math.rad(-35 - 10 * math.cos(sine / 68.5)), math.rad(0), math.rad(0)), 0.8)
   end
  end
 end
end
end)



-- Objects

local Chill_Gui_Bro = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
local Header = Instance.new("Frame")
local BackGround = Instance.new("Frame")
local Chill_Gui_Label = Instance.new("TextLabel")
local Play_ID_Button = Instance.new("TextButton")
local ID_Box = Instance.new("TextBox")
local Set_Vol_Button = Instance.new("TextButton")
local Vol_Box = Instance.new("TextBox")
local Set_Tpos_Button = Instance.new("TextButton")
local Tpos_Box = Instance.new("TextBox")
local Set_Text_Button = Instance.new("TextButton")
local Tpos_Box_2 = Instance.new("TextBox")
local Toggle_Chat_Button = Instance.new("TextButton")
local Chat_Toggle_Label = Instance.new("TextLabel")
local Current_Song_Label = Instance.new("TextLabel")

-- Properties

Chill_Gui_Bro.Name = "Chill_Gui_Bro"

Header.Name = "Header"
Header.Parent = Chill_Gui_Bro
Header.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Header.BorderSizePixel = 0
Header.Draggable = true
Header.Active = true
Header.Selectable = true
Header.Position = UDim2.new(0.469539374, 0, 0.147921771, 0)
Header.Size = UDim2.new(0, 250, 0, 45)

BackGround.Name = "BackGround"
BackGround.Parent = Header
BackGround.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
BackGround.BorderSizePixel = 0
BackGround.Draggable = true
BackGround.Position = UDim2.new(0, 0, 1, 0)
BackGround.Size = UDim2.new(0, 250, 0, 299)

Chill_Gui_Label.Name = "Chill_Gui_Label"
Chill_Gui_Label.Parent = Header
Chill_Gui_Label.BackgroundColor3 = Color3.new(1, 1, 1)
Chill_Gui_Label.BackgroundTransparency = 1
Chill_Gui_Label.BorderSizePixel = 0
Chill_Gui_Label.Draggable = true
Chill_Gui_Label.Size = UDim2.new(0, 250, 0, 45)
Chill_Gui_Label.Font = Enum.Font.Arcade
Chill_Gui_Label.Text = "~Â»Chill GuiÂ«~"
Chill_Gui_Label.TextColor3 = Color3.new(1, 1, 1)
Chill_Gui_Label.TextScaled = true
Chill_Gui_Label.TextSize = 14
Chill_Gui_Label.TextWrapped = true

Play_ID_Button.Name = "Play_ID_Button"
Play_ID_Button.Parent = Header
Play_ID_Button.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Play_ID_Button.BorderColor3 = Color3.new(0, 0, 0)
Play_ID_Button.BorderSizePixel = 0
Play_ID_Button.Position = UDim2.new(0.0520000011, 0, 1.22222221, 0)
Play_ID_Button.Size = UDim2.new(0, 68, 0, 35)
Play_ID_Button.Font = Enum.Font.Arcade
Play_ID_Button.Text = "Play ID"
Play_ID_Button.TextColor3 = Color3.new(1, 1, 1)
Play_ID_Button.TextSize = 20
Play_ID_Button.TextWrapped = true

ID_Box.Name = "ID_Box"
ID_Box.Parent = Header
ID_Box.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
ID_Box.BorderColor3 = Color3.new(0, 0, 0)
ID_Box.BorderSizePixel = 0
ID_Box.Position = UDim2.new(0.356000006, 0, 1.22222221, 0)
ID_Box.Size = UDim2.new(0, 140, 0, 35)
ID_Box.Font = Enum.Font.Arcade
ID_Box.Text = "ID here"
ID_Box.TextColor3 = Color3.new(1, 1, 1)
ID_Box.TextSize = 35
ID_Box.TextWrapped = true

Set_Vol_Button.Name = "Set_Vol_Button"
Set_Vol_Button.Parent = Header
Set_Vol_Button.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Set_Vol_Button.BorderColor3 = Color3.new(0, 0, 0)
Set_Vol_Button.BorderSizePixel = 0
Set_Vol_Button.Position = UDim2.new(0.0520000011, 0, 2.20000005, 0)
Set_Vol_Button.Size = UDim2.new(0, 68, 0, 35)
Set_Vol_Button.Font = Enum.Font.Arcade
Set_Vol_Button.Text = "Set Vol"
Set_Vol_Button.TextColor3 = Color3.new(1, 1, 1)
Set_Vol_Button.TextSize = 20
Set_Vol_Button.TextWrapped = true

Vol_Box.Name = "Vol_Box"
Vol_Box.Parent = Header
Vol_Box.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Vol_Box.BorderColor3 = Color3.new(0, 0, 0)
Vol_Box.BorderSizePixel = 0
Vol_Box.Position = UDim2.new(0.356000006, 0, 2.20000005, 0)
Vol_Box.Size = UDim2.new(0, 140, 0, 35)
Vol_Box.Font = Enum.Font.Arcade
Vol_Box.Text = "Volume"
Vol_Box.TextColor3 = Color3.new(1, 1, 1)
Vol_Box.TextSize = 35
Vol_Box.TextWrapped = true

Set_Tpos_Button.Name = "Set_Tpos_Button"
Set_Tpos_Button.Parent = Header
Set_Tpos_Button.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Set_Tpos_Button.BorderColor3 = Color3.new(0, 0, 0)
Set_Tpos_Button.BorderSizePixel = 0
Set_Tpos_Button.Position = UDim2.new(0.0520000011, 0, 3.24444437, 0)
Set_Tpos_Button.Size = UDim2.new(0, 68, 0, 35)
Set_Tpos_Button.Font = Enum.Font.Arcade
Set_Tpos_Button.Text = "Set Tpos"
Set_Tpos_Button.TextColor3 = Color3.new(1, 1, 1)
Set_Tpos_Button.TextSize = 18
Set_Tpos_Button.TextWrapped = true

Tpos_Box.Name = "Tpos_Box"
Tpos_Box.Parent = Header
Tpos_Box.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Tpos_Box.BorderColor3 = Color3.new(0, 0, 0)
Tpos_Box.BorderSizePixel = 0
Tpos_Box.Position = UDim2.new(0.356000006, 0, 3.24444437, 0)
Tpos_Box.Size = UDim2.new(0, 140, 0, 35)
Tpos_Box.Font = Enum.Font.Arcade
Tpos_Box.Text = "Time Position"
Tpos_Box.TextColor3 = Color3.new(1, 1, 1)
Tpos_Box.TextSize = 20
Tpos_Box.TextWrapped = true

Set_Text_Button.Name = "Set_Text_Button"
Set_Text_Button.Parent = Header
Set_Text_Button.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Set_Text_Button.BorderColor3 = Color3.new(0, 0, 0)
Set_Text_Button.BorderSizePixel = 0
Set_Text_Button.Position = UDim2.new(0.0600000024, 0, 4.22222233, 0)
Set_Text_Button.Size = UDim2.new(0, 68, 0, 35)
Set_Text_Button.Font = Enum.Font.Arcade
Set_Text_Button.Text = "Set Text"
Set_Text_Button.TextColor3 = Color3.new(1, 1, 1)
Set_Text_Button.TextSize = 18
Set_Text_Button.TextWrapped = true

Tpos_Box_2.Name = "Tpos_Box"
Tpos_Box_2.Parent = Header
Tpos_Box_2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Tpos_Box_2.BorderColor3 = Color3.new(0, 0, 0)
Tpos_Box_2.BorderSizePixel = 0
Tpos_Box_2.Position = UDim2.new(0.356000006, 0, 4.22222233, 0)
Tpos_Box_2.Size = UDim2.new(0, 140, 0, 35)
Tpos_Box_2.Font = Enum.Font.Arcade
Tpos_Box_2.Text = "Text"
Tpos_Box_2.TextColor3 = Color3.new(1, 1, 1)
Tpos_Box_2.TextSize = 20
Tpos_Box_2.TextWrapped = true

Toggle_Chat_Button.Name = "Toggle_Chat_Button"
Toggle_Chat_Button.Parent = Header
Toggle_Chat_Button.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Toggle_Chat_Button.BorderColor3 = Color3.new(0, 0, 0)
Toggle_Chat_Button.BorderSizePixel = 0
Toggle_Chat_Button.Position = UDim2.new(0.0579999983, 0, 5.26666689, 0)
Toggle_Chat_Button.Size = UDim2.new(0, 97, 0, 35)
Toggle_Chat_Button.Font = Enum.Font.Arcade
Toggle_Chat_Button.Text = "Toggle Chat"
Toggle_Chat_Button.TextColor3 = Color3.new(1, 1, 1)
Toggle_Chat_Button.TextSize = 20
Toggle_Chat_Button.TextWrapped = true

Chat_Toggle_Label.Name = "Chat_Toggle_Label"
Chat_Toggle_Label.Parent = Header
Chat_Toggle_Label.BackgroundColor3 = Color3.new(1, 1, 1)
Chat_Toggle_Label.BackgroundTransparency = 0.89999997615814
Chat_Toggle_Label.BorderColor3 = Color3.new(1, 1, 1)
Chat_Toggle_Label.Position = UDim2.new(0.540000021, 0, 5.26666689, 0)
Chat_Toggle_Label.Size = UDim2.new(0, 94, 0, 35)
Chat_Toggle_Label.Font = Enum.Font.Arcade
Chat_Toggle_Label.Text = "~Â»FalseÂ«~"
Chat_Toggle_Label.TextColor3 = Color3.new(1, 1, 1)
Chat_Toggle_Label.TextScaled = true
Chat_Toggle_Label.TextSize = 14
Chat_Toggle_Label.TextWrapped = true

Current_Song_Label.Name = "Current_Song_Label"
Current_Song_Label.Parent = Header
Current_Song_Label.BackgroundColor3 = Color3.new(1, 1, 1)
Current_Song_Label.BackgroundTransparency = 0.89999997615814
Current_Song_Label.BorderColor3 = Color3.new(1, 1, 1)
Current_Song_Label.Position = UDim2.new(0.0520000011, 0, 6.64444447, 0)
Current_Song_Label.Size = UDim2.new(0, 225, 0, 35)
Current_Song_Label.Font = Enum.Font.Arcade
Current_Song_Label.Text = "~Â»Current Song: NoneÂ«~"
Current_Song_Label.TextColor3 = Color3.new(1, 1, 1)
Current_Song_Label.TextScaled = true
Current_Song_Label.TextSize = 14
Current_Song_Label.TextWrapped = true

Play_ID_Button.MouseButton1Down:Connect(function()
if tonumber(ID_Box.Text) then
 Chillmusic:Stop()
 Chillmusic.SoundId='rbxassetid://'..tonumber(ID_Box.Text)
 Chillmusic:Play()
 currentsong = game:GetService("MarketplaceService"):GetProductInfo(tonumber(ID_Box.Text)).Name
 text.Text = "~Â»Chill AfÂ«~ Now Playing: "..currentsong
 Current_Song_Label.Text = "~Â»Current Song: "..currentsong.."Â«~"
wait(4)
text.Text = "~Â»Fell Apart AFÂ«~"
end
end)
local ischatting = false

Set_Vol_Button.MouseButton1Down:Connect(function()

 Chillmusic.Volume = tonumber(Vol_Box.Text)
end)

Set_Tpos_Button.MouseButton1Down:Connect(function()

 Chillmusic.TimePosition = tonumber(Tpos_Box.Text)
end)

Set_Text_Button.MouseButton1Down:Connect(function()

 text.Text = "~Â»"..Tpos_Box_2.Text.."Â«~"
end)

Toggle_Chat_Button.MouseButton1Down:Connect(function()
if ischatting == false then
ischatting = true
Chat_Toggle_Label.Text = "~Â»TrueÂ«~"
spawn(function()
game.Players.LocalPlayer.Chatted:connect(function(msg)
for i = 0, msg:len(), 1 do
 text.Text = "~Â»"..msg:sub(0, i).."Â«~"
end
wait(3)
text.Text = "~Â»Fell Apart AFÂ«~"
end)
end)
else
ischatting = false
Chat_Toggle_Label.Text = "~Â»FalseÂ«~"
end
end)