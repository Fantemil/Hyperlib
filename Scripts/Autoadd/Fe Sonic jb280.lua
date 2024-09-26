--[[KillerDarkness0105's/Codex's Sonic script]]--
Bypass = "death"
FELOADLIBRARY = {}
loadstring(game:GetObjects("rbxassetid://5209815302")[1].Source)()
loadstring(game:GetObjects("rbxassetid://5325226148")[1].Source)()

print("Move list")
print("---------")
print("Shift = Boost")
print("Ctrl = Mach Speed Boost")
print("Q = Left QuickStep, E  = Right QuickStep")
print("C = Slide, in air to stomp")
print("Jump Then Hold B near a wall to wallrun")
print("M to change music, if you're standing still you'll do a special animation!")
print("Space near a wall to walljump, away from a wall homing attack")

wait(0.07)
Player=game:GetService("Players").LocalPlayer
Character=workspace.non
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack
Torso=Character.Torso
Head=Character.Head
Humanoid=Character.Humanoid
LeftArm=Character["Left Arm"]
LeftLeg=Character["Left Leg"]
RightArm=Character["Right Arm"]
RightLeg=Character["Right Leg"]
LS=Torso["Left Shoulder"]
LH=Torso["Left Hip"]
RS=Torso["Right Shoulder"]
RH=Torso["Right Hip"]
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
attacktype2=1
vt=Vector3.new
cf=CFrame.new
cn=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
combo = 0
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false
attackdebounce = false
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
stance = false
local ff = 2
noleg = false
evadecooldown = false
Humanoid.Animator.Parent = nil
equip = false
local Effects = {}
 attackspeed = 0.14 
 df = false
 Swing = 1
local sine = 0
local change = 1
local val = 0
local speed = 0
local rs = game:GetService("RunService").RenderStepped
cam = workspace.CurrentCamera
local Create = FELOADLIBRARY.Create
deb = game:GetService("Debris")
Face.Transparency = 0
--Face.Texture = "rbxassetid://176217905" --176217905
Humanoid.WalkSpeed = 64
local freefall = 0
local headsunsound = RootPart:FindFirstChild("Running") or Instance.new("Sound",RootPart)
headsunsound.SoundId = "rbxassetid://758199523"
headsunsound.Volume = 2
local boost = false
Humanoid.JumpPower = 88
local musicnum = 1
    
local spd = Vector3.new(RootPart.Velocity.x,0,RootPart.Velocity.z).magnitude + 10
local dir = Vector3.new(RootPart.Velocity.x,0,RootPart.Velocity.z).unit
 local GravPoint = RootPart.Velocity.y
 local NV = Vector3.new(0,0,0)

		music = Instance.new("Sound",RootPart)
		music.Volume = 1
		music.TimePosition = 0
		music.Pitch = 1
		music.SoundId = "rbxassetid://1251555494"
		music.Looped = true
		music:Play()
		

		boostsound = Instance.new("Sound",RootPart)
		boostsound.Volume = .6
		boostsound.TimePosition = 0
		boostsound.Pitch = 1
		boostsound.SoundId = "rbxassetid://924922553"
		boostsound.Looped = false



		stompsound = Instance.new("Sound",RootPart)
		stompsound.Volume = 2
		stompsound.TimePosition = 0
		stompsound.Pitch = 1
		stompsound.SoundId = "rbxassetid://1295424184"
		stompsound.Looped = false



		so = function(id,par,vol,pit)
		coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound",par or workspace)
		sou.Volume=vol
		sou.Pitch=pit or 1
		sou.SoundId=id
		sou:play()
		game:GetService("Debris"):AddItem(sou,8)
		end))
		end
		
		--save shoulders
		RSH, LSH=nil, nil
		--welds
		RW, LW=Instance.new("Weld"), Instance.new("Weld")
		RW.Name="Right Shoulder" LW.Name="Left Shoulder"
		LH=Torso["Left Hip"]
		RH=Torso["Right Hip"]
		TorsoColor=Torso.BrickColor
		function NoOutline(Part)
		Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
		end
		player=Player
		ch=Character
		RSH=ch.Torso["Right Shoulder"]
		LSH=ch.Torso["Left Shoulder"]
		--
		RSH.Parent=nil
		LSH.Parent=nil
		--
		RW.Name="Right Shoulder"
		RW.Part0=ch.Torso
		RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5)
		RW.C1=cf(0, 0.5, 0)
		RW.Part1=ch["Right Arm"]
		RW.Parent=ch.Torso
		--
		LW.Name="Left Shoulder"
		LW.Part0=ch.Torso
		LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
		LW.C1=cf(0, 0.5, 0)
		LW.Part1=ch["Left Arm"]
		LW.Parent=ch.Torso
		 
		 
		newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
		    local wld = Instance.new("Weld", wp1)
		    wld.Part0 = wp0
		    wld.Part1 = wp1
		    wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
		end
		 local rs = game:GetService("RunService").RenderStepped
		 
		newWeld(RootPart, Torso, 0, -1, 0)
		Torso.Weld.C1 = CFrame.new(0, -1, 0)
		newWeld(Torso, LeftLeg, -0.5, -1, 0)
		LeftLeg.Weld.C1 = CFrame.new(0, 1, 0)
		newWeld(Torso, RightLeg, 0.5, -1, 0)
		RightLeg.Weld.C1 = CFrame.new(0, 1, 0)
		
		    Player=game:GetService('Players').LocalPlayer
		    Character=Player.Character
		    mouse=Player:GetMouse()
		    m=Instance.new('Model',Character)
		 
		 
		    local function weldBetween(a, b)
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
		 
		frame = 1 / 80
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
		 
--[[]
		function swait(num)
		    if num == 0 or num == nil then
		        ArtificialHB.Event:wait()
		    else
		        for i = 0, num do
		            ArtificialHB.Event:wait()
		        end
		    end
	end

	]]
	



	function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait()
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait()
		end
	end
end

		function RemoveOutlines(part)
		    part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
		end
		   
		
		part = function(formfactor, parent, reflectance, transparency, brickcolor, name, size)
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
		  NoOutline(fp)
		  if fp.BrickColor == BrickColor.new("Dark indigo") then
		    fp.Material = "Neon"
		  else
		    if fp.BrickColor == BrickColor.new("Really black") then
		      fp.BrickColor = BrickColor.new("Really black")
		      fp.Material = "Metal"
		    else
		      fp.Material = "Neon"
		    end
		  end
		  fp:BreakJoints()
		  return fp
		end
		
		mesh = function(Mesh, part, meshtype, meshid, offset, scale)
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
		
		weld = function(parent, part0, part1, c0)
		  local weld = it("Weld")
		  weld.Parent = parent
		  weld.Part0 = part0
		  weld.Part1 = part1
		  weld.C0 = c0
		  return weld
		end
		
		F1 = Instance.new("Folder", Character)
		F1.Name = "Effects Folder"
		F2 = Instance.new("Folder", F1)
		F2.Name = "Effects"
		Triangle = function(a, b, c)
		end
		
		MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
		  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt())
		  prt.Anchored = true
		  prt.CanCollide = false
		  prt.CFrame = cframe
		  prt.Name = "prt"
		  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
		  game:GetService("Debris"):AddItem(prt, 5)
		  table.insert(Effects, {prt, "Block1", delay, x3, y3, z3})
		end
		
		
		
		MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
		  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt())
		  prt.Anchored = true
		  prt.CanCollide = false
		  prt.CFrame = cframe
		  prt.Name = "prt"
		  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
		  game:GetService("Debris"):AddItem(prt, 5)
		  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3})
		end
		
		MagicWave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
		  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt())
		  prt.Anchored = true
		  prt.CFrame = cframe
		  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
		  game:GetService("Debris"):AddItem(prt, 5)
		  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3})
		end
		
		MagicCylinder = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
		  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt(0.2, 0.2, 0.2))
		  prt.Anchored = true
		  prt.CFrame = cframe
		  msh = mesh("SpecialMesh", prt, "Head", "", vt(0, 0, 0), vt(x1, y1, z1))
		  game:GetService("Debris"):AddItem(prt, 5)
		  Effects[#Effects + 1] = {prt, "Cylinder", delay, x3, y3, z3}
		end
		
		MagicCylinder2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
		  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt(0.2, 0.2, 0.2))
		  prt.Anchored = true
		  prt.CFrame = cframe
		  msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
		  game:GetService("Debris"):AddItem(prt, 5)
		  Effects[#Effects + 1] = {prt, "Cylinder", delay, x3, y3, z3}
		end
		
		MagicBlood = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
		  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt())
		  prt.Anchored = true
		  prt.CFrame = cframe
		  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
		  game:GetService("Debris"):AddItem(prt, 5)
		  table.insert(Effects, {prt, "Blood", delay, x3, y3, z3})
		end
		
		ElecEffect = function(cff, x, y, z)
		  local prt = part(3, F2, 0, 0, BrickColor.new("Dark indigo"), "Part", vt(1, 1, 1))
		  prt.Anchored = true
		  prt.CFrame = cff * cf(math.random(-x, x), math.random(-y, y), math.random(-z, z))
		  prt.CFrame = cf(prt.Position)
		  game:GetService("Debris"):AddItem(prt, 2)
		  xval = math.random() / 2
		  yval = math.random() / 2
		  zval = math.random() / 2
		  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(xval, yval, zval))
		  Effects[#Effects + 1] = {prt, "Elec", 0.1, x, y, z, xval, yval, zval}
		end
		
		function FindNearestTorso(Position, Distance, SinglePlayer)
			if SinglePlayer then
				return (SinglePlayer.Torso.CFrame.p - Position).magnitude < Distance
			end
			local List = {}
			for i, v in pairs(workspace:GetChildren()) do
				if v:IsA("Model") then
					if v:findFirstChild("Torso") then
						if v ~= Character then
							if (v.Torso.Position - Position).magnitude <= Distance then
								table.insert(List, v)
							end 
						end 
					end 
				end 
			end
			return List
		end
		
		
		function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part"){
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material,
	}
	RemoveOutlines(Part)
	return Part
end
	
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh){
		Parent = Part,
		Offset = OffSet,
		Scale = Scale,
	}
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
		
		
		
function BlockEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	if Type == 1 or Type == nil then
		table.insert(Effects, {
			prt,
			"Block1",
			delay,
			x3,
			y3,
			z3,
			msh
		})
	elseif Type == 2 then
		table.insert(Effects, {
			prt,
			"Block2",
			delay,
			x3,
			y3,
			z3,
			msh
		})
	end
end

function SphereEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function RingEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay,material)
local prt=CreatePart(workspace,material,0,0,brickcolor,"Effect",vt(.5,.5,.5))--part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=CreateMesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh,num) 
for i=0,1,delay do
swait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,(math.random(0,1)+math.random())/5)
end

function CylinderEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function WaveEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function SpecialEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end


function MoonEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://259403370", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function HeadEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "Head", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function BreakEffect(brickcolor, cframe, x1, y1, z1)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	local num = math.random(10, 50) / 1000
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Shatter",
		num,
		prt.CFrame,
		math.random() - math.random(),
		0,
		math.random(50, 100) / 100
	})
end
		
		local lerp = function(a, b, t)
	return a * (1 - t) + b * t
end
		
		function clerp(a,b,t)
		local qa = {QuaternionFromCFrame(a)}
		local qb = {QuaternionFromCFrame(b)}
		local ax, ay, az = a.x, a.y, a.z
		local bx, by, bz = b.x, b.y, b.z
		local _t = 1-t
		return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t))
		end
		 
		function QuaternionFromCFrame(cf)
		local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
		local trace = m00 + m11 + m22
		if trace > 0 then
		local s = math.sqrt(1 + trace)
		local recip = 0.5/s
		return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5
		else
		local i = 0
		if m11 > m00 then
		i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
		i = 2
		end
		if i == 0 then
		local s = math.sqrt(m00-m11-m22+1)
		local recip = 0.5/s
		return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip
		elseif i == 1 then
		local s = math.sqrt(m11-m22-m00+1)
		local recip = 0.5/s
		return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip
		elseif i == 2 then
		local s = math.sqrt(m22-m00-m11+1)
		local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip
		end
		end
		end
		

		function QuaternionToCFrame(px, py, pz, x, y, z, w)
		local xs, ys, zs = x + x, y + y, z + z
		local wx, wy, wz = w*xs, w*ys, w*zs
		local xx = x*xs
		local xy = x*ys
		local xz = x*zs
		local yy = y*ys
		local yz = y*zs
		local zz = z*zs
		return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy))
		end
		function QuaternionSlerp(a, b, t)
		local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4]
		local startInterp, finishInterp;
		if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
		local theta = math.acos(cosTheta)
		local invSinTheta = 1/math.sin(theta)
		startInterp = math.sin((1-t)*theta)*invSinTheta
		finishInterp = math.sin(t*theta)*invSinTheta  
		else
		startInterp = 1-t
		finishInterp = t
		end
		else
		if (1+cosTheta) > 0.0001 then
		local theta = math.acos(-cosTheta)
		local invSinTheta = 1/math.sin(theta)
		startInterp = math.sin((t-1)*theta)*invSinTheta
		finishInterp = math.sin(t*theta)*invSinTheta
		else
		startInterp = t-1
		finishInterp = t
		end
		end
		return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp
		end
		 
		function weld5(part0, part1, c0, c1)
		    weeld=Instance.new("Weld", part0)
		    weeld.Part0=part0
		    weeld.Part1=part1
		    weeld.C0=c0
		    weeld.C1=c1
		    return weeld
		end
		 
		--Example: Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		 
		function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
		return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
	end
	
	
	



 
 local f = 0
 local b = Instance.new("BlurEffect",cam)
local    c = Instance.new('PointLight', Torso)
c.Range = 16
c.Color = Color3.new(0, 1,1)
c.Brightness = 1.5
 game:GetService("RunService"):BindToRenderStep("W0tT", 0, function()

b.Size = b.Size - 4
if boost == true then
c.Enabled = true
    cam.FieldOfView = lerp(cam.FieldOfView, 110, 0.5)
   -- cam.FieldOfView = 110
    freefall = 0
    Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(0,0,3),0.25)
 SphereEffect(BrickColor.new("Cyan"),RightLeg.CFrame*CFrame.new(0,-1,0)*angles(math.random(-180,180),math.random(-180,180),math.random(-180,180)),1.4,12,1.4,2.8,26,2.8,0.07)
  SphereEffect(BrickColor.new("Cyan"),LeftLeg.CFrame*CFrame.new(0,-1,0)*angles(math.random(-180,180),math.random(-180,180),math.random(-180,180)),1.4,12,1.4,2.8,26,2.8,0.07)
  if hitfloor ~= nil and Anim ~= "runIdle" then
  SpecialEffect(BrickColor.new("Cyan"),RootPart.CFrame*CFrame.new(0,-3.4,.78) ,2,2,2, 1.5,1.5,1.5,.09)
  end
end
if boost == false then
    cam.FieldOfView = lerp(cam.FieldOfView, 70, 0.076)
    --cam.FieldOfView = 70
    c.Enabled = false
end
end)



						 mouse.KeyDown:connect(function(key)
    if string.byte(key) == 48 then
        b.Size = 40
		Swing = 2
		freefall = 0
		
coroutine.resume(coroutine.create(function()
    for i = 0,1,0.1 do
        swait()
        Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(math.random(-0.35*1.8,0.35*1.8),math.random(-0.35*1.8,0.35*1.8),math.random(-0.35*1.8,0.35*1.8)),0.24)
end
end))
        Humanoid.WalkSpeed = 180
        RootPart.Velocity = RootPart.CFrame.lookVector*150
        RingEffect(BrickColor.new("Cyan"), RootPart.CFrame*CFrame.new(0,0,-9.2) , 1, 1, 1, 8, 8, 8, 0.14,"Neon") 
        boost = true
        boostsound:Play()
end
end)

mouse.KeyUp:connect(function(key)
    if string.byte(key) == 48 then
		Swing = 1
        Humanoid.WalkSpeed = 64
        boost = false
        boostsound:Stop()

end
end)




						 mouse.KeyDown:connect(function(key)
    if string.byte(key) == 50 then
        b.Size = 40
        freefall = 0
		Swing = 2
		
coroutine.resume(coroutine.create(function()
    for i = 0,1,0.1 do
        swait()
        Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(math.random(-0.35*2.8,0.35*2.8),math.random(-0.35*2.8,0.35*2.8),math.random(-0.35*2.8,0.35*2.8)),0.48)
end
end))
		
        Humanoid.WalkSpeed = 320
        RootPart.Velocity = RootPart.CFrame.lookVector*550
        RingEffect(BrickColor.new("Cyan"), RootPart.CFrame*CFrame.new(0,0,-9.2) , 1, 1, 1, 18, 18, 18, 0.14,"Neon") 
        RingEffect(BrickColor.new("White"), RootPart.CFrame*CFrame.new(0,0,-11.2) , 1, 1, 1, 18, 18, 18, 0.14,"Neon") 
        RingEffect(BrickColor.new("Cyan"), RootPart.CFrame*CFrame.new(0,0,-13.2) , 1, 1, 1, 18, 18, 18, 0.14,"Neon") 
        boost = true
        boostsound:Play()
end
end)

mouse.KeyUp:connect(function(key)
    if string.byte(key) == 50 then
		Swing = 1
        Humanoid.WalkSpeed = 64
        boost = false
        boostsound:Stop()

end
end)


local lastwall = nil
local jumped = false



		 
		 
		 
		 local vwall = false
		 
		 		 mouse.KeyDown:connect(function(key)
		     if key == 'b' and hitfloor == nil and attack == false then
	vrun()
end
 end)
 
 
 function vrun()
     		 	local ray = Ray.new(
		RootPart.CFrame.p, RootPart.CFrame.lookVector *2.5
	)
	local hit, position, normal = workspace:FindPartOnRay(ray, character)
	
	if hit then
	    if hit.Parent.Parent ~= Character and hit.Parent ~= Character and hit.Name ~= "prt" and hit.CanCollide == true then
	    vwall = true
	        local NV = Vector3.new(0,0,0)
	             local spd = Vector3.new(RootPart.Velocity.x,0,RootPart.Velocity.z).magnitude + 10
local dir = Vector3.new(RootPart.Velocity.x,0,RootPart.Velocity.z).unit
 local GravPoint = RootPart.Velocity.y
		local velo = Instance.new("BodyVelocity",Torso)
		velo.MaxForce = Vector3.new(400000,400000,400000)

		attack = true
while vwall == true and ray and hit do
swait()
change = 0.84+ Humanoid.WalkSpeed/132
if Humanoid.WalkSpeed > 40 and Humanoid.WalkSpeed < 70 then
velo.Velocity =  Vector3.new(0,40,0)
end
if Humanoid.WalkSpeed > 70 and Humanoid.WalkSpeed < 200 then
		velo.Velocity =  Vector3.new(0,80,0)
		end
		if Humanoid.WalkSpeed > 200 then
		velo.Velocity =  Vector3.new(0,130,0)
		end
		 ray = Ray.new(
		RootPart.CFrame.p, RootPart.CFrame.lookVector *2.5
	)
	hit, position, normal = workspace:FindPartOnRay(ray, character)
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1-0.52*math.cos(sine/2), .6) * angles(math.rad(96), math.rad(0), math.rad(0)+ RootPart.RotVelocity.Y / 26), .1)
		Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-11+20*math.sin(sine/2)),math.rad(0),math.rad(0+5*math.sin(sine/4)) + RootPart.RotVelocity.Y / 13),.1)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.1) * angles(math.rad(-90-7*math.sin(sine/4))+ RootPart.RotVelocity.Y / -34, math.rad(0), math.rad(15+2*math.sin(sine/4))- RootPart.RotVelocity.Y / 34),.15)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0.1)*angles(math.rad(-90-7*math.sin(sine/4))+ RootPart.RotVelocity.Y / 34,math.rad(0),math.rad(-15+2*math.sin(sine/4))+ RootPart.RotVelocity.Y / -34),.15)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1+0.28*math.cos(sine/4), 0-0.32*math.cos(sine/4)) * CFrame.Angles(math.rad(0+104*math.sin(sine/4)), math.rad(0)+ RootPart.RotVelocity.Y / 42, math.rad(0)+ RootPart.RotVelocity.Y / -54), 0.3+ Humanoid.WalkSpeed/272)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1-0.28*math.cos(sine/4),0+0.32*math.cos(sine/4)) * CFrame.Angles(math.rad(0-104*math.sin(sine/4)), math.rad(0)+ RootPart.RotVelocity.Y / 42, math.rad(0)- RootPart.RotVelocity.Y / 54), 0.3+ Humanoid.WalkSpeed/272)
end
		velo:Destroy()
		wait(0.07)

if vwall == false then

 RootPart.Velocity = -RootPart.CFrame.lookVector*68 + Vector3.new(0,86,0)

--[[]
		for i = 0,5,0.2 do
rs:wait()
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -0.79, 0) * CFrame.Angles(math.rad(0+100*i), math.rad(0), math.rad(0)), 0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(0),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(180), math.rad(-60), math.rad(40)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(180), math.rad(60), math.rad(-40)),.2)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
end
]]


for i = 0,4,0.1 do
swait()
Humanoid.CameraOffset = Vector3.new(0,0,0)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0+260*i), math.rad(0), math.rad(0)), 0.6)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(70),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(.7, -0.22, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.1)
LW.C0 = clerp(LW.C0, CFrame.new(-.7, -0.22, -0.5) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.1)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -.34, -0.7) * CFrame.Angles(math.rad(-25), math.rad(0), math.rad(0)), 0.1)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -.34, -0.7) * CFrame.Angles(math.rad(-25), math.rad(0), math.rad(0)), 0.1)
end

 		attack = false


end


		if vwall == true then
 RootPart.Velocity = RootPart.CFrame.lookVector*38 + Vector3.new(0,86,0)

--[[]
		for i = 0,5,0.2 do
rs:wait()
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -0.79, 0) * CFrame.Angles(math.rad(0+100*i), math.rad(0), math.rad(0)), 0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(0),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(180), math.rad(-60), math.rad(40)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(180), math.rad(60), math.rad(-40)),.2)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
end
]]


for i = 0,4,0.15 do
swait()
Humanoid.CameraOffset = Vector3.new(0,0,0)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0-260*i), math.rad(0), math.rad(0)), 0.6)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(70),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(.7, -0.22, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.1)
LW.C0 = clerp(LW.C0, CFrame.new(-.7, -0.22, -0.5) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.1)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -.34, -0.7) * CFrame.Angles(math.rad(-25), math.rad(0), math.rad(0)), 0.1)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -.34, -0.7) * CFrame.Angles(math.rad(-25), math.rad(0), math.rad(0)), 0.1)
end

 		attack = false

end


end
end
end
 
 

 
 	 mouse.KeyUp:connect(function(key)
		     if key == 'b' and vwall == true then
	         vwall = false
	         end
	         end)
		 


		 
		 
function Ldash()
    
    

evadecooldown = true
attack = true
k = math.random(1,2) 
if k == 1 then
so("http://www.roblox.com/asset/?id=807766310", Head, 2.5, 1)
else
 so("http://www.roblox.com/asset/?id=807768137", Head, 2.5, 1)
 end
 
 
 


 --+173.8*i
for i = 0,.7,0.1 do
swait()
Head.Velocity = Head.CFrame.rightVector * -135
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(32)), 0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(-9),math.rad(-14)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.2) * angles(math.rad(27), math.rad(0), math.rad(30)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(30)),.2)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(12)), 0.2)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(8)), 0.2)
end

attack = false
wait(0.08)
evadecooldown = false
 
 
end





function Rdash()
    
    

evadecooldown = true
attack = true
k = math.random(1,2) 
if k == 1 then
so("http://www.roblox.com/asset/?id=807766310", Head, 2.5, 1)
else
 so("http://www.roblox.com/asset/?id=807768137", Head, 2.5, 1)
 end
 
 
 
 

 --+173.8*i
for i = 0,.7,0.1 do
swait()
Head.Velocity = Head.CFrame.rightVector * 135
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-32)), 0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(9),math.rad(14)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-30)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.2) * angles(math.rad(27), math.rad(0), math.rad(-30)),.2)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-8)), 0.2)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-12)), 0.2)
end

attack = false
wait(0.08)
evadecooldown = false
 
 
end
local sliding = false


function Slide()
    
     local spd = Vector3.new(RootPart.Velocity.x,0,RootPart.Velocity.z).magnitude + 10
     spd = spd + 30
local dir = Vector3.new(RootPart.Velocity.x,0,RootPart.Velocity.z).unit
 local GravPoint = RootPart.Velocity.y
 if spd > 40 and hitfloor ~= nil then
noleg = true

attack = true
k = math.random(1,2) 
if k == 1 then
so("http://www.roblox.com/asset/?id=807766310", Head, 2.5, 1)
else
 so("http://www.roblox.com/asset/?id=807768137", Head, 2.5, 1)
 end
 
 
 

 
 
 

 
 
 local NV = Vector3.new(0,0,0)
local bv = Instance.new("BodyVelocity", Torso)
bv.maxForce = Vector3.new(1/0,1/0,1/0)
bv.velocity = dir*spd
	        local bg = Instance.new("BodyGyro", Torso)
bg.maxTorque = Vector3.new(1/0,1/0,1/0)
bg.cframe = CFrame.new(NV, dir) * CFrame.Angles(math.pi/2.2,0.24,0)
headsunsound.SoundId = "rbxassetid://1295468446"
headsunsound.TimePosition = 0

Humanoid.PlatformStand = true
while spd > 2 and hitfloor ~= nil and sliding == true do
swait()
spd = spd - 0.95
bv.velocity = dir*spd + Vector3.new(0,0,0)
bg.cframe = CFrame.new(NV, dir) * CFrame.Angles(math.pi/2.2,0.24,0)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -2.3, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(12)), 0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(34),math.rad(0),math.rad(12)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(110), math.rad(0), math.rad(70)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.2) * angles(math.rad(0), math.rad(0), math.rad(-60)),.2)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -0.56, -0.2) * CFrame.Angles(math.rad(-24), math.rad(0), math.rad(0)), 0.2)
end
bv:Destroy()
bg:Destroy()
headsunsound.SoundId = "rbxassetid://758199523"
headsunsound.TimePosition = 0
Humanoid.PlatformStand = false
attack = false
sliding = false
wait(0.05)
evadecooldown = false
 
 
end
end

function land()
    attack = true
   RootPart.Velocity = Vector3.new(0,0,0)
    WaveEffect(BrickColor.new("Cyan"), RootPart.CFrame*CFrame.new(0,-1,0) , 1, 1, 1, 3, 0.8, 3, 0.06) 
     so("http://www.roblox.com/asset/?id=1295424585", Torso, 3.5, 1)

coroutine.resume(coroutine.create(function()
    for i = 0,1,0.1 do
        swait()
        Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(math.random(-0.55*2.8,0.55*2.8),math.random(-0.55*2.8,0.55*2.8),math.random(-0.55*2.8,0.55*2.8)),0.44)
        Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -2, 0) * CFrame.Angles(math.rad(-16), math.rad(0), math.rad(0)), 0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(7),math.rad(0),math.rad(0)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(87)),.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0) * angles(math.rad(0), math.rad(0), math.rad(-87)),.5)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, 0, -0.5) * CFrame.Angles(math.rad(16), math.rad(0), math.rad(0)), 0.5)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1.14, 0.2) * CFrame.Angles(math.rad(-17), math.rad(0), math.rad(0)), 0.5)
       
end
attack = false


end))



end




function stomp()
    attack = true
    stompsound:Play()
    
   while hitfloor == nil do 
       swait()
       b.Size = 12
        WaveEffect(BrickColor.new("Cyan"), LeftLeg.CFrame*CFrame.new(0,-2.4,0) , 1, 1, 1, 0.8, 0.8, 0.8, 0.14) 
       RootPart.Velocity = Vector3.new(0,RootPart.Velocity.y/1.6,0) +Vector3.new(0,-150,0)
			       Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(0,0,0),0.15)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0.2) * CFrame.Angles(math.rad(0+4*math.sin(sine/1.3)), math.rad(0), math.rad(0)),0.07)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.65, 0) * angles(math.rad(0), math.rad(0), math.rad(140+12*math.cos(sine/1.3))), 0.07)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.65, 0) * angles(math.rad(0), math.rad(0), math.rad(-140+12*math.cos(sine/1.3))), 0.07)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(60+7*math.sin(sine/1.3)),math.rad(0),math.rad(0)),0.07)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1+0.17*math.cos(sine/1.3), -0.13) * CFrame.Angles(math.rad(0+4*math.cos(sine/1.3)), math.rad(3), math.rad(0)), 0.1)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, .27+0.17*math.cos(sine/1.3), -0.56) * CFrame.Angles(math.rad(-12+4*math.cos(sine/1.3)), math.rad(0), math.rad(0)), 0.1)

end
 stompsound:Stop()
land()


end


function changemusic()
    musicnum = musicnum + 1
    music.TimePosition = 0
    local osix = false
    local spd = Vector3.new(RootPart.Velocity.x,0,RootPart.Velocity.z).magnitude
    if musicnum > 14 then
        musicnum = 1
    end
    if musicnum == 1 then
        music.SoundId = "rbxassetid://179029173"
    end
    if musicnum == 2 then
        music.SoundId = "rbxassetid://146443855"
        end
        if musicnum == 3 then
           music.SoundId = "rbxassetid://1342408291" 
          end
          if musicnum == 4 then
            music.SoundId = "rbxassetid://201219416"  
        end
        if musicnum == 5 then
music.SoundId = "rbxassetid://1390472571" 
end
        if musicnum == 6 then
            osix = true
music.SoundId = "rbxassetid://249974783" 
end
if musicnum == 7 then
    music.SoundId = "rbxassetid://1851880603"
end
if musicnum == 8 then
 music.SoundId = "rbxassetid://412034984"
end
if musicnum == 9 then
   music.SoundId = "rbxassetid://536915629"
end
if musicnum == 10 then
music.SoundId = "rbxassetid://1200005861"
end
if musicnum == 11 then
    music.SoundId = "rbxassetid://1055930631"
end
if musicnum == 12 then
    music.SoundId = "rbxassetid://300269553"
end
if musicnum == 13 then
    music.SoundId = "rbxassetid://199897052"
end
if musicnum == 14 then
  music.SoundId = "rbxassetid://638115895"  
end

if spd < 14 then
Humanoid.Jump = true

if osix == false then
so("rbxassetid://537371462",RootPart,2,1)
end


RootPart.Velocity = Vector3.new(0,102,0)
attack = true
wait(0.08)
for i = 0,7,0.1 do
    swait()
    RootPart.Velocity = Vector3.new(0,2,0)
Humanoid.CameraOffset = Vector3.new(0,0,0)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0-260*i), math.rad(0), math.rad(0)), 0.6)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(70),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(.7, -0.22, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.1)
LW.C0 = clerp(LW.C0, CFrame.new(-.7, -0.22, -0.5) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.1)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -.34, -0.7) * CFrame.Angles(math.rad(-25), math.rad(0), math.rad(0)), 0.1)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -.34, -0.7) * CFrame.Angles(math.rad(-25), math.rad(0), math.rad(0)), 0.1)

end
b.Size = 40
MoonEffect(BrickColor.new("Cyan"), RootPart.CFrame*CFrame.new(0,0,0) , 1, 1, 1, 8, 8, 8, 0.06) 

if osix == true then
osix = false
so("rbxassetid://156821036",RootPart,2,1)
end

Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)
for i = 0,5,0.1 do
    swait()
RootPart.Velocity = Vector3.new(0,3.5,0)
Humanoid.CameraOffset = Vector3.new(0,0,0)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1+0.1*i, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.21)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(22-2*i),math.rad(0),math.rad(0)),.21)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5+0.09*i, 0) * angles(math.rad(20-6*i), math.rad(0), math.rad(90+13*i)), 0.21)
LW.C0 = clerp(LW.C0, CFrame.new(-1.0-0.12*i, 0.5, -0.4+0.05*i) * angles(math.rad(20+13*i), math.rad(0), math.rad(20-13*i)), 0.21)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(45+6*i), math.rad(0), math.rad(-22-4*i)), 0.21)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(45+6*i), math.rad(0), math.rad(22+4*i)), 0.21)
end
attack = false
end
end


  mouse.KeyDown:connect(function(key)
if key == 'q' and attack == false and evadecooldown == false then
Ldash()
end
end)
 
 
 
   mouse.KeyDown:connect(function(key)
if key == 'e' and attack == false and evadecooldown == false then
Rdash()
end
end)

   mouse.KeyDown:connect(function(key)
if key == 'c' and attack == false and evadecooldown == false and hitfloor ~= nil then
     sliding = true
Slide()
end
end)

   mouse.KeyDown:connect(function(key)
if key == 'c' and attack == false and hitfloor == nil then
     stomp()
end
end)


local walljump = false


function walljumpp()
    	local ray = Ray.new(
		Torso.CFrame.p, RootPart.CFrame.lookVector *5
	)
	local hit, position, normal = workspace:FindPartOnRay(ray, character)
	
	if hit then
	    if  hit.Parent.Parent ~= Character and hit.Parent ~= Character then
	    local dir = Vector3.new(RootPart.Velocity.x,0,RootPart.Velocity.z).unit
	    GravPoint = 0
 	    freefall = 0
	    walljump = true 
	    Humanoid.AutoRotate = false
		local velo = Instance.new("BodyVelocity",Torso)
		velo.MaxForce = Vector3.new(400000,400000,400000)
		--game.Debris:AddItem(velo,0.1)
		attack = true
while hitfloor == nil and walljump == true and ray and hit  do
swait()
freefall = 0
GravPoint = GravPoint - 0.36
		 ray = Ray.new(
		RootPart.CFrame.p, RootPart.CFrame.lookVector *2.5
	)
	hit, position, normal = workspace:FindPartOnRay(ray, character)
velo.Velocity = vt(0,GravPoint,0)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0.9) * CFrame.Angles(math.rad(5), math.rad(90), math.rad(8)), 0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(7),math.rad(0),math.rad(86)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(120)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)),.2)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-6), math.rad(14), math.rad(-12)), 0.2)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(23)), 0.2)
end
if walljump == false then
    k = math.random(1,3) 
if k == 1 then
so("http://www.roblox.com/asset/?id=800121776", Head, 2.5, 1)
else if k == 2 then
 so("http://www.roblox.com/asset/?id=804889329", Head, 2.5, 1)
else if k == 3 then
     so("http://www.roblox.com/asset/?id=804907617", Head, 2.5, 1)
     end
     end
end
 
    velo:Destroy()
        attack = false
    coroutine.resume(coroutine.create(function()
    for i = 0,1,0.1 do
        swait()
Humanoid.CameraOffset = Vector3.new(0,0,0)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0+260*i), math.rad(0), math.rad(0)), 0.6)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(70),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(.7, -0.22, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.1)
LW.C0 = clerp(LW.C0, CFrame.new(-.7, -0.22, -0.5) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.1)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -.34, -0.7) * CFrame.Angles(math.rad(-25), math.rad(0), math.rad(0)), 0.1)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -.34, -0.7) * CFrame.Angles(math.rad(-25), math.rad(0), math.rad(0)), 0.1)
end
end))
    
    Humanoid.AutoRotate = true
    RootPart.Velocity = RootPart.CFrame.lookVector * -137 + Vector3.new(0,136,0)
    wait(0.07)
     RootPart.CFrame = CFrame.new(RootPart.CFrame.p,-RootPart.CFrame.lookVector)
end
if walljump == true then
 		attack = false
walljump = false
Humanoid.AutoRotate = true
velo:Destroy()
end
end
end
end

    
    local homed = nil
    function home()
        if walljump ~= true then
        		    	for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 80)) do
				if v:FindFirstChild('Head') then
					Grabbed = true
					homed = v
				end
			end
    
    if homed ~= nil and homed:FindFirstChildOfClass("Humanoid").Health > 1 and walljump == false then
        					    so("http://www.roblox.com/asset/?id=162460823", Head, 1, .8)
        					    	   local SBall = Instance.new("Part",Character)
	SBall.Name = "Homing Ball"
	SBall.CanCollide = false
	SBall.Anchored = false
	SBall.Transparency = 0.64
	SBall.CFrame = CFrame.new(RootPart.CFrame.p)
	SBall.BrickColor = BrickColor.new("Toothpaste")
	SBall.Size = Vector3.new(1,1,1)
	SBall.Material = "Neon"
	SBallweld = Instance.new("Weld")
SBallweld.Parent = SBall
SBallweld.Part0 = RootPart
SBallweld.Part1 = SBall
SBallweld.C1 = CFrame.new(0, 1, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
        SBallweld.Part0 = RootPart
	local SBallmesh = Instance.new("SpecialMesh",SBall)
	SBallmesh.MeshType = "Sphere"
	SBallmesh.Scale = Vector3.new(6,6,6)
        	trail = Instance.new("Trail", Character)
a2 = Instance.new("Attachment", Torso) a2.Position = Vector3.new(0,2,0)
a3 = Instance.new("Attachment", Torso)a3.Position = Vector3.new(0,-2.5,0)
trail.Texture = "rbxassetid://0"
trail.Attachment0 = a2
trail.Attachment1 = a3
trail.Lifetime  =  0.353
trail.MinLength = 0.03
trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,1)})
trail.Color = ColorSequence.new(Color3.new(0,1,1), Color3.new(0, 0,0))
trail.LightEmission = 4.8
trail.TextureLength = 0.034
        trail.Enabled = true
 attack = true
	local position = Instance.new("BodyPosition",Torso)
	position.P = 68350
	position.maxForce = Vector3.new(math.huge,math.huge,math.huge)
	
        while homed ~= nil and (homed.Torso.Position-RootPart.Position).magnitude > 8 do
        swait()
        SBall.CFrame = CFrame.new(RootPart.CFrame.p)
    Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0+420*math.abs(sine/3.2)), math.rad(0), math.rad(0)), 0.6)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(70),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(.7, -0.22, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.1)
LW.C0 = clerp(LW.C0, CFrame.new(-.7, -0.22, -0.5) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.1)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -.34, -0.7) * CFrame.Angles(math.rad(-25), math.rad(0), math.rad(0)), 0.1)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -.34, -0.7) * CFrame.Angles(math.rad(-25), math.rad(0), math.rad(0)), 0.1)
    position.Position = homed.Torso.Position + Vector3.new(0,2,0) 
end
		local bodvol=Instance.new("BodyVelocity")
bodvol.velocity= RootPart.CFrame.lookVector*240 + Vector3.new(0,30,0)
bodvol.P= 35200
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=homed.Head
game:GetService("Debris"):AddItem(bodvol, 0.2)
--homed:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(10,30))

position:Destroy()
trail.Enabled = false
SBall:Destroy()
RootPart.Velocity = Vector3.new(0,93.5,0)
    coroutine.resume(coroutine.create(function()
for i = 0,5,0.26 do
    swait()
Humanoid.CameraOffset = Vector3.new(0,0,0)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1+0.1*i, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.21)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(22-2*i),math.rad(0),math.rad(0)),.21)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5+0.09*i, 0) * angles(math.rad(20-6*i), math.rad(0), math.rad(90+13*i)), 0.21)
LW.C0 = clerp(LW.C0, CFrame.new(-1.0-0.12*i, 0.5, -0.4+0.05*i) * angles(math.rad(20+13*i), math.rad(0), math.rad(20-13*i)), 0.21)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(45+6*i), math.rad(0), math.rad(-22-4*i)), 0.21)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(45+6*i), math.rad(0), math.rad(22+4*i)), 0.21)
end
homed = nil
attack = false
end))

end
    
end


end

mouse.KeyDown:connect(function(key)
		 		     wait(0.16)
		     if string.byte(key) == 32 and hitfloor == nil and attack == false and walljump == false and Humanoid.Jump == true then
		 walljumpp()
	 end
	 		     if string.byte(key) == 32 and hitfloor == nil and attack == false and walljump == false and Humanoid.Jump == true then
		 home()
	 end
	 
if string.byte(key) == 32 and hitfloor == nil and attack == true and walljump == true then
walljump = false
end
	 end)
		 


mouse.KeyDown:connect(function(key)
if key == 'm' and attack == false then
changemusic()
end
end)

local MutedMusic = false
mouse.KeyDown:connect(function(key)
if key == 'n' then
if not MutedMusic then
MutedMusic = true
music.Volume = 0
elseif MutedMusic then
MutedMusic = false
music.Volume = 1
end
end
end)




   mouse.KeyUp:connect(function(key)
       wait(0.05)
if key == 'c' and sliding == true then
     sliding = false
end
end)
local look = 0



				while true do
    swait()
sine = sine + change
--speed = speed + music.PlaybackLoudness/90
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
	
    local TiltVelocity = CFrame.new(RootPart.CFrame:vectorToObjectSpace(RootPart.Velocity))

local rlegray = Ray.new(RightLeg.Position+Vector3.new(0,0.54,0),Vector3.new(0, -1.75, 0))
local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, Character)

local llegray = Ray.new(LeftLeg.Position+Vector3.new(0,0.54,0),Vector3.new(0, -1.75, 0))
local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, Character)

    	local waterthing = Ray.new(RootPart.CFrame.p,Vector3.new(0,-1,0))
	local start, position = workspace:FindPartOnRay(waterthing, character)
	
	if start ~= nil and start.Material == "Water" then
	
    RootPart.Velocity = RootPart.Velocity + Vector3.new(0,6,0)
    
    end

headsunsound.Pitch = 0.76 + Humanoid.WalkSpeed/124
if torvel<1  and Swing == 2 then
    boost = false
elseif torvel>1   and Swing == 2 then
    boost = true
    freefall = 0
end
if hitfloor ~= nil and freefall < 150 then
    freefall = 0
end
if freefall > 150 and hitfloor ~= nil then
land()
freefall = 0
end







		if RootPart.Velocity.y > 1 and hitfloor==nil then
Anim="Jump"





if attack==false then
change = 1
look = 0
			       Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(0,0,0),0.15)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(4), math.rad(0), math.rad(0)), 0.07)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10+2.05*math.cos(sine/5)),math.rad(0),math.rad(0)),0.07)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20+2.05*math.cos(sine/5)), math.rad(-10), math.rad(50-2.05*math.cos(sine/5))), 0.07)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20+2.05*math.cos(sine/5)), math.rad(-10), math.rad(-50+2.05*math.cos(sine/5))), 0.07)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, -0.6) * CFrame.Angles(math.rad(-25+3.05*math.cos(sine/5)), math.rad(-3), math.rad(0)), 0.1)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -.47, -0.7) * CFrame.Angles(math.rad(-12+3.05*math.cos(sine/5)), math.rad(0), math.rad(0)), 0.1)
end

elseif RootPart.Velocity.y < -1 and freefall <150 and hitfloor==nil then
Anim="Fall"
change = 1
freefall = freefall +0.77


if attack==false then
			       Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(0,0,0),0.15)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0.2) * CFrame.Angles(math.rad(7+4*math.sin(sine/1.3)), math.rad(0), math.rad(0)),0.07)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.65, 0) * angles(math.rad(0), math.rad(0), math.rad(140+12*math.cos(sine/1.3))), 0.07)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.65, 0) * angles(math.rad(0), math.rad(0), math.rad(-140+12*math.cos(sine/1.3))), 0.07)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(40+7*math.sin(sine/1.3)),math.rad(0),math.rad(0)),0.07)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1+0.17*math.cos(sine/1.3), -0.13) * CFrame.Angles(math.rad(18+7*math.cos(sine/1.3)), math.rad(3), math.rad(0)), 0.1)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -.37+0.17*math.cos(sine/1.3), -0.2) * CFrame.Angles(math.rad(32+7*math.cos(sine/1.3)), math.rad(0), math.rad(0)), 0.1)
end



elseif RootPart.Velocity.y < -1 and freefall > 150 and hitfloor==nil then
Anim="FreeFall"
change = 1


if attack==false then
			       Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(0,0,0),0.15)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0.2) * CFrame.Angles(math.rad(-90+3*math.sin(sine/1.3)), math.rad(0), math.rad(0)),0.07)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(14+12*math.cos(sine/1.3)), math.rad(0), math.rad(110)), 0.07)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(14+12*math.cos(sine/1.3)), math.rad(0), math.rad(-110)), 0.07)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-12+7*math.sin(sine/1.3)),math.rad(0),math.rad(0)),0.07)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1+0.17*math.cos(sine/1.3),0.2) * CFrame.Angles(math.rad(-12+4*math.cos(sine/1.3)), math.rad(3), math.rad(-46)), 0.1)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1+0.17*math.cos(sine/1.3), 0.2) * CFrame.Angles(math.rad(-12+4*math.cos(sine/1.3)), math.rad(0), math.rad(46)), 0.1)
end

elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
change = 1
if attack==false and equip == false then
  
			       Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(0,0,0),0.15)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1-0.04*math.cos(sine/40), -0) * CFrame.Angles(math.rad(0-0.81*math.cos(sine/40)), math.rad(-40), math.rad(0)), 0.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0+2.6*math.sin(sine/40)),math.rad(0),math.rad(40)),0.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.55+0.04*math.sin(sine/40), 0-0.04*math.cos(sine/40)) * angles(math.rad(-2+1.3*math.cos(sine/40)), math.rad(0+4*math.sin(sine/40)), math.rad(6.3+2.2*math.cos(sine/40))),0.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.55+0.04*math.sin(sine/40), 0-0.04*math.cos(sine/40)) * angles(math.rad(2+1.3*math.cos(sine/40)), math.rad(0-4*math.sin(sine/40)), math.rad(-6.3-2.2*math.cos(sine/40))),0.1)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, llegendPoint.Y-LeftLeg.Position.Y+0.04*math.cos(sine/40), 0) * CFrame.Angles(math.rad(0+0.81*math.cos(sine/40)), math.rad(18+0.81*math.cos(sine/40)), math.rad(-2-0.81*math.cos(sine/40))),0.1)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.57, rlegendPoint.Y-RightLeg.Position.Y+0.04*math.cos(sine/40), 0)  * CFrame.Angles(math.rad(0+0.81*math.cos(sine/40)), math.rad(-2+0.81*math.cos(sine/40)), math.rad(3-0.81*math.cos(sine/40))),0.1)
end


	
elseif torvel>1.5 and torvel<70 and hitfloor~=nil then
Anim="Walk"
change = 0.84+ Character.Humanoid.WalkSpeed/132
look = 0
if attack==false and equip == false then
					       Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(0,0,0),0.02)
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1-0.52*math.cos(sine/2), -.8) * angles(math.rad(-26), math.rad(0), math.rad(0)+ RootPart.RotVelocity.Y / 26), .1)
		Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-11+20*math.sin(sine/2)),math.rad(0),math.rad(0+5*math.sin(sine/4)) + RootPart.RotVelocity.Y / 13),.1)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.1) * angles(math.rad(-60-7*math.sin(sine/4))+ RootPart.RotVelocity.Y / -34, math.rad(0), math.rad(15+2*math.sin(sine/4))- RootPart.RotVelocity.Y / 34),.15)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0.1)*angles(math.rad(-60-7*math.sin(sine/4))+ RootPart.RotVelocity.Y / 34,math.rad(0),math.rad(-15+2*math.sin(sine/4))+ RootPart.RotVelocity.Y / -34),.15)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1+0.28*math.cos(sine/4), 0-0.32*math.cos(sine/4)) * CFrame.Angles(math.rad(0+104*math.sin(sine/4)), math.rad(0)+ RootPart.RotVelocity.Y / 42, math.rad(0)+ RootPart.RotVelocity.Y / -54), 0.3)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1-0.28*math.cos(sine/4),0+0.32*math.cos(sine/4)) * CFrame.Angles(math.rad(0-104*math.sin(sine/4)), math.rad(0)+ RootPart.RotVelocity.Y / 42, math.rad(0)- RootPart.RotVelocity.Y / 54), 0.3)
end


		elseif torvel>=70 and torvel<200 and hitfloor~=nil then
		Anim="Run"
		change = 0.84+ Character.Humanoid.WalkSpeed/142
		if attack==false and equip == false then
					       Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(0,0,0),0.02)
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1-0.52*math.cos(sine/1.5), -.8) * angles(math.rad(-37), math.rad(0), math.rad(0)+ RootPart.RotVelocity.Y / 26), .1)
		Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-11+25*math.sin(sine/1.5)),math.rad(0),math.rad(0+5*math.sin(sine/3)) + RootPart.RotVelocity.Y / 13),.1)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.3) * angles(math.rad(-72-8*math.sin(sine/1.5))+ RootPart.RotVelocity.Y / -34, math.rad(0), math.rad(1+0*math.cos(sine/3))- RootPart.RotVelocity.Y / 34),.25)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0.3)*angles(math.rad(-72-8*math.sin(sine/1.5))+ RootPart.RotVelocity.Y / 34,math.rad(0),math.rad(-1+0*math.cos(sine/3))+ RootPart.RotVelocity.Y / -34),.25)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1+0.32*math.cos(sine/3), 0-0.42*math.cos(sine/3)) * CFrame.Angles(math.rad(0+134*math.sin(sine/3)), math.rad(0)+ RootPart.RotVelocity.Y / 42, math.rad(0)+ RootPart.RotVelocity.Y / -54), 0.44)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1-0.32*math.cos(sine/3),0+0.42*math.cos(sine/3)) * CFrame.Angles(math.rad(0-134*math.sin(sine/3)), math.rad(0)+ RootPart.RotVelocity.Y / 42, math.rad(0)- RootPart.RotVelocity.Y / 54), 0.44)
		end
		
		--[[
		if attack==false then
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1-0.4*math.cos(sine/5.5)/2, 0 *math.sin(sine/6.6)/2) * CFrame.Angles(math.rad(0) + -math.sin(sine/5.5)/1.2, math.rad(0), 0), .8)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1+0.4*math.cos(sine/5.5)/2,0 *-math.sin(sine/6.6)/2) * CFrame.Angles(math.rad(0) + math.sin(sine/5.5)/1.2, math.rad(0), 0), .8)
		end
		]]
		if attack==true and noleg == false then
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1-0.24*math.cos(sine/5), 0.+0.24*math.cos(sine/5)) * CFrame.Angles(math.rad(0-74*math.sin(sine/5)), math.rad(0), math.rad(0)), 0.3)
		   RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1+0.24*math.cos(sine/5),0.-0.24*math.cos(sine/5)) * CFrame.Angles(math.rad(0+74*math.sin(sine/5)), math.rad(0), math.rad(0)), 0.3)
		end
		
		
		
				elseif torvel>=200 and hitfloor~=nil then
		Anim="MachRun"
		change = 0.84+ Character.Humanoid.WalkSpeed/182
		if attack==false and equip == false then
					       Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(0,0,0),0.02)
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1-0.52*math.cos(sine/1), -3.8) * angles(math.rad(-44), math.rad(0), math.rad(0)+ RootPart.RotVelocity.Y / 26), .2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-11+25*math.sin(sine/1)),math.rad(0),math.rad(0+5*math.sin(sine/2)) + RootPart.RotVelocity.Y / 13),.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.5) * angles(math.rad(-78-12*math.sin(sine/1))+ RootPart.RotVelocity.Y / -34, math.rad(0), math.rad(-24+0*math.cos(sine/2))- RootPart.RotVelocity.Y / 34),.35)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0.5)*angles(math.rad(-78-12*math.sin(sine/1))+ RootPart.RotVelocity.Y / 34,math.rad(0),math.rad(24+0*math.cos(sine/2))+ RootPart.RotVelocity.Y / -34),.35)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1+0.42*math.cos(sine/2), 0-0.62*math.cos(sine/2)) * CFrame.Angles(math.rad(0+134*math.sin(sine/2)), math.rad(0)+ RootPart.RotVelocity.Y / 42, math.rad(0)+ RootPart.RotVelocity.Y / -54), 0.52)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1-0.42*math.cos(sine/2),0+0.62*math.cos(sine/2)) * CFrame.Angles(math.rad(0-134*math.sin(sine/2)), math.rad(0)+ RootPart.RotVelocity.Y / 42, math.rad(0)- RootPart.RotVelocity.Y / 54), 0.52)
		end
		
		

end









 if 0 < #Effects then
      for e = 1, #Effects do
        if Effects[e] ~= nil then
          local Thing = Effects[e]
          if Thing ~= nil then
            local Part = Thing[1]
            local Mode = Thing[2]
            local Delay = Thing[3]
            local IncX = Thing[4]
            local IncY = Thing[5]
            local IncZ = Thing[6]
            if Thing[1].Transparency <= 1 then
              if Thing[2] == "Block1" then
                Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                Mesh = Thing[1]:FindFirstChild("Mesh")
                if not Mesh then
                  Mesh = Instance.new("BlockMesh")
                end
                Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              elseif Thing[2] == "Cylinder" then
                  Mesh = Thing[1]:FindFirstChild("Mesh")
                  if not Mesh then
                    Mesh = Instance.new("BlockMesh")
                  end
                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                elseif Thing[2] == "Blood" then
                    Mesh = Thing[1]:FindFirstChild("Mesh")
                    if not Mesh then
                      Mesh = Instance.new("BlockMesh")
                    end
                    Thing[1].CFrame = Thing[1].CFrame * cf(0, 0.5, 0)
                    Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                  elseif Thing[2] == "Elec" then
                      Mesh = Thing[1]:FindFirstChild("Mesh")
                      if not Mesh then
                        Mesh = Instance.new("BlockMesh")
                      end
                      Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    elseif Thing[2] == "Disappear" then
                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                      end
            else
              Part.Parent = nil
              game:GetService("Debris"):AddItem(Part, 0)
              table.remove(Effects, e)
            end
          end
        end
      end
    end

end