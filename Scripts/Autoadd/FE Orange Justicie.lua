game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0

wait(1)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16

local CountSCIFIMOVIELOL = 1
function SCIFIMOVIELOL(Part0,Part1,Position,Angle)
	local AlignPos = Instance.new('AlignPosition', Part1); AlignPos.Name = "AliP_"..CountSCIFIMOVIELOL
	AlignPos.ApplyAtCenterOfMass = true;
	AlignPos.MaxForce = 5772000--67752;
	AlignPos.MaxVelocity = math.huge/9e110;
	AlignPos.ReactionForceEnabled = false;
	AlignPos.Responsiveness = 200;
	AlignPos.RigidityEnabled = true;
	local AlignOri = Instance.new('AlignOrientation', Part1); AlignOri.Name = "AliO_"..CountSCIFIMOVIELOL
	AlignOri.MaxAngularVelocity = math.huge/9e110;
	AlignOri.MaxTorque = 5772000
	AlignOri.PrimaryAxisOnly = false;
	AlignOri.ReactionTorqueEnabled = false;
	AlignOri.Responsiveness = 200;
	AlignOri.RigidityEnabled = false;
	local AttachmentA=Instance.new('Attachment',Part1); AttachmentA.Name = "Ath_"..CountSCIFIMOVIELOL
	local AttachmentB=Instance.new('Attachment',Part0); AttachmentB.Name = "Ath_"..CountSCIFIMOVIELOL
	AttachmentA.Orientation = Angle or Vector3.new(0,0,0)
	AttachmentA.Position = Position or Vector3.new(0,0,0)
	AlignPos.Attachment1 = AttachmentA;
	AlignPos.Attachment0 = AttachmentB;
	AlignOri.Attachment1 = AttachmentA;
	AlignOri.Attachment0 = AttachmentB;
	CountSCIFIMOVIELOL = CountSCIFIMOVIELOL + 1
	return {AlignPos,AlignOri,AttachmentA,AttachmentB}
end

if _G.netted ~= true then
	_G.netted = true
	coroutine.wrap(function()
		settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
		settings().Physics.AllowSleep = false
		game:GetService("RunService").RenderStepped:Connect(function()
			game:FindFirstChildOfClass("Players").LocalPlayer.MaximumSimulationRadius=math.pow(math.huge,math.huge)
			sethiddenproperty(game:FindFirstChildOfClass("Players").LocalPlayer,"SimulationRadius",math.huge*math.huge)
		end)
	end)()
end

game:FindFirstChildOfClass("Players").LocalPlayer["Character"].Archivable = true
local hatnameclone = {}
for _,v in next, game:FindFirstChildOfClass("Players").LocalPlayer["Character"]:GetChildren() do
	if v:IsA("Accessory") then
		if hatnameclone[v.Name] then
			if hatnameclone[v.Name] == "s" then
				hatnameclone[v.Name] = {}
			end
			table.insert(hatnameclone[v.Name],v)
		else
			hatnameclone[v.Name] = "s"
		end
	end
end
for _,v in pairs(hatnameclone) do
	if type(v) == "table" then
		local num = 1
		for _,w in pairs(v) do
			w.Name = w.Name..num
			num = num + 1
		end
	end
end
hatnameclone = nil

local DeadChar = game:FindFirstChildOfClass("Players").LocalPlayer.Character

local fldr = Instance.new("Folder",game:FindFirstChildOfClass("Players").LocalPlayer["Character"])
fldr.Name = "DMYF"
local CloneChar = DeadChar:Clone()
local ANIMATIONHERE
if CloneChar:FindFirstChild("Animate") then
	ANIMATIONHERE = CloneChar:FindFirstChild("Animate"):Clone()
	CloneChar:FindFirstChild("Animate"):Destroy()
end
if CloneChar:FindFirstChildOfClass("Folder") then CloneChar:FindFirstChildOfClass("Folder"):Destroy() end
if CloneChar.Torso:FindFirstChild("Neck") then
	local Clonessss = CloneChar.Torso:FindFirstChild("Neck"):Clone()
	Clonessss.Part0 = nil
	Clonessss.Part1 = DeadChar.Head
	Clonessss.Parent = DeadChar.Torso
end
CloneChar.Parent = fldr
CloneChar.HumanoidRootPart.CFrame = DeadChar.HumanoidRootPart.CFrame
CloneChar.Humanoid.BreakJointsOnDeath = false
CloneChar.Name = "non"
CloneChar.Humanoid.DisplayDistanceType = "None"

for _,v in next, DeadChar:GetChildren() do
	if v:IsA("Accessory") then
		local topacc = false
		if v.Handle:FindFirstChildOfClass("Weld") then v.Handle:FindFirstChildOfClass("Weld"):Destroy() end
		v.Handle.Massless = true
		v.Handle.CanCollide = false
		if v.Handle:FindFirstChildOfClass("Attachment") then
			local ath__ = v.Handle:FindFirstChildOfClass("Attachment")
			if ath__.Name == "HatAttachment" or ath__.Name == "HairAttachment" or ath__.Name == "FaceFrontAttachment" or ath__.Name == "FaceCenterAttachment" then
				topacc = ath__.Name
			end
		end
        local bv = Instance.new("BodyVelocity",v.Handle)
		bv.Velocity = Vector3.new(0,0,0)
		coroutine.wrap(function()
			if topacc then
				local allthings = SCIFIMOVIELOL(v.Handle,DeadChar.Torso,Vector3.new(0,1.5,0)+ (DeadChar.Head[topacc].Position + (v.Handle[topacc].Position*-1)),Vector3.new(0,0,0))
				local normaltop = allthings[1].Attachment1
				local alipos = allthings[1]
				local alirot = allthings[2]
				local p0 = v.Handle
				local p1 = DeadChar.Head
				alipos.Parent = CloneChar:FindFirstChild(v.Name).Handle
				alirot.Parent = CloneChar:FindFirstChild(v.Name).Handle
				while true do
					game:GetService("RunService").RenderStepped:wait()
					if HumanDied then break end
					coroutine.wrap(function()
						if alipos.Attachment1 == normaltop then
							p0.CFrame = p0.CFrame:lerp((((DeadChar.Torso.CFrame * CFrame.new(0,1.5,0)) * p1[topacc].CFrame) * p0[topacc].CFrame:inverse()),1)
						else
							v.Handle.CFrame = v.Handle.CFrame:lerp(alipos.Attachment1.Parent.CFrame * CFrame.new(alipos.Attachment1.Position) * CFrame.Angles(math.rad(alipos.Attachment1.Rotation.X),math.rad(alipos.Attachment1.Rotation.Y),math.rad(alipos.Attachment1.Rotation.Z)),1)
						end
					end)()
				end
			else
				SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
			end
		end)()
    end
end

local a = DeadChar.Torso
local b = DeadChar.HumanoidRootPart
local c = DeadChar.Humanoid
a.Parent = game:FindFirstChildOfClass("Workspace")
c.Parent = game:FindFirstChildOfClass("Workspace")
local told = a:Clone()
local told1 = c:Clone()
b["RootJoint"].Part0 = told
b["RootJoint"].Part1 = DeadChar.Head
a.Name = "torso"
a.Neck:Destroy()
c.Name = "Humanoid"
told.Parent = DeadChar
told1.Parent = DeadChar
DeadChar.PrimaryPart = told
told1.Health = 0
b:Destroy()
a.Parent = DeadChar
c.Parent = DeadChar
told:Destroy()
told1:Destroy()
a.Name = "Torso"

if CloneChar.Head:FindFirstChildOfClass("Decal") then CloneChar.Head:FindFirstChildOfClass("Decal").Transparency = 1 end
if DeadChar:FindFirstChild("Animate") then DeadChar:FindFirstChild("Animate"):Destroy() end

local Collider
function UnCollide()
    if HumanDied then Collider:Disconnect(); return end
    --[[for _,Parts in next, CloneChar:GetChildren() do
        if Parts:IsA("BasePart") then
            Parts.CanCollide = false 
        end 
    end]]
    for _,Parts in next, DeadChar:GetChildren() do
        if Parts:IsA("BasePart") then
        Parts.CanCollide = false
        end 
    end 
end
Collider = game:GetService("RunService").Stepped:Connect(UnCollide)

local resetBindable = Instance.new("BindableEvent")
resetBindable.Event:connect(function()
    game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
	resetBindable:Clone()
	HumanDied = true
    pcall(function()
		game:FindFirstChildOfClass("Players").LocalPlayer.Character = DeadChar
		DeadChar.Head:Destroy()
		DeadChar:FindFirstChildOfClass("Humanoid"):Destroy()
		game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
		if DeadChar:FindFirstChildOfClass("Folder") then DeadChar:FindFirstChildOfClass("Folder"):Destroy() end
	end)
end)
game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

coroutine.wrap(function()
    while true do
        game:GetService("RunService").RenderStepped:wait()
        if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChildOfClass("Humanoid") or CloneChar:FindFirstChildOfClass("Humanoid").Health <= 0 and not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChildOfClass("Humanoid") or DeadChar:FindFirstChildOfClass("Humanoid").Health <= 0 then 
            HumanDied = true
            pcall(function()
				game:FindFirstChildOfClass("Players").LocalPlayer.Character = DeadChar
				DeadChar.Head:Destroy()
				DeadChar:FindFirstChildOfClass("Humanoid"):Destroy()
				game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
				if DeadChar:FindFirstChildOfClass("Folder") then DeadChar:FindFirstChildOfClass("Folder"):Destroy() end
			end)
            if resetBindable then
                game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
                resetBindable:Destroy()
            end
            break
        end		
    end
end)()


SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"])
SCIFIMOVIELOL(DeadChar["Torso"],CloneChar["Torso"])
SCIFIMOVIELOL(DeadChar["Left Arm"],CloneChar["Left Arm"])
SCIFIMOVIELOL(DeadChar["Right Arm"],CloneChar["Right Arm"])
SCIFIMOVIELOL(DeadChar["Left Leg"],CloneChar["Left Leg"])
SCIFIMOVIELOL(DeadChar["Right Leg"],CloneChar["Right Leg"])

for _,v in pairs(DeadChar:GetChildren()) do
	if v:IsA("BasePart") and v.Name ~= "Head" then
		--[[local bv = Instance.new("BodyVelocity",v)
		bv.Velocity = Vector3.new(0,0,0)
		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then break end
				v.CFrame = CloneChar[v.Name].CFrame
			end
		end)()]]
	elseif v:IsA("BasePart") and v.Name == "Head" then
		local bv = Instance.new("BodyVelocity",v)
		bv.Velocity = Vector3.new(0,0,0)
		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then break end
				v.CFrame = DeadChar.Torso.CFrame * CFrame.new(0,1.5,0)
			end
		end)()
	end
end

for _,BodyParts in next, CloneChar:GetDescendants() do
if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
BodyParts.Transparency = 1 end end
game:GetService("RunService").RenderStepped:wait()
game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
game:FindFirstChildOfClass("Workspace"):FindFirstChildOfClass("Camera").CameraSubject = CloneChar.Humanoid

for _,v in next, DeadChar:GetChildren() do
	if v:IsA("Accessory") then
		if v.Handle:FindFirstChildOfClass("Weld") then v.Handle:FindFirstChildOfClass("Weld"):Destroy() end
	end
end

if ANIMATIONHERE then ANIMATIONHERE.Parent = CloneChar end

print("animated by p00tp0t, converted and fixed by 123jl123")
warn("refit function (anti-death) and music added by adam222334II")
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")

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

Character = Player.Character
Humanoid = Character.Humanoid

local BODY = {}
for _, c in pairs(Character:GetDescendants()) do
	if c:IsA("BasePart") and c.Name ~= "Handle" then
		if c ~= RootPart and c ~= Torso and c ~= Head and c ~= RightArm and c ~= LeftArm and c ~= RightLeg and c ~= LeftLeg then
			c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		end
		table.insert(BODY,{c,c.Parent,c.Material,c.Color,c.Transparency,c.Size,c.Name})
	elseif c:IsA("JointInstance") then
		table.insert(BODY,{c,c.Parent,nil,nil,nil,nil,nil})
	end
end

function refit()
	Character.Parent = workspace
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
				Humanoid:remove()
				PART.Parent = PARENT
				Humanoid = IT("Humanoid",Character)
			end
		end
	end
end

Humanoid.Died:connect(function()
	           refit()
end)

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
local sick = Instance.new("Sound",Torso)

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

local Speed = 0.1
AnimationSpeed=.8
SmoothTime=2

function swait(num)
if num==0 or num==nil then
--if Stagger.Value==false or Stun.Value<=100 then
--Player.PlayerGui.Pacemaker.Heartbeat.Event:wait()
script.Heartbeat.Event:wait()
--end
else
for i=0,num do
--Player.PlayerGui.Pacemaker.Heartbeat.Event:wait()
script.Heartbeat.Event:wait()
--[[if Stagger.Value==true or Stun.Value>=StunT.Value then
break
end]]
end
end
end
script:WaitForChild("Heartbeat")

frame = 1/60
tf = 0
allowframeloss = false --if set to true will fire every frame it possibly can. This will result in multiple events happening at the same time whenever delta returns frame2 or greater.
tossremainder = false --if set to true t will be set to 0 after Fire()-ing.
lastframe = tick()
script.Heartbeat:Fire() --ayy lmao

game:GetService("RunService").Heartbeat:connect(function(s,p) --herp derp
    tf = tf + s
    if tf >= frame then
        if allowframeloss then
            script.Heartbeat:Fire()
            lastframe=tick()
        else
            ----print("FIRED "..math.floor(t/frame).." FRAME(S)","REMAINDER "..(t - frame(math.floor(t/frame))))
            for i=1, math.floor(tf/frame) do
                script.Heartbeat:Fire()
            end
            lastframe=tick()
        end
        if tossremainder then
            tf = 0
        else
            tf = tf - frame * math.floor(tf/frame)
        end
    end
end)

Anim = {
	Properties = {
		Looping = true,
		Priority = Enum.AnimationPriority.Core
	},
	Keyframes = {
		[0] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.Angles(0, 0, math.rad(-5.672)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.002, 0.045, -0.001) * CFrame.Angles(math.rad(-2.693), math.rad(17.074), math.rad(2.922)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.042, -0.001, 0.004) * CFrame.Angles(math.rad(0.344), math.rad(-6.016), math.rad(-0.917)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.078, -0.239, -0.05) * CFrame.Angles(math.rad(-9.225), math.rad(6.073), math.rad(-106.742)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.002, 0.007, -0.002) * CFrame.Angles(math.rad(-16.215), math.rad(-3.438), math.rad(71.963)),
					},
					["Head"] = {
					},
				},
			},
		},
		[0.1] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.03, 0.004, -0.016) * CFrame.Angles(math.rad(-1.604), math.rad(-0.573), math.rad(8.594)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.033, 0.044, -0.022) * CFrame.Angles(math.rad(-0.229), math.rad(6.646), math.rad(3.38)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(-0.077, 0.063, -0.003) * CFrame.Angles(math.rad(-2.349), math.rad(-10.714), math.rad(-1.432)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.078, -0.239, -0.05) * CFrame.Angles(math.rad(-22.288), math.rad(-23.549), math.rad(-95.627)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.003, -0.02, -0.032) * CFrame.Angles(math.rad(-5.844), math.rad(44.06), math.rad(64.859)),
					},
				},
			},
		},
		[0.2] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.087, 0.018, -0.007) * CFrame.Angles(math.rad(-4.641), math.rad(-3.495), math.rad(14.496)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.212, -0.061, -0.023) * CFrame.Angles(math.rad(4.24), math.rad(-8.136), math.rad(8.48)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.09, 0.101, -0.12) * CFrame.Angles(math.rad(-15.871), math.rad(7.792), math.rad(-6.016)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.116, -0.383, -0.139) * CFrame.Angles(math.rad(-118.144), math.rad(-66.062), math.rad(-171.085)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.141, -0.136, -0.408) * CFrame.Angles(math.rad(6.188), math.rad(68.984), math.rad(59.817)),
					},
				},
			},
		},
		[0.3] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.087, 0.017, 0.005) * CFrame.Angles(math.rad(-4.297), math.rad(-4.24), math.rad(10.714)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.229, -0.107, -0.003) * CFrame.Angles(math.rad(6.131), math.rad(-7.85), math.rad(5.787)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.126, 0.121, -0.157) * CFrame.Angles(math.rad(-17.131), math.rad(12.662), math.rad(-5.386)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.118, -0.401, -0.162) * CFrame.Angles(math.rad(-118.545), math.rad(-64.916), math.rad(-171.429)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.17, -0.174, -0.487) * CFrame.Angles(math.rad(0.974), math.rad(69.958), math.rad(64.687)),
					},
				},
			},
		},
		[0.4] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(-0.001, 0, 0.006) * CFrame.Angles(math.rad(-0.057), math.rad(-6.016), math.rad(8.652)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.215, -0.123, -0.001) * CFrame.Angles(math.rad(4.526), math.rad(-8.422), math.rad(-0.172)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.156, 0.165, 0) * CFrame.Angles(math.rad(-9.855), math.rad(1.547), math.rad(-6.589)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.2, -0.572, -0.152) * CFrame.Angles(math.rad(-28.19), math.rad(-41.253), math.rad(-124.79)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.285, -0.136, -0.197) * CFrame.Angles(math.rad(-7.563), math.rad(21.486), math.rad(67.265)),
					},
				},
			},
		},
		[0.5] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.003, 0.005, -0.033) * CFrame.Angles(math.rad(9.053), math.rad(-5.443), math.rad(3.438)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.335, -0.072, -0.015) * CFrame.Angles(math.rad(4.526), math.rad(-8.422), math.rad(-9.511)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.15, 0.169, 0.041) * CFrame.Angles(math.rad(-5.787), math.rad(-7.792), math.rad(8.824)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.083, -0.224, 0.119) * CFrame.Angles(math.rad(-16.501), math.rad(-25.898), math.rad(-105.482)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.102, -0.336, -0.005) * CFrame.Angles(math.rad(-35.18), math.rad(12.834), math.rad(40.508)),
					},
				},
			},
		},
		[0.6] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(-0.035, 0.015, -0.003) * CFrame.Angles(math.rad(2.75), math.rad(2.922), math.rad(-22.689)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.351, 0.262, -0.153) * CFrame.Angles(math.rad(-21.944), math.rad(-10.084), math.rad(-1.948)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.585, -0.02, -0.022) * CFrame.Angles(math.rad(3.724), math.rad(14.954), math.rad(-0.401)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.024, -0.231, -0.069) * CFrame.Angles(math.rad(-31.742), math.rad(9.053), math.rad(-16.902)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.034, -0.222, -0.102) * CFrame.Angles(math.rad(-37.471), math.rad(-6.303), math.rad(-3.38)),
					},
				},
			},
		},
		[0.7] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(-0.05, 0.022, 0.004) * CFrame.Angles(math.rad(-1.432), math.rad(5.329), math.rad(-23.778)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.247, 0.234, -0.096) * CFrame.Angles(math.rad(-23.377), math.rad(-10.027), math.rad(-0.115)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.445, -0.087, -0.037) * CFrame.Angles(math.rad(5.443), math.rad(14.954), math.rad(-2.521)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.228, -0.201, 0.068) * CFrame.Angles(math.rad(-36.956), math.rad(-28.762), math.rad(-32.773)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.111, -0.23, 0.086) * CFrame.Angles(math.rad(-37.643), math.rad(44.805), math.rad(37.758)),
					},
				},
			},
		},
		[0.8] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(-0.045, 0.037, 0.004) * CFrame.Angles(math.rad(0.688), math.rad(1.719), math.rad(-19.079)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.266, 0.165, -0.049) * CFrame.Angles(math.rad(-13.636), math.rad(3.724), math.rad(3.552)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.196, -0.191, 0.094) * CFrame.Angles(math.rad(-21.314), math.rad(-48.128), math.rad(-108.06)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.111, -0.23, 0.086) * CFrame.Angles(math.rad(-30.252), math.rad(29.221), math.rad(117.227)),
					},
				},
			},
		},
		[0.9] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(-0.042, 0.041, -0.031) * CFrame.Angles(math.rad(6.589), math.rad(-4.354), math.rad(-2.807)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.304, -0.098, 0.035) * CFrame.Angles(math.rad(8.021), math.rad(-2.177), math.rad(-7.85)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.194, 0.099, 0.139) * CFrame.Angles(math.rad(-5.386), math.rad(5.271), math.rad(8.308)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.215, -0.178, 0.13) * CFrame.Angles(math.rad(-11.345), math.rad(-63.197), math.rad(-172.919)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.113, -0.242, 0.009) * CFrame.Angles(math.rad(-8.881), math.rad(1.203), math.rad(173.091)),
					},
				},
			},
		},
		[1] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.051, 0.059, -0.015) * CFrame.Angles(math.rad(-3.896), math.rad(-12.204), math.rad(14.381)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.36, -0.26, -0.138) * CFrame.Angles(math.rad(19.366), math.rad(-11.287), math.rad(9.798)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.032, 0.252, 0.162) * CFrame.Angles(math.rad(-27.215), math.rad(22.575), math.rad(4.641)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.303, 0.264, 0.5) * CFrame.Angles(math.rad(105.768), math.rad(18.507), math.rad(-160.485)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.333, 0.352, 0.375) * CFrame.Angles(math.rad(94.653), math.rad(-19.251), math.rad(152.349)),
					},
				},
			},
		},
		[1.1] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.048, 0.06, 0.001) * CFrame.Angles(math.rad(-5.672), math.rad(-12.49), math.rad(19.824)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.422, -0.266, -0.161) * CFrame.Angles(math.rad(20.856), math.rad(-17.819), math.rad(12.777)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(-0.042, 0.289, 0.177) * CFrame.Angles(math.rad(-27.731), math.rad(22.689), math.rad(2.12)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.336, 0.25, 0.48) * CFrame.Angles(math.rad(85.142), math.rad(19.939), math.rad(-125.592)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.359, 0.32, 0.353) * CFrame.Angles(math.rad(89.668), math.rad(-27.674), math.rad(150.344)),
					},
				},
			},
		},
		[1.15] = {
			["Torso"] = {
				["Right Arm"] = {
					CFrame = CFrame.new(0.321, 0.194, 0.033) * CFrame.Angles(math.rad(40.107), math.rad(-28.934), math.rad(100.554)),
				},
			},
		},
		[1.2] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.049, 0.061, -0.011) * CFrame.Angles(math.rad(1.49), math.rad(-6.933), math.rad(0.917)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.34, -0.079, -0.013) * CFrame.Angles(math.rad(6.245), math.rad(-1.089), math.rad(-1.604)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.245, 0.143, 0.266) * CFrame.Angles(math.rad(-7.391), math.rad(0.172), math.rad(2.005)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.293, -0.086, -0.005) * CFrame.Angles(math.rad(36.268), math.rad(-12.662), math.rad(-73.109)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.037, 0.197, 0.018) * CFrame.Angles(math.rad(4.698), math.rad(7.735), math.rad(74.427)),
					},
				},
			},
		},
		[1.3] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.048, 0.063, -0.011) * CFrame.Angles(math.rad(12.433), math.rad(-3.037), math.rad(-5.099)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.497, 0.086, 0.049) * CFrame.Angles(math.rad(-3.667), math.rad(-9.053), math.rad(-8.652)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.411, 0.137, 0.235) * CFrame.Angles(math.rad(-3.037), math.rad(10.943), math.rad(16.558)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.089, -0.186, -0.303) * CFrame.Angles(math.rad(-15.699), math.rad(-37.586), math.rad(-87.032)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.002, 0.176, -0.012) * CFrame.Angles(math.rad(-3.438), math.rad(38.044), math.rad(68.64)),
					},
				},
			},
		},
		[1.35] = {
			["Torso"] = {
				["Left Leg"] = {
					CFrame = CFrame.new(-0.287, 0.032, -0.108) * CFrame.Angles(math.rad(-15.986), math.rad(-19.309), math.rad(-11.287)),
				},
				["Left Arm"] = {
					CFrame = CFrame.new(0.07, 0.097, -0.109) * CFrame.Angles(math.rad(-7.277), math.rad(-12.032), math.rad(-39.248)),
				},
				["Right Arm"] = {
					CFrame = CFrame.new(-0.14, 0.034, 0.05) * CFrame.Angles(math.rad(-15.871), math.rad(8.251), math.rad(46.868)),
				},
			},
		},
		[1.4] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.048, 0.06, 0.001) * CFrame.Angles(math.rad(7.678), math.rad(2.292), math.rad(-19.366)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.27, 0.114, -0.159) * CFrame.Angles(math.rad(-21.257), math.rad(-18.85), math.rad(-6.073)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.497, -0.039, 0.104) * CFrame.Angles(math.rad(3.094), math.rad(15.183), math.rad(7.678)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.053, -0.03, -0.111) * CFrame.Angles(math.rad(-20.054), math.rad(11.345), math.rad(4.756)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.067, 0.043, -0.051) * CFrame.Angles(math.rad(-16.902), math.rad(-16.1), math.rad(12.261)),
					},
				},
			},
		},
		[1.45] = {
			["Torso"] = {
				["Left Arm"] = {
					CFrame = CFrame.new(0.049, 0.073, -0.158) * CFrame.Angles(math.rad(-24.752), math.rad(11.23), math.rad(2.063)),
				},
			},
		},
		[1.5] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.048, 0.06, 0.008) * CFrame.Angles(math.rad(-2.063), math.rad(3.896), math.rad(-24.866)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.229, 0.099, -0.266) * CFrame.Angles(math.rad(-23.262), math.rad(-22.689), math.rad(5.042)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.503, -0.062, 0.038) * CFrame.Angles(math.rad(4.526), math.rad(21.543), math.rad(-4.698)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.036, 0, -0.052) * CFrame.Angles(math.rad(-27.559), math.rad(-13.579), math.rad(-37.013)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.094, 0.058, -0.054) * CFrame.Angles(math.rad(-20.97), math.rad(-5.73), math.rad(29.45)),
					},
				},
			},
		},
		[1.6] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.051, 0.068, -0.087) * CFrame.Angles(math.rad(5.329), math.rad(-2.235), math.rad(-22.632)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.131, 0.157, 0.065) * CFrame.Angles(math.rad(-9.912), math.rad(16.387), math.rad(-10.657)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.45, 0.143, 0.047) * CFrame.Angles(math.rad(-2.005), math.rad(16.673), math.rad(5.787)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.036, 0, -0.052) * CFrame.Angles(math.rad(-27.559), math.rad(-13.579), math.rad(-81.589)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.094, 0.058, -0.054) * CFrame.Angles(math.rad(-5.443), math.rad(-4.412), math.rad(72.479)),
					},
				},
			},
		},
		[1.7] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.05, 0.073, -0.042) * CFrame.Angles(math.rad(16.215), math.rad(-3.094), math.rad(-1.891)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.303, 0.14, 0.074) * CFrame.Angles(math.rad(-1.375), 0, math.rad(-16.043)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.209, 0.117, 0.033) * CFrame.Angles(math.rad(-4.698), math.rad(-3.839), math.rad(13.235)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.036, 0, -0.052) * CFrame.Angles(math.rad(-23.319), math.rad(-16.272), math.rad(-174.695)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.094, 0.058, -0.054) * CFrame.Angles(math.rad(-19.423), math.rad(-6.245), math.rad(173.492)),
					},
				},
			},
		},
		[1.8] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.046, 0.059, 0.012) * CFrame.Angles(math.rad(6.245), math.rad(-7.277), math.rad(13.866)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.45, -0.047, 0.018) * CFrame.Angles(math.rad(3.839), math.rad(-16.558), math.rad(-3.094)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.107, 0.253, -0.141) * CFrame.Angles(math.rad(-35.695), math.rad(18.105), math.rad(14.095)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.007, 0.442, -0.369) * CFrame.Angles(math.rad(-15.871), math.rad(-13.808), math.rad(-175.898)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.179, 0.563, -0.401) * CFrame.Angles(math.rad(-35.065), math.rad(-4.24), math.rad(172.059)),
					},
				},
			},
		},
		[1.9] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.042, 0.057, 0.033) * CFrame.Angles(math.rad(4.927), math.rad(-9.798), math.rad(19.652)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.455, -0.191, -0.002) * CFrame.Angles(math.rad(7.047), math.rad(-20.168), math.rad(-2.005)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.106, 0.26, -0.147) * CFrame.Angles(math.rad(-43.029), math.rad(16.845), math.rad(11.287)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.007, 0.442, -0.369) * CFrame.Angles(math.rad(-34.607), math.rad(-14.897), math.rad(-175.268)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.192, 0.619, -0.464) * CFrame.Angles(math.rad(-56.895), math.rad(-0.974), math.rad(171.028)),
					},
				},
			},
		},
		[2] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.042, 0.057, 0.033) * CFrame.Angles(math.rad(8.652), math.rad(-3.61), math.rad(2.005)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.25, 0.008, 0.091) * CFrame.Angles(math.rad(1.49), math.rad(-0.344), math.rad(-6.761)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.363, 0.174, 0.049) * CFrame.Angles(math.rad(-12.261), math.rad(-14.209), math.rad(3.953)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.081, 0.146, -0.061) * CFrame.Angles(math.rad(4.183), math.rad(1.318), math.rad(-177.846)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.01, 0.285, -0.095) * CFrame.Angles(math.rad(-2.406), math.rad(-13.808), math.rad(165.241)),
					},
				},
			},
		},
		[2.1] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.042, 0.058, 0.032) * CFrame.Angles(math.rad(5.386), math.rad(1.776), math.rad(-10.084)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.195, 0.143, -0.045) * CFrame.Angles(math.rad(-17.876), math.rad(-26.299), math.rad(-3.266)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.404, -0.068, 0.108) * CFrame.Angles(math.rad(2.406), math.rad(9.282), math.rad(6.933)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.011, -0.005, 0.059) * CFrame.Angles(math.rad(-27.158), math.rad(-22.173), math.rad(-62.395)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.033, 0.165, -0.062) * CFrame.Angles(math.rad(-18.564), math.rad(-8.652), math.rad(70.646)),
					},
				},
			},
		},
		[2.2] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.042, 0.057, 0.028) * CFrame.Angles(math.rad(-2.177), math.rad(5.672), math.rad(-33.518)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.155, 0.117, -0.113) * CFrame.Angles(math.rad(-20.856), math.rad(-28.591), math.rad(8.938)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.494, -0.147, 0.041) * CFrame.Angles(math.rad(11.402), math.rad(28.934), math.rad(-10.371)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.337, 0.024, 0.073) * CFrame.Angles(math.rad(-22.002), math.rad(-45.493), math.rad(-6.818)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.049, -0.182, 0.094) * CFrame.Angles(math.rad(-32.086), math.rad(65.947), math.rad(51.165)),
					},
				},
			},
		},
		[2.3] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.039, 0.057, -0.012) * CFrame.Angles(math.rad(-0.573), math.rad(4.641), math.rad(-30.138)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.155, 0.117, -0.113) * CFrame.Angles(math.rad(-20.856), math.rad(-28.591), math.rad(4.584)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.505, -0.13, 0.058) * CFrame.Angles(math.rad(11.001), math.rad(29.049), math.rad(-10.199)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.187, -0.034, -0.024) * CFrame.Angles(math.rad(-43.889), math.rad(-20.397), math.rad(-91.329)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.089, -0.11, 0.015) * CFrame.Angles(math.rad(-14.095), math.rad(55.978), math.rad(105.252)),
					},
				},
			},
		},
		[2.4] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.058, 0.068, -0.114) * CFrame.Angles(math.rad(5.042), 0, math.rad(-9.167)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.336, 0.171, 0.073) * CFrame.Angles(math.rad(-2.979), math.rad(6.417), math.rad(-4.87)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.596, 0.088, 0.136) * CFrame.Angles(math.rad(-0.63), math.rad(8.995), math.rad(7.391)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.139, -0.509, -0.406) * CFrame.Angles(math.rad(-12.032), math.rad(-55.348), math.rad(-146.104)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.455, -0.795, -0.12) * CFrame.Angles(math.rad(-48.873), math.rad(58.785), math.rad(-173.721)),
					},
				},
			},
		},
		[2.5] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.13, 0.087, -0.184) * CFrame.Angles(math.rad(16.501), math.rad(-4.985), math.rad(2.979)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.354, 0.047, 0.005) * CFrame.Angles(math.rad(14.668), math.rad(21.371), math.rad(-21.257)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.519, 0.389, 0.099) * CFrame.Angles(math.rad(-21.715), math.rad(10.6), math.rad(21.887)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.281, -0.488, -0.292) * CFrame.Angles(math.rad(-54.087), math.rad(-44.003), math.rad(-151.662)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.404, -0.776, -0.036) * CFrame.Angles(math.rad(-69.557), math.rad(16.902), math.rad(145.818)),
					},
				},
			},
		},
		[2.6] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.139, 0.083, -0.256) * CFrame.Angles(math.rad(-2.922), math.rad(-7.506), math.rad(18.965)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.546, 0.034, -0.047) * CFrame.Angles(math.rad(5.558), math.rad(5.787), math.rad(11.115)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.298, 0.396, 0.089) * CFrame.Angles(math.rad(-30.023), math.rad(22.173), math.rad(-3.037)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.205, -0.546, -0.272) * CFrame.Angles(math.rad(-109.148), math.rad(-51.509), math.rad(-168.106)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.285, -0.428, -0.424) * CFrame.Angles(math.rad(-65.489), math.rad(52.54), math.rad(111.44)),
					},
				},
			},
		},
		[2.7] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.14, 0.081, -0.253) * CFrame.Angles(math.rad(-5.214), math.rad(-8.422), math.rad(21.257)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.508, 0.044, -0.088) * CFrame.Angles(math.rad(5.558), math.rad(5.787), math.rad(8.021)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.224, 0.406, 0.101) * CFrame.Angles(math.rad(-35.523), math.rad(22.345), math.rad(-0.974)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.21, -0.566, -0.31) * CFrame.Angles(math.rad(-109.148), math.rad(-51.509), math.rad(-168.106)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.297, -0.439, -0.437) * CFrame.Angles(math.rad(-65.489), math.rad(52.54), math.rad(111.44)),
					},
				},
			},
		},
		[2.8] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.14, 0.081, -0.253) * CFrame.Angles(math.rad(-1.833), math.rad(-5.844), math.rad(6.303)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.543, 0.032, -0.026) * CFrame.Angles(math.rad(5.042), math.rad(-4.698), math.rad(2.979)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.169, 0.407, 0.101) * CFrame.Angles(math.rad(-20.741), math.rad(0.057), math.rad(-1.948)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.019, -0.061, -0.045) * CFrame.Angles(math.rad(12.605), math.rad(-52.082), math.rad(-54.431)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.183, 0.039, 0.188) * CFrame.Angles(math.rad(13.636), math.rad(39.534), math.rad(64.057)),
					},
				},
			},
		},
		[2.9] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.14, 0.081, -0.253) * CFrame.Angles(math.rad(12.319), math.rad(-0.573), math.rad(-8.365)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.46, 0.29, 0.028) * CFrame.Angles(math.rad(-3.552), math.rad(10.943), math.rad(-17.303)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.581, 0.321, 0.146) * CFrame.Angles(math.rad(-9.969), math.rad(-4.183), math.rad(13.235)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.019, -0.061, -0.045) * CFrame.Angles(math.rad(-25.038), math.rad(-19.824), math.rad(-60.848)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.078, -0.058, -0.086) * CFrame.Angles(math.rad(-13.465), math.rad(3.667), math.rad(44.977)),
					},
				},
			},
		},
		[3] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.14, 0.081, -0.253) * CFrame.Angles(math.rad(-1.49), math.rad(3.61), math.rad(-24.924)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.107, 0.306, 0.157) * CFrame.Angles(math.rad(-11.975), math.rad(24.236), math.rad(-2.235)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.596, 0.093, 0.036) * CFrame.Angles(math.rad(3.839), math.rad(-12.376), math.rad(-4.756)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.019, -0.061, -0.045) * CFrame.Angles(math.rad(-14.782), math.rad(18.736), math.rad(-15.183)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.078, -0.058, -0.086) * CFrame.Angles(math.rad(-23.72), math.rad(-5.386), math.rad(2.521)),
					},
				},
			},
		},
		[3.1] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.14, 0.08, -0.262) * CFrame.Angles(math.rad(-3.266), math.rad(4.412), math.rad(-24.809)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.088, 0.305, 0.149) * CFrame.Angles(math.rad(-11.975), math.rad(24.236), math.rad(1.604)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.479, 0.082, 0.053) * CFrame.Angles(math.rad(3.839), math.rad(-12.376), math.rad(-4.756)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.019, -0.061, -0.045) * CFrame.Angles(math.rad(-3.552), math.rad(13.579), math.rad(-35.638)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.078, -0.058, -0.086) * CFrame.Angles(math.rad(-20.397), math.rad(-0.286), math.rad(14.095)),
					},
				},
			},
		},
		[3.2] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.15, 0.087, -0.146) * CFrame.Angles(math.rad(-2.578), math.rad(1.375), math.rad(-19.882)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.066, 0.279, 0.031) * CFrame.Angles(math.rad(-5.5), math.rad(13.35), math.rad(7.334)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.479, 0.082, 0.053) * CFrame.Angles(math.rad(1.432), math.rad(-0.573), math.rad(0.516)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.035, -0.127, -0.037) * CFrame.Angles(math.rad(-26.07), math.rad(-54.66), math.rad(-113.331)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.078, -0.058, -0.086) * CFrame.Angles(math.rad(-20.684), math.rad(57.811), math.rad(77.808)),
					},
				},
			},
		},
		[3.3] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.144, 0.083, 0.087) * CFrame.Angles(math.rad(1.031), math.rad(-1.375), math.rad(8.995)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.338, 0.503, 0.011) * CFrame.Angles(math.rad(2.235), math.rad(8.652), math.rad(-14.668)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.302, 0.094, 0.056) * CFrame.Angles(math.rad(-8.766), math.rad(-13.579), math.rad(-4.068)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.287, 0.073, 0.288) * CFrame.Angles(math.rad(17.246), math.rad(-37.987), math.rad(-127.025)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.014, 0.21, -0.042) * CFrame.Angles(math.rad(2.12), math.rad(-1.031), math.rad(141.463)),
					},
					["Head"] = {
					},
				},
			},
		},
		[3.35] = {
			["Torso"] = {
				["Left Arm"] = {
					CFrame = CFrame.new(0.063, 0.181, 0.113) * CFrame.Angles(math.rad(48.3), math.rad(-20.741), math.rad(-135.619)),
				},
				["Right Arm"] = {
					CFrame = CFrame.new(0.047, 0.27, -0.141) * CFrame.Angles(math.rad(37.242), math.rad(-17.59), math.rad(150.287)),
				},
			},
		},
		[3.4] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.425, 0.028, 0.049) * CFrame.Angles(math.rad(-0.688), math.rad(-11.23), math.rad(28.075)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.547, 0.515, 0.116) * CFrame.Angles(math.rad(1.662), math.rad(-16.043), math.rad(-5.042)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(-0.106, 0.209, -0.005) * CFrame.Angles(math.rad(-32.601), math.rad(-25.096), math.rad(-19.423)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.309, 0.207, 0.477) * CFrame.Angles(math.rad(110.925), math.rad(11.975), math.rad(-158.537)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.033, 0.243, 0.326) * CFrame.Angles(math.rad(112.701), math.rad(-26.757), math.rad(-173.721)),
					},
				},
			},
		},
		[3.5] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.589, -0.052, -0.277) * CFrame.Angles(math.rad(-2.578), math.rad(-11.287), math.rad(27.731)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.507, 0.11, 0.115) * CFrame.Angles(math.rad(-2.235), math.rad(-25.153), math.rad(3.782)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(-0.216, 0.499, -0.206) * CFrame.Angles(math.rad(-44.347), math.rad(-35.638), math.rad(-26.07)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.433, 0.139, 0.31) * CFrame.Angles(math.rad(105.94), math.rad(27.445), math.rad(-138.484)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.187, 0.227, 0.306) * CFrame.Angles(math.rad(102.158), math.rad(-33.633), math.rad(164.152)),
					},
				},
			},
		},
		[3.6] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.573, -0.045, -0.23) * CFrame.Angles(math.rad(0.172), math.rad(-7.334), math.rad(16.329)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.303, 0.101, 0.163) * CFrame.Angles(math.rad(-5.901), math.rad(-12.834), math.rad(-4.011)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.178, 0.792, -0.049) * CFrame.Angles(math.rad(-8.709), math.rad(-26.986), math.rad(-5.329)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.464, 0.038, -0.258) * CFrame.Angles(math.rad(26.643), math.rad(3.094), math.rad(-103.018)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.316, 0.165, -0.017) * CFrame.Angles(math.rad(32.601), math.rad(7.735), math.rad(115.967)),
					},
				},
			},
		},
		[3.7] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.564, -0.07, -0.032) * CFrame.Angles(math.rad(13.063), math.rad(1.49), math.rad(-0.516)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.121, 0.068, 0.303) * CFrame.Angles(math.rad(-19.824), math.rad(0.745), math.rad(-23.491)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.111, 0.48, 0.192) * CFrame.Angles(math.rad(8.021), math.rad(-29.507), math.rad(14.897)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.485, -0.009, -0.262) * CFrame.Angles(math.rad(-36.211), math.rad(-55.806), math.rad(-136.192)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.316, 0.165, -0.017) * CFrame.Angles(math.rad(16.043), math.rad(76.433), math.rad(98.491)),
					},
				},
			},
		},
		[3.8] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.547, -0.042, -0.28) * CFrame.Angles(math.rad(10.313), math.rad(2.349), math.rad(-21.371)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.258, 0.489, -0.268) * CFrame.Angles(math.rad(-31.398), math.rad(27.33), math.rad(-0.115)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.436, 0.246, 0.081) * CFrame.Angles(math.rad(1.49), math.rad(-2.922), math.rad(7.85)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.295, -0.116, 0.162) * CFrame.Angles(math.rad(-46.983), math.rad(-48.243), math.rad(-46.238)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.298, -0.085, 0.068) * CFrame.Angles(math.rad(-21.371), math.rad(33.002), math.rad(43.717)),
					},
				},
			},
		},
		[3.9] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.546, -0.041, -0.288) * CFrame.Angles(math.rad(11.001), math.rad(-0.974), math.rad(-25.21)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.479, 0.543, -0.415) * CFrame.Angles(math.rad(-35.924), math.rad(27.788), math.rad(6.417)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.426, 0.286, 0.076) * CFrame.Angles(math.rad(-0.573), math.rad(-5.901), math.rad(10.657)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.318, -0.029, 0.106) * CFrame.Angles(math.rad(-46.983), math.rad(-48.243), math.rad(-18.85)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.269, -0.021, 0.052) * CFrame.Angles(math.rad(-28.992), math.rad(29.851), math.rad(27.788)),
					},
				},
			},
		},
		[4] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.582, -0.041, -0.31) * CFrame.Angles(math.rad(6.933), math.rad(-2.922), math.rad(-19.996)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.389, 0.542, -0.181) * CFrame.Angles(math.rad(-22.173), math.rad(21.601), math.rad(4.183)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.544, 0.455, 0.01) * CFrame.Angles(math.rad(-15.298), math.rad(-5.214), math.rad(1.662)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.338, -0.046, 0.027) * CFrame.Angles(math.rad(-34.034), math.rad(-3.782), math.rad(-26.241)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.269, -0.021, 0.052) * CFrame.Angles(math.rad(-39.706), math.rad(37.758), math.rad(65.317)),
					},
				},
			},
		},
		[4.1] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.808, -0.041, -0.288) * CFrame.Angles(math.rad(0.573), math.rad(-4.698), math.rad(3.209)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.492, 0.449, 0.124) * CFrame.Angles(math.rad(-13.293), math.rad(10.428), math.rad(0.802)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.214, 0.548, 0.109) * CFrame.Angles(math.rad(-28.304), math.rad(-6.761), math.rad(-2.005)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.346, 0.064, -0.075) * CFrame.Angles(math.rad(-45.436), math.rad(-39.821), math.rad(-93.85)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.269, -0.021, 0.052) * CFrame.Angles(math.rad(-48.931), math.rad(55.176), math.rad(113.503)),
					},
				},
			},
		},
		[4.2] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(1.006, -0.041, -0.43) * CFrame.Angles(math.rad(-2.12), math.rad(-8.594), math.rad(20.684)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.666, 0.265, 0.106) * CFrame.Angles(math.rad(3.782), math.rad(-14.897), math.rad(8.422)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.12, 0.557, -0.336) * CFrame.Angles(math.rad(-56.551), math.rad(-10.027), math.rad(-18.335)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.4, 0.079, -0.05) * CFrame.Angles(math.rad(-33.174), math.rad(-82.334), math.rad(-179.164)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.351, -0.073, -0.047) * CFrame.Angles(math.rad(-10.313), math.rad(52.598), math.rad(166.33)),
					},
				},
			},
		},
		[4.3] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(1.022, -0.041, -0.449) * CFrame.Angles(math.rad(-0.057), math.rad(-9.454), math.rad(23.434)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.692, 0.263, 0.09) * CFrame.Angles(math.rad(5.329), math.rad(-18.908), math.rad(3.438)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.091, 0.56, -0.316) * CFrame.Angles(math.rad(-59.416), math.rad(-10.542), math.rad(-18.678)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.45, 0.067, 0.406) * CFrame.Angles(math.rad(-163.006), math.rad(-83.48), math.rad(15.355)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.059, -0.065, 0.199) * CFrame.Angles(math.rad(23.09), math.rad(73.797), math.rad(160.657)),
					},
				},
			},
		},
		[4.4] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.99, -0.041, -0.386) * CFrame.Angles(math.rad(1.604), math.rad(-4.584), math.rad(13.006)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.324, 0.262, 0.197) * CFrame.Angles(math.rad(-1.203), math.rad(-0.229), math.rad(-2.578)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.002, 0.567, -0.087) * CFrame.Angles(math.rad(-40.451), math.rad(-20.684), math.rad(-7.907)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.103, 0.151, 0.393) * CFrame.Angles(math.rad(-120.493), math.rad(-45.607), math.rad(-4.011)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.53, 0.031, 0.27) * CFrame.Angles(math.rad(-110.524), math.rad(48.759), math.rad(-29.737)),
					},
				},
			},
		},
		[4.5] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.906, -0.041, -0.256) * CFrame.Angles(math.rad(8.251), math.rad(0.573), math.rad(0.401)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.17, 0.428, -0.121) * CFrame.Angles(math.rad(-20.512), math.rad(15.183), math.rad(-6.589)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.341, 0.377, 0.473) * CFrame.Angles(math.rad(-11.058), math.rad(-5.615), math.rad(11.574)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.007, -0.451, 0.323) * CFrame.Angles(math.rad(-83.136), math.rad(-0.688), math.rad(-2.922)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.067, -0.373, 0.478) * CFrame.Angles(math.rad(-92.132), math.rad(3.094), math.rad(-0.286)),
					},
				},
			},
		},
		[4.6] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.681, -0.079, -0.449) * CFrame.Angles(math.rad(11.918), math.rad(2.12), math.rad(-11.803)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.323, 0.453, -0.621) * CFrame.Angles(math.rad(-56.895), math.rad(21.028), math.rad(1.719)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.694, 0.592, 0.212) * CFrame.Angles(math.rad(-6.073), math.rad(8.995), math.rad(10.714)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.133, -0.266, -0.019) * CFrame.Angles(math.rad(-23.09), math.rad(-4.125), math.rad(-85.428)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.173, -0.126, -0.269) * CFrame.Angles(math.rad(4.641), math.rad(6.245), math.rad(81.646)),
					},
				},
			},
		},
		[4.7] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.661, -0.16, -0.464) * CFrame.Angles(math.rad(16.501), math.rad(2.235), math.rad(-19.079)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.323, 0.453, -0.621) * CFrame.Angles(math.rad(-64.057), math.rad(20.684), math.rad(4.24)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.807, 0.559, 0.202) * CFrame.Angles(math.rad(-3.037), math.rad(19.882), math.rad(15.011)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.133, -0.266, -0.019) * CFrame.Angles(math.rad(-18.335), math.rad(-47.957), math.rad(-110.638)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.123, -0.172, -0.016) * CFrame.Angles(math.rad(43.029), math.rad(77.006), math.rad(58.041)),
					},
				},
			},
		},
		[4.8] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.722, -0.16, -0.427) * CFrame.Angles(math.rad(11.23), math.rad(0.974), math.rad(-11.516)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.192, 0.679, -0.138) * CFrame.Angles(math.rad(-31.226), math.rad(18.678), math.rad(-1.891)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.551, 0.659, -0.146) * CFrame.Angles(math.rad(-15.47), math.rad(1.49), math.rad(9.683)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.082, -0.269, -0.073) * CFrame.Angles(math.rad(-31.971), math.rad(-43.144), math.rad(-110.581)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.137, -0.17, -0.052) * CFrame.Angles(math.rad(-9.053), math.rad(68.182), math.rad(101.356)),
					},
				},
			},
		},
		[4.9] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.936, -0.175, -0.38) * CFrame.Angles(math.rad(6.36), math.rad(1.261), math.rad(-0.802)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.466, 0.573, 0.174) * CFrame.Angles(math.rad(-9.397), math.rad(1.318), math.rad(-3.38)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.479, 0.647, -0.27) * CFrame.Angles(math.rad(-30.138), math.rad(-1.031), math.rad(-0.344)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.028, -0.242, -0.029) * CFrame.Angles(math.rad(-50.134), math.rad(-71.734), math.rad(-110.581)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.244, -0.229, -0.254) * CFrame.Angles(math.rad(-42.112), math.rad(60.504), math.rad(112.873)),
					},
				},
			},
		},
		[5] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(1.008, -0.227, -0.573) * CFrame.Angles(math.rad(1.146), math.rad(-0.573), math.rad(7.448)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.419, 0.519, 0.106) * CFrame.Angles(math.rad(-0.115), math.rad(-9.053), math.rad(0.172)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.435, 0.662, -0.502) * CFrame.Angles(math.rad(-46.925), math.rad(-16.1), math.rad(-8.938)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.034, -0.36, -0.243) * CFrame.Angles(math.rad(-65.374), math.rad(-79.068), math.rad(-125.363)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.31, -0.334, -0.474) * CFrame.Angles(math.rad(-31.57), math.rad(74.771), math.rad(95.97)),
					},
				},
			},
		},
		[5.1] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(1.03, -0.221, -0.674) * CFrame.Angles(math.rad(2.12), math.rad(-0.344), math.rad(6.933)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.442, 0.624, 0.103) * CFrame.Angles(math.rad(-0.115), math.rad(-9.053), math.rad(-1.662)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.442, 0.768, -0.483) * CFrame.Angles(math.rad(-46.066), math.rad(-16.215), math.rad(-8.709)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.031, -0.354, -0.215) * CFrame.Angles(math.rad(-65.374), math.rad(-79.068), math.rad(-116.941)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.283, -0.297, -0.377) * CFrame.Angles(math.rad(-31.57), math.rad(74.771), math.rad(90.012)),
					},
				},
			},
		},
		[5.2] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(1.039, -0.199, -0.832) * CFrame.Angles(math.rad(6.761), math.rad(0.401), math.rad(-0.057)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.39, 0.962, -0.14) * CFrame.Angles(math.rad(-10.256), math.rad(-0.172), math.rad(-7.105)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.383, 1.056, -0.386) * CFrame.Angles(math.rad(-36.44), math.rad(-9.454), math.rad(0.63)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.068, -0.458, -0.094) * CFrame.Angles(math.rad(-61.02), math.rad(-40.623), math.rad(-107.601)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.27, -0.176, -0.409) * CFrame.Angles(math.rad(-18.85), math.rad(36.555), math.rad(96.944)),
					},
				},
			},
		},
		[5.3] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.894, -0.199, -0.832) * CFrame.Angles(math.rad(0.057), math.rad(1.261), math.rad(-7.277)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.47, 0.962, -0.231) * CFrame.Angles(math.rad(-21.715), math.rad(10.542), math.rad(2.865)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.422, 1.006, -0.033) * CFrame.Angles(math.rad(-20.512), math.rad(6.474), math.rad(-1.719)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.068, -0.458, -0.094) * CFrame.Angles(math.rad(-22.517), math.rad(-32.659), math.rad(-125.249)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.27, -0.176, -0.408) * CFrame.Angles(math.rad(1.948), math.rad(52.368), math.rad(129.03)),
					},
				},
			},
		},
		[5.4] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.73, -0.199, -0.832) * CFrame.Angles(math.rad(-1.089), math.rad(3.724), math.rad(-15.126)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.495, 0.992, -0.307) * CFrame.Angles(math.rad(-36.096), math.rad(9.511), math.rad(12.204)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.471, 0.743, 0.143) * CFrame.Angles(math.rad(1.547), math.rad(9.397), math.rad(-1.203)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.054, -0.096, -0.011) * CFrame.Angles(math.rad(-13.923), math.rad(-53.858), math.rad(-173.205)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.223, -0.131, -0.116) * CFrame.Angles(math.rad(23.491), math.rad(79.355), math.rad(148.167)),
					},
				},
			},
		},
		[5.5] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.622, -0.199, -0.832) * CFrame.Angles(math.rad(-2.578), math.rad(3.953), math.rad(-20.684)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.499, 0.977, -0.322) * CFrame.Angles(math.rad(-44.691), math.rad(12.49), math.rad(15.928)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.509, 0.714, 0.056) * CFrame.Angles(math.rad(4.526), math.rad(14.152), math.rad(-4.354)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.099, -0.093, 0.062) * CFrame.Angles(math.rad(20.512), math.rad(-56.608), math.rad(-160.715)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.227, -0.153, 0.005) * CFrame.Angles(math.rad(107.029), math.rad(77.464), math.rad(82.792)),
					},
				},
			},
		},
		[5.6] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.633, -0.199, -0.808) * CFrame.Angles(math.rad(0.057), math.rad(0.688), math.rad(-14.267)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.574, 0.987, -0.321) * CFrame.Angles(math.rad(-39.419), math.rad(13.866), math.rad(10.772)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.387, 0.779, 0.059) * CFrame.Angles(math.rad(0.286), math.rad(1.261), math.rad(0.688)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.336, -0.125, 0.079) * CFrame.Angles(math.rad(-118.602), math.rad(-81.36), math.rad(21.887)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.041, -0.225, 0.122) * CFrame.Angles(math.rad(-125.249), math.rad(82.563), math.rad(-30.653)),
					},
				},
			},
		},
		[5.7] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.654, -0.199, -0.803) * CFrame.Angles(math.rad(-4.011), math.rad(-2.005), math.rad(-1.031)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.484, 0.902, 0.064) * CFrame.Angles(math.rad(-17.303), math.rad(11.287), math.rad(5.672)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.303, 0.891, -0.083) * CFrame.Angles(math.rad(-11.459), math.rad(-9.11), math.rad(-3.209)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.349, -0.016, 0.436) * CFrame.Angles(math.rad(-105.596), math.rad(-34.32), math.rad(2.406)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.149, -0.045, 0.448) * CFrame.Angles(math.rad(-114.592), math.rad(14.209), math.rad(-16.673)),
					},
				},
			},
		},
		[5.8] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.743, -0.199, -0.751) * CFrame.Angles(math.rad(-5.386), math.rad(-3.896), math.rad(6.646)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.619, 0.713, 0.197) * CFrame.Angles(math.rad(-5.329), math.rad(-7.448), math.rad(5.901)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.305, 0.917, -0.092) * CFrame.Angles(math.rad(-19.939), math.rad(-8.537), math.rad(-4.526)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.223, -0.347, 0.088) * CFrame.Angles(math.rad(-57.697), math.rad(26.7), math.rad(-21.257)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.422, -0.283, 0.271) * CFrame.Angles(math.rad(-63.484), math.rad(-48.873), math.rad(18.564)),
					},
				},
			},
		},
		[5.9] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.819, -0.202, -0.851) * CFrame.Angles(math.rad(-4.469), math.rad(-4.985), math.rad(10.485)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.657, 0.737, 0.192) * CFrame.Angles(math.rad(1.662), math.rad(-12.892), math.rad(5.672)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.38, 1.001, -0.526) * CFrame.Angles(math.rad(-38.331), math.rad(-6.646), math.rad(-6.99)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.015, -0.217, 0.086) * CFrame.Angles(math.rad(-30.94), math.rad(-17.361), math.rad(-62.624)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.346, -0.336, 0.168) * CFrame.Angles(math.rad(-46.238), math.rad(26.07), math.rad(76.719)),
					},
				},
			},
		},
		[6] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.622, -0.209, -0.667) * CFrame.Angles(math.rad(-0.401), math.rad(-2.807), math.rad(2.75)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.455, 0.636, 0.218) * CFrame.Angles(math.rad(-11.173), math.rad(-1.719), math.rad(-0.286)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.24, 0.781, -0.155) * CFrame.Angles(math.rad(-21.429), math.rad(-16.788), math.rad(-9.626)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.015, -0.217, 0.086) * CFrame.Angles(math.rad(-44.404), math.rad(-48.186), math.rad(-75.115)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.32, -0.215, 0.039) * CFrame.Angles(math.rad(-55.348), math.rad(44.576), math.rad(101.7)),
					},
				},
			},
		},
		[6.1] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.341, -0.116, -0.25) * CFrame.Angles(math.rad(-1.547), math.rad(0.344), math.rad(-5.329)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.252, 0.412, 0.336) * CFrame.Angles(math.rad(-16.96), math.rad(6.646), math.rad(6.073)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.181, 0.218, 0.006) * CFrame.Angles(math.rad(-8.652), math.rad(-13.178), math.rad(-3.953)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.016, -0.231, 0.2) * CFrame.Angles(math.rad(-84.569), math.rad(-73.339), math.rad(-91.731)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.331, -0.246, 0.186) * CFrame.Angles(math.rad(-104.278), math.rad(80.157), math.rad(116.482)),
					},
				},
			},
		},
		[6.2] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.195, -0.063, -0.043) * CFrame.Angles(math.rad(-2.922), math.rad(4.985), math.rad(-14.61)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.141, 0.297, 0.16) * CFrame.Angles(math.rad(-26.07), math.rad(5.558), math.rad(7.047)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.177, -0.022, -0.095) * CFrame.Angles(math.rad(-0.859), math.rad(-1.604), math.rad(-1.604)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.256, -0.065, 0.245) * CFrame.Angles(math.rad(-30.08), math.rad(-43.717), math.rad(-19.939)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.044, -0.11, 0.124) * CFrame.Angles(math.rad(-31.914), math.rad(36.555), math.rad(31.627)),
					},
				},
			},
		},
		[6.3] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.199, -0.061, -0.011) * CFrame.Angles(math.rad(-2.865), math.rad(5.558), math.rad(-19.137)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.164, 0.233, -0.038) * CFrame.Angles(math.rad(-32.258), math.rad(4.813), math.rad(7.62)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.217, -0.05, -0.099) * CFrame.Angles(math.rad(-0.688), math.rad(5.73), math.rad(-1.604)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.256, -0.065, 0.245) * CFrame.Angles(math.rad(-33.575), math.rad(-42.743), math.rad(-17.647)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.044, -0.11, 0.124) * CFrame.Angles(math.rad(-31.914), math.rad(36.555), math.rad(27.215)),
					},
				},
			},
		},
		[6.4] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0.067, -0.03, -0.006) * CFrame.Angles(math.rad(-2.406), math.rad(1.375), math.rad(-8.995)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.284, 0.314, -0.055) * CFrame.Angles(math.rad(-19.251), math.rad(8.079), math.rad(5.959)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.222, 0.057, -0.132) * CFrame.Angles(math.rad(-5.329), math.rad(-9.167), math.rad(-2.005)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.243, -0.12, 0.194) * CFrame.Angles(math.rad(-35.409), math.rad(-11.516), math.rad(-86.803)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.058, -0.078, 0.094) * CFrame.Angles(math.rad(-30.023), math.rad(22.173), math.rad(68.411)),
					},
				},
			},
		},
		[6.5] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(-0.007, -0.014, -0.005) * CFrame.Angles(math.rad(-1.432), math.rad(-0.802), math.rad(-4.985)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.102, 0.079, -0.034) * CFrame.Angles(math.rad(-6.016), math.rad(10.886), math.rad(3.667)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.099, 0.016, 0.021) * CFrame.Angles(math.rad(-2.235), math.rad(-2.063), math.rad(-1.261)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.072, -0.213, 0.073) * CFrame.Angles(math.rad(-8.824), math.rad(3.323), math.rad(-105.195)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.04, -0.056, 0.041) * CFrame.Angles(math.rad(-16.616), math.rad(2.636), math.rad(81.99)),
					},
				},
			},
		},
	}
}

local number=0

LastTimeSetTotal=0
local savec0 = {}


GetAnimCF = function(limb,Time)
	
local GA = nil
	coroutine.resume(coroutine.create(function()

if limb == "Torso" then
GA = Anim.Keyframes[Time]["HumanoidRootPart"]["Torso"].CFrame
else
GA = Anim.Keyframes[Time]["HumanoidRootPart"]["Torso"][""..limb].CFrame

end
end))
return GA
end



local model = nil
if owner ~= nil then 
model = owner.Character
else
model = game:GetService("Players").localPlayer.Character
end
function GatherAllInstances(Parent)
	local Instances = {}
	local function GatherInstances(Parent)
		for i, v in pairs(Parent:GetChildren()) do
			GatherInstances(v)
			table.insert(Instances, v)
		end
	end
	GatherInstances(Parent)
	return Instances
end




for i, v in pairs(GatherAllInstances(model)) do
if v:IsA("BasePart") then 
for i, v2 in pairs(GatherAllInstances(model)) do
	if v2:IsA("Motor6D") and  v2.Part1.Name == v.Name then 

local saveCF = v2.C0
table.insert(savec0,{v2.Name,saveCF})

end
end
end end




RunAnim = function(Time)





	
local speed = Time-LastTimeSetTotal

speed = speed*AnimationSpeed
LastTimeSetTotal = Time	
	
	
	
	local doing = true
	
	coroutine.resume(coroutine.create(function()
for i, v in pairs(GatherAllInstances(model)) do
if v:IsA("BasePart") then 
for i, v2 in pairs(GatherAllInstances(model)) do
	if v2:IsA("Motor6D") and  v2.Part1.Name == v.Name then 

--print(v.Name)
local GotAnim = GetAnimCF(v.Name,Time)
--print(GotAnim)
local saveCF = nil
	 for i,v3 in pairs(savec0) do 
		if v2.name == v3[1] then
			saveCF = v3[2]
		end
	end

--print(saveCF)

if GotAnim ~= nil and saveCF ~= nil then
	
	
	coroutine.resume(coroutine.create(function()
while doing == true do
	swait()
	v2.C0 = v2.C0:lerp(saveCF*GotAnim,SmoothTime *speed)
end

end))
--v2.C0 = saveCF*GotAnim 


end

	end

end
end end


end))
wait(speed)
doing = false
end
while true do
RunAnim(0)	
RunAnim(0.1)	
RunAnim(0.2)
RunAnim(0.3)
RunAnim(0.4)
RunAnim(0.5)
RunAnim(0.6)
RunAnim(0.7)
RunAnim(0.8)
RunAnim(0.9)
RunAnim(1)
-----------
RunAnim(1.1)	
RunAnim(1.15)
RunAnim(1.2)	
RunAnim(1.3)
RunAnim(1.35)
RunAnim(1.4)
RunAnim(1.45)
RunAnim(1.5)
RunAnim(1.6)
RunAnim(1.7)
RunAnim(1.8)
RunAnim(1.9)
RunAnim(2)
-----------

RunAnim(2.1)	
RunAnim(2.2)
RunAnim(2.3)
RunAnim(2.4)
RunAnim(2.5)
RunAnim(2.6)
RunAnim(2.7)
RunAnim(2.8)
RunAnim(2.9)
RunAnim(3)
-----------

RunAnim(3.1)	
RunAnim(3.2)
RunAnim(3.3)
RunAnim(3.35)
RunAnim(3.4)
RunAnim(3.5)
RunAnim(3.6)
RunAnim(3.7)
RunAnim(3.8)
RunAnim(3.9)
RunAnim(4)
-----------

RunAnim(4.1)	
RunAnim(4.2)
RunAnim(4.3)
RunAnim(4.4)
RunAnim(4.5)
RunAnim(4.6)
RunAnim(4.7)
RunAnim(4.8)
RunAnim(4.9)
RunAnim(5)
-----------

RunAnim(5.1)	
RunAnim(5.2)
RunAnim(5.3)
RunAnim(5.4)
RunAnim(5.5)
RunAnim(5.6)
RunAnim(5.7)
RunAnim(5.8)
RunAnim(5.9)
RunAnim(6)
-----------
	
RunAnim(6.1)	
RunAnim(6.2)
RunAnim(6.3)
RunAnim(6.4)
RunAnim(6.5)
LastTimeSetTotal = .1
	Humanoid.MaxHealth = "inf"
	Humanoid.Health = "inf"
 	sick.SoundId = "rbxassetid://1881895904"
	sick.Looped = true
	sick.Pitch = 1
	sick.Volume = 10
	sick:Resume()
	sick.Parent = Torso
         refit()
end
--print(Anim.Keyframes[number]["HumanoidRootPart"]["Torso"]["Left Leg"].CFrame)