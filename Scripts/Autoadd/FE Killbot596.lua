-- keybinds
-- z
-- b
-- c
-- v
-- e (disabled)
-- x
-- t

local fake_transparency = 0.8





local Motors = {
	["Left Hip"] = 0,
	["Neck"] = 0,
	["Left Shoulder"] = 0,
	["Right Hip"] = 0,
	["Right Shoulder"] = 0
}


local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local RunService = game:GetService("RunService")
game.Players.LocalPlayer.Character.Archivable = true
local FakeCharacter = game.Players.LocalPlayer.Character:Clone()
Player.Character:BreakJoints()
Player.Character=nil

coroutine.wrap(function()
	

Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = FakeCharacter
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
local Speed = 16
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local DAMAGEMULTIPLIER = 0
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
WEAPONGUI.Name = "Weapon GUI"
local Weapon = IT("Model")
Weapon.Name = "Adds"
local Effects = IT("Folder", Weapon)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local UNANCHOR = true

--//=================================\\
--\\=================================//


--//=================================\\
--|| SAZERENOS' ARTIFICIAL HEARTBEAT
--\\=================================//

frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
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
		game:GetService("RunService").Heartbeat:Wait()
	else
		for i = 1, NUMBER do
			game:GetService("RunService").Heartbeat:Wait()
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
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
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

--WACKYEFFECT({EffectType = "", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
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
		elseif TYPE == "Block" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = VT(SIZE.X,SIZE.X,SIZE.X)
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X,SIZE.X,0.1), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			for LOOP = 1, TIME+1 do
				Swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = VT(0,0,-MSH.Scale.X/8)
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
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until SOUND.Playing == false
				EFFECT:remove()
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

Debris = game:GetService("Debris")

function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos,EndPos).lookVector
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end

function CharacterFade(COLOR,TIMER)
	coroutine.resume(coroutine.create(function()
		local FADE = IT("Model",Effects)
		for _, c in pairs(Character:GetChildren()) do
			if c.ClassName == "Part" and c ~= RootPart then
				local FADER = c:Clone()
				FADER.Color = COLOR
				FADER.CFrame = c.CFrame
				FADER.Parent = FADE
				FADER.Anchored = true
				FADER.Transparency = 0.25
				FADER:BreakJoints()
				FADER.Material = "Glass"
				FADER:ClearAllChildren()
				if FADER.Name == "Head" then
					FADER.Size = VT(1,1,1)
				end
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

local PE=Instance.new("ParticleEmitter")
PE.LightEmission=0.3
PE.Size=NumberSequence.new(0)
PE.Transparency=NumberSequence.new(0,1)
PE.Rotation=NumberRange.new(0,360)
PE.LockedToPart = false
PE.Speed = NumberRange.new(0,0,0)
PE.ZOffset = 0.3
PE.Rate = 999
PE.VelocitySpread = 25
PE.Name = "Particles"

function CreateParticles(art,accel,drag,lifetime,type,isenabledbydefault,locked,size,speed)
    local particle = nil
    coroutine.resume(coroutine.create(function(PART)
        particle = PE:Clone()
        Swait()
        particle.Rate = 999
        particle.Parent = art
        particle.Acceleration = accel
        if type == "Fire" then
            local EyeSizes={
                NumberSequenceKeypoint.new(0,size,size/2),
                NumberSequenceKeypoint.new(1,size/4,size/8)
            }
            particle.Size = NumberSequence.new(EyeSizes)
        elseif type == "Smoke" then
            local EyeSizes={
                NumberSequenceKeypoint.new(0,size/5,0),
                NumberSequenceKeypoint.new(1,size*2,0.5)
            }
            particle.Size = NumberSequence.new(EyeSizes)
        elseif type == "Solid" then
            local EyeSizes={
                NumberSequenceKeypoint.new(0,size,0),
                NumberSequenceKeypoint.new(1,size,0)
            }
            particle.Size = NumberSequence.new(EyeSizes)
        end
        particle.Lifetime=NumberRange.new(lifetime)
        particle.Drag = drag
        if locked == true then
            particle.LockedToPart = true
        end
        particle.Speed = NumberRange.new(speed*0.8,speed)
        particle.Texture = "http://www.roblox.com/asset/?id=1179557490"
        particle.Enabled = isenabledbydefault
        particle.Color = ColorSequence.new(Color3.new(255/255, 176/255, 0))
    end))
return particle
end

--//=================================\\
--||	     RAGDOLL STUFF
--\\=================================//

function recurse(root,callback,i)
	i= i or 0
	for _,v in pairs(root:GetChildren()) do
		i = i + 1
		callback(i,v)
		
		if #v:GetChildren() > 0 then
			i = recurse(v,callback,i)
		end
	end
	
	return i
end

function ragdollJoint(character, part0, part1, attachmentName, className, properties)
	attachmentName = attachmentName.."RigAttachment"
	local constraint = Instance.new(className.."Constraint")
	constraint.Attachment0 = part0:FindFirstChild(attachmentName)
	constraint.Attachment1 = part1:FindFirstChild(attachmentName)
	constraint.Name = "RagdollConstraint"..part1.Name
	
	for _,propertyData in next,properties or {} do
		constraint[propertyData[1]] = propertyData[2]
	end
	
	constraint.Parent = character
end

function getAttachment0(character, attachmentName)
	for _,child in next,character:GetChildren() do
		local attachment = child:FindFirstChild(attachmentName)
		if attachment then
			return attachment
		end
	end
end

function ArtificialHitbox(Part)
	local HITBOX = CreatePart(3, Part, "Metal", 0, 1, "Really black", "Hitbox", Part.Size/2, false)
	HITBOX.CanCollide = true
	HITBOX.CFrame = Part.CFrame
	weldBetween(Part,HITBOX)
end

function R15Ragdoll(character,KeepArms)
	character:BreakJoints()
	coroutine.resume(coroutine.create(function()
		recurse(character, function(_,v)
			if v:IsA("Attachment") then
				v.Axis = Vector3.new(0, 1, 0)
				v.SecondaryAxis = Vector3.new(0, 0, 1)
				v.Rotation = Vector3.new(0, 0, 0)
			end
		end)
		for _,child in next,character:GetChildren() do
			if child:IsA("Accoutrement") then
				for _,part in next,child:GetChildren() do
					if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
						local attachment1 = part:FindFirstChildOfClass("Attachment")
						local attachment0 = getAttachment0(character,attachment1.Name)
						if attachment0 and attachment1 then
							local constraint = Instance.new("HingeConstraint")
							constraint.Attachment0 = attachment0
							constraint.Attachment1 = attachment1
							constraint.LimitsEnabled = true
							constraint.UpperAngle = 0
							constraint.LowerAngle = 0
							constraint.Parent = character
						end
						ArtificialHitbox(part)
					elseif part.Name == "HumanoidRootPart" then
						part:remove()
					end
				end
			end
		end
		
		ragdollJoint(character,character.LowerTorso, character.UpperTorso, "Waist", "BallSocket", {
			{"LimitsEnabled",true};
			{"UpperAngle",5};
		})
		if character:FindFirstChild("Head") then
			ragdollJoint(character,character.UpperTorso, character.Head, "Neck", "BallSocket", {
				{"LimitsEnabled",true};
				{"UpperAngle",15};
			})
		end
		
		local handProperties = {
			{"LimitsEnabled", true};
			{"UpperAngle",0};
			{"LowerAngle",0};
		}
		ragdollJoint(character,character.LeftLowerArm, character.LeftHand, "LeftWrist", "Hinge", handProperties)
		ragdollJoint(character,character.RightLowerArm, character.RightHand, "RightWrist", "Hinge", handProperties)
		
		local shinProperties = {
			{"LimitsEnabled", true};
			{"UpperAngle", 0};
			{"LowerAngle", -75};
		}
		ragdollJoint(character,character.LeftUpperLeg, character.LeftLowerLeg, "LeftKnee", "Hinge", shinProperties)
		ragdollJoint(character,character.RightUpperLeg, character.RightLowerLeg, "RightKnee", "Hinge", shinProperties)
		
		local footProperties = {
			{"LimitsEnabled", true};
			{"UpperAngle", 15};
			{"LowerAngle", -45};
		}
		ragdollJoint(character,character.LeftLowerLeg, character.LeftFoot, "LeftAnkle", "Hinge", footProperties)
		ragdollJoint(character,character.RightLowerLeg, character.RightFoot, "RightAnkle", "Hinge", footProperties)
		if KeepArms == true then
			ragdollJoint(character,character.UpperTorso, character.RightUpperArm, "RightShoulder", "BallSocket")
			ragdollJoint(character,character.RightUpperArm, character.RightLowerArm, "RightElbow", "BallSocket")
			ragdollJoint(character,character.UpperTorso, character.LeftUpperArm, "LeftShoulder", "BallSocket")
			ragdollJoint(character,character.LeftUpperArm, character.LeftLowerArm, "LeftElbow", "BallSocket")
		end
		ragdollJoint(character,character.LowerTorso, character.LeftUpperLeg, "LeftHip", "BallSocket")
		ragdollJoint(character,character.LowerTorso, character.RightUpperLeg, "RightHip", "BallSocket")
		Debris:AddItem(character,5)
	end))
end

function Ragdoll(Character2,CharTorso,KeepArms)
	coroutine.resume(coroutine.create(function()
		Character2:BreakJoints()
		local hum = Character2:findFirstChild("Humanoid")
		hum:remove()
		local function Scan(ch)
			local e
			for e = 1,#ch do
				Scan(ch[e]:GetChildren())
				if ch[e].ClassName == "Weld" or ch[e].ClassName == "Motor6D" then
					ch[e]:remove()
				end
			end
		end
		local NEWHUM = IT("Humanoid")
		NEWHUM.Name = "Corpse"
		NEWHUM.Health = 0
		NEWHUM.MaxHealth = 0
		NEWHUM.PlatformStand = true
		NEWHUM.Parent = Character2
		NEWHUM.DisplayDistanceType = "None"
	
		local ch = Character2:GetChildren()
		local i
		for i = 1,#ch do
			if ch[i].Name == "THandle1" or ch[i].Name == "THandle2" then
				ch[i]:remove()
			end
		end
	
		local Torso2 = Character2.Torso
		local movevector = Vector3.new()
	
		if Torso2 then
			movevector = CFrame.new(CharTorso.Position,Torso2.Position).lookVector
			local Head = Character2:FindFirstChild("Head")
			if Head then
				local Neck = Instance.new("Weld")
				Neck.Name = "Neck"
				Neck.Part0 = Torso2
				Neck.Part1 = Head
				Neck.C0 = CFrame.new(0, 1.5, 0)
				Neck.C1 = CFrame.new()
				Neck.Parent = Torso2
	
			end
			local Limb = Character2:FindFirstChild("Right Arm")
			if Limb and KeepArms == true then
	
				Limb.CFrame = Torso2.CFrame * CFrame.new(1.5, 0, 0)
				local Joint = Instance.new("Glue")
				Joint.Name = "RightShoulder"
				Joint.Part0 = Torso2
				Joint.Part1 = Limb
				Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				Joint.Parent = Torso2
	
				local B = Instance.new("Part")
				B.TopSurface = 0
				B.BottomSurface = 0
				B.formFactor = "Symmetric"
				B.Size = Vector3.new(1, 1, 1)
				B.Transparency = 1
				B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
				B.Parent = Character2
				local W = Instance.new("Weld")
				W.Part0 = Limb
				W.Part1 = B
				W.C0 = CFrame.new(0, -0.5, 0)
				W.Parent = Limb
	
			end
			local Limb = Character2:FindFirstChild("Left Arm")
			if Limb and KeepArms == true then
	
				Limb.CFrame = Torso2.CFrame * CFrame.new(-1.5, 0, 0)
				local Joint = Instance.new("Glue")
				Joint.Name = "LeftShoulder"
				Joint.Part0 = Torso2
				Joint.Part1 = Limb
				Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				Joint.Parent = Torso2
	
				local B = Instance.new("Part")
				B.TopSurface = 0
				B.BottomSurface = 0
				B.formFactor = "Symmetric"
				B.Size = Vector3.new(1, 1, 1)
				B.Transparency = 1
				B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
				B.Parent = Character2
				local W = Instance.new("Weld")
				W.Part0 = Limb
				W.Part1 = B
				W.C0 = CFrame.new(0, -0.5, 0)
				W.Parent = Limb
	
			end
			local Limb = Character2:FindFirstChild("Right Leg")
			if Limb then
	
				Limb.CFrame = Torso2.CFrame * CFrame.new(0.5, -2, 0)
				local Joint = Instance.new("Glue")
				Joint.Name = "RightHip"
				Joint.Part0 = Torso2
				Joint.Part1 = Limb
				Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				Joint.Parent = Torso2
	
				local B = Instance.new("Part")
				B.TopSurface = 0
				B.BottomSurface = 0
				B.formFactor = "Symmetric"
				B.Size = Vector3.new(1, 1, 1)
				B.Transparency = 1
				B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
				B.Parent = Character2
				local W = Instance.new("Weld")
				W.Part0 = Limb
				W.Part1 = B
				W.C0 = CFrame.new(0, -0.5, 0)
				W.Parent = Limb
	
			end
			local Limb = Character2:FindFirstChild("Left Leg")
			if Limb then
	
				Limb.CFrame = Torso2.CFrame * CFrame.new(-0.5, -2, 0)
				local Joint = Instance.new("Glue")
				Joint.Name = "LeftHip"
				Joint.Part0 = Torso2
				Joint.Part1 = Limb
				Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				Joint.Parent = Torso2
	
				local B = Instance.new("Part")
				B.TopSurface = 0
				B.BottomSurface = 0
				B.formFactor = "Symmetric"
				B.Size = Vector3.new(1, 1, 1)
				B.Transparency = 1
				B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
				B.Parent = Character2
				local W = Instance.new("Weld")
				W.Part0 = Limb
				W.Part1 = B
				W.C0 = CFrame.new(0, -0.5, 0)
				W.Parent = Limb
	
			end
			--[
			local Bar = Instance.new("Part")
			Bar.TopSurface = 0
			Bar.BottomSurface = 0
			Bar.formFactor = "Symmetric"
			Bar.Size = Vector3.new(1, 1, 1)
			Bar.Transparency = 1
			Bar.CFrame = Torso2.CFrame * CFrame.new(0, 0.5, 0)
			Bar.Parent = Character2
			local Weld = Instance.new("Weld")
			Weld.Part0 = Torso2
			Weld.Part1 = Bar
			Weld.C0 = CFrame.new(0, 0.5, 0)
			Weld.Parent = Torso2
			--]]
		end
		Character2.Parent = workspace
		Debris:AddItem(Character2,5)
	
		return Character2,Torso2
	end))
end

--//=================================\\
--||	     WEAPON CREATION
--\\=================================//

local DUST = CreateParticles(RightArm,VT(0,0,0),5,2,"Smoke",false,false,5,0)
DUST.ZOffset = 1
RightArm.Transparency = 1
local BasePart = CreatePart(3, Weapon, "Metal", 0, 0, "Really black", "Part", VT(1,2,1),false)
CreateWeldOrSnapOrMotor("Weld", RightArm, RightArm, BasePart, CF(0,0,0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local Sphere = CreatePart(3, Weapon, "Metal", 0, 0, "Really black", "Part", VT(1.4,1.4,1.4),false)
MakeForm(Sphere,"Ball")
CreateWeldOrSnapOrMotor("Weld", BasePart, BasePart, Sphere, CF(0.2,0.8,0.1) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local LaserPart = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", "Part", VT(0.3,0.3,0.1),false)
MakeForm(LaserPart,"Ball")
CreateWeldOrSnapOrMotor("Weld", Sphere, Sphere, LaserPart, CF(0,0,-0.65) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local Bump = CreatePart(3, Weapon, "Metal", 0, 0, "Really black", "Part", VT(0.3,0.3,0.2),false)
MakeForm(Bump,"Ball")
CreateWeldOrSnapOrMotor("Weld", Sphere, Sphere, Bump, CF(0,0,0.65) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local BottomLaser = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", "Part", VT(0.4,0,0.4),false)
MakeForm(BottomLaser,"Cyl")
CreateWeldOrSnapOrMotor("Weld", BasePart, BasePart, BottomLaser, CF(0,-1,0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local Part1 = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", "Part", VT(0,0.5,0.5),false)
CreateWeldOrSnapOrMotor("Weld", BasePart, BasePart, Part1, CF(0,-0.76,-0.26) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local Part2 = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", "Part", VT(0,0.5,0.5),false)
CreateWeldOrSnapOrMotor("Weld", BasePart, Part1, Part2, CF(0,0.25,0) * ANGLES(RAD(0), RAD(0), RAD(-25)), CF(0, -0.25, 0))
local Part3 = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", "Part", VT(0,0.5,0.5),false)
CreateWeldOrSnapOrMotor("Weld", BasePart, Part1, Part3, CF(0,0.25,0) * ANGLES(RAD(0), RAD(0), RAD(-90)), CF(0, -0.26, 0))
local Part4 = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", "Part", VT(0,0.56,0.5),false)
CreateWeldOrSnapOrMotor("Weld", BasePart, Part2, Part4, CF(0,0.25,0) * ANGLES(RAD(0), RAD(0), RAD(90)), CF(0, -0.26, 0))
local Part5 = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", "Part", VT(0,0.56,0.5),false)
CreateWeldOrSnapOrMotor("Weld", BasePart, Part4, Part5, CF(0,0.25,0) * ANGLES(RAD(0), RAD(0), RAD(-125)), CF(0, -0.26, 0))
local Part = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", "Part", VT(0,0.25,0.5),false)
CreateWeldOrSnapOrMotor("Weld", BasePart, Part4, Part, CF(0,0.25,0) * ANGLES(RAD(0), RAD(0), RAD(25)), CF(0, -0.26/2, 0))
local Part = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", "Part", VT(0,0.3,0.5),false)
CreateWeldOrSnapOrMotor("Weld", BasePart, Part2, Part, CF(0,0.25,0) * ANGLES(RAD(0), RAD(0), RAD(-65)), CF(0, -0.31/2, 0))
local Part = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", "Part", VT(1.4,0,1.4),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Sphere, Sphere, Part, CF(0.035,0,0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", "Part", VT(1.4,0,1.4),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Sphere, Sphere, Part, CF(0,-0.035,0) * ANGLES(RAD(0), RAD(0), RAD(90)), CF(0, 0, 0))
local Sphere = CreatePart(3, Weapon, "Metal", 0, 0, "Really black", "Part", VT(0.3,1.6,0.7),false)
MakeForm(Sphere,"Ball")
CreateWeldOrSnapOrMotor("Weld", BasePart, BasePart, Sphere, CF(0.45,0.5,0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))

for _, c in pairs(Weapon:GetChildren()) do
	if c.ClassName == "Part" then
		c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end

local SKILLTEXTCOLOR = C3(1,0,0)
local SKILLFONT = "SciFi"
local SKILLTEXTSIZE = 5

Weapon.Parent = Character

Humanoid.Died:connect(function()
	ATTACK = false
end)

local SKILL1FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.8, 0, 0.90, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 1 Frame")
local SKILL2FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.8, 0, 0.86, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 2 Frame")
local SKILL3FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.8, 0, 0.82, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 3 Frame")
local SKILL4FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.8, 0, 0.78, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 4 Frame")
local SKILL5FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.8, 0, 0.74, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 5 Frame")
local SKILL6FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.8, 0, 0.70, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 6 Frame")

local SKILL1TEXT = CreateLabel(SKILL1FRAME, "[Z]", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0.5, "Text 1")
local SKILL2TEXT = CreateLabel(SKILL2FRAME, "[B]", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0.5, "Text 2")
local SKILL3TEXT = CreateLabel(SKILL3FRAME, "[C]", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0.5, "Text 3")
local SKILL4TEXT = CreateLabel(SKILL4FRAME, "[V]", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0.5, "Text 4")
local SKILL5TEXT = CreateLabel(SKILL5FRAME, "[E]", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0.5, "Text 5")
local SKILL6TEXT = CreateLabel(SKILL6FRAME, "[X]", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0.5, "Text 6")

--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//

function Warp()
	local HITFLOOR,HITPOS = Raycast(Mouse.Hit.p+VT(0,1,0), (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 100, Character)
	if HITFLOOR then
		CharacterFade(C3(0.5,0,0),50)
		HITPOS = HITPOS + VT(0,3.5,0)
		local POS = RootPart.Position
		RootPart.CFrame = CF(HITPOS,CF(POS,HITPOS)*CF(0,0,-100000).p)
		CreateSound(289556450,Torso,2,MRANDOM(8,13)/10,false)
	end
end

function Dash()
	ATTACK = true
	Rooted = true
	local SOUND = CreateSound(1165167610, Torso, 1, 1, true)
	local LOOP = 0
	repeat
		LOOP = LOOP + 1
		Swait()
		local RAY,RAYPOS = Raycast(RootPart.Position, (CF(RootPart.Position, Mouse.Hit.p)).lookVector, 5, workspace)	
		local HITFLOOR,HITPOS,NORMAL = Raycast(RAYPOS+VT(0,1,0), (CF(RAYPOS, RAYPOS + VT(0, -1, 0))).lookVector, 100, Character)
		if HITFLOOR then
			CharacterFade(C3(0.5,0,0),35)
			HITPOS = HITPOS + VT(0,3.5,0)
			local POS = RootPart.Position
			RootPart.CFrame = CF(HITPOS,CF(POS,HITPOS)*CF(0,0,-100000).p)
			RootPart.Velocity = VT(0,0,0)
			RootPart.RotVelocity = VT(0,0,0)
		end
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(75), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-45), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-15), RAD(0), RAD(15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-15), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-15), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-15), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	until KEYHOLD == false
	coroutine.resume(coroutine.create(function()
		for i = 1, 20 do
			Swait()
			SOUND.Volume = SOUND.Volume - 1/20
		end
		SOUND:remove()
	end))
	if LOOP > 50 then
		CreateSound(772085046,Torso,5,MRANDOM(8,13)/10,false)
		for i = 1, 100 do
			Swait()
			RootPart.CFrame = RootPart.CFrame * CF(0,0,-(1-(i/100))/3)
			WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(1,0.5,1), Size2 = VT(2,0,2), Transparency = 0.7, Transparency2 = 1, CFrame = CF(RightLeg.CFrame*CF(0,-1,0).p), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0.3,0.3,0.3), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(1,0.5,1), Size2 = VT(2,0,2), Transparency = 0.7, Transparency2 = 1, CFrame = CF(LeftLeg.CFrame*CF(0,-1,0).p), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0.3,0.3,0.3), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(35), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-45), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-45), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	end
	ATTACK = false
	Rooted = false
end

function LimbRip()
	ATTACK = true
	Rooted = false
	local TARGET = nil
	local ROOT = nil
	local HUMAN = nil
	local DIST = 4
	Speed = 12
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		local CHILDREN = workspace:GetDescendants()
		for index, CHILD in pairs(CHILDREN) do
			if CHILD.ClassName == "Model" and CHILD ~= Character then
				local HUM = CHILD:FindFirstChildOfClass("Humanoid")
				if HUM then
					local TORSO = CHILD:FindFirstChild("HumanoidRootPart") or CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				end
			end
		end
		if ROOT then
			break
		end
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(10), RAD(0), RAD(-25)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, -0.4) * ANGLES(RAD(90), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-25), RAD(0), RAD(15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	Speed = 16
	if ROOT then
		CreateSound(305685800,Torso,5,1.3,false)
		Rooted = true
		local GORED = false
		coroutine.resume(coroutine.create(function()
			repeat
				Swait()
				ROOT.Anchored = true
			until GORED == true
			ROOT.Anchored = false
		end))
		RootPart.CFrame = ROOT.CFrame*CF(0,0,2.25)
		if TARGET.Name == "Torso" then
			local RARM = TARGET.Parent:FindFirstChild("Right Arm")
			local LARM = TARGET.Parent:FindFirstChild("Left Arm")
			if RARM and LARM then
				for i=0, 1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.4) * ANGLES(RAD(90), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.4) * ANGLES(RAD(90), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				for _, c in pairs(TARGET.Parent:GetDescendants()) do
					if c:IsA("JointInstance") then
						if c.Part1 == RARM or c.Part1 == LARM or c.Part0 == RARM or c.Part0 == LARM then
							c:remove()
						end
					end
				end
				CreateSound(363808674, TARGET, 3, MRANDOM(7,9)/10, false)
				CreateWeldOrSnapOrMotor("Weld", RightArm, RightArm, RARM, CF(0,-1.35,0) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
				CreateWeldOrSnapOrMotor("Weld", LeftArm, LeftArm, LARM, CF(0,-1.35,0) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
				for i=0, 1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.4) * ANGLES(RAD(160), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.4) * ANGLES(RAD(160), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				for i=0, 1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0.25) * ANGLES(RAD(-25), RAD(0), RAD(80)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-30)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.4) * ANGLES(RAD(160), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.4) * ANGLES(RAD(160), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.6) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-65), RAD(0), RAD(0)) * CF(0,1.5,0), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-45), RAD(0)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				for i=0, 0.1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.2, 0.25) * ANGLES(RAD(-35), RAD(0), RAD(80)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-30)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.4) * ANGLES(RAD(160), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.4) * ANGLES(RAD(160), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.6) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-65), RAD(0), RAD(0)) * CF(0,-0.3,0), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-45), RAD(0)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				GORED = true
				Ragdoll(TARGET.Parent,Torso)
				if ROOT.Name ~= "Torso" then
					ROOT:remove()
				end
				local RGRAB = CreateWeldOrSnapOrMotor("Weld", RightArm, RightArm, RARM, CF(0,-1.35,0) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
				local LGRAB = CreateWeldOrSnapOrMotor("Weld", LeftArm, LeftArm, LARM, CF(0,-1.35,0) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
				local bv = Instance.new("BodyVelocity",TARGET) 
				bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
				bv.velocity = TARGET.CFrame.lookVector*75
				Debris:AddItem(bv,0.05)
				CreateSound(621557962, RightLeg, 1, MRANDOM(7,9)/10, false)
				for i=0, 0.5, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.2, 0.25) * ANGLES(RAD(-35), RAD(0), RAD(80)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-30)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.4) * ANGLES(RAD(160), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.4) * ANGLES(RAD(160), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.6) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-65), RAD(0), RAD(0)) * CF(0,-0.3,0), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-45), RAD(0)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				for i=0, 1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.4) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.4) * ANGLES(RAD(0), RAD(0), RAD(-90)) * LEFTSHOULDERC0, 0.6 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				local HITBOX = CreatePart(3, RARM, "Metal", 0, 1, "Really black", "Part", RARM.Size, false)
				HITBOX.CFrame = RARM.CFrame
				HITBOX.CanCollide = true
				weldBetween(RARM,HITBOX)
				local HITBOX = CreatePart(3, LARM, "Metal", 0, 1, "Really black", "Part", RARM.Size, false)
				HITBOX.CFrame = LARM.CFrame
				HITBOX.CanCollide = true
				weldBetween(LARM,HITBOX)
				RGRAB:remove()
				LGRAB:remove()
				for i=0, 0.4, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.4) * ANGLES(RAD(0), RAD(0), RAD(110)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.4) * ANGLES(RAD(0), RAD(0), RAD(-110)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
			end
		elseif TARGET.Name == "UpperTorso" then
			if TARGET.Parent:FindFirstChild("RightUpperArm") and TARGET.Parent:FindFirstChild("LeftUpperArm") then
				for i=0, 0.3, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45, 0.5, -0.5) * ANGLES(RAD(140), RAD(0), RAD(45)) * ANGLES(RAD(0), RAD(25), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				local SAWBLADE = CreatePart(3, Weapon, "Neon", 0, 0.5, "Really red", "Part", VT(0,0,0),false)
				local WELD = CreateWeldOrSnapOrMotor("Weld", RightArm, RightArm, SAWBLADE, CF(0,-1,0) * ANGLES(RAD(0), RAD(90), RAD(0)), CF(0, 0, 0))
				local BLADE = true
				CreateMesh("SpecialMesh", SAWBLADE, "FileMesh", "74322089", "", VT(1,1,1), VT(0,0,0))
				coroutine.resume(coroutine.create(function()
					repeat
						Swait()
						WELD.C1 = WELD.C1 * ANGLES(RAD(0), RAD(0), RAD(25))
					until BLADE == false
					SAWBLADE:remove()
				end))
				CreateSound(1165167936, SAWBLADE, 2, 1, true)
				for i=0, 1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45, 0.5, -0.5) * ANGLES(RAD(140), RAD(0), RAD(45)) * ANGLES(RAD(0), RAD(25), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				for i=0, 3, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45, 0.5, -0.5) * ANGLES(RAD(15), RAD(0), RAD(45)) * ANGLES(RAD(0), RAD(-25), RAD(0)) * RIGHTSHOULDERC0, 0.1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				CreateSound(363808674, TARGET, 3, MRANDOM(7,9)/10, false)
				TARGET.Parent:FindFirstChild("RightUpperArm").RightShoulder:remove()
				for i=0, 1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(1, 0, 0.3) * ANGLES(RAD(0), RAD(0), RAD(90)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-80)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45, 0.5, 0) * ANGLES(RAD(140), RAD(0), RAD(90)) * ANGLES(RAD(0), RAD(45), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				for i=0, 3, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(1, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-80)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(15)) * ANGLES(RAD(0), RAD(-45), RAD(0)) * RIGHTSHOULDERC0, 0.1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				CreateSound(363808674, TARGET, 3, MRANDOM(7,9)/10, false)
				TARGET.Parent:FindFirstChild("LeftUpperArm").LeftShoulder:remove()
				BLADE = false
				for i=0, 0.5, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0.25) * ANGLES(RAD(-25), RAD(0), RAD(80)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-30)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(45), RAD(0)) * ANGLES(RAD(-25), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-15), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.6) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-65), RAD(0), RAD(0)) * CF(0,1.5,0), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-45), RAD(0)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				for i=0, 0.1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.2, 0.25) * ANGLES(RAD(-35), RAD(0), RAD(80)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-30)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(45), RAD(0)) * ANGLES(RAD(-32), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-20), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.6) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-65), RAD(0), RAD(0)) * CF(0,-0.3,0), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-45), RAD(0)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				GORED = true
				TARGET.Parent:BreakJoints()
				R15Ragdoll(TARGET.Parent)
				if ROOT.Name ~= "Torso" then
					ROOT:remove()
				end
				local bv = Instance.new("BodyVelocity",TARGET) 
				bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
				bv.velocity = TARGET.CFrame.lookVector*75
				Debris:AddItem(bv,0.05)
				CreateSound(621557962, RightLeg, 1, MRANDOM(7,9)/10, false)
				for i=0, 0.3, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.2, 0.25) * ANGLES(RAD(-35), RAD(0), RAD(80)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-30)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(45), RAD(0)) * ANGLES(RAD(-32), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-20), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.6) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-65), RAD(0), RAD(0)) * CF(0,-0.3,0), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-45), RAD(0)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
			end
		end
	end
	ATTACK = false
	Rooted = false
end

function Buzzsaw()
	ATTACK = true
	Rooted = false
	local ARMSPEED = 0.1
	local TARGET = nil
	local ROOT = nil
	local HUMAN = nil
	local DIST = 4
	local SAWBLADE = CreatePart(3, Weapon, "Neon", 0, 0.5, "Really red", "Part", VT(0,0,0),false)
	local WELD = CreateWeldOrSnapOrMotor("Weld", RightArm, RightArm, SAWBLADE, CF(0,-1,0) * ANGLES(RAD(0), RAD(90), RAD(0)), CF(0, 0, 0))
	local BLADE = true
	CreateMesh("SpecialMesh", SAWBLADE, "FileMesh", "74322089", "", VT(2,2,1), VT(0,0,0))
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			WELD.C1 = WELD.C1 * ANGLES(RAD(0), RAD(0), RAD(25))
		until BLADE == false
		SAWBLADE:remove()
	end))
	CreateSound(1165167936, SAWBLADE, 2, 1, true)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.55, 0.5, -0.5) * ANGLES(RAD(175), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i=0, 2, 0.1 / Animation_Speed do
		Swait()
		local CHILDREN = workspace:GetDescendants()
		for index, CHILD in pairs(CHILDREN) do
			if CHILD.ClassName == "Model" and CHILD ~= Character then
				local HUM = CHILD:FindFirstChildOfClass("Humanoid")
				if HUM then
					local TORSO = CHILD:FindFirstChild("HumanoidRootPart") or CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				end
			end
		end
		if ROOT then
			break
		end
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.55, 0.5, -0.5) * ANGLES(RAD(15), RAD(0), RAD(45)) * ANGLES(RAD(0), RAD(-45), RAD(0)) * RIGHTSHOULDERC0, ARMSPEED / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	if ROOT then
		ARMSPEED = 0.03
		Rooted = true
		RootPart.CFrame = ROOT.CFrame*CF(0,0,2.5)
		ROOT.Anchored = false
	end
	BLADE = false
	ATTACK = false
	Rooted = false
end

function ReeeEEEEEE()
	ATTACK = true
	Rooted = false
	Speed = 12
	local FX = CreateSound(198165368, Head, 4, 0.5, false)
	repeat
		Swait()
		FX.Parent = Head
		local CHILDREN = workspace:GetDescendants()
		for index, CHILD in pairs(CHILDREN) do
			if CHILD.ClassName == "Model" and CHILD ~= Character then
				local HUM = CHILD:FindFirstChildOfClass("Humanoid")
				if HUM then
					local TORSO = CHILD:FindFirstChild("Head")
					if TORSO then
						if (TORSO.Position - Head.Position).Magnitude <= 25 then
							WACKYEFFECT({Time = 45, EffectType = "Sphere", Size = VT(1,1,1), Size2 = VT(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = CF(TORSO.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
							TORSO:remove()
							if CHILD:FindFirstChild("Torso") then
								Ragdoll(CHILD,Torso,true)
							elseif CHILD:FindFirstChild("UpperTorso") then
								R15Ragdoll(CHILD,true)
							end
						end
					end
				end
			end
		end
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.5, 0) * ANGLES(RAD(-45), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-45), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(15)) * ANGLES(RAD(0), RAD(15), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(-15), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-45), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-45), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	until FX.Playing == false
	Speed = 16
	ATTACK = false
	Rooted = false
end

function Needle()
	ATTACK = true
	Rooted = true
	local GYRO = IT("BodyGyro",RootPart)
	GYRO.D = 2
	GYRO.P = 2000
	GYRO.MaxTorque = VT(0,4000000,0)
	local NEEDGYRO = true
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			GYRO.CFrame = CF(RootPart.Position,Mouse.Hit.p)
		until NEEDGYRO == false
		GYRO:Remove()
	end))
	for i=0, 0.3, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -1) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(90), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, -0.5) * ANGLES(RAD(25), RAD(0), RAD(80)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, 0, -1) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1.5, 0) * ANGLES(RAD(-90), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -1) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(15), RAD(-45)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.5, -0.5) * ANGLES(RAD(90), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, -0.5) * ANGLES(RAD(25), RAD(0), RAD(80)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, 0, -1) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1.5, 0) * ANGLES(RAD(-90), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	local HIT,POS = CastProperRay(RightArm.CFrame*CF(0,-1,0).p,Mouse.Hit.p,300,Character)
	WACKYEFFECT({Time = 45, EffectType = "Wave", Size = VT(1,0,1), Size2 = VT(5,1,5), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0) * ANGLES(RAD(180), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 90655239, SoundPitch = 1, SoundVolume = 2})
	NEEDGYRO = false
	if HIT then
		local NEEDLE = IT("Model",Effects)
		local BASE = CreatePart(3, NEEDLE, "Glass", 0, 0.5, "Pearl", "Part", VT(0.3,0.6,0.3), false)
		MakeForm(BASE,"Cyl")
		BASE.CFrame = CF(POS,RightArm.CFrame*CF(0,-1,0).p) * ANGLES(RAD(90), RAD(0), RAD(0))*CF(0,-0.35,0)
		weldBetween(BASE,HIT)
		local FLUID = CreatePart(3, NEEDLE, "Neon", 0, 0, "Lime green", "Part", VT(0.28,0.58,0.28), false)
		MakeForm(FLUID,"Cyl")
		FLUID.CFrame = BASE.CFrame
		weldBetween(BASE,FLUID)
		local PART = CreatePart(3, NEEDLE, "Metal", 0, 0, "Pearl", "Part", VT(0,0.2,0), false)
		PART.CFrame = BASE.CFrame*CF(0,0.4,0)
		weldBetween(BASE,PART)
		local PART = CreatePart(3, NEEDLE, "Metal", 0, 0, "Pearl", "Part", VT(0.1,0.1,0.1), false)
		PART.CFrame = BASE.CFrame*CF(0,-0.35,0)
		weldBetween(BASE,PART)
		local PART = CreatePart(3, NEEDLE, "Metal", 0, 0, "Pearl", "Part", VT(0.2,0.1,0.2), false)
		PART.CFrame = BASE.CFrame*CF(0,-0.4,0)
		weldBetween(BASE,PART)
		Debris:AddItem(NEEDLE,7)
		if HIT.Parent:FindFirstChildOfClass("Humanoid") then
			local HUMAN = HIT.Parent:FindFirstChildOfClass("Humanoid")
			coroutine.resume(coroutine.create(function()
			end))
		end
	end
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -1) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(15), RAD(-45)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.1, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, -0.5) * ANGLES(RAD(25), RAD(0), RAD(80)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, 0, -1) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1.5, 0) * ANGLES(RAD(-90), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end

function ScrewThis()
	ATTACK = true
	Rooted = true
	local SCREW = CreatePart(3, Weapon, "Neon", 0, 1, "Really red", "Part", VT(2, 0.4, 0.4)/2,false)
	SCREW.CanCollide = true
	local WELD = CreateWeldOrSnapOrMotor("Weld", LeftArm, LeftArm, SCREW, CF(0,-1,0.2) * ANGLES(RAD(0), RAD(90), RAD(0)), CF(0, 0, 0))
	CreateMesh("SpecialMesh", SCREW, "FileMesh", "70265804", "70265794", VT(1,1,1)/1.5, VT(0,0,0))
	for i=0, 0.4, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(45)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(90), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-5), RAD(0), RAD(15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	SCREW.Transparency = 0
	for i=0, 0.1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-25)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(60), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-25)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.15, -0.5) * ANGLES(RAD(40), RAD(0), RAD(-35)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.7, 0.5, -0.3) * ANGLES(RAD(120), RAD(0), RAD(80)) * ANGLES(RAD(0), RAD(15), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i = 1, 3 do
		for i=0, 0.3, 0.1 / Animation_Speed do
			Swait()
			WELD.C1 = WELD.C1 * ANGLES(RAD(5), RAD(0), RAD(0))
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-25)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.15, -0.5) * ANGLES(RAD(40), RAD(0), RAD(-35)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.7, 0.5, -0.3) * ANGLES(RAD(120), RAD(0), RAD(78)) * ANGLES(RAD(0), RAD(15), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 1, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-25)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.15, -0.5) * ANGLES(RAD(40), RAD(0), RAD(-35)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.7, 0.5, -0.3) * ANGLES(RAD(120), RAD(0), RAD(80)) * ANGLES(RAD(0), RAD(15), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	end
	if MRANDOM(1, 5) == 1 then
		DUST:Emit(25)
		WELD:remove()
		CreateSound(328460122, RightArm, 3, 1, false)
		SCREW.Velocity = CF(RightArm.Position,SCREW.Position).lookVector*65
		Debris:AddItem(SCREW,6)
		for i=0, 3, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-25)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.15, -0.5) * ANGLES(RAD(40), RAD(0), RAD(-35)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.7, 0.5, -0.3) * ANGLES(RAD(120), RAD(0), RAD(80)) * ANGLES(RAD(0), RAD(15), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i = 1, 3 do
			for i=0, 0.35, 0.1 / Animation_Speed do
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(15)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.15, -0.5) * ANGLES(RAD(40), RAD(0), RAD(-35)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.7, 0.5, -0.3) * ANGLES(RAD(120), RAD(0), RAD(80)) * ANGLES(RAD(0), RAD(15), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
			for i=0, 0.35, 0.1 / Animation_Speed do
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-15)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.15, -0.5) * ANGLES(RAD(40), RAD(0), RAD(-35)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.7, 0.5, -0.3) * ANGLES(RAD(120), RAD(0), RAD(80)) * ANGLES(RAD(0), RAD(15), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
		end
	else
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(60)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		WELD:remove()
		for i=0, 0.15, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(60)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-110)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		Debris:AddItem(SCREW,6)
	end
	ATTACK = false
	Rooted = false
end

--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

function MouseDown(Mouse)
	if ATTACK == false then
	end
end

function MouseUp(Mouse)
HOLD = false
end

function KeyDown(Key)
	KEYHOLD = true
	if Key == "z" and ATTACK == false then
		Warp()
	end

	if Key == "b" and ATTACK == false then
		Dash()
	end

	if Key == "c" and ATTACK == false then
		LimbRip()
	end

	if Key == "v" and ATTACK == false then
		Buzzsaw()
	end

	if Key == "e" and ATTACK == false then
		--ReeeEEEEEE() -- disabled
	end

	if Key == "x" and ATTACK == false then
		Needle()
	end

	if Key == "t" and ATTACK == false then
		ScrewThis()
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

function AntiTimeStop()
	for _, c in pairs(Character:GetChildren()) do
		if c:IsA("BasePart") then
			c.Anchored = false
		end
	end
	for _, c in pairs(Weapon:GetChildren()) do
		if c:IsA("BasePart") then
			c.Anchored = false
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

local sick = IT("Sound")

while true do
	Swait()
	ANIMATE.Parent = nil
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
	    v:Stop();
	end
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 16)
	if ANIM == "Walk" and TORSOVELOCITY > 1 then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, -0.15 * COS(SINE / (WALKSPEEDVALUE / 2))) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 0.875 - 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.125 * COS(SINE / WALKSPEEDVALUE) +0.2- 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(90 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 0.875 + 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), 0.125 * COS(SINE / WALKSPEEDVALUE) +0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(90 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
	elseif (ANIM ~= "Walk") or (TORSOVELOCITY < 1) then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
	end
	if HITFLOOR == nil then
		ANIM = "Midair"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.75, 0) * ANGLES(RAD(-15), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.75, 0) * ANGLES(RAD(-15), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.2, -0.6) * ANGLES(RAD(15), RAD(70), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.2, -0.6) * ANGLES(RAD(15), RAD(-70), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
		ANIM = "Idle"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.35 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(10 - 15 * COS(SINE / 12))) * ANGLES(RAD(0), RAD(-15), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.35 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(-10 + 15 * COS(SINE / 12))) * ANGLES(RAD(0), RAD(15), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
		ANIM = "Walk"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(10 * COS(SINE / WALKSPEEDVALUE))), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(0), RAD(-10 * COS(SINE / WALKSPEEDVALUE))), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0.5 * SIN(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(5)) * ANGLES(RAD(0), RAD(-15), RAD(0)) * RIGHTSHOULDERC0, 0.8 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.5 * SIN(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(-60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * ANGLES(RAD(0), RAD(15), RAD(0)) * LEFTSHOULDERC0, 0.8 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
		end
	end
	sick.SoundId = "rbxassetid://1696854181"
	sick.Looped = true
	sick.Pitch = 1
	sick.Volume = 2
	sick.Playing = true
	sick.Parent = Effects
	AntiTimeStop()
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
end
end)()

local Connection
Connection = game.Workspace.DescendantAdded:Connect(function(c)
	if c.Name == "Animate" and c.Parent == Player.Character then
		c.Enabled = false   
		Connection:Disconnect()
	end
end)
repeat task.wait() until game.Players.LocalPlayer.Character
task.wait(0.1)
local RealChar = Player.Character
RealChar.Archivable = true
FakeCharacter.Name = Player.Name .. "_Fake"
FakeCharacter.Parent = workspace
task.spawn(function()
	for i, LS in ipairs(FakeCharacter:GetChildren()) do
		if LS:IsA("LocalScript") then
			LS.Enabled = false
			task.wait(0.1)
			LS.Enabled = false
		end
	end
end)

for i, Part in ipairs(FakeCharacter:GetDescendants()) do
	if Part:IsA("BasePart")then
		Part.Transparency = fake_transparency
	end
end

for i, Decal in ipairs(FakeCharacter:GetDescendants()) do
	if Decal:IsA("Decal")then
		Decal.Transparency = fake_transparency
	end
end

Player.Character = FakeCharacter


local function MotorAngle()
	if RealChar:FindFirstChild("Torso") then
		for MotorName, Motor6DAngle in pairs(Motors) do
			if RealChar:FindFirstChild("Torso"):FindFirstChild(MotorName) then
				RealChar:FindFirstChild("Torso"):FindFirstChild(MotorName).CurrentAngle = Motor6DAngle
			end
		end
	end
end

local function SetAngles()
	if FakeCharacter:FindFirstChild("Torso") then
		for MotorName, Motor6DAngle in pairs(Motors) do
			if FakeCharacter:FindFirstChild("Torso"):FindFirstChild(MotorName) then
				local Motor = FakeCharacter:FindFirstChild("Torso"):FindFirstChild(MotorName) 
				local rx, ry, rz = Motor.Part1.CFrame:ToObjectSpace(FakeCharacter:FindFirstChild("Torso").CFrame):ToOrientation()
				--Motors[MotorName] = rx
				if Motor.Name == "Right Shoulder" then
					Motors[MotorName] = -rx
				end
				if Motor.Name == "Left Shoulder" then
					Motors[MotorName] = rx
				end
				if Motor.Name == "Right Hip" then
					Motors[MotorName] = -rx
				end
				if Motor.Name == "Left Hip" then
					Motors[MotorName] = rx
				end
				if Motor.Name == "Neck" then
					Motors[MotorName] = -ry
				end
			end
		end
	end
end

local function BaseCol()
	for i, Part in ipairs(RealChar:GetChildren()) do
		if Part:IsA("BasePart")then
			Part.CanCollide = false
		end
	end
    for i, Part in ipairs(FakeCharacter:GetChildren()) do
		if Part:IsA("BasePart")then
			Part.CanCollide = false
		end
	end
end

RunService.Heartbeat:Connect(function()
	SetAngles()
	MotorAngle()
	RealChar.HumanoidRootPart.CFrame = FakeCharacter.Torso.CFrame
end)

RunService.PreSimulation:Connect(function()
	BaseCol()
end)

LoadAllAnimations()