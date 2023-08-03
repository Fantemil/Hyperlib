
--Dummy Spawner
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
Script2 = Instance.new("Script")
Decal3 = Instance.new("Decal")
Model4 = Instance.new("Model")
Part5 = Instance.new("Part")
SpecialMesh6 = Instance.new("SpecialMesh")
Decal7 = Instance.new("Decal")
Part8 = Instance.new("Part")
Decal9 = Instance.new("Decal")
Motor6D10 = Instance.new("Motor6D")
Motor6D11 = Instance.new("Motor6D")
Motor6D12 = Instance.new("Motor6D")
Motor6D13 = Instance.new("Motor6D")
Motor6D14 = Instance.new("Motor6D")
Part15 = Instance.new("Part")
Part16 = Instance.new("Part")
Part17 = Instance.new("Part")
Part18 = Instance.new("Part")
Humanoid19 = Instance.new("Humanoid")
Part20 = Instance.new("Part")
Sound21 = Instance.new("Sound")
Sound22 = Instance.new("Sound")
Sound23 = Instance.new("Sound")
Sound24 = Instance.new("Sound")
Sound25 = Instance.new("Sound")
Sound26 = Instance.new("Sound")
Sound27 = Instance.new("Sound")
Sound28 = Instance.new("Sound")
Sound29 = Instance.new("Sound")
Motor6D30 = Instance.new("Motor6D")
Script31 = Instance.new("Script")
Script32 = Instance.new("Script")
NumberValue33 = Instance.new("NumberValue")
Script34 = Instance.new("Script")
Sound35 = Instance.new("Sound")
Script36 = Instance.new("Script")
NumberValue37 = Instance.new("NumberValue")
Script38 = Instance.new("Script")
Sound39 = Instance.new("Sound")
Script40 = Instance.new("Script")
NumberValue41 = Instance.new("NumberValue")
Script42 = Instance.new("Script")
Sound43 = Instance.new("Sound")
Script44 = Instance.new("Script")
NumberValue45 = Instance.new("NumberValue")
Script46 = Instance.new("Script")
Sound47 = Instance.new("Sound")
Script48 = Instance.new("Script")
NumberValue49 = Instance.new("NumberValue")
Script50 = Instance.new("Script")
Sound51 = Instance.new("Sound")
Script52 = Instance.new("Script")
Script53 = Instance.new("Script")
Script54 = Instance.new("Script")
Script55 = Instance.new("Script")
Accessory56 = Instance.new("Accessory")
Part57 = Instance.new("Part")
SpecialMesh58 = Instance.new("SpecialMesh")
Vector3Value59 = Instance.new("Vector3Value")
Weld60 = Instance.new("Weld")
BodyColors61 = Instance.new("BodyColors")
Shirt62 = Instance.new("Shirt")
ShirtGraphic63 = Instance.new("ShirtGraphic")
LocalScript64 = Instance.new("LocalScript")
StringValue65 = Instance.new("StringValue")
Animation66 = Instance.new("Animation")
NumberValue67 = Instance.new("NumberValue")
Animation68 = Instance.new("Animation")
NumberValue69 = Instance.new("NumberValue")
StringValue70 = Instance.new("StringValue")
Animation71 = Instance.new("Animation")
StringValue72 = Instance.new("StringValue")
Animation73 = Instance.new("Animation")
StringValue74 = Instance.new("StringValue")
Animation75 = Instance.new("Animation")
StringValue76 = Instance.new("StringValue")
Animation77 = Instance.new("Animation")
StringValue78 = Instance.new("StringValue")
Animation79 = Instance.new("Animation")
StringValue80 = Instance.new("StringValue")
Animation81 = Instance.new("Animation")
StringValue82 = Instance.new("StringValue")
Animation83 = Instance.new("Animation")
NumberValue84 = Instance.new("NumberValue")
Model0.Name = "Dummy"
Model0.Parent = mas
Part1.Name = "Regenerating Pad"
Part1.Parent = Model0
Part1.CFrame = CFrame.new(-12, 0.200000048, 9, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Part1.Orientation = Vector3.new(0, -90, 0)
Part1.Position = Vector3.new(-12, 0.20000004768371582, 9)
Part1.Rotation = Vector3.new(0, -90, 0)
Part1.Color = Color3.new(1, 1, 0)
Part1.Size = Vector3.new(4, 0.4000000059604645, 4)
Part1.Anchored = true
Part1.BrickColor = BrickColor.new("New Yeller")
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.brickColor = BrickColor.new("New Yeller")
Part1.FormFactor = Enum.FormFactor.Plate
Part1.formFactor = Enum.FormFactor.Plate
Script2.Parent = Part1
table.insert(cors,sandbox(Script2,function()
Dummy = script.Parent.Parent.Dummy
Clone = Dummy:Clone()

function Regen()
wait(3)
Dummy.Parent = nil
Clone.Parent = script.Parent.Parent
Dummy = Clone
Dummy:makeJoints()
Dummy.Torso.CFrame = script.Parent.CFrame + Vector3.new(0,2.7,0)
Clone = Dummy:Clone()
Dummy.Humanoid.Died:connect(Regen)
end

Dummy.Humanoid.Died:connect(Regen)
end))
Decal3.Parent = Part1
Decal3.Texture = "http://www.roblox.com/asset/?id=11949499"
Decal3.Face = Enum.NormalId.Top
Model4.Name = "Dummy"
Model4.Parent = Model0
Model4.PrimaryPart = Part5
Part5.Name = "Head"
Part5.Parent = Model4
Part5.CFrame = CFrame.new(-11.8710327, 4.91551495, 9.14945984, 1.00000048, 0, 0, 0, 1, 0, 0, 0, 1.00000048)
Part5.Position = Vector3.new(-11.87103271484375, 4.915514945983887, 9.149459838867188)
Part5.Color = Color3.new(0.972549, 0.85098, 0.427451)
Part5.Size = Vector3.new(2, 1, 1)
Part5.BrickColor = BrickColor.new("Daisy orange")
Part5.TopSurface = Enum.SurfaceType.Smooth
Part5.brickColor = BrickColor.new("Daisy orange")
Part5.FormFactor = Enum.FormFactor.Symmetric
Part5.formFactor = Enum.FormFactor.Symmetric
SpecialMesh6.Parent = Part5
SpecialMesh6.Scale = Vector3.new(1.25, 1.25, 1.25)
Decal7.Name = "face"
Decal7.Parent = Part5
Decal7.Texture = "rbxasset://textures/face.png"
Part8.Name = "Torso"
Part8.Parent = Model4
Part8.CFrame = CFrame.new(-11.8710327, 3.41551518, 9.14945984, 1.00000048, 0, 0, 0, 1, 0, 0, 0, 1.00000048)
Part8.Position = Vector3.new(-11.87103271484375, 3.415515184402466, 9.149459838867188)
Part8.Size = Vector3.new(2, 2, 1)
Part8.LeftParamA = 0
Part8.LeftParamB = 0
Part8.LeftSurface = Enum.SurfaceType.Weld
Part8.RightParamA = 0
Part8.RightParamB = 0
Part8.RightSurface = Enum.SurfaceType.Weld
Part8.FormFactor = Enum.FormFactor.Symmetric
Part8.formFactor = Enum.FormFactor.Symmetric
Decal9.Name = "roblox"
Decal9.Parent = Part8
Decal9.Texture = "http://www.roblox.com/asset/?id=5598744973"
Motor6D10.Name = "Right Shoulder"
Motor6D10.Parent = Part8
Motor6D10.MaxVelocity = 0.10000000149011612
Motor6D10.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Motor6D10.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Motor6D10.Part0 = Part8
Motor6D10.Part1 = Part16
Motor6D10.part1 = Part16
Motor6D11.Name = "Left Shoulder"
Motor6D11.Parent = Part8
Motor6D11.MaxVelocity = 0.10000000149011612
Motor6D11.C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Motor6D11.C1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Motor6D11.Part0 = Part8
Motor6D11.Part1 = Part15
Motor6D11.part1 = Part15
Motor6D12.Name = "Right Hip"
Motor6D12.Parent = Part8
Motor6D12.MaxVelocity = 0.10000000149011612
Motor6D12.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Motor6D12.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Motor6D12.Part0 = Part8
Motor6D12.Part1 = Part18
Motor6D12.part1 = Part18
Motor6D13.Name = "Left Hip"
Motor6D13.Parent = Part8
Motor6D13.MaxVelocity = 0.10000000149011612
Motor6D13.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Motor6D13.C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Motor6D13.Part0 = Part8
Motor6D13.Part1 = Part17
Motor6D13.part1 = Part17
Motor6D14.Name = "Neck"
Motor6D14.Parent = Part8
Motor6D14.MaxVelocity = 0.10000000149011612
Motor6D14.C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Motor6D14.C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Motor6D14.Part0 = Part8
Motor6D14.Part1 = Part5
Motor6D14.part1 = Part5
Part15.Name = "Left Arm"
Part15.Parent = Model4
Part15.CFrame = CFrame.new(-13.3710337, 3.41551518, 9.14945984, 1.00000048, 0, 0, 0, 1, 0, 0, 0, 1.00000048)
Part15.Position = Vector3.new(-13.371033668518066, 3.415515184402466, 9.149459838867188)
Part15.Color = Color3.new(0.972549, 0.85098, 0.427451)
Part15.Size = Vector3.new(1, 2, 1)
Part15.BrickColor = BrickColor.new("Daisy orange")
Part15.CanCollide = false
Part15.brickColor = BrickColor.new("Daisy orange")
Part15.FormFactor = Enum.FormFactor.Symmetric
Part15.formFactor = Enum.FormFactor.Symmetric
Part16.Name = "Right Arm"
Part16.Parent = Model4
Part16.CFrame = CFrame.new(-10.3710318, 3.41551518, 9.14945984, 1.00000048, 0, 0, 0, 1, 0, 0, 0, 1.00000048)
Part16.Position = Vector3.new(-10.371031761169434, 3.415515184402466, 9.149459838867188)
Part16.Color = Color3.new(0.972549, 0.85098, 0.427451)
Part16.Size = Vector3.new(1, 2, 1)
Part16.BrickColor = BrickColor.new("Daisy orange")
Part16.CanCollide = false
Part16.brickColor = BrickColor.new("Daisy orange")
Part16.FormFactor = Enum.FormFactor.Symmetric
Part16.formFactor = Enum.FormFactor.Symmetric
Part17.Name = "Left Leg"
Part17.Parent = Model4
Part17.CFrame = CFrame.new(-12.3710327, 1.41551518, 9.14945984, 1.00000048, 0, 0, 0, 1, 0, 0, 0, 1.00000048)
Part17.Position = Vector3.new(-12.37103271484375, 1.4155151844024658, 9.149459838867188)
Part17.Color = Color3.new(0.431373, 0.6, 0.792157)
Part17.Size = Vector3.new(1, 2, 1)
Part17.BottomSurface = Enum.SurfaceType.Smooth
Part17.BrickColor = BrickColor.new("Medium blue")
Part17.CanCollide = false
Part17.brickColor = BrickColor.new("Medium blue")
Part17.FormFactor = Enum.FormFactor.Symmetric
Part17.formFactor = Enum.FormFactor.Symmetric
Part18.Name = "Right Leg"
Part18.Parent = Model4
Part18.CFrame = CFrame.new(-11.3710327, 1.41551518, 9.14945984, 1.00000048, 0, 0, 0, 1, 0, 0, 0, 1.00000048)
Part18.Position = Vector3.new(-11.37103271484375, 1.4155151844024658, 9.149459838867188)
Part18.Color = Color3.new(0.431373, 0.6, 0.792157)
Part18.Size = Vector3.new(1, 2, 1)
Part18.BottomSurface = Enum.SurfaceType.Smooth
Part18.BrickColor = BrickColor.new("Medium blue")
Part18.CanCollide = false
Part18.brickColor = BrickColor.new("Medium blue")
Part18.FormFactor = Enum.FormFactor.Symmetric
Part18.formFactor = Enum.FormFactor.Symmetric
Humanoid19.Parent = Model4
Humanoid19.LeftLeg = Part17
Humanoid19.RightLeg = Part18
Humanoid19.Torso = Part20
Humanoid19.DisplayName = "8jf"
Part20.Name = "HumanoidRootPart"
Part20.Parent = Model4
Part20.CFrame = CFrame.new(-11.8710327, 3.41551518, 9.14945984, 1.00000048, 0, 0, 0, 1, 0, 0, 0, 1.00000048)
Part20.Position = Vector3.new(-11.87103271484375, 3.415515184402466, 9.149459838867188)
Part20.Transparency = 1
Part20.Size = Vector3.new(2, 2, 1)
Part20.BottomSurface = Enum.SurfaceType.Smooth
Part20.CanCollide = false
Part20.LeftParamA = 0
Part20.LeftParamB = 0
Part20.RightParamA = 0
Part20.RightParamB = 0
Part20.TopSurface = Enum.SurfaceType.Smooth
Part20.FormFactor = Enum.FormFactor.Symmetric
Part20.formFactor = Enum.FormFactor.Symmetric
Sound21.Name = "Climbing"
Sound21.Parent = Part20
Sound21.Looped = true
Sound21.MaxDistance = 150
Sound21.EmitterSize = 5
Sound21.MinDistance = 5
Sound21.SoundId = "rbxasset://sounds/action_footsteps_plastic.mp3"
Sound21.Volume = 0.6499999761581421
Sound22.Name = "Died"
Sound22.Parent = Part20
Sound22.MaxDistance = 150
Sound22.EmitterSize = 5
Sound22.MinDistance = 5
Sound22.SoundId = "rbxasset://sounds/uuhhh.mp3"
Sound22.Volume = 0.6499999761581421
Sound23.Name = "GettingUp"
Sound23.Parent = Part20
Sound23.MaxDistance = 150
Sound23.EmitterSize = 5
Sound23.MinDistance = 5
Sound23.SoundId = "rbxasset://sounds/action_get_up.mp3"
Sound23.Volume = 0.6499999761581421
Sound24.Name = "Swimming"
Sound24.Parent = Part20
Sound24.Looped = true
Sound24.MaxDistance = 150
Sound24.EmitterSize = 5
Sound24.MinDistance = 5
Sound24.Pitch = 1.600000023841858
Sound24.PlaybackSpeed = 1.600000023841858
Sound24.SoundId = "rbxasset://sounds/action_swim.mp3"
Sound24.Volume = 0.6499999761581421
Sound25.Name = "Jumping"
Sound25.Parent = Part20
Sound25.MaxDistance = 150
Sound25.EmitterSize = 5
Sound25.MinDistance = 5
Sound25.SoundId = "rbxasset://sounds/action_jump.mp3"
Sound25.Volume = 0.6499999761581421
Sound26.Name = "Landing"
Sound26.Parent = Part20
Sound26.MaxDistance = 150
Sound26.EmitterSize = 5
Sound26.MinDistance = 5
Sound26.SoundId = "rbxasset://sounds/action_jump_land.mp3"
Sound26.Volume = 1
Sound27.Name = "Splash"
Sound27.Parent = Part20
Sound27.MaxDistance = 150
Sound27.EmitterSize = 5
Sound27.MinDistance = 5
Sound27.SoundId = "rbxasset://sounds/impact_water.mp3"
Sound27.Volume = 0.6499999761581421
Sound28.Name = "FreeFalling"
Sound28.Parent = Part20
Sound28.Looped = true
Sound28.MaxDistance = 150
Sound28.EmitterSize = 5
Sound28.MinDistance = 5
Sound28.SoundId = "rbxasset://sounds/action_falling.mp3"
Sound28.Volume = 0.5250001549720764
Sound29.Name = "Running"
Sound29.Parent = Part20
Sound29.Looped = true
Sound29.TimePosition = 1.2636381717898557
Sound29.MaxDistance = 150
Sound29.EmitterSize = 5
Sound29.MinDistance = 5
Sound29.Pitch = 1.850000023841858
Sound29.PlaybackSpeed = 1.850000023841858
Sound29.SoundId = "rbxasset://sounds/action_footsteps_plastic.mp3"
Sound29.Volume = 0.6499999761581421
Motor6D30.Name = "RootJoint"
Motor6D30.Parent = Part20
Motor6D30.MaxVelocity = 0.10000000149011612
Motor6D30.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Motor6D30.C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Motor6D30.Part0 = Part20
Motor6D30.Part1 = Part8
Motor6D30.part1 = Part8
Script31.Name = "DS"
Script31.Parent = Model4
table.insert(cors,sandbox(Script31,function()
local hum = script.Parent.Humanoid
local blood = game.Lighting.headblood

local function Dead()
	blood.Position = script.Parent.Torso.Position
	blood:Clone().Parent = script.Parent.Torso
	wait(.5)
	blood.Position = script.Parent.Torso.Position
	blood:Clone().Parent = script.Parent.Torso
	wait(.5)
	blood.Position = script.Parent.Torso.Position
	blood:Clone().Parent = script.Parent.Torso
	wait(.5)
	blood.Position = script.Parent.Torso.Position
	blood:Clone().Parent = script.Parent.Torso
	wait(.5)
	blood.Position = script.Parent.Torso.Position
	blood:Clone().Parent = script.Parent.Torso
	wait(.5)
	blood.Position = script.Parent.Torso.Position
	blood:Clone().Parent = script.Parent.Torso
	wait(.5)
end

hum.Died:Connect(Dead)
end))
Script32.Name = "GoreH"
Script32.Parent = Model4
table.insert(cors,sandbox(Script32,function()
local health = script.Health
local aa = script.HeadDecap
local LA = script.Parent.Head
local Par = game.Lighting.Crush_Particle
local S = script.Gib_Sound
local character = script.Parent

LA.Touched:Connect(function(touched)
	if touched.Parent:FindFirstChild("Blade") then
		local blade = touched.Parent.Blade
		if blade.Clicked.Value == true then
			script.Disabled = true
			health.Value -= 10
			if health.Value == 0 then
				aa.Disabled = false
				script.Parent.Humanoid.Health = 0
				local h = Par:Clone()
				h.Name = 'HeadPar'
				h.Parent = character.Torso
				h.Position = character.Torso.Position
				h.Rotation = character.Torso.Rotation
				local weld = Instance.new("Weld",character.Torso)
				weld.Part0 = character.Torso
				weld.Part1 = h
				weld.C0 = CFrame.new(0,0.8,0)
				script.Disabled = true
				wait(0.1)
				LA:Destroy()
				S:Play()
			end
			wait(2)
			script.Disabled = false
		end
	end
end)

LA.Touched:Connect(function(touched2)
	if touched2.Parent:FindFirstChild("Explosion") then
		aa.Disabled = false
		script.Parent.Humanoid.Health = 0
		local h = Par:Clone()
		h.Name = 'HeadPar'
		h.Parent = character.Torso
		h.Position = character.Torso.Position
		h.Rotation = character.Torso.Rotation
		local weld = Instance.new("Weld",character.Torso)
		weld.Part0 = character.Torso
		weld.Part1 = h
		weld.C0 = CFrame.new(0,0.8,0)
		script.Disabled = true
		wait(0.1)
		LA:Destroy()
		S:Play()
	end
end)

end))
NumberValue33.Name = "Health"
NumberValue33.Parent = Script32
NumberValue33.Value = 40
Script34.Name = "HeadDecap"
Script34.Parent = Script32
table.insert(cors,sandbox(Script34,function()
local p = script.Parent.Parent.Head
local blood = game.Lighting.headblood

for i = 1,20 do
	blood.Position = p.Position
	blood:Clone().Parent = workspace.ignore
end
end))
Script34.Disabled = true
Sound35.Name = "Gib_Sound"
Sound35.Parent = Script32
Sound35.SoundId = "rbxassetid://3848986758"
Sound35.Volume = 1
Script36.Name = "GoreLA"
Script36.Parent = Model4
table.insert(cors,sandbox(Script36,function()
local health = script.Health
local aa = script.HeadDecap
local LA = script.Parent ["Left Arm"]
local Bone = game.Lighting.Bone
local S = script.Gib_Sound
local character = script.Parent

LA.Touched:Connect(function(touched)
	if touched.Parent:FindFirstChild("Blade") then
		local blade = touched.Parent.Blade
		if blade.Clicked.Value == true then
			script.Disabled = true
			health.Value -= 10
			if health.Value == 0 then
				aa.Disabled = false
				script.Parent.Humanoid.Health = 0
				local h = Bone:Clone()
				h.Name = 'L_Bone'
				h.Parent = character.Torso
				h.Position = character.Torso.Position
				h.Rotation = character.Torso.Rotation
				local weld = Instance.new("Weld",character.Torso)
				weld.Part0 = character.Torso
				weld.Part1 = h
				weld.C0 = CFrame.new(-1.2,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),0,math.rad(360))
				script.Disabled = true
				wait(0.1)
				LA:Destroy()
				S:Play()
			end
			wait(2)
			script.Disabled = false
			print("Gibed/Script Still Going")
		end
	end
end)

LA.Touched:Connect(function(touched2)
	if touched2.Parent:FindFirstChild("Explosion") then
		aa.Disabled = false
		script.Parent.Humanoid.Health = 0
		local h = Bone:Clone()
		h.Name = 'L_Bone'
		h.Parent = character.Torso
		h.Position = character.Torso.Position
		h.Rotation = character.Torso.Rotation
		local weld = Instance.new("Weld",character.Torso)
		weld.Part0 = character.Torso
		weld.Part1 = h
		weld.C0 = CFrame.new(-1.2,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),0,math.rad(360))
		script.Disabled = true
		wait(0.1)
		LA:Destroy()
		S:Play()
	end
end)

end))
NumberValue37.Name = "Health"
NumberValue37.Parent = Script36
NumberValue37.Value = 40
Script38.Name = "HeadDecap"
Script38.Parent = Script36
table.insert(cors,sandbox(Script38,function()
local p = script.Parent.Parent ["Left Arm"]
local blood = game.Lighting.headblood

for i = 1,10 do
	blood.Position = p.Position
	blood:Clone().Parent = workspace.ignore
end
end))
Script38.Disabled = true
Sound39.Name = "Gib_Sound"
Sound39.Parent = Script36
Sound39.SoundId = "rbxassetid://3848986758"
Sound39.Volume = 1
Script40.Name = "GoreLL"
Script40.Parent = Model4
table.insert(cors,sandbox(Script40,function()
local health = script.Health
local aa = script.HeadDecap
local LA = script.Parent ["Left Leg"]
local Bone = game.Lighting.L_Gore
local S = script.Gib_Sound
local character = script.Parent

LA.Touched:Connect(function(touched)
	if touched.Parent:FindFirstChild("Blade") then
		local blade = touched.Parent.Blade
		if blade.Clicked.Value == true then
			script.Disabled = true
			health.Value -= 10
			if health.Value == 0 then
				aa.Disabled = false
				script.Parent.Humanoid.Health = 0
				local h = Bone:Clone()
				h.Name = 'LLeg_Bone'
				h.Parent = character.Torso
				h.Position = character.Torso.Position
				h.Rotation = character.Torso.Rotation
				local weld = Instance.new("Weld",character.Torso)
				weld.Part0 = character.Torso
				weld.Part1 = h
				weld.C0 = CFrame.new(-0.5,-1,0)
				script.Disabled = true
				wait(0.1)
				LA:Destroy()
				S:Play()
			end
			wait(2)
			script.Disabled = false
		end
	end
end)

LA.Touched:Connect(function(touched2)
	if touched2.Parent:FindFirstChild("Explosion") then
		aa.Disabled = false
		script.Parent.Humanoid.Health = 0
		local h = Bone:Clone()
		h.Name = 'LLeg_Bone'
		h.Parent = character.Torso
		h.Position = character.Torso.Position
		h.Rotation = character.Torso.Rotation
		local weld = Instance.new("Weld",character.Torso)
		weld.Part0 = character.Torso
		weld.Part1 = h
		weld.C0 = CFrame.new(-0.5,-1,0)
		script.Disabled = true
		wait(0.1)
		LA:Destroy()
		S:Play()
	end
end)

end))
NumberValue41.Name = "Health"
NumberValue41.Parent = Script40
NumberValue41.Value = 40
Script42.Name = "HeadDecap"
Script42.Parent = Script40
table.insert(cors,sandbox(Script42,function()
local p = script.Parent.Parent ["Left Leg"]
local blood = game.Lighting.headblood

for i = 1,10 do
	blood.Position = p.Position
	blood:Clone().Parent = workspace.ignore
end
end))
Script42.Disabled = true
Sound43.Name = "Gib_Sound"
Sound43.Parent = Script40
Sound43.SoundId = "rbxassetid://3848986758"
Sound43.Volume = 1
Script44.Name = "GoreRA"
Script44.Parent = Model4
table.insert(cors,sandbox(Script44,function()
local health = script.Health
local aa = script.HeadDecap
local LA = script.Parent ["Right Arm"]
local Bone = game.Lighting.Bone
local S = script.Gib_Sound
local character = script.Parent

LA.Touched:Connect(function(touched)
	if touched.Parent:FindFirstChild("Blade") then
		local blade = touched.Parent.Blade
		if blade.Clicked.Value == true then
			script.Disabled = true
			health.Value -= 10
			if health.Value == 0 then
				aa.Disabled = false
				script.Parent.Humanoid.Health = 0
				local h = Bone:Clone()
				h.Name = 'R_Bone'
				h.Parent = character.Torso
				h.Position = character.Torso.Position
				h.Rotation = character.Torso.Rotation
				local weld = Instance.new("Weld",character.Torso)
				weld.Part0 = character.Torso
				weld.Part1 = h
				weld.C0 = CFrame.new(1.2,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),0,math.rad(180))
				script.Disabled = true
				wait(0.1)
				LA:Destroy()
				S:Play()
			end
			wait(2)
			script.Disabled = false
		end
	end
end)

LA.Touched:Connect(function(touched2)
	if touched2.Parent:FindFirstChild("Explosion") then
		aa.Disabled = false
		script.Parent.Humanoid.Health = 0
		local h = Bone:Clone()
		h.Name = 'R_Bone'
		h.Parent = character.Torso
		h.Position = character.Torso.Position
		h.Rotation = character.Torso.Rotation
		local weld = Instance.new("Weld",character.Torso)
		weld.Part0 = character.Torso
		weld.Part1 = h
		weld.C0 = CFrame.new(1.2,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),0,math.rad(180))
		script.Disabled = true
		wait(0.1)
		LA:Destroy()
		S:Play()
	end
end)

end))
NumberValue45.Name = "Health"
NumberValue45.Parent = Script44
NumberValue45.Value = 40
Script46.Name = "HeadDecap"
Script46.Parent = Script44
table.insert(cors,sandbox(Script46,function()
local p = script.Parent.Parent ["Right Arm"]
local blood = game.Lighting.headblood

for i = 1,10 do
	blood.Position = p.Position
	blood:Clone().Parent = workspace.ignore
end
end))
Script46.Disabled = true
Sound47.Name = "Gib_Sound"
Sound47.Parent = Script44
Sound47.SoundId = "rbxassetid://3848986758"
Sound47.Volume = 1
Script48.Name = "GoreRL"
Script48.Parent = Model4
table.insert(cors,sandbox(Script48,function()
local health = script.Health
local aa = script.HeadDecap
local LA = script.Parent ["Right Leg"]
local Bone = game.Lighting.L_Gore
local S = script.Gib_Sound
local character = script.Parent

LA.Touched:Connect(function(touched)
	if touched.Parent:FindFirstChild("Blade") then
		local blade = touched.Parent.Blade
		if blade.Clicked.Value == true then
			script.Disabled = true
			health.Value -= 10
			if health.Value == 0 then
				aa.Disabled = false
				script.Parent.Humanoid.Health = 0
				local h = Bone:Clone()
				h.Name = 'RLeg_Bone'
				h.Parent = character.Torso
				h.Position = character.Torso.Position
				h.Rotation = character.Torso.Rotation
				local weld = Instance.new("Weld",character.Torso)
				weld.Part0 = character.Torso
				weld.Part1 = h
				weld.C0 = CFrame.new(0.5,-1,0)
				script.Disabled = true
				wait(0.1)
				LA:Destroy()
				S:Play()
			end
			wait(2)
			script.Disabled = false
		end
	end
end)

LA.Touched:Connect(function(touched2)
	if touched2.Parent:FindFirstChild("Explosion") then
		aa.Disabled = false
		script.Parent.Humanoid.Health = 0
		local h = Bone:Clone()
		h.Name = 'RLeg_Bone'
		h.Parent = character.Torso
		h.Position = character.Torso.Position
		h.Rotation = character.Torso.Rotation
		local weld = Instance.new("Weld",character.Torso)
		weld.Part0 = character.Torso
		weld.Part1 = h
		weld.C0 = CFrame.new(0.5,-1,0)
		script.Disabled = true
		wait(0.1)
		LA:Destroy()
		S:Play()
	end
end)

end))
NumberValue49.Name = "Health"
NumberValue49.Parent = Script48
NumberValue49.Value = 40
Script50.Name = "HeadDecap"
Script50.Parent = Script48
table.insert(cors,sandbox(Script50,function()
local p = script.Parent.Parent ["Right Leg"]
local blood = game.Lighting.headblood

for i = 1,10 do
	blood.Position = p.Position
	blood:Clone().Parent = workspace.ignore
end
end))
Script50.Disabled = true
Sound51.Name = "Gib_Sound"
Sound51.Parent = Script48
Sound51.SoundId = "rbxassetid://3848986758"
Sound51.Volume = 1
Script52.Name = "HeadBlood"
Script52.Parent = Model4
table.insert(cors,sandbox(Script52,function()
local p = script.Parent.Head
local hb = game.Lighting.headblood

p.Touched:Connect(function(hitPart)
	if hitPart.Parent:FindFirstChild("KBlade") then
		hb.Position = p.Position
		hb:Clone().Parent = p
		wait(0.5)
		hb.Position = p.Position
		hb:Clone().Parent = p
		wait(0.5)
		hb.Position = p.Position
		hb:Clone().Parent = p
		wait(0.5)
		hb.Position = p.Position
		hb:Clone().Parent = p
		wait(0.5)
		hb.Position = p.Position
		hb:Clone().Parent = p
		wait(0.5)
		hb.Position = p.Position
		hb:Clone().Parent = p
		wait(0.5)
	end
end)
end))
Script53.Name = "IgnoreTable"
Script53.Parent = Model4
table.insert(cors,sandbox(Script53,function()
wait(1)
print("Blood Made By Frost_Mallow and FLAMGOik")
script.Parent.Parent = workspace.ignore
end))
Script54.Name = "NewMain"
Script54.Parent = Model4
table.insert(cors,sandbox(Script54,function()
local hum = script.Parent.Humanoid

local enabled = true
local oldHP = hum.Health
function OnHP(hp)
	if enabled == false then return end
	local dmg = oldHP - hp
	if dmg >=3 and hum.Health > 0 then
		enabled = false
		for i = 1, 2 do
			local copy = game.Lighting.headblood:Clone()
			copy.Position = script.Parent.Torso.Position + Vector3.new(0,1.5,0)
			copy.Parent = workspace.ignore
			wait(0.1)
		end

	end
	wait(0.5)
	oldHP = hum.Health
	enabled = true
end
hum.HealthChanged:connect(OnHP)
end))
Script55.Name = "Health"
Script55.Parent = Model4
table.insert(cors,sandbox(Script55,function()
-- Gradually regenerates the Humanoid's Health over time.

local REGEN_RATE = 1/100 -- Regenerate this fraction of MaxHealth per second.
local REGEN_STEP = 1 -- Wait this long between each regeneration step.

--------------------------------------------------------------------------------

local Character = script.Parent
local Humanoid = Character:WaitForChild'Humanoid'

--------------------------------------------------------------------------------

while true do
	while Humanoid.Health < Humanoid.MaxHealth do
		local dt = wait(REGEN_STEP)
		local dh = dt*REGEN_RATE*Humanoid.MaxHealth
		Humanoid.Health = math.min(Humanoid.Health + dh, Humanoid.MaxHealth)
	end
	Humanoid.HealthChanged:Wait()
end
end))
Accessory56.Name = "RobloxVisor2019"
Accessory56.Parent = Model4
Accessory56.AttachmentPoint = CFrame.new(0, 0.0900000036, 0.180000007, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Accessory56.AttachmentPos = Vector3.new(0, 0.09000000357627869, 0.18000000715255737)
Part57.Name = "Handle"
Part57.Parent = Accessory56
Part57.CFrame = CFrame.new(-11.8710327, 5.32551479, 8.96973228, 1.00000048, 0, 0, 0, 1, 0, 0, 0, 1.00000048)
Part57.Position = Vector3.new(-11.87103271484375, 5.325514793395996, 8.969732284545898)
Part57.Size = Vector3.new(1, 0.4000000059604645, 1)
Part57.BottomSurface = Enum.SurfaceType.Smooth
Part57.CanCollide = false
Part57.TopSurface = Enum.SurfaceType.Smooth
Part57.FormFactor = Enum.FormFactor.Plate
Part57.formFactor = Enum.FormFactor.Plate
SpecialMesh58.Parent = Part57
SpecialMesh58.MeshId = "http://www.roblox.com/asset/?id=1081088"
SpecialMesh58.Scale = Vector3.new(1.0199999809265137, 1.0199999809265137, 1.0199999809265137)
SpecialMesh58.TextureId = "rbxassetid://2646470932"
SpecialMesh58.MeshType = Enum.MeshType.FileMesh
Vector3Value59.Name = "OriginalSize"
Vector3Value59.Parent = Part57
Vector3Value59.Value = Vector3.new(1, 0.4000000059604645, 1)
Weld60.Name = "AccessoryWeld"
Weld60.Parent = Part57
Weld60.C0 = CFrame.new(8.65838956e-09, 0.190000057, 0.179727763, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld60.C1 = CFrame.new(0, 0.600000024, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld60.Part0 = Part57
Weld60.Part1 = Part5
Weld60.part1 = Part5
BodyColors61.Parent = Model4
BodyColors61.HeadColor = BrickColor.new("Daisy orange")
BodyColors61.HeadColor3 = Color3.new(0.972549, 0.85098, 0.427451)
BodyColors61.LeftArmColor = BrickColor.new("Daisy orange")
BodyColors61.LeftArmColor3 = Color3.new(0.972549, 0.85098, 0.427451)
BodyColors61.LeftLegColor = BrickColor.new("Medium blue")
BodyColors61.LeftLegColor3 = Color3.new(0.431373, 0.6, 0.792157)
BodyColors61.RightArmColor = BrickColor.new("Daisy orange")
BodyColors61.RightArmColor3 = Color3.new(0.972549, 0.85098, 0.427451)
BodyColors61.RightLegColor = BrickColor.new("Medium blue")
BodyColors61.RightLegColor3 = Color3.new(0.431373, 0.6, 0.792157)
BodyColors61.TorsoColor = BrickColor.new("Medium stone grey")
BodyColors61.TorsoColor3 = Color3.new(0.639216, 0.635294, 0.647059)
Shirt62.Name = "Shirt"
Shirt62.Parent = Model4
Shirt62.ShirtTemplate = "http://www.roblox.com/asset/?id=3185562432"
ShirtGraphic63.Parent = Model4
ShirtGraphic63.Graphic = "http://www.roblox.com/asset/?id=5598744973"
LocalScript64.Name = "Animate"
LocalScript64.Parent = Model4
table.insert(cors,sandbox(LocalScript64,function()
local Figure = script.Parent
local Torso = Figure:WaitForChild("Torso")
local RightShoulder = Torso:WaitForChild("Right Shoulder")
local LeftShoulder = Torso:WaitForChild("Left Shoulder")
local RightHip = Torso:WaitForChild("Right Hip")
local LeftHip = Torso:WaitForChild("Left Hip")
local Neck = Torso:WaitForChild("Neck")
local Humanoid = Figure:WaitForChild("Humanoid")
local pose = "Standing"

local currentAnim = ""
local currentAnimInstance = nil
local currentAnimTrack = nil
local currentAnimKeyframeHandler = nil
local currentAnimSpeed = 1.0
local animTable = {}
local animNames = { 
	idle = 	{	
				{ id = "http://www.roblox.com/asset/?id=180435571", weight = 9 },
				{ id = "http://www.roblox.com/asset/?id=180435792", weight = 1 }
			},
	walk = 	{ 	
				{ id = "http://www.roblox.com/asset/?id=180426354", weight = 10 } 
			}, 
	run = 	{
				{ id = "run.xml", weight = 10 } 
			}, 
	jump = 	{
				{ id = "http://www.roblox.com/asset/?id=125750702", weight = 10 } 
			}, 
	fall = 	{
				{ id = "http://www.roblox.com/asset/?id=180436148", weight = 10 } 
			}, 
	climb = {
				{ id = "http://www.roblox.com/asset/?id=180436334", weight = 10 } 
			}, 
	sit = 	{
				{ id = "http://www.roblox.com/asset/?id=178130996", weight = 10 } 
			},	
	toolnone = {
				{ id = "http://www.roblox.com/asset/?id=182393478", weight = 10 } 
			},
	toolslash = {
				{ id = "http://www.roblox.com/asset/?id=129967390", weight = 10 } 
--				{ id = "slash.xml", weight = 10 } 
			},
	toollunge = {
				{ id = "http://www.roblox.com/asset/?id=129967478", weight = 10 } 
			},
	wave = {
				{ id = "http://www.roblox.com/asset/?id=128777973", weight = 10 } 
			},
	point = {
				{ id = "http://www.roblox.com/asset/?id=128853357", weight = 10 } 
			},
	dance1 = {
				{ id = "http://www.roblox.com/asset/?id=182435998", weight = 10 }, 
				{ id = "http://www.roblox.com/asset/?id=182491037", weight = 10 }, 
				{ id = "http://www.roblox.com/asset/?id=182491065", weight = 10 } 
			},
	dance2 = {
				{ id = "http://www.roblox.com/asset/?id=182436842", weight = 10 }, 
				{ id = "http://www.roblox.com/asset/?id=182491248", weight = 10 }, 
				{ id = "http://www.roblox.com/asset/?id=182491277", weight = 10 } 
			},
	dance3 = {
				{ id = "http://www.roblox.com/asset/?id=182436935", weight = 10 }, 
				{ id = "http://www.roblox.com/asset/?id=182491368", weight = 10 }, 
				{ id = "http://www.roblox.com/asset/?id=182491423", weight = 10 } 
			},
	laugh = {
				{ id = "http://www.roblox.com/asset/?id=129423131", weight = 10 } 
			},
	cheer = {
				{ id = "http://www.roblox.com/asset/?id=129423030", weight = 10 } 
			},
}
local dances = {"dance1", "dance2", "dance3"}

-- Existance in this list signifies that it is an emote, the value indicates if it is a looping emote
local emoteNames = { wave = false, point = false, dance1 = true, dance2 = true, dance3 = true, laugh = false, cheer = false}

function configureAnimationSet(name, fileList)
	if (animTable[name] ~= nil) then
		for _, connection in pairs(animTable[name].connections) do
			connection:disconnect()
		end
	end
	animTable[name] = {}
	animTable[name].count = 0
	animTable[name].totalWeight = 0	
	animTable[name].connections = {}

	-- check for config values
	local config = script:FindFirstChild(name)
	if (config ~= nil) then
--		print("Loading anims " .. name)
		table.insert(animTable[name].connections, config.ChildAdded:connect(function(child) configureAnimationSet(name, fileList) end))
		table.insert(animTable[name].connections, config.ChildRemoved:connect(function(child) configureAnimationSet(name, fileList) end))
		local idx = 1
		for _, childPart in pairs(config:GetChildren()) do
			if (childPart:IsA("Animation")) then
				table.insert(animTable[name].connections, childPart.Changed:connect(function(property) configureAnimationSet(name, fileList) end))
				animTable[name][idx] = {}
				animTable[name][idx].anim = childPart
				local weightObject = childPart:FindFirstChild("Weight")
				if (weightObject == nil) then
					animTable[name][idx].weight = 1
				else
					animTable[name][idx].weight = weightObject.Value
				end
				animTable[name].count = animTable[name].count + 1
				animTable[name].totalWeight = animTable[name].totalWeight + animTable[name][idx].weight
	--			print(name .. " [" .. idx .. "] " .. animTable[name][idx].anim.AnimationId .. " (" .. animTable[name][idx].weight .. ")")
				idx = idx + 1
			end
		end
	end

	-- fallback to defaults
	if (animTable[name].count <= 0) then
		for idx, anim in pairs(fileList) do
			animTable[name][idx] = {}
			animTable[name][idx].anim = Instance.new("Animation")
			animTable[name][idx].anim.Name = name
			animTable[name][idx].anim.AnimationId = anim.id
			animTable[name][idx].weight = anim.weight
			animTable[name].count = animTable[name].count + 1
			animTable[name].totalWeight = animTable[name].totalWeight + anim.weight
--			print(name .. " [" .. idx .. "] " .. anim.id .. " (" .. anim.weight .. ")")
		end
	end
end

-- Setup animation objects
function scriptChildModified(child)
	local fileList = animNames[child.Name]
	if (fileList ~= nil) then
		configureAnimationSet(child.Name, fileList)
	end	
end

script.ChildAdded:connect(scriptChildModified)
script.ChildRemoved:connect(scriptChildModified)


for name, fileList in pairs(animNames) do 
	configureAnimationSet(name, fileList)
end	

-- ANIMATION

-- declarations
local toolAnim = "None"
local toolAnimTime = 0

local jumpAnimTime = 0
local jumpAnimDuration = 0.3

local toolTransitionTime = 0.1
local fallTransitionTime = 0.3
local jumpMaxLimbVelocity = 0.75

-- functions

function stopAllAnimations()
	local oldAnim = currentAnim

	-- return to idle if finishing an emote
	if (emoteNames[oldAnim] ~= nil and emoteNames[oldAnim] == false) then
		oldAnim = "idle"
	end

	currentAnim = ""
	currentAnimInstance = nil
	if (currentAnimKeyframeHandler ~= nil) then
		currentAnimKeyframeHandler:disconnect()
	end

	if (currentAnimTrack ~= nil) then
		currentAnimTrack:Stop()
		currentAnimTrack:Destroy()
		currentAnimTrack = nil
	end
	return oldAnim
end

function setAnimationSpeed(speed)
	if speed ~= currentAnimSpeed then
		currentAnimSpeed = speed
		currentAnimTrack:AdjustSpeed(currentAnimSpeed)
	end
end

function keyFrameReachedFunc(frameName)
	if (frameName == "End") then

		local repeatAnim = currentAnim
		-- return to idle if finishing an emote
		if (emoteNames[repeatAnim] ~= nil and emoteNames[repeatAnim] == false) then
			repeatAnim = "idle"
		end
		
		local animSpeed = currentAnimSpeed
		playAnimation(repeatAnim, 0.0, Humanoid)
		setAnimationSpeed(animSpeed)
	end
end

-- Preload animations
function playAnimation(animName, transitionTime, humanoid) 
		
	local roll = math.random(1, animTable[animName].totalWeight) 
	local origRoll = roll
	local idx = 1
	while (roll > animTable[animName][idx].weight) do
		roll = roll - animTable[animName][idx].weight
		idx = idx + 1
	end
--		print(animName .. " " .. idx .. " [" .. origRoll .. "]")
	local anim = animTable[animName][idx].anim

	-- switch animation		
	if (anim ~= currentAnimInstance) then
		
		if (currentAnimTrack ~= nil) then
			currentAnimTrack:Stop(transitionTime)
			currentAnimTrack:Destroy()
		end

		currentAnimSpeed = 1.0
	
		-- load it to the humanoid; get AnimationTrack
		currentAnimTrack = humanoid:LoadAnimation(anim)
		currentAnimTrack.Priority = Enum.AnimationPriority.Core
		 
		-- play the animation
		currentAnimTrack:Play(transitionTime)
		currentAnim = animName
		currentAnimInstance = anim

		-- set up keyframe name triggers
		if (currentAnimKeyframeHandler ~= nil) then
			currentAnimKeyframeHandler:disconnect()
		end
		currentAnimKeyframeHandler = currentAnimTrack.KeyframeReached:connect(keyFrameReachedFunc)
		
	end

end

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

local toolAnimName = ""
local toolAnimTrack = nil
local toolAnimInstance = nil
local currentToolAnimKeyframeHandler = nil

function toolKeyFrameReachedFunc(frameName)
	if (frameName == "End") then
--		print("Keyframe : ".. frameName)	
		playToolAnimation(toolAnimName, 0.0, Humanoid)
	end
end


function playToolAnimation(animName, transitionTime, humanoid, priority)	 
		
		local roll = math.random(1, animTable[animName].totalWeight) 
		local origRoll = roll
		local idx = 1
		while (roll > animTable[animName][idx].weight) do
			roll = roll - animTable[animName][idx].weight
			idx = idx + 1
		end
--		print(animName .. " * " .. idx .. " [" .. origRoll .. "]")
		local anim = animTable[animName][idx].anim

		if (toolAnimInstance ~= anim) then
			
			if (toolAnimTrack ~= nil) then
				toolAnimTrack:Stop()
				toolAnimTrack:Destroy()
				transitionTime = 0
			end
					
			-- load it to the humanoid; get AnimationTrack
			toolAnimTrack = humanoid:LoadAnimation(anim)
			if priority then
				toolAnimTrack.Priority = priority
			end
			 
			-- play the animation
			toolAnimTrack:Play(transitionTime)
			toolAnimName = animName
			toolAnimInstance = anim

			currentToolAnimKeyframeHandler = toolAnimTrack.KeyframeReached:connect(toolKeyFrameReachedFunc)
		end
end

function stopToolAnimations()
	local oldAnim = toolAnimName

	if (currentToolAnimKeyframeHandler ~= nil) then
		currentToolAnimKeyframeHandler:disconnect()
	end

	toolAnimName = ""
	toolAnimInstance = nil
	if (toolAnimTrack ~= nil) then
		toolAnimTrack:Stop()
		toolAnimTrack:Destroy()
		toolAnimTrack = nil
	end


	return oldAnim
end

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------


function onRunning(speed)
	if speed > 0.01 then
		playAnimation("walk", 0.1, Humanoid)
		if currentAnimInstance and currentAnimInstance.AnimationId == "http://www.roblox.com/asset/?id=180426354" then
			setAnimationSpeed(speed / 14.5)
		end
		pose = "Running"
	else
		if emoteNames[currentAnim] == nil then
			playAnimation("idle", 0.1, Humanoid)
			pose = "Standing"
		end
	end
end

function onDied()
	pose = "Dead"
end

function onJumping()
	playAnimation("jump", 0.1, Humanoid)
	jumpAnimTime = jumpAnimDuration
	pose = "Jumping"
end

function onClimbing(speed)
	playAnimation("climb", 0.1, Humanoid)
	setAnimationSpeed(speed / 12.0)
	pose = "Climbing"
end

function onGettingUp()
	pose = "GettingUp"
end

function onFreeFall()
	if (jumpAnimTime <= 0) then
		playAnimation("fall", fallTransitionTime, Humanoid)
	end
	pose = "FreeFall"
end

function onFallingDown()
	pose = "FallingDown"
end

function onSeated()
	pose = "Seated"
end

function onPlatformStanding()
	pose = "PlatformStanding"
end

function onSwimming(speed)
	if speed > 0 then
		pose = "Running"
	else
		pose = "Standing"
	end
end

function getTool()	
	for _, kid in ipairs(Figure:GetChildren()) do
		if kid.className == "Tool" then return kid end
	end
	return nil
end

function getToolAnim(tool)
	for _, c in ipairs(tool:GetChildren()) do
		if c.Name == "toolanim" and c.className == "StringValue" then
			return c
		end
	end
	return nil
end

function animateTool()
	
	if (toolAnim == "None") then
		playToolAnimation("toolnone", toolTransitionTime, Humanoid, Enum.AnimationPriority.Idle)
		return
	end

	if (toolAnim == "Slash") then
		playToolAnimation("toolslash", 0, Humanoid, Enum.AnimationPriority.Action)
		return
	end

	if (toolAnim == "Lunge") then
		playToolAnimation("toollunge", 0, Humanoid, Enum.AnimationPriority.Action)
		return
	end
end

function moveSit()
	RightShoulder.MaxVelocity = 0.15
	LeftShoulder.MaxVelocity = 0.15
	RightShoulder:SetDesiredAngle(3.14 /2)
	LeftShoulder:SetDesiredAngle(-3.14 /2)
	RightHip:SetDesiredAngle(3.14 /2)
	LeftHip:SetDesiredAngle(-3.14 /2)
end

local lastTick = 0

function move(time)
	local amplitude = 1
	local frequency = 1
  	local deltaTime = time - lastTick
  	lastTick = time

	local climbFudge = 0
	local setAngles = false

  	if (jumpAnimTime > 0) then
  		jumpAnimTime = jumpAnimTime - deltaTime
  	end

	if (pose == "FreeFall" and jumpAnimTime <= 0) then
		playAnimation("fall", fallTransitionTime, Humanoid)
	elseif (pose == "Seated") then
		playAnimation("sit", 0.5, Humanoid)
		return
	elseif (pose == "Running") then
		playAnimation("walk", 0.1, Humanoid)
	elseif (pose == "Dead" or pose == "GettingUp" or pose == "FallingDown" or pose == "Seated" or pose == "PlatformStanding") then
--		print("Wha " .. pose)
		stopAllAnimations()
		amplitude = 0.1
		frequency = 1
		setAngles = true
	end

	if (setAngles) then
		local desiredAngle = amplitude * math.sin(time * frequency)

		RightShoulder:SetDesiredAngle(desiredAngle + climbFudge)
		LeftShoulder:SetDesiredAngle(desiredAngle - climbFudge)
		RightHip:SetDesiredAngle(-desiredAngle)
		LeftHip:SetDesiredAngle(-desiredAngle)
	end

	-- Tool Animation handling
	local tool = getTool()
	if tool and tool:FindFirstChild("Handle") then
	
		local animStringValueObject = getToolAnim(tool)

		if animStringValueObject then
			toolAnim = animStringValueObject.Value
			-- message recieved, delete StringValue
			animStringValueObject.Parent = nil
			toolAnimTime = time + .3
		end

		if time > toolAnimTime then
			toolAnimTime = 0
			toolAnim = "None"
		end

		animateTool()		
	else
		stopToolAnimations()
		toolAnim = "None"
		toolAnimInstance = nil
		toolAnimTime = 0
	end
end

-- connect events
Humanoid.Died:connect(onDied)
Humanoid.Running:connect(onRunning)
Humanoid.Jumping:connect(onJumping)
Humanoid.Climbing:connect(onClimbing)
Humanoid.GettingUp:connect(onGettingUp)
Humanoid.FreeFalling:connect(onFreeFall)
Humanoid.FallingDown:connect(onFallingDown)
Humanoid.Seated:connect(onSeated)
Humanoid.PlatformStanding:connect(onPlatformStanding)
Humanoid.Swimming:connect(onSwimming)

-- setup emote chat hook
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
	local emote = ""
	if msg == "/e dance" then
		emote = dances[math.random(1, #dances)]
	elseif (string.sub(msg, 1, 3) == "/e ") then
		emote = string.sub(msg, 4)
	elseif (string.sub(msg, 1, 7) == "/emote ") then
		emote = string.sub(msg, 8)
	end
	
	if (pose == "Standing" and emoteNames[emote] ~= nil) then
		playAnimation(emote, 0.1, Humanoid)
	end

end)


-- main program

-- initialize to idle
playAnimation("idle", 0.1, Humanoid)
pose = "Standing"

while Figure.Parent ~= nil do
	local _, time = wait(0.1)
	move(time)
end



end))
StringValue65.Name = "idle"
StringValue65.Parent = LocalScript64
Animation66.Name = "Animation1"
Animation66.Parent = StringValue65
Animation66.AnimationId = "http://www.roblox.com/asset/?id=180435571"
NumberValue67.Name = "Weight"
NumberValue67.Parent = Animation66
NumberValue67.Value = 9
Animation68.Name = "Animation2"
Animation68.Parent = StringValue65
Animation68.AnimationId = "http://www.roblox.com/asset/?id=180435792"
NumberValue69.Name = "Weight"
NumberValue69.Parent = Animation68
NumberValue69.Value = 1
StringValue70.Name = "walk"
StringValue70.Parent = LocalScript64
Animation71.Name = "WalkAnim"
Animation71.Parent = StringValue70
Animation71.AnimationId = "http://www.roblox.com/asset/?id=180426354"
StringValue72.Name = "run"
StringValue72.Parent = LocalScript64
Animation73.Name = "RunAnim"
Animation73.Parent = StringValue72
Animation73.AnimationId = "http://www.roblox.com/asset/?id=180426354"
StringValue74.Name = "jump"
StringValue74.Parent = LocalScript64
Animation75.Name = "JumpAnim"
Animation75.Parent = StringValue74
Animation75.AnimationId = "http://www.roblox.com/asset/?id=125750702"
StringValue76.Name = "climb"
StringValue76.Parent = LocalScript64
Animation77.Name = "ClimbAnim"
Animation77.Parent = StringValue76
Animation77.AnimationId = "http://www.roblox.com/asset/?id=180436334"
StringValue78.Name = "toolnone"
StringValue78.Parent = LocalScript64
Animation79.Name = "ToolNoneAnim"
Animation79.Parent = StringValue78
Animation79.AnimationId = "http://www.roblox.com/asset/?id=182393478"
StringValue80.Name = "fall"
StringValue80.Parent = LocalScript64
Animation81.Name = "FallAnim"
Animation81.Parent = StringValue80
Animation81.AnimationId = "http://www.roblox.com/asset/?id=180436148"
StringValue82.Name = "sit"
StringValue82.Parent = LocalScript64
Animation83.Name = "SitAnim"
Animation83.Parent = StringValue82
Animation83.AnimationId = "http://www.roblox.com/asset/?id=178130996"
NumberValue84.Name = "ScaleDampeningPercent"
NumberValue84.Parent = LocalScript64
NumberValue84.Value = 0.4000000059604645
for i,v in pairs(mas:GetChildren()) do
	v.Parent = workspace
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
