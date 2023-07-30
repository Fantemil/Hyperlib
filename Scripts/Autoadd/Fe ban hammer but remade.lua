--//====================================================\\--
--||			   CREATED BY PoliveTeamVIP
--\\====================================================//--



wait(0.2)



Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local sick = Instance.new("Sound",Character)
sick.SoundId = "rbxassetid://462506896"
sick.Looped = true
sick.Pitch = 1
sick.Volume = 5
sick:Play()

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

function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

--//=================================\\
--||		  CUSTOMIZATION
--\\=================================//

Player_Size = 1 --Size of the player.
Animation_Speed = 3
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)

local Speed = 16
local Effects2 = {}

--//=================================\\
--|| 	  END OF CUSTOMIZATION
--\\=================================//

	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end

function createaccessory(attachmentpart,mesh,texture,scale,offset,color)
local acs = Instance.new("Part")
acs.CanCollide = false
acs.Anchored = false
acs.Size = Vector3.new(0,0,0)
acs.CFrame = attachmentpart.CFrame
acs.Parent = Character
acs.BrickColor = color
    local meshs = Instance.new("SpecialMesh")
    meshs.MeshId = mesh
    meshs.TextureId = texture
    meshs.Parent = acs
    meshs.Scale = scale
    meshs.Offset = offset
weldBetween(attachmentpart,acs)
end

function createbodypart(TYPE,COLOR,PART,OFFSET,SIZE)
if TYPE == "Gem" then
	local acs = CreatePart(3, Character, "Plastic", 0, 0, COLOR, "Part", VT(0,0,0))
	acs.Anchored = false
    acs.CanCollide = false
	acs.CFrame = PART.CFrame
	local acs2 = CreateMesh("SpecialMesh", acs, "FileMesh", "9756362", "", SIZE, OFFSET)
weldBetween(PART,acs)
elseif TYPE == "Skull" then
	local acs = CreatePart(3, Character, "Plastic", 0, 0, COLOR, "Part", VT(0,0,0))
	acs.Anchored = false
    acs.CanCollide = false
	acs.CFrame = PART.CFrame
	local acs2 = CreateMesh("SpecialMesh", acs, "FileMesh", "4770583", "", SIZE, OFFSET)
weldBetween(PART,acs)
elseif TYPE == "Eye" then
	local acs = CreatePart(3, Character, "Neon", 0, 0, COLOR, "Part", VT(0,0,0))
	acs.Anchored = false
    acs.CanCollide = false
	acs.CFrame = PART.CFrame
	local acs2 = CreateMesh("SpecialMesh", acs, "Sphere", "", "", SIZE, OFFSET)
weldBetween(PART,acs)
end
end

--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local CHANGEDEFENSE = 0
local CHANGEDAMAGE = 0
local CHANGEMOVEMENT = 0
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local Rooted = false
local SINE = 0
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local WALK = 0
local VALUE1 = false
local HITFLOOR = nil
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
--ROBLOXIDLEANIMATION.Parent = Humanoid
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "Weapon GUI"
local Weapon = IT("Model")
Weapon.Name = "Adds"
local Delete = IT("Model",Character)
Delete.Name = "Banlist"
local Effects = IT("Folder", Weapon)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local HITPLAYERSOUNDS = {--[["199149137", "199149186", "199149221", "199149235", "199149269", "199149297"--]]"263032172", "263032182", "263032200", "263032221", "263032252", "263033191"}
local HITARMORSOUNDS = {"199149321", "199149338", "199149367", "199149409", "199149452"}
local HITWEAPONSOUNDS = {"199148971", "199149025", "199149072", "199149109", "199149119"}
local HITBLOCKSOUNDS = {"199148933", "199148947"}
local UNANCHOR = true

local SKILLTEXTCOLOR = C3(0,0,0)

--//=================================\\
--\\=================================//


--//=================================\\
--|| SAZERENOS' ARTIFICIAL HEARTBEAT
--\\=================================//

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")

frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
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

--//=================================\\
--\\=================================//





--//=================================\\
--|| 	      SOME FUNCTIONS
--\\=================================//

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
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
		if m11 > m00 then
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
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
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
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end

function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = TEXTCOLOR
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = false
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end

function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
end


function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end

local SOUND = IT("Sound",nil)

function CreateSound(ID, PARENT, VOLUME, PITCH)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = SOUND:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		Swait()
		NEWSOUND:play()
		game:GetService("Debris"):AddItem(NEWSOUND, 10)
	end))
	return NEWSOUND
end

function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

function CreateWave(SIZE,WAIT,CFRAME,DOESROT,ROT,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,-SIZE.X/8)
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			mesh.Offset = VT(0,0,-(mesh.Scale.X/8))
			if DOESROT == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0,ROT,0)
			end
			wave.Transparency = wave.Transparency + (0.5/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function MagicSphere(SIZE,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Effect", VT(1,1,1), true)
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "Sphere"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			wave.Transparency = wave.Transparency + (1/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end

function CheckTableForString(Table, String)
	for i, v in pairs(Table) do
		if string.find(string.lower(String), string.lower(v)) then
			return true
		end
	end
	return false
end

function CheckIntangible(Hit)
	local ProjectileNames = {"Water", "Arrow", "Projectile", "Effect", "Rail", "Lightning", "Bullet"}
	if Hit and Hit.Parent then
		if ((not Hit.CanCollide or CheckTableForString(ProjectileNames, Hit.Name)) and not Hit.Parent:FindFirstChild("Humanoid")) then
			return true
		end
	end
	return false
end

Debris = game:GetService("Debris")

function CastZapRay(StartPos, Vec, Length, Ignore, DelayIfHit)
	local Direction = CFrame.new(StartPos, Vec).lookVector
	local Ignore = ((type(Ignore) == "table" and Ignore) or {Ignore})
	local RayHit, RayPos, RayNormal = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, Direction * Length), Ignore)
	if RayHit and CheckIntangible(RayHit) then
		if DelayIfHit then
			wait()
		end
		RayHit, RayPos, RayNormal = CastZapRay((RayPos + (Vec * 0.01)), Vec, (Length - ((StartPos - RayPos).magnitude)), Ignore, DelayIfHit)
	end
	return RayHit, RayPos, RayNormal
end

function turnto(position)
	RootPart.CFrame=CFrame.new(RootPart.CFrame.p,VT(position.X,RootPart.Position.Y,position.Z)) * CFrame.new(0, 0, 0)
end

--//=================================\\
--||	     WEAPON CREATION
--\\=================================//

local HandlePart = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Really black", "Handle", VT(0, 0, 0),false)
local HandleMesh = CreateMesh("SpecialMesh", HandlePart, "FileMesh", "10604848", "10605252", VT(1,1,1), VT(0, 2.7, 0))
local HandleWeld = CreateWeldOrSnapOrMotor("Weld", HandlePart, RightArm, HandlePart, CF(0,-0.8,0) * ANGLES(RAD(-90), RAD(0), RAD(0)), CF(0, 0, 0))

for _, c in pairs(Weapon:GetChildren()) do
	if c.ClassName == "Part" then
		c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end

Weapon.Parent = Character

Humanoid.Died:connect(function()
	ATTACK = true
end)

local SKILL1FRAME = CreateFrame(WEAPONGUI, 0.5, 2, UD2(0.13, 0, 0.80, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 1 Frame")
local SKILL2FRAME = CreateFrame(WEAPONGUI, 0.5, 2, UD2(0.60, 0, 0.80, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 2 Frame")

local SKILL1TEXT = CreateLabel(SKILL1FRAME, "[CLICK+HOLD] Ban Slam", SKILLTEXTCOLOR, 7, "Garamond", 0, 2, 1, "Text 1")
local SKILL2TEXT = CreateLabel(SKILL2FRAME, "[B] Teleport", SKILLTEXTCOLOR, 8, "Garamond", 0, 2, 1, "Text 2")

--//=================================\\
--||			DAMAGING
--\\=================================//

function BAN(CHARACTER)
	local BANFOLDER = IT("Folder",Effects)
	local naeeym2 = Instance.new("BillboardGui",BANFOLDER)
	naeeym2.AlwaysOnTop = false
	naeeym2.Size = UDim2.new(5,35,2,35)
	naeeym2.StudsOffset = Vector3.new(0,1,0)
	naeeym2.Name = "AAAA"
	local tecks2 = Instance.new("TextLabel",naeeym2)
	tecks2.BackgroundTransparency = 1
	tecks2.TextScaled = true
	tecks2.BorderSizePixel = 0
	tecks2.Text = "BANNED"
	tecks2.Font = "Code"
	tecks2.TextSize = 30
	tecks2.TextStrokeTransparency = 1
	tecks2.TextColor3 = Color3.new(1,0,0)
	tecks2.TextStrokeColor3 = Color3.new(1,0,0)
	tecks2.Size = UDim2.new(1,0,0.5,0)
	tecks2.Parent = naeeym2
	for i,v in ipairs(CHARACTER:GetChildren()) do
		if v.ClassName == "Part" or v.ClassName == "MeshPart" then
			if v.Name ~= "HumanoidRootPart" then
				local BOD = v:Clone()
				BOD.CanCollide = false
				BOD.Anchored = true
				BOD.CFrame = v.CFrame
				BOD.Parent = BANFOLDER
				BOD.Material = "Neon"
				BOD.Color = C3(1,0,0)
				if BOD:FindFirstChildOfClass("Decal") then
					BOD:FindFirstChildOfClass("Decal"):remove()
				end
				if BOD.Name == "Head" then
					naeeym2.Adornee = BOD
				end
				if BOD.ClassName == "MeshPart" then
					BOD.TextureID = ""
				end
			end
		end
	end
	CHARACTER:remove()
	coroutine.resume(coroutine.create(function()
		for i = 1, 50 do
			Swait()
			for i,v in ipairs(BANFOLDER:GetChildren()) do
				if v.ClassName == "Part" or v.ClassName == "MeshPart" then
					v.Transparency = 1
				end
				naeeym2.Enabled = false
			end
			Swait()
			for i,v in ipairs(BANFOLDER:GetChildren()) do
				if v.ClassName == "Part" or v.ClassName == "MeshPart" then
					v.Transparency = 0
				end
				naeeym2.Enabled = true
			end
		end
		BANFOLDER:remove()
	end))
end

function BANNEAREST(POS,RANGE)
	for i,v in ipairs(workspace:GetChildren()) do
	local body = v:GetChildren()
		for part = 1, #body do
			if((body[part].ClassName == "Part" or body[part].ClassName == "MeshPart") and v ~= Character) then
				if(body[part].Position - POS).Magnitude < RANGE then
					if v:FindFirstChildOfClass("Humanoid") then
						BAN(v)
						if game.Players:FindFirstChild(v.Name) then
							local Value = IT("BoolValue",Delete)
							Value.Name = v.Name
						end
					end
				end
			end
		end
	end
end

--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//

function CreateDebreeRing(FLOOR,POSITION,SIZE,BLOCKSIZE,SWAIT)
	if FLOOR ~= nil then
		coroutine.resume(coroutine.create(function()
			local PART = CreatePart(3, Effects, "Plastic", 0, 1, "Pearl", "DebreeCenter", VT(0,0,0))
			PART.CFrame = CF(POSITION)
			for i = 1, 45 do
				local RingPiece = CreatePart(3, Effects, "Plastic", 0, 0, "Pearl", "DebreePart", BLOCKSIZE)
				RingPiece.Material = FLOOR.Material
				RingPiece.Color = FLOOR.Color
				RingPiece.CFrame = PART.CFrame * ANGLES(RAD(0), RAD(i*8), RAD(0)) * CF(SIZE*4, 0, 0) * ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)))
				Debris:AddItem(RingPiece,SWAIT/100)
			end
			PART:remove()
		end))
	end
end

function BANSLAM()
	ATTACK = true
	Rooted = false
	repeat
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -0.8, 0) * ANGLES(RAD(-90), RAD(-45), RAD(0)),2 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 7) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, 0.5) * ANGLES(RAD(250), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, 0.5) * ANGLES(RAD(250), RAD(0), RAD(45)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 2 / Animation_Speed)
		end
		for i=0, 0.08, 0.1 / Animation_Speed do
			Swait()
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 0) * ANGLES(RAD(-90), RAD(-45), RAD(0)), 2 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2) * ANGLES(RAD(75), RAD(0), RAD(0)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, -1) * ANGLES(RAD(120), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, -1) * ANGLES(RAD(120), RAD(0), RAD(45)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 0.5 / Animation_Speed)
		end
		for i=0, 0.08, 0.1 / Animation_Speed do
			Swait()
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 0) * ANGLES(RAD(-70), RAD(-45), RAD(0)), 2 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2) * ANGLES(RAD(75), RAD(0), RAD(0)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, -1) * ANGLES(RAD(60), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, -1) * ANGLES(RAD(60), RAD(0), RAD(45)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 0.5 / Animation_Speed)
		end
		CreateSound("147722910", Effects, 10, 1)
		BANNEAREST(RootPart.CFrame*CF(0,0,-6).p,25)
		if HITFLOOR ~= nil then
			CreateSound("289842971", HandlePart, 10, 1)
			CreateSound("289842971", HandlePart, 10, 1)
			CreateSound("289842971", HandlePart, 10, 1)
			CreateSound("289842971", HandlePart, 10, 1)
			CreateDebreeRing(HITFLOOR,RootPart.CFrame*CF(0,-5,-6).p,5,VT(8,8,8),35)
		end
		CreateWave(VT(25,0,25),45,RootPart.CFrame*CF(0,-5,-6),true,2,"Really red",VT(0,3,0))
		CreateWave(VT(25,0,25),45,RootPart.CFrame*CF(0,-5,-6),true,-2,"Really red",VT(0,3,0))
		for i=0, 0.1, 0.1 / Animation_Speed do
			Swait()
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 0) * ANGLES(RAD(-70), RAD(-45), RAD(0)), 2 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1.8) * ANGLES(RAD(75), RAD(0), RAD(0)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, -1) * ANGLES(RAD(60), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, -1) * ANGLES(RAD(60), RAD(0), RAD(45)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 0.5 / Animation_Speed)
		end
		if HOLD == true then
			for i=0, 0.08, 0.1 / Animation_Speed do
				Swait()
				if HOLD == false then
					break
				end
				HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 0) * ANGLES(RAD(-90), RAD(-45), RAD(0)), 2 / Animation_Speed)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2) * ANGLES(RAD(75), RAD(0), RAD(0)), 2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, -1) * ANGLES(RAD(120), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, -1) * ANGLES(RAD(120), RAD(0), RAD(45)) * LEFTSHOULDERC0, 2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 0.5 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 0.5 / Animation_Speed)
			end
		end
	until HOLD == false
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 0) * ANGLES(RAD(-70), RAD(-45), RAD(0)), 2 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1.8) * ANGLES(RAD(75), RAD(0), RAD(0)), 2 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 2 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, -1) * ANGLES(RAD(60), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, -1) * ANGLES(RAD(60), RAD(0), RAD(45)) * LEFTSHOULDERC0, 2 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 0.5 / Animation_Speed)
	end
	for i=0, 5, 0.1 / Animation_Speed do
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0, 0) * ANGLES(RAD(200), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -0.8, 0) * ANGLES(RAD(-90), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end

--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

function MouseDown(Mouse)
	HOLD = true
	if ATTACK == false then
		BANSLAM()
	end
end

function MouseUp(Mouse)
HOLD = false
end

function KeyDown(Key)
	KEYHOLD = true
	if Key == "b" and ATTACK == false then
		local pos = RootPart.Position
		RootPart.CFrame = CF(Mouse.Hit.p+VT(0,3,0),pos)
		CreateSound("769380905", Torso, 10, 1)
	end

	if Key == "t" then
		CreateSound("1058417264", Head, 10, 1)
		Delete:ClearAllChildren()
	end
end

function KeyUp(Key)
	KEYHOLD = false
end

	Mouse.Button1Down:connect(function(NEWKEY)
		MouseDown(NEWKEY)
	end)
	Mouse.Button1Up:connect(function(NEWKEY)
		MouseUp(NEWKEY)
	end)
	Mouse.KeyDown:connect(function(NEWKEY)
		KeyDown(NEWKEY)
	end)
	Mouse.KeyUp:connect(function(NEWKEY)
		KeyUp(NEWKEY)
	end)

--//=================================\\
--\\=================================//


function unanchor()
	if UNANCHOR == true then
		g = Character:GetChildren()
		for i = 1, #g do
			if g[i].ClassName == "Part" then
				g[i].Anchored = false
			end
		end
	end
end


--//=================================\\
--||	WRAP THE WHOLE SCRIPT UP
--\\=================================//

Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true) then
		Humanoid.Jump = false
	end
end)

Speed = 23

while true do
	Swait()
	ANIMATE.Parent = nil
	local IDLEANIMATION = Humanoid:LoadAnimation(ROBLOXIDLEANIMATION)
	IDLEANIMATION:Play()
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local LV = Torso.CFrame:pointToObjectSpace(Torso.Velocity - Torso.Position)
	HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4 * Player_Size, Character)
	local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 16)
	if ATTACK == false then
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0, 0) * ANGLES(RAD(200), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -0.8, 0) * ANGLES(RAD(-90), RAD(0), RAD(0)), 0.2 / Animation_Speed)
	end
	if ANIM == "Walk" and TORSOVELOCITY > 1 and ATTACK == false then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, -0.15 * COS(SINE / (WALKSPEEDVALUE / 2)) * Player_Size) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 0.875 * Player_Size - 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, -0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(76 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 0.875 * Player_Size + 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, 0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(76 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
	elseif (ANIM ~= "Walk") or (TORSOVELOCITY < 1) or (ATTACK == true) then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
	end
	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
		ANIM = "Jump"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 * Player_Size, 0 + ((1) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0 * Player_Size) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 0.2 / Animation_Speed)
	       end
	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
		ANIM = "Fall"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
		end
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
		ANIM = "Idle"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
		ANIM = "Walk"
		WALK = WALK + 1 / Animation_Speed
		if WALK >= 15 - (5 * (Humanoid.WalkSpeed / 16 / Player_Size)) then
			WALK = 0
			if WALKINGANIM == true then
				WALKINGANIM = false
			elseif WALKINGANIM == false then
				WALKINGANIM = true
			end
		end
		--RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 0.875 * Player_Size - 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, -0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(60 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		--LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 0.875 * Player_Size + 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, 0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(60 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 8 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
		end
	end
	unanchor()
	Humanoid.MaxHealth = "inf"
	Humanoid.Health = "inf"
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	local MATHS = {"0","1"}
	Humanoid.Name = MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]
	Humanoid.PlatformStand = false
	local GAME = game.Players:GetChildren()
		for PLAYER = 1, #GAME do
		local PLAY = GAME[PLAYER]
		if PLAY.Character ~= nil and Delete:FindFirstChild(PLAY.Name) then
			PLAY.Character:remove()
		end
	end
end

--//=================================\\
--\\=================================//





--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--