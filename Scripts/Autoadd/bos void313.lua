


local TweenService = game:GetService("TweenService")
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

MaskTextureId = 124337542 --124337542 2340547251


owner=game.Players.LocalPlayer
Player = game.Players.LocalPlayer
script.Parent = Player.PlayerGui
ZTfade=false 
ZT=false

while Player.Character == nil do wait()
	
end
	

Character= owner.Character
Torso = Character.Torso
Head = Character.Head
Mouse = owner:GetMouse()
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
RootPart = Character["HumanoidRootPart"]
local Anim="Idle"
local inairvel=0
local WalkAnimStep = 0
local sine = 0
local change = 1
Animstep = 0
WalkAnimMove=0.1
Combo = 0
local attack=false
local RJ = Character.HumanoidRootPart:FindFirstChild("RootJoint")
local Neck = Character.Torso:FindFirstChild("Neck")
local Tim = ""
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14) 
local NeckCF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local ONeckCF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Effects=Instance.new("Folder",Character)
Effects.Name="Effects"
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
local cn = CFrame.new
mr=math.rad
mememode=false
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
local lastid= "http://www.roblox.com/asset/?id=468582223"
local s2=it("Sound",Torso)
local CurId = 1
s2.EmitterSize = 30
local s2c=s2:Clone()





local crying = "http://www.roblox.com/asset/?id=1452402780"
local s3=it("Sound",Head)

s3.EmitterSize = 40
local s3c=s3:Clone()



Humanoid.MaxHealth = 99999999999
wait()

Humanoid.Health = 99999999999
Humanoid.Name = "VoidBoss"
ff = Instance.new("ForceField",Character)
ff.Visible = false
playsong = true

s2.SoundId = lastid
	if playsong == true then
	s2:play()		
	elseif playsong == false then
	s2:stop()			
	end
lastsongpos= 0

crosshair = Instance.new("BillboardGui",Character)
crosshair.Size = UDim2.new(10,0,10,0)
crosshair.Enabled = false
imgl = Instance.new("ImageLabel",crosshair)
imgl.Position = UDim2.new(0,0,0,0)
imgl.Size = UDim2.new(1,0,1,0)
imgl.Image = "rbxassetid://578065407"
imgl.BackgroundTransparency = 1
imgl.ImageTransparency = .7
imgl.ImageColor3 = Color3.new(1,1,1)
	crosshair.StudsOffset = Vector3.new(0,0,-1)


if Character:FindFirstChild("Animate")then
	Character.Animate:Destroy()
end

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end


	

	CFuncs = {
Part = {Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	
	local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
	RemoveOutlines(Part)
	return Part
end
}
, 
Mesh = {Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	
	local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
}
, 
Mesh = {Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	
	local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
}
, 
Weld = {Create = function(Parent, Part0, Part1, C0, C1)
	
	local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
	return Weld
end
}
, 
Sound = {Create = function(id, par, vol, pit)
	
	coroutine.resume(coroutine.create(function()
		
		local S = Create("Sound")({Volume = vol, Pitch = pit or 1, SoundId  = "http://www.roblox.com/asset/?id="..id, Parent = par or workspace})
		wait()
		S:play()
		game:GetService("Debris"):AddItem(S, 12)
	end
))
end
}
, 
ParticleEmitter = {Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
	
	local fp = Create("ParticleEmitter")({Parent = Parent, Color = ColorSequence.new(Color1, Color2), LightEmission = LightEmission, Size = Size, Texture = Texture, Transparency = Transparency, ZOffset = ZOffset, Acceleration = Accel, Drag = Drag, LockedToPart = LockedToPart, VelocityInheritance = VelocityInheritance, EmissionDirection = EmissionDirection, Enabled = Enabled, Lifetime = LifeTime, Rate = Rate, Rotation = Rotation, RotSpeed = RotSpeed, Speed = Speed, VelocitySpread = VelocitySpread})
	return fp
end
}
}





	coroutine.resume(coroutine.create(function()
		if Head:FindFirstChildOfClass("Decal") then
			local face = Head:FindFirstChildOfClass("Decal")
			face:Destroy()
		end
		
	end))







	for i, v in pairs(Character:GetChildren()) do
		if v:IsA("Accessory") then
			v:Destroy()
		end
	end


---------------
--[Functions]--
---------------
so = function(id, par, vol, pit)

CFuncs.Sound.Create(id, par, vol, pit)


end

function weld(parent,part0,part1,c0)
local weld=it("Weld") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end


function MakeJoint(parent,part0,part1,c0)
local weld=it("Motor6D") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end

rayCast = function(Pos, Dir, Max, Ignore)
  
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos,EndPos).lookVector
	return rayCast(StartPos, DIRECTION, Distance, Ignore)
end

function SetTween(SPart,CFr,MoveStyle2,outorin2,AnimTime)
local MoveStyle = Enum.EasingStyle[MoveStyle2]
local outorin = Enum.EasingDirection[outorin2]


local dahspeed=1

local tweeningInformation = TweenInfo.new(
	AnimTime/dahspeed,	
	MoveStyle,
	outorin,
	0,
	false,
	0
)
local MoveCF = CFr
local tweenanim = TweenService:Create(SPart,tweeningInformation,MoveCF)
tweenanim:Play()
end

function GatherAllInstances(Parent,ig)
	local Instances = {}
	local Ignore=nil
if	ig ~= nil then
Ignore = ig	
end
	
	local function GatherInstances(Parent,Ignore)
		for i, v in pairs(Parent:GetChildren()) do
			
			if v ~= Ignore then
				GatherInstances(v,Ignore)
			table.insert(Instances, v) end
		end
	end
	GatherInstances(Parent,Ignore)
	return Instances
end









function WeldAllTo(Part1,Part2,Extra)
	
local EXCF = Part2.CFrame * Extra	
	
for i, v3 in pairs(GatherAllInstances(Part2)) do
	if v3:isA("BasePart") then
		
		
local STW=weld(v3,v3,Part1,EXCF:toObjectSpace(v3.CFrame):inverse() )

	
					v3.Anchored=false
					--v3.Transparency=0
					v3.CanCollide=false	
					
v3.Parent = Part1					
					
					end
end


Part2:Destroy()

end
local SToneTexture = Create("Texture")({
	
	
	Texture = "http://www.roblox.com/asset/?id=1693385655",
    Color3 = Color3.new(163/255, 162/255, 165/255),
	
})

function AddStoneTexture(part)
	coroutine.resume(coroutine.create(function()
	for i = 0,6,1 do
local Tx = SToneTexture:Clone()
Tx.Face = i
Tx.Parent=part
end
	end))
end

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
function recurse(root,callback,i)
	coroutine.resume(coroutine.create(function()
	i= i or 0
	for _,v in pairs(root:GetChildren()) do
		i = i + 1
		callback(i,v)
		
		if #v:GetChildren() > 0 then
			i = recurse(v,callback,i)
		end
	end
	end))
	return i 
end

function ragdollJoint(part0, part1, attachmentName, className, properties)
	
	attachmentName = attachmentName--.."RigAttachment"

	
	local constraint = Instance.new(className.."Constraint")
	constraint.Attachment0 = part0:FindFirstChild(attachmentName)
	constraint.Attachment1 = part1:FindFirstChild(attachmentName)
	constraint.Name = "RagdollConstraint"..part1.Name
	
	for _,propertyData in next,properties or {} do
		constraint[propertyData[1]] = propertyData[2]
	end
	
	local Rcharacter = part0.Parent
	constraint.Parent = Rcharacter
end

function MakeAth(AthParent,AthName,AthPosX,AthPosY,AthPosZ,AthRot,AthAX,SecondaryAxis)
				
coroutine.resume(coroutine.create(function()
							local ATH = Instance.new("Attachment",AthParent)
						ATH.Position = Vector3.new(AthPosX,AthPosY,AthPosZ)
						ATH.Name = AthName
if AthRot ~= nil then					
ATH.Rotation = AthRot end
if AthAX ~= nil then
ATH.Axis = AthAX end
if SecondaryAxis ~= nil then
ATH.SecondaryAxis = SecondaryAxis end
end))
end
function getAttachment0(attachmentName,Rcharacter)
	for i, child in pairs(GatherAllInstances(Rcharacter)) do
		local attachment = child:FindFirstChild(attachmentName)
		if attachment then
			return attachment

			end

	end





end

	function makrag(Rcharacter)
	

--HitModel			


	local camera = workspace.CurrentCamera

	--Make it so ragdoll can't collide with invisible HRP, but don't let HRP fall through map and be destroyed in process	
	coroutine.resume(coroutine.create(function()
		if Rcharacter:FindFirstChild("HumanoidRootPart")then
	Rcharacter.HumanoidRootPart.Anchored = true
	Rcharacter.HumanoidRootPart.CanCollide = false
---	Rcharacter.HumanoidRootPart.Position = Vector3.new(0,-10,0)
Rcharacter.HumanoidRootPart.Parent = nil
	end
end))
	--Helps to fix constraint spasms
	recurse(Rcharacter, function(_,v)
		if v:IsA("Attachment") then
			v.Axis = Vector3.new(0, 1, 0)
			v.SecondaryAxis = Vector3.new(0, 0, 1)
			v.Rotation = Vector3.new(0, 0, 0)
		end
	end)
	
	--Re-attach hats


coroutine.resume(coroutine.create(function()
if Rcharacter:FindFirstChild("Torso")then
	
local RMT = Rcharacter:FindFirstChild("Torso")

local RMH = Rcharacter:FindFirstChild("Head")
	
local RLA = Rcharacter:FindFirstChild("Left Arm")

local RRA = Rcharacter:FindFirstChild("Right Arm")

local RLL = Rcharacter:FindFirstChild("Left Leg")

local RRL = Rcharacter:FindFirstChild("Right Leg")

--MakeAth(RMH,"",0,0,0)
MakeAth(RMH,"NeckRigAttachment",0,-.5,0)
MakeAth(RRA,"RightShoulderRigAttachment",-0.4, 0.8, 0,Vector3.new(-180, 0, 90),Vector3.new(0, -1, -0),Vector3.new(0, 1, 0))
MakeAth(RLA,"LeftShoulderRigAttachment",0.4, 0.8, 0,Vector3.new(-180, 0, 90),Vector3.new(0, -1, -0),Vector3.new(-1, 0, 0))
MakeAth(RRL,"RightHipRigAttachment",0, 1, 0,Vector3.new(90, -90, 0),Vector3.new(0, -1, -0),Vector3.new(0, -0, 1))
MakeAth(RLL,"LeftHipRigAttachment",0, 1, 0,Vector3.new(90, -90, 0),Vector3.new(0, -1, -0),Vector3.new(0, -0, 1))
------------------------------------------------------
MakeAth(RMT,"NeckRigAttachment",0, 1, 0)
MakeAth(RMT,"RightShoulderRigAttachment",1, 0.8, 0,Vector3.new(-180, 0, 0),Vector3.new(1, -0, 0),Vector3.new(0, -1, 0))
MakeAth(RMT,"LeftShoulderRigAttachment",-1, 0.8, 0,Vector3.new(0, 0, -180),Vector3.new(-1, -0, 0),Vector3.new(0, -1, 0))
MakeAth(RMT,"RightHipRigAttachment",0.5, -1.1, 0,Vector3.new(90, -90, 0),Vector3.new(0, -1, -0),Vector3.new(0, -0, 1))
MakeAth(RMT,"LeftHipRigAttachment",-0.5, -1.1, 0,Vector3.new(90, -90, 0),Vector3.new(0, -1, -0),Vector3.new(0, -0, 1))








coroutine.resume(coroutine.create(function()
	local LAT = Instance.new("BallSocketConstraint")
	LAT.Parent = RMT
	LAT.Attachment0 = RLA.LeftShoulderRigAttachment
	LAT.Attachment1 = RMT.LeftShoulderRigAttachment
	LAT.Enabled = true
	LAT.LimitsEnabled=true
	LAT.UpperAngle=70
	end))
coroutine.resume(coroutine.create(function()	
	local RAT = Instance.new("BallSocketConstraint")
	RAT.Parent = RMT
	RAT.Attachment0 = RRA.RightShoulderRigAttachment
	RAT.Attachment1 = RMT.RightShoulderRigAttachment
	RAT.Enabled = true
	RAT.LimitsEnabled=true
	RAT.UpperAngle=70
 	end))
coroutine.resume(coroutine.create(function()	
	local TLL = Instance.new("BallSocketConstraint")
	TLL.Parent = RMT
	TLL.Attachment0 = RLL.LeftHipRigAttachment
	TLL.Attachment1 = RMT.LeftHipRigAttachment
	TLL.Enabled = true
	TLL.LimitsEnabled=true
	TLL.UpperAngle=70
	end))
coroutine.resume(coroutine.create(function()	
	local TRL = Instance.new("BallSocketConstraint")
	TRL.Parent = RMT
	TRL.Attachment0 = RRL.RightHipRigAttachment
	TRL.Attachment1 = RMT.RightHipRigAttachment
	TRL.Enabled = true
	TRL.LimitsEnabled=true
	TRL.UpperAngle=70
	end))

end
end))
		coroutine.resume(coroutine.create(function()
	ragdollJoint(Rcharacter.LowerTorso, Rcharacter.UpperTorso, "WaistRigAttachment", "BallSocket", {
		{"LimitsEnabled",true};
		{"UpperAngle",5};
	}) end))	coroutine.resume(coroutine.create(function()
		local NeckProperties = {
		{"LimitsEnabled", true};
		{"UpperAngle",5};

		}
		local Rtorso = Rcharacter:FindFirstChild("Torso") or Rcharacter:FindFirstChild("UpperTorso")
	ragdollJoint(Rtorso, Rcharacter.Head, "NeckRigAttachment", "Hinge", NeckProperties)
	 end)) 	coroutine.resume(coroutine.create(function()
	
	local handProperties = {
		{"LimitsEnabled", true};
		{"UpperAngle",0};
		{"LowerAngle",0};
	}
	ragdollJoint(Rcharacter.LeftLowerArm, Rcharacter.LeftHand, "LeftWristRigAttachment", "Hinge", handProperties)
	ragdollJoint(Rcharacter.RightLowerArm, Rcharacter.RightHand, "RightWristRigAttachment", "Hinge", handProperties)
	 end)) 	coroutine.resume(coroutine.create(function()
	local shinProperties = {
		{"LimitsEnabled", true};
		{"UpperAngle", 0};
		{"LowerAngle", -75};
	}
	ragdollJoint(Rcharacter.LeftUpperLeg, Rcharacter.LeftLowerLeg, "LeftKneeRigAttachment", "Hinge", shinProperties)
	ragdollJoint(Rcharacter.RightUpperLeg, Rcharacter.RightLowerLeg, "RightKneeRigAttachment", "Hinge", shinProperties)
	end)) 	coroutine.resume(coroutine.create(function()
	local footProperties = {
		{"LimitsEnabled", true};
		{"UpperAngle", 15};
		{"LowerAngle", -45};
	}
	ragdollJoint(Rcharacter.LeftLowerLeg, Rcharacter.LeftFoot, "LeftAnkleRigAttachment", "Hinge", footProperties)
	ragdollJoint(Rcharacter.RightLowerLeg, Rcharacter.RightFoot, "RightAnkleRigAttachment", "Hinge", footProperties)
	end))
	--TODO fix ability for socket to turn backwards whenn ConeConstraints are shipped
		coroutine.resume(coroutine.create(function()
	ragdollJoint(Rcharacter.UpperTorso, Rcharacter.LeftUpperArm, "LeftShoulderRigAttachment", "BallSocket") end)) 	coroutine.resume(coroutine.create(function()
	ragdollJoint(Rcharacter.LeftUpperArm, Rcharacter.LeftLowerArm, "LeftElbowRigAttachment", "BallSocket")	  end))  	coroutine.resume(coroutine.create(function()
	ragdollJoint(Rcharacter.UpperTorso, Rcharacter.RightUpperArm, "RightShoulderRigAttachment", "BallSocket")	 end)) 	coroutine.resume(coroutine.create(function()
	ragdollJoint(Rcharacter.RightUpperArm, Rcharacter.RightLowerArm, "RightElbowRigAttachment", "BallSocket")	 end)) 	coroutine.resume(coroutine.create(function()
	ragdollJoint(Rcharacter.LowerTorso, Rcharacter.LeftUpperLeg, "LeftHipRigAttachment", "BallSocket")	 end)) 	coroutine.resume(coroutine.create(function()
	ragdollJoint(Rcharacter.LowerTorso, Rcharacter.RightUpperLeg, "RightHipRigAttachment", "BallSocket")	 end)) 	


for i = 0,2 do
coroutine.resume(coroutine.create(function()
	for _,child in next,Rcharacter:GetChildren() do
		if child:IsA("Accoutrement") then
			--Loop through all parts instead of only checking for one to be forwards-compatible in the event
			--ROBLOX implements multi-part accessories
			for _,part in next,child:GetChildren() do
				if part:IsA("BasePart") then part.CanCollide = false	
					

					local attachment1 = part:FindFirstChildOfClass("Attachment")
					local attachment0 = getAttachment0(attachment1.Name,Rcharacter)
					if attachment0 and attachment1 then
						--Shouldn't use constraints for this, but have to because of a ROBLOX idiosyncrasy where
						--joints connecting a character are perpetually deleted while the character is dead

				
	local HatProperties = {
		{"LimitsEnabled", true};
		{"UpperAngle", 0};
		{"LowerAngle", -0};
	}

				coroutine.resume(coroutine.create(function()
	wait()			
local rg = 	ragdollJoint(attachment0.Parent, part, ""..attachment1.Name, "Hinge", HatProperties)						
end))						
						
					end
				end
			end
		end
	end
	
end))
wait(0.5)
end
	for _,v in pairs(Rcharacter:GetChildren()) do	
	if v:isA("Script")	or v:isA("LocalScript") then
		v:Destroy()
	end
	end


	coroutine.resume(coroutine.create(function()	
wait(1)
	for _,v3 in pairs(game:GetService("Players"):GetChildren()) do	
		coroutine.resume(coroutine.create(function()	
		if v3:isA("Player") and v3.Character == 	Rcharacter then
			Rcharacter.Archivable=true
			local ORcharacter = Rcharacter:Clone()
			 --Rcharacter2.Archivable=false 
			--Rcharacter3.Archivable=false 
			 ORcharacter.Parent = Rcharacter.Parent
			local Rhum = ORcharacter:FindFirstChildOfClass("Humanoid")
			Rhum.PlatformStand = true
						Rhum.Health = Rhum.MaxHealth
Rcharacter:Destroy()
wait()
Rhum.Health = 0
game:GetService("Debris"):AddItem(ORcharacter, 380)

		end
		end))
		end			


end))


			end


function Tran(Num)
local GivenLeter = ""
if Num == "1" then
GivenLeter = "a"	
elseif Num == "2" then
GivenLeter = "b"
elseif Num == "3" then
GivenLeter = "c"
elseif Num == "4" then
GivenLeter = "d"
elseif Num == "5" then
GivenLeter = "e"
elseif Num == "6" then
GivenLeter = "f"
elseif Num == "7" then
GivenLeter = "g"
elseif Num == "8" then
GivenLeter = "h"
elseif Num == "9" then
GivenLeter = "i"
elseif Num == "10" then
GivenLeter = "j"
elseif Num == "11" then
GivenLeter = "k"
elseif Num == "12" then
GivenLeter = "l"
elseif Num == "13" then
GivenLeter = "m"
elseif Num == "14" then
GivenLeter = "n"
elseif Num == "15" then
GivenLeter = "o"
elseif Num == "16" then
GivenLeter = "p"
elseif Num == "17" then
GivenLeter = "q"
elseif Num == "18" then
GivenLeter = "r"
elseif Num == "19" then
GivenLeter = "s"
elseif Num == "20" then
GivenLeter = "t"
elseif Num == "21" then
GivenLeter = "u"
elseif Num == "22" then
GivenLeter = "v"
elseif Num == "23" then
GivenLeter = "w"
elseif Num == "24" then
GivenLeter = "x"
elseif Num == "25" then
GivenLeter = "y"
elseif Num == "26" then
GivenLeter = "z"
elseif Num == "27" then
GivenLeter = "_"
elseif Num == "28" then
GivenLeter = "0"
elseif Num == "29" then
GivenLeter = "1"
elseif Num == "30" then
GivenLeter = "2"	
elseif Num == "31" then
GivenLeter = "3"
elseif Num == "32" then
GivenLeter = "4"
elseif Num == "33" then
GivenLeter = "5"
elseif Num == "34" then
GivenLeter = "6"
elseif Num == "35" then
GivenLeter = "7"
elseif Num == "36" then
GivenLeter = "8"
elseif Num == "37" then
GivenLeter = "9"
end
return GivenLeter
	
end

function MaybeOk(Mode,Extra)
local ReturningValue = ""
if Mode == 1 then
	
	

	--	v.C0 = CFrame.new(1,1,1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
		
		--print(v.C0)
local GivenText	= ""	
local	msg = 	Extra
local Txt = ""
local FoundTime=0
local LastFound = 0
        delay(wait(0),function()
                for v3 = 1, #msg do
                    
if string.sub(msg,0+v3,v3) == ","	then

local TheN = string.sub(msg,LastFound,v3-1)


local NumTranslate = Tran(string.sub(msg,LastFound,v3-1))



FoundTime = FoundTime + 1


GivenText = GivenText..NumTranslate

LastFound=v3+1
Txt=""
end
    Txt=string.sub(msg,1,v3)		


       --    Gui.ExtentsOffset = Vector3.new(0,3,0)


      --  Gui.ExtentsOffset = Vector3.new(0,3,0)                    
wait()
 -- Gui.ExtentsOffset = Vector3.new(0,3,0)   
                end;		

	 	ReturningValue=GivenText
	      for v3 = 1, #Txt do
                        Txt=string.sub(msg,-1,v3)


             




   end;
             --   Gui:remove()
        end)	
	

elseif Mode == 2 then
	
print("fat")
end



while ReturningValue == "" do wait() end
return ReturningValue
	
end



----------------------
--[End Of Functions]--
----------------------






------------------
--[Sword]--
------------------




function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Model0 = Instance.new("Model")
Part1 = Instance.new("Part")
ParticleEmitter2 = Instance.new("ParticleEmitter")
Model3 = Instance.new("Model")
Beam4 = Instance.new("Beam")  ------------------------------------------------------------------------------
Beam5 = Instance.new("Beam")
Beam6 = Instance.new("Beam")






Model7 = Instance.new("Model")
Part8 = Instance.new("Part")
ParticleEmitter9 = Instance.new("ParticleEmitter")
Part10 = Instance.new("Part")
SpecialMesh11 = Instance.new("SpecialMesh")
Part12 = Instance.new("Part")
SpecialMesh13 = Instance.new("SpecialMesh")
Model14 = Instance.new("Model")
Part15 = Instance.new("Part")
SpecialMesh16 = Instance.new("SpecialMesh")
Part17 = Instance.new("Part")
SpecialMesh18 = Instance.new("SpecialMesh")
Part19 = Instance.new("Part")
ParticleEmitter20 = Instance.new("ParticleEmitter")
Model21 = Instance.new("Model")
Part22 = Instance.new("Part")
SpecialMesh23 = Instance.new("SpecialMesh")
Part24 = Instance.new("Part")
SpecialMesh25 = Instance.new("SpecialMesh")
Part26 = Instance.new("Part")
SpecialMesh27 = Instance.new("SpecialMesh")
Part28 = Instance.new("Part")
SpecialMesh29 = Instance.new("SpecialMesh")
Part30 = Instance.new("Part")
SpecialMesh31 = Instance.new("SpecialMesh")
Part32 = Instance.new("Part")
SpecialMesh33 = Instance.new("SpecialMesh")
Decal34 = Instance.new("Decal")
Part35 = Instance.new("Part")
ParticleEmitter36 = Instance.new("ParticleEmitter")
Part37 = Instance.new("Part")

TAttachment = Instance.new("Attachment",Part1)
HAttachment2 = Instance.new("Attachment",Part35)
RAttachment3 = Instance.new("Attachment",Part8)
LAttachment4 = Instance.new("Attachment",Part19)

--TAttachment
--HAttachment2
--RAttachment3
--LAttachment4


--Part35,Part19,Part8
--Head,LeftArm,RightArm


SpecialMesh38 = Instance.new("SpecialMesh")
Model0.Name = "VoidBoss"
Model0.Parent = mas
Part1.Name = "Torso"
Part1.Parent = Model0
Part1.CFrame = CFrame.new(3.5, 0.0108870268, -65.510788, 2.08616257e-07, 0, -1, 0.999999881, 0, 2.08616257e-07, 0, -0.999999881, 0)
Part1.Orientation = Vector3.new(0, -90, 90)
Part1.Position = Vector3.new(3.5, 0.0108870268, -65.510788)
Part1.Rotation = Vector3.new(-90, -90, 0)
Part1.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part1.Transparency = 1
Part1.Size = Vector3.new(1, 1, 1)
Part1.Anchored = true
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.BrickColor = BrickColor.new("Institutional white")
Part1.CanCollide = false
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.brickColor = BrickColor.new("Institutional white")
Part1.FormFactor = Enum.FormFactor.Symmetric
Part1.formFactor = Enum.FormFactor.Symmetric
ParticleEmitter2.Parent = Part1
ParticleEmitter2.Speed = NumberRange.new(6, 6)
ParticleEmitter2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)),ColorSequenceKeypoint.new(0.299,Color3.new(0.00998336, 0.00998336, 0.00998336)),ColorSequenceKeypoint.new(0.499,Color3.new(0,0,0)),ColorSequenceKeypoint.new(1,Color3.new(0.45098, 0, 1))})
ParticleEmitter2.LightInfluence = 1
ParticleEmitter2.Texture = "rbxassetid://258128463"
ParticleEmitter2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(.2,0.86913582086563),NumberSequenceKeypoint.new(1,1)})
ParticleEmitter2.ZOffset = 1
ParticleEmitter2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1.3749998807907),NumberSequenceKeypoint.new(1,0.68749964237213)})
ParticleEmitter2.Acceleration = Vector3.new(1, 0, 0)
ParticleEmitter2.Drag = 3
ParticleEmitter2.Lifetime = NumberRange.new(2, 4)
ParticleEmitter2.LockedToPart = true
ParticleEmitter2.Rate = 50
ParticleEmitter2.RotSpeed = NumberRange.new(-100, 100)
ParticleEmitter2.SpreadAngle = Vector2.new(360, 0)
ParticleEmitter2.VelocitySpread = 360
Model3.Parent = Part1

--TAttachment
--HAttachment2
--RAttachment3
--LAttachment4


Beam4.Name = "RightArm"
Beam4.Parent = Model3
Beam4.Attachment0 = TAttachment
Beam4.Attachment1 = RAttachment3
Beam4.CurveSize0 = 10
Beam4.FaceCamera = true
Beam4.LightInfluence = 1
Beam4.Texture = "rbxassetid://130207880"
Beam4.TextureLength = 0.875
Beam4.TextureSpeed = 1
Beam4.Transparency = NumberSequence.new(.5,0)
Beam4.Width0 = 3
Beam4.Width1 = 3
Beam5.Name = "LeftArm"
Beam5.Parent = Model3
Beam5.Attachment0 = TAttachment
Beam5.Attachment1 = LAttachment4
Beam5.CurveSize0 = 10
Beam5.FaceCamera = true
Beam5.LightInfluence = 1
Beam5.Texture = "rbxassetid://130207880"
Beam5.TextureLength = 0.875
Beam5.TextureSpeed = 1
Beam5.Transparency = NumberSequence.new(.5,0)
Beam5.Width0 = 3
Beam5.Width1 = 3
Beam6.Name = "Head"
Beam6.Parent = Model3
Beam6.Attachment0 = TAttachment
Beam6.Attachment1 = HAttachment2
Beam6.FaceCamera = true
Beam6.LightInfluence = 1
Beam6.Segments = 1
Beam6.Texture = "rbxassetid://130207880"
Beam6.TextureSpeed = 1
Beam6.Transparency = NumberSequence.new(.5,0)
Beam6.Width0 = 3
Beam6.Width1 = 1.5
Model7.Name = "RightArm"
Model7.Parent = Model0
Part8.Name = "Particles"
Part8.Parent = Model7
Part8.CFrame = CFrame.new(-3, 3.62246037, -66.4395981, -1, 0, 0, 0, 0.999390841, 0.0348994173, 0, 0.0348994173, -0.999390841)
Part8.Orientation = Vector3.new(-2, 180, 0)
Part8.Position = Vector3.new(-3, 3.62246037, -66.4395981)
Part8.Rotation = Vector3.new(-178, 0, -180)
Part8.Color = Color3.new(0, 0, 0)
Part8.Transparency = 1
Part8.Size = Vector3.new(0.5, 0.5, 0.5)
Part8.Anchored = true
Part8.BottomSurface = Enum.SurfaceType.Smooth

Part8.CanCollide = false
Part8.Material = Enum.Material.Neon
Part8.TopSurface = Enum.SurfaceType.Smooth

Part8.FormFactor = Enum.FormFactor.Symmetric
Part8.formFactor = Enum.FormFactor.Symmetric
ParticleEmitter9.Parent = Part8
ParticleEmitter9.Speed = NumberRange.new(1.2000000476837, 1.2000000476837)
ParticleEmitter9.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)),ColorSequenceKeypoint.new(0.699,Color3.new(0.00998336, 0.00998336, 0.00998336)),ColorSequenceKeypoint.new(1,Color3.new(0.45098, 0, 1))})
ParticleEmitter9.LightInfluence = 1
ParticleEmitter9.Texture = "rbxassetid://258128463"
ParticleEmitter9.Transparency= NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.5,0.7),NumberSequenceKeypoint.new(1,1)})
ParticleEmitter9.ZOffset = 2
ParticleEmitter9.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1.9999998807907),NumberSequenceKeypoint.new(0.43749988079071,0.37499964237213),NumberSequenceKeypoint.new(1,0.68749964237213)})  
ParticleEmitter9.Acceleration = Vector3.new(0, 0, -0.400000006)
ParticleEmitter9.Drag = 1
ParticleEmitter9.Lifetime = NumberRange.new(3, 3)
ParticleEmitter9.LockedToPart = true
ParticleEmitter9.Rate = 100
ParticleEmitter9.RotSpeed = NumberRange.new(-100, 100)
ParticleEmitter9.SpreadAngle = Vector2.new(360, 360)
ParticleEmitter9.VelocitySpread = 360
Part10.Parent = Model7
Part10.CFrame = CFrame.new(-2, 4.33036613, -62.6395836, -0.965925813, 0.0669872463, -0.25, 0, 0.965925872, 0.258818835, 0.258819044, 0.249999791, -0.933012724)
Part10.Orientation = Vector3.new(-15, -165, 0)
Part10.Position = Vector3.new(-2, 4.33036613, -62.6395836)
Part10.Rotation = Vector3.new(-164.5, -14.4799995, -176.029999)
Part10.Color = Color3.new(0, 0, 0)
Part10.Size = Vector3.new(1, 1, 0.5)
Part10.Anchored = true
Part10.BottomSurface = Enum.SurfaceType.Smooth

Part10.CanCollide = false
Part10.Material = Enum.Material.Neon
Part10.TopSurface = Enum.SurfaceType.Smooth

Part10.FormFactor = Enum.FormFactor.Symmetric
Part10.formFactor = Enum.FormFactor.Symmetric
SpecialMesh11.Parent = Part10
SpecialMesh11.MeshType = Enum.MeshType.Sphere
Part12.Parent = Model7
Part12.CFrame = CFrame.new(-1.5, 4.83036566, -63.1395836, 1, 0, 8.74227766e-08, 0, 1, 0, -8.74227766e-08, 0, 1)
Part12.Position = Vector3.new(-1.5, 4.83036566, -63.1395836)
Part12.Color = Color3.new(0.792157, 0.796079, 0.819608)
Part12.Size = Vector3.new(1, 1, 1)
Part12.Anchored = true
Part12.BottomSurface = Enum.SurfaceType.Smooth
Part12.BrickColor = BrickColor.new("Ghost grey")
Part12.CanCollide = false
Part12.Material = Enum.Material.Fabric
Part12.TopSurface = Enum.SurfaceType.Smooth
Part12.brickColor = BrickColor.new("Ghost grey")
Part12.FormFactor = Enum.FormFactor.Symmetric
Part12.formFactor = Enum.FormFactor.Symmetric
SpecialMesh13.Parent = Part12
SpecialMesh13.MeshId = "rbxassetid://1282322452"
SpecialMesh13.Scale = Vector3.new(0.600000024, 0.600000024, 0.600000024)
SpecialMesh13.MeshType = Enum.MeshType.FileMesh
Model14.Name = "LeftArm"
Model14.Parent = Model0
Part15.Parent = Model14
Part15.CFrame = CFrame.new(8.5, 4.83036566, -63.1395836, 1, 0, 8.74227766e-08, 0, 1, 0, -8.74227766e-08, 0, 1)
Part15.Position = Vector3.new(8.5, 4.83036566, -63.1395836)
Part15.Color = Color3.new(0.792157, 0.796079, 0.819608)
Part15.Size = Vector3.new(1, 1, 1)
Part15.Anchored = true
Part15.BottomSurface = Enum.SurfaceType.Smooth
Part15.BrickColor = BrickColor.new("Ghost grey")
Part15.CanCollide = false
Part15.Material = Enum.Material.Fabric
Part15.TopSurface = Enum.SurfaceType.Smooth
Part15.brickColor = BrickColor.new("Ghost grey")
Part15.FormFactor = Enum.FormFactor.Symmetric
Part15.formFactor = Enum.FormFactor.Symmetric
SpecialMesh16.Parent = Part15
SpecialMesh16.MeshId = "rbxassetid://1279765257"
SpecialMesh16.Scale = Vector3.new(0.600000024, 0.600000024, 0.600000024)
SpecialMesh16.MeshType = Enum.MeshType.FileMesh
Part17.Parent = Model14
Part17.CFrame = CFrame.new(9, 4.33036613, -62.6395836, -0.965925872, -0.0669871867, 0.249999806, 0, 0.965925872, 0.258818835, -0.258818835, 0.249999806, -0.933012784)
Part17.Orientation = Vector3.new(-15, 165, 0)
Part17.Position = Vector3.new(9, 4.33036613, -62.6395836)
Part17.Rotation = Vector3.new(-164.5, 14.4799995, 176.029999)
Part17.Color = Color3.new(0, 0, 0)
Part17.Size = Vector3.new(1, 1, 0.5)
Part17.Anchored = true
Part17.BottomSurface = Enum.SurfaceType.Smooth

Part17.CanCollide = false
Part17.Material = Enum.Material.Neon
Part17.TopSurface = Enum.SurfaceType.Smooth

Part17.FormFactor = Enum.FormFactor.Symmetric
Part17.formFactor = Enum.FormFactor.Symmetric
SpecialMesh18.Parent = Part17
SpecialMesh18.MeshType = Enum.MeshType.Sphere
Part19.Name = "Particles"
Part19.Parent = Model14
Part19.CFrame = CFrame.new(10, 3.62246037, -66.4395981, -1, 0, 0, 0, 0.999390841, 0.0348994173, 0, 0.0348994173, -0.999390841)
Part19.Orientation = Vector3.new(-2, 180, 0)
Part19.Position = Vector3.new(10, 3.62246037, -66.4395981)
Part19.Rotation = Vector3.new(-178, 0, -180)
Part19.Color = Color3.new(0, 0, 0)
Part19.Transparency = 1
Part19.Size = Vector3.new(0.5, 0.5, 0.5)
Part19.Anchored = true
Part19.BottomSurface = Enum.SurfaceType.Smooth

Part19.CanCollide = false
Part19.Material = Enum.Material.Neon
Part19.TopSurface = Enum.SurfaceType.Smooth

Part19.FormFactor = Enum.FormFactor.Symmetric
Part19.formFactor = Enum.FormFactor.Symmetric
ParticleEmitter20.Parent = Part19
ParticleEmitter20.Speed = NumberRange.new(1.2000000476837, 1.2000000476837)
ParticleEmitter20.Color =  ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)),ColorSequenceKeypoint.new(0.699,Color3.new(0.00998336, 0.00998336, 0.00998336)),ColorSequenceKeypoint.new(1,Color3.new(0.45098, 0, 1))})
ParticleEmitter20.LightInfluence = 1
ParticleEmitter20.Texture = "rbxassetid://258128463"
ParticleEmitter20.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.5,0.7),NumberSequenceKeypoint.new(1,1)})
ParticleEmitter20.ZOffset = 2
ParticleEmitter20.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1.9999998807907),NumberSequenceKeypoint.new(0.43749988079071,0.37499964237213),NumberSequenceKeypoint.new(1,0.68749964237213)})  
ParticleEmitter20.Acceleration = Vector3.new(0, 0, -0.400000006)
ParticleEmitter20.Drag = 1
ParticleEmitter20.Lifetime = NumberRange.new(3, 3)
ParticleEmitter20.LockedToPart = true
ParticleEmitter20.Rate = 100
ParticleEmitter20.RotSpeed = NumberRange.new(-100, 100)
ParticleEmitter20.SpreadAngle = Vector2.new(360, 360)
ParticleEmitter20.VelocitySpread = 360
Model21.Name = "Head"
Model21.Parent = Model0
Part22.Parent = Model21
Part22.CFrame = CFrame.new(4, 8.9408741, -63.4595413, -1, 0, 0, 0, 0.965925872, 0.258818984, 0, 0.258818984, -0.965925872)
Part22.Orientation = Vector3.new(-15, 180, 0)
Part22.Position = Vector3.new(4, 8.9408741, -63.4595413)
Part22.Rotation = Vector3.new(-165, 0, -180)
Part22.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part22.Size = Vector3.new(0.400000036, 0.400000036, 1.20000005)
Part22.Anchored = true
Part22.BottomSurface = Enum.SurfaceType.Smooth
Part22.BrickColor = BrickColor.new("Institutional white")
Part22.CanCollide = false
Part22.Locked = true
Part22.Material = Enum.Material.Neon
Part22.TopSurface = Enum.SurfaceType.Smooth
Part22.brickColor = BrickColor.new("Institutional white")
Part22.FormFactor = Enum.FormFactor.Symmetric
Part22.formFactor = Enum.FormFactor.Symmetric
Part22.Name = "Eye1"
SpecialMesh23.Parent = Part22
SpecialMesh23.MeshType = Enum.MeshType.Sphere
Part24.Parent = Model21
Part24.CFrame = CFrame.new(3.5, 8.93740559, -63.2534142, -1, 0, 0, 0, 0.965925872, 0.258818984, 0, 0.258818984, -0.965925872)
Part24.Orientation = Vector3.new(-15, 180, 0)
Part24.Position = Vector3.new(3.5, 8.93740559, -63.2534142)
Part24.Rotation = Vector3.new(-165, 0, -180)
Part24.Color = Color3.new(0, 0, 0)
Part24.Size = Vector3.new(2, 1, 0.800000012)
Part24.Anchored = true
Part24.BottomSurface = Enum.SurfaceType.Smooth

Part24.CanCollide = false
Part24.Locked = true
Part24.Material = Enum.Material.Neon
Part24.TopSurface = Enum.SurfaceType.Smooth

Part24.FormFactor = Enum.FormFactor.Symmetric
Part24.formFactor = Enum.FormFactor.Symmetric
SpecialMesh25.Parent = Part24
SpecialMesh25.MeshType = Enum.MeshType.Sphere
Part26.Parent = Model21
Part26.CFrame = CFrame.new(3.5, 7.62994099, -63.3966942, -1, 0, 0, 0, 0.965925872, 0.258818984, 0, 0.258818984, -0.965925872)
Part26.Orientation = Vector3.new(-15, 180, 0)
Part26.Position = Vector3.new(3.5, 7.62994099, -63.3966942)
Part26.Rotation = Vector3.new(-165, 0, -180)
Part26.Color = Color3.new(0, 0, 0)
Part26.Size = Vector3.new(1.80000007, 1.5999999, 0.600000024)
Part26.Anchored = true
Part26.BottomSurface = Enum.SurfaceType.Smooth

Part26.CanCollide = false
Part26.Locked = true
Part26.Material = Enum.Material.Neon
Part26.TopSurface = Enum.SurfaceType.Smooth

Part26.FormFactor = Enum.FormFactor.Symmetric
Part26.formFactor = Enum.FormFactor.Symmetric
SpecialMesh27.Parent = Part26
SpecialMesh27.MeshType = Enum.MeshType.Sphere
Part28.Parent = Model21
Part28.CFrame = CFrame.new(3, 8.9408741, -63.4595413, -1, 0, 0, 0, 0.965925872, 0.258818984, 0, 0.258818984, -0.965925872)
Part28.Orientation = Vector3.new(-15, 180, 0)
Part28.Position = Vector3.new(3, 8.9408741, -63.4595413)
Part28.Rotation = Vector3.new(-165, 0, -180)
Part28.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part28.Size = Vector3.new(0.400000036, 0.400000036, 1.20000005)
Part28.Anchored = true
Part28.BottomSurface = Enum.SurfaceType.Smooth
Part28.BrickColor = BrickColor.new("Institutional white")
Part28.CanCollide = false
Part28.Locked = true
Part28.Material = Enum.Material.Neon
Part28.TopSurface = Enum.SurfaceType.Smooth
Part28.brickColor = BrickColor.new("Institutional white")
Part28.FormFactor = Enum.FormFactor.Symmetric
Part28.formFactor = Enum.FormFactor.Symmetric
Part28.Name = "Eye2"
SpecialMesh29.Parent = Part28
SpecialMesh29.MeshType = Enum.MeshType.Sphere
Part30.Parent = Model21
Part30.CFrame = CFrame.new(3.5, 8.98917007, -63.4466019, -1, 0, 0, 0, 0.965925872, 0.258818984, 0, 0.258818984, -0.965925872)
Part30.Orientation = Vector3.new(-15, 180, 0)
Part30.Position = Vector3.new(3.5, 8.98917007, -63.4466019)
Part30.Rotation = Vector3.new(-165, 0, -180)
Part30.Color = Color3.new(0, 0, 0)
Part30.Size = Vector3.new(1, 1, 1)
Part30.Anchored = true
Part30.BottomSurface = Enum.SurfaceType.Smooth

Part30.CanCollide = false
Part30.Locked = true
Part30.Material = Enum.Material.Neon
Part30.TopSurface = Enum.SurfaceType.Smooth

Part30.FormFactor = Enum.FormFactor.Symmetric
Part30.formFactor = Enum.FormFactor.Symmetric
SpecialMesh31.Parent = Part30
SpecialMesh31.MeshType = Enum.MeshType.Sphere
Part32.Name = "Handle"
Part32.Parent = Model21
Part32.CFrame = CFrame.new(3.5, 8.19017696, -63.2465782, -1, 0, 0, 0, 0.965925872, 0.258818984, 0, 0.258818984, -0.965925872)
Part32.Orientation = Vector3.new(-15, 180, 0)
Part32.Position = Vector3.new(3.5, 8.19017696, -63.2465782)
Part32.Rotation = Vector3.new(-165, 0, -180)
Part32.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part32.Size = Vector3.new(0.100000001, 0.100000001, 0.100000001)
Part32.Anchored = true
Part32.BottomSurface = Enum.SurfaceType.Smooth
Part32.BrickColor = BrickColor.new("Really black")
Part32.CanCollide = false
Part32.Locked = true
Part32.Material = Enum.Material.Fabric
Part32.TopSurface = Enum.SurfaceType.Smooth
Part32.brickColor = BrickColor.new("Really black")
Part32.FormFactor = Enum.FormFactor.Symmetric
Part32.formFactor = Enum.FormFactor.Symmetric
SpecialMesh33.Parent = Part32
SpecialMesh33.MeshId = "http://www.roblox.com/asset/?id=13520257"
SpecialMesh33.Scale = Vector3.new(3, 3.0999999, 3)
SpecialMesh33.MeshType = Enum.MeshType.FileMesh
SpecialMesh33.TextureId = "http://www.roblox.com/asset/?id=2349706532"
Decal34.Parent = Part32
--Decal34.Texture = "http://www.roblox.com/asset/?id="..MaskTextureId--124337542 2340547251
Part35.Name = "Particles"
Part35.Parent = Model21
Part35.CFrame = CFrame.new(3.5, 8.64255619, -64.4712448, -1, 0, 0, 0, 0.956304669, 0.292371869, 0, 0.292371869, -0.956304669)
Part35.Orientation = Vector3.new(-17, 180, 0)
Part35.Position = Vector3.new(3.5, 8.64255619, -64.4712448)
Part35.Rotation = Vector3.new(-163, 0, -180)
Part35.Color = Color3.new(0, 0, 0)
Part35.Transparency = 1
Part35.Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007)
Part35.Anchored = true
Part35.BottomSurface = Enum.SurfaceType.Smooth

Part35.CanCollide = false
Part35.Locked = true
Part35.Material = Enum.Material.Neon
Part35.TopSurface = Enum.SurfaceType.Smooth

Part35.FormFactor = Enum.FormFactor.Symmetric
Part35.formFactor = Enum.FormFactor.Symmetric
ParticleEmitter36.Parent = Part35
ParticleEmitter36.Speed = NumberRange.new(2, 2)
ParticleEmitter36.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)),ColorSequenceKeypoint.new(0.699,Color3.new(0.00998336, 0.00998336, 0.00998336)),ColorSequenceKeypoint.new(1,Color3.new(0.45098, 0, 1))})
ParticleEmitter36.LightInfluence = 1
ParticleEmitter36.Texture = "rbxassetid://258128463"
ParticleEmitter36.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.5,0.5),NumberSequenceKeypoint.new(1,1)})
ParticleEmitter36.ZOffset = -2
ParticleEmitter36.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1.7500001192093),NumberSequenceKeypoint.new(0.7500001192093,0.74999988079071),NumberSequenceKeypoint.new(1,0.68749964237213)})
ParticleEmitter36.Acceleration = Vector3.new(0, 0.25, 0)
ParticleEmitter36.Drag = 2
ParticleEmitter36.Lifetime = NumberRange.new(1, 3)
ParticleEmitter36.LockedToPart = true
ParticleEmitter36.Rate = 100.01999664307
ParticleEmitter36.RotSpeed = NumberRange.new(-100, 100)
ParticleEmitter36.SpreadAngle = Vector2.new(360, 360)
ParticleEmitter36.VelocitySpread = 360
Part37.Name = "Head"
Part37.Parent = Model21
Part37.CFrame = CFrame.new(3.5, 8.64255619, -64.4712448, -1, 0, 0, 0, 0.956304669, 0.292371869, 0, 0.292371869, -0.956304669)
Part37.Orientation = Vector3.new(-17, 180, 0)
Part37.Position = Vector3.new(3.5, 8.64255619, -64.4712448)
Part37.Rotation = Vector3.new(-163, 0, -180)
Part37.Color = Color3.new(0.00784314, 0.00784314, 0.00784314)
Part37.Size = Vector3.new(3, 3, 3)
Part37.Anchored = true
Part37.BottomSurface = Enum.SurfaceType.Smooth

Part37.CanCollide = false
Part37.Locked = true
Part37.Material = Enum.Material.Fabric
Part37.TopSurface = Enum.SurfaceType.Smooth

Part37.FormFactor = Enum.FormFactor.Symmetric
Part37.formFactor = Enum.FormFactor.Symmetric
SpecialMesh38.Parent = Part37
for i,v in pairs(mas:GetChildren()) do
	v.Parent = script
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end

script:WaitForChild("VoidBoss")
script.VoidBoss:WaitForChild("LeftArm")
script.VoidBoss:WaitForChild("RightArm")
script.VoidBoss:WaitForChild("Head")
local LAP=Instance.new("Part")
		LAP.Reflectance = 0
		LAP.Transparency = 1
		LAP.CanCollide = false
		LAP.Locked = true
		LAP.Anchored=true
		LAP.BrickColor = BrickColor.new("Really blue")
		LAP.Name = "Left Leg"
		LAP.Size = Vector3.new()
		LAP.Material = "SmoothPlastic"
		LAP:BreakJoints()		
	--	LAP.Parent = Character		
		LAP.CFrame = CFrame.new(8.5, 4.83036566, -63.1395836, 1, 0, 8.74227766e-08, 0, 1, 0, -8.74227766e-08, 0, 1)*angles(math.rad(90),0,math.rad(180))
for i,v in pairs(script.VoidBoss.LeftArm:GetChildren()) do
	v.Parent = LAP
end	
script.VoidBoss.LeftArm:Destroy()
	LAP.Parent = script.VoidBoss	
	
local RAP=Instance.new("Part")
		RAP.Reflectance = 0
		RAP.Transparency = 1
		RAP.CanCollide = false
		RAP.Locked = true
		RAP.Anchored=true
		RAP.BrickColor = BrickColor.new("Really blue")
		RAP.Name = "Right Leg"
		RAP.Size = Vector3.new()
		RAP.Material = "SmoothPlastic"
		RAP:BreakJoints()		
	--	RAP.Parent = Character		
		RAP.CFrame = CFrame.new(-1.5, 4.83036566, -63.1395836, 1, 0, 8.74227766e-08, 0, 1, 0, -8.74227766e-08, 0, 1)*angles(math.rad(90),0,math.rad(180))
for i,v in pairs(script.VoidBoss.RightArm:GetChildren()) do
	v.Parent = RAP
end	
script.VoidBoss.RightArm:Destroy()
	RAP.Parent = script.VoidBoss	

local HHP=Instance.new("Part")
		HHP.Reflectance = 0
		HHP.Transparency = 1
		HHP.CanCollide = false
		HHP.Locked = true
		HHP.Anchored=true
		HHP.BrickColor = BrickColor.new("Really blue")
		HHP.Name = "Head"
		HHP.Size = Vector3.new()
		HHP.Material = "SmoothPlastic"
		HHP:BreakJoints()		
		
		HHP.CFrame = CFrame.new(3.5, 8.64255619, -64.4712448, -1, 0, 0, 0, 0.956304669, 0.292371869, 0, 0.292371869, -0.956304669)
for i,v in pairs(script.VoidBoss.Head:GetChildren()) do
	v.Parent = HHP
end	
script.VoidBoss.Head:Destroy()
	HHP.Parent = script.VoidBoss	


--[ ACTIVATE MODEL BY GETING RID OF THIS LINE
for i, v in pairs(GatherAllInstances(script.VoidBoss)) do
	if v:isA("BasePart") then
	RemoveOutlines(v)
	if v:FindFirstChildOfClass("SpecialMesh") and v:FindFirstChildOfClass("SpecialMesh").MeshId~=nil then
	--local mesh = v:FindChildOfClass("SpecialMesh")	
	--v.Size = v.Size/2
	
	
	end
	end
	end

for _,v in pairs(script.VoidBoss:children()) do
		if v:IsA("BasePart")  then
			
			if  Character:FindFirstChild(""..v.Name) then
				local Part1=Character:FindFirstChild(""..v.Name)
				local Part2=v
				
WeldAllTo(Part1,Part2,CFrame.new(0,0,0))

			end
			
			
		end
end	

--]]




for _,v in pairs(Character:children()) do
		if v:IsA("Accessory")  then
			v:Destroy()
		elseif v:IsA("BasePart")  then	
			v.Transparency =1
		end
end


	
DGT= function()
local Tlifetime = 0.17
local DaggerTrail=Instance.new("Trail",Sword)	
local Attach1 = Instance.new("Attachment",Sword.HitBox)	
local Attach2 = Instance.new("Attachment",Sword.HitBox)	
Attach2.Position = Vector3.new(0,0,3)
Attach1.Position = Vector3.new(0,0,-3)       
DaggerTrail.Attachment0 = Attach1
DaggerTrail.Attachment1 = Attach2 
DaggerTrail.Texture = "rbxassetid://1251856844"
DaggerTrail.Lifetime = .1
DaggerTrail.MaxLength = 10
DaggerTrail.MinLength = 0
DaggerTrail.TextureMode= "Static"
DaggerTrail.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
DaggerTrail.WidthScale=NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(1,0)})
DaggerTrail.LightEmission=0
DaggerTrail.Color = ColorSequence.new(Color3.new(0,1,0),Color3.new(0,1,0))
DaggerTrail.LightEmission = 1
game:GetService("Debris"):AddItem(DaggerTrail, Tlifetime)
game:GetService("Debris"):AddItem(Attach1, Tlifetime)
game:GetService("Debris"):AddItem(Attach2, Tlifetime)
end

function CreatePart( Parent, Material, Reflectance, Transparency, BColor, Name, Size)
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

function CreateMesh2(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
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

function CreatePart2(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
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

local S = IT("Sound")
function CreateSound2(ID, PARENT, VOLUME, PITCH, DOESLOOP)
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
	local TweenNameType = (Table.TweenNType or "Linear" )
	local TweenInOutType = (Table.TweenOType or "InOut" )
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart2(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1,1,1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound2(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0,0,0))
		elseif TYPE == "Block" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = VT(SIZE.X,SIZE.X,SIZE.X)
		elseif TYPE == "Wave" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X,SIZE.X,0.1), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crown" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "173770780", "", SIZE, VT(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
			
				SetTween(EFFECT,{CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))},"Linear","InOut",TIME/60)
			else
		
			SetTween(EFFECT,{CFrame = CFRAME},"Linear","InOut",0)
				
			end
			
			
			
			wait()
			
			SetTween(EFFECT,{Transparency = EFFECT.Transparency - TRANS},"Linear","InOut",TIME/60)
			
							if TYPE == "Block" then
	
					SetTween(EFFECT,{CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))},"Linear","InOut",0)
				else

					SetTween(EFFECT,{CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))},"Linear","InOut",0)
					
				end
							if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation

					SetTween(EFFECT,{CFrame=CF(MOVEDIRECTION)},"Linear","InOut",TIME/60)
						SetTween(EFFECT,{Orientation=ORI},"Linear","InOut",TIME/60)
				
					
							end
							MSH.Scale = MSH.Scale - GROWTH/TIME
									SetTween(MSH,{Scale=ENDSIZE},TweenNameType,TweenInOutType,TIME/60)
										if TYPE == "Wave" then
				
						SetTween(MSH,{Offset=VT(0,0,-MSH.Scale.X/8)},TweenNameType,TweenInOutType,TIME/60)
				end
			for LOOP = 1, TIME+1 do
				wait(.05)

				--SetTween(EFFECT,{Transparency = EFFECT.Transparency - TRANS/TIME},"Linear","InOut",0)
				
				
				if TYPE == "Block" then
	
	--				SetTween(EFFECT,{CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))},"Linear","InOut",0)
				else

	--				SetTween(EFFECT,{CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))},"Linear","InOut",0)
					
				end
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation

--					SetTween(EFFECT,{CFrame=CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)},"Linear","InOut",0)
--						SetTween(EFFECT,{Orientation=ORI},"Linear","InOut",0)
				
					
				end
			end
				game:GetService("Debris"):AddItem(EFFECT, 15)
				coroutine.resume(coroutine.create(function()
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				SOUND.Stopped:Connect(function()
					EFFECT:remove()
				end)
			end
			end))
		else
			coroutine.resume(coroutine.create(function()
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat wait() until SOUND.Playing == false
				EFFECT:remove()
			end
			end))
		end
	end))
		end	
		
		
		
		
		
		
	Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	
	if hit.Parent == nil then
		return 
	end
	local h = hit.Parent:FindFirstChild("Humanoid")
	for _,v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then

	h = v 
		
	end
	
end
	
	--gg
	
--local FoundTorso = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")	
		coroutine.resume(coroutine.create(function()	
if h.Health >9999999 and minim <9999 and Type~= "IgnoreType" and(h.Parent:FindFirstChild("Torso") or h.Parent:FindFirstChild("UpperTorso")) and not h.Parent:FindFirstChild("Fly away")then
	
	
	local FATag = Instance.new("Model",h.Parent)

	FATag.Name = "Fly away"
game:GetService("Debris"):AddItem(FATag, 2.5)	
	
	
	for _,v in pairs(h.Parent:children()) do
		if v:IsA("BasePart")and v.Parent:FindFirstChildOfClass("Humanoid") then
			v.Anchored=true
		end
	end	

wait(.25)
	
if 	h.Parent:FindFirstChildOfClass("Body Colors")then
h.Parent:FindFirstChildOfClass("Body Colors"):Destroy()
end


	local FoundTorso = h.Parent:FindFirstChild("Torso") or h.Parent:FindFirstChild("UpperTorso")
	
	coroutine.resume(coroutine.create(function()	
		
		
local YourGone = Instance.new("Part")
		YourGone.Reflectance = 0
		YourGone.Transparency = 1
		YourGone.CanCollide = false
		YourGone.Locked = true
		YourGone.Anchored=true
		YourGone.BrickColor = BrickColor.new("Really blue")
		YourGone.Name = "YourGone"
		YourGone.Size = Vector3.new()
		YourGone.Material = "SmoothPlastic"
		YourGone:BreakJoints()
		YourGone.Parent = FoundTorso		
		YourGone.CFrame = FoundTorso.CFrame
				
	local NewParticle = Instance.new("ParticleEmitter")
NewParticle.Parent = YourGone
NewParticle.Acceleration =  Vector3.new(0,0,0)
NewParticle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,10),NumberSequenceKeypoint.new(1,.0)})
NewParticle.Color = ColorSequence.new(Color3.new (1,0,0), Color3.new (1, 0, 0))
NewParticle.Lifetime = NumberRange.new(0.55,0.95)
NewParticle.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(.25,.0),NumberSequenceKeypoint.new(1,1)})
NewParticle.Speed = NumberRange.new(0,0.0)
NewParticle.ZOffset = 2
NewParticle.Texture = "rbxassetid://243660364"
NewParticle.RotSpeed = NumberRange.new(-0,0)
NewParticle.Rotation = NumberRange.new(-180,180)
NewParticle.Enabled = false
game:GetService("Debris"):AddItem(YourGone, 3)	
for i = 0,2,1 do
NewParticle:Emit(1)
so("1448044156", FoundTorso,2, 1)
h.Parent:BreakJoints()
YourGone.CFrame = FoundTorso.CFrame
	for _,v in pairs(h.Parent:children()) do
		if v:IsA("BasePart")and v.Parent:FindFirstChildOfClass("Humanoid") then
			v.Anchored=false
--			v.Material = "Neon"
			--v.BrickColor = BrickColor.new("Really red")
			if v:FindFirstChildOfClass("SpecialMesh")then
	--v:Destroy()
			end	
						if v:FindFirstChildOfClass("Decal") and v.Name == "face" then
--	v:Destroy()
end		
					local vp = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(1000, 1000, 1000), velocity = Vector3.new(math.random(-10,10),4,math.random(-10,10)) })
										
				vp.Parent = v		
						game:GetService("Debris"):AddItem(vp, math.random(50,100)/1000)				
			
			
		end
		
		
		
	end	

	
	
wait(.2)	
end
wait(.1)	
NewParticle:Emit(3)
so("1448044156", FoundTorso,2, .8)
h.Parent:BreakJoints()
YourGone.CFrame = FoundTorso.CFrame
	for _,v in pairs(h.Parent:children()) do
		if v:IsA("BasePart")and v.Parent:FindFirstChildOfClass("Humanoid") then
			v.Anchored=false
--			v.Material = "Neon"
			--v.BrickColor = BrickColor.new("Really red")
			if v:FindFirstChildOfClass("SpecialMesh")then
	--v:Destroy()
			end	
						if v:FindFirstChildOfClass("Decal") and v.Name == "face" then
--	v:Destroy()
end		
					local vp = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(1000, 1000, 1000), velocity = Vector3.new(math.random(-10,10),4,math.random(-10,10)) })
										
				vp.Parent = v		
						game:GetService("Debris"):AddItem(vp, math.random(100,200)/1000)				
			
			
		end
		
		
		
	end	

	
	
	
	end))
	



wait(.1)



	
	
	
	
	end
	
	
	end))
	if h ~= nil and hit.Parent ~= Character and hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
			return 
		end
		local c = Create("ObjectValue")({Name = "creator", Value = game:service("Players").basstracker1970, Parent = h})
		game:GetService("Debris"):AddItem(c, 0.5)
		if HitSound ~= nil and HitPitch ~= nil then
			so(HitSound, hit, 1, HitPitch)
		end
		local Damage = math.random(minim, maxim)
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil and block.className == "IntValue" and block.Value > 0 then
			blocked = true
			block.Value = block.Value - 1
			print(block.Value)
		end
		lockon(h.Parent)
		if blocked == false then
			h.Health = h.Health - Damage
			ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 2.5, Color3.new(0,0,0))
		else
			h.Health = h.Health - Damage / 2
			ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 2.5, Color3.new(0,0,0))
			
		end

		if Type == "Knockdown" then
					local hum = h
		
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
		
		wait(.2)
		HHumanoid.PlatformStand = false
	end
			), hum)
			
			
			
			local FoundTorso = h.Parent:FindFirstChild("Torso") or h.Parent:FindFirstChild("UpperTorso")
			local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
			local bodvol = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(math.huge, 0, math.huge), velocity = CFrame.new(Part.Position,FoundTorso.Position).lookVector * knockback, Parent = hit})
			local rl = Create("BodyAngularVelocity")({P = 3000, maxTorque = Vector3.new(5000, 5000, 5000) * 50, angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), Parent = hit})
			game:GetService("Debris"):AddItem(bodvol, .2)
			game:GetService("Debris"):AddItem(rl, 0.2)



		elseif Type == "Knockdown2" then
					local hum = h
		
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
		
						
 Combo = 1			wait(.2)
		HHumanoid.PlatformStand = false
	end
), hum)
			local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
			local bodvol = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(math.huge, 0, math.huge), velocity = CFrame.new(Part.Position,Property.Position).lookVector * knockback})
			local rl = Create("BodyAngularVelocity")({P = 3000, maxTorque = Vector3.new(5000, 5000, 5000) * 50, angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), Parent = hit})
			game:GetService("Debris"):AddItem(bodvol, 0.2)
			game:GetService("Debris"):AddItem(rl, 0.2)






							local bodyVelocity2 = Create("BodyVelocity")({velocity = Vector3.new(0, 60, 0), P = 5000, maxForce = Vector3.new(8000, 12000, 8000), Parent = RootPart})
							game:GetService("Debris"):AddItem(bodyVelocity2, 0.1)

		elseif Type == "Normal" then
					local vp = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(math.huge, 0, math.huge), velocity = CFrame.new(Part.Position,Property.Position).lookVector * knockback})
					if knockback > 0 then
						
				local HTorso = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
						vp.Parent = HTorso
					end
					game:GetService("Debris"):AddItem(vp, 0.25)
					
					
					
					
					
					
					
					
					
					
					
					
					
		elseif Type== "Instakill" 	then
					coroutine.resume(coroutine.create(function()	
if  (h.Parent:FindFirstChild("Torso") or h.Parent:FindFirstChild("UpperTorso")) and not h.Parent:FindFirstChild("Fly away")then
	
	
	local FATag = Instance.new("Model",h.Parent)

	FATag.Name = "Fly away"
game:GetService("Debris"):AddItem(FATag, 2.5)	
	
	
	for _,v in pairs(h.Parent:children()) do
		if v:IsA("BasePart")and v.Parent:FindFirstChildOfClass("Humanoid") then
			v.Anchored=true
		end
	end	

wait(.25)
	
if 	h.Parent:FindFirstChildOfClass("Body Colors")then
h.Parent:FindFirstChildOfClass("Body Colors"):Destroy()
end


	local FoundTorso = h.Parent:FindFirstChild("Torso") or h.Parent:FindFirstChild("UpperTorso")
	
	coroutine.resume(coroutine.create(function()	
		
		
local YourGone = Instance.new("Part")
		YourGone.Reflectance = 0
		YourGone.Transparency = 1
		YourGone.CanCollide = false
		YourGone.Locked = true
		YourGone.Anchored=true
		YourGone.BrickColor = BrickColor.new("Really blue")
		YourGone.Name = "YourGone"
		YourGone.Size = Vector3.new()
		YourGone.Material = "SmoothPlastic"
		YourGone:BreakJoints()
		YourGone.Parent = FoundTorso		
		YourGone.CFrame = FoundTorso.CFrame
				
	local NewParticle = Instance.new("ParticleEmitter")
NewParticle.Parent = YourGone
NewParticle.Acceleration =  Vector3.new(0,0,0)
NewParticle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,10),NumberSequenceKeypoint.new(1,.0)})
NewParticle.Color = ColorSequence.new(Color3.new (1,0,0), Color3.new (1, 0, 0))
NewParticle.Lifetime = NumberRange.new(0.55,0.95)
NewParticle.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(.25,.0),NumberSequenceKeypoint.new(1,1)})
NewParticle.Speed = NumberRange.new(0,0.0)
NewParticle.ZOffset = 2
NewParticle.Texture = "rbxassetid://243660364"
NewParticle.RotSpeed = NumberRange.new(-0,0)
NewParticle.Rotation = NumberRange.new(-180,180)
NewParticle.Enabled = false
game:GetService("Debris"):AddItem(YourGone, 3)	
for i = 0,2,1 do
NewParticle:Emit(1)
so("1448044156", FoundTorso,2, 1)
h.Parent:BreakJoints()
YourGone.CFrame = FoundTorso.CFrame
	for _,v in pairs(h.Parent:children()) do
		if v:IsA("BasePart")and v.Parent:FindFirstChildOfClass("Humanoid") then
			v.Anchored=false
--			v.Material = "Neon"
			--v.BrickColor = BrickColor.new("Really red")
			if v:FindFirstChildOfClass("SpecialMesh")then
	--v:Destroy()
			end	
						if v:FindFirstChildOfClass("Decal") and v.Name == "face" then
--	v:Destroy()
end		
					local vp = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(1000, 1000, 1000), velocity = Vector3.new(math.random(-10,10),4,math.random(-10,10)) })
										
				vp.Parent = v		
						game:GetService("Debris"):AddItem(vp, math.random(50,100)/1000)				
			
			
		end
		
		
		
	end	

	
	
wait(.2)	
end
wait(.1)	
NewParticle:Emit(3)
so("1448044156", FoundTorso,2, .8)
h.Parent:BreakJoints()
YourGone.CFrame = FoundTorso.CFrame
	for _,v in pairs(h.Parent:children()) do
		if v:IsA("BasePart")and v.Parent:FindFirstChildOfClass("Humanoid") then
			v.Anchored=false
--			v.Material = "Neon"
			--v.BrickColor = BrickColor.new("Really red")
			if v:FindFirstChildOfClass("SpecialMesh")then
	--v:Destroy()
			end	
						if v:FindFirstChildOfClass("Decal") and v.Name == "face" then
--	v:Destroy()
end		
					local vp = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(1000, 1000, 1000), velocity = Vector3.new(math.random(-10,10),4,math.random(-10,10)) })
										
				vp.Parent = v		
						game:GetService("Debris"):AddItem(vp, math.random(100,200)/1000)				
			
			
		end
		
		
		
	end	

	
	
	
	end))
	



wait(.1)



	
	
	
	
	end
	
	
	end))
				
					
					
					
		elseif Type == "HPSteal" then
					Humanoid.Health = Humanoid.Health + Damage
								local hum = h
		
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
		
						
 Combo = 1			wait(.2)
		HHumanoid.PlatformStand = false
	end
), hum)
			local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
			local bodvol = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(math.huge, 0, math.huge), velocity = CFrame.new(Part.Position,Property.Position).lookVector * knockback})
			local rl = Create("BodyAngularVelocity")({P = 3000, maxTorque = Vector3.new(5000, 5000, 5000) * 50, angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), Parent = hit})
			game:GetService("Debris"):AddItem(bodvol, 0.2)
			game:GetService("Debris"):AddItem(rl, 0.2)






							local bodyVelocity2 = Create("BodyVelocity")({velocity = Vector3.new(0, 60, 0), P = 5000, maxForce = Vector3.new(8000, 12000, 8000), Parent = RootPart})
							game:GetService("Debris"):AddItem(bodyVelocity2, 0.1)

			
					elseif Type == "Impale" then






	

CFuncs.Sound.Create("http://www.roblox.com/asset/?id=268249319", Spike, .8, 2)	
			hit.Parent.Humanoid.PlatformStand = true
			
		
		wait(1)
		hit.Parent.Humanoid.PlatformStand = false
		elseif Type == "IgnoreType" then
			

			
			
			
				elseif Type == "Up" then
							local bodyVelocity = Create("BodyVelocity")({velocity = Vector3.new(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
							game:GetService("Debris"):AddItem(bodyVelocity, 0.1)
							local bodyVelocity = Create("BodyVelocity")({velocity = Vector3.new(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
							game:GetService("Debris"):AddItem(bodyVelocity, .1)
				
				

		
			
			
			
						elseif Type == "Snare" then
									local bp = Create("BodyPosition")({P = 900, D = 1000, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
									game:GetService("Debris"):AddItem(bp, 1)
			
						

							elseif Type == "Freeze2" then
											local BodPos = Create("BodyPosition")({P = 50000, D = 1000, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
											local BodGy = Create("BodyGyro")({maxTorque = Vector3.new(400000, 400000, 400000) * math.huge, P = 20000, Parent = hit.Parent.Torso, cframe = hit.Parent.Torso.CFrame})
											hit.Parent.Torso.Anchored = true
											coroutine.resume(coroutine.create(function(Part)
		
		wait(1.5)
		Part.Anchored = false
	end
), hit.Parent.Torso)
											game:GetService("Debris"):AddItem(BodPos, 3)
											game:GetService("Debris"):AddItem(BodGy, 3)
										end
											local debounce = Create("BoolValue")({Name = "DebounceHit", Parent = hit.Parent, Value = true})
											game:GetService("Debris"):AddItem(debounce, Delay)
											c = Instance.new("ObjectValue")
											c.Name = "creator"
											c.Value = Player
											c.Parent = h
											game:GetService("Debris"):AddItem(c, 0.5)
										end
									end



	ShowDamage = function(Pos, Text, Time, Color)
	
	local Rate = 0.033333333333333
	if not Pos then
		local Pos = Vector3.new(0, 0, 0)
	end
	local Text = Text or ""
	local Time = Time or 2
	if not Color then
		local Color = Color3.new(1, 0, 1)
	end
	local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui")({Size = UDim2.new(2, 0, 2, 0), Adornee = EffectPart, Parent = EffectPart})
	local TextLabel = Create("TextLabel")({BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Text = "DMG: "..Text.."", TextColor3 = Color, TextScaled = true, Font = Enum.Font.ArialBold, Parent = BillboardGui})
	game.Debris:AddItem(EffectPart, Time + 0.1)
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		
		local Frames = Time / Rate
		
		
		
print(Frames)
		TextLabel.TextTransparency=0
		EffectPart.CFrame=CFrame.new(Pos)
		wait()
		SetTween(TextLabel,{TextTransparency=1},"Quad","In",Frames/60)
		SetTween(TextLabel,{Rotation=math.random(-25,25)},"Elastic","InOut",Frames/60)
		SetTween(TextLabel,{TextColor3=Color3.new(.15,0,.5)},"Elastic","InOut",Frames/60)

SetTween(EffectPart,{CFrame = CFrame.new(Pos) + Vector3.new(math.random(-5,5), math.random(1,5), math.random(-5,5))},"Linear","InOut",Frames/60)


		wait(Frames/60)
		
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end
)
end

	MagniDamage = function(Part, magni, mindam, maxdam, knock, Type2)
		
		
		
		
local Type=""




if  mememode == true then
 
Type=	"Instakill"

else
Type=Type2
end 
if Type2 == "NormalKnockdown" then
	Type= "Knockdown"
end
		
	for _,c in pairs(workspace:children()) do
		
		
		
		
		
		local hum = c:FindFirstChild("Humanoid")
	for _,v in pairs(c:children()) do
		if v:IsA("Humanoid") then
			hum = v
		end
	end	
		
		
		
		
		if hum ~= nil then
			local head = c:findFirstChild("Head")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= magni and c.Name ~= Player.Name then
					Damagefunc(Part, head, mindam, maxdam, knock, Type, RootPart, 0.1, "851453784", 1.2)
				end
			end
		end
	end
end


function CFMagniDamage(HTCF,magni, mindam, maxdam, knock, Type)
local DGP = Instance.new("Part")

DGP.Parent = Character
DGP.Size = Vector3.new(0.05, 0.05, 0.05)
DGP.Transparency = 1
DGP.CanCollide = false
DGP.Anchored = true
RemoveOutlines(DGP)
DGP.Position=DGP.Position + Vector3.new(0,-.1,0)
DGP.CFrame = HTCF

coroutine.resume(coroutine.create(function()
MagniDamage(DGP, magni, mindam, maxdam, knock, Type)
end))
game:GetService("Debris"):AddItem(DGP, .05)


DGP.Archivable = false
end

		
		
		
------------------
--[End of Sword]--
------------------

---------------
--[Particles]--
---------------


local Particle2_1 = Create("ParticleEmitter"){
Color = ColorSequence.new(Color3.new (1,1,1),  Color3.new (170/255, 255/255, 255/255)),
Transparency =  NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(.75,.4),NumberSequenceKeypoint.new(1,1)}),
Size = NumberSequence.new({NumberSequenceKeypoint.new(0,.5),NumberSequenceKeypoint.new(1,.0)}),
Texture = "rbxassetid://241922778",
Lifetime = NumberRange.new(0.55,0.95),
Rate = 100,
VelocitySpread = 180,
Rotation = NumberRange.new(0),
RotSpeed = NumberRange.new(-200,200),
Speed = NumberRange.new(8.0),
LightEmission = 1,
LockedToPart = false,
Acceleration = Vector3.new(0, 0, 0),
EmissionDirection = "Top",
Drag = 4,
Enabled = false
}


local BEGONE_Particle = Create("ParticleEmitter"){
Color = ColorSequence.new(Color3.new (1,1,1), Color3.new (1, 1, 1)),
Transparency =  NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.1,0),NumberSequenceKeypoint.new(0.3,0),NumberSequenceKeypoint.new(0.5,.2),NumberSequenceKeypoint.new(1,1)}),
Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.15,1.5),NumberSequenceKeypoint.new(.75,1.5),NumberSequenceKeypoint.new(1,0)}),
Texture = "rbxassetid://936193661",
Lifetime = NumberRange.new(1.5),
Rate = 100,
VelocitySpread = 0,
Rotation = NumberRange.new(0),
RotSpeed = NumberRange.new(-10,10),
Speed = NumberRange.new(0),
LightEmission = .25,
LockedToPart = true,
Acceleration = Vector3.new(0, -0, 0),
EmissionDirection = "Top",
Drag = 4,
ZOffset = 1,
Enabled = false
}










local VoidEmitter = Create("ParticleEmitter"){
Speed = NumberRange.new(1, 1),
Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)),ColorSequenceKeypoint.new(0.699,Color3.new(0.00998336, 0.00998336, 0.00998336)),ColorSequenceKeypoint.new(1,Color3.new(0.45098, 0, 1))}),
LightInfluence = 1,
Texture = "rbxassetid://258128463",
Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.5,0.5),NumberSequenceKeypoint.new(1,1)}),
ZOffset = 2,
Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1.7500001192093),NumberSequenceKeypoint.new(0.7500001192093,0.74999988079071),NumberSequenceKeypoint.new(1,0.68749964237213)}),
Acceleration = Vector3.new(0, 0.25, 0),
Drag = 2,
Lifetime = NumberRange.new(1, 2),
LockedToPart = false,
Rate = 50.01999664307,
RotSpeed = NumberRange.new(-100, 100),
SpreadAngle = Vector2.new(360, 360),
VelocitySpread = 360,
Enabled = false
}






----------------------
--[End Of Particles]--
----------------------




-----------------

function lockon_OnOff ()
	coroutine.resume(coroutine.create(function()
		
		local NewParticleH = Instance.new("Attachment",eye)
		NewParticleH.Position = Vector3.new(0,0,.25)
			coroutine.resume(coroutine.create(function()
			local CrystalMainColor = Color3.new(0,1,0)	
		
		
		local NewParticle = Particle2_1:Clone()
NewParticle.Parent = NewParticleH
NewParticle.Enabled = true
NewParticle.Texture = "rbxassetid://68942583"
NewParticle.Acceleration =  Vector3.new(0,0,0)
NewParticle.Speed = NumberRange.new(0)
NewParticle.LockedToPart = true
NewParticle.ZOffset = .25
NewParticle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2.5),NumberSequenceKeypoint.new(1,0)})
NewParticle.Rate = 50
NewParticle.Color = ColorSequence.new(CrystalMainColor, CrystalMainColor)
NewParticle.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(1,.9)})
NewParticle.Name = "XEF"		
		
		
	end))	
		
		
while ZT == true do 
	
	
	
	SetTween(imgl,{Rotation=imgl.Rotation+25.5},"Elastic","Out",3)
	if ZTfade==true then
	SetTween(imgl,{ImageTransparency=.7},"Elastic","Out",3)
	SetTween(crosshair,{Size = UDim2.new(10,0,10,0)},"Elastic","Out",1.5)
end


wait(1.5)	
	if ZTfade==true then
SetTween(imgl,{ImageTransparency=0},"Linear","InOut",0)
SetTween(crosshair,{Size = UDim2.new(11,0,11,0)},"Elastic","InOut",0)
end
wait()
end

	crosshair.Adornee = nil
	crosshair.Enabled = false
NewParticleH:Destroy()

end))
	end

function lockon (targetted)
	if ZT == true then
	
		coroutine.resume(coroutine.create(function()
	crosshair.Adornee = targetted:FindFirstChild("Torso") or targetted:FindFirstChild("UpperTorso")
	crosshair.Enabled = true
	
ZTfade = false
SetTween(imgl,{ImageTransparency=1},"Linear","InOut",0)

SetTween(crosshair,{Size = UDim2.new(40,0,40,0)},"Linear","InOut",0)

wait()

SetTween(imgl,{ImageTransparency=.7},"Bounce","Out",2)

SetTween(crosshair,{Size = UDim2.new(10,0,10,0)},"Elastic","InOut",1)
wait(1)
ZTfade = true
		end))
		end
end






-----------------


	


--[[
		for i, v in pairs(C:GetChildren()) do
if v:IsA("Accessory")then
v:Destroy()	
end
if v:IsA("BasePart")then
v.Transparency =1
if v.Name == "Head" then
	v:FindFirstChildOfClass("Decal"):Destroy()
end
end
		end--]]
--[[













local tweeningInformation = TweenInfo.new(
	0.5,	
	Enum.EasingStyle.Back,
	Enum.EasingDirection.Out,
	0,
	false,
	0
)
--]]


local RJW=weld(RJ.Parent,RJ.Part0,RJ.Part1,RJ.C0)
RJW.C1 = RJ.C1
RJW.Name = RJ.Name

local NeckW=weld(Neck.Parent,Neck.Part0,Neck.Part1,Neck.C0)
NeckW.C1 = Neck.C1
NeckW.Name = Neck.Name


--print(WRJ.Parent.Name)

local RW=weld(Torso,Torso,RightArm,cf(0,0,0))

local LW=weld(Torso,Torso,LeftArm,cf(0,0,0))

local RH=weld(Torso,RightArm,RightLeg,cf(0,0,0))

local LH=weld(Torso,LeftArm,LeftLeg,cf(0,0,0))



RW.C1 = cn(0, 0.5, 0)
LW.C1 = cn(0, 0.5, 0)
RH.C1 = cn(0, 1, 0) *CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
LH.C1 = cn(0, 1, 0) *CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))






--------
--(#Torso)
SetTween(RJW,{C0=RootCF*CFrame.new(0,0,0)},"Quad","InOut",0.1)
--------
--(#Head)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)},"Quad","InOut",0.1)
--------
--(#Right Arm)
SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)},"Quad","InOut",0.1)
--------
--(#Left Arm)
SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)},"Quad","InOut",0.1)
--------
--(#Right Leg)
SetTween(RH,{C0=CFrame.new(0, -0.90, 0)},"Quad","InOut",0.1)
--------
--(#Left Leg)
SetTween(LH,{C0=CFrame.new(0, -0.90, 0)},"Quad","InOut",0.1)



--[[
SetTween(RJW,{C0=RootCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,2)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
SetTween(RW,{C0=CFrame.new(3.5 , 0.5, -.0)*angles(math.rad(0),math.rad(0),math.rad(30))},"Quad","Out",0.1)
SetTween(LW,{C0=CFrame.new(-3.5, 0.5, -.0)*angles(math.rad(0),math.rad(0),math.rad(-30))},"Quad","Out",0.1)
SetTween(RH,{C0=CFrame.new(0, -3, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
SetTween(LH,{C0=CFrame.new(-0, -3, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
--]]

function Attack1()
attack = true
SetTween(RJW,{C0=RootCF*CFrame.new(0,-2,2)*angles(math.rad(30),math.rad(0),math.rad(0))},"Quad","InOut",1)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,-2)*angles(math.rad(20),math.rad(0),math.rad(0))},"Quad","InOut",1)
SetTween(RW,{C0=CFrame.new(2.5 , 3.5, 1.5)*angles(math.rad(30),math.rad(0),math.rad(30))},"Quad","InOut",1)
SetTween(LW,{C0=CFrame.new(-2.5, 3.5, 1.5)*angles(math.rad(30),math.rad(0),math.rad(-30))},"Quad","InOut",1)
SetTween(RH,{C0=CFrame.new(0, -3, 0)*angles(math.rad(50),math.rad(0),math.rad(-90))},"Quad","InOut",1)
SetTween(LH,{C0=CFrame.new(-0, -3, 0)*angles(math.rad(50),math.rad(0),math.rad(90))},"Quad","InOut",1)


wait(1)

	WACKYEFFECT({Time = 10, EffectType = "Slash", Size = (VT(60,0,60)), Size2 = (VT(0,0,0)), Transparency = 1, Transparency2 = .5, CFrame = RootPart.CFrame * ANGLES(RAD(MRANDOM(0,15)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,15))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 454850461, SoundPitch = 1, SoundVolume = 8})
						
						for i = 10, 60,10 do
							WACKYEFFECT({Time = 10+i, EffectType = "Slash", Size = (VT(60,0,60)), Size2 = (VT(0,0,0)), Transparency = 1, Transparency2 = .5, CFrame = RootPart.CFrame * ANGLES(RAD(MRANDOM(0,15)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,15))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
						end					
for i = 0,10 do wait() wait() wait()
				local AREA = RootPart.CFrame * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0))*CF(0,0,MRANDOM(2,20))
			local TIMER = MRANDOM(30,50)/4
			WACKYEFFECT({Time = TIMER, EffectType = "Sphere", Size = VT(5,0,5)/1.1, Size2 = VT(0,15,0)/1.1, Transparency = .9, Transparency2 = 0, CFrame = AREA, MoveToPos = AREA.p+VT(0,MRANDOM(35,60),0), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(.5,0,1), SoundID = nil, SoundPitch = 0.8, SoundVolume = 5})
			WACKYEFFECT({Time = TIMER, EffectType = "Sphere", Size = VT(5,0,5), Size2 = VT(0,15,0), Transparency = 0.9, Transparency2 = 0.5, CFrame = AREA, MoveToPos = AREA.p+VT(0,MRANDOM(35,60),0), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = 0.8, SoundVolume = 5})
			
end	
		if mememode == false then
SetTween(RJW,{C0=RootCF*CFrame.new(0,0,3)*angles(math.rad(-40),math.rad(0),math.rad(0))},"Quad","InOut",.4)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,2)*angles(math.rad(-20),math.rad(0),math.rad(0))},"Quad","InOut",.4)
SetTween(RW,{C0=CFrame.new(3.5 , 0.5, -3.5)*angles(math.rad(-70),math.rad(0),math.rad(30))},"Quad","InOut",.4)
SetTween(LW,{C0=CFrame.new(-3.5, 0.5, -3.5)*angles(math.rad(-70),math.rad(0),math.rad(-30))},"Quad","InOut",.4)
SetTween(RH,{C0=CFrame.new(0, -3, -3)*angles(math.rad(50),math.rad(0),math.rad(0))},"Quad","InOut",.4)
SetTween(LH,{C0=CFrame.new(-0, -3, -3)*angles(math.rad(50),math.rad(0),math.rad(-0))},"Quad","InOut",.4)

						for i = 10, 30,10 do
							WACKYEFFECT({Time = 20+i, EffectType = "Wave", Size = VT(5,0,5), Size2 = (VT(31,0,31)*7)/4.1, Transparency = 0.4, Transparency2 = 1, CFrame = RootPart.CFrame*cn(0,5,0) * ANGLES(RAD(MRANDOM(0,15)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,15))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
						end
						WACKYEFFECT({Time = 120, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(600,600,600), Transparency = 0.4, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(.5,0,1), SoundID = 376976397, SoundPitch = .5, SoundVolume = 7})
						WACKYEFFECT({Time = 100, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(600,600,600), Transparency = 0, Transparency2 = 1, CFrame=RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 528589382, SoundPitch = 1.5, SoundVolume = 10})
	WACKYEFFECT({Time = 120, EffectType = "Crown", Size = VT(0,0,0), Size2 = (VT(600,600,600)), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame , MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5,TweenNType="Quad",TweenOType="Out"})
						
CFMagniDamage(Head.CFrame,600,80,90,100,"Knockdown")



else






SetTween(RJW,{C0=RootCF*CFrame.new(0,0,3)*angles(math.rad(-40),math.rad(0),math.rad(0))},"Quad","InOut",.4)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,2)*angles(math.rad(-20),math.rad(0),math.rad(0))},"Quad","InOut",.4)
SetTween(RW,{C0=CFrame.new(3.5 , 0.5, -3.5)*angles(math.rad(-70),math.rad(0),math.rad(30))},"Quad","InOut",.4)
SetTween(LW,{C0=CFrame.new(-3.5, 0.5, -3.5)*angles(math.rad(-70),math.rad(0),math.rad(-30))},"Quad","InOut",.4)
SetTween(RH,{C0=CFrame.new(0, -3, -3)*angles(math.rad(50),math.rad(0),math.rad(0))},"Quad","InOut",.4)
SetTween(LH,{C0=CFrame.new(-0, -3, -3)*angles(math.rad(50),math.rad(0),math.rad(-0))},"Quad","InOut",.4)


						WACKYEFFECT({Time = 120*2, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(1600,1600,1600), Transparency = 0.4, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(.5,0,1), SoundID = 376976397, SoundPitch = .5, SoundVolume = 5})
						WACKYEFFECT({Time = 100*2, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(1600,1600,1600), Transparency = 0, Transparency2 = 1, CFrame=RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 132164034, SoundPitch = 1.2, SoundVolume = 10})
					for i = 10, 60,10 do
							WACKYEFFECT({Time = 20+i*2, EffectType = "Wave", Size = VT(5,0,5), Size2 = (VT(31,0,31)*7)/4.1, Transparency = 0.4, Transparency2 = 1, CFrame = RootPart.CFrame*cn(0,5,0) * ANGLES(RAD(MRANDOM(0,15)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,15))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
		WACKYEFFECT({Time = 12*i, EffectType = "Crown", Size = VT(0,0,0), Size2 = (VT(1600,1600,1600)), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame , MoveToPos = nil, RotationX = 0, RotationY = math.random(-180,180), RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5,TweenNType="Quad",TweenOType="Out"})
	
	CFMagniDamage(Head.CFrame,1600,80,90,100,"Knockdown")					
						wait(.05)
						end						










end

wait(1)





attack=false	
end


function Attack2()
attack = true

SetTween(RJW,{C0=RootCF*CFrame.new(0,0,2)*angles(math.rad(-0),math.rad(0),math.rad(0))},"Quad","InOut",.4)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,2)*angles(math.rad(-0),math.rad(0),math.rad(0))},"Quad","InOut",.4)
SetTween(RW,{C0=CFrame.new(3.5 , 2.5, -0)*angles(math.rad(90),math.rad(0),math.rad(0))},"Back","Out",.4)
SetTween(LW,{C0=CFrame.new(-3.5, 2.5, -0)*angles(math.rad(-0),math.rad(0),math.rad(-30))},"Quad","InOut",.4)
SetTween(RH,{C0=CFrame.new(0, -3, -3)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.4)
SetTween(LH,{C0=CFrame.new(-0, -3, -3)*angles(math.rad(0),math.rad(0),math.rad(-0))},"Quad","InOut",.4)





wait(.3)


SetTween(RJW,{C0=RootCF*CFrame.new(0,-5,2)*angles(math.rad(-0),math.rad(0),math.rad(0))},"Quad","InOut",.2)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,2)*angles(math.rad(20),math.rad(40),math.rad(0))},"Quad","InOut",.2)
SetTween(RW,{C0=CFrame.new(3.5 , -4.5, -10)*angles(math.rad(90),math.rad(0),math.rad(0))},"Quad","InOut",.2)
SetTween(LW,{C0=CFrame.new(-3.5, 2.5, 2)*angles(math.rad(-30),math.rad(0),math.rad(-30))},"Quad","InOut",.2)
SetTween(RH,{C0=CFrame.new(0, -3, -3)*angles(math.rad(-90),math.rad(-40),math.rad(20))},"Quad","InOut",.2)
SetTween(LH,{C0=CFrame.new(-0, -3, -3)*angles(math.rad(0),math.rad(0),math.rad(-0))},"Quad","InOut",.2)




	--	LAP.Parent = Character	
wait(.1)
local portal =Instance.new("Part")
		portal.Reflectance = 0
		portal.Transparency = 1
		portal.CanCollide = false
		portal.Locked = true
		portal.Anchored=true
		portal.BrickColor = BrickColor.new("Really blue")
		portal.Name = "portal"
		portal.Size = Vector3.new()
		portal.Material = "SmoothPlastic"
		portal:BreakJoints()	
		portal.CFrame = RootPart.CFrame*cn(4,0,-17)
		   local Portalfloor,PortalPos = rayCast(portal.Position, CFrame.new(portal.Position, portal.Position - Vector3.new(0, 1, 0)).lookVector, 80, Character)
portal.CFrame = cn(PortalPos)
			
						local max = 50
							local min = 6.5
							local light = min
							if mememode == true then	
							min = 0
							max = 100
							light = 3
							end		

	coroutine.resume(coroutine.create(function()
		WACKYEFFECT({Time = 120, EffectType = "Crown", Size = VT(0,0,0), Size2 = (VT(max+15,1,max+15)), Transparency = 0.9, Transparency2 = 1, CFrame = portal.CFrame , MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5,TweenNType="Quad",TweenOType="Out"})
						WACKYEFFECT({Time = 240, EffectType = "Sphere", Size = VT(0,.1,0), Size2 = VT(light-.5,0.1,light-.5)*1.5, Transparency = 0, Transparency2 = 1, CFrame=portal.CFrame*cn(0,-0,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = 376976397, SoundPitch = 1, SoundVolume = 3,TweenNType="Back",TweenOType="Out"})
		wait(120/60)
		
		coroutine.resume(coroutine.create(function()
			wait(.1)
				for _,c in pairs(workspace:children()) do			
		
		
		

		
		
		
					
					local h = c:FindFirstChild("Humanoid")
	for _,v in pairs(c:children()) do
		if v:IsA("Humanoid") then
		if	v.Health > 0.0001 then
				h = v else  h = nil end
		end
	end
	
	local head = c:FindFirstChild("Torso") or c:FindFirstChild("UpperTorso")
	
	if h ~= nil and head ~= nil then
				local targ = head.Position - portal.Position
							local mag = targ.magnitude

							
				if mag < max and mag > min  and c ~= Character then
			
print("Kill")
	coroutine.resume(coroutine.create(function()
local Shade =Instance.new("Model",Effects)
local hed =Instance.new("Part")
		hed.Reflectance = 0
		hed.Transparency = 1
		hed.CanCollide = false
		hed.Locked = true
		hed.Anchored=false
		hed.Color = Color3.new(0,0,0)
		head.Material = "SmoothPlastic"
local sTor=hed:Clone()
		sTor.Name = "Torso2"
		sTor.Size = Vector3.new(2,2,1)
		sTor.Material = "SmoothPlastic"
		sTor:BreakJoints()	
		sTor.CFrame = portal.CFrame*cn(0,-10,0)
local sraor=hed:Clone()
		sraor.Name = "RightArm"
		sraor.Size = Vector3.new(1,2,1)
		sraor.Material = "SmoothPlastic"
		sraor:BreakJoints()	
		sraor.CFrame = portal.CFrame*cn(0,-10,0)
local slaor=sraor:Clone()
slaor.Name = "LeftArm"
local srlor=sraor:Clone() 
srlor.Name = "RightLeg"
local sllor=sraor:Clone() 
sllor.Name = "LeftLeg"
		hed.Name = "Head2"
		hed.Size = Vector3.new(1,1,1)
		hed.Material = "SmoothPlastic"
		hed:BreakJoints()	
		hed.CFrame = portal.CFrame*cn(0,-10,0)

 local Mesh =Instance.new("SpecialMesh",hed)

Mesh.Scale=Vector3.new(1.25,1.25,1.25)
coroutine.resume(coroutine.create(function()
local Eye = Instance.new("Part")
		Eye.Reflectance = 0
		Eye.Transparency = 0
		Eye.CanCollide = false
		Eye.Locked = true
		Eye.Anchored=false
		Eye.BrickColor = BrickColor.new("White")
		Eye.Name = "BEGONE"
		Eye.Size = Vector3.new(0.05,0.3,0.05)
		Eye.Material = "Neon"
		Eye:BreakJoints()
		Eye.Parent = Shade
 local EMesh =Instance.new("SpecialMesh",Eye)

EMesh.MeshType = "Sphere"
	



local Eye=weld(Eye,hed,Eye,cf(.18,.18,-.55))

end))
coroutine.resume(coroutine.create(function()
local Eye = Instance.new("Part")
		Eye.Reflectance = 0
		Eye.Transparency = 0
		Eye.CanCollide = false
		Eye.Locked = true
		Eye.Anchored=false
		Eye.BrickColor = BrickColor.new("White")
		Eye.Name = "BEGONE"
		Eye.Size = Vector3.new(.05,.3,.05)
		Eye.Material = "Neon"
		Eye:BreakJoints()
		Eye.Parent = Shade

		
 local EMesh =Instance.new("SpecialMesh",Eye)

EMesh.MeshType = "Sphere"


local Eye=weld(Eye,hed,Eye,cf(-.18,.18,-.55))

end))

sTor.Anchored = true
hed.Parent = Shade
sTor.Parent = Shade
sraor.Parent = Shade
slaor.Parent = Shade
srlor.Parent = Shade
sllor.Parent = Shade


SetTween(sTor,{Transparency=0},"Quad","InOut",1)
SetTween(hed,{Transparency=0},"Quad","InOut",1)
SetTween(sraor,{Transparency=0},"Quad","InOut",1)
SetTween(slaor,{Transparency=0},"Quad","InOut",1)
SetTween(srlor,{Transparency=0},"Quad","InOut",1)
SetTween(sllor,{Transparency=0},"Quad","InOut",1)





local NeckW2=MakeJoint(sTor,sTor,hed,CFrame.new(0,0,0))
NeckW2.C1 = NeckW.C1

--print(WRJ.Parent.Name)

local RW2=MakeJoint(sTor,sTor,sraor,cf(0,0,0))

local LW2=MakeJoint(sTor,sTor,slaor,cf(0,0,0))

local RH2=MakeJoint(sTor,sTor,srlor,cf(0,0,0))

local LH2=MakeJoint(sTor,sTor,sllor,cf(0,0,0))



RW2.C1 = cn(0, 0.5, 0)
LW2.C1 = cn(0, 0.5, 0)
RH2.C1 = cn(0, 1, 0) *CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
LH2.C1 = cn(0, 1, 0) *CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))




head.Anchored = true

--------
--(#Torso)
SetTween(sTor,{CFrame=cn(head.Position.x,portal.Position.y-5,head.Position.z)},"Quad","InOut", .1)
--------
--(#Head)
SetTween(NeckW2,{C0=NeckCF*CFrame.new(0,0,0)},"Quad","InOut",0.1)
--------
--(#Right Arm)
SetTween(RW2,{C0=CFrame.new(1.5 , 0.5, -.0)},"Quad","InOut",0.1)
--------
--(#Left Arm)
SetTween(LW2,{C0=CFrame.new(-1.5, 0.5, -.0)},"Quad","InOut",0.1)
--------
--(#Right Leg)
SetTween(RH2,{C0=CFrame.new(.5, -0.90, 0)},"Quad","InOut",0.1)
--------
--(#Left Leg)
SetTween(LH2,{C0=CFrame.new(-.5, -0.90, 0)},"Quad","InOut",0.1)


wait(.1)


--------
--(#Torso)
SetTween(sTor,{CFrame=head.CFrame*CFrame.new(0,0,2)},"Quad","InOut",1/2)
--------
--(#Head)
SetTween(NeckW2,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0))},"Quad","InOut",1/2)
--------
--(#Right Arm)
SetTween(RW2,{C0=CFrame.new(1.5 , 0.5, -.0)},"Quad","InOut",1/2)
--------
--(#Left Arm)
SetTween(LW2,{C0=CFrame.new(-1.5, 0.5, -.0)},"Quad","InOut",1/2)

wait(1/2)
--------
--(#Torso)
SetTween(sTor,{CFrame=head.CFrame*CFrame.new(0,0,1)},"Quad","InOut",1/3)
--------
--(#Head)
SetTween(NeckW2,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0))},"Quad","InOut",1/3)
--------
--(#Right Arm)
SetTween(RW2,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad(90),math.rad(0),math.rad(0))},"Quad","InOut",1/3)
--------
--(#Left Arm)
SetTween(LW2,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad(90),math.rad(0),math.rad(0))},"Quad","InOut",1/3)

wait(1/3)
--------
local Grab=MakeJoint(sTor,sTor,head,cf(0,0,-1))
head.Anchored = false
--(#Torso)

--------
--(#Head)
SetTween(NeckW2,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0))},"Quad","InOut",1/3)
--------
--(#Right Arm)
SetTween(RW2,{C0=CFrame.new(1.3 , 0.5, -.3)*angles(math.rad(90),math.rad(0),math.rad(-50))},"Quad","InOut",1/3)
--------
--(#Left Arm)
SetTween(LW2,{C0=CFrame.new(-1.3, 0.5, -.3)*angles(math.rad(90),math.rad(0),math.rad(50))},"Quad","InOut",1/3)

wait(1/3)
		WACKYEFFECT({Time = 40, EffectType = "Crown", Size = VT(1,16,1), Size2 = (VT(10,0,10)), Transparency = 0.2, Transparency2 = 1, CFrame = cn(head.Position.x,portal.Position.y,head.Position.z) , MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
		
SetTween(sTor,{CFrame=cn(head.Position.x,portal.Position.y-5,head.Position.z)},"Quad","InOut", .2)

wait(.2)

Shade:Destroy()
coroutine.resume(coroutine.create(function()
c:BreakJoints()
end))
c.Parent = nil
h:Destroy()
c:Destroy()


end))

				end
				end
				end
		end))
		--CFMagniDamage(portal.CFrame,60,10,20,0,"Normal")

								WACKYEFFECT({Time = 160, EffectType = "Sphere", Size = VT(max+15,1,max+15)*1.5, Size2 = VT(0,.05,0), Transparency = 1, Transparency2 = 0, CFrame=portal.CFrame*cn(0,-0.025,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 424195979, SoundPitch = .5, SoundVolume = 4,TweenNType="Quad",TweenOType="InOut"})
		portal:Destroy()	
	end))




wait(.3)



attack=false	
end




--[[
SetTween(RJW,{C0=RootCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,2)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
SetTween(RW,{C0=CFrame.new(3.5 , 0.5, -.0)*angles(math.rad(0),math.rad(0),math.rad(30))},"Quad","Out",0.1)
SetTween(LW,{C0=CFrame.new(-3.5, 0.5, -.0)*angles(math.rad(0),math.rad(0),math.rad(-30))},"Quad","Out",0.1)
SetTween(RH,{C0=CFrame.new(0, -3, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
SetTween(LH,{C0=CFrame.new(-0, -3, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
--]]



function AT1()
attack = true	


SetTween(RJW,{C0=RootCF*CFrame.new(0,0,2)*angles(math.rad(-50),math.rad(40),math.rad(80))},"Quad","InOut",.3)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,2)*angles(math.rad(50),math.rad(-40),math.rad(-40))},"Quad","InOut",.3)
SetTween(RW,{C0=CFrame.new(3.5 , 0.5, -.0)*angles(math.rad(40),math.rad(-30),math.rad(-25))},"Quad","Out",.3)
SetTween(LW,{C0=CFrame.new(-3.5, 5.5, -.0)*angles(math.rad(-78),math.rad(0),math.rad(-120))},"Quad","Out",.3)
SetTween(RH,{C0=CFrame.new(0, -3, 0)*angles(math.rad(50),math.rad(45),math.rad(0))},"Quad","InOut",.3)
SetTween(LH,{C0=CFrame.new(-0, -3, 0)*angles(math.rad(90),math.rad(0),math.rad(0))},"Quad","InOut",.3)	
wait(.3)	
	so("160773067", RootPart, 1.5, math.random(120,150)/100)
SetTween(RJW,{C0=RootCF*CFrame.new(0,0,2)*angles(math.rad(0),math.rad(0),math.rad(-40))},"Quad","InOut",.15)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,2)*angles(math.rad(0),math.rad(0),math.rad(40))},"Quad","InOut",.15)
SetTween(RW,{C0=CFrame.new(3.5 , 0.5, -.0)*angles(math.rad(-0),math.rad(-50),math.rad(90))},"Quad","Out",.15)
SetTween(LW,{C0=CFrame.new(-3.5, 2.5, -.0)*angles(math.rad(0),math.rad(0),math.rad(-30))},"Quad","Out",.15)
SetTween(RH,{C0=CFrame.new(0, -3, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.15)
SetTween(LH,{C0=CFrame.new(-0, -3, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.15)	
wait(.15/2)

CFMagniDamage(RootPart.CFrame*cn(4,0,-4),12.5,10,20,20,"HPSteal")

wait(.15/2)	




attack = false	
end


function AT2()
attack = true	
	
SetTween(RJW,{C0=RootCF*CFrame.new(0,0,2)*angles(math.rad(-50),math.rad(-40),math.rad(-80))},"Quad","InOut",.3)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,2)*angles(math.rad(50),math.rad(40),math.rad(40))},"Quad","InOut",.3)
SetTween(RW,{C0=CFrame.new(3.5 , 5.5, -.0)*angles(math.rad(-78),math.rad(0),math.rad(120))},"Quad","Out",.3)
SetTween(LW,{C0=CFrame.new(-3.5, 0.5, -.0)*angles(math.rad(40),math.rad(30),math.rad(25))},"Quad","Out",.3)
SetTween(RH,{C0=CFrame.new(0, -3, 0)*angles(math.rad(90),math.rad(0),math.rad(0))},"Quad","InOut",.3)
SetTween(LH,{C0=CFrame.new(-0, -3, 0)*angles(math.rad(50),math.rad(-45),math.rad(0))},"Quad","InOut",.3)	
wait(.3)	
	so("160773067", RootPart, 1.5, math.random(120,150)/100)
SetTween(RJW,{C0=RootCF*CFrame.new(0,0,2)*angles(math.rad(0),math.rad(0),math.rad(40))},"Quad","InOut",.15)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,2)*angles(math.rad(0),math.rad(0),math.rad(-40))},"Quad","InOut",.15)
SetTween(RW,{C0=CFrame.new(3.5 , 2.5, -.0)*angles(math.rad(-0),math.rad(0),math.rad(30))},"Quad","Out",.15)
SetTween(LW,{C0=CFrame.new(-3.5, 0.5, -.0)*angles(math.rad(0),math.rad(50),math.rad(-90))},"Quad","Out",.15)
SetTween(RH,{C0=CFrame.new(0, -3, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.15)
SetTween(LH,{C0=CFrame.new(-0, -3, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.15)	
wait(.15/2)

CFMagniDamage(RootPart.CFrame*cn(-4,0,-4),12.5,10,20,50,"HPSteal")

wait(.15/2)	



	
attack = false	
end

function findNearestTorso(pos)
	local list = game.Workspace:children()
	local torso = nil
	local dist = 1000
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2 ~= Character) then
			temp = (temp2:FindFirstChild("Torso") or temp2:FindFirstChild("UpperTorso"))
			human = temp2:FindFirstChildOfClass("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
	return torso
end

function Attack3()
attack = true	
	
SetTween(RJW,{C0=RootCF*CFrame.new(0,0,2)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.4)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,2)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.4)
SetTween(RW,{C0=CFrame.new(3.5 , 0.5, -.0)*angles(math.rad(90),math.rad(0),math.rad(0))},"Quad","Out",.4)
SetTween(LW,{C0=CFrame.new(-3.5, 0.5, -.0)*angles(math.rad(90),math.rad(0),math.rad(-0))},"Quad","Out",.4)
SetTween(RH,{C0=CFrame.new(0, -3, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.4)
SetTween(LH,{C0=CFrame.new(-0, -3, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.4)	
wait(.05)
		
SetTween(RJW,{C0=RootCF*CFrame.new(0,0,2)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.3)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,2)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.3)
SetTween(RW,{C0=CFrame.new(3.5 , 3.5, -.0)*angles(math.rad(0),math.rad(0),math.rad(80))},"Quad","Out",.3)
SetTween(LW,{C0=CFrame.new(-3.5, 3.5, -.0)*angles(math.rad(0),math.rad(0),math.rad(-80))},"Quad","Out",.3)
SetTween(RH,{C0=CFrame.new(0, -3, 0)*angles(math.rad(0),math.rad(-90),math.rad(0))},"Quad","InOut",.3)
SetTween(LH,{C0=CFrame.new(-0, -3, 0)*angles(math.rad(0),math.rad(90),math.rad(-0))},"Quad","InOut",.3)	
wait(.3)	
	so("260435136", RootPart, 2, .8)
SetTween(RJW,{C0=RootCF*CFrame.new(0,0,2)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.3)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,-5,2)*angles(math.rad(30),math.rad(-40),math.rad(0))},"Quad","InOut",.3)
SetTween(RW,{C0=CFrame.new(6.0 , -2, -8)*angles(math.rad(85),math.rad(0),math.rad(-80))},"Quad","Out",.3)
SetTween(LW,{C0=CFrame.new(-6.0, -2, -8)*angles(math.rad(90),math.rad(0),math.rad(80))},"Quad","Out",.3)
SetTween(RH,{C0=CFrame.new(0, -3, 0)*angles(math.rad(0),math.rad(-90),math.rad(0))},"Quad","InOut",.3)
SetTween(LH,{C0=CFrame.new(-0, -3, 0)*angles(math.rad(0),math.rad(90),math.rad(-0))},"Quad","InOut",.3)	
wait(.3)

	
	  local TheGunHandle = Instance.new("Part")
		TheGunHandle.Reflectance = 0
		TheGunHandle.Transparency = 1
		TheGunHandle.CanCollide = false
		TheGunHandle.Locked = true
		TheGunHandle.Anchored=false
		TheGunHandle.BrickColor = BrickColor.new("Really blue")
		TheGunHandle.Name = "BHandle"
		TheGunHandle.Size = Vector3.new(2.5,1,2.5)
		TheGunHandle.Material = "SmoothPlastic"
		TheGunHandle:BreakJoints()
		TheGunHandle.Parent = workspace		
		TheGunHandle.CFrame = RootPart.CFrame	
		
		
		local SWeld=weld(TheGunHandle,RootPart,TheGunHandle,cf(0,0,-9)*angles(math.rad(0),math.rad(0),math.rad(0)))
		local IsHit = false
local function onTouch(HitPa)
	if IsHit == false then
		local c = HitPa.Parent
				local h = HitPa.Parent:FindFirstChild("Humanoid")
	for _,v in pairs(HitPa.Parent:children()) do
		if v:IsA("Humanoid") then
	
				h = v end
		
	end
		local head = c:FindFirstChild("Torso") or c:FindFirstChild("UpperTorso")
		local realhead = c:FindFirstChild("Head")
	if h ~= nil and head ~= nil and realhead ~= nil then
	
	IsHit = true
	RootPart.Anchored=true
  SetTween(NeckW,{C0=NeckCF*CFrame.new(0,-5,2)*angles(math.rad(30),math.rad(40),math.rad(0))},"Quad","InOut",3)
			local SWeld=MakeJoint(head,Torso,head,cf(0,-1,-9)*angles(math.rad(180),math.rad(0),math.rad(180)))
			
	coroutine.resume(coroutine.create(function()		
local pem = VoidEmitter:Clone()		
pem.Enabled = true			
pem.Parent = realhead			
	so("2162238854", RootPart, 2, .5)
	wait(2.9)
		if mememode == false then
			wait(.1)
		end
	pem.Rate = 0	
	if mememode == true then
		coroutine.resume(coroutine.create(function()	
	
local	Dust = Instance.new("Model") 
local DustTorso = Instance.new("Part",Dust) 
local DustHead = Instance.new("Part",Dust) 
game:GetService("Debris"):AddItem(DustHead, 120)
DustHead.Name = "Head"
DustHead.Size = Vector3.new(realhead.Size.y,realhead.Size.y,realhead.Size.y)
RemoveOutlines(DustHead)
DustHead:BreakJoints()
DustHead.CFrame = CFrame.new(0,1000,0)		
DustHead.Transparency = 1
DustTorso.Name = "Torso"
DustTorso.Size = Vector3.new(realhead.Size.y,realhead.Size.y,realhead.Size.y)
RemoveOutlines(DustTorso)
DustTorso:BreakJoints()
DustTorso.CFrame = CFrame.new(0,1000,0)
DustTorso.Transparency = 1
Dust.Name = "DustMinion"










pem.Parent = DustHead
pem.Rate = 100

local DustWeld=weld(DustTorso,DustHead,DustTorso,cf(0,0,0))
DustTorso.CFrame = realhead.CFrame
wait(.2)
local DustHumanoid = Instance.new("Humanoid",Dust) 
DustHumanoid.MaxHealth = 40
DustHumanoid.Health = 40
DustHumanoid.WalkSpeed = 17
Dust.Parent = Effects
	
					so("438666001", DustTorso, 2, .8)
			
	
			coroutine.resume(coroutine.create(function()	
			local DustAlive = true	
		
			while DustAlive == true do 
			


if DustHumanoid.Health > 0.001 then



local FindNewTorso = findNearestTorso(DustTorso.Position)

if FindNewTorso ~= nil then
	
	DustHumanoid:MoveTo(FindNewTorso.Position)
	--print(DustHumanoid.Name)
local mag = 	(DustTorso.Position-FindNewTorso.Position).magnitude
if mag < 10 and FindNewTorso.Parent:FindFirstChildOfClass("Humanoid") and FindNewTorso.Parent:FindFirstChildOfClass("Humanoid").Health > 0.001 then


coroutine.resume(coroutine.create(function()
				
			coroutine.resume(coroutine.create(function()
	makrag(FindNewTorso.Parent)
	end))
	FindNewTorso.Parent:FindFirstChildOfClass("Humanoid").Health = 0
		FindNewTorso.Parent:BreakJoints()
if FindNewTorso.Parent:FindFirstChild("Head") then
pem.Parent = FindNewTorso.Parent.Head
pem:Emit(10)	
	so("215395388", DustTorso, 2, .8)
end
end))
DustHumanoid.Health = 0	
end	
	
else
	wait(2)
	DustHumanoid.Health = 0
end


end




			
			if DustHumanoid.Health < 0.001 then
					coroutine.resume(coroutine.create(function()
				pem.Rate = 0
					end))
					DustAlive = false
					game:GetService("Debris"):AddItem(Dust, 2)
	so("2162238854", DustTorso, 2, .8)
			end
			
			
			if Dust.Parent ~= Effects then
			coroutine.resume(coroutine.create(function()	
				Dust:Destroy()
			end))
			DustAlive = false	
			end
			
			
			
			
			
			wait(1)	
			end
			
			
			
			end))
	
	
	
	
	end))
	end
	end))
	
	
	
	wait(3)	
	coroutine.resume(coroutine.create(function()
		head.Velocity = RootPart.CFrame.lookVector * 1.2			
			coroutine.resume(coroutine.create(function()
	makrag(c)
	end))
	h.Health = 0
		c:BreakJoints()
RootPart.CFrame = Torso.CFrame*cn(0,-2,0)		
		RootPart.Anchored=false
end))
		attack = false
		
	end
	
	end	
	end		
TheGunHandle.Touched:connect(onTouch)	


wait(1)
coroutine.resume(coroutine.create(function()
	TheGunHandle:Destroy()
end))

if IsHit == false then	
attack = false
end		
end


function Attack4()
	attack=true
SetTween(RJW,{C0=RootCF*CFrame.new(0,0,2)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.6)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,2)*angles(math.rad(20),math.rad(0),math.rad(0))},"Quad","InOut",.6)
SetTween(RW,{C0=CFrame.new(3.5 , 0.5, -.0)*angles(math.rad(90),math.rad(0),math.rad(50))},"Back","Out",.6)
SetTween(LW,{C0=CFrame.new(-3.5, 0.5, -.0)*angles(math.rad(90),math.rad(0),math.rad(-50))},"Back","Out",.6)
SetTween(RH,{C0=CFrame.new(0, -3, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.6)
SetTween(LH,{C0=CFrame.new(-0, -3, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.6)	
wait(.6)	
SetTween(RJW,{C0=RootCF*CFrame.new(0,0,2)*angles(math.rad(30),math.rad(0),math.rad(0))},"Quad","InOut",.4)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,2)*angles(math.rad(-20),math.rad(0),math.rad(0))},"Quad","InOut",.4)
SetTween(RW,{C0=CFrame.new(3.5 , 4.5, 4.0)*angles(math.rad(90),math.rad(0),math.rad(10))},"Quad","Out",.4)
SetTween(LW,{C0=CFrame.new(-3.5, 4.5, 4.0)*angles(math.rad(90),math.rad(0),math.rad(-10))},"Quad","Out",.4)
SetTween(RH,{C0=CFrame.new(0, -3, 0)*angles(math.rad(50),math.rad(0),math.rad(0))},"Quad","InOut",.4)
SetTween(LH,{C0=CFrame.new(-0, -3, 0)*angles(math.rad(50),math.rad(0),math.rad(0))},"Quad","InOut",.4)	
wait(.4)
SetTween(RJW,{C0=RootCF*CFrame.new(0,0,2)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.2)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,2)*angles(math.rad(60),math.rad(0),math.rad(0))},"Quad","InOut",.2)
SetTween(RW,{C0=CFrame.new(3.5 , 0.5, -.0)*angles(math.rad(30),math.rad(0),math.rad(-20))},"Back","Out",.2)
SetTween(LW,{C0=CFrame.new(-3.5, 0.5, -.0)*angles(math.rad(30),math.rad(0),math.rad(20))},"Back","Out",.2)
SetTween(RH,{C0=CFrame.new(0, -3, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.2)
SetTween(LH,{C0=CFrame.new(-0, -3, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.2)
wait(.2)
	
local pilarsize= 1

if mememode == true then
	pilarsize= 3
end	






		WACKYEFFECT({Time = 30, EffectType = "Crown", Size = VT(9,0,9)*pilarsize, Size2 = (VT(10.5,110,10.5)*pilarsize), Transparency = 0.2, Transparency2 = 1, CFrame = RootPart.CFrame*cn(0,-3,-6)*angles(RAD(40),0,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 357540482, SoundPitch = 1.8/(pilarsize/2), SoundVolume = 2*pilarsize})
			


coroutine.resume(coroutine.create(function()	
	wait(.1)
		local RPP = RootPart.Position + Vector3.new(0,5,0)
	local lookv= RootPart.CFrame.lookVector
	coroutine.resume(coroutine.create(function()
	for i = 1,10,1 do 
local attackP = RPP+lookv*i*(15*pilarsize)
local attackCF = CF(attackP,attackP+lookv*5)
			   local Portalfloor,PortalPos,test1 = rayCast(attackP, CFrame.new(attackP, attackP - Vector3.new(0, 1, 0)).lookVector, 80, Character)

local PortalPosCF = CF(PortalPos,PortalPos+test1)*ANGLES(RAD(-90+math.random(-10,10)),RAD(math.random(-360,360)),RAD(math.random(-10,10)))
	if PortalPosCF ~= nil then
	local Pillar = Instance.new("Part")
		Pillar.Reflectance = 0
		Pillar.Transparency = 0
		Pillar.CanCollide = true
		Pillar.Locked = true
		Pillar.Anchored=true
		Pillar.BrickColor = BrickColor.new("White")
		Pillar.Name = "Pillar"
		Pillar.Size = Vector3.new(8.108, 29.681, 8.108)*pilarsize
		Pillar.Material = "Concrete"
		Pillar:BreakJoints()
		Pillar.Parent = Effects
		Pillar.CFrame = PortalPosCF*cn(0,-30*pilarsize,0)
		local NewPillarMesh = Instance.new("SpecialMesh")
NewPillarMesh.Parent = Pillar
NewPillarMesh.MeshId = "http://www.roblox.com/asset/?id=2449719398"
NewPillarMesh.TextureId = "http://www.roblox.com/asset/?id=1693385655"
NewPillarMesh.Scale = Vector3.new(1,1,1)*pilarsize
NewPillarMesh.VertexColor = Vector3.new(23/255, 21/255, 29/255)
NewPillarMesh.MeshType = Enum.MeshType.FileMesh	
		
		SetTween(Pillar,{CFrame=PortalPosCF*cn(0,12*pilarsize,0)},"Quad","Out",.5)
		coroutine.resume(coroutine.create(function()
		wait(math.random(3,6))
		SetTween(Pillar,{CFrame=PortalPosCF*cn(0,-30*pilarsize,0)*ANGLES(RAD(math.random(-90,90)),RAD(math.random(-360,360)),RAD(math.random(-90,90)))},"Bounce","In",2)
			Pillar.CanCollide = false
			wait(1.5)
				CFMagniDamage(cn(PortalPos),18*pilarsize,20*pilarsize,30*pilarsize,50*pilarsize,"Knockdown")

						WACKYEFFECT({Time = 50, EffectType = "Crown", Size = VT(15,0,15)*pilarsize, Size2 = (VT(19,120,19)*pilarsize), Transparency = 0.6, Transparency2 = 1, CFrame = CF(PortalPos,PortalPos+test1)*ANGLES(RAD(-90),RAD(math.random(-360,360)),RAD(0)) , MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 1788899396, SoundPitch = 1/(pilarsize/2), SoundVolume = 3*pilarsize})
	
					SetTween(Pillar,{Transparency=1},"Quad","Out",2)
					wait(4)
			Pillar:Destroy()
		end))
		CFMagniDamage(cn(PortalPos),16*pilarsize,10*pilarsize,20*pilarsize,-20*pilarsize,"NormalKnockdown")

			WACKYEFFECT({Time = 40, EffectType = "Crown", Size = VT(9,0,9)*pilarsize, Size2 = (VT(4.5,160,4.5)*pilarsize), Transparency = 0.2, Transparency2 = 1, CFrame = PortalPosCF, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 2175667385, SoundPitch = 0.8/(pilarsize/2), SoundVolume = 2*pilarsize})
			WACKYEFFECT({Time = 40, EffectType = "Crown", Size = VT(4.5,40,4.5)*pilarsize, Size2 = (VT(30,0,30)*pilarsize), Transparency = 0.7, Transparency2 = 1, CFrame = CF(PortalPos,PortalPos+test1)*ANGLES(RAD(-90),RAD(math.random(-360,360)),RAD(0)) , MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 3})
	
	end
	
	wait(.05)
	end
	end))
	
	
	
	end))		

SetTween(RJW,{C0=RootCF*CFrame.new(0,0,2)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.4)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,2)*angles(math.rad(20),math.rad(0),math.rad(0))},"Quad","InOut",.4)
SetTween(RW,{C0=CFrame.new(3.5 , 0.5, -2.0)*angles(math.rad(90),math.rad(0),math.rad(-20))},"Back","Out",.4)
SetTween(LW,{C0=CFrame.new(-3.5, 0.5, -2.0)*angles(math.rad(90),math.rad(0),math.rad(20))},"Back","Out",.4)
SetTween(RH,{C0=CFrame.new(0, -3, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.4)
SetTween(LH,{C0=CFrame.new(-0, -3, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.4)
wait(.4)	
attack=false
end










		for i, v in pairs(Head:GetChildren()) do

if v:IsA("BasePart") and v.BrickColor.Name == "Institutional white" then
--v.Name = "Eye"
end


		end




function ClickCombo()
if Anim == "Fall" or Anim == "Jump" then
if Combo == 0 then		
--DownAT()	
end
else				
if Combo == 0 then
AT1()	
Combo = 1
elseif Combo == 1 then
AT2()	
Combo = 0	
elseif Combo == 2 then
AT3()
Combo = 0		
end
end
end

Button1DownF=function()

if attack==false then

ClickCombo()	
else

end	
	
end



KeyUpF=function(key)


	
end

Mouse.KeyDown:Connect(function(key)
key:lower()	
if key == "z" and attack ==false then
Attack1()
end
if key == "x" and attack ==false then
Attack2()
end
if key == "c" and attack ==false then
Attack3()
end
if key == "v" and attack ==false then
Attack4()
end
end)

	


if mememode == false then
	mememode=true
		lastid= "http://www.roblox.com/asset/?id=167664731" --1847367023
		
lastsongpos = 0
s2.TimePosition = lastsongpos
	SetTween(RJW,{C0=RootCF*CFrame.new(0,-2,2)*angles(math.rad(30),math.rad(0),math.rad(0))},"Quad","InOut",1)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,-2)*angles(math.rad(20),math.rad(0),math.rad(0))},"Quad","InOut",1)
SetTween(RW,{C0=CFrame.new(2.5 , 3.5, 1.5)*angles(math.rad(30),math.rad(0),math.rad(60))},"Quad","InOut",1)
SetTween(LW,{C0=CFrame.new(-2.5, 3.5, 1.5)*angles(math.rad(30),math.rad(0),math.rad(-60))},"Quad","InOut",1)
SetTween(RH,{C0=CFrame.new(0, -3, 0)*angles(math.rad(50),math.rad(0),math.rad(-90))},"Quad","InOut",1)
SetTween(LH,{C0=CFrame.new(-0, -3, 0)*angles(math.rad(50),math.rad(0),math.rad(90))},"Quad","InOut",1)
so("1837106999", Character,1, 1)
wait(1)

	
	lastid= "http://www.roblox.com/asset/?id=1907454616" --1847367023 194920243

lastsongpos = 0
s2.TimePosition = lastsongpos




		for i, v in pairs(Head:GetChildren()) do
if v:IsA("BasePart") and v.BrickColor.Name == "Really black" and v.Name ~= "Head" then

if v.Name == "Handle" then
	v.Transparency=1 	
v.Decal.Transparency=1 	
else
	SetTween(v,{Transparency=1},"Quad","InOut",.1)

end


end
if v:IsA("BasePart") and  (v.Name == "Eye1" or v.Name == "Eye2" )  then
SetTween(v,{Color=Color3.new(1,0,0)},"Quad","InOut",1)

SetTween(v.Mesh,{Scale=Vector3.new(0.8,5.8,.825)},"Quad","InOut",1)


SetTween(v.Mesh,{Offset=Vector3.new(0,-.5,0)},"Quad","InOut",1)



end


		end

coroutine.resume(coroutine.create(function()
 	  local MaskPart = Instance.new("Part")
		MaskPart.Reflectance = 0
		MaskPart.Transparency = 0
		MaskPart.CanCollide = false
		MaskPart.Locked = true
		MaskPart.Anchored=false
		MaskPart.BrickColor = BrickColor.new("Really blue")
		MaskPart.Name = "LMaskPart"
		MaskPart.Size = Vector3.new(.1,.1,.1)
		MaskPart.Material = "SmoothPlastic"
		MaskPart:BreakJoints()
		MaskPart.Parent = Head		
		MaskPart.CFrame = RootPart.CFrame	
		
	local SWeld=weld(MaskPart,Head,MaskPart,cf(-.75,-0,-1.25)*angles(math.rad(0),math.rad(0),math.rad(0)))
	SetTween(SWeld,{C0=CFrame.new(-2.75,0,-1.0)*angles(math.rad(0),math.rad(-15),math.rad(math.random(-15,15)))},"Elastic","Out",1.5)

local NewMaskMesh = Instance.new("SpecialMesh")
NewMaskMesh.Parent = MaskPart
NewMaskMesh.MeshId = "http://www.roblox.com/asset/?id=2349611011"
NewMaskMesh.TextureId = "http://www.roblox.com/asset/?id=2349706532"
NewMaskMesh.Scale = Vector3.new(3, 3.0999999, 3)/10
NewMaskMesh.MeshType = Enum.MeshType.FileMesh		
end))
coroutine.resume(coroutine.create(function()
 	  local MaskPart = Instance.new("Part")
		MaskPart.Reflectance = 0
		MaskPart.Transparency = 0
		MaskPart.CanCollide = false
		MaskPart.Locked = true
		MaskPart.Anchored=false
		MaskPart.BrickColor = BrickColor.new("Really blue")
		MaskPart.Name = "RMaskPart"
		MaskPart.Size = Vector3.new(.1,.1,.1)
		MaskPart.Material = "SmoothPlastic"
		MaskPart:BreakJoints()
		MaskPart.Parent = Head		
		MaskPart.CFrame = RootPart.CFrame	
		
	local SWeld=weld(MaskPart,Head,MaskPart,cf(.75,-0,-1.25)*angles(math.rad(0),math.rad(0),math.rad(0)))
	SetTween(SWeld,{C0=CFrame.new(2.75,0,-1.0)*angles(math.rad(0),math.rad(-15),math.rad(math.random(-15,15)))},"Elastic","Out",1)

local NewMaskMesh = Instance.new("SpecialMesh")
NewMaskMesh.Parent = MaskPart
NewMaskMesh.MeshId = "http://www.roblox.com/asset/?id=2349606351"
NewMaskMesh.TextureId = "http://www.roblox.com/asset/?id=2349706532"
NewMaskMesh.Scale = Vector3.new(3, 3.0999999, 3)/10
NewMaskMesh.MeshType = Enum.MeshType.FileMesh		
end))




coroutine.resume(coroutine.create(function()
wait(1)
local MoveVal = 1
while mememode == true do 

if MoveVal == 1 then
MoveVal =-1	
else	
MoveVal=1	
end

if Head:FindFirstChild("RMaskPart") then
	
	local HPa = Head:FindFirstChild("RMaskPart")
SetTween(HPa:FindFirstChildOfClass("Weld"),{C0=CFrame.new(2.75+MoveVal/(math.random(30,40)/10),MoveVal/(math.random(60,80)/10),-1.0)*angles(math.rad(-30),math.rad(-15+MoveVal*5),math.rad(math.random(-15,15)))},"Quad","InOut",1)
end
if Head:FindFirstChild("LMaskPart") then
	local HPa = Head:FindFirstChild("LMaskPart")
SetTween(HPa:FindFirstChildOfClass("Weld"),{C0=CFrame.new(-2.75-MoveVal/(math.random(30,40)/10),MoveVal/(math.random(60,80)/10),-1.0)*angles(math.rad(-30),math.rad(15+MoveVal*5),math.rad(math.random(-15,15)))},"Quad","InOut",1)
end
if Head:FindFirstChild("Eye1") then
		local HPa = Head:FindFirstChild("Eye1")
SetTween(HPa,{Color=Color3.new(.25+MoveVal/4,0,0)},"Quad","InOut",1)


end

if Head:FindFirstChild("Eye2") then
			local HPa = Head:FindFirstChild("Eye2")
SetTween(HPa,{Color=Color3.new(.25+MoveVal/4,0,0)},"Quad","InOut",1)	




end

wait(1)
end


if Head:FindFirstChild("RMaskPart") then
	
	local HPa = Head:FindFirstChild("RMaskPart")
SetTween(HPa:FindFirstChildOfClass("Weld"),{C0=CFrame.new(.75,-0,-1.25)*angles(math.rad(-0),math.rad(-0),math.rad(0))},"Quad","InOut",.1)
end
if Head:FindFirstChild("LMaskPart") then
	local HPa = Head:FindFirstChild("LMaskPart")
SetTween(HPa:FindFirstChildOfClass("Weld"),{C0=CFrame.new(-.75,-0.1,-1.25)*angles(math.rad(-0),math.rad(0),math.rad(0))},"Quad","InOut",.1)
end





		for i, v in pairs(Head:GetChildren()) do
if v:IsA("BasePart") and v.BrickColor.Name == "Really black" and v.Name ~= "Head" then

if v.Name == "Handle" then
		coroutine.resume(coroutine.create(function()
		wait(.2)
	v.Transparency=0	
v.Decal.Transparency=0	
end))
else
	SetTween(v,{Transparency=0},"Quad","InOut",.1)

end


end
if v:IsA("BasePart") and  (v.Name == "Eye1" or v.Name == "Eye2" )  then
SetTween(v,{Color=Color3.new(1,1,1)},"Quad","InOut",1)
SetTween(v.Mesh,{Offset=Vector3.new(0,0,0)},"Quad","InOut",1)
SetTween(v.Mesh,{Scale=Vector3.new(1,1,1)},"Quad","InOut",1)




end
if v:IsA("BasePart") and  (v.Name == "RMaskPart" or v.Name == "LMaskPart" ) then
	coroutine.resume(coroutine.create(function()
		wait(.2)
v:Destroy()	
end))
end

		end



end))



lastsongpos = 0
s2.TimePosition = lastsongpos
	
SetTween(RJW,{C0=RootCF*CFrame.new(0,-2,2)*angles(math.rad(30),math.rad(0),math.rad(0))},"Quad","InOut",.5)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,-2)*angles(math.rad(20),math.rad(0),math.rad(0))},"Quad","InOut",.5)
SetTween(RW,{C0=CFrame.new(2.5 , 3.5, 1.5)*angles(math.rad(30),math.rad(0),math.rad(90))},"Quad","InOut",.5)
SetTween(LW,{C0=CFrame.new(-2.5, 3.5, 1.5)*angles(math.rad(30),math.rad(0),math.rad(-90))},"Quad","InOut",.5)
SetTween(RH,{C0=CFrame.new(0, -3, 0)*angles(math.rad(10),math.rad(0),math.rad(-90))},"Quad","InOut",.5)
SetTween(LH,{C0=CFrame.new(-0, -3, 0)*angles(math.rad(10),math.rad(0),math.rad(90))},"Quad","InOut",.5)

wait(.5)	
else
	mememode=false
	
	
	
SetTween(RJW,{C0=RootCF*CFrame.new(0,-2,2)*angles(math.rad(30),math.rad(0),math.rad(0))},"Quad","InOut",.5)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,-2)*angles(math.rad(20),math.rad(0),math.rad(0))},"Quad","InOut",.5)
SetTween(RW,{C0=CFrame.new(2.5 , 3.5, 1.5)*angles(math.rad(30),math.rad(0),math.rad(90))},"Quad","InOut",.5)
SetTween(LW,{C0=CFrame.new(-2.5, 3.5, 1.5)*angles(math.rad(30),math.rad(0),math.rad(-90))},"Quad","InOut",.5)
SetTween(RH,{C0=CFrame.new(0, -3, 0)*angles(math.rad(10),math.rad(0),math.rad(-90))},"Quad","InOut",.5)
SetTween(LH,{C0=CFrame.new(-0, -3, 0)*angles(math.rad(10),math.rad(0),math.rad(90))},"Quad","InOut",.5)

wait(.25)

	SetTween(RJW,{C0=RootCF*CFrame.new(0,-2,2)*angles(math.rad(30),math.rad(0),math.rad(0))},"Quad","InOut",.5)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,-2)*angles(math.rad(20),math.rad(0),math.rad(0))},"Quad","InOut",.5)
SetTween(RW,{C0=CFrame.new(2.5 , 3.5, 1.5)*angles(math.rad(30),math.rad(0),math.rad(60))},"Quad","InOut",.5)
SetTween(LW,{C0=CFrame.new(-2.5, 3.5, 1.5)*angles(math.rad(30),math.rad(0),math.rad(-60))},"Quad","InOut",.5)
SetTween(RH,{C0=CFrame.new(0, -3, 0)*angles(math.rad(50),math.rad(0),math.rad(-90))},"Quad","InOut",.5)
SetTween(LH,{C0=CFrame.new(-0, -3, 0)*angles(math.rad(50),math.rad(0),math.rad(90))},"Quad","InOut",.5)

wait(.5)

	
	CurId=CurId-1
	
	
end

attack = false










	



--math.rad(math.random(-math.random(1,5),math.random(1,5)))
gout= false
gnum = 0 
gnum2 = 20
crypos=0
	s3:play()
		s3.Volume = 0	
coroutine.resume(coroutine.create(function()
while Humanoid.Health>0.001 do 
	sine = sine + change
    hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)

  local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
    local velderp = RootPart.Velocity.y


local wwalk = Anim

if RootPart.Velocity.y > 1 and hitfloor == nil then
Anim = "Jump"

elseif RootPart.Velocity.y < -1 and hitfloor == nil then
Anim = "Fall"
elseif Humanoid.Sit == true then
Anim = "Sit"	
elseif torvel < 1 and hitfloor ~= nil  then
Anim = "Idle"
elseif torvel > 2 and  hitfloor ~= nil  then

Anim = "Walk"
	
else
Anim = ""
	
end 

if Anim=="Jump" and wwalk == "Walk" and mememode==true then
			   local Portalfloor,PortalPos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 80, Character)

			WACKYEFFECT({Time = 40, EffectType = "Crown", Size = VT(0,60,0), Size2 = (VT(30,0,30)), Transparency = 0.2, Transparency2 = 1, CFrame = cn(PortalPos) , MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
					
end



coroutine.resume(coroutine.create(function()
	if mememode == true then
	if s3.Parent == nil or s3 == nil  then

s3 = s3c:Clone()
s3.Parent = Head
	s3.Name = "Crying"
--	s2.SoundId = lastid
	s3.Pitch = 0.5
	s3.Volume = 0
	s3.Looped = true
	s3.archivable = false
	s3.TimePosition = crypos

	s3:play()		

	
	else
crypos=s3.TimePosition		
	s3.Pitch = 0.5
	
	--s2.Volume = 1.5

s3.Looped = true
s3.SoundId = crying
s3.EmitterSize = 40
	end
	
	
	end
end))



coroutine.resume(coroutine.create(function()
	

	if s2.Parent == nil or s2 == nil  then

s2 = s2c:Clone()
s2.Parent = Torso
	s2.Name = "BGMusic"
--	s2.SoundId = lastid
	s2.Pitch = 1.5
	s2.Volume = 1.5
	s2.Looped = true
	s2.archivable = false
	s2.TimePosition = lastsongpos
	if playsong == true then
	s2:play()		
	elseif playsong == false then
	s2:stop()			
	end
	
	
	else
lastsongpos=s2.TimePosition		

if mememode == false then

	s2.Pitch = .85
	
	s2.Volume = 1.5

s2.Looped = true
s2.SoundId = lastid
s2.EmitterSize = 30
else


	s2.Pitch = .9
	
	s2.Volume = 2

s2.Looped = true
s2.SoundId = lastid
s2.EmitterSize = 35
end

	end
	
	
	
end))

if mememode == true then
gnum = gnum + 1
if gnum  >  gnum2 then
	
gnum2 = math.random(10,100)	
gnum = 0	
coroutine.resume(coroutine.create(function()
gout = true
s3.Volume = 3
wait(math.random(2,12)/50)


s3.Volume = 0
gout=false
end))


end 
end



inairvel=torvel


if inairvel > 30 then
inairvel=30	
end
inairvel=inairvel/50*2



if attack == false then
if Anim == "Jump" then
		change = 0.60*2
SetTween(RJW,{C0=RootCF* cn(0, 0 + (0.0395/2) * math.cos(sine / 8), -0.1 + 0.0395 * math.cos(sine / 8)) * angles(math.rad(-6.5 - 1.5 * math.cos(sine / 8))+inairvel/2, math.rad(0), math.rad(0))},"Quad","Out",0.25)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,2)*angles(math.rad(-26.5 + 2.5 * math.cos(sine / 8)), math.rad(0), math.rad(-0))},"Quad","Out",0.25)
SetTween(RW,{C0=CFrame.new(3.5 , -2.60, -.0) * angles(math.rad(-20 - 2 * math.cos(sine / 8)), math.rad(0), math.rad(10 + 0 * math.cos(sine / 8)))},"Quad","InOut",0.1)
SetTween(LW,{C0=CFrame.new(-3.5, -2.6, -.0) * angles(math.rad(-20 - 2 * math.cos(sine / 8)), math.rad(0), math.rad(-10 - 2 * math.cos(sine / 8)))},"Quad","InOut",0.1)
SetTween(RH,{C0=CFrame.new(0, -2+ .05 * math.cos(sine / 15), -.2) * CFrame.Angles(math.rad(-15 -1* math.cos(sine / 10)),math.rad(0),math.rad(0))},"Quad","InOut",0.075)
SetTween(LH,{C0=CFrame.new(0, -2+ .05 * math.cos(sine / 15), -.4) * CFrame.Angles(math.rad(-25 +1* math.cos(sine / 10)),math.rad(0),math.rad(0))},"Quad","InOut",0.075)


elseif Anim == "Fall" then 
		change = 0.60*2
SetTween(RJW,{C0=RootCF*cn(0, 0 + (0.0395/2) * math.cos(sine / 8), -0.1 + 0.0395 * math.cos(sine / 8)) * angles(math.rad(5.5 - 1.5 * math.cos(sine / 8))-inairvel, math.rad(0), math.rad(0))},"Quad","Out",0.25)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,2)*angles(math.rad(26.5 + 2.5 * math.cos(sine / 8))+inairvel, math.rad(0), math.rad(-0))},"Quad","Out",0.25)
SetTween(RW,{C0=CFrame.new(3.2 , -1.50, .20) * angles(math.rad(140 - 2 * math.cos(sine / 8)), math.rad(0), math.rad(45 + 0 * math.cos(sine / 8)))},"Quad","InOut",0.15)
SetTween(LW,{C0=CFrame.new(-3.2, -1.5, .20) * angles(math.rad(140 - 2 * math.cos(sine / 8)), math.rad(0), math.rad(-45 - 2 * math.cos(sine / 8)))},"Quad","InOut",0.15)
SetTween(RH,{C0=CFrame.new(0, -1+ .05 * math.cos(sine / 15), -.4) * CFrame.Angles(math.rad(-15 -1* math.cos(sine / 10)),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
SetTween(LH,{C0=CFrame.new(0, -1+ .05 * math.cos(sine / 15), -.4) * CFrame.Angles(math.rad(-0 +1* math.cos(sine / 10)),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
	
	
	
	
	
	
	

	
		
elseif Anim == "Idle" then
	
	
	
if mememode == false then
		
					change = 0.60
	Humanoid.JumpPower = 90	
	Humanoid.WalkSpeed=16					
local ADNum = .25
SetTween(RJW,{C0=RootCF*cn(0, 0, 2.1 + 0.2395 * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2))) * angles(math.rad(20 - 0 * math.cos(sine / 8)), math.rad((0 + .5* math.cos(sine / 4))), math.rad(-0))},"Quad","InOut",0.1)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0, -1, 2) *angles(math.rad(-3.5 - 1.5 * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2))), math.rad(10), math.rad(0 - 26.5 * math.cos(sine / 15 +.4* math.cos(sine / 10))))},"Quad","InOut",0.1)
SetTween(RW,{C0=CFrame.new(3 , 2.5 + .02 * math.cos(sine / 8), -.0) * angles(math.rad(10 - 12 * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2))), math.rad(-25), math.rad(30 - 6 * math.cos(sine / 8)))},"Quad","Out",0.2)
SetTween(LW,{C0=CFrame.new(-3, 2.5 + .02 * math.cos(sine / 8), -.0) * angles(math.rad(10 - 12 * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2))), math.rad(25), math.rad(-30 + 6 * math.cos(sine / 8 )))},"Quad","Out",0.1)
SetTween(RH,{C0=CFrame.new(0, -3+ .04 * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2)), -2) * CFrame.Angles(math.rad(60 - 0 * math.cos(sine / 8)),math.rad(0),math.rad(-12.5- 6.0 * math.cos(sine / 4)))},"Quad","InOut",0.1)
SetTween(LH,{C0=CFrame.new(-0, -3+ .04 * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2)), -2) * CFrame.Angles(math.rad(60 - 0 * math.cos(sine / 8)),math.rad(0),math.rad(-12.5+ 6.0 * math.cos(sine / 4)))},"Quad","InOut",0.1)
else
					change = 0.60
	Humanoid.JumpPower = 90	
	Humanoid.WalkSpeed=16					
local ADNum = .25
SetTween(RJW,{C0=RootCF*cn(0, 0, 2.1 + 0.2395 * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2))) * angles(math.rad(20 - 0 * math.cos(sine / 8)), math.rad((0 + .5* math.cos(sine / 4))), math.rad(-0))},"Quad","InOut",0.1)

if gout == false then
SetTween(NeckW,{C0=NeckCF*CFrame.new(0, -1, 2) *angles(math.rad(13.5 - 1.5 * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2))), math.rad(0), math.rad(0 - 26.5 * math.cos(sine / 15 +.4* math.cos(sine / 10))))},"Quad","InOut",0.1)
else 
SetTween(NeckW,{C0=NeckCF*CFrame.new(0+ (math.random(-10,10)/350), -1, 2 + (math.random(-10,10)/350)) *angles(math.rad(math.random(-math.random(1,5),math.random(1,5))), math.rad(0+math.random(-math.random(1,5),math.random(1,5))), math.rad(0 - 26.5 * math.cos(sine / 15 +.4* math.cos(sine / 10))))},"Quad","InOut",0.0)
	
end
SetTween(RW,{C0=CFrame.new(3 , 2.5 + .02 * math.cos(sine / 8), -.0) * angles(math.rad(10 - 6 * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2))), math.rad(-25), math.rad(30 - 2 * math.cos(sine / 8)))},"Quad","Out",0.2)
SetTween(LW,{C0=CFrame.new(-3, 2.5 + .02 * math.cos(sine / 8), -.0) * angles(math.rad(10 - 6 * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2))), math.rad(25), math.rad(-30 + 2 * math.cos(sine / 8 )))},"Quad","Out",0.1)
SetTween(RH,{C0=CFrame.new(0, -3+ .04 * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2)), -2) * CFrame.Angles(math.rad(60 - 0 * math.cos(sine / 8)),math.rad(0),math.rad(-12.5- 2.0 * math.cos(sine / 4)))},"Quad","InOut",0.1)
SetTween(LH,{C0=CFrame.new(-0, -3+ .04 * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2)), -2) * CFrame.Angles(math.rad(60 - 0 * math.cos(sine / 8)),math.rad(0),math.rad(-12.5+ 2.0 * math.cos(sine / 4)))},"Quad","InOut",0.1)
	
end		
		
	 
elseif Anim == "Walk" then
local speed=1
if mememode == true then
	speed=1.5
end



if mememode == false then
		

local ADNum = 1
		
			change = 2.6*speed
	Humanoid.JumpPower = 90*speed
	Humanoid.WalkSpeed=56*speed
SetTween(RJW,{C0=RootCF*CFrame.new(0, 1 + 1.0395 * math.cos(sine / 4), 2.4+ 0.855 * math.cos(sine / 4) + -math.sin(sine / 4) / 8) * angles(math.rad(20 - 6  * math.cos(sine / 4)), math.rad(12 * math.cos(sine / 8)) + RootPart.RotVelocity.Y / 70, math.rad(18 * math.cos(sine / 8)))},"Linear","InOut",WalkAnimMove/speed)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0, -1, 2 + 0.025 * math.cos(sine / 4)) * angles(math.rad(10 + 6.5 * math.cos(sine / 4)), math.rad(0 - 16 * math.cos(sine / 8)), math.rad(-18 * math.cos(sine / 8)) + RootPart.RotVelocity.Y / 16)},"Linear","InOut",WalkAnimMove/speed)
--SetTween(RW,{C0=CFrame.new(1.5, 0.6, 0) * angles(math.rad(21+8 * math.cos(sine / 8)), math.rad(-70) + RootPart.RotVelocity.Y / 80, math.rad(70) + RootPart.RotVelocity.Y / 120)},"Linear","InOut",WalkAnimMove/speed)
--SetTween(LW,{C0=CFrame.new(-1.5, 0.6, 0) * angles(math.rad(90-6* math.cos(sine / 4)), math.rad(0) + RootPart.RotVelocity.Y / 80, math.rad(-10) - RootPart.RotVelocity.Y / 90)},"Linear","InOut",WalkAnimMove/speed)
SetTween(RW,{C0=cf(3, 1.5 - 0.55 * math.cos(sine / 8) / 2,-1.1+ 0.5 * math.cos(sine / 8) / 2) * CFrame.Angles(math.rad(-10.5 + 90 * math.cos(sine / 8)) + -math.sin(sine / 8) / 2.5, math.rad(90 + 20 * math.cos(sine / 8)), math.rad(0)) * CFrame.Angles(math.rad(-10 + 22.5 * math.cos(sine / 8)), math.rad(-90) + RootPart.RotVelocity.Y / 50, math.rad(1 * math.cos(sine / 8)))},"Linear","InOut",WalkAnimMove/speed)
SetTween(LW,{C0=cf(-3, 1.5 + 0.55 * math.cos(sine / 8) / 2,-1.1+ -0.5 * math.cos(sine / 8) / 2) * CFrame.Angles(math.rad(-10.5 - 90 * math.cos(sine / 8)) + math.sin(sine / 8) / 2.5, math.rad(-90 + 20 * math.cos(sine / 8)), math.rad(0)) * CFrame.Angles(math.rad(-10 - 22.5 * math.cos(sine / 8)), math.rad(90) + RootPart.RotVelocity.Y / 50, math.rad(1 * math.cos(sine / 8)))},"Linear","InOut",WalkAnimMove/speed)
SetTween(RH,{C0=cf(0, -2.825 - 0.55 * math.cos(sine / 8) / 2,-1 + 1 * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2))) * CFrame.Angles(math.rad(45 - 50  * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2))) + -math.sin(sine / 8) / 2.5, math.rad(90 + 0 * math.cos(sine / 8)), math.rad(0)) * CFrame.Angles(math.rad(0 + 2.5 * math.cos(sine / 8)), math.rad(-90) - RootPart.RotVelocity.Y / 50, math.rad(1 * math.cos(sine / 8)))},"Linear","InOut",WalkAnimMove/speed/1)
SetTween(LH,{C0=cf(-0, -2.825 + 0.55 * math.cos(sine / 8) / 2,-1 - 1 * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2))) * CFrame.Angles(math.rad(45 + 50  * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2))) + math.sin(sine / 8) / 2.5, math.rad(-90 + 0 * math.cos(sine / 8)), math.rad(0)) * CFrame.Angles(math.rad(0 - 2.5 * math.cos(sine / 8)), math.rad(90)-  RootPart.RotVelocity.Y / 50, math.rad(1 * math.cos(sine / 8)))},"Linear","InOut",WalkAnimMove/speed/1)
else
	
	
	
	
local ADNum = 1
		
			change = 2.6*speed
	Humanoid.JumpPower = 90*speed
	Humanoid.WalkSpeed=76*speed
SetTween(RJW,{C0=RootCF*CFrame.new(0, 1 + 1.3395 * math.cos(sine / 4), 2.4+ 0.855 * math.cos(sine / 4) + -math.sin(sine / 4) / 8) * angles(math.rad(20 - 6  * math.cos(sine / 4)), math.rad(12 * math.cos(sine / 8)) + RootPart.RotVelocity.Y / 70, math.rad(18 * math.cos(sine / 8)))},"Linear","InOut",WalkAnimMove/speed)


if gout == false then
SetTween(NeckW,{C0=NeckCF*CFrame.new(0, 1, 0 + 0.025 * math.cos(sine / 4)) * angles(math.rad(10 + 6.5 * math.cos(sine / 4)), math.rad(0 - 3 * math.cos(sine / 8)), math.rad(-18 * math.cos(sine / 8)) + RootPart.RotVelocity.Y / 16)},"Linear","InOut",WalkAnimMove/speed)
else 
SetTween(NeckW,{C0=NeckCF*CFrame.new(0+ (math.random(-10,10)/350), 1, 0 + (math.random(-10,10)/350)) *angles(math.rad(math.random(-math.random(1,5),math.random(1,5))), math.rad(0+math.random(-math.random(1,5),math.random(1,5))), math.rad(0 - 26.5 * math.cos(sine / 15 +.4* math.cos(sine / 10))))},"Quad","InOut",0.0)
	
end


--SetTween(RW,{C0=CFrame.new(1.5, 0.6, 0) * angles(math.rad(21+8 * math.cos(sine / 8)), math.rad(-70) + RootPart.RotVelocity.Y / 80, math.rad(70) + RootPart.RotVelocity.Y / 120)},"Linear","InOut",WalkAnimMove/speed)
--SetTween(LW,{C0=CFrame.new(-1.5, 0.6, 0) * angles(math.rad(90-6* math.cos(sine / 4)), math.rad(0) + RootPart.RotVelocity.Y / 80, math.rad(-10) - RootPart.RotVelocity.Y / 90)},"Linear","InOut",WalkAnimMove/speed)
SetTween(RW,{C0=cf(3, 1.5 - 0.55 * math.cos(sine / 8) / 2,-1.1- 2.5 * math.cos(sine / 8) / 2) * CFrame.Angles(math.rad(-1.5 + 30 * math.cos(sine / 8)) + -math.sin(sine / 8) / 2.5, math.rad(90 + 20 * math.cos(sine / 8)), math.rad(0)) * CFrame.Angles(math.rad(-10 + 22.5 * math.cos(sine / 8)), math.rad(-90) + RootPart.RotVelocity.Y / 50, math.rad(1 * math.cos(sine / 8)))},"Linear","InOut",WalkAnimMove/speed)
SetTween(LW,{C0=cf(-3, 1.5 + 0.55 * math.cos(sine / 8) / 2,-1.1- -2.5 * math.cos(sine / 8) / 2) * CFrame.Angles(math.rad(-1.5 - 30 * math.cos(sine / 8)) + math.sin(sine / 8) / 2.5, math.rad(-90 + 20 * math.cos(sine / 8)), math.rad(0)) * CFrame.Angles(math.rad(-10 - 22.5 * math.cos(sine / 8)), math.rad(90) + RootPart.RotVelocity.Y / 50, math.rad(1 * math.cos(sine / 8)))},"Linear","InOut",WalkAnimMove/speed)
SetTween(RH,{C0=cf(0, -2.825 - 0.55 * math.cos(sine / 8) / 2,-1 - 1 * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2))) * CFrame.Angles(math.rad(45 - 60  * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2))) + -math.sin(sine / 8) / 2.5, math.rad(90 - 20 * math.cos(sine / 8)), math.rad(0)) * CFrame.Angles(math.rad(0 + 6.5 * math.cos(sine / 8)), math.rad(-90) - RootPart.RotVelocity.Y / 50, math.rad(1 * math.cos(sine / 8)))},"Linear","InOut",WalkAnimMove/speed/1)
SetTween(LH,{C0=cf(-0, -2.825 + 0.55 * math.cos(sine / 8) / 2,-1 + 1 * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2))) * CFrame.Angles(math.rad(45 + 60  * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2))) + math.sin(sine / 8) / 2.5, math.rad(-90 - 20 * math.cos(sine / 8)), math.rad(0)) * CFrame.Angles(math.rad(0 - 6.5 * math.cos(sine / 8)), math.rad(90)-  RootPart.RotVelocity.Y / 50, math.rad(1 * math.cos(sine / 8)))},"Linear","InOut",WalkAnimMove/speed/1)
	
	
	
	
	
	
	
	
end		
	
	
	
	
	
	
	
	
	
	
elseif Anim == "Sit" then	
SetTween(RJW,{C0=RootCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","Out",0.1)
SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","Out",0.1)
SetTween(RH,{C0=CFrame.new(.5, -1, 0)*angles(math.rad(90),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
SetTween(LH,{C0=CFrame.new(-.5, -1, 0)*angles(math.rad(90),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
		
end
end

wait(Animstep)
end
end))
local Value1=MaybeOk(1,"29,30,31,10,12,29,30,31,0") warn(MaybeOk(1,"12,15,1,4,9,14,7,0"))





-----------------------------------------------------------------
--		  ____________ 
--		 /100101001011\    [-Deer Logger-]
--		[01-()-10-()-01]  when runing this script then i can
-- 		 \011001000101/     see who it isso its not the best
--		 [10\-'--'-/01]      plan you had and the white list 
--		  \10\    /10/		  is just there to get rid of sum 
--		   [10\__/10]			that copy the script
--          \======/
-----------------------------------------------------------------