--hat needed: https://www.roblox.com/catalog/5410674378/METAL-x-LIGHTSEER-77
--// SETTINGS \\ --

local Fling = true --// Recommended: true
local FlingBlockInvisible = false --// Recommended: false (So you can see the flinging block)
local HighlightFlingBlock = false --// Recommended: true
local FlingHighlightColor = Color3.fromRGB(55,55,255) --// First is R, Second is G, Third is B
local GunHatId =  -- // (https://www.roblox.com/catalog/5410674378/METAL-x-LIGHTSEER-77)
--// GunHatId is the HatId you will use as the gun for the script, you must have the hat equipped.




-- // MAIN \\ --

local HAT_NAME = game:GetObjects("rbxassetid://"..tostring(GunHatId))[1].Name

-- // Uses Mizt's bypass \\ --

Bypass = "death"
loadstring(game:GetObjects("rbxassetid://5325226148")[1].Source)()

local IsDead = false
local StateMover = true

local playerss = workspace.non
local bbv,bullet
if Bypass == "death" then
	bullet = game.Players.LocalPlayer.Character["Torso"]
	bullet.Transparency = (FlingBlockInvisible ~= true and 0 or 1)
	bullet.Massless = true
	if bullet:FindFirstChildOfClass("Attachment") then
		for _,v in pairs(bullet:GetChildren()) do
			if v:IsA("Attachment") then
				v:Destroy()
			end
		end
	end

	bbv = Instance.new("BodyPosition",bullet)
    bbv.Position = playerss.Torso.CFrame.p
end

if Bypass == "death" then
coroutine.wrap(function()
	while true do
		if not playerss or not playerss:FindFirstChildOfClass("Humanoid") or playerss:FindFirstChildOfClass("Humanoid").Health <= 0 then IsDead = true; return end
		if StateMover then
			bbv.Position = playerss.Torso.CFrame.p
    		bullet.Position = playerss.Torso.CFrame.p
		end
		game:GetService("RunService").RenderStepped:wait()
	end
end)()
end

--[[local force = Instance.new("BodyForce",bullet)
force.Force = Vector3.new(800,800,800)]]--

if HighlightFlingBlock ~= false then
    local Highlight = Instance.new("SelectionBox")
    Highlight.Adornee = bullet
    Highlight.Color3 = (typeof(FlingHighlightColor)=="Color3" and FlingHighlightColor) or (Color3.fromRGB(55,55,255))
    Highlight.Parent = bullet
    Highlight.Name = "HighlightBox"
end

bbav = Instance.new("BodyAngularVelocity",bullet)
    bbav.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
    bbav.P = 100000000000000000000000000000
    bbav.AngularVelocity = Vector3.new(10000000000000000000000000000000,100000000000000000000000000,100000000000000000)

local CDDF = {}
local DamageFling = function(DmgPer)
    if Fling ~= true then return end
	if IsDead or Bypass ~= "death" or (DmgPer.Name == playerss.Name and DmgPer.Name == "non") or CDDF[DmgPer] or not DmgPer or not DmgPer:FindFirstChildOfClass("Humanoid") or DmgPer:FindFirstChildOfClass("Humanoid").Health <= 0 then return end
	CDDF[DmgPer] = true; StateMover = false
	local PosFling = (DmgPer:FindFirstChild("HumanoidRootPart") and DmgPer:FindFirstChild("HumanoidRootPart") .CFrame.p) or (DmgPer:FindFirstChildOfClass("Part") and DmgPer:FindFirstChildOfClass("Part").CFrame.p)
    bullet.Rotation = playerss.Torso.Rotation
    bbav = Instance.new("BodyAngularVelocity",bullet)
    bbav.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
    bbav.P = 100000000000000000000000000000
    bbav.AngularVelocity = Vector3.new(10000000000000000000000000000000,100000000000000000000000000,100000000000000000)

	for _=1,15 do
		bbv.Position = PosFling
		bullet.Position = PosFling
		wait(0.03)
	end
	bbav:Destroy()
	bbv.Position = playerss.Torso.CFrame.p
    bullet.Position = playerss.Torso.CFrame.p
	CDDF[DmgPer] = false; StateMover = true
end

wait(.2)
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,30,0)
wait(0.5)
end)
end
end

local Aligns = 0
function Align(Part0,Part1,Position,Rotation)
    Aligns = Aligns + 1
	local a0,a1 = Instance.new("Attachment",Part0), Instance.new("Attachment",Part1)
	a1.Position = Position or Vector3.new()
	a1.Rotation = Rotation or Vector3.new()
	local ap = Instance.new("AlignPosition", Part0)
	ap.Attachment0 = a0
	ap.Attachment1 = a1
	local ao = Instance.new("AlignOrientation", Part0)
	ao.Name = "AO-"..Aligns
	ap.Name = "AP-"..Aligns
	ao.Attachment0 = a0
	ao.Attachment1 = a1
	ap.ApplyAtCenterOfMass = true;
	ap.MaxForce = 67752;
	ap.MaxVelocity = math.huge/9e110;
	ap.ReactionForceEnabled = false;
	ap.Responsiveness = 200;
	ap.RigidityEnabled = false;
	ao.MaxAngularVelocity = math.huge/9e110;
	ao.MaxTorque = 67752;
	ao.PrimaryAxisOnly = false;
	ao.ReactionTorqueEnabled = false;
	ao.Responsiveness = 200;
	ao.RigidityEnabled = false;
	return a1
end

local HumanoidIsDead = false

local Player=game.Players.LocalPlayer
local Character=workspace.non
local Gun = Character[HAT_NAME]
local GunHandle = Gun.Handle
GunHandle.AccessoryWeld:Destroy()
GunHandle.SpecialMesh:Destroy()
wait()
GunHandle.Parent=workspace
local hum = Character.Humanoid
local LeftArm=Character["Left Arm"]
local LeftLeg=Character["Left Leg"]
local RightArm=Character["Right Arm"]
local RightLeg=Character["Right Leg"]
local Root=Character["HumanoidRootPart"]
local Head=Character["Head"]
local Torso=Character["Torso"]
local Neck=Torso["Neck"]
local mouse = Player:GetMouse()
local walking = false
local jumping = false
local attacking = false
local firsttime = false
local tauntdebounce = false
local position = nil
local MseGuide = true
local running = false
local settime = 0
local sine = 0
local t = 0
local ws = 18
local change = 1
local combo1 = true
local equip = false
local dgs = 75
local combo2 = false
local switch1 = true
local switch2 = false
local firsttime2 = false
local combo3 = false
local gunallowance = false
local shooting = false
local RunSrv = game:GetService("RunService")
local RenderStepped = game:GetService("RunService").RenderStepped
local removeuseless = game:GetService("Debris")

coroutine.wrap(function()
	while true do
		wait()
		if not Character or not Character:FindFirstChild("Humanoid") or Character:FindFirstChild("Humanoid").Health <= 0 then
			HumanoidIsDead = true
			break
		end
	end
end)()

local HEADLERP = Instance.new("ManualWeld")
HEADLERP.Parent = Head
HEADLERP.Part0 = Head
HEADLERP.Part1 = Head
HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local TORSOLERP = Instance.new("ManualWeld")
TORSOLERP.Parent = Root
TORSOLERP.Part0 = Torso
TORSOLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local ROOTLERP = Instance.new("ManualWeld")
ROOTLERP.Parent = Root
ROOTLERP.Part0 = Root
ROOTLERP.Part1 = Torso
ROOTLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local RIGHTARMLERP = Instance.new("ManualWeld")
RIGHTARMLERP.Parent = RightArm
RIGHTARMLERP.Part0 = RightArm
RIGHTARMLERP.Part1 = Torso
RIGHTARMLERP.C0 = CFrame.new(-1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local LEFTARMLERP = Instance.new("ManualWeld")
LEFTARMLERP.Parent = LeftArm
LEFTARMLERP.Part0 = LeftArm
LEFTARMLERP.Part1 = Torso
LEFTARMLERP.C0 = CFrame.new(1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local RIGHTLEGLERP = Instance.new("ManualWeld")
RIGHTLEGLERP.Parent = RightLeg
RIGHTLEGLERP.Part0 = RightLeg
RIGHTLEGLERP.Part1 = Torso
RIGHTLEGLERP.C0 = CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local LEFTLEGLERP = Instance.new("ManualWeld")
LEFTLEGLERP.Parent = LeftLeg
LEFTLEGLERP.Part0 = LeftLeg
LEFTLEGLERP.Part1 = Torso
LEFTLEGLERP.C0 = CFrame.new(0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local function weldBetween(a, b)
    local weld = Instance.new("ManualWeld", a)
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    return weld
end

function MAKETRAIL(PARENT,POSITION1,POSITION2,LIFETIME,COLOR)
A = Instance.new("Attachment", PARENT)
A.Position = POSITION1
A.Name = "A"
B = Instance.new("Attachment", PARENT)
B.Position = POSITION2
B.Name = "B"
tr1 = Instance.new("Trail", PARENT)
tr1.Attachment0 = A
tr1.Attachment1 = B
tr1.Enabled = true
tr1.Lifetime = LIFETIME
tr1.TextureMode = "Static"
tr1.LightInfluence = 0
tr1.Color = COLOR
tr1.Transparency = NumberSequence.new(0, 1)
end

tommygun = Instance.new("Part",Character)
tommygun.Size = Vector3.new(2,2,2)
tommygun.CFrame = RightArm.CFrame
tommygun.CanCollide = false
tommygun.Transparency=1
tommygunweld = Instance.new("Weld",tommygun)
GUN_A1=Align(GunHandle,tommygun,Vector3.new(),Vector3.new(115,-100,90))
tommygunweld.Part0 = tommygun
tommygunweld.Part1 = RightArm
tommygunweld.C0 = tommygun.CFrame:inverse() * RightArm.CFrame * CFrame.new(0,-.80,1.25) * CFrame.Angles(math.rad(98),math.rad(0),0)
mtommygun = Instance.new("SpecialMesh", tommygun)
mtommygun.MeshType = "FileMesh"
mtommygun.Scale = Vector3.new(1, 1, 1)
mtommygun.MeshId,mtommygun.TextureId = 'http://www.roblox.com/asset/?id=116679805','http://www.roblox.com/asset/?id=116679995'
shootbox = Instance.new("Part",Character)
shootbox.Size = Vector3.new(.2,.2,.2)
shootbox.Transparency=1
shootbox.CanCollide = false
shootbox.Transparency = 1
shootbox.CFrame = tommygun.CFrame
shootboxweld = weldBetween(shootbox,tommygun)
shootboxweld.C0 = CFrame.new(0,-.05,2.62)
light = Instance.new("PointLight", shootbox)
light.Color = BrickColor.new("Bright yellow").Color
light.Range = 5
light.Brightness = 11
light.Enabled = false
particlemiter1 = Instance.new("ParticleEmitter", shootbox)
particlemiter1.Enabled = false
particlemiter1.Texture = "rbxassetid://461242617"
particlemiter1.Lifetime = NumberRange.new(.1)
particlemiter1.Size = NumberSequence.new(1,0)
particlemiter1.Rate = 20
particlemiter1.RotSpeed = NumberRange.new(0)
particlemiter1.Speed = NumberRange.new(0)
tommygunammo = Instance.new("Part",Character)
tommygunammo.Size = Vector3.new(2,2,2)
tommygunammo.CFrame = tommygun.CFrame
tommygunammo.CanCollide = false
tommygunammoweld = Instance.new("Weld",tommygunammo)
tommygunammoweld.Part0 = tommygunammo
tommygunammoweld.Part1 = tommygun
tommygunammo.Transparency = 1
tommygunammoweld.C0 = tommygun.CFrame:inverse() * tommygun.CFrame * CFrame.new(0,.4,.25) * CFrame.Angles(math.rad(0),math.rad(0),0)
mtommygunammo = Instance.new("SpecialMesh", tommygunammo)
mtommygunammo.MeshType = "FileMesh"
mtommygunammo.Scale = Vector3.new(1, 1, 1)
mtommygunammo.MeshId,mtommygunammo.TextureId = 'http://www.roblox.com/asset/?id=116740155','http://www.roblox.com/asset/?id=116679995'


coroutine.wrap(function()
for i,v in pairs(Character:GetChildren()) do
if v.Name == "Animate" then v:Remove()
end
end
end)()

function damagealll(Radius,Position)		
	local Returning = {}		
	for _,v in pairs(workspace:GetChildren()) do		
		if v~=Character and v:FindFirstChildOfClass('Humanoid') and v:FindFirstChild('Torso') or v:FindFirstChild('UpperTorso') then
if v:FindFirstChild("Torso") then		
			local Mag = (v.Torso.Position - Position).magnitude		
			if Mag < Radius then		
				table.insert(Returning,v)		
			end
elseif v:FindFirstChild("UpperTorso") then	
			local Mag = (v.UpperTorso.Position - Position).magnitude		
			if Mag < Radius then		
				table.insert(Returning,v)		
			end
end	
		end		
	end		
	return Returning		
end

function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end

doomtheme = Instance.new("Sound", Torso)
doomtheme.Volume = 1
doomtheme.Name = "doomtheme"
doomtheme.Looped = true
doomtheme.SoundId = "rbxassetid://318812395"
doomtheme:Play()

Torso.ChildRemoved:connect(function(removed)
if removed.Name == "doomtheme" then

doomtheme = Instance.new("Sound", Torso)
doomtheme.Volume = 1
doomtheme.Name = "doomtheme"
doomtheme.Looped = true
doomtheme.SoundId = "rbxassetid://318812395"
doomtheme:Play()
end
end)

function SOUND(PARENT,ID,VOL,LOOP,REMOVE)
so = Instance.new("Sound")
so.Parent = PARENT
so.SoundId = "rbxassetid://"..ID
so.Volume = VOL
so.Looped = LOOP
so:Play()
removeuseless:AddItem(so,REMOVE)
end

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='t' then
if tauntdebounce then return end
tauntdebounce = true
local b1 = Instance.new("BillboardGui",Head)
b1.Size = UDim2.new(0,4,0,1.6)
b1.StudsOffset = Vector3.new(0,0,0)
b1.Name = "laff"
b1.AlwaysOnTop = true
b1.StudsOffset = Vector3.new(0,2,0)
b1.Adornee = Head
removeuseless:AddItem(b1,3)
local b2 = Instance.new("TextLabel",b1)
b2.BackgroundTransparency = 1
b2.Text = "HeHeHeHeHeHeHe..."
b2.Font = "Garamond"
b2.TextSize = 30
b2.Name = "lafftext"
b2.TextStrokeTransparency = 0
b2.TextColor3 = BrickColor.new("Grey").Color
b2.TextStrokeColor3 = Color3.new(0,0,0)
b2.Size = UDim2.new(1,0,.5,0)
laff = Instance.new("Sound",Head)
laff.SoundId = "rbxassetid://2126502539"
laff.Volume = 5
laff:Play()
wait(5)
laff:Remove()
tauntdebounce = false
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='e' then
if debounce then return end
if equip then
g1:Remove()
light.Enabled = false
pcall(function()
temmy:Remove()
end)
for i,v in pairs(tommygun:GetDescendants()) do
if v.Name == "temmy" then v:Remove()
end
end
light.Enabled = false
particlemiter1.Enabled = false
hum.CameraOffset = Vector3.new(0,0,0)
attacking = false
equip = false
shooting = false
gunallowance = false
ws = 18
else
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
g1.CFrame = CFrame.new(Root.Position,mouse.Hit.p)
attacking = true
debounce = true
equip = true
coroutine.wrap(function()
while equip do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.1)
ws = 10
swait()
if Root.Velocity.y > 1 then
position = "Jump3"
elseif Root.Velocity.y < -1 then
position = "Falling3"
elseif Root.Velocity.Magnitude > 2 and running == false and attacking == true then
position = "Walk3"
elseif Root.Velocity.Magnitude < 2 and running == false and attacking == true then
position = "Idle4"
end
end
end)()
coroutine.wrap(function()
while equip do
swait()
settime = 0.05
sine = sine + change
if position == "Jump3" and attacking and not running then
change = .65
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.4)
elseif position == "Falling3" and attacking and not running then
change = .65
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(8), math.rad(4), math.rad(0)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(14), math.rad(-4), math.rad(0)), 0.4)
elseif position == "Walk3" and attacking == true and running == false then
change = .65
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0.05*math.sin(sine/4), 0) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(0)),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.92 - 0.35 * math.cos(sine/8)/2.8, 0.2 - math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) + -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0), math.cos(25 * math.cos(sine/8))), 0.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.92 + 0.35 * math.cos(sine/8)/2.8, 0.2 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) - -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0) , math.cos(25 * math.cos(sine/8))), 0.1)
elseif position == "Idle4" and attacking == true and running == false then
change = .65
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/25), 0) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(0)),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 - .1 * math.sin(sine/25), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.1)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0 - .1 * math.sin(sine/25), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.1)
end
end
end)()
SOUND(RightArm,898163129,6,false,2)
for i = 1, 30 do
tommygunweld.C0 = tommygunweld.C0:lerp(CFrame.new(0,-.68,1.25) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-12)),.25)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1, 0.1, 0.4) * CFrame.Angles(math.rad(-90), math.rad(-60), math.rad(0)), 0.25)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 1.35, 0.4) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), 0.25)
swait()
end
gunallowance = true
mouse.Button1Down:connect(function()
if gunallowance then
particlemiter1.Enabled = true
temmy = Instance.new("Sound",tommygun)
temmy.SoundId = "rbxassetid://2204318084"
temmy.Volume = 6
temmy.Name = "temmy"
temmy.Looped = true
temmy:Play()
shooting = true
end
end)
mouse.Button1Up:connect(function()
if gunallowance then
hum.CameraOffset = Vector3.new(0,0,0)
light.Enabled = false
particlemiter1.Enabled = false
pcall(function()
temmy:Remove()
end)
for i,v in pairs(tommygun:GetDescendants()) do
if v.Name == "temmy" then v:Remove()
end
end
shooting = false
end
end)
coroutine.wrap(function()
if firsttime2 then return end
firsttime2 = true
while true do
swait(3)
if shooting then
if switch1 then
switch1 = false
switch2 = true
light.Enabled = true
elseif switch2 then
switch1 = true
switch2 = false
light.Enabled = false
end
pcall(function()
if mouse.Target.Parent:FindFirstChildOfClass("Humanoid") then
DamageFling(mouse.Target.Parent)
end
end)
end
end
end)()
coroutine.wrap(function()
if firsttime then return end
firsttime = true
while true do
if shooting then
    pcall(function()
if mouse.Target.Parent:FindFirstChildOfClass("Humanoid") then
DamageFling(mouse.Target.Parent)
end
end)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 1.35, 0.4) * CFrame.Angles(math.rad(-90), math.rad(0 - 10 * math.sin(sine)), math.rad(0)), 0.25)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1, 0.1 + .4 * math.sin(sine), 0.4) * CFrame.Angles(math.rad(-90), math.rad(-60), math.rad(0)), 0.25)
elseif not shooting then
end
swait()
end
end)()
debounce = false
end
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='z' then
print("Music switched to 1")
id = 2199374985
doomtheme.SoundId = "rbxassetid://"..id
doomtheme:Play()
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='v' then
print("Music switched to 4")
id = 2111948183
doomtheme.SoundId = "rbxassetid://"..id
doomtheme:Play()
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='x' then
print("Music switched to 2")
id = 318812395
doomtheme.SoundId = "rbxassetid://"..id
doomtheme:Play()
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='c' then
print("Music switched to 3")
id = 180337897
doomtheme.SoundId = "rbxassetid://"..id
doomtheme:Play()
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='b' then
print("Music switched to 5")
id = 649148458
doomtheme.SoundId = "rbxassetid://"..id
doomtheme:Play()
end
end)


checks1 = coroutine.wrap(function() -------Checks
while true do
if HumanoidIsDead then break end
if Root.Velocity.y > 1 then
position = "Jump"
elseif Root.Velocity.y < -1 then
position = "Falling"
elseif Root.Velocity.Magnitude < 2 then
position = "Idle"
elseif Root.Velocity.Magnitude < 20 then
position = "Walking"
elseif Root.Velocity.Magnitude > 20 then
position = "Running"
else
end
wait()
end
end)
checks1()

function ray(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function ray2(StartPos, EndPos, Distance, Ignore)
local DIRECTION = CFrame.new(StartPos,EndPos).lookVector
return ray(StartPos, DIRECTION, Distance, Ignore)
end

OrgnC0 = Neck.C0
local movelimbs = coroutine.wrap(function()
while RunSrv.RenderStepped:wait() do
if HumanoidIsDead then break end
TrsoLV = Torso.CFrame.lookVector
Dist = nil
Diff = nil
if not MseGuide then
print("Failed to recognize")
else
local _, Point = Workspace:FindPartOnRay(Ray.new(Head.CFrame.p, mouse.Hit.lookVector), Workspace, false, true)
Dist = (Head.CFrame.p-Point).magnitude
Diff = Head.CFrame.Y-Point.Y
local _, Point2 = Workspace:FindPartOnRay(Ray.new(LeftArm.CFrame.p, mouse.Hit.lookVector), Workspace, false, true)
Dist2 = (LeftArm.CFrame.p-Point).magnitude
Diff2 = LeftArm.CFrame.Y-Point.Y
HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
Neck.C0 = Neck.C0:lerp(OrgnC0*CFrame.Angles((math.tan(Diff/Dist)*1), 0, (((Head.CFrame.p-Point).Unit):Cross(Torso.CFrame.lookVector)).Y*1), .1)
end
end
end)
movelimbs()
immortal = {}
for i,v in pairs(Character:GetDescendants()) do
	if v:IsA("BasePart") and v.Name ~= "lmagic" and v.Name ~= "rmagic" then
		if v ~= Root and v ~= Torso and v ~= Head and v ~= RightArm and v ~= LeftArm and v ~= RightLeg and v.Name ~= "lmagic" and v.Name ~= "rmagic" and v ~= LeftLeg then
			v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		end
		table.insert(immortal,{v,v.Parent,v.Material,v.Color,v.Transparency})
	elseif v:IsA("JointInstance") then
		table.insert(immortal,{v,v.Parent,nil,nil,nil})
	end
end
for e = 1, #immortal do
	if immortal[e] ~= nil then
		local STUFF = immortal[e]
		local PART = STUFF[1]
		local PARENT = STUFF[2]
		local MATERIAL = STUFF[3]
		local COLOR = STUFF[4]
		local TRANSPARENCY = STUFF[5]
if levitate then
		if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= eyo1 and PART.Name ~= eyo2 and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:connect(function()
			PART.Parent = PARENT
		end)
else
		if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:connect(function()
			PART.Parent = PARENT
		end)
end
	end
end
coroutine.wrap(function()
while true do
if HumanoidIsDead then break end
if hum.Health < .1 then
deadsound = Instance.new("Sound", Torso)
deadsound.Volume = 6
deadsound.SoundId = "rbxassetid://1411352723"
deadsound:Play()
end
wait()
end
end)()

local anims = coroutine.wrap(function()
while true do
if HumanoidIsDead then break end
settime = 0.05
sine = sine + change
if position == "Jump" and attacking == false then
change = 1
tommygunweld.C0 = tommygunweld.C0:lerp(CFrame.new(0,-.80,1.25) * CFrame.Angles(math.rad(98),math.rad(0),0),.25)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4,.1,-.2) * CFrame.Angles(math.rad(20),math.rad(-3),math.rad(-4)), 0.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.4)
elseif position == "Jump2" and attacking == false then
change = 1
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20 - 1 * math.sin(sine/9)), math.rad(0 + 0 * math.cos(sine/8)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(10 * math.cos(sine/10))), 0.3)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.3)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - .1 * math.sin(sine/12)),math.rad(40 - .5 * math.sin(sine/12))), 0.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + .1 * math.sin(sine/12)),math.rad(-40 + .5 * math.sin(sine/12))), 0.3)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/9), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/9)), math.rad(0), math.rad(0)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2.0 + .02 * math.sin(sine/9), 0.2 + .1 * math.sin(sine/9)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/9)), math.rad(20), math.rad(0)), 0.3)
elseif position == "Falling" and attacking == false then
change = 1
tommygunweld.C0 = tommygunweld.C0:lerp(CFrame.new(0,-.80,1.25) * CFrame.Angles(math.rad(98),math.rad(0),0),.25)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(8), math.rad(4), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(14), math.rad(-4), math.rad(0)), 0.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.2)
elseif position == "Falling2" and attacking == false then
change = 1
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20 - 1 * math.sin(sine/9)), math.rad(0 + 0 * math.cos(sine/8)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(10 * math.cos(sine/10))), 0.3)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.3)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - .1 * math.sin(sine/12)),math.rad(40 - .5 * math.sin(sine/12))), 0.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + .1 * math.sin(sine/12)),math.rad(-40 + .5 * math.sin(sine/12))), 0.3)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/9), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/9)), math.rad(0), math.rad(0)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2.0 + .02 * math.sin(sine/9), 0.2 + .1 * math.sin(sine/9)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/9)), math.rad(20), math.rad(0)), 0.3)
elseif position == "Walking" and attacking == false and running == false then
change = 1.2
walking = true
tommygunweld.C0 = tommygunweld.C0:lerp(CFrame.new(0,-.80,1.25) * CFrame.Angles(math.rad(98),math.rad(0),0),.25)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,1,0) * CFrame.Angles(math.rad(180),math.rad(1),math.rad(10)), 0.1)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5 + Root.RotVelocity.Y / 85,.35,.5*math.sin(sine/8)) * CFrame.Angles(math.rad(-35*math.sin(sine/8)),math.rad(0*math.sin(sine/8)),math.rad(10 + Root.RotVelocity.Y / 10, math.sin(20 * math.sin(sine/4)))),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0.05*math.sin(sine/4), 0) * CFrame.Angles(math.rad(-10), math.rad(5 * math.cos(sine/7)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/10))), 0.1)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.92 - 0.35 * math.cos(sine/8)/2.8, 0.2 - math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) + -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0), math.cos(25 * math.cos(sine/8))), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.92 + 0.35 * math.cos(sine/8)/2.8, 0.2 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) - -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0) , math.cos(25 * math.cos(sine/8))), 0.3)
elseif position == "Idle" and attacking == false and running == false then
change = .5
tommygunweld.C0 = tommygunweld.C0:lerp(CFrame.new(0,-.80,1.25) * CFrame.Angles(math.rad(98),math.rad(0),0),.25)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0),math.rad(25),math.rad(0)),.1)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3 + .1 * math.sin(sine/12),1 + .1 * math.sin(sine/12),0) * CFrame.Angles(math.rad(180),math.rad(1),math.rad(8 + 5 * math.sin(sine/12))), 0.1)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.59 - .05 * math.sin(sine/12), 0.1 -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(-2), math.rad(2), math.rad(8  - 6 * math.sin(sine/12))), .2)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.1)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.1)
elseif position == "Idle2" and attacking == false and running == false then
change = .75
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0 - 3 * math.sin(sine/9)),0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(-.2,.2,0) * CFrame.Angles(0,0,0),.1)
LEFTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.8 - .1 * math.sin(sine/9), 0) * CFrame.Angles(math.rad(0), math.rad(0 + 3 * math.sin(sine/9)), math.rad(35 - 5 * math.sin(sine/9))), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.8 - .1 * math.sin(sine/9), 0) * CFrame.Angles(math.rad(0), math.rad(0 - 3 * math.sin(sine/9)), math.rad(-35 + 5 * math.sin(sine/9))), 0.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/9), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/9)), math.rad(0), math.rad(0)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 2.0,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10 + 2 * math.sin(sine/9))), 0.4)
elseif position == "Walking2" and attacking == false and running == false then
ws = 50
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20 - 1 * math.sin(sine/9)), math.rad(0 + 0 * math.cos(sine/8)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(10 * math.cos(sine/10))), 0.3)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.3)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - .1 * math.sin(sine/12)),math.rad(40 - .5 * math.sin(sine/12))), 0.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + .1 * math.sin(sine/12)),math.rad(-40 + .5 * math.sin(sine/12))), 0.3)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/9), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/9)), math.rad(0), math.rad(0)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2.0 + .02 * math.sin(sine/9), 0.2 + .1 * math.sin(sine/9)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/9)), math.rad(20), math.rad(0)), 0.3)
elseif position == "Running" and attacking == false then
change = 1
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(0, .5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.3)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(-1.24+.6*math.sin(sine/4)/1.4, 0.54, 0-0.8*math.sin(sine/4))*CFrame.Angles(math.rad(6+140*math.sin(sine/4)/1.2), math.rad(0), math.rad(20+70*math.sin(sine/4))), 0.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0,.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(-20 - 0 * math.sin(sine/4)), math.rad(0 + 6 * math.sin(sine/4)), math.rad(0) + Root.RotVelocity.Y / 30, math.sin(10 * math.sin(sine/4))), 0.3)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,-.2 + .5*-math.sin(sine/4)),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.6+0.1*math.sin(sine/4),.7*-math.sin(sine/4)) * CFrame.Angles(math.rad(15+ -50 * math.sin(sine/4)),0,0),.3)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,-.2 + .5*math.sin(sine/4)),.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.6-0.1*math.sin(sine/4),.7*math.sin(sine/4)) * CFrame.Angles(math.rad(15 + 50 * math.sin(sine/4)),0,0),.3)
end
swait()
end
end)
anims()