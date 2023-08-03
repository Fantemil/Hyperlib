--[[

	join for more cool scripts: 
	https://discord.gg/pN7y37KGkd

	recommended hats:
	roblox.com/catalog/62234425
	roblox.com/catalog/63690008
	roblox.com/catalog/62724852
	roblox.com/catalog/451220849
	roblox.com/catalog/48474294
	roblox.com/catalog/48474313

	note: works with any 6 hats

]]

local netboost = Vector3.new(0, 45, 0)

local ws = game:GetService("Workspace") 
local rs = game:GetService("RunService")
local lp = game:GetService("Players").LocalPlayer

local function align(Part0, Part1)
	Part0.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0.0001, 0.0001, 0.0001, 0.0001)

	local att1 = Instance.new("Attachment")
	att1.Orientation = Vector3.new(0, 0, 0)
	att1.Position = Vector3.new(0, 0, 0)
	att1.Archivable = true
	local att0 = att1:Clone()

	local ap = Instance.new("AlignPosition", att0)
	ap.ApplyAtCenterOfMass = false
	ap.MaxForce = math.huge
	ap.MaxVelocity = math.huge
	ap.ReactionForceEnabled = false
	ap.Responsiveness = 200
	ap.RigidityEnabled = false

	local ao = Instance.new("AlignOrientation", att0)
	ao.MaxAngularVelocity = math.huge
	ao.MaxTorque = math.huge
	ao.PrimaryAxisOnly = false
	ao.ReactionTorqueEnabled = false
	ao.Responsiveness = 200
	ao.RigidityEnabled = false

	ap.Attachment1 = att1
	ap.Attachment0 = att0
	ao.Attachment1 = att1
	ao.Attachment0 = att0

	att1.Parent = Part1
	att0.Parent = Part0


	if netboost then
		spawn(function()
			while rs.Heartbeat:Wait() and Part0 and Part0.Parent do
				Part0.Velocity = netboost
			end
		end)
		spawn(function()
			while rs.Stepped:Wait() and Part0 and Part0.Parent and Part1 and Part1.Parent do
				Part0.Velocity = Part1.Velocity
			end
		end)
	end
end
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
local startpart = gp(c, "Torso", "BasePart") or gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Head", "BasePart")
if not startpart then
	print("part not found")
	return
end
local size = Vector3.new(1, 1, 2)
local orient = {
	Vector3.new(45 ,-45, 0),
	Vector3.new(45, -135, 0),
	Vector3.new(0, 90, 0),
	Vector3.new(45, 45, 0),
	Vector3.new(45, 135, 0),
	Vector3.new(0, 0, 0)
}
local hats = {}
for i, v in pairs(c:GetChildren()) do
	if v:IsA("Accessory") then
		table.insert(hats, v)
	end
end
local allhandles = {}
for i, v in pairs(hats) do
	local handle = gp(v, "Handle", "BasePart")
	if handle then
		table.insert(allhandles, handle)
	end
end
local handles = {}
for i, v in pairs(allhandles) do
	if v.Size == size then
		table.insert(handles, v)
	end
end
if #handles < #orient then
	for i, v in pairs(allhandles) do
		if not table.find(handles, v) then
			table.insert(handles, v)
		end
		if #handles == #orient then
			break
		end
	end
end
if #handles < #orient then
	print("not enough hats")
	return
end
local ball = Instance.new("Part", ws)
ball.Anchored = true
ball.CanCollide = false
ball.CanTouch = false
ball.Transparency = 1
ball.Shape = "Ball"
ball.Size = Vector3.new(2.3, 2.3, 2.3)
ball.Position = startpart.Position
for i, v in pairs(orient) do
	local handle = handles[i]
	handle:ClearAllChildren()
	local part = Instance.new("Part", ball)
	part.Massless = true
	part.Transparency = 1
	part.Anchored = true
	part.CanCollide = false
	part.Position = ball.Position
	part.Orientation = v
	local weld = Instance.new("WeldConstraint", part)
	weld.Part0 = ball
	weld.Part1 = part
	weld.Enabled = true
	handle.Parent = part
	align(handle, part)
	part.Anchored = false
	handle.Changed:Connect(function(prop)
		if (prop == "Parent") and part and part.Parent then
			part:Destroy()
		end
	end)
end
ball.CanCollide = true
ball.Anchored = false
c.Changed:Connect(function(prop)
	if (prop == "Parent") and ball and ball.Parent then
		ball:Destroy()
	end
end)