clickfling = true -- set this to false if u dont want click fling or use torso fling

function rmesh(a)
if not (workspace[game.Players.LocalPlayer.Name][a].Handle:FindFirstChild('Mesh') or workspace[game.Players.LocalPlayer.Name][a].Handle:FindFirstChild('SpecialMesh')) then return end
old=game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character=workspace[game.Players.LocalPlayer.Name]
for i,v in next, workspace[game.Players.LocalPlayer.Name]:FindFirstChild(a).Handle:GetDescendants() do
if v:IsA('Mesh') or v:IsA('SpecialMesh') then
v:Remove()
end
end
for i = 1 , 2 do
game.Players.LocalPlayer.Character=old
end
end

local plr = game.Players.LocalPlayer local char = plr.Character local srv = game:GetService('RunService') local ct = {} local te = table.insert local m = plr:GetMouse()  if char:FindFirstChild('Pal Hair') then else return end  _G.Jitter=Vector3.new(0,30,0)  for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do if v:IsA("BasePart") and v.Name ~= 'HumanoidRootPart' then  bf=Instance.new('BodyForce',v) bf.Force=Vector3.new(50,50,50) te(ct,game:GetService("RunService").Heartbeat:connect(function() pcall(function() v.Velocity = _G.Jitter v.BodyForce.Force=Vector3.new(50,50,50) game.Players.LocalPlayer.ReplicationFocus=workspace sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge) sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",9e9) end) end)) end end  char.Archivable = true fl=Instance.new('Folder',char) fl.Name = 'ArmFling' local reanim = char:Clone() char.Humanoid:ChangeState(16) char.HumanoidRootPart:Destroy()  for i,v in next, char.Humanoid:GetPlayingAnimationTracks() do v:Stop() end char.Animate:Remove()  hats=0 function create(part, parent, p, r) hats=hats+1 Instance.new("Attachment",part) Instance.new("AlignPosition",part) Instance.new("AlignOrientation",part) Instance.new("Attachment",parent) part.Attachment.Name = part.Name..hats parent.Attachment.Name = part.Name..hats part.AlignPosition.Attachment0 = part[part.Name..hats] part.AlignOrientation.Attachment0 = part[part.Name..hats] part.AlignPosition.Attachment1 = parent[part.Name..hats] part.AlignOrientation.Attachment1 = parent[part.Name..hats] parent[part.Name..hats].Position = p or Vector3.new() part[part.Name..hats].Orientation = r or Vector3.new() part.AlignPosition.MaxForce = 999999999 part.AlignPosition.MaxVelocity = math.huge part.AlignPosition.ReactionForceEnabled = false part.AlignPosition.Responsiveness = math.huge part.AlignOrientation.Responsiveness = math.huge part.AlignPosition.RigidityEnabled = false part.AlignOrientation.MaxTorque = 999999999 end  function Pos(part, parent, p) Instance.new("Attachment",part) Instance.new("AlignPosition",part) Instance.new("Attachment",parent) part.Attachment.Name = part.Name parent.Attachment.Name = part.Name part.AlignPosition.Attachment0 = part[part.Name] part.AlignPosition.Attachment1 = parent[part.Name] parent[part.Name].Position = p or Vector3.new() part.AlignPosition.MaxForce = 999999999*10 part.AlignPosition.MaxVelocity = math.huge part.AlignPosition.ReactionForceEnabled = false part.AlignPosition.Responsiveness = math.huge part.AlignPosition.RigidityEnabled = false end  function nc(p) if p:IsA('BasePart') or p:IsA('Part') then te(ct,srv.Stepped:Connect(function() p.CanCollide=false end)) te(ct,srv.RenderStepped:Connect(function() p.CanCollide=false end)) else print('Cannot noclip '..p) end end  function af() for i,v in next, game.Players:GetDescendants() do if v:IsA('Player') and v.Name ~= game.Players.LocalPlayer.Name then for _,c in next, v.Character:GetDescendants() do if c:IsA('BasePart') and v.Parent== char then noo=Instance.new('NoCollisionConstraint',c) noo.Part1=char['Torso'] noo.Part0=c noo2=Instance.new('NoCollisionConstraint',c) noo2.Part1=char['Head'] noo2.Part0=c end end end end end  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') or v:IsA('Decal') then v.Transparency = 1 end end  for i,v in next, char:GetDescendants() do if v:IsA('BasePart') then nc(v) end end  for i,v in next, char:GetDescendants() do if v:IsA('Accessory') and v.Name ~= 'Pal Hair' then v.Handle:BreakJoints() create(v.Handle,reanim[v.Name].Handle) end end  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') then nc(v) end end  for i,v in next, char:GetDescendants() do if v:IsA('Motor6D') and v.Name ~= 'Neck' then v:Destroy() end end  for i,v in next, char:GetDescendants() do if v:IsA('BasePart') and v.Name ~= 'Right Leg' and v.Name ~= 'Head' and v.Parent == char then create(v,reanim[v.Name]) end end  function flinger(p) f=Instance.new('BodyAngularVelocity',p) f.P=9e9*10 f.AngularVelocity = Vector3.new(9e9*10,9e9*10,9e9*10) f.MaxTorque=Vector3.new(9e9*10,0,0) return f end  Pos(char['Right Leg'],reanim['Torso']) fliiiin=flinger(char['Right Leg'])  char['Pal Hair'].Handle:BreakJoints() char['Pal Hair'].Handle.Mesh:Destroy()  create(char['Pal Hair'].Handle,reanim['Right Leg'],Vector3.new(),Vector3.new(90,0,0))  reanim.Animate.Disabled=true  reanim.Parent=fl  sh=false  fp=Instance.new('Part',reanim) fp.Name='FlingPart' fp.CanCollide=false fp.Transparency=1 if clickfling then te(ct,m.Button1Down:Connect(function() sh=true end))  te(ct,m.Button1Up:Connect(function() sh=false end)) end te(ct,srv.Heartbeat:Connect(function() m.TargetFilter=char if sh then fp.CFrame=CFrame.new(m.Hit.p) char['Right Leg'].Position=fp.Position else fp.CFrame=char.Torso.CFrame*CFrame.new(0,0,0) char['Right Leg'].Position=fp.Position end end))  plr.Character=reanim workspace.Camera.CameraSubject=reanim  HumanDied=false  te(ct,reanim.Humanoid.Died:Connect(function() HumanDied=true fliiiin:Destroy() reanim.HumanoidRootPart.Anchored=true old=reanim.HumanoidRootPart.CFrame reanim.HumanoidRootPart.CFrame=old wait() reanim.HumanoidRootPart.CFrame=old char.Humanoid:Destroy() Instance.new('Humanoid',char) plr.Character=char char:BreakJoints() game.Players:Chat('-gr') for i,v in next, ct do v:Disconnect() end end))

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

reanim = game.Players.LocalPlayer.Character

function hat(h,p,c1,c0,m)
reanim[h].Handle.AccessoryWeld.Part1=reanim[p]
reanim[h].Handle.AccessoryWeld.C1=c1 or CFrame.new()
reanim[h].Handle.AccessoryWeld.C0=reanim[h].Handle.AccessoryWeld.C0:Lerp(c0 or CFrame.new(),1)
if m == true then
rmesh(h)
end
end

m=game.Players.LocalPlayer:GetMouse()
RJ = reanim.HumanoidRootPart.RootJoint
RS = reanim.Torso['Right Shoulder']
LS = reanim.Torso['Left Shoulder']
RH = reanim.Torso['Right Hip']
LH = reanim.Torso['Left Hip']
Root = reanim.HumanoidRootPart
NECK = reanim.Torso.Neck
NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C1 = CF(0,-1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))

-- for modes u can go in this link : https://Nexo.notxeneon15.repl.co/nexo/modes.lua

coroutine.wrap(function()
while true do -- anim changer
if HumanDied then break end
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
if reanim.Humanoid.Jump then -- jump
--jump clerp here
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
--fall clerp here
elseif Root.Velocity.Magnitude < 2 then -- idle
hat('Nebula Blade','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),1.47+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(89.64+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
--NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),0.39+0.5*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(28.51+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-154.89+0*math.cos(sine/10)),math.rad(-9.7+0*math.cos(sine/10)),math.rad(-32.62+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(211.91+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(36.15+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-300.09+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(5.58+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(59.08+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-9.7+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk
hat('Nebula Blade','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),1.47+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(89.64+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
--NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),0.39+0.5*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(28.51+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-154.89+0*math.cos(sine/10)),math.rad(-9.7+0*math.cos(sine/10)),math.rad(-32.62+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(211.91+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(36.15+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-300.09+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(5.58+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(59.08+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-9.7+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude > 20 then -- run
--run clerp here
end
srv.RenderStepped:Wait()
end
end)()
--Created using Nexo Animator V4 MADE BY REDMOON