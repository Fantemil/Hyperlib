-- by myworld i think

-- reject client deletion disabled reanimation
-- little bit modified
-- works on a literal baseplate, just grass and luckyblocky battlegrounds



-- hats
-- classic pc hat
-- roblox girl hair
-- chestnut bun
-- lavander hair
-- red roblox cap

game.Players.LocalPlayer.Character["LUAhEAD"].Handle.Mesh:Destroy()
game.Players.LocalPlayer.Character["Pink Hair"].Handle.Mesh:Destroy()
game.Players.LocalPlayer.Character["Kate Hair"].Handle.Mesh:Destroy() --LavanderHair
game.Players.LocalPlayer.Character["LavanderHair"].Handle.Mesh:Destroy()
game.Players.LocalPlayer.Character["Robloxclassicred"].Handle.Mesh:Destroy()

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
local newanimate = true --disables the animate script and enables after reanimation
local discharscripts = true --disables all localScripts parented to your character before reanimation
local R15toR6 = true --tries to convert your character to r6 if its r15
local hatcollide = true --makes hats cancollide (only method 0)
local humState16 = true --enables collisions for limbs before the humanoid dies (using hum:ChangeState)
local addtools = false --puts all tools from backpack to character and lets you hold them after reanimation
local hedafterneck = false --disable aligns for head and enable after neck is removed
local loadtime = game:GetService("Players").RespawnTime + 0.5 --anti respawn delay
local method = 1 --reanimation method
--methods:
--0 - breakJoints (takes [loadtime] seconds to laod)
--1 - limbs
--2 - limbs + anti respawn
--3 - limbs + breakJoints after [loadtime] seconds
--4 - remove humanoid + breakJoints
--5 - remove humanoid + limbs
local alignmode = 2 --AlignPosition mode
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
				Parent = Scarf,
				Name = "Neck",
				Part0 = Scarf, --R6parts.torso
				Part1 = Scarf, --R6parts.head
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

local hat2 = gp(cplayer, "LUAhEAD", "Accessory")
local handle2 = gp(hat2, "Handle", "BasePart")
local att2 = gp(handle2, "att1_Handle", "Attachment")
att2.Parent = cplayer["Torso"]
att2.Position = Vector3.new(0, 0, 0) 
att2.Rotation = Vector3.new(90, 0, 0)

lol = getcustomasset or getsynasset
getgenv().LoadLibrary = function(lib) return loadstring(game:HttpGet("https://raw.githubusercontent.com/Roblox/Core-Scripts/master/CoreScriptsRoot/Libraries/" .. lib .. ".lua"))() end
wait(.2)
rainParts={}
plr=game.Players.LocalPlayer
chr=plr.Character
Head=chr.Head
Root=chr.HumanoidRootPart
Torso=chr.Torso
RArm=chr["Right Arm"]
LArm=chr["Left Arm"]
RLeg=chr["Right Leg"]
LLeg=chr["Left Leg"]
RJ=Root.RootJoint
Neck=Torso.Neck
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
hum=chr:FindFirstChildOfClass("Humanoid")
mouse=plr:GetMouse()
Pose="Idle"
attack=false
attack2=false
combo=1
sin=0
cha=1
choice=1
musicset="Character"
lal=1
lal2=1
haa=nil
aaa=false
unleashed=false
col={"Really black","Institutional white"}

create=LoadLibrary("RbxUtility").Create

chr.Animate:Remove()
hum.Animator:Remove()

function clerp(a,b,t)
return a:lerp(b,t)
end

local newMotor=function(name,p0,p1,c0,c1)
local w=Instance.new('Motor',p0)
w.Name=name
w.Part0=p0
w.Part1=p1
w.C0=c0
w.C1=c1
return w
end
for _,c in pairs(Torso:children()) do
if c:IsA("Motor") and c.Name~="Neck" then
c:Remove()
end
end

RJ.C0,RJ.C1=CFrame.new(0,0,0),CFrame.new(0,0,0)
Neck.C0,Neck.C1=CFrame.new(0,1.5,0),CFrame.new(0,0,0)

local RS=newMotor("Right Shoulder",Torso, RArm, CFrame.new(1.5, 0, 0), CFrame.new(0, 0, 0)) 
local LS=newMotor("Left Hip",Torso, LArm, CFrame.new(-1.5, 0, 0), CFrame.new(0, 0, 0))
local RH=newMotor("Right Shoulder",Torso, RLeg, CFrame.new(.5, -2, 0), CFrame.new(0, 0, 0))
local LH=newMotor("Left Hip",Torso, LLeg, CFrame.new(-.5, -2, 0), CFrame.new(0, 0, 0))

function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface=10,10,10,10,10,10
end

function rayCast(Position,Direction,Range,Ignore)
return game:service("Workspace"):FindPartOnRay(Ray.new(Position,Direction.unit*(Range or 999.999)),Ignore)
end

ArtificialHB=create("BindableEvent"){
Parent=script,
Name="Heartbeat"}

script:WaitForChild("Heartbeat")

frame=0.0166666666666666667
tf=0
allowframeloss=false
tossremainder=false
lastframe=tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:connect(function(s,p)
tf=tf+s
if tf >=frame then
if allowframeloss then
script.Heartbeat:Fire()
lastframe=tick()
else
for i=1,math.floor(tf/frame) do
script.Heartbeat:Fire()
end
lastframe=tick()
end
if tossremainder then
tf=0
else
tf=tf-frame*math.floor(tf/frame)
end
end
end)

function swait(num)
if num==0 or num==nil then
ArtificialHB.Event:wait()
else
for i=0,num do
ArtificialHB.Event:wait()
end
end
end

function parts(Par,name,size,color,mat,ref,tra)
local part=create("Part"){
Parent=Par,
Name=name,
Size=size,
CanCollide=false,
Anchored=false,
BrickColor=BrickColor.new(color),
Material=mat,
Reflectance=ref,
Transparency=tra}
NoOutline(part)
if choice==9 then
part.Color=Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)
end
part:BreakJoints()
return part 
end

function meshs(Par,name,scale,mtype,id)
local mesh=create("SpecialMesh"){
Parent=Par,
Name=name,
Scale=scale,
MeshType=mtype}
if id~="" then
mesh.MeshId="rbxassetid://"..id
end
return meshs
end

function welds(Par,name,p0,p1,c0,c1)
local weld=create("Weld"){
Parent=Par,
Name=name,
Part0=p0,
Part1=p1,
C0=c0,
C1=c1}
return weld
end

function sounds(Par,id,vol,pit)
local sound=create("Sound"){
Parent=Par,
SoundId="rbxassetid://"..id,
Volume=vol,
PlaybackSpeed=pit,
MaxDistance=66666666}
sound:Play()
game:GetService("Debris"):AddItem(sound,10)
return sound
end

m=create("Model"){
Parent=chr,
Name="WModel"}
e=create("Model"){
Parent=chr,
Name="Effect"}

theme=create("Sound"){
Parent=chr,
SoundId="rbxassetid://1845818501",
Volume=1.6,
PlaybackSpeed=1,
MaxDistance=66666666,
Name="Theme",
Looped=true}
theme:Play()

local timeposit=create("NumberValue"){
Name="STP",
Value=true,
Parent=script}

R1=parts(m,"R1",Vector3.new(1, 0.100000016, 1),"Medium stone grey",Enum.Material.SmoothPlastic,0,0)
R1Weld=welds(R1,"R1Weld",RArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-06, 0.649999857, 0, -1, 0, 0, 0, 0.999999881, -1.48607702e-41, 0, 1.48607702e-41, -1))
meshs(R1,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")
R1=parts(m,"R1",Vector3.new(1, 0.700000048, 1),"Medium stone grey",Enum.Material.SmoothPlastic,0,0)
R1Weld=welds(R1,"R1Weld",RArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-06, -0.349999428, 0, -1, 0, 0, 0, 0.999999881, -1.48607702e-41, 0, 1.48607702e-41, -1))
meshs(R1,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")
R1=parts(m,"R1",Vector3.new(1, 0.300000131, 1),"Medium stone grey",Enum.Material.SmoothPlastic,0,0)
R1Weld=welds(R1,"R1Weld",RArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.849998951, -3.81469727e-06, 0, -1.48607702e-41, 1, 0, 0.999999881, -1.48607702e-41, -1, 0, 0))
meshs(R1,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Wedge,"")
R1=parts(m,"R1",Vector3.new(1, 0.300000131, 1),"Medium stone grey",Enum.Material.SmoothPlastic,0,0)
R1Weld=welds(R1,"R1Weld",RArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.150000811, 3.81469727e-06, 0, -1.48607702e-41, 1, 0, -0.999999881, 1.48607702e-41, 1, 0, 0))
meshs(R1,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Wedge,"")
R1=parts(m,"R1",Vector3.new(1, 0.300000131, 1),"Medium stone grey",Enum.Material.SmoothPlastic,0,0)
R1Weld=welds(R1,"R1Weld",RArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.450000763, 3.81469727e-06, 0, 1.48607702e-41, -1, 0, 0.999999881, -1.48607702e-41, 1, 0, 0))
meshs(R1,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Wedge,"")
R1=parts(m,"R1",Vector3.new(1, 0.300000131, 1),"Medium stone grey",Enum.Material.SmoothPlastic,0,0)
R1Weld=welds(R1,"R1Weld",RArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.850000858, -3.81469727e-06, 0, 1.48607702e-41, -1, 0, -0.999999881, 1.48607702e-41, -1, 0, 0))
meshs(R1,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.550000012, 0.550000012),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409994125, 0.134350777, 0.148492813, -1, 0, 0, 0, 0.707106769, 0.707106829, 0, 0.707106769, -0.707106829))
meshs(R2,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.400000006, 0.849999964),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409994125, -0.0100002289, -0.249998569, -1, 0, 0, 0, -1.48607702e-41, 1, 0, 0.999999881, -1.48607702e-41))
meshs(R2,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.150000036, 1.1500001),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409994125, -0.240001678, -0.399998426, -1, 0, 0, 0, -1.48607702e-41, 1, 0, 0.999999881, -1.48607702e-41))
meshs(R2,"Mesh",Vector3.new(1, 0.200000003, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.150000036, 1.1500001),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409994125, 0.220001221, -0.399998426, -1, 0, 0, 0, -1.48607702e-41, 1, 0, 0.999999881, -1.48607702e-41))
meshs(R2,"Mesh",Vector3.new(1, 0.200000003, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.200000018, 0.249999911),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409994125, -0.0900020599, 0.799996614, -1, 0, 0, 0, 1.48607702e-41, -1, 0, -0.999999881, 1.48607702e-41))
meshs(R2,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.200000018, 0.249999911),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409994125, -0.109998703, 0.799996138, 1, 0, 0, 0, -1.48607702e-41, 1, 0, -0.999999881, 1.48607702e-41))
meshs(R2,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.200000003, 0.300000012),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.919998169, 0.220001221, -0.259996414, 0, 0.999999881, -1.48607702e-41, 0, -1.48607702e-41, 1, 1, 0, 0))
meshs(R2,"Mesh",Vector3.new(1, 0.200000003, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.200000003, 0.300000012),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.919998169, -0.239999771, -0.259996414, 0, 0.999999881, -1.48607702e-41, 0, -1.48607702e-41, 1, 1, 0, 0))
meshs(R2,"Mesh",Vector3.new(1, 0.200000003, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.200000003, 0.300000012),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.919998169, -0.0848560333, -0.10455513, 0, 0.999999881, -1.48607702e-41, -0.707106829, -1.05083372e-41, 0.707106829, 0.707106829, -1.05083372e-41, 0.707106829))
meshs(R2,"Mesh",Vector3.new(1, 0.200000003, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.200000003, 0.300000012),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.919998169, 0.0707149506, -0.0904140472, 0, 0.999999881, -1.48607702e-41, 0.707106829, -1.05083372e-41, 0.707106829, 0.707106829, 1.05083372e-41, -0.707106829))
meshs(R2,"Mesh",Vector3.new(1, 0.200000003, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.350000024, 0.350000024),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.919999123, 0.114140511, 0.12121582, 0, 0.999999881, -1.48607702e-41, 0.707106829, -1.05083372e-41, 0.707106829, 0.707106829, 1.05083372e-41, -0.707106829))
meshs(R2,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Brick,"")
R1=parts(m,"R1",Vector3.new(0.200000003, 0.400000006, 0.400000006),"Medium stone grey",Enum.Material.SmoothPlastic,0,0)
R1Weld=welds(R1,"R1Weld",RArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.909999132, 0.114140511, 0.12121582, 0, 0.999999881, -1.48607702e-41, 0.707106829, -1.05083372e-41, 0.707106829, 0.707106829, 1.05083372e-41, -0.707106829))
meshs(R1,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.100000016, 0.100000001),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409999847, 0.399998903, -0.260002136, 1, 0, 0, 0, 0.999999881, -1.48607702e-41, 0, -1.48607702e-41, 1))
meshs(R2,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.099999927, 0.150000006, 0.299999923),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.50504303, -0.51999712, -0.360067368, 1, 0, 0, 0, 0.999999881, -1.48607702e-41, 0, -1.48607702e-41, 1))
meshs(R2,"Mesh",Vector3.new(0.0599999987, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.099999927, 0.150000006, 0.299999923),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.50504303, 0.369997025, -0.360067368, -1, 0, 0, 0, -0.999999881, 1.48607702e-41, 0, -1.48607702e-41, 1))
meshs(R2,"Mesh",Vector3.new(0.0599999987, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.100000016, 0.100000001),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409999847, 0.5, -0.159999847, 1, 0, 0, 0, 0.999999881, -1.48607702e-41, 0, -1.48607702e-41, 1))
meshs(R2,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.100000016, 0.100000001),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409999847, -0.500004053, 0.260000229, 1, 0, 0, 0, -0.999999881, 1.48607702e-41, 0, 1.48607702e-41, -1))
meshs(R2,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.099999927, 0.150000006, 0.299999923),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.50504303, -0.130002022, -0.360067368, -1, 0, 0, 0, -0.999999881, 1.48607702e-41, 0, -1.48607702e-41, 1))
meshs(R2,"Mesh",Vector3.new(0.0599999987, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.400000006, 0.400000006),"Smoky grey",Enum.Material.Neon,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.419994354, 0.134350777, 0.148492813, -1, 0, 0, 0, 0.707106769, 0.707106829, 0, 0.707106769, -0.707106829))
meshs(R2,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Smoky grey",Enum.Material.Neon,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.419994354, -0.219202042, -0.205059052, -1, 0, 0, 0, 0.707106769, 0.707106829, 0, 0.707106769, -0.707106829))
meshs(R2,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Smoky grey",Enum.Material.Neon,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.419994354, -0.473760605, -0.459617615, -1, 0, 0, 0, 0.707106769, 0.707106829, 0, 0.707106769, -0.707106829))
meshs(R2,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Brick,"")
R1=parts(m,"R1",Vector3.new(0.200000003, 0.0799999982, 0.0799999982),"Mid gray",Enum.Material.Neon,0,0)
R1Weld=welds(R1,"R1Weld",RArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.419994354, -0.0212125778, -0.162633896, -1, 0, 0, 0, 0.707106769, 0.707106829, 0, 0.707106769, -0.707106829))
meshs(R1,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Brick,"")
R1=parts(m,"R1",Vector3.new(0.200000003, 0.0799999982, 0.0799999982),"Mid gray",Enum.Material.Neon,0,0)
R1Weld=welds(R1,"R1Weld",RArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.419994354, -0.268699646, -0.41012001, -1, 0, 0, 0, 0.707106769, 0.707106829, 0, 0.707106769, -0.707106829))
meshs(R1,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Brick,"")
R1=parts(m,"R1",Vector3.new(0.200000003, 0.0799999982, 0.0799999982),"Mid gray",Enum.Material.Neon,0,0)
R1Weld=welds(R1,"R1Weld",RArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.419994354, -0.424263954, -0.254556656, -1, 0, 0, 0, 0.707106769, 0.707106829, 0, 0.707106769, -0.707106829))
meshs(R1,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Brick,"")
R1=parts(m,"R1",Vector3.new(0.200000003, 0.0799999982, 0.0799999982),"Mid gray",Enum.Material.Neon,0,0)
R1Weld=welds(R1,"R1Weld",RArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.419994354, -0.176776886, -0.00706863403, -1, 0, 0, 0, 0.707106769, 0.707106829, 0, 0.707106769, -0.707106829))
meshs(R1,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.200000003, 0.100000016),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.220001221, -0.509992599, 0.96999836, 0, 1.48607702e-41, -1, 1, 0, 0, 0, -0.999999881, 1.48607702e-41))
meshs(R2,"Mesh",Vector3.new(0.200000003, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.200000003, 0.100000016),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.239999771, -0.509992599, 0.96999836, 0, 1.48607702e-41, -1, 1, 0, 0, 0, -0.999999881, 1.48607702e-41))
meshs(R2,"Mesh",Vector3.new(0.200000003, 1, 1),Enum.MeshType.Wedge,"")
R1=parts(m,"R1",Vector3.new(0.180000007, 0.200000003, 0.100000001),"Medium stone grey",Enum.Material.Neon,0,0)
R1Weld=welds(R1,"R1Weld",RArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.220001221, -0.862760544, 0.739753723, 0, 1.48607702e-41, -1, 0.933451414, 0.358703732, -5.33053936e-42, 0.358703762, -0.933451295, 1.38714535e-41))
meshs(R1,"Mesh",Vector3.new(0.200000003, 1, 1),Enum.MeshType.Wedge,"")
R1=parts(m,"R1",Vector3.new(0.180000007, 0.200000003, 0.100000001),"Medium stone grey",Enum.Material.Neon,0,0)
R1Weld=welds(R1,"R1Weld",RArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.239999771, -0.862760544, 0.739753723, 0, 1.48607702e-41, -1, 0.933451414, 0.358703732, -5.33053936e-42, 0.358703762, -0.933451295, 1.38714535e-41))
meshs(R1,"Mesh",Vector3.new(0.200000003, 1, 1),Enum.MeshType.Wedge,"")
R1=parts(m,"R1",Vector3.new(0.150000006, 0.200000003, 0.200000003),"Medium stone grey",Enum.Material.Neon,0,0)
R1Weld=welds(R1,"R1Weld",RArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.220001221, -0.896935225, -0.666307449, 0, 1.48607702e-41, -1, -0.280028909, 0.959991515, -1.42666197e-41, 0.959991634, 0.28002888, -4.16185644e-42))
meshs(R1,"Mesh",Vector3.new(0.200000003, 1, 1),Enum.MeshType.Wedge,"")
R1=parts(m,"R1",Vector3.new(0.150000006, 0.200000003, 0.200000003),"Medium stone grey",Enum.Material.Neon,0,0)
R1Weld=welds(R1,"R1Weld",RArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.239999771, -0.896935225, -0.666307449, 0, 1.48607702e-41, -1, -0.280028909, 0.959991515, -1.42666197e-41, 0.959991634, 0.28002888, -4.16185644e-42))
meshs(R1,"Mesh",Vector3.new(0.200000003, 1, 1),Enum.MeshType.Wedge,"")
R1=parts(m,"R1",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Medium stone grey",Enum.Material.SmoothPlastic,0,0)
R1Weld=welds(R1,"R1Weld",RArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.909999132, -0.0272817612, 0.262638092, 0, 0.999999881, -1.48607702e-41, 0.707106829, -1.05083372e-41, 0.707106829, 0.707106829, 1.05083372e-41, -0.707106829))
meshs(R1,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Brick,"")
R1=parts(m,"R1",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Medium stone grey",Enum.Material.SmoothPlastic,0,0)
R1Weld=welds(R1,"R1Weld",RArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.909999132, 0.255561829, -0.0202064514, 0, 0.999999881, -1.48607702e-41, 0.707106829, -1.05083372e-41, 0.707106829, 0.707106829, 1.05083372e-41, -0.707106829))
meshs(R1,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Brick,"")
R1=parts(m,"R1",Vector3.new(0.150000006, 0.400000006, 0.200000003),"Medium stone grey",Enum.Material.Neon,0,0)
R1Weld=welds(R1,"R1Weld",RArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.239999771, -0.218418121, -1.05363274, 0, 1.48607702e-41, -1, -0.907014251, 0.42110002, -6.25819894e-42, 0.42110005, 0.907014132, -1.34790899e-41))
meshs(R1,"Mesh",Vector3.new(0.200000003, 1, 1),Enum.MeshType.Wedge,"")
R1=parts(m,"R1",Vector3.new(0.150000006, 0.400000006, 0.200000003),"Medium stone grey",Enum.Material.Neon,0,0)
R1Weld=welds(R1,"R1Weld",RArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.220001221, -0.218418121, -1.05363274, 0, 1.48607702e-41, -1, -0.907014251, 0.42110002, -6.25819894e-42, 0.42110005, 0.907014132, -1.34790899e-41))
meshs(R1,"Mesh",Vector3.new(0.200000003, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(1, 0.300000131, 1),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.749999046, -3.81469727e-06, 0, -1.48607702e-41, 1, 0, 0.999999881, -1.48607702e-41, -1, 0, 0))
meshs(R2,"Mesh",Vector3.new(1.01999998, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(1, 0.300000131, 1),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.449999332, 3.81469727e-06, 0, -1.48607702e-41, 1, 0, -0.999999881, 1.48607702e-41, 1, 0, 0))
meshs(R2,"Mesh",Vector3.new(1.01999998, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(1, 0.300000131, 1),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.0500001907, 3.81469727e-06, 0, -1.48607702e-41, 1, 0, -0.999999881, 1.48607702e-41, 1, 0, 0))
meshs(R2,"Mesh",Vector3.new(1.01999998, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(1, 0.300000131, 1),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.249999523, -3.81469727e-06, 0, -1.48607702e-41, 1, 0, 0.999999881, -1.48607702e-41, -1, 0, 0))
meshs(R2,"Mesh",Vector3.new(1.01999998, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.099999927, 0.150000006, 0.299999923),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.50504303, -0.0199980736, -0.35993576, -1, 0, 0, 0, 0.999999881, -1.48607702e-41, 0, 1.48607702e-41, -1))
meshs(R2,"Mesh",Vector3.new(0.0599999987, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.099999927, 0.150000006, 0.299999923),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.50504303, -0.130002022, -0.35993576, 1, 0, 0, 0, -0.999999881, 1.48607702e-41, 0, 1.48607702e-41, -1))
meshs(R2,"Mesh",Vector3.new(0.0599999987, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.099999927, 0.150000006, 0.299999923),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.50504303, -0.519997597, -0.35993576, -1, 0, 0, 0, 0.999999881, -1.48607702e-41, 0, 1.48607702e-41, -1))
meshs(R2,"Mesh",Vector3.new(0.0599999987, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.099999927, 0.150000006, 0.299999923),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.50504303, 0.369997501, -0.35993576, 1, 0, 0, 0, -0.999999881, 1.48607702e-41, 0, 1.48607702e-41, -1))
meshs(R2,"Mesh",Vector3.new(0.0599999987, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.099999927, 0.150000006, 0.299999923),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.50504303, -0.0199980736, -0.36006546, 1, 0, 0, 0, 0.999999881, -1.48607702e-41, 0, -1.48607702e-41, 1))
meshs(R2,"Mesh",Vector3.new(0.0599999987, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.100000016, 0.100000001),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409999847, -0.400001049, 0.36000061, 1, 0, 0, 0, -0.999999881, 1.48607702e-41, 0, 1.48607702e-41, -1))
meshs(R2,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.100000016, 0.100000001),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409999847, -0.400000811, 0.340000153, -1, 0, 0, 0, -0.999999881, 1.48607702e-41, 0, -1.48607702e-41, 1))
meshs(R2,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.100000016, 0.100000001),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410003662, 0.399998903, -0.240003586, -1, 0, 0, 0, 0.999999881, -1.48607702e-41, 0, 1.48607702e-41, -1))
meshs(R2,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.100000016, 0.100000001),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409999847, -0.500003815, 0.240001678, -1, 0, 0, 0, -0.999999881, 1.48607702e-41, 0, -1.48607702e-41, 1))
meshs(R2,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.100000016, 0.100000001),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409999847, 0.5, -0.13999939, -1, 0, 0, 0, 0.999999881, -1.48607702e-41, 0, 1.48607702e-41, -1))
meshs(R2,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.100000016, 0.100000001),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409999847, -0.600003958, 0.159999847, 1, 0, 0, 0, -0.999999881, 1.48607702e-41, 0, 1.48607702e-41, -1))
meshs(R2,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.100000016, 0.100000001),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409999847, 0.599999905, -0.0599994659, 1, 0, 0, 0, 0.999999881, -1.48607702e-41, 0, -1.48607702e-41, 1))
meshs(R2,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.100000016, 0.100000001),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409999847, 0.599999905, -0.0399990082, -1, 0, 0, 0, 0.999999881, -1.48607702e-41, 0, 1.48607702e-41, -1))
meshs(R2,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.100000016, 0.100000001),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409999847, -0.600003719, 0.140001297, -1, 0, 0, 0, -0.999999881, 1.48607702e-41, 0, -1.48607702e-41, 1))
meshs(R2,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.100000001, 0.200000003),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.199998856, -0.599999666, -0.40999794, -2.98023224e-08, 3.7033562e-08, 0.999999642, 4.63025478e-15, -0.999999642, 3.7033562e-08, 0.999999762, 1.08736457e-14, 2.98023153e-08))
meshs(R2,"Mesh",Vector3.new(1, 0.200000003, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.100000001, 0.200000003),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.20000267, -0.599999666, -0.40999794, -2.98023224e-08, 3.7033562e-08, 0.999999642, 4.63025478e-15, -0.999999642, 3.7033562e-08, 0.999999762, 1.08736457e-14, 2.98023153e-08))
meshs(R2,"Mesh",Vector3.new(1, 0.200000003, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.100000001, 0.200000003),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.25, -0.549999714, -0.40999794, -2.98023224e-08, 3.7033562e-08, 0.999999642, 4.63025478e-15, -0.999999642, 3.7033562e-08, 0.999999762, 1.08736457e-14, 2.98023153e-08))
meshs(R2,"Mesh",Vector3.new(1, 0.200000003, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.100000001, 0.200000003),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.250003815, -0.549999714, -0.40999794, -2.98023224e-08, 3.7033562e-08, 0.999999642, 4.63025478e-15, -0.999999642, 3.7033562e-08, 0.999999762, 1.08736457e-14, 2.98023153e-08))
meshs(R2,"Mesh",Vector3.new(1, 0.200000003, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.100000001, 0.200000003),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300001144, -0.5, -0.40999794, -2.98023224e-08, 3.7033562e-08, 0.999999642, 4.63025478e-15, -0.999999642, 3.7033562e-08, 0.999999762, 1.08736457e-14, 2.98023153e-08))
meshs(R2,"Mesh",Vector3.new(1, 0.200000003, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.200000003, 0.100000001, 0.200000003),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.300004959, -0.5, -0.40999794, -2.98023224e-08, 3.7033562e-08, 0.999999642, 4.63025478e-15, -0.999999642, 3.7033562e-08, 0.999999762, 1.08736457e-14, 2.98023153e-08))
meshs(R2,"Mesh",Vector3.new(1, 0.200000003, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.400000006, 0.100000001, 0.200000003),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0767774582, -0.572755814, -0.409999847, 0, 0.707106769, 0.707106829, 0, -0.707106769, 0.707106829, 1, 0, 0))
meshs(R2,"Mesh",Vector3.new(1, 0.200000003, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.400000006, 0.100000001, 0.200000003),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0767745972, -0.572758675, -0.409999847, 0, -0.707106769, 0.707106829, -0, -0.707106769, -0.707106829, 1, 0, 0))
meshs(R2,"Mesh",Vector3.new(1, 0.200000003, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.300000012, 0.100000001, 0.200000003),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.175271034, -0.636394501, -0.409999847, 0, 0.707106769, 0.707106829, 0, -0.707106769, 0.707106829, 1, 0, 0))
meshs(R2,"Mesh",Vector3.new(1, 0.200000003, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.300000012, 0.100000001, 0.200000003),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.175270081, -0.636396408, -0.409999847, 0, -0.707106769, 0.707106829, -0, -0.707106769, -0.707106829, 1, 0, 0))
meshs(R2,"Mesh",Vector3.new(1, 0.200000003, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.0999999568, 0.600000024, 1),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.263830185, -0.35447979, 0, -0.965925872, 0.258818954, -3.84656428e-42, 0.258818984, 0.965925753, -1.43549015e-41, 0, 1.48607702e-41, -1))
meshs(R2,"Mesh",Vector3.new(1, 1, 1.01999998),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.0999999568, 0.600000024, 1),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0361690521, -0.354480743, 0, -0.965925872, 0.258818954, -3.84656428e-42, 0.258818984, 0.965925753, -1.43549015e-41, 0, 1.48607702e-41, -1))
meshs(R2,"Mesh",Vector3.new(1, 1, 1.01999998),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.0999999568, 0.600000024, 1),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.336166382, -0.354481697, 0, -0.965925872, 0.258818954, -3.84656428e-42, 0.258818984, 0.965925753, -1.43549015e-41, 0, 1.48607702e-41, -1))
meshs(R2,"Mesh",Vector3.new(1, 1, 1.01999998),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.199999958, 0.100000001, 1),"Medium stone grey",Enum.Material.Neon,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.201862335, -0.581261635, 0, -0.956305027, 0.292370975, -4.34542654e-42, 0.292371005, 0.956304908, -1.4211969e-41, 0, 1.48607702e-41, -1))
meshs(R2,"Mesh",Vector3.new(1, 1, 1.02999997),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.0999999717, 0.300000012, 1),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504964828, -0.249998093, 0.0100650787, -1, 0, 0, 0, 0.999999881, -1.48607702e-41, 0, 1.48607702e-41, -1))
meshs(R2,"Mesh",Vector3.new(0.0799999982, 1, 1.04999995),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.0999999717, 0.300000012, 1),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504964828, -0.749997616, 0.0100650787, -1, 0, 0, 0, 0.999999881, -1.48607702e-41, 0, 1.48607702e-41, -1))
meshs(R2,"Mesh",Vector3.new(0.0799999982, 1, 1.04999995),Enum.MeshType.Brick,"")
R3=parts(m,"R3",Vector3.new(0.099999927, 0.100000001, 0.0999999568),"Olivine",Enum.Material.SmoothPlastic,0,0)
R3Weld=welds(R3,"R3Weld",RArm,R3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.459999084, -0.636394501, 0.424265862, -1.00000036, 1.86264515e-09, -1.86264515e-09, 3.95127042e-09, 0.707107544, -0.707107306, 1.31709066e-09, -0.707107306, -0.707107544))
meshs(R3,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")
R3=parts(m,"R3",Vector3.new(0.099999927, 0.100000001, 0.0999999568),"Bright bluish green",Enum.Material.SmoothPlastic,0,0)
R3Weld=welds(R3,"R3Weld",RArm,R3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.459999084, -0.282840729, 0.777820587, -1.00000036, 1.86264515e-09, -1.86264515e-09, 3.95127042e-09, 0.707107544, -0.707107306, 1.31709066e-09, -0.707107306, -0.707107544))
meshs(R3,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")
R3=parts(m,"R3",Vector3.new(0.099999927, 0.100000001, 0.0999999568),"Maroon",Enum.Material.SmoothPlastic,0,0)
R3Weld=welds(R3,"R3Weld",RArm,R3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.459999084, -0.424263, 0.636398315, -1.00000036, 1.86264515e-09, -1.86264515e-09, 3.95127042e-09, 0.707107544, -0.707107306, 1.31709066e-09, -0.707107306, -0.707107544))
meshs(R3,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")
R3=parts(m,"R3",Vector3.new(0.099999927, 0.100000001, 0.0999999568),"Institutional white",Enum.Material.SmoothPlastic,0,0)
R3Weld=welds(R3,"R3Weld",RArm,R3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.459999084, -0.777816772, 0.28284359, -1.00000036, 1.86264515e-09, -1.86264515e-09, 3.95127042e-09, 0.707107544, -0.707107306, 1.31709066e-09, -0.707107306, -0.707107544))
meshs(R3,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")
R3=parts(m,"R3",Vector3.new(0.099999927, 0.100000001, 0.0999999568),"Neon orange",Enum.Material.SmoothPlastic,0,0)
R3Weld=welds(R3,"R3Weld",RArm,R3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.459999084, -0.0707092285, 0.282844543, -1.00000036, 1.86264515e-09, -1.86264515e-09, 3.95127042e-09, 0.707107544, -0.707107306, 1.31709066e-09, -0.707107306, -0.707107544))
meshs(R3,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")
R3=parts(m,"R3",Vector3.new(0.099999927, 0.100000001, 0.0999999568),"Daisy orange",Enum.Material.SmoothPlastic,0,0)
R3Weld=welds(R3,"R3Weld",RArm,R3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.459999084, -0.282842636, 0.0707130432, -1.00000036, 1.86264515e-09, -1.86264515e-09, 3.95127042e-09, 0.707107544, -0.707107306, 1.31709066e-09, -0.707107306, -0.707107544))
meshs(R3,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")
R3=parts(m,"R3",Vector3.new(0.099999927, 0.100000001, 0.0999999568),"Royal purple",Enum.Material.SmoothPlastic,0,0)
R3Weld=welds(R3,"R3Weld",RArm,R3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.459999084, -0.424264908, -0.0707092285, -1.00000036, 1.86264515e-09, -1.86264515e-09, 3.95127042e-09, 0.707107544, -0.707107306, 1.31709066e-09, -0.707107306, -0.707107544))
meshs(R3,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")
R3=parts(m,"R3",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007),"Toothpaste",Enum.Material.SmoothPlastic,0,0)
R3Weld=welds(R3,"R3Weld",RArm,R3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.489997864, -0.282840729, 0.777820587, -1.00000036, 1.86264493e-09, -1.86264515e-09, 3.95812094e-09, 0.707107604, -0.707107306, 1.31709077e-09, -0.707107306, -0.707107604))
meshs(R3,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")
R3=parts(m,"R3",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007),"Really red",Enum.Material.SmoothPlastic,0,0)
R3Weld=welds(R3,"R3Weld",RArm,R3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.489997864, -0.424263, 0.636398315, -1.00000036, 1.86264493e-09, -1.86264515e-09, 3.95812094e-09, 0.707107604, -0.707107306, 1.31709077e-09, -0.707107306, -0.707107604))
meshs(R3,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")
R3=parts(m,"R3",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007),"Olivine",Enum.Material.SmoothPlastic,0,0)
R3Weld=welds(R3,"R3Weld",RArm,R3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.489997864, -0.636396408, 0.424264908, -1.00000036, 1.86264493e-09, -1.86264515e-09, 3.95812094e-09, 0.707107604, -0.707107306, 1.31709077e-09, -0.707107306, -0.707107604))
meshs(R3,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")
R3=parts(m,"R3",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007),"Really black",Enum.Material.SmoothPlastic,0,0)
R3Weld=welds(R3,"R3Weld",RArm,R3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.489997864, -0.77781868, 0.28284359, -1.00000036, 1.86264493e-09, -1.86264515e-09, 3.95812094e-09, 0.707107604, -0.707107306, 1.31709077e-09, -0.707107306, -0.707107604))
meshs(R3,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")
R3=parts(m,"R3",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007),"Pastel yellow",Enum.Material.SmoothPlastic,0,0)
R3Weld=welds(R3,"R3Weld",RArm,R3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.489997864, -0.282842636, 0.0707120895, -1.00000036, 1.86264493e-09, -1.86264515e-09, 3.95812094e-09, 0.707107604, -0.707107306, 1.31709077e-09, -0.707107306, -0.707107604))
meshs(R3,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")
R3=parts(m,"R3",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007),"Alder",Enum.Material.SmoothPlastic,0,0)
R3Weld=welds(R3,"R3Weld",RArm,R3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.489997864, -0.424264908, -0.0707101822, -1.00000036, 1.86264493e-09, -1.86264515e-09, 3.95812094e-09, 0.707107604, -0.707107306, 1.31709077e-09, -0.707107306, -0.707107604))
meshs(R3,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")
R3=parts(m,"R3",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007),"Bright yellow",Enum.Material.SmoothPlastic,0,0)
R3Weld=welds(R3,"R3Weld",RArm,R3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.489997864, -0.0707092285, 0.282845497, -1.00000036, 1.86264493e-09, -1.86264515e-09, 3.95812094e-09, 0.707107604, -0.707107306, 1.31709077e-09, -0.707107306, -0.707107604))
meshs(R3,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.199999958, 0.100000001, 1),"Medium stone grey",Enum.Material.Neon,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0981369019, -0.581263542, 0, -0.956305027, 0.292370975, -4.34542654e-42, 0.292371005, 0.956304908, -1.4211969e-41, 0, 1.48607702e-41, -1))
meshs(R2,"Mesh",Vector3.new(1, 1, 1.02999997),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.199999958, 0.100000001, 1),"Medium stone grey",Enum.Material.Neon,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00185966492, -0.101263046, 0, -0.956305027, 0.292370975, -4.34542654e-42, 0.292371005, 0.956304908, -1.4211969e-41, 0, 1.48607702e-41, -1))
meshs(R2,"Mesh",Vector3.new(1, 1, 1.02999997),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.199999958, 0.100000001, 1),"Medium stone grey",Enum.Material.Neon,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.398138046, -0.581264496, 0, -0.956305027, 0.292370975, -4.34542654e-42, 0.292371005, 0.956304908, -1.4211969e-41, 0, 1.48607702e-41, -1))
meshs(R2,"Mesh",Vector3.new(1, 1, 1.02999997),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.199999958, 0.100000001, 1),"Medium stone grey",Enum.Material.Neon,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.298141479, -0.101261139, 0, -0.956305027, 0.292370975, -4.34542654e-42, 0.292371005, 0.956304908, -1.4211969e-41, 0, 1.48607702e-41, -1))
meshs(R2,"Mesh",Vector3.new(1, 1, 1.02999997),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.199999958, 0.100000001, 1),"Medium stone grey",Enum.Material.Neon,0,0)
R2Weld=welds(R2,"R2Weld",RArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.301858902, -0.101263046, 0, -0.956305027, 0.292370975, -4.34542654e-42, 0.292371005, 0.956304908, -1.4211969e-41, 0, 1.48607702e-41, -1))
meshs(R2,"Mesh",Vector3.new(1, 1, 1.02999997),Enum.MeshType.Brick,"")
R3=parts(m,"R3",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007),"Deep blue",Enum.Material.SmoothPlastic,0,0)
R3Weld=welds(R3,"R3Weld",RArm,R3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.489997864, 0.0707130432, 0.424267769, -1.00000036, 1.86264493e-09, -1.86264515e-09, 3.95812094e-09, 0.707107604, -0.707107306, 1.31709077e-09, -0.707107306, -0.707107604))
meshs(R3,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")
table.insert(rainParts,#rainParts+1,R3)
R3=parts(m,"R3",Vector3.new(0.099999927, 0.100000001, 0.0999999568),"Deep blue",Enum.Material.SmoothPlastic,0,0)
R3Weld=welds(R3,"R3Weld",RArm,R3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.459999084, 0.0707130432, 0.424266815, -1.00000036, 1.86264515e-09, -1.86264515e-09, 3.95127042e-09, 0.707107544, -0.707107306, 1.31709066e-09, -0.707107306, -0.707107544))
meshs(R3,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")
table.insert(rainParts,#rainParts+1,R3)

R1=parts(m,"R1",Vector3.new(0.299999982, 1.50000024, 0.599999905),"Medium stone grey",Enum.Material.SmoothPlastic,0,0)
R1Weld=welds(R1,"R1Weld",LArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.452291489, 0.050109148, -0.000789642334, -1, 2.72032397e-13, 0, -2.72032397e-13, 1, -2.99999992e-05, 8.16097137e-18, -2.99999992e-05, -1))
meshs(R1,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")
R1=parts(m,"R1",Vector3.new(1, 0.100000016, 1),"Medium stone grey",Enum.Material.SmoothPlastic,0,0)
R1Weld=welds(R1,"R1Weld",LArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00228977203, -0.449890375, -0.000789642334, -1, 2.72032397e-13, 0, -2.72032397e-13, 1, -2.99999992e-05, 8.16097137e-18, -2.99999992e-05, -1))
meshs(R1,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")
R1=parts(m,"R1",Vector3.new(1, 0.100000016, 1),"Medium stone grey",Enum.Material.SmoothPlastic,0,0)
R1Weld=welds(R1,"R1Weld",LArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00228977203, 0.55010891, -0.000789642334, -1, 2.72032397e-13, 0, -2.72032397e-13, 1, -2.99999992e-05, 8.16097137e-18, -2.99999992e-05, -1))
meshs(R1,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")
R1=parts(m,"R1",Vector3.new(0.300000012, 0.700000048, 0.700000048),"Medium stone grey",Enum.Material.SmoothPlastic,0,0)
R1Weld=welds(R1,"R1Weld",LArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.452291489, 0.0348739624, -0.0359916687, -1, 2.72032397e-13, 0, -1.92350191e-13, 0.707085609, -0.707128048, 1.92361738e-13, -0.707128048, -0.707085609))
meshs(R1,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.300000012, 0.200000003, 0.200000003),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",LArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.452292442, 0.248123169, -0.177259445, -1, 2.72032397e-13, 0, -1.92361738e-13, 0.707128048, 0.707085609, -1.92350191e-13, 0.707085609, -0.707128048))
meshs(R2,"Mesh",Vector3.new(1.01999998, 1, 1),Enum.MeshType.Wedge,"")
R2=parts(m,"R2",Vector3.new(0.300000012, 0.200000003, 0.200000003),"Smoky grey",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",LArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.452292442, 0.176141739, -0.24700737, -1, 2.72032397e-13, 0, 1.92361738e-13, -0.707128048, -0.707085609, 1.92350191e-13, -0.707085609, 0.707128048))
meshs(R2,"Mesh",Vector3.new(1.01999998, 1, 1),Enum.MeshType.Wedge,"")

anti=parts(e,"ref",Vector3.new(.1,.1,.1),"Smoky grey",Enum.Material.SmoothPlastic,0,1)
anti.Anchored=true
anti.CFrame=Root.CFrame


Handle1=parts(m,"Handle",Vector3.new(.1,.1,.1),"Institutional white",Enum.Material.SmoothPlastic,0,1)
Handle1Weld=welds(Handle1,"HandleWeld",LArm,Handle1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.462291718, 0.699890137, 0.000787714147, -1, 2.72032397e-13, 0, 2.72032397e-13, -1, 2.99999992e-05, -8.16097137e-18, 2.99999992e-05, 1))
meshs(Handle1,"Mesh",Vector3.new(1.04999995, 1, 1),Enum.MeshType.Cylinder,"")
Handle=parts(m,"R2",Vector3.new(0.300000012, 0.400000006, 0.400000006),"Institutional white",Enum.Material.SmoothPlastic,0,0)
HandleWeld=welds(Handle1,"HandleWeld",Handle1,Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
meshs(Handle,"Mesh",Vector3.new(1.04999995, 1, 1),Enum.MeshType.Cylinder,"")
R1=parts(m,"R1",Vector3.new(0.300000012, 0.400000006, 0.400000006),"Really black",Enum.Material.SmoothPlastic,0,0)
R1Weld=welds(R1,"R1Weld",Handle,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, -5.44064793e-13, 1.63219427e-17, -5.44064793e-13, 1, 0, 1.63219427e-17, 0, 1))
meshs(R1,"Mesh",Vector3.new(1.05999994, 0.800000012, 0.800000012),Enum.MeshType.Cylinder,"")
R2=parts(m,"R2",Vector3.new(0.300000012, 0.100000016, 0.600000024),"Institutional white",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",Handle,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, -1.48516847e-06, 1, -5.44064793e-13, 1.63219427e-17, -5.44064793e-13, 1, 0, 1.63219427e-17, 0, 1))
meshs(R2,"Mesh",Vector3.new(1.04999995, 1, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.300000012, 0.100000016, 0.600000024),"Institutional white",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",Handle,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-07, -1.71089778e-06, 2.38418579e-07, 1, -2.72032397e-13, 8.16097137e-18, 8.16097137e-18, 0, 1, 2.72032397e-13, -1, 0))
meshs(R2,"Mesh",Vector3.new(1.04999995, 1, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.300000012, 0.100000016, 0.600000024),"Institutional white",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",Handle,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-07, -1.43051147e-06, -1.1920929e-06, 1, -2.72032397e-13, 8.16097137e-18, -1.92350259e-13, 0.707107067, 0.70710659, 1.9236167e-13, -0.70710659, 0.707107067))
meshs(R2,"Mesh",Vector3.new(1.04999995, 1, 1),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.300000012, 0.100000016, 0.600000024),"Institutional white",Enum.Material.SmoothPlastic,0,0)
R2Weld=welds(R2,"R2Weld",Handle,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-07, 1.1920929e-06, -1.43051147e-06, 1, -2.72032397e-13, 8.16097137e-18, -1.9236167e-13, 0.70710659, -0.707107067, -1.92350259e-13, 0.707107067, 0.70710659))
meshs(R2,"Mesh",Vector3.new(1.04999995, 1, 1),Enum.MeshType.Brick,"")
R1=parts(m,"R1",Vector3.new(0.300000012, 0.100000016, 0.600000024),"Really black",Enum.Material.SmoothPlastic,0,0)
R1Weld=welds(R1,"R1Weld",Handle,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, -1.48516847e-06, 1, -5.44064793e-13, 1.63219427e-17, -5.44064793e-13, 1, 0, 1.63219427e-17, 0, 1))
meshs(R1,"Mesh",Vector3.new(1.05999994, 0.800000012, 0.800000012),Enum.MeshType.Brick,"")
R1=parts(m,"R1",Vector3.new(0.300000012, 0.100000016, 0.600000024),"Really black",Enum.Material.SmoothPlastic,0,0)
R1Weld=welds(R1,"R1Weld",Handle,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-07, -1.71089778e-06, 2.38418579e-07, 1, -2.72032397e-13, 8.16097137e-18, 8.16097137e-18, 0, 1, 2.72032397e-13, -1, 0))
meshs(R1,"Mesh",Vector3.new(1.05999994, 0.800000012, 0.800000012),Enum.MeshType.Brick,"")
R1=parts(m,"R1",Vector3.new(0.300000012, 0.100000016, 0.600000024),"Really black",Enum.Material.SmoothPlastic,0,0)
R1Weld=welds(R1,"R1Weld",Handle,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-07, -1.43051147e-06, -1.1920929e-06, 1, -2.72032397e-13, 8.16097137e-18, -1.92350259e-13, 0.707107067, 0.70710659, 1.9236167e-13, -0.70710659, 0.707107067))
meshs(R1,"Mesh",Vector3.new(1.05999994, 0.800000012, 0.800000012),Enum.MeshType.Brick,"")
R1=parts(m,"R1",Vector3.new(0.300000012, 0.100000016, 0.600000024),"Really black",Enum.Material.SmoothPlastic,0,0)
R1Weld=welds(R1,"R1Weld",Handle,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-07, 1.1920929e-06, -1.43051147e-06, 1, -2.72032397e-13, 8.16097137e-18, -1.9236167e-13, 0.70710659, -0.707107067, -1.92350259e-13, 0.707107067, 0.70710659))
meshs(R1,"Mesh",Vector3.new(1.05999994, 0.800000012, 0.800000012),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.300000012, 0.25, 0.100000001),"Institutional white",Enum.Material.Neon,0,0)
R2Weld=welds(R2,"R2Weld",LArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.462291718, 0.699889421, 0.0707877204, -1, 2.72032397e-13, 0, 2.72032397e-13, -1, 2.99999992e-05, -8.16097137e-18, 2.99999992e-05, 1))
meshs(R2,"Mesh",Vector3.new(1.07000005, 1, 0.100000001),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.300000012, 0.100000001, 0.100000001),"Institutional white",Enum.Material.Neon,0,0)
R2Weld=welds(R2,"R2Weld",LArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.462291956, 0.0257844031, -0.819885492, -1, 0, 0, 0, 2.99999992e-05, 1, 0, 1, -2.99999992e-05))
meshs(R2,"Mesh",Vector3.new(1.07000005, 1, 0.100000001),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.300000012, 0.100000001, 0.100000001),"Institutional white",Enum.Material.Neon,0,0)
R2Weld=welds(R2,"R2Weld",LArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.462291956, 0.0257844049, -0.719885588, -1, 0, 0, 0, 2.99999992e-05, 1, 0, 1, -2.99999992e-05))
meshs(R2,"Mesh",Vector3.new(1.07000005, 1, 0.100000001),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.300000012, 0.0500000045, 0.100000001),"Institutional white",Enum.Material.Neon,0,0)
R2Weld=welds(R2,"R2Weld",LArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.462000012, 0.548022509, 0.492837429, -1, 0, 0, 0, -0.70712781, -0.707085848, 0, -0.707085848, 0.70712781))
meshs(R2,"Mesh",Vector3.new(1.07000005, 1, 0.100000001),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.300000012, 0.0500000045, 0.100000001),"Institutional white",Enum.Material.Neon,0,0)
R2Weld=welds(R2,"R2Weld",LArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.462000012, 0.54091835, -0.596107483, -1, 0, 0, 0, -0.707085371, 0.707128346, 0, 0.707128346, 0.707085371))
meshs(R2,"Mesh",Vector3.new(1.07000005, 1, 0.100000001),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.300000012, 0.0600000024, 0.100000001),"Institutional white",Enum.Material.Neon,0,0)
R2Weld=welds(R2,"R2Weld",LArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.462000012, 0.465209961, -0.52539444, -1, 0, 0, 0, -0.707085371, 0.707128346, 0, 0.707128346, 0.707085371))
meshs(R2,"Mesh",Vector3.new(1.07000005, 1, 0.100000001),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.300000012, 0.110000007, 0.100000001),"Institutional white",Enum.Material.Neon,0,0)
R2Weld=welds(R2,"R2Weld",LArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.462000012, 0.629998207, -0.0620189011, -1, 2.72032397e-13, 0, 2.72032397e-13, -1, 2.99999992e-05, -8.16097137e-18, 2.99999992e-05, 1))
meshs(R2,"Mesh",Vector3.new(1.07000005, 1, 0.100000001),Enum.MeshType.Brick,"")
R2=parts(m,"R2",Vector3.new(0.300000012, 0.100000001, 0.100000001),"Institutional white",Enum.Material.Neon,0,0)
R2Weld=welds(R2,"R2Weld",LArm,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.462291956, 0.509591579, -0.579190969, -1, 0, 0, 0, -0.707085371, 0.707128346, 0, 0.707128346, 0.707085371))
meshs(R2,"Mesh",Vector3.new(1.07000005, 0.5, 0.5),Enum.MeshType.Brick,"")
R1=parts(m,"R1",Vector3.new(0.300000012, 0.100000001, 0.100000001),"Really black",Enum.Material.SmoothPlastic,0,0)
R1Weld=welds(R1,"R1Weld",LArm,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.462291956, 0.509591579, -0.579190969, -1, 0, 0, 0, -0.707085371, 0.707128346, 0, 0.707128346, 0.707085371))
meshs(R1,"Mesh",Vector3.new(1.08000004, 0.400000006, 0.400000006),Enum.MeshType.Brick,"")





R34=parts(m,"R34",Vector3.new(0.299999982, 1.40000021, 0.499999911),"Black",Enum.Material.SmoothPlastic,0,0)
R34Weld=welds(R34,"R34Weld",LArm,R34,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.462291718, -0.050109148, 0.000787734985, -1, 2.72032397e-13, 0, 2.72032397e-13, -1, 2.99999992e-05, -8.16097137e-18, 2.99999992e-05, 1))
meshs(R34,"Mesh",Vector3.new(1.00999999, 1, 1.00999999),Enum.MeshType.Brick,"")

local Ruin=create("ScreenGui"){
Name="Ruin",
Parent=plr.PlayerGui}

local Visss=create("SurfaceGui"){
Name="Visss",
Parent=R34,
CanvasSize=Vector2.new(300,300),
LightInfluence=0,
Face="Right"}

haah=1
for i=.2,.8,.2 do
local ssss=create("Frame"){
Name="vais"..haah,
Parent=Visss,
AnchorPoint=Vector2.new(0.5, 0),
BackgroundColor3=Color3.new(1, 1, 1),
BackgroundTransparency=0,
BorderSizePixel=0,
Position=UDim2.new(i, 0, 0, 0),
Size=UDim2.new(.15, 0, 0, 0)}
haah=haah+1
end

local Mode=create("Frame"){
Name="Mode",
Parent=Ruin,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(1, 1, 1),
BackgroundTransparency=1,
Position=UDim2.new(1, 0, 0.899999976, 0),
Size=UDim2.new(0, 340, 0, 340)}

local Astral=create("TextLabel"){
Name="Astral",
Parent=Mode,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(0.666667, 0.666667, 1),
BorderColor3=Color3.new(0.537255, 0, 0.807843),
BorderSizePixel=10,
Position=UDim2.new(1.22000003, 0, 0.5, 0),
Rotation=180,
Size=UDim2.new(0, 250, 0, 60),
ZIndex=3,
Font=Enum.Font.Arcade,
Text="Astral",
TextColor3=Color3.new(0.470588, 0, 0.705882),
TextScaled=true,
TextSize=14,
TextWrapped=true}

local Misfortune=create("TextLabel"){
Name="Misfortune",
Parent=Mode,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(0, 0, 0),
BorderColor3=Color3.new(1, 1, 1),
BorderSizePixel=10,
Position=UDim2.new(-0.219999999, 0, 0.5, 0),
Size=UDim2.new(0, 250, 0, 60),
ZIndex=3,
Font=Enum.Font.Arcade,
Text="Misfortune",
TextColor3=Color3.new(1, 1, 1),
TextScaled=true,
TextSize=14,
TextWrapped=true}

local Solar=create("TextLabel"){
Name="Solar",
Parent=Mode,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(1, 0.439216, 0.160784),
BorderColor3=Color3.new(1, 0.666667, 0),
BorderSizePixel=10,
Position=UDim2.new(0.5, 0, 1.22000003, 0),
Rotation=270,
Size=UDim2.new(0, 250, 0, 60),
ZIndex=3,
Font=Enum.Font.Arcade,
Text="Solar",
TextColor3=Color3.new(1, 0.666667, 0),
TextScaled=true,
TextSize=14,
TextWrapped=true}

local Agony=create("TextLabel"){
Name="Agony",
Parent=Mode,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(0.666667, 0, 0),
BorderColor3=Color3.new(1, 0.0470588, 0.0470588),
BorderSizePixel=10,
Position=UDim2.new(0.5, 0, -0.219999999, 0),
Rotation=90,
Size=UDim2.new(0, 250, 0, 60),
ZIndex=3,
Font=Enum.Font.Arcade,
Text="Agony",
TextColor3=Color3.new(1, 0, 0),
TextScaled=true,
TextSize=14,
TextWrapped=true}

local Mode2=create("Frame"){
Name="Mode2",
Parent=Mode,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(1, 1, 1),
BackgroundTransparency=1,
Position=UDim2.new(0.5, 0, 0.5, 0),
Rotation=45,
Size=UDim2.new(0, 340, 0, 340)}

local Honor=create("TextLabel"){
Name="Honor",
Parent=Mode2,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(1, 0.858824, 0.145098),
BorderColor3=Color3.new(1, 1, 0.498039),
BorderSizePixel=10,
Position=UDim2.new(1.22000003, 0, 0.5, 0),
Rotation=180,
Size=UDim2.new(0, 250, 0, 60),
ZIndex=3,
Font=Enum.Font.Arcade,
Text="Honor",
TextColor3=Color3.new(1, 1, 0.498039),
TextScaled=true,
TextSize=14,
TextWrapped=true}

local Gale=create("TextLabel"){
Name="Gale",
Parent=Mode2,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(0.223529, 0.807843, 0.458824),
BorderColor3=Color3.new(0.560784, 1, 0.482353),
BorderSizePixel=10,
Position=UDim2.new(-0.219999999, 0, 0.5, 0),
Size=UDim2.new(0, 250, 0, 60),
ZIndex=3,
Font=Enum.Font.Arcade,
Text="Gale",
TextColor3=Color3.new(0.560784, 1, 0.482353),
TextScaled=true,
TextSize=14,
TextWrapped=true}

local Pastel=create("TextLabel"){
Name="Pastel",
Parent=Mode2,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(0, 0.666667, 1),
BorderColor3=Color3.new(0.333333, 0.333333, 1),
BorderSizePixel=10,
Position=UDim2.new(0.5, 0, 1.22000003, 0),
Rotation=270,
Size=UDim2.new(0, 250, 0, 60),
ZIndex=3,
Font=Enum.Font.Arcade,
Text="Pastel",
TextColor3=Color3.new(0.333333, 0.333333, 1),
TextScaled=true,
TextSize=14,
TextWrapped=true}

local Glace=create("TextLabel"){
Name="Glace",
Parent=Mode2,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(10/255,140/255,212/255),
BorderColor3=Color3.new(90/255,190/255,246/255),
BorderSizePixel=10,
Position=UDim2.new(0.5, 0, -0.219999999, 0),
Rotation=90,
Size=UDim2.new(0, 250, 0, 60),
ZIndex=3,
Font=Enum.Font.Arcade,
Text="Glace",
TextColor3=Color3.new(90/255,190/255,246/255),
TextScaled=true,
TextSize=14,
TextWrapped=true}


local Roll=create("Frame"){
Name="Roll",
Parent=Ruin,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(1, 1, 1),
BackgroundTransparency=1,
Position=UDim2.new(1, 0, 0.899999976, 0),
Size=UDim2.new(0, 300, 0, 300)}


Trauma=create("TextLabel"){
Name="Trauma",
Parent=Roll,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(0.666667, 0.666667, 1),
BorderColor3=Color3.new(0.537255, 0, 0.807843),
BorderSizePixel=10,
Position=UDim2.new(1.32000003, 0, 0.5, 0),
Rotation=180,
Size=UDim2.new(0, 250, 0, 60),
ZIndex=3,
Font=Enum.Font.Arcade,
Text="Trauma",
TextColor3=Color3.new(0.470588, 0, 0.705882),
TextScaled=true,
TextSize=14,
TextTransparency=1,
TextStrokeTransparency=1,
BackgroundTransparency=1,
TextWrapped=true}


local ImageLabel=create("ImageLabel"){
Parent=Roll,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(1, 1, 1),
BackgroundTransparency=1,
Position=UDim2.new(0.5, 0, 0.5, 0),
Size=UDim2.new(1, 0, 1, 0),
ZIndex=2,
Image="rbxassetid://329394848",
ImageColor3=Color3.new(0, 0, 0)}

local Vis=create("ImageLabel"){
Name="Vis",
Parent=Roll,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(1, 1, 1),
BackgroundTransparency=1,
Position=UDim2.new(0.5, 0, 0.5, 0),
Size=UDim2.new(0.899999976, 0, 0.899999976, 0),
ZIndex=9,
Image="rbxassetid://329394848"}

local Vis_2=create("ImageLabel"){
Name="Vis",
Parent=Roll,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(1, 1, 1),
BackgroundTransparency=1,
Position=UDim2.new(0.5, 0, 0.5, 0),
Size=UDim2.new(0.400000006, 0, 0.400000006, 0),
ZIndex=2,
Image="rbxassetid://329394848"}

local Vis_3=create("ImageLabel"){
Name="Vis",
Parent=Mode,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(1, 1, 1),
BackgroundTransparency=1,
BorderColor3=Color3.new(1, 1, 1),
Position=UDim2.new(0.5, 0, 0.5, 0),
Rotation=45,
Size=UDim2.new(0.200000012, 0, 0.200000012, 0),
ZIndex=3,
Image="rbxassetid://730778073"}

local Frame=create("Frame"){
Parent=Roll,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(0, 0, 0),
Position=UDim2.new(0.5, 0, 0.5, 0),
Size=UDim2.new(0, 20, 0, 300)}

local Frame_2=create("Frame"){
Parent=Roll,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(0, 0, 0),
Position=UDim2.new(0.5, 0, 0.5, 0),
Rotation=90,
Size=UDim2.new(0, 20, 0, 300)}

local Frame_3=create("Frame"){
Parent=Roll,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(0, 0, 0),
Position=UDim2.new(0.5, 0, 0.5, 0),
Rotation=135,
Size=UDim2.new(0, 20, 0, 300)}

local Frame_4=create("Frame"){
Parent=Roll,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(0, 0, 0),
Position=UDim2.new(0.5, 0, 0.5, 0),
Rotation=45,
Size=UDim2.new(0, 20, 0, 300)}

local Vis_4=create("Frame"){
Name="Vis",
Parent=Roll,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(1, 1, 1),
BorderSizePixel=18,
Position=UDim2.new(0.860000014, 0, 0.140000001, 0),
Rotation=-45,
Size=UDim2.new(0, 75, 0, 50),
ZIndex=2}

local Vis_5=create("Frame"){
Name="Vis",
Parent=Roll,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(1, 1, 1),
BorderSizePixel=18,
Position=UDim2.new(0.860000014, 0, 0.860000014, 0),
Rotation=45,
Size=UDim2.new(0, 75, 0, 50),
ZIndex=2}

local Vis_6=create("Frame"){
Name="Vis",
Parent=Roll,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(1, 1, 1),
BorderSizePixel=18,
Position=UDim2.new(0.140000001, 0, 0.860000014, 0),
Rotation=-45,
Size=UDim2.new(0, 75, 0, 50),
ZIndex=2}

local Vis_7=create("Frame"){
Name="Vis",
Parent=Roll,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(1, 1, 1),
BorderSizePixel=18,
Position=UDim2.new(0.140000001, 0, 0.140000001, 0),
Rotation=45,
Size=UDim2.new(0, 75, 0, 50),
ZIndex=2}

local Vis_8=create("Frame"){
Name="Vis",
Parent=Roll,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(1, 1, 1),
BorderSizePixel=18,
Position=UDim2.new(0, 0, 0.5, 0),
Size=UDim2.new(0, 75, 0, 50),
ZIndex=2}

local Vis_9=create("Frame"){
Name="Vis",
Parent=Roll,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(1, 1, 1),
BorderSizePixel=18,
Position=UDim2.new(1, 0, 0.5, 0),
Size=UDim2.new(0, 75, 0, 50),
ZIndex=2}

local Vis_10=create("Frame"){
Name="Vis",
Parent=Roll,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(1, 1, 1),
BorderSizePixel=18,
Position=UDim2.new(0.5, 0, 0, 0),
Rotation=90,
Size=UDim2.new(0, 75, 0, 50),
ZIndex=2}

local Vis_11=create("Frame"){
Name="Vis",
Parent=Roll,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(1, 1, 1),
BorderSizePixel=18,
Position=UDim2.new(0.5, 0, 1, 0),
Rotation=90,
Size=UDim2.new(0, 75, 0, 50),
ZIndex=2}

local ImageLabel_2=create("ImageLabel"){
Parent=Mode,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(0, 0, 0),
BackgroundTransparency=1,
BorderColor3=Color3.new(1, 1, 1),
Position=UDim2.new(0.5, 0, 0.5, 0),
Rotation=45,
Size=UDim2.new(0.140000003, 0, 0.140000003, 0),
ZIndex=3,
Image="rbxassetid://730778073",
ImageColor3=Color3.new(0, 0, 0)}

local Screen=create("Frame"){
Name="Screen",
Parent=Ruin,
AnchorPoint=Vector2.new(0.5, 0.5),
BackgroundColor3=Color3.new(1, 1, 1),
BackgroundTransparency=1,
Position=UDim2.new(.5, 0, .5, 0),
Size=UDim2.new(1,0, 1,0)}

lalsdl=.8
for i=1,8 do
local faf=create("Frame"){
Name="Bar"..i,
Parent=Screen,
AnchorPoint=Vector2.new(0, 0.5),
BackgroundColor3=Color3.new(0,0,0),
BackgroundTransparency=.3,
Position=UDim2.new(0.915, 0, lalsdl, 0),
Rotation=180,
Size=UDim2.new(0, 0, 0, 10),
ZIndex=1,
BorderSizePixel=0}
lalsdl=lalsdl+.03
end

local rain=Color3.new()
sincolor=function(sine)
sine=math.deg(sine)
local radcolor=function(col)
return math.rad(col/255*360)
end
local r=math.abs(math.sin(radcolor(sine + 10)))
local g=math.abs(math.sin(radcolor(sine + 85)))
local b=math.abs(math.sin(radcolor(sine + 170)))
return Color3.new(r, g, b)
end

local rain2=Color3.new()
sincolor2=function(sine2)
sine2=math.deg(sine2)
local radcolor=function(col)
return math.rad(col/255*360)
end
local r=math.abs(math.sin(radcolor(sine2 + 25)))
local g=math.abs(math.sin(radcolor(sine2 + 100)))
local b=math.abs(math.sin(radcolor(sine2 + 185)))
return Color3.new(r, g, b)
end

HitSound={ 
"199149137",
"199149186",
"199149221",
"199149235",
"199149269",
"199149297",
}

function FindNearestTorso(pos,distance)
local list=(workspace:children())
local torso=nil
local dist=distance
local temp,human,temp2=nil,nil,nil
for x=1,#list do
temp2=list[x]
if temp2.className=="Model"and temp2.Name~=chr.Name then
temp=temp2:findFirstChild("Torso")
human=temp2:findFirstChildOfClass("Humanoid")
if temp~=nil and human~=nil and human.Health>=0 and (temp.Position-pos).magnitude<dist then
local dohit=true
if dohit==true then
torso=temp
dist=(temp.Position-pos).magnitude
end
end
end
end
return torso,dist
end

function Damage(Type,Partzz,hit,dmg,delayz,hs,hv,hp)
if hit.Parent==nil then
return
end
local h=hit.Parent:FindFirstChildOfClass("Humanoid")
for _,v in pairs(hit.Parent:children()) do
if v:IsA("Humanoid")then
h=v
end
end
if h~=nil and hit.Parent.Name~=chr.Name then
if hit.Parent:findFirstChild("AHit")==nil then
local c=create("BoolValue"){
Name="AHit",
Value=true,
Parent=hit.Parent}
game:GetService("Debris"):AddItem(c,delayz)
if choice~=9 then
h.Health=h.Health
else

end
if h.Health==math.huge then
elseif h.Health>=10000 then
h.MaxHealth=100
h.Health=100
end
if hs~=""and hit.Parent.Head.Parent~=nil then
sounds(hit.Parent.Head,hs,hv,hp)
end
local ref=parts(e,"ref",Vector3.new(.1,.1,.1),"Smoky grey",Enum.Material.SmoothPlastic,0,1)
ref.Anchored=true
ref.CFrame=CFrame.new(hit.Position+Vector3.new(math.random(-250,250)/100,math.random(-100,100)/100,math.random(-250,250)/100))
damagegui(ref,dmg)
if Type=="Disappear"then
Partzz.Parent=nil


elseif Type=="None"then

elseif Type=="Wind"then
local angle=(hit.Position-(Partzz.Position + Vector3.new(0, 0, 0))).unit
hit.Parent.Torso.Velocity=(angle*-25)
elseif Type=="Push" then
hit.Parent.Torso.Velocity=(Root.CFrame.lookVector*80)+(Root.CFrame.upVector*80)
elseif Type=="Push2" then
hit.Parent.Torso.Velocity=(Root.CFrame.lookVector*80)+(-Root.CFrame.upVector*80)
end
end
end
end

function Mdamage(Type,Partzz,Magn,Dmg,delayz,hs,hv,hp)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChildOfClass("Humanoid")
if hum~=nil then
local ddee=c:findFirstChild("Head")
if ddee~=nil then
local targ=ddee.Position-Partzz.Position
local mag=targ.magnitude
if mag<=Magn and c.Name~=plr.Name then 
Damage(Type,Partzz,ddee,Dmg,delayz,hs,hv,hp)
if hum.Health==math.huge then

end
end
end
end
end
end

function damagegui(parz,text)
local damag=create("BillboardGui"){
Size=UDim2.new(5, 0, 15, 0),
Adornee=parz,
Parent=parz,
ExtentsOffset=Vector3.new(0, 3, 0),
AlwaysOnTop=true
}
local damagLabel=create("TextLabel"){
AnchorPoint=Vector2.new(.5,.5),
BackgroundTransparency=1,
TextStrokeTransparency=0,
TextTransparency=0,
Position=UDim2.new(.5, 0, .5, 0),
Size=UDim2.new(1.5, 0, .5, 0),
Text=text,
Font="Arcade",
TextScaled=true,
Parent=damag,
TextColor3=BrickColor.new(col[1]).Color,
TextStrokeColor3=BrickColor.new(col[2]).Color
}
if rainb==true then
damagLabel.TextColor3=rain
damagLabel.TextStrokeColor3=rain2
end
local raise=.2
local rot=math.random(-10,10)/15
game:GetService("Debris"):AddItem(par,4)
coroutine.resume(coroutine.create(function()
for i=0,1.1,.02 do
swait()
raise=raise-.008
if choice~=9 then
damagLabel.Text=text 
else
damagLabel.TextColor3=Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)
damagLabel.TextStrokeColor3=Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)
damagLabel.Text=math.random(6,666666)/math.random(math.random(6,66))
end
damagLabel.TextTransparency=i
damagLabel.TextStrokeTransparency=i
damagLabel.Rotation=damagLabel.Rotation+rot
parz.Position=parz.Position+Vector3.new(0,raise,0)
end
parz:Remove()
end))
end

function Effect(par,color,CF,x,y,z,x1,y1,z1,de,mtyp,typ,rad,id,min,max,qu)
local ex=create("Part"){
Size=Vector3.new(.2,.2,.2),
BrickColor=BrickColor.new(color),
CanCollide=false,
Material="Neon",
Anchored=true,
CFrame=CF,
Parent=par}
if choice==8 then
ex.Color=rain
end
NoOutline(ex)
local exe=create("SpecialMesh"){
Scale=Vector3.new(x,y,z),
MeshType=mtyp,
Parent=ex}
if mtyp=="FileMesh"and id~=""then
exe.MeshId="rbxassetid://"..id
end
game:GetService("Debris"):AddItem(ex,10)
local ez=ex.CFrame
local nu=0
local no=math.random()-math.random()
coroutine.resume(coroutine.create(function()
for i=0,1.01,de do
swait()
if choice==8 then
ex.Color=rain
end
if typ~=5 then
ex.Transparency=i
end
if choice==9 then
ex.Color=Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)	
end
exe.Scale=exe.Scale+Vector3.new(x1,y1,z1)
if typ==1 then
ex.CFrame=ex.CFrame*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
elseif typ==2 then
ex.CFrame=ex.CFrame*CFrame.Angles(0,math.rad(rad),0)
elseif typ==3 then
ex.CFrame=ex.CFrame*CFrame.new(0,0,rad)
elseif typ==4 then
nu=nu+no
ez=ez*CFrame.new(0,math.random(min,max)/qu,0)
ex.CFrame=ez*CFrame.Angles(nu,0,0)
elseif typ==7 then
ex.CFrame=CFrame.new(ex.Position+Vector3.new(0,rad,0))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
end
end
ex:Remove()
end))
end

function REffect(par,color,CF,x,y,z,x1,y1,z1,de,mtyp,typ,rad,id)
local ex=create("Part"){
Size=Vector3.new(.2,.2,.2),
BrickColor=BrickColor.new(color),
CanCollide=false,
Material="Neon",
Anchored=true,
CFrame=CF,
Transparency=1,
Parent=par}
if choice==8 then
ex.Color=rain
end
NoOutline(ex)
local exe=create("SpecialMesh"){
Scale=Vector3.new(x,y,z),
MeshType=mtyp,
Parent=ex}
if mtyp=="FileMesh"and id~=""then
exe.MeshId="rbxassetid://"..id
end
game:GetService("Debris"):AddItem(ex,10)
local ez=ex.CFrame
local nu=0
local no=math.random()-math.random()
coroutine.resume(coroutine.create(function()
for i=1,-.01,-de do
swait()
if choice==8 then
ex.Color=rain
end
if typ~=5 then
ex.Transparency=i
end
if choice==9 then
ex.Color=Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)	
end
exe.Scale=exe.Scale+Vector3.new(x1,y1,z1)
if typ==1 then
ex.CFrame=ex.CFrame*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
elseif typ==2 then
ex.CFrame=ex.CFrame*CFrame.Angles(0,math.rad(rad),0)
elseif typ==3 then
ex.CFrame=ex.CFrame*CFrame.new(0,0,rad)
elseif typ==4 then
nu=nu+no
ez=ez*CFrame.new(0,rad,0)
ex.CFrame=ez*CFrame.Angles(nu,0,0)
end
end
ex:Remove()
end))
end

function LockEffect(par,color,CF,locke,x,y,z,x1,y1,z1,de,mtyp,typ,rad,id)
local ex=create("Part"){
Size=Vector3.new(.2,.2,.2),
BrickColor=BrickColor.new(color),
CanCollide=false,
Material="Neon",
Anchored=true,
CFrame=CF,
Parent=par}
if choice==8 then
ex.Color=rain
end
NoOutline(ex)
local exe=create("SpecialMesh"){
Scale=Vector3.new(x,y,z),
MeshType=mtyp,
Parent=ex}
if mtyp=="FileMesh"and id~=""then
exe.MeshId="rbxassetid://"..id
end
game:GetService("Debris"):AddItem(ex,10)
local ez=ex.CFrame
local nu=0
local no=math.random()-math.random()
coroutine.resume(coroutine.create(function()
for i=0,1.01,de do
swait()
if choice==8 then
ex.Color=rain
end
if typ~=5 then
ex.Transparency=i
end
if choice==9 then
ex.Color=Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)	
end
exe.Scale=exe.Scale+Vector3.new(x1,y1,z1)
if typ==1 then
ex.CFrame=locke.CFrame*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
elseif typ==2 then
ex.CFrame=locke.CFrame*CFrame.Angles(0,math.rad(rad),0)
elseif typ==3 then
ex.CFrame=locke.CFrame*CFrame.new(0,0,rad)
elseif typ==4 then
nu=nu+no
locke=locke*CFrame.new(0,rad,0)
ex.CFrame=locke*CFrame.Angles(nu,0,0)
else
ex.CFrame=locke.CFrame
end
end
ex:Remove()
end))
end

function Lightning(par,pos0, pos1, howmany, offset, color, thick, transp, de)
local magz=(pos0 - pos1).magnitude
local curpos=pos0
local trz={
-offset,
 offset
}
for i=1, howmany do
local li=create("Part"){
Size=Vector3.new(thick,thick,magz/howmany),
BrickColor=BrickColor.new(color),
CanCollide=false,
Material="Neon",
Anchored=true,
Parent=par}
if choice==8 then
li.Color=rain
end
NoOutline(li)
local ofz=Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
local trolpos=CFrame.new(curpos, pos1) * CFrame.new(0, 0, magz / howmany).p + ofz
li.Material="Neon"
if howmany == i then
local magz2=(curpos - pos1).magnitude
li.Size=Vector3.new(thick, thick, magz2)
li.CFrame=CFrame.new(curpos, pos1) * CFrame.new(0, 0, -magz2 / 2)
coroutine.resume(coroutine.create(function()
for i=0,1.01,de do
swait()
if choice==8 then
li.Color=rain
end
li.Transparency=i
end
if li.Parent~=nil then
li:Remove()
end
end))
else
do
do
li.CFrame=CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / howmany / 2)
curpos=li.CFrame * CFrame.new(0, 0, magz / howmany / 2).p
game.Debris:AddItem(li, 10)
coroutine.resume(coroutine.create(function()
for i=0,1.01,de do
swait()
if choice==8 then
li.Color=rain
end
li.Transparency=i
end
if li.Parent~=nil then
li:Remove()
end
end))
end
end
end
end
end

--v other 
function CameraShake(Intensity,par,mag,del)
local magz=(par.Position-Root.Position).magnitude
if magz<=mag then
coroutine.resume(coroutine.create(function()
local Focus=(workspace.CurrentCamera.CoordinateFrame.p-workspace.CurrentCamera.Focus.p).magnitude
Focus=100/Intensity+Focus/150
for i=math.random(150, 250)/100, 0, -del do
hum.CameraOffset=Vector3.new(math.random(-30, 30)/20*(i*Focus), math.random(-30, 30)/20*(i*Focus), math.random(-30, 30)/20*(i*Focus))
swait()
end
hum.CameraOffset=Vector3.new(0, 0, 0)
end))
end
end

function LASER()
local s=create("Model"){
Parent=chr,
Name="asc"}
local asdfz=parts(s,"asdfz",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Daisy orange",Enum.Material.Neon,0,1)
asdfz.CFrame=Root.CFrame
local asdf2=parts(s,"asdf2",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Daisy orange",Enum.Material.Neon,0,1)
local asdf2Weld=welds(asdf2,"asdf2Weld",asdfz,asdf2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
local asdf=parts(s,"asdf",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Daisy orange",Enum.Material.Neon,0,1)
local asdfWeld=welds(asdf,"asdfWeld",asdf2,asdf,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
asdf.CFrame=Root.CFrame
asdf2.CFrame=Root.CFrame
local Part=parts(s,"Part",Vector3.new(0.200000003, 0.300000012, 0.200000003),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(12.8999443, 0, 3.24249268e-05, 0.866025388, 0.500000238, 0, 0, 0, -1, -0.500000238, 0.866025388, 0))
meshs(Part,"Mesh",Vector3.new(10, 1, 18.3999996),Enum.MeshType.Brick,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 0.300000012, 0.200000003),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-12.9000549, -7.20024109e-05, -2.47955322e-05, 0.866025388, 0.500000238, 0, 0, 0, -1, -0.500000238, 0.866025388, 0))
meshs(Part,"Mesh",Vector3.new(10, 1, 18.3999996),Enum.MeshType.Brick,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 0.300000012, 0.200000003),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-12.8999863, -7.20024109e-05, -7.62939453e-05, 0.500000238, -0.866025388, 0, 0, 0, -1, 0.866025388, 0.500000238, 0))
meshs(Part,"Mesh",Vector3.new(10, 1, 18.3999996),Enum.MeshType.Brick,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 0.300000012, 0.200000003),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(12.8999786, 0, -1.52587891e-05, 0.707106829, -0.707106829, 0, 0, 0, -1, 0.707106829, 0.707106829, 0))
meshs(Part,"Mesh",Vector3.new(10, 1, 18.3999996),Enum.MeshType.Brick,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 0.300000012, 0.200000003),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-12.8999939, -7.20024109e-05, -7.62939453e-05, 0.707106829, -0.707106829, 0, 0, 0, -1, 0.707106829, 0.707106829, 0))
meshs(Part,"Mesh",Vector3.new(10, 1, 18.3999996),Enum.MeshType.Brick,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 0.300000012, 0.200000003),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(12.8999481, 0, 4.57763672e-05, 0.707106829, 0.707106829, 0, 0, 0, -1, -0.707106829, 0.707106829, 0))
meshs(Part,"Mesh",Vector3.new(10, 1, 18.3999996),Enum.MeshType.Brick,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 0.300000012, 0.200000003),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-12.9000397, -7.20024109e-05, -1.52587891e-05, 0.707106829, 0.707106829, 0, 0, 0, -1, -0.707106829, 0.707106829, 0))
meshs(Part,"Mesh",Vector3.new(10, 1, 18.3999996),Enum.MeshType.Brick,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 0.300000012, 0.200000003),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(12.8999481, 0, 6.48498535e-05, 0.500000238, 0.866025388, 0, 0, 0, -1, -0.866025388, 0.500000238, 0))
meshs(Part,"Mesh",Vector3.new(10, 1, 18.3999996),Enum.MeshType.Brick,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 0.300000012, 0.200000003),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(12.899971, 0, -1.14440918e-05, 0.866025388, -0.500000238, 0, 0, 0, -1, 0.500000238, 0.866025388, 0))
meshs(Part,"Mesh",Vector3.new(10, 1, 18.3999996),Enum.MeshType.Brick,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 0.300000012, 0.200000003),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-12.9000435, -7.20024109e-05, -3.81469727e-06, 0.500000238, 0.866025388, 0, 0, 0, -1, -0.866025388, 0.500000238, 0))
meshs(Part,"Mesh",Vector3.new(10, 1, 18.3999996),Enum.MeshType.Brick,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 0.300000012, 0.200000003),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-12.9000015, -7.20024109e-05, -7.62939453e-05, 0.866025388, -0.500000238, 0, 0, 0, -1, 0.500000238, 0.866025388, 0))
meshs(Part,"Mesh",Vector3.new(10, 1, 18.3999996),Enum.MeshType.Brick,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 0.300000012, 0.200000003),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(12.8999958, 0, -2.28881836e-05, 0.500000238, -0.866025388, 0, 0, 0, -1, 0.866025388, 0.500000238, 0))
meshs(Part,"Mesh",Vector3.new(10, 1, 18.3999996),Enum.MeshType.Brick,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 5.39999914, 3.19999981),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.76837158e-07, 7.50000381, 1.6000042, 0, 0, 1, 1, 0, 0, 0, 1, 0))
meshs(Part,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 5.39999866, 3.19999909),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.76837158e-07, 7.50003433, 1.60000706, 0, 0, -1, 1, 0, 0, 0, -1, 0))
meshs(Part,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 14.2000036, 3.19999909),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -17.2999802, 1.6000061, 0, 0, -1, -1, 0, 0, 0, 1, 0))
meshs(Part,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 14.300005, 3.19999981),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -17.3500252, 1.59999561, 0, 0, 1, -1, 0, 0, 0, -1, 0))
meshs(Part,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 5.39999866, 3.19999909),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.76837158e-07, 7.7000351, 1.60000706, -0, -0, 1, -1, 0, 0, 0, -1, 0))
meshs(Part,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 5.39999914, 3.19999981),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.76837158e-07, 7.70000458, 1.6000042, 0, 0, -1, -1, 0, 0, 0, 1, 0))
meshs(Part,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 14.2000036, 3.19999909),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -17.4999771, 1.6000061, -0, -0, 1, 1, 0, 0, 0, 1, 0))
meshs(Part,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 14.300005, 3.19999981),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -17.5500259, 1.59999561, 0, 0, -1, 1, 0, 0, 0, -1, 0))
meshs(Part,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 14.2000036, 3.19999909),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -17.399971, 1.50000763, 0, 0, 1, 0, -1, 0, 1, 0, 0))
meshs(Part,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 5.39999914, 3.19999981),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 7.60000134, 1.50000763, 0, 0, -1, 0, 1, 0, 1, 0, 0))
meshs(Part,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 5.39999914, 3.19999981),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 7.60000134, 1.50000763, 0, 0, 1, 0, -1, 0, 1, 0, 0))
meshs(Part,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 14.300005, 3.19999981),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -17.4500275, 1.69998932, 0, 0, 1, 0, 1, 0, -1, 0, 0))
meshs(Part,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 5.39999866, 3.19999909),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 7.60002995, 1.70001221, 0, 0, -1, 0, -1, 0, -1, 0, 0))
meshs(Part,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 5.39999866, 3.19999909),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 7.60003948, 1.70001984, 0, 0, 1, 0, 1, 0, -1, 0, 0))
meshs(Part,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 14.300005, 3.19999981),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -17.4500198, 1.69998932, 0, 0, -1, 0, -1, 0, -1, 0, 0))
meshs(Part,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 14.2000036, 3.19999909),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -17.3999748, 1.50000763, 0, 0, -1, 0, 1, 0, 1, 0, 0))
meshs(Part,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 0.300000012, 0.200000003),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(12.8999443, 0, -1.19997025, 0.866025388, 0.500000238, 0, 0, 0, -1, -0.500000238, 0.866025388, 0))
meshs(Part,"Mesh",Vector3.new(25, 1, 8),Enum.MeshType.Brick,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 0.300000012, 0.200000003),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(12.899971, 0, 1.1999855, 0.866025388, -0.500000238, 0, 0, 0, -1, 0.500000238, 0.866025388, 0))
meshs(Part,"Mesh",Vector3.new(25, 1, 8),Enum.MeshType.Brick,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 0.300000012, 0.200000003),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-13.073143, 0, -1.29996872, 0.866025388, -0.500000238, 0, 0, 0, -1, 0.500000238, 0.866025388, 0))
meshs(Part,"Mesh",Vector3.new(25, 1, 8),Enum.MeshType.Brick,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 0.300000012, 0.200000003),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-13.0731659, 0, 1.29998398, 0.866025388, 0.500000238, 0, 0, 0, -1, -0.500000238, 0.866025388, 0))
meshs(Part,"Mesh",Vector3.new(25, 1, 8),Enum.MeshType.Brick,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 0.300000012, 0.200000003),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-12.936552, 0, -1.33655548, -0.500000238, -0.866025388, -0, 0, 0, -1, 0.866025388, -0.500000238, 0))
meshs(Part,"Mesh",Vector3.new(25, 1, 8),Enum.MeshType.Brick,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 0.300000012, 0.200000003),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-13.0365486, 0, 1.16339874, 0.500000238, -0.866025388, 0, 0, 0, -1, 0.866025388, 0.500000238, 0))
meshs(Part,"Mesh",Vector3.new(25, 1, 8),Enum.MeshType.Brick,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 0.300000012, 0.200000003),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(12.936552, 0, -1.33655548, 0.500000238, -0.866025388, 0, 0, 0, -1, 0.866025388, 0.500000238, 0))
meshs(Part,"Mesh",Vector3.new(25, 1, 8),Enum.MeshType.Brick,"")
local Part=parts(s,"Part",Vector3.new(0.200000003, 0.300000012, 0.200000003),"Daisy orange",Enum.Material.Neon,0,0)
local PartWeld=welds(Part,"PartWeld",asdf,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(13.0365715, 0, 1.16339493, -0.500000238, -0.866025388, -0, 0, 0, -1, 0.866025388, -0.500000238, 0))
meshs(Part,"Mesh",Vector3.new(25, 1, 8),Enum.MeshType.Brick,"")
s.PrimaryPart=asdfz
asdfz.Anchored=true
asdfz.CFrame=Root.CFrame
asdf2.CFrame=Root.CFrame*CFrame.new(0,30,0)
local hec=0
LockEffect(e,col[1],asdf2.CFrame,asdf2,55,55,1,25,25,0,.06,"Sphere",6,0,"")
for i=0,1,0.01 do
swait()
hec=hec+.5
asdfz.CFrame=Root.CFrame
asdf2.CFrame=Root.CFrame*CFrame.new(0,30,0)
asdf.CFrame=CFrame.new(asdf.CFrame.p,mouse.Hit.p)
asdfWeld.C0=clerp(asdfWeld.C0,asdfWeld.C0*CFrame.Angles(0,0,math.rad(4+hec)),.3)
end
local asdf3=parts(s,"asdf3",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Daisy orange",Enum.Material.Neon,0,1)
asdf3.Anchored=true
for i=1,200 do
swait()
asdf3.CFrame=CFrame.new(mouse.Hit.p)
asdfz.CFrame=Root.CFrame
asdf2.CFrame=Root.CFrame*CFrame.new(0,30,0)
asdf.CFrame=CFrame.new(asdf.CFrame.p,mouse.Hit.p)
asdfWeld.C0=clerp(asdfWeld.C0,asdfWeld.C0*CFrame.Angles(0,0,math.rad(4+hec)),.3)
local mag=(asdf2.Position-asdf3.Position).magnitude
Effect(e,col[1],CFrame.new((asdf2.Position+asdf3.Position)/2,asdf3.Position)*CFrame.Angles(0,math.rad(90),0),mag*5,40,40,0,.6,.6,.07,"Cylinder",6,0,"")
Effect(e,col[1],CFrame.new(asdf3.Position)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),41,41,122,-1,-1,0,.07,"Sphere",3,-5,"")
Effect(e,col[1],CFrame.new(asdf3.Position),20,20,20,11,11,11,.07,"Sphere",6,0,"")
Effect(e,col[1],CFrame.new(asdf3.Position),20,20,20,11,11,11,.07,"Brick",1,0,"")
Mdamage("None",asdf3,11,math.random(10,18),0,"")
end
for i=0,1.1,.02 do
swait()
asdf3.CFrame=CFrame.new(mouse.Hit.p)
asdfz.CFrame=Root.CFrame
asdf2.CFrame=Root.CFrame*CFrame.new(0,30,0)
asdf.CFrame=CFrame.new(asdf.CFrame.p,mouse.Hit.p)
asdfWeld.C0=clerp(asdfWeld.C0,asdfWeld.C0*CFrame.Angles(0,0,math.rad(4+hec)),.3)
for _,v in pairs(s:children()) do
if v:IsA("BasePart") then
v.Transparency=i
end
end
end
s:Remove()
end

--v atak
function Attack()
attack=true
if combo==1 then
combo=2
for i=0,1,0.12 do
swait()
Mdamage("None",RArm,4.2,math.random(10,20),.2,HitSound[math.random(1,#HitSound)],1,1)
RJ.C0=clerp(RJ.C0,CFrame.new(-1.40964985e-05, -0.11372108, -0.099010177, 0.611814082, -4.5593481e-08, -0.791001678, 0.156692281, 0.980183184, 0.121196352, 0.775326431, -0.198093489, 0.599689901)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-0.00178098679, 1.47727787, -0.00157509744, 0.6777668, 0.0772434175, 0.731208384, -4.27256055e-07, 0.994466662, -0.105053134, -0.735276997, 0.0712012053, 0.674016595)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.14380527, 0.516936123, -0.69855082, 0.0887541175, 0.434946328, 0.896071672, 0.986419916, -0.163200051, -0.0184868611, 0.138198152, 0.885543644, -0.443524361)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.6822449, 0.177517071, -0.228325516, 0.954484642, 0.288956225, -0.0739153624, -0.297713399, 0.908013403, -0.294751585, -0.0180541277, 0.303341419, 0.952710986)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.580742657, -2.05176497, 0.210113317, 0.933486521, -0.0691385269, 0.351884663, 1.72682337e-06, 0.981240153, 0.192790017, -0.358612567, -0.179966271, 0.915974498)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-1.01665866, -1.76135993, -0.431322992, 0.640841186, 0.179314032, 0.746437669, 1.48042e-06, 0.972337186, -0.233582348, -0.767673552, 0.149690285, 0.623113334)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
sounds(RArm,"200632136",1,1.2)
for i=0,1,0.1 do
swait()
Mdamage("None",RArm,4.2,math.random(10,20),.2,HitSound[math.random(1,#HitSound)],1,1)
RJ.C0=clerp(RJ.C0,CFrame.new(0.0256003067, -0.0520002246, -0.354070067, 0.350081027, -0.169843271, 0.921193123, -0.0253130943, 0.981350303, 0.19055441, -0.936377347, -0.0900277197, 0.339252859)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(0.151640147, 1.4738127, 0.0224934965, 0.270301849, 0.125617236, -0.954545557, -0.154247329, 0.984295189, 0.085853532, 0.950339496, 0.124029756, 0.285432875)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.80110931, 0.426911324, -0.625986278, 0.0936775953, -0.809836626, 0.579128146, 0.994559765, 0.0495007969, -0.0916557088, 0.0455588624, 0.584563673, 0.810067952)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.85886598, 0.161566481, -0.2567029, 0.378758818, 0.837661624, -0.39352873, -0.89434731, 0.440661192, 0.0772067085, 0.238085926, 0.322708666, 0.91606462)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.775518239, -1.92589116, -0.236844152, 0.481832683, -0.00619276613, -0.876241446, -0.169701144, 0.980383933, -0.100245029, 0.859673798, 0.197000504, 0.471330076)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.90784061, -2.00480008, -0.172252461, 0.285467356, 0.359883249, -0.888252497, -0.223748147, 0.926233113, 0.303363025, 0.931904256, 0.112144619, 0.344932497)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
local ref=parts(e,"ref",Vector3.new(.1,.1,.1),"Smoky grey",Enum.Material.SmoothPlastic,0,1)
ref.Anchored=true
ref.CFrame=Root.CFrame*CFrame.new(0,0,-6)
Effect(e,col[2],ref.CFrame,5,5,5,5,5,5,.06,"Sphere",6,0,"")
Effect(e,col[1],ref.CFrame,5,5,5,7,7,7,.07,"Sphere",6,0,"")
Effect(e,col[2],ref.CFrame,5,5,5,6,0,0,.05,"Sphere",6,0,"")
Effect(e,col[2],ref.CFrame,5,5,5,0,6,0,.05,"Sphere",6,0,"")
Effect(e,col[2],ref.CFrame,5,5,5,0,0,6,.05,"Sphere",6,0,"")
Mdamage("None",ref,8,math.random(10,20),0,"")
sounds(ref,"161006093",1.2,1.2)
game:GetService("Debris"):AddItem(ref,4)
for i=0,1,0.08 do
swait()
Torso.Velocity=Root.CFrame.lookVector*-20
RJ.C0=clerp(RJ.C0,CFrame.new(2.77385116e-05, -0.397874027, -0.107908018, 0.504696071, -0.000202174866, -0.863297164, 0.254513651, 0.955589056, 0.1485686, 0.824927092, -0.294702888, 0.482333422)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.25)
Neck.C0=clerp(Neck.C0,CFrame.new(-0.0580789, 1.53893268, -0.0402470827, 0.606136084, -0.208425328, 0.767566264, 0.0864968821, 0.976604223, 0.196882278, -0.790643632, -0.0529453754, 0.609983265)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.25)
RS.C0=clerp(RS.C0,CFrame.new(1.95940983, 0.502833605, -0.351823866, -0.0271940455, -0.944740415, 0.326689422, 0.988820434, -0.0733546838, -0.129820853, 0.146611214, 0.319506735, 0.936173439)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.25)
LS.C0=clerp(LS.C0,CFrame.new(-1.51987219, 0.114249595, -0.644724607, 0.409938663, 0.502568185, -0.761167288, -0.869661272, 0.466988117, -0.160036281, 0.275026947, 0.727562726, 0.628500462)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.25)
RH.C0=clerp(RH.C0,CFrame.new(0.759764791, -2.06948805, 0.377683461, 0.826902926, -0.343313456, 0.445384741, 0.158799037, 0.902335942, 0.400715649, -0.539457679, -0.260626286, 0.800661981)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.25)
LH.C0=clerp(LH.C0,CFrame.new(-1.10064852, -1.48462117, -0.274196982, 0.415272266, 0.443577677, 0.79422152, 3.56705277e-06, 0.873060644, -0.487611741, -0.909697294, 0.202494413, 0.362556309)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.25)
end

elseif combo==2 then
combo=3
for i=0,1,0.09 do
swait()
Mdamage("None",LArm,4.2,math.random(10,20),.2,HitSound[math.random(1,#HitSound)],1,1)
RJ.C0=clerp(RJ.C0,CFrame.new(0, -0, 0, 0.908417106, -1.17093835e-15, -0.418065071, 1.25419519e-05, 1, 2.72525122e-05, 0.418065071, -2.99999992e-05, 0.908417106)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(4.28571184e-06, 1.50002289, 4.94055348e-05, 0.886384606, 0, 0.462949723, 0, 1, 0, -0.462949723, 0, 0.886384606)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.56685495, 0.0783409849, 0.210455388, 0.96724993, -0.244476244, -0.0682572424, 0.253826082, 0.931572556, 0.260278672, -4.5388937e-05, -0.269079983, 0.963117838)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-0.546535552, 0.835143328, -0.873486161, 0.602048159, -0.729962826, 0.323562026, -0.075689964, -0.455583066, -0.886969686, 0.794864237, 0.509508073, -0.329533845)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.602877498, -2.02466917, 0.29541105, 0.944397688, -0.0989037603, 0.313578069, 0, 0.953688264, 0.300797045, -0.328805655, -0.284072042, 0.900660932)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.661388874, -2.02991033, -0.260612905, 0.850234628, 0.0459307507, 0.5243963, 0, 0.996186137, -0.0872537941, -0.526403964, 0.0741862059, 0.846991897)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
sounds(LArm,"200633377",1.2,1.4)
local ref1=parts(e,"ref",Vector3.new(.2,.2,.2),col[2],Enum.Material.Neon,0,.5)
meshs(ref1,"Mesh",Vector3.new(20,20,20),Enum.MeshType.Sphere,"")
ref1.Anchored=true
ref1.CFrame=Root.CFrame*CFrame.new(0,0,-4)
local ref2=ref1:Clone()
ref2.Parent=e
ref2.CFrame=ref1.CFrame
ref2.BrickColor=BrickColor.new(col[1])
ref2:findFirstChild("Mesh").Scale=Vector3.new(30,30,30)
ref1.Transparency=0
if rainb==true then
ref1.Color=rain
ref2.Color=rain
end
game:GetService("Debris"):AddItem(ref1,4)
game:GetService("Debris"):AddItem(ref2,4)
for i=0,1,0.07 do
swait()
Mdamage("None",ref1,7,math.random(10,20),.2,"")
ref1.CFrame=ref1.CFrame*CFrame.new(0,0,-5)
ref2.CFrame=ref1.CFrame
if choice==9 then
ref1.Color=Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)	
ref2.Color=Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)	
end
Effect(e,col[2],ref1.CFrame*CFrame.new(math.random(-35,35)/10,math.random(-35,35)/10,math.random(-35,35)/10),3,3,3,0,0,0,.06,"Brick",1,0,"")
Effect(e,col[2],ref1.CFrame*CFrame.new(math.random(-35,35)/10,math.random(-35,35)/10,math.random(-35,35)/10),3,3,3,0,0,0,.06,"Brick",1,0,"")
RJ.C0=clerp(RJ.C0,CFrame.new(0, 0, 0, 0.957886219, -1.17093835e-15, 0.287148058, -8.61444187e-06, 1, 2.87365856e-05, -0.287148058, -2.99999992e-05, 0.957886219)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-1.29853488e-05, 1.50002289, 4.40614167e-05, 0.97937429, 0, -0.202054739, 0, 1, 0, 0.202054739, 0, 0.97937429)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.71655941, 0.132248193, -0.0551169962, 0.862222314, -0.505995154, -0.0232733786, 0.496118933, 0.852876127, -0.162691191, 0.102170259, 0.128729627, 0.986402512)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.89950287, 0.433939457, -0.00832587667, 0.00264006853, 0.99847132, 0.0552114658, -0.0167260002, 0.0552480295, -0.99833262, -0.999856651, 0.00171220303, 0.0168462899)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.672698855, -2.02514911, -0.2984671, 0.960695028, -0.0169820078, -0.277086377, 0.0515700057, 0.991670907, 0.11802268, 0.272774249, -0.127673134, 0.953568995)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.706217289, -1.98748994, 0.169790402, 0.93224138, 0.16299127, -0.323047906, -0.100813977, 0.974446774, 0.200723708, 0.347509235, -0.154555187, 0.924851418)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
sounds(ref1,"206083232",1.2,1.5)
sounds(ref1,"206083252",1.2,1.3)
Effect(e,col[2],ref1.CFrame,20,20,20,2,2,2,.04,"Sphere",6,0,"")
Effect(e,col[1],ref1.CFrame,30,30,30,2,2,2,.04,"Sphere",6,0,"")
ref1.Transparency=1
ref2.Transparency=1

elseif combo==3 then
combo=4
sounds(RArm,"200632136",1,1.4)
local ref1=parts(e,"ref",Vector3.new(.1,.1,.1),"Smoky grey",Enum.Material.SmoothPlastic,0,1)
ref1.Anchored=true
ref1.CFrame=Root.CFrame*CFrame.new(0,.5,-6)
local ref2=parts(e,"ref",Vector3.new(.1,.1,.1),"Smoky grey",Enum.Material.SmoothPlastic,0,1)
ref2.Anchored=true
ref2.CFrame=Root.CFrame*CFrame.new(0,.5,6)
game:GetService("Debris"):AddItem(ref1,4)
game:GetService("Debris"):AddItem(ref2,4)
local gl=3
for i=0,1,0.06 do
swait()
gl=gl+1
ref1.CFrame=Root.CFrame*CFrame.Angles(0,math.rad(0-720*i),0)*CFrame.new(0,.5,gl)
ref2.CFrame=Root.CFrame*CFrame.Angles(0,math.rad(0-720*i),0)*CFrame.new(0,.5,-gl)
Effect(e,col[2],ref2.CFrame,5,5,5,4,4,4,.08,"Sphere",6,0,"")
Effect(e,col[1],ref1.CFrame,5,5,5,4,4,4,.08,"Sphere",6,0,"")
Mdamage("None",ref1,6,math.random(8,14),.05,"")
Mdamage("None",ref2,6,math.random(8,14),.05,"")
sounds(ref1,"206083252",1.2,1.6)
sounds(ref2,"206083252",1.2,1.6)
RJ.C0=clerp(RJ.C0,CFrame.new(0, 0, -0, 1, -9.36750677e-17, 0, -9.36750677e-17, 1, 0, 0, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(0-720*i),0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(2.62259618e-07, 1.50002122, -1.16301089e-06, 0.966869354, -4.44266561e-06, -0.25527209, 7.65816276e-06, 1, 1.16024312e-05, 0.25527209, -1.31729485e-05, 0.966869354)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.97359252, 0.461725712, 0.132297397, -0.0138839949, -0.993113995, -0.116326779, 0.999903619, -0.0137932096, -0.0015854399, -2.9997107e-05, -0.116337582, 0.99320972)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.98128402, 0.443997294, -0.162216201, 0.175949037, 0.984316707, 0.0127538545, 0.0111114727, 0.0109692821, -0.999878168, -0.984336615, 0.176069304, -0.00900717359)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.530800819, -1.99872804, 3.16160481e-07, 0.999048352, -0.0436170138, 1.30851083e-06, 0.0436170138, 0.999048352, 2.85399437e-08, -1.30851038e-06, 2.85599526e-08, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.575502217, -2.01157212, -1.7279857e-06, 0.998795986, 0.0490569994, -1.47170999e-06, -0.0490569994, 0.998795986, 3.61214916e-08, 1.47170999e-06, 3.61196726e-08, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
hum.WalkSpeed=0
for i=0,1,0.07 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(-9.56654549e-06, -0.947861552, -0.387094289, 0.473338813, 7.18723072e-08, -0.880882382, 0.681949854, 0.632979989, 0.366442889, 0.557581186, -0.774168193, 0.299614102)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
Neck.C0=clerp(Neck.C0,CFrame.new(0.277080625, 1.45817256, -0.0415501148, 0.589401186, 0.338981122, 0.733280361, -2.8388813e-06, 0.90770328, -0.419612646, -0.807842851, 0.247317076, 0.535002112)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RS.C0=clerp(RS.C0,CFrame.new(1.88354349, 0.814501822, -0.372365743, -0.412279636, -0.839163423, 0.354727, 0.911057711, -0.379755259, 0.160498932, 2.44528055e-05, 0.389347881, 0.921091557)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LS.C0=clerp(LS.C0,CFrame.new(-1.91487217, 0.304715246, -0.124129072, 0.140907407, 0.976222038, -0.164732158, -0.990021467, 0.139218867, -0.0218067821, 0.00164588168, 0.166160643, 0.986098051)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RH.C0=clerp(RH.C0,CFrame.new(0.398423433, -1.85718119, -0.452500671, 0.599491179, 0.0752810985, 0.796833813, 0.184934542, 0.955598235, -0.229415059, -0.778724015, 0.284894049, 0.558950484)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LH.C0=clerp(LH.C0,CFrame.new(-1.01205671, -0.524863005, -0.345139563, 0.60284251, 0.746555448, 0.281490713, -0.135852024, 0.443699926, -0.885818601, -0.786210477, 0.495767653, 0.368902445)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
end

elseif combo==4 then
combo=1
for i=0,1,0.07 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(-2.61414241e-18, 0.0558129847, -0.142009795, 1, -4.63824687e-17, -6.51316803e-18, -4.68375339e-17, 0.990284204, 0.139058739, 0, -0.139058754, 0.990284204)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(0, 1.53615165, -0.133319393, 1, 0, 0, 0, 0.980868459, 0.194672525, 0, -0.19467257, 0.980868459)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(0.701637089, 0.589969814, -1.10076773, 0.905114114, 0.424492478, 0.0239735786, 0.0420583636, -0.0332833603, -0.998560727, -0.423083603, 0.904819667, -0.0479786843)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-0.882859528, 0.530957997, -0.990593553, -0.0114530027, -0.32663402, -0.945081472, -0.999210954, -0.0322082937, 0.0232406352, -0.0380306318, 0.944602013, -0.326007426)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.546855628, -2.05208206, -0.144755617, 0.997041583, -0.0768650472, 2.22908784e-06, 0.0761185661, 0.987354636, -0.139057681, 0.010686473, 0.138646439, 0.990284383)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.552921951, -2.05310154, -0.144903407, 0.99881202, 0.0487289988, -1.46186994e-06, -0.0482557602, 0.989107788, -0.139058709, -0.00677474542, 0.138893574, 0.990284204)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
sounds(Root,"200633492",1.2,1.2)
Effect(e,col[1],Root.CFrame*CFrame.new(0,.5,-4),3,3,3,2,2,2,.05,"Sphere",6,0,"")
Effect(e,col[1],Root.CFrame*CFrame.new(0,.5,-4),3,3,3,3,3,3,.05,"Sphere",6,0,"")
for i=-40,40,20 do
local ref1=parts(e,"ref",Vector3.new(.2,.2,.2),col[2],Enum.Material.Neon,0,.5)
meshs(ref1,"Mesh",Vector3.new(7,7,18),Enum.MeshType.Sphere,"")
ref1.Anchored=true
ref1.CFrame=Root.CFrame*CFrame.new(0,.5,-4)*CFrame.Angles(0,math.rad(i),0)
local ref2=ref1:Clone()
ref2.Parent=e
ref2.CFrame=ref1.CFrame
ref2.BrickColor=BrickColor.new(col[1])
ref2:findFirstChild("Mesh").Scale=Vector3.new(10,10,25)
ref1.Transparency=0
if rainb==true then
ref1.Color=rain
ref2.Color=rain
end
game:GetService("Debris"):AddItem(ref1,4)
game:GetService("Debris"):AddItem(ref2,4)
coroutine.resume(coroutine.create(function()
for i=0,1,.04 do
swait()
ref1.CFrame=ref1.CFrame*CFrame.new(0,0,-2)
ref2.CFrame=ref1.CFrame
if choice==9 then
ref1.Color=Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)	
ref2.Color=Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)	
end
Mdamage("None",ref1,4,math.random(9,16),.2,"")
Effect(e,col[2],ref1.CFrame*CFrame.new(math.random(-15,15)/10,math.random(-15,15)/10,math.random(-15,15)/10),1,1,1,0,0,0,.05,"Brick",1,0,"")
end
ref1.Transparency=1
ref2.Transparency=1
Effect(e,col[2],ref1.CFrame,7,7,18,1,1,4,.055,"Sphere",6,0,"")
Effect(e,col[1],ref1.CFrame,10,10,25,1,1,4,.055,"Sphere",6,0,"")
sounds(ref1,"206083232",1.2,1.5)
sounds(ref1,"206083252",1.2,1.6)
end))
end
for i=0,1,0.05 do
swait()
Torso.Velocity=Root.CFrame.lookVector*-18
RJ.C0=clerp(RJ.C0,CFrame.new(-0.0297317505, 0.0401754044, 0.393005818, 1, -4.66701853e-17, 3.9558581e-18, -4.68375339e-17, 0.996427059, -0.0844591483, 0, 0.0844591483, 0.996427059)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(0, 1.53614163, -0.133327335, 1, 0, 0, 0, 0.980868399, 0.194672689, 0, -0.194672689, 0.980868399)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.95122457, 0.57680428, -0.30010882, 0.311983943, -0.947476506, 0.0703873113, -0.0381239727, -0.0865099505, -0.995521367, 0.949322283, 0.30790326, -0.0631112754)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-2.03361034, 0.486680925, -0.248973221, -0.0547970086, 0.949463546, -0.309056938, -0.994616807, -0.02464021, 0.100651473, 0.0879496783, 0.31290853, 0.945702553)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.576583743, -2.04903936, -0.0633620992, 0.997041345, -0.0768679157, 1.12512282e-07, 0.076671347, 0.994491577, -0.0714716017, 0.00549376057, 0.0712601617, 0.997442722)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.523191214, -2.05006337, -0.0634361655, 0.998812258, 0.0487252697, -2.3978821e-06, -0.0486008301, 0.996257842, -0.0714741722, -0.00348020904, 0.0713893846, 0.997442663)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
end
attack=false
end

function PERISH()
attack2=true
if haa~=nil then
local ref4=parts(e,"ref",Vector3.new(.2,.2,.2),col[2],Enum.Material.Neon,0,1)
ref4.Anchored=true
ref4.CFrame=haa.CFrame
sounds(ref4,"206082273",3,.9)
sounds(ref4,"199145534",3,1)
CameraShake(60,ref4,25,.06)
for i=1,15 do
Effect(e,col[1],ref4.CFrame*CFrame.new(math.random(-100,100)/6,math.random(-100,100)/6,math.random(0,20)/10)*CFrame.Angles(math.rad(math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))),5,5,5,0,0,2,.02,"Sphere",3,-.7,"")
end
Mdamage("None",ref4,20,0,0,"")
Effect(e,col[1],ref4.CFrame*CFrame.Angles(math.rad(90),0,0),200,1,200,2,0,2,.03,"Sphere",6,0,"")
Effect(e,col[1],ref4.CFrame*CFrame.Angles(-math.rad(90),0,0),3,3,3,4,0,4,.05,"FileMesh",2,math.random(-10,10),"20329976")
Effect(e,col[1],ref4.CFrame*CFrame.Angles(-math.rad(90),0,0),3,3,3,5,0,5,.05,"FileMesh",2,math.random(-10,10),"20329976")
game:GetService("Debris"):AddItem(ref4,4)
end
for i=0,1,0.07 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(9.82645361e-07,  -.2-.1*math.cos(sin/25), -5.42081143e-05, 0.647161186, -1.46387433e-11, 0.762353182, -2.28706049e-05, 1, 1.94148233e-05, -0.762353182, -2.99999992e-05, 0.647161186)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(0.237783283, 1.5387131, -0.198758632, 0.641355515, 0.358043998, -0.678577662, 2.50000048e-05, 0.8844257, 0.466681093, 0.767243862, -0.299325466, 0.567222357)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.66746926, 0.0401464105, -0.615105569, 0.556770682, -0.448266119, -0.699331045, -0.000109000051, 0.841852427, -0.539707899, 0.830666244, 0.300569803, 0.468669832)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.53162372, 0.100231051, -4.13375892e-06, 0.970351577, 0.241698042, -6.85453415e-07, -0.241698056, 0.970351517, -6.14382225e-06, -8.94069672e-07, 6.11692667e-06, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.500023007, -1.80007105+.1*math.cos(sin/25), -5.93066216e-05, 0.528373897, 0, -0.849011838, 0, 1, 0, 0.849011838, 0, 0.528373897)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.500042558, -1.80007105+.1*math.cos(sin/25), -7.36862421e-05, 0.625953257, 0, -0.779860556, 0, 1, 0, 0.779860556, 0, 0.625953257)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
attack2=false
end

local doing=false
function Skillone()
attack=true

if unleashed==false then

if choice==1 then
--sounds(Root,"588734356",1,1.8)
sounds(Root,"588736245",1,1.4)
Effect(e,col[1],Root.CFrame*CFrame.new(0,-2,0),1,2,1,1,0,1,.065,"FileMesh",2,math.random(-10,10),"20329976")
Effect(e,col[2],Root.CFrame*CFrame.new(0,-2,0),1,2,1,1.8,0,1.8,.065,"FileMesh",2,math.random(-10,10),"20329976")

Root.Anchored=true
hum.WalkSpeed=0
hum.JumpPower=0
--hum.AutoRotate=false
for i=0,1.1,0.12 do
swait()
for _,v in pairs(m:children()) do
if v:IsA("BasePart") then
v.Transparency=i
end
end
for _,v in pairs(chr:children()) do
if v:IsA("BasePart") and v.Name~=Root.Name then
v.Transparency=i
if v.Name=="Head" and v:findFirstChildOfClass("Decal")~=nil then
v:findFirstChildOfClass("Decal").Transparency=i
end
elseif v:IsA("Accessory") then
v.Handle.Transparency=i
end
end
for _,v in pairs(Visss:children()) do
if v:IsA("Frame") then
v.BackgroundTransparency=i
end
end
RJ.C0=clerp(RJ.C0,CFrame.new(8.04073818e-18, -0.171673298, -5.39911079, 1, -3.36414918e-17, -3.25884114e-17, -4.68375339e-17, 0.718259215, 0.695775628, 0, -0.695775628, 0.718259215)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(0, 1.46953106, 0.131826505, 1, 0, 0, 0, 0.974297523, -0.225265354, 0, 0.225265354, 0.974297523)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.62392759, 0.0303899646, 0.307594776, 0.963093758, -0.269166172, 1.61457979e-06, 0.240263328, 0.859680355, 0.450802982, -0.121342286, -0.43416518, 0.892623544)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.68626499, -0.0852672756, 0.377795845, 0.968706012, 0.24821119, 1.33306537e-06, -0.223841816, 0.873596013, 0.432116687, 0.107255027, -0.418594241, 0.901817739)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.502402782, -1.36833, -0.406561017, 0.999982774, 0.00105297484, -0.00578947924, 8.17072578e-06, 0.983610272, 0.180307716, 0.00588445039, -0.180304646, 0.983593285)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.641488135, -2.06682062, 0.441533804, 0.976107895, 0.203549683, 0.0760326684, -0.216890514, 0.891615272, 0.39746803, 0.0131126046, -0.404462397, 0.914460659)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
local ref1=parts(e,"ref",Vector3.new(.2,.2,.2),col[2],Enum.Material.Neon,0,1)
ref1.Anchored=true
ref1.CFrame=Root.CFrame
game:GetService("Debris"):AddItem(ref1,5)
for i=1,8 do
swait(4)
ref1.CFrame=Root.CFrame
Root.Anchored=true
for si=1,2 do
local ref2=parts(e,"saz1",Vector3.new(.2,.2,.2),col[2],Enum.Material.Neon,0,0)
ref2.Anchored=true
ref2.CFrame=ref1.CFrame*CFrame.new(math.random(-3,3),math.random(-3,3),-i*12+math.random(-3,3))
meshs(ref2,"Mesh",Vector3.new(6,6,6),Enum.MeshType.Sphere,"")
local ref3=parts(e,"saz2",Vector3.new(.2,.2,.2),col[1],Enum.Material.Neon,0,0)
ref3.Anchored=true
ref3.CFrame=ref1.CFrame*CFrame.new(math.random(-3,3),math.random(-3,3),-i*12+math.random(-3,3))
meshs(ref3,"Mesh",Vector3.new(6,6,6),Enum.MeshType.Sphere,"")
sounds(ref2,"1724878544",1.3,1.2)
sounds(ref3,"1724878544",1.3,1.2)
Effect(e,col[2],ref2.CFrame,3,3,3,4,4,4,.05,"Sphere",6,0,"")
Effect(e,col[1],ref3.CFrame,3,3,3,4,4,4,.05,"Sphere",6,0,"")
Effect(e,col[2],ref2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,3,2,2,0,.09,"FileMesh",6,0,"3270017")
Effect(e,col[1],ref3.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,3,2,2,0,.09,"FileMesh",6,0,"3270017")
Mdamage("None",ref2,11,math.random(15,18),0,"")
Mdamage("None",ref3,11,math.random(15,18),0,"")
game:GetService("Debris"):AddItem(ref2,5)
game:GetService("Debris"):AddItem(ref3,5)
end
end

coroutine.resume(coroutine.create(function()
swait(40)
CameraShake(200,Head,3,.08)
for _,v in pairs(e:children()) do
if v:IsA("BasePart") and v.Transparency~=1 then
v.Transparency=1
sounds(v,"769011266",.8,1.1)
Mdamage("None",v,10,math.random(15,18),0,"")
game:GetService("Debris"):AddItem(v,1)
if v.Name=="saz1" then
for i=1,6 do
Effect(e,col[2],v.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),6,6,35,0,0,0,.03,"Sphere",4,.1,"",130,180,150)
end	
elseif v.Name=="saz2" then
for i=1,6 do
Effect(e,col[1],v.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),6,6,35,0,0,0,.03,"Sphere",4,.1,"",130,180,150)
end	
end
game:GetService("Debris"):AddItem(v,2)
swait()
end
end
end))


Root.CFrame=Root.CFrame*CFrame.new(0,0,-110)
RJ.C0=CFrame.new(-2.31750309e-05, -0.295795858, -0.0982816592, 0.120410018, 3.58849772e-09, 0.99272424, -0.207693145, 0.97786963, 0.0251916163, -0.970754862, -0.209215343, 0.117745295)*CFrame.new(-30,0,0)*CFrame.Angles(0,0,0)
for i=1,-.1,-0.12 do
swait()
for _,v in pairs(m:children()) do
if v:IsA("BasePart") then
v.Transparency=i
end
end
for _,v in pairs(chr:children()) do
if v:IsA("BasePart") and v.Name~=Root.Name then
v.Transparency=i
if v.Name=="Head" and v:findFirstChildOfClass("Decal")~=nil then
v:findFirstChildOfClass("Decal").Transparency=i
end
elseif v:IsA("Accessory") then
v.Handle.Transparency=i
end
end
for _,v in pairs(Visss:children()) do
if v:IsA("Frame") then
v.BackgroundTransparency=i
end
end
Root.Anchored=true
RJ.C0=clerp(RJ.C0,CFrame.new(-2.31750309e-05, -0.295795858, -0.0982816592, 0.120410018, 3.58849772e-09, 0.99272424, -0.207693145, 0.97786963, 0.0251916163, -0.970754862, -0.209215343, 0.117745295)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(3.28570604e-06, 1.5000205, 3.73702496e-05, 0.154529616, -0.0533964448, -0.986544251, 1.74841921e-06, 0.998538494, -0.0540453643, 0.987988174, 0.00834988151, 0.154303864)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.94193518, 0.69839561, -0.200542808, -0.19561635, -0.965838432, 0.169972032, 0.980680525, -0.192655623, 0.0339051746, -8.51228833e-07, 0.173320651, 0.984865427)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.75503612, 0.0148609895, -0.143688738, 0.453105718, 0.883608997, -0.11802768, -0.891456783, 0.449117064, -0.0599888749, 1.53854489e-06, 0.132397875, 0.991196632)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.594118297, -1.68184936, -0.0120359957, 0.126216277, 0.0626058653, -0.990025342, -2.11912857e-06, 0.998006582, 0.0631102771, 0.992002726, -0.00796345249, 0.12596482)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.780936897, -1.93743944, 0.0516012944, 0.0825548619, 0.304184377, -0.949029446, 0.0449628718, 0.950173259, 0.308462381, 0.995571733, -0.0681361482, 0.0647644252)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
for i=0,1,.04 do
swait()
Root.Anchored=true
RJ.C0=clerp(RJ.C0,CFrame.new(-2.31750309e-05, -0.295795858, -0.0982816592, 0.120410018, 3.58849772e-09, 0.99272424, -0.207693145, 0.97786963, 0.0251916163, -0.970754862, -0.209215343, 0.117745295)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(3.28570604e-06, 1.5000205, 3.73702496e-05, 0.154529616, -0.0533964448, -0.986544251, 1.74841921e-06, 0.998538494, -0.0540453643, 0.987988174, 0.00834988151, 0.154303864)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.94193518, 0.69839561, -0.200542808, -0.19561635, -0.965838432, 0.169972032, 0.980680525, -0.192655623, 0.0339051746, -8.51228833e-07, 0.173320651, 0.984865427)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.75503612, 0.0148609895, -0.143688738, 0.453105718, 0.883608997, -0.11802768, -0.891456783, 0.449117064, -0.0599888749, 1.53854489e-06, 0.132397875, 0.991196632)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.594118297, -1.68184936, -0.0120359957, 0.126216277, 0.0626058653, -0.990025342, -2.11912857e-06, 0.998006582, 0.0631102771, 0.992002726, -0.00796345249, 0.12596482)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.780936897, -1.93743944, 0.0516012944, 0.0825548619, 0.304184377, -0.949029446, 0.0449628718, 0.950173259, 0.308462381, 0.995571733, -0.0681361482, 0.0647644252)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
Root.Anchored=false
hum.AutoRotate=true

elseif choice==2 then
sounds(RArm,"199145659",1,1.2)
hum.WalkSpeed=0
for i=0,1,0.04 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(1.81758351e-05, -2.39048489e-07, -2.09973896e-05, 0.837009132, -4.68375339e-17, 0.547189057, -1.64156718e-05, 1, 2.51102738e-05, -0.547189057, -2.99999992e-05, 0.837009132)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(0.117549829, 1.460724, -0.179843515, 0.837009132, 0.0984081477, -0.538267314, 0, 0.983695328, 0.179843053, 0.547189057, -0.150530279, 0.823361993)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(0.258909285, 0.760815978, -0.701461196, 0.337321371, 0.886091411, 0.317893654, 0.940674365, -0.330426395, -0.0771375448, 0.0366895348, 0.325054526, -0.944983423)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.62461603, 0.0846784189, 0.242279738, 0.95075649, 0.305410147, 0.0527905822, -0.309939027, 0.936852455, 0.162004158, 2.0802021e-05, -0.170388341, 0.985377073)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.500019193, -2.00007105, -6.71595335e-05, 0.77207607, 0, -0.635530174, 0, 1, 0, 0.635530174, 0, 0.77207607)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.500020981, -2.00007105, -7.00354576e-05, 0.794756949, 0, -0.606928051, 0, 1, 0, 0.606928051, 0, 0.794756949)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
for i=0,1,0.05 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(1.81758351e-05, -2.39048489e-07, -2.09973896e-05, 0.837009132, -4.68375339e-17, 0.547189057, -1.64156718e-05, 1, 2.51102738e-05, -0.547189057, -2.99999992e-05, 0.837009132)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(0.0767034665, 1.4602052, -0.11736276, 0.837009132, -0.0037953034, -0.547175884, 0, 0.999975979, -0.00693600019, 0.547189057, 0.00580549566, 0.836989045)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
RS.C0=clerp(RS.C0,CFrame.new(0.295620054, 1.02689278, -0.704312861, 0.546934605, 0.807849228, 0.219641536, 0.832490206, -0.552539766, -0.0407429673, 0.0884464979, 0.205133215, -0.974729657)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
LS.C0=clerp(LS.C0,CFrame.new(-1.62461603, 0.0846784189, 0.242279738, 0.95075649, 0.305410147, 0.0527905822, -0.309939027, 0.936852455, 0.162004158, 2.0802021e-05, -0.170388341, 0.985377073)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.500019193, -2.00007105, -6.71595335e-05, 0.77207607, 0, -0.635530174, 0, 1, 0, 0.635530174, 0, 0.77207607)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.500020981, -2.00007105, -7.00354576e-05, 0.794756949, 0, -0.606928051, 0, 1, 0, 0.606928051, 0, 0.794756949)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
local ref1=parts(e,"ref",Vector3.new(.2,.2,.2),col[2],Enum.Material.Neon,0,1)
ref1.Anchored=true
ref1.CFrame=Root.CFrame*CFrame.new(0,1,0)
local soundz=create("Sound"){
Parent=ref1,
SoundId="rbxassetid://362395087",
Volume=2.7,
PlaybackSpeed=1.2,
Looped=true}
soundz:Play()
game:GetService("Debris"):AddItem(ref1,10)
local cf=ref1.CFrame
local radz=0
coroutine.resume(coroutine.create(function()
while ref1.Parent~=nil do
radz=radz+24
ref1.CFrame=ref1.CFrame*CFrame.new(0,0,-1)
Effect(e,"Olivine",ref1.CFrame*CFrame.Angles(0,math.rad(radz),0),5,4,5,3,2,3,.08,"FileMesh",6,0,"1051557")
LockEffect(e,"Olivine",ref1.CFrame,ref1,2,2,2,6,6,6,.08,"Brick",1,0,"")
Effect(e,"Olivine",ref1.CFrame*CFrame.new(0,-1.8,0)*CFrame.Angles(0,math.rad(radz),0),5,.3,5,1.4,.4,1.4,.07,"FileMesh",2,math.random(-5,5),"20329976")
Mdamage("Wind",ref1,15,math.random(3,4),0,"")
swait(2)
end
end))
for i=0,1,0.04 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(1.25523657e-05, -0.0822996572, -0.0451444313, 0.738116086, -1.26486043e-07, -0.674673796, 0.0587351732, 0.996203363, 0.0642580912, 0.672112286, -0.0870569944, 0.735313773)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-0.100675002, 1.55531347, -0.105848208, 0.724777937, -0.117443964, 0.678899169, -2.84732073e-06, 0.985364258, 0.170462966, -0.688982546, -0.1235497, 0.714169919)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.8776567, 0.0713712722, -0.32728371, 0.35267517, -0.841815352, 0.408616364, 0.896032453, 0.429673374, 0.111834109, -0.26971519, 0.326692343, 0.905829012)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.66632402, 0.0740345269, -0.323752016, 0.949790835, 0.2798177, -0.139998615, -0.308992952, 0.909204006, -0.279054791, 0.0492028594, 0.308302253, 0.950015247)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.654585898, -2.03037429, 0.165298417, 0.730504274, -0.157548994, 0.66448617, 1.74868171e-06, 0.973024666, 0.230701193, -0.682908118, -0.168527082, 0.710798979)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.93840462, -1.90897703, -0.37861383, 0.653578281, 0.116541043, 0.747832775, -2.46678837e-07, 0.988074124, -0.153979674, -0.756858945, 0.100637585, 0.645783901)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end

elseif choice==3 then
local grabbed=nil 

local ref1=parts(e,"ref",Vector3.new(.2,.2,.2),col[2],Enum.Material.Neon,0,0)
meshs(ref1,"Mesh",Vector3.new(6,6,6),Enum.MeshType.Sphere,"")
local refWeld=welds(ref1,"R2Weld",RArm,ref1,CFrame.new(0, -1.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0,0,0))
local ref2=parts(e,"ref",Vector3.new(.2,.2,.2),col[1],Enum.Material.Neon,0,.6)
meshs(ref2,"Mesh",Vector3.new(10,10,10),Enum.MeshType.Sphere,"")
local refWeld=welds(ref2,"R2Weld",RArm,ref2,CFrame.new(0, -1.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0,0,0))
LockEffect(e,col[1],ref1.CFrame,ref1,2,2,2,4,4,4,.07,"Sphere",6,0,"")

sounds(ref1,"400765064",1,1.6)
sounds(Root,"2767090",1.2,1.2)
for i=0,1,0.03 do
swait()
local grab=FindNearestTorso(RArm.Position,4)
if grab~=nil and grabbed==nil then
grabbed=grab
sounds(grab,"200632875",1.2,1)
ref1.Transparency=1
ref2.Transparency=1
end
if grabbed~=nil then
grabbed.CFrame=RArm.CFrame*CFrame.new(0,-1.3,0)*CFrame.Angles(-math.rad(90),0,0)
end
Root.Velocity=Root.CFrame.lookVector*100
Effect(e,col[1],RLeg.CFrame*CFrame.new(0,-1,0),1,1,1,1,1,1,.07,"Brick",1,0,"")
Effect(e,col[1],LLeg.CFrame*CFrame.new(0,-1,0),1,1,1,1,1,1,.07,"Brick",1,0,"")
RJ.C0=clerp(RJ.C0,CFrame.new(-3.95476818e-05, -0.805751622, -0.373705924, 0.410960197, -3.67426978e-08, -0.91165334, 0.340748519, 0.927521467, 0.153604463, 0.845578194, -0.37376982, 0.381174386)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(0.164378285, 1.46717274, -0.0596249029, 0.410960197, -0.0320049822, 0.911091506, -3.67426978e-08, 0.999383569, 0.0351065099, -0.91165334, -0.0144274235, 0.410706848)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.87885034, 0.424660593, -0.693294346, 0.637165308, -0.767974138, 0.0650874451, 0.255559325, 0.130846128, -0.95789808, 0.727124453, 0.626973152, 0.279633552)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.46604145, 0.505524516, -0.609988809, 0.058447063, 0.327494889, -0.943043709, -0.996839285, -0.0317716189, -0.0728145912, -0.053808406, 0.944318771, 0.324602813)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.950460553, -1.95577824, 0.20016557, 0.812948048, -0.416581929, -0.406909257, 0.459606081, 0.888076782, 0.00904171169, 0.357600003, -0.194368392, 0.913424015)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-1.32565701, -0.835368335, -0.34942764, 0.470233411, 0.561475813, 0.680900633, 0.0216006599, 0.763968527, -0.644891739, -0.882277787, 0.31795752, 0.347115278)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
hum.WalkSpeed=0
for i=0,1,0.07 do
swait()
if grabbed~=nil then
grabbed.CFrame=RArm.CFrame*CFrame.new(0,-1.3,0)*CFrame.Angles(-math.rad(90),0,0)
end
RJ.C0=clerp(RJ.C0,CFrame.new(5.18746674e-06, -0.913503587, -0.278308749, 0.249630064, -5.95164238e-08, 0.968341351, 0.404667675, 0.908494115, -0.104319789, -0.87973237, 0.417897791, 0.226787448)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.45)
Neck.C0=clerp(Neck.C0,CFrame.new(-0.171314687, 1.40448451, 0.0441576354, 0.249630064, -0.246295452, -0.936495423, -5.95164238e-08, 0.967113018, -0.254347742, 0.968341351, 0.0634929091, 0.241420418)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.45)
RS.C0=clerp(RS.C0,CFrame.new(1.71731317, 1.32349575, -0.285644293, -0.866462886, -0.413608044, 0.279590011, 0.453933239, -0.885811567, 0.0963464901, 0.207814321, 0.210395813, 0.95527333)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.45)
LS.C0=clerp(LS.C0,CFrame.new(-1.94655478, 0.581689835, -0.359367311, -0.0202600658, 0.943094373, -0.33190757, -0.994043946, -0.0545569398, -0.0943423733, -0.107081637, 0.328019321, 0.93858242)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.45)
RH.C0=clerp(RH.C0,CFrame.new(0.808143616, -1.6289773, -0.0854113251, 0.232678771, 0.215462193, -0.94838649, -0.02221727, 0.976073921, 0.216301635, 0.972299933, -0.0292582344, 0.231898651)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.45)
LH.C0=clerp(LH.C0,CFrame.new(-1.50866926, -0.975405693, 0.109960198, 0.100519896, 0.983781099, -0.148562118, 0.0883358121, 0.139904007, 0.986216962, 0.991005898, -0.112257764, -0.0728399605)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.45)
end

CameraShake(150,Head,3,.07)

sounds(ref1,"206082327",1.2,.9)
sounds(ref1,"199145534",1.1,1.3)
Mdamage("None",ref1,14,math.random(25,35),0,"")
if grabbed~=nil and grabbed.Parent~=nil then
grabbed.Parent:BreakJoints()
end
Effect(e,col[1],ref1.CFrame,1,1,1,5,5,5,.06,"Sphere",6,0,"")
Effect(e,col[1],ref1.CFrame,1,1,1,8,8,8,.06,"Sphere",6,0,"")
for i=1,2 do
Effect(e,col[1],ref1.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,2,2,.1,.04,"FileMesh",6,0,"3270017")
end
for i=1,8 do
Effect(e,col[1],ref1.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,22,0,0,0,.02,"Sphere",3,-.5,"")
end
ref1.Transparency=1
ref2.Transparency=1
game:GetService("Debris"):AddItem(ref1,3)
game:GetService("Debris"):AddItem(ref2,3)
for i=0,1,0.05 do
swait()
RS.C0=clerp(RS.C0,CFrame.new(1.71731317, 1.32349575, -0.285644293, -0.866462886, -0.413608044, 0.279590011, 0.453933239, -0.885811567, 0.0963464901, 0.207814321, 0.210395813, 0.95527333)*CFrame.new(0,.4,0)*CFrame.Angles(0,0,0),.4)
end

elseif choice==4 then
hum.WalkSpeed=0
hum.JumpPower=0
sounds(Root,"588733125",1.1,.7)
for i=0,1,0.04 do
swait()
Effect(e,col[1],RArm.CFrame*CFrame.new(0,-1.5,0),1,1,1,1,1,1,.07,"Brick",1,0,"")
Effect(e,col[1],LArm.CFrame*CFrame.new(0,-1.5,0),1,1,1,1,1,1,.07,"Brick",1,0,"")
RJ.C0=clerp(RJ.C0,CFrame.new(6.00931378e-15, -1.17707562, -0.169359982, 1, -4.80336503e-15, -1.7296489e-15, -5.10529119e-15, 0.940860152, 0.338795334, 0, -0.338795334, 0.940860152)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
Neck.C0=clerp(Neck.C0,CFrame.new(0, 1.56103146, -0.180980295, 1, 0, 0, 0, 0.940576434, 0.339582145, 0, -0.339582145, 0.940576434)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
RS.C0=clerp(RS.C0,CFrame.new(0.800449967, -0.187214166, -0.887697816, 0.912252486, 0.409397066, 0.0137643171, -0.287467182, 0.66377306, -0.690484047, -0.29181847, 0.625939012, 0.723216832)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
LS.C0=clerp(LS.C0,CFrame.new(-0.744458914, -0.00975477695, -1.03553545, 0.804527998, -0.553871632, -0.214385211, 0.0958740115, 0.477351785, -0.873466492, 0.586125493, 0.682174206, 0.437144727)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
RH.C0=clerp(RH.C0,CFrame.new(0.469845772, -1.71390557, 0.771302402, 1, 0, 0, 0, 0.589814305, 0.807539105, 0, -0.807539105, 0.589814246)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
LH.C0=clerp(LH.C0,CFrame.new(-0.500022888, -0.680210114, -0.91726172, 1, 0, 0, 0, 0.82908982, -0.559115708, 0, 0.559115708, 0.82908982)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
end
for i=0,1,0.06 do
swait()
Effect(e,col[1],RArm.CFrame*CFrame.new(0,-1.5,0),1,1,1,1,1,1,.07,"Brick",1,0,"")
Effect(e,col[1],LArm.CFrame*CFrame.new(0,-1.5,0),1,1,1,1,1,1,.07,"Brick",1,0,"")
Neck.C0=clerp(Neck.C0,CFrame.new(-4.47034836e-07, 1.51806176, 0.0463362709, 1, 0, 0, 0, 0.996593475, -0.082471624, 0, 0.082471624, 0.996593475)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
end
Effect(e,col[1],RArm.CFrame*CFrame.new(0,-1.5,0),1,1,1,4,4,4,.07,"Brick",1,0,"")
local refy=parts(e,"ref",Vector3.new(.2,.2,.2),col[2],Enum.Material.Neon,0,1)
refy.Anchored=true
refy.CFrame=Root.CFrame*CFrame.new(0,-2,0)
game:GetService("Debris"):AddItem(refy,10)
coroutine.resume(coroutine.create(function()
for i=1,50 do
swait(1)
local refz=parts(e,"ref",Vector3.new(.2,.2,.2),"Bright blue",Enum.Material.Neon,.4,0)
meshs(refz,"Mesh",Vector3.new(2+(i/30), 6+(i/30), 2+(i/30)),Enum.MeshType.FileMesh,"1778999")
refz.Anchored=true
sounds(refz,"588732660",1.1,1)
game:GetService("Debris"):AddItem(refz,10)
refz.CFrame=refy.CFrame*CFrame.Angles(0,math.rad(math.random(-15,15)),0)*CFrame.new(0,-2,-8-(i*1.5))*CFrame.Angles(-math.rad(30),0,math.rad(math.random(-12,12)))
Mdamage("None",refz,7+(i/5),math.random(12,15),.02,"")
coroutine.resume(coroutine.create(function()
Effect(e,"Cyan",refz.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),15,15,15,9,9,9,.08,"Brick",1,0,"")
for i=1,20 do
swait()
refz.CFrame=refz.CFrame*CFrame.new(0,.2+i/120,0)
end
swait(150)
for i=1,20 do
swait()
refz.Transparency=refz.Transparency+.05
refz.CFrame=refz.CFrame*CFrame.new(0,-.4+i/100,0)
end
refz:Remove()
end))
end
end))

for i=0,1,0.04 do
swait()
Torso.Velocity=Root.CFrame.lookVector*-15
RJ.C0=clerp(RJ.C0,CFrame.new(4.76837158e-07, -0.944757998, 0.155951917, 1, -4.4502178e-17, 1.4605179e-17, -4.68375339e-17, 0.950139403, -0.311826378, 0, 0.311824679, 0.950139701)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(0, 1.58596992, -0.16490005, 1, 0, 0, 0, 0.969312131, 0.245831758, 0, -0.245833457, 0.969312668)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.97497809, 0.438210815, -0.191041768, 0.0243609957, -0.97459954, 0.222625896, 0.982131004, 0.064901717, 0.176652864, -0.186615437, 0.214344397, 0.958765805)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-2.05303121, 0.509687543, -0.300363779, -0.0873610303, 0.933307707, -0.348288387, -0.965731263, 0.00642960519, 0.25946337, 0.244400203, 0.359020233, 0.900763094)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.500016212, -1.44184816, 1.17676687, 1, 0, 0, 0, 0.0799156725, 0.996801257, 0, -0.99680233, 0.079914242)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.500022888, -1.43480039, -0.347751558, 1, 0, 0, 0, 0.900971234, 0.433878124, 0, -0.433879882, 0.900971353)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end

elseif choice==5 then
hum.WalkSpeed=8
for i=0,1,0.07 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(0, 0, 0, 1, -1.85452656e-15, -3.23117427e-27, -2.15452656e-15, 1, 0, -3.23117427e-27, 0, 1)*CFrame.new(0,-.2,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-2.38418579e-07, 1.51055896, -0.0127647072, 1, -1.07478285e-15, -7.30631761e-17, -1.07726328e-15, 0.997697473, 0.0678229481, 0, -0.0678229555, 0.997697473)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.52165616, 1.26009512, -3.76836433e-05, -0.992719233, -0.120452031, -3.23179013e-20, 0.120452031, -0.992719233, 2.99999992e-05, -3.61356092e-06, 2.97815768e-05, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-0.983192325, -0.0979874432, 0.472811818, 0.893586993, -0.448817492, 0.00807471853, 0.397765756, 0.800024748, 0.449157983, -0.208049938, -0.398149818, 0.893415928)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.513582528, -1.79938452, 0.00132172182, 0.994032621, -0.0501478165, -0.0968735367, 0.0503848828, 0.998730004, 9.88113243e-07, 0.0967504531, -0.00488194451, 0.995296717)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.515292525, -1.80007272, -0.0472557023, 0.9858675, 0.032826975, 0.164279073, -0.0332799107, 0.999446154, 4.85404598e-06, -0.164187923, -0.00547197927, 0.986413896)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
sounds(RArm,"188959311",1.2,1)	
Effect(e,col[1],RArm.CFrame*CFrame.new(0,-1.2,0),45,45,45,-2,-2,-2,.06,"Brick",1,0,"")
local refz=parts(e,"ref",Vector3.new(.2,.2,.2),"Bright blue",Enum.Material.Neon,.4,1)
refz.Anchored=true
refz.CFrame=RArm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(0,math.rad(math.random(-360,360)),0)
game:GetService("Debris"):AddItem(refz,5)
coroutine.resume(coroutine.create(function()
local masd=mouse.Hit.p

Mdamage("None",refz,15,math.random(15,18),0,"")
Effect(e,"Royal purple",refz.CFrame,65,65,65,-7,-7,-7,.08,"Sphere",6,0,"")
for i=1,60 do
swait()
refz.CFrame=clerp(refz.CFrame,CFrame.new(masd),.1)
Effect(e,"Royal purple",refz.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),10,10,10,0,0,12,.09,"Sphere",6,0,"")
end
sounds(refz,"1325061182",1.6,1.3)	
sounds(refz,"151776391",1.6,1)	
local ref1=parts(refz,"ref",Vector3.new(.2,.2,.2),"Bright blue",Enum.Material.Neon,.4,1)
ref1.Anchored=true
ref1.CFrame=refz.CFrame*CFrame.new(0,1,0)
local ref2=parts(refz,"ref",Vector3.new(.2,.2,.2),"Bright blue",Enum.Material.Neon,.4,1)
ref2.Anchored=true
ref2.CFrame=refz.CFrame*CFrame.new(0,1,0)
for i=-0,1,.02 do
swait()
ref1.CFrame=refz.CFrame*CFrame.Angles(0,math.rad(0-720*i),0)*CFrame.new(0,1,i*42)
ref2.CFrame=refz.CFrame*CFrame.Angles(0,math.rad(0-720*i),0)*CFrame.new(0,1,-i*42)
Effect(e,"Royal purple",ref1.CFrame,12,12,12,5,5,5,.05,"Sphere",6,0,"")
Effect(e,"Alder",ref1.CFrame,11,11,11,4,4,4,.05,"Sphere",6,0,"")
Effect(e,"Alder",ref1.CFrame,11,11,11,4,4,4,.05,"Brick",1,0,"")
Mdamage("None",ref1,12,math.random(15,18),0.04,"")
Effect(e,"Royal purple",ref2.CFrame,12,12,12,5,5,5,.05,"Sphere",6,0,"")
Effect(e,"Alder",ref2.CFrame,11,11,11,4,4,4,.05,"Sphere",6,0,"")
Effect(e,"Alder",ref2.CFrame,11,11,11,4,4,4,.05,"Brick",1,0,"")
Mdamage("None",ref2,12,math.random(15,18),0.04,"")
end
end))
for i=0,1,0.07 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(0, 0, 0, 1, -1.85452656e-15, -3.23117427e-27, -2.15452656e-15, 1, 0, -3.23117427e-27, 0, 1)*CFrame.new(0,-.2,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-2.38418579e-07, 1.51055896, -0.0127647072, 1, -1.07478285e-15, -7.30631761e-17, -1.07726328e-15, 0.997697473, 0.0678229481, 0, -0.0678229555, 0.997697473)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.62226772, 1.23509347, -3.69335976e-05, -0.959269106, -0.282494038, -3.23179013e-20, 0.282494038, -0.959269106, 2.99999992e-05, -8.47482079e-06, 2.87780731e-05, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LS.C0=clerp(LS.C0,CFrame.new(-0.983192325, -0.0979874432, 0.472811818, 0.893586993, -0.448817492, 0.00807471853, 0.397765756, 0.800024748, 0.449157983, -0.208049938, -0.398149818, 0.893415928)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.513582528, -1.79938452, 0.00132172182, 0.994032621, -0.0501478165, -0.0968735367, 0.0503848828, 0.998730004, 9.88113243e-07, 0.0967504531, -0.00488194451, 0.995296717)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.515292525, -1.80007272, -0.0472557023, 0.9858675, 0.032826975, 0.164279073, -0.0332799107, 0.999446154, 4.85404598e-06, -0.164187923, -0.00547197927, 0.986413896)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end

elseif choice==6 then

for i=0,1,0.1 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(0, 0, -0, 1, -9.36750677e-17, 0, -9.36750677e-17, 1, 0, 0, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-1.40514719e-16, 1.50002265, 3.81469727e-06, 1, -9.36750677e-17, 0, -9.36750677e-17, 1, 0, 0, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.50838256, 1.22279298, -0.0667292699, 0.990302503, -0.138928249, -4.3769127e-08, -0.138721839, -0.988831222, -0.0544900708, 0.00757016521, 0.0539616533, -0.998514414)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-0.871417761, -0.147628829, 0.549702168, 0.832722127, -0.530777693, 0.157635748, 0.387307197, 0.761839628, 0.519224048, -0.395685673, -0.371315807, 0.839974761)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.500015259, -1.10708332, -0.233533353, 1, -4.53134304e-17, -1.18510721e-17, -4.68375339e-17, 0.967459798, 0.253025115, 0, -0.253025115, 0.967459798)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.500022888, -2.06652951, 0.29434827, 1, -4.54794456e-17, -1.11970857e-17, -4.68375339e-17, 0.971004307, 0.23906225, 0, -0.23906225, 0.971004307)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end

Lightning(e,RArm.Position, mouse.Hit.p, 15, 1, col[1], .8, 0, .02)

	
elseif choice==7 then
hum.WalkSpeed=0
sounds(RArm,"588737452",1.3,.7)
local refs=parts(e,"ref",Vector3.new(.2,.2,.2),col[2],Enum.Material.Neon,0,1)
local refWeld=welds(refs,"R2Weld",RArm,refs,CFrame.new(0, -1.2, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0,0,0))
game:GetService("Debris"):AddItem(refs,5)
for i=0,1,0.03 do
swait()
LockEffect(e,col[1],refs.CFrame,refs,1,1,1,.8,.8,.8,.1,"Brick",1,0,"")
Effect(e,col[1],refs.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,.4,.4,.4,.08,"Sphere",3,.3,"")
RJ.C0=clerp(RJ.C0,CFrame.new(-7.1694285e-07, -0.115567684, -4.32867018e-05, 0.188919917, -7.02563008e-16, 0.981992543, -2.94597758e-05, 1, 5.66759718e-06, -0.981992543, -2.99999992e-05, 0.188919917)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(0.145333856, 1.50490248, 0.0145381317, 0.188919917, 0.310079902, -0.931750953, 0, 0.948837101, 0.315766037, 0.981992543, -0.0596544929, 0.179254219)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.83202589, 0.0988616049, -0.349778682, 0.694897592, -0.671097994, 0.258350432, 0.696331024, 0.717667758, -0.00872217305, -0.179556355, 0.185958445, 0.966011941)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.70524883, 0.0745566338, -0.233700261, 0.870548964, 0.481558561, -0.101221561, -0.492081702, 0.851939082, -0.179040372, 1.61677599e-05, 0.205672726, 0.978620887)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.642196834, -1.93521571, -0.0256682932, 0.177223787, -0.0520141758, -0.982795238, 0, 0.99860245, -0.0528507754, 0.984170616, 0.00936641358, 0.176976115)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.594589353, -1.97232008, -0.145275459, 0.991398931, 0.122632131, 0.0457128882, -0.116721973, 0.986484885, -0.114993982, -0.0591970086, 0.108669207, 0.992313981)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
Effect(e,col[1],refs.CFrame,1,1,1,2,2,2,.06,"Brick",1,0,"")


local function lasr()
sounds(RArm,"379557765",1.3,math.random(20,30)/10)
local refss=parts(e,"ref",Vector3.new(.2,.2,.2),col[2],Enum.Material.Neon,0,1)
refss.Anchored=true
refss.CFrame=RArm.CFrame
game:GetService("Debris"):AddItem(refss,.1)
local hit,pos=rayCast(refss.Position,-RArm.CFrame.UpVector,999,chr)
refss.Position=pos
local pas=(refs.Position-refss.Position).magnitude
if hit~=nil then
Damage("None",refss,hit,math.random(8,10),.2,"")
end
Effect(e,col[1],refss.CFrame,1,1,1,2,2,2,.1,"Brick",1,0,"")
Effect(e,col[1],CFrame.new((refs.Position+refss.Position)/2,refss.Position)*CFrame.Angles(0,math.rad(90),0),pas*5,1,1,0,.6,.6,.07,"Cylinder",6,0,"")

local refsss=parts(e,"ref",Vector3.new(.2,.2,.2),col[2],Enum.Material.Neon,0,1)
refsss.Anchored=true
refsss.CFrame=CFrame.new(refss.Position)

game:GetService("Debris"):AddItem(refsss,8)
Effect(e,col[1],refsss.CFrame,1,1,1,2,2,2,.04,"Brick",1,0,"")
coroutine.resume(coroutine.create(function()
Effect(e,col[1],refsss.CFrame,2,2,2,0,0,0,.01,"Brick",1,0,"")
swait(80)
sounds(refsss,"588695708",1.3,.7)
Effect(e,"Bright orange",refsss.CFrame,2,2,2,4,4,4,.06,"Brick",1,0,"")
Mdamage("None",refsss,8,math.random(7,8),0,"")
end))
end

for i=0,1,0.01 do
swait()
lasr()
LockEffect(e,col[1],refs.CFrame,refs,1,1,1,.8,.8,.8,.1,"Brick",1,0,"")
Effect(e,col[1],refs.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,.4,.4,.4,.08,"Sphere",3,.3,"")
RJ.C0=clerp(RJ.C0,CFrame.new(-7.1694285e-07, -0.115567684, -4.32867018e-05, 0.188919917, -7.02563008e-16, 0.981992543, -2.94597758e-05, 1, 5.66759718e-06, -0.981992543, -2.99999992e-05, 0.188919917)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(0.145335227, 1.50490153, 0.0145378578, 0.188919917, 0.018436905, -0.981819451, 0, 0.999823749, 0.0187749974, 0.981992543, -0.00354697066, 0.188886613)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.06)
RS.C0=clerp(RS.C0,CFrame.new(1.99503291, 0.504822254, -0.389725208, -0.0171545371, -0.965878367, 0.258427978, 0.999760211, -0.0200885795, -0.00871692039, 0.0136109358, 0.25821653, 0.965991199)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.06)
LS.C0=clerp(LS.C0,CFrame.new(-1.70524883, 0.0745566338, -0.233700261, 0.870548964, 0.481558561, -0.101221561, -0.492081702, 0.851939082, -0.179040372, 1.61677599e-05, 0.205672726, 0.978620887)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.642196834, -1.93521571, -0.0256682932, 0.177223787, -0.0520141758, -0.982795238, 0, 0.99860245, -0.0528507754, 0.984170616, 0.00936641358, 0.176976115)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.594589353, -1.97232008, -0.145275459, 0.991398931, 0.122632131, 0.0457128882, -0.116721973, 0.986484885, -0.114993982, -0.0591970086, 0.108669207, 0.992313981)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end

elseif choice==8 then

elseif choice==9 then
doing=true
local sas=mouse.KeyDown:connect(function(k)
k=k:lower()
if k=="z" and doing==true then
doing=false
end
end)
local refe=parts(e,"ref",Vector3.new(.2,.2,.2),col[2],Enum.Material.Neon,0,1)
refe.Anchored=true
haa=refe
local refs=parts(e,"ref",Vector3.new(.2,.2,.2),col[2],Enum.Material.Neon,0,1)
local refWeld=welds(refs,"R2Weld",RArm,refs,CFrame.new(0, -1.2, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0,0,0))


local numz=0
while doing==true do
swait()
numz=numz+1
refe.CFrame=CFrame.new(mouse.Hit.p)*CFrame.Angles(math.rad(90),0,0)
if numz==10 then
numz=0
LockEffect(workspace.CurrentCamera,col[1],refe.CFrame,refe,2,2,1,4,4,0,.07,"FileMesh",6,0,"3270017")
LockEffect(e,col[1],refs.CFrame,refs,1,1,1,.6,.6,0,.08,"FileMesh",1,0,"3270017")
end
LockEffect(e,col[1],refs.CFrame,refs,1,1,1,1,1,1,.1,"Brick",1,0,"")
hum.WalkSpeed=8
if attack2==false then
RJ.C0=clerp(RJ.C0,CFrame.new(9.82645361e-07, -.2-.1*math.cos(sin/25), -5.42081143e-05, 0.647161186, -1.46387433e-11, 0.762353182, -2.28706049e-05, 1, 1.94148233e-05, -0.762353182, -2.99999992e-05, 0.647161186)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-2.54695206e-05, 1.5000248, 3.12392112e-05, 0.641426861, 0, -0.767184138, 0, 1, 0, 0.767184138, 0, 0.641426861)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.40617871, 1.34100902, -0.55221802, 0.556814194, -0.251128912, 0.791765332, -7.40000323e-05, -0.953217447, -0.302285641, 0.830637097, 0.168258324, -0.530783594)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.53162372, 0.100231051, -4.13375892e-06, 0.970351577, 0.241698042, -6.85453415e-07, -0.241698056, 0.970351517, -6.14382225e-06, -8.94069672e-07, 6.11692667e-06, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.500023007, -1.80007105+.1*math.cos(sin/25), -5.93066216e-05, 0.528373897, 0, -0.849011838, 0, 1, 0, 0.849011838, 0, 0.528373897)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.500042558, -1.80007105+.1*math.cos(sin/25), -7.36862421e-05, 0.625953257, 0, -0.779860556, 0, 1, 0, 0.779860556, 0, 0.625953257)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
end
haa=nil
refe:Remove()
sas:Disconnect()
end

else
	
if choice==1 then
hum.WalkSpeed=8
for i=0,1,0.08 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(0, 0, 0, 1, -1.40512602e-15, -1.61558713e-27, -1.40512602e-15, 1, 0, -1.61558713e-27, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
Neck.C0=clerp(Neck.C0,CFrame.new(-1.08187918e-15, 1.53990352, 0.166146547, 1, -6.63869907e-16, 2.29938105e-16, -7.02563008e-16, 0.944925845, -0.327284664, 0, 0.327284664, 0.944925845)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RS.C0=clerp(RS.C0,CFrame.new(1.32545364, 1.29256904, -0.409047306, 0.118548028, 0.127795905, 0.98469013, 0.445469737, -0.893128037, 0.0622820929, 0.887413859, 0.431266218, -0.162807748)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LS.C0=clerp(LS.C0,CFrame.new(-0.0991366506, 0.968719363, -0.563359261, 0.160328016, -0.822585762, 0.54557097, 0.364644527, -0.464262813, -0.807152033, 0.917240143, 0.328348547, 0.22551702)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RH.C0=clerp(RH.C0,CFrame.new(0.513582528, -1.79938452, 0.00132172182, 0.994032621, -0.0501478165, -0.0968735367, 0.0503848828, 0.998730004, 9.88113243e-07, 0.0967504531, -0.00488194451, 0.995296717)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LH.C0=clerp(LH.C0,CFrame.new(-0.515292525, -1.80007272, -0.0472557023, 0.9858675, 0.032826975, 0.164279073, -0.0332799107, 0.999446154, 4.85404598e-06, -0.164187923, -0.00547197927, 0.986413896)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
end
sounds(RArm,"1222885383",1,1)
for i=0,1,0.09 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(0, 0, 0, 1, -1.40512602e-15, -1.61558713e-27, -1.40512602e-15, 1, 0, -1.61558713e-27, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
Neck.C0=clerp(Neck.C0,CFrame.new(-1.08187918e-15, 1.53990352, 0.166146547, 1, -6.63869907e-16, 2.29938105e-16, -7.02563008e-16, 0.944925845, -0.327284664, 0, 0.327284664, 0.944925845)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RS.C0=clerp(RS.C0,CFrame.new(1.32545364, 1.29256904, -0.409047306, 0.118548028, 0.127795905, 0.98469013, 0.445469737, -0.893128037, 0.0622820929, 0.887413859, 0.431266218, -0.162807748)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
LS.C0=clerp(LS.C0,CFrame.new(-0.0283950269, 0.783390403, -0.502045631, 0.160330951, -0.926400006, 0.340700865, 0.364636421, -0.265162021, -0.89259696, 0.917242765, 0.267342865, 0.295285523)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RH.C0=clerp(RH.C0,CFrame.new(0.513582528, -1.79938452, 0.00132172182, 0.994032621, -0.0501478165, -0.0968735367, 0.0503848828, 0.998730004, 9.88113243e-07, 0.0967504531, -0.00488194451, 0.995296717)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LH.C0=clerp(LH.C0,CFrame.new(-0.515292525, -1.80007272, -0.0472557023, 0.9858675, 0.032826975, 0.164279073, -0.0332799107, 0.999446154, 4.85404598e-06, -0.164187923, -0.00547197927, 0.986413896)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
end
for i=0,1,0.08 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(0, 0, 0, 1, -1.40512602e-15, -1.61558713e-27, -1.40512602e-15, 1, 0, -1.61558713e-27, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
Neck.C0=clerp(Neck.C0,CFrame.new(-1.08187918e-15, 1.53990352, 0.166146547, 1, -6.63869907e-16, 2.29938105e-16, -7.02563008e-16, 0.944925845, -0.327284664, 0, 0.327284664, 0.944925845)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RS.C0=clerp(RS.C0,CFrame.new(1.32545364, 1.29256904, -0.409047306, 0.118548028, 0.127795905, 0.98469013, 0.445469737, -0.893128037, 0.0622820929, 0.887413859, 0.431266218, -0.162807748)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
LS.C0=clerp(LS.C0,CFrame.new(-0.0991366506, 0.968719363, -0.563359261, 0.160328016, -0.822585762, 0.54557097, 0.364644527, -0.464262813, -0.807152033, 0.917240143, 0.328348547, 0.22551702)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RH.C0=clerp(RH.C0,CFrame.new(0.513582528, -1.79938452, 0.00132172182, 0.994032621, -0.0501478165, -0.0968735367, 0.0503848828, 0.998730004, 9.88113243e-07, 0.0967504531, -0.00488194451, 0.995296717)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LH.C0=clerp(LH.C0,CFrame.new(-0.515292525, -1.80007272, -0.0472557023, 0.9858675, 0.032826975, 0.164279073, -0.0332799107, 0.999446154, 4.85404598e-06, -0.164187923, -0.00547197927, 0.986413896)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
end
for i=0,1,0.07 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(0, 0, 0, 1, -1.40512602e-15, -1.61558713e-27, -1.40512602e-15, 1, 0, -1.61558713e-27, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-1.08059784e-15, 1.53807974, -0.0334641188, 1, -6.94644361e-16, -1.05185445e-16, -7.02563008e-16, 0.988729, 0.14971675, 0, -0.14971675, 0.988729)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.0236448, 0.510529995, -1.07723355, -0.0622590072, 0.162809014, 0.984691381, 0.998046279, 0.00497597037, 0.0622806735, 0.00524005899, 0.986645103, -0.162800714)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-0.226216763, 0.511607587, -0.778035164, 0.336760134, -0.938928425, 0.0707538649, 0.22414054, 0.00695441896, -0.974532068, 0.914523661, 0.344042391, 0.212793902)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.513582528, -1.79938452, 0.00132172182, 0.994032621, -0.0501478165, -0.0968735367, 0.0503848828, 0.998730004, 9.88113243e-07, 0.0967504531, -0.00488194451, 0.995296717)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LH.C0=clerp(LH.C0,CFrame.new(-0.515292525, -1.80007272, -0.0472557023, 0.9858675, 0.032826975, 0.164279073, -0.0332799107, 0.999446154, 4.85404598e-06, -0.164187923, -0.00547197927, 0.986413896)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
end
for i=1,50 do
sounds(RArm,"433799645",.7,1.7)
Effect(e,col[2],RArm.CFrame*CFrame.new(0,-1.2,0),1,1,1,1,1,1,.1,"Brick",1,0,"")
coroutine.resume(coroutine.create(function()
local refz=parts(e,"ref",Vector3.new(.2,.2,.2),col[2],Enum.Material.Neon,0,0)
meshs(refz,"Mesh",Vector3.new(1.4,1.4,12),Enum.MeshType.Sphere,"")
refz.Anchored=true
refz.CFrame=RArm.CFrame*CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(90),0,0)
game:GetService("Debris"):AddItem(refz,5)
local ha=refz.Position
local dec=CFrame.new(ha,mouse.Hit.p)
while refz.Parent~=nil do
swait()
local hit,pos=rayCast(ha,dec.LookVector,6,chr)
refz.CFrame=CFrame.new(ha,pos)
ha=ha+(dec.LookVector*6)
Effect(e,col[2],refz.CFrame,2,2,2,-.6,-.6,-.6,.1,"Brick",1,0,"")
if hit~=nil then
sounds(refz,"1489924400",.8,1.05)
Damage("None",refz,hit,math.random(8,10),0,"1489924400",1,.9)
Effect(e,col[2],refz.CFrame,1,1,1,.6,.6,.6,.08,"Brick",1,0,"")
Effect(e,col[2],refz.CFrame,1,1,1,.6,.6,.6,.08,"Sphere",1,0,"")
game:GetService("Debris"):AddItem(refz,.3)
end
end
end))
for i=0,1,0.8 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(0, 0, 0, 1, -1.40512602e-15, -1.61558713e-27, -1.40512602e-15, 1, 0, -1.61558713e-27, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-1.08059784e-15, 1.53807974, -0.0334641188, 1, -6.94644361e-16, -1.05185445e-16, -7.02563008e-16, 0.988729, 0.14971675, 0, -0.14971675, 0.988729)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.0236448, 0.510529995, -1.07723355, -0.0622590072, 0.162809014, 0.984691381, 0.998046279, 0.00497597037, 0.0622806735, 0.00524005899, 0.986645103, -0.162800714)*CFrame.new(0,.4,0)*CFrame.Angles(0,0,0),1)
LS.C0=clerp(LS.C0,CFrame.new(-0.202133954, 0.532215238, -0.691665828, 0.26177907, -0.962530732, 0.070755817, 0.223992229, -0.0107189612, -0.974532068, 0.93877548, 0.270960838, 0.21279338)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),1)
RH.C0=clerp(RH.C0,CFrame.new(0.513582528, -1.79938452, 0.00132172182, 0.994032621, -0.0501478165, -0.0968735367, 0.0503848828, 0.998730004, 9.88113243e-07, 0.0967504531, -0.00488194451, 0.995296717)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LH.C0=clerp(LH.C0,CFrame.new(-0.515292525, -1.80007272, -0.0472557023, 0.9858675, 0.032826975, 0.164279073, -0.0332799107, 0.999446154, 4.85404598e-06, -0.164187923, -0.00547197927, 0.986413896)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
end
for i=0,1,0.8 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(0, 0, 0, 1, -1.40512602e-15, -1.61558713e-27, -1.40512602e-15, 1, 0, -1.61558713e-27, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-1.08059784e-15, 1.53807974, -0.0334641188, 1, -6.94644361e-16, -1.05185445e-16, -7.02563008e-16, 0.988729, 0.14971675, 0, -0.14971675, 0.988729)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.0236448, 0.510529995, -1.07723355, -0.0622590072, 0.162809014, 0.984691381, 0.998046279, 0.00497597037, 0.0622806735, 0.00524005899, 0.986645103, -0.162800714)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),1)
LS.C0=clerp(LS.C0,CFrame.new(-0.226216763, 0.511607587, -0.778035164, 0.336760134, -0.938928425, 0.0707538649, 0.22414054, 0.00695441896, -0.974532068, 0.914523661, 0.344042391, 0.212793902)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),1)
RH.C0=clerp(RH.C0,CFrame.new(0.513582528, -1.79938452, 0.00132172182, 0.994032621, -0.0501478165, -0.0968735367, 0.0503848828, 0.998730004, 9.88113243e-07, 0.0967504531, -0.00488194451, 0.995296717)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LH.C0=clerp(LH.C0,CFrame.new(-0.515292525, -1.80007272, -0.0472557023, 0.9858675, 0.032826975, 0.164279073, -0.0332799107, 0.999446154, 4.85404598e-06, -0.164187923, -0.00547197927, 0.986413896)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
end
end
for i=0,1,0.05 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(0, 0, 0, 1, -1.40512602e-15, -1.61558713e-27, -1.40512602e-15, 1, 0, -1.61558713e-27, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
Neck.C0=clerp(Neck.C0,CFrame.new(-1.08059784e-15, 1.53807974, -0.0334641188, 1, -6.94644361e-16, -1.05185445e-16, -7.02563008e-16, 0.988729, 0.14971675, 0, -0.14971675, 0.988729)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RS.C0=clerp(RS.C0,CFrame.new(1.0236448, 0.510529995, -1.07723355, -0.0622590072, 0.162809014, 0.984691381, 0.998046279, 0.00497597037, 0.0622806735, 0.00524005899, 0.986645103, -0.162800714)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.1)
LS.C0=clerp(LS.C0,CFrame.new(-0.226216763, 0.511607587, -0.778035164, 0.336760134, -0.938928425, 0.0707538649, 0.22414054, 0.00695441896, -0.974532068, 0.914523661, 0.344042391, 0.212793902)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.1)
RH.C0=clerp(RH.C0,CFrame.new(0.513582528, -1.79938452, 0.00132172182, 0.994032621, -0.0501478165, -0.0968735367, 0.0503848828, 0.998730004, 9.88113243e-07, 0.0967504531, -0.00488194451, 0.995296717)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LH.C0=clerp(LH.C0,CFrame.new(-0.515292525, -1.80007272, -0.0472557023, 0.9858675, 0.032826975, 0.164279073, -0.0332799107, 0.999446154, 4.85404598e-06, -0.164187923, -0.00547197927, 0.986413896)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
end
elseif choice==2 then

elseif choice==3 then
hum.WalkSpeed=0
hum.JumpPower=0
sounds(RLeg,"199145659",1,1.2)
local al1=0
local al2=0
for i=0,1,0.02 do
swait()
al1=al1+1
if al1==6 then
al1=0
Effect(e,col[1],RLeg.CFrame*CFrame.new(0,-1,0),5+al2,5+al2,5+al2,-.5-(al2/10),-.5-(al2/10),-.5-(al2/10),.06,"Brick",1,0,"")
al2=al2+5
end
Effect(e,col[2],RLeg.CFrame*CFrame.new(0,-1,0),5,5,5,0,0,0,.09,"Brick",1,0,"")
RJ.C0=clerp(RJ.C0,CFrame.new(-2.55317218e-07, -1.52712246e-10, -5.09040865e-06, 0.971732259, -4.68375339e-17, 0.236086056, -7.08258131e-06, 1, 2.91519664e-05, -0.236086056, -2.99999992e-05, 0.971732259)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.08)
Neck.C0=clerp(Neck.C0,CFrame.new(0.0297667086, 1.54122853, -0.105499953, 0.935388565, 0.0522515103, -0.349740297, 0.0168560054, 0.981310666, 0.19169046, 0.353219986, -0.185200274, 0.917026043)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.08)
RS.C0=clerp(RS.C0,CFrame.new(1.52175832, 0.0616866052, -0.0898473561, 0.975628555, -0.144372985, 0.165243968, 0.142345965, 0.989523411, 0.0241075698, -0.166993216, 1.78068876e-06, 0.985958219)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.08)
LS.C0=clerp(LS.C0,CFrame.new(-1.53033578, 0.127833262, -2.49310233e-06, 0.981172085, 0.193136021, 1.04308128e-06, -0.193135977, 0.981172085, -5.2395776e-06, -2.04145908e-06, 4.93973494e-06, 1.00000012)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.08)
RH.C0=clerp(RH.C0,CFrame.new(0.635033607, -1.04185045, -0.707005084, 0.965305209, -0.0319203548, -0.259166181, 0, 0.992500365, -0.122241907, 0.261124492, 0.118000746, 0.958065808)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.08)
LH.C0=clerp(LH.C0,CFrame.new(-0.50003159, -2.00007176, -6.49914145e-05, 0.954113245, 0.0167173985, -0.298979491, 0, 0.998440504, 0.0558276698, 0.299446493, -0.0532659143, 0.952625275)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.08)
end
for i=0,1,0.15 do
swait()
Effect(e,col[2],RLeg.CFrame*CFrame.new(0,-1,0),5,5,5,0,0,0,.09,"Brick",1,0,"")
RJ.C0=clerp(RJ.C0,CFrame.new(-5.58793545e-08, -0.220266312, -0.0807041526, 0.97173214, -5.57477335e-07, 0.236086324, -0.0437949635, 0.982643068, 0.180262536, -0.231988713, -0.185506284, 0.954865754)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.5)
Neck.C0=clerp(Neck.C0,CFrame.new(0.0785898268, 1.4985497, -0.232750058, 0.935386658, 0.10093347, -0.338916272, 0.0168530438, 0.944588661, 0.32782346, 0.353224784, -0.312353492, 0.881854653)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.5)
RS.C0=clerp(RS.C0,CFrame.new(1.53710949, 0.0708739534, -0.0314454883, 0.956587195, -0.255687475, 0.139875218, 0.239431605, 0.9630844, 0.123048335, -0.166173548, -0.0842159092, 0.982493877)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.63690233, 0.0944070071, 0.15719083, 0.947024107, 0.315835506, 0.0582532585, -0.32116276, 0.93131727, 0.171763495, -3.27825546e-06, -0.181372955, 0.983414412)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.667365074, -1.72679579, -0.826531053, 0.965305924, -0.06797833, -0.252118111, 1.85623139e-06, 0.965521038, -0.260325253, 0.26112178, 0.251293033, 0.932023227)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.5)
LH.C0=clerp(LH.C0,CFrame.new(-0.500373304, -1.94011807, 0.24771297, 0.985988975, 0.073568508, -0.149711668, -0.0354126729, 0.969350815, 0.243115172, 0.163008735, -0.234407157, 0.958374381)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end

local hit=nil
while hit==nil do
swait()
Effect(e,col[2],RLeg.CFrame*CFrame.new(0,-1,0),5,5,5,0,0,0,.09,"Brick",1,0,"")
hit,pos=rayCast(RLeg.Position,(CFrame.new(RLeg.Position,RLeg.Position-Vector3.new(0,1,0))).lookVector,3,chr)
end
local refz=parts(e,"ref",Vector3.new(.2,.2,.2),col[2],Enum.Material.Neon,0,1)
refz.CFrame=RLeg.CFrame*CFrame.new(0,-1,0)
refz.Anchored=true
game:GetService("Debris"):AddItem(refz,3)
sounds(refz,"151776391",1.4,1.5)
sounds(refz,"588705525",1.4,1)

Effect(e,col[2],CFrame.new(refz.Position),5,5,5,15,15,15,.06,"Sphere",6,0,"")
CameraShake(100,Head,3,.04)
for i=0,50,1 do
swait()
Mdamage("None",refz,i*1.4,math.random(5,7),0,HitSound[math.random(1,#HitSound)],1,1)
Effect(e,col[2],CFrame.new(refz.Position),5+(i/5),1,5+(i/5),i/6,i/14,i/6,.09,"FileMesh",2,math.random(-20,20),"20329976")
Effect(e,col[2],CFrame.new(refz.Position+Vector3.new(0,.5,0)),5,8,5,i*1.2,-(i/8),i*1.2,.09,"Sphere",6,0,"")
Effect(e,col[2],CFrame.new(refz.Position+Vector3.new(math.random(-i,i),.5,math.random(-i,i))),10,10,10,1,1,1,.06,"Brick",7,2,"")
Effect(e,col[2],CFrame.new(refz.Position+Vector3.new(math.random(-i,i),.5,math.random(-i,i))),10,10,10,1,1,1,.06,"Brick",7,2,"")

end

elseif choice==4 then

elseif choice==5 then
hum.Jump=true
for i=0,1,0.03 do
swait()
Root.Velocity=(Root.CFrame.lookVector*80)+(Root.CFrame.upVector*80)
Mdamage("Push",Root,15,math.random(4,6),0,"")
Effect(e,col[1],Root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,6,6,6,.06,"Brick",1,0,"")
Effect(e,col[2],Root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,4,4,4,.04,"Brick",1,0,"")
Effect(e,col[2],Root.CFrame*CFrame.Angles(-math.rad(45),0,0),.03,.03,.03,.06,.06,.06,.05,"FileMesh",6,0,"729867285")
RJ.C0=clerp(RJ.C0,CFrame.new(1.45896052e-16, -0.119805336, 3.81469727e-06, 1, -1.21777588e-15, -1.61558713e-27, -1.21777588e-15, 1, 0, -1.61558713e-27, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(-math.rad(45),math.rad(0-1080*i),0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-8.87927751e-16, 1.4582777, 0.147966489, 1, -5.86010162e-16, 1.65338105e-16, -6.0888794e-16, 0.962426901, -0.271541089, 0, 0.271541059, 0.962426901)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.97017455, 0.45969522, -1.18835087e-05, 0.0179200098, -0.999839485, -1.82666392e-20, 0.999839485, 0.0179200098, 2.99999992e-05, -2.99951844e-05, -5.37600272e-07, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.96395421, 0.519270778, -1.36707749e-05, -0.0073769982, 0.999972761, -1.82666392e-20, -0.999972761, -0.0073769982, 2.99999992e-05, 2.99991825e-05, 2.21309946e-07, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.500015259, -1.30729222, -0.295279056, 1, -5.95902554e-16, -1.25078563e-16, -6.0888794e-16, 0.978673637, 0.205421314, 0, -0.205421314, 0.978673637)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.500022888, -1.93544233, 0.272091538, 1, -5.92406585e-16, -1.40708637e-16, -6.0888794e-16, 0.9729321, 0.231091186, 0, -0.231091186, 0.9729321)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end

for i=0,1,0.03 do
swait()
Root.Velocity=(Root.CFrame.lookVector*0)+(Root.CFrame.upVector*0)
RJ.C0=clerp(RJ.C0,CFrame.new(1.45896052e-16, -0.119805336, 3.81469727e-06, 1, -1.21777588e-15, -1.61558713e-27, -1.21777588e-15, 1, 0, -1.61558713e-27, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(-math.rad(0-810*i),0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-8.87927751e-16, 1.4582777, 0.147966489, 1, -5.86010162e-16, 1.65338105e-16, -6.0888794e-16, 0.962426901, -0.271541089, 0, 0.271541059, 0.962426901)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.97017455, 0.45969522, -1.18835087e-05, 0.0179200098, -0.999839485, -1.82666392e-20, 0.999839485, 0.0179200098, 2.99999992e-05, -2.99951844e-05, -5.37600272e-07, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.96395421, 0.519270778, -1.36707749e-05, -0.0073769982, 0.999972761, -1.82666392e-20, -0.999972761, -0.0073769982, 2.99999992e-05, 2.99991825e-05, 2.21309946e-07, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.500015259, -1.30729222, -0.295279056, 1, -5.95902554e-16, -1.25078563e-16, -6.0888794e-16, 0.978673637, 0.205421314, 0, -0.205421314, 0.978673637)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.500022888, -1.93544233, 0.272091538, 1, -5.92406585e-16, -1.40708637e-16, -6.0888794e-16, 0.9729321, 0.231091186, 0, -0.231091186, 0.9729321)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
local hit=nil
local spi=0
while hit==nil do
swait()
spi=spi-18
Root.Velocity=(Root.CFrame.lookVector*80)+(-Root.CFrame.upVector*80)
Mdamage("Push2",Root,15,math.random(4,6),0,"")
Effect(e,col[1],Root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,6,6,6,.06,"Brick",1,0,"")
Effect(e,col[2],Root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,4,4,4,.04,"Brick",1,0,"")
Effect(e,col[2],Root.CFrame*CFrame.Angles(math.rad(45),0,0),.03,.03,.03,.06,.06,.06,.05,"FileMesh",6,0,"729867285")
RJ.C0=clerp(RJ.C0,CFrame.new(1.45896052e-16, -0.119805336, 3.81469727e-06, 1, -1.21777588e-15, -1.61558713e-27, -1.21777588e-15, 1, 0, -1.61558713e-27, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(-math.rad(135),math.rad(spi),0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-8.87927751e-16, 1.4582777, 0.147966489, 1, -5.86010162e-16, 1.65338105e-16, -6.0888794e-16, 0.962426901, -0.271541089, 0, 0.271541059, 0.962426901)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.97017455, 0.45969522, -1.18835087e-05, 0.0179200098, -0.999839485, -1.82666392e-20, 0.999839485, 0.0179200098, 2.99999992e-05, -2.99951844e-05, -5.37600272e-07, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.96395421, 0.519270778, -1.36707749e-05, -0.0073769982, 0.999972761, -1.82666392e-20, -0.999972761, -0.0073769982, 2.99999992e-05, 2.99991825e-05, 2.21309946e-07, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.500015259, -1.30729222, -0.295279056, 1, -5.95902554e-16, -1.25078563e-16, -6.0888794e-16, 0.978673637, 0.205421314, 0, -0.205421314, 0.978673637)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.500022888, -1.93544233, 0.272091538, 1, -5.92406585e-16, -1.40708637e-16, -6.0888794e-16, 0.9729321, 0.231091186, 0, -0.231091186, 0.9729321)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)

hit,pos=rayCast(Root.Position,(CFrame.new(Root.Position,Root.Position-Vector3.new(0,1,0))).lookVector,4,chr)
end
Effect(e,col[1],Root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),4,4,4,22,22,22,.05,"Brick",1,0,"")
Effect(e,col[2],Root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),4,4,4,15,15,15,.04,"Brick",1,0,"")
for i=1,15 do
Effect(e,col[1],Root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),30,30,120,0,0,0,.02,"Sphere",3,2,"")
end
Mdamage("Push2",Root,35,math.random(30,45),0,"")
elseif choice==6 then

elseif choice==7 then

elseif choice==8 then

elseif choice==9 then


end








end
attack=false
end

function Skilltwo()
attack=true
if unleashed==false then
if choice==1 then

elseif choice==2 then
	
elseif choice==3 then
sounds(RArm,"588697034",1,2.4)
hum.WalkSpeed=0
hum.JumpPower=0
for i=0,1,0.04 do
swait()
Effect(e,"Crimson",RArm.CFrame*CFrame.new(math.random(-15,15)/10,math.random(-15,15)/10,math.random(-15,15)/10),2,2,2,0,0,0,.07,"Brick",1,0,"")
RJ.C0=clerp(RJ.C0,CFrame.new(-9.83476639e-07, -0.848298967, -0.17933403, 0.81206733, -4.2352616e-07, -0.583563745, 0.209395453, 0.933406234, 0.291386873, 0.544701993, -0.358821332, 0.757988811)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
Neck.C0=clerp(Neck.C0,CFrame.new(-4.19475145e-06, 1.50000477, 5.6207904e-05, 0.857747197, 1.48820327e-05, 0.514071822, -8.86915768e-06, 1.00000012, -1.41507153e-05, -0.514071703, 7.6048218e-06, 0.857747316)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
RS.C0=clerp(RS.C0,CFrame.new(1.90325081, 0.721667767, 0.494217932, -0.213002503, -0.866364539, -0.451710671, 0.977051616, -0.188875973, -0.0984679163, -8.15838575e-06, -0.462318599, 0.886713862)*CFrame.new(math.random(-4,4)/10,math.random(-4,4)/10,math.random(-4,4)/10)*CFrame.Angles(0,0,0),.2)
LS.C0=clerp(LS.C0,CFrame.new(-1.54728591, 0.218326598, -0.744016886, 0.875272155, 0.259572864, -0.4080697, -0.454250783, 0.730840981, -0.509438813, 0.165997624, 0.631263494, 0.757595778)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
RH.C0=clerp(RH.C0,CFrame.new(0.539964974, -1.83216858, 0.592804313, 0.993301868, -0.0220661163, 0.113421589, -0.0368196629, 0.869982004, 0.491706908, -0.109524786, -0.492589533, 0.863342285)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
LH.C0=clerp(LH.C0,CFrame.new(-0.846890211, -0.947732627, -0.556767464, 0.848747969, 0.227113023, 0.477542281, -3.68223505e-06, 0.903074503, -0.429484099, -0.528797626, 0.36452204, 0.766483366)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
end
for i=0,1,0.15 do
swait()
Effect(e,"Crimson",RArm.CFrame*CFrame.new(math.random(-15,15)/10,math.random(-15,15)/10,math.random(-15,15)/10),2,2,2,0,0,0,.07,"Brick",1,0,"")
RJ.C0=clerp(RJ.C0,CFrame.new(-0.0230394974, -1.53604734, 0.0319650769, 0.898617208, 0.369849443, 0.236005545, -0.431341499, 0.84309423, 0.321149111, -0.0801980793, -0.390389115, 0.917150319)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
Neck.C0=clerp(Neck.C0,CFrame.new(-0.184725463, 1.40377426, -0.0146014839, 0.885360479, -0.401227236, -0.234848291, 0.369641006, 0.913893223, -0.167824298, 0.281961888, 0.0617754273, 0.957434893)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RS.C0=clerp(RS.C0,CFrame.new(1.81247914, 0.145366088, 0.0184934288, 0.856979311, -0.509662151, -0.0763619393, 0.507078409, 0.860357463, -0.0515426174, 0.0919678658, 0.0054494366, 0.995747149)*CFrame.new(math.random(-4,4)/10,math.random(-4,4)/10,math.random(-4,4)/10)*CFrame.Angles(0,0,0),.3)
LS.C0=clerp(LS.C0,CFrame.new(-1.58540583, 0.0456062518, -0.604358971, 0.548828781, 0.747309804, -0.374586642, -0.80460465, 0.350723863, -0.479170382, -0.226712227, 0.564376533, 0.793776333)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RH.C0=clerp(RH.C0,CFrame.new(0.70504415, -1.26687849, 0.580287635, 0.888970912, -0.0167570971, -0.457657248, 0.355918884, 0.654141068, 0.667398989, 0.288188666, -0.756187141, 0.587476432)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LH.C0=clerp(LH.C0,CFrame.new(-0.121802345, -0.662044883, -1.15374923, 0.905758977, -0.411867797, -0.099829033, 0.320053995, 0.819196403, -0.47590223, 0.277788341, 0.399101943, 0.873814404)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
end
local hit=nil
while hit==nil do
swait()
Effect(e,"Crimson",RArm.CFrame*CFrame.new(math.random(-15,15)/10,math.random(-15,15)/10,math.random(-15,15)/10),2,2,2,0,0,0,.07,"Brick",1,0,"")
RS.C0=clerp(RS.C0,CFrame.new(1.81247914, 0.145366088, 0.0184934288, 0.856979311, -0.509662151, -0.0763619393, 0.507078409, 0.860357463, -0.0515426174, 0.0919678658, 0.0054494366, 0.995747149)*CFrame.new(math.random(-4,4)/10,math.random(-4,4)/10,math.random(-4,4)/10)*CFrame.Angles(0,0,0),.3)
hit,pos=rayCast(Root.Position,(CFrame.new(Root.Position,Root.Position-Vector3.new(0,1,0))).lookVector,4,chr)
end
for i=-20,20,20 do
local refy=parts(e,"ref",Vector3.new(.2,.2,.2),col[2],Enum.Material.Neon,0,1)
refy.Anchored=true
refy.CFrame=Root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(0,math.rad(i),0)
local refz=parts(e,"ref",Vector3.new(.2,.2,.2),col[2],Enum.Material.Neon,0,.2)
meshs(refz,"Mesh",Vector3.new(8, 8, 7),Enum.MeshType.FileMesh,"74322089")
refz.Anchored=true
refz.CFrame=refy.CFrame
local soundz=create("Sound"){
Parent=refz,
SoundId="rbxassetid://184878352",
Volume=1.5,
PlaybackSpeed=1,
Looped=true}
soundz:Play()
coroutine.resume(coroutine.create(function()
local anotheri=0
for i=0,1,.005 do
swait()
anotheri=anotheri-1.2
Mdamage("None",refz,6,math.random(12,16),0,HitSound[math.random(1,#HitSound)],1,1)
refz.CFrame=refy.CFrame*CFrame.new(0,0,anotheri)*CFrame.Angles(math.rad(0-1080*i),-math.rad(90),0)
Effect(e,"Crimson",refz.CFrame*CFrame.Angles(0,0,math.rad(0-1080*i)),50,1,6,0,0,0,.04,"Brick",6,0,"")
end
Effect(e,"Crimson",refz.CFrame,19,19,19,4,4,4,.03,"Brick",1,0,"")
Effect(e,"Crimson",refz.CFrame,19,19,19,4,4,4,.03,"Brick",1,0,"")
refy:Remove()
refz:Remove()
end))
end
for i=0,1,0.07 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(-1.08331442e-05, -0.612179875, 0.170055985, 0.505197227, 1.50560453e-07, 0.863003969, 0.271183521, 0.949346125, -0.158749342, -0.819289565, 0.314232141, 0.479607016)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-7.62065029e-05, 1.50001574, 5.31748956e-05, 0.505197227, -2.67624855e-05, -0.863004029, 1.50560453e-07, 1, -3.0875206e-05, 0.863003969, 1.54823065e-05, 0.505197287)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.53594398, 1.00440562, -0.826371253, 0.620073497, -0.427852601, 0.657610238, -4.07165044e-06, -0.838208795, -0.54534936, 0.784543872, 0.338154018, -0.51975286)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.8471477, 0.703520596, -0.110446513, -0.287520081, 0.918650389, -0.27094987, -0.929378927, -0.199224994, 0.310747713, 0.231488526, 0.341161281, 0.911055565)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.63793695, -1.76326358, -0.136713356, 0.685226619, 0.218354464, -0.694827974, -0.0995223671, 0.973124325, 0.207663894, 0.72149837, -0.0731459036, 0.688541889)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-1.25449431, -1.31419885, 0.480950415, 0.610176206, 0.731393754, -0.304546088, 0.0296054445, 0.363081068, 0.93128711, 0.791712582, -0.577265382, 0.199890211)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
elseif choice==4 then
if unleashed==false then
for i=0,1,0.1 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(-9.04827175e-06, -0.508343935, -1.53446181e-05, 0.599171042, 2.22569215e-05, 0.800621092, -2.40186328e-05, 1, -9.82443999e-06, -0.800621092, -1.33433023e-05, 0.599171042)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
Neck.C0=clerp(Neck.C0,CFrame.new(5.71087003e-06, 1.50002325, -8.7916851e-07, 0.593539178, 0.0327652283, -0.804137945, 2.23732368e-05, 0.999170244, 0.0407284871, 0.80480516, -0.0241919421, 0.59304595)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RS.C0=clerp(RS.C0,CFrame.new(1.50407934, -0.0712998509, -0.614256918, 0.820520043, -0.353509516, -0.449197114, -0.0963713378, 0.689034581, -0.718292475, 0.563435495, 0.632663012, 0.531298459)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
LS.C0=clerp(LS.C0,CFrame.new(-1.92895937, 0.45405072, 0.670836806, 0.0634042695, 0.84529078, 0.530531466, -0.997165382, 0.0320802629, 0.0680589303, 0.0405099988, -0.533342838, 0.844928741)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
RH.C0=clerp(RH.C0,CFrame.new(0.878299356, -1.63409626, -0.427800894, 0.630167246, -0.0905206427, -0.771164954, -0.0311854482, 0.989429176, -0.141624436, 0.775833011, 0.113296203, 0.620682836)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
LH.C0=clerp(LH.C0,CFrame.new(-1.00066185, -1.88597345, 0.632128179, 0.81848824, 0.479564905, -0.31637764, -0.055894088, 0.614533603, 0.78690809, 0.571798205, -0.626391292, 0.529793382)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
end	
local s=create("Model"){
Parent=chr,
Name="asc"}
local ref=parts(s,"ref",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Institutional white",Enum.Material.SmoothPlastic,0,0)
local refWeld=welds(ref,"refWeld",LArm,ref,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 3.6)*CFrame.Angles(math.rad(90),math.rad(90),0))	
local Pp=parts(s,"Pp",Vector3.new(5.4000001, 0.400000006, 1.20000005),"Bright blue",Enum.Material.Neon,0,0)
local PpWeld=welds(Pp,"PpWeld",ref,Pp,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, -2.51105166e-06, 3.57107501e-06, -1, 2.86569116e-06, 1, 3.57106774e-06, 1, -2.86568206e-06, -2.51106189e-06))
local Pp=parts(s,"Pp",Vector3.new(5.4000001, 0.400000006, 1.20000005),"Bright blue",Enum.Material.Neon,0,0)
local PpWeld=welds(Pp,"PpWeld",ref,Pp,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 1.27792742e-13, 0, 1.27792742e-13, 1, 0, 0, 0, 1))
local Pp=parts(s,"Pp",Vector3.new(5.4000001, 0.389999986, 1.39999998),"Institutional white",Enum.Material.Neon,0,0)
local PpWeld=welds(Pp,"PpWeld",ref,Pp,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, -2.51105166e-06, 3.57107501e-06, -1, 2.86569116e-06, 1, 3.57106774e-06, 1, -2.86568206e-06, -2.51106189e-06))
local Pp=parts(s,"Pp",Vector3.new(5.4000001, 0.389999986, 1.39999998),"Institutional white",Enum.Material.Neon,0,0)
local PpWeld=welds(Pp,"PpWeld",ref,Pp,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 1.27792742e-13, 0, 1.27792742e-13, 1, 0, 0, 0, 1))
local Pp=parts(s,"Pp",Vector3.new(0.389999986, 0.800000012, 0.699999988),"Institutional white",Enum.Material.Neon,0,0)
local PpWeld=welds(Pp,"PpWeld",ref,Pp,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00497913361, -3.09499168, 0.349979401, -5.73139459e-06, -1, -6.08210576e-06, -1, 5.73135731e-06, 6.08216169e-06, -6.08212031e-06, 6.08213441e-06, -1))
meshs(Pp,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Pp=parts(s,"Pp",Vector3.new(0.389999986, 0.800000012, 0.699999988),"Institutional white",Enum.Material.Neon,0,0)
local PpWeld=welds(Pp,"PpWeld",ref,Pp,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.004986763, -3.09498978, 0.349994659, 2.86569116e-06, 1, 3.57106774e-06, -1, 2.86568206e-06, 2.51106189e-06, 2.51105166e-06, -3.57107501e-06, 1))
meshs(Pp,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Pp=parts(s,"Pp",Vector3.new(0.389999986, 0.800000012, 0.699999988),"Institutional white",Enum.Material.Neon,0,0)
local PpWeld=welds(Pp,"PpWeld",ref,Pp,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.004986763, -3.1050148, 0.349994659, -2.86569116e-06, -1, -3.57106774e-06, 1, -2.86568206e-06, -2.51106189e-06, 2.51105166e-06, -3.57107501e-06, 1))
meshs(Pp,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Pp=parts(s,"Pp",Vector3.new(0.389999986, 0.800000012, 0.699999988),"Institutional white",Enum.Material.Neon,0,0)
local PpWeld=welds(Pp,"PpWeld",ref,Pp,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.004986763, -3.10501289, 0.349990845, 2.86569116e-06, 1, 3.57106774e-06, 1, -2.86568206e-06, -2.51106189e-06, -2.51105166e-06, 3.57107501e-06, -1))
meshs(Pp,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Pp=parts(s,"Pp",Vector3.new(0.389999986, 0.800000012, 0.699999988),"Institutional white",Enum.Material.Neon,0,0)
local PpWeld=welds(Pp,"PpWeld",ref,Pp,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.004986763, -3.09999847, 0.344978333, 2.86569116e-06, 1, 3.57106774e-06, 2.51105166e-06, -3.57107501e-06, 1, 1, -2.86568206e-06, -2.51106189e-06))
meshs(Pp,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Pp=parts(s,"Pp",Vector3.new(0.389999986, 0.800000012, 0.699999988),"Institutional white",Enum.Material.Neon,0,0)
local PpWeld=welds(Pp,"PpWeld",ref,Pp,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.004986763, -3.1000042, 0.355005264, 2.86569116e-06, 1, 3.57106774e-06, -2.51105166e-06, 3.57107501e-06, -1, -1, 2.86568206e-06, 2.51106189e-06))
meshs(Pp,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Pp=parts(s,"Pp",Vector3.new(0.389999986, 0.800000012, 0.699999988),"Institutional white",Enum.Material.Neon,0,0)
local PpWeld=welds(Pp,"PpWeld",ref,Pp,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.004986763, -3.09999847, 0.35500145, -2.86569116e-06, -1, -3.57106774e-06, 2.51105166e-06, -3.57107501e-06, 1, -1, 2.86568206e-06, 2.51106189e-06))
meshs(Pp,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Pp=parts(s,"Pp",Vector3.new(0.389999986, 0.800000012, 0.699999988),"Institutional white",Enum.Material.Neon,0,0)
local PpWeld=welds(Pp,"PpWeld",ref,Pp,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.004986763, -3.1000061, 0.34498024, -2.86569116e-06, -1, -3.57106774e-06, -2.51105166e-06, 3.57107501e-06, -1, 1, -2.86568206e-06, -2.51106189e-06))
meshs(Pp,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Pp=parts(s,"Pp",Vector3.new(0.400000006, 0.599999964, 0.599999964),"Bright blue",Enum.Material.Neon,0,0)
local PpWeld=welds(Pp,"PpWeld",ref,Pp,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00498008728, -2.9949913, 0.299976349, -5.73139459e-06, -1, -6.08210576e-06, -1, 5.73135731e-06, 6.08216169e-06, -6.08212031e-06, 6.08213441e-06, -1))
meshs(Pp,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Pp=parts(s,"Pp",Vector3.new(0.400000006, 0.599999964, 0.599999964),"Bright blue",Enum.Material.Neon,0,0)
local PpWeld=welds(Pp,"PpWeld",ref,Pp,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.004986763, -2.9949913, 0.299991608, 2.86569116e-06, 1, 3.57106774e-06, -1, 2.86568206e-06, 2.51106189e-06, 2.51105166e-06, -3.57107501e-06, 1))
meshs(Pp,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Pp=parts(s,"Pp",Vector3.new(0.400000006, 0.599999964, 0.599999964),"Bright blue",Enum.Material.Neon,0,0)
local PpWeld=welds(Pp,"PpWeld",ref,Pp,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00498771667, -3.00501251, 0.299995422, -2.86569116e-06, -1, -3.57106774e-06, 1, -2.86568206e-06, -2.51106189e-06, 2.51105166e-06, -3.57107501e-06, 1))
meshs(Pp,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Pp=parts(s,"Pp",Vector3.new(0.400000006, 0.599999964, 0.599999964),"Bright blue",Enum.Material.Neon,0,0)
local PpWeld=welds(Pp,"PpWeld",ref,Pp,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.004986763, -3.0050087, 0.299976349, 2.86569116e-06, 1, 3.57106774e-06, 1, -2.86568206e-06, -2.51106189e-06, -2.51105166e-06, 3.57107501e-06, -1))
meshs(Pp,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Pp=parts(s,"Pp",Vector3.new(0.400000006, 0.599999964, 0.599999964),"Bright blue",Enum.Material.Neon,0,0)
local PpWeld=welds(Pp,"PpWeld",ref,Pp,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00498771667, -2.99999619, 0.305002213, -2.86569116e-06, -1, -3.57106774e-06, 2.51105166e-06, -3.57107501e-06, 1, -1, 2.86568206e-06, 2.51106189e-06))
meshs(Pp,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Pp=parts(s,"Pp",Vector3.new(0.400000006, 0.599999964, 0.599999964),"Bright blue",Enum.Material.Neon,0,0)
local PpWeld=welds(Pp,"PpWeld",ref,Pp,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.004986763, -3, 0.294979095, 2.86569116e-06, 1, 3.57106774e-06, 2.51105166e-06, -3.57107501e-06, 1, 1, -2.86568206e-06, -2.51106189e-06))
meshs(Pp,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Pp=parts(s,"Pp",Vector3.new(0.400000006, 0.599999964, 0.599999964),"Bright blue",Enum.Material.Neon,0,0)
local PpWeld=welds(Pp,"PpWeld",ref,Pp,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00498771667, -3.00000381, 0.294981003, -2.86569116e-06, -1, -3.57106774e-06, -2.51105166e-06, 3.57107501e-06, -1, 1, -2.86568206e-06, -2.51106189e-06))
meshs(Pp,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Pp=parts(s,"Pp",Vector3.new(0.400000006, 0.599999964, 0.599999964),"Bright blue",Enum.Material.Neon,0,0)
local PpWeld=welds(Pp,"PpWeld",ref,Pp,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.004986763, -3.00000191, 0.304988861, 2.86569116e-06, 1, 3.57106774e-06, -2.51105166e-06, 3.57107501e-06, -1, -1, 2.86568206e-06, 2.51106189e-06))
meshs(Pp,"Mesh",Vector3.new(1, 1, 1),Enum.MeshType.Wedge,"")
local Pp=parts(s,"Pp",Vector3.new(1.20000005, 0.409999996, 1.20000005),"Institutional white",Enum.Material.Neon,0,0)
local PpWeld=welds(Pp,"PpWeld",ref,Pp,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 0.707105041, 4.98788268e-07, -0.707108617, 2.86569116e-06, 1, 3.57106774e-06, 0.707108617, -4.55147483e-06, 0.707105041))
LockEffect(e,"Bright blue",ref.CFrame,ref,35,11,35,0,0,4,.05,"Sphere",6,0,"")
LockEffect(e,"Bright blue",ref.CFrame,ref,35,11,35,4,0,0,.05,"Sphere",6,0,"")
sounds(ref,"161006033",1.2,1.1)
for i=1,10 do
Effect(e,"Cyan",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),18,18,18,-1,-1,-1,.05,"Sphere",3,1,"")
end
coroutine.resume(coroutine.create(function()
while ref.Parent~=nil do
swait()
Effect(e,"Bright blue",ref.CFrame*CFrame.new(math.random(-39,39)/10,math.random(-1,1)/10,math.random(-39,39)/10)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0,0,0,.09,"Brick",6,0,"")
Effect(e,"Cyan",ref.CFrame*CFrame.new(math.random(-39,39)/10,math.random(-1,1)/10,math.random(-39,39)/10)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0,0,0,.09,"Brick",6,0,"")
end
end))

for i=0,1,0.03 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(-9.04827175e-06, -0.508343935, -1.53446181e-05, 0.599171042, 2.22569215e-05, 0.800621092, -2.40186328e-05, 1, -9.82443999e-06, -0.800621092, -1.33433023e-05, 0.599171042)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
Neck.C0=clerp(Neck.C0,CFrame.new(5.71087003e-06, 1.50002325, -8.7916851e-07, 0.593539178, 0.0327652283, -0.804137945, 2.23732368e-05, 0.999170244, 0.0407284871, 0.80480516, -0.0241919421, 0.59304595)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RS.C0=clerp(RS.C0,CFrame.new(1.50407934, -0.0712998509, -0.614256918, 0.820520043, -0.353509516, -0.449197114, -0.0963713378, 0.689034581, -0.718292475, 0.563435495, 0.632663012, 0.531298459)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
LS.C0=clerp(LS.C0,CFrame.new(-1.92895937, 0.45405072, 0.670836806, 0.0634042695, 0.84529078, 0.530531466, -0.997165382, 0.0320802629, 0.0680589303, 0.0405099988, -0.533342838, 0.844928741)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
RH.C0=clerp(RH.C0,CFrame.new(0.878299356, -1.63409626, -0.427800894, 0.630167246, -0.0905206427, -0.771164954, -0.0311854482, 0.989429176, -0.141624436, 0.775833011, 0.113296203, 0.620682836)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
LH.C0=clerp(LH.C0,CFrame.new(-1.00066185, -1.88597345, 0.632128179, 0.81848824, 0.479564905, -0.31637764, -0.055894088, 0.614533603, 0.78690809, 0.571798205, -0.626391292, 0.529793382)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
end	


for i=1,2 do
sounds(LArm,"200632211",2,math.random(13,16)/20)
for i=0,1,0.12 do
swait()
Mdamage("None",ref,6,math.random(10,15),0.02,HitSound[math.random(1,#HitSound)],1,1)
RJ.C0=clerp(RJ.C0,CFrame.new(0, 0, -0, 1, -9.36750677e-17, 0, -9.36750677e-17, 1, 0, 0, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(0-360*i),0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(8.85080226e-07, 1.5000236, 1.55519592e-06, 0.829984128, -4.68375339e-17, -0.557787061, 1.67336111e-05, 1, 2.48995239e-05, 0.557787061, -2.99999992e-05, 0.829984128)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(2.02016449, 0.434696972, -0.259254307, 0.0621120147, -0.964079857, 0.258248359, 0.998069227, 0.0600045472, -0.0160423759, -2.99420753e-05, 0.258746177, 0.965945363)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.88846052, 0.604216933, 0.556626439, -0.0800480023, 0.811000824, 0.579542935, -0.996706426, -0.0575444214, -0.0571412034, -0.0129920989, -0.582208157, 0.812936008)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.575132549, -1.99559033, 6.7083779e-06, 0.998226345, -0.0595330223, 1.78599123e-06, 0.0595330223, 0.998226345, 5.31999831e-08, -1.78599066e-06, 5.3219992e-08, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.573431015, -1.99483347, 1.45107697e-06, 0.997465014, 0.0711589977, -1.77897493e-06, -0.0711589977, 0.997465014, 5.06337528e-06, 2.13476983e-06, -4.92394975e-06, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
end
sounds(LArm,"200632211",2,math.random(13,16)/20)
coroutine.resume(coroutine.create(function()
local refz=parts(s,"ref",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Institutional white",Enum.Material.SmoothPlastic,0,1)
refz.Anchored=true
s.PrimaryPart=refz
refz.CFrame=Root.CFrame*CFrame.new(0,0,-5)
local refx=parts(s,"ref",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Institutional white",Enum.Material.SmoothPlastic,0,1)
local refxWeld=welds(refx,"refzWeld",refz,refx,CFrame.new(0,0,0),CFrame.new(0, 0, 0))
refx.CFrame=refz.CFrame
refWeld.Part0=refx
refWeld.C1=CFrame.new(0,0,0)
local ka=0
for i=0,1,.005 do
swait()
if i>=.3 then
	ka=ka+1
if ka>=9 then
ka=0
local spik=parts(e,"ref",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Cyan",Enum.Material.Neon,0,0)
spik.Anchored=true
spik.CFrame=CFrame.new(ref.Position)
meshs(spik,"Mesh",Vector3.new(24,24,24),Enum.MeshType.Sphere,"")
game:GetService("Debris"):AddItem(spik,1)
local locc=nil
local ha=spik.Position
local lockon=FindNearestTorso(ref.Position,190)
if lockon~=nil then
locc=lockon
else
spik:Remove()
end
coroutine.resume(coroutine.create(function()
while spik.Parent~=nil do
swait()
if locc~=nil then
Effect(e,"Bright blue",spik.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),15,15,15,3,3,3,.1,"Brick",1,0,"")
Effect(e,"Bright blue",spik.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),15,15,15,0,0,0,.08,"Sphere",3,2,"")
local dec=CFrame.new(spik.Position,locc.Position)
local hit,pos=rayCast(ha,dec.LookVector,12,chr)
spik.CFrame=CFrame.new(pos)
ha=ha+(dec.LookVector*4)
if hit~=nil then
Mdamage("None",spik,14,math.random(6,10),0,HitSound[math.random(1,#HitSound)],1,1)
Effect(e,"Cyan",spik.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),15,15,15,8,8,8,.05,"Brick",1,0,"")
Effect(e,"Bright blue",spik.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),15,15,15,8,8,8,.05,"Sphere",1,0,"")
for i=1,5 do
Effect(e,"Cyan",spik.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),18,18,18,-.8,-.8,-.8,.06,"Sphere",3,2,"")
end
spik:Remove()
end
end
end
end))
end
end
refWeld.C0=clerp(refWeld.C0,CFrame.new(0,0,-i*250)*CFrame.Angles(0,math.rad(0-2440*i),0),.3)
Mdamage("None",ref,9,math.random(10,15),0.04,HitSound[math.random(1,#HitSound)],1,1)
refz.CFrame=Root.CFrame
Effect(e,"Cyan",ref.CFrame,18,.1,18,-1,0,-1,.08,"Brick",6,0,"")
end
for i=1,10 do
Effect(e,"Cyan",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),18,18,18,-1,-1,-1,.05,"Sphere",3,1,"")
end
Effect(e,"Bright blue",ref.CFrame,35,11,35,0,0,4,.05,"Sphere",6,0,"")
Effect(e,"Bright blue",ref.CFrame,35,11,35,4,0,0,.05,"Sphere",6,0,"")
s:Remove()
end))
for i=0,1,0.07 do
swait()
Torso.Velocity=Root.CFrame.lookVector*-20
RJ.C0=clerp(RJ.C0,CFrame.new(-0.0944169313, -0.481276453, 0.0757273436, 0.574706972, -0.188751951, -0.796294332, -0.0158674549, 0.970284522, -0.241446167, 0.818205476, 0.151395977, 0.554634273)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-0.0866130888, 1.48897398, -0.0827516392, 0.691114604, -0.0662824586, 0.719699502, -9.1791153e-06, 0.995785117, 0.091718033, -0.72274524, -0.0633942485, 0.688200951)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.75824237, 0.154598236, -0.176927552, 0.935697317, -0.328760266, 0.128012657, 0.347230434, 0.922395527, -0.169167727, -0.0624626875, 0.202739716, 0.977238595)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-0.873721302, 0.743684471, -1.16224122, 0.491874874, -0.475503743, -0.729352713, -0.860908628, -0.390682101, -0.325889647, -0.129983336, 0.788202882, -0.601531923)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.684098244, -1.85597205, -0.219180092, 0.987979412, -0.15458554, -7.42077827e-06, 0.151275665, 0.96683526, -0.205779791, 0.031817764, 0.203305021, 0.978598416)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.735948324, -1.7054497, -0.060092181, 0.877434254, 0.0337487198, 0.478508532, -0.0680926591, 0.996183872, 0.0546007082, -0.474839717, -0.0804914311, 0.876383722)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end


else

end
elseif choice==5 then

elseif choice==6 then

elseif choice==7 then

elseif choice==8 then

elseif choice==9 then

end
else
if choice==1 then

elseif choice==2 then
	
elseif choice==3 then
	
elseif choice==4 then
	
elseif choice==5 then
	
elseif choice==6 then
LASER()
elseif choice==7 then
	
elseif choice==8 then
	
elseif choice==9 then
end
end
attack=false
end

function Skillthree()
attack=true

attack=false
end

function Skillfour()
attack=true
if unleashed==false then
if choice==1 then
	
elseif choice==2 then
	
elseif choice==3 then
	
elseif choice==4 then
	
elseif choice==5 then
	
elseif choice==6 then
	
elseif choice==7 then
sounds(chr,"737843799",5,1)
elseif choice==8 then
hum.WalkSpeed=20
for i=0,1,0.04 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(0, 1-.15*math.cos(sin/25), 0, 1, -1.21777588e-15, -1.61558713e-27, -1.21777588e-15, 1, 0, -1.61558713e-27, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.1)
Neck.C0=clerp(Neck.C0,CFrame.new(-9.35914761e-16, 1.53708863, 0.176942334, 1, -5.86166334e-16, 1.64783444e-16, -6.0888794e-16, 0.962683439, -0.270630181, 0, 0.270630211, 0.962683439)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.1)
RS.C0=clerp(RS.C0,CFrame.new(1.53205395, 1.30058384, 0.00567160361, 0.995461226, -0.0951679349, 8.71450425e-07, -0.0951670334, -0.995451748, 0.00436084485, -0.000414145092, -0.00434113527, -0.999990582)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.1)
LS.C0=clerp(LS.C0,CFrame.new(-1.58096766, 1.27196574, -0.0607934147, 0.988777101, 0.149398282, -2.12001351e-06, 0.149227813, -0.987649679, -0.0477407426, -0.00713447761, 0.047204636, -0.998859763)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.1)
RH.C0=clerp(RH.C0,CFrame.new(0.500007629, -1.31953299, -0.42188406, 1, -5.98481452e-16, -1.12091073e-16, -6.0888794e-16, 0.982909083, 0.184091449, 0, -0.184091434, 0.982909083)*CFrame.new(0,0-.1*math.sin(sin/25),0+.04*math.sin(sin/25))*CFrame.Angles(math.rad(0-4*math.cos(sin/25)),0,0),.1)
LH.C0=clerp(LH.C0,CFrame.new(-0.500225306, -2.03385782, 0.344429612, 0.999890864, 0.0147771491, 3.20716117e-06, -0.0141538708, 0.957654357, 0.287572116, 0.00424642442, -0.287540734, 0.957759023)*CFrame.new(0,0-.03*math.sin(sin/25),0+.04*math.sin(sin/25))*CFrame.Angles(math.rad(0-3*math.cos(sin/25)),0,0),.1)
end
local ref=parts(e,"ref",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Institutional white",Enum.Material.Neon,0,0)
meshs(ref,"Mesh",Vector3.new(1,1,1),Enum.MeshType.Sphere,"")
ref.Anchored=true
sounds(chr,"93724183",3,.7)
local aaaaa=1
for i=0,1,.002 do
swait()
aaaaa=aaaaa+.2
ref.Color=rain
REffect(e,"Bright blue",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))*CFrame.new(0,0,-aaaaa*8),aaaaa*2,aaaaa*2,aaaaa*12,0,0,0,.05,"Sphere",3,aaaaa/2,"")
Effect(e,"Bright blue",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),aaaaa*2,aaaaa*2,aaaaa*12,0,0,aaaaa/2,.05,"Sphere",6,0,"")
ref:findFirstChild("Mesh").Scale=Vector3.new(aaaaa*8,aaaaa*8,aaaaa*8)
ref.CFrame=clerp(ref.CFrame,Root.CFrame*CFrame.new(0,aaaaa,0),.2)
RJ.C0=clerp(RJ.C0,CFrame.new(0, 1-.15*math.cos(sin/25), 0, 1, -1.21777588e-15, -1.61558713e-27, -1.21777588e-15, 1, 0, -1.61558713e-27, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.1)
Neck.C0=clerp(Neck.C0,CFrame.new(-9.35914761e-16, 1.53708863, 0.176942334, 1, -5.86166334e-16, 1.64783444e-16, -6.0888794e-16, 0.962683439, -0.270630181, 0, 0.270630211, 0.962683439)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.1)
RS.C0=clerp(RS.C0,CFrame.new(1.53205395, 1.30058384, 0.00567160361, 0.995461226, -0.0951679349, 8.71450425e-07, -0.0951670334, -0.995451748, 0.00436084485, -0.000414145092, -0.00434113527, -0.999990582)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.1)
LS.C0=clerp(LS.C0,CFrame.new(-1.58096766, 1.27196574, -0.0607934147, 0.988777101, 0.149398282, -2.12001351e-06, 0.149227813, -0.987649679, -0.0477407426, -0.00713447761, 0.047204636, -0.998859763)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.1)
RH.C0=clerp(RH.C0,CFrame.new(0.500007629, -1.31953299, -0.42188406, 1, -5.98481452e-16, -1.12091073e-16, -6.0888794e-16, 0.982909083, 0.184091449, 0, -0.184091434, 0.982909083)*CFrame.new(0,0-.1*math.sin(sin/25),0+.04*math.sin(sin/25))*CFrame.Angles(math.rad(0-4*math.cos(sin/25)),0,0),.1)
LH.C0=clerp(LH.C0,CFrame.new(-0.500225306, -2.03385782, 0.344429612, 0.999890864, 0.0147771491, 3.20716117e-06, -0.0141538708, 0.957654357, 0.287572116, 0.00424642442, -0.287540734, 0.957759023)*CFrame.new(0,0-.03*math.sin(sin/25),0+.04*math.sin(sin/25))*CFrame.Angles(math.rad(0-3*math.cos(sin/25)),0,0),.1)
end
for i=0,1,0.015 do
swait()
Effect(e,"Bright blue",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),aaaaa*2,aaaaa*2,aaaaa*12,0,0,aaaaa/2,.05,"Sphere",6,0,"")
ref:findFirstChild("Mesh").Scale=Vector3.new(aaaaa*8,aaaaa*8,aaaaa*8)
ref.CFrame=clerp(ref.CFrame,Torso.CFrame*CFrame.new(0,aaaaa,0),.2)
ref.Color=rain
RJ.C0=clerp(RJ.C0,CFrame.new(-2.41679014e-19, 1-.15*math.cos(sin/25), 0.0995269939, 1, -5.85745253e-16, 1.66273944e-16, -6.0888794e-16, 0.961991906, -0.273078084, 0, 0.273078084, 0.961991906)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(0, 1.53708541, 0.176942974, 1, 0, 0, 0, 0.962682962, -0.270631969, 0, 0.270631969, 0.962682962)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.56088197, 1.3031466, 0.236597985, 0.988034904, -0.140925556, -0.0626670793, -0.0939476639, -0.872165442, 0.480105698, -0.122315206, -0.468473703, -0.874969482)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.5838958, 1.21647108, 0.539354205, 0.980968356, 0.120767854, 0.152040675, 0.0145201571, -0.826471031, 0.562792182, 0.193624407, -0.54987365, -0.812495351)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.500007629, -1.27497125, -0.314032406, 1, 0, 0, 0, 0.924230337, 0.381835699, 0, -0.381835699, 0.924230337)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.500096023, -2.00751853, 0.401968837, 0.999890864, 0.0146357045, 0.00204183906, -0.0141577367, 0.909176409, 0.416170627, 0.00423455844, -0.416154087, 0.909284353)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
print(ref:findFirstChild("Mesh").Scale)
for i=0,1,0.1 do
swait()
Effect(e,"Bright blue",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),aaaaa*2,aaaaa*2,aaaaa*12,0,0,aaaaa/2,.05,"Sphere",6,0,"")
ref:findFirstChild("Mesh").Scale=Vector3.new(aaaaa*8,aaaaa*8,aaaaa*8)
ref.CFrame=clerp(ref.CFrame,Torso.CFrame*CFrame.new(0,aaaaa,-35),.2)
ref.Color=rain
RJ.C0=clerp(RJ.C0,CFrame.new(4.85698433e-16, -0.797681153, 0.116355002, 1, -2.64240372e-16, -5.48563206e-16, -6.0888794e-16, 0.43397212, 0.900926292, 0, -0.900926292, 0.43397212)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(0, 1.53708065, 0.176940724, 1, 0, 0, 0, 0.962683439, -0.270630151, 0, 0.270630151, 0.962683439)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.48815489, 1.24118304, -0.492708027, 0.990145981, -0.131911382, -0.0470143892, -0.133128077, -0.782485545, -0.608270764, 0.0434497595, 0.608535767, -0.792335987)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.43675923, 1.26481295, -0.721690059, 0.995355666, 0.0937921703, 0.0216811057, 0.0824306235, -0.714081466, -0.695192754, -0.0497215651, 0.693751216, -0.718496382)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.500007629, -1.27496862, -0.314035684, 1, 0, 0, 0, 0.924230576, 0.381835073, 0, -0.381835073, 0.924230576)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.500095606, -2.00751519, 0.401962668, 0.999890864, 0.0146339871, 0.00204039784, -0.0141555741, 0.90917629, 0.416170686, 0.00423515495, -0.416154087, 0.909284353)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
sounds(chr,"860448713",3,1)
local hit=nil
while hit==nil do
swait()
hit,pos=rayCast(ref.Position,(CFrame.new(ref.Position,ref.Position-Vector3.new(0,1,0))).lookVector,30,chr)
Effect(e,"Bright blue",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),aaaaa*2,aaaaa*2,aaaaa*12,0,0,aaaaa/2,.05,"Sphere",6,0,"")
ref:findFirstChild("Mesh").Scale=Vector3.new(aaaaa*8,aaaaa*8,aaaaa*8)
ref.CFrame=clerp(ref.CFrame,Torso.CFrame*CFrame.new(0,aaaaa,-35),.2)
ref.Color=rain
RJ.C0=clerp(RJ.C0,CFrame.new(4.85698433e-16, -0.797681153, 0.116355002, 1, -2.64240372e-16, -5.48563206e-16, -6.0888794e-16, 0.43397212, 0.900926292, 0, -0.900926292, 0.43397212)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(0, 1.53708065, 0.176940724, 1, 0, 0, 0, 0.962683439, -0.270630151, 0, 0.270630151, 0.962683439)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.48815489, 1.24118304, -0.492708027, 0.990145981, -0.131911382, -0.0470143892, -0.133128077, -0.782485545, -0.608270764, 0.0434497595, 0.608535767, -0.792335987)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.43675923, 1.26481295, -0.721690059, 0.995355666, 0.0937921703, 0.0216811057, 0.0824306235, -0.714081466, -0.695192754, -0.0497215651, 0.693751216, -0.718496382)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.500007629, -1.27496862, -0.314035684, 1, 0, 0, 0, 0.924230576, 0.381835073, 0, -0.381835073, 0.924230576)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.500095606, -2.00751519, 0.401962668, 0.999890864, 0.0146339871, 0.00204039784, -0.0141555741, 0.90917629, 0.416170686, 0.00423515495, -0.416154087, 0.909284353)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
sounds(chr,"1196176156",3,.5)
sounds(chr,"413503439",3,.5)
sounds(chr,"245520987",3,.5)

Effect(e,"Bright blue",ref.CFrame,808,808,808,15,15,15,.004,"Sphere",6,0,"")
Effect(e,"Bright blue",ref.CFrame,808,808,808,25,25,25,.004,"Sphere",6,0,"")
for i=1,40 do
Effect(e,"Bright blue",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),40,40,180,0,0,0,.008,"Sphere",3,3,"")

end
coroutine.resume(coroutine.create(function()
for i=0,1,.002 do
swait()
aaaaa=aaaaa-.2
ref:findFirstChild("Mesh").Scale=Vector3.new(aaaaa*8,aaaaa*8,aaaaa*8)
ref.Color=rain	
Mdamage("None",ref,aaaaa*2.2,math.random(20,25),.05,HitSound[math.random(1,#HitSound)],1,1)
Effect(e,"Bright blue",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),aaaaa*2,aaaaa*2,aaaaa*12,0,0,0,.05,"Sphere",3,aaaaa/2,"")
Effect(e,"Bright blue",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),aaaaa*2,aaaaa*2,aaaaa*2,aaaaa,aaaaa,aaaaa,.05,"Brick",1,0,"")
end
Effect(e,"Bright blue",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),aaaaa*2,aaaaa*2,aaaaa*2,aaaaa*20,aaaaa*20,aaaaa*20,.03,"Brick",1,0,"")
ref:Remove()
end))
elseif choice==9 then

end
else
if choice==1 then
	
elseif choice==2 then
	
elseif choice==3 then
	
elseif choice==4 then
	
elseif choice==5 then
	
elseif choice==6 then
	
elseif choice==7 then

elseif choice==8 then
	
elseif choice==9 then
	
if plr.UserId==33104243 or plr.UserId==5719877 or plr.UserId==19081129 then
CameraShake(20,Head,3,.01)
Mdamage("None",Root,39999,0,0,"")
Effect(e,col[1],Root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(0,0,0),39999,1,39999,0,0,0,.01,"Sphere",6,0,"")
for i=1,50 do
Effect(e,col[1],Root.CFrame*CFrame.new(math.random(-300,300),0-3,math.random(-300,300))*CFrame.Angles(math.rad(90+math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))),15,15,15,0,0,4,.006,"Sphere",3,-math.random(5,15)/10,"")
end

end	
end
end
attack=false
end



local ok=false
function Chang()
ok=false
hum.WalkSpeed=0
if choice==1 then

sounds(Root,"190119264",1.2,2)
for i=0,1,0.03 do
swait()
CameraShake(300,Head,3,.2)
Effect(e,"Really black",Root.CFrame*CFrame.new(-0,-2.5,0),3,3,3,.6,.1,.6,.05,"FileMesh",2,math.random(-10,10),"20329976")
Effect(e,"Really black",LArm.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-20,20)/10,math.random(-10,10)/10),2,2,2,.1,.1,.1,.1,"Brick",1,0,"")
Effect(e,"Institutional white",LArm.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-20,20)/10,math.random(-10,10)/10),2,2,2,.1,.1,.1,.1,"Brick",1,0,"")
Effect(e,"Really black",RArm.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-20,20)/10,math.random(-10,10)/10),2,2,2,.1,.1,.1,.1,"Brick",1,0,"")
Effect(e,"Institutional white",RArm.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-20,20)/10,math.random(-10,10)/10),2,2,2,.1,.1,.1,.1,"Brick",1,0,"")
RJ.C0=clerp(RJ.C0,CFrame.new(0, 0, -0, 1, -9.36750677e-17, 0, -9.36750677e-17, 1, 0, 0, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-7.01741915e-17, 1.49824715, -0.0207450241, 1, -4.67299441e-17, -3.17281833e-18, -4.68375339e-17, 0.997702956, 0.0677409321, 0, -0.0677409321, 0.997702956)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.9800576, 0.596585155, -0.047003448, -0.038547013, -0.998755455, 0.0316511504, 0.998755395, -0.0375050604, 0.03287898, -0.0316509753, 0.0328791402, 0.998958111)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-2.00713968, 0.494357556, 0.0302567445, -0.00578799937, 0.999472857, 0.0319442078, -0.0669459179, 0.0314857773, -0.997259676, -0.997739851, -0.00791067164, 0.0667283982)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.500016212, -2.01160526, -0.161240906, 1, -4.6718175e-17, -3.34171351e-18, -4.68375339e-17, 0.997451603, 0.0713469163, 0, -0.0713469088, 0.997451603)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.500021935, -1.99858701, 0.023087576, 1, -4.67410614e-17, -3.00467257e-18, -4.68375339e-17, 0.997940302, 0.0641509518, 0, -0.0641509518, 0.997940302)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
CameraShake(120,Head,3,.1)
Effect(e,"Institutional white",LArm.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-20,20)/10,math.random(-10,10)/10),2,2,2,3,3,3,.06,"Brick",1,0,"")
Effect(e,"Really black",LArm.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-20,20)/10,math.random(-10,10)/10),2,2,2,4,4,4,.06,"Brick",1,0,"")
Effect(e,"Institutional white",RArm.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-20,20)/10,math.random(-10,10)/10),2,2,2,3,3,3,.06,"Brick",1,0,"")
Effect(e,"Really black",RArm.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-20,20)/10,math.random(-10,10)/10),2,2,2,4,4,4,.06,"Brick",1,0,"")
ok=true
for i=0,1,0.05 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(0, 0, -0, 1, -9.36750677e-17, 0, -9.36750677e-17, 1, 0, 0, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-7.01741915e-17, 1.49824715, -0.0207450241, 1, -4.67299441e-17, -3.17281833e-18, -4.68375339e-17, 0.997702956, 0.0677409321, 0, -0.0677409321, 0.997702956)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.9800576, 0.596585155, -0.047003448, -0.038547013, -0.998755455, 0.0316511504, 0.998755395, -0.0375050604, 0.03287898, -0.0316509753, 0.0328791402, 0.998958111)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-2.00713968, 0.494357556, 0.0302567445, -0.00578799937, 0.999472857, 0.0319442078, -0.0669459179, 0.0314857773, -0.997259676, -0.997739851, -0.00791067164, 0.0667283982)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.500016212, -2.01160526, -0.161240906, 1, -4.6718175e-17, -3.34171351e-18, -4.68375339e-17, 0.997451603, 0.0713469163, 0, -0.0713469088, 0.997451603)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.500021935, -1.99858701, 0.023087576, 1, -4.67410614e-17, -3.00467257e-18, -4.68375339e-17, 0.997940302, 0.0641509518, 0, -0.0641509518, 0.997940302)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
elseif choice==2 then
local spinny=0
for i=0,1,0.03 do
swait()
spinny=spinny+(i*55)
RJ.C0=clerp(RJ.C0,CFrame.new(0, 0, -0, 1, -9.36750677e-17, 0, -9.36750677e-17, 1, 0, 0, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,-math.rad(spinny),0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-7.02573662e-17, 1.50002277, 9.68575478e-08, 1, -4.67803889e-17, -2.3129769e-18, -4.68375339e-17, 0.998779893, 0.0493829809, 0, -0.0493829809, 0.998779893)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.95646703, 0.467494905, 0.153293923, 0.0226759985, -0.988594234, -0.14888674, 0.999742866, 0.0224186573, 0.00340668927, -2.99922849e-05, -0.148925707, 0.988848388)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.97080266, 0.694796145, -0.243509561, -0.102600962, 0.980135679, -0.169726491, -0.994722664, -0.101091273, 0.0175360497, 2.98416799e-05, 0.170629993, 0.985335171)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.500017166, -1.0500344, -0.40401727, 1, -4.64760559e-17, -5.80784353e-18, -4.68375339e-17, 0.992282331, 0.123999767, 0, -0.123999767, 0.992282331)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.355516136, -1.97269011, -9.00705345e-07, 0.982519865, -0.186158001, 5.02626472e-06, 0.186157987, 0.982519865, 3.47196874e-06, -5.58473948e-06, -2.4755991e-06, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
LockEffect(e,"Pastel green",Root.CFrame,Root,5,5,5,4,4,4,.05,"Brick",1,0,"")
LockEffect(e,"Pastel green",Root.CFrame,Root,5,5,5,6,6,6,.05,"Brick",1,0,"")
Effect(e,"Olivine",Root.CFrame,5,8,5,2,1,2,.04,"FileMesh",2,15,"1051557")
Effect(e,"Olivine",Root.CFrame,5,8,5,4,1,4,.04,"FileMesh",2,-20,"1051557")
sounds(Root,"588698460",1.4,1.5)
sounds(Root,"588694531",1.4,1.3)
ok=true
for i=0,1,0.05 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(0.0124673173, -0.273998827, -0.103800446, 0.807817459, 0.024931239, -0.588905573, 0.102654397, 0.977885783, 0.182212412, 0.580424964, -0.207648218, 0.787393689)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-4.90993261e-06, 1.50002277, 5.68702817e-05, 0.825252652, 0.045490019, 0.562928796, 1.23307109e-06, 0.996750712, -0.0805489123, -0.564763963, 0.0664737672, 0.822571039)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.96095514, 0.533156157, 0.344382346, -0.0368255898, -0.954795837, -0.294972658, 0.99932164, -0.0351852141, -0.0108683333, -1.77090988e-06, -0.295172632, 0.955444098)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.8811208, 0.0834257901, -0.39527142, 0.316834748, 0.901120067, -0.295970559, -0.948480785, 0.301013947, -0.0988676623, -3.87430191e-07, 0.312046885, 0.950066805)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.790543377, -1.93150997, 0.00270047784, 0.846368968, -0.286426425, 0.449020505, 0.106314972, 0.916969299, 0.384531468, -0.521878183, -0.277717978, 0.806545734)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.747359037, -1.5555644, -0.575195313, 0.898398876, 0.0411927029, 0.437244207, -0.0625885949, 0.997438431, 0.0346311592, -0.434697807, -0.0584792569, 0.89867574)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
elseif choice==3 then
for i=0,1,0.05 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(-7.11458045e-17, 0.0607596487, -0.362514317, 1, -1.09981352e-15, -4.01879441e-16, -1.17093835e-15, 0.939258218, 0.343211412, 0, -0.343211383, 0.939258218)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
Neck.C0=clerp(Neck.C0,CFrame.new(0, 1.56086135, -0.167261451, 1, 0, 0, 0, 0.957743049, 0.287625283, 0, -0.287625283, 0.957743049)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
RS.C0=clerp(RS.C0,CFrame.new(0.644679248, 0.399064004, -0.877624035, 0.0331639908, 0.69217062, 0.720971584, 0.977304935, 0.128553107, -0.168372825, -0.209225863, 0.710192919, -0.672198415)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
LS.C0=clerp(LS.C0,CFrame.new(-0.683388233, 0.30223158, -0.865742087, 0.693069041, -0.72087127, 6.17622163e-06, 0.195694149, 0.188138515, -0.962448835, 0.693800569, 0.667044759, 0.271463245)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
RH.C0=clerp(RH.C0,CFrame.new(0.516345441, -2.05924225, -0.366508484, 0.998546124, -0.0539050102, 1.23981545e-06, 0.0506312773, 0.93789506, -0.343204796, 0.0184992962, 0.342705905, 0.939260662)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
LH.C0=clerp(LH.C0,CFrame.new(-0.543680549, -2.08511305, -0.375961393, 0.99770534, 0.0677060112, -2.03118111e-06, -0.0635941327, 0.937102914, -0.343211323, -0.0232355706, 0.342423916, 0.939258277)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
end
for i=0,1,0.06 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(-1.95034795e-18, 0.0016656284, 0.0409713611, 1, -1.17056724e-15, 2.9477223e-17, -1.17093835e-15, 0.999683142, -0.025174018, 0, 0.025174018, 0.999683142)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.25)
Neck.C0=clerp(Neck.C0,CFrame.new(0, 1.47295976, 0.0762125626, 1, 0, 0, 0, 0.991611481, -0.129255429, 0, 0.129255429, 0.991611481)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.25)
RS.C0=clerp(RS.C0,CFrame.new(0.746309519, 1.18215656, -0.69776839, 0.0886500105, 0.516807973, 0.851499081, 0.743473113, -0.603231192, 0.288721114, 0.662864208, 0.607471645, -0.437709302)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.25)
LS.C0=clerp(LS.C0,CFrame.new(-0.578242004, 1.34403408, -0.803679824, 0.747157156, -0.660108209, 0.077546373, -0.399777412, -0.539544642, -0.740992367, 0.530974805, 0.522636473, -0.667020977)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.25)
RH.C0=clerp(RH.C0,CFrame.new(0.516344607, -2.0012536, 0.00941089541, 0.998546124, -0.0539050102, 1.23981545e-06, 0.0538878851, 0.998229563, 0.0251810495, -0.00135862222, -0.0251443721, 0.999682963)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.25)
LH.C0=clerp(LH.C0,CFrame.new(-0.54368037, -2.02878881, 0.0101051517, 0.99770534, 0.0677060112, -2.03118111e-06, -0.0676845163, 0.997389197, 0.0251740869, 0.00170646305, -0.0251161829, 0.999683142)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.25)
end
swait()
sounds(Root,"1310128035",1.6,.7)
ok=true
CameraShake(80,Head,3,.05)
LockEffect(e,col[1],Root.CFrame,Root,40,40,40,3,3,3,.02,"Brick",1,0,"")
LockEffect(e,col[1],Root.CFrame,Root,40,40,40,2,2,2,.02,"Sphere",6,0,"")
for i=1,20 do
Effect(e,col[1],Root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),80,80,80,-3,-3,-3,.04,"Sphere",3,math.random(20,30)/10,"")
Effect(e,col[1],Root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),6,6,35,0,0,0,.03,"Sphere",4,.1,"",130,180,150)
end
for i=0,1,0.04 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(-9.29635865e-18, 0.00793923996, 0.167696625, 1, -1.15234089e-15, 2.07863222e-16, -1.17093835e-15, 0.984117448, -0.177518502, 0, 0.177518502, 0.984117448)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
Neck.C0=clerp(Neck.C0,CFrame.new(0, 1.37083244, 0.232683539, 1, 0, 0, 0, 0.871405363, -0.49056372, 0, 0.49056372, 0.871405363)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.74112046, 0.00480708852, 0.2067132, 0.511707902, -0.848705888, -0.133616433, 0.808253944, 0.422794729, 0.409841627, -0.291342676, -0.317715228, 0.902317286)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LS.C0=clerp(LS.C0,CFrame.new(-1.65785241, 0.0526258796, 0.438414007, 0.488762051, 0.806380987, 0.332958609, -0.872311711, 0.44577688, 0.200886413, 0.013565734, -0.388629287, 0.921294391)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RH.C0=clerp(RH.C0,CFrame.new(0.516344965, -2.00502086, 0.191270247, 0.998546124, -0.0539050102, 1.23981545e-06, 0.0530485697, 0.982685506, 0.177525416, -0.00957072712, -0.177267253, 0.984116197)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LH.C0=clerp(LH.C0,CFrame.new(-0.543680429, -2.03212714, 0.196160644, 0.99770534, 0.0677060112, -2.03118111e-06, -0.0666303188, 0.981859267, 0.177518561, 0.0120210694, -0.177111089, 0.984117448)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
end
elseif choice==4 then
for i=0,1,0.06 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(4.68375603e-17, -1.00000048, 2.81780958e-05, 1, -4.64817999e-17, -5.76165997e-18, -4.68375339e-17, 0.992404938, 0.123013727, 0, -0.123013727, 0.992404938)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
Neck.C0=clerp(Neck.C0,CFrame.new(0, 1.57122159, -0.163274109, 1, 0, 0, 0, 0.936353505, 0.351058424, 0, -0.351058424, 0.936353505)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RS.C0=clerp(RS.C0,CFrame.new(1.13374329, -0.158999205, -0.703515172, 0.968200624, 0.248347685, -0.0301816687, -0.204551756, 0.716394424, -0.667036474, -0.144034952, 0.651998878, 0.744413555)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LS.C0=clerp(LS.C0,CFrame.new(-0.912300527, -0.142237604, -0.778449237, 0.92667073, -0.373554796, 0.0416914336, 0.297392488, 0.660827219, -0.689104557, 0.229867458, 0.650971711, 0.723461628)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RH.C0=clerp(RH.C0,CFrame.new(0.500016212, -1.00614512, -0.645060897, 1, 0, 0, 0, 0.998766065, 0.0496628582, 0, -0.0496628582, 0.998766065)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LH.C0=clerp(LH.C0,CFrame.new(-0.500021935, -1.61372328, 0.76758641, 1, 0, 0, 0, 0.565185726, 0.824963689, 0, -0.824963689, 0.565185726)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
end
local refz=parts(e,"ref",Vector3.new(.2,.2,.2),"Bright blue",Enum.Material.Neon,.4,0)
meshs(refz,"Mesh",Vector3.new(9,12,9),Enum.MeshType.FileMesh,"1778999")
refz.Anchored=true
refz.CFrame=Root.CFrame*CFrame.new(0,-6,0)
sounds(refz,"199146035",1.1,1)
local la=-6
for i=0,1,0.05 do
swait()
la=la+.5
refz.CFrame=Root.CFrame*CFrame.new(0,la,0)
RJ.C0=clerp(RJ.C0,CFrame.new(0, 0, -0, 1, -9.36750677e-17, 0, -9.36750677e-17, 1, 0, 0, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
Neck.C0=clerp(Neck.C0,CFrame.new(-6.83385123e-17, 1.45905435, 0.133173555, 1, -4.4766803e-17, 1.37727342e-17, -4.68375339e-17, 0.95578903, -0.294053376, 0, 0.294053376, 0.95578903)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
RS.C0=clerp(RS.C0,CFrame.new(1.3367523, 1.48646891, -0.395474702, 0.986297131, 0.149123609, 0.0705709159, 0.164316565, -0.849629581, -0.501128316, -0.0147709316, 0.505857348, -0.862490714)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
LS.C0=clerp(LS.C0,CFrame.new(-1.33212662, 1.48460805, -0.228756428, 0.989708662, -0.143097535, 4.5536396e-07, -0.132842362, -0.918781698, -0.371743292, 0.0531959683, 0.367917448, -0.928335607)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
RH.C0=clerp(RH.C0,CFrame.new(0.500016212, -2.01160526, -0.161240906, 1, -4.6718175e-17, -3.34171351e-18, -4.68375339e-17, 0.997451603, 0.0713469163, 0, -0.0713469088, 0.997451603)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
LH.C0=clerp(LH.C0,CFrame.new(-0.500021935, -1.99858701, 0.023087576, 1, -4.67410614e-17, -3.00467257e-18, -4.68375339e-17, 0.997940302, 0.0641509518, 0, -0.0641509518, 0.997940302)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
end
ok=true
sounds(Root,"338594737",1.1,1)
Effect(e,col[1],refz.CFrame*CFrame.new(0,-3,0),10,10,10,5,5,5,.05,"Brick",1,0,"")
Effect(e,col[1],refz.CFrame*CFrame.new(0,-3,0),20,20,20,5,5,5,.05,"Brick",1,0,"")
for i=1,15 do
Effect(e,col[1],refz.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),6,6,35,0,0,0,.03,"Sphere",4,.1,"",130,180,150)
end
CameraShake(100,Head,3,.05)
refz:Remove()
for i=0,1,0.04 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(0, 0, -0, 1, -9.36750677e-17, 0, -9.36750677e-17, 1, 0, 0, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-6.9897e-17, 1.49232888, -0.107949734, 1, -4.54057702e-17, -1.14922088e-17, -4.68375339e-17, 0.969431281, 0.245363235, 0, -0.245363235, 0.969431281)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.9800576, 0.596585155, -0.047003448, -0.038547013, -0.998755455, 0.0316511504, 0.998755395, -0.0375050604, 0.03287898, -0.0316509753, 0.0328791402, 0.998958111)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-2.00713968, 0.494357556, 0.0302567445, -0.00578799937, 0.999472857, 0.0319442078, -0.0669459179, 0.0314857773, -0.997259676, -0.997739851, -0.00791067164, 0.0667283982)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.500016212, -2.01160526, -0.161240906, 1, -4.6718175e-17, -3.34171351e-18, -4.68375339e-17, 0.997451603, 0.0713469163, 0, -0.0713469088, 0.997451603)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.500021935, -1.99858701, 0.023087576, 1, -4.67410614e-17, -3.00467257e-18, -4.68375339e-17, 0.997940302, 0.0641509518, 0, -0.0641509518, 0.997940302)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
elseif choice==5 then
Effect(e,"Alder",Root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),60,60,60,-1,-1,-1,.03,"Sphere",6,0,"")
Effect(e,"Royal purple",Root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),60,60,60,-1,-1,-1,.03,"Brick",1,0,"")
for i=0,1,0.02 do
swait()
Effect(e,"Royal purple",Root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))*CFrame.new(0,5,0),3,3,40,0,0,0,.04,"Sphere",3,2,"")
Effect(e,"Alder",Root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))*CFrame.new(0,5,0),3,3,40,0,0,0,.04,"Sphere",3,2,"")
RJ.C0=clerp(RJ.C0,CFrame.new(1.45896052e-16, -0.119805336, 3.81469727e-06, 1, -1.21777588e-15, -1.61558713e-27, -1.21777588e-15, 1, 0, -1.61558713e-27, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-9.33710888e-16, 1.5334692, -0.0932569802, 1, -5.99801129e-16, -1.04800965e-16, -6.0888794e-16, 0.985076308, 0.172118634, 0, -0.172118634, 0.985076308)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.98724985, 0.399357885, -0.465691119, 0.0390189849, -0.917319357, 0.396235764, 0.992645085, -0.00989453588, -0.120656557, 0.114601173, 0.398029387, 0.91018641)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-2.00015116, 0.424853861, -0.568261087, 0.0191030074, 0.873589575, -0.486288488, -0.994627297, 0.066099517, 0.0796717927, 0.101743877, 0.482153773, 0.870158613)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.523034573, -1.87156796, 0.0132280812, 0.999930263, -0.0118108643, 3.88632202e-07, 0.0118069937, 0.99960345, 0.0255667791, -0.000302354281, -0.0255649947, 0.999673128)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.574481487, -1.97308517, -6.85287932e-06, 0.998523653, 0.0543189794, -1.79252572e-06, -0.0543189794, 0.998523653, -2.95127029e-06, 1.6295694e-06, 3.04428067e-06, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
ok=true
Effect(e,"Alder",Root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,11,11,11,.03,"Sphere",6,0,"")
for i=1,3 do
Effect(e,"Alder",Root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),.5,.5,.5,.03,.03,.03,.02,"FileMesh",6,0,"729867285")
Effect(e,"Royal purple",Root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),.5,.5,.5,.05,.05,.05,.02,"FileMesh",6,0,"729867285")
end
for i=0,1,0.04 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(1.45896052e-16, -0.119805336, 3.81469727e-06, 1, -1.21777588e-15, -1.61558713e-27, -1.21777588e-15, 1, 0, -1.61558713e-27, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-9.3374371e-16, 1.53352296, 0.0105924327, 1, -6.08887887e-16, -3.21492792e-19, -6.0888794e-16, 0.999999881, 0.000527999946, 0, -0.000527999946, 0.999999881)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.98724985, 0.399357885, -0.465691119, 0.0390189849, -0.917319357, 0.396235764, 0.992645085, -0.00989453588, -0.120656557, 0.114601173, 0.398029387, 0.91018641)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-2.00015116, 0.424853861, -0.568261087, 0.0191030074, 0.873589575, -0.486288488, -0.994627297, 0.066099517, 0.0796717927, 0.101743877, 0.482153773, 0.870158613)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.523034573, -1.87156796, 0.0132280812, 0.999930263, -0.0118108643, 3.88632202e-07, 0.0118069937, 0.99960345, 0.0255667791, -0.000302354281, -0.0255649947, 0.999673128)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.574481487, -1.97308517, -6.85287932e-06, 0.998523653, 0.0543189794, -1.79252572e-06, -0.0543189794, 0.998523653, -2.95127029e-06, 1.6295694e-06, 3.04428067e-06, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end

elseif choice==6 or choice==8 then
for i=0,1,0.03 do
swait()
Effect(e,"Daisy orange",LArm.CFrame*CFrame.new(0,-1.6,0),6,6,6,0,0,0,.06,"Brick",1,0,"")
Effect(e,"Daisy orange",RArm.CFrame*CFrame.new(0,-1.6,0),6,6,6,0,0,0,.06,"Brick",1,0,"")
RJ.C0=clerp(RJ.C0,CFrame.new(0, 0, 0, 1, -2.34187669e-15, -3.23117427e-27, -2.34187669e-15, 1, 0, -3.23117427e-27, 0, 1)*CFrame.new(0,i,0)*CFrame.Angles(0,math.rad(0-360*i),0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-3.51287094e-15, 1.50002384, 3.81469727e-06, 1, -2.34187669e-15, -3.23117427e-27, -2.34187669e-15, 1, 0, -3.23117427e-27, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
RS.C0=clerp(RS.C0,CFrame.new(1.98361444, 0.483877838, -0.0392653309, 0.0620889999, -0.998070717, -5.09350855e-07, 0.0189099368, 0.00117687916, -0.99982053, 0.997891426, 0.0620778538, 0.0189465266)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
LS.C0=clerp(LS.C0,CFrame.new(-1.98959792, 0.551547468, -0.0873881727, -0.0445470214, 0.996441483, -0.0715537816, -0.998974741, -0.0450101048, -0.00487172697, -0.00807503425, 0.0712633878, 0.997424901)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.2)
RH.C0=clerp(RH.C0,CFrame.new(0.500014305, -1.96264863, 0.206780493, 0.994729996, -0.102529213, -1.4021681e-06, 0.10089045, 0.978828549, 0.178089723, -0.0182580259, -0.177151352, 0.984014273)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.1)
LH.C0=clerp(LH.C0,CFrame.new(-0.585356832, -1.99861932, 0.21234341, 0.994778454, 0.100590341, 0.017246183, -0.102058053, 0.980467319, 0.168131262, 3.06174161e-06, -0.169013485, 0.985613704)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.1)
end
swait()
ok=true
if choice==6 then
sounds(Root,"588717600",1.4,1.3)

elseif choice==8 then
sounds(Root,"588717937",1.4,1.2)
end
LockEffect(e,col[1],Root.CFrame,Root,40,40,40,2,2,2,.02,"Sphere",6,0,"")
for i=1,10 do
Effect(e,col[1],Root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),6,6,35,0,0,0,.03,"Sphere",4,.1,"",130,180,150)
end
for i=0,1,0.02 do
swait()
RJ.C0=clerp(RJ.C0,CFrame.new(-1.2562136e-15, 0.536413193, -1.52587891e-05, 1, -2.34187669e-15, -3.23117427e-27, -2.34187669e-15, 1, 0, -3.23117427e-27, 0, 1)*CFrame.new(0,1-(i/1.5),0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-1.7425418e-15, 1.48815846, 0.0623606294, 1, -1.15030155e-15, 2.18867795e-16, -1.17093835e-15, 0.98237586, -0.186916575, 0, 0.186916575, 0.98237586)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.8548857, 0.741898894, 0.162331253, -0.207913041, -0.942457378, 0.261813521, -0.0543937124, -0.256108522, -0.965116501, 0.976633847, -0.214901283, 0.0019845427)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.98075819, 0.912808001, 0.205357209, -0.394408047, 0.902914107, 0.170846298, -0.918823719, -0.390384436, -0.0579924099, 0.0143335657, -0.179850295, 0.98358953)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.500014305, -1.96264791, 0.206784248, 0.994729996, -0.102529213, -1.4021681e-06, 0.10089045, 0.978828549, 0.178089723, -0.0182580259, -0.177151352, 0.984014273)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.585356832, -1.99861932, 0.21234341, 0.994778454, 0.100590341, 0.017246183, -0.102058053, 0.980467319, 0.168131262, 3.06174161e-06, -0.169013485, 0.985613704)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
elseif choice==7 then
for i=0,1,0.02 do
swait()

end
ok=true
local refz=parts(e,"ref",Vector3.new(.2,.2,.2),col[1],Enum.Material.Neon,0,1)
local dir = game:GetService("Lighting"):GetSunDirection()
local pos = refz.Position+(dir*500)
refz.Position=pos
refz.CFrame=CFrame.new(pos,Root.Position)
Effect(e,col[1],CFrame.new(Root.Position,refz.Position)*CFrame.Angles(0,math.rad(90),0),39999,1,1,0,15,15,.04,"Cylinder",6,0,"")
game:GetService("Debris"):AddItem(refz,.1)


end
attack=false
end

rainb=false
function modechange(choic)
attack=true
unleashed=false
local rotat=9
if choic==1 then
choice=choice-1
if choice<1 then
choice=8
end
coroutine.resume(coroutine.create(function()
for i=1,9 do
swait()
Mode.Rotation=Mode.Rotation+rotat
rotat=rotat-1
end
end))
elseif choic==2 then
choice=choice+1
if choice>8 then
choice=1
end
coroutine.resume(coroutine.create(function()
for i=1,9 do
swait()
Mode.Rotation=Mode.Rotation-rotat
rotat=rotat-1
end
end))
end
Misfortune.Text="Misfortune"
Gale.Text="Gale"
Agony.Text="Agony"
Glace.Text="Glace"
Astral.Text="Astral"
Honor.Text="Honor"
Solar.Text="Solar"
Pastel.Text="Pastel"
Trauma.Text="Trauma"
Solar.BackgroundColor3=Color3.new(1, 0.439216, 0.160784)
Solar.BorderColor3=Color3.new(1, 0.666667, 0)
Solar.TextColor3=Color3.new(1, 0.666667, 0)
coroutine.resume(coroutine.create(function()
Chang()
end))
--[[coroutine.resume(coroutine.create(function()
while ok==false do
swait()
end

if choice==1 then
col={"Really black","Institutional white"}
elseif choice==2 then
col={"Olivine","Pastel green"}
elseif choice==3 then
col={"Crimson","Bright red"}
elseif choice==4 then
col={"Bright blue","Cyan"}
elseif choice==5 then
col={"Royal purple","Alder"}
elseif choice==6 then
col={"Daisy orange","Gold"}
elseif choice==7 then
col={"Bright orange","Deep orange"}
elseif choice==8 then
rainb=true
end

end))]]
for i=1.5,-.01,-.044 do
swait()
if musicset~="None" and theme.Parent~=nil then
theme.Volume=i
end
end
theme.TimePosition=0
theme:Play()

rainb=false
print(choice)
if choice==1 then
col={"Really black","Institutional white"}
theme.SoundId="rbxassetid://1845818501"
elseif choice==2 then
col={"Olivine","Pastel green"}
theme.SoundId="rbxassetid://1845397575"
elseif choice==3 then
col={"Crimson","Bright red"}
theme.SoundId="rbxassetid://7029031068"
elseif choice==4 then
col={"Bright blue","Cyan"}
theme.SoundId="rbxassetid://9047050075"
elseif choice==5 then
col={"Royal purple","Alder"}
theme.SoundId="rbxassetid://1837267320"
elseif choice==6 then
col={"Daisy orange","Gold"}
theme.SoundId="rbxassetid://1838488971"
elseif choice==7 then
col={"Bright orange","Deep orange"}
theme.SoundId="rbxassetid://1838710599"
elseif choice==8 then
rainb=true
theme.SoundId=lol("ruinex2.mp3")
end
if rainb==false then
LockEffect(e,col[1],RArm.CFrame,RArm,10,10,10,.6,.6,.6,.04,"Sphere",6,0,"")
LockEffect(e,col[1],LArm.CFrame,LArm,10,10,10,.6,.6,.6,.04,"Sphere",6,0,"")
else
LockEffect(e,"Bright blue",RArm.CFrame,RArm,10,10,10,.6,.6,.6,.04,"Sphere",6,0,"")
LockEffect(e,"Bright orange",LArm.CFrame,LArm,10,10,10,.6,.6,.6,.04,"Sphere",6,0,"")
end
for i=0,1.51,.02 do
swait()
if musicset~="None" and theme.Parent~=nil then
theme.Volume=i
end
end


end

function namechange()
unleashed=true
for i=1.5,-.01,-.044 do
swait()
if musicset~="None" and theme.Parent~=nil then
theme.Volume=i
end
end
if choice==1 then
Misfortune.Text="Sharpshooter"
col={"Really black","Dark stone grey"}
theme.SoundId="rbxassetid://1846584518"
elseif choice==2 then
Gale.Text="Zephyr"
theme.SoundId="rbxassetid://1839503808"
elseif choice==3 then
Agony.Text="Ruthless"
theme.SoundId="rbxassetid://9048378262"
elseif choice==4 then
Glace.Text="SubZero"
theme.SoundId="rbxassetid://1842819037"
elseif choice==5 then
Astral.Text="Cosmic"
theme.SoundId="rbxassetid://1846612949"
elseif choice==6 then
Honor.Text="Harmony"
theme.SoundId="rbxassetid://586943362"
elseif choice==7 then
Solar.BackgroundColor3=Color3.new(0,40/255,96/255)
Solar.BorderColor3=Color3.new(33/255,84/255,185/255)
Solar.TextColor3=Color3.new(33/255,84/255,185/255)
Solar.Text="Lunar"
col={"Navy blue","Deep blue"}
theme.SoundId="rbxassetid://9044545570"

local refz=parts(e,"ref",Vector3.new(.2,.2,.2),col[1],Enum.Material.Neon,0,1)
local dir = game:GetService("Lighting"):GetMoonDirection()
local pos = refz.Position+(dir*500)
refz.Position=pos
refz.CFrame=CFrame.new(pos,Root.Position)
Effect(e,col[1],CFrame.new(Root.Position,refz.Position)*CFrame.Angles(0,math.rad(90),0),39999,1,1,0,15,15,.04,"Cylinder",6,0,"")
game:GetService("Debris"):AddItem(refz,.1)

elseif choice==8 then
Pastel.Text="Variety"
theme.SoundId=lol("ruinex1.mp3")
elseif choice==9 then
Trauma.Text="Detest"
theme.SoundId=lol("ruinex3.mp3")
end
theme.TimePosition=0
theme:Play()
for i=0,1.51,.02 do
swait()
if musicset~="None" and theme.Parent~=nil then
theme.Volume=i
end
end

end

mouse.Button1Down:connect(function()
if attack==false then
Attack()
end
if doing==true and attack2==false then
PERISH()
end
end)

musicsetting=false
mouse.KeyDown:connect(function(k)
k=k:lower()
if attack==false then
--v Skill
if k=="z" then
Skillone()
elseif k=="x" then
Skilltwo()
elseif k=="c" then
Skillthree()
elseif k=="v" then
Skillfour()
--v Mode
elseif k=="q" and choice~=9  then
modechange(1)
elseif k=="e"  and choice~=9  then
modechange(2)

elseif k=="r" and unleashed==false then
namechange()


elseif k=="u" and choice~=9 and aaa==false then
choice=9
unleashed=false
theme.Volume=1.15
theme.SoundId="rbxassetid://1839703769"
theme.TimePosition=0
theme:Play()
local raise=-10
local rot=math.random(-30,-10)/5
local si=1
coroutine.resume(coroutine.create(function()
for i=1.1,0,-.003 do
swait()
raise=raise+.1
si=si-.01
Trauma.TextTransparency=si
Trauma.TextStrokeTransparency=si
Trauma.BackgroundTransparency=si
Mode.Rotation=Mode.Rotation+1
Mode.Position=Mode.Position+UDim2.new(0,rot,0,raise)
end
print(Mode.Rotation)
aaa=true
end))
elseif k=="u" and choice==9 and aaa==true then
choice=1
unleashed=false
rainb=false
aaa=false
col={"Really black","Institutional white"}
Mode.Rotation=0
Mode:TweenPosition(UDim2.new(1, 0, 0.899999976, 0), "Out", "Quart", 3,true)
theme.Volume=1.5
theme.SoundId="rbxassetid://1524659810"
theme.TimePosition=0
theme:Play()
Trauma.Text="Trauma"
Trauma.TextTransparency=1
Trauma.TextStrokeTransparency=1
Trauma.BackgroundTransparency=1
elseif k=="z" then

end
end
if k=="m" and musicsetting==false then
if musicset=="Character" then
musicset="None"
musicsetting=true
for i=1.5,-.01,-.04 do
swait()
theme.Volume=i
end
theme.PlaybackSpeed=0
musicsetting=false
elseif musicset=="None" then	
musicset="Character"
musicsetting=true
theme.PlaybackSpeed=1
for i=0,1.51,.04 do
swait()
if choice==9 then
theme.Volume=i/1.5
else
theme.Volume=i
end
end
musicsetting=false
end
end
end)

warn'Currently have 18 modes'
warn'press q or e to switch mode'

warn'press m to mute or unmute'
warn'press r to unleash'
warn'press u to abuse or go back'
warn'current moves:'
warn'Misfortune: z'
warn'Sharpshooter: z'
warn'Gale: z'
warn'Agony: z,x'
warn'Ruthless: z'
warn'Glace: z,x'
warn'Astral: z'
warn'Cosmic: z'
warn'Honor: z'
warn'Harmony: x'
warn'Solar: z'
warn'Pastel: v'
warn'Trauma: z'
warn'Detest: v(Warning: Abuse)'


function vissi()
for _,v in pairs(Ruin:children()) do
if v:IsA("Frame") then
for _,s in pairs(v:children()) do
if s.Name=="Vis" then
if choice==1 then
if s:IsA("Frame") then
s.BackgroundColor3=Color3.new(theme.PlaybackLoudness/255,theme.PlaybackLoudness/255,theme.PlaybackLoudness/255)
elseif s:IsA("ImageLabel") then
s.ImageColor3=Color3.new(theme.PlaybackLoudness/255,theme.PlaybackLoudness/255,theme.PlaybackLoudness/255)	
end
elseif choice==2 then
if s:IsA("Frame") then
s.BackgroundColor3=Color3.new(102/255+theme.PlaybackLoudness/600,205,103/255+theme.PlaybackLoudness/600)
elseif s:IsA("ImageLabel") then
s.ImageColor3=Color3.new(102/255+theme.PlaybackLoudness/600,205,103/255+theme.PlaybackLoudness/600)
end
elseif choice==3 then
if s:IsA("Frame") then
s.BackgroundColor3=Color3.new(170/250+theme.PlaybackLoudness/600,0,0)
elseif s:IsA("ImageLabel") then
s.ImageColor3=Color3.new(170/250+theme.PlaybackLoudness/600,0,0)
end
elseif choice==4 then
if s:IsA("Frame") then
s.BackgroundColor3=Color3.new(84/255+theme.PlaybackLoudness/600, 190/255+theme.PlaybackLoudness/600, 1)
elseif s:IsA("ImageLabel") then
s.ImageColor3=Color3.new(84/255+theme.PlaybackLoudness/600, 190/255+theme.PlaybackLoudness/600, 1)
end
elseif choice==5 then
if s:IsA("Frame") then
s.BackgroundColor3=Color3.new(137/255+theme.PlaybackLoudness/600, 0+theme.PlaybackLoudness/600, 205/255+theme.PlaybackLoudness/600)
elseif s:IsA("ImageLabel") then
s.ImageColor3=Color3.new(137/255+theme.PlaybackLoudness/600, 0+theme.PlaybackLoudness/600, 205/255+theme.PlaybackLoudness/600)
end
elseif choice==6 then
if s:IsA("Frame") then
s.BackgroundColor3=Color3.new(1, 1, 96/255+theme.PlaybackLoudness/600)
elseif s:IsA("ImageLabel") then
s.ImageColor3=Color3.new(1, 1, 96/255+theme.PlaybackLoudness/600)
end
elseif choice==7 then
if unleashed==false then
if s:IsA("Frame") then
s.BackgroundColor3=Color3.new(1, 170/255+theme.PlaybackLoudness/600, 0+theme.PlaybackLoudness/600)
elseif s:IsA("ImageLabel") then
s.ImageColor3=Color3.new(1, 170/255+theme.PlaybackLoudness/600, 0+theme.PlaybackLoudness/600)
end
else
if s:IsA("Frame") then
s.BackgroundColor3=Color3.new(0, 12/255+theme.PlaybackLoudness/800, 96/255+theme.PlaybackLoudness/800)
elseif s:IsA("ImageLabel") then
s.ImageColor3=Color3.new(0, 12/255+theme.PlaybackLoudness/800, 96/255+theme.PlaybackLoudness/800)
end	
end
elseif choice==8 then
if s:IsA("Frame") then
s.BackgroundColor3=rain--+Color3.new(theme.PlaybackLoudness/200,theme.PlaybackLoudness/200,theme.PlaybackLoudness/200)
elseif s:IsA("ImageLabel") then
s.ImageColor3=rain--+Color3.new(theme.PlaybackLoudness/200,theme.PlaybackLoudness/200,theme.PlaybackLoudness/200)
end
elseif choice==9 then
if s:IsA("Frame") then
s.BackgroundColor3=Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)
elseif s:IsA("ImageLabel") then
s.ImageColor3=Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)
end
end
end
end
end
end
end

function vissi2()
for _,v in pairs(Screen:children()) do
if v:IsA("Frame") then
if v.Name=="Bar"..lal then
if  unleashed==false and (choice==1 or choice==3) then
v:TweenSize(UDim2.new(0, -(theme.PlaybackLoudness)*3.5, 0, 10), "Out", "Quart", .7,true)
v.Rotation=0
elseif choice==1 and unleashed==true then
v:TweenSize(UDim2.new(0, -(theme.PlaybackLoudness)*1.8, 0, 10), "Out", "Quart", .7,true)
v.Rotation=0
elseif choice==3 and unleashed==true then
v:TweenSize(UDim2.new(0, -(theme.PlaybackLoudness)*2, 0, 10), "Out", "Quart", .7,true)
v.Rotation=0
elseif choice==7 and unleashed==true then
v:TweenSize(UDim2.new(0, -(theme.PlaybackLoudness)*1.2, 0, 10), "Out", "Quart", .7,true)
v.Rotation=0
elseif choice==9 then
v:TweenSize(UDim2.new(0, -(theme.PlaybackLoudness)*2, 0, 10), "Out", "Quart", math.random(3,12)/10,true)
v.Rotation=math.random(-20,20)
else
v:TweenSize(UDim2.new(0, -(theme.PlaybackLoudness)*2, 0, 10), "Out", "Quart", .7,true)
v.Rotation=0
end
if choice==1 then
v.BackgroundColor3=Color3.new(theme.PlaybackLoudness/255,theme.PlaybackLoudness/255,theme.PlaybackLoudness/255)
elseif choice==2 then
v.BackgroundColor3=Color3.new(102/255+theme.PlaybackLoudness/600,205,103/255+theme.PlaybackLoudness/600)
elseif choice==3 then
v.BackgroundColor3=Color3.new(170/250+theme.PlaybackLoudness/600,0,0)
elseif choice==4 then
v.BackgroundColor3=Color3.new(84/255+theme.PlaybackLoudness/600, 190/255+theme.PlaybackLoudness/600, 1)
elseif choice==5 then
v.BackgroundColor3=Color3.new(137/255+theme.PlaybackLoudness/600, 0+theme.PlaybackLoudness/600, 205/255+theme.PlaybackLoudness/600)
elseif choice==6 then
v.BackgroundColor3=Color3.new(1, 1, 96/255+theme.PlaybackLoudness/600)
elseif choice==7 then
if unleashed==false then
v.BackgroundColor3=Color3.new(1, 170/255+theme.PlaybackLoudness/600, 0+theme.PlaybackLoudness/600)
else
v.BackgroundColor3=Color3.new(0, 12/255+theme.PlaybackLoudness/800, 96/255+theme.PlaybackLoudness/800)
end
elseif choice==8 then
v.BackgroundColor3=rain
elseif choice==9 then
v.BackgroundColor3=Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)
end
end
end
end
end

function vissi3()
for _,v in pairs(Visss:children()) do
if v:IsA("Frame") then
if v.Name=="vais"..lal2 then
if  unleashed==false and (choice==1 or choice==3) then
v:TweenSize(UDim2.new(.15, 0, (theme.PlaybackLoudness)/320, 0), "Out", "Quart", .7,true)
v.Rotation=0
elseif choice==1 and unleashed==true then
v:TweenSize(UDim2.new(.15, 0, (theme.PlaybackLoudness)/550, 0), "Out", "Quart", .7,true)
v.Rotation=0	
elseif choice==3 and unleashed==true then
v:TweenSize(UDim2.new(.15, 0, (theme.PlaybackLoudness)/450, 0), "Out", "Quart", .7,true)
v.Rotation=0
elseif choice==7 and unleashed==true then
v:TweenSize(UDim2.new(.15, 0, (theme.PlaybackLoudness)/600, 0), "Out", "Quart", .7,true)
v.Rotation=0
elseif choice==9 then
v:TweenSize(UDim2.new(.15, 0, (theme.PlaybackLoudness)/510, 0), "Out", "Quart", math.random(3,12)/10,true)
v.Rotation=math.random(-20,20)
else
v:TweenSize(UDim2.new(.15, 0, (theme.PlaybackLoudness)/510, 0), "Out", "Quart", .7,true)
v.Rotation=0
end
if choice==1 then
v.BackgroundColor3=Color3.new(theme.PlaybackLoudness/255,theme.PlaybackLoudness/255,theme.PlaybackLoudness/255)
elseif choice==2 then
v.BackgroundColor3=Color3.new(142/255+theme.PlaybackLoudness/600,205,123/255+theme.PlaybackLoudness/600)
elseif choice==3 then
v.BackgroundColor3=Color3.new(170/250+theme.PlaybackLoudness/600,0,0)
elseif choice==4 then
v.BackgroundColor3=Color3.new(84/255+theme.PlaybackLoudness/600, 190/255+theme.PlaybackLoudness/600, 1)
elseif choice==5 then
v.BackgroundColor3=Color3.new(137/255+theme.PlaybackLoudness/600, 0+theme.PlaybackLoudness/600, 205/255+theme.PlaybackLoudness/600)
elseif choice==6 then
v.BackgroundColor3=Color3.new(1, 1, 96/255+theme.PlaybackLoudness/600)
elseif choice==7 then
if unleashed==false then
v.BackgroundColor3=Color3.new(1, 170/255+theme.PlaybackLoudness/600, 0+theme.PlaybackLoudness/600)
else
v.BackgroundColor3=Color3.new(0, 12/255+theme.PlaybackLoudness/800, 96/255+theme.PlaybackLoudness/800)
end
elseif choice==8 then
v.BackgroundColor3=rain
elseif choice==9 then
v.BackgroundColor3=Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)
end
end
end
end
end


doe=0
while chr.Humanoid.Health>=0 do
swait()
script.Parent=Ruin
script.Archivable=false
sin=sin+cha
doe=doe+1
timeposit.Value=theme.TimePosition
if theme.Parent==nil then
theme=create("Sound"){
Parent=chr,
SoundId="rbxassetid://",
Volume=1.6,
PlaybackSpeed=1,
MaxDistance=66666666,
Name="Theme",
Looped=true}
if unleashed==false then
if choice==1 then
theme.SoundId="rbxassetid://1524659810"
elseif choice==2 then
theme.SoundId="rbxassetid://1845397575"
elseif choice==3 then
theme.SoundId="rbxassetid://7029031068"
elseif choice==4 then
theme.SoundId="rbxassetid://9047050075"
elseif choice==5 then
theme.SoundId="rbxassetid://1837267320"
elseif choice==6 then
theme.SoundId="rbxassetid://1838488971"
elseif choice==7 then
theme.SoundId="rbxassetid://1838710599"
elseif choice==8 then
theme.SoundId=lol("ruinex2.mp3")
elseif choice==9 then
theme.Volume=1.15
theme.SoundId="rbxassetid://1839703769"
end
else
if choice==1 then
theme.SoundId="rbxassetid://1846584518"
elseif choice==2 then
theme.SoundId="rbxassetid://1839503808"
elseif choice==3 then
theme.SoundId="rbxassetid://1524507347"
elseif choice==4 then
theme.SoundId="rbxassetid://1842819037"
elseif choice==5 then
theme.SoundId="rbxassetid://1846612949"
elseif choice==6 then
theme.SoundId="rbxassetid://586943362"
elseif choice==7 then
theme.SoundId="rbxassetid://9044545570"
elseif choice==8 then
theme.SoundId=lol("ruinex2.mp3")
elseif choice==9 then
theme.Volume=1.3
theme.SoundId="rbxassetid://1656314169"
end
end
theme:Play()
theme.TimePosition=timeposit.Value
if musicset=="Character" then
theme.Parent=chr
elseif musicset=="None" then	
theme.Parent=chr
theme.Volume=0
theme.PlaybackSpeed=0
end
end
coroutine.resume(coroutine.create(function()
vissi()
end))
vissi2()
vissi3()
rain=sincolor(tick()*1)
rain2=sincolor2(tick()*1)
Pastel.BackgroundColor3=rain
Pastel.BorderColor3=rain2
for _,x in pairs(rainParts) do
x.Color=rain
end
lal=lal+1
if lal>=9 then
lal=1
end
lal2=lal2+1
if lal2>=5 then
lal2=1
end
for _,v in pairs(m:children()) do
if v:IsA("Part") then
if v.Name=="R1" then
if choice~=9 then
if choice~=8 and rainb==false then
v.BrickColor=BrickColor.new(col[1])
elseif choice==8 and rainb==true then
v.Color=rain
end
else
v.Color=Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)
end
elseif v.Name=="R2" then
if choice~=9 then
if choice~=8 and rainb==false then
v.BrickColor=BrickColor.new(col[2])
elseif choice==8 and rainb==true then
v.Color=rain2
end
else
v.Color=Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)
end
end
end
end
if attack==false then
if choice==2 then
if unleashed==false then
hum.WalkSpeed=100
hum.JumpPower=50
else
hum.WalkSpeed=200
hum.JumpPower=50
end
elseif choice==6 then
hum.WalkSpeed=60
hum.JumpPower=100
elseif choice==8 then
hum.WalkSpeed=100
hum.JumpPower=150	
elseif choice==9 then
if unleashed==false then
hum.WalkSpeed=math.random(10,30)
hum.JumpPower=math.random(40,70)
else
hum.WalkSpeed=math.random(20,100)
hum.JumpPower=math.random(50,200)
end
else	
hum.WalkSpeed=16
hum.JumpPower=50
end
end
if e.Parent==nil then
e=create("Model"){
Parent=chr,
Name="Effect"}
end
anti.CFrame=Root.CFrame
if choice~=9 then
HandleWeld.C0=clerp(HandleWeld.C0,HandleWeld.C0*CFrame.Angles(-math.rad(1),0,0),.3)
Roll.Rotation=Roll.Rotation+.2
else
Trauma.BorderColor3=Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)
Trauma.BackgroundColor3=Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)
Trauma.TextColor3=Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)
Trauma.TextStrokeColor3=Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)
if unleashed==false then
HandleWeld.C0=clerp(HandleWeld.C0,HandleWeld.C0*CFrame.Angles(-math.rad(math.random(-60,60)),0,0),.3)	
Roll.Rotation=Roll.Rotation+math.random(-10,10)
RJ.C0=clerp(RJ.C0,RJ.C0*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))) ,math.random(1,4)/10)
Neck.C0=clerp(Neck.C0,Neck.C0*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))) ,math.random(1,4)/10)
RS.C0=clerp(RS.C0,RS.C0*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))) ,math.random(1,4)/10)
LS.C0=clerp(LS.C0,LS.C0*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))) ,math.random(1,4)/10)
RH.C0=clerp(RH.C0,RH.C0*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))) ,math.random(1,4)/10)
LH.C0=clerp(LH.C0,LH.C0*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))) ,math.random(1,4)/10)
else
HandleWeld.C0=clerp(HandleWeld.C0,HandleWeld.C0*CFrame.Angles(-math.rad(math.random(-120,120)),0,0),.3)	
Roll.Rotation=Roll.Rotation+math.random(-60,60)
RJ.C0=clerp(RJ.C0,RJ.C0*CFrame.Angles(math.rad(math.random(-11,11)),math.rad(math.random(-11,11)),math.rad(math.random(-11,11))) ,math.random(2,7)/10)
Neck.C0=clerp(Neck.C0,Neck.C0*CFrame.Angles(math.rad(math.random(-30,30)),math.rad(math.random(-30,30)),math.rad(math.random(-30,30))) ,math.random(1,7)/10)
RS.C0=clerp(RS.C0,RS.C0*CFrame.Angles(math.rad(math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))) ,math.random(2,7)/10)
LS.C0=clerp(LS.C0,LS.C0*CFrame.Angles(math.rad(math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))) ,math.random(2,7)/10)
RH.C0=clerp(RH.C0,RH.C0*CFrame.Angles(math.rad(math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))) ,math.random(2,7)/10)
LH.C0=clerp(LH.C0,LH.C0*CFrame.Angles(math.rad(math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))) ,math.random(2,7)/10)
end
end

if choice==1 then
if unleashed==false then
Effect(e,"Really black",CFrame.new(Root.Position+Vector3.new(math.random(-50,50)/10,-3,math.random(-50,50)/10)),1,1,1,0,0,0,.08,"Brick",7,1,"")
Effect(e,"Institutional white",CFrame.new(Root.Position+Vector3.new(math.random(-50,50)/10,-3,math.random(-50,50)/10)),1,1,1,0,0,0,.08,"Brick",7,1,"")
else
Effect(e,"Dark stone grey",RArm.CFrame*CFrame.new(0,-1.2,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,-.2,-.2,-.2,.1,"Brick",1,0,"")
if doe>=28 then
doe=0
Effect(e,"Dark stone grey",RArm.CFrame*CFrame.new(0,-1.2,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,1,1,1,.1,"Brick",1,0,"")
end
end
elseif choice==2 then
if unleashed==true  then
if Pose=="Idle" then
Effect(e,"Olivine",Root.CFrame*CFrame.new(math.random(-32,32)/4,math.random(-32,32)/4,math.random(-32,32)/4)*CFrame.Angles(-math.rad(90),0,0),2,2,25,0,0,0,.09,"Sphere",3,math.random(1,4)/10,"")
Effect(e,"Olivine",Root.CFrame*CFrame.new(math.random(-32,32)/4,math.random(-32,32)/4,math.random(-32,32)/4)*CFrame.Angles(-math.rad(90),0,0),2,2,25,0,0,0,.09,"Sphere",3,math.random(1,4)/10,"")
elseif Pose=="Walk" then
Effect(e,"Olivine",Root.CFrame*CFrame.new(math.random(-32,32)/4,math.random(-32,32)/4,math.random(-32,32)/4),2,2,25,0,0,0,.09,"Sphere",3,math.random(10,20)/10,"")
Effect(e,"Olivine",Root.CFrame*CFrame.new(math.random(-32,32)/4,math.random(-32,32)/4,math.random(-32,32)/4),2,2,25,0,0,0,.09,"Sphere",3,math.random(10,20)/10,"")
end
end
elseif choice==5 then
Effect(e,"Royal purple",Root.CFrame*CFrame.new(math.random(-32,32)/4,math.random(-32,32)/4,math.random(-32,32)/4)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0,0,0,.07,"Brick",6,0,"")
Effect(e,"Alder",Root.CFrame*CFrame.new(math.random(-32,32)/4,math.random(-32,32)/4,math.random(-32,32)/4)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0,0,0,.07,"Brick",6,0,"")
elseif choice==6 then
Effect(e,"Daisy orange",Root.CFrame*CFrame.Angles(0,math.random(-360,360),0)*CFrame.new(math.random(-82,82)/4,-2,math.random(-82,82)/4)*CFrame.Angles(math.rad(math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))),2,5,2,0,8,0,.07,"Sphere",6,0,"")
Effect(e,"Daisy orange",Root.CFrame*CFrame.Angles(0,math.random(-360,360),0)*CFrame.new(math.random(-82,82)/4,-2,math.random(-82,82)/4)*CFrame.Angles(math.rad(math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))),2,2,14,0,0,0,.07,"Sphere",4,math.random(-1,1),"",100,200,150)
elseif choice==8 then
Effect(e,"Really red",Root.CFrame*CFrame.Angles(0,math.random(-360,360),0)*CFrame.new(math.random(-82,82)/4,-2,math.random(-82,82)/4)*CFrame.Angles(math.rad(math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))),5,5,5,0,10,0,.07,"Sphere",6,0,"")
--Effect(e,"Really red",Root.CFrame*CFrame.Angles(0,math.random(-360,360),0)*CFrame.new(math.random(-82,82)/4,-2,math.random(-82,82)/4)*CFrame.Angles(math.rad(math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))),5,5,5,0,10,0,.07,"Sphere",6,0,"")
if unleashed==true then
Effect(e,"Really red",Root.CFrame*CFrame.Angles(0,math.random(-360,360),0)*CFrame.new(math.random(-82,82)/4,-math.random(-82,82)/4,math.random(-82,82)/4),25,25,25,-2,-2,-2,.08,"Sphere",6,0,"")

end
end

local torvel=(Root.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=Root.Velocity.y
hitfloor,posfloor=rayCast(Root.Position,(CFrame.new(Root.Position,Root.Position-Vector3.new(0,1,0))).lookVector,4,chr)
if Root.Velocity.y>1 and hitfloor==nil then 
Pose="Jump"
if attack==false then
RJ.C0=clerp(RJ.C0,CFrame.new(0, 0, 0, 1, -3.09127723e-15, -6.46234854e-27, -3.09127723e-15, 1, 0, -6.46234854e-27, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(15),0,0),.3)
Neck.C0=clerp(Neck.C0,CFrame.new(-4.63699251e-15, 1.5000248, 0, 1, -3.09127723e-15, -6.46234854e-27, -3.09127723e-15, 1, 0, -6.46234854e-27, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RS.C0=clerp(RS.C0,CFrame.new(1.62379456, 0.113182411, 0.249294981, 0.946902871, -0.310401082, -0.0838228315, 0.321519971, 0.914122999, 0.246990189, -4.1645595e-05, -0.260826379, 0.965385854)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LS.C0=clerp(LS.C0,CFrame.new(-1.63303888, 0.169894293, 0.0842211396, 0.906096697, 0.419105798, 0.0577863716, -0.423070848, 0.897600591, 0.123791598, 1.2692125e-05, -0.136614874, 0.990624309)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RH.C0=clerp(RH.C0,CFrame.new(0.499628693, -1.99333799, 0.0851352066, 0.998365104, -0.0569815598, -0.00451312633, 0.0571600087, 0.995245874, 0.0788568333, -1.71480019e-06, -0.0789858773, 0.996875703)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LH.C0=clerp(LH.C0,CFrame.new(-0.499035686, -1.98713207, 0.13623783, 0.997105896, 0.0756825954, 0.00720724696, -0.0760249943, 0.992612422, 0.0945565104, 2.28074987e-06, -0.0948308036, 0.995493412)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
end
elseif Root.Velocity.y<-1 and hitfloor==nil then 
Pose="Fall"
if attack==false then
RJ.C0=clerp(RJ.C0,CFrame.new(0, 0, 0, 1, -3.09127723e-15, -6.46234854e-27, -3.09127723e-15, 1, 0, -6.46234854e-27, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(-math.rad(15),0,0),.3)
Neck.C0=clerp(Neck.C0,CFrame.new(-4.63699251e-15, 1.5000248, 0, 1, -3.09127723e-15, -6.46234854e-27, -3.09127723e-15, 1, 0, -6.46234854e-27, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RS.C0=clerp(RS.C0,CFrame.new(1.62379456, 0.113182411, 0.249294981, 0.946902871, -0.310401082, -0.0838228315, 0.321519971, 0.914122999, 0.246990189, -4.1645595e-05, -0.260826379, 0.965385854)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LS.C0=clerp(LS.C0,CFrame.new(-1.63303888, 0.169894293, 0.0842211396, 0.906096697, 0.419105798, 0.0577863716, -0.423070848, 0.897600591, 0.123791598, 1.2692125e-05, -0.136614874, 0.990624309)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RH.C0=clerp(RH.C0,CFrame.new(0.499628693, -1.99333799, 0.0851352066, 0.998365104, -0.0569815598, -0.00451312633, 0.0571600087, 0.995245874, 0.0788568333, -1.71480019e-06, -0.0789858773, 0.996875703)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LH.C0=clerp(LH.C0,CFrame.new(-0.499035686, -1.98713207, 0.13623783, 0.997105896, 0.0756825954, 0.00720724696, -0.0760249943, 0.992612422, 0.0945565104, 2.28074987e-06, -0.0948308036, 0.995493412)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
end
elseif torvel<1 and hitfloor~=nil then
Pose="Idle"
if attack==false then
if choice==1 and unleashed==true  then
RJ.C0=clerp(RJ.C0,CFrame.new(-2.27821329e-06, -0.2775119364-.1*math.cos(sin/25), 3.49921102e-05, 0.659672916, -1.07726328e-15, -0.75155288, 2.25465865e-05, 1, 1.97901863e-05, 0.75155288, -2.99999992e-05, 0.659672916)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
Neck.C0=clerp(Neck.C0,CFrame.new(-6.31299736e-06, 1.50002289, 4.82660034e-05, 0.643483758, 0, 0.765459776, 0, 1, 0, -0.765459776, 0, 0.643483758)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RS.C0=clerp(RS.C0,CFrame.new(1.31422901, 1.177441, -0.442079872, -0.990155756, 0.113052547, -0.0825285316, -0.139583051, -0.841381252, 0.522105515, -0.0104126334, 0.528485298, 0.848878622)*CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(180),0),.3)
LS.C0=clerp(LS.C0,CFrame.new(0.0409910828, 0.865940571, -0.774881124, 0.325620383, -0.929611802, 0.17260763, -0.149697006, -0.230941966, -0.961382687, 0.933575034, 0.287206978, -0.214359537)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RH.C0=clerp(RH.C0,CFrame.new(0.496650368, -1.89283326+.1*math.cos(sin/25), 0.0260337293, 0.991793752, 0.00807351619, -0.127593964, 0, 0.998004138, 0.063148737, 0.127849191, -0.0626305193, 0.989814222)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LH.C0=clerp(LH.C0,CFrame.new(-0.738804758, -1.88187542+.1*math.cos(sin/25), -0.0590641797, 0.623072207, 0.0634666681, 0.779585302, 0, 0.996702611, -0.0811423585, -0.782164454, 0.0505575463, 0.621017635)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
elseif choice==3 then
if unleashed==false then
RJ.C0=clerp(RJ.C0,CFrame.new(-9.06690912e-06, -0.2775119364-.1*math.cos(sin/25), 1.27186131e-05, 0.919510245, -1.54563862e-15, -0.393066078, 1.17919817e-05, 1, 2.75853072e-05, 0.393066078, -2.99999992e-05, 0.919510245)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
Neck.C0=clerp(Neck.C0,CFrame.new(2.28192475e-05, 1.50002468, 2.92600089e-05, 0.901203454, -0.182558104, 0.393070996, 0.198549956, 0.980090737, -2.64624432e-05, -0.385240436, 0.0780680776, 0.919508159)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RS.C0=clerp(RS.C0,CFrame.new(1.52195001, 0.104041323, -0.404402345, 0.949402213, -0.13583073, 0.283170491, 0.220810995, 0.929856777, -0.294293761, -0.22333388, 0.3419303, 0.912801027)*CFrame.new(0-.02*math.sin(sin/25),0,0)*CFrame.Angles(0,0,math.rad(0-1*math.sin(sin/25))),.3)
LS.C0=clerp(LS.C0,CFrame.new(-1.20487344, -0.0877704173, 0.29601261, 0.975100696, -0.21827589, -0.0391697884, 0.216844127, 0.901489615, 0.374559939, -0.0464462638, -0.373727381, 0.926374972)*CFrame.new(0-.06*math.sin(sin/25),0,0+.06*math.sin(sin/25))*CFrame.Angles(math.rad(0-2*math.sin(sin/25)),0,math.rad(0-3*math.sin(sin/25))),.3)
RH.C0=clerp(RH.C0,CFrame.new(0.500015259, -1.88592043+.1*math.cos(sin/25), 0.116069727, 1, 0, 0, 0, 0.992655337, 0.120977424, 0, -0.120977439, 0.992655218)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LH.C0=clerp(LH.C0,CFrame.new(-0.614154279, -1.88463154+.1*math.cos(sin/25), -0.25248158, 0.911190808, 0.0417874642, 0.409860015, 0, 0.994842768, -0.101429626, -0.411984771, 0.0924217477, 0.906491518)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
else
RJ.C0=clerp(RJ.C0,CFrame.new(1.19805439e-16, -0.1775119364-.15*math.cos(sin/35), -0.283175617, 1, -1.49079842e-15, -4.08067175e-16, -1.54563862e-15, 0.964519441, 0.264012009, 0, -0.264012039, 0.964519441)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(-0.157584727, 1.49352062, -0.221821427, 0.972843468, -0.203232408, -0.110780075, 0.223253459, 0.950229347, 0.217307165, 0.0611026064, -0.236137897, 0.969796598)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(math.random(-4,4)),math.rad(math.random(-4,4)),math.rad(math.random(-4,4))),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.5793426, -0.0891602114, -0.235512465, 0.992907524, -0.118888937, 3.56666646e-06, 0.114671633, 0.957678556, -0.26401183, 0.0313846655, 0.262139708, 0.964519501)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(math.random(-4,4)),math.rad(math.random(-4,4)),math.rad(math.random(-4,4))),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.53685725, 0.0265939608, -0.191111997, 0.980939448, 0.194314077, -9.32708099e-06, -0.187421262, 0.946130276, -0.264028519, -0.0512956306, 0.258997679, 0.964514911)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(math.random(-4,4)),math.rad(math.random(-4,4)),math.rad(math.random(-10,4))),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.500015259, -1.82560542+.15*math.cos(sin/35), -0.253282726, 1, 0, 0, 0, 0.98312813, -0.182918787, 0, 0.182918757, 0.98312813)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.499891281, -1.79360225+.15*math.cos(sin/35), -0.358776152, 0.995861232, 0.0908814445, -0.00100748253, -0.0876630247, 0.957550228, -0.274614424, -0.0239926353, 0.273566157, 0.961553991)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
elseif choice==6 or choice==8 then
Effect(e,"Daisy orange",Root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(90+math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-360,360))),.01,.01,.01,.03,.03,.03,.08,"FileMesh",6,0,"1544059001")
RJ.C0=clerp(RJ.C0,CFrame.new(0, 1-.15*math.cos(sin/25), 0, 1, -1.21777588e-15, -1.61558713e-27, -1.21777588e-15, 1, 0, -1.61558713e-27, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
Neck.C0=clerp(Neck.C0,CFrame.new(-9.13347263e-16, 1.50002527, 3.7252903e-09, 1, -6.08639124e-16, -1.74044508e-17, -6.0888794e-16, 0.99959141, 0.0285839979, 0, -0.028583996, 0.99959141)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0-2*math.sin(sin/25)),0,0),.3)
RS.C0=clerp(RS.C0,CFrame.new(1.57726872, 0.129899502, -1.80763891e-06, 0.958973765, -0.283494979, 8.22135189e-06, 0.283494949, 0.958973765, 2.18976675e-06, -8.50484867e-06, 2.30780643e-07, 1)*CFrame.new(0-.04*math.sin(sin/25),0-.04*math.cos(sin/25),0-.05*math.cos(sin/25))*CFrame.Angles(math.rad(0+2*math.cos(sin/25)),0,math.rad(0-4*math.sin(sin/25))),.3)
LS.C0=clerp(LS.C0,CFrame.new(-1.56889772, 0.217496723, -6.52490144e-06, 0.942298114, 0.334775031, -3.51281537e-20, -0.334775031, 0.942298114, 2.99999992e-05, 1.00432508e-05, -2.82689434e-05, 1)*CFrame.new(0+.04*math.sin(sin/25),0-.04*math.cos(sin/25),0-.05*math.cos(sin/25))*CFrame.Angles(math.rad(0+2*math.cos(sin/25)),0,math.rad(0+4*math.sin(sin/25))),.3)
RH.C0=clerp(RH.C0,CFrame.new(0.500007629, -1.31953299, -0.42188406, 1, -5.98481452e-16, -1.12091073e-16, -6.0888794e-16, 0.982909083, 0.184091449, 0, -0.184091434, 0.982909083)*CFrame.new(0,0-.1*math.sin(sin/25),0+.04*math.sin(sin/25))*CFrame.Angles(math.rad(0-4*math.cos(sin/25)),0,0),.3)
LH.C0=clerp(LH.C0,CFrame.new(-0.500225306, -2.03385782, 0.344429612, 0.999890864, 0.0147771491, 3.20716117e-06, -0.0141538708, 0.957654357, 0.287572116, 0.00424642442, -0.287540734, 0.957759023)*CFrame.new(0,0-.03*math.sin(sin/25),0+.04*math.sin(sin/25))*CFrame.Angles(math.rad(0-3*math.cos(sin/25)),0,0),.3)
elseif choice==9 then
if unleashed==false then
RJ.C0=clerp(RJ.C0,CFrame.new(-9.53674316e-07, -0.908379614-.1*math.cos(sin/25), 0.12968111, 1, -1.05624934e-15, -2.11739814e-16, -1.07726328e-15, 0.980493188, 0.196553454, 0, -0.196553439, 0.980493188)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
Neck.C0=clerp(Neck.C0,CFrame.new(0, 1.59104264, -0.252605438, 1, 0, 0, 0, 0.89282769, 0.450398505, 0, -0.450398505, 0.89282769)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
RS.C0=clerp(RS.C0,CFrame.new(0.825959325, 1.14770687, -0.512684822, 0.881203234, 0.472715795, 0.00455911923, 0.323056549, -0.595122218, -0.735842526, -0.345131129, 0.649899602, -0.677137494)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LS.C0=clerp(LS.C0,CFrame.new(-1.62408352, -0.018696066, -0.13600111, 0.977956653, 0.208807945, -6.26423525e-06, -0.204735979, 0.958879709, -0.196552783, -0.0410357788, 0.192221403, 0.980493307)*CFrame.new(0,0,0+.1*math.sin(sin/25))*CFrame.Angles(math.rad(0-3*math.sin(sin/25)),0,0),.3)
RH.C0=clerp(RH.C0,CFrame.new(0.526393056, -1.51758659+.1*math.cos(sin/25), 0.74114871, 0.997387469, -0.0715409145, 0.0100121293, 0.0336826816, 0.583176792, 0.811646819, -0.0639047921, -0.809189081, 0.584062874)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LH.C0=clerp(LH.C0,CFrame.new(-0.500021935, -1.02817178+.1*math.cos(sin/25), -0.744173288, 1, 0, 0, 0, 0.946455777, -0.322833836, 0, 0.322833836, 0.946455777)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
else
local ka=math.random(5,35)
RJ.C0=clerp(RJ.C0,CFrame.new(1.80370076e-15, -1.16696155-.1*math.cos(sin/ka), 3.46302986e-05, 1, -1.21955634e-15, -9.49568932e-16, -1.54563862e-15, 0.789030731, 0.614353776, 0, -0.614353776, 0.789030731)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
Neck.C0=clerp(Neck.C0,CFrame.new(0, 1.57959735, -0.0832701623, 1, 0, 0, 0, 0.950454414, 0.31086424, 0, -0.31086424, 0.950454414)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
RS.C0=clerp(RS.C0,CFrame.new(1.04528499, 1.41031313, 0.0316486657, 0.188843042, 0.324740976, -0.926758707, -0.0242216289, -0.941911697, -0.334986269, -0.981708527, 0.0857074559, -0.170007735)*CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(90),0),.4)
LS.C0=clerp(LS.C0,CFrame.new(-1.0159564, 1.37193727, 0.0995550305, -0.931215107, -0.296901822, 0.211395115, 0.307137102, -0.951521039, 0.0165674686, 0.196228027, 0.0803551376, 0.977260351)*CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(180),0),.4)
RH.C0=clerp(RH.C0,CFrame.new(0.500011444, -2.01591682+.1*math.cos(sin/ka), 0.447649598, 1, 0, 0, 0, 0.895831347, 0.44439438, 0, -0.44439438, 0.895831347)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
LH.C0=clerp(LH.C0,CFrame.new(-0.500026703, -0.660362482+.1*math.cos(sin/ka), -0.916437149, 1, 0, 0, 0, 0.990659475, -0.136358738, 0, 0.136358738, 0.990659475)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.4)
end
else
RJ.C0=clerp(RJ.C0,CFrame.new(0, -.2-.1*math.cos(sin/25), 0, 1, -2.34187669e-15, -3.23117427e-27, -2.34187669e-15, 1, 0, -3.23117427e-27, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
Neck.C0=clerp(Neck.C0,CFrame.new(-2.38418579e-07, 1.48811007, -0.0519605279, 1, -1.16573809e-15, -1.10234284e-16, -1.17093835e-15, 0.995558858, 0.0941418335, 0, -0.0941418335, 0.995558858)*CFrame.new(0,0,0-.02*math.sin(sin/25))*CFrame.Angles(math.rad(0-4*math.sin(sin/25)),0,0),.3)
RS.C0=clerp(RS.C0,CFrame.new(0.485295445, 0.585757077, -0.802916288, 0.175218061, 0.861367524, 0.476806641, 0.984396815, -0.161235869, -0.0704703405, 0.0161774736, 0.481714576, -0.876178801)*CFrame.new(0-.1*math.sin(sin/25),0,0)*CFrame.Angles(0,0,math.rad(0-3*math.sin(sin/25))),.3)
LS.C0=clerp(LS.C0,CFrame.new(-0.438956469, 0.256388187, -0.885131776, 0.309412003, -0.925967872, -0.216443405, 0.144776195, 0.270830035, -0.951677918, 0.939842641, 0.263124675, 0.217856154)*CFrame.new(0,0,0+.1*math.sin(sin/25))*CFrame.Angles(math.rad(0-3*math.sin(sin/25)),0,0),.3)
RH.C0=clerp(RH.C0,CFrame.new(0.513582528, -1.79938452+.1*math.cos(sin/25), 0.00132172182, 0.994032621, -0.0501478165, -0.0968735367, 0.0503848828, 0.998730004, 9.88113243e-07, 0.0967504531, -0.00488194451, 0.995296717)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LH.C0=clerp(LH.C0,CFrame.new(-0.515292525, -1.80007272+.1*math.cos(sin/25), -0.0472557023, 0.9858675, 0.032826975, 0.164279073, -0.0332799107, 0.999446154, 4.85404598e-06, -0.164187923, -0.00547197927, 0.986413896)*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
end
end
elseif torvel>2 and hitfloor~=nil then
Pose="Walk"
if attack==false then
if choice==6 or choice==8 then
Effect(e,"Daisy orange",Root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(90+math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-360,360))),.01,.01,.01,.03,.03,.03,.08,"FileMesh",6,0,"1544059001")
RJ.C0=clerp(RJ.C0,CFrame.new(0, 1-.15*math.cos(sin/25), 0, 1, -1.21777588e-15, -1.61558713e-27, -1.21777588e-15, 1, 0, -1.61558713e-27, 0, 1)*CFrame.new(0,0,0)*CFrame.Angles(-math.rad(70),0,0),.3)
Neck.C0=clerp(Neck.C0,CFrame.new(-8.14352087e-16, 1.33744168, 0.249104202, 1, -5.09894882e-16, 3.32793898e-16, -6.0888794e-16, 0.837419868, -0.546560228, 0, 0.546560228, 0.837419868)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0-2*math.sin(sin/25)),0,0),.3)
RS.C0=clerp(RS.C0,CFrame.new(1.61950016, 0.284695148, 0.422294438, 0.920537889, -0.365736693, -0.137283012, 0.385950357, 0.797084987, 0.464433193, -0.060434036, -0.480512857, 0.874903083)*CFrame.new(0-.04*math.sin(sin/25),0-.04*math.cos(sin/25),0-.05*math.cos(sin/25))*CFrame.Angles(math.rad(0+2*math.cos(sin/25)),0,math.rad(0-4*math.sin(sin/25))),.3)
LS.C0=clerp(LS.C0,CFrame.new(-1.77115273, 0.242024779, 0.355535537, 0.908536434, 0.391400844, 0.146174386, -0.415631235, 0.811040759, 0.411659896, 0.0425706208, -0.434762657, 0.899538457)*CFrame.new(0+.04*math.sin(sin/25),0-.04*math.cos(sin/25),0-.05*math.cos(sin/25))*CFrame.Angles(math.rad(0+2*math.cos(sin/25)),0,math.rad(0+4*math.sin(sin/25))),.3)
RH.C0=clerp(RH.C0,CFrame.new(0.500007629, -1.31953299, -0.42188406, 1, -5.98481452e-16, -1.12091073e-16, -6.0888794e-16, 0.982909083, 0.184091449, 0, -0.184091434, 0.982909083)*CFrame.new(0,0-.1*math.sin(sin/25),0+.04*math.sin(sin/25))*CFrame.Angles(math.rad(0-4*math.cos(sin/25)),0,0),.3)
LH.C0=clerp(LH.C0,CFrame.new(-0.500225306, -2.03385782, 0.344429612, 0.999890864, 0.0147771491, 3.20716117e-06, -0.0141538708, 0.957654357, 0.287572116, 0.00424642442, -0.287540734, 0.957759023)*CFrame.new(0,0-.03*math.sin(sin/25),0+.04*math.sin(sin/25))*CFrame.Angles(math.rad(0-3*math.cos(sin/25)),0,0),.3)
elseif choice==2 then

RJ.C0=clerp(RJ.C0,CFrame.new(-1.91203708e-06, -0.264509153-.1*math.sin(sin/2.5), -0.266138256, 1, -1.65417475e-08, 1.9495598e-08, 3.6266381e-09, 0.846569121, 0.532278895, -2.53091912e-08, -0.532278895, 0.846569121)*CFrame.new(0,0,0)*CFrame.Angles(0,0+Root.RotVelocity.Y/15,0),.3)
Neck.C0=clerp(Neck.C0,CFrame.new(0, 1.46416557, 0.140323952, 1, 0, 0, 0, 0.96886307, -0.247597575, 0, 0.247597605, 0.968862951)*CFrame.new(0,0,0)*CFrame.Angles(0,0+Head.RotVelocity.Y/20,0),.3)
RS.C0=clerp(RS.C0,CFrame.new(1.51737642, 0.238751292, 0.633444786, 0.963849127, -0.20280613, -0.172813848, 0.249956518, 0.463580012, 0.850067914, -0.0922859237, -0.862533152, 0.49751392)*CFrame.new(0,0,0-.1*math.cos(sin/2.5))*CFrame.Angles(math.rad(0+12*math.cos(sin/2.5)+-math.sin(sin/2.5)/15),0+RArm.RotVelocity.Y/20,0),.3)
LS.C0=clerp(LS.C0,CFrame.new(-1.69293177, 0.343249738, 0.59140259, 0.924847662, 0.338680565, 0.173067346, -0.334475517, 0.507624805, 0.794004679, 0.181060612, -0.792220056, 0.582756042)*CFrame.new(0,0,0-.1*math.cos(sin/2.5))*CFrame.Angles(math.rad(0+12*math.cos(sin/2.5)+-math.sin(sin/2.5)/15),0+LArm.RotVelocity.Y/20,0),.3)
RH.C0=clerp(RH.C0,CFrame.new(0.500011444, -1.60007749, 1.90734886e-06-.4*math.cos(sin/5), 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012)*CFrame.new(0,0+.1*math.sin(sin/2.5),0-.5*math.cos(sin/5))*CFrame.Angles(math.rad(0+75*math.cos(sin/5)+-math.sin(sin/5)/15),0,0),.3)
LH.C0=clerp(LH.C0,CFrame.new(-0.500023842, -1.60007463, 4.76837215e-07+.4*math.cos(sin/5), 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012)*CFrame.new(0,0+.1*math.sin(sin/2.5),0+.5*math.cos(sin/5))*CFrame.Angles(math.rad(0-75*math.cos(sin/5)+-math.sin(sin/5)/15),0,0),.3)
else
RJ.C0=clerp(RJ.C0,CFrame.new(-3.99348421e-09, -0.0268486161, -0.161635131, 1, -1.16135119e-08, 2.27779307e-08, 3.6266381e-09, 0.946308315, 0.323265731, -2.53091912e-08, -0.323265731, 0.946308315)*CFrame.new(0,-.3-.08*math.sin(sin/3.5),0)*CFrame.Angles(0,math.rad(0+7*math.cos(sin/7)+-math.sin(sin/7)/15)+Root.RotVelocity.Y/15,0),.3)
Neck.C0=clerp(Neck.C0,CFrame.new(0, 1.49165225, 0.0629501939, 1, 0, 0, 0, 0.991282046, -0.131758034, 0, 0.131758034, 0.991282046)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0-2*math.cos(sin/3.5)+-math.sin(sin/3.5)/15),0+Head.RotVelocity.Y/20,0),.3)
RS.C0=clerp(RS.C0,CFrame.new(1.46631267, 0.0749171525, -2.33450191e-05+.3*math.cos(sin/7), 0.982963741, -0.183800012, -2.96562575e-06, 0.183800027, 0.982963681, 4.44054604e-06, 2.09733844e-06, -4.91738319e-06, 1.00000012)*CFrame.new(0+.02*math.cos(sin/3.5),0,0+.7*math.cos(sin/7))*CFrame.Angles(math.rad(0-80*math.cos(sin/7)+-math.sin(sin/7)/15),0,0),.3)
LS.C0=clerp(LS.C0,CFrame.new(-1.48350062, 0.0571329743, -1.65494157e-07-.3*math.cos(sin/7), 0.982625127, 0.185601696, 1.50684855e-06, -0.185601696, 0.982625186, -5.27501106e-06, -2.46241689e-06, 4.88758087e-06, 1.00000012)*CFrame.new(0-.02*math.cos(sin/3.5),0,0-.7*math.cos(sin/7))*CFrame.Angles(math.rad(0+80*math.cos(sin/7)+-math.sin(sin/7)/15),0,0),.3)
RH.C0=clerp(RH.C0,CFrame.new(0.500011444, -2.00007749, 1.90734886e-06-.4*math.cos(sin/7), 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012)*CFrame.new(0,.3+.08*math.sin(sin/3.5),0-.5*math.cos(sin/7))*CFrame.Angles(math.rad(0+75*math.cos(sin/7)+-math.sin(sin/7)/15),0,0),.3)
LH.C0=clerp(LH.C0,CFrame.new(-0.500023842, -2.00007463, 4.76837215e-07+.4*math.cos(sin/7), 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012)*CFrame.new(0,.3+.08*math.sin(sin/3.5),0+.5*math.cos(sin/7))*CFrame.Angles(math.rad(0-75*math.cos(sin/7)+-math.sin(sin/7)/15),0,0),.3)
end
end
end
end