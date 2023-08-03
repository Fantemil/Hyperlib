--FE da feets
--credit to Ice & Fire#0001                (i just converted it. its a useless script for me.)
--Reanimate
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
    if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
    game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(-30,0,0)
    end)
end
end
Bypass = "death"
loadstring(game:GetObjects("rbxassetid://5325226148")[1].Source)()






--// SHORTCUTS \\--
local RNG = (function()
    local RNG = Random.new();
    return function(min,max,int)
        return int and RNG:NextInteger(min,max) or RNG:NextNumber(min,max)
    end;
end)();
local S = setmetatable({},{__index = function(s,i) return game:service(i) end})
local CF = {
	N=CFrame.new;
	A=CFrame.Angles;
	fEA=CFrame.fromEulerAnglesXYZ;
}
local C3 = {
	N=Color3.new;
	RGB=Color3.fromRGB;
	HSV=function(...)local data={...}if(typeof(data)=='Color3')then return Color3.toHSV(...)else return Color3.fromHSV(...)end;end;
}
local V3 = {
	N=Vector3.new;
	FNI=Vector3.FromNormalId;
	A=Vector3.FromAxis;
}
local M = {
	C=math.cos;
	R=math.rad;
	S=math.sin;
	T=math.tan;
	AT=math.atan;
	AT2=math.atan2;
	AS=math.asin;
	AC=math.acos;
	A=math.abs;
	F=math.floor;
	CE=math.ceil;
	P=math.pi;
	RNG=RNG;
	H=math.huge;
	RRNG=function(...) return math.rad(RNG(...)) end
}
local R3 = Region3.new
local De = S.Debris
local WS = workspace
local Lght = S.Lighting
local RepS = S.ReplicatedStorage
local IN = Instance.new
local Plrs = S.Players

--// INITIALIZATION \\--
local Plr = Plrs.LocalPlayer
print(Plr)
local Char = game.workspace.non
local Hum = Char:FindFirstChildOfClass'Humanoid'
assert(Hum and Hum.RigType==Enum.HumanoidRigType.R6,"You need to have a valid Humanoid instance! (Exising and R6)")
local Head = Char.Head
local RArm = Char["Right Arm"]
local LArm = Char["Left Arm"]
local RLeg = Char["Right Leg"]
local LLeg = Char["Left Leg"]	
local Torso= Char.Torso
local Root = Char.HumanoidRootPart
local NeutralAnims = true
local Attack = false
local legAnims = true
local Mouse = Plr:GetMouse()
local EffectFolder=Instance.new("Folder")
EffectFolder.Name='Effects'
EffectFolder.Parent=Char

local Movement = 10
local Sine = 0;
local Change = 1;
local wsVal = 6

--// INSTANCE CREATORS \\--
local baseSound = IN("Sound")
function Sound(parent,id,pitch,volume,looped,effect,autoPlay)
	local Sound = baseSound:Clone()
	Sound.SoundId = "rbxassetid://".. tostring(id or 0)
	Sound.Pitch = pitch or 1
	Sound.Volume = volume or 1
	Sound.Looped = looped or false
	if(autoPlay)then
		coroutine.wrap(function()
			repeat wait() until Sound.IsLoaded
			Sound.Playing = autoPlay or false
		end)()
	end
	if(not looped and effect)then
		Sound.Stopped:connect(function()
			Sound.Volume = 0
			Sound:destroy()
		end)
	elseif(effect)then
		warn("Sound can't be looped and a sound effect!")
	end
	Sound.Parent =parent or workspace
	return Sound
end
function Part(parent,color,material,size,cframe,anchored,cancollide)
	local part = IN("Part")
	part[typeof(color) == 'BrickColor' and 'BrickColor' or 'Color'] = color or C3.N(0,0,0)
	part.Material = material or Enum.Material.SmoothPlastic
	part.TopSurface,part.BottomSurface=10,10
	part.Size = size or V3.N(1,1,1)
	part.CFrame = cframe or CF.N(0,0,0)
	part.CanCollide = cancollide or false
	part.Anchored = anchored or false
	part.Parent = parent
	return part
end

function Weld(part0,part1,c0,c1)
	local weld = IN("Weld")
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C0 = c0 or CF.N()
	weld.C1 = c1 or CF.N()
	weld.Parent = part0
	return weld
end

function Mesh(parent,meshtype,meshid,textid,scale,offset)
	local part = IN("SpecialMesh")
	part.MeshId = meshid or ""
	part.TextureId = textid or ""
	part.Scale = scale or V3.N(1,1,1)
	part.Offset = offset or V3.N(0,0,0)
	part.MeshType = meshtype or Enum.MeshType.Sphere
	part.Parent = parent
	return part
end

function SoundPart(id,pitch,volume,looped,effect,autoPlay,cf)
	local soundPart = Part(EffectFolder,C3.N(1,1,1),Enum.Material.SmoothPlastic,V3.N(.05,.05,.05),cf,true,false)
	soundPart.Transparency=1
	local Sound = IN("Sound")
	Sound.SoundId = "rbxassetid://".. tostring(id or 0)
	Sound.Pitch = pitch or 1
	Sound.Volume = volume or 1
	Sound.Looped = looped or false
	if(autoPlay)then
		coroutine.wrap(function()
			repeat wait() until Sound.IsLoaded
			Sound.Playing = autoPlay or false
		end)()
	end
	if(not looped and effect)then
		Sound.Stopped:connect(function()
			Sound.Volume = 0
			soundPart:destroy()
		end)
	elseif(effect)then
		warn("Sound can't be looped and a sound effect!")
	end
	Sound.Parent = soundPart
	return Sound
end

function Joint(name,part0,part1,c0,c1,type)
	local joint = IN(type or "Motor6D")
	joint.Part0 = part0
	joint.Part1 = part1
	joint.C0 = c0 or CF.N()
	joint.C1 = c1 or CF.N()
	joint.Parent=part0
	joint.Name=name or part0.." to "..part1.." "..joint.ClassName
	return joint
end

function Animate(joint,c0,alpha,style,dir)
	if(style=='Lerp')then
		joint.C0 = joint.C0:lerp(c0,alpha)
	else
		local info = TweenInfo.new(alpha or 1,style or Enum.EasingStyle.Linear,dir or Enum.EasingDirection.Out,0,false,0)
		local tween = S.TweenService:Create(joint,info,{C0=c0})
		tween:Play();
		return tween;
	end
end

function NewInstance(instance,parent,properties)if(properties.Parent)then properties.Parent=parent end;local new = IN(instance)if(properties)then for prop,val in next, properties do pcall(function() new[prop]=val end)end;end;new.Parent=parent;return new;end

function GetAdjacentParts(part)
	local function createLargerHitbox(part)
		local n = 0.2
		local clone = part:Clone()
		
		clone.Transparency = .8
		clone.BrickColor = BrickColor.Red()
		clone.Size = clone.Size + Vector3.new(n, n, n)
		clone.Name = "hitbox"
		clone.CFrame = part.CFrame
		clone.Anchored=true
		clone.CanCollide=true
		
		if (clone:IsA("WedgePart")) then
			clone.Size = clone.Size + Vector3.new(0, n, n)
			clone.CFrame = part.CFrame * CFrame.new(0, n / 2, -n /2)
		end
		
		if (clone:IsA("CornerWedgePart")) then
			clone.Size = clone.Size + Vector3.new(n, n, n)
			clone.CFrame = part.CFrame * CFrame.new(-n / 2, n / 2, n / 2)
		end
		clone.Parent = part
		
		return clone
	end
	
	local hitbox = createLargerHitbox(part)
	local touchingParts = hitbox:getTouchingParts()
	hitbox:Destroy()
	
	return (function()
		local adjacent={}
		for _,v in next, touchingParts do if(v~=part)then table.insert(adjacent,v)end;end
		return adjacent;
	end)()
end
--// CUSTOMIZABLE VARIABLES \\--

local DamageColor = BrickColor.new'Really red';
local MusicData = {Parent=Torso,ID=2666435584;Pitch=1;Volume=5;}
local God = false
local WalkSpeed = 50

local Music = Sound(MusicData.Parent,MusicData.ID,MusicData.Pitch,MusicData.Volume,true,false,true)
Music.Name = 'Music'

--// JOINTS \\--

local RJ = Joint("RootJoint",Root,Torso,CF.N(),CF.N())
local NK = Joint("Neck",Torso,Head,CF.N(0,1.5,0),CF.N())
local LS = Joint("Left Shoulder",Torso,LArm,CF.N(-.5,-2,0),CF.N(0,.5,0))
local RS = Joint("Right Shoulder",Torso,RArm,CF.N(.5,-2,0),CF.N(0,.5,0))
local LH = Joint("Left Hip",Torso,LLeg,CF.N(0,0,0),CF.N(0,0,0))
local RH = Joint("Right Hip",Torso,RLeg,CF.N(0,0,0),CF.N(0,0,0))

--Torso.Anchored = true

local LSC0 = LS.C0
local RSC0 = RS.C0
local NKC0 = NK.C0
local LHC0 = LH.C0
local RHC0 = RH.C0
local RJC0 = RJ.C0

--// Artificial HB \\--

local ArtificialHB = IN("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

local tf = 0
local allowframeloss = false
local tossremainder = false
local lastframe = tick()
local frame = 1/60
ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
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

function swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 0, num do
			ArtificialHB.Event:wait()
		end
	end
end

--// STOP ANIMATIONS \\--
for _,v in next, Hum:GetPlayingAnimationTracks() do
	v:Stop();
end

pcall(game.Destroy,Char:FindFirstChild'Animate')
pcall(game.Destroy,Hum:FindFirstChild'Animator')

--// EFFECT FUNCTIONS \\--



local fromaxisangle = function(x, y, z) -- credit to phantom forces devs
	if not y then
		x, y, z = x.x, x.y, x.z
	end
	local m = (x * x + y * y + z * z) ^ 0.5
	if m > 1.0E-5 then
		local si = math.sin(m / 2) / m
		return CFrame.new(0, 0, 0, si * x, si * y, si * z, math.cos(m / 2))
	else
		return CFrame.new()
	end
end

function fakePhysics(elapsed,cframe,velocity,rotation,acceleration)
	local pos = cframe.p
	local matrix = cframe-pos
	return fromaxisangle(elapsed*rotation)*matrix+pos+elapsed*velocity+elapsed*elapsed*acceleration
end

function CastRay(startPos,endPos,range,ignoreList)
	local ray = Ray.new(startPos,(endPos-startPos).unit*range)
	local part,pos,norm = workspace:FindPartOnRayWithIgnoreList(ray,ignoreList or {},false,true)
	return part,pos,norm,(pos and (startPos-pos).magnitude)
end

function GetTorso(char)
	return char:FindFirstChild'Torso' or char:FindFirstChild'UpperTorso' or char:FindFirstChild'LowerTorso' or char:FindFirstChild'HumanoidRootPart'
end

function Projectile(data)
	local Size = data.Size or 1;
	local Origin = data.Origin or CFrame.new();
	local Velocity = data.Velocity or Vector3.new(0,100,0);
	local Gravity = data.Gravity or workspace.Gravity;
	local Color = data.Color or Color3.new(.7,0,0);
	local Lifetime = data.Lifetime or 1;
	local Material = data.Material or Enum.Material.Glass;
	local ignore = data.Ignorelist or {Char};
	local Init = data.Init;
	local Update = data.Update;
	local HitFunc = data.Hit;
	local ShouldCollide = data.BeforeCollision;
	local DeleteOnHit = not not data.DeleteOnHit;
	local ProjectilePart = data.Projectile or nil;
	local Look = data.AimAtPos or false;
	local drop = ProjectilePart or Part(nil,Color,Material,Vector3.new(Size,Size,Size),Origin,true,false)
	local StartTravel = tick()
	local currCF = data.Origin
	if(not ProjectilePart)then
		Mesh(drop,Enum.MeshType.Sphere)
		drop.Parent=EffectFolder
	end
	drop.Material = Material
	drop.Color = Color
	drop.CFrame=Origin
	local object=setmetatable({Part=drop},{
		__newindex=function(s,i,v)
			if(i=='Gravity')then StartTravel = tick() data.Origin = currCF Origin=currCF data.Gravity = v Gravity=v
			elseif(i=='Velocity')then StartTravel = tick() data.Origin = currCF Origin=currCF data.Velocity = v Velocity=v
			elseif(i=='Lifetime')then data.Lifetime = v Lifetime=v 
			elseif(i=='Ignorelist')then data.Ignorelist = v ignore=v
			elseif(i=='DeleteOnHit')then data.DeleteOnHit = v DeleteOnHit=v 
			else
				pcall(function()
					drop[i]=v
				end)
			end
		end;
		__index=data;
	})
	
	
	if(Init)then
		Init(drop)
	end
	local startTick = tick();
	coroutine.wrap(function()
		while true do
			local elapsed = tick()-startTick
			local trElapsed = tick()-StartTravel
			if(elapsed>Lifetime)then
				drop:destroy();
				break
			end
			local newCF = fakePhysics(trElapsed,Origin,Velocity,Vector3.new(),Vector3.new(0,-Gravity,0))
			local nextCF = fakePhysics(trElapsed+.05,Origin,Velocity,Vector3.new(),Vector3.new(0,-Gravity,0))
			local dist = (drop.Position-newCF.p).magnitude
			local hit,pos,norm = CastRay(drop.Position,newCF.p,dist,ignore)
			currCF=newCF
			local doCollide = hit and (GetTorso(hit.Parent) or hit.CanCollide) and (not ShouldCollide or ShouldCollide(hit))
			if(hit and not doCollide)then table.insert(ignore,hit) end
			if(Look)then
				drop.CFrame = CFrame.new(newCF.p,nextCF.p)
			else
				drop.CFrame = CFrame.new(newCF.p)
			end
			if(Update)then Update(drop,object,elapsed) end
			if(doCollide)then
				if(DeleteOnHit or not HitFunc)then drop:destroy() end
				if(HitFunc)then if(HitFunc(hit,pos,norm,object,drop))then break end end
			end
			if(not drop.Parent)then
				break
			end
			swait()
		end
	end)()
	return object
	end
	
function Chat(txt,timer,clr)
	if(Head:FindFirstChild'Chattie' and Head.Chattie:FindFirstChild'Killchat')then
		Head.Chattie.Killchat.Value=true
	elseif(Head:FindFirstChild'Chattie')then
		Head.Chattie:destroy()
	end
	local nig = V3.N(0,0,0)
	local clr = (typeof(clr)=='BrickColor' and clr.Color or typeof(clr)=='Color3' and clr or C3.N(1,1,1))
	local bg = NewInstance("BillboardGui",Head,{
		Name='Chattie';
		Adornee=Head;
		LightInfluence=0;
		Size=UDim2.new(4,0,2,0);
	})
	local dismiss = NewInstance("BoolValue",bg,{
		Name='Killchat';
	})
	
	local text = NewInstance("TextLabel",bg,{
		BackgroundTransparency=1;
		Size=UDim2.new(1,0,1,0);
		Font=Enum.Font.Fantasy;
		Text=txt;
		TextColor3=clr;
		TextStrokeColor3=C3.N(0,0,0);
		TextScaled=true;
		TextTransparency=0;
		TextStrokeTransparency=.5;
	})
	coroutine.wrap(function()
		for i = 1, 0, -.02 do
			bg.StudsOffsetWorldSpace=nig:lerp(nig+V3.N(0,3,0),EasingFunctions.outBack(1-i,0,1,1,6))
			if(dismiss.Value)then break end
			swait()
		end
		local start = tick()
		nig=bg.StudsOffsetWorldSpace
		repeat swait() until dismiss.Value or tick()-start>=timer
		bg.Name='DismissingChat'
		for i = 0, 1, .05 do
			bg.StudsOffsetWorldSpace=nig:lerp(nig+V3.N(0,2,0),EasingFunctions.linear(i,0,1,1))
			text.TextTransparency=i;
			text.TextStrokeTransparency=.5+i/2;
			swait()
		end
		bg:destroy()
	end)()
end

function ShowDamage(pos,txt,timer,clr)
	local nig = typeof(pos)=='Vector3' and CF.N(pos) or pos
	local part = Part(EffectFolder,clr,Enum.Material.SmoothPlastic,V3.N(.05,.05,.05),nig,true,false)
	part.Transparency=1
	local bg = NewInstance("BillboardGui",part,{
		Adornee=part;
		LightInfluence=0;
		Size=UDim2.new(2,0,1,0);
	})
	local text = NewInstance("TextLabel",bg,{
		BackgroundTransparency=1;
		Size=UDim2.new(1,0,1,0);
		Font=Enum.Font.Fantasy;
		Text=txt;
		TextColor3=part.Color;
		TextStrokeColor3=C3.N(0,0,0);
		TextScaled=true;
		TextTransparency=1;
		TextStrokeTransparency=1;
	})
	coroutine.wrap(function()
		for i = 1, 0, -.02 do
			part.CFrame=nig:lerp(nig+V3.N(0,3,0),EasingFunctions.outBack(1-i,0,1,1,6))
			text.TextTransparency=i;
			text.TextTransparency=text.TextTransparency-.02;
			text.TextStrokeTransparency=text.TextStrokeTransparency-.01;
			swait()
		end
		local start = tick()
		repeat swait() until tick()-start>=timer
		local endRot=M.RNG(-25,25)
		for i = 0, 1, .02 do
			part.CFrame=(nig+V3.N(0,3,0)):lerp(nig+V3.N(0,-10,0),EasingFunctions.inBack(i,0,1,1,6))
			text.TextTransparency=i;
			text.TextTransparency=text.TextTransparency+.02;
			text.TextStrokeTransparency=text.TextStrokeTransparency+.01;
			swait()
		end
		part:destroy()
	end)()
end

function CamshakePlayer(p,settings)
	local sh = script:WaitForChild'CamShake':Clone()	
	local optionFolder = sh:WaitForChild'Options'
	for _,v in next, optionFolder:children() do
		if(settings[v.Name])then
			v.Value=settings[v.Name]
		end
	end
	local originVal;
	if(typeof(settings.Origin)=='Vector3')then
		originVal=IN("Vector3Value")
	elseif(typeof(settings.Origin)=='CFrame')then
		originVal=IN("CFrameValue")
	elseif(typeof(settings.Origin)=='Instance')then
		originVal=IN("ObjectValue")
	end
	if(originVal)then
		originVal.Name = 'Origin'
		originVal.Value = settings.Origin
		originVal.Parent=optionFolder
	end
	local parent = p.Character or p:FindFirstChildOfClass'Backpack' or p:FindFirstChildOfClass'PlayerGui'
	if(parent)then
		local nig = sh:Clone();
		nig.Parent=parent
		nig.Disabled=false
		S.Debris:AddItem(nig,(settings.Duration or 2)+1)
	end
end

function Camshake(settings)
	for _,p in next, game:service'Players':players() do
		CamshakePlayer(p,settings)
	end
end
function Tween(object,properties,time,style,dir,repeats,reverse,delay)
	local info = TweenInfo.new(time or 1,style or Enum.EasingStyle.Linear,dir or Enum.EasingDirection.Out,repeats or 0,reverse or false,delay or 0)
	local tween = S.TweenService:Create(object,info,properties)
	tween:Play()
	return tween;
end

local function numLerp(Start,Finish,Alpha)
    return Start + (Finish- Start) * Alpha
end
function IsValidEnum(val,enum,def)
	local enum = Enum[tostring(enum)]
	local succ,err=pcall(function() return enum[val.Name] end)
	if(not err)then
		return val
	else
		return def
	end
end

function IsValid(val,type,def)
	if(typeof(type)=='string')then
		return (typeof(val)==type and val or def)
	elseif(typeof(type)=='table')then
		for i,v in next, type do
			if(typeof(val)==v)then
				return val
			end
		end
	end
	return def
end

local FXInformation = {}
function EffectFunc(data)
	if(typeof(data)=='Instance' and data:IsA'ModuleScript')then	data=require(data)end
	assert(typeof(data)=='table',"Expected 'table' calling EffectFunc")
	data.Parent=EffectFolder
	if(data.BeamEffect)then
		return Slash(data)
	end
	
	local Lifetime = data.Lifetime or 1;
	local Color = data.Color or Color3.new(1,1,1)
	local EndColor = data.EndColor
	local Size = data.Size or Vector3.new(1,1,1)
	local EndSize = data.EndSize
	local Transparency = data.Transparency or 0
	local EndTransparency = data.EndTransparency or 1
	local Material = data.Material or Enum.Material.Neon;
	local Part = typeof(data.RefPart)=='Instance' and data.RefPart or typeof(data.RefPart)=='string' and FXFolder:FindFirstChild(data.RefPart);
	local CF = data.CFrame or CFrame.new(0,10,0)
	local EndCF = data.EndCFrame or data.EndPos
	local Mesh = data.MeshData or data.Mesh or {MeshType=Enum.MeshType.Brick}
	local Rotation = data.Rotation or {0,0,0}
	local UpdateCF = data.UpdateCFrame;
	local Update = data.Update;
	
	local CSQ,SSQ,TSQ,CFQ;
	if(typeof(Color)=='BrickColor')then Color = Color.Color end
	if(typeof(EndColor)=='BrickColor')then EndColor = EndColor.Color end
	if(typeof(Color)=='ColorSequence')then
		CSQ = Color
	elseif(typeof(Color)=='Color3' and typeof(EndColor)=='Color3')then
		CSQ = ColorSequence.new(Color,EndColor)
	elseif(typeof(Color)=='Color3')then
		CSQ = ColorSequence.new(Color)
	else
		CSQ = ColorSequence.new(Color3.new(1,1,1))
	end
	
	
	if(typeof(Size)=='table' and Size.Keypoints and typeof(Size.Keypoints[1].Value)=='Vector3')then
		SSQ = Size
	elseif(typeof(Size)=='Vector3' and typeof(EndSize)=='Vector3')then
		SSQ = Vector3Sequence.new(Size,EndSize)
	elseif(typeof(Size)=='Vector3')then
		SSQ = Vector3Sequence.new(Size)
	else
		SSQ = Vector3Sequence.new(Vector3.new(1,1,1))
	end
	
	if(typeof(CF)=='table' and CF.Keypoints and typeof(CF.Keypoints[1].Value)=='CFrame')then
		CFQ = CF
	elseif(typeof(CF)=='CFrame' and typeof(EndCF)=='CFrame')then
		CFQ = CFrameSequence.new(CF,EndCF)
	elseif(typeof(CF)=='CFrame')then
		CFQ = CFrameSequence.new(CF)
	else
		CFQ = CFrameSequence.new(CFrame.new(0,10,0))
	end
		
	if(typeof(Transparency)=='NumberSequence')then
		TSQ = Transparency
	elseif(typeof(Transparency)=='number' and typeof(EndTransparency)=='number')then
		TSQ = NumberSequence.new(Transparency,EndTransparency)
	elseif(typeof(Transparency)=='number')then
		TSQ = NumberSequence.new(Transparency)
	else
		TSQ = NumberSequence.new(0,1)
	end
	
	
	local part,mesh;
	if(not Part or not Part:IsA'BasePart')then
		part = Instance.new("Part")
		mesh = Instance.new("SpecialMesh",part)
	else
		part=Part:Clone();
		mesh=part:FindFirstChildOfClass'DataModelMesh'
	end
	part.Color = CSQ.Keypoints[1].Value
	part.Transparency = TSQ.Keypoints[1].Value
	part.Size = (not mesh and SSQ.Keypoints[1].Value or Vector3.new(1,1,1))
	part.Anchored = true
	part.CanCollide = false
	part.CFrame = CFQ.Keypoints[1].Value
	part.Material = Material
	part.Locked = true
	part.Parent = EffectFolder
	if(mesh)then
		mesh.Scale = SSQ.Keypoints[1].Value
		mesh.MeshType = Mesh.MeshType or Mesh.Type or Enum.MeshType.Brick
		mesh.MeshId = Mesh.MeshId or Mesh.Id or ""
		mesh.TextureId = Mesh.TextureId or Mesh.Texture or ""
	end
	game:service'Debris':AddItem(part,Lifetime*1.5)
	table.insert(FXInformation,{
		Part=part;
		Mesh=mesh;
		Lifetime=Lifetime;
		Create=tick();
		ColorSeq=CSQ;
		SizeSeq=SSQ;
		TranSeq=TSQ;
		CFSeq=CFQ;
		ColorPoint=CSQ.Keypoints[1];
		SizePoint=SSQ.Keypoints[1];
		TranPoint=TSQ.Keypoints[1];
		CFPoint=CFQ.Keypoints[1];
		Rotation=Rotation;
		CurrRot=CFrame.new();
		UpdateCF=(typeof(UpdateCF)=='function' and UpdateCF or typeof(UpdateCF)=='Instance' and UpdateCF:IsA'ModuleScript' and require(UpdateCF) or nil);
		OnUpdate=(typeof(Update)=='function' and Update or typeof(Update)=='Instance' and Update:IsA'ModuleScript' and require(Update) or nil)
	})
end

function GetKeyframe(sequence,currentTime,lifeTime)
	local scale = currentTime/lifeTime
	for i = 1,#sequence.Keypoints do
		local keyframe = sequence.Keypoints[i]
		local nframe = sequence.Keypoints[i+1]
		if(not nframe or keyframe.Time>=scale and keyframe.Time<nframe.Time)then
			return keyframe
		end
	end
	return sequence.Keypoints[1];
end;

coroutine.wrap(function()
	while true do
		swait()
		local queue={}
		for i,dat in next, FXInformation do
			local part,mesh,lifetime,created,csq,ssq,tsq,cfq,rot,ucf,upd = 
																	dat.Part,
																	dat.Mesh,
																	dat.Lifetime,
																	dat.Create,
																	dat.ColorSeq,
																	dat.SizeSeq,
																	dat.TranSeq,
																	dat.CFSeq,
																	dat.Rotation,
																	dat.UpdateCF,
																	dat.OnUpdate;
			local current = tick();
			local elapsed = tick()-created
			local currentcpoint = GetKeyframe(csq,elapsed,lifetime)
			local currentspoint = GetKeyframe(ssq,elapsed,lifetime)
			local currenttpoint = GetKeyframe(tsq,elapsed,lifetime)
			local currentcfpoint = GetKeyframe(cfq,elapsed,lifetime)
			
			local currentcolor = currentcpoint.Value
			local currenttrans = currenttpoint.Value
			local currentsize = currentspoint.Value
			local currentcf = currentcfpoint.Value
			
			if(currentcpoint~=dat.ColorPoint)then
				Tween(part,{Color=currentcolor},(currentcpoint.Time-dat.ColorPoint.Time)*lifetime)
				dat.ColorPoint=currentcpoint
			end
			if(currenttpoint~=dat.TranPoint)then
				Tween(part,{Transparency=currenttrans},(currenttpoint.Time-dat.TranPoint.Time)*lifetime)
				dat.TranPoint=currenttpoint
			end
			if(currentspoint~=dat.SizePoint)then
				if(mesh)then
					Tween(mesh,{Scale=currentsize},(currentspoint.Time-dat.SizePoint.Time)*lifetime)
				else
					Tween(part,{Size=currentsize},(currentspoint.Time-dat.SizePoint.Time)*lifetime)
				end
				
				dat.SizePoint=currentspoint
			end
			local newRot={0,0,0}
			if(rot=='random')then
				dat.CurrRot = CFrame.Angles(math.rad(Random.new():NextInteger(0,360)),math.rad(Random.new():NextInteger(0,360)),math.rad(Random.new():NextInteger(0,360)))
			elseif(typeof(rot)=='table')then
				dat.CurrRot = dat.CurrRot*CFrame.Angles(math.rad(rot[1]),math.rad(rot[2]),math.rad(rot[3]))
			end
			if(ucf and typeof(ucf)=='function')then
				part.CFrame=ucf(dat)
			elseif(#cfq.Keypoints==2)then
				part.CFrame=cfq.Keypoints[1].Value:lerp(cfq.Keypoints[2].Value,elapsed/lifetime)*dat.CurrRot
			else
				if(currentcfpoint~=dat.CFPoint)then
					Tween(part,{CFrame=currentcf},(currentcfpoint.Time-dat.CFPoint.Time)*lifetime)
					dat.CFPoint=currentcfpoint
				end
			end
			if(typeof(upd)=='function')then upd(dat) end
			if(not part or not part.Parent)then
				table.insert(queue,tostring(i))
			end
			if(elapsed>=lifetime)then
				part:destroy()
			end
		end
		for _,v in next, queue do FXInformation[tonumber(v)]=nil; end
	end
end)()

function Slash(data) -- Credit to Kyu for the basic idea behind it
	local Parent = IsValid(data.Parent,'Instance',workspace)
	local Color = IsValid(data.Color,{'Color3','BrickColor'},Color3.new(1,1,1))
	local Width = IsValid(data.Width,'number',2);
	local EndWidth = IsValid(data.EndWidth,'number',0);
	local Length = IsValid(data.Length,'number',1);
	local EndLength = IsValid(data.EndLength,'number',Length*2);
	local Curve = IsValid(data.Curve,"number",2);
	local EndCurve = IsValid(data.EndCurve,"number",Curve*2);
	local SCFrame = IsValid(data.CFrame,'CFrame',CFrame.new(0,10,0))
	local Lifetime = IsValid(data.Lifetime,'number',.25)
	local Offset = IsValid(data.Offset,'CFrame',CFrame.new())
	local Style = IsValidEnum(IsValid(data.EasingStyle,'EnumItem',Enum.EasingStyle.Quad),Enum.EasingStyle,Enum.EasingStyle.Quad)
	local Direction = IsValidEnum(IsValid(data.EasingDirection,'EnumItem',Enum.EasingDirection.Out),Enum.EasingDirection,Enum.EasingDirection.Out)
	local Delay = IsValid(data.Delay,'number',0)
	local BeamProperties = IsValid(data.BeamProps,'table',{})
	local FadeAway = IsValid(data.Fades,'boolean',false)
	local FadeStyle = IsValidEnum(IsValid(data.FadeStyle,'EnumItem',Enum.EasingStyle.Linear),Enum.EasingStyle,Enum.EasingStyle.Linear)
	local FadeDir = IsValidEnum(IsValid(data.FadeDirection,'EnumItem',Enum.EasingDirection.Out),Enum.EasingDirection,Enum.EasingDirection.Out)
	local CSQ;
	local TSQ;
	if(typeof(Color)=='ColorSequence')then
		CSQ = Color
	elseif(typeof(Color)=='Color3')then
		CSQ = ColorSequence.new(Color)
	elseif(typeof(Color)=='BrickColor')then
		CSQ = ColorSequence.new(Color.Color)
	else
		CSQ = ColorSequence.new(Color3.new(1,1,1))
	end
	
	local P = Part(Parent,Color,Enum.Material.SmoothPlastic,Vector3.new(0,0,0),SCFrame,true,false)
	P.Transparency = 1
	local A0 = Instance.new("Attachment")
	local A1 = Instance.new("Attachment")
	A0.Position = Vector3.new(0,0,Length)
	A1.Position = Vector3.new(0,0,-Length)
	A0.Parent=P
	A1.Parent=P
	local Beam = Instance.new("Beam")
	Beam.Attachment0=A0
	Beam.Attachment1=A1
	Beam.FaceCamera=true
	Beam.LightInfluence=BeamProperties.LightInfluence or 0
	Beam.LightEmission=BeamProperties.LightEmission or 1
	for i,v in next, BeamProperties do
		pcall(function() Beam[i]=v end)
	end
	Beam.Color = CSQ
	Beam.CurveSize0 = Curve
	Beam.CurveSize1 = -Curve
	Beam.Width0=Width
	Beam.Width1=Width
	Beam.Parent=P
	local ti = {Lifetime,Style,Direction,0,false,Delay}
	Tween(P,{CFrame = SCFrame*Offset},unpack(ti))
	Tween(Beam,{Width0=EndWidth,Width1=EndWidth,CurveSize0=EndCurve,CurveSize1=-EndCurve},unpack(ti))
	Tween(A0,{Position=Vector3.new(0,0,EndLength)},unpack(ti))
	Tween(A1,{Position=Vector3.new(0,0,-EndLength)},unpack(ti)).Completed:connect(function() P:destroy() end)
	if(FadeAway)then
		local part = Instance.new("Part")
		part.Transparency = Beam.Transparency.Keypoints[1].Value or 0
		Tween(part,{Transparency=1},Lifetime,FadeStyle,FadeDir,0,false,Delay)
		repeat swait()
			Beam.Transparency=NumberSequence.new(part.Transparency)
		until not P.Parent
	end
end

local EffectInfo={}
function Effect(data)
	local color = data.Color or Color3.new(1,1,1);
	local transparency = data.Transparency or {0,1}
	local lifetime = data.Lifetime or 1
	local cframe = data.CFrame or CFrame.new(0,10,0)
	local acceleration = data.Acceleration or Vector3.new(0,0,0)
	local endpos = data.EndPos
	local rotation = data.Rotation or {0,0,0}
	local meshData = data.Mesh or {Type=Enum.MeshType.Brick}
	local size = data.Size or Vector3.new(1,1,1)
	local material = data.Material or Enum.Material.Neon
	local setpart = typeof(data.Part)=='string' and FXFolder:FindFirstChild(tostring(data.Part)):Clone() or typeof(data.Part)=='Instance' and data.Part or nil
	local endSize = data.EndSize or size
	local reverse = data.Reverse or 0
	local sizeTween = data.TweenSize and EasingFunctions[data.TweenSize];
	local moveTween = data.TweenPos and EasingFunctions[data.TweenPos];
	local transTween = data.TweenTrans and EasingFunctions[data.TweenTrans];
	local accelTween = data.TweenAccel and EasingFunctions[data.TweenAccel];
	if(endSize and typeof(size)=='Vector3')then size={size,endSize} end
	if(typeof(size)=='Vector3')then size={size,size}end
	if(typeof(transparency)=='number')then transparency={transparency,transparency} end
	if(typeof(color)=='BrickColor')then color=color.Color end
	
	local PM;
	
	local part = setpart or Part(nil,color,material,Vector3.new(1,1,1),cframe,true,false)
	
	if(not part:IsA'MeshPart' and not part:IsA'UnionOperation')then
		local scale = size[1]
		if(meshData == "Blast")then
			PM = Mesh(part,Enum.MeshType.FileMesh,'rbxassetid://20329976','',scale,Vector3.new(0,0,-scale.X/8))
		elseif(meshData == 'Ring')then
			PM = Mesh(part,Enum.MeshType.FileMesh,'rbxassetid://559831844','',scale,Vector3.new(0,0,0))
		elseif(meshData == 'Slash1')then
			PM = Mesh(part,Enum.MeshType.FileMesh,'rbxassetid://662586858','',Vector3.new(scale.X/10,.001,scale.Z/10),Vector3.new(0,0,0))
		elseif(meshData == 'Slash2')then
			PM = Mesh(part,Enum.MeshType.FileMesh,'rbxassetid://448386996','',Vector3.new(scale.X/1000,scale.Y/100,scale.Z/100),Vector3.new(0,0,0))
		elseif(meshData == 'Tornado1')then
			PM = Mesh(part,Enum.MeshType.FileMesh,'rbxassetid://443529437','',scale/10,Vector3.new(0,0,0))
		elseif(meshData == 'Tornado2')then
			PM = Mesh(part,Enum.MeshType.FileMesh,'rbxassetid://168892432','',scale/4,Vector3.new(0,0,0))
		elseif(meshData == 'Skull')then
			PM = Mesh(part,Enum.MeshType.FileMesh,'rbxassetid://4770583','',scale*2,Vector3.new(0,0,0))
		elseif(meshData == 'Crystal')then
			PM = Mesh(part,Enum.MeshType.FileMesh,'rbxassetid://9756362','',scale,Vector3.new(0,0,0))
		elseif(meshData == 'Cloud')then
			PM = Mesh(part,Enum.MeshType.FileMesh,'rbxassetid://1095708','',scale,Vector3.new(0,0,0))
		elseif(typeof(meshData) == 'table' or typeof(meshData) == 'Instance')then
			local Type = meshData.MeshType or meshData.Type or Enum.MeshType.Brick
			local ID = meshData.MeshId or meshData.Mesh or '';
			local Tex = meshData.TextureId or meshData.Texture or '';
			local Offset = meshData.Offset or Vector3.new(0,0,0)
			PM = Mesh(part,Type,ID,Tex,scale,Offset)
		elseif(not part:FindFirstChildOfClass('DataModelMesh'))then
			PM = Mesh(part,Enum.MeshType.Brick,'','',scale)
		else
			PM = part:FindFirstChildOfClass('DataModelMesh')
		end
	end
	
	
	part.Material = material
	part.CFrame = cframe
	part.Color = color
	part.Anchored = true
	part.CanCollide = false
	part.Transparency = transparency[1]
	part.Size = (PM and Vector3.new(1,1,1) or size[1])
	part.Parent = EffectFolder
	
	local start = tick()
	local t0 = tick()
	local t01 = tick()
	local lastTrans='Nil';
	local lastSize='Nil';
	local lastColor='Nil';
	local info = {start,lifetime,t0,transTween,sizeTween,moveTween,accelTween,color,transparency,size,part,PM,rotation,acceleration,endpos,cframe,reverse,acceleration}
	table.insert(EffectInfo,info)
end

coroutine.wrap(function()
	while true do
		swait()
		for i,v in next, EffectInfo do
			local start,lifetime,t0,transTween,sizeTween,moveTween,accelTween,color,transparency,size,part,mesh,rotation,acceleration,endpos,cframe,reverse,startacc=unpack(v)
			local elapsed = tick()-start
			local left = elapsed/lifetime
			local dt = tick()-t0
			t0 = tick()
			if(mesh)then
				mesh.Scale = size[1]:lerp(size[2],(sizeTween and sizeTween(elapsed,0,1,lifetime) or left))
			else
				part.Size = size[1]:lerp(size[2],(sizeTween and sizeTween(elapsed,0,1,lifetime) or left))
			end
			part.Transparency = numLerp(transparency[1],transparency[2],(transTween and transTween(elapsed,0,1,lifetime) or left))
			
			local newRot={0,0,0}
			if(rotation=='random')then
				newRot={math.rad(Random.new():NextInteger(0,360)),math.rad(Random.new():NextInteger(0,360)),math.rad(Random.new():NextInteger(0,360))}
			elseif(typeof(rotation)=='table')then
				local x,y,z=math.rad(rotation[1]),math.rad(rotation[2]),math.rad(rotation[3])
				if(rotation[1]==0)then x=0 end
				if(rotation[2]==0)then y=0 end
				if(rotation[3]==0)then z=0 end
				newRot={x,y,z}
			end
			
			local accelMult=(accelTween and 1-accelTween(elapsed,0,1,lifetime) or 1)

			local accel=(acceleration*dt)
			if(endpos)then
				part.CFrame = cframe:lerp(endpos,(moveTween and moveTween(elapsed,0,1,lifetime) or left))
			elseif(accel and (accel.x~=0 or accel.y~=0 or accel.z~=0))then
				part.CFrame = part.CFrame*CFrame.Angles(unpack(newRot))+(accel*accelMult)
			elseif(newRot and (newRot[1]~=0 or newRot[2]~=0 or newRot[3]~=0))then
				part.CFrame = part.CFrame*CFrame.Angles(unpack(newRot))
			end
			if(reverse>0)then
				acceleration=acceleration-Vector3.new(
					0.05*startacc.x/(reverse/1.5),
					0.05*startacc.y/(reverse/1.5),
					0.05*startacc.z/(reverse/1.5)
				)
			end
			if(elapsed>lifetime)then
				part:destroy()
				EffectInfo[i]=nil
			else
				EffectInfo[i]={start,lifetime,t0,transTween,sizeTween,moveTween,accelTween,color,transparency,size,part,mesh,rotation,acceleration,endpos,cframe,reverse,startacc}
			end
		end
	end
end)()
 
--// MISCELLANEOUS FUNCTIONS \\--
function GetTorso(char)
	return char:FindFirstChild'Torso' or char:FindFirstChild'UpperTorso' or char:FindFirstChild'LowerTorso' or char:FindFirstChild'HumanoidRootPart'
end

function CastRay(startPos,endPos,range,ignoreList)
	local ray = Ray.new(startPos,(endPos-startPos).unit*range)
	local part,pos,norm = workspace:FindPartOnRayWithIgnoreList(ray,ignoreList or {Char},false,true)
	return part,pos,norm,(pos and (startPos-pos).magnitude)
end

function getRegion(point,range,ignore)
    return workspace:FindPartsInRegion3WithIgnoreList(R3(point-V3.N(1,1,1)*range/2,point+V3.N(1,1,1)*range/2),ignore,100)
end

--// DAMAGE, AOE, AND ATTACK FUNCTIONS \\--

function DealDamage(data)
	local Who = data.Who;
	local MinDam = data.MinimumDamage or 15;
	local MaxDam = data.MaximumDamage or 30;
	local MaxHP = data.MaxHP or 1e5; 
	local DamageIsPercentage = data.PercentageDamage or true
	
	local DB = data.Debounce or .2;
	
	local CritData = data.Crit or {}
	local CritChance = CritData.Chance or 0;
	local CritMultiplier = CritData.Multiplier or 1;
	
	
	local OnHitFunc = data.OnHit
	local DeathFunction = data.OnDeath
	
	assert(Who,"Specify someone to damage!")	
	
	local Humanoid = Who:FindFirstChildOfClass'Humanoid'
	local Critical = M.RNG(1,100,true) <= CritChance
	local DoneDamage = M.RNG(MinDam,MaxDam,true) * (Critical and CritMultiplier or 1)
	
	local canHit = true
	if(Humanoid)then
		if(canHit)then
			local HitTorso = GetTorso(Who)
			local player = S.Players:GetPlayerFromCharacter(Who)
			
			if(not player or player.UserId ~= 5719877 and player.UserId ~= 19081129)then
				if(Humanoid.MaxHealth >= MaxHP and Humanoid.Health > 0)then
					print'Got kill'
					Humanoid.Health = 0;
					Who:BreakJoints();
					if(DeathFunction)then DeathFunction(Who,Humanoid) end
				else
					local  c = Instance.new("ObjectValue",Hum)
					c.Name = "creator"
					c.Value = Plr
					S.Debris:AddItem(c,0.35)	
					if(Who:FindFirstChild'Head' and Humanoid.Health > 0)then
						ShowDamage((Who.Head.CFrame * CF.N(0, 0, (Who.Head.Size.Z / 2)).p+V3.N(0,1.5,0)+V3.N(M.RNG(-2,2),0,M.RNG(-2,2))), DoneDamage, 1.5, DamageColor)
					end
					local DoneDamage = DoneDamage*(DamageIsPercentage and Humanoid.MaxHealth/100 or 1)
					if(Humanoid.Health > 0 and Humanoid.Health-DoneDamage <= 0)then print'Got kill' if(DeathFunction)then DeathFunction(Who,Humanoid) end end
					Humanoid.Health = Humanoid.Health - DoneDamage
					if(OnHitFunc)then
						OnHitFunc(Who,HitTorso)
					end
				end
			end
		end
	end		
end

function AoE(where,range,func)
	local hit = {}
	for _,v in next, getRegion(where,range,{Char}) do
		local hum = (v.Parent and v.Parent:FindFirstChildOfClass'Humanoid')
		if(hum and not hit[hum])then
			hit[hum] = true
			func(v.Parent,hum)
		end
	end
	return hit
end

function AoEDamage(where,range,data)
	AoE(where,range,function(c,h)
		data.Who=c
		DealDamage(data)
	end)
end

--// EVERYTHING ELSE \\--

function Knockback(velocity,decay)
	return function(w,t)
		local BV = IN("BodyVelocity")
		BV.P=20000
		BV.MaxForce=V3.N(M.H,M.H,M.H)
		BV.Velocity=velocity or V3.N(0,25,0)+(Root.CFrame.lookVector*25)
		BV.Parent=t
		S.Debris:AddItem(BV,decay or .5)
	end
end

S.UserInputService.InputBegan:connect(function(io,gpe)
	if(gpe or Attack)then return end
end)


while true do
	swait()
	Sine=Sine+Change
	if(not Music or not Music.Parent)then
		local tp = (Music and Music.TimePosition)
		Music = Sound(MusicData.Parent,MusicData.ID,MusicData.Pitch,MusicData.Volume,true,false,true)
		Music.Name = 'Music'
		Music.TimePosition = tp
	end
	Music.SoundId = "rbxassetid://"..MusicData.ID
	Music.Parent = MusicData.Parent
	Music.Pitch = MusicData.Pitch
	Music.Volume = MusicData.Volume
	
	
	local Hit,Pos = CastRay(Root.Position,Root.Position-V3.N(0,1,0),4)
	local Walking = game.Players.LocalPlayer.Character.Humanoid.MoveDirection.magnitude>0
	local State = (not Hit and Root.Velocity.Y<-1 and 'Fall' or not Hit and Root.Velocity.Y>1 and 'Jump' or Walking and "Walk" or "Idle")
	if(not EffectFolder or EffectFolder.Parent~=Char)then
		EffectFolder=Instance.new("Folder")
		EffectFolder.Name='Effects'
		EffectFolder.Parent=Char
	end
	
	--I know this looks like jl's
	--It's more inspired by my old one which is a modified ver of Kyu's, but replacing Root.Velocity with Hum.MoveDirection and removing the clamp
	local FwdDir = (Walking and Hum.MoveDirection*Root.CFrame.lookVector or V3.N())
	local RigDir = (Walking and Hum.MoveDirection*Root.CFrame.rightVector or V3.N())
	local Vec = {
		X=RigDir.X+RigDir.Z,
		Z=FwdDir.X+FwdDir.Z
	};
	local Divide = 1
	if(Vec.Z<0)then
		Divide=math.clamp(-(1.25*Vec.Z),1,2)
	end
	Vec.Z = Vec.Z/Divide
	Vec.X = Vec.X/Divide
	Hum.WalkSpeed = WalkSpeed/Divide
	local Value = Movement/10
	if(legAnims)then
		if(State=='Walk')then
			Change=2
		elseif(State=='Idle')then
			Change=1
			if(not NeutralAnims)then

			end
		elseif(State=='Jump' or State=='Fall')then
			Change=1
		end
	end
	if(NeutralAnims)then	
		if(State == 'Idle')then
		  	local Alpha = .2
			Animate(NK,CF.N(0,1.48,-0.1)*CF.A(M.R(-10 + 10 * M.S(Sine/15)),M.R(0),M.R(0)),Alpha,'Lerp')
		  	Animate(LS,CF.N(-0.72,-0.83 - 0.2 * M.C(Sine/15),-0.65)*CF.A(M.R(45.4 - 10 * M.C(Sine/15)),M.R(37.2),M.R(-16)),Alpha,'Lerp')
		  	Animate(LH,CF.N(-1.01,-2.8 - 0.2 * M.C(Sine/15),-1.74)*CF.A(M.R(20 + 10 * M.C(Sine/15)),M.R(40),M.R(0)),Alpha,'Lerp')
		  	Animate(RJ,CF.N(0,1.24 + 0.2 * M.C(Sine/15),0.07)*CF.A(M.R(-20),M.R(0),M.R(0)),Alpha,'Lerp')
		  	Animate(RH,CF.N(0.89,-2.77 - 0.2 * M.C(Sine/15),-1.8)*CF.A(M.R(20 +  10 * M.C(Sine/15)),M.R(-30),M.R(0)),Alpha,'Lerp')
		  	Animate(RS,CF.N(0.68,-0.82 - 0.2 * M.C(Sine/15),-0.68)*CF.A(M.R(42.8 - 10 * M.C(Sine/15)),M.R(-28),M.R(11.2)),Alpha,'Lerp')


		elseif(State == 'Walk')then
			local Alpha = .2
			-- Im sorry nebby..i can't figure it out ;v;

			Animate(NK,CF.N(0,1.5,0)*CF.A(M.R(0 + 10 * M.C(Sine/2)),M.R(0),M.R(0)),Alpha,'Lerp')
		  	Animate(LS,CF.A(M.R(-(Sine*10)),M.R(0),M.R(0))*CF.N(-0.5,-1.5,0)*CF.A(M.R(0),M.R(0),M.R(0)),Alpha,'Lerp')
		  	Animate(LH,CF.A(M.R(-(Sine*10)),M.R(0),M.R(0))*CF.N(-0.5,-3.99,0.01)*CF.A(M.R(0),M.R(0),M.R(0)),Alpha,'Lerp')
		  	Animate(RJ,CF.N(0 - 1 * M.S(Sine/4),0.70 + 5 * M.C(Sine/2),0)*CF.A(M.R(-30 + 10 * M.S(Sine/4)),M.R(0),M.R(0)),Alpha,'Lerp')
		  	Animate(RH,CF.A(M.R(-(Sine*10) + 180),M.R(0),M.R(0))*CF.N(0.5,-3.99,0.02)*CF.A(M.R(0),M.R(0),M.R(0)),Alpha,'Lerp')
		  	Animate(RS,CF.A(M.R(-(Sine*10) + 180),M.R(0),M.R(0))*CF.N(0.5,-1.5,0)*CF.A(M.R(0),M.R(0),M.R(0)),Alpha,'Lerp')
	  	
		elseif(State == 'Jump')then
			local idk = math.min(math.max(Root.Velocity.Y/75,-M.R(45)),M.R(45))
			Animate(NK,CF.N(0,1.45,0.19)*CF.A(M.R(15),M.R(0),M.R(0)),.2,'Lerp')
		  	Animate(LS,CF.N(-0.5,-1.06,-0.45)*CF.A(M.R(-20),M.R(0),M.R(0)),.2,'Lerp')
		  	Animate(LH,CF.N(-0.5,-3.35,0.61)*CF.A(M.R(-35),M.R(0),M.R(0)),.2,'Lerp')
		  	Animate(RJ,CF.N(0,1.96,0.39)*CF.A(M.R(15),M.R(0),M.R(0)),.2,'Lerp')
		  	Animate(RH,CF.N(0.5,-3.34,0.61)*CF.A(M.R(-35),M.R(0),M.R(0)),.2,'Lerp')
		  	Animate(RS,CF.N(0.5,-1.06,-0.45)*CF.A(M.R(-20),M.R(0),M.R(0)),.2,'Lerp')
		elseif(State == 'Fall')then
			local idk = math.min(math.max(Root.Velocity.Y/75,-M.R(45)),M.R(45))
			Animate(NK,CF.N(0,1.54,-0.22)*CF.A(M.R(-15),M.R(0),M.R(0)),.2,'Lerp')
		  	Animate(LS,CF.N(-0.5,-0.76,-0.86)*CF.A(M.R(45),M.R(0),M.R(0)),.2,'Lerp')
		  	Animate(LH,CF.N(-0.5,-2.58,-2.34)*CF.A(M.R(30),M.R(0),M.R(0)),.2,'Lerp')
		  	Animate(RJ,CF.N(0,1.91,-0.51)*CF.A(M.R(-20),M.R(0),M.R(0)),.2,'Lerp')
		  	Animate(RH,CF.N(0.5,-2.58,-2.33)*CF.A(M.R(30),M.R(0),M.R(0)),.2,'Lerp')
		  	Animate(RS,CF.N(0.5,-0.76,-0.86)*CF.A(M.R(45),M.R(0),M.R(0)),.2,'Lerp')
		end
	end

end