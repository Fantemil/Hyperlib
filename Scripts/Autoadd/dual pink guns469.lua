--i used stravants Beautifier so it might look a bit wonky
Meshes = {
	Blast = '20329976',
	Crown = '1323306',
	Ring = '3270017',
	Claw = '10681506',
	Crystal = '9756362',
	Coil = '9753878',
	Cloud = '1095708',
}
clangsounds = {
	'199149119',
	'199149109',
	'199149072',
	'199149025',
	'199148971'
}
hitsounds = {
	'199149137',
	'199149186',
	'199149221',
	'199149235',
	'199149269',
	'199149297'
}
blocksounds = {
	'199148933',
	'199148947'
}
armorsounds = {
	'199149321',
	'199149338',
	'199149367',
	'199149409',
	'199149452'
}
woosh = {
	Heavy1 = '320557353',
	Heavy2 = '320557382',
	Heavy3 = '320557453',
	Heavy4 = '199144226',
	Heavy5 = '203691447',
	Heavy6 = '203691467',
	Heavy7 = '203691492',
	Light1 = '320557413',
	Light2 = '320557487',
	Light3 = '199145095',
	Light4 = '199145146',
	Light5 = '199145887',
	Light6 = '199145913',
	Light7 = '199145841',
	Medium1 = '320557518',
	Medium2 = '320557537',
	Medium3 = '320557563',
	Medium4 = '199145204'
}
music = {--i like music a lot
	Breaking = '179281636',
	FinalReckoning = '357375770',
	NotDeadYet = '346175829',
	Intense = '151514610',
	JumpP1 = '160536628',
	JumpP2 = '60536666',
	SonsOfWar = '158929777',
	WrathOfSea = '165520893',
	ProtecTorsofEarth = '160542922',
	SkyTitans = '179282324',
	ArchAngel = '144043274',
	Anticipation = '168614529',
	TheMartyred = '186849544',
	AwakeP1 = '335631255',
	AwakeP2 = '335631297',
	ReadyAimFireP1 = '342455387',
	ReadyAimFireP2 = '342455399',
	DarkLordP1 = '209567483',
	DarkLordP2 = '209567529',
	BloodDrainP1 = '162914123',
	BloodDrainP2 = '162914203',
	DanceOfSwords = '320473062',
	Opal = '286415112',
	Calamity = '190454307',
	Hypnotica = '155968128',
	Nemisis = '160453802',
	Breathe = '276963903',
	GateToTheRift = '270655227',
	InfernalBeserking = '244143404',
	Trust = '246184492',
	AwakeningTheProject = '245121821',
	BloodPain = '242545577',
	Chaos = '247241693',
	NightmareFictionHighStake = '248062278',
	TheWhiteWeapon = '247236446',
	Gale = '256851659',
	ImperialCode = '256848383',
	Blitzkrieg = '306431437',
	RhapsodyRage = '348690251',
	TheGodFist = '348541501',
	BattleForSoul = '321185592',
	TheDarkColossus = '305976780',
	EmpireOfAngels = '302580452',
	Kronos = '302205297',
	Exorcist = '299796054',
	CrimsonFlames = '297799220',
	UltimatePower = '295753229',
	DrivingInTheDark = '295753229',
	AscendToPower = '293860654',
	GodOfTheSun = '293612495',
	DarkRider = '293861765',
	Vengeance = '293375555',
	SoundOfWar = '293376196',
	HellsCrusaders = '293012202',
	Legend = '293011823',
	RisingSouls = '290524959'
}
misc = {
	GroundSlam = '199145477',
	LaserSlash = '199145497',
	RailGunFire = '199145534',
	Charge1 = '199145659',
	Charge2 = '169380469',
	Charge3 = '169380479',
	EmptyGun = '203691822',
	GunShoot = '203691837',
	Stomp1 = '200632875',
	Stomp2 = '200632561',
	TelsaCannonCharge = '169445572',
	TelsaCannonShoot = '169445602',
	AncientHymm = '245313442'
}
wait()
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new('Model', Character)
m.Name = "WeaponModel"
local Effects = {}
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
--cam.CameraSubject = Head
local equipped = false
local attack = false
local Anim = 'Idle'
local idle = 0
local sprint = false
local battlestance = false
local attacktype = 1
local state = 'none'
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local on = false
local grabbed = false
local skill1 = false
local skill2 = false
local skill3 = false
local skill4 = false
local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0
local co1 = 10--how long it will take for skill to cooldown
local co2 = 15
local co3 = 15
local co4 = 35
local inputserv = game:GetService('UserInputService')
local typing = false
local crit = false
local critchance = 9999999--critical chance percentage
local critdamageaddmin = 9999999--minimum amount of critical damage being added to regular damage
local critdamageaddmax = 9999999--maximum amount
local maxstamina = 100--max amount of stamina
local stamina = 0--stamina you start out with
local skill1stam = 0--how much stamina is needed for a skill
local skill2stam = 0
local skill3stam = 0
local skill4stam = 0
local recoverEnergy = 9999999--how much Energy per second
local defensevalue = 9999999--how much defense this character has
local speedvalue = 1--how much speed this character has
--speed is 16*speedvalue
local mindamage = 9999999--self explanatory
local maxdamage = 9999999--self explanatory
local damagevalue = 999999--how much damage this character has
--damage is math.random(mindamage,maxdamage)*damagevalue
--damage(hit, mindamage, maxdamage, 1, 1, RootPart) 
--asd
local cn = CFrame.new-- make things easier :)
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local skillcolorscheme = c3(1, 1, 1)--color scheme for skills lol
--asd
local NeckCF = cn(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Humanoid.Animator:Destroy()
Character.Animate:Destroy()

--Angles For RootJoint `~`
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
--Save Shoulders/Hips 
RSH, LSH = nil, nil 
RHS, LHS = nil, nil 
--Shoulders
RW = Instance.new("Weld") 
LW = Instance.new("Weld")
--Hips
RH = Instance.new("Weld") 
LH = Instance.new("Weld")
--
Player = Player 
ch = Character
LHS = Torso["Left Hip"]
RHS = Torso["Right Hip"]
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
--
LHS.Parent = nil
RHS.Parent = nil
-- 
RW.Name = "RW"
RW.Part0 = ch.Torso 
RW.C0 = cn(1.5, 0.5, 0)
RW.C1 = cn(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
-- 
LW.Name = "LW"
LW.Part0 = ch.Torso 
LW.C0 = cn(-1.5, 0.5, 0)
LW.C1 = cn(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
--
LH.Name = "LH"
LH.Part0 = ch.Torso 
LH.C0 = cn(-0.5, -2, 0) 
LH.Part1 = ch["Left Leg"] 
LH.Parent = ch.Torso 
--
RH.Name = "RH"
RH.Part0 = ch.Torso 
RH.C0 = cn(0.5, -2, 0)
RH.Part1 = ch["Right Leg"] 
RH.Parent = ch.Torso 

local scrn = Instance.new('ScreenGui', Player.PlayerGui)
function makeframe(par, trans, pos, size, color)
	local frame = Instance.new('Frame', par)
	frame.BackgroundTransparency = trans
	frame.BorderSizePixel = 0
	frame.Position = pos
	frame.Size = size
	frame.BackgroundColor3 = color
	return frame
end
function makelabel(par, text)
	local label = Instance.new('TextLabel', par)
	label.BackgroundTransparency = 1
	label.Size = ud(1, 0, 1, 0)
	label.Position = ud(0, 0, 0, 0)
	label.TextColor3 = c3(255, 255, 255)
	label.TextStrokeTransparency = 0
	label.FontSize = Enum.FontSize.Size32
	label.Font = Enum.Font.SourceSansBold
	label.BorderSizePixel = 0
	label.TextScaled = true
	label.Text = text
end
framesk1 = makeframe(scrn, .5, ud(.23, 0, .93, 0), ud(.26, 0, .06, 0), skillcolorscheme)
framesk2 = makeframe(scrn, .5, ud(.5, 0, .93, 0), ud(.26, 0, .06, 0), skillcolorscheme)
framesk3 = makeframe(scrn, .5, ud(.5, 0, .86, 0), ud(.26, 0, .06, 0), skillcolorscheme)
framesk4 = makeframe(scrn, .5, ud(.23, 0, .86, 0), ud(.26, 0, .06, 0), skillcolorscheme)
bar1 = makeframe(framesk1, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar2 = makeframe(framesk2, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar3 = makeframe(framesk3, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar4 = makeframe(framesk4, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
text1 = makelabel(framesk1, '[t] Reflex')
text2 = makelabel(framesk2, '[f] Luxuriance')
text3 = makelabel(framesk3, "[r] Lucent Scatter")
text4 = makelabel(framesk4, '[q] Echo Barrage')
staminabar = makeframe(scrn, .5, ud(.23, 0, .82, 0), ud(.26, 0, .03, 0), BrickColor.new("Really black").Color)
staminacover = makeframe(staminabar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), BrickColor.new("Hot pink").Color)
staminatext = makelabel(staminabar, 'Photon Energy')
healthbar = makeframe(scrn, .5, ud(.5, 0, .82, 0), ud(.26, 0, .03, 0), c3(1, 1, 0))
healthcover = makeframe(healthbar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), BrickColor.new("Lime green").Color)
healthtext = makelabel(healthbar, 'Health')

local stats = Instance.new('Folder', Character)
stats.Name = 'Stats'
local block = Instance.new('BoolValue', stats)
block.Name = 'Block'
block.Value = false
local stun = Instance.new('BoolValue', stats)
stun.Name = 'Stun'
stun.Value = false
local defense = Instance.new('NumberValue', stats)
defense.Name = 'Defence'
defense.Value = defensevalue
local speed = Instance.new('NumberValue', stats)
speed.Name = 'Speed'
speed.Value = speedvalue
local damagea = Instance.new('NumberValue', stats)
damagea.Name = 'Damage'
damagea.Value = damagevalue
gyro = Instance.new("BodyGyro")
gyro.Parent = nil
gyro.P = 1e7
gyro.D = 1e3
gyro.MaxTorque = Vector3.new(0,1e7,0)

function atktype(s, e)
	coroutine.resume(coroutine.create(function()
		attacktype = e
		wait()
		attacktype = s
	end))
end

function turncrit()
	coroutine.resume(coroutine.create(function()
		print'CRITICAL!'
		crit = true
		wait()
		crit = false
	end))
end

function subtractstamina(k)
	if stamina >= k then
		stamina = stamina - k
	end
end

function clerp(a, b, t)
	return a:lerp(b, t)
end

function randomizer(percent)
	local randomized = math.random(0, 100)
	if randomized <= percent then
		return true
	elseif randomized >= percent then
		return false
	end
end

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function CreatePart(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part"){
		formFactor = FormFactor,
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
	
function CreateWeld(Parent, Part0, Part1, C0, C1)
	local Weld = Create("Weld"){
		Parent = Parent,
		Part0 = Part0,
		Part1 = Part1,
		C0 = C0,
		C1 = C1,
	}
	return Weld
end

function rayCast(pos, dir, maxl, ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(pos, dir.unit * (maxl or 999.999)), ignore) 
end 
--Effects
function makeeffect(par, size, pos1, trans, trans1, howmuch, delay1, id, type)
	local p = Instance.new('Part', par or workspace)
	p.CFrame = pos1
	p.Anchored = true
	p.Material = 'SmoothPlastic'
	p.CanCollide = false
	p.TopSurface = 0
	p.Size = Vector3.new(1, 1, 1)
	p.BottomSurface = 0
	p.Transparency = trans
	p.FormFactor = 'Custom'
	RemoveOutlines(p)
	local mesh = Instance.new('SpecialMesh', p)
	mesh.Scale = size
	if id ~= nil and type == nil then
		mesh.MeshId = 'rbxassetid://'..id
	elseif id == nil and type ~= nil then
		mesh.MeshType = type
	elseif id == nil and type == nil then
		mesh.MeshType = 'Brick'
	end
	coroutine.wrap(function()
		for i = 0, delay1, .1 do
			wait()
			p.CFrame = p.CFrame
			mesh.Scale = mesh.Scale + howmuch
			p.Transparency = p.Transparency + trans1
		end
		p:Destroy()
	end)()
	return p
end
function clangy(cframe)
	wait()
	local clang = {}
	local dis = 0
	local part = Instance.new('Part', nil)
	part.CFrame = cframe
	part.Anchored = true
	part.CanCollide = false
	part.BrickColor = BrickColor.new('New Yeller')
	part.FormFactor = 'Custom'
	part.Name = 'clanger'
	part.Size = Vector3.new(.2, .2, .2)
	part.TopSurface = 10
	part.BottomSurface = 10
	part.RightSurface = 10
	part.LeftSurface = 10
	part.BackSurface = 10
	part.FrontSurface = 10
	--part.Material='Neon'
	part:BreakJoints()
	local mesh = Instance.new('BlockMesh', part)
	coroutine.wrap(function()
		for i = 1, 7 do
			wait()
			dis = dis + .2
			local partc = part:clone()
			partc.Parent = workspace
			partc.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(dis, 0, 0)
			partc.CFrame = partc.CFrame * CFrame.new(0, dis, 0)
			table.insert(clang, partc)
		end
		for i, v in pairs(clang) do
			coroutine.wrap(function()
				for i = 1, 10 do
					wait()
					v.Transparency = v.Transparency + .1
				end
				v:destroy()
			end)()
		end
	end)()
end
--damage effects
function circle(color, pos1)
	local p = Instance.new('Part', m)
	p.BrickColor = BrickColor.new(color)
	p.CFrame = pos1
	p.Anchored = true
	p.Material = 'Plastic'
	p.CanCollide = false
	p.TopSurface = 0
	p.Size = Vector3.new(1, 1, 1)
	p.BottomSurface = 0
	p.Transparency = 0.35
	p.FormFactor = 'Custom'
	local mesh = Instance.new('CylinderMesh', p)
	mesh.Scale = Vector3.new(0, 0, 0)
	coroutine.wrap(function()
		for i = 0, 5, .1 do
			wait()
			p.CFrame = p.CFrame
			mesh.Scale = mesh.Scale + Vector3.new(.5, 0, .5)
			p.Transparency = p.Transparency + .025
		end
		p:Destroy()
	end)()
end
function firespaz1(color, pos1)
	local p = Instance.new('Part', m)
	p.BrickColor = BrickColor.new(color)
	p.CFrame = pos1
	p.Anchored = true
	p.Material = 'Plastic'
	p.CanCollide = false
	p.TopSurface = 0
	p.Size = Vector3.new(1, 1, 1)
	p.BottomSurface = 0
	p.Transparency = 0.5
	p.FormFactor = 'Custom'
	local mesh = Instance.new('BlockMesh', p)
	mesh.Scale = Vector3.new(1, 1, 1)
	coroutine.wrap(function()
		for i = 0, 15, .1 do
			wait()
			p.CFrame = p.CFrame * CFrame.new(0, .1, 0)
			mesh.Scale = mesh.Scale - Vector3.new(.1, .1, .1)
			p.Transparency = p.Transparency + .025
		end
		p:Destroy()
	end)()
end

function pickrandom(tablesa)
	local randomized = tablesa[math.random(1, #tablesa)]	
	return randomized
end
function sound(id, pitch, volume, par, last)
	local s = Instance.new('Sound', par or Torso)
	s.SoundId = 'rbxassetid://'..id
	s.Pitch = pitch or 1
	s.Volume = volume or 1
	wait()
	s:play()
	game.Debris:AddItem(s, last or 120)
end
function clangy(cframe)
	wait()
	local clang = {}
	local dis = 0
	local part = Instance.new('Part', nil)
	part.CFrame = cframe
	part.Anchored = true
	part.CanCollide = false
	part.BrickColor = BrickColor.new('New Yeller')
	part.FormFactor = 'Custom'
	part.Name = 'clanger'
	part.Size = Vector3.new(.2, .2, .2)
	part.TopSurface = 10
	part.BottomSurface = 10
	part.RightSurface = 10
	part.LeftSurface = 10
	part.BackSurface = 10
	part.FrontSurface = 10
	--part.Material='Neon'
	part:BreakJoints()
	local mesh = Instance.new('BlockMesh', part)
	coroutine.wrap(function()
		for i = 1, 7 do
			wait()
			dis = dis + .2
			local partc = part:clone()
			partc.Parent = workspace
			partc.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(dis, 0, 0)
			partc.CFrame = partc.CFrame * CFrame.new(0, dis, 0)
			table.insert(clang, partc)
		end
		for i, v in pairs(clang) do
			coroutine.wrap(function()
				for i = 1, 10 do
					wait()
					v.Transparency = v.Transparency + .1
				end
				v:destroy()
			end)()
		end
	end)()
end
--damage effects
--Effects
so = function(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound", par or workspace)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = id
		wait() 
		sou:play() 
		game:GetService("Debris"):AddItem(sou, 6)
	end))
end

local function getclosest(obj, distance)
	local last, lastx = distance + 1
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA'Model' and v ~= Character and v:findFirstChild('Humanoid') and v:findFirstChild('Torso') and v:findFirstChild('Humanoid').Health > 0 then
			local t = v.Torso
			local dist = (t.Position - obj.Position).magnitude
			if dist <= distance then
				if dist < last then
					last = dist
					lastx = v
				end
			end
		end
	end
	return lastx
end

function makegui(cframe, text)
	local a = math.random(-10, 10) / 100
	local c = Instance.new("Part")
	c.Transparency = 1
	Instance.new("BodyGyro").Parent = c
	c.Parent = m
	c.CFrame = CFrame.new(cframe.p + Vector3.new(0, 1.5, 0))
	local f = Instance.new("BodyPosition")
	f.P = 2000
	f.D = 100
	f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	f.position = c.Position + Vector3.new(0, 3, 0)
	f.Parent = c
	game:GetService("Debris"):AddItem(c, .5 + 6)
	c.CanCollide = false
	c.CanCollide = false
	local bg = Instance.new('BillboardGui', m)
	bg.Adornee = c
	bg.Size = UDim2.new(1, 0, 1, 0)
	bg.StudsOffset = Vector3.new(0, 0, 0)
	bg.AlwaysOnTop = false
	local tl = Instance.new('TextLabel', bg)
	tl.BackgroundTransparency = 1
	tl.Size = UDim2.new(1, 0, 1, 0)
	tl.Text = text
	tl.Font = 'SourceSansBold'
	tl.FontSize = 'Size42'
	if crit == true then
		tl.TextColor3 = Color3.new(180 / 255, 0, 0)
	else
		tl.TextColor3 = Color3.new(255, 180 / 255, 51 / 255)
	end
	tl.TextStrokeTransparency = 0
	tl.TextScaled = true
	tl.TextWrapped = true
	coroutine.wrap(function()
		wait()
		for i = 1, 10 do
			wait()
			tl.TextTransparency = tl.TextTransparency + .1
		end
	end)()
end

function tag(hum, Player)
	local creator = Instance.new('ObjectValue', hum)
	creator.Value = Player
	creator.Name = 'creator'
end
function untag(hum)
	if hum ~= nil then
		local tag = hum:findFirstChild("creator")
		if tag ~= nil then
			tag.Parent = nil
		end
	end
end

function tagPlayer(h)
	coroutine.wrap(function()
		tag(h, Player)
		wait()
		untag(h)
	end)()
end

function CheckClose(Obj,Dist)
	for _,v in pairs(workspace:GetChildren()) do
		if v:FindFirstChild('Humanoid') and v:FindFirstChild('Torso') and v ~= Character then
			local DistFromTorso = (v.Torso.Position - Obj.Position).magnitude
			if DistFromTorso < Dist then
				return v
			end
		end
	end
end

function damage(hit, mind, maxd, knock, type, prop)
	--[[
		to apply it to a Player directly, make the first arg go to the Players Torso
		1 - normal type(damage and knockback)
		2 - drain type(damage no knockback)
		3 - lifesteal(absorbs hp) crit does not have an effect on how much life is absorbed
		4 - heal(heals target)
		5 - subtracts enemies defense
		6 - subtracts enemies speed
		7 -  
	]]
	if hit.Name:lower() == 'Hitbox' then
		local pos = CFrame.new(0, 1, -1)
		sound(pickrandom(clangsounds), math.random(100, 150) / 100, 1, Torso, 6)
		coroutine.wrap(function()
			for i = 1, 4 do
				clangy(Torso.CFrame * pos * CFrame.Angles(0, math.rad(math.random(0, 360)), 0))
			end
		end)()
	end
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChild("Humanoid")
	for i, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
	if hit.Parent.Parent:FindFirstChild('Torso') ~= nil then
		h = hit.Parent.Parent:FindFirstChild('Humanoid')
	end
	if hit.Parent:IsA('Hat') then
		hit = hit.Parent.Parent:findFirstChild('Head')
	end
	local D = math.random(mind, maxd) * damagea.Value
	if h then
		if h.Parent:FindFirstChild('Stats') then
			D=D/h.Parent:FindFirstChild('Stats').Defence.Value
		elseif not h.Parent:FindFirstChild('Stats') then
			D=D
		end
	end
	if h then
		makegui(h.Parent.Head.CFrame, tostring(math.floor(D + .5)))
	end
	if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if type == 1 then
			tagPlayer(h)
			local asd = randomizer(critchance)
			if asd == true then
				turncrit()
			end
			if crit == false then
				h.Health = h.Health - D
			else
				h.Health = h.Health - (D + math.random(critdamageaddmin, critdamageaddmax))
			end
			so("http://www.roblox.com/asset/?id=169462037", hit, 1, math.random(150, 200) / 100)
			local vp = Instance.new('BodyVelocity')
			vp.P = 500
			vp.maxForce = Vector3.new(math.huge, 0, math.huge)
			vp.velocity = prop.CFrame.lookVector * knock + prop.Velocity / 1.05
			if knock > 0 then
				vp.Parent = hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif type == 2 then
			so("http://www.roblox.com/asset/?id=169462037", hit, 1, math.random(150, 200) / 100)
			local asd = randomizer(critchance)
			if asd == true then
				turncrit()
			end
			if crit == false then
				h.Health = h.Health - D
			else
				h.Health = h.Health - (D + math.random(critdamageaddmin, critdamageaddmax))
			end
			tagPlayer(h)
		elseif type == 3 then
			tagPlayer(h)
			local asd = randomizer(critchance)
			if asd == true then
				turncrit()
			end
			if crit == false then
				h.Health = h.Health - D
			else
				h.Health = h.Health - (D + math.random(critdamageaddmin, critdamageaddmax))
			end
			Character.Humanoid.Health = Character.Humanoid.Health + D / 2
			so("http://www.roblox.com/asset/?id=206083232", hit, 1, 1.5)
			for i = 1, 10 do
				firespaz1('Bright red', hit.CFrame * CFrame.Angles(math.random(0, 3), math.random(0, 3), math.random(0, 3)))
			end
		elseif type == 4 then
			h.Health = h.Health + D
			so("http://www.roblox.com/asset/?id=186883084", hit, 1, 1)
			circle('Dark green', h.Parent.Torso.CFrame * CFrame.new(0, -2.5, 0))
		end
	end
end

function subtrackstamina(k)
	if stamina >= k then
		stamina = stamina - k
	end
end

HandleA=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","HandleA",Vector3.new(0.200000003, 0.256000012, 0.896000028))
HandleAweld=CreateWeld(m,Character["Right Arm"],HandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.969136477, -0.00157141685, 0.385794818, 1.8189894e-012, -0.999995947, 5.21540642e-007, 0.999999762, 1.81898897e-012, 9.74654385e-013, -7.32133104e-013, 5.21538425e-007, 1))
CreateMesh("BlockMesh",HandleA,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 1, 1))
HandleB=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","HandleB",Vector3.new(0.200000003, 0.256000012, 0.896000028))
HandleBweld=CreateWeld(m,Character["Left Arm"],HandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.969139576, -0.00157129765, 0.385794759, 1.81901087e-012, -0.999999881, 5.21546838e-007, 1, 1.8190113e-012, 1.20202969e-012, -1.20203066e-012, 5.21546781e-007, 1))
CreateMesh("BlockMesh",HandleB,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 1, 1))
FakeHandleA=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","FakeHandleA",Vector3.new(0.200000003, 0.256000012, 0.496000051))
FakeHandleAweld=CreateWeld(m,HandleA,FakeHandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.66893005e-006, -1.1920929e-007, 0, 0.999992013, 7.55563563e-018, 4.206413e-012, 7.01353372e-018, 0.999999404, 2.42520739e-013, 4.32009983e-012, 2.42522365e-013, 1))
CreateMesh("BlockMesh",FakeHandleA,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.46283865, -0.0531138182, -0.000952363014, -0.999995947, 1.00897567e-012, 5.21538198e-007, -5.21540414e-007, -5.79337901e-013, -1, -1.00897871e-012, -0.999999642, 3.36817813e-013))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000952482224, -0.446709782, -0.193131208, 2.83093277e-006, 0.999999642, -3.04522609e-006, -7.05200193e-007, -3.04522314e-006, -1, -0.999995947, 2.83094528e-006, 7.05190132e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.262439996, 0.200000003, 0.255879134))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0690844059, -0.0718523264, 0.394913316, -0.707372546, 1.49017545e-008, -0.706838131, -7.89236623e-008, -0.999999642, 5.79014454e-008, -0.70683527, 9.67446709e-008, 0.707375348))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.22985673, 0.330393285, 0.128970504, -0.999995947, 2.91118395e-005, 0.000388933928, 0.000388931512, -2.88635401e-005, 1, 2.91229535e-005, 0.999999642, 2.88522242e-005))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.118097998, 0.118097998, 0.459269375))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.22985673, 0.330393285, 0.128970504, -0.999995947, 2.91118395e-005, 0.000388933928, 0.000388931512, -2.88635401e-005, 1, 2.91229535e-005, 0.999999642, 2.88522242e-005))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.0787319914, 0.0918539986, 0.459269375))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000954985619, 0.46309948, 0.577915907, 2.08608085e-007, 0.999999642, 4.43563515e-008, -0.999995947, 2.0860881e-007, 9.0896873e-007, 9.08969355e-007, -4.43562875e-008, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000952601433, -0.46309948, -0.577939391, -5.96009748e-008, 0.999999642, 1.78326225e-008, 0.999995947, 5.96012093e-008, -7.89759383e-007, -7.8976052e-007, 1.78323258e-008, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000952720642, -0.72529912, 0.577960372, 3.77829451e-007, -0.999999642, -5.66733604e-007, 0.999995947, 3.77831128e-007, -5.21538368e-007, 5.21540812e-007, -5.66732922e-007, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0618202686, -0.57786119, -0.000952601433, -0.999995947, 2.76042605e-010, 5.21538198e-007, -5.21540414e-007, -4.75706585e-010, -1, -2.76041356e-010, -0.999999642, 4.7546439e-010))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.262439996, 0.200000003, 0.255879134))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.394863844, -0.0697959661, -0.0693871975, -0.707371831, 1.49031312e-008, 0.706838787, -5.17638155e-009, 0.999999642, -2.62642939e-008, -0.706835926, -2.22377423e-008, -0.707374692))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.22960186, -0.325974345, 0.126894236, -0.999995947, -2.91118213e-005, -0.000387890788, 0.000387888373, 2.88337342e-005, -1, 2.91228953e-005, -0.999999642, -2.88224492e-005))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.0787319914, 0.0918539986, 0.459269375))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000954151154, 0.462881565, 0.0781461895, -4.01817232e-007, -0.999999642, 1.08038626e-006, -0.999990225, 4.0182158e-007, 5.21535412e-007, -5.21538084e-007, -1.08039217e-006, -0.999994278))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439966, 0.393659979, 0.524879932))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.659671783, -0.315543771, -0.000952482224, -0.999995947, -7.10575912e-013, 5.21538198e-007, -5.21540414e-007, -6.60076464e-012, -1, 7.10569624e-013, -0.999999642, 6.35824596e-012))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.524879932))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.64371943, -0.184356153, -0.000952720642, -0.999995947, -2.84785216e-014, 5.21538198e-007, -5.21540414e-007, -1.32740338e-011, -1, 2.84781049e-014, -0.999999642, 1.30315177e-011))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.656100452, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.787320077, 0.262439996, 0.524879932))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.18442535, -0.118758678, -0.000952601433, -0.999995947, 2.01786829e-012, 5.21538198e-007, -5.21540414e-007, -1.28376595e-012, -1, -2.01786721e-012, -0.999999642, 1.04124662e-012))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.7749244, -0.0646617413, 0.446767867, 0.999995947, -1.47525031e-006, -1.80021914e-007, 1.47524486e-006, 0.999999642, 1.47599106e-008, 1.80025495e-007, -1.47599293e-008, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00095307827, -0.0694081783, 0.577923179, -1.12560102e-007, -0.999999642, 4.43628316e-008, 0.999995947, -1.12560521e-007, -1.34108177e-007, 1.34111957e-007, 4.43630412e-008, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00095307827, -0.594094753, 0.0781440437, 4.17225039e-007, 0.999999642, -1.04824289e-006, 0.999990225, -4.17229472e-007, -5.03516958e-007, -5.03519686e-007, -1.04824858e-006, -0.999994278))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.22960186, -0.325974345, 0.126894236, -0.999995947, -2.91118213e-005, -0.000387890788, 0.000387888373, 2.88337342e-005, -1, 2.91228953e-005, -0.999999642, -2.88224492e-005))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.118097998, 0.118097998, 0.459269375))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.249317944, 0.262439966))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0810444355, -0.13091433, -0.000957727432, 0.707103014, 1.57924467e-006, 0.707106233, -0.707106531, -3.81509017e-006, 0.707109034, 3.81435189e-006, -0.999999642, -1.58096839e-006))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.951344788, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.524879932, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000948548317, 0.0531208515, -0.65964818, 5.96030603e-008, 0.999999642, 1.09855229e-007, 5.97940073e-007, -1.0985498e-007, 1, 0.999995947, -5.96032166e-008, -5.97938197e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000953316689, 0.0694112778, -0.577948451, 5.12384233e-008, -0.999999642, 1.78378254e-008, -0.999995947, -5.12386045e-008, 2.53317438e-007, -2.53320735e-007, -1.78380741e-008, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Hot pink","Part",Vector3.new(0.262439966, 0.524879932, 0.262439966))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.381076962, -1.18433952, -0.000951886177, -4.61936025e-007, -4.84779994e-011, -1, 0.999995947, 7.64824488e-012, -4.61933581e-007, 7.64823274e-012, -0.999999642, 4.8235492e-011))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000945568085, -0.725336075, -0.0530678928, 1.03413649e-005, 0.999999642, -1.3563623e-006, 0.999995947, -1.0341404e-005, -5.8640012e-007, -5.86416093e-007, -1.35635605e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.195877314, 0.315567017, 1.77494192, -2.13285796e-013, -0.999999642, -4.6366435e-007, 5.03123488e-007, -4.63663952e-007, 1, -0.999995947, -2.00015972e-014, 5.03121157e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.262439966, 0.262439966))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.64357042, -0.381081522, -0.000952005386, -0.999995947, -2.84963025e-014, 5.21538198e-007, -5.21540414e-007, -1.368856e-010, -1, 2.85603552e-014, -0.999999642, 1.36643141e-010))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.262439996, 0.262439966))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.77479982, -0.381083727, -0.000951886177, -0.999995947, -2.85570179e-014, 5.21538198e-007, -5.21540414e-007, -1.45497003e-010, -1, 2.86255632e-014, -0.999999642, 1.45254545e-010))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439996, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00095307827, 0.184345901, 1.77491713, -2.13323012e-013, -0.999999642, -4.63661678e-007, 5.03123488e-007, -4.6366128e-007, 1, -0.999995947, -1.99632164e-014, 5.03121157e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439966, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.381089836, -0.856295109, -0.000952124596, -4.61936025e-007, -5.05883807e-011, -1, 0.999995947, 8.32963819e-012, -4.61933553e-007, 8.32962432e-012, -0.999999642, 5.03458698e-011))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.77492106, -0.064658761, -0.31554234, -0.999995947, -1.22364965e-012, 5.39955295e-007, -9.5812659e-013, 0.999999642, 4.9172661e-007, -5.39957398e-007, 4.91726212e-007, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.524879932, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000952839851, 0.0531313121, 1.64369941, -2.13395951e-013, -0.999999642, -4.63665572e-007, 5.03123488e-007, -4.63665174e-007, 1, -0.999995947, -1.98925264e-014, 5.03121157e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000952959061, -0.577950954, 0.19316268, 3.2544206e-012, -0.999999642, 4.63510275e-007, -5.03123886e-007, -4.63510332e-007, -1, 0.999995947, 3.02113716e-012, -5.03121612e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439996, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.266271591, -0.577865899, -0.000952601433, -0.999995947, 4.89863532e-011, 5.21538198e-007, -5.21540414e-007, -1.56372887e-010, -1, -4.89860999e-011, -0.999999642, 1.56130456e-010))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.465830922, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0548343658, -0.318395138, -0.000958204269, 0.707103014, 1.5792516e-006, 0.707106233, -0.707106531, -3.81508926e-006, 0.707109034, 3.81435621e-006, -0.999999642, -1.58096282e-006))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.656099856, 0.393659979, 0.262439966))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200451851, -0.315522313, -0.000952482224, -0.999995947, -3.1282919e-013, 5.21538198e-007, -5.21540414e-007, -6.28311465e-012, -1, 3.12824257e-013, -0.999999642, 6.04059554e-012))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.7749095, -0.0665602684, 0.446766496, -0.999995947, 3.94417901e-011, 5.03121157e-007, -3.96749439e-011, -0.999999642, -4.63689446e-007, 5.03123431e-007, -4.63689048e-007, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.656099916, 0.262439966))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.382884979, -0.0559492111, -0.000958323479, 0.707103789, 1.57925547e-006, 0.707107008, -0.707104146, -3.81507652e-006, 0.70710665, 3.81435484e-006, -0.999999642, -1.58096418e-006))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.951344788, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.918540061, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.2500999, -0.315561235, -0.197781086, -0.999995947, -7.10677394e-013, 5.21538198e-007, -5.21540414e-007, -5.410158e-012, -1, 7.10670509e-013, -0.999999642, 5.16763889e-012))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.77491331, -0.0665630102, -0.315546811, 0.999995947, 1.47522928e-006, -8.63054538e-007, 1.47522383e-006, -0.999999642, -5.96148269e-008, -8.63055448e-007, 5.96132921e-008, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00095307827, -0.0692355633, -0.0530753136, 4.17208184e-007, 0.999999642, -1.24864869e-006, 0.999995947, -4.17210487e-007, -6.0446132e-007, -6.04463764e-007, -1.24864835e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.594289541, -0.577865899, -0.000952482224, -0.999995947, 4.85845982e-011, 5.21538198e-007, -5.21540414e-007, -1.55332233e-010, -1, -4.85843449e-011, -0.999999642, 1.55089802e-010))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000952959061, -0.061965704, -0.0530880094, -4.01771786e-007, -0.999999642, 1.08025915e-006, -0.999995947, 4.01773832e-007, 5.21538254e-007, -5.21540869e-007, -1.08025893e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.262439996))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.324400663, -0.446751714, -0.000952601433, -0.999995947, -1.51789562e-012, 5.21538198e-007, -5.21540414e-007, 1.45567641e-010, -1, 1.51780715e-012, -0.999999642, -1.45810183e-010))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439966, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.381086797, -1.51240134, -0.000951886177, -4.61936025e-007, -5.05883252e-011, -1, 0.999995947, 8.3296087e-012, -4.61933553e-007, 8.32959483e-012, -0.999999642, 5.03458178e-011))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.262440026, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.70932698, -0.446754277, 0.195877552, -0.999995947, -2.85565842e-014, 5.21538198e-007, -5.21540414e-007, 3.59957689e-011, -1, 2.85304718e-014, -0.999999642, -3.62383006e-011))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000952839851, 0.331614971, -0.0531049073, -4.01787446e-007, -0.999999642, 1.0803011e-006, -0.999995947, 4.01789492e-007, 5.21538254e-007, -5.21540869e-007, -1.08030088e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.918540061, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.25009334, -0.315559089, 0.195877194, -0.999995947, -7.10700812e-013, 5.21538198e-007, -5.21540414e-007, -6.16940093e-012, -1, 7.10694307e-013, -0.999999642, 5.92688182e-012))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.19778192, 0.315561116, 1.77493024, -2.13241344e-013, -0.999999642, -4.63686348e-007, 5.03123488e-007, -4.6368595e-007, 1, -0.999995947, -2.00571083e-014, 5.03121157e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000952363014, 0.446721375, 0.193159819, 4.75546358e-009, 0.999999642, -1.8624263e-006, 5.20043955e-007, 1.86242596e-006, 1, 0.999995947, -4.75644946e-009, -5.20041738e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.262439996))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.193187475, -0.315557897, -0.000952601433, -0.999995947, -1.39693855e-012, 5.21538198e-007, -5.21540414e-007, 1.66943959e-011, -1, 1.39691752e-012, -0.999999642, -1.69369241e-011))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.59407711, -0.0531000197, -0.000952363014, -0.999990225, -3.56847798e-014, 5.21535242e-007, -5.21537459e-007, -2.62820841e-012, -0.999994278, 7.82880772e-014, -0.999999642, 2.61816176e-012))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.262440026, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.70935547, -0.44676286, -0.197781682, -0.999995947, -2.85648241e-014, 5.21538198e-007, -5.21540414e-007, 4.92065971e-011, -1, 2.85318237e-014, -0.999999642, -4.94491323e-011))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.381075412, -1.78140426, -0.00095307827, -4.61936025e-007, -4.94634819e-011, -1, 0.999995947, 8.18711939e-012, -4.61933581e-007, 8.18710464e-012, -0.999999642, 4.92209745e-011))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439966, 0.200000003, 0.262439996))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.258820057, -0.184331298, -0.000952601433, -0.999995947, -9.58359694e-013, 5.21538198e-007, -5.21540414e-007, 1.63497792e-011, -1, 9.58340612e-013, -0.999999642, -1.65923074e-011))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 1))
BarrelA=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Hot pink","BarrelA",Vector3.new(0.200000003, 0.200000003, 0.512000024))
BarrelAweld=CreateWeld(m,FakeHandleA,BarrelA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00648152828, -0.375403494, -1.62293732, 4.16029834e-005, -0.999999523, 4.46679103e-008, 4.43538624e-007, -4.46531416e-008, -0.999999881, 0.999992251, 4.16032817e-005, 4.43546355e-007))
CreateMesh("SpecialMesh",BarrelA,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.153600022, 0.140799999, 0.447999448))
FakeHandleB=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","FakeHandleB",Vector3.new(0.200000003, 0.256000012, 0.496000051))
FakeHandleBweld=CreateWeld(m,HandleB,FakeHandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, -2.36065456e-020, 0, -2.36065456e-020, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",FakeHandleB,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.462830544, -0.0531138182, -0.000952243805, -0.999992132, 1.09443888e-012, 5.21542518e-007, -5.21546724e-007, -1.02038245e-012, -1, -1.09444235e-012, -0.999999523, 4.35311509e-013))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000952363014, -0.446709752, -0.193128824, 2.83092186e-006, 0.999999523, -3.04522632e-006, -7.05205821e-007, -3.04522337e-006, -1, -0.999992132, 2.83094482e-006, 7.05194395e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.262439996, 0.200000003, 0.255879134))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0690851212, -0.0718523264, 0.394912601, -0.707375407, 1.49016e-008, -0.706838131, -7.8923982e-008, -1, 5.79019144e-008, -0.706838131, 9.67448699e-008, 0.707375348))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.229856014, 0.330393344, 0.128970504, -1, 2.91118504e-005, 0.000388933928, 0.000388933084, -2.88635511e-005, 1, 2.91230717e-005, 1, 2.88522242e-005))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.118097998, 0.118097998, 0.459269375))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.229856014, 0.330393344, 0.128970504, -1, 2.91118504e-005, 0.000388933928, 0.000388933084, -2.88635511e-005, 1, 2.91230717e-005, 1, 2.88522242e-005))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.0787319914, 0.0918539986, 0.459269375))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000954866409, 0.463091612, 0.577915788, 2.08607375e-007, 0.999999523, 4.4356252e-008, -0.999992132, 2.08608867e-007, 9.08972993e-007, 9.08974243e-007, -4.43558399e-008, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000952482224, -0.463091373, -0.577939391, -5.96006622e-008, 0.999999523, 1.78325248e-008, 0.999992132, 5.96011169e-008, -7.89763646e-007, -7.8976575e-007, 1.78318817e-008, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000952601433, -0.725286722, 0.577960372, 3.77827917e-007, -0.999999523, -5.6673349e-007, 0.999992132, 3.77831014e-007, -5.21542631e-007, 5.21547122e-007, -5.6673241e-007, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0618202686, -0.57786119, -0.000952482224, -0.999992132, 2.76128037e-010, 5.21542518e-007, -5.21546781e-007, -4.76147566e-010, -1, -2.76125789e-010, -0.999999523, 4.75562811e-010))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.262439996, 0.200000003, 0.255879134))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.394863367, -0.0697958469, -0.0693879128, -0.707374692, 1.49032964e-008, 0.706838787, -5.17640242e-009, 1, -2.62647628e-008, -0.706838787, -2.22379111e-008, -0.707374692))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.229600906, -0.325974405, 0.126894355, -1, -2.91118322e-005, -0.000387890788, 0.000387889944, 2.88337451e-005, -1, 2.91230135e-005, -1, -2.88224492e-005))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.0787319914, 0.0918539986, 0.459269375))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000953912735, 0.46284461, 0.0781242549, -4.01818824e-007, -0.999999523, 1.08039103e-006, -0.999992132, 4.01822348e-007, 5.21542688e-007, -5.21547349e-007, -1.08039092e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439966, 0.393659979, 0.524879932))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.659660816, -0.315543771, -0.000952363014, -0.999992132, -6.25112375e-013, 5.21542461e-007, -5.21546724e-007, -7.04180898e-012, -1, 6.25099527e-013, -0.999999523, 6.45673966e-012))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.524879932))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.64369273, -0.184356153, -0.000952601433, -0.999992132, 5.69847988e-014, 5.21542461e-007, -5.21546724e-007, -1.37150759e-011, -1, -5.69892034e-014, -0.999999523, 1.31300101e-011))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.656100452, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.787320077, 0.262439996, 0.524879932))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.18440604, -0.118758678, -0.000952482224, -0.999992132, 2.1033314e-012, 5.21542518e-007, -5.21546724e-007, -1.72481072e-012, -1, -2.10332684e-012, -0.999999523, 1.13974021e-012))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.77489591, -0.0646619797, 0.446767896, 0.999992132, -1.47525031e-006, -1.80026205e-007, 1.4752394e-006, 0.999999523, 1.4759812e-008, 1.8003314e-007, -1.47594861e-008, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000952959061, -0.069406271, 0.577923179, -1.12559754e-007, -0.999999523, 4.43629311e-008, 0.999992132, -1.12560592e-007, -1.3411244e-007, 1.34119745e-007, 4.43634747e-008, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000952959061, -0.594092369, 0.0781444907, 4.17223703e-007, 1, -1.04824346e-006, 1, -4.17224214e-007, -5.03528042e-007, -5.03528497e-007, -1.04824335e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.229600906, -0.325974405, 0.126894355, -1, -2.91118322e-005, -0.000387890788, 0.000387889944, 2.88337451e-005, -1, 2.91230135e-005, -1, -2.88224492e-005))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.118097998, 0.118097998, 0.459269375))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.249317944, 0.262439966))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0810451508, -0.130914927, -0.000957846642, 0.707105875, 1.57924535e-006, 0.707106233, -0.707109392, -3.81509153e-006, 0.707109034, 3.81436735e-006, -1, -1.58096793e-006))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.951344788, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.524879932, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000948429108, 0.0531208515, -0.659636974, 5.96029182e-008, 0.999999523, 1.09855129e-007, 5.97946098e-007, -1.09854533e-007, 1, 0.999992132, -5.96032947e-008, -5.9794246e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000953197479, 0.0694093704, -0.577948451, 5.12381426e-008, -0.999999523, 1.78379249e-008, -0.999992132, -5.12385121e-008, 2.5332173e-007, -2.53328068e-007, -1.78385147e-008, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Hot pink","Part",Vector3.new(0.262439966, 0.524879932, 0.262439966))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.381076962, -1.18432021, -0.000951766968, -4.61942591e-007, -4.89190355e-011, -1, 0.999992132, 7.56278113e-012, -4.61937873e-007, 7.56273516e-012, -0.999999523, 4.83339826e-011))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000945448875, -0.725324035, -0.053067863, 1.03413258e-005, 0.999999523, -1.3563623e-006, 0.999992132, -1.03414031e-005, -5.86404383e-007, -5.86422175e-007, -1.35635628e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.195877314, 0.315567106, 1.77491331, -2.98756218e-013, -0.999999523, -4.63664264e-007, 5.03129854e-007, -4.63663469e-007, 1, -0.999992132, 6.54619384e-014, 5.03125477e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.262439966, 0.262439966))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.64354384, -0.381081581, -0.000951766968, -0.999992132, 5.69671263e-014, 5.21542518e-007, -5.21546724e-007, -1.37326636e-010, -1, -5.69069531e-014, -0.999999523, 1.36741632e-010))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.262439996, 0.262439966))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.77477098, -0.381083727, -0.000951647758, -0.999992132, 5.6906411e-014, 5.21542518e-007, -5.21546724e-007, -1.45938026e-010, -1, -5.68417451e-014, -0.999999523, 1.45353021e-010))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439996, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000952959061, 0.184345931, 1.77488852, -2.98793217e-013, -0.999999523, -4.63661593e-007, 5.03129854e-007, -4.63660797e-007, 1, -0.999992132, 6.55001024e-014, 5.03125477e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439966, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.381089836, -0.856280804, -0.000952005386, -4.61942562e-007, -5.10294133e-011, -1, 0.999992132, 8.24417357e-012, -4.61937844e-007, 8.244125e-012, -0.999999523, 5.0444364e-011))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.77489245, -0.0646588802, -0.31554237, -0.999992132, -1.13818612e-012, 5.39959558e-007, -8.72651452e-013, 0.999999523, 4.91726496e-007, -5.39963651e-007, 4.917257e-007, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.524879932, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000952720642, 0.0531313121, 1.6436727, -2.98866156e-013, -0.999999523, -4.63665486e-007, 5.03129854e-007, -4.63664691e-007, 1, -0.999992132, 6.55707923e-014, 5.03125477e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000952959061, -0.577952385, 0.193134546, 2.79130136e-010, -0.999999523, 4.63188996e-007, -5.03130252e-007, -4.63189366e-007, -1, 0.999992132, 2.78899154e-010, -5.03125875e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439996, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.266266823, -0.577865839, -0.000952482224, -0.999992132, 4.90718091e-011, 5.21542461e-007, -5.21546724e-007, -1.56813909e-010, -1, -4.90713789e-011, -0.999999523, 1.56228946e-010))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.465830922, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0548336506, -0.318395734, -0.000958323479, 0.707105875, 1.57925228e-006, 0.707106233, -0.707109392, -3.81509062e-006, 0.707109034, 3.81437167e-006, -1, -1.58096236e-006))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.656099856, 0.393659979, 0.262439966))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200448036, -0.315522313, -0.000952363014, -0.999992132, -2.27365869e-013, 5.21542461e-007, -5.21546724e-007, -6.72415856e-012, -1, 2.27355651e-013, -0.999999523, 6.13908924e-012))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.77488089, -0.0665599108, 0.446766585, -0.999992132, 3.95272495e-011, 5.0312542e-007, -3.9760268e-011, -0.999999523, -4.63689361e-007, 5.03129854e-007, -4.63688565e-007, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.656099916, 0.262439966))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.382884026, -0.0559498072, -0.000958442688, 0.70710665, 1.57925615e-006, 0.707107008, -0.707107008, -3.81507789e-006, 0.70710665, 3.8143703e-006, -1, -1.58096373e-006))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.951344788, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.918540061, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.25007939, -0.315561235, -0.197780728, -0.999992132, -6.25213856e-013, 5.21542461e-007, -5.21546724e-007, -5.85120234e-012, -1, 6.25200358e-013, -0.999999523, 5.26613258e-012))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.77488446, -0.0665627718, -0.315546811, 0.999992132, 1.47522906e-006, -8.63058801e-007, 1.47521814e-006, -0.999999523, -5.96147274e-008, -8.6306045e-007, 5.96128444e-008, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000952959061, -0.0692336559, -0.0530753434, 4.17206678e-007, 0.999999523, -1.24864869e-006, 0.999992132, -4.17210515e-007, -6.0446564e-007, -6.04469733e-007, -1.24864869e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.594279528, -0.577865899, -0.000952363014, -0.999992132, 4.86700541e-011, 5.21542461e-007, -5.21546724e-007, -1.55773255e-010, -1, -4.86696274e-011, -0.999999523, 1.55188293e-010))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000952839851, -0.061965704, -0.0530880094, -4.01770336e-007, -0.999999523, 1.08025915e-006, -0.999992132, 4.0177386e-007, 5.21542518e-007, -5.21547179e-007, -1.08025915e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.262439996))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.324369669, -0.446746528, -0.000952601433, -0.999992132, -2.28737904e-010, 5.21542461e-007, -5.21546724e-007, 3.90042887e-010, -1, 2.28737695e-010, -0.999999523, -3.90628141e-010))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439966, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.381086797, -1.51237679, -0.000951766968, -4.61942562e-007, -5.10293613e-011, -1, 0.999992132, 8.24414408e-012, -4.61937844e-007, 8.24409551e-012, -0.999999523, 5.04443119e-011))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.262440026, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.70929945, -0.446754336, 0.195877552, -0.999992132, 5.69068447e-014, 5.21542461e-007, -5.21546724e-007, 3.55547189e-011, -1, -5.69368364e-014, -0.999999523, -3.61398099e-011))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000952720642, 0.331609011, -0.0531049073, -4.01785996e-007, -0.999999523, 1.0803011e-006, -0.999992132, 4.01789521e-007, 5.21542518e-007, -5.21547236e-007, -1.0803011e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.918540061, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.25007296, -0.315559149, 0.195877194, -0.999992132, -6.25237275e-013, 5.21542461e-007, -5.21546724e-007, -6.61044526e-012, -1, 6.25224156e-013, -0.999999523, 6.02537551e-012))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.197781563, 0.315561146, 1.77490151, -2.98711766e-013, -0.999999523, -4.63686263e-007, 5.03129854e-007, -4.63685438e-007, 1, -0.999992132, 6.54063189e-014, 5.03125477e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.262439966, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000952243805, 0.446721435, 0.193157434, 4.75553064e-009, 0.999999523, -1.86242642e-006, 5.20050321e-007, 1.86242619e-006, 1, 0.999992132, -4.75653428e-009, -5.20046058e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.262439996))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.193185091, -0.315557897, -0.000952482224, -0.999992132, -1.3114748e-012, 5.21542461e-007, -5.21546724e-007, 1.62533511e-011, -1, 1.31144477e-012, -0.999999523, -1.683843e-011))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.200000003, 0.200000003, 0.262439966))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.594074965, -0.0531003177, -0.000952243805, -1, 4.97786491e-014, 5.21546554e-007, -5.21546554e-007, -3.0692675e-012, -1, -4.97770262e-014, -1, 3.0692675e-012))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Hot pink","Part",Vector3.new(0.262440026, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.70932782, -0.44676286, -0.197781324, -0.999992132, 5.68986048e-014, 5.21542461e-007, -5.21546724e-007, 4.87655437e-011, -1, -5.6935488e-014, -0.999999523, -4.93506416e-011))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.381075472, -1.78137565, -0.000952839851, -4.61942591e-007, -4.99045215e-011, -1, 0.999992132, 8.10165563e-012, -4.61937873e-007, 8.10160619e-012, -0.999999523, 4.93194721e-011))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.656099916, 0.656099916, 0.656099916))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.262439966, 0.200000003, 0.262439996))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.258816719, -0.184331298, -0.000952482224, -0.999992132, -8.72896373e-013, 5.21542461e-007, -5.21546724e-007, 1.59087344e-011, -1, 8.72869593e-013, -0.999999523, -1.64938133e-011))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.656099916, 1))
BarrelB=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Hot pink","BarrelB",Vector3.new(0.200000003, 0.200000003, 0.512000024))
BarrelBweld=CreateWeld(m,FakeHandleB,BarrelB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00648140907, -0.375403613, -1.62292969, 4.16028452e-005, -1, 4.46680346e-008, 4.43528563e-007, -4.46495818e-008, -1, 1, 4.16028452e-005, 4.43526744e-007))
CreateMesh("SpecialMesh",BarrelB,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.153600022, 0.140799999, 0.447999448))

local lasrs = {} 
local lasrspd = 5
local maxTravelDistance = 300 
local maxRebounds = 2 

function RAY(pos, dir, collidedlist, startpos, endpos, distleft) 
	collidedlist = collidedlist or {Character} 
	startpos = startpos or pos 
	distleft = distleft or dir.unit * dir.magnitude 
	endpos = endpos or pos + distleft 
	local ray = Ray.new(pos, distleft) 
	local hitz,enz = workspace:FindPartOnRayWithIgnoreList(ray, collidedlist) 
	if hitz ~= nil and not hitz.Parent:findFirstChild("Humanoid") then 
		if hitz.CanCollide == false then 
			table.insert(collidedlist, hitz) 
			local newpos = enz 
			local newdistleft = distleft - (dir.unit * (pos - newpos).magnitude) 
			if newdistleft then 
				return RAY(newpos-(dir*0.01), dir, collidedlist, startpos, endpos, newdistleft+(dir*0.01)) 
			end 
		end 
	end 
	return hitz, enz, ray 
end 

function FindSurface(part, position) 
	local obj = part.CFrame:pointToObjectSpace(position) 
	local siz = part.Size/2 
	for i,v in pairs(Enum.NormalId:GetEnumItems()) do 
		local vec = Vector3.FromNormalId(v) 
		local wvec = part.CFrame:vectorToWorldSpace(vec) 
		local vz = (obj)/(siz*vec) 
		if (math.abs(vz.X-1) < 0.001 or math.abs(vz.Y-1) < 0.001 or math.abs(vz.Z-1) < 0.001) then
			return wvec,vec 
		end 
	end 
	if part.className == "WedgePart" then 
		local pos = (part.CFrame * CFrame.new(0,part.Size.y/2,part.Size.z/2)).p 
		local apos = (part.CFrame * CFrame.Angles(-math.atan2(part.CFrame:pointToObjectSpace(pos).y,part.CFrame:pointToObjectSpace(pos).z),0,0) * CFrame.new(0,1,0)).p 
		local wvec,vec = (apos - part.Position).unit, part.CFrame:pointToObjectSpace(apos) 
		return wvec,vec
	elseif part.className == "Part" and (part.Shape.Name == "Ball" or part.Shape.Name == "Cylinder") then 
		return (position - part.Position).unit, part.CFrame:vectorToObjectSpace((position - part.Position).unit) 
	end 
end 

function Reflect(direction, normal) 
	return direction - 2 * normal:Dot(direction) * normal 
end 

function ReflectShot(mouse,asd) 
	local dir = (mouse.Hit.p - Torso.Position).unit 
	local tabl 
	local tablnum = 0 
	for i, v in pairs(lasrs) do 
		if not v[1] then 
			tabl = v 
			tablnum = i 
			break 
		end 
	end 
	if not tabl then 
		tablnum = #lasrs + 1 
		tabl = {false,nil,nil,0,0,1,{},{},{},{}} 
		for i = 1, 2 do 
			for j = 1, 6 do 
				local p = Instance.new("Part") 
				p.FormFactor = "Custom" 
				p.CanCollide = false 
				p.Anchored = true 
				p.Locked = true 
				p.BrickColor = BarrelA.BrickColor 
				p.TopSurface = 10 
				p.BottomSurface = 10 
				p.RightSurface = 10 
				p.LeftSurface = 10 
				p.FrontSurface = 10 
				p.BackSurface = 10 
				p.Size = Vector3.new(.5,.5,.5) 
				p.Material = "Neon"
				p.Transparency = i == 1 and 0 or 0.6 
				local mesh = Instance.new("CylinderMesh",p) 
				table.insert(tabl[6+i],p) 
				table.insert(tabl[8+i],mesh) 
	end
		end 
		table.insert(lasrs,tabl) 
	end 
	-- isMoving,direction,lastPosition,rebounds,distance,recycleCount,middleLayer,outerLayer
	tabl[4],tabl[5] = 0,0 
	tabl[3] = asd.Position 
	tabl[2] = dir 
	tabl[1] = true 

end 

gun = false

shoot = false

gunidle = false

local GunA = true
local GunB = false

function CylinderEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(3, Character, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.1, 0.1, 0.1))
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	Effects[#Effects + 1] = {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3
	} --part, type, delay
end

function Shoot(asd, spread1, spread2)
	local MainPos = asd.Position
	local MainPos2 = mouse.Hit.p
	local spread = Vector3.new((math.random(-spread1, 0) + math.random()) * spread2, (math.random(-spread1, 0) + math.random()) * spread2, (math.random(-spread1, 0) + math.random()) * spread2) * (asd.Position - mouse.Hit.p).magnitude / 100
	local MouseLook = cn((MainPos + MainPos2) / 2, MainPos2 + spread)
	num = 30
	coroutine.resume(coroutine.create(function(Spreaded) 
		repeat
			wait()
			local hit, pos = rayCast(MainPos, MouseLook.lookVector, 10, RootPart.Parent)
			local TheHit = mouse.Hit.p
			local mag = (MainPos - pos).magnitude 
			CylinderEffect(BrickColor.new(asd.BrickColor.Color), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 3, mag * 5, 3, .5, 0, 1.5, 0.1)
			MainPos = MainPos + (MouseLook.lookVector * 10)
			num = num - 1
			if hit ~= nil then
				num = 0
				damage(hit.Parent:WaitForChild("Torso"), math.random(5,8), math.random(8,10), 5, 1, RootPart)
			end
		until num <= 0
	end))
end

function Attackone()
attack = true
Con1 = LeftLeg.Touched:connect(function(hit) damage(hit, math.random(5,6), math.random(6,10), 1, 1, RootPart) Con1:disconnect() end) 
for i = 0,1,0.2 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-30)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(20)), .3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-20)), .3)
RH.C0 = clerp(RH.C0, cn(0.55, -2, 0) * angles(math.rad(0), math.rad(-30), math.rad(5)), .3)
LH.C0 = clerp(LH.C0, cn(-0.55, -2, 0) * angles(math.rad(0), math.rad(-30), math.rad(-5)), .3)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-170), math.rad(0)), .4)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-170), math.rad(0)), .4)
end
so("http://roblox.com/asset/?id=320557413",LeftLeg,1,1)
for i = 0,1,0.15 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), .5)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(10), math.rad(30)), .5)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(20)), .5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(-20)), .5)
RH.C0 = clerp(RH.C0, cn(0.55, -2, .5) * angles(math.rad(-30), math.rad(30), math.rad(10)), .5)
LH.C0 = clerp(LH.C0, cn(-1.3, -1, -1.3) * angles(math.rad(80), math.rad(-10), math.rad(-30)), .5)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-170), math.rad(0)), .4)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-170), math.rad(0)), .4)
end
attack = false
Con1:disconnect()
end

function Attacktwo()
attack = true
Con1 = LeftArm.Touched:connect(function(hit) damage(hit, math.random(5,6), math.random(6,10), 1, 1, RootPart) Con1:disconnect() end) 
for i = 0,1,0.2 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(10), math.rad(50)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(20)), .3)
LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -.5) * angles(math.rad(0), math.rad(-150), math.rad(-90)), .3)
RH.C0 = clerp(RH.C0, cn(0.8, -2, 0) * angles(math.rad(-10), math.rad(30), math.rad(10)), .3)
LH.C0 = clerp(LH.C0, cn(-0.8, -2, 0) * angles(math.rad(0), math.rad(30), math.rad(-10)), .3)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-170), math.rad(0)), .4)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(70), math.rad(0)), .4)
end
so("http://roblox.com/asset/?id=320557413",LeftArm,1,1.2)
for i = 0,1,0.15 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .35)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(-5), math.rad(-80)), .35)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(50), math.rad(20), math.rad(30)), .35)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(-90)), .35)
RH.C0 = clerp(RH.C0, cn(0.8, -2, 0) * angles(math.rad(-10), math.rad(-40), math.rad(10)), .35)
LH.C0 = clerp(LH.C0, cn(-0.8, -2, 0) * angles(math.rad(-10), math.rad(-40), math.rad(-10)), .35)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-170), math.rad(0)), .4)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-90), math.rad(0)), .3)
end
attack = false
Con1:disconnect()
end

function Attackthree()
attack = true
Con1 = RightArm.Touched:connect(function(hit) damage(hit, math.random(5,6), math.random(6,10), 1, 1, RootPart) Con1:disconnect() end) 
for i = 0,1,0.2 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(70)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(160), math.rad(0), math.rad(20)), .3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -.5) * angles(math.rad(0), math.rad(-150), math.rad(-90)), .3)
RH.C0 = clerp(RH.C0, cn(0.57, -2, 0) * angles(math.rad(0), math.rad(40), math.rad(7)), .3)
LH.C0 = clerp(LH.C0, cn(-0.57, -2, 0) * angles(math.rad(0), math.rad(40), math.rad(-7)), .3)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, -.1) * angles(math.rad(0), math.rad(150), math.rad(0)), .4)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-170), math.rad(0)), .4)
end
so("http://roblox.com/asset/?id=320557413",RightArm,1,1.3)
for i = 0,1,0.13 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), .35)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(-5), math.rad(-70)), .35)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.4, -.3) * angles(math.rad(30), math.rad(-50), math.rad(-20)), .35)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), .35)
RH.C0 = clerp(RH.C0, cn(0.57, -2, 0) * angles(math.rad(0), math.rad(-40), math.rad(7)), .35)
LH.C0 = clerp(LH.C0, cn(-0.57, -2, 0) * angles(math.rad(0), math.rad(-40), math.rad(-7)), .35)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .4)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-170), math.rad(0)), .4)
end
attack = false
Con1:disconnect()
end

function Attackfour()
attack = true
for i = 0,1,0.2 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(3), math.rad(0), math.rad(-70)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-3), math.rad(3), math.rad(70)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(30)), .3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, -.3) * angles(math.rad(120), math.rad(0), math.rad(40)), .3)
RH.C0 = clerp(RH.C0, cn(0.7, -2, .3) * angles(math.rad(3), math.rad(70), math.rad(5)), .3)
LH.C0 = clerp(LH.C0, cn(-0.7, -2, -.3) * angles(math.rad(3), math.rad(70), math.rad(-5)), .3)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .7)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(-130), math.rad(0)), .7)
end
so("http://roblox.com/asset/?id=320557413",LeftArm,1,0.9)
for i = 0,1,0.15 do 
wait()
so("http://roblox.com/asset/?id=199145534",BarrelA,.5,math.random(150,200)/100) 
OrbEffect(BarrelA.BrickColor,cn(BarrelA.Position),.3,.3,.3,.3,.3,.3,0.1)
Shockwave(BarrelA.BrickColor,cn(BarrelA.Position),.3,.3,.3,.3,.3,.3,0.1)
local target=CheckClose(BarrelA,5)
if target then
damage(target.Torso, math.random(1,2), math.random(2,3), 1, 1, RootPart)
end
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(3), math.rad(0), math.rad(100)), .35)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-3), math.rad(-3), math.rad(-100)), .35)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(60), math.rad(70)), .35)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, -.3) * angles(math.rad(-20), math.rad(0), math.rad(-40)), .35)
RH.C0 = clerp(RH.C0, cn(0.58, -2, 0) * angles(math.rad(3), math.rad(0), math.rad(8)), .35)
LH.C0 = clerp(LH.C0, cn(-0.58, -2, 0) * angles(math.rad(3), math.rad(0), math.rad(-8)), .35)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(-130), math.rad(0)), .7)
end
attack = false
end

function GunStance()
attack=true
gun=true
speedvalue = 1
gyro.Parent = RootPart
if GunA == true then
for i=0,1,0.2 do
wait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .25)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(5), math.rad(-90)), .25)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(30), math.rad(90)), .25)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-10)), .25)
				RH.C0 = clerp(RH.C0, cn(0.6, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(3)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.6, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(-3)), .25)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, .8) * angles(math.rad(0), 5*i, math.rad(0)), .75)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
end
for i=0,1,0.1 do
wait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .25)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-90)), .25)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), .25)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-10)), .25)
				RH.C0 = clerp(RH.C0, cn(0.6, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(3)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.6, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(-3)), .25)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
end
elseif GunB == true then
for i=0,1,0.2 do
wait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), .25)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(-5), math.rad(90)), .25)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(10)), .25)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(-30), math.rad(-90)), .25)
				RH.C0 = clerp(RH.C0, cn(0.6, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(3)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.6, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(-3)), .25)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, .8) * angles(math.rad(0), 5*i, math.rad(0)), .75)
end
for i=0,1,0.1 do
wait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), .25)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(90)), .25)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(10)), .25)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-90)), .25)
				RH.C0 = clerp(RH.C0, cn(0.6, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(3)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.6, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(-3)), .25)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
end
end
local offset = nil
gunidle=true
while gun==true do
wait()
local gunpos = Vector3.new(mouse.Hit.p.x, Head.Position.Y, mouse.Hit.p.z)
offset = (Torso.Position.y - mouse.Hit.p.y) / 60
local mag = (Torso.Position - mouse.Hit.p).magnitude / 80
offset = offset / mag 
if GunA == true and GunB == false then
RW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(offset, 0, 0), .5)
elseif GunB == true and GunA == false then
LW.C1 = clerp(LW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(offset, 0, 0), .5)
end
end
if shoot==true then
gunidle=false
if GunA == true then
so("http://www.roblox.com/asset/?id=199144089", BarrelA, 1, .9)
so("http://www.roblox.com/asset/?id=200633327", BarrelA, 1, 1.2)
so("http://www.roblox.com/asset/?id=200633780", BarrelA, 1, 1.5)
GunA = false
Shoot(BarrelA, 0, 0)
for i=0,1,0.15 do
wait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(5), math.rad(-80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, 0) * angles(math.rad(90), math.rad(60), math.rad(80)), .55)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-15)), .3)
				RH.C0 = clerp(RH.C0, cn(0.6, -2, -.1) * angles(math.rad(5), math.rad(0), math.rad(3)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.6, -2, .1) * angles(math.rad(-5), math.rad(0), math.rad(-3)), .25)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(20), math.rad(0)), .75)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(30), math.rad(0)), .3)
end
GunB = true
elseif GunB == true then
so("http://www.roblox.com/asset/?id=199144089", BarrelB, 1, .9)
so("http://www.roblox.com/asset/?id=200633327", BarrelB, 1, 1.2)
so("http://www.roblox.com/asset/?id=200633780", BarrelB, 1, 1.5)
GunB = false
Shoot(BarrelB, 0, 0)
for i=0,1,0.15 do
wait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(-5), math.rad(80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(15)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.7, 0) * angles(math.rad(90), math.rad(-60), math.rad(-80)), .55)
				RH.C0 = clerp(RH.C0, cn(0.6, -2, .1) * angles(math.rad(-5), math.rad(0), math.rad(3)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.6, -2, -.1) * angles(math.rad(5), math.rad(0), math.rad(-3)), .25)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(30), math.rad(0)), .3)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(20), math.rad(0)), .75)
end
GunA = true
end
end
gyro.Parent = nil
speedvalue = 2.5
gun=false
gunidle=false
shoot=false
attack=false
end

function EchoBarrage()
attack = true
gyro.Parent = RootPart
speedvalue = 1
for i = 0,1,0.1 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(3), math.rad(0), math.rad(0)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(10)), .3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(-10)), .3)
RH.C0 = clerp(RH.C0, cn(0.55, -2, 0) * angles(math.rad(3), math.rad(0), math.rad(3)), .3)
LH.C0 = clerp(LH.C0, cn(-0.55, -2, 0) * angles(math.rad(3), math.rad(0), math.rad(-3)), .3)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), 10*i, math.rad(0)), .7)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), -10*i, math.rad(0)), .7)
end
for i = 1,2 do
for i = 0,1,0.3 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, -.2) * angles(math.rad(90), math.rad(0), math.rad(0)), .3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, -.2) * angles(math.rad(90), math.rad(0), math.rad(0)), .3)
RH.C0 = clerp(RH.C0, cn(0.55, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(3)), .3)
LH.C0 = clerp(LH.C0, cn(-0.55, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(-3)), .3)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
end
ReflectShot(mouse,BarrelA)
so("http://www.roblox.com/asset/?id=199144089", BarrelA, 1, .9)
so("http://www.roblox.com/asset/?id=200633327", BarrelA, 1, 1.2)
so("http://www.roblox.com/asset/?id=200633780", BarrelA, 1, 1.5)
--so("http://www.roblox.com/asset/?id=360087120", Torso, .5, 1)
for i = 0,1,0.35 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), .4)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(20)), .4)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, -.4) * angles(math.rad(150), math.rad(0), math.rad(-20)), .4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, -.4) * angles(math.rad(90), math.rad(0), math.rad(0)), .4)
RH.C0 = clerp(RH.C0, cn(0.55, -2, 0) * angles(math.rad(0), math.rad(20), math.rad(3)), .4)
LH.C0 = clerp(LH.C0, cn(-0.55, -2, 0) * angles(math.rad(0), math.rad(20), math.rad(-3)), .4)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
end
for i = 0,1,0.3 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, -.2) * angles(math.rad(90), math.rad(0), math.rad(0)), .3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, -.2) * angles(math.rad(90), math.rad(0), math.rad(0)), .3)
RH.C0 = clerp(RH.C0, cn(0.55, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(3)), .3)
LH.C0 = clerp(LH.C0, cn(-0.55, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(-3)), .3)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
end
ReflectShot(mouse,BarrelB)
so("http://www.roblox.com/asset/?id=199144089", BarrelB, 1, .9)
so("http://www.roblox.com/asset/?id=200633327", BarrelB, 1, 1.2)
so("http://www.roblox.com/asset/?id=200633780", BarrelB, 1, 1.5)
--so("http://www.roblox.com/asset/?id=360087120", Torso, .5, 1)
for i = 0,1,0.35 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), .4)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(-20)), .4)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, -.4) * angles(math.rad(90), math.rad(0), math.rad(0)), .4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, -.4) * angles(math.rad(150), math.rad(0), math.rad(20)), .4)
RH.C0 = clerp(RH.C0, cn(0.55, -2, 0) * angles(math.rad(0), math.rad(-20), math.rad(3)), .4)
LH.C0 = clerp(LH.C0, cn(-0.55, -2, 0) * angles(math.rad(0), math.rad(-20), math.rad(-3)), .4)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
end
end
gyro.Parent = nil
attack = false
speedvalue = 2.5
end

function LucentScatter()
attack = true
gyro.Parent = RootPart
speedvalue = 1
for i = 0,1,0.1 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(3), math.rad(0), math.rad(-70)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-3), math.rad(0), math.rad(70)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(30)), .3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, -.3) * angles(math.rad(120), math.rad(0), math.rad(40)), .3)
RH.C0 = clerp(RH.C0, cn(0.55, -2, 0) * angles(math.rad(3), math.rad(70), math.rad(3)), .3)
LH.C0 = clerp(LH.C0, cn(-0.55, -2, 0) * angles(math.rad(3), math.rad(70), math.rad(-3)), .3)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), -10*i, math.rad(0)), .7)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(-130), math.rad(0)), .7)
end
for i = 0,1,0.2 do 
wait()
Shoot(BarrelA, 0, 0)
so("http://www.roblox.com/asset/?id=199144089", BarrelA, 1, .9)
so("http://www.roblox.com/asset/?id=200633327", BarrelA, 1, 1.2)
so("http://www.roblox.com/asset/?id=200633780", BarrelA, 1, 1.5)
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(3), math.rad(0), math.rad(100)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-3), math.rad(0), math.rad(-100)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -.5) * angles(math.rad(130), math.rad(50), math.rad(30)), .2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, -.3) * angles(math.rad(-20), math.rad(0), math.rad(-40)), .3)
RH.C0 = clerp(RH.C0, cn(0.55, -2, 0) * angles(math.rad(3), math.rad(-70), math.rad(3)), .3)
LH.C0 = clerp(LH.C0, cn(-0.55, -2, 0) * angles(math.rad(3), math.rad(-70), math.rad(-3)), .3)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(-130), math.rad(0)), .7)
end
for i=0,1,0.3 do
wait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), .25)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(90)), .25)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(10)), .25)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-90)), .25)
				RH.C0 = clerp(RH.C0, cn(0.6, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(3)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.6, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(-3)), .25)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
end
for i = 1,5 do
Shoot(BarrelB, 0, 0)
so("http://www.roblox.com/asset/?id=199144089", BarrelB, 1, .9)
so("http://www.roblox.com/asset/?id=200633327", BarrelB, 1, 1.2)
so("http://www.roblox.com/asset/?id=200633780", BarrelB, 1, 1.5)
for i=0,1,0.3 do
wait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .5)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(-5), math.rad(80)), .5)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(15)), .5)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.7, 0) * angles(math.rad(90), math.rad(-60), math.rad(-80)), .55)
				RH.C0 = clerp(RH.C0, cn(0.6, -2, .1) * angles(math.rad(-5), math.rad(0), math.rad(3)), .5)
				LH.C0 = clerp(LH.C0, cn(-0.6, -2, -.1) * angles(math.rad(5), math.rad(0), math.rad(-3)), .5)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(30), math.rad(0)), .3)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(20), math.rad(0)), .75)
end
for i=0,1,0.3 do
wait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), .8)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(90)), .5)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(10)), .8)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-90)), .8)
				RH.C0 = clerp(RH.C0, cn(0.6, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(3)), .5)
				LH.C0 = clerp(LH.C0, cn(-0.6, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(-3)), .5)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .5)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .5)
end
end
gyro.Parent = nil
attack = false
speedvalue = 2.5
end

function OrbEffect(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CanCollide=false
	prt.CFrame = cframe*cn(0,-1,0)*angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90)))
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		for i = 0, 1, delay do
			wait(0)
			Part.CFrame = Part.CFrame
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + Vector3.new(x2, y2, z2)
		end
		Part.Parent = nil
	end), prt, msh)
end

function Shockwave(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe*cn(0,-1,0)
	--prt.Material = "Neon"
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh) 
		for i = 0, 1, delay do
			wait(0)
			Part.CFrame = Part.CFrame
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + Vector3.new(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end

function Reflex()
attack = true
gyro.Parent = RootPart
speedvalue = 1
for i = 0,1,0.1 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.55) * angles(math.rad(5), math.rad(0), math.rad(0)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -.2) * angles(math.rad(0), math.rad(100), math.rad(50)), .3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -.2) * angles(math.rad(0), math.rad(-100), math.rad(-50)), .3)
RH.C0 = clerp(RH.C0, cn(0.55, -1.5, .5) * angles(math.rad(-60), math.rad(0), math.rad(3)), .3)
LH.C0 = clerp(LH.C0, cn(-0.55, -1.45, -.5) * angles(math.rad(-5), math.rad(0), math.rad(-3)), .3)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
end
so("http://roblox.com/asset/?id=199145534",BarrelA,1,math.random(150,200)/100) 
for i=1,math.random(3,6) do
OrbEffect(BarrelA.BrickColor,cn(BarrelA.Position),1,1,1,1,1,1,0.025)
Shockwave(BarrelA.BrickColor,cn(BarrelA.Position),1,1,1,1,1,1,0.025)
end
local target=CheckClose(BarrelA,30)
if target then
damage(target.Torso, 5, math.random(15,20), math.random(15,16), 1, RootPart)
end
Humanoid.Jump=true
Torso.Velocity=Vector3.new(0,7.5,0)
Torso.Velocity=RootPart.CFrame.lookVector*-100
Humanoid.WalkSpeed = 16*speed.Value
for i = 0,1,0.1 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(-6*i, math.rad(0), math.rad(0)), .4)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), .4)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, 0) * angles(math.rad(-30), math.rad(0), math.rad(130)), .4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.7, 0) * angles(math.rad(-30), math.rad(0), math.rad(-130)), .4)
RH.C0 = clerp(RH.C0, cn(0.6, -1.5, -.3) * angles(math.rad(0), math.rad(0), math.rad(5)), .4)
LH.C0 = clerp(LH.C0, cn(-0.6, -1.8, -.2) * angles(math.rad(0), math.rad(0), math.rad(-5)), .4)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-150), math.rad(0)), .25)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-150), math.rad(0)), .25)
RW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
LW.C1 = clerp(LW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
end
gyro.Parent = nil
attack = false
speedvalue = 2.5
end

function Luxuriance()
attack = true
gyro.Parent = RootPart
for i = 0,1,0.1 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.5) * angles(math.rad(20), math.rad(0), math.rad(0)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(70)), .3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(-70)), .3)
RH.C0 = clerp(RH.C0, cn(0.55, -1.7, .4) * angles(math.rad(-20), math.rad(0), math.rad(3)), .3)
LH.C0 = clerp(LH.C0, cn(-0.55, -1.45, -.5) * angles(math.rad(5), math.rad(0), math.rad(-3)), .3)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), 10*i, math.rad(0)), .7)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), -10*i, math.rad(0)), .7)
end
for i = 0,1,0.3 do 
wait()
ReflectShot(mouse,BarrelA)
so("http://www.roblox.com/asset/?id=199144089", BarrelA, 1, .9)
so("http://www.roblox.com/asset/?id=200633327", BarrelA, 1, 1.2)
so("http://www.roblox.com/asset/?id=200633780", BarrelA, 1, 1.5)
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(3), math.rad(0), math.rad(100)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-3), math.rad(0), math.rad(-100)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -.5) * angles(math.rad(130), math.rad(50), math.rad(30)), .2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, -.3) * angles(math.rad(-20), math.rad(0), math.rad(-40)), .3)
RH.C0 = clerp(RH.C0, cn(0.55, -2, 0) * angles(math.rad(3), math.rad(-70), math.rad(3)), .3)
LH.C0 = clerp(LH.C0, cn(-0.55, -2, 0) * angles(math.rad(3), math.rad(-70), math.rad(-3)), .3)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(-130), math.rad(0)), .7)
end
for i = 0,1,0.2 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(70)), .3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(-70)), .3)
RH.C0 = clerp(RH.C0, cn(0.55, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(3)), .3)
LH.C0 = clerp(LH.C0, cn(-0.55, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(-3)), .3)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), 10*i, math.rad(0)), .7)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), -10*i, math.rad(0)), .7)
end
for i = 0,1,0.3 do 
wait()
ReflectShot(mouse,BarrelB)
so("http://www.roblox.com/asset/?id=199144089", BarrelB, 1, .9)
so("http://www.roblox.com/asset/?id=200633327", BarrelB, 1, 1.2)
so("http://www.roblox.com/asset/?id=200633780", BarrelB, 1, 1.5)
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(3), math.rad(0), math.rad(-100)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-3), math.rad(0), math.rad(100)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, -.3) * angles(math.rad(-20), math.rad(0), math.rad(-40)), .2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -.5) * angles(math.rad(130), math.rad(-50), math.rad(-30)), .3)
RH.C0 = clerp(RH.C0, cn(0.55, -2, 0) * angles(math.rad(3), math.rad(70), math.rad(3)), .3)
LH.C0 = clerp(LH.C0, cn(-0.55, -2, 0) * angles(math.rad(3), math.rad(70), math.rad(-3)), .3)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(-130), math.rad(0)), .7)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .7)
end
for i = 0,1,0.1 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(3), math.rad(0), math.rad(0)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(10)), .3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(-10)), .3)
RH.C0 = clerp(RH.C0, cn(0.55, -2, 0) * angles(math.rad(3), math.rad(0), math.rad(3)), .3)
LH.C0 = clerp(LH.C0, cn(-0.55, -2, 0) * angles(math.rad(3), math.rad(0), math.rad(-3)), .3)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), 10*i, math.rad(0)), .7)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), -10*i, math.rad(0)), .7)
end
for i = 1,5 do
Shoot(BarrelA, 0, 0)
so("http://www.roblox.com/asset/?id=199144089", BarrelA, 1, .9)
so("http://www.roblox.com/asset/?id=200633327", BarrelA, 1, 1.2)
so("http://www.roblox.com/asset/?id=200633780", BarrelA, 1, 1.5)
for i = 0,1,0.35 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), .4)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(20)), .4)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, -.4) * angles(math.rad(150), math.rad(0), math.rad(-20)), .4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, -.4) * angles(math.rad(90), math.rad(0), math.rad(0)), .4)
RH.C0 = clerp(RH.C0, cn(0.55, -2, 0) * angles(math.rad(0), math.rad(20), math.rad(3)), .4)
LH.C0 = clerp(LH.C0, cn(-0.55, -2, 0) * angles(math.rad(0), math.rad(20), math.rad(-3)), .4)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
end
Shoot(BarrelB, 0, 0)
so("http://www.roblox.com/asset/?id=199144089", BarrelB, 1, .9)
so("http://www.roblox.com/asset/?id=200633327", BarrelB, 1, 1.2)
so("http://www.roblox.com/asset/?id=200633780", BarrelB, 1, 1.5)
for i = 0,1,0.35 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), .4)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(-20)), .4)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, -.4) * angles(math.rad(90), math.rad(0), math.rad(0)), .4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, -.4) * angles(math.rad(150), math.rad(0), math.rad(20)), .4)
RH.C0 = clerp(RH.C0, cn(0.55, -2, 0) * angles(math.rad(0), math.rad(-20), math.rad(3)), .4)
LH.C0 = clerp(LH.C0, cn(-0.55, -2, 0) * angles(math.rad(0), math.rad(-20), math.rad(-3)), .4)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
end
end
gyro.Parent = nil
attack = false
end

mouse.Button1Down:connect(function()
if gun==true and shoot==false then
shoot=true
gun=false
end
if attack == false and attacktype == 1 then
Attackone()
attacktype = 2
elseif attack == false and attacktype == 2 then
Attacktwo()
attacktype = 3
elseif attack == false and attacktype == 3 then
Attackthree()
attacktype = 4
elseif attack == false and attacktype == 4 then
Attackfour()
attacktype = 1
end
end)

mouse.KeyDown:connect(function(k)
	k = k:lower()
	if k=='e' and gun==false and shoot==false and attack==false then
	GunStance()
	end
	if k=='e'and shoot==false then
		if gun==true then
		gun=false
		end
	end
	if k=='q' and gun==false and shoot==false and attack==false and cooldown1 >= co1 and stamina>=skill1stam then
	cooldown1=0
	subtractstamina(skill1stam)
	EchoBarrage()
	end
	if k=='r' and gun==false and shoot==false and attack==false and cooldown2 >= co2 and stamina>=skill2stam then
	cooldown2=0
	subtractstamina(skill2stam)
	LucentScatter()
	end
	if k=='t' and gun==false and shoot==false and attack==false and cooldown3 >= co3 and stamina>=skill3stam then
	cooldown3=0
	subtractstamina(skill3stam)
	Reflex()
	end
	if k=='f' and gun==false and shoot==false and attack==false and cooldown4 >= co4 and stamina>=skill4stam then
	cooldown4=0
	subtractstamina(skill4stam)
	Luxuriance()
	end
end)


inputserv.InputBegan:connect(function(k)
	if k.KeyCode == Enum.KeyCode.One and typing == false and cooldown3 >= co1 and stamina >= skill1stam then
	elseif k.KeyCode == Enum.KeyCode.Two and typing == false and cooldown3 >= co2 and stamina >= skill2stam then
	elseif k.KeyCode == Enum.KeyCode.Three and typing == false and cooldown3 >= co3 and stamina >= skill3stam then
	elseif k.KeyCode == Enum.KeyCode.Four and typing == false and cooldown3 >= co4 and stamina >= skill4stam then
	end
end)

inputserv.InputBegan:connect(function(k)
	if k.KeyCode == Enum.KeyCode.Slash then
		local fin = nil
		typing = true
		fin = inputserv.InputBegan:connect(function(k)
			if k.KeyCode == Enum.KeyCode.Return or k.UserInputType == Enum.UserInputType.MouseButton1 then
				typing = false
				fin:disconnect()
			end
		end)
	end
end)

local ReboundCount = 0

function updateskills()
	if cooldown1 <= co1 then
		cooldown1 = cooldown1 + 1 
	end
	if cooldown2 <= co2 then
		cooldown2 = cooldown2 + 1
	end
	if cooldown3 <= co3 then
		cooldown3 = cooldown3 + 1 
	end
	if cooldown4 <= co4 then
		cooldown4 = cooldown4 + 1 
	end
	if stamina <= maxstamina then
		stamina = stamina + recoverEnergy
	end
end

game:GetService'RunService'.Heartbeat:connect(function()
	updateskills()
	gyro.CFrame = CFrame.new(Vector3.new(),(mouse.Hit.p -RootPart.CFrame.p).unit * 100)
	healthcover:TweenSize(ud(1 * (Character.Humanoid.Health / Character.Humanoid.MaxHealth), 0, 1, 0), 'Out', 'Quad', .5)
	staminacover:TweenSize(ud(1 * (stamina / maxstamina), 0, 1, 0), 'Out', 'Quad', .5)
	bar4:TweenSize(ud(1 * (cooldown1 / co1), 0, 1, 0), 'Out', 'Quad', .5)
	bar3:TweenSize(ud(1 * (cooldown2 / co2), 0, 1, 0), 'Out', 'Quad', .5)
	bar1:TweenSize(ud(1 * (cooldown3 / co3), 0, 1, 0), 'Out', 'Quad', .5)
	bar2:TweenSize(ud(1 * (cooldown4 / co4), 0, 1, 0), 'Out', 'Quad', .5)
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	Character.Humanoid.WalkSpeed = 16 * speed.Value
	if equipped == true or equipped == false then
		if RootPart.Velocity.y > 1 and hit == nil and stun.Value ~= true then 
			Anim = "Jump"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .25)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), .25)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(50)), .25)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(-50)), .25)
				RH.C0 = clerp(RH.C0, cn(0.4, -1.5, -.5) * angles(math.rad(-20), math.rad(0), math.rad(-5)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.6, -2, 0) * angles(math.rad(-10), math.rad(0), math.rad(5)), .25)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-170), math.rad(0)), .25)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-170), math.rad(0)), .25)
                RW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
                LW.C1 = clerp(LW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil and stun.Value ~= true then 
			Anim = "Fall"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(15), math.rad(0), math.rad(0)), .25)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), .25)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(70)), .25)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-70)), .25)
				RH.C0 = clerp(RH.C0, cn(0.6, -1.5, -.3) * angles(math.rad(0), math.rad(0), math.rad(5)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.6, -1.8, -.2) * angles(math.rad(0), math.rad(0), math.rad(-5)), .25)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-170), math.rad(0)), .25)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-170), math.rad(0)), .25)
                RW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
                LW.C1 = clerp(LW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
			end
		elseif Torsovelocity < 1 and hit ~= nil and stun.Value ~= true then
			Anim = "Idle"
			if attack == false then
				change = 1
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, -0.1+0.1*math.cos(sine/25), -0.1+0.05*math.cos(sine/25)) * angles(math.rad(0), math.rad(0), math.rad(-30)), .25)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10+5*math.cos(sine/25)), math.rad(0), math.rad(30)), .25)
				RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.4, -.2) * angles(math.rad(50-5*math.cos(sine/25)), math.rad(0), math.rad(10)), .25)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.4, -.2) * angles(math.rad(50-5*math.cos(sine/25)), math.rad(0), math.rad(-10)), .25)
				RH.C0 = clerp(RH.C0, cn(0.7, -1.9-.05*math.cos(sine/25), 0) * angles(math.rad(0), math.rad(30), math.rad(5))* angles(math.rad(-5+1*math.cos(sine/25)), math.rad(0), math.rad(0)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.6, -1.9-.05*math.cos(sine/25), 0) * angles(math.rad(0), math.rad(30), math.rad(-3))* angles(math.rad(-3+1*math.cos(sine/25)), math.rad(0), math.rad(0)), .25)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .25)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .25)
                RW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
                LW.C1 = clerp(LW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
			end
		elseif Torsovelocity > 2 and hit ~= nil and stun.Value ~= true then
			Anim = "Walk"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(20+1*math.cos(sine/5)), math.rad(0), math.rad(5*math.cos(sine/4.5))), .25)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(-5*math.cos(sine/4.5))), .25)
				RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.45, 0) * angles(math.rad(-40), math.rad(0), math.rad(20+1*math.cos(sine/5))), .25)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.45, 0) * angles(math.rad(-40), math.rad(0), math.rad(-20+1*math.cos(sine/5))), .25)
				RH.C0 = clerp(RH.C0, cn(0.55, -2, 1*math.cos(sine/4.5)) * angles(math.rad(-50*math.cos(sine/4.5)), math.rad(0), math.rad(3)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.55, -2, -1*math.cos(sine/4.5)) * angles(math.rad(50*math.cos(sine/4.5)), math.rad(0), math.rad(-3)), .25)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-170), math.rad(0)), .25)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-170), math.rad(0)), .25)
                RW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
                LW.C1 = clerp(LW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
			end
		elseif stun.Value == true then
			if attack == false then
				Character.Humanoid.WalkSpeed = 0
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .25)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .25)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .25)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .25)
				RH.C0 = clerp(RH.C0, cn(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .25)
                RW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
                LW.C1 = clerp(LW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
			end
		end
	end
	if #Effects > 0 then
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
							Thing[1].CFrame = Thing[1].CFrame * CFrame.FromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							local Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, .5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						end
					else
						Part.Parent = nil
						table.remove(Effects, e)
					end
				end
			end
		end
	end
	for _, lasr in pairs(lasrs) do 
		for i, v in pairs(lasr[9]) do 
			if lasr[7][i].Parent then 
				v.Scale = v.Scale + Vector3.new(-0.1,0,-0.1) 
				lasr[10][i].Scale = lasr[10][i].Scale + Vector3.new(-0.1,0,-0.1) 
				if v.Scale.x < 0.1 then 
					lasr[7][i].Parent = nil 
					lasr[8][i].Parent = nil 
				end 
			end 
		end 

		if lasr[1] then 
			local hitz, enz = RAY(lasr[3],lasr[2]*lasrspd) 
			lasr[5] = lasr[5] + (lasr[3] - enz).magnitude 

			lasr[7][lasr[6]].Parent = m 
			lasr[7][lasr[6]].CFrame = CFrame.new((lasr[3] + enz)/2,enz) * CFrame.Angles(math.pi/2,0,0) 
			lasr[9][lasr[6]].Scale = Vector3.new(0.7,(lasr[3] - enz).magnitude*5,0.7) 

			lasr[8][lasr[6]].Parent = m 
			lasr[8][lasr[6]].CFrame = lasr[7][lasr[6]].CFrame 
			lasr[10][lasr[6]].Scale = Vector3.new(1.3,(lasr[3] - enz).magnitude*5 + 0.02,1.3) 

			lasr[3] = enz 
			lasr[6] = lasr[6]%#lasr[7] + 1 

			if hitz then 
				lasr[4] = lasr[4] + 1 
				if lasr[4] == maxRebounds then 
					lasr[1] = false 
				so("http://www.roblox.com/asset/?id=200633327", hitz, 1, 2)
                damage(hitz.Parent:WaitForChild("Torso"), math.random(5,10), math.random(10,20), 5, 1, RootPart)
                print(ReboundCount)
				else 
					local norm = FindSurface(hitz,enz) 
					lasr[2] = Reflect(lasr[2],norm)
				so("http://www.roblox.com/asset/?id=200633327", hitz, 1, 2) 
				damage(hitz.Parent:WaitForChild("Torso"), math.random(5,10), math.random(10,20), 5, 1, RootPart)
				print(ReboundCount)
				end 
			end 
			if lasr[5] > maxTravelDistance then 
				lasr[1] = false 
			end 
		end 
	end 
end)