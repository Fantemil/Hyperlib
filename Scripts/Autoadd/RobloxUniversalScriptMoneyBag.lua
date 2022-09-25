--money money money money
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
Sound5 = Instance.new("Sound")
Script6 = Instance.new("Script")
Tool0.Name = "Moneybag"
Tool0.Parent = mas
Tool0.TextureId = "http://www.roblox.com/asset/?id=16659163"
Tool0.Grip = CFrame.new(0, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Tool0.GripForward = Vector3.new(1, -0, -0)
Tool0.GripPos = Vector3.new(0, 0.5, 0)
Tool0.GripRight = Vector3.new(0, 0, 1)
Part1.Name = "Handle"
Part1.Parent = Tool0
Part1.CFrame = CFrame.new(-25.303894, 0.400000066, -1.19561768, -0.999999046, -5.09965332e-08, 5.69780241e-08, 5.09965332e-08, 1, 3.9571205e-08, 5.69780241e-08, -3.9571205e-08, -1.00000024)
Part1.Orientation = Vector3.new(0, 180, 0)
Part1.Position = Vector3.new(-25.30389404296875, 0.40000006556510925, -1.19561767578125)
Part1.Rotation = Vector3.new(-180, 0, 180)
Part1.Color = Color3.new(0.803922, 0.803922, 0.803922)
Part1.Size = Vector3.new(1, 0.800000011920929, 1)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.BrickColor = BrickColor.new("Mid gray")
Part1.Locked = true
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.brickColor = BrickColor.new("Mid gray")
SpecialMesh2.Parent = Part1
SpecialMesh2.MeshId = "http://www.roblox.com/asset/?id=16657069"
SpecialMesh2.Scale = Vector3.new(0.5, 0.6000000238418579, 0.5)
SpecialMesh2.TextureId = "http://www.roblox.com/asset/?id=16657057"
SpecialMesh2.MeshType = Enum.MeshType.FileMesh
Sound3.Name = "MoneySound2"
Sound3.Parent = Part1
Sound3.SoundId = "http://www.roblox.com/asset/?id=16720502"
Sound3.Volume = 1
Sound4.Name = "MoneySound3"
Sound4.Parent = Part1
Sound4.SoundId = "http://www.roblox.com/asset/?id=16720508"
Sound4.Volume = 1
Sound5.Name = "MoneySound1"
Sound5.Parent = Part1
Sound5.SoundId = "http://www.roblox.com/asset/?id=16720281"
Sound5.Volume = 1
Script6.Name = "MoneyBagScript"
Script6.Parent = Tool0
table.insert(cors,sandbox(Script6,function()
local Tool = script.Parent;
debris = game:GetService("Debris")

enabled = true

local sounds = {Tool.Handle.MoneySound1, Tool.Handle.MoneySound2, Tool.Handle.MoneySound3}
local buck = nil


buck = Instance.new("Part")
buck.formFactor = 2
buck.Size = Vector3.new(2,.4,1)
buck.BrickColor = BrickColor.new(28)
buck.TopSurface = 0
buck.BottomSurface = 0
buck.Elasticity = .01 

local d = Instance.new("Decal")
d.Face = 4
d.Texture = "http://www.roblox.com/asset/?id=16658163"
d.Parent = buck

local d2 = d:Clone()
d2.Face = 1
d2.Parent = buck

function isTurbo(character)
 return character:FindFirstChild("Monopoly") ~= nil
end
function MakeABuck(pos)
 local limit = 5
 if (isTurbo(Tool.Parent) == true) then
  limit = 15 -- LOL!
 end
 for i=1,limit do
  local b = buck:Clone()
  local v = Vector3.new(math.random() - .5, math.random() - .5, math.random() - .5).unit
  b.CFrame = CFrame.new(pos + (v * 2) + Vector3.new(0,4,0), v)
  b.Parent = game.Workspace
  debris:AddItem(b, 5)
 end
end
function onActivated()
 if not enabled  then
  return
 end
 enabled = true
 local char = Tool.Parent
 sounds[math.random(3)]:Play()
 MakeABuck(Tool.Handle.Position)
 enabled = true
end
script.Parent.Activated:connect(onActivated)


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