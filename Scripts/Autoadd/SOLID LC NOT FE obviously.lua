script.Disabled = true

local model = Instance.new("Model", workspace)
local script = game:GetObjects("rbxassetid://6661734630")[1]:FindFirstChildWhichIsA("Script")
local orichar = game.Players.LocalPlayer.Character


local Name = game.Players.LocalPlayer.Name
local Player,Backups,obamagaming = game:GetService("Players"):FindFirstChild(Name),{},{}
for _,v in pairs(script:GetChildren()) do
	Backups[v.Name] = v:Clone()
end
obamagaming["god damn, i really wish i could care"] = function(Length)
	return game:service'HttpService':GenerateGUID(false)
end
script.Name = obamagaming["god damn, i really wish i could care"](math.random(10,100))
game:GetService("RunService").Heartbeat:Wait()
script:Destroy()
local Success,CreatorName = true, ""
if Success then
	CreatorName = "WhiteFo0x AND solidracer"
end



function CreateRemote(parent)
	local fakeremote = Instance.new("RemoteEvent", parent)
	local client = Instance.new("BindableEvent")
	local server = Instance.new("BindableEvent")
	local main = newproxy(true)
	mainclient = getmetatable(main)
	mainclient.__namecall = function(self, ...)
		local method = getnamecallmethod()
		if method == "FireServer" then
			return server:Fire(game.Players.LocalPlayer, ...)
		end
		if method == "FireAllClients" then
			return client:Fire(...)
		end
		return getrawmetatable(game).__namecall(fakeremote, ...)
	end
	mainclient.__index = function(self, key)
		if key == "OnClientEvent" then
			return client.Event
		end
		if key == "OnServerEvent" then
			return server.Event
		end
		return fakeremote[key]
	end
	mainclient.__newindex = function(self, key, val)
		fakeremote[key] = val
	end
	return main
end

local BruhRemotes = Instance.new("Folder",game.Players)
BruhRemotes.Name = "Solid LC Remotes"
local cColor = Instance.new("Color3Value",BruhRemotes)
cColor.Name = "CurrentColor"
local ChangeName = CreateRemote(BruhRemotes)
ChangeName.Name = "SolidLC"
local Instance_ = Instance.new
local Instance = {}
function Instance.new(ClassType,Parent,Properties)
	local NewInstance
	if typeof(Backups[ClassType]) == "Instance" then
		NewInstance = Backups[ClassType]:Clone()
	else
		NewInstance = Instance_(ClassType)
	end
	if type(Properties) == "table" then
		for i,v in pairs(Properties) do
			NewInstance[i] = v
		end
	end
	if typeof(Parent) == "Instance" then
		NewInstance.Parent = Parent
	end
	return NewInstance
end
local Running,Character,CharacterProps,Event,RemoteKey,LastCall,HBevent,tf,fr,Music,MusicProps,MusicStart,Welds,CFrames,Movement,Sine,BlacklistedGuis,Services,PartClasses,RemoteName,Psheudonym,AntiFat,Color,MusicHolder,Mode,PlaybackLoudness,Mouse,WorldModels,BlacklistedPlayers,GuestKey,MessagesToSend,HideIdentity,OldLighting = true,{HumanoidRootPart = {CFrame = CFrame.new()},GunHandle = {CFrame = CFrame.new()},Hole = {CFrame = CFrame.new()},Hole2 = {CFrame = CFrame.new()}},{Head = {Material = Enum.Material.Glass,Reflectance = -1,Transparency = 0,Name = "Head",Anchored = true,Size = Vector3.new(1.36,1.25,1.2)},Torso = {Color = Color3.new(0.188235, 0.188235, 0.188235),Material = Enum.Material.Glass,Reflectance = -1,TextureID = "",Transparency = 0,Name = "Torso",Anchored = true,Size = Vector3.new(2,2,1)},RightArm = {Color = Color3.new(),Material = Enum.Material.Glass,Reflectance = -1,TextureID = "",Transparency = 0,Name = "Limb",Anchored = true,Size = Vector3.new(1,2,1)},LeftArm = {Color = Color3.new(),Material = Enum.Material.Glass,Reflectance = -1,TextureID = "",Transparency = 0,Name = "Limb",Anchored = true,Size = Vector3.new(1,2,1)},RightLeg = {Color = Color3.new(),Material = Enum.Material.Glass,Reflectance = -1,TextureID = "",Transparency = 0,Name = "Limb",Anchored = true,Size = Vector3.new(1,2,1)},LeftLeg = {Color = Color3.new(),Material = Enum.Material.Glass,Reflectance = -1,TextureID = "",Transparency = 0,Name = "Limb",Anchored = true,Size = Vector3.new(1,2,1)},Hair = {Color = Color3.new(),Material = Enum.Material.Glass,Reflectance = -1,TextureID = "",Transparency = 0,Name = "Hair",Anchored = true,Size = Vector3.new(1.77,1.55,1.45)},HeadGlow = {Material = Enum.Material.Neon,Transparency = 0,Name = "HeadGlow",Anchored = true,Size = Vector3.new(1.34,1.23,1.18)},GunBase = {Color = Color3.new(),Material = Enum.Material.Glass,Reflectance = -1,TextureID = "",Transparency = 0,Name = "GunBase",Anchored = true,Size = Vector3.new(9.361,8.617,1.474)},GunGlow = {Material = Enum.Material.Neon,Transparency = 0,Name = "GunGlow",Anchored = true,Size = Vector3.new(2.002,2.215,8.928)},GunAdditions = {Color = Color3.new(),Material = Enum.Material.Glass,Reflectance = -1,Transparency = 0,Name = "GunAdditions",Anchored = true,Size = Vector3.new(5.498,2.188,1.207)},RightWing = {Color = Color3.new(),Material = Enum.Material.Glass,Reflectance = -1,TextureID = "",Transparency = 0,Name = "RightWing",Anchored = true,Size = Vector3.new(2.398,4.324,1.922)},LeftWing = {Color = Color3.new(),Material = Enum.Material.Glass,Reflectance = -1,TextureID = "",Transparency = 0,Name = "LeftWing",Anchored = true,Size = Vector3.new(2.398,4.324,1.922)}},nil,obamagaming["god damn, i really wish i could care"](math.random(10,100)),tick(),Instance.new("BindableEvent"),0,1/60,nil,{Looped = true,PlaybackSpeed = 1,Playing = true,RollOffMaxDistance = 250,RollOffMinDistance = 25,RollOffMode = Enum.RollOffMode.Linear,SoundId = "rbxassetid://6174456295",Volume = 1,PlayOnRemove = false},tick(),{Defaults = {Neck = {C0 = CFrame.new(0,1,0)*CFrame.Angles(math.rad(-90),0,math.rad(180))},RootJoint = {C0 = CFrame.new()*CFrame.Angles(math.rad(-90),0,math.rad(180))},RightShoulder = {C0 = CFrame.new(-.5,0,0)*CFrame.Angles(0,math.rad(90),0)},LeftShoulder = {C0 = CFrame.new(.5,0,0)*CFrame.Angles(0,math.rad(-90),0)}},Neck = {C0 = CFrame.new(),C1 = CFrame.new(0,-.5,0,-1,0,0,0,0,1,0,1,0)},RootJoint = {C0 = CFrame.new(),C1 = CFrame.new(0,0,0,-1,0,0,0,0,1,0,1,0)},RightShoulder = {C0 = CFrame.new(),C1 = CFrame.new(-.5,.5,0,0,0,1,0,1,0,-1,0,0)},LeftShoulder = {C0 = CFrame.new(),C1 = CFrame.new(.5,.5,0,0,0,-1,0,1,0,1,0,0)},RightHip = {C0 = CFrame.new(),C1 = CFrame.new(.5,1,0,0,0,1,0,1,0,-1,0,0)},LeftHip = {C0 = CFrame.new(),C1 = CFrame.new(-.5,1,0,0,0,-1,0,1,0,1,0,0)},None = {C0 = CFrame.new(),C1 = CFrame.new()},Hair = {C0 = CFrame.new(.16,.5,0)*CFrame.Angles(0,math.rad(180),0),C1 = CFrame.new()},GunJoint = {C0 = CFrame.new(.05,-1,-.15)*CFrame.Angles(math.rad(-90),0,0),C1 = CFrame.new()},GunBase = {C0 = CFrame.new(0,1.305,-2.108)*CFrame.Angles(0,math.rad(-90),math.rad(-45)),C1 = CFrame.new()},GunGlow = {C0 = CFrame.new(-.024,1.369,-1.26)*CFrame.Angles(0,0,math.rad(-140.59)),C1 = CFrame.new()},GunAdditions = {C0 = CFrame.new(-.004,1.204,.505)*CFrame.Angles(0,math.rad(-90),0),C1 = CFrame.new()},Hole = {C0 = CFrame.new(-.001,1.538,-3.342)*CFrame.Angles(0,math.rad(-90),0),C1 = CFrame.new()},Hole2 = {C0 = CFrame.new(-.001,1.538,-9.142),C1 = CFrame.new()},RightWing = {C0 = CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(90),0),C1 = CFrame.new(1.1,1,-.75)},LeftWing = {C0 = CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(90),0),C1 = CFrame.new(1.1,1,.75)}},{},{CFrame = CFrame.new(),PotentialCFrame = CFrame.new(),HipHeight = 3,WalkSpeed = 50},0,{"vbucks","sup","AllahGui","SnakeVenomSS","polishtoilet","nooties","IY_GUI","IY_JumpScare","BugGui","tyrone"},{"SoundService","Chat","MarketplaceService","Players","StarterPlayer","LocalizationService","JointsService","FriendService","InsertService","Lighting","Teams","ReplicatedStorage","TestService","ProximityPromptService"},{"CornerWedgePart","Part","FlagStand","WedgePart","NegateOperation","UnionOperation","PartOperation","TrussPart","MeshPart","Seat","SpawnLocation"},obamagaming["god damn, i really wish i could care"](math.random(10,100)),string.sub(obamagaming["god damn, i really wish i could care"](math.random(10,100)),25),false,Color3.new(),nil,0,0,{Hit = CFrame.new()},{},{},obamagaming["god damn, i really wish i could care"](math.random(10,100)),{},true,{Ambient=Color3.new(1,1,1),Brightness=2,ColorShift_Bottom=Color3.new(),ColorShift_Top=Color3.new(),OutdoorAmbient=Color3.fromRGB(128,128,128),FogEnd=9e9,EnvironmentDiffuseScale=0,ClockTime=14,ExposureCompensation=0}
for i,v in pairs(Character) do
	v.Parent = model
end
for i,v in pairs(CharacterProps) do
	v.Parent = model
end
local function wait(num)
	if type(num) ~= "number" or num <= fr then
		HBevent.Event:Wait()
	else
		for _ = 1,num*60 do
			HBevent.Event:Wait()
		end
	end
end


function obamagaming.Refit(Instance,Parent)
	if Instance.Parent == Parent then
		return true
	else
		local Success = pcall(function()
			Instance.Parent = Parent
		end)
		return Success
	end 
end
--[[do
	local InstanceCount = 0
	for _,v in pairs(game:GetDescendants()) do
		pcall(function()
			if v:IsA("Sound") and not v.Parent:IsA("BasePart") or v:IsA("Humanoid") and (not v.Parent:IsA("Model") or v.Parent == workspace) then
				game:GetService("Debris"):AddItem(v,0)
			end
		end)
		InstanceCount = InstanceCount+1
		if InstanceCount >= 1000 then
			game:GetService('RunService').Heartbeat:Wait()
			InstanceCount = 0
		end
	end
end
do
	local InstanceCount = 0
	for _,v in pairs(workspace:GetDescendants()) do
		if v:IsA("WorldModel") then
			table.insert(WorldModels,v)
			local Reparented
			Reparented = v.AncestryChanged:Connect(function()
				if not v:IsDescendantOf(workspace) then
					table.remove(WorldModels,table.find(WorldModels,v))
					Reparented:Disconnect()
				end
			end)
		end
		InstanceCount = InstanceCount+1
		if InstanceCount >= 1000 then
			game:GetService('RunService').Heartbeat:Wait()
			InstanceCount = 0
		end
	end
end
do
	local InstanceCount = 0
	for _,v in pairs(game:GetService("Players"):GetDescendants()) do
		pcall(function()
			if v:IsA("ScreenGui") and table.find(BlacklistedGuis,v.Name) then
				v.Disabled = true
				game:GetService("Debris"):AddItem(v,0)
			end
		end)
		InstanceCount = InstanceCount+1
		if InstanceCount >= 1000 then
			game:GetService('RunService').Heartbeat:Wait()
			InstanceCount = 0
		end
	end
end
if Player.Character then
	game:GetService("Debris"):AddItem(Player.Character,0)
	Player.Character = nil
end]]
function obamagaming.obunga(a,b,t)
	return a:Lerp(b,math.clamp(t,0,1))
end
function Clerp(a,b,t)
	return a:Lerp(b,math.clamp(t,0,1))
end
function Clerp2(a,b,t)
	return a:Lerp(b,t)
end
obamagaming["me when the"] = function(Weld,Part1,Part0)
	return Part0*(Weld.C0*Weld.C1:Inverse())
end

function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = Instance.new("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = Instance.new("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = Instance.new("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end

function obamagaming.NewDataModelMesh(MESH,PARENT,MESHTYPE,MESHID,TEXTUREID,SCALE,OFFSET)
	local NEWMESH = Instance.new(MESH,nil)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" and tonumber(MESHID) ~= nil then
			NEWMESH.MeshId = "rbxassetid://"..MESHID
		elseif MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "rbxassetid://"..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or Vector3.new()
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function obamagaming.NewPart(FORMFACTOR,PARENT,MATERIAL,REFLECTANCE,TRANSPARENCY,BRICKCOLOR,NAME,SIZE,ANCHOR)
	local NEWPART = Instance.new("Part",nil)
	NEWPART.Massless = true
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.Color = BRICKCOLOR
	NEWPART.Name = obamagaming["god damn, i really wish i could care"]()
	NEWPART.Size = SIZE
	NEWPART.Position = Character.Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

local _Sound = Instance.new("Sound",nil)
function obamagaming.NewSound(ID,PARENT,VOLUME,PITCH,DOESLOOP)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = _Sound:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "rbxassetid://"..ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			coroutine.resume(coroutine.create(function()
				pcall(function()
					repeat game:GetService("RunService").Heartbeat:Wait() until NEWSOUND.Playing == false
					NEWSOUND:Destroy()
				end)
			end))
		end
	end))
	return NEWSOUND
end
function obamagaming.WEffect(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Character.Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or Character.Torso.Color)
	local hOK,sOK,vOK = Color3.toHSV(COLOR)
	local RAINBOWPART = false
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = obamagaming.NewPart(3,workspace,MATERIAL,0,TRANSPARENCY,Character.Torso.Color,"Effect",Vector3.new(1,1,1),true)
		EFFECT:SetAttribute("IsAnEffect", true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = obamagaming.NewSound(SOUNDID,EFFECT,SOUNDVOLUME,SOUNDPITCH,false)
		end
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"Sphere","","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Block" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = Vector3.new(SIZE.X,SIZE.Y,SIZE.Z)
		elseif TYPE == "Wave" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","20329976","",SIZE,Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","559831844","",Vector3.new(SIZE.X,SIZE.X,0.1),Vector3.new(0,0,0))
		elseif TYPE == "Slash" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","662586858","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","662585058","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","1051557","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Skull" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","4770583","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","9756362","",SIZE,Vector3.new(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			EFFECT.CFrame = CFRAME
			for LOOP = 1,TIME+1 do
				game:GetService("RunService").Heartbeat:Wait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = Vector3.new(0,0,-MSH.Scale.X/8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat game:GetService("RunService").Heartbeat:Wait() until SOUND.Playing == false
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat game:GetService("RunService").Heartbeat:Wait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end
pcall(function()
	Player.Name = "Skid"
end)
function Effect(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new())
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Character.Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or Character.Torso.Color)
	local hOK,sOK,vOK = Color3.toHSV(COLOR)
	local RAINBOWPART = false
	if sOK > .1 then
		RAINBOWPART = true
	end
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
		local EFFECT = obamagaming.NewPart(3,workspace,MATERIAL,0,TRANSPARENCY,Character.Torso.Color,"Effect",Vector3.new(1,1,1),true)
		EFFECT:SetAttribute("IsAnEffect", true)
		if RAINBOWPART then
			coroutine.resume(coroutine.create(function()
				while EFFECT:IsDescendantOf(game) do
					game:GetService("RunService").Heartbeat:Wait()
				end
			end))
		end
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = obamagaming.NewSound(SOUNDID,EFFECT,SOUNDVOLUME,SOUNDPITCH,false)
		end
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"Sphere","","",SIZE,Vector3.new())
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","20329976","",SIZE,Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","559831844","",Vector3.new(SIZE.X,SIZE.X,0.1),Vector3.new())
		elseif TYPE == "Slash" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","662586858","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Round Slash" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","662585058","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Swirl" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","168892432","",SIZE,Vector3.new())
		elseif TYPE == "Skull" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","4770583","",SIZE,Vector3.new())
		elseif TYPE == "Crystal" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","9756362","",SIZE,Vector3.new())
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
				EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			if USEBOOMERANGMATH == true then
				for LOOP = 1,TIME+1 do
					game:GetService("RunService").Heartbeat:Wait()
					MSH.Scale = MSH.Scale - (Vector3.new((GROWTH.X)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Y)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Z)*((1 - (LOOP/TIME)*BOOMR2)))*BOOMR2)/TIME
					if TYPE == "Wave" then
						MSH.Offset = Vector3.new(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-(MOVESPEED)*((1 - (LOOP/TIME)*BOOMR1)))
						EFFECT.Orientation = ORI
					end
				end
			else
				for LOOP = 1,TIME+1 do
					game:GetService("RunService").Heartbeat:Wait()
					MSH.Scale = MSH.Scale - GROWTH/TIME
					if TYPE == "Wave" then
						MSH.Offset = Vector3.new(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-MOVESPEED)
						EFFECT.Orientation = ORI
					end
				end
			end
			EFFECT.Transparency = 1
			if PLAYSSOUND == false then
				EFFECT:Destroy()
			else
				repeat game:GetService("RunService").Heartbeat:Wait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:Destroy()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:Destroy()
			else
				repeat game:GetService("RunService").Heartbeat:Wait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:Destroy()
			end
		end
	end))
end

function Lightning(Part0,Part1,Timess,Offset,Color,Timer,sSize,eSize,Trans,Boomer,sBoomer,Trans2)
	local magz = (Part0 - Part1).Magnitude
	local Times = math.floor(math.clamp(magz/10,1,20))
	local curpos = Part0
	local trz = {
		-Offset,
		Offset
	}
	for i = 1,Times do
		local li = Instance.new("Part",workspace)
		li.Name = obamagaming["god damn, i really wish i could care"]()
		li.TopSurface = 0
		li.Material = "Neon"
		li.BottomSurface = 0
		li.Anchored = true
		li.Locked = true
		li.Transparency = 0
		li.Color = Color
		li.formFactor = "Custom"
		li.CanCollide = false
		li.Size = Vector3.new(0.1,0.1,magz/Times)
		local Offzet = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
		local trolpos = CFrame.new(curpos,Part1) * CFrame.new(0,0,magz/Times).p + Offzet
		if Times == i then
			local magz2 = (curpos - Part1).Magnitude
			li.Size = Vector3.new(0.1,0.1,magz2)
			li.CFrame = CFrame.new(curpos,Part1) * CFrame.new(0,0,-magz2/2)
		else
			li.CFrame = CFrame.new(curpos,trolpos) * CFrame.new(0,0,magz/Times/2)
		end
		curpos = li.CFrame * CFrame.new(0,0,magz/Times/2).p
		li:Destroy()
		Effect({Time = Timer,EffectType = "Box",Size = Vector3.new(sSize,sSize,li.Size.Z),Size2 = Vector3.new(eSize,eSize,li.Size.Z),Transparency = Trans,Transparency2 = Trans2 or 1,CFrame = li.CFrame,MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = li.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = Boomer,Boomerang = 0,SizeBoomerang = sBoomer})
	end
end
function obamagaming.smodeff()
	coroutine.resume(coroutine.create(function()
		obamagaming.NewSound(155202884, soundholder(5), 2, 1.4, false)
		local _RootPos = Character.Torso.Position
		for i = 1, 5 do
			obamagaming.WEffect({
				Time = 25,
				EffectType = "Sphere",
				Size = Vector3.new(2, 2, 2),
				Size2 = Vector3.new(0, 0, 500),
				Transparency = 1,
				Transparency2 = 0,
				CFrame = CFrame.new(_RootPos),
				MoveToPos = nil,
				RotationX = math.random(-2, 2),
				RotationY = math.random(-12, 12),
				RotationZ = math.random(-2, 2),
				Material = "Neon",
				Color = Character.Torso.Color,
				SoundID = nil,
				SoundPitch = nil,
				SoundVolume = nil
			})
		end
		obamagaming.WEffect({Time = 25, EffectType = "Sphere", Size = Vector3.new(0,0,0), Size2 = Vector3.new(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = Character.Torso.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Character.Torso.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	end))
end
function mdmgpp(centerofeffect,range)
	pcall(function()
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("Humanoid") and v.RootPart and (v.RootPart.Position - centerofeffect).Magnitude <= range + v.RootPart.Size.Magnitude then
				local deathp = Instance.new("Part", nil)
				deathp.Anchored = true 
				deathp.Transparency = 1
				deathp.CanCollide = false
				deathp.CFrame = v.RootPart.CFrame
				local bruh = obamagaming.NewSound(206082273,deathp,5,.75)
				bruh.PlayOnRemove = true
				for i = 1,10 do
					local a = Instance.new("Part", nil)
					a.Name = obamagaming["god damn, i really wish i could care"]()
					a.Anchored = true
					a.Position = deathp.Position
					a.Shape = "Ball"
					a.Color = Character.Torso.Color
					a.Material = "Neon"
					a.CastShadow = false
					a.Size = Vector3.new(i*2.5,i*2.5,i*2.5)
					a.CanCollide = false
					a.Transparency = .75
					a.Locked = true
					a.Parent = workspace
					game:GetService("Debris"):AddItem(a,1.5-i/10)
					for o = 1,3 do
						local hitm = Instance.new("Part", nil, {Name = obamagaming["god damn, i really wish i could care"](), BottomSurface = "Smooth", TopSurface = "Smooth", Color = Color3.new(), Size = Vector3.new(1,1,1), Locked = true, Shape = "Ball"})
						hitm.Color = Character.Torso.Color
						hitm.CFrame = a.CFrame * CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))*CFrame.new(0,1,0)
						hitm.Parent = workspace
						hitm.Velocity = CFrame.new(hitm.Position,a.Position).LookVector*250
						game:GetService("Debris"):AddItem(hitm,1.33)						
					end
				end
				deathp.Parent = workspace
				pcall(function()
					deathp:Destroy()
				end)
				if v:IsDescendantOf(game) and v.Parent ~= workspace and v.Parent ~= workspace.Terrain then
					v.RootPart:Destroy()
					local maxparent = v
					repeat maxparent = maxparent.Parent until maxparent.Parent == workspace or maxparent.Parent == workspace.Terrain
					coroutine.resume(coroutine.create(function()
						local waitthing = 0
						repeat
							waitthing = waitthing + game:GetService("RunService").Heartbeat:Wait()
						until waitthing >= 3
						game:GetService("Players")[maxparent.Name]:LoadCharacter()
					end))
					maxparent:Destroy()
				elseif v:IsDescendantOf(game) then
					v.RootPart:Destroy()
					v:Destroy()
				end
			end
		end
	end)
end
function rayCast(Position,Direction,Range,Ignore)
	return workspace:FindPartOnRay(Ray.new(Position,Direction.unit * (Range or 999.999)),Ignore) 
end 
function FireArc(Part,ToLocation,AmountOfTime,Height,DoesCourontine)
	if DoesCourontine == false then
		local Direction = CFrame.new(Part.Position,ToLocation)
		local Distance = (Part.Position - ToLocation).Magnitude
		for i = 1,AmountOfTime do
			game:GetService("RunService").Heartbeat:Wait()
			Part.CFrame = Direction*CFrame.new(0,(AmountOfTime/200)+((AmountOfTime/Height)-((i*2)/Height)),-Distance/AmountOfTime)
			Direction = Part.CFrame
		end
	elseif DoesCourontine == true then
		coroutine.resume(coroutine.create(function()
			local Direction = CFrame.new(Part.Position,ToLocation)
			local Distance = (Part.Position - ToLocation).Magnitude
			for i = 1,AmountOfTime do
				game:GetService("RunService").Heartbeat:Wait()
				Part.CFrame = Direction*CFrame.new(0,(AmountOfTime/200)+((AmountOfTime/Height)-((i*2)/Height)),-Distance/AmountOfTime)
				Direction = Part.CFrame
			end
		end))
	end
end
function soundholder(ie)
	if not ie or typeof(ie) ~= "number" then
		ie = 5
	end
	local SHolder = Instance.new("MeshPart", game:GetService("Lighting"), {CFrame = Character.Torso.CFrame, Name = obamagaming["god damn, i really wish i could care"](), Archivable = false})
	game:GetService("Debris"):AddItem(SHolder, ie)
	return SHolder
end
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
radian = math.rad
random = math.random
Vec3 = Vector3.new
Inst = Instance.new
cFrame = CFrame.new
Euler = CFrame.fromEulerAnglesXYZ
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new
angles = CFrame.Angles
Cf = CFrame.new
Cos = math.cos
Sin = math.sin
Abs = math.abs
Rad = math.rad
V3 = {N=Vector3.new,FNI=Vector3.FromNormalId,A=Vector3.FromAxis}
M = {C=math.cos,R=math.rad,S=math.sin,P=math.pi,RNG=math.random,MRS=math.randomseed,H=math.huge,RRNG = function(min,max,div) return math.rad(math.random(min,max)/(div or 1)) end}
R3 = {N=Region3.new}
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local rc0 = CFrame.new() * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local nc0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local rscp = CFrame.new(-.5,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
local lscp = CFrame.new(.5,0,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))
local S = 1
local SINE = Sine
local Animation_Speed = 2
coroutine.resume(coroutine.create(function()
	while Running do
		if Mode == -1 then
			Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15)*CFrame.Angles(math.rad(-90),0,0),.25)
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 0 then
			if Movement.Walking then
				if Movement.NeckSnap then
					Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(Sine/100)),0),1)
					Movement.NeckSnap = false
				else
					Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(Sine/100)),0),.25)
				end
				pcall(function()
					if math.random(1,60) == 1 then
						Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20+math.random(-20,20)),math.rad((10*math.sin(Sine/100))+math.random(-20,20)),math.rad(math.random(-20,20))),1)
						Movement.NeckSnap = true
					end
				end)
				Welds.GunJoint.C0 = Clerp(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(.5*math.cos(Sine/50),0,-.5*math.sin(Sine/50))*CFrame.Angles(math.rad(40),0,0),.25)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.new(0,-.25,0)*CFrame.Angles(math.rad(-40),0,0),.25)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CFrame.new(1.55, 0.5, 0.5) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0, 1 / 3)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(Sine/19)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-20+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(Sine/37)),0,0),.25)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-20-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
			else
				if Movement.NeckSnap then
					Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(Sine/100)),0),1)
					Movement.NeckSnap = false
				else
					Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(Sine/100)),0),.25)
				end
				pcall(function()
					if math.random(1,60) == 1 then
						Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20+math.random(-20,20)),math.rad((10*math.sin(Sine/100))+math.random(-20,20)),math.rad(math.random(-20,20))),1)
						Movement.NeckSnap = true
					end
				end)
				Welds.GunJoint.C0 = Clerp(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-120),math.rad(0),math.rad(0)),1/2)
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50))*CFrame.Angles(math.rad(-25+5*math.sin(Sine/50)),0,0),.7/3)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.new(0,0 ,0 + ((1) - 1)) * CFrame.Angles(math.rad(30+5*math.sin(Sine/50)),math.rad(0),math.rad(0)),0.7/3)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.55, 0.5, 0.5) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0, 1 / 3)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-20 + 8.5 * math.cos(Sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(Sine/25))) * LEFTSHOULDERC0,0.7/3)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-5 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),0.7/3)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(13 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),0.7/3)
			end
			Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15)*CFrame.Angles(math.rad(-90),0,0),.25)
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 1 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,-.5*math.sin(Sine/50))*CFrame.Angles(math.rad(20),0,0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0,.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-41.6-4*math.sin(Sine/50)),0,0)*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(20),0,math.rad(-10-10*math.sin(Sine/50)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-1,-.01)*CFrame.Angles(math.rad(-20),math.rad(80),math.rad(10+10*math.sin(Sine/50))),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,-.01)*CFrame.Angles(math.rad(-10),math.rad(-80),math.rad(-10-10*math.sin(Sine/50))),.25)
			else
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,-.5*math.sin(Sine/50))*CFrame.Angles(math.rad(20),0,0),.25)
				if Movement.NeckSnap then
					Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(Sine/100)),0),1)
					Movement.NeckSnap = false
				else
					Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(Sine/100)),0),.25)
				end
				pcall(function()
					if math.random(1,60) == 1 then
						Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20+math.random(-20,20)),math.rad((10*math.sin(Sine/100))+math.random(-20,20)),math.rad(math.random(-20,20))),1)
						Movement.NeckSnap = true
					end
				end)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-41.6-4*math.sin(Sine/50)),0,0)*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(20),0,math.rad(-10-10*math.sin(Sine/50)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-1,-.01)*CFrame.Angles(math.rad(10),math.rad(80),math.rad(10*math.sin(Sine/50))),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,-.01)*CFrame.Angles(math.rad(20),math.rad(-80),math.rad(-10*math.sin(Sine/50))),.25)
			end
			Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15)*CFrame.Angles(math.rad(-90),0,0),.25)
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 2 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,0+.5*math.cos(Sine/15))*CFrame.Angles(math.rad(40),math.rad(-5*math.cos(Sine/30)),0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.new(0,-.25,0)*CFrame.Angles(math.rad(-40),0,0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(5+2*math.cos(Sine/19)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(Sine/19)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-20+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(0+5*math.cos(Sine/37)),0,0),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-20-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
			else
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,.5*math.cos(Sine/15))*CFrame.Angles(0,math.rad(-10*math.cos(Sine/30)),0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(0,math.rad(-15*math.cos(Sine/30)),0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(135+-15*math.cos(Sine/30)),0,math.rad(25+15*math.cos(Sine/30)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(5),math.rad(5),math.rad(-10+15*math.cos(Sine/30)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-1,-.01)*CFrame.Angles(math.rad(-10),math.rad(80),math.rad(10+10*math.sin(Sine/15))),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,-.01)*CFrame.Angles(0,math.rad(-80),math.rad(-10-10*math.sin(Sine/15))),.25)
			end
			Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15)*CFrame.Angles(math.rad(-90),0,0),.25)
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 3 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,.5*math.cos(Sine/15))*CFrame.Angles(math.rad(20-2.5*math.sin(Sine/15)),0,0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(-10-10*math.sin(Sine/15)),0,0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5+.25*math.sin(Sine/15),0)*CFrame.Angles(math.rad(-50+5*math.sin(Sine/15)),0,0)*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5+.25*math.sin(Sine/15),0)*CFrame.Angles(math.rad(110),0,0)*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-1,-.01)*CFrame.Angles(math.rad(-10),math.rad(80),math.rad(5+5*math.sin(Sine/15))),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,-.01)*CFrame.Angles(0,math.rad(-80),math.rad(-5-5*math.sin(Sine/15))),.25)
			else
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,.5*math.cos(Sine/15))*CFrame.Angles(math.rad(-2.5*math.sin(Sine/15)),0,0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(10-10*math.sin(Sine/15)),0,0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5+.25*math.sin(Sine/15),0)*CFrame.Angles(math.rad(135+5*math.sin(Sine/15)),0,math.rad(25))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5+.25*math.sin(Sine/15),0)*CFrame.Angles(0,0,math.rad(-10+10*math.cos(Sine/15)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-1,-.01)*CFrame.Angles(math.rad(-10),math.rad(80),math.rad(5+5*math.sin(Sine/15))),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,-.01)*CFrame.Angles(0,math.rad(-80),math.rad(-5-5*math.sin(Sine/15))),.25)
			end
			Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15)*CFrame.Angles(math.rad(-90),0,0),.25)
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 4 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,math.cos(Sine/25),-math.sin(Sine/25))*CFrame.Angles(math.rad(5*math.sin(Sine/25)),0,math.rad(70)),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(0,0,math.rad(-70))*CFrame.Angles(math.rad(5*math.cos(Sine/25)),0,0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1,.5,-.25)*CFrame.Angles(0,math.rad(-10),math.rad(-90))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(0,0,math.rad(-20+5*math.sin(Sine/25)))*Welds.Defaults.LeftShoulder.C0,.25)
			else
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,math.cos(Sine/25),-math.sin(Sine/25))*CFrame.Angles(math.rad(5*math.sin(Sine/25)),0,0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(5*math.cos(Sine/25)),0,0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(160),0,math.rad(15-5*math.sin(Sine/25)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(0,0,math.rad(-15+5*math.sin(Sine/25)))*Welds.Defaults.LeftShoulder.C0,.25)
			end
			Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-1-.1*math.sin(Sine/25),-.01)*CFrame.Angles(0,math.rad(80),0),.25)
			Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-.5-.25*math.sin(Sine/25),-.51)*CFrame.Angles(math.rad(-10),math.rad(-80),0),.25)
			Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15)*CFrame.Angles(math.rad(-90),0,0),.25)
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 5 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,.125*math.sin(Sine/12),0)*CFrame.Angles(math.rad(10-5*math.cos(Sine/12)),math.rad(-10*math.cos(Sine/12)),math.rad(-5*math.cos(Sine/12))),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(10-5*math.cos(Sine/12)),math.rad(10*math.cos(Sine/12)),math.rad(5*math.cos(Sine/12))),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5+.2*math.sin(Sine/12),-.25)*CFrame.Angles(math.rad(165-15*math.cos(Sine/12)),math.rad(-10+5*math.sin(Sine/12)),math.rad(10))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5-.15*math.cos(Sine/12),.5*math.sin(Sine/12))*CFrame.Angles(math.rad(-30*math.sin(Sine/12)),math.rad(5*math.cos(Sine/12)),0)*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.9-.2*math.cos(Sine/12),.5*math.sin(Sine/12))*CFrame.Angles(math.rad(-10-40*math.sin(Sine/12)),math.rad(90+5*math.cos(Sine/12)),math.rad(2.5*math.cos(Sine/12))),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-.9+.2*math.cos(Sine/12),-.5*math.sin(Sine/12))*CFrame.Angles(math.rad(-10+40*math.sin(Sine/12)),math.rad(-90+5*math.cos(Sine/12)),math.rad(2.5*math.cos(Sine/12))),.25)
				Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15)*CFrame.Angles(math.rad(-90),0,0),.25)
			else
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,.05*math.cos(Sine/12))*CFrame.Angles(math.rad(15),0,0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(-15-3*math.cos(Sine/12)),math.rad(5-5*math.sin(Sine/12)),0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5+0.1*math.cos(Sine/12),0)*CFrame.Angles(math.rad(-53.75+1.75*math.cos(Sine/12)),0,math.rad(5))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5+.1*math.sin(Sine/12),0)*CFrame.Angles(math.rad(15),0,math.rad(-5+5*math.cos(Sine/12)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-1-.05*math.cos(Sine/12),-.01)*CFrame.Angles(math.rad(10),math.rad(80),math.rad(0)),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1-.05*math.cos(Sine/12),-.01)*CFrame.Angles(math.rad(20),math.rad(-80),math.rad(0)),.25)
				Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15)*CFrame.Angles(math.rad(-106.3-.9*math.cos(Sine/12)),0,0),.25)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75),0),.25)
		elseif Mode == 19 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(.5*math.cos(Sine/50),0,-.5*math.sin(Sine/50))*CFrame.Angles(math.rad(40),0,0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.new(0,-.25,0)*CFrame.Angles(math.rad(-40),0,0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(5+2*math.cos(Sine/19)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(Sine/19)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-20+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(Sine/37)),0,0),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-20-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
			else
				Welds.RootJoint.C0 = Clerp2(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(Sine / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				Welds.Neck.C0 = Clerp2(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-1+-2*COS(Sine / 32)), RAD(0), RAD(10)), 1 / Animation_Speed) 
				Welds.RightShoulder.C0 = Clerp2(Welds.RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(40+PlaybackLoudness/7.5), RAD(0), RAD(10)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				Welds.LeftShoulder.C0 = Clerp2(Welds.LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(40+PlaybackLoudness/7.5), RAD(0), RAD(-10)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				Welds.RightHip.C0 = Clerp2(Welds.RightHip.C0, CF(1, -1 - 0.025 * COS(Sine / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				Welds.LeftHip.C0 = Clerp2(Welds.LeftHip.C0, CF(-1, -1 - 0.05 * COS(Sine / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75),0),.25)
		elseif Mode == 15 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(.5*math.cos(Sine/50),0,-.5*math.sin(Sine/50))*CFrame.Angles(math.rad(40),0,0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.new(0,-.25,0)*CFrame.Angles(math.rad(-40),0,0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(5+2*math.cos(Sine/19)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(Sine/19)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-20+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(Sine/37)),0,0),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-20-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
			else
				local SINE = Sine
				local Animation_Speed = 2
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CF(0 - 0.05 * COS(SINE / 15) + 0.05 * SIN(SINE / 15), 0, 0 + 0.05 * COS(SINE / 20)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / Animation_Speed)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CF(1.4, 0.35, 0.4) * ANGLES(RAD(135), RAD(0), RAD(3)) * ANGLES(RAD(0 - 1.5 * COS(SINE / 15) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1.4, 0.35, 0.4) * ANGLES(RAD(15), RAD(0), RAD(12)) * ANGLES(RAD(0 - 1.5 * COS(SINE / 15) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CF(1 - 0.05 * COS(SINE / 15) + 0.05 * SIN(SINE / 15), -1 - 0.05 * COS(SINE / 20), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CF(-1, -1- 0.2 * COS(SINE / 12) , 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75),0),.25)
		elseif Mode == 20 then
			if Movement.Walking then
				Welds.RightWing.C0 = Clerp(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
				Welds.LeftWing.C0 = Clerp(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,0+.5*math.cos(Sine/15))*CFrame.Angles(math.rad(40),math.rad(-5*math.cos(Sine/30)),0),.25)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.new(0,-.25,0)*CFrame.Angles(math.rad(-40),0,0),.25)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(5+2*math.cos(Sine/19)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(Sine/19)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-20+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(0+5*math.cos(Sine/37)),0,0),.25)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-20-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
				Welds.GunJoint.C0 = Clerp(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-99),math.rad(0),math.rad(0)),1/2)
			else
				Welds.RightWing.C0 = Clerp(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105),0),.25)
				Welds.LeftWing.C0 = Clerp(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75),0),.25)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-2 - 2* SIN(Sine / 6)), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(160), RAD(0), RAD(15-15* SIN(Sine / 12))) * RIGHTSHOULDERC0, 0.8 / Animation_Speed)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-15+15* SIN(Sine / 12))) * LEFTSHOULDERC0, 0.8 / Animation_Speed)
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0 * CF(0, 0, 0+0.1* SIN(Sine / 6)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0, CF(1 , -1-0.1* SIN(Sine / 6), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-2+2* SIN(Sine / 6)), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0, CF(-1, -1-0.1* SIN(Sine / 6), 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-2+2* SIN(Sine / 6)), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				Welds.GunJoint.C0 = Clerp(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
			end
		elseif Mode == 16 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(.5*math.cos(Sine/50),0,-.5*math.sin(Sine/50))*CFrame.Angles(math.rad(40),0,0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.new(0,-.25,0)*CFrame.Angles(math.rad(-40),0,0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(5+2*math.cos(Sine/19)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(Sine/19)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-20+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(Sine/37)),0,0),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-20-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
			else
				local SINE = Sine
				local Animation_Speed = 2
				local sine = Sine
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, 0+.15*SIN(sine/32)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(40), RAD(-10), RAD(0)), 0.15 / Animation_Speed)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10+5*SIN(sine/24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10-5*SIN(sine/24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CF(1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CF(-1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				local snap = math.random(1,72)
				if snap == 1 then	
					Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-100000-Music.PlaybackLoudness/7,100000+Music.PlaybackLoudness/7)), RAD(MRANDOM(-99999-Music.PlaybackLoudness/7,99999+Music.PlaybackLoudness/7)), RAD(MRANDOM(-200-Music.PlaybackLoudness/7,48375935+Music.PlaybackLoudness/7))), 1 / Animation_Speed) 
				end
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75),0),.25)
		elseif Mode == 17 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(.5*math.cos(Sine/50),0,-.5*math.sin(Sine/50))*CFrame.Angles(math.rad(40),0,0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.new(0,-.25,0)*CFrame.Angles(math.rad(-40),0,0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(5+2*math.cos(Sine/19)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(Sine/19)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-20+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(Sine/37)),0,0),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-20-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
			else
				local SINE = Sine
				local Animation_Speed = 2
				local sine = Sine
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.045 * COS(SINE / 32)) * ANGLES(RAD(0), RAD(0), RAD(-35)) * ANGLES(RAD(2 - 0.4 * COS(SINE / 32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 + 1.2 * COS(SINE / 12)), RAD(2 + 2 * COS(SINE / 12)), RAD(30)) * ANGLES(RAD(0), RAD(2 + -2 * COS(SINE / 12)), RAD(0)), 1 / Animation_Speed)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CF(1.15, 0 + .1*SIN(SINE/16), -.7) * ANGLES(RAD(180), RAD(5), RAD(10))* RIGHTSHOULDERC0, 0.15 / 3)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(.2, 0 + .1*SIN(SINE/16), -.7) *ANGLES(RAD(180),RAD(-5),RAD(40)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CF(1, -1 + 0.01, -0.02) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75),0),.25)
		elseif Mode == 18 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(.5*math.cos(Sine/50),0,-.5*math.sin(Sine/50))*CFrame.Angles(math.rad(40),0,0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.new(0,-.25,0)*CFrame.Angles(math.rad(-40),0,0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(5+2*math.cos(Sine/19)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(Sine/19)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-20+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(Sine/37)),0,0),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-20-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
			else
				local SINE = Sine
				local Animation_Speed2 = 2.5
				local sine = Sine
				local sick = Music
				if MRANDOM(1,10) == 1 then
					Welds.Neck.C0=Clerp(Welds.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
				end
				if math.random(1,8) == 1 then
					Welds.Neck.C0 = Clerp(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-87498,12093847)), RAD(MRANDOM(-123456,3746525)), RAD(MRANDOM(-2134567876,98764356))), 0.15 / Animation_Speed2)
				end
				if(math.random(1,4)==1)then
					Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed2)
					Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * LEFTSHOULDERC0, 0.15 / Animation_Speed2)
				end	
				if MRANDOM(1,10) == 1 then
					Welds.Neck.C0=Clerp(Welds.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
				end
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0*CF(0 + 0.02 * math.cos(SINE / 40),0 - 0.06 * math.cos(SINE / 40),-0.05 - 0.05 * math.cos(SINE / 20))*ANGLES(math.rad(0 + 2 * math.cos(SINE / 20)),math.rad(0 + 2 * math.cos(SINE / 40)),math.rad(-20 + 6 * math.cos(SINE / 40))),.1)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,NECKC0*ANGLES(math.rad(6),math.rad(0 - 2 * math.cos(SINE / 42)),math.rad(20 - 6 * math.cos(SINE / 40))),.1)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(140 + 5 * COS(SINE /32)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.8 / Animation_Speed2)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1.1, 0.4 - 0.05 * COS(SINE / 30), 0.25 - 0.025 * COS(SINE / 20)) * ANGLES(RAD(-30), RAD(0), RAD(30)) * LEFTSHOULDERC0, 0.4 / Animation_Speed2)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CF(1,-1 + 0.05 * math.cos(SINE / 20)  - 0.02 * math.cos(SINE / 40),0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3 + 2 * math.cos(SINE / 40)),math.rad(0 - 6 * math.cos(SINE / 40)),math.rad(-6 + 2 * math.cos(SINE / 20) - 6 * math.cos(SINE / 40))),.1)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CF(-1,-1 + 0.05 * math.cos(SINE / 20) - 0.02 * math.cos(SINE / 40),0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3 - 2 * math.cos(SINE / 40)),math.rad(10 - 6 * math.cos(SINE / 40)),math.rad(3 - 2 * math.cos(SINE / 20) - 3 * math.cos(SINE / 40))),.1)
				local snap = math.random(1,72)
				if snap == 1 then
					Welds.Neck.C0 = Clerp(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-100000-sick.PlaybackLoudness/7,100000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-99999-sick.PlaybackLoudness/7,99999+sick.PlaybackLoudness/7)), RAD(MRANDOM(-200-sick.PlaybackLoudness/7,48375935+sick.PlaybackLoudness/7))), 1 / Animation_Speed2) 
				end 
				if MRANDOM(1,20+sick.PlaybackLoudness/7) == 1 then
					Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-90-sick.PlaybackLoudness/7,90+sick.PlaybackLoudness/7)), RAD(MRANDOM(-30-sick.PlaybackLoudness/7,30+sick.PlaybackLoudness/7)), RAD(MRANDOM(-50-sick.PlaybackLoudness/7,50+sick.PlaybackLoudness/7)))* RIGHTSHOULDERC0, 1 / Animation_Speed2)
					Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-10000-sick.PlaybackLoudness/7,10000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-900-sick.PlaybackLoudness/7,900+sick.PlaybackLoudness/7)), RAD(MRANDOM(-20-sick.PlaybackLoudness/7,20+sick.PlaybackLoudness/7)))* LEFTSHOULDERC0, 1 / Animation_Speed2)
				end
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75),0),.25)
		elseif Mode == 6 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0 * CFrame.new(0,0,0 - .5 * math.sin(Sine/9)) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(0)),.7/3)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0 * CFrame.new(0,-.05,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),.7/3)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,-.1) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)) * Welds.Defaults.RightShoulder.C0,.7/3)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(135),math.rad(0),math.rad(0)) * Welds.Defaults.LeftShoulder.C0,.7/3)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-1,-.01) * CFrame.Angles(math.rad(-10),math.rad(80),math.rad(5+5*math.sin(Sine/9))),1/2)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,-.01) * CFrame.Angles(math.rad(0),math.rad(-80),math.rad(-5-5*math.sin(Sine/9))),1/2)
				Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1)
			else
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0 * CFrame.new(0,0,0 - .5 * math.sin(Sine/9)) * CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),.7/3)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0 * CFrame.new(0,-.05,0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.7/3)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.25,.5,-.1) * CFrame.Angles(math.rad(45),math.rad(-45),math.rad(0)) * Welds.Defaults.RightShoulder.C0,.7/3)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1,.75,.1) * CFrame.Angles(math.rad(-165),math.rad(0),math.rad(40)) * Welds.Defaults.LeftShoulder.C0,.7/3)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(-12.5),math.rad(90),math.rad(0)) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.7/3)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(12.5),math.rad(-90),math.rad(0)) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.7/3)
				Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 7 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0 * CFrame.new(0, 0, -0.1) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(0)), 0.15 / 3)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, Welds.Defaults.Neck.C0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(math.random(-15, 25) - 2.5 * math.sin(Sine / 12)), math.rad(math.random(-15, 25)), math.rad(math.random(-15, 25))), 1 / 3)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CFrame.new(1.55, 0.5, 0.5) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* Welds.Defaults.RightShoulder.C0, 1 / 3)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-35 * math.cos(Sine / Movement.WalkSpeed)), math.rad(0), math.rad(-5)) * Welds.Defaults.LeftShoulder.C0, 0.35 / 3)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CFrame.new(1 , -1 - 0.15 * math.cos(Sine / Movement.WalkSpeed*2), -0.2+ 0.2 * math.cos(Sine / Movement.WalkSpeed)) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-15)), 2 / 3)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CFrame.new(-1, -1 - 0.15 * math.cos(Sine / Movement.WalkSpeed*2), -0.2+ -0.2 * math.cos(Sine / Movement.WalkSpeed)) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(15)), 2 / 3)
			else
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, Welds.Defaults.Neck.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(7 + 6.5 * math.sin(Sine / 24)), math.rad(10*math.sin(Sine/24)), math.rad(6*math.sin(Sine/24))), 0.5 / 3)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(120 + 6.5 * math.sin(Sine / 34)), math.rad(5*math.sin(Sine/34)), math.rad(10 * math.sin(Sine / 34))) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(0)) * Welds.Defaults.RightShoulder.C0, 0.5 / 3)
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0 * CFrame.new(0, 0, 1.5 + 0.5 * math.cos(Sine / 32)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.4 / 3)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(1), math.rad(0), math.rad(22)) * Welds.Defaults.LeftShoulder.C0, 0.4 / 3)
				Welds.RightHip.C0=obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-0.4,-0.5)*CFrame.Angles(math.rad(0 + 6.5 * math.sin(Sine/12)),math.rad(90),math.rad(40*math.sin(Sine/34)))*CFrame.Angles(math.rad(-3),math.rad(0 - 1 * math.cos(Sine / 36)),math.rad(-10 - 2 * math.cos(Sine / 39))),0.2)
				Welds.LeftHip.C0=obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(10 + 4.6 * math.sin(Sine/12)),math.rad(-90),math.rad(20*math.sin(Sine/34)))*CFrame.Angles(math.rad(-3),math.rad(0 - 1 * math.cos(Sine / 36)),math.rad(10 + 6 * math.cos(Sine / 31))),0.2)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 8 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CF(0 + .25*Cos(Sine/63)+.92*Sin(Sine/95), 0, 1 + 1 * SIN(Sine / 53)) * ANGLES(RAD(70), RAD(0-Character.Torso.RotVelocity.y), RAD(0 - Character.Torso.RotVelocity.Y * 4.5 + 3 * COS(Sine / 47))), 0.15 / 3)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(Sine / 12)), RAD(0), RAD(0)), 0.15 / 3)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12 - 4.10 * SIN(Sine / 12))) * RIGHTSHOULDERC0, 0.15 / 3)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12 + 4.10 * SIN(Sine / 12))) * LEFTSHOULDERC0, 0.15 / 3)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CF(1, -.5 - 0.02 * SIN(Sine / 12), -0.5) * ANGLES(RAD(-10 - 2.5 * SIN(Sine / 21)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / 3)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CF(-1, -1 - 0.02 * SIN(Sine / 12), -0.01) * ANGLES(RAD(-20 - 2.5 * SIN(Sine / 51)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / 3)	
			else
				local snap = math.random(1,3)
				if snap == 1 then
					Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))),1/3)
				end
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CF(0,0,2+.5*COS(Sine / 32))*ANGLES(RAD(-25 + 2*Cos(Sine/42)),RAD(0),RAD(0)), 1 / 3)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-2.5+1*COS(Sine / 12)), RAD(MRANDOM(-5,5)), RAD(0)), 1 / 3) 
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-30), RAD(0), RAD(15 - 5.5 * COS(Sine / 20))) * RIGHTSHOULDERC0, 1 / 3)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-30), RAD(0), RAD(-15 + 5.5 * COS(Sine / 20))) * LEFTSHOULDERC0, 1 / 3)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CF(1, -1, -0.2) * ANGLES(RAD(-30+2*Cos(Sine/32)), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / 3)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CF(-1, -1, -0.2) * ANGLES(RAD(-30+2*Cos(Sine/46)), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / 3)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 9 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0, Welds.Defaults.RootJoint.C0 * CFrame.new(0, 0, -0.175 + 0.025 * math.cos(Sine / 3.5) + -math.sin(Sine / 3.5) / 7) * CFrame.Angles(math.rad(9-2.5 * math.cos(Sine / 3.5)), math.rad(0), math.rad(10 * math.cos(Sine / 7))), 0.15)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, Welds.Defaults.Neck.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+math.random(-15,15)), math.rad(0+math.random(-15,15)), math.rad(0+math.random(-15,15))), 0.35 / 3)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CFrame.new(1, -0.925 - 0.5 * math.cos(Sine / 7) / 2, 0.5 * math.cos(Sine / 7) / 2) * CFrame.Angles(math.rad(-15 - 35 * math.cos(Sine / 7)) + -math.sin(Sine / 7) / 2.5, math.rad(90 - 2 * math.cos(Sine / 7)), math.rad(0)) * CFrame.Angles(math.rad(0 + 2.5 * math.cos(Sine / 7)), math.rad(0), math.rad(0)), 0.3)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CFrame.new(-1, -0.925 + 0.5 * math.cos(Sine / 7) / 2, -0.5 * math.cos(Sine / 7) / 2) * CFrame.Angles(math.rad(-15 + 35 * math.cos(Sine / 7)) + math.sin(Sine / 7) / 2.5, math.rad(-90 - 2 * math.cos(Sine / 7)), math.rad(0)) * CFrame.Angles(math.rad(0 - 2.5 * math.cos(Sine / 7)), math.rad(0), math.rad(0)), 0.3)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-60 - 5 * math.cos(Sine / 12)),math.rad(0 - 2.5 * math.cos(Sine / 12)),math.rad(5 + 2.5 * math.cos(Sine / 12))) * RIGHTSHOULDERC0,1 / 3)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CFrame.new(-1, 0.5 + 0.05 * math.sin(Sine / 30), 0.025 * math.cos(Sine / 20)) * CFrame.Angles(math.rad(-70) * math.cos(Sine / 7) , math.rad(-90),	math.rad(-5)), 0.1)
			else
				local HITFLOOR,HITPOS = rayCast(Character.Torso.Position, (CF(Character.Torso.Position, Character.Torso.Position + VT(0, -1, 0))).lookVector, 4, Instance.new("Model"))
				local POSITION = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(MRANDOM(3,6),0,0).p
				local SPHEREFLOOR,SPHEREPOS = rayCast(POSITION+VT(0,1,0), (CF(POSITION, POSITION + VT(0, -1, 0))).lookVector, 5, Instance.new("Model"))
				obamagaming.WEffect({Time = MRANDOM(10,30)*2, EffectType = "Sphere", Size = VT(1.5,1.5,1.5)*1, Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(SPHEREPOS-VT(0,2,0))*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = SPHEREPOS+VT(0,MRANDOM(15,25)/5,0), MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Neon", Color = Color3.new(PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2,RED = true})
				obamagaming.WEffect({Time = MRANDOM(10,30)*2, EffectType = "Skull", Size = VT(1.5,1.5,1.5)*3.95, Size2 = VT(0.425,0.425,0.425), Transparency = 0, Transparency2 = 1, CFrame = CF(SPHEREPOS-VT(0,2,0))*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = SPHEREPOS+VT(0,MRANDOM(25,35)/5,0), MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Neon", Color = Color3.new(PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2,RED = true})
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0 * CFrame.new(0, -0.1, -0.1 + 0.05 * math.cos(Sine / 12)) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.15 / 3)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(160),0,math.rad(15-5*math.sin(Sine/25)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CFrame.new(-1.5, 0.5 + 0.025 * math.cos(Sine / 12), 0) * CFrame.Angles(math.rad(0), math.rad(0 + 7.5 * math.sin(Sine / 12)), math.rad(-12 - 7.5 * math.sin(Sine / 12))) * Welds.Defaults.LeftShoulder.C0, 0.15 / 3)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CFrame.new(1, -1 - 0.05 * math.cos(Sine / 12), -0.01) * CFrame.Angles(math.rad(20), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(-8), math.rad(0), math.rad(0)), 0.15 / 3)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CFrame.new(-1, -1 - 0.05 * math.cos(Sine / 12), -0.01) * CFrame.Angles(math.rad(5), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(-8), math.rad(0), math.rad(0)), 0.15 / 3)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, Welds.Defaults.Neck.C0 * CFrame.Angles(math.rad(20), math.rad(-10 - 2.5 * math.sin(Sine / 10)), math.rad(20 * math.cos(Sine / 10))), 1 / 3)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 10 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0, Welds.Defaults.RootJoint.C0 * CFrame.new(0, 0, -0.175 + 0.025 * math.cos(Sine / 3.5) + -math.sin(Sine / 3.5) / 7) * CFrame.Angles(math.rad(9-2.5 * math.cos(Sine / 3.5)), math.rad(0), math.rad(10 * math.cos(Sine / 7))), 0.15)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, Welds.Defaults.Neck.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+math.random(-15,15)), math.rad(0+math.random(-15,15)), math.rad(0+math.random(-15,15))), 0.35 / 3)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CFrame.new(1, -0.925 - 0.5 * math.cos(Sine / 7) / 2, 0.5 * math.cos(Sine / 7) / 2) * CFrame.Angles(math.rad(-15 - 35 * math.cos(Sine / 7)) + -math.sin(Sine / 7) / 2.5, math.rad(90 - 2 * math.cos(Sine / 7)), math.rad(0)) * CFrame.Angles(math.rad(0 + 2.5 * math.cos(Sine / 7)), math.rad(0), math.rad(0)), 0.3)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CFrame.new(-1, -0.925 + 0.5 * math.cos(Sine / 7) / 2, -0.5 * math.cos(Sine / 7) / 2) * CFrame.Angles(math.rad(-15 + 35 * math.cos(Sine / 7)) + math.sin(Sine / 7) / 2.5, math.rad(-90 - 2 * math.cos(Sine / 7)), math.rad(0)) * CFrame.Angles(math.rad(0 - 2.5 * math.cos(Sine / 7)), math.rad(0), math.rad(0)), 0.3)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-60 - 5 * math.cos(Sine / 12)),math.rad(0 - 2.5 * math.cos(Sine / 12)),math.rad(5 + 2.5 * math.cos(Sine / 12))) * RIGHTSHOULDERC0,1 / 3)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CFrame.new(-1, 0.5 + 0.05 * math.sin(Sine / 30), 0.025 * math.cos(Sine / 20)) * CFrame.Angles(math.rad(-70) * math.cos(Sine / 7) , math.rad(-90),	math.rad(-5)), 0.1)
				Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
			else
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0 * CFrame.new(0,0,-.2) * CFrame.Angles(math.rad(-Sine*6),math.rad(0),math.rad(0)),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0,.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-75*math.sin(Sine/5)),math.rad(0),math.rad(0)) * Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(75*math.sin(Sine/5)),math.rad(0),math.rad(0)) * Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(75*math.sin(Sine/5)),math.rad(90),math.rad(0)),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(-75*math.sin(Sine/5)),math.rad(-90),math.rad(0)),.25)
				Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),.25)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 11 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,-.5*math.sin(Sine/25)*S)*CFrame.Angles(math.rad(20),0,0),.25)
				if ILNecksnap then
					Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0,1)
					ILNecksnap = false
				else
					Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0,.25)
				end
				pcall(function()
					if math.random(1,math.floor((15/1)+.5)) == 1 then
						Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))),1)
						ILNecksnap = true
					end
				end)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5*S,.5*S,0)*CFrame.Angles(math.rad(-10),0,0)*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,.5*S,0)*CFrame.Angles(math.rad(20),0,math.rad(-10-10*math.cos(Sine/25)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1*S,-1*S,0)*CFrame.Angles(math.rad(-20),math.rad(80),math.rad(10+10*math.cos(Sine/25))),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1*S,-1*S,0)*CFrame.Angles(math.rad(-10),math.rad(-80),math.rad(-10-10*math.cos(Sine/25))),.25)
			else
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,-.5*math.sin(Sine/25)*S)*CFrame.Angles(math.rad(20),0,0),.25)
				if ILNecksnap then
					Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(Sine/50)),0),1)
					ILNecksnap = false
				else
					Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(Sine/50)),0),.25)
				end
				pcall(function()
					if math.random(1,math.floor((15/1)+.5)) == 1 then
						Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20+math.random(-20,20)),math.rad((10*math.sin(Sine/50))+math.random(-20,20)),math.rad(math.random(-20,20))),1)
						ILNecksnap = true
					end
				end)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5*S,.5*S,0)*CFrame.Angles(math.rad(-10),0,0)*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,.5*S,0)*CFrame.Angles(math.rad(20),0,math.rad(-10-10*math.cos(Sine/25)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1*S,-1*S,0)*CFrame.Angles(math.rad(10),math.rad(80),math.rad(10+10*math.cos(Sine/25))),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1*S,-1*S,0)*CFrame.Angles(math.rad(20),math.rad(-80),math.rad(-10-10*math.cos(Sine/25))),.25)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 12 then
			if Movement.Walking then
				Welds.RightHip.C0=obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-20)),.2)
				Welds.LeftHip.C0=obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(20)),.2)
				Welds.RootJoint.C0=obamagaming.obunga(Welds.RootJoint.C0,ROOTC0*CFrame.new(0,-0.5,0.5 + 0.1 * math.cos(Sine / 28))*angles(math.rad(75),math.rad(0),math.rad(0)),.2)
				Welds.Neck.C0=obamagaming.obunga(Welds.Neck.C0,NECKC0*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
				Welds.RightShoulder.C0=obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(-30),math.rad(0),math.rad(30 + 2.5 * math.cos(Sine / 28))),.2)
				Welds.LeftShoulder.C0=obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(-30),math.rad(0),math.rad(-30 - 2.5 * math.cos(Sine / 28))),.2)
			else
				Welds.RightHip.C0=obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.1)
				Welds.LeftHip.C0=obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.1)
				Welds.RootJoint.C0=obamagaming.obunga(Welds.RootJoint.C0,ROOTC0*CFrame.new(0,0,1.5 + 0.1 * math.cos(Sine / 28))*angles(math.rad(0 - 1 * math.cos(Sine / 34)),math.rad(0),math.rad(0)),.1)
				Welds.Neck.C0=obamagaming.obunga(Welds.Neck.C0,NECKC0*angles(math.rad(15),math.rad(0),math.rad(0)),.1)
				Welds.RightShoulder.C0=obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(20 + 2.5 * math.cos(Sine / 28))),.1)
				Welds.LeftShoulder.C0=obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-20 - 2.5 * math.cos(Sine / 28))),.1)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 13 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CF(0 + .25*Cos(Sine/63)+.92*Sin(Sine/95), 0, 1 + 1 * SIN(Sine / 53)) * ANGLES(RAD(70), RAD(0-Character.Torso.RotVelocity.y), RAD(0 - Character.Torso.RotVelocity.Y * 4.5 + 3 * COS(Sine / 47))), 0.15 / 3)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(Sine / 12)), RAD(0), RAD(0)), 0.15 / 3)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12 - 4.10 * SIN(Sine / 12))) * RIGHTSHOULDERC0, 0.15 / 3)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12 + 4.10 * SIN(Sine / 12))) * LEFTSHOULDERC0, 0.15 / 3)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CF(1, -.5 - 0.02 * SIN(Sine / 12), -0.5) * ANGLES(RAD(-10 - 2.5 * SIN(Sine / 21)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / 3)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CF(-1, -1 - 0.02 * SIN(Sine / 12), -0.01) * ANGLES(RAD(-20 - 2.5 * SIN(Sine / 51)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / 3)	
			else
				local snap2 = math.random(1,2)
				if snap2 == 1 then
					Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CF(1, 0.5, -0.6) * ANGLES(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))) * RIGHTSHOULDERC0, 0.15 / 3)
					Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1, 0.5, -0.6) * ANGLES(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))) * LEFTSHOULDERC0, 0.15 / 3)
				end
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, 3 + 1 * SIN(Sine / 26)) * ANGLES(RAD(25 - 2.5*SIN(Sine/24)), RAD(0), RAD(0)), 0.15 / 3)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-15 - 2.5 * SIN(Sine / 12*5)), RAD(0), RAD(math.random(-5,5))), 0.15 / 3)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CF(1, 0.5, -0.6) * ANGLES(RAD(165), RAD(0), RAD(-50)) * RIGHTSHOULDERC0, 0.15 / 3)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1, 0.5, -0.6) * ANGLES(RAD(165), RAD(0), RAD(50)) * LEFTSHOULDERC0, 0.15 / 3)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CF(1, -.5 - 0.02 * SIN(Sine / 12), -0.5) * ANGLES(RAD(-70 - 2.5 * SIN(Sine / 32)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / 3)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CF(-1, -1 - 0.02 * SIN(Sine / 12), -0.01) * ANGLES(RAD(-70 - 2.5 * SIN(Sine / 16)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / 3)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 14 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0, ROOTC0 * CF(0* 1, 0* 1, -0.175 + 0.025 * COS(Sine / 3.5) + -SIN(Sine / 3.5) / 7* 1) * ANGLES(RAD(26 - 4.5 * COS(Sine / 3.5)), RAD(0) - Character.Torso.RotVelocity.Y / 75, RAD(15 * COS(Sine / 7))), 0.15)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25 + MRANDOM(-5,5) - 4 * COS(Sine / 12)), RAD(MRANDOM(-5,5)), RAD(15)), 1 / 3)
				if math.random(1,5) == 1 then
					Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + MRANDOM(-25,25) - 4 * COS(Sine / 12)), RAD(MRANDOM(-25,25)), RAD(0)), 1.5 / 3)	
				end
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CF(1* 1, -0.925 - 0.5 * COS(Sine / 7) / 2* 1, 0.7 * COS(Sine / 7) / 2* 1) * ANGLES(RAD(-15 - 55 * COS(Sine / 7)) - Character.RightLeg.RotVelocity.Y / 75 + -SIN(Sine / 7) / 2.5, RAD(90 - 0.1 * COS(Sine / 7)), RAD(0)) * ANGLES(RAD(0 + 0.1 * COS(Sine / 7)), RAD(0), RAD(0)), 0.3)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CF(-1* 1, -0.925 + 0.5 * COS(Sine / 7) / 2* 1, -0.7 * COS(Sine / 7) / 2* 1) * ANGLES(RAD(-15 + 55 * COS(Sine / 7)) + Character.LeftLeg.RotVelocity.Y / 75 + SIN(Sine / 7) / 2.5, RAD(-90 - 0.1 * COS(Sine / 7)), RAD(0)) * ANGLES(RAD(0 - 0.1 * COS(Sine / 7)), RAD(0), RAD(0)), 0.3)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5+.2*math.sin(Sine/12),-.25)*CFrame.Angles(math.rad(165-15*math.cos(Sine/12)),math.rad(-10+5*math.sin(Sine/12)),math.rad(10))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1, 0.5 + 0.05 * SIN(Sine / 30)* 1, -0.34 * COS(Sine / 7* 1)) * ANGLES(RAD(-110)  * COS(Sine / 7) , RAD(-90) ,	RAD(-13) + Character.LeftArm.RotVelocity.Y / 75), 0.15)
			else
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(Sine / 12)) * ANGLES(RAD(0), RAD(0), RAD(-35)), 1 / 5)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25 + MRANDOM(-5,5) - 4 * COS(Sine / 12)), RAD(MRANDOM(-5,5)), RAD(15)), 1 / 5)
				if math.random(1,5) == 1 then
					Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + MRANDOM(-25,25) - 4 * COS(Sine / 12)), RAD(MRANDOM(-25,25)), RAD(0)), 1.5 / 3)	
				end
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(160),0,math.rad(15-5*math.sin(Sine/25)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1.5, 0.5 + 0.025 * COS(Sine / 12), 0) * ANGLES(RAD(0), RAD(0 + 7.5 * SIN(Sine / 12)), RAD(-12 - 7.5 * SIN(Sine / 12))) * LEFTSHOULDERC0, 0.15 / 5)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CF(1, -1 - 0.05 * COS(Sine / 12), 0) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / 5)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CF(-1, -1 - 0.05 * COS(Sine / 12), 0) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / 5)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		end
		Movement.CFrame = obamagaming.obunga(Movement.CFrame,Movement.PotentialCFrame,.1)
		Movement.CFrame = CFrame.new(obamagaming.obunga(Movement.CFrame,Movement.PotentialCFrame,.25).Position)*Movement.CFrame-Movement.CFrame.Position
		wait()
	end
end))
local Chatted = Player.Chatted:Connect(function(Message)
	local Message,Message_ = Message,Message
	if string.sub(Message,1,5) == "stop/" then
		coroutine.resume(coroutine.create(function()
			stop()
		end))
		return
	end
	if string.sub(Message,1,3) == "/e " then
		Message = string.sub(Message,4)
	end
	if string.sub(string.lower(Message),1,3) == "lc/" then
		Message = string.sub(Message,4)
		local Arguments = string.split(Message,"/")
		local Command = type(Arguments[1]) == "string" and string.lower(Arguments[1]) or ""
		if Command then
			table.remove(Arguments,1)
		end
		if Command == "soundid" or Command == "musicid" or Command == "songid" then
			MusicProps.SoundId = type(tonumber(Arguments[1])) == "number" and "rbxassetid://"..tostring(Arguments[1]) or MusicProps.SoundId
			MusicStart = tick()
			MusicProps.Volume = 2
		elseif Command == "clearonleave" or Command == "clearonremove" or Command == "clearondisconnect" or Command == "clearonkick" then
			local Bool = Arguments[2]
			if type(Bool) == "string" then
				if Bool == "true" or Bool == "on" then
					AntiFat = true
				elseif Bool == "false" or Bool == "off" then
					AntiFat = false
				end
			else
				AntiFat = false
			end
		--[[elseif Command == "toggleidentity" then
			local Bool = Arguments[2]
			if type(Bool) == "string" then
				if Bool == "true" or Bool == "on" then
					HideIdentity = true
				elseif Bool == "false" or Bool == "off" then
					HideIdentity = false
				end
			else
				HideIdentity = not HideIdentity
			end]]
		end
	end
	if Message == Message_ then
		if HideIdentity then
			Event:FireAllClients("Chat",{Starter = Name, Text = Message})
		else
			Event:FireAllClients("Chat",{Starter = Name, Text = Message})
		end
	end
end)
local CurrentColor = Color3.new(1,0,0)
local badColor = BrickColor.new("Black").Color
local doColors = true
coroutine.resume(coroutine.create(function()
	while doColors == true do
		for i = 0,1,0.06 do
			for bruh = 1,3 do
				game:GetService("RunService").Heartbeat:Wait()
			end
			if Mode == 0 then
				for a = 1,360,1 do wait(.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
					CurrentColor = Color3.fromHSV(a/360,1,1)
					cColor.Value = CurrentColor
				end
			else
				for a = 1,360,1 do wait(.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
					CurrentColor = Color3.fromHSV(a/360,1,1)
					cColor.Value = CurrentColor
				end
			end
		end
	end
end))
MusicProps.SoundId = "rbxassetid://348832364"

local doe = 0
coroutine.wrap(function()
	while true do
		game:GetService("RunService").Heartbeat:Wait()
		if doe < 360 then
			doe = doe + 2
		else
			doe = 0
		end
	end
end)()
TOBANISH = {}
local bruhEvenToChat = CreateRemote(BruhRemotes)
bruhEvenToChat.Name = "Chat"
workspace.ChildAdded:connect(function(instance)
	for BANISH = 1, #TOBANISH do
		if TOBANISH[BANISH] ~= nil then
			if instance.Name == TOBANISH[BANISH] then
				coroutine.resume(coroutine.create(function()
					instance:ClearAllChildren()
					bruhEvenToChat:FireAllClients("I like how you try but you must accept death.")
					game:GetService("Debris"):AddItem(instance,0.0005)
				end))
			end
		end
	end
end)
function CreatePart(FORMFACTOR,PARENT,MATERIAL,REFLECTANCE,TRANSPARENCY,BRICKCOLOR,NAME,SIZE,ANCHOR)
	local NEWPART = Instance.new("Part")
	NEWPART.Massless = true
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.Color = BRICKCOLOR
	NEWPART.Name = "Bruh"
	NEWPART.Size = SIZE
	NEWPART.Position = Character.Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end
local stillraining = false
local SoundServiceProps = {AmbientReverb = Enum.ReverbType.NoReverb,DistanceFactor = 10/3,DopplerScale = 0,RolloffScale = 1}
local yes
local MainLoop = game:GetService("RunService").Heartbeat:Connect(function(s)
	for i,v in pairs(SoundServiceProps) do
		game:FindFirstChildOfClass("SoundService")[i] = v
	end
	tf = tf+s
	for _ = 1,tf/fr do
		Sine = Sine+1
		HBevent:Fire()
		tf = tf-fr
	end
	game:GetService("SoundService").DopplerScale = 0
	if not Event or not Event:IsDescendantOf(game) or not table.find(Services,Event.Parent.ClassName) or Event.Name ~= RemoteName or tick()-LastCall >= 3 then
		LastCall = tick()
		game:GetService("Debris"):AddItem(Event,0)
		Event = CreateRemote(game:GetService(Services[math.random(1,#Services)]))
		local EventConnection = Event.OnServerEvent:Connect(function(v,Pass,Method,Things)
			if type(Method) == "string" and type(Things) == "table" then
				LastCall = tick()
				if Method == "Movement" then
					Movement.PotentialCFrame,Movement.Walking,Mouse.Hit = Things.CFrame,Things.Walking,Things.Hit
				elseif Method == "ReplaceCharacter" then
					for _,v in pairs(Character) do
						if typeof(v) == "Instance" then
							game:GetService("Debris"):AddItem(v,0)
						end
					end
				elseif Method == "ReplaceMusic" then
					game:GetService("Debris"):AddItem(MusicHolder,0)
					game:GetService("Debris"):AddItem(Music,0)
				elseif Method == "AntiFat" then
					AntiFat = Things.AntiFat
				elseif Method == "SwitchMode" then
					spawn(obamagaming.smodeff)
					Mode = Mode+1
					MusicStart = tick()
					if Mode == 0 then
						MusicProps.SoundId = "rbxassetid://9046452333"
						MusicProps.Volume = 1
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 3
						Movement.WalkSpeed = 50
						ChangeName:FireAllClients("SOLID LC")
					elseif Mode == 1 then
						MusicProps.SoundId = "rbxassetid://1836864084"
						MusicProps.Volume = 3
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 3
						Movement.WalkSpeed = 25
					elseif Mode == 2 then
						MusicProps.SoundId = "rbxassetid://1843497734"
						MusicProps.Volume = 1.5
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 3
						Movement.WalkSpeed = 50
					elseif Mode == 3 then
						MusicProps.SoundId = "rbxassetid://1837727559"
						MusicProps.Volume = 1.5
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 3
						Movement.WalkSpeed = 50
					elseif Mode == 4 then
						MusicProps.SoundId = "rbxassetid://1839218785"
						MusicProps.Volume = 4
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 3
						Movement.WalkSpeed = 50
					elseif Mode == 5 then
						MusicProps.SoundId = "rbxassetid://1848090833"
						MusicProps.Volume = 2
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 0
						Movement.WalkSpeed = 16
					elseif Mode == 6 then
						MusicProps.SoundId = "rbxassetid://1839542584"
						MusicProps.Volume = 1.5
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 3
						Movement.WalkSpeed = 50
					elseif Mode == 7 then
						MusicProps.SoundId = "rbxassetid://4835535512"
						MusicProps.Volume = 1.5
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 0
						Movement.WalkSpeed = 16
					elseif Mode == 8 then
						MusicProps.SoundId = "rbxassetid://844654533"
						MusicProps.Volume = 1.5
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 3
						Movement.WalkSpeed = 140
					elseif Mode == 9 then
						MusicProps.SoundId = "rbxassetid://693163614"
						MusicProps.Volume = 1.5
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 0
						Movement.WalkSpeed = 16
					elseif Mode == 10 then
						MusicProps.SoundId = "rbxassetid://2920078671"
						MusicProps.Volume = 1.5
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 0
						Movement.WalkSpeed = 300
					elseif Mode == 11 then
						MusicProps.SoundId = "rbxassetid://6049110238"
						MusicProps.Volume = 1.5
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 3
						Movement.WalkSpeed = 32
					elseif Mode == 12 then
						MusicProps.SoundId = "rbxassetid://6372483829"
						MusicProps.Volume = 2
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 2
						Movement.WalkSpeed = 50
					elseif Mode == 13 then
						MusicProps.SoundId = "rbxassetid://5644788747"
						MusicProps.Volume = 2
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 2
						Movement.WalkSpeed = 16
					elseif Mode == 14 then
						MusicProps.SoundId = "rbxassetid://467883470"
						MusicProps.Volume = 2
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 0
						Movement.WalkSpeed = 50
					elseif Mode == 15 then
						MusicProps.SoundId = "rbxassetid://5541841785"
						MusicProps.Volume = 2
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 0
						Movement.WalkSpeed = 50
					elseif Mode == 16 then
						MusicProps.SoundId = "rbxassetid://866334508"
						MusicProps.Volume = 10
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 0
						Movement.WalkSpeed = 50
					elseif Mode == 17 then
						MusicProps.SoundId = "rbxassetid://6534880329"
						MusicProps.Volume = 10
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 0
						Movement.WalkSpeed = 50
					elseif Mode == 18 then
						MusicProps.SoundId = "rbxassetid://4602123805"
						MusicProps.Volume = 10
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 0
						Movement.WalkSpeed = 50
					elseif Mode == 19 then
						MusicProps.SoundId = "rbxassetid://5963244433"
						MusicProps.Volume = 10
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 0
						Movement.WalkSpeed = 50
						ChangeName:FireAllClients("SOLID VISUALIZER")
					elseif Mode == 20 then
						MusicProps.SoundId = "rbxassetid://6553589083"
						MusicProps.Volume = 10
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 0
						Movement.WalkSpeed = 50
						ChangeName:FireAllClients("Zavodila")
					elseif Mode > 20 then
						Mode = 0
						MusicProps.SoundId = "rbxassetid://348832364"
						MusicProps.Volume = 1
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 3
						Movement.WalkSpeed = 50
						ChangeName:FireAllClients("SOLID LC")
					end
				elseif Method == "PlaybackLoudness" then
					PlaybackLoudness = Things.PlaybackLoudness
				elseif Method == "Attack" and Mode >= 0 then
					if Things.Type == "ClickAttack" then
						pcall(function()
							bruhEvenToChat:FireAllClients("Time you to die")
							local OldMode,WalkSpeed,AttackPosition = Mode,Movement.WalkSpeed,Mouse.Hit.Position
							Mode = -1
							Movement.WalkSpeed = 0
							coroutine.resume(coroutine.create(function()
								for _ = 1,20 do
									wait()
								end
								Mode,Movement.WalkSpeed = OldMode,WalkSpeed
							end))
							for i = .1,1,.1 do
								Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0+.5*math.cos(Sine/50),0,-.5*math.sin(Sine/50))*CFrame.Angles(0,0,math.rad(30)),.25)
								Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(15),0,math.rad(-30)),.25)
								Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(90),0,math.rad(30))*Welds.Defaults.RightShoulder.C0,.25)
								Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(30),0,0)*Welds.Defaults.LeftShoulder.C0,.25)
								Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-15+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(Sine/37)),0,0),.25)
								Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-15-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
								Event:FireAllClients("SetPosition",{CFrame = CFrame.new(Movement.CFrame.Position,Vector3.new(AttackPosition.X,Movement.CFrame.Position.Y,AttackPosition.Z))})
								Movement.CFrame = obamagaming.obunga(Movement.CFrame,CFrame.new(Movement.CFrame.Position,Vector3.new(AttackPosition.X,Movement.CFrame.Position.Y,AttackPosition.Z)),i)
								wait()
							end
							local IgnoreChar,DeadParts = {},{}
							local SoundHolder = Instance.new("Part",nil,{CFrame = Character.Hole2.CFrame})
							local Sound = Instance.new("Sound",SoundHolder,{SoundId = "rbxassetid://642890855",PlaybackSpeed = .65,Volume = 10,PlayOnRemove = true,Playing = true})
							SoundHolder.Parent = game:GetService(Services[math.random(1,#Services)])
							SoundHolder:Destroy()
							local SoundHolder = Instance.new("Part",nil,{Position = AttackPosition})
							local Sound = Instance.new("Sound",SoundHolder,{SoundId = "rbxassetid://821439273",PlaybackSpeed = .8,Volume = 10,PlayOnRemove = true,Playing = true})
							SoundHolder.Parent = game:GetService(Services[math.random(1,#Services)])
							SoundHolder:Destroy()
							for _,v in pairs(Character) do
								if typeof(v) == "Instance" then
									table.insert(IgnoreChar,v)
								end
							end
							for _,v in pairs(workspace:GetChildren()) do
								if v:GetAttribute("IsAnEffect") == true then
									table.insert(IgnoreChar,v)
								end
							end
							local EffectCheck = workspace.ChildAdded:Connect(function(v)
								if v:GetAttribute("IsAnEffect") == true then
									table.insert(IgnoreChar,v)
								end
							end)
							--[[local Parts = workspace:FindPartsInRegion3WithIgnoreList(Region3.new(AttackPosition-Vector3.new(4,4,4),AttackPosition+Vector3.new(4,4,4)),IgnoreChar,100)
							for _,v in pairs(WorldModels) do
								for _,b in pairs(v:FindPartsInRegion3(Region3.new(AttackPosition-Vector3.new(4,4,4),AttackPosition+Vector3.new(4,4,4)),nil,100)) do
									table.insert(Parts,b)
								end
							end
							local PartKiller,PartsToKill = nil,{}
							for _,v in pairs(Parts) do
								local BiggestAxis = v.Size.X
								if v.Size.Y > BiggestAxis then
									BiggestAxis = v.Size.Y
								end
								if v.Size.Z > BiggestAxis then
									BiggestAxis = v.Size.Z
								end
								if (v.Name ~= "Base" and v.Name ~= "Baseplate") or BiggestAxis < 10 then
									v.Archivable = true
									table.insert(DeadParts,v:Clone())
									v.Archivable = false
									local SoundHolder = Instance.new("Part",nil,{CFrame = v.CFrame})
									local Sound = Instance.new("Sound",SoundHolder,{SoundId = "rbxassetid://2785493",Volume = 10,PlayOnRemove = true,Playing = true})
									SoundHolder.Parent = game:GetService(Services[math.random(1,#Services)])
									SoundHolder:Destroy()
									table.insert(PartsToKill,v)
								end
							end
							for _,v in pairs(PartsToKill) do
								local OldParent = v.Parent
								v.Parent = PartKiller
								v.Parent = OldParent
								table.insert(TOBANISH,v.Parent.Name)
								v.Anchored = true
								v.CFrame = CFrame.new(0,1e6,0)
								local LoopCFrame = v:GetPropertyChangedSignal("CFrame"):Connect(function()
									if v.CFrame ~= CFrame.new(0,1e6,0) then
										v.CFrame = CFrame.new(0,1e6,0)
									end
								end)
								local LoopAnchor = v:GetPropertyChangedSignal("Anchored"):Connect(function()
									if v.Anchored ~= true then
										v.Anchored = true
									end
								end)
								local Removed
								Removed = v.AncestryChanged:Connect(function()
									if not v:IsDescendantOf(workspace) then
										LoopCFrame:Disconnect()
										LoopAnchor:Disconnect()
										Removed:Disconnect()
									end
								end)
							end
							for _,b in pairs(DeadParts) do
								for _,v in pairs(b:GetChildren()) do
									if not v:IsA("DataModelMesh") then
										v:Destroy()
									else
										v:ClearAllChildren()
										v.Name = obamagaming["god damn, i really wish i could care"](math.random(10,100))
										v.VertexColor = Vector3.new()
										game:GetService("TweenService"):Create(v,TweenInfo.new(1.5,Enum.EasingStyle.Linear),{Scale = Vector3.new()}):Play()
									end
								end
								b.Name = obamagaming["god damn, i really wish i could care"](math.random(10,100))
								b.Anchored = true
								b.Color = CurrentColor
								b.Material = Enum.Material.Air
								b.CanCollide = false
								game:GetService("TweenService"):Create(b,TweenInfo.new(1.5,Enum.EasingStyle.Linear),{CFrame = CFrame.new(AttackPosition)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(1,360))),Size = Vector3.new()}):Play()
								game:GetService("Debris"):AddItem(b,1.5)
								table.insert(IgnoreChar,b)
								b.Parent = workspace
							end
							for _,v in pairs(game:GetService("Players"):GetPlayers()) do
								local ClientAttack = Instance.new("LightningAttack",nil,{Name = obamagaming["god damn, i really wish i could care"](math.random(10,100)),Disabled = false})
								for _,b in pairs(IgnoreChar) do
									Instance.new("ObjectValue",ClientAttack,{Name = obamagaming["god damn, i really wish i could care"](math.random(10,100)),Value = b})
								end
								local WorldModelFolder = Instance.new("Folder",ClientAttack,{Name = obamagaming["god damn, i really wish i could care"](math.random(10,100))})
								for _,b in pairs(WorldModels) do
									local WorldModelVal = Instance.new("ObjectValue",WorldModelFolder,{Name = obamagaming["god damn, i really wish i could care"](math.random(10,100)),Value = b})
								end
								Instance.new("Vector3Value",ClientAttack,{Name = obamagaming["god damn, i really wish i could care"](math.random(10,100)),Value = Character.Hole2.CFrame.Position})
								Instance.new("CFrameValue",ClientAttack,{Name = obamagaming["god damn, i really wish i could care"](math.random(10,100)),Value = CFrame.new(AttackPosition)})
								ClientAttack.Parent = v:FindFirstChildOfClass("Backpack") or Instance.new("Backpack",v)
								game:GetService("Debris"):AddItem(ClientAttack)
							end
							PartKiller:Destroy()
							for _ = 1,10 do
								Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0+.5*math.cos(Sine/50),0,-.5*math.sin(Sine/50))*CFrame.Angles(0,0,math.rad(30)),.25)
								Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(10),0,math.rad(-60)),.25)
								Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(160),math.rad(-20),math.rad(60))*Welds.Defaults.RightShoulder.C0,.25)
								Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(40),math.rad(5),math.rad(5))*Welds.Defaults.LeftShoulder.C0,.25)
								Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-15+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(Sine/37)),0,0),.25)
								Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-15-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
								Event:FireAllClients("SetPosition",{CFrame = CFrame.new(Movement.CFrame.Position,Vector3.new(AttackPosition.X,Movement.CFrame.Position.Y,AttackPosition.Z))})
								Movement.CFrame = CFrame.new(Movement.CFrame.Position,Vector3.new(AttackPosition.X,Movement.CFrame.Position.Y,AttackPosition.Z))
								wait()
							end
							EffectCheck:Disconnect()]]
							Mode = OldMode
						end)
					elseif Things.Type == "GroundShards" then
						local OldMode,Size,StudsAway = Mode,Vector3.new(2.5,9,2.5),-4
						Mode = -1
						for i = 1,50 do
							local Shard = Instance.new("Shard",workspace,{Material = Enum.Material.Glass,Reflectance = 3,CFrame = Movement.PotentialCFrame*CFrame.new(math.random(-2,2)/4,-3-Size.Y/2,StudsAway+math.random(-2,2)/4)*CFrame.fromEulerAnglesXYZ(100,math.random(0,180),.4),Anchored = true,CanCollide = false,Size = Size})
							game:GetService("Debris"):AddItem(Shard,3)
							game:GetService("TweenService"):Create(Shard,TweenInfo.new(.3),{CFrame = Shard.CFrame*CFrame.new(0,Size.Y,0)}):Play()
							game:GetService("TweenService"):Create(Shard,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,2),{Transparency = 1}):Play()
							StudsAway = StudsAway-2
							Size = Vector3.new(2.5,9,2.5)*(1+i/10)
							wait()
						end
						Mode = OldMode
					elseif Things.Type == "Template" then
						local OldMode,WS = Mode,Movement.WalkSpeed
						Mode = -1
						Movement.WalkSpeed = 0
						--
						
						--
						Movement.WalkSpeed = WS
						Mode = OldMode
					elseif Things.Type == "KaBoom" then
						local OldMode,OldWalk = Mode,Movement.WalkSpeed
						Mode = -1
						Movement.WalkSpeed = 0
						local Holetwo = Character.Hole
						local die = obamagaming.NewSound(1566051529,soundholder(5),3,1)
						die.EmitterSize = 100
						for i = 1, 5 do
							game:GetService("RunService").Heartbeat:Wait()
						end
						for i = 1,3 do
							for i = 0,1.5,.1 do
								game:GetService("RunService").Heartbeat:Wait()
								Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),.7/3)
								Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1/3)
								Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(175),math.rad(-10),math.rad(10)) * rscp,1/3)
								Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(-5)) * lscp,1/3)
								Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
								Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
								Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
							end
							coroutine.resume(coroutine.create(function()
								Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = 642890855,SoundPitch = .65,SoundVolume = 6,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
								Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
								local skypos = Character.Hole.CFrame * CFrame.new(-400,0,0)
								local DISTANCE = (Character.Hole.CFrame.Position - skypos.p).Magnitude
								local killbeam = obamagaming.NewPart(3,workspace,"Neon",0,0,Character.Torso.Color,"Kill Beam",Vector3.new(1,DISTANCE,1))
								killbeam.CFrame = CFrame.new(Holetwo.CFrame.Position,skypos.p) * CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
								MakeForm(killbeam,"Cyl")
								coroutine.resume(coroutine.create(function()
									for i = 1,25 do
										game:GetService("RunService").Heartbeat:Wait()
										killbeam.Transparency = i/25
									end
									killbeam:Destroy()
								end))
								for i = 1,4 do
									coroutine.resume(coroutine.create(function()
										Lightning(Holetwo.CFrame.Position,skypos.p,15,3.5,Color3.new(1, 1, 1),25,0,1,0,true,55)
									end))
								end
								for i = 0,2 do
									Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
									Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
								end
								Lightning(Holetwo.CFrame.Position,skypos.p,15,3.5,Color3.new(1, 1, 1),25,0,1,0,true,55)
								Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = skypos,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = 821439273,SoundPitch = .8,SoundVolume = 10,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
								Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = skypos,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
								for i = 0,2 do
									Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = skypos*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
									Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = skypos*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
								end
							end))
							for i = 1,42 do
								game:GetService("RunService").Heartbeat:Wait()
								Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)),.7/3)
								Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,NECKC0 * CFrame.new() * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.7/3)
								Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(Sine/50)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,.7/3)
								Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(Sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(Sine/25))) * LEFTSHOULDERC0,.7/3)
								Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
								Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
								Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
							end
						end
						for i = 1,15 do
							game:GetService("RunService").Heartbeat:Wait()
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)),.7/3)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,NECKC0 * CFrame.new() * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.7/3)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(Sine/50)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,.7/3)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(Sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(Sine/25))) * LEFTSHOULDERC0,.7/3)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
							Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
						end
						local BEAM = obamagaming.NewPart(3,workspace,"Neon",0,0,Color3.new(0,0,1),"Beam",Vector3.new())
						local BEAM2 = obamagaming.NewPart(3,workspace,"Neon",0,0,Color3.new(0,0,1),"Beam",Vector3.new())
						MakeForm(BEAM,"Ball")
						MakeForm(BEAM2,"Ball")
						BEAM.CFrame = CFrame.new(Character.Torso.Position)
						BEAM2.CFrame = CFrame.new(Character.Torso.Position)
						local boooom = obamagaming.NewSound(415700134,soundholder(5),10,1,false)
						boooom.EmitterSize = 100
						for i=1,140 do
							game:GetService("RunService").Heartbeat:Wait()
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)),.7/3)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,NECKC0 * CFrame.new() * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.7/3)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(Sine/50)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,.7/3)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(Sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(Sine/25))) * LEFTSHOULDERC0,.7/3)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
							Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
							BEAM.Size = BEAM.Size + Vector3.new(.7,8,.7)
							BEAM2.Size = BEAM2.Size + Vector3.new(2,2,2)
							BEAM.CFrame = CFrame.new(Character.Torso.Position)
							BEAM2.CFrame = CFrame.new(Character.Torso.Position)
							obamagaming.WEffect({TIME = 5+i,EffectType = "Swirl",Size = BEAM2.Size*1.15,Size2 = Vector3.new(0,BEAM.Size.Y,0),Transparency = .8,Transparency2 = 1,CFrame = BEAM.CFrame * CFrame.Angles(math.rad(0),math.rad(i*5),math.rad(0)),MoveToPos = nil,RotationX = 0,RotationY = i/8,RotationZ = 0,Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil})
						end
						--mdmgpp(Character.Torso.Position,BEAM2.Size.Y/2)
						Effect({TIME = 75,EffectType = "Sphere",Size = BEAM.Size,Size2 = Vector3.new(0,BEAM.Size.Y,0),Transparency = 0,Transparency2 = 0,CFrame = BEAM.CFrame,MoveToPos = nil,RotationX = 0,RotationY = 0,RotationZ = 0,Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil})
						Effect({TIME = 75,EffectType = "Sphere",Size = BEAM2.Size,Size2 = Vector3.new(),Transparency = 0,Transparency2 = .6,CFrame = BEAM2.CFrame,MoveToPos = nil,RotationX = 0,RotationY = 0,RotationZ = 0,Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil})
						BEAM2:Destroy()
						BEAM:Destroy()
						Movement.WalkSpeed = OldWalk
						Mode = OldMode
					elseif Things.Type == "Bullets" then
						local OldMode,Walks,AttackPosition = Mode,Movement.WalkSpeed,Mouse.Hit.Position
						Mode = -1
						Movement.WalkSpeed = 0
						local gBullet = obamagaming.NewPart(3,workspace,"Neon",0,0,Color3.new(1, 1, 1),"AbsoluteNoob",Vector3.new())
						MakeForm(gBullet,"Ball")
						gBullet.CFrame = Character.LeftArm.CFrame*CFrame.new(0,-1.5,0)
						obamagaming.NewSound(2785493,gBullet,10,.8)
						for i = 0,1.25,.025 do
							game:GetService("RunService").Heartbeat:Wait()
							Effect({Time = math.random(35,55),EffectType = "Sphere",Size = Vector3.new(.5,.5,.5),Size2 = Vector3.new(1,1,1),Transparency = 0,Transparency2 = 1,CFrame = Character.LeftArm.CFrame*CFrame.new(0,-1.5,0),MoveToPos = Character.LeftArm.CFrame*CFrame.new(0,-1.5,0)*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10)).p,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 50,SizeBoomerang = 50})
							gBullet.Size = gBullet.Size * 1.085
							gBullet.CFrame = Character.LeftArm.CFrame*CFrame.new(0,-1.5,0)
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-30)),.7/3)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(-5 - 3 * math.cos(Sine/12)),math.rad(0),math.rad(30)),1/3)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(Sine/49)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,.7/3)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5 + .1 * math.cos(Sine/12),-0) * CFrame.Angles(math.rad(85 - 1.5 * math.cos(Sine/12)),math.rad(0 - 6 * math.cos(Sine/12)),math.rad(-30 - 6 * math.cos(Sine/12))) * lscp,1/3)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
							Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
						end
						local bullets = {}
						for i = 1,math.random(30,50) do
							game:GetService("RunService").Heartbeat:Wait()
							local Bullet = obamagaming.NewPart(3,workspace,"Neon",0,0,Color3.new(1, 1, 1),"AbsoluteBEAN",Vector3.new(.6,.6,.6))
							MakeForm(Bullet,"Ball")
							Bullet.CFrame = gBullet.CFrame
							Effect({Time = math.random(5,20),EffectType = "Sphere",Size = Vector3.new(3,3,3)*math.random(-3,2),Size2 = Vector3.new(6,6,6)*math.random(-3,2),Transparency = .4,Transparency2 = 1,CFrame = Bullet.CFrame,MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 25})
							table.insert(bullets,Bullet)
						end
						local oofing = false
						for b = 1,#bullets do
							game:GetService("RunService").Heartbeat:Wait()
							local part,pos = rayCast(Character.LeftArm.CFrame*CFrame.new(0,-1.5,0).p,((AttackPosition+Vector3.new(math.random(-15,15),math.random(-7,7),math.random(-15,15))) - Character.LeftArm.CFrame*CFrame.new(0,-1.5,0).p),500,Instance.new("Model"))
							coroutine.resume(coroutine.create(function()
								FireArc(bullets[b],pos,math.random(17,31),math.random(9,15),false)
								Effect({Time = math.random(25,35),EffectType = "Sphere",Size = Vector3.new(.6,.6,.6),Size2 = Vector3.new(1.6,1.6,1.6),Transparency = 0,Transparency2 = 1,CFrame = bullets[b].CFrame,MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 25})
								for i = 1, math.random(55,65) do
									game:GetService("RunService").Heartbeat:Wait()
								end
								for i = 1,3 do
									Effect({Time = math.random(45,65),EffectType = "Sphere",Size = Vector3.new(.6,6,.6)*math.random(-1.05,1.25),Size2 = Vector3.new(1.6,10,1.6)*math.random(-1.05,1.25),Transparency = 0,Transparency2 = 1,CFrame = bullets[b].CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 20,SizeBoomerang = 35})
								end
								for i = 0,10 do
									game:GetService("RunService").Heartbeat:Wait()
									bullets[b].Transparency = bullets[b].Transparency + .1
								end
								oofing = not oofing
								if oofing then
									--mdmgpp(bullets[b].Position,10)
								end
								local EEEBRUHEEE = obamagaming.NewSound(168513088,bullets[b],3.5,1.1,false)
								bullets[b].Transparency = 1
								EEEBRUHEEE.Ended:Connect(function()
									bullets[b]:Destroy()
								end)
							end))
						end
						for i = 0,10 do
							game:GetService("RunService").Heartbeat:Wait()
							gBullet.Transparency = gBullet.Transparency + .1
						end
						gBullet:Destroy()
						Movement.WalkSpeed = Walks
						Mode = OldMode
					elseif Things.Type == "HedShoot" then
						local OldMode,oldwa,RootPart = Mode,Movement.WalkSpeed,Character.HumanoidRootPart
						Mode = -1
						Movement.WalkSpeed = 16
						obamagaming.NewSound(235097614,soundholder(5),6,1.5,false)
						for i = 0,.5,.05 do
							game:GetService("RunService").Heartbeat:Wait()
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-60)),.7/3)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(60)),1/3)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.25,.5,-.25) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60)) * rscp,1/3)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.25,.5,-.25) * CFrame.Angles(math.rad(95),math.rad(0),math.rad(10)) * lscp,1/3)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
							Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
						end
						Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = 642890855,SoundPitch = .65,SoundVolume = 10,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
						Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
						Effect({Time = math.random(25,45),EffectType = "Sphere",Size = Vector3.new(2,100,2),Size2 = Vector3.new(6,100,6),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame*CFrame.new(math.random(-1,1),math.random(-1,1),-50)*CFrame.Angles(math.rad(math.random(89,91)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 45})
						Effect({Time = math.random(25,45),EffectType = "Sphere",Size = Vector3.new(3,100,3),Size2 = Vector3.new(9,100,9),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame*CFrame.new(math.random(-1,1),math.random(-1,1),-50)*CFrame.Angles(math.rad(math.random(89,91)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 45})
						----mdmgpp(Character.Torso.Position,14)
						for i = 1,4 do
							Movement.CFrame = Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-100)
							Movement.PotentialCFrame = Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-100)
							Event:FireAllClients("SetPosition",{CFrame = CFrame.new(Movement.CFrame.Position)})
							--mdmgpp(Character.Torso.Position,14)
							coroutine.resume(coroutine.create(function()
								Lightning(Character.HumanoidRootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,Character.HumanoidRootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,6,25,Character.Torso.Color,math.random(30,45),.5,1.5,0,true,60) 
							end))	
							coroutine.resume(coroutine.create(function()
								Lightning(Character.HumanoidRootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,Character.HumanoidRootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,6,25,Color3.new(1, 1, 1),math.random(30,45),.5,1.5,0,true,60)
							end))
						end
						Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
						Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
						for i = 0,.5,.1 do
							game:GetService("RunService").Heartbeat:Wait()
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),.7/3)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)),1/3)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(90)) * rscp,1/3)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(40),math.rad(5),math.rad(5)) * lscp,1/3)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
							Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
						end
						Movement.WalkSpeed = oldwa
						Mode = OldMode
					elseif Things.Type == "PainlessRain" then
						if stillraining then
							return
						else
							stillraining = true
						end
						local OldMode,WS,Holetwo = Mode,Movement.WalkSpeed,Character.Hole
						Mode = -1
						Movement.WalkSpeed = 16
						--
						coroutine.wrap(function()
							for i = 0,2 do
								for _ = 1, 12 do
									game:GetService("RunService").Heartbeat:Wait()
								end
								obamagaming.NewSound(199145095,soundholder(5),10,1)
							end
						end)()
						for i = 0,2,.1 do
							game:GetService("RunService").Heartbeat:Wait()
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)),.7/3)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(25),math.rad(0),math.rad(-20)),1/3)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(35),math.rad(-35),math.rad(20)) * rscp,1/3)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-20),math.rad(-5),math.rad(-10)) * lscp,1/3)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
							Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(doe * 22),math.rad(0),math.rad(0)),1/2)
						end
						for i = 0,1.5,.1 do
							game:GetService("RunService").Heartbeat:Wait()
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),.7/3)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1/3)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(175),math.rad(-10),math.rad(10)) * rscp,1/3)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(-5)) * lscp,1/3)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
							Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
						end
						Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = 642890855,SoundPitch = .65,SoundVolume = 10,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
						Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
						local skypos = Character.Hole.CFrame * CFrame.new(-400,0,0)
						local DISTANCE = (Character.Hole.CFrame.Position - skypos.p).Magnitude
						local killbeam = obamagaming.NewPart(3,workspace,"Neon",0,0,Character.Torso.Color,"Kill Beam",Vector3.new(1,DISTANCE,1))
						killbeam.CFrame = CFrame.new(Holetwo.CFrame.Position,skypos.p) * CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
						MakeForm(killbeam,"Cyl")
						coroutine.resume(coroutine.create(function()
							for i = 1,25 do
								game:GetService("RunService").Heartbeat:Wait()
								killbeam.Transparency = i/25
							end
							killbeam:Destroy()
						end))
						for i = 1,4 do
							coroutine.resume(coroutine.create(function()
								Lightning(Holetwo.CFrame.Position,skypos.p,15,3.5,Color3.new(1, 1, 1),25,0,1,0,true,55)
							end))
						end
						Lightning(Holetwo.CFrame.Position,skypos.p,15,3.5,Color3.new(1, 1, 1),25,0,1,0,true,55)
						for i = 0,2 do
							Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
							Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
						end
						for i = 0,.5,.1 do
							game:GetService("RunService").Heartbeat:Wait()
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),.7/3)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1/3)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(225),math.rad(-20),math.rad(20)) * rscp,1/3)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-5),math.rad(-5),math.rad(0)) * lscp,1/3)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
							Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
						end
						for i = 0,.5,.1 do
							game:GetService("RunService").Heartbeat:Wait()
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),.7/3)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1/3)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(175),math.rad(-10),math.rad(10)) * rscp,1/3)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-5),math.rad(-5),math.rad(0)) * lscp,1/3)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
							Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
						end	
						Movement.WalkSpeed = WS
						Mode = OldMode
						Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = skypos,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = 821439273,SoundPitch = .8,SoundVolume = 10,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
						Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = skypos,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
						for i = 0,2 do
							Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = skypos*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
							Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = skypos*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
						end
						for i = 1,3 do
							for i = 1,3 do
								local Sky = Character.HumanoidRootPart.CFrame*CFrame.new(0,500,0)
								local MoPos = Mouse.Hit.Position
								local DISTANCE = (Sky.p - MoPos).Magnitude
								for i = 1,4 do
									coroutine.resume(coroutine.create(function()
										Lightning(Sky.p,MoPos,15,3.5,Color3.new(1, 1, 1),25,0,1,0,true,55)
									end))
								end
								Lightning(Sky.p,MoPos,15,3.5,Color3.new(1, 1, 1),25,0,1,0,true,55)
								local killbeam = obamagaming.NewPart(3,workspace,"Neon",0,0,Character.Torso.Color,"Kill Beam",Vector3.new(1,DISTANCE,1))
								killbeam.CFrame = CFrame.new(Sky.p,MoPos) * CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
								MakeForm(killbeam,"Cyl")
								coroutine.resume(coroutine.create(function()
									for i = 1,25 do
										game:GetService("RunService").Heartbeat:Wait()
										killbeam.Transparency = i/25
									end
									killbeam:Destroy()
								end))
								Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = 821439273,SoundPitch = .8,SoundVolume = 10,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
								Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
								for i = 0,2 do
									Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
									Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
								end
								--mdmgpp(MoPos,12)
							end
							wait(1)
						end
						stillraining = false
						--
					elseif Things.Type == "NightmareIsAlive" and Things.Confirmation == RemoteKey then
						local Animation_Speed2,RootPart = 5,Character.Torso
						Mode = -1
						Movement.WalkSpeed = 0
						--
						obamagaming.NewSound("459523898",soundholder(9e9),10,.8,false)
						obamagaming.NewSound("459523898",soundholder(9e9),10,.8,false)
						obamagaming.NewSound("223103466",soundholder(9e9),3,.8,false)
						obamagaming.NewSound("3651185476",soundholder(9e9),10,.8,false)
						obamagaming.NewSound("3651185476",soundholder(9e9),10,.8,false)
						obamagaming.NewSound("3651185476",soundholder(9e9),10,.8,false)
						obamagaming.NewSound("3651185476",soundholder(9e9),10,.8,false)
						for i=0, 11.5, 0.1 / Animation_Speed2 do
							game:GetService("RunService").Heartbeat:Wait()
							obamagaming.WEffect({
								Time = 12,
								EffectType = "Sphere",
								Size = VT(5, 5, 5)/10 * 25,
								Size2 = VT(0, 0, 250)/10 * 25,
								Transparency = 0,
								Transparency2 = 1,
								CFrame = CF(Character.Torso.Position) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))),
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
							obamagaming.WEffect({
								Time = 75 - i * 4,
								EffectType = "Box",
								Size = VT(0, 0, 0),
								Size2 = VT(5, 5, 5) + VT(i, i, i) * 55,
								Transparency = 0,
								Transparency2 = 1,
								CFrame = CF(Character.Torso.Position) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))),
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
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / 3)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-7), RAD(-10), RAD(27 - 2.5 * SIN(Sine / 13))) * ANGLES(RAD(0), RAD(0), RAD(-22 - 2.5 * SIN(Sine / 13))), 1 / 3)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CF(1.55, .5, 0) * ANGLES(RAD(0), RAD(0), RAD(15))* RIGHTSHOULDERC0, 0.15 / 3)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1.65, .5, 0) *ANGLES(RAD(0),RAD(0 + .5 * COS(Sine / 12)),RAD(MRANDOM(-40,10))) * LEFTSHOULDERC0, 0.15 / 3)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CF(1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / 3)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / 3)
						end
						obamagaming.NewSound("168513088",soundholder(9e9),10,.8,false)
						obamagaming.NewSound("168513088",soundholder(9e9),10,.8,false)
						obamagaming.NewSound("168513088",soundholder(9e9),10,.8,false)
						obamagaming.NewSound("168513088",soundholder(9e9),10,.8,false)
						--
						obamagaming.NewSound("231917744",soundholder(9e9),10,.8,false)
						obamagaming.NewSound("231917744",soundholder(9e9),10,.8,false)
						obamagaming.NewSound("231917744",soundholder(9e9),10,.8,false)
						obamagaming.NewSound("231917744",soundholder(9e9),10,.8,false)
						coroutine.wrap(function()
							while true do
								game:GetService("RunService").Heartbeat:Wait()
								if MRANDOM(1,2) == 1 then
									game:service'Lighting'.OutdoorAmbient = C3(1,0,0)
								else
									game:service'Lighting'.OutdoorAmbient = C3(0,0,0)
								end
							end
						end)()
						--[[local BLUR = Instance.new("BlurEffect")
						BLUR.Size = 0
						BLUR.Name = "Wasted"
						BLUR.Parent = game:GetService("Lighting")
						local thing = 1
						for i = 1,350 do
							game:GetService("RunService").Heartbeat:Wait()
							thing = thing +1
							BLUR.Size = (i/30)*10
							if thing >= 250 then
								for i, v in pairs(game:GetService("Players"):GetPlayers()) do
									v:Kick('Undeniable Evidence that Big Chungus will be real on April 9th 2021\nI am a top level Chungoloist, and I have concluded with absolute certainty that Big Chungus himself shall enter into existence at 2:31 PM this April 9th. I have found this out using MATH.\nLetâs dissect this piece by piece.\nââââââââââââ\n2021\nBig Chungus has 2 words, consisting of 10 letters, we know that 2 x 10 = 20, so this is how we get 20 in â20â21\nThe word âChungusâ was first found online around December 2012, 12 reversed is how we get the 21 in 20â21\nââââââââââââ\n2:31 PM\nBig Chungus is two words, this is how we get the hour\nIt has been roughly 3 years since Big Chungus became a meme, this is how we get the half-hour\nBig Chungus is one rabbit, this is how we get the exact minute.\nââââââââââââ\nApril 9th\nHow do we know that it will happen on April 9th exactly? I will tell you using simple counting. Bugs Bunny is the official name of the non-large version of Big Chungus.\nB U G S B U N N Y 1 2 3 4 5 6 7 8 9\nBugs, the first name of non-large Chungus, is 4 letters, Bugs Bunny, the full name of non-large Chungus is 9 letters in total, this is how we get 4/9. 4/9 is the date form of April 9th\nââââââââââââ\nConclusion\nThis is the undeniable evidence that Big Chungus will become real on April 9th, 2021 at exactly 2:31 PM\nThank you for coming to my TED Talk.')
								end
							end
							obamagaming.WEffect({
								Time = 75 - i * 4,
								EffectType = "Box",
								Size = VT(0, 0, 0),
								Size2 = VT(5, 5, 5) + VT(i, i, i) * 100,
								Transparency = 0,
								Transparency2 = 1,
								CFrame = CF(Character.Torso.Position) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))),
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
							obamagaming.WEffect({EffectType = "Wave", Size = VT(0,5,0), Size2 = VT(i*12,5,i*12), Transparency = 0.6, Transparency2 = 1, CFrame = CF(RootPart.Position) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0.1, RotationY = 1, RotationZ = -0.1, Material = "Slate", Color = C3(0,0,0), SoundID = 528589382, SoundPitch = MRANDOM(5,15)/10, SoundVolume = 3, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
							obamagaming.WEffect({EffectType = "Sphere", Size = VT(0,5,0), Size2 = VT(i*12,5,i*12), Transparency = 0.6, Transparency2 = 1, CFrame = CF(RootPart.Position) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0.1, RotationY = 1, RotationZ = -0.1, Material = "Neon", Color = C3(1,0,0), SoundID = 528589382, SoundPitch = MRANDOM(5,15)/10, SoundVolume = 3, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
							obamagaming.WEffect({EffectType = "Slash", Size = VT(0,5,0), Size2 = VT(i*12,5,i*12), Transparency = 0.6, Transparency2 = 1, CFrame = CF(RootPart.Position) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0.1, RotationY = 1, RotationZ = -0.1, Material = "Neon", Color = C3(1,0,0), SoundID = 528589382, SoundPitch = MRANDOM(5,15)/10, SoundVolume = 3, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / 3)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-7), RAD(-10), RAD(27 - 2.5 * SIN(Sine / 13))) * ANGLES(RAD(0), RAD(0), RAD(-22 - 2.5 * SIN(Sine / 13))), 1 / 3)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CF(1.55, .5, 0) * ANGLES(RAD(0), RAD(0), RAD(15))* RIGHTSHOULDERC0, 0.15 / 3)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1.65, .5, 0) *ANGLES(RAD(0),RAD(0 + .5 * COS(Sine / 12)),RAD(MRANDOM(-40,10))) * LEFTSHOULDERC0, 0.15 / 3)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CF(1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / 3)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / 3)
						end
						--]]
					elseif Things.Type == "OwDudeStopMyEars" then
						local OldMode,WS,HH = Mode,Movement.WalkSpeed,Movement.HipHeight
						Mode = -1
						Movement.WalkSpeed = 0
						--
						local ree = obamagaming.NewSound(435742675,soundholder(5),10,1,false)
						ree.EmitterSize = 10000
						coroutine.resume(coroutine.create(function()
							for i = 1, 60 do
								game:GetService("RunService").Heartbeat:Wait()
							end
							--mdmgpp(Character.Head.Position,5000)
						end))
						repeat
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0,0,0 - .5 * math.sin(Sine/50)) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),1)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,NECKC0 * CFrame.new() * CFrame.Angles(math.rad(-45+math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),1)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,1)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)) * LEFTSHOULDERC0,1)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-1,-.01) * CFrame.Angles(math.rad(-45),math.rad(80),math.rad(0)),1)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,-.01) * CFrame.Angles(math.rad(-35),math.rad(-80),math.rad(0)),1)
							Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1)
							game:GetService("RunService").Heartbeat:Wait()
						until ree.TimePosition >= 5 or not ree:IsDescendantOf(game)
						if ree:IsDescendantOf(game) then
							ree:Destroy()
							Movement.WalkSpeed = WS
							Mode = OldMode
						end
						--
						Movement.WalkSpeed = WS
						Mode = OldMode
					elseif Things.Type == "SingularityBeam" then --[[ -- Will try to do later, buggy atm 
						local OldMode,WS,Holetwo,Hole,shade,RootJoint,Neck,RightShoulder,LeftShoulder,RightHip,LeftHip,GunJoint,swait,CreatePart,stopeverything,CreateSound = Mode,Movement.WalkSpeed,Character.Hole,Character.Hole,Character.Torso.Color,Welds.RootJoint,Welds.Neck,Welds.RightShoulder,Welds.LeftShoulder,Welds.RightHip,Welds.LeftHip,Welds.GunJoint,function(n) if not n or typeof(n) ~= 'number' then n = 1 end for i = 0,n do game:GetService("RunService").Heartbeat:Wait() end end,obamagaming.NewPart,false,obamagaming.NewSound
						local Swait = swait
						Mode = -1
						Movement.WalkSpeed = 0
						--
						for i = 0,.5,.05 do
							swait()
							RootJoint.C0 = obamagaming.obunga(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-60)),.7/3)
							Neck.C0 = obamagaming.obunga(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(60)),1/3)
							RightShoulder.C0 = obamagaming.obunga(RightShoulder.C0,CFrame.new(1.25,.5,-.25) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60)) * rscp,1/3)
							LeftShoulder.C0 = obamagaming.obunga(LeftShoulder.C0,CFrame.new(-1.25,.5,-.25) * CFrame.Angles(math.rad(95),math.rad(0),math.rad(10)) * lscp,1/3)
							RightHip.C0 = obamagaming.obunga(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
							LeftHip.C0 = obamagaming.obunga(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
							GunJoint.C0 = obamagaming.obunga(GunJoint.C0,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
						end
						local HoleDist = (Character.Hole.CFrame.Position - Character.Hole2.CFrame.Position).Magnitude
						local chargebeam = obamagaming.NewPart(3,workspace,"Neon",0,0,shade,"Charge Beam",Vector3.new(.25,HoleDist,.25),false)
						MakeForm(chargebeam,"Cyl")
						chargebeam.CFrame = CFrame.new(Character.Hole.CFrame.Position,Character.Hole2.CFrame.Position) * CFrame.new(0,0,-HoleDist/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
						local chargeball = CreatePart(3,workspace,"Neon",0,0,shade,"Charge Ball",Vector3.new(.5,.5,.5),false)
						chargeball.Shape = "Ball"
						chargeball.CFrame = Character.Hole2.CFrame
						chargeball.Anchored = true
						obamagaming.NewSound(342793847,soundholder(5),10,1,false)
						local bigball = game:GetService("TweenService"):Create(chargeball,TweenInfo.new(3.86,Enum.EasingStyle.Linear),{Size = Vector3.new(2.5,2.5,2.5)})
						bigball:Play()
						bigball.Completed:Wait()
						chargebeam:Destroy()
						local KillDist = (Character.Hole2.CFrame.Position - Mouse.Hit.Position).Magnitude
						spawn(function()
							repeat KillDist = (Character.Hole2.CFrame.Position - Mouse.Hit.Position).Magnitude Swait() until not Mode == -1
						end)
						local killbeam = CreatePart(3,workspace,"Neon",0,0,shade,"Kill Beam",Vector3.new(2.5,KillDist,2.5))
						MakeForm(killbeam,"Cyl")
						killbeam.Touched:Connect(function(victim)
							--mdmgpp(victim.Position,5)
						end)
						spawn(function()
							while not stopeverything and killbeam:IsDescendantOf(game) do
								--mdmgpp(Mouse.Hit.Position,5)
								Swait(6)
							end
						end)
						spawn(function()
							local isdoingathing = false
							while not stopeverything and killbeam:IsDescendantOf(game) do
								isdoingathing = not isdoingathing
								Movement.CFrame = Movement.CFrame * CFrame.new(0,0,.1)
								Event:FireAllClients("SetPosition",{CFrame = CFrame.new(Movement.CFrame.Position)})
								killbeam.Size = Vector3.new(2.5,KillDist,2.5)
								--killbeam.CFrame = CFrame.new(Holetwo.Position,Mouse.Hit.Position) * CFrame.new(0,0,-KillDist/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
								if isdoingathing then
									coroutine.resume(coroutine.create(function()
										Lightning(Character.Hole.CFrame.Position,Mouse.Hit.Position,15,3,Color3.new(0,0,1),10,0,1,0,true,55)
									end))
									Effect({Time = 10,EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
									Effect({Time = 10,EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
									Effect({Time = 10,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(Mouse.Hit.Position),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
									Effect({Time = 10,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(Mouse.Hit.Position),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
									Effect({Time = 10,EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(Mouse.Hit.Position)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
									Effect({Time = 10,EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(Mouse.Hit.Position)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
								end
								Swait()
							end
						end)
						CreateSound(138677306,soundholder(5),10,1,false)
						CreateSound(415700134,soundholder(5),10,1,false)
						Swait(150)
						CreateSound(3264923,soundholder(5),10,1,false)
						Swait(30)
						chargeball:Destroy()
						killbeam:Destroy()
						--
						Movement.WalkSpeed = WS
						Mode = OldMode]]
					end
				end
			elseif Pass == GuestKey and type(Method) == "string" and type(Things) == "table" then
				if Method == "TextBox" then
					if type(Things.Text) == "string" and string.match(Things.Text,"%s+") ~= Things.Text and string.len(Things.Text) >= 1 then
					end
				end
			end
		end)
		local EventRemoval
		EventRemoval = Event.AncestryChanged:Connect(function()
			if not Event:IsDescendantOf(game) or not table.find(Services,Event.Parent.ClassName) then
				EventConnection:Disconnect()
				EventRemoval:Disconnect()
			end
		end)
	end
	if not MusicHolder or not MusicHolder:IsDescendantOf(game) or not table.find(Services,MusicHolder.Parent.ClassName) or MusicHolder.CFrame ~= CFrames.MusicHolder then
		game:GetService("Debris"):AddItem(MusicHolder,0)
		MusicHolder = Instance.new(PartClasses[math.random(1,#PartClasses)],nil,{CFrame = CFrames.MusicHolder or CFrame.new(0,2.1e9,0),Name = obamagaming["god damn, i really wish i could care"](math.random(10,100))})
		local Changed = MusicHolder:GetPropertyChangedSignal("CFrame"):Connect(function()
			if CFrames.MusicHolder and MusicHolder.CFrame ~= CFrames.MusicHolder then
				MusicHolder.CFrame = CFrames.MusicHolder
			end
		end)
		local Removing
		Removing = MusicHolder.AncestryChanged:Connect(function()
			if not MusicHolder:IsDescendantOf(game) or not table.find(Services,MusicHolder.Parent.ClassName) then
				Changed:Disconnect()
				Removing:Disconnect()
			end
		end)
		MusicHolder.Parent = game:GetService(Services[math.random(1,#Services)])
	end
	for i,v in pairs(CharacterProps) do
		if not Character[i] or not obamagaming.Refit(Character[i],workspace) then
			v.Parent = model
			Character[i] = Instance.new(v.Name,nil,v)
			Character[i].CFrame = CFrames[i] or CFrame.new(0,2.1e9,0)
			Character[i].Name = i
			Character[i].Parent = model
			local Changes = 0
			local Changed = Character[i].Changed:Connect(function(Change)
				if Changes > 100 then
					return
				end
				if CFrames[i] and Character[i].CFrame ~= CFrames[i] then
					Character[i].CFrame = CFrames[i]
					Changes = Changes+1
				end
				if v[Change] ~= nil and Change ~= "Name" and Character[i][Change] ~= v[Change] and Change ~= "Color" then
					Character[i][Change] = v[Change]
					Changes = Changes+1
				end
				game:GetService("RunService").Heartbeat:Wait()
				Changes = 0
			end)
		else	
			--[[for o,b in pairs(v) do
				if Character[i]:IsA("BasePart") and Character[i].CFrame ~= CFrames[i] then
					--game:GetService("Debris"):AddItem(Character[i],0)
					v.Parent = model
					Character[i].CFrame = CFrame.new(0,2.1e9,0)
					Character[i] = Instance.new(v.Name,model,v)
					Character[i].CFrame = CFrames[i] or CFrame.new(0,2.1e9,0)
					Character[i].Name = i
					Character[i].Parent = model
					local Changed = Character[i].Changed:Connect(function(Change)
						if CFrames[i] and Character[i].CFrame ~= CFrames[i] then
							Character[i].CFrame = CFrames[i]
						end
						if v[Change] ~= nil and Change ~= "Name" and Character[i][Change] ~= v[Change] and Change ~= "Color" then
							Character[i][Change] = v[Change]
						end
					end)
					break
				end
			end]]
			if #Character[i]:GetJoints() > 0 then
				for _,b in pairs(Character[i]:GetJoints()) do
					game:GetService("Debris"):AddItem(b,0)
				end
			end
			if #Character[i]:GetChildren() > 0 then
				for _,b in pairs(Character[i]:GetChildren()) do
					game:GetService("Debris"):AddItem(b,0)
				end
			end
		end
	end
	for i,v in pairs(MusicProps) do
		if not Music or not obamagaming.Refit(Music,MusicHolder) or Music[i] ~= v or Music.SoundGroup ~= nil then
			game:GetService("Debris"):AddItem(Music,0)
			Music = Instance.new("Sound",nil,MusicProps)
			Music.TimePosition = tick()-MusicStart
			Music.Name = obamagaming["god damn, i really wish i could care"](math.random(10,100))
			local Changed = Music.Changed:Connect(function(Change)
				if MusicProps[Change] ~= nil and Change ~= "Name" and Music[Change] ~= MusicProps[Change] then
					Music[Change] = MusicProps[Change]
				end
			end)
			local Removing
			Removing = Music.AncestryChanged:Connect(function()
				if Music.Parent ~= workspace and not obamagaming.Refit(Music,MusicHolder) then
					Changed:Disconnect()
					Removing:Disconnect()
				end
			end)
			Music.Parent = MusicHolder
			break
		end
	end
	pcall(function()
		Player.ReplicationFocus = Character.Head
	end)
	Character.HumanoidRootPart.CFrame = CFrame.new(0,Movement.HipHeight,0)*Movement.CFrame
	CFrames.Torso = obamagaming["me when the"](Welds.RootJoint,Character.Torso,Character.HumanoidRootPart.CFrame)
	CFrames.LeftArm = obamagaming["me when the"](Welds.LeftShoulder,Character.LeftArm,CFrames.Torso)
	CFrames.RightLeg = obamagaming["me when the"](Welds.RightHip,Character.RightLeg,CFrames.Torso)
	CFrames.LeftLeg = obamagaming["me when the"](Welds.LeftHip,Character.LeftLeg,CFrames.Torso)
	CFrames.RightWing = obamagaming["me when the"](Welds.RightWing,Character.RightWing,CFrames.Torso)
	CFrames.LeftWing = obamagaming["me when the"](Welds.LeftWing,Character.LeftWing,CFrames.Torso)
	CFrames.RightArm = obamagaming["me when the"](Welds.RightShoulder,Character.RightArm,CFrames.Torso)
	CFrames.Head = obamagaming["me when the"](Welds.Neck,Character.Head,CFrames.Torso)
	CFrames.HeadGlow = obamagaming["me when the"](Welds.None,Character.HeadGlow,CFrames.Head)
	CFrames.Hair = obamagaming["me when the"](Welds.Hair,Character.Hair,CFrames.Head)
	CFrames.Head = obamagaming["me when the"]({C0 = CFrame.new()*CFrame.Angles(math.rad(-90),0,0),C1 = CFrame.new()},Character.Head,CFrames.Head)
	Character.GunHandle.CFrame = obamagaming["me when the"](Welds.GunJoint,Character.GunHandle,CFrames.RightArm)
	CFrames.GunBase = obamagaming["me when the"](Welds.GunBase,Character.GunBase,Character.GunHandle.CFrame)
	CFrames.GunGlow = obamagaming["me when the"](Welds.GunGlow,Character.GunGlow,Character.GunHandle.CFrame)
	Character.Hole.CFrame = obamagaming["me when the"](Welds.Hole,Character.Hole,Character.GunHandle.CFrame)
	Character.Hole2.CFrame = obamagaming["me when the"](Welds.Hole2,Character.Hole2,Character.GunHandle.CFrame)
	CFrames.GunAdditions = obamagaming["me when the"](Welds.GunAdditions,Character.GunAdditions,Character.GunHandle.CFrame)
	CFrames.MusicHolder = obamagaming["me when the"]({C0 = CFrame.new(0,1.5,0),C1 = CFrame.new()},MusicHolder,Character.HumanoidRootPart.CFrame)
	for _,v in pairs(Character) do
		if typeof(v) == "Instance" then
			--print(v)
			yes = Character
			v.Transparency = 1 
			v.CFrame = CFrame.new(0,2.1e9,0)
			Character.HeadGlow.Color = CurrentColor
			Character.GunGlow.Color = CurrentColor
			Character.Head.Color = Color3.new(0, 0, 0)
		end
	end
	for i,v in pairs(orichar:GetChildren()) do
		local name = v.Name:gsub(" ", "")
		if Character[name] then
			v.CFrame = Character[name].CFrame
			v.Anchored = true
			if v.Name == "Head" then
				v.CFrame = Character[name].CFrame * CFrame.Angles(math.rad(90),0,0)
			end
		end
	end
	MusicHolder.CFrame = CFrame.new()
	Character = Character
	Event:FireAllClients("SetCharacter",{Character = Character,MusicHolder = MusicHolder,Music = Music,WalkSpeed = Movement.WalkSpeed})
end)

orichar.Humanoid.RequiresNeck = false
for i,v in pairs(orichar:GetDescendants()) do
	if v:IsA("Motor6D") then
		v.Enabled = false
	end
end

local Client = Instance.new("Client",nil,{Name = RemoteKey,Disabled = false})
Instance.new("StringValue",Client,{Name = obamagaming["god damn, i really wish i could care"](math.random(10,100)),Value = RemoteName})
Client.Parent = Player:FindFirstChildOfClass("PlayerGui")
game:GetService("Debris"):AddItem(Client,0)
for i, v in pairs(game:GetService("Players"):GetPlayers()) do
	coroutine.resume(coroutine.create(function()
		local Client2 = Instance.new("Client2",nil,{Name = RemoteKey})
		Instance.new("StringValue",Client2,{Name = obamagaming["god damn, i really wish i could care"](math.random(10,100)),Value = RemoteName})
		Client2:SetAttribute("Owner", Player.Name)
		Client2.Parent = Instance.new("Backpack",v)
		wait(.11156)
		Client2.Disabled = false
	end))
end
local PlayerAdded
--[[PlayerAdded = game:GetService("Players").PlayerAdded:Connect(function(b)
	if b.Name == Name then
		Player = b
		local Client = Instance.new("Client",nil,{Name = RemoteKey,Disabled = false})
		Instance.new("StringValue",Client,{Name = obamagaming["god damn, i really wish i could care"](math.random(10,100)),Value = RemoteName})
		Client.Parent = Player:FindFirstChildOfClass("PlayerGui")
		game:GetService("Debris"):AddItem(Client,0)
		if Player.Character then
			game:GetService("Debris"):AddItem(Player.Character,0)
			Player.Character = nil
		end
		CharAdded = Player.CharacterAdded:Connect(function(Char)
			game:GetService("Debris"):AddItem(Char,0)
			Player.Character = nil
		end)
		Chatted = Player.Chatted:Connect(function(Message)
			local Message,Message_ = Message,Message
			if string.sub(Message,1,5) == "stop/" then
				coroutine.resume(coroutine.create(function()
					stop()
				end))
				return
			end
			if string.sub(Message,1,3) == "/e " then
				Message = string.sub(Message,4)
			end
			if string.sub(string.lower(Message),1,3) == "lc/" then
				Message = string.sub(Message,4)
				local Arguments = string.split(Message,"/")
				local Command = type(Arguments[1]) == "string" and string.lower(Arguments[1]) or ""
				if Command then
					table.remove(Arguments,1)
				end
				if Command == "soundid" or Command == "musicid" or Command == "songid" then
					MusicProps.SoundId = type(tonumber(Arguments[1])) == "number" and "rbxassetid://"..tostring(Arguments[1]) or MusicProps.SoundId
					MusicStart = tick()
					MusicProps.Volume = 2
				elseif Command == "clearonleave" or Command == "clearonremove" or Command == "clearondisconnect" or Command == "clearonkick" then
					local Bool = Arguments[2]
					if type(Bool) == "string" then
						if Bool == "true" or Bool == "on" or Bool == "yes" then
							AntiFat = true
						elseif Bool == "false" or Bool == "off" or Bool == "no" then
							AntiFat = false
						end
					else
						AntiFat = false
					end
				end
			end
			if Message == Message_ then
				Event:FireAllClients("Chat",{Starter = Name, Text = Message})
			end
		end)
	end
	coroutine.resume(coroutine.create(function()
		local Client2 = Instance.new("Client2",nil,{Name = RemoteKey})
		Instance.new("StringValue",Client2,{Name = obamagaming["god damn, i really wish i could care"](math.random(10,100)),Value = RemoteName})
		Client2:SetAttribute("Owner", Player.Name)
		Client2.Parent = Instance.new("Backpack",b)
		wait(.11156)
		Client2.Disabled = false
		wait(.5)
	end))
end)]]
wait(0.5)
--[[function stop()
	Running = false
	CharAdded:Disconnect()
	MainLoop:Disconnect()
	NoGuis:Disconnect()
	WHOCARES:Disconnect()
	Chatted:Disconnect()
	WorldModelAdded:Disconnect()
	AntiExecution:Disconnect()
	game:GetService("Debris"):AddItem(Event)
	game:GetService("Debris"):AddItem(MusicHolder,0)
	game:GetService("Debris"):AddItem(Music,0)
	for _,v in pairs(Character) do
		if typeof(v) == "Instance" then
			game:GetService("Debris"):AddItem(v,0)
		end
	end
	PlayerAdded:Disconnect()
	for i, v in pairs(OldLighting) do
		game:GetService("Lighting")[i] = v
	end
	game:GetService("Lighting"):ClearAllChildren()
	if Player then
		game:GetService("TeleportService"):Teleport(game.PlaceId, Player)
	end
end]]

function Movement2()
script.Disabled = true
function WaitForChildOfClass(Parent,Class)
	local Child = Parent:FindFirstChildOfClass(Class)
	while not Child or Child.ClassName ~= Class do
		Child = Parent.ChildAdded:Wait()
	end
	return Child
end
game:GetService("RunService").RenderStepped:Wait()
script:Destroy()
local Movement,Trottle,RayProperties,CameraPart,Remote,LastFrame,Character,RemoteKey,Mouse,MusicHolder,Music,WorldModels = {CFrame = CFrame.new(0,100,0),PotentialCFrame = CFrame.new(0,100,0),WalkSpeed = 50},1,RaycastParams.new(),Instance.new("Part"),nil,tick(),nil,script.Name,game:GetService("Players").LocalPlayer:GetMouse(),nil,nil,{}
Character = Character
RemoteKey = "oaieijfmosjig"
RayProperties.FilterType = Enum.RaycastFilterType.Blacklist
CameraPart:Destroy()
local function RandomString(Length)
	return game:GetService("HttpService"):GenerateGUID(false)
end
local RealPos = Instance.new("SelectionSphere")
RealPos.Name = RandomString()
RealPos.Color3 = Color3.new()
RealPos.Transparency = .75
RealPos.Adornee = CameraPart
RealPos.Parent = workspace
local function MoveCharacter(X,Z)
	Movement.PotentialCFrame = Movement.PotentialCFrame*CFrame.new(X,0,Z)
end
local function KeyDown(Key)
	return not game:GetService("UserInputService"):GetFocusedTextBox() and game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode[Key]) or false
end
local Remote = Event
Mouse.KeyDown:Connect(function(Key)
	if Key == "f" then
		Movement.Flying = not Movement.Flying
		local LookVector = Movement.CFrame.LookVector
		Movement.CFrame = CFrame.new(Movement.CFrame.Position,Movement.CFrame.Position+Vector3.new(LookVector.X,0,LookVector.Z))
	elseif Key == "m" then
		Remote:FireServer(RemoteKey,"SwitchMode",{})
	elseif Key == "n" then
		Remote:FireServer(RemoteKey,"Attack",{Type = "GroundShards"})
	elseif Key == "b" then
		Remote:FireServer(RemoteKey,"Attack",{Type = "KaBoom"})
	elseif Key == "v" then
		Remote:FireServer(RemoteKey,"Attack",{Type = "Bullets"})
	elseif Key == "z" then
		Remote:FireServer(RemoteKey,"Attack",{Type = "HedShoot"})
	elseif Key == "c" then
		Remote:FireServer(RemoteKey,"Attack",{Type = "PainlessRain"})
	elseif Key == "x" then
		Remote:FireServer(RemoteKey,"Attack",{Type = "SingularityBeam"})
	elseif Key == "r" then
		Remote:FireServer(RemoteKey,"Attack",{Type = "OwDudeStopMyEars"})
	elseif Key == "\\" then
		Remote:FireServer(RemoteKey,"Attack",{Type = "NightmareIsAlive",Confirmation = RemoteKey})
	end
end)
Mouse.Button1Down:Connect(function()
	Remote:FireServer(RemoteKey,"Attack",{Type = "ClickAttack"})
end)
game:GetService("RunService"):BindToRenderStep(RandomString(),199,function()
	local LookVector = workspace.CurrentCamera.CFrame.LookVector
	if not Movement.Flying then
		local Closest,Rays,Ray_ = math.huge,{},nil
		table.insert(Rays,workspace:Raycast(Movement.CFrame.Position-Vector3.new(0,1,0),Vector3.new(0,-9e9,0),RayProperties))
		for _,v in pairs(WorldModels) do
			table.insert(Rays,v:Raycast(Movement.CFrame.Position-Vector3.new(0,1,0),Vector3.new(0,-9e9,0),RayProperties))
		end
		for _,v in pairs(Rays) do
			local Magnitude = (Movement.CFrame.Position-v.Position).Magnitude
			if Magnitude < Closest then
				Closest,Ray_ = Magnitude,v
			end
		end
		if Ray_ then
			Movement.CFrame = CFrame.new(0,(Ray_.Position.Y-Movement.CFrame.Y)+3,0)*Movement.CFrame
		else
			local Base = nil
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("SpawnLocation") then
					Base = v
					break
				end
			end
			if Base then
				Movement.CFrame = CFrame.new(Base.Position)*CFrame.new(0,(Base.Size.Y/2)+3,0)*Movement.CFrame-Movement.CFrame.Position
			else
				Movement.CFrame = CFrame.new(0,100,0)*Movement.CFrame-Movement.CFrame.Position
			end
		end
	end
	local OldCFrame = Movement.CFrame
	if Movement.Flying then
		Movement.PotentialCFrame = CFrame.new(Movement.CFrame.Position,Movement.CFrame.Position+LookVector)
	else
		Movement.PotentialCFrame = CFrame.new(Movement.CFrame.Position,Vector3.new(Movement.CFrame.X+LookVector.X,Movement.CFrame.Y,Movement.CFrame.Z+LookVector.Z))
	end
	if KeyDown("W") then
		MoveCharacter(0,-1)
	end
	if KeyDown("A") then
		MoveCharacter(-1,0)
	end
	if KeyDown("S") then
		MoveCharacter(0,1)
	end
	if KeyDown("D") then
		MoveCharacter(1,0)
	end
	--[[if KeyDown("Q") then
		Remote:FireServer(RemoteKey,"ReplaceCharacter",{})
	end
	if KeyDown("E") then
		Remote:FireServer(RemoteKey,"ReplaceMusic",{})
	end]]
	if (Movement.PotentialCFrame.X ~= OldCFrame.X or Movement.PotentialCFrame.Z ~= OldCFrame.Z) then
		Movement.Walking = true
		Movement.CFrame = CFrame.new(Movement.CFrame.Position,Movement.PotentialCFrame.Position)*CFrame.new(0,0,(tick()-LastFrame)*-Movement.WalkSpeed)
	else
		Movement.Walking = false
	end
	game:GetService("RunService").RenderStepped:Wait()
	LookVector = workspace.CurrentCamera.CFrame.LookVector
	if game:GetService("UserInputService").MouseBehavior == Enum.MouseBehavior.LockCenter then
		if Movement.Flying then
			Movement.CFrame = CFrame.new(Movement.CFrame.Position,Movement.CFrame.Position+LookVector)
		else
			Movement.CFrame = CFrame.new(Movement.CFrame.Position,Vector3.new(Movement.CFrame.X+LookVector.X,Movement.CFrame.Y,Movement.CFrame.Z+LookVector.Z))
		end
	end
	Remote:FireServer(RemoteKey,"Movement",{CFrame = Movement.CFrame,Walking = Movement.Walking,Hit = Mouse.Hit})
	--[[for _,v in pairs(Character) do
		if typeof(v) == "Instance" and v.LocalTransparencyModifier ~= 0 then
			Remote:FireServer(RemoteKey,"ReplaceCharacter",{})
			break
		end
	end
	for _,v in pairs(Character) do
		if typeof(v) == "Instance" then
			pcall(function()
				v.CanCollide = false
			end)
		end
	end
	Remote:FireServer(RemoteKey,"PlaybackLoudness",{PlaybackLoudness = Music.PlaybackLoudness,Hit = Mouse.Hit})]]
	LastFrame = tick()
end)
local function ConnectEvent(Event_)
	local EventConnect = Event_.OnClientEvent:Connect(function(Method,Things)
		if type(Method) == "string" and type(Things) == "table" then
			if Method == "SetCharacter" then
				Character = Things.Character
				local RayCharacter = {}
				for _,v in pairs(Character) do
					if typeof(v) == "Instance" then
						table.insert(RayCharacter,v)
					end
				end
				RayProperties.FilterDescendantsInstances = RayCharacter
				MusicHolder = Things.MusicHolder
				Music = Things.Music
				Movement.WalkSpeed = Things.WalkSpeed
			elseif Method == "SetPosition" then
				Movement.CFrame = Things.CFrame
			end
		end
	end)
	local EventRemoval
	EventRemoval = Event_.AncestryChanged:Connect(function()
		if not Event_:IsDescendantOf(game) then
			EventConnect:Disconnect()
			local FoundRemote = false
			repeat
				game:GetService("RunService").RenderStepped:Wait()
				local PotentialRemote = game:FindFirstChild(RemoteName,true)
				if typeof(PotentialRemote) == "Instance" and PotentialRemote:IsA("RemoteEvent") and PotentialRemote.Name == RemoteName then
					Remote = PotentialRemote
					FoundRemote = true
				end
			until FoundRemote
			ConnectEvent(Remote)
			EventRemoval:Disconnect()
		end
	end)
end
local FoundRemote = false
end
print(Enum.DevCameraOcclusionMode.Invisicam)
game.Players.LocalPlayer.DevCameraOcclusionMode = Enum.DevCameraOcclusionMode.Invisicam
Movement2()