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
Tool0 = Instance.new("Tool")
Part1 = Instance.new("Part")
SpecialMesh2 = Instance.new("SpecialMesh")
Sound3 = Instance.new("Sound")
Sound4 = Instance.new("Sound")
Script5 = Instance.new("Script")
Tool0.Name = "Taco"
Tool0.Parent = mas
Tool0.TextureId = "http://www.roblox.com/asset/?id=2351874323"
Tool0.Grip = CFrame.new(0.200000003, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Tool0.GripForward = Vector3.new(-1, 0, -0)
Tool0.GripPos = Vector3.new(0.20000000298023224, 0, 0)
Tool0.GripRight = Vector3.new(0, 0, -1)
Part1.Name = "Handle"
Part1.Parent = Tool0
Part1.CFrame = CFrame.new(136.579712, 0.399993896, -5.63525391, -1, 4.07973829e-07, -4.55833572e-07, 4.07973999e-07, 1, -3.16566172e-07, 4.55833458e-07, -3.16566343e-07, -1)
Part1.Orientation = Vector3.new(0, -180, 0)
Part1.Position = Vector3.new(136.5797119140625, 0.399993896484375, -5.63525390625)
Part1.Rotation = Vector3.new(180, 0, -180)
Part1.Color = Color3.new(0.803922, 0.803922, 0.803922)
Part1.Size = Vector3.new(1, 0.800000011920929, 1)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.BrickColor = BrickColor.new("Mid gray")
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.brickColor = BrickColor.new("Mid gray")
Part1.FormFactor = Enum.FormFactor.Plate
Part1.formFactor = Enum.FormFactor.Plate
SpecialMesh2.Parent = Part1
SpecialMesh2.MeshId = "http://www.roblox.com/asset/?id=14846869"
SpecialMesh2.Scale = Vector3.new(0.699999988079071, 1.100000023841858, 1.100000023841858)
SpecialMesh2.TextureId = "http://www.roblox.com/asset/?id=67180974"
SpecialMesh2.MeshType = Enum.MeshType.FileMesh
Sound3.Name = "OpenSound"
Sound3.Parent = Part1
Sound3.SoundId = "http://www.roblox.com/asset/?id=15174422"
Sound3.Volume = 0
Sound4.Name = "EatSound"
Sound4.Parent = Part1
Sound4.SoundId = "http://www.roblox.com/asset/?id=15047813"
Sound4.Volume = 0.30000001192092896
Script5.Name = "S"
Script5.Parent = Tool0
table.insert(cors,sandbox(Script5,function()
local Tool = script.Parent;

enabled = true




function onActivated()
	if not enabled  then
		return
	end

	enabled = false
	Tool.GripForward = Vector3.new(-0.97, 1.02e-005, -0.243)
	Tool.GripPos = Vector3.new(-0.2, 0, -1.23)
	Tool.GripRight = Vector3.new(0.197, 0.581, -0.79)
	Tool.GripUp = Vector3.new(-0.141, 0.814, 0.563)


	Tool.Handle.EatSound:Play()

	wait(.8)
	
	local h = Tool.Parent:FindFirstChild("Humanoid")
	if (h ~= nil) then
		if (h.MaxHealth > h.Health + 20) then
			h.Health = h.Health + 20
		else	
			h.Health = h.MaxHealth
		end
	end

	Tool.GripForward = Vector3.new(-1, 0, -0)
	Tool.GripPos = Vector3.new(0.2, 0, 0)
	Tool.GripRight = Vector3.new(0,0, -1)
	Tool.GripUp = Vector3.new(0,1,0)


	enabled = true

end

function onEquipped()
	Tool.Handle.OpenSound:play()
end

script.Parent.Activated:connect(onActivated)
script.Parent.Equipped:connect(onEquipped)

end))
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.Backpack
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
