
local script = game:GetObjects("rbxassetid://13196734827")[1]
script.Parent = game:GetService("Players").LocalPlayer.Character

--13196734827
local Player = game.Players:GetPlayerFromCharacter(script.Parent)      --<=== Replace With Your Name


local Player = game:GetService("Players").LocalPlayer Mouse = Player:GetMouse() 
--local Mouse--,mouse,UserInputService,ContextActionService
do
	local CAS = {Actions={}}
	local Event = Instance.new("RemoteEvent")
	Event.Name = "UserInputEvent"
	Event.Parent = Player.Character
	local fakeEvent = function()
		local t = {_fakeEvent=true}
		t.Connect = function(self,f)self.Function=f end
		t.connect = t.Connect
		return t
	end
    local m = {Target=nil,Hit=CFrame.new(),KeyUp=fakeEvent(),KeyDown=fakeEvent(),Button1Up=fakeEvent(),Button1Down=fakeEvent()}
	local UIS = {InputBegan=fakeEvent(),InputEnded=fakeEvent()}
	function CAS:BindAction(name,fun,touch,...)
		CAS.Actions[name] = {Name=name,Function=fun,Keys={...}}
	end
	function CAS:UnbindAction(name)
		CAS.Actions[name] = nil
	end
	local function te(self,ev,...)
		local t = m[ev]
		if t and t._fakeEvent and t.Function then
			t.Function(...)
		end
	end
	m.TrigEvent = te
	UIS.TrigEvent = te
	Event.OnClientEvent:Connect(function(plr,io)
	    if plr~=Player then return end
		if io.isMouse then
			m.Target = io.Target
			m.Hit = io.Hit
		elseif io.UserInputType == Enum.UserInputType.MouseButton1 then
	        if io.UserInputState == Enum.UserInputState.Begin then
				m:TrigEvent("Button1Down")
			else
				m:TrigEvent("Button1Up")
			end
		else
			for n,t in pairs(CAS.Actions) do
				for _,k in pairs(t.Keys) do
					if k==io.KeyCode then
						t.Function(t.Name,io.UserInputState,io)
					end
				end
			end
	        if io.UserInputState == Enum.UserInputState.Begin then
	            m:TrigEvent("KeyDown",io.KeyCode.Name:lower())
				UIS:TrigEvent("InputBegan",io,false)
			else
				m:TrigEvent("KeyUp",io.KeyCode.Name:lower())
				UIS:TrigEvent("InputEnded",io,false)
	        end
	    end
	end)
	--Mouse,mouse,UserInputService,ContextActionService = m,m,UIS,CAS
end

---------Replace All "LocalPlayer" With Your Name.
--Remove "Mouse =" or "local mouse =" at the start.
--Replace Kermat161 At The Top Of The Script With You Name.
-----------------------------Script In The Line's.
--//====================================================\\--
--||			   CREATED BY SHACKLUSTER
--\\====================================================//--

wait(0.2)

Player = game:GetService("Players").LocalPlayer--.Character
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
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

--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

Animation_Speed = 3
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)
local Speed = 10
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.65, -0.15, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.65, -0.15, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local DAMAGEMULTIPLIER = 1
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
local VALUE1 = false
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
--ROBLOXIDLEANIMATION.Parent = Humanoid
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "SB_Blind_Reaper"
local Effects = IT("Folder", Character)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local UNANCHOR = true
local SWIPES = {28144268,28144277,28144291,28144295}

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
			ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				ArtificialHB:Fire()
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

	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
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

local S = IT("Sound")
function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "rbxassetid://"..ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat wait(1) until NEWSOUND.Playing == false
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end

function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

--WACKYEFFECT({EffectType = "", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
function WACKYEFFECT(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or VT(1,1,1))
	local ENDSIZE = (Table.Size2 or VT(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or C3(1,1,1))
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	local USEBOOMERANGMATH = (Table.UseBoomerangMath or false)
	local BOOMERANG = (Table.Boomerang or 0)
	local SIZEBOOMERANG = (Table.SizeBoomerang or 0)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1,1,1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0,0,0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X,SIZE.X,0.1), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "168892432", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		end
		if MSH ~= nil then
			local BOOMR1 = 1+BOOMERANG/50
			local BOOMR2 = 1+SIZEBOOMERANG/50
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				if USEBOOMERANGMATH == true then
					MOVESPEED = ((CFRAME.p - MOVEDIRECTION).Magnitude/TIME)*BOOMR1
				else
					MOVESPEED = ((CFRAME.p - MOVEDIRECTION).Magnitude/TIME)
				end
			end
			local GROWTH = nil
			if USEBOOMERANGMATH == true then
				GROWTH = (SIZE - ENDSIZE)*(BOOMR2+1)
			else
				GROWTH = (SIZE - ENDSIZE)
			end
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			if USEBOOMERANGMATH == true then
				for LOOP = 1, TIME+1 do
					Swait()
					MSH.Scale = MSH.Scale - (VT((GROWTH.X)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Y)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Z)*((1 - (LOOP/TIME)*BOOMR2)))*BOOMR2)/TIME
					if TYPE == "Wave" then
						MSH.Offset = VT(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-(MOVESPEED)*((1 - (LOOP/TIME)*BOOMR1)))
						EFFECT.Orientation = ORI
					end
				end
			else
				for LOOP = 1, TIME+1 do
					Swait()
					MSH.Scale = MSH.Scale - GROWTH/TIME
					if TYPE == "Wave" then
						MSH.Offset = VT(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
						EFFECT.Orientation = ORI
					end
				end
			end
			EFFECT.Transparency = 1
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end
	end))
end

--[[function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end]]

Debris = game:GetService("Debris")

function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos,EndPos).lookVector
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end

function AttackGyro()
	local GYRO = IT("BodyGyro",RootPart)
	GYRO.D = 25
	GYRO.P = 20000
	GYRO.MaxTorque = VT(0,4000000,0)
	GYRO.CFrame = CF(RootPart.Position,Mouse.Hit.p)
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			GYRO.CFrame = CF(RootPart.Position,Mouse.Hit.p)
		until ATTACK == false
		GYRO:Remove()
	end))
end

function SHAKECAM(POSITION,RANGE,INTENSITY,TIME)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						local CAMSHAKER = script.CamShake:Clone()
						CAMSHAKER.Shake.Value = INTENSITY
						CAMSHAKER.Timer.Value = TIME
						CAMSHAKER.Parent = CHILD
						CAMSHAKER.Disabled = false
					end
				end
			end
		end
	end
end

function CharacterFade(COLOR,TIMER)
	coroutine.resume(coroutine.create(function()
		local FADE = IT("Model",Effects)
		FADE.Name = "FadingEffect"
		for _, c in pairs(Character:GetChildren()) do
			if c.ClassName == "Part" and c ~= RootPart and c.Name ~= "FaceGradient" then
				local FADER = c:Clone()
				FADER.Color = COLOR
				FADER.CFrame = c.CFrame
				FADER.Parent = FADE
				FADER.Anchored = true
				FADER.Transparency = 0.25+c.Transparency
				FADER:BreakJoints()
				FADER.CanCollide = false
				FADER.Material = "Neon"
				if FADER.Name == "Head" then
					FADER:ClearAllChildren()
					FADER.Size = VT(1,1,1)
				end
				FADER.CanCollide = false
			end
		end
		local TRANS = 0.75/TIMER
		for i = 1, TIMER do
			Swait()
			for _, c in pairs(FADE:GetChildren()) do
				if c.ClassName == "Part" then
					c.Transparency = c.Transparency + TRANS
				end
			end
		end
		FADE:remove()
	end))
end

--//=================================\\
--||	    GUIS AND MISC
--\\=================================//

local BOOSTSOUND = 240429289

local BASECOLOR = C3(160/255, 56/255, 47/255)
local SKILLFONT = "Fantasy"
local SKILLTEXTSIZE = 5

local ATTACKS = {"Reap - CLICK","Unload - C","Tender Rain - V","Spirit Fire - B","Reaper's Ballad - X","Forced Speed - F"}

local BASE = CreateFrame(WEAPONGUI, 0.5, 2, UD2(0.83, 0, 0.85, 0), UD2(0.7, 0, 0.7, 0), BASECOLOR, C3(0, 0, 0), "Skill Gui")
local SKILLFRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.74, 0, 0.94, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Name Frame")
BASE.Rotation = 35
CreateLabel(SKILLFRAME, "BLIND REAPER", BASECOLOR, 7, "Antique", 0, 2, 0, "Name text")
SKILLFRAME.Rotation = 5
for i = 1, #ATTACKS do
	local SKILLFRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.74, 0, 0.97-(0.04*i), 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill Frame")
	local SKILLTEXT = CreateLabel(SKILLFRAME, "["..ATTACKS[i].."]", BASECOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0, "Skill text")
	SKILLTEXT.TextXAlignment = "Right"
	SKILLTEXT.Rotation = i*3
end

local BMUSIC = IT("Sound",RootPart)
local VOLUME = 2
local PITCH = .85
local SONGID = 1551788627

for i = 1, 10 do
	--local FACE = CreatePart(3, Head, "Fabric", 0, 0+(i-1)/10.2, "Dark stone grey", "FaceGradient", VT(1.01,0.65,1.01),false)
	--FACE.Color = C3(0,0,0)
	--Head:FindFirstChildOfClass("SpecialMesh"):Clone().Parent = FACE
	--CreateWeldOrSnapOrMotor("Weld", Head, Head, FACE, CF(0,0.25-(i-1)/40,0), CF(0, 0, 0))
end

local SCYTHE = script.Scythe
SCYTHE.Parent = Character
local BLADE = SCYTHE.Blade

SCYTHE.Blade.Transparency = 1
BLADE.Transparency = 1
--Blade.Transparency = 1

for _, c in pairs(SCYTHE:GetChildren()) do
	if c:IsA("BasePart") then
		c.Anchored = false
		c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		if c ~= SCYTHE.PrimaryPart then
			weldBetween(SCYTHE.PrimaryPart,c)
		end
		c.Locked = true
	end
end
local FIRE = SCYTHE.Neon.Fire
local ScytheJoint = CreateWeldOrSnapOrMotor("Weld", RightArm, RightArm, SCYTHE.PrimaryPart, CF(0,-1,0), CF(0, 0, 0))
local TRAIL = SCYTHE.Trail
local SHOTGUN = script.Shotgun
SHOTGUN.Parent = Character

local lp = game:GetService("Players").LocalPlayer
local rs = game:GetService("RunService")
local stepped = rs.Stepped
local heartbeat = rs.Heartbeat
local renderstepped = rs.RenderStepped
local sg = game:GetService("StarterGui")
local ws = game:GetService("Workspace")
local cf = CFrame.new
local v3 = Vector3.new
local v3_0 = Vector3.zero
local inf = math.huge

local cplayer = lp.Character

local v3 = Vector3.new

local function gp(parent, name, className)
	if typeof(parent) == "Instance" then
		for i, v in pairs(parent:GetChildren()) do
			if (v.Name == name) and v:IsA(className) then
				return v
			end
		end
	end
	return nil
end




for _, c in pairs(SHOTGUN:GetChildren()) do
	if c:IsA("BasePart") then
		c.Anchored = false
		c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		if c ~= SHOTGUN.PrimaryPart then
			weldBetween(SHOTGUN.PrimaryPart,c)
		end
		c.Locked = true
	end
end
local GunJoint = CreateWeldOrSnapOrMotor("Weld", LeftArm, LeftArm, SHOTGUN.PrimaryPart, CF(0,-0.9,0.1), CF(0, 0, 0))
local TOPBARREL = SHOTGUN.TopHole
local LOWERBARREL = SHOTGUN.LowerHole
local GUNBARRELS = {TOPBARREL,LOWERBARREL}

SHOTGUN.PrimaryPart.Transparency = 1
SHOTGUN.LowerHole.Transparency = 1
SHOTGUN.TopHole.Transparency = 1
--TOPBARREL,LOWERBARREL.Transparency = 1


for _,v in next, Humanoid:GetPlayingAnimationTracks() do
	v:Stop();
end
local BODY = {}
for _, c in pairs(Character:GetDescendants()) do
	--if c:IsA("BasePart") and c.Name ~= "Handle" then
		--if c ~= RootPart and c ~= Torso and c ~= Head and c ~= RightArm and c ~= LeftArm and c ~= RightLeg and c ~= LeftLeg then
			--c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		--end
		--table.insert(BODY,{c,c.Parent,c.Material,c.Color,c.Transparency,c.Size,c.Name})
	--elseif c:IsA("JointInstance") then
		--table.insert(BODY,{c,c.Parent,nil,nil,nil,nil,nil})
	--end
end
function refit()
	SCYTHE.Parent = Character
	SHOTGUN.Parent = Character
	--Character.Parent = workspace
	Effects.Parent = Character
	for e = 1, #BODY do
		if BODY[e] ~= nil then
			local STUFF = BODY[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			--local SIZE = STUFF[6]
			local NAME = STUFF[7]
			if PART.ClassName == "Part" and PART ~= RootPart then
				PART.Material = MATERIAL
				PART.Transparency = TRANSPARENCY
				PART.Name = NAME
			end
			if PART.Parent ~= PARENT then
				if PART.Name == "Head" or PART.Name == "Neck" or PART.Name == "Torso" then
					--Humanoid:remove()
				end
				PART.Parent = PARENT
				if PART.Name == "Head" or PART.Name == "Neck" or PART.Name == "Torso" then
					--Humanoid = IT("Humanoid",Character)
				end
			end
		end
	end
end

--[[Humanoid.Died:connect(function()
	refit()
end)]]

--//=================================\\
--||			DAMAGING
--\\=================================//

--[[function REAP(MODEL)
	local HUM = MODEL:FindFirstChildOfClass("Humanoid")
	if HUM then
		for index, CHILD in pairs(MODEL:GetChildren()) do
			if CHILD:IsA("BasePart") then
				if CHILD.Name == "Head" then
					WACKYEFFECT({Time = MRANDOM(10,30)*12, EffectType = "Skull", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)*2, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)*2)*MRANDOM(7,14)/10, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, SizeBoomerang = 0, Boomerang = 50})
				elseif CHILD.Name ~= "HumanoidRootPart" then
					WACKYEFFECT({Time = MRANDOM(10,30)*6, EffectType = "Box", Size = CHILD.Size, Size2 = CHILD.Size*MRANDOM(7,14)/10, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, SizeBoomerang = 0, Boomerang = 35})
				end
				if CHILD.Name == "Torso" or CHILD.Name == "UpperTorso" then
					WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(0.2,0.2,0.2)*CHILD.Size.Magnitude, Size2 = VT(5,5,5)*CHILD.Size.Magnitude, Transparency = 0.6, Transparency2 = 1, CFrame = CF(CHILD.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 264486467, SoundPitch = MRANDOM(8,15)/10, SoundVolume = 4, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
				end
				--CHILD:Destroy()
			end
		end
		--HUM.Health = 0
	end
	--MODEL:remove()
end

function ApplyAoE(POSITION,RANGE)
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			--local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				--local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						REAP(CHILD)
					end
				end
			end
		end
	end
end]]

--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//

function Reap()
	ATTACK = true
	Rooted = false
	for i=0, 0.3, 0.1 / Animation_Speed do
		Swait()
		ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
		GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(110), RAD(0), RAD(0)), 1 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(10)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(80)) * ANGLES(RAD(0), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(15), RAD(5), RAD(-5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		if ANIM == "Fall" or ANIM == "Jump" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		else
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.35, -0.4) * ANGLES(RAD(-5), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(-15)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	end
	local HIT = BLADE.Touched:Connect(function(HIT)
		if HIT.Parent ~= Character and HIT.Parent:FindFirstChildOfClass("Humanoid") then
			SHAKECAM(BLADE.Position,12,5,12)
			REAP(HIT.Parent)
		end
	end)
	TRAIL.Enabled = true
	CreateSound(211059653,BLADE,10,0.7,false)
	CreateSound(SWIPES[MRANDOM(1,#SWIPES)],BLADE,10,0.6,false)
	for i=0, 0.8, 0.1 / Animation_Speed do
		Swait()
		ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(70), RAD(0), RAD(0)), 0.35 / Animation_Speed)
		GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(110), RAD(0), RAD(0)), 1 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.8 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(45), RAD(0), RAD(-60)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.8, 0.5, -1) * ANGLES(RAD(0), RAD(0), RAD(-120)) * ANGLES(RAD(35), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.25 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(15), RAD(5), RAD(-5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		if ANIM == "Fall" or ANIM == "Jump" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		else
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-5), RAD(35), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-100), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.8 / Animation_Speed)
		end
	end
	HIT:Disconnect()
	TRAIL.Enabled = false
	for i=0, 0.1, 0.1 / Animation_Speed do
		Swait()
		ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(110), RAD(0), RAD(0)), 1 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(10)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * ANGLES(RAD(0), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(15), RAD(5), RAD(-5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		if ANIM == "Fall" or ANIM == "Jump" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		else
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-5), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	end
	ATTACK = false
	Rooted = false
end
function Unload()
	ATTACK = true
	Rooted = false
	AttackGyro()
	for i=0, 0.2, 0.1 / Animation_Speed do
		Swait()
		ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(-140), RAD(0), RAD(0)), 1 / Animation_Speed)
		GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(-10), RAD(0), RAD(0)), 1.5 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-40)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(40)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(50), RAD(-20), RAD(25)) * RIGHTSHOULDERC0, 1.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(100), RAD(5), RAD(-40)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		if ANIM == "Fall" or ANIM == "Jump" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		else
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-5), RAD(90), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(25)), 1 / Animation_Speed)
		end
	end
	CreateSound(1498950813,LeftArm,5,0.8,false)
	for i=0, 0.1, 0.1 / Animation_Speed do
		Swait()
		ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(-140), RAD(0), RAD(0)), 1 / Animation_Speed)
		GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(0), RAD(12), RAD(0)), 1 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-40)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(40)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(50), RAD(-20), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(88), RAD(5), RAD(-40)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		if ANIM == "Fall" or ANIM == "Jump" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		else
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-5), RAD(90), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 2 / Animation_Speed)
		end
	end
	for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(-140), RAD(0), RAD(0)), 1 / Animation_Speed)
		GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(-2), RAD(0), RAD(0)), 1 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-40)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(40)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(50), RAD(-20), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(90), RAD(5), RAD(-40)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		if ANIM == "Fall" or ANIM == "Jump" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		else
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-5), RAD(90), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	end
	local FIRING = false
	local KEY = Mouse.KeyDown:connect(function(NEWKEY)
		if NEWKEY == "c" then
			FIRING = true
		end
	end)
	repeat
		local bv = Instance.new("BodyVelocity") 
		bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
		bv.velocity = CF(RootPart.Position,RootPart.CFrame*CF(0,0.35,2).p).lookVector*55
		bv.Parent = RootPart
		Debris:AddItem(bv,0.02)
		FIRING = false
		SHAKECAM(TOPBARREL.Position,16,8,8)
		for E = 1, #GUNBARRELS do
			WACKYEFFECT({Time = 25, EffectType = "Block", Size = VT(0,0,0), Size2 = VT(1.4,1.4,1.4), Transparency = 0, Transparency2 = 1, CFrame = CF(GUNBARRELS[E].Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BASECOLOR, SoundID = nil, SoundPitch = 1, SoundVolume = 4})
			for A = 1, 3 do
				local POS1 = CF(GUNBARRELS[E].Position,Mouse.Hit.p)*CF(0,0,-45).p
				local AIMPOS = CF(GUNBARRELS[E].Position,POS1) * CF(0,0,-45) * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)))*CF(0,0,MRANDOM(5,75)/10).p
				local HIT,POS = CastProperRay(GUNBARRELS[E].Position,AIMPOS,1000,Character)
				local DISTANCE = (POS - GUNBARRELS[E].Position).Magnitude
				if HIT then
					if HIT.Parent:FindFirstChildOfClass("Humanoid") then
						--REAP(HIT.Parent)
					end
				end
				WACKYEFFECT({Time = 20, EffectType = "Box", Size = VT(0,0,DISTANCE), Size2 = VT(0.7,0.7,DISTANCE), Transparency = 0, Transparency2 = 1, CFrame = CF(GUNBARRELS[E].Position,POS)*CF(0,0,-DISTANCE/2), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BASECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end
		end
		WACKYEFFECT({Time = 30, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(2,0,2), Transparency = 0.5, Transparency2 = 1, CFrame = TOPBARREL.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BASECOLOR, SoundID = 722989551, SoundPitch = MRANDOM(8,12)/13, SoundVolume = 5, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 0})
		for E = 1, 30 do
			Swait()
			ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(-140), RAD(0), RAD(0)), 1 / Animation_Speed)
			GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(-30 + E), RAD(0), RAD(0)), 2 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-40)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(40)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(50), RAD(-20), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(150 - (E*2)), RAD(5), RAD(-40)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			if ANIM == "Fall" or ANIM == "Jump" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-5), RAD(90), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
		end
		for i=0, 0.1, 0.1 / Animation_Speed do
			Swait()
			ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(-140), RAD(0), RAD(0)), 1 / Animation_Speed)
			GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(-2), RAD(0), RAD(0)), 2 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-40)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(40)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(50), RAD(-20), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(90), RAD(5), RAD(-40)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			if ANIM == "Fall" or ANIM == "Jump" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-5), RAD(90), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
		end
	until FIRING == false
	KEY:Disconnect()
	ATTACK = false
	Rooted = false
end
function TenderRain()
	ATTACK = true
	Rooted = true
	CreateSound(1498950813,LeftArm,5,0.8,false)
	for i=0, 0.1, 0.1 / Animation_Speed do
		Swait()
		ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(-140), RAD(0), RAD(0)), 1 / Animation_Speed)
		GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(5), RAD(0), RAD(0)), 1 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(10)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(50), RAD(-20), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(190), RAD(5), RAD(-5)) * LEFTSHOULDERC0, 2 / Animation_Speed)
		if ANIM == "Fall" or ANIM == "Jump" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		else
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-5), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	end
	for i=0, 0.4, 0.1 / Animation_Speed do
		Swait()
		ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(-140), RAD(0), RAD(0)), 1 / Animation_Speed)
		GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(10)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(50), RAD(-20), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(180), RAD(5), RAD(5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		if ANIM == "Fall" or ANIM == "Jump" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		else
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-5), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	end
	repeat
		SHAKECAM(TOPBARREL.Position,16,8,8)
		for E = 1, #GUNBARRELS do
			WACKYEFFECT({Time = 25, EffectType = "Block", Size = VT(0,0,0), Size2 = VT(1.4,1.4,1.4), Transparency = 0, Transparency2 = 1, CFrame = CF(GUNBARRELS[E].Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BASECOLOR, SoundID = nil, SoundPitch = 1, SoundVolume = 4})
			for A = 1, 3 do
				local POS1 = CF(GUNBARRELS[E].Position,GUNBARRELS[E].CFrame * CF(0,15,0).p)*CF(0,0,-45).p
				local AIMPOS = CF(GUNBARRELS[E].Position,POS1) * CF(0,0,-45) * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)))*CF(0,0,MRANDOM(5,75)/10).p
				local HIT,POS = CastProperRay(GUNBARRELS[E].Position,AIMPOS,1000,Character)
				local DISTANCE = (POS - GUNBARRELS[E].Position).Magnitude
				WACKYEFFECT({Time = 20, EffectType = "Box", Size = VT(0,0,DISTANCE), Size2 = VT(0.7,0.7,DISTANCE), Transparency = 0, Transparency2 = 1, CFrame = CF(GUNBARRELS[E].Position,POS)*CF(0,0,-DISTANCE/2), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BASECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end
		end
		WACKYEFFECT({Time = 30, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(2,0,2), Transparency = 0.5, Transparency2 = 1, CFrame = TOPBARREL.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BASECOLOR, SoundID = 722989551, SoundPitch = MRANDOM(8,12)/13, SoundVolume = 5, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 0})
		for E = 1, 15 do
			Swait()
			ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(-140), RAD(0), RAD(0)), 1 / Animation_Speed)
			GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(10)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(50), RAD(-20), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(180), RAD(5), RAD(-20 - E)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			if ANIM == "Fall" or ANIM == "Jump" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-5), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
		end
		coroutine.resume(coroutine.create(function()
			coroutine.resume(coroutine.create(function()
				local POS = Mouse.Hit.p
				for i = 1, 12 do
					Swait()
					local AIRPOS = POS+VT(0,250,0)
					local MOUSE = POS+VT(MRANDOM(-25,25),0,MRANDOM(-25,25))/2
					local HIT,POS = Raycast(AIRPOS, (CF(AIRPOS, MOUSE)).lookVector, 2000, Character)
					local DISTANCE = (POS - AIRPOS).Magnitude
					if HIT then
						if HIT.Parent:FindFirstChildOfClass("Humanoid") then
							REAP(HIT.Parent)
						end
					end
					WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(4,1,4), Size2 = VT(5,0,5), Transparency = 0.5, Transparency2 = 1, CFrame = CF(POS) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BASECOLOR, SoundID = nil, SoundPitch = MRANDOM(8,12)/8, SoundVolume = 2, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 15})
					WACKYEFFECT({Time = 20, EffectType = "Box", Size = VT(0,0,DISTANCE), Size2 = VT(0.7,0.7,DISTANCE), Transparency = 0, Transparency2 = 1, CFrame = CF(AIRPOS,POS)*CF(0,0,-DISTANCE/2), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BASECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				end
			end))
			local HIT,POS = Raycast(Mouse.Hit.p+VT(0,500,0), (CF(Mouse.Hit.p+VT(0,100,0), Mouse.Hit.p)).lookVector, 2000, Character)
			WACKYEFFECT({Time = 30, EffectType = "Wave", Size = VT(0,25,0), Size2 = VT(35,0,35), Transparency = 0.5, Transparency2 = 1, CFrame = CF(POS) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BASECOLOR, SoundID = 130972023, SoundPitch = MRANDOM(8,12)/8, SoundVolume = 2, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
			WACKYEFFECT({Time = 30, EffectType = "Wave", Size = VT(4,15,4), Size2 = VT(25,0,25), Transparency = 0.5, Transparency2 = 1, CFrame = CF(POS) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BASECOLOR, SoundID = 130972023, SoundPitch = MRANDOM(8,12)/8, SoundVolume = 2, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
			SHAKECAM(POS,22,10,8)
			ApplyAoE(POS,12)
		end))
		for i=0, 0.1, 0.1 / Animation_Speed do
			Swait()
			ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(-140), RAD(0), RAD(0)), 1 / Animation_Speed)
			GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(10)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(50), RAD(-20), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(180), RAD(5), RAD(5)) * LEFTSHOULDERC0, 2.5 / Animation_Speed)
			if ANIM == "Fall" or ANIM == "Jump" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-5), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end
function SpiritFire()
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	if HITFLOOR then
		ATTACK = true
		Rooted = true
		AttackGyro()
		FIRE.Enabled = true
		CreateSound(874376217,BLADE,7,1,false)
		CreateSound(463598785,BLADE,10,1.2,false)
		for i=0, 2, 0.1 / Animation_Speed do
			Swait()
			local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
			local POS = RootPart.CFrame*CF(MRANDOM(-30,30)/5,0,65).p
			WACKYEFFECT({Time = 20, EffectType = "Wave", Size = VT(4,2,4), Size2 = VT(0,0,0), Transparency = 0.6, Transparency2 = 1, CFrame = CF(HITPOS) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = VT(POS.X,HITPOS.Y,POS.Z), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Fabric", Color = BASECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
			WACKYEFFECT({Time = 15, EffectType = "Wave", Size = VT(4,1.4,4), Size2 = VT(0,0,0), Transparency = 0.6, Transparency2 = 1, CFrame = CF(HITPOS) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = VT(POS.X,HITPOS.Y,POS.Z), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Fabric", Color = BASECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
			ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
			GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(110), RAD(0), RAD(0)), 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(10)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(75)) * ANGLES(RAD(0), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(15), RAD(5), RAD(-5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			if ANIM == "Fall" or ANIM == "Jump" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.35, -0.4) * ANGLES(RAD(-5), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(-15)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
		end
		TRAIL.Enabled = true
		CreateSound(211059653,BLADE,10,0.7,false)
		CreateSound(SWIPES[MRANDOM(1,#SWIPES)],BLADE,10,0.8,false)
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(70), RAD(0), RAD(0)), 0.35 / Animation_Speed)
			GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(110), RAD(0), RAD(0)), 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.8 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(45), RAD(0), RAD(-60)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.8, 0.5, -1) * ANGLES(RAD(0), RAD(0), RAD(-170)) * ANGLES(RAD(35), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.25 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(15), RAD(5), RAD(-5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			if ANIM == "Fall" or ANIM == "Jump" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-5), RAD(35), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-100), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			end
		end
		local CFRAME = RootPart.CFrame*CF(0,0,-4)
		local AIM = CFRAME*CF(0,0,-50000)
		local SPOTS = {}
		local CRACKPARTS = {}
		--ApplyAoE(BLADE.Position,15)
		SHAKECAM(BLADE.Position,25,5,13)
		WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(4,4,4), Size2 = VT(25,25,25), Transparency = 0.2, Transparency2 = 1, CFrame = CF(BLADE.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 168513088, SoundPitch = MRANDOM(8,15)/7, SoundVolume = 4, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 25})
		coroutine.resume(coroutine.create(function()
			local DONE = 0
			for CRACKS = 1, 2 do
				coroutine.resume(coroutine.create(function()
					local HITFLOOR,HITPOS = Raycast(CFRAME.p, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
					if HITFLOOR then
						local AIM = VT(AIM.X,HITPOS.Y,AIM.Z)
						local LASTPART = nil
						for PARTS = 1, MRANDOM(6,15)+(CRACKS*8) do
							Swait()
							if LASTPART == nil then
								local GETXZ = CFRAME*CF(MRANDOM(-3,3),0,-5)*CF(0,0,-2).p
								local CRACK = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC("Really red"), "CrackPart", VT(0.2,0,8), true)
								CRACK.CFrame = CF(HITPOS,VT(GETXZ.X,HITPOS.Y,GETXZ.Z))*CF(0,0,-4)
								LASTPART = CRACK
							else
								local CRACK = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC("Really red"), "CrackPart", VT(0.2,0,8), true)
								CRACK.CFrame = CF(LASTPART.CFrame*CF(0,0,-4).p,AIM) * ANGLES(RAD(0), RAD(MRANDOM(-65,65)), RAD(0))*CF(0,0,-4)
								LASTPART = CRACK
							end
							table.insert(CRACKPARTS,LASTPART)
							local HITFLOOR,HITPOS = Raycast(LASTPART.Position+VT(0,0.1,0), (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 0.5, Character)
							if HITFLOOR == nil then
								LASTPART:remove()
								break
							else
								if MRANDOM(1,2) == 1 and PARTS > 1 then
									table.insert(SPOTS,LASTPART.Position)
								end
							end
						end
						DONE = DONE + 1
					end
				end))
			end
			repeat wait() until DONE >= 2
			wait(0.15)
			for E = 1, #SPOTS do
				Swait(5)
				local SPOT = SPOTS[E]
				--ApplyAoE(SPOT,25)
				SHAKECAM(SPOT,60,5,13)
				local ANGLE = ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0)) * ANGLES(RAD(MRANDOM(-25,25)), RAD(0), RAD(0))
				WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(7,0,7), Size2 = VT(20,60,20), Transparency = 0.6, Transparency2 = 1, CFrame = CF(SPOT)*ANGLE, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 168513088, SoundPitch = MRANDOM(8,15)/10, SoundVolume = 4, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 25})
				WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(8,0,8), Size2 = VT(15,50,15), Transparency = 0.3, Transparency2 = 1, CFrame = CF(SPOT)*ANGLE, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 168513088, SoundPitch = MRANDOM(8,15)/10, SoundVolume = 4, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 25})
				for i = 1, 3 do
					WACKYEFFECT({Time = 65+(i*2), EffectType = "Wave", Size = VT(0,12,0), Size2 = VT(25+(i*2),0,25+(i*2)), Transparency = 0.8, Transparency2 = 1, CFrame = CF(SPOT) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0)) * ANGLES(RAD(MRANDOM(-25,25)), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, SizeBoomerang = 25})
				end
			end
			wait(0.3)
			for i = 1, 15 do
				Swait()
				for E = 1, #CRACKPARTS do
					CRACKPARTS[E].Transparency = CRACKPARTS[E].Transparency + 0.5/15
				end
			end
			for E = 1, #CRACKPARTS do
				CRACKPARTS[E]:remove()
			end
		end))
		FIRE.Enabled = false
		for i=0, 0.6, 0.1 / Animation_Speed do
			Swait()
			ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(70), RAD(0), RAD(0)), 0.35 / Animation_Speed)
			GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(110), RAD(0), RAD(0)), 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.8 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(45), RAD(0), RAD(-60)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.8, 0.5, -1) * ANGLES(RAD(0), RAD(0), RAD(-170)) * ANGLES(RAD(35), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.25 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(15), RAD(5), RAD(-5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			if ANIM == "Fall" or ANIM == "Jump" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-5), RAD(35), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-100), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			end
		end
		TRAIL.Enabled = false
		for i=0, 0.1, 0.1 / Animation_Speed do
			Swait()
			ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(110), RAD(0), RAD(0)), 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(10)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * ANGLES(RAD(0), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(15), RAD(5), RAD(-5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			if ANIM == "Fall" or ANIM == "Jump" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-5), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
		end
		ATTACK = false
		Rooted = false
	end
end
function ReapersBallad()
	ATTACK = true
	Rooted = true
	for i=0, 0.2, 0.1 / Animation_Speed do
		Swait()
		ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(-140), RAD(0), RAD(0)), 1 / Animation_Speed)
		GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(110), RAD(0), RAD(0)), 1 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(5), RAD(0), RAD(-10)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(10)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(50), RAD(-20), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(15), RAD(5), RAD(-5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		if ANIM == "Fall" or ANIM == "Jump" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		else
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-4.5), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(10), RAD(-70), RAD(0)) * ANGLES(RAD(-5.5), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	end
	CreateSound(435742675,Head,5,1,false)
	local SHOUTING = true
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
			if HITFLOOR then
				WACKYEFFECT({EffectType = "Wave", Size = VT(20,1,20), Size2 = VT(25+MRANDOM(0,8),7,25+MRANDOM(0,8)), Transparency = 0.98, Transparency2 = 1, CFrame = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end
			ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,-0.05,0) * ANGLES(RAD(-150), RAD(0), RAD(0)), 1 / Animation_Speed)
			GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(110), RAD(0), RAD(0)), 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-10), RAD(0), RAD(-10)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-35), RAD(0), RAD(10)), 0.23 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(20), RAD(-10), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(15), RAD(10), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			if ANIM == "Fall" or ANIM == "Jump" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-25), RAD(80), RAD(0)) * ANGLES(RAD(-6), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-15), RAD(-70), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
		until SHOUTING == false
	end))
	wait(3)
	local CRACKPARTS = {}
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	if HITFLOOR then
		CreateSound(765590102,RootPart,5,1,false)
		for i = 1, 15 do
			local AIM = CF(HITPOS) * ANGLES(RAD(0), RAD(MRANDOM((360/15)*i)), RAD(0))*CF(0,0,-500)
			local AIM = VT(AIM.X,HITPOS.Y,AIM.Z)
			local LASTPART = nil
			for PARTS = 1, MRANDOM(3,5) do
				if LASTPART == nil then
					local CRACK = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC("Really red"), "CrackPart", VT(0.2,0,4), true)
					CRACK.CFrame = CF(HITPOS,VT(AIM.X,HITPOS.Y,AIM.Z))*CF(0,0,-2)
					LASTPART = CRACK
				else
					local CRACK = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC("Really red"), "CrackPart", VT(0.2,0,4), true)
					CRACK.CFrame = CF(LASTPART.CFrame*CF(0,0,-2).p,AIM) * ANGLES(RAD(0), RAD(MRANDOM(-65,65)), RAD(0))*CF(0,0,-2)
					LASTPART = CRACK
				end
				table.insert(CRACKPARTS,LASTPART)
				local HITFLOOR,HITPOS = Raycast(LASTPART.Position+VT(0,0.1,0), (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 0.5, Character)
				if HITFLOOR == nil then
					LASTPART:remove()
					break
				end
			end
		end
		wait(1.5)
		SHOUTING = false
		local bv = Instance.new("BodyVelocity") 
		bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
		bv.velocity = CF(RootPart.Position,RootPart.CFrame*CF(0,1,4).p).lookVector*125
		bv.Parent = RootPart
		local GYRO = IT("BodyGyro",RootPart)
		GYRO.D = 2
		GYRO.P = 20000
		GYRO.MaxTorque = VT(0,4000000,0)
		GYRO.CFrame = CF(RootPart.Position,RootPart.CFrame*CF(0,0,-5).p)
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(-140), RAD(0), RAD(0)), 1 / Animation_Speed)
			GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(110), RAD(0), RAD(0)), 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-65), RAD(0), RAD(-10)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(55), RAD(0), RAD(10)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(50), RAD(-20), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(15), RAD(20), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			if ANIM == "Fall" or ANIM == "Jump" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(1), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-5), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
		end
		bv:remove()
		GYRO:remove()
		for i=0, 0.3, 0.1 / Animation_Speed do
			Swait()
			ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
			GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(110), RAD(0), RAD(0)), 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(10)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(80)) * ANGLES(RAD(0), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(15), RAD(5), RAD(-5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			if ANIM == "Fall" or ANIM == "Jump" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.35, -0.4) * ANGLES(RAD(-5), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(-15)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
		end
		local CONTROLLING = true
		FIRE.Enabled = true
		CreateSound(463598785,BLADE,10,1.2,false)
		AttackGyro()
		local LOC = CF(HITPOS)
		SHAKECAM(HITPOS,45,5,13)
		WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(4,4,4), Size2 = VT(35,35,35), Transparency = 0.2, Transparency2 = 1, CFrame = CF(HITPOS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 168513088, SoundPitch = MRANDOM(8,15)/7, SoundVolume = 4, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 25})
		coroutine.resume(coroutine.create(function()
			coroutine.resume(coroutine.create(function()
				for i = 1, 15 do
					Swait()
					for E = 1, #CRACKPARTS do
						CRACKPARTS[E].Transparency = CRACKPARTS[E].Transparency + 0.5/15
					end
				end
				for E = 1, #CRACKPARTS do
					CRACKPARTS[E]:remove()
				end
			end))
			wait(0.25)
			coroutine.resume(coroutine.create(function()
				repeat
					local HITFLOOR,HITPOS = Raycast(Mouse.Hit.p+VT(0,1,0), (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 175, Character)
					LOC = Clerp(LOC,CF(HITPOS),0.05)
					Swait()
					if MRANDOM(1,6) == 1 then
						local SPOT = LOC.p
						--ApplyAoE(SPOT,45)
						SHAKECAM(SPOT,160,7,22)
						local ANGLE = ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0)) * ANGLES(RAD(MRANDOM(-5,5)), RAD(0), RAD(0))
						WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(15-8 * SIN(SINE / 6),0,15-8 * SIN(SINE / 6)), Size2 = VT(50-8 * SIN(SINE / 6),260-35 * COS(SINE / 6),50-8 * SIN(SINE / 6)), Transparency = 0.6, Transparency2 = 1, CFrame = CF(SPOT)*ANGLE, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 168513088, SoundPitch = MRANDOM(8,15)/10, SoundVolume = 4, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 25})
						WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(17-8 * SIN(SINE / 6),0,17-8 * SIN(SINE / 6)), Size2 = VT(45-8 * SIN(SINE / 6),250-35 * COS(SINE / 6),45-8 * SIN(SINE / 6)), Transparency = 0.3, Transparency2 = 1, CFrame = CF(SPOT)*ANGLE, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 168513088, SoundPitch = MRANDOM(8,15)/10, SoundVolume = 4, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 25})
					end
					for i = 1, 3 do
						WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0.5,0,0.5), Size2 = VT(0.6,35,0.6), Transparency = 0.3, Transparency2 = 1, CFrame = CF(LOC.p)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(3,120)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
					end
					WACKYEFFECT({Time = 15, EffectType = "Wave", Size = VT(25,5,25), Size2 = VT(25+MRANDOM(0,8),25,25+MRANDOM(0,8)), Transparency = 0.8, Transparency2 = 1, CFrame = LOC*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true})
					WACKYEFFECT({Time = 15, EffectType = "Wave", Size = VT(25,5,25), Size2 = VT(65+MRANDOM(0,8),7,65+MRANDOM(0,8)), Transparency = 0.8, Transparency2 = 1, CFrame = LOC*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true})
				until CONTROLLING == false
			end))
			repeat
				Swait()
				ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(130), RAD(0), RAD(0)), 1 / Animation_Speed)
				GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(110), RAD(0), RAD(0)), 1 / Animation_Speed)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.8 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(45), RAD(0), RAD(-60)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, -0.5) * ANGLES(RAD(0), RAD(0), RAD(-180)) * ANGLES(RAD(70), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(15), RAD(5), RAD(-5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				if ANIM == "Fall" or ANIM == "Jump" then
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
				else
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-5), RAD(35), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.8 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-100), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				end
			until CONTROLLING == false
			FIRE.Enabled = false
		end))
		wait(7)
		CONTROLLING = false
	else
		wait(1)
		SHOUTING = false
	end
	ATTACK = false
	Rooted = false
end
function ForcedSpeed()
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	if HITFLOOR then
		ATTACK = true
		Rooted = true
		for i = 1, 5 do
			WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(2,2,2), Size2 = VT(5+i,15+(i*5),5+i), Transparency = 0.6, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3.5,0) * ANGLES(RAD(-45), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BASECOLOR, SoundID = 466493476, SoundPitch = MRANDOM(8,15)/10, SoundVolume = 4, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
			WACKYEFFECT({Time = 25+(i*2), EffectType = "Wave", Size = VT(4,4,4), Size2 = VT(5+(i*5),i,5+(i*5)), Transparency = 0.6, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3.5,0) * ANGLES(RAD(-45), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BASECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true})
		end
		local bv = Instance.new("BodyVelocity") 
		bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
		bv.velocity = CF(RootPart.Position,RootPart.CFrame*CF(0,1,-4).p).lookVector*125
		bv.Parent = RootPart
		local GYRO = IT("BodyGyro",RootPart)
		GYRO.D = 2
		GYRO.P = 20000
		GYRO.MaxTorque = VT(0,4000000,0)
		GYRO.CFrame = CF(RootPart.Position,RootPart.CFrame*CF(0,0,-5).p)
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(-140), RAD(0), RAD(0)), 1 / Animation_Speed)
			GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(110), RAD(0), RAD(0)), 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(65), RAD(0), RAD(-10)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-35), RAD(0), RAD(10)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(50), RAD(-20), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(15), RAD(20), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			if ANIM == "Fall" or ANIM == "Jump" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(1), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-5), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
		end
		local LOOPED = 0
		repeat
			Swait()
			LOOPED = LOOPED + 1
			ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(-140), RAD(0), RAD(0)), 1 / Animation_Speed)
			GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(110), RAD(0), RAD(0)), 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(65), RAD(0), RAD(-10)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-35), RAD(0), RAD(10)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(50), RAD(-20), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(15), RAD(20), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			if ANIM == "Fall" or ANIM == "Jump" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(1), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-5), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
		until KEYHOLD == false or LOOPED > 50
		bv:Remove()
		local LANDED = nil
		local POS = nil
		coroutine.resume(coroutine.create(function()
			repeat
				Swait()
				ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(-140), RAD(0), RAD(0)), 1 / Animation_Speed)
				GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(40), RAD(0), RAD(0)), 1 / Animation_Speed)
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-35 - 4 * COS(SINE / 6)), RAD(0), RAD(45 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35 - 4 * COS(SINE / 6)), RAD(0), RAD(-45 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -0.7) * ANGLES(RAD(-25 + 5 * SIN(SINE / 12)), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.3) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			until LANDED ~= nil
		end))
		repeat
			Swait()
			local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4.2, Character)
			if HITFLOOR then
				LANDED = HITFLOOR
				POS = HITPOS
			end
		until LANDED ~= nil
		SHAKECAM(POS,35,15,7)
		for i = 1, 3 do
			WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(2+i,0,2+i), Size2 = VT(15+(i*8),15+(i*3),15+(i*8)), Transparency = 0.2, Transparency2 = 1, CFrame = CF(POS) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 765590102, SoundPitch = MRANDOM(7,13)/10, SoundVolume = 1.4, UseBoomerangMath = true})
		end
		--ApplyAoE(POS,17)
		WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(2,0.2,2), Size2 = VT(45,0,45), Transparency = 0.6, Transparency2 = 0.2, CFrame = CF(POS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 3264923, SoundPitch = MRANDOM(8,15)/10, SoundVolume = 4, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
		GYRO:Remove()
		ATTACK = false
		Rooted = false
		wait(0.2)
		ApplyAoE(POS,23)
	end
end
function AttackTemplate()
	ATTACK = true
	Rooted = false
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(-140), RAD(0), RAD(0)), 1 / Animation_Speed)
		GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(110), RAD(0), RAD(0)), 1 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(10)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(50), RAD(-20), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(15), RAD(5), RAD(-5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		if ANIM == "Fall" or ANIM == "Jump" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(1), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		else
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-5), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	end
	ATTACK = false
	Rooted = false
end

--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

function MouseDown(Mouse)
	if ATTACK == false then
		Reap()
	end
end

function MouseUp(Mouse)
HOLD = false
end

function KeyDown(Key)
	KEYHOLD = true
	if Key == "c" and ATTACK == false then
		Unload()
	end

	if Key == "v" and ATTACK == false then
		TenderRain()
	end

	if Key == "b" and ATTACK == false then
		SpiritFire()
	end

	if Key == "x" and ATTACK == false then
		ReapersBallad()
	end

	if Key == "f" and ATTACK == false then
		ForcedSpeed()
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
	for _, c in pairs(Character:GetChildren()) do
		if c:IsA("BasePart") and c ~= RootPart then
			c.Anchored = false
		end
	end
	if UNANCHOR == true then
		RootPart.Anchored = false
	else
		RootPart.Anchored = true
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

while true do
	Swait()
	ANIMATE.Parent = nil
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
	    v:Stop();
	end
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	local WALKSPEEDVALUE = 8 / (Humanoid.WalkSpeed / 16)
	if ANIM == "Walk" and TORSOVELOCITY > 1 then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0.1 + 0.05 * COS(SINE / (WALKSPEEDVALUE/2))) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 0.875 - 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), 0.25 * SIN(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10+50 * COS(SINE / WALKSPEEDVALUE))), 0.6 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 0.875 + 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.25 * SIN(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-10+50 * COS(SINE / WALKSPEEDVALUE))), 0.6 / Animation_Speed)
	elseif (ANIM ~= "Walk") or (TORSOVELOCITY < 1) then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.7 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.7 / Animation_Speed)
	end
	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
		ANIM = "Jump"
		if ATTACK == false then
			ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(-120), RAD(0), RAD(0)), 1 / Animation_Speed)
			GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(40), RAD(0), RAD(0)), 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(50), RAD(-25), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(-25 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(1), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
		ANIM = "Fall"
		if ATTACK == false then
			ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(-140), RAD(0), RAD(0)), 1 / Animation_Speed)
			GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(40), RAD(0), RAD(0)), 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(45 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(-45 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -0.7) * ANGLES(RAD(-25 + 5 * SIN(SINE / 12)), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.3) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
		ANIM = "Idle"
		WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0.5,0,0.5), Size2 = VT(0.2,6,0.2), Transparency = 0.3, Transparency2 = 1, CFrame = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(3,7)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = BASECOLOR, UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		if ATTACK == false then
			ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(-140 - 2.5 * COS(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(110), RAD(0), RAD(0)), 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-10)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * COS(SINE / 12)), RAD(0), RAD(10)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(50 - 4 * COS(SINE / 12)), RAD(-20 - 4 * COS(SINE / 12)), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(15), RAD(5), RAD(-5 - 2.5 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(-5), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
		ANIM = "Walk"
		if ATTACK == false then
			ScytheJoint.C1 = Clerp(ScytheJoint.C1, CF(0,0,0) * ANGLES(RAD(-150), RAD(0), RAD(0)), 1 / Animation_Speed)
			GunJoint.C1 = Clerp(GunJoint.C1, CF(0,0,0) * ANGLES(RAD(90 - 16 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.05) * ANGLES(RAD(5), RAD(0), RAD(-7 * COS(SINE / (WALKSPEEDVALUE)))), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 1 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(7 * COS(SINE / (WALKSPEEDVALUE)))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(35 + 8 * COS(SINE / (WALKSPEEDVALUE))), RAD(-15+7 * COS(SINE / (WALKSPEEDVALUE))), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-20 * COS(SINE / WALKSPEEDVALUE)), RAD(5+7 * COS(SINE / (WALKSPEEDVALUE))), RAD(-5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
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
	BMUSIC.SoundId = "rbxassetid://"..SONGID
	BMUSIC.Looped = true
	BMUSIC.Pitch = PITCH
	BMUSIC.Volume = VOLUME
	BMUSIC.Playing = true
	if BMUSIC.Parent ~= RootPart then
		BMUSIC = IT("Sound",RootPart)
	end
	Humanoid.Name = "NONHUM"
	refit()
end

--//=================================\\
--\\=================================//





--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--



