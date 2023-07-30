--[[
NOTE: due to a recent roblox change this script will most likely wont work,
More info: https://www.youtube.com/post/Ugkxd2msc7Mh8Ue0bX2_XsE5xQiFY2mYJDSa
]]
--made by rouxhaver/1+1=2
--use with a netbypass
--R6 only

--required hats/hair:
--https://www.roblox.com/catalog/301818806/Serenas-Hair
--https://www.roblox.com/catalog/48474313/Red-Roblox-Cap
--https://www.roblox.com/catalog/62724852/Chestnut-Bun
--https://www.roblox.com/catalog/451220849/Lavender-Updo
--https://www.roblox.com/catalog/48474294/ROBLOX-Girl-Hair
--https://www.roblox.com/catalog/376527115/Jade-Necklace-with-Shell-Pendant
--https://www.roblox.com/catalog/3033910400/International-Fedora-Germany
--https://www.roblox.com/catalog/4489239608/International-Fedora-United-Kingdom
--https://www.roblox.com/catalog/63690008/Pal-Hair
--https://www.roblox.com/catalog/62234425/Brown-Hair

--some of the script is auto-generated so less functions than normal

player = game.Players.LocalPlayer
driving = false
debugtrans = 1

local model = Instance.new("Model",workspace)

local chas1 = Instance.new("Part",model)
chas1.Size = Vector3.new(1,1,2)
chas1.Position = player.Character.Head.Position + Vector3.new(0,0,4)
chas1.Transparency = debugtrans

local chas2 = Instance.new("Part",model)
chas2.Size = Vector3.new(1,1,2)
chas2.Position = player.Character.Head.Position + Vector3.new(0,0,4)
chas2.Transparency = debugtrans

local chas3 = Instance.new("Part",model)
chas3.Size = Vector3.new(1,1,2)
chas3.Position = player.Character.Head.Position + Vector3.new(0,0,4)
chas3.Transparency = debugtrans

local chas4 = Instance.new("Part",model)
chas4.Size = Vector3.new(1,1,2)
chas4.Position = player.Character.Head.Position + Vector3.new(0,0,4)
chas4.Transparency = debugtrans

local wheel1 = Instance.new("Part",model)
wheel1.Size = Vector3.new(1,2,2)
wheel1.Shape = Enum.PartType.Cylinder
wheel1.Position = player.Character.Head.Position + Vector3.new(0,0,4)
wheel1.Transparency = debugtrans

local wheel2 = Instance.new("Part",model)
wheel2.Size = Vector3.new(1,2,2)
wheel2.Shape = Enum.PartType.Cylinder
wheel2.Position = player.Character.Head.Position + Vector3.new(0,0,4)
wheel2.Transparency = debugtrans

local wheel3 = Instance.new("Part",model)
wheel3.Size = Vector3.new(1,2,2)
wheel3.Shape = Enum.PartType.Cylinder
wheel3.Position = player.Character.Head.Position + Vector3.new(0,0,4)
wheel3.Transparency = debugtrans

local wheel4 = Instance.new("Part",model)
wheel4.Size = Vector3.new(1,2,2)
wheel4.Shape = Enum.PartType.Cylinder
wheel4.Position = player.Character.Head.Position + Vector3.new(0,0,4)
wheel4.Transparency = debugtrans

local seat = Instance.new("Part",model)
seat.Size = Vector3.new(1,1,2)
seat.Position = player.Character.Head.Position
seat.Transparency = debugtrans

local weld1 = Instance.new("Weld",model)
weld1.Part0 = chas1
weld1.Part1 = chas2
weld1.C0 = CFrame.new(-0.5, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
weld1.C1 = CFrame.new(0.5, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)

local weld2 = Instance.new("Weld",model)
weld2.Part0 = chas3
weld2.Part1 = chas2
weld2.C0 = CFrame.new(0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1)
weld2.C1 = CFrame.new(0, 0, -1, 1, 0, 0, 0, 1, 0, 0, 0, 1)

local weld3 = Instance.new("Weld",model)
weld3.Part0 = chas4
weld3.Part1 = chas3
weld3.C0 = CFrame.new(-0.5, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
weld3.C1 = CFrame.new(0.5, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)

local weld4 = Instance.new("Weld",model)
weld4.Part0 = chas4
weld4.Part1 = chas1
weld4.C0 = CFrame.new(0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1)
weld4.C1 = CFrame.new(0, 0, -1, 1, 0, 0, 0, 1, 0, 0, 0, 1)

local weld5 = Instance.new("Weld",model)
weld5.Part0 = seat
weld5.Part1 = chas2
weld5.C0 = CFrame.new(0, -0.5, 0, 1, 0, 0, 0, 0, -1, 0, 1, 0)
weld5.C1 = CFrame.new(0.5, 0.499999762, -0.5, 0, 1, 0, 0, 0, -1, -1, 0, 0)

local weld6 = Instance.new("Weld",model)
weld6.Part0 = seat
weld6.Part1 = chas1
weld6.C0 = CFrame.new(0, -0.5, 0, 1, 0, 0, 0, 0, -1, 0, 1, 0)
weld6.C1 = CFrame.new(-0.5, 0.499999762, -0.5, 0, 1, 0, 0, 0, -1, -1, 0, 0)

local hinge = Instance.new("HingeConstraint",model)
local att0 = Instance.new("Attachment",wheel1)
att0.CFrame = CFrame.new(0.5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local att1 = Instance.new("Attachment",chas3)
att1.CFrame = CFrame.new(-0.5, -0.5, -1, 1, 0, 0, 0, 1, 0, 0, 0, 1)
hinge.Attachment0 = att0
hinge.Attachment1 = att1

local hinge = Instance.new("HingeConstraint",model)
local att0 = Instance.new("Attachment",wheel2)
att0.CFrame = CFrame.new(0.5, -0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local att1 = Instance.new("Attachment",chas2)
att1.CFrame = CFrame.new(-0.5, -0.5, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1)
hinge.Attachment0 = att0
hinge.Attachment1 = att1

local hinge = Instance.new("HingeConstraint",model)
local att0 = Instance.new("Attachment",wheel3)
att0.CFrame = CFrame.new(-0.5, 0, -0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
local att1 = Instance.new("Attachment",chas4)
att1.CFrame = CFrame.new(0.5, -0.5, -1, -1, 0, 0, 0, 1, 0, 0, 0, -1)
hinge.Attachment0 = att0
hinge.Attachment1 = att1

local hinge = Instance.new("HingeConstraint",model)
local att0 = Instance.new("Attachment",wheel4)
att0.CFrame = CFrame.new(-0.5, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
local att1 = Instance.new("Attachment",chas1)
att1.CFrame = CFrame.new(0.5, -0.5, 1, -1, 0, 0, 0, 1, 0, 0, 0, -1)
hinge.Attachment0 = att0
hinge.Attachment1 = att1

local SeatWeld = Instance.new("Weld",model)
SeatWeld.Part0 = seat
SeatWeld.Part1 = player.Character.HumanoidRootPart
SeatWeld.C0 = CFrame.new(0,1,0) * CFrame.Angles(0,math.rad(-90),0)
SeatWeld.Enabled = false



stoop = false

seat.Touched:Connect(function(Part)
	if Part.Parent.Name == player.Name and stoop == false then
		SeatWeld.Enabled = true
		player.Character.Humanoid.Sit = true
		driving = true
	end
end)

att = Instance.new("Attachment",seat)
att.CFrame = CFrame.new(-1.5, -1, 0)
force = Instance.new("VectorForce",seat)
force.Attachment0 = att
force.Force = Vector3.new(0,0,0)

att = Instance.new("Attachment",seat)
att.CFrame = CFrame.new(7.5, -1.5, 0)
tforce = Instance.new("VectorForce",seat)
tforce.Attachment0 = att
tforce.Force = Vector3.new(0,0,0)


input = game:GetService("UserInputService")

input.JumpRequest:Connect(function()
	if driving == true then
		stoop = true
		SeatWeld.Enabled = false
		force.Force = Vector3.new(0,0,0)
		tforce.Force = Vector3.new(0,0,0)
		driving = false
		wait(3)
		stoop = false
	end
end)

input.InputBegan:Connect(function(thingy)
	if driving == true then
		if thingy.KeyCode == Enum.KeyCode.W then
			force.Force = Vector3.new(300,0,0)
		end
		if thingy.KeyCode == Enum.KeyCode.S then
			force.Force = Vector3.new(-300,0,0)
		end
		if thingy.KeyCode == Enum.KeyCode.D then
			tforce.Force = Vector3.new(0,0,500)
		end
		if thingy.KeyCode == Enum.KeyCode.A then
			tforce.Force = Vector3.new(0,0,-500)
		end
	end
end)

input.InputEnded:Connect(function(thingy)
	if driving == true then
		if thingy.KeyCode == Enum.KeyCode.W then
			force.Force = Vector3.new(0,0,0)
		end
		if thingy.KeyCode == Enum.KeyCode.S then
			force.Force = Vector3.new(0,0,0)
		end
		if thingy.KeyCode == Enum.KeyCode.D then
			tforce.Force = Vector3.new(0,0,0)
		end
		if thingy.KeyCode == Enum.KeyCode.A then
			tforce.Force = Vector3.new(0,0,0)
		end
	end
end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/rouxhaver/random-sh-t/main/Credit"))()

player = game.Players.LocalPlayer
char = player.Character
vbreak = false

function rotate(X,Y,Z)
	return CFrame.Angles(math.rad(X),math.rad(Y),math.rad(Z))
end

function Join(Hat,Part,Offset,Rotation,Mesh)
	if Mesh == false then Hat.Handle:FindFirstChildWhichIsA("SpecialMesh"):Destroy() end
	Hat.Handle.AccessoryWeld:Destroy()
	local method = Instance.new("RopeConstraint",player.Character)
	method.Length = math.huge
	method.Attachment0 = Instance.new("Attachment",char.Head)
	method.Attachment1 = Instance.new("Attachment",Hat.Handle)
	coroutine.wrap(function()
		while task.wait() do
			Hat.Handle.CFrame = (Part.CFrame + Part.CFrame.LookVector * Offset.Z + Part.CFrame.RightVector * Offset.X + Part.CFrame.UpVector * Offset.Y) * Rotation
			if vbreak == true then break end
		end
	end)()
end

Join(
	player.Character["Pal Hair"], -- the Accessory
	wheel1, -- Part to attach to
	Vector3.new(0,0,0), -- offset
	rotate(0,0,0), -- Rotation
	false -- Keep mesh
)

Join(
	player.Character["Kate Hair"], -- the Accessory
	wheel2, -- Part to attach to
	Vector3.new(0,0,0), -- offset
	rotate(0,0,0), -- Rotation
	false -- Keep mesh
)

Join(
	player.Character["LavanderHair"], -- the Accessory
	wheel3, -- Part to attach to
	Vector3.new(0,0,0), -- offset
	rotate(0,0,0), -- Rotation
	false -- Keep mesh
)

Join(
	player.Character["Necklace"], -- the Accessory
	wheel4, -- Part to attach to
	Vector3.new(0,0,0), -- offset
	rotate(0,0,0), -- Rotation
	false -- Keep mesh
)

Join(
	player.Character["LongHairBeanie"], -- the Accessory
	chas1, -- Part to attach to
	Vector3.new(0,0,0.42), -- offset
	rotate(90,0,0), -- Rotation
	false -- Keep mesh
)
Join(
	player.Character["Pink Hair"], -- the Accessory
	chas2, -- Part to attach to
	Vector3.new(0,0,0), -- offset
	rotate(0,0,0), -- Rotation
	false -- Keep mesh
)
Join(
	player.Character["Hat1"], -- the Accessory
	chas3, -- Part to attach to
	Vector3.new(0,0,0), -- offset
	rotate(0,0,0), -- Rotation
	false -- Keep mesh
)
Join(
	player.Character["InternationalFedora"], -- the Accessory
	chas4, -- Part to attach to
	Vector3.new(0,0,0.5), -- offset
	rotate(0,0,0), -- Rotation
	false -- Keep mesh
)

if e ~= "e" then                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            game.Players.LocalPlayer:Kick() 
end

Join(
	player.Character["MeshPartAccessory"], -- the Accessory
	chas4, -- Part to attach to
	Vector3.new(0,0,-0.5), -- offset
	rotate(0,0,0), -- Rotation
	false -- Keep mesh
)
Join(
	player.Character["Robloxclassicred"], -- the Accessory
	seat, -- Part to attach to
	Vector3.new(0,0,0), -- offset
	rotate(0,0,0), -- Rotation
	false -- Keep mesh
)