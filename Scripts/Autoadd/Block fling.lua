game.Players.LocalPlayer.Character["Hat1"].Handle.Mesh:Destroy()
game.Players.LocalPlayer.Character["Pal Hair"].Handle.Mesh:Destroy() --Pink Hair
game.Players.LocalPlayer.Character["Pink Hair"].Handle.Mesh:Destroy()
game.Players.LocalPlayer.Character["Kate Hair"].Handle.Mesh:Destroy() --LavanderHair
game.Players.LocalPlayer.Character["LavanderHair"].Handle.Mesh:Destroy()
game.Players.LocalPlayer.Character["Robloxclassicred"].Handle.Mesh:Destroy()
game.Players.LocalPlayer.Character["VANS_Umbrella"].Handle.Mesh:Destroy()
 --VarietyShades02
 --TennisBall

local c = game.Players.LocalPlayer.Character
for i, v in pairs({"Right Arm", "Left Arm"}) do
    local arm = c[v]
    arm.Parent = nil
    arm.Transparency = 1
    arm.Parent = c
end

local c = game.Players.LocalPlayer.Character
for i, v in pairs({"Right Leg", "Left Leg"}) do
    local Leg = c[v]
    Leg.Parent = nil
    Leg.Transparency = 1
    Leg.Parent = c
end

local v3_net, v3_808 = Vector3.new(0, 25.1, 0), Vector3.new(8, 0, 8)
		local function getNetlessVelocity(realPartVelocity)
			local mag = realPartVelocity.Magnitude
			if mag > 1 then
				local unit = realPartVelocity.Unit
				if (unit.Y > 0.25) or (unit.Y < -0.75) then
					return unit * (25.1 / unit.Y)
				end
			end 
			return v3_net + realPartVelocity * v3_808
		end
		local simradius = "shp" --simulation radius (net bypass) method
--simulation radius (net bypass) method
--"shp" - sethiddenproperty
--"ssr" - setsimulationradius
--false - disable
local antiragdoll = true --removes hingeConstraints and ballSocketConstraints from your character
local newanimate = false --disables the animate script and enables after reanimation
local discharscripts = true --disables all localScripts parented to your character before reanimation
local R15toR6 = true --tries to convert your character to r6 if its r15
local hatcollide = true --makes hats cancollide (only method 0)
local humState16 = true --enables collisions for limbs before the humanoid dies (using hum:ChangeState)
local addtools = false --puts all tools from backpack to character and lets you hold them after reanimation
local hedafterneck = false --disable aligns for head and enable after neck is removed
local loadtime = game:GetService("Players").RespawnTime + 0.5 --anti respawn delay
local method = 0 --reanimation method
--methods:
--0 - breakJoints (takes [loadtime] seconds to laod)
--1 - limbs
--2 - limbs + anti respawn
--3 - limbs + breakJoints after [loadtime] seconds
--4 - remove humanoid + breakJoints
--5 - remove humanoid + limbs
local alignmode = 3 --AlignPosition mode
--modes:
--1 - AlignPosition rigidity enabled true
--2 - 2 AlignPositions rigidity enabled both true and false
--3 - AlignPosition rigidity enabled false

healthHide = healthHide and ((method == 0) or (method == 2) or (method == 000)) and gp(c, "Head", "BasePart")

local lp = game:GetService("Players").LocalPlayer
local rs = game:GetService("RunService")
local stepped = rs.Stepped
local heartbeat = rs.Heartbeat
local renderstepped = rs.RenderStepped
local sg = game:GetService("StarterGui")
local ws = game:GetService("Workspace")
local cf = CFrame.new
local v3 = Vector3.new
local v3_0 = v3(0, 0, 0)
local inf = math.huge

local c = lp.Character

if not (c and c.Parent) then
	return
end

c.Destroying:Connect(function()
	c = nil
end)

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

local function align(Part0, Part1)
	Part0.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0.0001, 0.0001, 0.0001, 0.0001)

	local att0 = Instance.new("Attachment", Part0)
	att0.Orientation = v3_0
	att0.Position = v3_0
	att0.Name = "att0_" .. Part0.Name
	local att1 = Instance.new("Attachment", Part1)
	att1.Orientation = v3_0
	att1.Position = v3_0
	att1.Name = "att1_" .. Part1.Name

	if (alignmode == 1) or (alignmode == 2) then
		local ape = Instance.new("AlignPosition", att0)
		ape.ApplyAtCenterOfMass = false
		ape.MaxForce = inf
		ape.MaxVelocity = inf
		ape.ReactionForceEnabled = false
		ape.Responsiveness = 200
		ape.Attachment1 = att1
		ape.Attachment0 = att0
		ape.Name = "AlignPositionRtrue"
		ape.RigidityEnabled = true
	end

	if (alignmode == 2) or (alignmode == 3) then
		local apd = Instance.new("AlignPosition", att0)
		apd.ApplyAtCenterOfMass = false
		apd.MaxForce = inf
		apd.MaxVelocity = inf
		apd.ReactionForceEnabled = false
		apd.Responsiveness = 200
		apd.Attachment1 = att1
		apd.Attachment0 = att0
		apd.Name = "AlignPositionRfalse"
		apd.RigidityEnabled = false
	end

	local ao = Instance.new("AlignOrientation", att0)
	ao.MaxAngularVelocity = inf
	ao.MaxTorque = inf
	ao.PrimaryAxisOnly = false
	ao.ReactionTorqueEnabled = false
	ao.Responsiveness = 200
	ao.Attachment1 = att1
	ao.Attachment0 = att0
	ao.RigidityEnabled = false

	if type(getNetlessVelocity) == "function" then
	    local realVelocity = v3_0
        local steppedcon = stepped:Connect(function()
            Part0.Velocity = realVelocity
        end)
        local heartbeatcon = heartbeat:Connect(function()
            realVelocity = Part0.Velocity
            Part0.Velocity = getNetlessVelocity(realVelocity)
        end)
        Part0.Destroying:Connect(function()
            Part0 = nil
            steppedcon:Disconnect()
            heartbeatcon:Disconnect()
        end)
    end
end

local function respawnrequest()
	local ccfr = ws.CurrentCamera.CFrame
	local c = lp.Character
	lp.Character = nil
	lp.Character = c
	local con = nil
	con = ws.CurrentCamera.Changed:Connect(function(prop)
	    if (prop ~= "Parent") and (prop ~= "CFrame") then
	        return
	    end
	    ws.CurrentCamera.CFrame = ccfr
	    con:Disconnect()
    end)
end

local destroyhum = (method == 4) or (method == 5)
local breakjoints = (method == 0) or (method == 4)
local antirespawn = (method == 0) or (method == 2) or (method == 3)

hatcollide = hatcollide and (method == 0)

addtools = addtools and gp(lp, "Backpack", "Backpack")

local fenv = getfenv()
local shp = fenv.sethiddenproperty or fenv.set_hidden_property or fenv.set_hidden_prop or fenv.sethiddenprop
local ssr = fenv.setsimulationradius or fenv.set_simulation_radius or fenv.set_sim_radius or fenv.setsimradius or fenv.set_simulation_rad or fenv.setsimulationrad

if shp and (simradius == "shp") then
	spawn(function()
		while c and heartbeat:Wait() do
			shp(lp, "SimulationRadius", inf)
		end
	end)
elseif ssr and (simradius == "ssr") then
	spawn(function()
		while c and heartbeat:Wait() do
			ssr(inf)
		end
	end)
end

antiragdoll = antiragdoll and function(v)
	if v:IsA("HingeConstraint") or v:IsA("BallSocketConstraint") then
		v.Parent = nil
	end
end

if antiragdoll then
	for i, v in pairs(c:GetDescendants()) do
		antiragdoll(v)
	end
	c.DescendantAdded:Connect(antiragdoll)
end

if antirespawn then
	respawnrequest()
end

if method == 0 then
	wait(loadtime)
	if not c then
		return
	end
end

if discharscripts then
	for i, v in pairs(c:GetChildren()) do
		if v:IsA("LocalScript") then
			v.Disabled = true
		end
	end
elseif newanimate then
	local animate = gp(c, "Animate", "LocalScript")
	if animate and (not animate.Disabled) then
		animate.Disabled = true
	else
		newanimate = false
	end
end

if addtools then
	for i, v in pairs(addtools:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = c
		end
	end
end

pcall(function()
	settings().Physics.AllowSleep = false
	settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
end)

local OLDscripts = {}

for i, v in pairs(c:GetDescendants()) do
	if v.ClassName == "Script" then
		table.insert(OLDscripts, v)
	end
end

local scriptNames = {}

for i, v in pairs(c:GetDescendants()) do
	if v:IsA("BasePart") then
		local newName = tostring(i)
		local exists = true
		while exists do
			exists = false
			for i, v in pairs(OLDscripts) do
				if v.Name == newName then
					exists = true
				end
			end
			if exists then
				newName = newName .. "_"    
			end
		end
		table.insert(scriptNames, newName)
		Instance.new("Script", v).Name = newName
	end
end

c.Archivable = true
local hum = c:FindFirstChildOfClass("Humanoid")
if hum then
	for i, v in pairs(hum:GetPlayingAnimationTracks()) do
		v:Stop()
	end
end
local cl = c:Clone()
if hum and humState16 then
    hum:ChangeState(Enum.HumanoidStateType.Physics)
    if destroyhum then
        wait(1.6)
    end
end
if hum and hum.Parent and destroyhum then
    hum:Destroy()
end

if not c then
    return
end

local head = gp(c, "Head", "BasePart")
local torso = gp(c, "Torso", "BasePart") or gp(c, "UpperTorso", "BasePart")
local root = gp(c, "HumanoidRootPart", "BasePart")
if hatcollide and c:FindFirstChildOfClass("Accessory") then
    local anything = c:FindFirstChildOfClass("BodyColors") or gp(c, "Health", "Script")
    if not (torso and root and anything) then
        return
    end
    torso:Destroy()
    root:Destroy()
    if shp then
        for i,v in pairs(c:GetChildren()) do
            if v:IsA("Accessory") then
                shp(v, "BackendAccoutrementState", 0)
            end 
        end
    end
    anything:Destroy()
    if head then
       head:Destroy()
    end
end

for i, v in pairs(cl:GetDescendants()) do
	if v:IsA("BasePart") then
		v.Transparency = 1
		v.Anchored = false
	end
end

local model = Instance.new("Model", c)
model.Name = model.ClassName

model.Destroying:Connect(function()
	model = nil
end)

for i, v in pairs(c:GetChildren()) do
	if v ~= model then
		if addtools and v:IsA("Tool") then
			for i1, v1 in pairs(v:GetDescendants()) do
				if v1 and v1.Parent and v1:IsA("BasePart") then
					local bv = Instance.new("BodyVelocity", v1)
					bv.Velocity = v3_0
					bv.MaxForce = v3(1000, 1000, 1000)
					bv.P = 1250
					bv.Name = "bv_" .. v.Name
				end
			end
		end
		v.Parent = model
	end
end

if breakjoints then
	model:BreakJoints()
else
	if head and torso then
		for i, v in pairs(model:GetDescendants()) do
			if v:IsA("Weld") or v:IsA("Snap") or v:IsA("Glue") or v:IsA("Motor") or v:IsA("Motor6D") then
				local save = false
				if (v.Part0 == torso) and (v.Part1 == head) then
					save = true
				end
				if (v.Part0 == head) and (v.Part1 == torso) then
					save = true
				end
				if save then
					if hedafterneck then
						hedafterneck = v
					end
				else
					v:Destroy()
				end
			end
		end
	end
	if method == 3 then
		spawn(function()
			wait(loadtime)
			if model then
				model:BreakJoints()
			end
		end)
	end
end

cl.Parent = c
for i, v in pairs(cl:GetChildren()) do
	v.Parent = c
end
cl:Destroy()

local modelDes = {}
for i, v in pairs(model:GetDescendants()) do
	if v:IsA("BasePart") then
		i = tostring(i)
		v.Destroying:Connect(function()
			modelDes[i] = nil
		end)
		modelDes[i] = v
	end
end
local modelcolcon = nil
local function modelcolf()
	if model then
		for i, v in pairs(modelDes) do
			v.CanCollide = false
		end
	else
		modelcolcon:Disconnect()
	end
end
modelcolcon = stepped:Connect(modelcolf)
modelcolf()

for i, scr in pairs(model:GetDescendants()) do
	if (scr.ClassName == "Script") and table.find(scriptNames, scr.Name) then
		local Part0 = scr.Parent
		if Part0:IsA("BasePart") then
			for i1, scr1 in pairs(c:GetDescendants()) do
				if (scr1.ClassName == "Script") and (scr1.Name == scr.Name) and (not scr1:IsDescendantOf(model)) then
					local Part1 = scr1.Parent
					if (Part1.ClassName == Part0.ClassName) and (Part1.Name == Part0.Name) then
						align(Part0, Part1)
						break
					end
				end
			end
		end
	end
end

if (typeof(hedafterneck) == "Instance") and head then
	local aligns = {}
	local con = nil
	con = hedafterneck.Changed:Connect(function(prop)
	    if (prop == "Parent") and not hedafterneck.Parent then
	        con:Disconnect()
    		for i, v in pairs(aligns) do
    			v.Enabled = true
    		end
		end
	end)
	for i, v in pairs(head:GetDescendants()) do
		if v:IsA("AlignPosition") or v:IsA("AlignOrientation") then
			i = tostring(i)
			aligns[i] = v
			v.Destroying:Connect(function()
			    aligns[i] = nil
			end)
			v.Enabled = false
		end
	end
end

for i, v in pairs(c:GetDescendants()) do
	if v and v.Parent then
		if v.ClassName == "Script" then
			if table.find(scriptNames, v.Name) then
				v:Destroy()
			end
		elseif not v:IsDescendantOf(model) then
			if v:IsA("Decal") then
				v.Transparency = 1
			elseif v:IsA("ForceField") then
				v.Visible = false
			elseif v:IsA("Sound") then
				v.Playing = false
			elseif v:IsA("BillboardGui") or v:IsA("SurfaceGui") or v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Smoke") or v:IsA("Sparkles") then
				v.Enabled = false
			end
		end
	end
end

if newanimate then
	local animate = gp(c, "Animate", "LocalScript")
	if animate then
		animate.Disabled = false
	end
end

if addtools then
	for i, v in pairs(c:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = addtools
		end
	end
end

local hum0 = model:FindFirstChildOfClass("Humanoid")
if hum0 then
    hum0.Destroying:Connect(function()
        hum0 = nil
    end)
end

local hum1 = c:FindFirstChildOfClass("Humanoid")
if hum1 then
    hum1.Destroying:Connect(function()
        hum1 = nil
    end)
end

if hum1 then
	ws.CurrentCamera.CameraSubject = hum1
	local camSubCon = nil
	local function camSubFunc()
		camSubCon:Disconnect()
		if c and hum1 then
			ws.CurrentCamera.CameraSubject = hum1
		end
	end
	camSubCon = renderstepped:Connect(camSubFunc)
	if hum0 then
		hum0.Changed:Connect(function(prop)
			if hum1 and (prop == "Jump") then
				hum1.Jump = hum0.Jump
			end
		end)
	else
		respawnrequest()
	end
end

local rb = Instance.new("BindableEvent", c)
rb.Event:Connect(function()
	rb:Destroy()
	sg:SetCore("ResetButtonCallback", true)
	if destroyhum then
		c:BreakJoints()
		return
	end
	if hum0 and (hum0.Health > 0) then
		model:BreakJoints()
		hum0.Health = 0
	end
	if antirespawn then
	    respawnrequest()
	end
end)
sg:SetCore("ResetButtonCallback", rb)

spawn(function()
	while c do
		if hum0 and hum1 then
			hum1.Jump = hum0.Jump
		end
		wait()
	end
	sg:SetCore("ResetButtonCallback", true)
end)

R15toR6 = R15toR6 and hum1 and (hum1.RigType == Enum.HumanoidRigType.R15)
if R15toR6 then
    local part = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "UpperTorso", "BasePart") or gp(c, "LowerTorso", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
	if part then
	    local cfr = part.CFrame
		local R6parts = { 
			head = {
				Name = "Head",
				Size = v3(2, 1, 1),
				R15 = {
					Head = 0
				}
			},
			torso = {
				Name = "Torso",
				Size = v3(2, 2, 1),
				R15 = {
					UpperTorso = 0.2,
					LowerTorso = -100
				}
			},
			root = {
				Name = "HumanoidRootPart",
				Size = v3(2, 2, 1),
				R15 = {
					HumanoidRootPart = 0
				}
			},
			leftArm = {
				Name = "Left Arm",
				Size = v3(1, 2, 1),
				R15 = {
					LeftHand = -0.73,
					LeftLowerArm = -0.2,
					LeftUpperArm = 0.4
				}
			},
			rightArm = {
				Name = "Right Arm",
				Size = v3(1, 2, 1),
				R15 = {
					RightHand = -0.73,
					RightLowerArm = -0.2,
					RightUpperArm = 0.4
				}
			},
			leftLeg = {
				Name = "Left Leg",
				Size = v3(1, 2, 1),
				R15 = {
					LeftFoot = -0.73,
					LeftLowerLeg = -0.15,
					LeftUpperLeg = 0.6
				}
			},
			rightLeg = {
				Name = "Right Leg",
				Size = v3(1, 2, 1),
				R15 = {
					RightFoot = -0.73,
					RightLowerLeg = -0.15,
					RightUpperLeg = 0.6
				}
			}
		}
		for i, v in pairs(c:GetChildren()) do
			if v:IsA("BasePart") then
				for i1, v1 in pairs(v:GetChildren()) do
					if v1:IsA("Motor6D") then
						v1.Part0 = nil
					end
				end
			end
		end
		part.Archivable = true
		for i, v in pairs(R6parts) do
			local part = part:Clone()
			part:ClearAllChildren()
			part.Name = v.Name
			part.Size = v.Size
			part.CFrame = cfr
			part.Anchored = false
			part.Transparency = 1
			part.CanCollide = false
			for i1, v1 in pairs(v.R15) do
				local R15part = gp(c, i1, "BasePart")
				local att = gp(R15part, "att1_" .. i1, "Attachment")
				if R15part then
					local weld = Instance.new("Weld", R15part)
					weld.Name = "Weld_" .. i1
					weld.Part0 = part
					weld.Part1 = R15part
					weld.C0 = cf(0, v1, 0)
					weld.C1 = cf(0, 0, 0)
					R15part.Massless = true
					R15part.Name = "R15_" .. i1
					R15part.Parent = part
					if att then
						att.Parent = part
						att.Position = v3(0, v1, 0)
					end
				end
			end
			part.Parent = c
			R6parts[i] = part
		end
		local R6joints = {
			neck = {
				Parent = R6parts.torso,
				Name = "Neck",
				Part0 = R6parts.torso,
				Part1 = R6parts.head,
				C0 = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
				C1 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
			},
			rootJoint = {
				Parent = R6parts.root,
				Name = "RootJoint" ,
				Part0 = R6parts.root,
				Part1 = R6parts.torso,
				C0 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
				C1 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
			},
			rightShoulder = {
				Parent = R6parts.torso,
				Name = "Right Shoulder",
				Part0 = R6parts.torso,
				Part1 = R6parts.rightArm,
				C0 = cf(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
				C1 = cf(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			},
			leftShoulder = {
				Parent = R6parts.torso,
				Name = "Left Shoulder",
				Part0 = R6parts.torso,
				Part1 = R6parts.leftArm,
				C0 = cf(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
				C1 = cf(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			},
			rightHip = {
				Parent = R6parts.torso,
				Name = "Right Hip",
				Part0 = R6parts.torso,
				Part1 = R6parts.rightLeg,
				C0 = cf(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
				C1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			},
			leftHip = {
				Parent = R6parts.torso,
				Name = "Left Hip" ,
				Part0 = R6parts.torso,
				Part1 = R6parts.leftLeg,
				C0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
				C1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			}
		}
		for i, v in pairs(R6joints) do
			local joint = Instance.new("Motor6D")
			for prop, val in pairs(v) do
				joint[prop] = val
			end
			R6joints[i] = joint
		end
		hum1.RigType = Enum.HumanoidRigType.R6
		hum1.HipHeight = 0
	end
end



--find rig joints

local function fakemotor()
    return {C0=cf(), C1=cf()}
end

local torso = gp(c, "Torso", "BasePart")
local root = gp(c, "HumanoidRootPart", "BasePart")

local neck = gp(torso, "Neck", "Motor6D")
neck = neck or fakemotor()

local rootJoint = gp(root, "RootJoint", "Motor6D")
rootJoint = rootJoint or fakemotor()

local leftShoulder = gp(torso, "Left Shoulder", "Motor6D")
leftShoulder = leftShoulder or fakemotor()

local rightShoulder = gp(torso, "Right Shoulder", "Motor6D")
rightShoulder = rightShoulder or fakemotor()

local leftHip = gp(torso, "Left Hip", "Motor6D")
leftHip = leftHip or fakemotor()

local rightHip = gp(torso, "Right Hip", "Motor6D")
rightHip = rightHip or fakemotor()

--120 fps

local fps = 0
local event = Instance.new("BindableEvent", c)
event.Name = "120 fps"
local floor = math.floor
fps = 1 / fps
local tf = 0
local con = nil
con = game:GetService("RunService").RenderStepped:Connect(function(s)
	if not c then
		con:Disconnect()
		return
	end
    --tf += s
	if tf >= fps then
		for i=1, floor(tf / fps) do
			event:Fire(c)
		end
		tf = 0
	end
end)
local event = event.Event

local hedrot = v3(0, 5, 0)

local uis = game:GetService("UserInputService")
local function isPressed(key)
    return (not uis:GetFocusedTextBox()) and uis:IsKeyDown(Enum.KeyCode[key])
end

local biggesthandle = nil
for i, v in pairs(c:GetChildren()) do
    if v:IsA("Accessory") then
        local handle = gp(v, "Handle", "BasePart")
        if biggesthandle then
            if biggesthandle.Size.Magnitude < handle.Size.Magnitude then
                biggesthandle = handle
            end
       else
            biggesthandle = gp(v, "Handle", "BasePart")
        end
    end
end

if not biggesthandle then
    return
end

local handle1 = gp(gp(model, biggesthandle.Parent.Name, "Accessory"), "Handle", "BasePart")
if not handle1 then
    return
end

handle1.Destroying:Connect(function()
    handle1 = nil
end)
biggesthandle.Destroying:Connect(function()
    biggesthandle = nil
end)

biggesthandle:BreakJoints()
biggesthandle.Anchored = true

for i, v in pairs(handle1:GetDescendants()) do
    if v:IsA("AlignOrientation") then
        v.Enabled = false
   end
end

local mouse = lp:GetMouse()
local fling = false
mouse.Button1Down:Connect(function()
    fling = true
end)
mouse.Button1Up:Connect(function()
    fling = false
end)
local function doForSignal(signal, vel)
    spawn(function()
        while signal:Wait() and c and handle1 and biggesthandle do
            if fling and mouse.Target then
                biggesthandle.Position = mouse.Hit.Position
            end
            handle1.RotVelocity = vel
        end
    end)
end
doForSignal(stepped, v3(1, 1, 1))
doForSignal(renderstepped, v3(1, 1, 1))
doForSignal(heartbeat, v3(20000, 20000, 20000)) --https://web.roblox.com/catalog/63690008/Pal-Hair

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

local hat2 = gp(cplayer, "Hat1", "Accessory")
local handle2 = gp(hat2, "Handle", "BasePart")
local att2 = gp(handle2, "att1_Handle", "Attachment")
att2.Parent = cplayer["Torso"]
att2.Position = Vector3.new(0.5, -0, 0)
att2.Rotation = Vector3.new(90, 0, 0)

local hat2 = gp(cplayer, "Pal Hair", "Accessory")
local handle2 = gp(hat2, "Handle", "BasePart")
local att2 = gp(handle2, "att1_Handle", "Attachment")
att2.Parent = cplayer["Torso"]
att2.Position = Vector3.new(-0.5, -0, 0)
att2.Rotation = Vector3.new(90, 0, 0)

local hat2 = gp(cplayer, "Pink Hair", "Accessory")
local handle2 = gp(hat2, "Handle", "BasePart")
local att2 = gp(handle2, "att1_Handle", "Attachment")
att2.Parent = cplayer["Left Arm"]
att2.Position = Vector3.new(0, -0, 0)
att2.Rotation = Vector3.new(90, 0, 0)

local hat2 = gp(cplayer, "Kate Hair", "Accessory")
local handle2 = gp(hat2, "Handle", "BasePart")
local att2 = gp(handle2, "att1_Handle", "Attachment")
att2.Parent = cplayer["Right Arm"]
att2.Position = Vector3.new(-0, -0, 0)
att2.Rotation = Vector3.new(90, 0, 0) --LavanderHair

local hat2 = gp(cplayer, "LavanderHair", "Accessory")
local handle2 = gp(hat2, "Handle", "BasePart")
local att2 = gp(handle2, "att1_Handle", "Attachment")
att2.Parent = cplayer["Right Leg"]
att2.Position = Vector3.new(0, 0, 0) --Robloxclassicred
att2.Rotation = Vector3.new(90, 0, 0)

local hat2 = gp(cplayer, "Robloxclassicred", "Accessory")
local handle2 = gp(hat2, "Handle", "BasePart")
local att2 = gp(handle2, "att1_Handle", "Attachment")
att2.Parent = cplayer["Left Leg"]
att2.Position = Vector3.new(-0, 0, 0) 
att2.Rotation = Vector3.new(90, 0, 0)  



-- Synapse Decompiler
-- Purchase Here: https://brack4712.xyz/synapse/purchase/

wait(0.2)
Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character.HumanoidRootPart
Torso = Character.Torso
Head = Character.Head
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart.RootJoint
Neck = Torso.Neck
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local sick = Instance.new("Sound", Character)
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
Animation_Speed = 3
Frame_Speed = 0.016666666666666666
local Speed = 16
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
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local VALUE1 = false
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "Weapon GUI"
script.Parent = WEAPONGUI
Character.Archivable = true
local SHADOW = Character:Clone()
SHADOW.Parent = nil
RootPart2 = SHADOW.HumanoidRootPart


game:GetService("Players").LocalPlayer.Character["VANS_Umbrella"].Handle.att1_Handle.Parent = SHADOW.HumanoidRootPart
SHADOW.HumanoidRootPart.att1_Handle.Rotation = Vector3.new(-0,0,0)
SHADOW.HumanoidRootPart.att1_Handle.Position = Vector3.new(-0,0,0)


Torso2 = SHADOW.Torso



Head2 = SHADOW.Head
RightArm2 = SHADOW["Right Arm"]
LeftArm2 = SHADOW["Left Arm"]
RightLeg2 = SHADOW["Right Leg"]
LeftLeg2 = SHADOW["Left Leg"]
RootJoint2 = RootPart2.RootJoint



Neck2 = Torso2.Neck
RightShoulder2 = Torso2["Right Shoulder"]
LeftShoulder2 = Torso2["Left Shoulder"]
RightHip2 = Torso2["Right Hip"]
LeftHip2 = Torso2["Left Hip"]
SHADOW.PrimaryPart = RootPart2
Character.Archivable = false
SHADOW.Name = Player.Name .. "'s War"
local Effects = IT("Folder", Character)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local UNANCHOR = true
local ROAR = 528589078
local E = 1.32
local PLAYSONG = true
local REPLAY = false
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"
script:WaitForChild("ArtificialHB")
frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()

z = Instance.new("Sound", char)
z.SoundId = "rbxassetid://7029031068"--242463565
z.Looped = true
z.Pitch = 1
z.Volume = 1.5
--wait(.01)
z:Play()


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
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id=" .. MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id=" .. TEXTUREID
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
local weldBetween = function(a, b)
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
		if m00 < m11 then
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
			local recip = 0.5 / s
			return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
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
	local startInterp, finishInterp
	if cosTheta >= 1.0E-4 then
		if 1 - cosTheta > 1.0E-4 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	elseif 1 + cosTheta > 1.0E-4 then
		local theta = ACOS(-cosTheta)
		local invSinTheta = 1 / SIN(theta)
		startInterp = SIN((t - 1) * theta) * invSinTheta
		finishInterp = SIN(t * theta) * invSinTheta
	else
		startInterp = t - 1
		finishInterp = t
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function Clerp(a, b, t)
	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	}
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
	local NEWSOUND
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.EmitterSize = VOLUME * 5
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id=" .. ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat
				wait(1)
			until NEWSOUND.Playing == false
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end
function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
function WACKYEFFECT(Table)
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
	local MATERIAL = Table.Material or "Neon"
	local COLOR = Table.Color or C3(1, 1, 1)
	local TIME = Table.Time or 45
	local SOUNDID = Table.SoundID or nil
	local SOUNDPITCH = Table.SoundPitch or nil
	local SOUNDVOLUME = Table.SoundVolume or nil
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1, 1, 1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
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
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0, 0, 0))
		end
		if MSH ~= nil then
			local MOVESPEED
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude / TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
			else
				EFFECT.CFrame = CFRAME
			end
			for LOOP = 1, TIME + 1 do
				Swait()
				MSH.Scale = MSH.Scale - GROWTH / TIME
				if TYPE == "Wave" then
					MSH.Offset = VT(0, 0, -MSH.Scale.X / 8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				else
					EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
				end
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CF(EFFECT.Position, MOVEDIRECTION) * CF(0, 0, -MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat
					Swait()
				until SOUND.Playing == false
				EFFECT:remove()
			end
		elseif PLAYSSOUND == false then
			EFFECT:remove()
		else
			repeat
				Swait()
			until SOUND.Playing == false
			EFFECT:remove()
		end
	end))
end
function MakeForm(PART, TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh", PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh", PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh", PART)
		MSH.MeshType = "Wedge"
	end
end
Debris = game:GetService("Debris")
function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos, EndPos).lookVector
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end
function GetRoot(MODEL, ROOT)
	if ROOT == true then
		return MODEL:FindFirstChild("HumanoidRootPart") or MODEL:FindFirstChild("Torso") or MODEL:FindFirstChild("UpperTorso")
	else
		return MODEL:FindFirstChild("Torso") or MODEL:FindFirstChild("UpperTorso")
	end
end
function FacialShadow()
	local SHADOWS = {}
	for i = 1, 16 do
		local FACE = CreatePart(3, Effects, "Fabric", 0, 0 + (i - 1) / 16.2, "Dark stone grey", "FaceGradient", VT(1.01, 0.65, 1.01), false)
		FACE.Color = C3(0, 0, 0)
		Head:FindFirstChildOfClass("SpecialMesh"):Clone().Parent = FACE
		CreateWeldOrSnapOrMotor("Weld", Head, Head, FACE, CF(0, 0.45 - (i - 1) / 25, 0), CF(0, 0, 0))
		table.insert(SHADOWS, FACE)
	end
	local function UNDO()
		for i = 1, #SHADOWS do
			SHADOWS[i]:remove()
		end
	end
	return UNDO
end
function CreateFlyingDebree(FLOOR, POSITION, AMOUNT, BLOCKSIZE, SWAIT, STRENGTH)
	if FLOOR ~= nil then
		for i = 1, AMOUNT do
			do
				local DEBREE = CreatePart(3, Effects, "Neon", FLOOR.Reflectance, FLOOR.Transparency, "Peal", "Debree", BLOCKSIZE, false)
				DEBREE.Material = FLOOR.Material
				DEBREE.Color = FLOOR.Color
				DEBREE.CFrame = POSITION * ANGLES(RAD(MRANDOM(-360, 360)), RAD(MRANDOM(-360, 360)), RAD(MRANDOM(-360, 360)))
				DEBREE.Velocity = VT(MRANDOM(-STRENGTH, STRENGTH), MRANDOM(-STRENGTH, STRENGTH), MRANDOM(-STRENGTH, STRENGTH))
				coroutine.resume(coroutine.create(function()
					Swait(15)
					DEBREE.Parent = workspace
					DEBREE.CanCollide = true
					Debris:AddItem(DEBREE, SWAIT)
				end))
			end
		end
	end
end
local SIZE = 0.1
RootPart2.Size = RootPart.Size * SIZE
Torso2.Size = Torso.Size * SIZE
RightArm2.Size = RightArm.Size * SIZE
RightLeg2.Size = RightLeg.Size * SIZE
LeftArm2.Size = LeftArm.Size * SIZE
LeftLeg2.Size = LeftLeg.Size * SIZE
RootJoint2.C0 = ROOTC0 * CF(0 * SIZE, 0 * SIZE, 0 * SIZE) * ANGLES(RAD(0), RAD(0), RAD(0))
RootJoint2.C1 = ROOTC0 * CF(0 * SIZE, 0 * SIZE, 0 * SIZE) * ANGLES(RAD(0), RAD(0), RAD(0))
Neck2.C0 = NECKC0 * CF(0 * SIZE, 0 * SIZE, 0 + (0 * SIZE - 1)) * ANGLES(RAD(0), RAD(0), RAD(0))
Neck2.C1 = CF(0 * SIZE, -0 * SIZE, 0 * SIZE) * ANGLES(RAD(-90), RAD(0), RAD(180))
RightShoulder2.C1 = CF(0 * SIZE, 0 * SIZE, -0 * SIZE)
LeftShoulder2.C1 = CF(0 * SIZE, 0 * SIZE, -0 * SIZE)
RightHip2.C0 = CF(0 * SIZE, -0 * SIZE, 0 * SIZE) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
LeftHip2.C0 = CF(-0 * SIZE, -0 * SIZE, 0 * SIZE) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
RightHip2.C1 = CF(0 * SIZE, 0 * SIZE, 0 * SIZE) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
LeftHip2.C1 = CF(-0 * SIZE, 0 * SIZE, 0 * SIZE) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
Head2.Size = VT(0, 0, 0) * SIZE
RootJoint2.Parent = RootPart
Neck2.Parent = Torso
RightShoulder2.Parent = Torso
LeftShoulder2.Parent = Torso
RightHip2.Parent = Torso
LeftHip2.Parent = Torso
local SKILLTEXTCOLOR = C3(1, 1, 1)
local SKILLFONT = "Fantasy"
local SKILLTEXTSIZE = 6
local ATTACKS = {
	"Z-Tremor Punch",
	"E-Meteor Impact",
	"R-Uppercut"
}
local GUIS = {}
for i = 1, #ATTACKS do
	local SKILLFRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.05, 0, 0.9 - 0.04 * i, 0), UD2(0.26, 0, 0.07, 0), C3(0, 0, 0), C3(0, 0, 0), "Skill Frame")
	local SKILLTEXT = CreateLabel(SKILLFRAME, "[" .. ATTACKS[i] .. "]", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0, "Skill text")
	SKILLTEXT.TextXAlignment = "Left"
	table.insert(GUIS, SKILLTEXT)
end
function ApplyDamage(Humanoid, Damage)
	Damage = Damage * DAMAGEMULTIPLIER
	if Humanoid.Health < 2000 then
		if Humanoid.Health - Damage > 0 then
			Humanoid.Health = Humanoid.Health - Damage
		else
			Humanoid.Parent:BreakJoints()
		end
	else
		Humanoid.Parent:BreakJoints()
	end
end
function ApplyAoE(POSITION, RANGE, MINDMG, MAXDMG, FLING, INSTAKILL)
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO and RANGE >= (TORSO.Position - POSITION).Magnitude then
					if INSTAKILL == true then
						CHILD:BreakJoints()
					else
						local DMG = MRANDOM(MINDMG, MAXDMG)
						--ApplyDamage(HUM, DMG)
					end
					if FLING > 0 then
						for _, c in pairs(CHILD:GetChildren()) do
							if c:IsA("BasePart") then
								local bv = Instance.new("BodyVelocity")
								bv.maxForce = Vector3.new(1000000000, 1000000000, 1000000000)
								bv.velocity = CF(POSITION, TORSO.Position).lookVector * FLING
								bv.Parent = c
								Debris:AddItem(bv, 0.05)
							end
						end
					end
				end
			end
		end
	end
end
function Intro()
	EQUIPPED = true
	ATTACK = true
	Rooted = true
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			RootPart2.Anchored = true
			for _, c in pairs(SHADOW:GetChildren()) do
				if c:IsA("Part") then
					c.Color = C3(1, 1, 1)
					if c ~= RootPart2 then
						c.Transparency = E + 0.15 * SIN(SINE / 12)
					end
					if c:FindFirstChildOfClass("Decal") then
						c:ClearAllChildren()
					end
					c.CanCollide = false
					c.Material = "Neon"
				else
					c:remove()
				end
			end
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-5), RAD(0), RAD(-35)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(35)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-1), RAD(0), RAD(3)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-1), RAD(0), RAD(-3)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-12), RAD(80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-60), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 1 / Animation_Speed)
		until ATTACK == false
	end))
	wait(1)
	SHADOW.Parent = Character
	SHADOW:SetPrimaryPartCFrame(RootPart.CFrame * CF(0, -20, 5))
	local HIT, POS = Raycast(RootPart.CFrame * CF(0, 0, 5).p, CF(RootPart.Position, RootPart.Position + VT(0, -1, 0)).lookVector, 4, Character)
	for i = 1, 250 do
		Swait()
		E = E - 0.0032
		local AREA = CF(POS) * ANGLES(RAD(0), RAD(MRANDOM(0, 360)), RAD(0)) * CF(0, 0, MRANDOM(2, 18))
		local TIMER = MRANDOM(20, 80)
		WACKYEFFECT({
			Time = TIMER,
			EffectType = "Sphere",
			Size = VT(1, 1, 1),
			Size2 = VT(0, 45, 0),
			Transparency = 0,
			Transparency2 = 0,
			CFrame = AREA,
			MoveToPos = AREA.p + VT(0, MRANDOM(35, 160), 0),
			RotationX = 0,
			RotationY = 0,
			RotationZ = 0,
			Material = "Neon",
			Color = C3(1, 1, 1),
			SoundID = nil,
			SoundPitch = 0.8,
			SoundVolume = 5
		})
		RootPart2.CFrame = Clerp(RootPart2.CFrame, RootPart.CFrame * CF(0, 6, 5), 0.01)
		RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(-15), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(-15), RAD(0), RAD(-45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -0.7 * SIZE, -0.5 * SIZE) * ANGLES(RAD(-25), RAD(80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -0.7 * SIZE, -0.5 * SIZE) * ANGLES(RAD(-25), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i = 0, 0.6, 0.1 / Animation_Speed do
		Swait()
		RootPart2.CFrame = Clerp(RootPart2.CFrame, RootPart.CFrame * CF(0, 6, 5), 0.1)
		RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.5 * SIZE, 0.5 * SIZE, -0.5 * SIZE) * ANGLES(RAD(140), RAD(0), RAD(-25)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, -0.5 * SIZE) * ANGLES(RAD(140), RAD(0), RAD(25)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -0.7 * SIZE, -0.5 * SIZE) * ANGLES(RAD(25), RAD(80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -0.7 * SIZE, -0.5 * SIZE) * ANGLES(RAD(25), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	CreateSound(ROAR, Head2, 10, 1, false)
	for i = 0, 4, 0.1 / Animation_Speed do
		Swait()
		RootPart2.CFrame = Clerp(RootPart2.CFrame, RootPart.CFrame * CF(0, 6, 5), 0.1)
		RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(35), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(-45), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(-45), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -0.7 * SIZE, -0.5 * SIZE) * ANGLES(RAD(-25), RAD(80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -0.7 * SIZE, -0.5 * SIZE) * ANGLES(RAD(-25), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end
function Roar(TABLE)
	ATTACK = true
	Rooted = true
	local E = false
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			RootPart2.CFrame = Clerp(RootPart2.CFrame, RootPart.CFrame * CF(0, 8, 0), 0.1)
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(35), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45, 0.65, 0) * ANGLES(RAD(170), RAD(0), RAD(-22)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.45, 0.65, 0) * ANGLES(RAD(170), RAD(0), RAD(22)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		until E == true
	end))
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.15 * SIZE, 0.5 * SIZE, -0.5 * SIZE) * ANGLES(RAD(140), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.15 * SIZE, 0.5 * SIZE, -0.5 * SIZE) * ANGLES(RAD(140), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -0.7 * SIZE, -0.5 * SIZE) * ANGLES(RAD(25), RAD(80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -0.7 * SIZE, -0.5 * SIZE) * ANGLES(RAD(25), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	CreateSound(ROAR, Effects, 4, 1, false)
	if TABLE then
		for E = 1, #TABLE do
			if TABLE[E]:FindFirstChildOfClass("Humanoid") then
				local ROOT = GetRoot(TABLE[E], true)
				if ROOT then
					--ApplyDamage(TABLE[E]:FindFirstChildOfClass("Humanoid"), MRANDOM(25, 50))
					local bv = Instance.new("BodyVelocity")
					bv.maxForce = Vector3.new(1000000000, 1000000000, 1000000000)
					bv.velocity = CF(RootPart.Position, ROOT.Position).lookVector * 150
					bv.Parent = ROOT
					Debris:AddItem(bv, 0.05)
				end
			end
		end
	end
	for i = 0, 6, 0.1 / Animation_Speed do
		Swait()
		local HITFLOOR, HITPOS = Raycast(RootPart2.Position, CF(RootPart.Position, RootPart.Position + VT(0, -1, 0)).lookVector, 25, Character)
		if HITFLOOR then
			CreateFlyingDebree(HITFLOOR, CF(HITPOS), 1, VT(1, 1, 1) * MRANDOM(7, 15) / 10, 5, 60)
		end
		WACKYEFFECT({
			EffectType = "Wave",
			Size = VT(20, 1, 20),
			Size2 = VT(25 + MRANDOM(0, 8), 7, 25 + MRANDOM(0, 8)),
			Transparency = 0.9,
			Transparency2 = 1,
			CFrame = CF(HITPOS) * ANGLES(RAD(0), RAD(MRANDOM(0, 360)), RAD(0)),
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 5,
			RotationZ = 0,
			Material = "Neon",
			Color = C3(1, 1, 1),
			SoundID = nil,
			SoundPitch = nil,
			SoundVolume = nil
		})
		RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(-35), RAD(MRANDOM(-3, 3)), RAD(MRANDOM(-3, 3))), 1 / Animation_Speed)
		RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(-45), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(-45), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -0.7 * SIZE, -0.5 * SIZE) * ANGLES(RAD(-25), RAD(80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -0.7 * SIZE, -0.5 * SIZE) * ANGLES(RAD(-25), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	E = true
	if TABLE then
		CreateSound(1535995263, Head, 10, 1, false)
		for i = 0, 2.2, 0.1 / Animation_Speed do
			Swait()
			RootPart2.CFrame = Clerp(RootPart2.CFrame, RootPart.CFrame * CF(0, 6, 5), 0.1)
			RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0.25 * COS(SINE / 12)) * ANGLES(RAD(-5 + 2 * SIN(SINE / 12)), RAD(15), RAD(35)), 0.5 / Animation_Speed)
			Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(25 - 2 * SIN(SINE / 12)), RAD(0), RAD(-35)), 0.5 / Animation_Speed)
			RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(-35 + 15 * SIN(SINE / 12)), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(-35 + 15 * SIN(SINE / 12)), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(80 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-3 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -0.3 * SIZE, -0.6 * SIZE) * ANGLES(RAD(-25), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-3 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(25), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(170), RAD(0), RAD(5)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(170), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
	end
	ATTACK = false
	Rooted = false
end
function Punch()
	ATTACK = true
	Rooted = false
	local HITS = {}
	Speed = 20
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		RootPart2.CFrame = Clerp(RootPart2.CFrame, RootPart.CFrame * CF(0, 6, 0), 0.1)
		RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(10, 10, 10) * ANGLES(RAD(-5), RAD(300), RAD(-45)), 0.5 / Animation_Speed)
		Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(5), RAD(0), RAD(45)), 0.5 / Animation_Speed)
		RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.5 * SIZE, 0.5 * SIZE, -0.25 * SIZE) * ANGLES(RAD(90), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(0), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(50 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-25)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(25)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(60), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	CreateSound(588693579, RightArm2, 6, MRANDOM(8, 12) / 10, false)
	for i = 0, 0.3, 0.1 / Animation_Speed do
		Swait()
		WACKYEFFECT({
			EffectType = "Box",
			Size = RightArm2.Size,
			Size2 = RightArm2.Size,
			Transparency = RightArm2.Transparency,
			Transparency2 = 1,
			CFrame = RightArm2.CFrame,
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 0,
			RotationZ = 0,
			Material = "Neon",
			Color = C3(1, 1, 1),
			SoundID = nil,
			SoundPitch = nil,
			SoundVolume = nil
		})
		RootPart2.CFrame = Clerp(RootPart2.CFrame, RootPart.CFrame * CF(0, -5, -50), 0.4)
		RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(45), RAD(0), RAD(45)), 0.5 / Animation_Speed)
		Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(5), RAD(0), RAD(-45)), 0.5 / Animation_Speed)
		RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.25 * SIZE, 0.5 * SIZE, -0.25 * SIZE) * ANGLES(RAD(135), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(0), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(50 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(25)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-25)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(-25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-60), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			do
				--local HUM = CHILD:FindFirstChildOfClass("Humanoid")
				if HUM then
					do
						--local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
						if TORSO and (TORSO.Position - RightArm2.CFrame * CF(0, -2, 0).p).Magnitude <= 15 then
							table.insert(HITS, CHILD)
							coroutine.resume(coroutine.create(function()
								--CreateSound(260430117, TORSO, 3, MRANDOM(8, 12) / 10, false)
								--TORSO.Anchored = true
								local POS = TORSO.CFrame
								for i = 1, 35 do
									Swait()
									--ApplyDamage(HUM, MRANDOM(1, 1))
									--TORSO.CFrame = POS * CF(MRANDOM(-2, 2) / 10, MRANDOM(-2, 2) / 10, MRANDOM(-2, 2) / 10)
								end
								TORSO.Anchored = false
							end))
						end
					end
				end
			end
		end
	end
	for i = 0, 0.2, 0.1 / Animation_Speed do
		Swait()
		WACKYEFFECT({
			EffectType = "Box",
			Size = RightArm2.Size,
			Size2 = RightArm2.Size,
			Transparency = RightArm2.Transparency,
			Transparency2 = 1,
			CFrame = RightArm2.CFrame,
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 0,
			RotationZ = 0,
			Material = "Neon",
			Color = C3(1, 1, 1),
			SoundID = nil,
			SoundPitch = nil,
			SoundVolume = nil
		})
		RootPart2.CFrame = Clerp(RootPart2.CFrame, RootPart.CFrame * CF(0, 3, -5), 0.5)
		RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(45), RAD(0), RAD(45)), 0.5 / Animation_Speed)
		Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(5), RAD(0), RAD(-45)), 0.5 / Animation_Speed)
		RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.25 * SIZE, 0.5 * SIZE, -0.25 * SIZE) * ANGLES(RAD(135), RAD(0), RAD(-70)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(0), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(50 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(25)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-25)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(-25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-60), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	if #HITS > 0 then
		for i = 0, 0.5, 0.1 / Animation_Speed do
			Swait()
			RootPart2.CFrame = Clerp(RootPart2.CFrame, RootPart.CFrame * CF(0, 3, -5), 0.5)
			RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(45), RAD(0), RAD(45)), 0.5 / Animation_Speed)
			Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(5), RAD(0), RAD(-45)), 0.5 / Animation_Speed)
			RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.25 * SIZE, 0.5 * SIZE, -0.25 * SIZE) * ANGLES(RAD(135), RAD(0), RAD(-70)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(0), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(50 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(25)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-25)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(-25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-60), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		Roar(HITS)
	end
	Speed = 16
	ATTACK = false
	Rooted = false
end
function Throw()
	ATTACK = true
	Rooted = false
	local DEBREE = {}
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		RootPart2.CFrame = Clerp(RootPart2.CFrame, RootPart.CFrame * CF(0, 1, 2), 0.2)
		RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(90), RAD(0), RAD(-25)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(90), RAD(0), RAD(25)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(80 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	local CFRAME = RootPart2.CFrame * CF(0, 50, 0)
	Humanoid.PlatformStand = true
	UNANCHOR = false
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		RootPart2.CFrame = Clerp(RootPart2.CFrame, CF(CFRAME.p, VT(Mouse.Hit.p.X, RootPart2.Position.Y, Mouse.Hit.p.Z)), 0.2)
		RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(90), RAD(0), RAD(-25)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(90), RAD(0), RAD(25)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -0.5 * SIZE, -0.5 * SIZE) * ANGLES(RAD(0), RAD(80 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RootPart.CFrame = RootPart2.CFrame * CF(0, -1, -2)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	local WELD = CreateWeldOrSnapOrMotor("Weld", RightArm2, RightArm2, Torso, CF(0, -2, 0) * ANGLES(RAD(-90), RAD(0), RAD(0)), CF(0, 0, 0))
	for i = 0, 0.4, 0.1 / Animation_Speed do
		Swait()
		RootPart2.CFrame = Clerp(RootPart2.CFrame, CF(CFRAME.p, VT(Mouse.Hit.p.X, RootPart2.Position.Y, Mouse.Hit.p.Z)), 0.2)
		RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-25), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(140), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -0.5 * SIZE, -0.5) * ANGLES(RAD(0), RAD(80 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(25), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.3) * ANGLES(RAD(90), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.35, -0.3) * ANGLES(RAD(80), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.4, -0.5) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	local IMPACT = false
	WELD:remove()
	RootPart.CFrame = CF(RightArm2.CFrame * CF(0, -3, 0).p, Mouse.Hit.p)
	CreateSound(588693579, RightArm2, 6, MRANDOM(8, 12) / 10, false)
	for i = 0, 0.4, 0.1 / Animation_Speed do
		Swait()
		WACKYEFFECT({
			EffectType = "Box",
			Size = RightArm2.Size,
			Size2 = RightArm2.Size,
			Transparency = RightArm2.Transparency,
			Transparency2 = 1,
			CFrame = RightArm2.CFrame,
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 0,
			RotationZ = 0,
			Material = "Neon",
			Color = C3(1, 1, 1),
			SoundID = nil,
			SoundPitch = nil,
			SoundVolume = nil
		})
		RootPart2.CFrame = Clerp(RootPart2.CFrame, CF(CFRAME.p, VT(Mouse.Hit.p.X, RootPart2.Position.Y, Mouse.Hit.p.Z)), 0.2)
		RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-25), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(140), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -0.5 * SIZE, -0.5) * ANGLES(RAD(0), RAD(80 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(25), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.3) * ANGLES(RAD(90), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.35, -0.3) * ANGLES(RAD(80), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.4, -0.5) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-25), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(140), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -0.5 * SIZE, -0.5) * ANGLES(RAD(0), RAD(80 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.3) * ANGLES(RAD(90), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.35, -0.3) * ANGLES(RAD(80), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.4, -0.5) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
		until IMPACT == true or ATTACK == false
	end))
	local FLOOR
	for i = 1, 80 do
		Swait()
		local HIT, POS = Raycast(RootPart.Position, RootPart.CFrame.lookVector, 6, Character)
		if HIT then
			FLOOR = HIT
			IMPACT = true
			local ORI = VT(0, RootPart.Orientation.Y, 0)
			RootPart.CFrame = CF(POS + VT(0, 3.5, 0))
			RootPart.Orientation = ORI
			RootJoint.Parent = RootPart
			break
		else
			RootPart.CFrame = RootPart.CFrame * CF(0, 0, -6)
		end
	end
	UNANCHOR = true
	if FLOOR then
		do
			local PLAYING = false
			Humanoid.PlatformStand = false
			local REPLAY = true
			local FLING = false
			coroutine.resume(coroutine.create(function()
				local ROCKS = MRANDOM(8, 13)
				for i = 1, ROCKS do
					local DEBREEPART = CreatePart(3, Effects, FLOOR.Material, 0, 0, FLOOR.BrickColor, "Debree", VT(1, 1, 1) * MRANDOM(2, 7), true)
					DEBREEPART.CFrame = CF(RootPart.Position - VT(0, 7, 0)) * ANGLES(RAD(0), RAD(360 / ROCKS * i), RAD(0)) * CF(0, 0, MRANDOM(20, 28)) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
					table.insert(DEBREE, {
						DEBREEPART,
						DEBREEPART.Orientation,
						CF(DEBREEPART.Position + VT(0, MRANDOM(3, 7) + 8, 0))
					})
				end
				repeat
					Swait()
					for E = 1, #DEBREE do
						local ROCK = DEBREE[E][1]
						ROCK.CFrame = Clerp(ROCK.CFrame, DEBREE[E][3], 0.3)
						ROCK.Orientation = DEBREE[E][2]
					end
				until FLING == true or ATTACK == false
				if FLING == false then
					for E = 1, #DEBREE do
						local ROCK = DEBREE[E][1]
						ROCK.Anchored = false
						Debris:AddItem(ROCK, 4)
					end
				else
					for E = 1, #DEBREE do
						do
							local ROCK = DEBREE[E][1]
							ROCK.CFrame = CF(ROCK.Position, Mouse.Hit.p)
							coroutine.resume(coroutine.create(function()
								for i = 1, 150 do
									Swait()
									local HIT, POS, NORMAL = Raycast(ROCK.Position, ROCK.CFrame.lookVector, 3, Character)
									if HIT then
										break
									else
										ROCK.CFrame = ROCK.CFrame * CF(0, 0, -3)
									end
								end
								ApplyAoE(ROCK.Position, 22, 10, 15, 70, false)
								WACKYEFFECT({
									EffectType = "Box",
									Size = ROCK.Size,
									Size2 = ROCK.Size * 1.2,
									Transparency = 0,
									Transparency2 = 1,
									CFrame = ROCK.CFrame,
									MoveToPos = nil,
									RotationX = 0,
									RotationY = 0,
									RotationZ = 0,
									Material = "Neon",
									Color = C3(1, 1, 1),
									SoundID = nil,
									SoundPitch = nil,
									SoundVolume = nil
								})
								WACKYEFFECT({
									Time = 15,
									EffectType = "Sphere",
									Size = ROCK.Size,
									Size2 = VT(35, 35, 35),
									Transparency = 0.8,
									Transparency2 = 1,
									CFrame = CF(ROCK.Position),
									MoveToPos = nil,
									RotationX = 0,
									RotationY = 0,
									RotationZ = 0,
									Material = "Neon",
									Color = C3(1, 1, 1),
									SoundID = 174580476,
									SoundPitch = 1,
									SoundVolume = 3
								})
								ROCK:remove()
							end))
							Swait(5)
						end
					end
				end
			end))
			local UNDO = FacialShadow()
			CreateSound(765590102, Torso, 2, MRANDOM(8, 12) / 10, false)
			KEY = Mouse.KeyDown:connect(function(NEWKEY)
				if NEWKEY == "e" then
					KEY:Disconnect()
					PLAYING = true
				end
			end)
			for i = 0, 2, 0.1 / Animation_Speed do
				Swait()
				if PLAYING == true then
					break
				end
				RootPart2.CFrame = Clerp(RootPart2.CFrame, RootPart.CFrame * CF(0, 6, 5), 0.1)
				RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0.25 * COS(SINE / 12)) * ANGLES(RAD(-5 + 2 * SIN(SINE / 12)), RAD(15), RAD(35)), 0.5 / Animation_Speed)
				Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(25 - 2 * SIN(SINE / 12)), RAD(0), RAD(-35)), 0.5 / Animation_Speed)
				RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(-35 + 15 * SIN(SINE / 12)), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
				LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(-35 + 15 * SIN(SINE / 12)), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
				RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(80 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-3 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
				LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -0.3 * SIZE, -0.6 * SIZE) * ANGLES(RAD(-25), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-3 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0.5, -0.5) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(35), RAD(0), RAD(0)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
			if KEY then
				KEY:Disconnect()
			end
			if PLAYING == true then
				for i = 0, 0.3, 0.1 / Animation_Speed do
					Swait()
					RootPart2.CFrame = Clerp(RootPart2.CFrame, RootPart.CFrame * CF(0, 6, 5), 0.1)
					RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-25)), 0.5 / Animation_Speed)
					Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(0), RAD(0), RAD(25)), 0.5 / Animation_Speed)
					RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.25 * SIZE, 0.5 * SIZE, -0.5 * SIZE) * ANGLES(RAD(0), RAD(0), RAD(-90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
					LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
					RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(80 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
					LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
					RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(3)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-3)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				FLING = true
				for i = 0, 1, 0.1 / Animation_Speed do
					Swait()
					RootPart2.CFrame = Clerp(RootPart2.CFrame, RootPart.CFrame * CF(0, 6, 5), 0.1)
					RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 2 / Animation_Speed)
					Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(0), RAD(0), RAD(-35)), 2 / Animation_Speed)
					RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
					LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
					RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(80 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
					LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
					RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(3)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-3)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
			end
			UNDO()
		end
	end
	REPLAY = false
	ATTACK = false
	Rooted = false
end
function Uppercut()
	ATTACK = true
	Rooted = false
	local HITS = {}
	Speed = 12
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		RootPart2.CFrame = Clerp(RootPart2.CFrame, RootPart.CFrame * CF(0, 6, 35), 0.1)
		RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-5), RAD(0), RAD(-45)), 0.5 / Animation_Speed)
		Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(5), RAD(0), RAD(45)), 0.5 / Animation_Speed)
		RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.5 * SIZE, 0.5 * SIZE, -0.25 * SIZE) * ANGLES(RAD(90), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(0), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(50 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-25)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(25)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(60), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	CreateSound(588693579, RightArm2, 6, MRANDOM(8, 12) / 10, false)
	for i = 0, 0.3, 0.1 / Animation_Speed do
		Swait()
		WACKYEFFECT({
			EffectType = "Box",
			Size = RightArm2.Size,
			Size2 = RightArm2.Size,
			Transparency = RightArm2.Transparency,
			Transparency2 = 1,
			CFrame = RightArm2.CFrame,
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 0,
			RotationZ = 0,
			Material = "Neon",
			Color = C3(1, 1, 1),
			SoundID = nil,
			SoundPitch = nil,
			SoundVolume = nil
		})
		RootPart2.CFrame = Clerp(RootPart2.CFrame, RootPart.CFrame * CF(0, -5, -35), 0.4)
		RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(45), RAD(0), RAD(45)), 0.5 / Animation_Speed)
		Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(5), RAD(0), RAD(-45)), 0.5 / Animation_Speed)
		RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.25 * SIZE, 0.5 * SIZE, -0.25 * SIZE) * ANGLES(RAD(80), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(0), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(50 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(25)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-25)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, 0) * ANGLES(RAD(140), RAD(0), RAD(-25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-60), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			do
				local HUM = CHILD:FindFirstChildOfClass("Humanoid")
				if HUM then
					do
						local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
						if TORSO and (TORSO.Position - RightArm2.CFrame * CF(0, -2, 0).p).Magnitude <= 15 then
							coroutine.resume(coroutine.create(function()
								CreateSound(260430117, TORSO, 3, MRANDOM(8, 12) / 10, false)
								local grav = Instance.new("BodyPosition", TORSO)
								grav.D = 1500
								grav.P = 20000
								grav.maxForce = Vector3.new(math.huge, math.huge, math.huge)
								grav.position = TORSO.Position + VT(0, 25, 0)
								TORSO.RotVelocity = VT(MRANDOM(-25, 25), MRANDOM(-25, 25), MRANDOM(-25, 25))
								table.insert(HITS, {CHILD, grav})
								--ApplyDamage(HUM, MRANDOM(12, 22))
							end))
						end
					end
				end
			end
		end
	end
	if #HITS > 0 then
		coroutine.resume(coroutine.create(function()
			repeat
				Swait()
			until ATTACK == false
			for E = 1, #HITS do
				HITS[E][2]:remove()
			end
		end))
	end
	REPLAY = true
	local PLAYING = false
	local WHACK = false
	local HITTING = 0
	local PAYDOWN = 200
	local UNDO = FacialShadow()
	for i = 0, 0.5, 0.1 / Animation_Speed do
		Swait()
		if PLAYING == true then
			break
		end
		WACKYEFFECT({
			EffectType = "Box",
			Size = RightArm2.Size,
			Size2 = RightArm2.Size,
			Transparency = RightArm2.Transparency,
			Transparency2 = 1,
			CFrame = RightArm2.CFrame,
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 0,
			RotationZ = 0,
			Material = "Neon",
			Color = C3(1, 1, 1),
			SoundID = nil,
			SoundPitch = nil,
			SoundVolume = nil
		})
		RootPart2.CFrame = Clerp(RootPart2.CFrame, RootPart.CFrame * CF(0, 3, -5), 0.5)
		RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(45), RAD(0), RAD(45)), 0.5 / Animation_Speed)
		Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(5), RAD(0), RAD(-45)), 0.5 / Animation_Speed)
		RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.25 * SIZE, 0.5 * SIZE, -0.25 * SIZE) * ANGLES(RAD(185), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(0), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(50 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(25)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-25)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, 0) * ANGLES(RAD(140), RAD(0), RAD(-25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-60), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	if #HITS > 0 then
		KEY = Mouse.KeyDown:connect(function(NEWKEY)
			if NEWKEY == "r" and WHACK == false then
				if PLAYING == false then
					PLAYING = true
				end
				WHACK = true
				PAYDOWN = 70
				HITTING = HITTING + 1
				for E = 1, #HITS do
					if HITS[E][1] then
						local ROOT = GetRoot(HITS[E][1], true)
						if ROOT then
							local HUM = HITS[E][1]:FindFirstChildOfClass("Humanoid")
							if HUM and HUM.Health > 0 then
								HUM.PlatformStand = true
								CreateSound(260430117, ROOT, 3, MRANDOM(8, 12) / 10, false)
								local HIT, POS = Raycast(ROOT.Position + VT(0, 5, 0), CF(RootPart.Position, RootPart.Position - VT(0, 5, 0)).lookVector, 60, HITS[E][1])
								ROOT.CFrame = CF(POS)
								--ApplyDamage(HUM, MRANDOM(12, 18))
								ROOT.RotVelocity = VT(MRANDOM(-25, 25), MRANDOM(-25, 25), MRANDOM(-25, 25)) * 4
								if HIT then
									CreateFlyingDebree(HIT, CF(POS), 5, VT(1, 1, 1) * MRANDOM(7, 15) / 20, 5, 30)
								end
							end
						end
					end
				end
				CreateSound(217767125, RightArm, 10, 1, false)
				for i = 0, 0.25, 0.1 / Animation_Speed do
					Swait()
					RootPart2.CFrame = Clerp(RootPart2.CFrame, RootPart.CFrame * CF(0, 6, 5), 0.1)
					RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0.2) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
					Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 0.5 / Animation_Speed)
					RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
					LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(0), RAD(0), RAD(-15 - 1 * SIN(SINE / 6))) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
					RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -0.5 * SIZE, -0.5 * SIZE) * ANGLES(RAD(0), RAD(80 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
					LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
					RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0.1) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0.4) * ANGLES(RAD(-25), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1.1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1.1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				WHACK = false
			end
		end)
	end
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		if PLAYING == true then
			break
		end
		RootPart2.CFrame = Clerp(RootPart2.CFrame, RootPart.CFrame * CF(0, 3, -5), 0.5)
		RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(45), RAD(0), RAD(45)), 0.5 / Animation_Speed)
		Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(5), RAD(0), RAD(-45)), 0.5 / Animation_Speed)
		RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.25 * SIZE, 0.5 * SIZE, -0.25 * SIZE) * ANGLES(RAD(185), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(0), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(50 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(25)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-25)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, 0) * ANGLES(RAD(140), RAD(0), RAD(-25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-60), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	if PLAYING == true then
		Rooted = true
		repeat
			Swait()
			if WHACK == false then
				PAYDOWN = PAYDOWN - 1
				if PAYDOWN <= 0 then
					PLAYING = false
				end
				RootPart2.CFrame = Clerp(RootPart2.CFrame, RootPart.CFrame * CF(0, 6, 5), 0.1)
				RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
				Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 0.5 / Animation_Speed)
				RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(0), RAD(0), RAD(120)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
				LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(0), RAD(0), RAD(-15 - 1 * SIN(SINE / 6))) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
				RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -0.5 * SIZE, -0.5 * SIZE) * ANGLES(RAD(0), RAD(80 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
				LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(120)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0.4) * ANGLES(RAD(-25), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
		until PLAYING == false
	end
	if KEY then
		KEY:Disconnect()
	end
	if HITTING > 4 then
		CreateSound(1535994137, Head, 10, 1, false)
		for i = 0, 2.4, 0.1 / Animation_Speed do
			Swait()
			RootPart2.CFrame = Clerp(RootPart2.CFrame, RootPart.CFrame * CF(0, 6, 5), 0.1)
			RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0.25 * COS(SINE / 12)) * ANGLES(RAD(-5 + 2 * SIN(SINE / 12)), RAD(15), RAD(35)), 0.5 / Animation_Speed)
			Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(25 - 2 * SIN(SINE / 12)), RAD(0), RAD(-35)), 0.5 / Animation_Speed)
			RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(-35 + 15 * SIN(SINE / 12)), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(-35 + 15 * SIN(SINE / 12)), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(80 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-3 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -0.3 * SIZE, -0.6 * SIZE) * ANGLES(RAD(-25), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-3 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-25), RAD(15), RAD(15)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.65, 0) * ANGLES(RAD(170), RAD(0), RAD(-13)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-3)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	end
	UNDO()
	Speed = 16
	REPLAY = false
	ATTACK = false
	Rooted = false
end
function TakeOn()
	ATTACK = true
	Rooted = true
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0.25 * COS(SINE / 12)) * ANGLES(RAD(-5 + 2 * SIN(SINE / 12)), RAD(15), RAD(35)), 0.5 / Animation_Speed)
			Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(25 - 2 * SIN(SINE / 12)), RAD(0), RAD(-35)), 0.5 / Animation_Speed)
			RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(-35 + 15 * SIN(SINE / 12)), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(-35 + 15 * SIN(SINE / 12)), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(80 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-3 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -0.3 * SIZE, -0.6 * SIZE) * ANGLES(RAD(-25), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-3 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		until ATTACK == false
	end))
	CreateSound(1535994669, Head, 10, 1, false)
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(35), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(170), RAD(0), RAD(-25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.35, 0.5, 0.2) * ANGLES(RAD(-25), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-10), RAD(0), RAD(35)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(130), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.35, 0.5, 0.2) * ANGLES(RAD(-25), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end
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
		Punch()
	end
	if Key == "e" and ATTACK == false and REPLAY == false then
		Throw()
	end
	if Key == "r" and ATTACK == false and REPLAY == false then
		Uppercut()
	end
	if Key == "t" and ATTACK == false then
		Roar()
	end
	if Key == "y" and ATTACK == false then
		TakeOn()
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
Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and Disable_Jump == true then
		Humanoid.Jump = false
	end
end)
coroutine.resume(coroutine.create(function()
	while true do
		Swait()
		SINE = SINE + CHANGE
	end
end))
while true do
	Swait()
	script.Parent = WEAPONGUI
	ANIMATE.Parent = nil
	for _, v in next, Humanoid:GetPlayingAnimationTracks() do
		v:Stop()
	end
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local HITFLOOR = Raycast(RootPart.Position, CF(RootPart.Position, RootPart.Position + VT(0, -1, 0)).lookVector, 4, Character)
	local WALKSPEEDVALUE = 4
	if ANIM == "Walk" and TORSOVELOCITY > 1 then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, -0.05 * COS(SINE / (WALKSPEEDVALUE / 2))) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 0.875 - 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE * 2), -0.125 * COS(SINE / WALKSPEEDVALUE) + 0.2 - 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(76 * COS(SINE / WALKSPEEDVALUE))), 0.4 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 0.875 + 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE * 2), 0.125 * COS(SINE / WALKSPEEDVALUE) + 0.2 + 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(76 * COS(SINE / WALKSPEEDVALUE))), 0.4 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
	elseif ANIM ~= "Walk" or TORSOVELOCITY < 1 then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
	end
	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
		ANIM = "Jump"
		if ATTACK == false then
			RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(0), RAD(0), RAD(15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -0.4 * SIZE, -0.5 * SIZE) * ANGLES(RAD(-25), RAD(80 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -0.4 * SIZE, -0.5 * SIZE) * ANGLES(RAD(-25), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(25 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(-25 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
		ANIM = "Fall"
		if ATTACK == false then
			RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(0), RAD(0), RAD(80)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(0), RAD(0), RAD(-80)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -0.4 * SIZE, -0.5 * SIZE) * ANGLES(RAD(-25), RAD(80 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -0.4 * SIZE, -0.5 * SIZE) * ANGLES(RAD(-25), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(45 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(-45 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -0.7) * ANGLES(RAD(-25 + 5 * SIN(SINE / 12)), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.3) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
		ANIM = "Idle"
		if ATTACK == false then
			RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0.25 * COS(SINE / 12)) * ANGLES(RAD(-5 + 2 * SIN(SINE / 12)), RAD(15), RAD(35)), 0.5 / Animation_Speed)
			Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(25 - 2 * SIN(SINE / 12)), RAD(0), RAD(-35)), 0.5 / Animation_Speed)
			RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(-35 + 15 * SIN(SINE / 12)), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(-35 + 15 * SIN(SINE / 12)), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(80 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-3 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -0.3 * SIZE, -0.6 * SIZE) * ANGLES(RAD(-25), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-3 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(15)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(3)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.35, 0.5, 0.2) * ANGLES(RAD(-25), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1.1, -1 - 0.05 * COS(SINE / 12), -0.2) * ANGLES(RAD(0), RAD(100), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(-2), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
		ANIM = "Walk"
		if ATTACK == false then
			RootJoint2.C0 = Clerp(RootJoint2.C0, ROOTC0 * CF(0, 0, 0.25 * COS(SINE / 12)) * ANGLES(RAD(35 + 2 * SIN(SINE / 12)), RAD(0), RAD(35)), 0.5 / Animation_Speed)
			Neck2.C0 = Clerp(Neck2.C0, NECKC0 * CF(0, 0, 0 + (1 * SIZE - 1)) * ANGLES(RAD(-25 - 2 * SIN(SINE / 12)), RAD(0), RAD(-35)), 0.5 / Animation_Speed)
			RightShoulder2.C0 = Clerp(RightShoulder2.C0, CF(1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(-35 + 15 * SIN(SINE / 12)), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder2.C0 = Clerp(LeftShoulder2.C0, CF(-1.5 * SIZE, 0.5 * SIZE, 0) * ANGLES(RAD(-35 + 15 * SIN(SINE / 12)), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip2.C0 = Clerp(RightHip2.C0, CF(1 * SIZE, -1 * SIZE, 0) * ANGLES(RAD(0), RAD(80 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-3 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip2.C0 = Clerp(LeftHip2.C0, CF(-1 * SIZE, -0.5 * SIZE, -0.3 * SIZE) * ANGLES(RAD(-25), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-3 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.05) * ANGLES(RAD(5), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(5 - 1 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(30 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(5)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-30 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
		end
	end
	if ATTACK == false then
		RootPart2.CFrame = Clerp(RootPart2.CFrame, RootPart.CFrame * CF(0, 6, 5), 0.1)
	end
	unanchor()
	RootPart2.Anchored = true
	Humanoid.MaxHealth = 200
	Humanoid.Health = 200
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	for _, c in pairs(SHADOW:GetChildren()) do
		if c:IsA("Part") then
			c.Color = C3(1, 1, 1)
			if c ~= RootPart2 then
				c.Transparency = E + 0.15 * SIN(SINE / 12)
			end
			if c:FindFirstChildOfClass("Decal") then
				c:ClearAllChildren()
			end
			c.CanCollide = false
			c.Material = "Neon"
		else
			c:remove()
		end
	end
	sick.SoundId = "rbxassetid://7029031068"
	sick.Looped = true
	sick.Pitch = 1
	sick.Volume = 1.5
	sick.Parent = Character
	sick.Playing = PLAYSONG
	if EQUIPPED == false then
		Intro()
	end
end