--[[
 __          __  _                               _                        _          __      __  _____  
 \ \        / / | |                             (_)                      ( )         \ \    / / |  __ \ 
  \ \  /\  / /  | |__     ___     ___     __ _   _  __   __   ___   ___  |/   ___     \ \  / /  | |__) |
   \ \/  \/ /   | '_ \   / _ \   / _ \   / _` | | | \ \ / /  / _ \ / __|     / __|     \ \/ /   |  _  / 
    \  /\  /    | | | | | (_) | | (_) | | (_| | | |  \ V /  |  __/ \__ \     \__ \      \  /    | | \ \ 
     \/  \/     |_| |_|  \___/   \___/   \__, | |_|   \_/    \___| |___/     |___/       \/     |_|  \_\     FIXED 22/07/01.
                                          __/ |                                                         
                                         |___/                
With MW Reanimate! 


 Inspired By Skeds VR

--]]


local options = {}

-- OPTIONS:
options.VRChat = true									-- Set this to true if you want to chat in VR (Button to open is B on your VR controller)

options.headscale = 3          							-- How big you are in VR, This does not make your character any bigger (3 is recommended)
options.forcebubblechat = true 							-- Force bubblechat

options.HandsRotationOffset = Vector3.new(90,0,0) 		-- Rotation offset (90 is recommended) 

options.HandTransparency = 0.4							-- Transparency for your VR hands, Dont worry this is client sided (0.4 is recommended)
options.HideAllHats = true       						-- Set this to true if you want your hats to not get in the way, This is client sided

--

if true then --makes the local variables from the reanimate script private
	local netboost = 1000 --velocity 
	--netboost usage: 
	--set to false to disable
	--vector3 if you dont want the velocity to change
	--number to change the velocity in real time with magnitude equal to the number
	local simradius = "shp" --simulation radius method
	--"shp" - sethiddenproperty
	--"ssr" - setsimulationradius
	--false - disable
	local newanimate = true --disable the animate script and enable after reanimation
	local R15toR6 = true --tries to convert your character to r6 if its r15
	local addtools = true --puts all tools from backpack to character and lets you hold them after reanimation
	local loadtime = game:GetService("Players").RespawnTime + 0.5 --anti respawn delay
	local method = 3 --reanimation method
	--methods:
	--0 - breakJoints (takes [loadtime] seconds to laod)
	--1 - limbs
	--2 - limbs + anti respawn
	--3 - limbs + breakJoints after [loadtime] seconds
	--4 - remove humanoid + breakJoints
	--5 - remove humanoid + limbs
	local alignmode = 2 --AlingPosition mode
	--modes:
	--1 - AlignPosition rigidity enabled true
	--2 - 2 AlignPositions rigidity enabled both true and false
	--3 - AlignPosition rigidity enabled false
	local hedafterneck = false --disable aligns for head and enable after neck is removed

	local lp = game:GetService("Players").LocalPlayer
	local rs = game:GetService("RunService")
	local stepped = rs.Stepped
	local heartbeat = rs.Heartbeat
	local renderstepped = rs.RenderStepped
	local sg = game:GetService("StarterGui")
	local ws = game:GetService("Workspace")

	local c = lp.Character

	local function gp(parent, name, className)
		local ret = nil
		if parent then
			for i, v in pairs(parent:GetChildren()) do
				if (v.Name == name) and v:IsA(className) then
					ret = v
				end
			end
		end
		return ret
	end

	local function align(Part0, Part1)
		Part0.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0.0001, 0.0001, 0.0001, 0.0001)

		local att1 = Instance.new("Attachment")
		att1.Orientation = Vector3.new(0, 0, 0)
		att1.Position = Vector3.new(0, 0, 0)
		att1.Archivable = true
		local att0 = att1:Clone()

		if (alignmode == 1) or (alignmode == 2) then
			local ape = Instance.new("AlignPosition", att0)
			ape.ApplyAtCenterOfMass = false
			ape.MaxForce = math.huge
			ape.MaxVelocity = math.huge
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
			apd.MaxForce = math.huge
			apd.MaxVelocity = math.huge
			apd.ReactionForceEnabled = false
			apd.Responsiveness = 200
			apd.Attachment1 = att1
			apd.Attachment0 = att0
			apd.Name = "AlignPositionRfalse"
			apd.RigidityEnabled = false
		end

		local ao = Instance.new("AlignOrientation", att0)
		ao.MaxAngularVelocity = math.huge
		ao.MaxTorque = math.huge
		ao.PrimaryAxisOnly = false
		ao.ReactionTorqueEnabled = false
		ao.Responsiveness = 200
		ao.Attachment1 = att1
		ao.Attachment0 = att0
		ao.RigidityEnabled = false

		att1.Parent = Part1
		att1.Name = "att1_" .. Part1.Name

		att0.Parent = Part0
		att0.Name = "att0_" .. Part0.Name
		
		if typeof(netboost) == "Vector3" then
			spawn(function()
				local vel = Vector3.new(0, 0, 0)
				while Part0 and Part0.Parent do
					Part0.Velocity = vel
					heartbeat:Wait()
					if Part0 and Part0.Parent then
						vel = Part0.Velocity
						Part0.Velocity = netboost
						stepped:Wait()
					end
				end
			end)
		end

		if typeof(netboost) == "number" then
			spawn(function()
				local vel = Vector3.new(0, 0, 0)
				while Part0 and Part0.Parent do
					Part0.Velocity = vel
					heartbeat:Wait()
					if Part0 and Part0.Parent then
						local newvel = vel
						local mag = newvel.Magnitude
						if mag < 0.1 then
							newvel = Vector3.new(0, netboost, 0)
						else
							local multiplier = netboost / mag
							newvel *= Vector3.new(multiplier,  multiplier, multiplier)
						end
						vel = Part0.Velocity
						Part0.Velocity = newvel
						stepped:Wait()
					end
				end
			end)
		end
	end

	local function respawnrequest()
		local c = lp.Character
		local ccfr = ws.CurrentCamera.CFrame
		local fc = Instance.new("Model")
		local nh = Instance.new("Humanoid", fc)
		lp.Character = fc
		nh.Health = 0
		lp.Character = c
		fc:Destroy()
		local con = nil
		local function confunc()
			con:Disconnect()
			ws.CurrentCamera.CFrame = ccfr
		end
		con = renderstepped:Connect(confunc)
	end

	local destroyhum = (method == 4) or (method == 5)
	local breakjoints = (method == 0) or (method == 4)
	local antirespawn = (method == 0) or (method == 2) or (method == 3)

	addtools = addtools and gp(lp, "Backpack", "Backpack")

	if not (c and c.Parent) then
		return
	end

	if simradius == "shp" then
		local shp = sethiddenproperty or set_hidden_property or set_hidden_prop or sethiddenprop
		if shp then
			spawn(function()
				while heartbeat:Wait() and c and c.Parent do
					shp(lp, "SimulationRadius", math.huge)
				end
			end)
		end
	end

	if simradius == "ssr" then
		local ssr = setsimulationradius or set_simulation_radius or set_sim_radius or setsimradius or set_simulation_rad or setsimulationrad
		if ssr then
			spawn(function()
				while stepped:Wait() and c and c.Parent do
					ssr(math.huge)
				end
			end)
		end
	end

	if antirespawn then
		respawnrequest()
	end

	if method == 0 then
		wait(loadtime)
		if not (c and c.Parent) then
			return
		end
	end

	if newanimate then
		local animate = gp(c, "Animate", "LocalScript")
		if animate and (not animate.Disabled) then
			animate.Disabled = true
		else
			newanimate = false
		end
	end

	local hum = c:FindFirstChildOfClass("Humanoid")
	if hum then
		for i, v in pairs(hum:GetPlayingAnimationTracks()) do
			v:Stop()
		end
	end

	if addtools then
		for i, v in pairs(addtools:GetChildren()) do
			if v and v.Parent and v:IsA("Tool") then
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
		if v and v.Parent and v:IsA("BasePart") then
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
	local cl = c:Clone()
	for i, v in pairs(cl:GetDescendants()) do
		pcall(function()
			v.Transparency = 1
			v.Anchored = false
		end)
	end

	local model = Instance.new("Model", c)
	model.Name = model.ClassName

	for i, v in pairs(c:GetChildren()) do
		if v and v.Parent and (v ~= model) then
			if destroyhum and v:IsA("Humanoid") then
				v:Destroy()
			else
				if addtools and v:IsA("Tool") then
					for i1, v1 in pairs(v:GetDescendants()) do
						if v1 and v1.Parent and v1:IsA("BasePart") then
							local bv = Instance.new("BodyVelocity", v1)
							bv.Velocity = Vector3.new(0, 0, 0)
							bv.MaxForce = Vector3.new(1000, 1000, 1000)
							bv.P = 1250
							bv.Name = "bv_" .. v.Name
						end
					end
				end
				v.Parent = model
			end
		end
	end
	local head = gp(model, "Head", "BasePart")
	local torso = gp(model, "Torso", "BasePart") or gp(model, "UpperTorso", "BasePart")
	if breakjoints then
		model:BreakJoints()
	else
		if head and torso then
			for i, v in pairs(model:GetDescendants()) do
				if v and v.Parent and v:IsA("Weld") or v:IsA("Snap") or v:IsA("Glue") or v:IsA("Motor") or v:IsA("Motor6D") then
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
				if model and model.Parent then
					model:BreakJoints()
				end
			end)
		end
	end

	cl.Parent = c
	for i, v in pairs(cl:GetChildren()) do
		if v and v.Parent then
			v.Parent = c
		end
	end
	cl:Destroy()

	local modelcolcon = nil
	local function modelcolf()
		if model and model.Parent then
			for i, v in pairs(model:GetDescendants()) do
				if v:IsA("BasePart") then
					v.CanCollide = false
				end
			end
		else
			modelcolcon:Disconnect()
		end
	end
	modelcolcon = stepped:Connect(modelcolf)
	modelcolf()

	for i, scr in pairs(model:GetDescendants()) do
		if scr and scr.Parent and (scr.ClassName == "Script") and table.find(scriptNames, scr.Name) then
			local Part0 = scr.Parent
			if Part0:IsA("BasePart") then
				for i1, scr1 in pairs(c:GetDescendants()) do
					if scr1 and scr1.Parent and (scr1.ClassName == "Script") and (scr1.Name == scr.Name) and (not scr1:IsDescendantOf(model)) then
						local Part1 = scr1.Parent
						if (Part1.ClassName == Part0.ClassName) and (Part1.Name == Part0.Name) then
							align(Part0, Part1)
						end
					end
				end
			end
		end
	end

	if (typeof(hedafterneck) == "Instance") and head and head.Parent then
		local aligns = {}
		for i, v in pairs(head:GetDescendants()) do
			if v and v.Parent and (v:IsA("AlignPosition") or v:IsA("AlignOrientation")) then
				table.insert(aligns, v)
				v.Enabled = false
			end
		end
		spawn(function()
			while c and c.Parent and hedafterneck and hedafterneck.Parent do
				stepped:Wait()
			end
			if not (c and c.Parent and head and head.Parent) then
				return
			end
			for i, v in pairs(aligns) do
				pcall(function()
					v.Enabled = true
				end)
			end
		end)
	end

	for i, v in pairs(c:GetDescendants()) do
		if v and v.Parent then
			if v.ClassName == "Script" then
				if table.find(scriptNames, v.Name) then
					v:Destroy()
				end
			else
				if not v:IsDescendantOf(model) then
					if v:IsA("Decal") then
						v.Transparency = 1
					end
					if v:IsA("ForceField") then
						v.Visible = false
					end
					if v:IsA("Sound") then
						v.Playing = false
					end
					if v:IsA("BillboardGui") or v:IsA("SurfaceGui") or v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Smoke") or v:IsA("Sparkles") then
						v.Enabled = false
					end
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
			if v and v.Parent and v:IsA("Tool") then
				v.Parent = addtools
			end
		end
	end

	local hum0 = model:FindFirstChildOfClass("Humanoid")
	local hum1 = c:FindFirstChildOfClass("Humanoid")
	if hum1 then
		ws.CurrentCamera.CameraSubject = hum1
		if hum0 then
			hum0.Changed:Connect(function(prop)
				if (prop == "Jump") and hum1 and hum1.Parent then
					hum1.Jump = hum0.Jump
				end
			end)
		else
			lp.Character = nil
			lp.Character = c
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
		if antirespawn then
			if hum0 and hum0.Parent and (hum0.Health > 0) then
				model:BreakJoints()
				hum0.Health = 0
			end
			respawnrequest()
		else
			if hum0 and hum0.Parent and (hum0.Health > 0) then
				model:BreakJoints()
				hum0.Health = 0
			end
		end
	end)
	sg:SetCore("ResetButtonCallback", rb)

	spawn(function()
		while c and c.Parent do
			if hum0 and hum0.Parent and hum1 and hum1.Parent then
				hum1.Jump = hum0.Jump
			end
			wait()
		end
		sg:SetCore("ResetButtonCallback", true)
	end)

	R15toR6 = R15toR6 and hum1 and (hum1.RigType == Enum.HumanoidRigType.R15)
	if R15toR6 then
		local cf = nil
		pcall(function()
			cf = gp(c, "HumanoidRootPart", "BasePart").CFrame
		end)
		if cf then
			local R6parts = { 
				head = {
					Name = "Head",
					Size = Vector3.new(2, 1, 1),
					R15 = {
						Head = 0
					}
				},
				torso = {
					Name = "Torso",
					Size = Vector3.new(2, 2, 1),
					R15 = {
						UpperTorso = 0.2,
						LowerTorso = -0.8
					}
				},
				root = {
					Name = "HumanoidRootPart",
					Size = Vector3.new(2, 2, 1),
					R15 = {
						HumanoidRootPart = 0
					}
				},
				leftArm = {
					Name = "Left Arm",
					Size = Vector3.new(1, 2, 1),
					R15 = {
						LeftHand = -0.85,
						LeftLowerArm = -0.2,
						LeftUpperArm = 0.4
					}
				},
				rightArm = {
					Name = "Right Arm",
					Size = Vector3.new(1, 2, 1),
					R15 = {
						RightHand = -0.85,
						RightLowerArm = -0.2,
						RightUpperArm = 0.4
					}
				},
				leftLeg = {
					Name = "Left Leg",
					Size = Vector3.new(1, 2, 1),
					R15 = {
						LeftFoot = -0.85,
						LeftLowerLeg = -0.15,
						LeftUpperLeg = 0.6
					}
				},
				rightLeg = {
					Name = "Right Leg",
					Size = Vector3.new(1, 2, 1),
					R15 = {
						RightFoot = -0.85,
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
			for i, v in pairs(R6parts) do
				local part = Instance.new("Part")
				part.Name = v.Name
				part.Size = v.Size
				part.CFrame = cf
				part.Anchored = false
				part.Transparency = 1
				part.CanCollide = false
				for i1, v1 in pairs(v.R15) do
					local R15part = gp(c, i1, "BasePart")
					if R15part then
						local weld = Instance.new("Weld", R15part)
						weld.Part0 = part
						weld.Part1 = R15part
						weld.C0 = CFrame.new(0, v1, 0)
						weld.C1 = CFrame.new(0, 0, 0)
						R15part.Massless = true
						R15part.Name = "R15_" .. i1
						R15part.Parent = part
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
					C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
					C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
				},
				rootJoint = {
					Parent = R6parts.root,
					Name = "RootJoint" ,
					Part0 = R6parts.root,
					Part1 = R6parts.torso,
					C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
					C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
				},
				rightShoulder = {
					Parent = R6parts.torso,
					Name = "Right Shoulder",
					Part0 = R6parts.torso,
					Part1 = R6parts.rightArm,
					C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
					C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				},
				leftShoulder = {
					Parent = R6parts.torso,
					Name = "Left Shoulder",
					Part0 = R6parts.torso,
					Part1 = R6parts.leftArm,
					C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
					C1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				},
				rightHip = {
					Parent = R6parts.torso,
					Name = "Right Hip",
					Part0 = R6parts.torso,
					Part1 = R6parts.rightLeg,
					C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
					C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				},
				leftHip = {
					Parent = R6parts.torso,
					Name = "Left Hip" ,
					Part0 = R6parts.torso,
					Part1 = R6parts.leftLeg,
					C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
					C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
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
end

local plr = game:GetService("Players").LocalPlayer
local VR = game:GetService("VRService")
local runservice = game:service("RunService")
local input = game:GetService("UserInputService")
local keysPressed = input:GetKeysPressed()
local cam = workspace.CurrentCamera
local runservice = game:service("RunService")
local character = plr["Character"]

runservice.Stepped:Wait()
 
--
local Root = character:FindFirstChild("HumanoidRootPart")

repeat wait()
	a = pcall(function()
		game:WaitForChild("Players").LocalPlayer:WaitForChild("PlayerScripts").ChildAdded:Connect(function(c)
			if c.Name == "PlayerScriptsLoader"then
				c.Disabled = true
			end
		end)
	end)
	if a == true then break end
until true == false

game:WaitForChild("Players").LocalPlayer:WaitForChild("PlayerScripts").ChildAdded:Connect(function(c)
	if c.Name == "PlayerScriptsLoader"then
		c.Disabled = true
	end
end)

options.righthandrotoffset = options.HandsRotationOffset
options.lefthandrotoffset = options.HandsRotationOffset

-- Chat Part:
if options.VRChat == true then
	local VRchat = Instance.new("ScreenGui")
	local Page1 = Instance.new("Frame")
	local Hello = Instance.new("TextButton")
	local Ok = Instance.new("TextButton")
	local No = Instance.new("TextButton")
	local Yes = Instance.new("TextButton")
	local Hm = Instance.new("TextButton")
	local Lol = Instance.new("TextButton")
	local Come = Instance.new("TextButton")
	local WhoosVR = Instance.new("TextButton")
	local WaitAMin = Instance.new("TextButton")
	local What = Instance.new("TextButton")
	local NextPage = Instance.new("TextButton")
	local Page2 = Instance.new("Frame")
	local Stop = Instance.new("TextButton")
	local Start = Instance.new("TextButton")
	local TextButton = Instance.new("TextButton")
	local Hey = Instance.new("TextButton")
	local Cool = Instance.new("TextButton")
	local Bruh = Instance.new("TextButton")
	local SUS = Instance.new("TextButton")
	local Hacker = Instance.new("TextButton")
	local Me = Instance.new("TextButton")
	local BackPage = Instance.new("TextButton")
	VRchat.Name = "VR chat"
	VRchat.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	VRchat.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Page1.Name = "Page1"
	Page1.Parent = VRchat
	Page1.BackgroundColor3 = Color3.fromRGB(109, 109, 109)
	Page1.BackgroundTransparency = 0.300
	Page1.Position = UDim2.new(-0.00080871582, 0, -0.00193678541, 0)
	Page1.Size = UDim2.new(1, 0, 1, 0)
	Page1.Visible = false
	Hello.Name = "Hello"
	Hello.Parent = Page1
	Hello.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hello.Position = UDim2.new(0.0549020506, 0, 0.0764637515, 0)
	Hello.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Hello.Font = Enum.Font.SourceSans
	Hello.Text = "Hello!"
	Hello.TextColor3 = Color3.fromRGB(0, 0, 0)
	Hello.TextScaled = true
	Hello.TextSize = 25.000
	Hello.TextWrapped = true
	Ok.Name = "Ok"
	Ok.Parent = Page1
	Ok.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Ok.Position = UDim2.new(0.355535269, 0, 0.0764637515, 0)
	Ok.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Ok.Font = Enum.Font.SourceSans
	Ok.Text = "Ok"
	Ok.TextColor3 = Color3.fromRGB(0, 0, 0)
	Ok.TextScaled = true
	Ok.TextSize = 25.000
	Ok.TextWrapped = true
	No.Name = "No"
	No.Parent = Page1
	No.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	No.Position = UDim2.new(0.354956299, 0, 0.32854709, 0)
	No.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	No.Font = Enum.Font.SourceSans
	No.Text = "No"
	No.TextColor3 = Color3.fromRGB(0, 0, 0)
	No.TextScaled = true
	No.TextSize = 25.000
	No.TextWrapped = true
	Yes.Name = "Yes"
	Yes.Parent = Page1
	Yes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Yes.Position = UDim2.new(0.0549020506, 0, 0.330081195, 0)
	Yes.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Yes.Font = Enum.Font.SourceSans
	Yes.Text = "Yes"
	Yes.TextColor3 = Color3.fromRGB(0, 0, 0)
	Yes.TextScaled = true
	Yes.TextSize = 25.000
	Yes.TextWrapped = true
	Hm.Name = "Hm"
	Hm.Parent = Page1
	Hm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hm.Position = UDim2.new(0.677410305, 0, 0.330081195, 0)
	Hm.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Hm.Font = Enum.Font.SourceSans
	Hm.Text = "?"
	Hm.TextColor3 = Color3.fromRGB(0, 0, 0)
	Hm.TextScaled = true
	Hm.TextSize = 25.000
	Hm.TextWrapped = true
	Lol.Name = "Lol"
	Lol.Parent = Page1
	Lol.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Lol.Position = UDim2.new(0.676831245, 0, 0.0759145617, 0)
	Lol.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Lol.Font = Enum.Font.SourceSans
	Lol.Text = "Lol"
	Lol.TextColor3 = Color3.fromRGB(0, 0, 0)
	Lol.TextScaled = true
	Lol.TextSize = 25.000
	Lol.TextWrapped = true
	Come.Name = "Come"
	Come.Parent = Page1
	Come.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Come.Position = UDim2.new(0.0549020506, 0, 0.574909747, 0)
	Come.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Come.Font = Enum.Font.SourceSans
	Come.Text = "Come"
	Come.TextColor3 = Color3.fromRGB(0, 0, 0)
	Come.TextScaled = true
	Come.TextSize = 25.000
	Come.TextWrapped = true
	WhoosVR.Name = "WhoosVR"
	WhoosVR.Parent = Page1
	WhoosVR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	WhoosVR.Position = UDim2.new(0.325847805, 0, 0.839991808, 0)
	WhoosVR.Size = UDim2.new(0.347911447, 0, 0.108808197, 0)
	WhoosVR.Font = Enum.Font.SourceSans
	WhoosVR.Text = "Whoogives's VR"
	WhoosVR.TextColor3 = Color3.fromRGB(0, 0, 0)
	WhoosVR.TextScaled = true
	WhoosVR.TextSize = 25.000
	WhoosVR.TextWrapped = true
	WaitAMin.Name = "WaitAMin"
	WaitAMin.Parent = Page1
	WaitAMin.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	WaitAMin.Position = UDim2.new(0.356518745, 0, 0.574909747, 0)
	WaitAMin.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	WaitAMin.Font = Enum.Font.SourceSans
	WaitAMin.Text = "Wait a min"
	WaitAMin.TextColor3 = Color3.fromRGB(0, 0, 0)
	WaitAMin.TextScaled = true
	WaitAMin.TextSize = 25.000
	WaitAMin.TextWrapped = true
	What.Name = "What"
	What.Parent = Page1
	What.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	What.Position = UDim2.new(0.675847769, 0, 0.573831201, 0)
	What.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	What.Font = Enum.Font.SourceSans
	What.Text = "What?"
	What.TextColor3 = Color3.fromRGB(0, 0, 0)
	What.TextScaled = true
	What.TextSize = 25.000
	What.TextWrapped = true
	NextPage.Name = "NextPage"
	NextPage.Parent = Page1
	NextPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NextPage.Position = UDim2.new(0.733790994, 0, 0.854575157, 0)
	NextPage.Size = UDim2.new(0.152555302, 0, 0.081699349, 0)
	NextPage.Font = Enum.Font.SourceSansSemibold
	NextPage.Text = "Next"
	NextPage.TextColor3 = Color3.fromRGB(0, 0, 0)
	NextPage.TextScaled = true
	NextPage.TextSize = 14.000
	NextPage.TextWrapped = true
	Page2.Name = "Page2"
	Page2.Parent = VRchat
	Page2.BackgroundColor3 = Color3.fromRGB(109, 109, 109)
	Page2.BackgroundTransparency = 0.300
	Page2.Position = UDim2.new(-0.00080871582, 0, -0.00193678541, 0)
	Page2.Size = UDim2.new(1, 0, 1, 0)
	Page2.Visible = false
	Stop.Name = "Stop"
	Stop.Parent = Page2
	Stop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Stop.Position = UDim2.new(0.0549020506, 0, 0.0764637515, 0)
	Stop.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Stop.Font = Enum.Font.SourceSans
	Stop.Text = "Stop"
	Stop.TextColor3 = Color3.fromRGB(0, 0, 0)
	Stop.TextScaled = true
	Stop.TextSize = 25.000
	Stop.TextWrapped = true
	Start.Name = "Start"
	Start.Parent = Page2
	Start.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Start.Position = UDim2.new(0.355535269, 0, 0.0764637515, 0)
	Start.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Start.Font = Enum.Font.SourceSans
	Start.Text = "Start"
	Start.TextColor3 = Color3.fromRGB(0, 0, 0)
	Start.TextScaled = true
	Start.TextSize = 25.000
	Start.TextWrapped = true
	TextButton.Name = "!"
	TextButton.Parent = Page2
	TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.Position = UDim2.new(0.354956299, 0, 0.32854709, 0)
	TextButton.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	TextButton.Font = Enum.Font.SourceSans
	TextButton.Text = "!"
	TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.TextScaled = true
	TextButton.TextSize = 25.000
	TextButton.TextWrapped = true
	Hey.Name = "Hey"
	Hey.Parent = Page2
	Hey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hey.Position = UDim2.new(0.0549020506, 0, 0.330081195, 0)
	Hey.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Hey.Font = Enum.Font.SourceSans
	Hey.Text = "Hey"
	Hey.TextColor3 = Color3.fromRGB(0, 0, 0)
	Hey.TextScaled = true
	Hey.TextSize = 25.000
	Hey.TextWrapped = true
	Cool.Name = "Cool"
	Cool.Parent = Page2
	Cool.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Cool.Position = UDim2.new(0.677410305, 0, 0.330081195, 0)
	Cool.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Cool.Font = Enum.Font.SourceSans
	Cool.Text = "Cool"
	Cool.TextColor3 = Color3.fromRGB(0, 0, 0)
	Cool.TextScaled = true
	Cool.TextSize = 25.000
	Cool.TextWrapped = true
	Bruh.Name = "Bruh"
	Bruh.Parent = Page2
	Bruh.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Bruh.Position = UDim2.new(0.676831245, 0, 0.0759145617, 0)
	Bruh.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Bruh.Font = Enum.Font.SourceSans
	Bruh.Text = "Bruh"
	Bruh.TextColor3 = Color3.fromRGB(0, 0, 0)
	Bruh.TextScaled = true
	Bruh.TextSize = 25.000
	Bruh.TextWrapped = true
	SUS.Name = "SUS"
	SUS.Parent = Page2
	SUS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SUS.Position = UDim2.new(0.0549020506, 0, 0.574909747, 0)
	SUS.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	SUS.Font = Enum.Font.SourceSans
	SUS.Text = "sus"
	SUS.TextColor3 = Color3.fromRGB(0, 0, 0)
	SUS.TextScaled = true
	SUS.TextSize = 25.000
	SUS.TextWrapped = true
	Hacker.Name = "Hacker"
	Hacker.Parent = Page2
	Hacker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hacker.Position = UDim2.new(0.356518745, 0, 0.574909747, 0)
	Hacker.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Hacker.Font = Enum.Font.SourceSans
	Hacker.Text = "Hacker"
	Hacker.TextColor3 = Color3.fromRGB(0, 0, 0)
	Hacker.TextScaled = true
	Hacker.TextSize = 25.000
	Hacker.TextWrapped = true
	Me.Name = "Me"
	Me.Parent = Page2
	Me.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Me.Position = UDim2.new(0.675847769, 0, 0.573831201, 0)
	Me.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Me.Font = Enum.Font.SourceSans
	Me.Text = "Me"
	Me.TextColor3 = Color3.fromRGB(0, 0, 0)
	Me.TextScaled = true
	Me.TextSize = 25.000
	Me.TextWrapped = true
	BackPage.Name = "BackPage"
	BackPage.Parent = Page2
	BackPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BackPage.Position = UDim2.new(0.11035347, 0, 0.854575157, 0)
	BackPage.Size = UDim2.new(0.152555302, 0, 0.081699349, 0)
	BackPage.Font = Enum.Font.SourceSansSemibold
	BackPage.Text = "Back"
	BackPage.TextColor3 = Color3.fromRGB(0, 0, 0)
	BackPage.TextScaled = true
	BackPage.TextSize = 14.000
	BackPage.TextWrapped = true
	
	Page2.Visible = false
	Page1.Visible = false
	game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
		if inputObject.KeyCode == Enum.KeyCode.ButtonB  then
			if Page1.Visible == false then
				Page1.Visible = true
				wait(.2)
			else
				Page1.Visible = false
				wait(.2)
			end
		end 
	end)
	BackPage.Activated:Connect(function()
		Page1.Visible = true
		Page2.Visible = false
	end)
	NextPage.Activated:Connect(function()
		Page1.Visible = false
		Page2.Visible = true
	end)
	Hello.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Hello!", "All")
		Page1.Visible = false
	end)
	Ok.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ok", "All")
		Page1.Visible = false
	end)
	Hm.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("?", "All")
		Page1.Visible = false
	end)
	Yes.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Yes", "All")
		Page1.Visible = false
	end)
	Come.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Come", "All")
		Page1.Visible = false
	end)
	Lol.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Lol", "All")
		Page1.Visible = false
	end)
	No.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("No", "All")
		Page1.Visible = false
	end)
	WaitAMin.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Wait a min", "All")
		Page1.Visible = false
	end)
	WhoosVR.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Whoogives's VR", "All")
		Page1.Visible = false
	end)
	What.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("What", "All")
		Page1.Visible = false
	end)
	-- Page2:
	SUS.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Sus", "All")
		Page2.Visible = false
	end)
	Cool.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Cool", "All")
		Page2.Visible = false
	end)
	Hey.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Hey", "All")
		Page2.Visible = false
	end)
	Stop.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Stop", "All")
		Page2.Visible = false
	end)
	TextButton.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("!", "All")
		Page2.Visible = false
	end)
	Start.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Start", "All")
		Page2.Visible = false
	end)
	Hacker.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Hacker", "All")
		Page2.Visible = false
	end)
	Me.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Me", "All")
		Page2.Visible = false
	end)
	Bruh.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Bruh", "All")
		Page2.Visible = false
	end)
	--
end
--

cam.CameraType = "Scriptable"
cam.HeadScale = options.headscale
cam.CameraSubject = nil
cam.CFrame = character.Head.CFrame

game:GetService("StarterGui"):SetCore("VRLaserPointerMode", 0)
game:GetService("StarterGui"):SetCore("VREnableControllerModels", false)
print("Whoogive's VR by Whoogivesashit#2751")

local function createpart(size, name)
	local Part = Instance.new("Part", character)
	Part.CFrame = character.HumanoidRootPart.CFrame
	Part.Size = size
	Part.Transparency = 1
	Part.CanCollide = false
	Part.Anchored = true
	Part.Name = name
	return Part
end
local moveHandL = createpart(Vector3.new(1,1,2), "moveRH")
local moveHandR = createpart(Vector3.new(1,1,2), "moveLH")
local moveHead = createpart(Vector3.new(1,1,1), "moveH")
local R1down = false

workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position)
game:GetService("RunService").RenderStepped:connect(function()
	if R1down then
		cam.CFrame = cam.CFrame:Lerp(cam.CFrame + (character["Right Arm"].CFrame*CFrame.Angles(-math.rad(options.righthandrotoffset.X),-math.rad(options.righthandrotoffset.Y),math.rad(180-options.righthandrotoffset.X))).LookVector * cam.HeadScale/2, 0.5)
	end
end)
local function bubble(plr,msg)
	game:GetService("Chat"):Chat(plr.Character.Head,msg,Enum.ChatColor.White)
end
if options.forcebubblechat == true then
	game.Players.PlayerAdded:connect(function(plr)
		plr.Chatted:connect(function(msg)
			game:GetService("Chat"):Chat(plr.Character.Head,msg,Enum.ChatColor.White)
		end)
	end)

	for i,v in pairs(game.Players:GetPlayers()) do
		v.Chatted:connect(function(msg)
			game:GetService("Chat"):Chat(v.Character.Head,msg,Enum.ChatColor.White)
		end)
	end
end
input.InputChanged:connect(function(key)
	if key.KeyCode == Enum.KeyCode.ButtonR1 then
		if key.Position.Z > 0.9 then
			R1down = true
		else
			R1down = false
		end
	end
end)
input.InputBegan:connect(function(key)
	if key.KeyCode == Enum.KeyCode.ButtonR1 then
		R1down = true
	end
end)
input.InputEnded:connect(function(key)
	if key.KeyCode == Enum.KeyCode.ButtonR1 then
		R1down = false
	end
end)

pcall(function() character.Model["Left Arm"].Transparency = options.HandTransparency end)
pcall(function() character.Model.LeftUpperArm.Transparency = options.HandTransparency end)
pcall(function() character.Model.LeftLowerArm.Transparency = options.HandTransparency end)
pcall(function() character.Model.LeftHand.Transparency = options.HandTransparency end)

pcall(function() character.Model["Right Arm"].Transparency = options.HandTransparency end)
pcall(function() character.Model.RightUpperArm.Transparency = options.HandTransparency end)
pcall(function() character.Model.RightLowerArm.Transparency = options.HandTransparency end)
pcall(function() character.Model.RightHand.Transparency = options.HandTransparency end)

character.Model.Head.Transparency = 1
character:FindFirstChildOfClass("Humanoid").BreakJointsOnDeath = false
character:FindFirstChildOfClass("Humanoid").RequiresNeck = false
character.Torso:Destroy()
character["Left Leg"]:Destroy()
character["Right Leg"]:Destroy()

for i, v in pairs(character:GetChildren()) do
    pcall(function()
        v.Anchored = true
        v.CFrame = cam.CFrame
    end)
end

if options.HideAllHats == true then
	for i,v in pairs(character.Model:GetChildren()) do
		if v:IsA("Accessory") then
			v.Handle.Transparency = 1
		end
	end
end

input.UserCFrameChanged:connect(function(part,move)
	if part == Enum.UserCFrame.Head then
		--move(head,cam.CFrame*move)
		character.Head.CFrame = cam.CFrame*(CFrame.new(move.p*(cam.HeadScale-1))*move - Vector3.new(0,0,0))
		character.HumanoidRootPart.CFrame = character.Head.CFrame
	elseif part == Enum.UserCFrame.LeftHand then
		--move(handL,cam.CFrame*move)
		character["Left Arm"].CFrame = cam.CFrame*(CFrame.new(move.p*(cam.HeadScale-1))*move*CFrame.Angles(math.rad(options.righthandrotoffset.X),math.rad(options.righthandrotoffset.Y),math.rad(options.righthandrotoffset.Z)))
	elseif part == Enum.UserCFrame.RightHand then
		--move(handR,cam.CFrame*move)
		character["Right Arm"].CFrame = cam.CFrame*(CFrame.new(move.p*(cam.HeadScale-1))*move*CFrame.Angles(math.rad(options.righthandrotoffset.X),math.rad(options.righthandrotoffset.Y),math.rad(options.righthandrotoffset.Z)))
	end
end)