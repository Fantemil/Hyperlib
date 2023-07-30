--//===================================================\\
--||      			EDIT BY WITHEROWER
--\\===================================================//

_G.loop = true
local player = game.Players.LocalPlayer
local char = player.Character
local Align = function(Part0, Part1,Mesh)
    local Aligns = {
        AlignOrientation = Instance.new("AlignOrientation", Part0),
        AlignPosition = Instance.new("AlignPosition", Part0)
    }
    
    local Attachments = {
        Attach0 = Instance.new("Attachment", Part0),
        Attach1 = Instance.new("Attachment", Part1)
    }
    local m = Part0:FindFirstChildOfClass('SpecialMesh')--This will get the first "SpecialMesh" it finds if it does not find any, then it will return nil
    if Mesh and m then --If Mesh is set to true and it finds a mesh it will destroy it
        m:Destroy()
    end
    Part0:BreakJoints()
    Aligns.AlignOrientation.Attachment0 = Attachments.Attach0
    Aligns.AlignOrientation.Attachment1 = Attachments.Attach1
    Aligns.AlignOrientation.Responsiveness = math.huge
    Aligns.AlignOrientation.RigidityEnabled = true
    
    Aligns.AlignPosition.Attachment0 = Attachments.Attach0
    Aligns.AlignPosition.Attachment1 = Attachments.Attach1
    Aligns.AlignPosition.Responsiveness = math.huge
    Aligns.AlignPosition.RigidityEnabled = true
        Aligns.AlignPosition.MaxForce = 999999999
        spawn(function()
            while _G.loop do 
                local mag = (Part0.Position - (Part1.CFrame*Attachments.Attach0.CFrame:Inverse()).p).magnitude--magnitude can get the distance between two cframe or position
                if mag >= 5 then 
                Part0.CFrame = Part1.CFrame*Attachments.Attach0.CFrame:Inverse()
                end
                Part0.Velocity = Vector3.new(0,35,0)
                game['Run Service'].Heartbeat:wait()
                end
        end)
 return {Attachments.Attach0, Attachments, Aligns}
        
end 
local hat = Align(char['MeshPartAccessory'].Handle,char['Right Arm'],false)
local cf = char['Right Arm'].CFrame*CFrame.new(0,-0.75,-2.5)*CFrame.Angles(math.rad(45),math.rad(-90),0)
hat[1].CFrame = cf:Inverse() * char['Right Arm'].CFrame
spawn(function()
    char.AncestryChanged:wait()--if you respawn, it will stop the  loop to avoid lag of using it over and over
    _G.loop = false 
end)
local script = game:GetObjects("rbxassetid://5487673576")[1]

do
local NEVER_BREAK_JOINTS = false

local function CallOnChildren(Instance, FunctionToCall)
    FunctionToCall(Instance)

    for _, Child in next, Instance:GetChildren() do
        CallOnChildren(Child, FunctionToCall)
    end
end

local function GetBricks(StartInstance)
    local List = {}
    CallOnChildren(StartInstance, function(Item)
        if Item:IsA("BasePart") then
            List[#List+1] = Item;
        end
    end)

    return List
end

local function Modify(Instance, Values)
    assert(type(Values) == "table", "Values is not a table");

    for Index, Value in next, Values do
        if type(Index) == "number" then
            Value.Parent = Instance
        else
            Instance[Index] = Value
        end
    end
    return Instance
end

local function Make(ClassType, Properties)
    return Modify(Instance.new(ClassType), Properties)
end

local Surfaces = {"TopSurface", "BottomSurface", "LeftSurface", "RightSurface", "FrontSurface", "BackSurface"}
local HingSurfaces = {"Hinge", "Motor", "SteppingMotor"}

local function HasWheelJoint(Part)
    for _, SurfaceName in pairs(Surfaces) do
        for _, HingSurfaceName in pairs(HingSurfaces) do
            if Part[SurfaceName].Name == HingSurfaceName then
                return true
            end
        end
    end
    
    return false
end

local function ShouldBreakJoints(Part)
    if NEVER_BREAK_JOINTS then
        return false
    end
    
    if HasWheelJoint(Part) then
        return false
    end
    
    local Connected = Part:GetConnectedParts()
    
    if #Connected == 1 then
        return false
    end
    
    for _, Item in pairs(Connected) do
        if HasWheelJoint(Item) then
            return false
        elseif not Item:IsDescendantOf(script.Parent) then
            return false
        end
    end
    
    return true
end

local function WeldTogether(Part0, Part1, JointType, WeldParent)

    JointType = JointType or "Weld"
    local RelativeValue = Part1:FindFirstChild("qRelativeCFrameWeldValue")
    
    local NewWeld = Part1:FindFirstChild("qCFrameWeldThingy") or Instance.new(JointType)
    Modify(NewWeld, {
        Name = "qCFrameWeldThingy";
        Part0  = Part0;
        Part1  = Part1;
        C0     = CFrame.new();--Part0.CFrame:inverse();
        C1     = RelativeValue and RelativeValue.Value or Part1.CFrame:toObjectSpace(Part0.CFrame); --Part1.CFrame:inverse() * Part0.CFrame;-- Part1.CFrame:inverse();
        Parent = Part1;
    })

    if not RelativeValue then
        RelativeValue = Make("CFrameValue", {
            Parent     = Part1;
            Name       = "qRelativeCFrameWeldValue";
            Archivable = true;
            Value      = NewWeld.C1;
        })
    end

    return NewWeld
end

local function WeldParts(Parts, MainPart, JointType, DoNotUnanchor)

    for _, Part in pairs(Parts) do
        if ShouldBreakJoints(Part) then
            Part:BreakJoints()
        end
    end
    
    for _, Part in pairs(Parts) do
        if Part ~= MainPart then
            WeldTogether(MainPart, Part, JointType, MainPart)
        end
    end

    if not DoNotUnanchor then
        for _, Part in pairs(Parts) do
            Part.Anchored = false
        end
        MainPart.Anchored = false
    end
end

local function PerfectionWeld()	
    local Parts = GetBricks(script.YCSI)
    WeldParts(Parts, script.YCSI:FindFirstChild("main thing"), "Weld", false)
end
PerfectionWeld()
end

local Player = game:GetService("Players").LocalPlayer
local lplr = Player
Mouse = Player:GetMouse()
PlayerGui = Player.PlayerGui
Character = game.Workspace.non
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
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
local TIME = 0

local sick = Instance.new("Sound",Head)

local NORMALFACE = Head:FindFirstChildWhichIsA("Decal").Texture

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

Animation_Speed = 1.5
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)
local Speed = 12
local SIZE = 1
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local DAMAGEMULTIPLIER = 1
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local Rooted = false
local SINE = 0
local sine = 0
local vissine = 0
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local VALUE1 = false
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
local Weapon = IT("Model")
local Effects = IT("Folder", Weapon)
Effects.Name = "Effects"
local UNANCHOR = true
local TOBANISH = {}
local TOBAN = {}
local TAIL = {}
local VSONGS = {322621962,569026863,502771070,408862087,1471935327,236336857,2280063143,334259331,344685843,1479420512,297754476,591661590,1571736139,2988953773,130768805,2516100492,580535766,213546066,555947343,394236634,195822354,224584376,1576288222,199265353}
local NK = {271068069,247967952,265024602,252591491,252591097,316039490,1222970152,1222970152}
local Hue = 0
AntiBullet = true
local PLAYANIMS = true
local HITFLOOR, HITPOS = nil
local WEAPONEQUIPPED = false
local INTRODONE = false
local inf = 99999999999999999999999999999

local Player_Size = SIZE
local Animation_Speed2 = 5
local SCALE = 2

local RunService = game:GetService("RunService")
local COLORSHIFT = C3(0,0,0)
local MODE = 1

local FONTS = {
	Enum.Font.Antique,
	Enum.Font.Arcade,
	Enum.Font.Arial,
	Enum.Font.ArialBold,
	Enum.Font.Bodoni,
	Enum.Font.Cartoon,
	Enum.Font.Code,
	Enum.Font.Fantasy,
	Enum.Font.Garamond,
	Enum.Font.Highway,
	Enum.Font.Legacy,
	Enum.Font.SciFi,
	Enum.Font.SourceSans,
	Enum.Font.SourceSansBold,
	Enum.Font.SourceSansItalic,
	Enum.Font.SourceSansLight,
	Enum.Font.SourceSansSemibold
}

local MATERIALS = {
	Enum.Material.Brick,
	Enum.Material.Cobblestone,
	Enum.Material.Concrete,
	Enum.Material.CorrodedMetal,
	Enum.Material.DiamondPlate,
	Enum.Material.Fabric,
	Enum.Material.Foil,
	Enum.Material.ForceField,
	Enum.Material.Glass,
	Enum.Material.Granite,
	Enum.Material.Grass,
	Enum.Material.Ice,
	Enum.Material.Marble,
	Enum.Material.Metal,
	Enum.Material.Neon,
	Enum.Material.Pebble,
	Enum.Material.Plastic,
	Enum.Material.Sand,
	Enum.Material.Slate,
	Enum.Material.SmoothPlastic,
	Enum.Material.Wood,
	Enum.Material.WoodPlanks
}


--//=================================\\
--|| 	      SOME FUNCTIONS
--\\=================================//

local outer = IT("Part")
outer.Locked = true
outer.CanCollide = false
outer.Shape = Enum.PartType.Cylinder
outer.Size = VT(0.1, 1, 1)
outer.Material = Enum.Material.Neon
outer.Color = C3(0, 0, 0)
outer.Parent = Character

local outerm = IT("SpecialMesh")
outerm.MeshType = Enum.MeshType.Cylinder
outerm.Parent = outer

local weld1 = Instance.new("Weld")
weld1.Part0 = outer
weld1.Part1 = Character["HumanoidRootPart"]
weld1.Parent = outer
weld1.C0 = CF(-2.95, 0, 0) * ANGLES(0, 0, 1.571)


function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		game:GetService("RunService").RenderStepped:wait()
	else
		for i = 1, NUMBER do
			game:GetService("RunService").RenderStepped:wait()
		end
	end
end

coroutine.wrap(function()
	while true do wait()
		outer.Color = Color3.fromRGB(0+25*sick.PlaybackLoudness/100,0,0)
	end
end)()
coroutine.resume(coroutine.create(function()
	while true do
		Swait()
		outerm.Scale = VT(0, sick.PlaybackLoudness / 20, sick.PlaybackLoudness / 20)
	end
end))

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function ShakeCam(Length,Intensity)
	coroutine.resume(coroutine.create(function()
		local intensity = 1 * Intensity
		local rotM = 0.01 * Intensity
		for i = 0, Length, 0.1 do
			Swait()
			intensity = intensity - 0.05 * Intensity / Length
			rotM = rotM - 5.0E-4 * Intensity / Length
			Humanoid.CameraOffset = Vector3.new(RAD(MRANDOM(-intensity, intensity)), RAD(MRANDOM(-intensity, intensity)), RAD(MRANDOM(-intensity, intensity)))
			Cam.CFrame = Cam.CFrame * CF(RAD(MRANDOM(-intensity, intensity)), RAD(MRANDOM(-intensity, intensity)), RAD(MRANDOM(-intensity, intensity))) * EULER(RAD(MRANDOM(-intensity, intensity)) * rotM, RAD(MRANDOM(-intensity, intensity)) * rotM, RAD(MRANDOM(-intensity, intensity)) * rotM)
		end
		Humanoid.CameraOffset = Vector3.new(0, 0, 0)
	end))
end

function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function R_RANDOM(CFRAME,DIST)
	return CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))*CF(0,0,-DIST)
end

function CharacterFade(COLOR,TIMER,MOVEDIRECTION,PARENT)
	coroutine.resume(coroutine.create(function()
		local FADE = IT("Model",Effects)
		if PARENT ~= nil then
			FADE.Parent = PARENT
		end
		FADE.Name = "FadingEffect"
		for _, c in pairs(Character:GetChildren()) do
			if c.ClassName == "Part" then
				c.CanCollide = false
				local FADER = CreatePart(3, FADE, "Neon", 0, 0.75, BRICKC("Pearl"), c.Name, c.Size, true)
				FADER.CFrame = c.CFrame
				if FADER.Name == "Head" then
					Head:FindFirstChildOfClass("SpecialMesh"):Clone().Parent = FADER
				elseif FADER.Name == "HumanoidRootPart" then
					FADE.PrimaryPart = FADER
					FADER.Transparency = 1
				end
			end
		end
		local TRANS = 0.25/TIMER
		local DIST = nil
		if MOVEDIRECTION ~= nil then
			DIST = (FADE.PrimaryPart.Position - MOVEDIRECTION).Magnitude
		end
		for i = 1, TIMER do
			Swait()
			for _, c in pairs(FADE:GetChildren()) do
				if c.ClassName == "Part" then
					c.Transparency = c.Transparency + TRANS
				end
			end
			if MOVEDIRECTION ~= nil then
				local ORI = FADE.PrimaryPart.Orientation
				FADE:SetPrimaryPartCFrame(CF(CF(FADE.PrimaryPart.Position,MOVEDIRECTION)*CF(0,0,-DIST/TIMER).p) * ANGLES(RAD(ORI.X), RAD(ORI.Y), RAD(ORI.Z)))
			end
		end
		FADE:remove()
	end))
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

function CreateRing(SIZE,DOESROT,ROT,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CFRAME
	wave.Color = C3(1,0,0)
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			local val = MRANDOM(1,255)
			wave.Color = Color3.fromRGB(val,val,val)
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

function AdvancedChatfunc(Text, Timer, Delay, ChatterSound)
	local chat = coroutine.wrap(function()
		if Character:FindFirstChild("SpeechBoard") ~= nil then
			Character:FindFirstChild("SpeechBoard"):destroy()
		end
		local naeeym2 = IT("BillboardGui", Character)
		naeeym2.Size = UD2(80, 35, 3, 15)
		naeeym2.StudsOffset = VT(0, 2, 0)
		naeeym2.Adornee = Head
		naeeym2.Name = "SpeechBoard"
		naeeym2.AlwaysOnTop = true
		local tecks2 = IT("TextLabel", naeeym2)
		tecks2.BackgroundTransparency = 1
		tecks2.BorderSizePixel = 0
		tecks2.Text = ""
		tecks2.Font = FONTS[MRANDOM(1,#FONTS)]
		tecks2.TextSize = 35
		tecks2.TextStrokeTransparency = 0.3
		tecks2.TextColor3 = COLORSHIFT
		tecks2.TextStrokeColor3 = COLORSHIFT
		tecks2.Size = UDim2.new(1, 0, 0.5, 0)
		local FINISHED = false
		local DONE = false
		coroutine.wrap(function()
			while wait() do
				tecks2.Font = FONTS[MRANDOM(1,#FONTS)]
				tecks2.TextColor3 = COLORSHIFT
				tecks2.TextStrokeColor3 = COLORSHIFT
				if DONE == true then
					break
				end
			end
		end)()
		coroutine.resume(coroutine.create(function()
			for i = 1, string.len(Text) do
				if naeeym2.Parent ~= Character then
					FINISHED = true
				end
				if ChatterSound ~= false and naeeym2.Parent == Character then
					CreateSound(265970978, Head, 7, MRANDOM(-6,12)/4, false)
				end
				tecks2.Text = string.sub(Text, 1, i)
				Swait(Timer)
			end
			FINISHED = true
		end))
		repeat
			wait()
		until FINISHED == true
		wait(Delay)
		naeeym2.Name = "FadingDialogue"
		if Character:FindFirstChild("SpeechBoard") == nil then
			coroutine.resume(coroutine.create(function()
				for i = 1, 35 do
					Swait()
				end
			end))
		end
		for i = 1, 45 do
			Swait()
			naeeym2.StudsOffset = naeeym2.StudsOffset + VT(0, (2 - 0.044444444444444446 * i) / 45, 0)
			tecks2.TextTransparency = tecks2.TextTransparency + 0.022222222222222223
			tecks2.TextStrokeTransparency = tecks2.TextTransparency
		end
		naeeym2:Destroy()
		DONE = true
	end)
	chat()
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
			wave.Color = C3(0,0,0)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function GetRoot(MODEL, ROOT)
	if ROOT == true then
		return MODEL:FindFirstChild("HumanoidRootPart") or MODEL:FindFirstChild("Torso") or MODEL:FindFirstChild("UpperTorso")
	else
		return MODEL:FindFirstChild("Torso") or MODEL:FindFirstChild("UpperTorso")
	end
end

function SpecialSphere(SIZE,WAIT,CFRAME,COLOR,GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Eye", VT(1,1,1), true)
    wave.Color = COLOR
    local mesh = CreateMesh("SpecialMesh", wave, "Sphere", "", "", SIZE, VT(0,0,0))
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

function Slice(KIND,SIZE,WAIT,CFRAME,COLOR,GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC("Really red"), "Effect", VT(1,1,1), true)
    local mesh = nil
    if KIND == "Base" then
        mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "448386996", "", VT(0,SIZE/10,SIZE/10), VT(0,0,0))
    elseif KIND == "Thin" then
        mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "662586858", "", VT(SIZE/10,0,SIZE/10), VT(0,0,0))
    elseif KIND == "Round" then
        mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "662585058", "", VT(SIZE/10,0,SIZE/10), VT(0,0,0))
    end
    wave.CFrame = CFRAME
    coroutine.resume(coroutine.create(function(PART)
        for i = 1, WAIT do
            Swait()
            mesh.Scale = mesh.Scale + GROW/10
            wave.Transparency = wave.Transparency + (0.5/WAIT)
            if wave.Transparency > 0.99 then
                wave:remove()
            end
        end
    end))
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
	NEWPART.Color = COLORSHIFT
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = "Neon"
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
		NEWSOUND.Volume = 10
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat wait(1) until NEWSOUND.Playing == false or NEWSOUND.Parent ~= PARENT
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end

function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
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
		local EFFECT = CreatePart(3, Effects, "Neon", 0, 0, C3(0,0,0), "Effect", VT(1,1,1), true)
		EFFECT.Color = COLORSHIFT
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
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
				SOUND.Stopped:Connect(function()
					EFFECT:remove()
				end)
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

function WACKYEFFECT2(Table)
	local TYPE = Table.EffectType or "Sphere"
	local SIZE = Table.Size or VT(1, 1, 1)
	local ENDSIZE = Table.Size2 or VT(0, 0, 0)
	local TRANSPARENCY = Table.Transparency or 0
	local ENDTRANSPARENCY = Table.Transparency2 or 1
	local CFRAME = Table.CFrame or Torso.CFrame
	local MOVEDIRECTION = Table.MoveToPos or nil
	local ROTATION1 = Table.RotationX or 0
	local ROTATION2 = Table.RotationY or 0
	local ROTATION3 = Table.RotationZ or 0
	local MATERIAL = Table.Material --or "Neon"
	local COLOR = Table.Color or C3(1, 1, 1)
	local TIME = Table.Time or 45
	local SOUNDID = Table.SoundID or nil
	local SOUNDPITCH = Table.SoundPitch or nil
	local SOUNDVOLUME = Table.SoundVolume or nil
	local USEBOOMERANGMATH = Table.UseBoomerangMath or false
	local BOOMERANG = Table.Boomerang or 0
	local SIZEBOOMERANG = Table.SizeBoomerang or 0
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3, Effects, "Neon", 0, 0, C3(0,0,0), "Effect", VT(1,1,1), true)
		EFFECT.Color = COLORSHIFT
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		local MSH
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh", EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0, 0, -SIZE.X / 8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X, SIZE.X, 0.1), VT(0, 0, 0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "168892432", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Star" then 
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "2760116123", "", SIZE, VT(0,0,0))   	
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "450656451", "", SIZE, VT(0, 0, 0))
		end
		coroutine.resume(coroutine.create(function()
			if MSH ~= nil then
				local BOOMR1 = 1 + BOOMERANG / 50
				local BOOMR2 = 1 + SIZEBOOMERANG / 50
				local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
				local GROWTH
				if USEBOOMERANGMATH == true then
					GROWTH = (SIZE - ENDSIZE) * (BOOMR2 + 1)
				else
					GROWTH = SIZE - ENDSIZE
				end
				local TRANS = TRANSPARENCY - ENDTRANSPARENCY
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				else
					EFFECT.CFrame = CFRAME
				end
				if USEBOOMERANGMATH == true then
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - VT(GROWTH.X * (1 - LOOP / TIME * BOOMR2), GROWTH.Y * (1 - LOOP / TIME * BOOMR2), GROWTH.Z * (1 - LOOP / TIME * BOOMR2)) * BOOMR2 / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = CF(EFFECT.Position, MOVEDIRECTION) * CF(0, 0, -MOVESPEED * (1 - LOOP / TIME * BOOMR1))
							EFFECT.Orientation = ORI
						end
					end
				else
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - GROWTH / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
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
					repeat
						Swait()
					until EFFECT:FindFirstChildOfClass("Sound") == nil
					EFFECT:remove()
				end
			elseif PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat
					Swait()
				until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end))
		return EFFECT
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

function SpawnTrail(FROM,TO,BIG)
local TRAIL = CreatePart(3, Effects, "Neon", 0, 0, "Really black", "Trail", VT(45,45,45))           
MakeForm(TRAIL,"Cyl")
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL.Size = VT(2,DIST,5)
	else
		TRAIL.Size = VT(2,DIST,5)
	end
	TRAIL.CFrame = CF(FROM, TO) * CF(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 55 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.03
		end
		TRAIL:remove()
	end))
end

Debris = game:GetService("Debris")

function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos,EndPos).lookVector
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end

function turnto(position)
	RootPart.CFrame=CFrame.new(RootPart.CFrame.p,VT(position.X,RootPart.Position.Y,position.Z)) * CFrame.new(0, 0, 0)
end

local asd = Instance.new("ParticleEmitter")
asd.Color = ColorSequence.new(Color3.new(0.5, 0, 0), Color3.new(.1, 0, 0))
asd.LightEmission = .1
asd.Size = NumberSequence.new(0.2)
asd.Texture = "http://www.roblox.com/asset/?ID=291880914"
aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2),NumberSequenceKeypoint.new(1, 5)})
bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
asd.Transparency = bbb
asd.Size = aaa
asd.ZOffset = .9
asd.Acceleration = Vector3.new(0, -5, 0)
asd.LockedToPart = false
asd.EmissionDirection = "Back"
asd.Lifetime = NumberRange.new(1, 2)
asd.Rotation = NumberRange.new(-100, 100)
asd.RotSpeed = NumberRange.new(-100, 100)
asd.Speed = NumberRange.new(2)
asd.Enabled = false
asd.VelocitySpread = 10000

function getbloody(victim,amount)
	local prtcl = asd:Clone()
	prtcl.Parent = victim
	prtcl:Emit(amount)
end

local TORSOVELOCITY = 0

function Ragdoll(Character2,CharTorso)
	local svch = Character2
	local hum = Character2:findFirstChild("Humanoid")
	local q = Character2:GetChildren()
	local CLONE = IT("Model",Effects)
	local DummyHead = nil
	for i = 1,#q do
		if q[i].ClassName ~= "Humanoid" and q[i].ClassName ~= "LocalScript" and q[i].ClassName ~= "Script" and q[i].ClassName ~= "Accessory" and q[i].ClassName ~= "Hat" and q[i].ClassName ~= "Gear" then
			q[i].Parent = CLONE
			if q[i].Name == "Head" then
				DummyHead = CLONE.Head:Clone()
				q[i]:ClearAllChildren()
				q[i].Transparency = 1
			end
		else
			if q[i].ClassName ~= "Humanoid" then
				q[i]:remove()
			end
		end
	end
	local chrclone = CLONE

	for _, c in pairs(Character2:GetChildren()) do
		if c.ClassName == "Accessory" then
			c:remove()
		end
	end

	local ch = chrclone:GetChildren()
	local i
	for i = 1,#ch do
		if ch[i].Name == "THandle1" or ch[i].Name == "THandle2" or ch[i].ClassName == "Script" then
			ch[i]:remove()
		end
	end
	local function Scan(ch)
		local e
		for e = 1,#ch do
			Scan(ch[e]:GetChildren())
			if ch[e].ClassName == "Weld" or ch[e].ClassName == "Motor6D" then
				ch[e]:remove()
			end
		end
	end
	Scan(chrclone:GetChildren())

	local ch = Character2:GetChildren()
	local i
	for i = 1,#ch do
		if ch[i].Name == "THandle1" or ch[i].Name == "THandle2" then
			ch[i]:remove()
		end
	end

	local ch = Character2:GetChildren()
	local i
	for i = 1,#ch do
		if ch[i].ClassName == "Part" or ch[i].ClassName == "Hat" or ch[i].Name == "THandle1" or ch[i].Name == "THandle2" then
			ch[i]:remove()
		end
	end
	Character2 = chrclone
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
			Head:ClearAllChildren()
			Head.Transparency = 1

		end
		local Limb = Character2:FindFirstChild("Right Arm")
		if Limb then

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
		if Limb then

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
	Character2.Parent = Weapon
	if movevector ~= Vector3.new() then
		for i = 1,10 do
			Torso2.Velocity = movevector * 30
		end
	end
	DummyHead.Name = "FakeHead"
	DummyHead.Parent = CLONE
	local BLOOD = CreatePart(3, DummyHead, "Glass", 0, 0, "Maroon", "Blood", VT(0.65,0.25,0.65),false)
	BLOOD.CFrame = DummyHead.CFrame*CF(0,-DummyHead.Size.Y/2,0)
	MakeForm(BLOOD,"Cyl")
	weldBetween(DummyHead,BLOOD)
	local BLOOD = CreatePart(3, Torso2, "Glass", 0, 0, "Maroon", "Blood", VT(0.65,0.2,0.65),false)
	BLOOD.CFrame = Torso2.CFrame*CF(0,Torso2.Size.Y/2,0)
	MakeForm(BLOOD,"Cyl")
	weldBetween(Torso2,BLOOD)
	Character2.Name = "Corpse"
	local hum2 = svch:findFirstChild("Humanoid")

	return Character2,Torso2,DummyHead
end

function PuddleOfBlood(Position,MaxDrop,Model,MaxSize)
	local HITFLOOR, HITPOS = Raycast(Position, (CF(Position, Position + VT(0, -1, 0))).lookVector, MaxDrop, Model)
	if HITFLOOR ~= nil then
		if HITFLOOR.Parent ~= Weapon and HITFLOOR.Parent ~= Character then
			if HITFLOOR.Name == "BloodPuddle" then
				local DIST = (Position - HITFLOOR.Position).Magnitude
				if (HITFLOOR.Size.Z <= 5 and HITFLOOR.Size.Z < MaxSize) or (HITFLOOR.Size.Z > 5 and HITFLOOR.Size.Z < MaxSize and DIST < HITFLOOR.Size.Z/3) then
					HITFLOOR.Size = HITFLOOR.Size + VT(0.1,0,0.1)
				end
			else
				if HITFLOOR.Anchored == true then
					local BLOOD = CreatePart(3, Effects, "Glass", 0, 0, "Maroon", "BloodPuddle", VT(1,0,1))
					BLOOD.CFrame = CF(HITPOS)
					MakeForm(BLOOD,"Cyl")
					coroutine.resume(coroutine.create(function()
						Swait(75)
						while true do
							Swait()
							BLOOD.Size = BLOOD.Size - VT(0.02,0,0.02)
							if BLOOD.Size.Z < 0.051 then
								BLOOD:remove()
								break
							end
						end
					end))
				end
			end
		end
	end
end

function SprayBlood(POSITION,DIRECTION,BloodSize)
	local BLOOD = CreatePart(3, Effects, "Glass", 0, 0, "Maroon", "BloodPuddle", VT(0.5,0.5,0.5),false)
	BLOOD.CFrame = CF(POSITION)
	MakeForm(BLOOD,"Ball")
	local bv = Instance.new("BodyVelocity",BLOOD) 
	bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
	bv.velocity = CF(POSITION,DIRECTION+VT(MRANDOM(-3,3)/30,MRANDOM(-3,3)/30,MRANDOM(-3,3)/30)).lookVector*15
	bv.Name = "MOVE"
	Debris:AddItem(bv,0.05)
	coroutine.resume(coroutine.create(function()
		local HASTOUCHEDGROUND = false
		local HIT = BLOOD.Touched:Connect(function(hit)
			if hit.Anchored == true then
				HASTOUCHEDGROUND = true
				PuddleOfBlood(BLOOD.Position+VT(0,1,0),2,BLOOD,BloodSize)
			end
		end)
		for i = 1, 50 do
			Swait()
			if HASTOUCHEDGROUND == true then
				break
			end
			BLOOD.Size = BLOOD.Size * 0.9
		end
		BLOOD:remove()
	end))
end

function DESTROYAHAHAHAHAH(Target)
	if Target.Parent ~= Weapon and Target:FindFirstChildOfClass("Humanoid") then
		local CFRAME = Target:FindFirstChild("Torso").CFrame or Target:FindFirstChild("UpperTorso")
		local CLONE,TORS2,DummyHead = Ragdoll(Target,Torso)
		getbloody(DummyHead,45)
		if TORS2 ~= nil then
			CreateSound("185688060", TORS2, 10, (math.random(8,12)/10))
			CreateSound("337800380", DummyHead, 5, (math.random(8,18)/10))
			local HUM = IT("Humanoid")
			HUM.MaxHealth = 0
			HUM.Health = 0
			HUM.Name = "CorpseHumanoid"
			HUM.PlatformStand = true
			HUM.Parent = CLONE
			TORS2.CFrame = CFRAME
			coroutine.resume(coroutine.create(function()
				for i = 1, 450 do
					wait()
					SprayBlood(DummyHead.CFrame*CF(0,-0.25,0).p,DummyHead.CFrame*CF(0,-0.7,0).p,5)
					SprayBlood(TORS2.CFrame*CF(0,TORS2.Size.Y/2,0).p,TORS2.CFrame*CF(0,TORS2.Size.Y,0).p,10)
					--PuddleOfBlood(DummyHead.CFrame*CF(0,-0.25,0).p,4,CLONE,3)
					--PuddleOfBlood(TORS2.CFrame*CF(0,TORS2.Size.Y/2,0).p,8,CLONE,6)
				end
				CLONE:Remove()
			end))
		end
	end
end

--//=================================\\
--||	     WEAPON CREATION
--\\=================================//

local YCSI = script:FindFirstChild("YCSI")

local Blade = YCSI:Clone()
Blade.Parent = Character
local BladeGrip = CreateWeldOrSnapOrMotor("Weld", Blade.Handle, RightArm, Blade.Handle, CF(0, -1, 0)*ANGLES(RAD(90),RAD(0),RAD(0)), CF(0, 0, 0))

local BackBlade = YCSI:Clone()
Blade.Parent = Character
CreateWeldOrSnapOrMotor("Weld", BackBlade.REDB, Torso, BackBlade.REDB, CF(1, -0.5, 0.5)*ANGLES(RAD(0),RAD(0),RAD(-45)), CF(0, 0, 0))

local WEAPONGUI = IT("ScreenGui")

local SKILLTEXTCOLOR = Color3.fromRGB(100,0,0)
local SKILLFONT = Enum.Font.Antique
local SKILLTEXTSIZE = 7.5

local ATTACKS = {"Mouse","Q","E","T","F","Z","X","C","V","B"}
local ATTACKSFRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.8, 0, 0.90, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill Frame")
local TEXT = CreateLabel(ATTACKSFRAME, "[BANISH]", SKILLTEXTCOLOR, SKILLTEXTSIZE+1, SKILLFONT, 0, 2, 0.5, "Skill text")

for i = 1, #ATTACKS do
	local SKILLFRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.8, 0, 0.90-(0.04*i), 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill Frame")
	local SKILLTEXT = CreateLabel(SKILLFRAME, "["..ATTACKS[i].."]", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0.5, "Skill text")
end

coroutine.wrap(function()
	while wait() do
		WEAPONGUI.Parent = PlayerGui
		if MODE == 1 then
			TEXT.Text = "[BANISH]"
		elseif MODE == 2 then
			TEXT.Text = "[KICK]"
		else
			TEXT.Text = "[BAN]"
		end
	end
end)()

local CreationFolder = IT("Folder",Character)
CreationFolder.Name = "CreationFolder"

local LASTPART = Head
for i = 1, 15 do
	local MATH = (1-(i/16))
	if LASTPART == Head then
		local Horn = CreatePart(3, CreationFolder, "Neon", 0, 0, "Dirt brown", "Horn", VT(1,0.25,1),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(0.45, 0.5, -0.15) * ANGLES(RAD(-35), RAD(5), RAD(-25)), CF(0, 0, 0))
		LASTPART = Horn
		Horn.Color = C3((i/15),0,0)
		local MSH = IT("BlockMesh",Horn)
		MSH.Scale = VT(0.16*MATH,1,0.16*MATH)
	else
		local Horn = CreatePart(3, CreationFolder, "Neon", 0, 0, "Dirt brown", "Horn", VT(1,0.25,1),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(0, Horn.Size.Y/2.1, 0) * ANGLES(RAD(25), RAD(5), RAD(0)), CF(0, -Horn.Size.Y/2.2, 0))
		LASTPART = Horn
		Horn.Color = C3((i/15),0,0)
		local MSH = IT("BlockMesh",Horn)
		MSH.Scale = VT(0.16*MATH,1,0.16*MATH)
	end
end
local LASTPART = Head
for i = 1, 15 do
	local MATH = (1-(i/16))
	if LASTPART == Head then
		local Horn = CreatePart(3, CreationFolder, "Neon", 0, 0, "Dirt brown", "Horn", VT(1,0.25,1),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(-0.45, 0.5, -0.15) * ANGLES(RAD(-35), RAD(-5), RAD(25)), CF(0, 0, 0))
		LASTPART = Horn
		Horn.Color = C3((i/15),0,0)
		local MSH = IT("BlockMesh",Horn)
		MSH.Scale = VT(0.16*MATH,1,0.16*MATH)
	else
		local Horn = CreatePart(3, CreationFolder, "Neon", 0, 0, "Dirt brown", "Horn", VT(1,0.25,1),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(0, Horn.Size.Y/2.1, 0) * ANGLES(RAD(25), RAD(-5), RAD(0)), CF(0, -Horn.Size.Y/2.2, 0))
		LASTPART = Horn
		Horn.Color = C3((i/15),0,0)
		local MSH = IT("BlockMesh",Horn)
		MSH.Scale = VT(0.16*MATH,1,0.16*MATH)
	end
end

Humanoid:SetStateEnabled("Dead",false)
Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead,false)

Humanoid:SetStateEnabled("GettingUp",true)
Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
Humanoid:SetStateEnabled("Ragdoll",false)
Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)

local PlayerSize = 1
local FT,FRA,FLA,FRL,FLL = Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh")
FT.MeshId,FT.Scale = "rbxasset://fonts/torso.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FRA.MeshId,FRA.Scale = "rbxasset://fonts/rightarm.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FLA.MeshId,FLA.Scale = "rbxasset://fonts/leftarm.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FRL.MeshId,FRL.Scale = "rbxasset://fonts/rightleg.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FLL.MeshId,FLL.Scale = "rbxasset://fonts/leftleg.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)


--//=================================\\
--||			DAMAGING
--\\=================================//

function Kill(MODEL)
	local HUM = MODEL:FindFirstChildOfClass("Humanoid")
	if MODE == 1 then
		return true		
	end
	if MODE == 2 then
		return true	
	end
	if MODE == 3 then
		return true	
	end
	if HUM then
		for index, CHILD in pairs(MODEL:GetChildren()) do
			if CHILD:IsA("BasePart") then
				if CHILD.Name == "Head" then
					WACKYEFFECT2({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3)*MRANDOM(7,14)/10, Transparency = 0.5, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = C3(.75,0,0), SoundID = nil, SoundPitch = .8, SoundVolume = 4, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT2({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2)*MRANDOM(7,14)/10, Transparency = 0.5, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = C3(.5,0,0), SoundID = nil, SoundPitch = .7, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT2({Time = MRANDOM(10,30)*12, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z), Size2 = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z), Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(MRANDOM(-360,360)/1.5,MRANDOM(-360,360)/1.5,0), MRANDOM(-360,360)/35, RotationX = MRANDOM(-360,360)/35, RotationY = MRANDOM(-360,360)/35, RotationZ = MRANDOM(-360,360)/35, Material = "Granite", Color = C3(.35,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, SizeBoomerang = 0, Boomerang = 50})
				elseif CHILD.Name ~= "HumanoidRootPart" then
					WACKYEFFECT2({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3)*MRANDOM(7,14)/10, Transparency = 0.5, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = C3(.75,0,0), SoundID = nil, SoundPitch = .8, SoundVolume = 4, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT2({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2)*MRANDOM(7,14)/10, Transparency = 0.5, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = C3(.5,0,0), SoundID = nil, SoundPitch = .7, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT2({Time = MRANDOM(10,30)*6, EffectType = "Box", Size = CHILD.Size, Size2 = CHILD.Size, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(MRANDOM(-50,100)/1.5,MRANDOM(-50,100)/35,MRANDOM(-50,100)/35), MRANDOM(-50,100)/35, RotationX = MRANDOM(-50,100)/35, RotationY = MRANDOM(-50,100)/35, RotationZ = MRANDOM(-50,100)/35, Material = "Granite", Color = C3(.35,0,0), SoundID = nil, SoundPitch = .7, SoundVolume = 6, UseBoomerangMath = true, SizeBoomerang = 100, Boomerang = 35})
				end
				if CHILD.Name == "Torso" or CHILD.Name == "UpperTorso" then
					WACKYEFFECT2({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3)*MRANDOM(7,14)/10, Transparency = 0.5, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = C3(.75,0,0), SoundID = 130113415, SoundPitch = MRANDOM(0.9,1.1), SoundVolume = 10, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT2({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2)*MRANDOM(7,14)/10, Transparency = 0.5, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = C3(.5,0,0), SoundID = nil, SoundPitch = .7, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT2({Time = 50, EffectType = "Box", Size = VT(0.2,0.2,0.2)*CHILD.Size.Magnitude * 3, Size2 = VT(5,5,5)*CHILD.Size.Magnitude, Transparency = 0.8, Transparency2 = 1, CFrame = CF(CHILD.Position), MoveToPos = CHILD.Position+VT(MRANDOM(-50,100)/35,MRANDOM(-50,100)/35,MRANDOM(-50,100)/35), MRANDOM(-50,100)/35, RotationX = MRANDOM(-50,100)/35, RotationY = MRANDOM(-50,100)/35, RotationZ = MRANDOM(-50,100)/35, Material = "Granite", Color = C3(.35,0,0), SoundID = nil, SoundPitch = .7, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 35})
				end
			end
		end
	end
end

function ApplyAoE(POSITION,RANGE)
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						Kill(CHILD)
					end
				end
			end
		end
	end
end

--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//

function BladeCombo()
	ATTACK = true
	Rooted = false
	local savespeed = Speed
	Speed = 5
	EQUIPPED = true
	local HIT2 = function()
		local HITS2 = {}
		local TOUCH2 = LeftArm.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS2 do
						if HITS2[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS2,hit.Parent)
						if PASS == true then
						Kill(HUM.Parent)
					end
				end
			end
		end)
		return TOUCH2
	end
	local HIT = function()
		local HITS = {}
		local TOUCH = Blade.REDB.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS do
						if HITS[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS,hit.Parent)
						if PASS == true then
						Kill(HUM.Parent)
					end
				end
			end
		end)
		return TOUCH
	end
	if COMBO == 1 then
		Blade.REDB.Trail.Enabled = true
		for i=0, 0.35, 0.1 / 3 do
			Swait()
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(5)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)), 1 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 1 / 3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / 3)  
           if ANIM=="Walk" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 50 * SIN(SINE / 12))), 1 / 3)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 50 * SIN(SINE / 12))), 1 / 3)
			else
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / 3)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / 3)
         end
		end
		CreateSound(1489705211,RightArm,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT()
		for i=0, 0.5, 0.1 / 3 do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-35)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.8, 0.5, -0.7) * ANGLES(RAD(0), RAD(0), RAD(-90)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / 3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / 3)
           if ANIM=="Walk" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 50 * SIN(SINE / 12))), 1 / 3)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 50 * SIN(SINE / 12))), 1 / 3)
			else
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / 3)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / 3)
         end
		end
		TOUCHED:Disconnect()
		COMBO = 2
		Blade.REDB.Trail.Enabled = false
	elseif COMBO == 2 then
		for i=0, 0.35, 0.1 / 3 do
			Swait()
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(5)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(15)), 1 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(15)) * RIGHTSHOULDERC0, 1 / 3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-20), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / 3)
           if ANIM=="Walk" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 50 * SIN(SINE / 12))), 1 / 3)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 50 * SIN(SINE / 12))), 1 / 3)
			else
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / 3)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / 3)
         end
		end
		CreateSound(1489705211,LeftArm,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT2()
		for i=0, 0.5, 0.1 / 3 do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0.5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(45)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-55)), 1 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.6 / 3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.5) * ANGLES(RAD(0), RAD(0), RAD(-105)) * ANGLES(RAD(90), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / 3)
           if ANIM=="Walk" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 50 * SIN(SINE / 12))), 1 / 3)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 50 * SIN(SINE / 12))), 1 / 3)
			else
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / 3)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / 3)
         end
		end
		TOUCHED:Disconnect()
		COMBO = 1
	end
	coroutine.resume(coroutine.create(function()
		for i = 1, 50 do
			Swait()
			if ATTACK == true then
				break
			end
		end
		if ATTACK == false then
			COMBO = 1
		end
	end))
	Speed = savespeed
	ATTACK = false
	Rooted = false
	EQUIPPED = false
end

function Warp()
	local POS = Mouse.Hit.p+VT(0,4,0)
	local ORI = RootPart.Orientation
	RootPart.CFrame = CF(POS)
	RootPart.Orientation = ORI
	CreateSound("424195979",RootPart,7,2,false)
	ShakeCam(1,25)
	for i = 1,4.5,.15 do 
		SpecialSphere(VT(2,10,2)/6,35,CF(POS,RootPart.Position)*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)))*CF(0,MRANDOM(4,8),0),Color3.new(0,0,0),VT(0,0,0))	
		SpecialSphere(VT(2,10,2)/6,35,CF(POS,RootPart.Position)*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)))*CF(0,MRANDOM(4,8),0),Color3.new(0,0,0),VT(0,0,0))	
		WACKYEFFECT({Time=20,EffectType = "Sphere", Size = VT(4*i,65*(1-i/4.5),4*i)*SCALE, Size2 = VT(5*i,0,5*i)*SCALE, Transparency = 0, Transparency2 = 1, CFrame = CF(POS)*ANGLES(0,360*math.rad(i),0), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time=20,EffectType = "Sphere", Size = VT(4*i,65*(1-i/4.5),4*i)*SCALE, Size2 = VT(5*i,0,5*i)*SCALE, Transparency = 0, Transparency2 = 1, CFrame = CF(POS)*ANGLES(0,360*math.rad(i),0), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		ApplyAoE(POS,20)
	end
end

function Stomp()
	ATTACK = true
	Rooted = false
	PLAYANIMS = false
	Speed = 5
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(5), RAD(0), RAD(0)), 2 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-25 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 2 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -0.4*SIZE, -0.6*SIZE) * ANGLES(RAD(1), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE /12), -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.8 / Animation_Speed)
	end
	CreateSound(3923230963,Torso,10,1,false)
	WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(50,10,50)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/1000,100/1000), RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 3923230963, SoundPitch = MRANDOM(1,1.1), SoundVolume = 10})
	WACKYEFFECT({Time = 25, EffectType = "Block", Size = VT(0,0,0), Size2 = VT(50,50,50)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/1000,100/1000), RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 3923230963, SoundPitch = MRANDOM(1,1.1), SoundVolume = 10})
	WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(1,0.01,1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/1000,100/1000), RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 3923230963, SoundPitch = MRANDOM(1,1.1), SoundVolume = 10})
	WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(1,0.01,1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/1000,100/1000), RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 3923230963, SoundPitch = MRANDOM(1,1.1), SoundVolume = 10})
	WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(1,0.01,1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/1000,100/1000), RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 3923230963, SoundPitch = MRANDOM(1,1.1), SoundVolume = 10})
	ApplyAoE(RootPart.Position,25)
	ShakeCam(3,25)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(-180), RAD(-5)) * LEFTSHOULDERC0, 0.8 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE /12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.8 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.1 * COS(SINE /12), -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.8 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE /12), -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.8 / Animation_Speed)
	end
	Speed = 15
	PLAYANIMS = true
	ATTACK = false
	Rooted = false
	Humanoid.CameraOffset = VT(0,0,0)
end

function Slash()
	ATTACK = true
	Rooted = true
	PLAYANIMS = false
	local STOPPP = false
	MagicSphere(VT(0,0,0),15,RootPart.CFrame,"Really black",VT(2,2,2))
	coroutine.wrap(function()
		while wait() do
			WACKYEFFECT({Time = 15, EffectType = "Crystal", Size = VT(1,5,1), Size2 = VT(1,25,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,0,0)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Glass", Color = BRICKC"Really red".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			if STOPPP == true then
				break
			end
		end
	end)()
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		CreateRing(VT(0,0,0),false,0,5,CF(RootPart.Position-VT(0,3,0))*ANGLES(RAD(90),RAD(0),RAD(0)),"Really black",VT(1,1,0))
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE, 0*SIZE, -0.5*SIZE) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0*SIZE, 0*SIZE, 0*SIZE + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(75)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(90), RAD(-45), RAD(45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.2*SIZE, 0.5*SIZE, -1*SIZE) * ANGLES(RAD(0), RAD(0), RAD(90)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -0.5*SIZE, -0.5*SIZE) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE, -0.01*SIZE) * ANGLES(RAD(-45), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	for i=0,0.1, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE, 0*SIZE, 0*SIZE) * ANGLES(RAD(0), RAD(0), RAD(75)), 0.5)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0*SIZE, 0*SIZE, 0*SIZE + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.5)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(90), RAD(-45), RAD(0)) * RIGHTSHOULDERC0, 0.5)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5*SIZE, 0.5*SIZE, -1*SIZE) * ANGLES(RAD(90), RAD(0), RAD(75)) * LEFTSHOULDERC0, 0.5)
		RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -1*SIZE, -0.01*SIZE) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE, -0.01*SIZE) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
	end
	local SOUND = CreateSound("rbxasset://sounds/swordlunge.wav", Torso, 5, 0.6)
	SOUND.SoundId = "rbxasset://sounds/swordlunge.wav"
	CreateSound(62339698, Torso, 10, 0.4)
	ApplyAoE(RootPart.Position,55)
	ShakeCam(3,25)
	WACKYEFFECT({Time = 25, EffectType = "Block", Size = VT(5,5,5), Size2 = VT(100,100,100)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/1000,100/1000), RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 3923230963, SoundPitch = MRANDOM(1,1.1), SoundVolume = 10})
	WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(1,0,1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-4,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(1,0,1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-4,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(1,0,1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-4,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	STOPPP = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE, 0*SIZE, 0*SIZE) * ANGLES(RAD(0), RAD(0), RAD(75)), 0.5)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0*SIZE, 0*SIZE, 0*SIZE + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.5)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1*SIZE, 0.5*SIZE, -1*SIZE) * ANGLES(RAD(90), RAD(0), RAD(-75)) * RIGHTSHOULDERC0, 0.5)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5*SIZE, 0.5*SIZE, -1*SIZE) * ANGLES(RAD(90), RAD(0), RAD(75)) * LEFTSHOULDERC0, 0.5)
		RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -1*SIZE, -0.01*SIZE) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE, -0.01*SIZE) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
	end
	PLAYANIMS = true
	ATTACK = false
	Rooted = false
end

function Grab()
	local TARGET = Mouse.Target
	if TARGET ~= nil and TARGET.Parent:FindFirstChildOfClass("Humanoid") then
		do
			local HUM = TARGET.Parent:FindFirstChildOfClass("Humanoid")
			local ROOT = GetRoot(HUM.Parent, true)
			local FOE = ROOT.Parent
			local HED = FOE:FindFirstChild("Head")
			local TORS = FOE:FindFirstChild("Torso") or FOE:FindFirstChild("UpperTorso")
			Rooted = true
			turnto(TORS.Position)
			if ROOT and HUM.Health > 0 then   
				ATTACK = true	
				coroutine.resume(coroutine.create(function()
					repeat
						Swait()
						WACKYEFFECT2({
							Time = 12,
							EffectType = "Sphere",
							Size = VT(5, 5, 5)/10,
							Size2 = VT(0, 0, 250)/10,
							Transparency = 0,
							Transparency2 = 1,
							CFrame = CF(ROOT.Position) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))),
							MoveToPos = nil,
							RotationX = 0,
							RotationY = 0,
							RotationZ = 0,
							Material = "Neon",
							Color = C3(1,0,0),
							SoundID = 220834019,
							SoundPitch = 2,
							SoundVolume = .5,
							UseBoomerangMath = true,
							Boomerang = 50,
							SizeBoomerang = 100
						})
						WACKYEFFECT2({Time = 25, EffectType = "Box", Size = VT(2,0,2)/3, Size2 = VT(6,7.5,6)/3, Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = RightArm.CFrame*CF(0,-1,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
						WACKYEFFECT2({
							Time = 15,
							EffectType = "Box",
							Size = TORS.Size * 1.2,
							Size2 = TORS.Size * 1.2,
							Transparency = 0.4,
							Transparency2 = 1,
							CFrame = TORS.CFrame,
							MoveToPos = nil,
							RotationX = 0,
							RotationY = 0,
							RotationZ = 0,
							Material = "Neon",
							Color = C3(1, 0, 0),
							SoundID = nil,
							SoundPitch = nil,
							SoundVolume = nil,
							UseBoomerangMath = false,
							Boomerang = 0,
							SizeBoomerang = 0
						})
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-2), RAD(-5), RAD(-85)) * ANGLES(RAD(0), RAD(0), RAD(-22 - 2.5 * SIN(SINE / 13))), 1 / Animation_Speed)
           			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.65, 1, 0) * ANGLES(RAD(120), RAD(0), RAD(90))* RIGHTSHOULDERC0, 0.15 / 3)
            		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.85, .5, 0) * ANGLES(RAD(0),RAD(0),RAD(-50)) * ANGLES(RAD(0),RAD(0),RAD(MRANDOM(-10,40))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
           			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-60), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
					until ATTACK == false
				end))
				local POS = ROOT.Position + VT(0, 15 * ROOT.Size.Z, 0)
				local grav = Instance.new("BodyPosition", ROOT)
				grav.D = 850
				grav.P = 4000
				grav.maxForce = VT(inf,inf,inf)
				grav.Position = POS
				wait(2)
				Kill(TARGET.Parent)
				ShakeCam(1,25)
				ATTACK = false
				Rooted = false
                Humanoid.CameraOffset = VT(0,0,0)
                grav:Destroy()
			end
		end	
	end
end

function Nightmare_Is_Coming()
	ATTACK = true
	CreateSound("459523898",RootPart,10,1,false)
	CreateSound("459523898",RootPart,10,1,false)
	CreateSound("223103466",RootPart,3,.8,false)
	CreateSound("3651185476",RootPart,10,1,false)
	CreateSound("3651185476",RootPart,10,1,false)
	CreateSound("3651185476",RootPart,10,1,false)
	CreateSound("3651185476",RootPart,10,1,false)
	local SCOLOR = Instance.new("ColorCorrectionEffect")
	SCOLOR.Brightness = 0
	SCOLOR.Contrast = 0
	SCOLOR.Saturation = 0
	SCOLOR.Name = "SpookyColor"
	SCOLOR.Parent = game:GetService('Lighting')
	for i=0, 11.5, 0.1 / Animation_Speed2 do
			Swait()
			Humanoid.CameraOffset = VT(MRANDOM(-500,500)/2.5,MRANDOM(-50,50)/2.5,MRANDOM(-500,500)/2.5)/30
			ApplyAoE(RootPart.Position,1e9)
			WACKYEFFECT2({
			Time = 12,
			EffectType = "Sphere",
			Size = VT(5, 5, 5)/10 * 25,
			Size2 = VT(0, 0, 250)/10 * 25,
			Transparency = 0,
			Transparency2 = 1,
			CFrame = CF(RootPart.Position) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))),
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 0,
			RotationZ = 0,
			Material = "Neon",
			Color = C3(0,0,0),
			SoundID = nil,
			SoundPitch = 1,
			SoundVolume = 6,
			UseBoomerangMath = true,
			Boomerang = 0,
			SizeBoomerang = 0
			})
			WACKYEFFECT2({
			Time = 75 - i * 4,
			EffectType = "Box",
			Size = VT(0, 0, 0),
			Size2 = VT(5, 5, 5) + VT(i, i, i) * 55,
			Transparency = 0,
			Transparency2 = 1,
			CFrame = CF(RootPart.Position) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))),
			MoveToPos = nil,
			RotationX = 360,
			RotationY = 360,
			RotationZ = 360,
			Material = "Neon",
			Color = C3(0,0,0),
			SoundID = nil,
			SoundPitch = MRANDOM(8, 20) / 10,
			SoundVolume = 2,
			UseBoomerangMath = true,
			Boomerang = 25,
			SizeBoomerang = 100
		})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-7), RAD(-10), RAD(27 - 2.5 * SIN(SINE / 13))) * ANGLES(RAD(0), RAD(0), RAD(-22 - 2.5 * SIN(SINE / 13))), 1 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.55, .5, 0) * ANGLES(RAD(0), RAD(0), RAD(15))* RIGHTSHOULDERC0, 0.15 / 3)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.65, .5, 0) *ANGLES(RAD(0),RAD(0 + .5 * COS(SINE / 12)),RAD(MRANDOM(-40,10))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	CreateSound("168513088",RootPart,10,1,false)
	CreateSound("168513088",RootPart,10,1,false)
	CreateSound("168513088",RootPart,10,1,false)
	CreateSound("168513088",RootPart,10,1,false)
	--
	CreateSound("231917744",RootPart,10,1,false)
	CreateSound("231917744",RootPart,10,1,false)
	CreateSound("231917744",RootPart,10,1,false)
	CreateSound("231917744",RootPart,10,1,false)
	game.Lighting.Brightness = 0
	game.Lighting.OutdoorAmbient = Color3.new(0,0,0)
	game.Lighting.ClockTime = 0
	Humanoid.HipHeight = 10
	local BLUR = Instance.new("BlurEffect")
	BLUR.Size = 0
	BLUR.Name = "Wasted"
	BLUR.Parent = game:GetService('Lighting')
	for i = 1,350 do
			Swait()
		SCOLOR.Brightness = 5-((i/10)*5)
		SCOLOR.Contrast = 4-((i/10)*4)
		SCOLOR.Saturation = 3-((i/10)*3)
			BLUR.Size = (i/30)*10
			ApplyAoE(RootPart.Position,1e9999)
			WACKYEFFECT2({
			Time = 75 - i * 4,
			EffectType = "Box",
			Size = VT(0, 0, 0),
			Size2 = VT(5, 5, 5) + VT(i, i, i) * 100,
			Transparency = 0,
			Transparency2 = 1,
			CFrame = CF(RootPart.Position) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))),
			MoveToPos = nil,
			RotationX = 360,
			RotationY = 360,
			RotationZ = 360,
			Material = "Neon",
			Color = C3(0,0,0),
			SoundID = 231917744,
			SoundPitch = MRANDOM(8, 20) / 10,
			SoundVolume = 3,
			UseBoomerangMath = true,
			Boomerang = 25,
			SizeBoomerang = 100
		})
			WACKYEFFECT2({EffectType = "Wave", Size = VT(0,5,0), Size2 = VT(i*12,5,i*12), Transparency = 0.6, Transparency2 = 1, CFrame = CF(RootPart.Position) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0.1, RotationY = 1, RotationZ = -0.1, Material = "Slate", Color = C3(0,0,0), SoundID = 528589382, SoundPitch = MRANDOM(5,15)/10, SoundVolume = 3, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
		WACKYEFFECT2({EffectType = "Sphere", Size = VT(0,5,0), Size2 = VT(i*12,5,i*12), Transparency = 0.6, Transparency2 = 1, CFrame = CF(RootPart.Position) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0.1, RotationY = 1, RotationZ = -0.1, Material = "Neon", Color = C3(1,0,0), SoundID = 528589382, SoundPitch = MRANDOM(5,15)/10, SoundVolume = 3, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
		WACKYEFFECT2({EffectType = "Slash", Size = VT(0,5,0), Size2 = VT(i*12,5,i*12), Transparency = 0.6, Transparency2 = 1, CFrame = CF(RootPart.Position) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0.1, RotationY = 1, RotationZ = -0.1, Material = "Neon", Color = C3(1,0,0), SoundID = 528589382, SoundPitch = MRANDOM(5,15)/10, SoundVolume = 3, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-7), RAD(-10), RAD(27 - 2.5 * SIN(SINE / 13))) * ANGLES(RAD(0), RAD(0), RAD(-22 - 2.5 * SIN(SINE / 13))), 1 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.55, .5, 0) * ANGLES(RAD(0), RAD(0), RAD(15))* RIGHTSHOULDERC0, 0.15 / 3)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.65, .5, 0) *ANGLES(RAD(0),RAD(0 + .5 * COS(SINE / 12)),RAD(MRANDOM(-40,10))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	local SCOLORE = game:GetService('Lighting'):FindFirstChild("SpookyColor")
		if SCOLORE then
			spawn(function()
				for i = 1,20 do
					SCOLORE.Brightness = 0
					SCOLORE.Contrast = 0
					SCOLORE.Saturation = 0
				end
				SCOLORE:Destroy()
				SCOLOR:Destroy()  
			end)
		end	
	local BLURA = game:GetService('Lighting'):FindFirstChild("Wasted")
		if BLURA then
			spawn(function()
				for i = 1, 20 do
					BLURA.Size = 5-((i/30)*5)
					swait()
				end
				BLUR:Destroy()
				BLURA:Destroy() 
			end)
		end
	Humanoid.HipHeight = 0
	game.Lighting.ClockTime = 14
	game.Lighting.Brightness = 2
	ATTACK = false
	Humanoid.CameraOffset = VT(0,0,0)
end

function ToggleBlade()
	WACKYEFFECT({Time = 25,EffectType = "Block", Size = VT(0,0,0), Size2 = VT(25,25,25), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = 260435136, SoundPitch = 0.9, SoundVolume = 10})
    WACKYEFFECT({Time = 12.5,EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.25,0,0.25), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({Time = 12.5,EffectType = "Ring", Size = VT(0,0,0), Size2 = VT(1.25,2.5,2.5), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({Time = 12.5,EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(25,0,25), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	if WEAPONEQUIPPED == false then
		WEAPONEQUIPPED = true
	else
		WEAPONEQUIPPED = false
	end
end

function draw()
	repeat Swait()
	local a = Instance.new("Part",Effects)
	a.Name = "d r a w"
	a.Size = Vector3.new(2.5,0.01,2.5)
	a.CFrame = CFrame.new(Mouse.Hit.Position)
	a.Locked = true
	a.Anchored = true
	a.CanCollide = false
	a.Material = "Neon"
	until KEYHOLD == false
end

function Combo()
	ATTACK = true
	Rooted = false
	local savespeed = Speed
	Speed = 12
	EQUIPPED = true
	local HIT2 = function()
		local HITS2 = {}
		local TOUCH2 = LeftArm.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS2 do
						if HITS2[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS2,hit.Parent)
						if PASS == true then
						Kill(HUM.Parent)
					end
				end
			end
		end)
		return TOUCH2
	end
	local HIT = function()
		local HITS = {}
		local TOUCH = RightArm.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS do
						if HITS[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS,hit.Parent)
						if PASS == true then
						Kill(HUM.Parent)
					end
				end
			end
		end)
		return TOUCH
	end
	if COMBO == 1 then
		for i=0, 0.35, 0.1 / Animation_Speed do
			Swait()
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(5)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)  
           if ANIM=="Walk" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 50 * SIN(SINE / 12))), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 50 * SIN(SINE / 12))), 1 / Animation_Speed)
			else
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
         end
		end
		CreateSound(1489705211,RightArm,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT()
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT2({EffectType = "Block", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-35)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.8, 0.5, -0.7) * ANGLES(RAD(0), RAD(0), RAD(-90)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
           if ANIM=="Walk" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 50 * SIN(SINE / 12))), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 50 * SIN(SINE / 12))), 1 / Animation_Speed)
			else
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
         end
		end
		TOUCHED:Disconnect()
		COMBO = 2
	elseif COMBO == 2 then
		for i=0, 0.35, 0.1 / Animation_Speed do
			Swait()
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(5)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(15)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-20), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
           if ANIM=="Walk" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 50 * SIN(SINE / 12))), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 50 * SIN(SINE / 12))), 1 / Animation_Speed)
			else
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
         end
		end
		CreateSound(1489705211,LeftArm,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT2()
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT2({EffectType = "Block", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(45)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-55)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.5) * ANGLES(RAD(0), RAD(0), RAD(-105)) * ANGLES(RAD(90), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
           if ANIM=="Walk" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 50 * SIN(SINE / 12))), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 50 * SIN(SINE / 12))), 1 / Animation_Speed)
			else
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
         end
		end
		TOUCHED:Disconnect()
		COMBO = 3
	elseif COMBO == 3 then
		for i=0, 0.35, 0.1 / Animation_Speed do
			Swait()
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.25, -0.2) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(-45)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
           if ANIM=="Walk" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(-25), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 50 * SIN(SINE / 12))), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-25), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 50 * SIN(SINE / 12))), 1 / Animation_Speed)
			else
		   RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-25), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-25), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
         end
		end
		CreateSound(1489705211,LeftArm,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT2()
		local TOUCHED2 = HIT()
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT2({EffectType = "Block", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT2({EffectType = "Block", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.3, -0.2) * ANGLES(RAD(30), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, -0.5) * ANGLES(RAD(90), RAD(0), RAD(-30)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, -0.5) * ANGLES(RAD(90), RAD(0), RAD(30)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
           if ANIM=="Walk" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(30), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 50 * SIN(SINE / 12))), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(30), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 50 * SIN(SINE / 12))), 1 / Animation_Speed)
			else
		   RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(30), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(30), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
         end
		end
		TOUCHED:Disconnect()
		TOUCHED2:Disconnect()
		COMBO = 4
	elseif COMBO == 4 then
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(0)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.3, -0.2) * ANGLES(RAD(30), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.2, 0.5, -0.5) * ANGLES(RAD(75), RAD(0), RAD(-70)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.2, 0.5, -0.5) * ANGLES(RAD(75), RAD(0), RAD(70)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
	           if ANIM=="Walk" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(30), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 50 * SIN(SINE / 12))), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(30), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 50 * SIN(SINE / 12))), 1 / Animation_Speed)
			else
		   RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(30), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(30), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
         end
		end	
        WACKYEFFECT({Time = 40,EffectType = "Block", Size = VT(0,0,0), Size2 = VT(25,25,25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,-0.5), MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = 260435136, SoundPitch = 0.9, SoundVolume = 10})
        WACKYEFFECT({Time = 25,EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.5,0,0.5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,-0.5), MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25,EffectType = "Ring", Size = VT(0,0,0), Size2 = VT(1,3,3), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,-0.5), MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25,EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(25,0,25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,-0.5), MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		ShakeCam(3,10)
        ApplyAoE(RootPart.Position,25)
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.25, -0.2) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(-45)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
           if ANIM=="Walk" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(-25), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 50 * SIN(SINE / 12))), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-25), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 50 * SIN(SINE / 12))), 1 / Animation_Speed)
			else
		   RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-25), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-25), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
         end
		end	
		COMBO = 1
	end
	coroutine.resume(coroutine.create(function()
		for i = 1, 50 do
			Swait()
			if ATTACK == true then
				break
			end
		end
		if ATTACK == false then
			COMBO = 1
		end
	end))
	Speed = savespeed
	ATTACK = false
	Rooted = false
	EQUIPPED = false
end

--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

AdvancedChatfunc(Player.Name.." Has Arrived",2,2,false)

function MouseDown(Mouse)
	HOLD = true
	if ATTACK == false then
		if WEAPONEQUIPPED == false then
			Combo()
		else
			BladeCombo()
		end
	end
end

function MouseUp(Mouse)
HOLD = false
end

function KeyDown(Key)
	KEYHOLD = true
	if Key == "m" then
		sick:remove()
	end
	if Key == "n" then
		Effects:ClearAllChildren()
	end
	if Key == "3" then
		draw()
	end
	if Key == "p" then
		ATTACK = false
		Rooted = false
	end
	if Key == "q" and ATTACK == false and MODE >1 then
		MODE = MODE -1
	end
	if Key == "e" and ATTACK == false and MODE <3 then
		MODE = MODE +1
	end
	if Key == "t" then
		TOBANISH = {}
		TOBAN = {}
	end
	if Key == "f" and ATTACK == false then
		ToggleBlade()
	end
	if Key == "z" and ATTACK == false then
		Warp()
	end
	if Key == "x" and ATTACK == false then
		Stomp()
	end
	if Key == "c" and ATTACK == false then
		Slash()
	end
	if Key == "v" and ATTACK == false then
		Grab()
	end
	if Key == "b" and ATTACK == false then
		Nightmare_Is_Coming()
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
	elseif Jump == "Jump" and (Disable_Jump == false) then
		wait(0.1)
	end
end)

coroutine.wrap(function()
	while wait() do
		if Effects:FindFirstChild("Effect") then
			local effect = Effects:FindFirstChild("Effect")
			wait(2.5)
			if effect ~= nil then
				effect:remove()
			end
		end
	end
end)()

while true do
	Swait()
	for T = 1, #TAIL do
		if TAIL[T] ~= nil then
			TAIL[T].C1 = Clerp(TAIL[T].C1, CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(3.5 * SIN(SINE / 12))), 1 / 5)
		end
	end
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
	    v:Stop();
	end
	SINE = SINE + CHANGE
	vissine = vissine + CHANGE * sick.PlaybackLoudness/150
	sine = sine + CHANGE
	Hue = Hue + 1
	if (Hue>360) then Hue = 0 end
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4*SIZE, Character)
	local WALKSPEEDVALUE = 12 / (Humanoid.WalkSpeed / 16)
	if ANIM == "Walk" and TORSOVELOCITY > 1 then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, -0.15 * COS(SINE / (WALKSPEEDVALUE / 2))) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 0.875 - 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.125 * COS(SINE / WALKSPEEDVALUE) +0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(76 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 0.875 + 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), 0.125 * COS(SINE / WALKSPEEDVALUE) +0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(76 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
	elseif (ANIM ~= "Walk") or (TORSOVELOCITY < 1) then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
	end
	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil and ATTACK == false then
		ANIM = "Jump"
		if WEAPONEQUIPPED == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0*SIZE, 0*SIZE, 0*SIZE) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / 5)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0*SIZE, 0*SIZE , 0*SIZE + ((1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / 5)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(-35), RAD(0), RAD(25 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / 5)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(-35), RAD(0), RAD(-25 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / 5)
			RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -0.4*SIZE, -0.6*SIZE) * ANGLES(RAD(1), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / 5)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE, 0*SIZE) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / 5)
		else
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / 5)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(-45), RAD(0), RAD(0)), 1 / 5)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(180), RAD(0), RAD(15 + 5 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / 5)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(-25 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / 5)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(1), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / 5)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / 5)
		end
	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil and ATTACK == false then
		ANIM = "Fall"
		if WEAPONEQUIPPED == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0*SIZE, 0*SIZE, 0*SIZE) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / 5)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0*SIZE, 0*SIZE , 0 + ((1) - 1*SIZE)) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / 5)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(45 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / 5)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(-45 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / 5)
			RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -0.3*SIZE, -0.7*SIZE) * ANGLES(RAD(-25 + 5 * SIN(SINE / 12)), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / 5)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -0.8*SIZE, -0.3*SIZE) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / 5)
		else
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / 5)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / 5)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(180 - 4 * COS(SINE / 6)), RAD(0), RAD(15 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / 5)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(-45 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / 5)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -0.7) * ANGLES(RAD(-25 + 5 * SIN(SINE / 12)), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / 5)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.3) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / 5)
		end
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil and ATTACK == false then
		ANIM = "Idle"
		DOUBLED = false
		READYTODOUBLE = false
		if WEAPONEQUIPPED == false then
 			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , -0.2 + 0.2*COS(SINE / 13) ) * ANGLES(RAD(-20), RAD(0), RAD(0)), 0.35 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-20+MRANDOM(-15-sick.PlaybackLoudness/200,15+sick.PlaybackLoudness/200)), RAD(0+MRANDOM(-15-sick.PlaybackLoudness/200,15+sick.PlaybackLoudness/200)), RAD(0+MRANDOM(-15-sick.PlaybackLoudness/200,15+sick.PlaybackLoudness/200))), 0.35 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5+ 0.2*COS(SINE / 13), 0) * ANGLES(RAD(-20+MRANDOM(-15-sick.PlaybackLoudness/200,15+sick.PlaybackLoudness/200)), RAD(0+MRANDOM(-15-sick.PlaybackLoudness/200,15+sick.PlaybackLoudness/200)), RAD(0+MRANDOM(-15-sick.PlaybackLoudness/200,15+sick.PlaybackLoudness/200)))* RIGHTSHOULDERC0, 0.35 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5+ 0.2*COS(SINE / 13), 0) * ANGLES(RAD(-20+MRANDOM(-15-sick.PlaybackLoudness/200,15+sick.PlaybackLoudness/200)), RAD(0+MRANDOM(-15-sick.PlaybackLoudness/200,15+sick.PlaybackLoudness/200)), RAD(0+MRANDOM(-15-sick.PlaybackLoudness/200,15+sick.PlaybackLoudness/200))) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1- 0.2*COS(SINE / 13), 0) * ANGLES(RAD(-20), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(90), RAD(0)), 0.35 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1- 0.2*COS(SINE / 13) , 0) * ANGLES(RAD(-20), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(-90), RAD(0)), 0.35 / Animation_Speed)
		else
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0+MRANDOM(-25,25)), RAD(0+MRANDOM(-25,25)), RAD(0+MRANDOM(-25,25))), 0.35 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(-180), RAD(-5)) * LEFTSHOULDERC0, 0.8 / 10)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE /12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / 25)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *ANGLES(RAD(0),RAD(0 + .5 * COS(SINE / 12)),RAD(MRANDOM(-40,10))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.1 * COS(SINE /12), -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.8 / 10)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE /12), -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.8 / 10)
		end	
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil and ATTACK == false then
		ANIM = "Walk"
		DOUBLED = false
		READYTODOUBLE = false
		if WEAPONEQUIPPED == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15))), 0.35 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.35 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
		else
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0+MRANDOM(-25,25)), RAD(0+MRANDOM(-25,25)), RAD(0+MRANDOM(-25,25))), 0.35 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(-180), RAD(-5)) * LEFTSHOULDERC0, 0.8 / 10)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *ANGLES(RAD(90),RAD(0 + .5 * COS(SINE / WALKSPEEDVALUE)),RAD(MRANDOM(-40,10))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
		end
	end
	if MRANDOM(1,55) == 1 and WEAPONEQUIPPED == true then
		coroutine.resume(coroutine.create(function()
			VALUE1 = true
			for i=1,25 do
				Swait()
				FT.Parent = Torso
				FRA.Parent = RightArm
				FLA.Parent = LeftArm
				FRL.Parent = RightLeg
				FLL.Parent = LeftLeg
				local oof = Instance.new("FlangeSoundEffect",sick)
				for _,v in next, Character:GetDescendants() do
					if(v:IsA'DataModelMesh')then
						v.Offset = VT(math.random(-50,50)/100,math.random(-50,50)/100,math.random(-50,50)/100)
					end
				end
			end
			VALUE1 = false
			FT.Parent = nil
			FRA.Parent = nil
			FLA.Parent = nil
			FRL.Parent = nil
			FLL.Parent = nil
			for _,v in next, Character:GetDescendants() do
				if(v:IsA'DataModelMesh')then
					v.Offset = VT(0,0,0)
				end
			end
			sick:ClearAllChildren()
		end))
	end
	for _, c in pairs(WEAPONGUI:GetChildren()) do
		if c:FindFirstChildWhichIsA("TextLabel") then
			c:FindFirstChildWhichIsA("TextLabel").TextColor3 = COLORSHIFT
			c:FindFirstChildWhichIsA("TextLabel").TextStrokeColor3 = COLORSHIFT
			c:FindFirstChildWhichIsA("TextLabel").Font = FONTS[MRANDOM(1,#FONTS)]
		end
	end
	COLORSHIFT = outer.Color
	for _, c in pairs(Effects:GetChildren()) do
		if c:IsA("Part") or c:IsA("MeshPart") then
			c.Color = COLORSHIFT
		end
	end
	for _, c in pairs(CreationFolder:GetChildren()) do
		if c:IsA("Part") or c:IsA("MeshPart") then
			c.Color = COLORSHIFT
		end
	end
	unanchor()
	Humanoid.MaxHealth = "inf"
	Humanoid.Health = "inf"
	Humanoid.DisplayDistanceType = "None"
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	if sick then
		sick.Name = "epic music aint it"
		sick.SoundId = "rbxassetid://573736432"
		sick.MaxDistance = inf
		sick.Volume = inf
		sick.Looped = true
		if sick.IsPlaying == false then
			sick:Play()
		end
		sick.Parent = Torso
	else
		local sick = Instance.new("Sound")
		sick.Name = "epic music aint it"
		sick.SoundId = "rbxassetid://573736432"
		sick.MaxDistance = inf
		sick.Volume = inf
		sick.Looped = true
		if sick.IsPlaying == false then
			sick:Play()
		end
		sick.Parent = Torso
	end
	if HITFLOOR ~= nil then
		outer.Parent = Character
		WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.1,0,0.1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3.25,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0.5,0,0.5), Size2 = VT(0.1,6,0.1), Transparency = 0.3, Transparency2 = 1, CFrame = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(1,10)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	else
		outer.Parent = nil
	end
	if WEAPONEQUIPPED == false then
		Blade.Parent = nil
		BackBlade.Parent = Character
		sick.PlaybackSpeed = 1
	else
		Blade.Parent = Character
		BackBlade.Parent = nil
		sick.PlaybackSpeed = .8
	end
	if Blade.Parent == Character then
		WEAPONEQUIPPED = true
	else
		WEAPONEQUIPPED = false
	end
	if BackBlade.Parent == Character then
		WEAPONEQUIPPED = false
	else
		WEAPONEQUIPPED = true
	end
	for _, c in pairs(Blade:GetChildren()) do
		if c.Name == "RED" or c.Name == "REDB" then
			c.Color = COLORSHIFT
		end
	end
	for _, c in pairs(BackBlade:GetChildren()) do
		if c.Name == "RED" or c.Name == "REDB" then
			c.Color = COLORSHIFT
		end
	end
end

--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--