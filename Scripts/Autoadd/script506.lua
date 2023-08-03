local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Script Made By yes882#1605", "DarkTheme")
local Tab = Window:NewTab("Home")
local Section = Tab:NewSection("fucking nigger")
local noTab = Window:NewTab("Controls for Nameless")
local yesSection = noTab:NewSection("q = lay")
local yesSection = noTab:NewSection("e = sit")
local yesSection = noTab:NewSection("r = rickroll")
local yesSection = noTab:NewSection("t = wave")
local yesSection = noTab:NewSection("y = dab")
local yesSection = noTab:NewSection("u = dance")
local yesSection = noTab:NewSection("p = T")
local yesSection = noTab:NewSection("f = float")
local yesSection = noTab:NewSection("g = floss")
local yesSection = noTab:NewSection("h = emote")
local yesSection = noTab:NewSection("j = pushups")
local yesSection = noTab:NewSection("k = kazotsky")
local yesSection = noTab:NewSection("L = L")

Section:NewButton("FE Nameless Animations V4", "ButtonInfo", function()
--[[
    fe nameless animations v4
    made by MyWorld#4430
    discord.gg/pYVHtSJmEY
    no hats needed, r15 supported
]]

if "wanna use myworld reanimate" then
    --reanimate by MyWorld#4430 discord.gg/pYVHtSJmEY
    local Vector3_101 = Vector3.new(1, 0, 1)
    local netless_Y = Vector3.new(0, 25.1, 0)
    local function getNetlessVelocity(realPartVelocity) --change this if you have a better method
        local mag = realPartVelocity.Magnitude
        if (mag > 1) and (mag < 100) then
            local unit = realPartVelocity.Unit
            if (unit.Y > 0.25) or (unit.Y < -0.75) then
                return realPartVelocity * (25.1 / realPartVelocity.Y)
            end
            realPartVelocity = unit * 100
        end
        return (realPartVelocity * Vector3_101) + netless_Y
    end
    local simradius = "shp" --simulation radius (net bypass) method
    --"shp" - sethiddenproperty
    --"ssr" - setsimulationradius
    --false - disable
    local noclipAllParts = false --set it to true if you want noclip
    local antiragdoll = true --removes hingeConstraints and ballSocketConstraints from your character
    local newanimate = true --disables the animate script and enables after reanimation
    local discharscripts = true --disables all localScripts parented to your character before reanimation
    local R15toR6 = true --tries to convert your character to r6 if its r15
    local hatcollide = false --makes hats cancollide (credit to ShownApe) (works only with reanimate method 0)
    local humState16 = true --enables collisions for limbs before the humanoid dies (using hum:ChangeState)
    local addtools = false --puts all tools from backpack to character and lets you hold them after reanimation
    local hedafterneck = true --disable aligns for head and enable after neck or torso is removed
    local loadtime = game:GetService("Players").RespawnTime + 0.5 --anti respawn delay
    local method = 3 --reanimation method
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
    local flingpart = "HumanoidRootPart" --name of the part or the hat used for flinging
    --the fling function
    --usage: fling(target, duration, velocity)
    --target can be set to: basePart, CFrame, Vector3, character model or humanoid (flings at mouse.Hit if argument not provided))
    --duration (fling time in seconds) can be set to: a number or a string convertable to the number (0.5s if not provided),
    --velocity (fling part rotation velocity) can be set to a vector3 value (Vector3.new(20000, 20000, 20000) if not provided)
    
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
    
    local c = lp.Character
    
    if not (c and c.Parent) then
    	return
    end
    
    c:GetPropertyChangedSignal("Parent"):Connect(function()
        if not (c and c.Parent) then
    	    c = nil
    	end
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
    
    if type(getNetlessVelocity) ~= "function" then
        getNetlessVelocity = nil
    end
    
    local function align(Part0, Part1)
    	Part0.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
    
    	local att0 = Instance.new("Attachment")
    	att0.Orientation = v3_0
    	att0.Position = v3_0
    	att0.Name = "att0_" .. Part0.Name
    	local att1 = Instance.new("Attachment")
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
    
    	if getNetlessVelocity then
    	    local vel = Part0.Velocity
    	    local velpart = Part1
            local rsteppedcon = renderstepped:Connect(function()
                Part0.Velocity = vel
            end)
            local heartbeatcon = heartbeat:Connect(function()
                vel = Part0.Velocity
                Part0.Velocity = getNetlessVelocity(velpart.Velocity)
            end)
            local attcon = nil
            Part0:GetPropertyChangedSignal("Parent"):Connect(function()
                if not (Part0 and Part0.Parent) then
                    rsteppedcon:Disconnect()
                    heartbeatcon:Disconnect()
                    attcon:Disconnect()
                end
            end)
            attcon = att1:GetPropertyChangedSignal("Parent"):Connect(function()
    	        if not (att1 and att1.Parent) then
    	            attcon:Disconnect()
                    velpart = Part0
    	        else
    	            velpart = att1.Parent
    	            if not velpart:IsA("BasePart") then
    	                velpart = Part0
    	            end
    	        end
    	    end)
    	end
    	
    	att0.Parent = Part0
        att1.Parent = Part1
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
    end
    
    local model = Instance.new("Model", c)
    model.Name = model.ClassName
    
    model:GetPropertyChangedSignal("Parent"):Connect(function()
        if not (model and model.Parent) then
    	    model = nil
        end
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
    
    local noclipmodel = (noclipAllParts and c) or model
    local noclipcon = nil
    local function uncollide()
    	if noclipmodel then
    		for i, v in pairs(noclipmodel:GetDescendants()) do
    		    if v:IsA("BasePart") then
    			    v.CanCollide = false
    		    end
    		end
    	else
    		noclipcon:Disconnect()
    	end
    end
    noclipcon = stepped:Connect(uncollide)
    uncollide()
    
    for i, scr in pairs(model:GetDescendants()) do
    	if (scr.ClassName == "Script") and table.find(scriptNames, scr.Name) then
    		local Part0 = scr.Parent
    		if Part0:IsA("BasePart") then
    			for i1, scr1 in pairs(c:GetDescendants()) do
    				if (scr1.ClassName == "Script") and (scr1.Name == scr.Name) and (not scr1:IsDescendantOf(model)) then
    					local Part1 = scr1.Parent
    					if (Part1.ClassName == Part0.ClassName) and (Part1.Name == Part0.Name) then
    						align(Part0, Part1)
    						scr:Destroy()
    						scr1:Destroy()
    						break
    					end
    				end
    			end
    		end
    	end
    end
    
    for i, v in pairs(c:GetDescendants()) do
    	if v and v.Parent and (not v:IsDescendantOf(model)) then
    		if v:IsA("Decal") then
    		    v.Transparency = 1
    		elseif v:IsA("BasePart") then
    			v.Transparency = 1
    			v.Anchored = false
    		elseif v:IsA("ForceField") then
    			v.Visible = false
    		elseif v:IsA("Sound") then
    			v.Playing = false
    		elseif v:IsA("BillboardGui") or v:IsA("SurfaceGui") or v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Smoke") or v:IsA("Sparkles") then
    			v.Enabled = false
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
        hum0:GetPropertyChangedSignal("Parent"):Connect(function()
            if not (hum0 and hum0.Parent) then
                hum0 = nil
            end
        end)
    end
    
    local hum1 = c:FindFirstChildOfClass("Humanoid")
    if hum1 then
        hum1:GetPropertyChangedSignal("Parent"):Connect(function()
            if not (hum1 and hum1.Parent) then
                hum1 = nil
            end
        end)
        
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
    		hum0:GetPropertyChangedSignal("Jump"):Connect(function()
    			if hum1 then
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
    					LowerTorso = -0.8
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
    					LeftHand = -0.849,
    					LeftLowerArm = -0.174,
    					LeftUpperArm = 0.415
    				}
    			},
    			rightArm = {
    				Name = "Right Arm",
    				Size = v3(1, 2, 1),
    				R15 = {
    					RightHand = -0.849,
    					RightLowerArm = -0.174,
    					RightUpperArm = 0.415
    				}
    			},
    			leftLeg = {
    				Name = "Left Leg",
    				Size = v3(1, 2, 1),
    				R15 = {
    					LeftFoot = -0.85,
    					LeftLowerLeg = -0.29,
    					LeftUpperLeg = 0.49
    				}
    			},
    			rightLeg = {
    				Name = "Right Leg",
    				Size = v3(1, 2, 1),
    				R15 = {
    					RightFoot = -0.85,
    					RightLowerLeg = -0.29,
    					RightUpperLeg = 0.49
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
    		if hum1 then
        		hum1.RigType = Enum.HumanoidRigType.R6
        		hum1.HipHeight = 0
    		end
    	end
    end
    
    local torso1 = torso
    torso = gp(c, "Torso", "BasePart") or ((not R15toR6) and gp(c, torso.Name, "BasePart"))
    if (typeof(hedafterneck) == "Instance") and head and torso and torso1 then
    	local conNeck = nil
    	local conTorso = nil
    	local contorso1 = nil
    	local aligns = {}
    	local function enableAligns()
    	    conNeck:Disconnect()
            conTorso:Disconnect()
            conTorso1:Disconnect()
    		for i, v in pairs(aligns) do
    			v.Enabled = true
    		end
    	end
    	conNeck = hedafterneck.Changed:Connect(function(prop)
    	    if table.find({"Part0", "Part1", "Parent"}, prop) then
    	        enableAligns()
    		end
    	end)
    	conTorso = torso:GetPropertyChangedSignal("Parent"):Connect(enableAligns)
    	conTorso1 = torso1:GetPropertyChangedSignal("Parent"):Connect(enableAligns)
    	for i, v in pairs(head:GetDescendants()) do
    		if v:IsA("AlignPosition") or v:IsA("AlignOrientation") then
    			i = tostring(i)
    			aligns[i] = v
    			v:GetPropertyChangedSignal("Parent"):Connect(function()
    			    aligns[i] = nil
    			end)
    			v.Enabled = false
    		end
    	end
    end
    
    local flingpart0 = gp(model, flingpart, "BasePart") or gp(gp(model, flingpart, "Accessory"), "Handle", "BasePart")
    local flingpart1 = gp(c, flingpart, "BasePart") or gp(gp(c, flingpart, "Accessory"), "Handle", "BasePart")
    
    local fling = function() end
    if flingpart0 and flingpart1 then
        flingpart0:GetPropertyChangedSignal("Parent"):Connect(function()
            if not (flingpart0 and flingpart0.Parent) then
                flingpart0 = nil
                fling = function() end
            end
        end)
        flingpart0.Archivable = true
        flingpart1:GetPropertyChangedSignal("Parent"):Connect(function()
            if not (flingpart1 and flingpart1.Parent) then
                flingpart1 = nil
                fling = function() end
            end
        end)
        local att0 = gp(flingpart0, "att0_" .. flingpart0.Name, "Attachment")
        local att1 = gp(flingpart1, "att1_" .. flingpart1.Name, "Attachment")
        if att0 and att1 then
            att0:GetPropertyChangedSignal("Parent"):Connect(function()
                if not (att0 and att0.Parent) then
                    att0 = nil
                    fling = function() end
                end
            end)
            att1:GetPropertyChangedSignal("Parent"):Connect(function()
                if not (att1 and att1.Parent) then
                    att1 = nil
                    fling = function() end
                end
            end)
            local lastfling = nil
            local mouse = lp:GetMouse()
            fling = function(target, duration, rotVelocity)
                if typeof(target) == "Instance" then
                    if target:IsA("BasePart") then
                        target = target.Position
                    elseif target:IsA("Model") then
                        target = gp(target, "HumanoidRootPart", "BasePart") or gp(target, "Torso", "BasePart") or gp(target, "UpperTorso", "BasePart") or target:FindFirstChildWhichIsA("BasePart")
                        if target then
                            target = target.Position
                        else
                            return
                        end
                    elseif target:IsA("Humanoid") then
                        local parent = target.Parent
                        if not (parent and parent:IsA("Model")) then
                            return
                        end
                        target = gp(target, "HumanoidRootPart", "BasePart") or gp(target, "Torso", "BasePart") or gp(target, "UpperTorso", "BasePart") or target:FindFirstChildWhichIsA("BasePart")
                        if target then
                            target = target.Position
                        else
                            return
                        end
                    else
                        return
                    end
                elseif typeof(target) == "CFrame" then
                    target = target.Position
                elseif typeof(target) ~= "Vector3" then
                    target = mouse.Hit
                    if target then
                        target = target.Position
                    else
                        return
                    end
                end
                lastfling = target
                if type(duration) ~= "number" then
                    duration = tonumber(duration) or 0.5
                end
                if typeof(rotVelocity) ~= "Vector3" then
                    rotVelocity = v3(20000, 20000, 20000)
                end
                if not (target and flingpart0 and flingpart1 and att0 and att1) then
                    return
                end
                local flingpart = flingpart0:Clone()
                flingpart.Transparency = 1
                flingpart.Size = v3(0.01, 0.01, 0.01)
                flingpart.CanCollide = false
                flingpart.Name = "flingpart_" .. flingpart0.Name
                flingpart.Anchored = true
                flingpart.Velocity = v3_0
                flingpart.RotVelocity = v3_0
                flingpart:GetPropertyChangedSignal("Parent"):Connect(function()
                    if not (flingpart and flingpart.Parent) then
                        flingpart = nil
                    end
                end)
                flingpart.Parent = flingpart1
                if flingpart0.Transparency > 0.5 then
                    flingpart0.Transparency = 0.5
                end
                att1.Parent = flingpart
                for i, v in pairs(att0:GetChildren()) do
                    if v:IsA("AlignOrientation") then
                        v.Enabled = false
                    end
                end
                local con = nil
                con = heartbeat:Connect(function()
                    if target and (lastfling == target) and flingpart and flingpart0 and flingpart1 and att0 and att1 then
                        flingpart0.RotVelocity = rotVelocity
                        flingpart.Position = target
                    else
                        con:Disconnect()
                    end
                end)
                local rsteppedRotVel = v3(
                    ((rotVelocity.X > 0) and -1) or 1,
                    ((rotVelocity.Y > 0) and -1) or 1,
                    ((rotVelocity.Z > 0) and -1) or 1
                )
                local con = nil
                con = renderstepped:Connect(function()
                    if target and (lastfling == target) and flingpart and flingpart0 and flingpart1 and att0 and att1 then
                        flingpart0.RotVelocity = rsteppedRotVel
                        flingpart.Position = target
                    else
                        con:Disconnect()
                    end
                end)
                wait(duration)
                if lastfling ~= target then
                    if flingpart then
                        if att1 and (att1.Parent == flingpart) then
                            att1.Parent = flingpart1
                        end
                        flingpart:Destroy()
                    end
                    return
                end
                target = nil
                if not (flingpart and flingpart0 and flingpart1 and att0 and att1) then
                    return
                end
                flingpart0.RotVelocity = v3_0
                att1.Parent = flingpart1
                for i, v in pairs(att0:GetChildren()) do
                    if v:IsA("AlignOrientation") then
                        v.Enabled = true
                    end
                end
                if flingpart then
                    flingpart:Destroy()
                end
            end
        end
    end
end

local c = game:GetService("Players").LocalPlayer.Character
if not c then return end
local ws = game:GetService("Workspace")
c.AncestryChanged:Connect(function()
    if not c:IsDescendantOf(ws) then
        c = nil
    end
end)
local rs = game:GetService("RunService")
local stepped, renderstepped, heartbeat = rs.Stepped, rs.RenderStepped, rs.Heartbeat
local function gp(parent, name, classname)
    if typeof(parent) == "Instance" then
        for i, v in pairs(parent:GetChildren()) do
            if (v.Name == name) and v:IsA(classname) then
                return v
            end
        end
    end
    return nil
end

local function joint(name, parent, Part0, Part1, fakejoint)
    fakejoint.C0 = CFrame.new()
    fakejoint.C1 = CFrame.new()
    local joint = gp(parent, name, "Motor6D")
    if joint then
        fakejoint.C0 = joint.C0
        fakejoint.C1 = joint.C1
    end
    local con = nil
    con = stepped:Connect(function()
        if not c then
            return con:Disconnect()
        end
        local fix = nil
        fix = function()
            if not joint then 
                joint = Instance.new("Motor6D")
                joint.Changed:Connect(fix)
                joint.Destroying:Connect(function() joint = nil end)
            end
            joint.Part0 = Part0
            joint.Part1 = Part1
            joint.C0 = fakejoint.C0
            joint.C1 = fakejoint.C1
            joint.Parent = parent
        end
        fix()
    end)
end

local function part(name)
    local part = gp(c, name, "BasePart")
    if not part then
        part = Instance.new("Part")
        part.Name = name
        part.Transparency = 1
        part.CanCollide = false
        part.Massless = true
        part.Size = Vector3.new(1, 1, 1)
        part.Parent = c
    end
    local size = part.Size
    part.Destroying:Connect(function()
        part = nil
        c = nil
    end)
    local con = nil
    con = stepped:Connect(function()
        if not part then
            return con:Disconnect()
        end
        part.Anchored = false
        part.Name = name
        part.Size = size
        part.CanQuery = false
        part.CanTouch = false
        part.Parent = c
    end)
    return part
end

local Torso = part("Torso")
local RightArm = part("Right Arm")
local LeftArm = part("Left Arm")
local LeftLeg = part("Left Leg")
local RightLeg = part("Right Leg")
local Head = part("Head")
local HumanoidRootPart = part("HumanoidRootPart")

local RootJoint = {}
local RightShoulder = {}
local LeftShoulder = {}
local RightHip = {}
local LeftHip = {}
local Neck = {}

joint("Neck", Torso, Torso, Head, Neck)
joint("RootJoint", HumanoidRootPart, HumanoidRootPart, Torso, RootJoint)
joint("Right Shoulder", Torso, Torso, RightArm, RightShoulder)
joint("Left Shoulder", Torso, Torso, LeftArm, LeftShoulder)
joint("Right Hip", Torso, Torso, RightLeg, RightHip)
joint("Left Hip", Torso, Torso, LeftLeg, LeftHip)

local animate = gp(c, "Animate", "LocalScript")
if animate then
    animate.Disabled = true
end

local hum = c:FindFirstChildOfClass("Humanoid") or Instance.new("Humanoid", c)
local states = {
    [0]=false,[8]=true,
    [10]=false,[12]=false,
    [11]=false,[1]=false,
    [2]=true,[3]=true,
    [7]=true,[6]=false,
    [5]=true,[13]=false,
    [14]=false,[15]=false,
    [4]=false,[16]=false
}
for i, v in pairs(states) do
    hum:SetStateEnabled(i, v)
end
for i, v in pairs(hum:GetPlayingAnimationTracks()) do
    v:Stop()
end
hum.RigType = Enum.HumanoidRigType.R6
hum.BreakJointsOnDeath = false
hum.RequiresNeck = false
hum.MaxHealth = 0
hum.Health = 0
hum:ChangeState(8)

local modes = {
    q = "lay",
    e = "sit",
    r = "rickroll",
    t = "wave",
    y = "dab",
    u = "dance",
    p = "T",
    f = "float",
    g = "floss",
    h = "emote",
    j = "pushups",
    k = "kazotsky",
    l = "L"
}
for i, v in pairs(modes) do
    if type(i) == "string" then
        modes[Enum.KeyCode[i:upper()]] = v
    end
end
local uis, mode = game:GetService("UserInputService"), ""
uis.InputBegan:Connect(function(key)
    if uis:GetFocusedTextBox() then return end
    key = key.KeyCode
    if mode == modes[key] then
        mode = ""
    else
        mode = modes[key] or mode
    end
end)

local cf, v3, euler, sin, sine, abs = CFrame.new, Vector3.new, CFrame.fromEulerAnglesXYZ, math.sin, 0, math.abs
local con = nil
con = renderstepped:Connect(function(deltaTime)
    if not c then
        return con:Disconnect()
    end
    local vel = HumanoidRootPart.Velocity
    sine += deltaTime
    deltaTime *= 10
    if vel.Magnitude > 2 then
        if abs(vel.X) + abs(vel.Z) > abs(vel.Y) then -- walk
            
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * euler(-0.6108652381980153 * sin(sine * 8), 1.5707963267948966 + 0.17453292519943295 * sin(sine * 8), 0), deltaTime) 
            RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.2 * sin(sine * 16), 0) * euler(-1.6580627893946132 + 0.04363323129985824 * sin(sine * 16), 0.03490658503988659 * sin(sine * 8), -3.141592653589793 - 0.08726646259971647 * sin((sine + 0.25) * 8)), deltaTime) 
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * euler(0.6108652381980153 * sin(sine * 8), -1.5707963267948966 + 0.17453292519943295 * sin(sine * 8), 0), deltaTime) 
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.1) * 16), -0.03490658503988659 * sin((sine + 0.05) * 8), -3.141592653589793 + 0.08726646259971647 * sin((sine + 0.25) * 8)), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.2 * sin((sine + 0.125) * 8), 0) * euler(1.5707963267948966 + 0.6981317007977318 * sin(sine * 8), 1.5707963267948966 + 0.08726646259971647 * sin(sine * 8), -1.5707963267948966), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.2 * sin((sine + 0.125) * 8), 0) * euler(1.5707963267948966 - 0.6981317007977318 * sin(sine * 8), -1.5707963267948966 + 0.08726646259971647 * sin(sine * 8), 1.5707963267948966), deltaTime) 
            --RightArm,1,0,0,8,0,-35,0,8,0.5,0,0,8,90,10,0,8,0,0,0,8,0,0,0,8,Torso,0,0,0,8,-95,2.5,0,16,0,0.2,0,16,0,2,0,8,0,0,0,8,-180,-5,0.25,8,Fedora_Handle,8.657480066176504e-09,0,0,8,-6,0,0,8,-0.15052366256713867,0,0,8,0,0,0,8,-0.010221302509307861,0,0,8,0,0,0,8,LeftArm,-1,0,0,8,-0,35,0,8,0.5,0,0,8,-90,10,0,8,0,0,0,8,0,0,0,8,Head,0,0,0,8,-90,-5,0.1,16,1,0,0,8,0,-2,0.05,8,0,0,0,8,-180,5,0.25,8,RightLeg,1,0,0,8,90,40,0,8,-1,0.2,0.125,8,90,5,0,8,0,0,0,8,-90,0,0,8,LeftLeg,-1,0,0,8,90,-40,0,8,-1,-0.2,0.125,8,-90,5,0,8,0,0,0,8,90,0,0,8
            
        elseif vel.Y > 0 then -- jump
            
            RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0) * euler(-1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.25) * 4), 0.08726646259971647 * sin(sine * 4), -3.141592653589793), deltaTime) 
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.3962634015954636 - 0.08726646259971647 * sin((sine + 0.5) * 4), -0.08726646259971647 * sin((sine + 0.25) * 4), -3.141592653589793), deltaTime) 
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * euler(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * euler(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime) 
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * euler(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * euler(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime) 
            --Fedora_Handle,8.657480066176504e-09,0,0,4,-6,0,0,4,-0.15052366256713867,0,0,4,0,0,0,4,-0.010221302509307861,0,0,4,0,0,0,4,Torso,0,0,0,4,-90,5,0.25,4,0,0,0,4,0,5,0,4,0,0,0,4,-180,0,0,4,Head,0,0,0,4,-80,-5,0.5,4,1,0,0,4,0,-5,0.25,4,0,0,0,4,-180,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,5,0.25,4,0,0,0,4,-90,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,-5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,5,0.25,4,0,0,0,4,90,0,0,4
            
        else -- fall
            
            RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0) * euler(-1.6580627893946132 + 0.08726646259971647 * sin((sine + 0.25) * 4), 0.08726646259971647 * sin(sine * 4), -3.141592653589793), deltaTime) 
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.5) * 4), -0.08726646259971647 * sin((sine + 0.25) * 4), -3.141592653589793), deltaTime) 
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * euler(3.839724354387525 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * euler(1.7453292519943295, 1.6580627893946132 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime) 
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * euler(3.839724354387525 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * euler(1.7453292519943295, -1.6580627893946132 + 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime) 
            --Fedora_Handle,8.657480066176504e-09,0,0,4,-6,0,0,4,-0.15052366256713867,0,0,4,0,0,0,4,-0.010221302509307861,0,0,4,0,0,0,4,Torso,0,0,0,4,-95,5,0.25,4,0,0,0,4,0,5,0,4,0,0,0,4,-180,0,0,4,Head,0,0,0,4,-100,-5,0.5,4,1,0,0,4,0,-5,0.25,4,0,0,0,4,-180,0,0,4,LeftArm,-1,0,0,4,220,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,RightLeg,1,0,0,4,100,0,0,4,-1,0,0,4,95,5,0.25,4,0,0,0,4,-90,0,0,4,RightArm,1,0,0,4,220,-5,0.5,4,0.5,0,0,4,100,-5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,100,0,0,4,-1,0,0,4,-95,5,0.25,4,0,0,0,4,90,0,0,4
            
        end
    else --idle
        
        if mode == "" then
            
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.9999998807907104, 0.4999999403953552, -2.765073337516225e-32) * euler(-1.5707963267948966, 1.3962634015954636 + 0.08726646259971647 * sin((sine + 1) * 2), 1.5707963267948966), deltaTime) 
            RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 1.1739236345820182e-24 + 0.1 * sin((sine + 0.35) * 2), 0.1 * sin(sine * 2)) * euler(-1.5707963267948966 + 0.08726646259971647 * sin(sine * 2), 0.017453292519943295 * sin(sine * 2), -2.792526803190927), deltaTime) 
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9999998807907104, 0.4999999403953552, -1.2568507556530796e-32) * euler(1.5707963267948966, -1.3962634015954636 + 0.08726646259971647 * sin((sine + 1) * 2), 1.2217304763960306), deltaTime) 
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.5707963267948966 + 0.08726646259971647 * sin((sine - 0.375) * 2), 0, 2.792526803190927 + 0.5235987755982988 * sin(sine * 0.6)), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(0.9999998807907104, -1.100000023841858 - 0.1 * sin((sine + 0.35) * 2), 0) * euler(-1.0471975511965976 - 0.08726646259971647 * sin(sine * 2), 1.3962634015954636, 1.3962634015954636), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1.100000023841858 - 0.1 * sin((sine + 0.35) * 2), 0) * euler(-1.7453292519943295 - 0.08726646259971647 * sin(sine * 2), -1.3962634015954636, -1.3962634015954636), deltaTime) 
            --RightArm,0.9999998807907104,0,0,2,-90,0,0,2,0.4999999403953552,0,0,2,80,5,1,2,-2.765073337516225e-32,0,0,2,90,0,0,2,Torso,0,0,0,2,-90,5,0,2,1.1739236345820182e-24,0.1,0.35,2,0,1,0,2,0,0.1,0,2,-160,0,0,2,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,LeftArm,-0.9999998807907104,0,0,2,90,0,0,2,0.4999999403953552,0,0,2,-80,5,1,2,-1.2568507556530796e-32,0,0,2,70,0,0,2,Head,0,0,0,2,-90,5,-0.375,2,1,0,0,2,0,0,0,2,0,0,0,2,160,30,0,0.6,RightLeg,0.9999998807907104,0,0,2,-60,-5,0,2,-1.100000023841858,-0.1,0.35,2,80,0,0,2,0,0,0,2,80,0,0,2,LeftLeg,-1,0,0,2,-100,-5,0,2,-1.100000023841858,-0.1,0.35,2,-80,0,0,2,0,0,0,2,-80,0,0,2

        elseif mode == "lay" then
            
            RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -2.4 - 0.1 * sin(sine), 0) * euler(-0.04363323129985824 + 0.08726646259971647 * sin(sine), 0, -3.141592653589793), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1.25, -1.25, 0) * euler(1.5707963267948966 - 0.08726646259971647 * sin(sine), 1.0471975511965976, -1.5707963267948966), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * euler(1.5707963267948966 - 0.08726646259971647 * sin(sine), -1.2217304763960306, 1.2217304763960306), deltaTime) 
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1 + 0.05 * sin(sine - 0.5), 0.7 + 0.05 * sin(sine), 0) * euler(1.5707963267948966 - 0.08726646259971647 * sin(sine + 1), -0.3490658503988659, 0.8726646259971648), deltaTime) 
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, -0.075 * sin(sine)) * euler(-1.5707963267948966 - 0.17453292519943295 * sin(sine), 0, -3.141592653589793), deltaTime) 
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.7 - 0.1 * sin(sine), 0.5, -0.2) * euler(1.3962634015954636, 1.0471975511965976 + 0.08726646259971647 * sin(sine + 0.5), -1.0471975511965976), deltaTime) 
            --Torso,0,0,0,1,-2.5,5,0,1,-2.4,-0.1,0,1,0,0,0,1,0,0,0,1,-180,0,0,1,RightLeg,1.25,0,0,1,90,-5,0,1,-1.25,0,0,1,60,0,0,1,0,0,0,1,-90,0,0,1,LeftLeg,-1,0,0,1,90,-5,0,1,-1,0,0,1,-70,0,0,1,0,0,0,1,70,0,0,1,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1,0.05,-0.5,1,90,-5,1,1,0.7,0.05,0,1,-20,0,0,1,0,0,0,1,50,0,0,1,Head,0,0,0,1,-90,-10,0,1,1,0,0,1,0,0,0,1,0,-0.075,0,1,-180,0,0,1,RightArm,0.7,-0.1,0,1,80,0,0,1,0.5,0,0,1,60,5,0.5,1,-0.2,0,0,1,-60,0,0,1

        elseif mode == "sit" then
            
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9 + 0.1 * sin(sine), 0.25 + 0.1 * sin(sine), 0) * euler(1.3089969389957472, -1.6580627893946132 - 0.08726646259971647 * sin(sine), 1.5707963267948966), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-0.7, 0.25, -0.7 - 0.3 * sin(sine)) * euler(1.5707963267948966 - 0.17453292519943295 * sin(sine), -1.7453292519943295, 1.5707963267948966), deltaTime) 
            RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -1.8 - 0.1 * sin(sine), 0) * euler(-1.3962634015954636, 0, -3.141592653589793), deltaTime) 
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.6580627893946132 + 0.17453292519943295 * sin(sine + 1.25), 0, -3.141592653589793 + 0.5235987755982988 * sin(sine * 0.25)), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.7, 0) * euler(2.9670597283903604 + 0.04363323129985824 * sin(sine), 1.6580627893946132, -1.5707963267948966), deltaTime) 
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.9 - 0.1 * sin(sine), 0.25 + 0.1 * sin(sine), 0) * euler(1.3089969389957472, 1.6580627893946132 + 0.08726646259971647 * sin(sine), -1.5707963267948966), deltaTime) 
            --LeftArm,-0.9,0.1,0,1,75,0,0,1,0.25,0.1,0,1,-95,-5,0,1,0,0,0,1,90,0,0,1,LeftLeg,-0.7,0,0,1,90,-10,0,1,0.25,0,0,1,-100,0,0,1,-0.7,-0.3,0,1,90,0,0,1,Torso,0,0,0,1,-80,0,0,1,-1.8,-0.1,0,1,0,0,0,1,0,0,0,1,-180,0,0,1,Head,0,0,0,1,-95,10,1.25,1,1,0,0,1,0,0,0,1,0,0,0,1,-180,30,0,0.25,RightLeg,1,0,0,1,170,2.5,0,1,-0.7,0,0,1,95,0,0,1,0,0,0,1,-90,0,0,1,Fedora_Handle,8.657480066176504e-09,4,0,0.5,-6,0,0,1,-0.15052366256713867,0,0,0.5,0,360,0,0.5,-0.010221302509307861,0,0,1,0,0,0,1,RightArm,0.9,-0.1,0,1,75,0,0,1,0.25,0.1,0,1,95,5,0,1,0,0,0,1,-90,0,0,1

        elseif mode == "rickroll" then
            
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.9 - 0.2 * sin(sine * 2), 0) * euler(1.5707963267948966, 1.6580627893946132 - 0.17453292519943295 * sin(sine + 0.8), -1.5707963267948966), deltaTime) 
            RootJoint.C0 = RootJoint.C0:Lerp(cf(0.3 * sin(sine + 0.8), -0.1 + 0.2 * sin(sine * 2), 0) * euler(-1.5707963267948966, 0, -3.141592653589793), deltaTime) 
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.5707963267948966 + 0.08726646259971647 * sin((sine - 0.5) * 2), 0.08726646259971647 * sin(sine - 1), -3.141592653589793 + 0.2617993877991494 * sin(sine * 5)), deltaTime) 
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1 + 0.1 * sin(sine * 7), 0.2 - 0.1 * sin(sine + 0.8), -0.25) * euler(1.5707963267948966 + 0.5235987755982988 * sin(sine * 7), -0.6981317007977318, 0.3490658503988659 * sin(sine * 7)), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.9 - 0.2 * sin(sine * 2), 0) * euler(1.5707963267948966, -1.6580627893946132 - 0.17453292519943295 * sin(sine + 0.8), 1.5707963267948966), deltaTime) 
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1 + 0.1 * sin(sine * 7), 0.2 + 0.1 * sin(sine + 0.8), -0.25) * euler(1.5707963267948966 - 0.5235987755982988 * sin(sine * 7), 0.6981317007977318, 0.3490658503988659 * sin(sine * 7)), deltaTime) 
            --RightLeg,1,0,0,1,90,0,0,1,-0.9,-0.2,0,2,95,-10,0.8,1,0,0,0,1,-90,0,0,1,Torso,0,0.3,0.8,1,-90,0,0,1,-0.1,0.2,0,2,0,0,0,1,0,0,0,1,-180,0,0,1,Head,0,0,0,1,-90,5,-0.5,2,1,0,0,1,0,5,-1,1,0,0,0,1,-180,15,0,5,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1,0.1,0,7,90,30,0,7,0.2,-0.1,0.8,1,-40,0,0,1,-0.25,0,0,1,0,20,0,7,LeftLeg,-1,0,0,1,90,0,0,1,-0.9,-0.2,0,2,-95,-10,0.8,1,0,0,0,1,90,0,0,1,RightArm,1,0.1,0,7,90,-30,0,7,0.2,0.1,0.8,1,40,0,0,1,-0.25,0,0,1,-0,20,0,7
            
        elseif mode == "wave" then
            
            RootJoint.C0 = RootJoint.C0:Lerp(cf(0.1 * sin(sine * 4), 0, 0) * euler(-1.5707963267948966, -0.08726646259971647 + 0.08726646259971647 * sin(sine * 4), -3.141592653589793), deltaTime) 
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * euler(1.5707963267948966, -1.6580627893946132 + 0.08726646259971647 * sin((sine - 0.2) * 4), 1.5707963267948966), deltaTime) 
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.5707963267948966, 0.04363323129985824 - 0.08726646259971647 * sin((sine + 0.1) * 4), -3.141592653589793), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -1.1 + 0.1 * sin(sine * 4), 0) * euler(1.5707963267948966, 1.5707963267948966 + 0.08726646259971647 * sin(sine * 4), -1.5707963267948966), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.925 - 0.07 * sin(sine * 4), 0) * euler(1.5707963267948966, -1.7453292519943295 + 0.06981317007977318 * sin(sine * 4), 1.5707963267948966), deltaTime) 
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1 + 0.1 * sin((sine + 0.3) * 4), 1.4, 0) * euler(1.5707963267948966, 1.4835298641951802 - 0.2617993877991494 * sin((sine + 0.3) * 4), 1.5707963267948966), deltaTime) 
            --Fedora_Handle,8.657480066176504e-09,0,0,4,-6,0,0,4,-0.15052366256713867,0,0,4,0,0,0,4,-0.010221302509307861,0,0,4,0,0,0,4,Torso,0,0.1,0,4,-90,0,0,4,0,0,0,4,-5,5,0,4,0,0,0,4,-180,0,0,4,LeftArm,-1,0,0,4,90,0,0,4,0.5,0,0,4,-95,5,-0.2,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-90,0,0,4,1,0,0,4,2.5,-5,0.1,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,0,0,4,-1.1,0.1,0,4,90,5,0,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,0,0,4,-0.925,-0.07,0,4,-100,4,0,4,0,0,0,4,90,0,0,4,RightArm,1,0.1,0.3,4,90,0,0,4,1.4,0,0,4,85,-15,0.3,4,0,0,0,4,90,0,0,4
        
        elseif mode == "dab" then
            
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * euler(-1.7453292519943295, 0.17453292519943295 - 0.04363323129985824 * sin(sine * 2), -1.4835298641951802), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.9000000953674316 - 0.1 * sin(sine * 2), 0) * euler(-1.3962634015954636, 1.3962634015954636, 1.5707963267948966), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1.0000001192092896 - 0.1 * sin(sine * 2), 0) * euler(-1.5707963267948966, -1.3962634015954636, -1.5707963267948966), deltaTime) 
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-2.0943951023931953 + 0.08726646259971647 * sin((sine - 1) * 2), -0.08726646259971647, 2.792526803190927), deltaTime) 
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 1.2000000476837158, 0) * euler(2.6179938779914944 + 0.08726646259971647 * sin((sine - 1) * 2), 0.6981317007977318, -1.3962634015954636), deltaTime) 
            RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.1 * sin(sine * 2), 0) * euler(-1.6580627893946132, 0.08726646259971647, 3.0543261909900767), deltaTime) 
            --LeftArm,-1.5,0,0,2,-100,0,0,2,0.5,0,0,2,10,-2.5,0,2,0,0,0,2,-85,0,0,2,RightLeg,1,0,0,2,-80,0,0,2,-0.9000000953674316,-0.1,0,2,80,0,0,2,0,0,0,2,90,0,0,2,LeftLeg,-1,0,0,2,-90,0,0,2,-1.0000001192092896,-0.1,0,2,-80,0,0,2,0,0,0,2,-90,0,0,2,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,Head,0,0,0,2,-120,5,-1,2,1,0,0,2,-5,0,0,2,0,0,0,2,160,0,0,2,RightArm,1,0,0,2,150,5,-1,2,1.2000000476837158,0,0,2,40,0,0,2,0,0,0,2,-80,0,0,2,Torso,0,0,0,2,-95,0,0,2,0,0.1,0,2,5,0,0,2,0,0,0,2,175,0,0,2
            
        elseif mode == "dance" then
            
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 1 + 0.5 * sin((sine + 0.078125) * 6.4), -0.5) * euler(-0.3490658503988659 + 1.0471975511965976 * sin((sine + 0.078125) * 6.4), -1.6580627893946132 + 0.6108652381980153 * sin((sine + 0.078125) * 6.4), -1.5707963267948966), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * euler(1.5707963267948966 - 0.17453292519943295 * sin((sine + 0.078125) * 6.4), 1.8325957145940461 + 0.2617993877991494 * sin(sine * 6.4), -1.5707963267948966), deltaTime) 
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.5882496193148399 + 0.17453292519943295 * sin((sine - 0.078125) * 6.4), 0.08726646259971647 + 0.17453292519943295 * sin((sine + 0.078125) * 6.4), 3.141592653589793), deltaTime) 
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5 + 0.15 * sin((sine + 0.546875) * 12.8), 0) * euler(1.9198621771937625 + 0.2617993877991494 * sin((sine + 0.546875) * 12.8), 1.6580627893946132 - 0.2617993877991494 * sin(sine * 6.4), -1.5707963267948966), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * euler(1.5707963267948966 - 0.12217304763960307 * sin((sine + 0.078125) * 6.4), -1.8325957145940461 + 0.2617993877991494 * sin(sine * 6.4), 1.5707963267948966), deltaTime) 
            RootJoint.C0 = RootJoint.C0:Lerp(cf(-0.6 * sin(sine * 6.4), 0, 0) * euler(-1.5882496193148399 + 0.08726646259971647 * sin((sine + 0.078125) * 6.4), -0.08726646259971647 * sin(sine * 6.4), 3.141592653589793 + 0.08726646259971647 * sin(sine * 6.4)), deltaTime) 
            --LeftArm,-1,0,0,6.4,-20,60,0.078125,6.4,1,0.5,0.078125,6.4,-95,35,0.078125,6.4,-0.5,0,0,6.4,-90,0,0,6.4,RightLeg,1,0,0,6.4,90,-10,0.078125,6.4,-1,0,0,6.4,105,15,0,6.4,0,0,0,6.4,-90,0,0,6.4,Head,0,0,0,6.4,-91,10,-0.078125,6.4,1,0,0,6.4,5,10,0.078125,6.4,0,0,0,6.4,180,0,0,6.4,RightArm,1,0,0,6.4,110,15,0.546875,12.8,0.5,0.15,0.546875,12.8,95,-15,0,6.4,0,0,0,6.4,-90,0,0,6.4,LeftLeg,-1,0,0,6.4,90,-7,0.078125,6.4,-1,0,0,6.4,-105,15,0,6.4,0,0,0,6.4,90,0,0,6.4,Fedora_Handle,8.657480066176504e-09,0,0,6.4,-6,0,0,6.4,-0.15052366256713867,0,0,6.4,0,0,0,6.4,-0.010221302509307861,0,0,6.4,-1,0,0,6.4,Torso,0,-0.6,0,6.4,-91,5,0.078125,6.4,0,0,0,6.4,-0,-5,0,6.4,0,0,0,6.4,180,5,0,6.4
            
        elseif mode == "T" then
            
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.5, 0.5, 0) * euler(1.5707963267948966, 3.141592653589793, -1.5707963267948966), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * euler(0, 1.5707963267948966, 0), deltaTime) 
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * euler(1.5707963267948966, 3.141592653589793, 1.5707963267948966), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * euler(0, -1.5707963267948966, 0), deltaTime) 
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.5707963267948966, 0, -3.141592653589793), deltaTime) 
            RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0) * euler(-1.5707963267948966, 0, -3.141592653589793), deltaTime) 
            --RightArm,1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,-90,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,90,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1

        elseif mode == "float" then
            
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.5 - 0.5 * sin((sine + 0.1) * 2), 0.5 + 0.5 * sin((sine - 0.5) * 2), 0) * euler(1.5707963267948966, 3.141592653589793 + 0.5235987755982988 * sin((sine - 1) * 2), -1.5707963267948966 - 0.2617993877991494 * sin(sine * 0.5)), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * euler(1.5707963267948966 - 0.17453292519943295 * sin(sine * 2), 1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.7) * 2), -1.5707963267948966), deltaTime) 
            RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 3 + 0.7 * sin((sine + 0.15) * 2), 0) * euler(-1.5707963267948966 + 0.08726646259971647 * sin((sine - 0.5) * 2), 0, -3.141592653589793 + 0.2617993877991494 * sin(sine * 0.5)), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * euler(1.5707963267948966 - 0.08726646259971647 * sin(sine * 2), -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.7) * 2), 1.5707963267948966), deltaTime) 
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5 + 0.5 * sin((sine + 0.1) * 2), 0.5 + 0.5 * sin((sine - 0.5) * 2), 0) * euler(1.5707963267948966, 3.141592653589793 - 0.5235987755982988 * sin((sine - 1) * 2), 1.5707963267948966 - 0.2617993877991494 * sin(sine * 0.5)), deltaTime) 
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.5707963267948966 - 0.17453292519943295 * sin((sine + 0.5) * 2), 0.17453292519943295 * sin(sine * 1), -3.141592653589793 + 0.5235987755982988 * sin(sine * 0.3)), deltaTime) 
            --RightArm,1.5,-0.5,0.1,2,90,0,0,2,0.5,0.5,-0.5,2,180,30,-1,2,0,0,0,2,-90,-15,0,0.5,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,RightLeg,1,0,0,2,90,-10,0,2,-1,0,0,2,90,-5,0.7,2,0,0,0,2,-90,0,0,2,Torso,0,0,0,2,-90,5,-0.5,2,3,0.7,0.15,2,0,0,0,1,0,0,0,2,-180,15,0,0.5,LeftLeg,-1,0,0,2,90,-5,0,2,-1,0,0,2,-90,5,0.7,2,0,0,0,2,90,0,0,2,LeftArm,-1.5,0.5,0.1,2,90,0,0,2,0.5,0.5,-0.5,2,180,-30,-1,2,0,0,0,2,90,-15,0,0.5,Head,0,0,0,2,-90,-10,0.5,2,1,0,0,2,0,10,0,1,0,0,0,2,-180,30,0,0.3
            
        elseif mode == "floss" then
            
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.5707963267948966 + 0.04363323129985824 * sin((sine + 0.125) * 16), -0.2617993877991494 * sin((sine + 0.05) * 8), -3.141592653589793 + 0.5235987755982988 * sin(sine * 1.1)), deltaTime) 
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.9 + 0.4 * sin(sine * 8), 0.5, -0.5 * sin((sine - 0.35) * 4)) * euler(1.5707963267948966 + 0.6981317007977318 * sin(sine * 4), 1.5707963267948966 + 0.8726646259971648 * sin(sine * 8), -1.5707963267948966 + 0.17453292519943295 * sin((sine - 0.35) * 4)), deltaTime) 
            RootJoint.C0 = RootJoint.C0:Lerp(cf(-0.1 * sin((sine + 0.4) * 8), 0, 0) * euler(-1.5707963267948966, 0.3490658503988659 * sin(sine * 8), -3.141592653589793), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.4 * sin((sine - 0.01) * 8), 0) * euler(1.5707963267948966, -1.7453292519943295 + 0.5235987755982988 * sin(sine * 8), 1.5707963267948966), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.4 * sin((sine - 0.01) * 8), 0) * euler(1.5707963267948966, 1.7453292519943295 + 0.5235987755982988 * sin(sine * 8), -1.5707963267948966), deltaTime) 
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9 + 0.4 * sin(sine * 8), 0.5, 0.5 * sin((sine + 0.25) * 4)) * euler(1.5707963267948966, -1.5707963267948966 + 0.8726646259971648 * sin(sine * 8), 1.5707963267948966 + 0.6981317007977318 * sin((sine + 0.25) * 4)), deltaTime) 
            --Head,0,0,0,8,-90,2.5,0.125,16,1,0,0,8,0,-15,0.05,8,0,0,0,8,-180,30,0,1.1,RightArm,0.9,0.4,0,8,90,40,0,4,0.5,0,0,8,90,50,0,8,0,-0.5,-0.35,4,-90,10,-0.35,4,Fedora_Handle,8.657480066176504e-09,0,0,8,-6,0,0,8,-0.15052366256713867,0,0,8,0,0,0,8,-0.010221302509307861,0,0,8,0,0,0,8,Torso,0,-0.1,0.4,8,-90,0,0,8,0,0,0,4,0,20,0,8,0,0,0,8,-180,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.4,-0.01,8,-100,30,0,8,0,0,0,8,90,0,0,8,RightLeg,1,0,0,8,90,0,0,8,-1,0.4,-0.01,8,100,30,0,8,0,0,0,8,-90,0,0,8,LeftArm,-0.9,0.4,0,8,90,0,0.25,4,0.5,0,0,8,-90,50,0,8,0,0.5,0.25,4,90,40,0.25,4
            
        elseif mode == "emote" then
            
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.5707963267948966, -0.4363323129985824 * sin(sine * 8), -3.141592653589793), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.3 * sin(sine * 8), 0) * euler(1.5707963267948966, 1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), -1.5707963267948966), deltaTime) 
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.5, 1, 0) * euler(-0.5235987755982988, -1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793), deltaTime) 
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.5, 1, 0) * euler(-0.5235987755982988, 1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793), deltaTime) 
            RootJoint.C0 = RootJoint.C0:Lerp(cf(-0.1 * sin(sine * 8), 0.2 * sin((sine + 0.1) * 16), 0) * euler(-1.5707963267948966, 0.2617993877991494 * sin(sine * 8), -3.141592653589793), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.3 * sin(sine * 8), 0) * euler(1.5707963267948966, -1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), 1.5707963267948966), deltaTime) 
            --Head,0,0,0,8,-90,0,0,8,1,0,0,8,0,-25,0,8,0,0,0,8,-180,0,0,8,RightLeg,1,0,0,8,90,0,0,8,-1,0.3,0,8,90,30,0,8,0,0,0,8,-90,0,0,8,LeftArm,-0.5,0,0,8,-30,0,0,8,1,0,0,8,-90,-30,0,8,0,0,0,8,180,0,0,8,RightArm,0.5,0,0,8,-30,0,0,8,1,0,0,16,90,-30,0,8,0,0,0,8,180,0,0,8,Torso,0,-0.1,0,8,-90,0,0,8,0,0.2,0.1,16,0,15,0,8,0,0,0,8,-180,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.3,0,8,-90,30,0,8,0,0,0,8,90,0,0,8,Fedora_Handle,8.657480066176504e-09,0,0,8,-6,0,0,8,-0.15052366256713867,0,0,8,0,0,0,8,-0.010221302509307861,0,0,8,0,0,0,8
            
        elseif mode == "pushups" then
            
            RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -1.7 + 0.5 * sin(sine * 3.2), 0.3 * sin(sine * 3.2)) * euler(3.4033920413889427 + 0.17453292519943295 * sin(sine * 3.2), 0, 3.141592653589793), deltaTime) 
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1 - 0.25 * sin(sine * 3.2), 0.5 + 0.2 * sin(sine * 3.2), -0.75 * sin(sine * 3.2)) * euler(3.0543261909900767 - 0.17453292519943295 * sin(sine * 3.2), 1.3962634015954636 + 0.17453292519943295 * sin(sine * 3.2), -1.5707963267948966), deltaTime) 
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1 + 0.25 * sin(sine * 3.2), 0.5 + 0.2 * sin(sine * 3.2), -0.75 * sin(sine * 3.2)) * euler(3.0543261909900767 - 0.17453292519943295 * sin(sine * 3.2), -1.3962634015954636 - 0.17453292519943295 * sin(sine * 3.2), 1.5707963267948966), deltaTime) 
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.6580627893946132 + 0.17453292519943295 * sin((sine - 0.3125) * 3.2), 0, 3.141592653589793), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * euler(-1.5707963267948966, -1.7453292519943295, -1.5707963267948966), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * euler(1.5707963267948966, 1.3962634015954636, -1.5707963267948966), deltaTime) 
            --Torso,0,0,0,3.2,195,10,0,3.2,-1.7,0.5,0,3.2,-0,0,0,3.2,0,0.3,0,3.2,180,0,0,3.2,RightArm,1,-0.25,0,3.2,175,-10,0,3.2,0.5,0.2,0,3.2,80,10,0,3.2,0,-0.75,0,3.2,-90,0,0,0,LeftArm,-1,0.25,0,3.2,175,-10,0,3.2,0.5,0.2,0,3.2,-80,-10,0,3.2,0,-0.75,0,3.2,90,0,0,3.2,Head,0,0,0,3.2,-95,10,-0.3125,3.2,1,0,0,3.2,-0,0,0,3.2,0,0,0,3.2,180,0,0,3.2,LeftLeg,-1,0,0,3.2,-90,0,0,3.2,-1,0,0,3.2,-100,0,0,3.2,0,0,0,3.2,-90,0,0,3.2,RightLeg,1,0,0,3.2,90,0,0,3.2,-1,0,0,3.2,80,0,0,3.2,0,0,0,3.2,-90,0,0,3.2,Fedora_Handle,8.657480066176504e-09,0,0,3.2,-6,0,0,3.2,-0.15052366256713867,0,0,3.2,0,0,0,3.2,-0.010221302509307861,0,0,3.2,-1,0,0,3.2
            
        elseif mode == "kazotsky" then
            
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.5 - 0.15 * sin(sine * 6.4), 0.3, 0) * euler(2.792526803190927 + 0.08726646259971647 * sin(sine * 12.8), -0.17453292519943295 - 0.08726646259971647 * sin(sine * 6.4), 1.4835298641951802 - 0.08726646259971647 * sin(sine * 12.8)), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * euler(2.0943951023931953 - 0.8726646259971648 * sin(sine * 6.4), 1.6580627893946132 - 0.08726646259971647 * sin(sine * 6.4), -1.5707963267948966), deltaTime) 
            RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.2 + 0.3 * sin((sine + 0.171875) * 12.8), 0) * euler(-1.4835298641951802 + 0.08726646259971647 * sin((sine + 0.15625) * 12.8), 0.08726646259971647 * sin(sine * 6.4), 3.141592653589793 + 0.17453292519943295 * sin(sine * 6.4)), deltaTime) 
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.5 - 0.15 * sin(sine * 6.4), 0.3, 0) * euler(2.792526803190927 + 0.08726646259971647 * sin(sine * 12.8), 0.17453292519943295 - 0.08726646259971647 * sin(sine * 6.4), -1.4835298641951802 + 0.08726646259971647 * sin(sine * 12.8)), deltaTime) 
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.5882496193148399 + 0.08726646259971647 * sin(sine * 12.8), -0.08726646259971647 * sin((sine + 0.15625) * 6.4), 3.141592653589793), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * euler(2.0943951023931953 + 0.8726646259971648 * sin(sine * 6.4), -1.6580627893946132 - 0.08726646259971647 * sin(sine * 6.4), 1.5707963267948966), deltaTime) 
            --LeftArm,-0.5,-0.15,0,6.4,160,5,0,12.8,0.3,0,0,6.4,-10,-5,0,6.4,0,0,0,6.4,85,-5,0,12.8,RightLeg,1,0,0,6.4,120,-50,0,6.4,-1,0,0,6.4,95,-5,0,6.4,0,0,0,6.4,-90,0,0,6.4,Fedora_Handle,8.657480066176504e-09,0,0,6.4,-6,0,0,6.4,-0.15052366256713867,0,0,6.4,0,0,0,6.4,-0.010221302509307861,0,0,6.4,-1,0,0,6.4,Torso,0,0,0,6.4,-85,5,0.15625,12.8,0.2,0.3,0.171875,12.8,-0,5,0,6.4,0,0,0,6.4,180,10,0,6.4,RightArm,0.5,-0.15,0,6.4,160,5,0,12.8,0.3,0,0,6.4,10,-5,0,6.4,0,0,0,6.4,-85,5,0,12.8,Head,0,0,0,6.4,-91,5,0,12.8,1,0,0,6.4,-0,-5,0.15625,6.4,0,0,0,6.4,180,0,0,6.4,LeftLeg,-1,0,0,6.4,120,50,0,6.4,-1,0,0,6.4,-95,-5,0,6.4,0,0,0,6.4,90,0,0,6.4
            
        elseif mode == "L" then
            
            RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.25 + 0.25 * sin((sine + 0.25) * 8), 0) * euler(-1.5707963267948966, 0.17453292519943295 * sin(sine * 4), -3.141592653589793), deltaTime) 
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.7, 0.5, -0.3) * euler(1.7453292519943295, -0.8726646259971648, 1.5707963267948966), deltaTime) 
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.5707963267948966 + 0.04363323129985824 * sin((sine + 0.1) * 8), -0.17453292519943295 * sin((sine + 0.1) * 4), -3.141592653589793), deltaTime) 
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.7, 0.8, 0) * euler(1.0471975511965976 + 0.03490658503988659 * sin(sine * 8), 2.0943951023931953 + 0.10471975511965978 * sin((sine + 0.1) * 4), 1.5707963267948966), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * euler(2.2689280275926285 - 0.8726646259971648 * sin(sine * 4), 1.9198621771937625 - 0.3490658503988659 * sin(sine * 4), -1.5707963267948966), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * euler(2.2689280275926285 + 0.8726646259971648 * sin(sine * 4), -1.9198621771937625 - 0.3490658503988659 * sin(sine * 4), 1.5707963267948966), deltaTime) 
            --Torso,0,0,0,4,-90,0,0,4,0.25,0.25,0.25,8,0,10,0,4,0,0,0,4,-180,0,0,4,LeftArm,-0.7,0,0,4,100,0,0,4,0.5,0,0,4,-50,0,0,4,-0.3,0,0,4,90,0,0,4,Fedora_Handle,8.657480066176504e-09,0,0,4,-6,0,0,4,-0.15052366256713867,0,0,4,0,0,0,4,-0.010221302509307861,0,0,4,0,0,0,4,Head,0,0,0,4,-90,2.5,0.1,8,1,0,0,4,0,-10,0.1,4,0,0,0,4,-180,0,0,4,RightArm,0.7,0,0,4,60,2,0,8,0.8,0,0,4,120,6,0.1,4,0,0,0,4,90,0,0,4,RightLeg,1,0,0,4,130,-50,0,4,-1,0,0,4,110,-20,0,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,130,50,0,4,-1,0,0,4,-110,-20,0,4,0,0,0,4,90,0,0,4

        end
        
    end
end)
    print("Clicked")
end)


Section:NewButton("FE Sad", "ButtonInfo", function()
    --[[
    FE SAD
    made by MyWorld#4430
    discord.gg/pYVHtSJmEY
    works on R6, R15, no hats needed
    controls: F to fly
]]

if "its sad enough to use MyWorld's reanimate" then
    --reanimate by MyWorld#4430 discord.gg/pYVHtSJmEY
    local Vector3_101 = Vector3.new(1, 0, 1)
    local netless_Y = Vector3.new(0, 25.1, 0)
    local function getNetlessVelocity(realPartVelocity) --edit this if you have a better netless method
        local netlessVelocity = realPartVelocity * Vector3_101
        local mag = netlessVelocity.Magnitude
        if mag > 0.1 then
            netlessVelocity *= 100 / mag
        end
        netlessVelocity += netless_Y
        return netlessVelocity
    end
    local simradius = "shp" --simulation radius (net bypass) method
    --"shp" - sethiddenproperty
    --"ssr" - setsimulationradius
    --false - disable
    local noclipAllParts = true --set it to true if you want noclip
    local flingpart = "HumanoidRootPart" --the part that will be used to fling (ctrl + F "fling function")
    local antiragdoll = true --removes hingeConstraints and ballSocketConstraints from your character
    local newanimate = true --disables the animate script and enables after reanimation
    local discharscripts = true --disables all localScripts parented to your character before reanimation
    local R15toR6 = true --tries to convert your character to r6 if its r15
    local hatcollide = true --makes hats cancollide (credit to ShownApe) (works only with reanimate method 0)
    local humState16 = true --enables collisions for limbs before the humanoid dies (using hum:ChangeState)
    local addtools = false --puts all tools from backpack to character and lets you hold them after reanimation
    local hedafterneck = true --disable aligns for head and enable after neck is removed
    local loadtime = game:GetService("Players").RespawnTime + 0.5 --anti respawn delay
    local method = 3 --reanimation method
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
    
    local noclipmodel = (noclipAllParts and c) or model
    local noclipcon = nil
    local function uncollide()
    	if noclipmodel then
    		for i, v in pairs(noclipmodel:GetDescendants()) do
    		    if v:IsA("BasePart") then
    			    v.CanCollide = false
    		    end
    		end
    	else
    		noclipcon:Disconnect()
    	end
    end
    noclipcon = stepped:Connect(uncollide)
    uncollide()
    
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
    					LowerTorso = -0.8
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
    					LeftHand = -0.85,
    					LeftLowerArm = -0.2,
    					LeftUpperArm = 0.4
    				}
    			},
    			rightArm = {
    				Name = "Right Arm",
    				Size = v3(1, 2, 1),
    				R15 = {
    					RightHand = -0.85,
    					RightLowerArm = -0.2,
    					RightUpperArm = 0.4
    				}
    			},
    			leftLeg = {
    				Name = "Left Leg",
    				Size = v3(1, 2, 1),
    				R15 = {
    					LeftFoot = -0.85,
    					LeftLowerLeg = -0.15,
    					LeftUpperLeg = 0.6
    				}
    			},
    			rightLeg = {
    				Name = "Right Leg",
    				Size = v3(1, 2, 1),
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
    
    --fling function
    --usage: fling([part or CFrame or Vector3], [fling duration (seconds)], [rotation velocity (Vector3)])
    
    local flingpart0 = gp(model, flingpart, "BasePart")
    local flingpart1 = gp(c, flingpart, "BasePart")
    
    local fling = function() end
    if flingpart0 and flingpart1 then
        flingpart0.Destroying:Connect(function()
            flingpart0 = nil
            fling = function() end
        end)
        flingpart1.Destroying:Connect(function()
            flingpart1 = nil
            fling = function() end
        end)
        --flingpart1.Archivable = true
        local att0 = gp(flingpart0, "att0_" .. flingpart0.Name, "Attachment")
        local att1 = gp(flingpart1, "att1_" .. flingpart1.Name, "Attachment")
        if att0 and att1 then
            fling = function(target, duration, rotVelocity)
                if (typeof(target) == "Instance" and target:IsA("BasePart")) or (typeof(target) == "CFrame") then
                    target = target.Position
                elseif typeof(target) ~= "Vector3" then
                    return
                end
                if type(duration) ~= number then
                    duration = tonumber(duration) or 0.5
                end
                if typeof(rotVelocity) ~= "Vector3" then
                    rotVelocity = v3(20000, 20000, 20000)
                end
                if not (target and flingpart0 and flingpart1 and att0 and att1) then
                    return
                end
                local flingpart = flingpart0:Clone()
                flingpart.Transparency = 1
                flingpart.Size = v3(0.01, 0.01, 0.01)
                flingpart.CanCollide = false
                flingpart.Name = "flingpart_" .. flingpart0.Name
                flingpart.Anchored = true
                flingpart.Destroying:Connect(function()
                    flingpart = nil
                end)
                flingpart.Parent = flingpart1
                if flingpart0.Transparency > 0.5 then
                    flingpart0.Transparency = 0.5
                end
                att1.Parent = flingpart
                for i, v in pairs(att0:GetChildren()) do
                    if v:IsA("AlignOrientation") then
                        v.Enabled = false
                    end
                end
                local con = nil
                con = heartbeat:Connect(function()
                    if target and flingpart and flingpart0 and flingpart1 and att0 and att1 then
                        flingpart0.RotVelocity = rotVelocity
                        flingpart.Position = target
                    else
                        con:Disconnect()
                    end
                end)
                local steppedRotVel = v3(
                    ((target.X > 0) and -1) or 1,
                    ((target.Y > 0) and -1) or 1,
                    ((target.Z > 0) and -1) or 1
                )
                local con = nil
                con = stepped:Connect(function()
                    if target and flingpart and flingpart0 and flingpart1 and att0 and att1 then
                        flingpart0.RotVelocity = steppedRotVel
                        flingpart.Position = target
                    else
                        con:Disconnect()
                    end
                end)
                wait(duration)
                target = nil
                if not (flingpart and flingpart0 and flingpart1 and att0 and att1) then
                    return
                end
                flingpart0.RotVelocity = v3_0
                att1.Parent = flingpart1
                for i, v in pairs(att0:GetChildren()) do
                    if v:IsA("AlignOrientation") then
                        v.Enabled = true
                    end
                end
                flingpart:Destroy()
            end
        end
    end
end

--end of reanimate

local lp = game:GetService("Players").LocalPlayer

local ws = game:GetService("Workspace")

local c = lp.Character
if not (c and c.Parent) then
	return print("character not found")
end
c:GetPropertyChangedSignal("Parent"):Connect(function()
    if not (c and c.Parent) then
        c = nil
    end
end)

--getPart function

local function gp(parent, name, className)
	local ret = nil
	pcall(function()
		for i, v in pairs(parent:GetChildren()) do
			if (v.Name == name) and v:IsA(className) then
				ret = v
				break
			end
		end
	end)
	return ret
end

--check if reanimate loaded

local model = gp(c, "Model", "Model")
if not model then return print("model not found") end

--find body parts

local head = gp(c, "Head", "BasePart")
if not head then return print("head not found") end

local torso = gp(c, "Torso", "BasePart")
if not torso then return print("torso not found") end

local humanoidRootPart = gp(c, "HumanoidRootPart", "BasePart")
if not humanoidRootPart then return print("humanoid root part not found") end

local leftArm = gp(c, "Left Arm", "BasePart")
if not leftArm then return print("left arm not found") end

local rightArm = gp(c, "Right Arm", "BasePart")
if not rightArm then return print("right arm not found") end

local leftLeg = gp(c, "Left Leg", "BasePart")
if not leftLeg then return print("left leg not found") end

local rightLeg = gp(c, "Right Leg", "BasePart")
if not rightLeg then return print("right leg not found") end

--find rig joints

local neck = gp(torso, "Neck", "Motor6D")
if not neck then return print("neck not found") end

local rootJoint = gp(humanoidRootPart, "RootJoint", "Motor6D")
if not rootJoint then return print("root joint not found") end

local leftShoulder = gp(torso, "Left Shoulder", "Motor6D")
if not leftShoulder then return print("left shoulder not found") end

local rightShoulder = gp(torso, "Right Shoulder", "Motor6D")
if not rightShoulder then return print("right shoulder not found") end

local leftHip = gp(torso, "Left Hip", "Motor6D")
if not leftHip then return print("left hip not found") end

local rightHip = gp(torso, "Right Hip", "Motor6D")
if not rightHip then return print("right hip not found") end

--humanoid

local hum = c:FindFirstChildOfClass("Humanoid")
if not hum then return print("humanoid not found") end

local animate = gp(c, "Animate", "LocalScript")
if animate then
	animate.Disabled = true
end

for i, v in pairs(hum:GetPlayingAnimationTracks()) do
	v:Stop()
end

--60 fps

local fps = 60
local event = Instance.new("BindableEvent", c)
event.Name = "60 fps"
local floor = math.floor
fps = 1 / fps
local tf = 0
local con = nil
con = game:GetService("RunService").RenderStepped:Connect(function(s)
	if not c then
		con:Disconnect()
		return
	end
	tf += s
	if tf >= fps then
		for i=1, floor(tf / fps) do
			event:Fire(c)
		end
		tf = 0
	end
end)
local event = event.Event

local function stopIfRemoved(instance)
    if not (instance and instance.Parent) then
        c = nil
        return
    end
    instance:GetPropertyChangedSignal("Parent"):Connect(function()
        if not (instance and instance.Parent) then
            c = nil
        end
    end)
end
stopIfRemoved(c)
stopIfRemoved(hum)
for i, v in pairs({head, torso, leftArm, rightArm, leftLeg, rightLeg, humanoidRootPart}) do
    stopIfRemoved(v)
end
for i, v in pairs({neck, rootJoint, leftShoulder, rightShoulder, leftHip, rightHip}) do
    stopIfRemoved(v)
end
if not c then
    return
end
uis = game:GetService("UserInputService")
local flying = false
uis.InputBegan:Connect(function(keycode)
    if uis:GetFocusedTextBox() then
        return
    end
	keycode = keycode.KeyCode
	if keycode == Enum.KeyCode.F then
	    flying = not flying
	end
end)
hum.WalkSpeed = 50
hum.HipHeight = 5
hum.JumpPower = 0
hum.CameraOffset = Vector3.new(0, -3, 0)
local flyspeed = 1
local cf, v3, euler, sin, sine = CFrame.new, Vector3.new, CFrame.fromEulerAnglesXYZ, math.sin, 0
while event:Wait() do
    sine += 1
    hum.PlatformStand = flying
    humanoidRootPart.Anchored = flying
    if flying then
        humanoidRootPart.Velocity = v3(0, 0, 0)
        local flycf = humanoidRootPart.CFrame
        local fb = ((uis:IsKeyDown("W") and flyspeed) or 0) + ((uis:IsKeyDown("S") and -flyspeed) or 0)
    	local lr = ((uis:IsKeyDown("A") and -flyspeed) or 0) + ((uis:IsKeyDown("D") and flyspeed) or 0)
    	local camcf = ws.CurrentCamera.CFrame
    	flycf += camcf.lookVector * fb
    	flycf += camcf.rightVector * lr
    	humanoidRootPart.CFrame = flycf
    end
    if humanoidRootPart.Velocity.Y < -20 then
        humanoidRootPart.Velocity = v3(0, -20, 0)
    end
    if humanoidRootPart.Velocity.Magnitude > 1 then -- walk
        neck.C0 = neck.C0:Lerp(cf(0, 1, 0) * euler(-1.2217304763960306, 0.17453292519943295 * sin(sine * 0.025), -3.1590459461097367), 0.2) 
        rootJoint.C0 = rootJoint.C0:Lerp(cf(0, -2 + 0.5 * sin(sine * 0.05), 2) * euler(-2.443460952792061 + -0.08726646259971647 * sin((sine + 10) * 0.05), 0.05235987755982989 * sin(sine * 0.025), -3.1590459461097367 + -0.08726646259971647 * sin(sine * 0.025)), 0.2) 
        leftShoulder.C0 = leftShoulder.C0:Lerp(cf(-1, 0.5, 0) * euler(-0.12217304763960307 * sin((sine + 25) * 0.05), -1.5882496193148399 + -0.17453292519943295 * sin((sine + 20) * 0.05), -2.0943951023931953), 0.2) 
        rightShoulder.C0 = rightShoulder.C0:Lerp(cf(1, 0.5, 0) * euler(-0.12217304763960307 * sin((sine + 25) * 0.05), 1.5707963267948966 + 0.17453292519943295 * sin((sine + 20) * 0.05), 2.0943951023931953), 0.2) 
        leftHip.C0 = leftHip.C0:Lerp(cf(-1, -1, 0) * euler(0, -1.5882496193148399, 0.3490658503988659 + -0.17453292519943295 * sin((sine + 30) * 0.05)), 0.2) 
        rightHip.C0 = rightHip.C0:Lerp(cf(1, -1, 0) * euler(0, 1.5707963267948966, -0.3490658503988659 + 0.17453292519943295 * sin((sine + 40) * 0.05)), 0.2) 
    else
        neck.C0 = neck.C0:Lerp(cf(0, 1, 0) * euler(-2.0943951023931953 + -0.2617993877991494 * sin((sine + 20) * 0.05), 0.3490658503988659 * sin(sine * 0.025), -3.1590459461097367), 0.2) 
        rootJoint.C0 = rootJoint.C0:Lerp(cf(0, -2 + 1 * sin(sine * 0.05), 0) * euler(-2.792526803190927 + -0.08726646259971647 * sin((sine + 10) * 0.05), 0.05235987755982989 * sin(sine * 0.025), -3.1590459461097367 + -0.08726646259971647 * sin(sine * 0.025)), 0.2) 
        leftShoulder.C0 = leftShoulder.C0:Lerp(cf(-1, 0.5, 0) * euler(-0.12217304763960307 * sin((sine + 25) * 0.05), -1.5882496193148399 + -0.17453292519943295 * sin((sine + 20) * 0.05), -1.2217304763960306), 0.2) 
        rightShoulder.C0 = rightShoulder.C0:Lerp(cf(1, 0.5, 0) * euler(-0.12217304763960307 * sin((sine + 25) * 0.05), 1.5707963267948966 + 0.17453292519943295 * sin((sine + 20) * 0.05), 1.2217304763960306), 0.2) 
        leftHip.C0 = leftHip.C0:Lerp(cf(-1, -1, 0) * euler(0, -1.5882496193148399, -1.2217304763960306 + -0.17453292519943295 * sin((sine + 30) * 0.05)), 0.2) 
        rightHip.C0 = rightHip.C0:Lerp(cf(1, -1, 0) * euler(0, 1.5707963267948966, 1.2217304763960306 + 0.17453292519943295 * sin((sine + 40) * 0.05)), 0.2) 
    end
end
    print("Clicked")
end)
    

Section:NewButton("Fe Troll Gui (Not made by me)", "ButtonInfo", function()
    local g = game
if not g:IsLoaded() then
	g.Loaded:Wait()
end

local plrs = g:GetService("Players")
local lp = plrs.LocalPlayer
local mouse = lp:GetMouse()
local ws = g:GetService("Workspace")
local cg = g:GetService("CoreGui")
local pg = lp:FindFirstChildOfClass("PlayerGui")
local rs = g:GetService("RunService")
local uis = g:GetService("UserInputService")
local stepped = rs.Stepped
local renderstepped = rs.RenderStepped
local heartbeat = rs.Heartbeat
local currentplayer = lp
local fenv = getfenv()
local shp = fenv.sethiddenproperty or fenv.set_hidden_property or fenv.sethiddenprop or fenv.set_hidden_prop
local ssr = fenv.setsimulationradius or fenv.setsimradius or fenv.set_simulation_radius
local v3 = Vector3.new
local v3_0 = v3(0, 0, 0)
local cf = CFrame.new
local flycf = false

local function gp(parent, name, className)
	local ret = nil
	pcall(function()
		for i, v in pairs(parent:GetChildren()) do
			if (v.Name == name) and v:IsA(className) then
				ret = v
				break
			end
		end
	end)
	return ret
end

local guiname = g.PlaceId .. "_info"

local gui = nil
pcall(function()
    gui = gp(cg, guiname, "ScreenGui")
end)
gui = gui or gp(pg, guiname, "ScreenGui")
if gui then
	gui:Destroy()
end

renderstepped:Wait()

gui = Instance.new("ScreenGui")
gui.Name = guiname
gui.ResetOnSpawn = false
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Enabled = false
gui.IgnoreGuiInset = true
pcall(function()
    gui.Parent = cg
end)
if gui.Parent ~= cg then
    gui.Parent = pg
end
gui:GetPropertyChangedSignal("Parent"):Connect(function()
    if not (gui and gui.Parent) then
        gui = false
    end
end)
local mainFrame = Instance.new("Frame")
mainFrame.Name = "mainFrame"
mainFrame.Parent = gui
mainFrame.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
mainFrame.BorderSizePixel = 0
mainFrame.Position = UDim2.new(0, 0, 1, -200)
mainFrame.Size = UDim2.new(1, 0, 0, 200)
local mf = Instance.new("Frame")
mf.Name = "mf"
mf.Parent = mainFrame
mf.BackgroundColor3 = mainFrame.BackgroundColor3
mf.BorderSizePixel = 0
mf.Position = UDim2.new(0, 0, 1, 0)
mf.Size = UDim2.new(1, 0, 1, 0)
local scriptName = Instance.new("TextLabel")
scriptName.Name = "scriptName"
scriptName.Parent = mainFrame
scriptName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scriptName.BackgroundTransparency = 1.000
scriptName.BorderSizePixel = 0
scriptName.Size = UDim2.new(1, 0, 0, 20)
scriptName.Font = Enum.Font.SourceSans
scriptName.Text = "info script made by MyWorld"
scriptName.TextColor3 = Color3.fromRGB(181, 181, 181)
scriptName.TextSize = 20.000
scriptName.TextWrapped = true
local line = Instance.new("Frame")
line.Name = "line"
line.Parent = scriptName
line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line.BackgroundTransparency = 0.700
line.BorderSizePixel = 0
line.Position = UDim2.new(0, 5, 1, 0)
line.Size = UDim2.new(1, -10, 0, 1)
local showhide = Instance.new("TextButton")
showhide.Name = "showhide"
showhide.Parent = mainFrame
showhide.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
showhide.BorderSizePixel = 0
showhide.Position = UDim2.new(0.5, -25, 0, -30)
showhide.Size = UDim2.new(0, 50, 0, 30)
showhide.Font = Enum.Font.SourceSans
showhide.Text = "\\/"
showhide.TextColor3 = Color3.fromRGB(235, 235, 235)
showhide.TextSize = 20.000
local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Name = "scrollingFrame"
scrollingFrame.Parent = mainFrame
scrollingFrame.Active = true
scrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scrollingFrame.BackgroundTransparency = 1.000
scrollingFrame.BorderSizePixel = 0
scrollingFrame.ClipsDescendants = false
scrollingFrame.Position = UDim2.new(0, 5, 0, 30)
scrollingFrame.Size = UDim2.new(1, -10, 1, -35)
scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollingFrame.ScrollBarThickness = 10
scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.X
local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Parent = scrollingFrame
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 10)

local event = Instance.new("BindableEvent", gui)
local fps = 60
fps = 1 / fps
local tf = 0
local con = nil
con = renderstepped:Connect(function(s)
    if not gui then
	    con:Disconnect()
	    return
	end
	tf += s
	if tf >= fps then
		for i=1, math.floor(tf / fps) do
			event:Fire(true)
		end
		tf = 0
	end
end)
local event = event.Event

event:Wait()

local sn = scriptName.Text
local function notify(msg)
	spawn(function()
		local msg1 = sn .. " - " .. msg
		scriptName.Text = msg1
		wait(3)
		if scriptName.Text == msg1 then
			scriptName.Text = sn
		end
	end)
end

if gui.Parent == pg then
    notify("gui in playerGui")
end

local ancprt = nil
local function weldtp(part, cfr)
	if not (part and part.Parent and part:IsA("BasePart") and (not part:IsGrounded())) then
		return nil
	end
	if not (ancprt and ancprt.Parent and ancprt:IsA("BasePart") and ancprt:IsGrounded() and ancprt:IsDescendantOf(ws)) then
		for i, v in pairs(ws:GetDescendants()) do
			if v and v.Parent and v:IsA("BasePart") and v:IsGrounded() then
				ancprt = v
				break
			end
		end
	end
	if not ancprt then
		ancprt = Instance.new("Part", ws)
		ancprt.Anchored = true
		ancprt.Transparency = 1
		ancprt.CanCollide = false
		ancprt.Name = "weldtp part"
	end
	local weld = Instance.new("Weld")
	weld.Part0 = part
	weld.C0 = cfr:Inverse()
	weld.Part1 = ancprt
	weld.C1 = ancprt.CFrame:Inverse()
	weld.Parent = ws
	stepped:Wait()
	pcall(function()
		weld:Destroy()
	end)
end

local function respawnRequest()
	local ccfr = ws.CurrentCamera.CFrame
	local c = lp.Character
	lp.Character = nil
	lp.Character = c
	ws.CurrentCamera:GetPropertyChangedSignal("CFrame"):Wait()
	ws.CurrentCamera.CFrame = ccfr
end

local function makeFrame(parent, text, color)
	local frame = Instance.new("Frame")
	frame.Name = "frame_" .. text
	frame.Parent = parent
	frame.BackgroundColor3 = color
	frame.Size = UDim2.new(0, 300, 0, 145)
	frame.BorderSizePixel = 0
	local framelabel = Instance.new("TextLabel")
	framelabel.Name = "framelabel"
	framelabel.Parent = frame
	framelabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	framelabel.BackgroundTransparency = 1.000
	framelabel.BorderSizePixel = 0
	framelabel.Size = UDim2.new(1, 0, 0, 20)
	framelabel.Font = Enum.Font.SourceSans
	framelabel.Text = text
	framelabel.TextColor3 = Color3.fromRGB(197, 197, 197)
	framelabel.TextSize = 14.000
	local line = Instance.new("Frame")
	line.Name = "line"
	line.Parent = framelabel
	line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	line.BackgroundTransparency = 0.700
	line.BorderSizePixel = 0
	line.Position = UDim2.new(0, 5, 1, 0)
	line.Size = UDim2.new(1, -10, 0, 1)
	local ScrollingFrame = Instance.new("ScrollingFrame")
	ScrollingFrame.Parent = frame
	ScrollingFrame.Active = true
	ScrollingFrame.Name = "ScrollingFrame"
	ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollingFrame.BackgroundTransparency = 1.000
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.Position = UDim2.new(0, 5, 0, 25)
	ScrollingFrame.Size = UDim2.new(1, -5, 1, -30)
	ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
	ScrollingFrame.ScrollBarThickness = 7
	ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout.Parent = ScrollingFrame
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 5)
	renderstepped:Wait()
	return frame
end

showhide.MouseButton1Click:Connect(function()
	if showhide.Text == "/\\" then
		showhide.Text = "\\/"
		mainFrame:TweenPosition(UDim2.new(0, 0, 1, -200), "Out", "Elastic", 1)
	else
		showhide.Text = "/\\"
		mainFrame:TweenPosition(UDim2.new(0, 0, 1, -5), "Out", "Elastic", 1)
	end
end)

local controllable = {}
local lastc = nil
local con = nil
con = lp.CharacterAdded:Connect(function(c)
    if not gui then
        con:Disconnect()
        return
    end
    if lastc == c then
        return
    end
    if c and c.Parent then
        lastc = c
        controllable = {}
        for i, v in pairs(plrs:GetPlayers()) do
            local c = v.Character
            if c and c.Parent then
                table.insert(controllable, c)
            end
        end
    end
end)

local viewedPlayer = nil
local viewbutton = {Text = ""}

local playersframe = makeFrame(scrollingFrame, "Players", Color3.fromRGB(12, 59, 100))
local playercframe = makeFrame(playersframe, "playerscontrol", Color3.fromRGB(12, 59, 100))
playercframe.BorderSizePixel = 1.000
playercframe.BorderColor3 = Color3.fromRGB(27, 42, 53)
playercframe.Position = UDim2.new(0, 10, -1, -40)
playercframe.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
playercframe.Visible = true
local playerframef = makeFrame(playercframe, "friends", Color3.fromRGB(0, 150, 0))
playerframef.Position = UDim2.new(1, 10, 0, 5)

local function addbtn(parent, plr)
	local playerbutton = Instance.new("TextButton")
	playerbutton.Name = plr.Name
	playerbutton.Parent = parent
	if plr == lp then
		playerbutton.BackgroundColor3 = Color3.fromRGB(100, 200, 200)
	else
		playerbutton.BackgroundColor3 = Color3.fromRGB(136, 136, 136)
	end
	playerbutton.BorderSizePixel = 0
	playerbutton.Size = UDim2.new(1, -10, 0, 20)
	playerbutton.Font = Enum.Font.SourceSans
	playerbutton.Text = plr.Name
	if plr.Name ~= plr.DisplayName then
		playerbutton.Text = playerbutton.Text .. " (" .. plr.DisplayName .. ")"
	end
	playerbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
	playerbutton.TextSize = 15.000
	playerbutton.MouseButton1Click:Connect(function()
		playercframe.framelabel.Text = "player: " .. playerbutton.Text
		currentplayer = plr
		playercframe.Visible = true
		playerframef.Visible = false
		viewbutton.Text = ((viewedPlayer == plr) and "unview") or "view"
	end)
end

local function unview()
    viewedPlayer = nil
    viewbutton.Text = "view"
	local c = lp.Character
	if c and c.Parent then
	    local subject = c:FindFirstChildOfClass("Humanoid") or c:FindFirstChildWhichIsA("BasePart")
	    if subject then
    	    ws.CurrentCamera.CameraType = Enum.CameraType.Custom
    		ws.CurrentCamera.CameraSubject = subject
		else
		    notify("no part to view")
		end
	else
		notify("character not found")
	end
end

local playersScroll = playersframe.ScrollingFrame

for i, v in pairs(plrs:GetPlayers()) do
	addbtn(playersScroll, v)
end
local reset = function() end
local con = nil
con = plrs.PlayerAdded:Connect(function(plr)
	if gui then
		addbtn(playersScroll, plr)
	else
	    con:Disconnect()
	end
end)
local con = nil
con = plrs.PlayerRemoving:Connect(function(plr)
	if gui then
		local playerbutton = gp(playersScroll, plr.Name, "TextButton")
		if playerbutton then
			playerbutton:Destroy()
		end
		if plr == currentplayer then
			playercframe.Visible = false
		end
		if plr == viewedPlayer then
		    unview()
		end
	else
	    con:Disconnect()
	end
end)
local hideplayerc = Instance.new("TextButton")
hideplayerc.Name = "addpositionbutton"
hideplayerc.Parent = playercframe.framelabel
hideplayerc.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
hideplayerc.BorderSizePixel = 0
hideplayerc.Position = UDim2.new(1, -17, 0, 2)
hideplayerc.Size = UDim2.new(0, 15, 0, 15)
hideplayerc.Font = Enum.Font.SourceSans
hideplayerc.Text = "X"
hideplayerc.TextColor3 = Color3.fromRGB(206, 206, 206)
hideplayerc.TextSize = 14.000
hideplayerc.MouseButton1Click:Connect(function()
	playercframe.Visible = false
end)
local function makeplrbutton(buttontext)
	local button = Instance.new("TextButton")
	button.Name = "plrButton"
	button.Parent = playercframe.ScrollingFrame
	button.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
	button.BorderSizePixel = 0
	button.Size = UDim2.new(1, -10, 0, 20)
	button.Font = Enum.Font.SourceSans
	button.Text = buttontext
	button.TextColor3 = Color3.fromRGB(226, 226, 226)
	button.TextSize = 15.000
	return button
end
makeplrbutton("goto").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		local tp = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
		if tp then
			local c1 = currentplayer.Character
			if c1 and c1.Parent then
				local to = gp(c1, "HumanoidRootPart", "BasePart") or gp(c1, "Head", "BasePart") or c1:FindFirstChildWhichIsA("BasePart")
				if to then
					if flycf then
						flycf = to.CFrame
					else
						weldtp(tp, to.CFrame)
					end
					notify("goto: " .. currentplayer.Name)
				else
					notify("no target part found")
				end
			else
				notify("target character not found")
			end
		else
			notify("no part found")
		end
	else
		notify("character not found")
	end
end)
viewbutton = makeplrbutton("view")
viewbutton.MouseButton1Click:Connect(function()
    if viewedPlayer == currentplayer then
        unview()
    else
	    viewedPlayer = currentplayer
	    viewbutton.Text = "unview"
	end
end)

local cbringb = makeplrbutton("cbring")

local function noanimations()
	local c = lp.Character
	if c and c.Parent then
		local hum = c:FindFirstChildOfClass("Humanoid")
		if hum then
			local animate = gp(c, "Animate", "LocalScript")
			if animate then
				animate.Disabled = true
			end
			for i, v in pairs(hum:GetPlayingAnimationTracks()) do
				v:Stop()
			end
		else
			notify("humanoid not found")
		end
	else
		notify("character not found")
	end
end

local function isConnected(part0, part1, tested)
    if not ((typeof(part0) == "Instance") and part0:IsA("BasePart")) then
        return false
    end
    if not ((typeof(part1) == "Instance") and part1:IsA("BasePart")) then
        return false
    end
    if not tested then
        tested = {}
    end
    local ret = false
    table.insert(tested, part0)
    for i, v in pairs(part0:GetConnectedParts()) do
        if part1 == v then
            return true
        elseif not table.find(tested, v) then
            ret = ret or isConnected(v, part1, tested)
        end
    end
    return ret
end

local function attach(c1)
    local bck = lp:FindFirstChildOfClass("Backpack")
	local c = lp.Character
	--checks for: model, humanoid, arm, torso for main character:
	if not (c and c.Parent) then
	    notify("character not found")
	    return false
	end
	local hum = c:FindFirstChildOfClass("Humanoid")
	if not hum then
	    notify("humanoid not found")
	    return false
	end 
	local arm = gp(c, "Right Arm", "BasePart") or gp(c, "RightHand", "BasePart")
	if not arm then
	    notify("arm not found")
	    return false
	end
	local torso = gp(c, "Torso", "BasePart") or gp(c, "UpperTorso", "BasePart")
	if not torso then
	    notify("torso not found")
	    return
	end
	if torso:IsGrounded() then
	    notify("torso is grounded")
	    return
	end
	if not isConnected(arm, torso) then
	    notify("arm and toso not connected")
	    return
	end
	--checks for: tool:
	local tool = c:FindFirstChildOfClass("Tool")
	if (not tool) and bck then
		tool = bck:FindFirstChildOfClass("Tool")
	end
	if not tool then
	    notify("no tool found")
	    return false
	end
	local handle = gp(tool, "Handle", "BasePart")
	if not handle then
	    notify("tool handle not found")
	    return
	end
	--checks for: model, humanoid, arm, torso for target character:
	if not (c1 and c1.Parent) then
	    notify("target character not found")
	    return false
	end
	local hum1 = c1:FindFirstChildOfClass("Humanoid")
	if not hum1 then
	    notify("target humanoid not found")
	    return false
	end
	local arm1 = gp(c1, "Right Arm", "BasePart") or gp(c1, "RightHand", "BasePart")
	if not arm1 then
	    notify("target arm not found")
	    return false
	end
	local torso1 = gp(c1, "Torso", "BasePart") or gp(c1, "UpperTorso", "BasePart")
	if not torso1 then
	    notify("target torso not found")
	    return
	end
	if torso1:IsGrounded() then
	    notify("target torso is grounded")
	    return
	end
	if not isConnected(arm1, torso1) then
	    notify("target arm and toso not connected")
	    return
	end
	--all checks good
	if bck then
    	for i, v in pairs(c:GetChildren()) do
    	    if v:IsA("Tool") then
    	        v.Parent = bck
    	    end
    	end
	end
	local nhum = hum:Clone()
	hum:Destroy()
	hum = nhum
	hum.Parent = c
	hum:EquipTool(tool)
	for i, v in pairs(c1:GetDescendants()) do
		if v and v.Parent and v:IsA("BasePart") then
			v.Massless = true
		end
	end
	while stepped:Wait() do
	    --checks for: model, humanoid, arm, torso for main character:
	    if not (c and c.Parent) then
	        notify("character removed")
	        return false
	    end
	    if (not hum and hum.Parent) then
	        notify("humanoid removed")
	        return false
	    end
	    if not (arm and arm.Parent) then
	        notify("arm removed")
	        return false
	    end
	    if not (torso and torso.Parent) then
	        notify("torso removed")
	        return false
	    end
	    if torso:IsGrounded() then
    	    notify("torso got grounded")
    	    return
    	end
	    if not isConnected(arm, torso) then
    	    notify("arm and toso connection removed")
    	    return
    	end
	    --checks for: model, humanoid, arm, torso for target character:
	    if not (c1 and c1.Parent) then
	        notify("target character removed")
	        return false
	    end
	    if not (hum1 and hum1.Parent) then
	        notify("target humanoid removed")
	        return false
	    end
	    if not (arm1 and arm1.Parent) then
	        notify("target arm removed")
	        return false
	    end
	    if not (torso1 and torso1.Parent) then
	        notify("target torso removed")
	        return false
	    end
	    if torso:IsGrounded() then
            notify("target torso got grounded")
            return
        end
	    if not isConnected(arm1, torso1) then
    	    notify("target arm and toso connection removed")
    	    return
    	end
    	--checks for: tool
	    if not (tool and tool.Parent) then
	        notify("tool removed")
	        return false
	    end
	    if not (handle and handle.Parent) then
	        notify("tool handle removed")
	        return false
	    end
	    if (tool.Parent ~= c) and (tool.Parent ~= c1) and (tool.Parent ~= bck) then
	        notify("unexpected tool parent")
	        return false
	    end
	    --all checks good
	    if (tool.Parent == c1) then
	        break
	    end
	    tool.Parent = c
	    weldtp(arm1, handle.CFrame)
	    if (tool.Parent == c1) then
	        break
	    end
	end
	return handle
end

makeplrbutton("bring").MouseButton1Click:Connect(function()
    local plr = currentplayer
    local c1 = plr.Character
    if not (c1 and c1.Parent) then
        notify("target character not found")
        return
    end
    if not table.find(controllable, c1) then
        reset(true)
        wait(0.1)
    end
    if not (plr and plr.Parent) then
        notify("target player left")
        return
    end
    if not (c1 and c1.Parent) then
        c1 = currentplayer.Character
    end
    if not (c1 and c1.Parent) then
        notify("target character not found")
        return
    end
	local c = lp.Character
	if not (c and c.Parent) then
	    notify("character not found")
        return
	end
	local part = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Torso", "BasePart") or gp(c, "UpperTorso", "BasePart") or gp(c, "Head", "BasePart")
	if not part then
	    notify("part not found")
	    return
	end
	local cfr = part.CFrame
	local joint = attach(currentplayer.Character)
	if not joint then
	    return
	end
	weldtp(part, cfr)
	wait(0.5)
	if c and c.Parent and part and part.Parent and joint and joint.Parent then
		weldtp(part, cfr)
		if not (joint and joint.Parent) then
		    notify("joint removed")
		    reset(false)
		    return
		end
		joint:BreakJoints()
		reset(false)
		notify("brought " .. currentplayer.Name)
	end
end)

makeplrbutton("kill").MouseButton1Click:Connect(function()
	local plr = currentplayer
    local c1 = plr.Character
    if not (c1 and c1.Parent) then
        return notify("target character not found")
    end
    if not table.find(controllable, c1) then
        reset(true)
        wait(0.1)
    end
    if not (plr and plr.Parent) then
        return notify("target player left")
    end
    if not (c1 and c1.Parent) then
        return notify("target character removed")
    end
	local c = lp.Character
	if not (c and c.Parent) then
	    return notify("character not found")
	end
	local part = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Torso", "BasePart") or gp(c, "UpperTorso", "BasePart") or gp(c, "Head", "BasePart")
	if not part then
	    return notify("part not found")
	end
	local hum = c1:FindFirstChildOfClass("Humanoid")
	if not hum then
	    return notify("humanoid not found")
	end
	local cfr = part.CFrame
	local part1 = gp(c1, "HumanoidRootPart", "BasePart") or gp(c1, "Torso", "BasePart") or gp(c1, "UpperTorso", "BasePart") or gp(c1, "Head", "BasePart")
    if part1 then
        weldtp(part, part1.CFrame)
    end
    if hum.Health > 0 then
	    hum.BreakJointsOnDeath = false
    end
    wait(0.1)
    hum.Health = 0
    wait()
    hum:ChangeState(Enum.HumanoidStateType.Dead)
	local joint = attach(c1)
	if not joint then
	    return
	end
	if hum then
	    hum.Health = 1
	end
	wait(0.3)
	if joint then
	    joint:BreakJoints()
	end
	weldtp(part, cfr)
	reset(false)
	notify("attempted to kill " .. plr.Name)
	if true then return end -----------------------
	local con, con1 = nil, nil
	con = heartbeat:Connect(function()
	    if not (part and part.Parent) then
	        con:Disconnect()
	        con1:Disconnect()
	        return
	    end
	    part.Velocity = v3(0, -200000, 0)
	end)
	con1 = stepped:Connect(function()
	    if not (part and part.Parent) then
	        con:Disconnect()
	        con1:Disconnect()
	        return
	    end
	    part.Velocity = v3_0
	end)
	wait(0.5)
	con:Disconnect()
	con1:Disconnect()
	if c and c.Parent and part and part.Parent and joint and joint.Parent then
		weldtp(part, cfr)
		if not (joint and joint.Parent) then
		    notify("joint removed")
		    reset(false)
		    return
		end
		joint:BreakJoints()
		reset(false)
		notify("attempted to kill " .. currentplayer.Name)
	else
	    notify("something went wrong")
	end
end)

makeplrbutton("attach").MouseButton1Click:Connect(function()
	return attach(currentplayer.Character) and notify("attached to " .. currentplayer.Name)
end)

makeplrbutton("view friends").MouseButton1Click:Connect(function()
	playerframef.Visible = not playerframef.Visible
	if not playerframef.Visible then
		return
	end
	playerframef.framelabel.Text = "friends of: " .. currentplayer.Name
	local scroll = playerframef.ScrollingFrame
	for i, v in pairs(scroll:GetChildren()) do
		if v and v.Parent and v:IsA("TextButton") then
			v:Destroy()
		end
	end
	for i, v in pairs(plrs:GetPlayers()) do
		spawn(function()
			if v and v.Parent and currentplayer:IsFriendsWith(v.UserId) then
				addbtn(playerframef.ScrollingFrame, v)
			end
		end)
	end
end)

local function makeflingbutton(partname)
	makeplrbutton("fling (" .. partname .. ")").MouseButton1Click:Connect(function()
		local c = lp.Character
		if c and c.Parent then
			local hrp = gp(c, partname, "BasePart")
			if hrp then
				local c1 = currentplayer.Character
				if c1 and c1.Parent then
					local hrp1 = gp(c1, partname, "BasePart")
					if hrp1 then						
						c:BreakJoints()
						hrp.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0.01, 0.01, 0.01, 0.01)
						for i, v in pairs(c:GetChildren()) do
							if (v ~= hrp) and v and v.Parent and v:IsA("BasePart") then
								v:Destroy()
							end
						end
						hrp.Transparency = 0.5
						while heartbeat:Wait() and c and c.Parent and hrp and hrp.Parent and c1 and c1.Parent and hrp1 and hrp1.Parent do
							local pos = {x=0, y=0, z=0}
							pos.x = hrp1.Position.X
							pos.y = hrp1.Position.Y
							pos.z = hrp1.Position.Z
							pos.x += hrp1.Velocity.X / 2
							pos.y += hrp1.Velocity.Y / 2
							pos.z += hrp1.Velocity.Z / 2
							local heightlock = ws.FallenPartsDestroyHeight + 5
							if pos.y < heightlock then
								pos.y = heightlock
							end
							hrp.CanCollide = false
							hrp.Position = v3(pos.x, pos.y, pos.z)
							hrp.Velocity = v3(0, 1000, 0)
							hrp.RotVelocity = v3(10000, 10000, 10000)
							ws.CurrentCamera.CameraSubject = hrp1
						end
						wait(0.1)
						local c = lp.Character
						if (c and c.Parent) then
						    ws.CurrentCamera.CameraSubject = c:FindFirstChildOfClass("Humanoid") or c:FindFirstChildWhichIsA("BasePart")
						end
					else
						notify("target part not found")
					end
				else
					notify("target character not found")
				end
			else
				notify("part not found")
			end
		else
			notify("character not found")
		end
	end)
end
makeflingbutton("Head")
makeflingbutton("HumanoidRootPart")
makeflingbutton("Torso")

local graphicsframe = makeFrame(scrollingFrame, "Graphics", Color3.fromRGB(84, 45, 162))
local function makegraphicsbutton(buttontext)
	local button = Instance.new("TextButton")
	button.Name = "removefog"
	button.Parent = graphicsframe.ScrollingFrame
	button.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
	button.BorderSizePixel = 0
	button.Size = UDim2.new(1, -10, 0, 20)
	button.Font = Enum.Font.SourceSans
	button.Text = buttontext
	button.TextColor3 = Color3.fromRGB(226, 226, 226)
	button.TextSize = 15.000
	return button
end
local lig = g:GetService("Lighting")
makegraphicsbutton("remove fog").MouseButton1Click:Connect(function()
	lig.FogStart = 9e9
	lig.FogEnd = 9e9
end)
local function setupremove(button, classname)
	button.MouseButton1Click:Connect(function()
		for i, v in pairs(g:GetDescendants()) do
			if v:IsA(classname) then
				v:Destroy()
			end
		end
	end)
end
setupremove(makegraphicsbutton("remove atmosphere effects"), "Atmosphere")
setupremove(makegraphicsbutton("remove blur"), "BlurEffect")
setupremove(makegraphicsbutton("remove decals"), "Decal")
setupremove(makegraphicsbutton("default sky"), "Sky")
setupremove(makegraphicsbutton("remove sun rays"), "SunRaysEffect")
setupremove(makegraphicsbutton("remove particles"), "ParticleEmitter")
setupremove(makegraphicsbutton("remove color correction effects"), "ColorCorrectionEffect")

local cfly = nil
local fhrp = nil
local flyspeed = 1

local positionsframe = makeFrame(scrollingFrame, "Positions", Color3.fromRGB(162, 108, 42))
local addpositionbutton = Instance.new("TextButton")
addpositionbutton.Name = "addpositionbutton"
addpositionbutton.Parent = positionsframe.framelabel
addpositionbutton.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
addpositionbutton.BorderSizePixel = 0
addpositionbutton.Position = UDim2.new(1, -77, 0, 2)
addpositionbutton.Size = UDim2.new(0, 75, 1, -4)
addpositionbutton.Font = Enum.Font.SourceSans
addpositionbutton.Text = "+ add current"
addpositionbutton.TextColor3 = Color3.fromRGB(206, 206, 206)
addpositionbutton.TextSize = 14.000
addpositionbutton.MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		local hrp = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
		if hrp then
			local cfr = hrp.CFrame
			local positionframe = Instance.new("Frame")
			local loadposbutton = Instance.new("TextButton")
			local removeposbutton = Instance.new("TextButton")
			local positionName = Instance.new("TextBox")
			positionframe.Name = "positionframe"
			positionframe.Parent = positionsframe.ScrollingFrame
			positionframe.BackgroundColor3 = Color3.fromRGB(106, 106, 106)
			positionframe.BorderSizePixel = 0
			positionframe.Size = UDim2.new(1, -10, 0, 30)
			loadposbutton.Name = "loadposbutton"
			loadposbutton.Parent = positionframe
			loadposbutton.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
			loadposbutton.BorderSizePixel = 0
			loadposbutton.Position = UDim2.new(1, -70, 0, 5)
			loadposbutton.Size = UDim2.new(0, 40, 1, -10)
			loadposbutton.Font = Enum.Font.SourceSans
			loadposbutton.Text = "load"
			loadposbutton.TextColor3 = Color3.fromRGB(223, 223, 223)
			loadposbutton.TextSize = 16.000
			removeposbutton.Name = "removeposbutton"
			removeposbutton.Parent = positionframe
			removeposbutton.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
			removeposbutton.BorderSizePixel = 0
			removeposbutton.Position = UDim2.new(1, -25, 0, 5)
			removeposbutton.Size = UDim2.new(0, 20, 1, -10)
			removeposbutton.Font = Enum.Font.SourceSans
			removeposbutton.Text = "X"
			removeposbutton.TextColor3 = Color3.fromRGB(223, 223, 223)
			removeposbutton.TextSize = 16.000
			positionName.Name = "positionName"
			positionName.Parent = positionframe
			positionName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			positionName.BackgroundTransparency = 1.000
			positionName.BorderSizePixel = 0
			positionName.Position = UDim2.new(0, 5, 0, 5)
			positionName.Size = UDim2.new(1, -80, 1, -10)
			positionName.Font = Enum.Font.SourceSans
			positionName.Text = "Position1"
			positionName.ClearTextOnFocus = false
			positionName.TextColor3 = Color3.fromRGB(0, 0, 0)
			positionName.TextSize = 25.000
			positionName.TextXAlignment = Enum.TextXAlignment.Left
			loadposbutton.MouseButton1Click:Connect(function()
				c = lp.Character
				if c and c.Parent then
					hrp = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
					if hrp then
						if flycf then
							flycf = cfr
						else
							weldtp(hrp, cfr)
						end
					else
						notify("part not found")
					end
				else
					notify("character not found")
				end
			end)
			removeposbutton.MouseButton1Click:Connect(function()
				positionframe:Destroy()
			end)
		end
	end
end)

local charframe = makeFrame(scrollingFrame, "Character", Color3.fromRGB(99, 15, 15))
local function makecharbutton(buttontext)
	local button = Instance.new("TextButton")
	button.Name = "charButton"
	button.Parent = charframe.ScrollingFrame
	button.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
	button.BorderSizePixel = 0
	button.Size = UDim2.new(1, -10, 0, 20)
	button.Font = Enum.Font.SourceSans
	button.Text = buttontext
	button.TextColor3 = Color3.fromRGB(226, 226, 226)
	button.TextSize = 15.000
	return button
end
local loopr = false
local fakevoidp = nil
reset = function(respawn)
    if fakevoidp then
        fakevoidp = nil
        wait(0.3)
    end
	local c = lp.Character
	local partName, cfr, ccfr = nil, nil, nil
	if not (c and c.Parent) then
		respawnRequest()
		if not loopr then
			notify("character not found, trying to respawn")
		end
		return
	end
	local part = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
	if not part then
	    respawnRequest()
		if not loopr then
			notify("no part found in the character, trying to respawn")
		end
		return
	end
	partName, cfr, ccfr = part.Name, part.CFrame, ws.CurrentCamera.CFrame
	spawn(function()
		local c, part = c, nil
		while c and c.Parent do
			stepped:Wait()
		end
		while not (c and c.Parent) do
			stepped:Wait()
			c = lp.Character
		end
		while stepped:Wait() and c and c.Parent and (not part) do
			part = gp(c, partName, "BasePart")
		end
		if not part then
			if not loopr then
				notify("failed to tp back")
			end
			return
		end
		weldtp(part, cfr)
		ws.CurrentCamera.CFrame = ccfr
		cfr = false
		if not loopr then
			notify("respawned")
		end
	end)
	if respawn and (not loopr) then
		notify("respawning...")
	end
	if respawn then
		spawn(function()
			while c and c.Parent do
				if part and part.Parent then
					cfr = part.CFrame
				end
				ccfr = ws.CurrentCamera.CFrame
				stepped:Wait()
			end
		end)
	    if plrs.RespawnTime > 0.5 then
    		local spamrequest = true
    		spawn(function()
    			while wait() and spamrequest and c and c.Parent do
    				respawnRequest()
    			end
    		end)
    		wait(0.5)
		    spamrequest = false
    	else
    	    respawnRequest()
    	end
		wait(plrs.RespawnTime - 0.5)
		part = nil
	end
	if c and c.Parent then
		if respawn then
			local hum = c:FindFirstChildOfClass("Humanoid")
			if hum then
				hum:Destroy()
			end
		end
		c:BreakJoints()
		while respawn and gui and cfr do
	        stepped:Wait()
	    end
	end
end
makecharbutton("respawn").MouseButton1Click:Connect(function()
	if not loopr then
		reset(true)
	end
end)
makecharbutton("reset").MouseButton1Click:Connect(function()
	reset(false)
end)
local looprb = makecharbutton("loop respawn")
spawn(function()
	while wait() and gui do
		if loopr then
			reset(true)
		end
	end
end)
looprb.MouseButton1Click:Connect(function()
	loopr = not loopr
	looprb.Text = "loop respawn" .. ((loopr and " (Enabled)") or "")
end)
makecharbutton("remove meshes").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		for i, v in pairs(c:GetDescendants()) do
			if v and v.Parent and (v:IsA("Mesh") or v:IsA("SpecialMesh") or v:IsA("CharacterMesh")) then
				v:Destroy()
			end
		end
		notify("removed meshes")
	else
		notify("no character")
	end
end)
makecharbutton("break joints").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		c:BreakJoints()
		notify("broken joints")
	else
		notify("no character")
	end
end)
local noclipb = makecharbutton("noclip")
local noclip = false
noclipb.MouseButton1Click:Connect(function()
	noclip = not noclip
	noclipb.Text = "noclip" .. ((noclip and " (Enabled)") or "")
end)
local fakevoidb = makecharbutton("fake void")
fakevoidb.MouseButton1Click:Connect(function()
    if fakevoidp then
        fakevoidp = nil
        fakevoidb.Text = "fake void"
    else
        local c = lp.Character
        if not (c and c.Parent) then
            notify("character not found")
            return
        end
        local part = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Torso", "BasePart") or gp(c, "UpperTorso", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
        if not part then
            notify("no part found")
            return
        end
        fakevoidp = part
        fakevoidb.Text = "fake void (Enabled)"
        notify("character teleported under FallenPartsDestroyHeight")
        
        local dh = ws.FallenPartsDestroyHeight
        local cfr = fakevoidp.CFrame
        local newcf = cf(0, dh - 100, 0)
        local camcf = ws.CurrentCamera.CFrame
        ws.CurrentCamera.CameraType = Enum.CameraType.Scriptable
        ws.FallenPartsDestroyHeight = dh - 200
        while stepped:Wait() and gui and c and c.Parent and fakevoidp and fakevoidp.Parent do
            weldtp(fakevoidp, newcf)
        end
        ws.FallenPartsDestroyHeight = dh
        fakevoidb.Text = "fake void"
        if c and c.Parent then
            unview()
            ws.CurrentCamera.CFrame = camcf
            if part and part.Parent then
                weldtp(part, cfr)
                notify("teleported back")
            else
                notify("part removed")
            end
        else
            notify("character removed")
        end
    end
end)
makecharbutton("block tool").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		local tool = c:FindFirstChildOfClass("Tool")
		if tool then
			local found = false
			for i, v in pairs(tool:GetDescendants()) do
				if v and v.Parent and v:IsA("Mesh") or v:IsA("SpecialMesh") then
					v:Destroy()
				end
			end
			if found then
				notify("removed tool meshes")
			else
				notify("no meshes found")
			end
		else
			notify("tool not found")
		end
	else
		notify("no character")
	end
end)
local infjumpb = makecharbutton("infjump")
local infjump = false
local con = nil
con = g:GetService("UserInputService").JumpRequest:Connect(function()
	if not gui then
	    con:Disconnect()
	    return
	end
	if infjump then
		local c = lp.Character
		if c and c.Parent then
			local hum = c:FindFirstChildOfClass("Humanoid")
			if hum then
				hum:ChangeState("Jumping")
			end
		end
	end
end)
infjumpb.MouseButton1Click:Connect(function()
	infjump = not infjump
	infjumpb.Text = "infjump" .. ((infjump and " (Enabled)") or "")
end)
makecharbutton("god (remove humanoid)").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		local hum = c:FindFirstChildOfClass("Humanoid")
		if hum then
			hum.Archivable = true
			local hum1 = hum:Clone()
			hum:Destroy()
			hum1.Parent = c
			notify("humanoid client sided")
		else
			notify("humanoid not found")
		end
	else
		notify("character not found")
	end
end)
local loopgb = makecharbutton("loop god mode")
local loopg = false
spawn(function()
	while wait() and gui do
		if loopg then
			local c = lp.Character
			if c and c.Parent then
				local part = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
				if part then
					local hum = c:FindFirstChildOfClass("Humanoid")
					if hum then
					    local partName = part.Name
						local new = hum:Clone()
						hum:Destroy()
						new.Parent = c
						ws.CurrentCamera.CameraSubject = new
    					local currentcfr = part.CFrame
    					local camcfr = ws.CurrentCamera.CFrame
    					while wait() and c and c.Parent and part and part.Parent do
    						currentcfr = part.CFrame
    						camcfr = ws.CurrentCamera.CFrame
    						local ff = c:FindFirstChildOfClass("ForceField")
    						if ff then
    							ff:Destroy()
    						end
    					end
    					part = nil
    					while not (part and part.Parent) do
    						wait()
    						c = lp.Character
    						part = gp(c, partName, "BasePart")
    					end
						weldtp(part, currentcfr)
						ws.CurrentCamera.CFrame = camcfr
    				end
				end
			end
		end
	end
end)
loopgb.MouseButton1Click:Connect(function()
	loopg = not loopg
	loopgb.Text = "loop god mode" .. ((loopg and " (Enabled)") or "")
end)
local flyb = makecharbutton("fly")
flyb.MouseButton1Click:Connect(function()
	if cfly and cfly.Parent then
		cfly = nil
	else
		cfly = lp.Character
		flyb.Text = "fly (Enabled)"
	end
end)

local ctrlf = {
	["w"] = false,
	["a"] = false,
	["s"] = false,
	["d"] = false
}
local con = nil
con = mouse.KeyDown:Connect(function(key)
    if not gui then
        con:Disconnect()
        return
    end
	key = key:lower()
	if ctrlf[key] ~= nil then
		ctrlf[key] = true
	end
end)
local con = nil
con = mouse.KeyUp:Connect(function(key)
    if not gui then
        con:Disconnect()
        return
    end
	key = key:lower()
	if ctrlf[key] ~= nil then
		ctrlf[key] = false
	end
end)
local con = nil
con = event:Connect(function()
    if not gui then
        con:Disconnect()
        return
    end
    if not flycf then
        return
    end
    local fb = ((ctrlf["w"] and flyspeed) or 0) + ((ctrlf["s"] and -flyspeed) or 0)
	local lr = ((ctrlf["a"] and -flyspeed) or 0) + ((ctrlf["d"] and flyspeed) or 0)
	local camcf = ws.CurrentCamera.CFrame
	local caX, caY, caZ, ca1, ca2, ca3, ca4, ca5, ca6, ca7, ca8, ca9 = camcf:GetComponents()
	flycf = cf(flycf.X, flycf.Y, flycf.Z, ca1, ca2, ca3, ca4, ca5, ca6, ca7, ca8, ca9)
	flycf += camcf.lookVector * fb
	flycf += camcf.rightVector * lr
end)
spawn(function()
    while stepped:Wait() and gui do
    	if cfly and cfly.Parent then
    		fhrp = (fhrp and (fhrp.Parent == cfly) and fhrp) or gp(cfly, "HumanoidRootPart", "BasePart") or gp(cfly, "Head", "BasePart") or cfly:FindFirstChildWhichIsA("BasePart")
    		if fhrp then
    		    flycf = flycf or fhrp.CFrame
    			weldtp(fhrp, flycf)
    		end
    	else
    		flycf = false
    		fhrp = nil
    		flyb.Text = "fly"
    	end
	end
end)

local hiddenfling = false
spawn(function()
    local hrp, c, vel, movel = nil, nil, nil, 0.1
    while gui do
        heartbeat:Wait()
        if hiddenfling then
            while gui and hiddenfling and not (c and c.Parent and hrp and hrp.Parent) do
                heartbeat:Wait()
                c = lp.Character
                hrp = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Torso", "BasePart") or gp(c, "UpperTorso", "BasePart")
            end
            if gui and hiddenfling then 
                vel = hrp.Velocity
                hrp.Velocity = vel * 10000 + v3(0, 10000, 0)
                --hrp.CFrame = hrp.CFrame * cf(0, 0.001, 0)
                renderstepped:Wait()
                if c and c.Parent and hrp and hrp.Parent then
                    hrp.Velocity = vel
                end
                stepped:Wait()
                if c and c.Parent and hrp and hrp.Parent then
                    hrp.Velocity = vel + v3(0, movel, 0)
                    movel = movel * -1
                end
            end
        end
    end
end)

local hiddenflingB = makecharbutton("hidden fling")
hiddenflingB.MouseButton1Click:Connect(function()
    hiddenfling = not hiddenfling
    hiddenflingB.Text = "hidden fling" .. ((hiddenfling and " (Enabled)") or "")
end)

makecharbutton("anti respawn (wait 5 s)").MouseButton1Click:Connect(respawnRequest)
makecharbutton("no animations").MouseButton1Click:Connect(noanimations)
makecharbutton("sit").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		local hum = c:FindFirstChildOfClass("Humanoid")
		if hum then
			hum.Sit = not hum.Sit
		else
			notify("humanoid not found")
		end
	else
		notify("character not found")
	end
end)
makecharbutton("fake sit").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		local hum = c:FindFirstChildOfClass("Humanoid")
		if hum then
		    hum:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
			hum.Sit = true
			notify("humanoid.Sit set to true")
		else
			notify("humanoid not found")
		end
	else
		notify("character not found")
	end
end)
makecharbutton("remove humanoidroot").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c then
		local cpar = c.Parent
		if cpar then
			local hrp = gp(c, "HumanoidRootPart", "BasePart")
			if hrp then
				c.Parent = nil
				hrp:Destroy()
				c.Parent = cpar
				notify("hrp removed")
			else
				notify("hrp not found")
			end
		else
			notify("character not found")
		end
	else
		notify("character not found")
	end
end)
makecharbutton("set CanTouch to false").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		local tool = c:FindFirstChildOfClass("Tool")
		for i, v in pairs(c:GetDescendants()) do
			if v and v.Parent and v:IsA("BasePart") and ((not tool) or (not v:IsDescendantOf(tool))) then
				v.CanTouch = false
			end
		end
		notify("CanTouch has been set to false")
	else
		notify("character not found")
	end
end)
local ctrltp = false
local clicktpbutton = makecharbutton("ctrl click tp")
clicktpbutton.MouseButton1Click:Connect(function()
    ctrltp = not ctrltp
    clicktpbutton.Text = "ctrl click tp" .. ((ctrltp and " (Enabled)") or "")
end)
local con = nil
con = mouse.Button1Down:Connect(function()
    if not gui then
        con:Disconnect()
        return
    end
    if not ctrltp then
        return
    end
    if not (mouse.Target and uis:IsKeyDown(Enum.KeyCode.LeftControl)) then
        return
    end
    local to = mouse.Hit.Position + v3(0, 3, 0)
    to = cf(to, to + v3(-1, 0, -1) * ws.CurrentCamera.CFrame.LookVector)
    if flycf then
        flycf = to
        return
    end
    local c = lp.Character
    if not (c and c.Parent) then
        return
    end
    local hrp = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Torso", "BasePart") or gp(c, "UpperTorso", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
    if hrp then
        weldtp(hrp, to)
    end
end)
makecharbutton("view").MouseButton1Click:Connect(unview)

local utilframe = makeFrame(scrollingFrame, "Utilities", Color3.fromRGB(0, 150, 150))
local utilscroll = utilframe.ScrollingFrame

local function makeutilbutton(buttontext)
	local button = Instance.new("TextButton")
	button.Name = "utilButton"
	button.Parent = utilscroll
	button.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
	button.BorderSizePixel = 0
	button.Size = UDim2.new(1, -10, 0, 20)
	button.Font = Enum.Font.SourceSans
	button.Text = buttontext
	button.TextColor3 = Color3.fromRGB(226, 226, 226)
	button.TextSize = 15.000
	return button
end

local espb = makeutilbutton("esp")
local esp = false
espb.MouseButton1Click:Connect(function()
	esp = not esp
	espb.Text = "esp" .. ((esp and " (Enabled)") or "")
end)
local teamcheckb = makeutilbutton("esp team check")
local espTeamCheck = false
teamcheckb.MouseButton1Click:Connect(function()
	espTeamCheck = not espTeamCheck
	teamcheckb.Text = "esp team check" .. ((espTeamCheck and " (Enabled)") or "")
end)

local espcolor = Color3.fromRGB(255, 0, 0)

local vpf = Instance.new("ViewportFrame", gui)
vpf.BackgroundTransparency = 1
vpf.BorderSizePixel = 0
vpf.ImageTransparency = 0.5
vpf.ImageColor3 = espcolor
vpf.BackgroundColor3 = espcolor
vpf.Size = UDim2.new(1, 0, 1, 0)
vpf.Visible = true
vpf.Name = "esp"

local con = nil
con = renderstepped:Connect(function()
    if not gui then
        con:Disconnect()
        return
    end
	if net then
		net(9e9)
	end
	vpf:ClearAllChildren()
	if esp then
	    vpf.CurrentCamera = ws.CurrentCamera
		for i, plr in pairs(plrs:GetPlayers()) do
			if ( (not espTeamCheck) or (plr.Team ~= lp.Team) ) and (plr ~= lp) then
				local c = plr.Character
				if c and c.Parent then
					for i, part in pairs(c:GetDescendants()) do
						if part:IsA("BasePart") then
							local part1 = Instance.new("Part", vpf)
							part1.Color = espcolor
							part1.Size = part.Size
							part1.CFrame = part.CFrame
						end
					end
				end
			end
		end
	end
	if viewedPlayer then
	    local c = viewedPlayer.Character
	    if c and c.Parent then
    	    local subject = c:FindFirstChildOfClass("Humanoid") or c:FindFirstChildWhichIsA("BasePart")
    	    if subject then
    	        ws.CurrentCamera.CameraType = Enum.CameraType.Custom
    	        ws.CurrentCamera.CameraSubject = subject
    	    end
	    end
	end
end)

local antiflingb = makeutilbutton("anti fling")
local antifling = false
antiflingb.MouseButton1Click:Connect(function()
	antifling = not antifling
	antiflingb.Text = "anti fling" .. ((antifling and " (Enabled)") or "")
end)

local con0, con1 = nil, nil
local function antiflingF()
    if not gui then
        con0:Disconnect()
        con1:Disconnect()
        return
    end
    if antifling then
		for i, v in pairs(plrs:GetPlayers()) do
			if v ~= lp then
				local c = v.Character
				if c and c.Parent then
					for i1, v1 in pairs(c:GetDescendants()) do
						if v1:IsA("BasePart") then
							v1.CanCollide = false
							v1.Velocity = v3_0
							v1.RotVelocity = v3_0
						end
					end
				end
			end
        end
    end
end
con0 = stepped:Connect(antiflingF)
con1 = heartbeat:Connect(antiflingF)

local antiattb = makeutilbutton("anti attach")
local antiatt = false
antiattb.MouseButton1Click:Connect(function()
    antiatt = not antiatt
    antiattb.Text = "anti attach" .. ((antiatt and " (Enabled)") or "")
end)
local charcon = nil
local currentcon = nil
local function onchar(c)
    if not gui then
        charcon:Disconnect()
        return
    end
    if typeof(c) ~= "Instance" then
        return
    end
    if currentcon then
        currentcon:Disconnect()
    end
    currentcon = c.ChildAdded:Connect(function(t)
        if not antiatt then
            return
        end
        if t:IsA("Tool") then
            local h = gp(t, "Handle", "BasePart") or t:FindFirstChildWhichIsA("BasePart")
            for i, v in pairs(h:GetConnectedParts()) do
                if not v:IsDescendantOf(c) then
                    h:BreakJoints()
                    stepped:Wait()
                    if t and (t.Parent == c) then
                        t.Parent = lp:FindFirstChildOfClass("Backpack") or ws
                    end
                    return
                end
            end
        end
    end)
end
onchar(lp.Character)
charcon = lp.CharacterAdded:Connect(onchar)

local netb = makeutilbutton("net bypass")
local net = false
netb.MouseButton1Click:Connect(function()
	if net then
		net = false
	else
		net = shp and function(Radius) 
			shp(lp, "SimulationRadius", Radius) 
		end
		net = net or ssr
		if not net then
			notify("exploit not supported")
		end
	end
	netb.Text = "net bypass" .. ((net and " (Enabled)") or "")
end)

makeutilbutton("rejoin").MouseButton1Click:Connect(function()
	if #plrs:GetPlayers() == 1 then
		lp:Kick()
		wait()
		g:GetService("TeleportService"):Teleport(g.PlaceId, lp)
	else
		g:GetService("TeleportService"):TeleportToPlaceInstance(g.PlaceId, g.JobId, lp)
	end
end)

makeutilbutton("serverhop").MouseButton1Click:Connect(function()
	local servers = nil
	pcall(function()
		servers = g:GetService("HttpService"):JSONDecode(g:HttpGetAsync("https://games.roblox.com/v1/games/" .. g.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data
	end)
	if type(servers) ~= "table" then
		notify("error getting server list")
		return
	end
	local jobIds = {}
	for i, v in pairs(servers) do
		if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= g.JobId then
			table.insert(jobIds, v.id)
		end
	end
	if #jobIds > 0 then
		g:GetService("TeleportService"):TeleportToPlaceInstance(g.PlaceId, jobIds[math.random(1, #jobIds)])
	else
		notify("no server found")
	end
end)

makeutilbutton("instant leave").MouseButton1Click:Connect(function()
	lp:Kick()
	wait()
	g:Shutdown()
end)


local cbringframe = makeFrame(scrollingFrame, "cbring", Color3.fromRGB(15, 100, 15))
local cbringscroll = cbringframe.ScrollingFrame

local cbring = {}

local togglecbring = nil

local function makecbringframe(name)
	local plrcbringf = Instance.new("Frame")
	local uncbringbtn = Instance.new("TextButton")
	local cbringplrname = Instance.new("TextBox")
	plrcbringf.Name = name
	plrcbringf.BackgroundColor3 = Color3.fromRGB(106, 106, 106)
	plrcbringf.BorderSizePixel = 0
	plrcbringf.Size = UDim2.new(1, -10, 0, 30)
	plrcbringf.Parent = cbringscroll
	uncbringbtn.Name = "removeposbutton"
	uncbringbtn.Parent = plrcbringf
	uncbringbtn.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
	uncbringbtn.BorderSizePixel = 0
	uncbringbtn.Position = UDim2.new(1, -25, 0, 5)
	uncbringbtn.Size = UDim2.new(0, 20, 1, -10)
	uncbringbtn.Font = Enum.Font.SourceSans
	uncbringbtn.Text = "X"
	uncbringbtn.TextColor3 = Color3.fromRGB(223, 223, 223)
	uncbringbtn.TextSize = 16.000
	cbringplrname.Parent = plrcbringf
	cbringplrname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	cbringplrname.BackgroundTransparency = 1.000
	cbringplrname.BorderSizePixel = 0
	cbringplrname.Position = UDim2.new(0, 5, 0, 5)
	cbringplrname.Size = UDim2.new(1, -80, 1, -10)
	cbringplrname.Font = Enum.Font.SourceSans
	cbringplrname.Text = name
	cbringplrname.TextColor3 = Color3.fromRGB(0, 0, 0)
	cbringplrname.TextSize = 25.000
	cbringplrname.TextXAlignment = Enum.TextXAlignment.Left
	uncbringbtn.MouseButton1Click:Connect(function()
		togglecbring(name)
	end)
	return plrcbringf
end

togglecbring = function(name)
	local frame = gp(cbringscroll, name, "Frame")
	if frame then
		pcall(function()
			table.remove(cbring, table.find(cbring, name))
		end)
		frame:Destroy()
		notify("removed " .. name .. " from cbring")
	else
		table.insert(cbring, name)
		makecbringframe(name)
		notify("added " .. name .. " to cbring")
	end
end

cbringb.MouseButton1Click:Connect(function()
	togglecbring(currentplayer.Name)
end)

local cbringallbtn = Instance.new("TextButton")
cbringallbtn.Name = "cbringallbtn"
cbringallbtn.Parent = cbringframe.framelabel
cbringallbtn.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
cbringallbtn.BorderSizePixel = 0
cbringallbtn.Position = UDim2.new(1, -57, 0, 2)
cbringallbtn.Size = UDim2.new(0, 55, 1, -4)
cbringallbtn.Font = Enum.Font.SourceSans
cbringallbtn.Text = "+ add all"
cbringallbtn.TextColor3 = Color3.fromRGB(206, 206, 206)
cbringallbtn.TextSize = 14.000
cbringallbtn.MouseButton1Click:Connect(function()
	for i, v in pairs(plrs:GetPlayers()) do
		if (v ~= lp) and v and v.Parent and (not table.find(cbring, v.Name)) then
			togglecbring(v.Name)
		end
	end
end)

spawn(function()
	while gui do
		local waited = false
		local lpc = lp.Character
		if lpc and lpc.Parent then
			local part0 = gp(lpc, "Torso", "BasePart") or gp(lpc, "HumanoidRootPart", "BasePart") or gp(lpc, "Head", "BasePart") or lpc:FindFirstChildWhichIsA("BasePart")
			if part0 then
				for i, v in pairs(plrs:GetPlayers()) do
					if v ~= lp then
						local c = v.Character
						if c and c.Parent then
							if table.find(cbring, v.Name) then
								local part1 = gp(c, part0.Name, "BasePart") or gp(c, "Torso", "BasePart") or gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
								if part1 then
									local p1cf = part0.CFrame
									waited = true
									weldtp(part1, p1cf + p1cf.LookVector * 2)
								end
							end
						end
					end
				end
			end
		end
		if not waited then
			stepped:Wait()
		end
	end
end)

local con = nil
con = stepped:Connect(function()
    if not gui then
        con:Disconnect()
        return
    end
	local lpc = lp.Character
	if noclip and lpc and lpc.Parent then
		for i, v in pairs(lpc:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
		end
	end
end)

gui.Enabled = true
renderstepped:Wait()
playercframe.Visible = false
    print("Clicked")
end)