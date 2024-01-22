-- [DIO's Time Stop Script] --

-- Based on the main ability of DIO's Stand, The World, from Part 3 of JoJo's Bizarre Adventure.

-- MOST of everything in this script is written by Tsuagon, except for the screenshake part, that was taken from a tutorial. Credit to the people to made said tutorials and scripts.

----------------------------------------------------------------------------------------------------

-- Player Stuff --

local player = game:GetService("Players").LocalPlayer
local char = player.Character
local head = char.Head
local torso = char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso")
local root = char.HumanoidRootPart
local humanoid = char.Humanoid

local playerhealth = humanoid.Health

local mouse = player:GetMouse()

----------------------------------------------------------------------------------------------------

-- General Stuff --

local tween = game:GetService("TweenService")
local lighting = game:GetService("Lighting")
local input = game:GetService("UserInputService")

local frozenobjectstable = {}

seconds = 10 -- You can change the length in which time is stopped for by modifying this number.

stoppedtime = false

-- Time Stop Effect

local timestopeffect = Instance.new("ColorCorrectionEffect")
timestopeffect.Parent = lighting
timestopeffect.Saturation = 0
timestopeffect.Contrast = 0
timestopeffect.Enabled = true

-- Sphere Effect

local timestopsphere1 = Instance.new("Part")
timestopsphere1.Parent = torso
timestopsphere1.Material = Enum.Material.ForceField
timestopsphere1.Size = Vector3.new(0, 0, 0)
timestopsphere1.Shape = Enum.PartType.Ball
timestopsphere1.CanCollide = false
timestopsphere1.Massless = true
timestopsphere1.Color = Color3.new(1, 1, 1)
timestopsphere1.CastShadow = false

local sphere1weld = Instance.new("Weld")
sphere1weld.Part0 = timestopsphere1
sphere1weld.Part1 = torso
sphere1weld.C0 = torso.CFrame
sphere1weld.C1 = torso.CFrame
sphere1weld.Parent = timestopsphere1

local timestopsphere2 = Instance.new("Part")
timestopsphere2.Parent = torso
timestopsphere2.Material = Enum.Material.ForceField
timestopsphere2.Size = Vector3.new(0, 0, 0)
timestopsphere2.Shape = Enum.PartType.Ball
timestopsphere2.CanCollide = false
timestopsphere2.Massless = true
timestopsphere2.Color = Color3.new(1, 1, 1)
timestopsphere2.CastShadow = false

local sphere2weld = Instance.new("Weld")
sphere2weld.Part0 = timestopsphere2
sphere2weld.Part1 = torso
sphere2weld.C0 = torso.CFrame
sphere2weld.C1 = torso.CFrame
sphere2weld.Parent = timestopsphere2

local timestopsphere3 = Instance.new("Part")
timestopsphere3.Parent = torso
timestopsphere3.Material = Enum.Material.ForceField
timestopsphere3.Size = Vector3.new(0, 0, 0)
timestopsphere3.Shape = Enum.PartType.Ball
timestopsphere3.CanCollide = false
timestopsphere3.Massless = true
timestopsphere3.Color = Color3.new(1, 1, 1)
timestopsphere3.CastShadow = false

local sphere3weld = Instance.new("Weld")
sphere3weld.Part0 = timestopsphere3
sphere3weld.Part1 = torso
sphere3weld.C0 = torso.CFrame
sphere3weld.C1 = torso.CFrame
sphere3weld.Parent = timestopsphere3

-- Sounds

local timestopvoiceline = Instance.new("Sound", head)
timestopvoiceline.SoundId = "rbxassetid://7514417921"
timestopvoiceline.Volume = 5

local injuredtimestopvoiceline = Instance.new("Sound", head)
injuredtimestopvoiceline.SoundId = "rbxassetid://6043864223"
injuredtimestopvoiceline.Volume = 5

local tssfx = Instance.new("Sound", head) 
tssfx.SoundId = "rbxassetid://5679636294"
tssfx.Volume = 5

local timeresumevoiceline = Instance.new("Sound", head)
timeresumevoiceline.SoundId = "rbxassetid://4329802996"
timeresumevoiceline.Volume = 5

local injuredtimeresumevoiceline = Instance.new("Sound", head)
injuredtimeresumevoiceline.SoundId = "rbxassetid://6043853981"
injuredtimeresumevoiceline.Volume = 5

local countervoiceline = Instance.new("Sound", head)
countervoiceline.SoundId = "rbxassetid://6675048510"
countervoiceline.Volume = 5

local countersfx = Instance.new("Sound", head)
countersfx.SoundId = "rbxassetid://4572672240"
countersfx.Volume = 4.5

local tsteleportsfx = Instance.new("Sound", torso)
tsteleportsfx.SoundId = "rbxassetid://3077287610"
tsteleportsfx.Volume = 4.5

local clock = Instance.new("Sound", workspace)
clock.SoundId = "rbxassetid://4940109913"
clock.Volume = 4.5
clock.Looped = true

----------------------------------------------------------------------------------------------------

-- Main Script --

function timestop()
	if stoppedtime == true then return end
	if humanoid.Health < 50 then
		injuredtimestopvoiceline:Play()
		wait(1)
		tssfx:Play()
	elseif humanoid.Health > 50 then
		timestopvoiceline:Play()
		wait(1.6)
	end
        settings().Network.IncomingReplicationLag = math.huge
	for _, v in pairs(workspace:GetDescendants()) do
		if v:IsA("BasePart") then
			if not v.Anchored == true then
				if not v:IsDescendantOf(char) then
					v.Anchored = true
					table.insert(frozenobjectstable, v)
				end
			end
		end
	end
	coroutine.resume(coroutine.create(function()
		coroutine.resume(coroutine.create(function()
			timestopeffect.Enabled = true
			tween:Create(workspace.CurrentCamera, TweenInfo.new(1.5, Enum.EasingStyle.Exponential), {FieldOfView = 250}):Play();
			coroutine.resume(coroutine.create(function()
				while stoppedtime == false do
					tween:Create(timestopeffect, TweenInfo.new(0.8, Enum.EasingStyle.Quart), {Contrast = -2}):Play();
					wait(0.3)
					tween:Create(timestopeffect, TweenInfo.new(0.5, Enum.EasingStyle.Quart), {Saturation = -1}):Play();
					wait(0.2)
					tween:Create(timestopeffect, TweenInfo.new(0.5, Enum.EasingStyle.Quart), {Saturation = -2}):Play();
					wait()
					tween:Create(timestopeffect, TweenInfo.new(0.8, Enum.EasingStyle.Quart), {Contrast = -2.4}):Play();
					wait(0.3)
					tween:Create(timestopeffect, TweenInfo.new(0.5, Enum.EasingStyle.Quart), {Saturation = 1}):Play();
					wait(0.2)
					tween:Create(timestopeffect, TweenInfo.new(0.5, Enum.EasingStyle.Quart), {Saturation = -2}):Play();
				end
			end))
			wait(1.7)
			tween:Create(workspace.CurrentCamera, TweenInfo.new(1, Enum.EasingStyle.Quart), {FieldOfView = 70}):Play();
			tween:Create(timestopeffect, TweenInfo.new(1, Enum.EasingStyle.Quart), {Contrast = 0}):Play();
			tween:Create(timestopeffect, TweenInfo.new(1, Enum.EasingStyle.Quart), {Saturation = -0.8}):Play();
		end))
		coroutine.resume(coroutine.create(function()
			for _ = 1, 65 do
				wait()
				local offset1 = math.random(-650, 650) / 700
				local offset2 = math.random(-650, 650) / 700
				local offset3 = math.random(-650, 650) / 700
				tween:Create(humanoid, TweenInfo.new(0.1), {CameraOffset = Vector3.new(offset1, offset2, offset3)}):Play();
			end
			tween:Create(humanoid, TweenInfo.new(0.1), {CameraOffset = Vector3.new(0, 0, 0)}):Play();
		end))
		coroutine.resume(coroutine.create(function()
			tween:Create(timestopsphere1, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out, 0), {Size = Vector3.new(45, 45, 45)}):Play();
			tween:Create(timestopsphere2, TweenInfo.new(1.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out, 0), {Size = Vector3.new(40, 40, 40)}):Play();
			tween:Create(timestopsphere3, TweenInfo.new(1.7, Enum.EasingStyle.Quart, Enum.EasingDirection.Out, 0), {Size = Vector3.new(35, 35, 35)}):Play();
			wait(1.7)
			tween:Create(timestopsphere1, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out, 0), {Size = Vector3.new(0, 0, 0)}):Play();
			tween:Create(timestopsphere2, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out, 0), {Size = Vector3.new(0, 0, 0)}):Play();
			tween:Create(timestopsphere3, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out, 0), {Size = Vector3.new(0, 0, 0)}):Play();
		end))
		coroutine.resume(coroutine.create(function()
			for _, v in pairs(workspace:GetDescendants()) do
				if v:IsA("ParticleEmitter") then
					tween:Create(v, TweenInfo.new(3), {TimeScale = 0}):Play();
				end
			end
			for _, v in pairs(workspace:GetDescendants()) do
				if v:IsA("Fire") then
					tween:Create(v, TweenInfo.new(3), {TimeScale = 0}):Play();
				end
			end
		end))
		coroutine.resume(coroutine.create(function()
			for _, v in pairs(workspace:GetDescendants()) do
				if v:IsA("Sound") then
					if not v:IsDescendantOf(char) then
						tween:Create(v, TweenInfo.new(4), {PlaybackSpeed = 0}):Play();
					end
				end
			end
		end))
	end))
	stoppedtime = true
	wait(seconds)
	timeresume()
end

function timeresume()
	if stoppedtime == false then return end
	if humanoid.Health < 50 then
		injuredtimeresumevoiceline:Play()
		wait(0.6)
	elseif humanoid.Health > 50 then
		timeresumevoiceline:Play()
		wait(0.9)
	end
        settings().Network.IncomingReplicationLag = 0
	for _, v in pairs(frozenobjectstable) do
		if v:IsA("BasePart") then
			v.Anchored = false
		end
	end
	coroutine.resume(coroutine.create(function()
		for _, v in pairs(workspace:GetDescendants()) do
			if v:IsA("ParticleEmitter") then
				tween:Create(v, TweenInfo.new(3), {TimeScale = 1}):Play();
			end
		end
		for _, v in pairs(workspace:GetDescendants()) do
			if v:IsA("Fire") then
				tween:Create(v, TweenInfo.new(3), {TimeScale = 1}):Play();
			end
		end
	end))
	coroutine.resume(coroutine.create(function()
		for _, v in pairs(workspace:GetDescendants()) do
			if v:IsA("Sound") then
				if not v:IsDescendantOf(char) then
					tween:Create(v, TweenInfo.new(2), {PlaybackSpeed = 1}):Play();
				end
			end
		end
	end))
	tween:Create(timestopeffect, TweenInfo.new(2, Enum.EasingStyle.Quart), {Saturation = 0}):Play();
	stoppedtime = false
end

function tsteleport()
	if stoppedtime == true then return end
	tsteleportsfx:Play()
	coroutine.resume(coroutine.create(function()
		tween:Create(timestopeffect, TweenInfo.new(0.1), {TintColor = Color3.new(0, 0, 0)}):Play();
		wait(0.2)
		tween:Create(timestopeffect, TweenInfo.new(0.1), {TintColor = Color3.new(1, 1, 1)}):Play();
	end))
	root.CFrame = CFrame.new(mouse.Hit.p.X, mouse.Hit.p.Y, mouse.Hit.p.Z)
end

--[[function counter()
	countervoiceline:Play()
	wait(0.6)
	humanoid.HealthChanged:Connect(function(health)
		if playerhealth > 100 then
			countersfx:Play()
			root.CFrame = root.CFrame + root.CFrame.lookVector * -20
		elseif health == playerhealth then return end
	end)
end]]--

mouse.KeyDown:Connect(function(key)
	if key == "f" and stoppedtime == false then
		timestop()
	elseif key == "f" and stoppedtime == true then
		timeresume()
	end
	if key == "v" and stoppedtime == false then
		tsteleport()
	end
end)