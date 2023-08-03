for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,-30,0)
wait(0.5)
end)
end
end

function rmesh(HatName)
for _,mesh in next, workspace[game.Players.LocalPlayer.Name][HatName]:GetDescendants() do
if mesh:IsA("Mesh") or mesh:IsA("SpecialMesh") then
mesh:Remove()
end
end
end

function create(part, parent, position, rotation)
part.AccessoryWeld:Remove()
Instance.new("Attachment",part)
Instance.new("AlignPosition",part)
Instance.new("AlignOrientation",part)
Instance.new("Attachment",parent)
part.AlignPosition.Attachment0 = part.Attachment
part.AlignOrientation.Attachment0 = part.Attachment
part.AlignPosition.Attachment1 = parent.Attachment
part.AlignOrientation.Attachment1 = parent.Attachment
part.Attachment.Position = position
part.Attachment.Orientation = rotation
part.AlignPosition.Responsiveness = 200
part.AlignOrientation.Responsiveness = 200
part.AlignPosition.MaxForce = 9999999
part.AlignPosition.RigidityEnabled = false
part.AlignOrientation.MaxTorque = 9999999
end

local LocalPlayer = game.Players.LocalPlayer

function eswait(num)
if num == 0 or num == nil then
game:service("RunService").Stepped:wait(0)
else
for i = 0, num do
game:service("RunService").Stepped:wait(0)
end
end
end

function makepart(hat,part)
Instance.new('Part',workspace[LocalPlayer.Name])
workspace[LocalPlayer.Name].Part.Name = 'lerp'..hat
workspace[LocalPlayer.Name]['lerp'..hat].CanCollide = false
workspace[LocalPlayer.Name]['lerp'..hat].Size = workspace[LocalPlayer.Name][hat].Handle.Size
workspace[LocalPlayer.Name]['lerp'..hat].Transparency = 1
Instance.new('Weld',workspace[LocalPlayer.Name]['lerp'..hat])
create(workspace[LocalPlayer.Name][hat].Handle,workspace[LocalPlayer.Name]['lerp'..hat],Vector3.new(),Vector3.new())
workspace[LocalPlayer.Name]['lerp'..hat].Weld.Part0 = workspace[LocalPlayer.Name]['lerp'..hat]
workspace[LocalPlayer.Name]['lerp'..hat].Weld.Part1 = workspace[LocalPlayer.Name][part]
workspace[LocalPlayer.Name]['lerp'..hat].Weld.C0 = workspace[LocalPlayer.Name]['lerp'..hat].CFrame:inverse() * workspace[LocalPlayer.Name][part].CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),0)
end

local hatsine = 0

local hatchange = 1

function clerp(hat,ppx,ppy,pppz,rrrx,rrry,rrz,lppx,lppy,lpppz,lrrrx,lrrry,lrrz,speed)
coroutine.wrap(function()
while true do
hatsine = hatsine + speed
workspace[game.Players.LocalPlayer.Name]['lerp'..hat].Weld.C0 = workspace[game.Players.LocalPlayer.Name]['lerp'..hat].Weld.C0:lerp(CFrame.new(ppx + lppx * math.sin(hatsine/11), ppy + lppy * math.sin(hatsine/11), pppz + lpppz * math.sin(hatsine/11)) * CFrame.Angles(math.rad(rrrx + lrrrx * math.sin(hatsine/11)), math.rad(rrry + lrrry * math.sin(hatsine/11)), math.rad(rrz + lrrz * math.sin(hatsine/11))),0.1)
eswait()
end
end)()
end

local player = game.Players.LocalPlayer
local character1 = player.Character
local mouse = player:GetMouse()

local fakebody = Instance.new("Part", character1)
fakebody.Transparency = 1
fakebody.Anchored = true
fakebody.CanCollide = false
fakebody.Position = character1.Head.Position
fakebody.Name = "FPart"
wait()
_G.ReanimationType = "PDeath" --PDeath, Fling, Simple
_G.Velocity = Vector3.new(36,0,0)
_G.FlingBlock = true
_G.FlingBlockTransparency = 1
_G.HighlightFlingBlock = true
_G.FlingBlockPosition = "FPart"
_G.HighlightFlingBlockColor = Color3.fromRGB(255,0,0)

loadstring(game:HttpGet("https://raw.githubusercontent.com/GelatekWasTaken/Reanimation.lua/main/Main/Main.lua"))()
wait(1)

mouse.KeyDown:connect(function(key)
    if key == "e" then
    character1.Reanimate.FPart.Position = mouse.Hit.p
    end
end)

rmesh('Pink Hair')
rmesh('Kate Hair')

makepart('Kate Hair','Right Arm')
clerp('Kate Hair',0,1,0,0,0,0,0,0,0,0,0,0,1)

makepart('Pink Hair','Right Arm')
clerp('Pink Hair',0,0.5,-2,-90,0,0,0,0,0,0,0,0,1)

local Scale = game.Players.LocalPlayer.Character.Torso.Size.X/2*(game.Players.LocalPlayer.Character.Torso:FindFirstChild("ScaleInserted") ~= nil and game.Players.LocalPlayer.Character.Torso:FindFirstChild("ScaleInserted").Scale.Z or 1)*0.8
local Speed = 20*Scale
local Gravity = 0.1

local Player = game.Players.LocalPlayer
local Character = Player.Character.Reanimate
local Humanoid = Character.Humanoid
Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
local Torso = Character.HumanoidRootPart
local Mouse = game.Players.LocalPlayer:GetMouse()
local RenderStepped = game:GetService("RunService").RenderStepped
local Camera = Workspace.CurrentCamera
Camera:ClearAllChildren()
local Model = Instance.new("Model",Character)
local IgnoreList = {Character,Workspace.Terrain}

local Part0Joint = CFrame.new(Vector3.new(1,0.75,0)*Scale*1.25)
local Part1Joint = CFrame.new(Vector3.new(-0.5,0.75,0)*Scale*1.25)
local RotationOffset = CFrame.Angles(math.rad(90),math.rad(0),0)
local Gangster = false

local Part0JointHead = CFrame.new(Vector3.new(0,1,0)*Scale*1.25)
local Part1JointHead = CFrame.new(Vector3.new(0,-0.5,0)*Scale*1.25)
local RotationOffsetHead = CFrame.Angles(0,0,0)

local Handle = Instance.new("Part",Model)
Handle.CanCollide = false
Handle.Name = "Handle"
Handle.Position = Vector3.new(0,100,0)
Handle:BreakJoints()
Handle.FormFactor = "Custom"
Handle.Size = Vector3.new(0.2,0.2,0.2)
Handle.TopSurface = "SmoothNoOutlines"
Handle.BottomSurface = "SmoothNoOutlines"
Handle.FrontSurface = "SmoothNoOutlines"
Handle.BackSurface = "SmoothNoOutlines"
Handle.RightSurface = "SmoothNoOutlines"
Handle.LeftSurface = "SmoothNoOutlines"
Handle.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("BlockMesh",Handle)
Mesh.Scale = Vector3.new(0.25,1,0.4) / 0.2 * Scale
local HandleWeld = Instance.new("Motor6D")
HandleWeld.Part0 = Character["Right Arm"]
HandleWeld.Part1 = Handle
HandleWeld.C0 = CFrame.new(Vector3.new(0,-1,0)*Scale) * CFrame.Angles(math.rad(-105),0,0)
HandleWeld.Parent = Handle

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("CylinderMesh",Part)
Mesh.Scale = Vector3.new(0.07,0.2,0.07) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(-0.115,-0.475,-0.190)*Scale) * CFrame.Angles(0,0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("CylinderMesh",Part)
Mesh.Scale = Vector3.new(0.07,0.2,0.07) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0.115,-0.475,0.190)*Scale) * CFrame.Angles(0,0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("CylinderMesh",Part)
Mesh.Scale = Vector3.new(0.07,0.2,0.07) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(-0.115,-0.475,0.190)*Scale) * CFrame.Angles(0,0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("CylinderMesh",Part)
Mesh.Scale = Vector3.new(0.07,0.2,0.07) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0.115,-0.475,-0.190)*Scale) * CFrame.Angles(0,0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.23,0.2,0.1) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0,-0.475,-0.175)*Scale) * CFrame.Angles(0,0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.23,0.2,0.1) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0,-0.475,0.175)*Scale) * CFrame.Angles(0,0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.1,0.2,0.38) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(-0.1,-0.475,0)*Scale) * CFrame.Angles(0,0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.1,0.2,0.38) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0.1,-0.475,0)*Scale) * CFrame.Angles(0,0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.1,0.3,0.05) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.Angles(math.rad(15),0,0) * CFrame.new(Vector3.new(0,0.25,-0.75)*Scale) * CFrame.Angles(math.rad(-10),0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.1,0.05,0.625) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.Angles(math.rad(15),0,0) * CFrame.new(Vector3.new(0,0.1,-0.435)*Scale)
PartWeld.Parent = Part

for i = 0,80,10 do
local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.25,0.15,0.03555*2) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0,0.15,0.315)*Scale) * CFrame.Angles(math.rad(i-65),0,0) * CFrame.new(Vector3.new(0,0.2,0)*Scale)
PartWeld.Parent = Part
end

local Barrel = Instance.new("Part",Model)
Barrel.CanCollide = false
Barrel.Position = Vector3.new(0,100,0)
Barrel:BreakJoints()
Barrel.FormFactor = "Custom"
Barrel.Size = Vector3.new(0.2,0.2,0.2)
Barrel.TopSurface = "SmoothNoOutlines"
Barrel.BottomSurface = "SmoothNoOutlines"
Barrel.FrontSurface = "SmoothNoOutlines"
Barrel.BackSurface = "SmoothNoOutlines"
Barrel.RightSurface = "SmoothNoOutlines"
Barrel.LeftSurface = "SmoothNoOutlines"
Barrel.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("BlockMesh",Barrel)
Mesh.Scale = Vector3.new(0.25,0.2,2) / 0.2 * Scale
local BarrelWeld = Instance.new("Motor6D")
BarrelWeld.Part0 = Handle
BarrelWeld.Part1 = Barrel
BarrelWeld.C0 = CFrame.Angles(math.rad(15),0,0) * CFrame.new(Vector3.new(0,0.5,-0.7)*Scale)
BarrelWeld.Parent = Barrel

local Barrel1 = Barrel

local Barrel2 = Instance.new("Part",Model)
Barrel2.CanCollide = false
Barrel2.Position = Vector3.new(0,100,0)
Barrel2:BreakJoints()
Barrel2.FormFactor = "Custom"
Barrel2.Size = Vector3.new(0.2,0.2,0.2)
Barrel2.TopSurface = "SmoothNoOutlines"
Barrel2.BottomSurface = "SmoothNoOutlines"
Barrel2.FrontSurface = "SmoothNoOutlines"
Barrel2.BackSurface = "SmoothNoOutlines"
Barrel2.RightSurface = "SmoothNoOutlines"
Barrel2.LeftSurface = "SmoothNoOutlines"
Barrel2.BrickColor = BrickColor.new("Really black")
local Mesh = Instance.new("BlockMesh",Barrel2)
Mesh.Scale = Vector3.new(0.25,0.25,2) / 0.2 * Scale
local Barrel2Weld = Instance.new("Motor6D")
Barrel2Weld.Part0 = Barrel
Barrel2Weld.Part1 = Barrel2
Barrel2Weld.C0 = CFrame.new(Vector3.new(0,0.225,0)*Scale)
Barrel2Weld.Parent = Barrel2

local RealBarrel = Instance.new("Part",Model)
RealBarrel.CanCollide = false
RealBarrel.Position = Vector3.new(0,100,0)
RealBarrel:BreakJoints()
RealBarrel.FormFactor = "Custom"
RealBarrel.Size = Vector3.new(0.2,0.2,0.2)
RealBarrel.TopSurface = "SmoothNoOutlines"
RealBarrel.BottomSurface = "SmoothNoOutlines"
RealBarrel.FrontSurface = "SmoothNoOutlines"
RealBarrel.BackSurface = "SmoothNoOutlines"
RealBarrel.RightSurface = "SmoothNoOutlines"
RealBarrel.LeftSurface = "SmoothNoOutlines"
RealBarrel.BrickColor = BrickColor.new("Dark grey metallic")
local Mesh = Instance.new("CylinderMesh",RealBarrel)
Mesh.Scale = Vector3.new(0.2,2,0.2) / 0.2 * Scale
local RealBarrelWeld = Instance.new("Motor6D")
RealBarrelWeld.Part0 = Barrel
RealBarrelWeld.Part1 = RealBarrel
RealBarrelWeld.C0 = CFrame.new(Vector3.new(0,0.1,-0.01)*Scale) * CFrame.Angles(math.rad(-90),0,0)
RealBarrelWeld.Parent = RealBarrel

for i = 1,75,15 do
local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.05,0.065,0.05) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0,0.525,-0.515)*Scale) * CFrame.Angles(math.rad(i),0,0) * CFrame.new(Vector3.new(0,0,0.2)*Scale)
PartWeld.Parent = Part
end

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Really black")
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.05,0.11,0.1) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Barrel2
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0.06,0.135,0.925)*Scale)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Really black")
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.05,0.11,0.1) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Barrel2
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(-0.06,0.135,0.925)*Scale)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Really black")
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.025,0.1,0.1) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Barrel2
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0,0.135,-0.925)*Scale)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.Transparency = 1
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Really black")
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.1,0.1,0.1) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Barrel
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0,0,-5)*Scale)
PartWeld.Parent = Part

local Light = Instance.new("PointLight",Part)
Light.Color = BrickColor.new("Gold").Color
Light.Enabled = true
Light.Shadows = true
Light.Brightness = 0
Light.Range = 6

local Part = Instance.new("Part",Model)
Part.Material = "Neon"
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Bright yellow")
Part.Transparency = 0.25
local RecoilMesh = Instance.new("SpecialMesh",Part)
RecoilMesh.MeshType = "FileMesh"
RecoilMesh.MeshId = "http://www.roblox.com/Asset/?id=1323306"
RecoilMesh.TextureId = "http://www.roblox.com/Asset/?id=98896228"
RecoilMesh.Scale = Vector3.new(0.175,0,0.175) * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = RealBarrel
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0,0.95,0)*Scale)
PartWeld.Parent = Part

function ShootBullet(Target,barrel)
local barrel = barrel or Barrel
local Bullet = Instance.new("Part",Workspace)
Barrel.CanCollide = false
Bullet.FormFactor = "Custom"
Bullet.Size = Vector3.new(0.2,0.2,5)*Scale
Bullet.TopSurface = "Smooth"
Bullet.BottomSurface = "Smooth"
Bullet.Anchored = true
Bullet.CanCollide = false
Bullet.CFrame = CFrame.new((barrel.CFrame*CFrame.new(0,0,-barrel.Size.Z*barrel.Mesh.Scale.Z/2)).p,Target)*CFrame.new(0,0,-Bullet.Size.Z/2)
Bullet.Transparency = 0.1
Bullet.BrickColor = BrickColor.new("Gold")
--[[local Mesh = Instance.new("SpecialMesh",Bullet)
Mesh.MeshType = "FileMesh"
Mesh.Scale = Vector3.new(0.5,0.5,0.2)
Mesh.MeshId = "http://www.roblox.com/asset/?id=2697549"
--Mesh.TextureId = "http://www.roblox.com/asset/?id=2697544"]]
local Mesh = Instance.new("BlockMesh",Bullet)
Mesh.Scale = Vector3.new(0.2,0.2,5)*Scale/Bullet.Size
IgnoreList[#IgnoreList+1] = Bullet
RenderStepped:wait()
for i = Speed,1000,Speed do -- Loop to do the bullet movement and stuff.
local ray,Hit,Pos,SurfaceNormal;
ray = Ray.new(Bullet.Position,((Bullet.CFrame*CFrame.Angles(math.rad(-Gravity),0,0)*CFrame.new(0,0,-Speed)).p-Bullet.Position).unit*Speed)
Hit,Pos,SurfaceNormal = Workspace:FindPartOnRayWithIgnoreList(ray,IgnoreList)
Bullet.CFrame = Bullet.CFrame*CFrame.Angles(math.rad(-Gravity),0,0)*CFrame.new(0,0,-Speed)
if Hit ~= nil then
local Hum = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid") or (Hit.Parent.Parent.Parent ~= nil and Hit.Parent.Parent.Parent:FindFirstChild("Humanoid"))
if Hum ~= nil then
Hum:TakeDamage((((Gangster and math.random(0,0) or math.random(0,0))*Scale)/100)*Hum.MaxHealth)
end
break
end
RenderStepped:wait()
end
Bullet:Destroy()
end

Mouse.Button1Down:connect(function()
if not Down and not DB then
Down = true
while Down do
if Humanoid.Health == 0 then break end
if not DB then
DB = true
local Sound = Instance.new("Sound",Barrel)
Sound.SoundId = "http://www.roblox.com/Asset/?id=165946426" -- 132373574
Sound.Volume = 5*Scale
Sound.Pitch = (math.random(70,110)/100)/((Scale < 0.25 and 0.25) or (Scale > 4 and 4) or Scale)
Sound:Play()
Spawn(function()
ShootBullet(Mouse.Hit.p,Barrel1)
end)
RecoilMesh.VertexColor = Vector3.new(1,math.random(160,245)/255,20/255)
PartWeld.C0 = PartWeld.C0 * CFrame.Angles(0,math.rad(math.random(-40,40)),0)
local Shell = Instance.new("Part",Workspace)
Shell.FormFactor = "Custom"
Shell.BrickColor = BrickColor.new("Bright yellow")
Shell.Size = Vector3.new(0.2,0.5,0.2)*Scale
Shell.CFrame = Barrel.CFrame*CFrame.new(0.5,0.5,0)*CFrame.Angles(math.rad(-90),0,0)
Shell.Velocity = ((Barrel.CFrame*CFrame.new(5,0,math.random(-2,2))).p-Barrel.CFrame.p)*5*Scale
local Mesh = Instance.new("CylinderMesh",Shell)
Mesh.Scale = Vector3.new(0.2,0.5,0.2)*Scale/Shell.Size
Spawn(function()
wait(5)
Shell:Destroy()
end)
for i = 1,20,7.5 do
character1.Reanimate.FPart.Position = mouse.Hit.p
RotationOffset = RotationOffset*CFrame.Angles(math.rad(7.5),0,0)
Part1Joint = Part1Joint*CFrame.new(Vector3.new(0,-0.15,0)*Scale)
Barrel2Weld.C0 = Barrel2Weld.C0*CFrame.new(Vector3.new(0,0,0.15)*Scale)
Light.Brightness = Light.Brightness+38
RecoilMesh.Scale = RecoilMesh.Scale+(Vector3.new(0,0.375,0)*Scale)
RenderStepped:wait()
end
wait(0.02)
for i = 1,20,3.75 do
character1.Reanimate.FPart.Position = mouse.Hit.p
RotationOffset = RotationOffset*CFrame.Angles(math.rad(-3.75),0,0)
Part1Joint = Part1Joint*CFrame.new(Vector3.new(0,0.075,0)*Scale)
Barrel2Weld.C0 = Barrel2Weld.C0*CFrame.new(Vector3.new(0,0,-0.075)*Scale)
Light.Brightness = Light.Brightness-19
RecoilMesh.Scale = RecoilMesh.Scale+(Vector3.new(0,-0.1875,0)*Scale)
RenderStepped:wait()
end
wait(0.02)
DB = false
end
end
end
end)

Mouse.Button1Up:connect(function()
Down = false
end)

Mouse.KeyDown:connect(function(Key)
if Key:lower() == "g" and not DB then
DB = true
if Gangster == true then
for i = 1,70,5 do
RotationOffset = RotationOffset*CFrame.Angles(0,math.rad(-5),0)
RenderStepped:wait()
end
Gangster = false
else
for i = 1,70,5 do
RotationOffset = RotationOffset*CFrame.Angles(0,math.rad(5),0)
RenderStepped:wait()
end
Gangster = true
end
DB = false
end
end)

local Weld = Instance.new("Weld")
Weld.Part0 = Torso
Weld.Part1 = Character["Right Arm"]
Weld.Parent = Torso

local Weld2 = Instance.new("Weld")
Weld2.Part0 = Torso
Weld2.Part1 = Character.Head
Weld2.Parent = Torso

local RA = Character["Right Arm"]

game:GetService("RunService"):BindToRenderStep("Pistol",Enum.RenderPriority.Character.Value,function()
local Point = Torso.CFrame:vectorToObjectSpace(Mouse.Hit.p-Torso.CFrame.p)
if Point.Z > 0 then
if Point.X > 0 then
Torso.CFrame = CFrame.new(Torso.Position,Vector3.new(Mouse.Hit.X,Torso.Position.Y,Mouse.Hit.Z))*CFrame.Angles(0,math.rad(90),0)
elseif Point.X < 0 then
Torso.CFrame = CFrame.new(Torso.Position,Vector3.new(Mouse.Hit.X,Torso.Position.Y,Mouse.Hit.Z))*CFrame.Angles(0,math.rad(-90),0)
end
end

local CFr = (Torso.CFrame*Part0Joint):toObjectSpace(CFrame.new((Torso.CFrame*Part0Joint).p,Mouse.Hit.p))--RayEnd))
Weld.C0 = Part0Joint * (CFr-CFr.p) * RotationOffset
Weld.C1 = Part1Joint
Weld.Part0 = Torso
Weld.Part1 = RA
local CFr = (Torso.CFrame*Part0JointHead):toObjectSpace(CFrame.new((Torso.CFrame*Part0JointHead).p,Mouse.Hit.p))--RayEnd))
Weld2.C0 = Part0JointHead * (CFr-CFr.p) * RotationOffsetHead
Weld2.C1 = Part1JointHead
Weld2.Part0 = Torso
Weld2.Part1 = Character.Head
local Last = Scale
Scale = game.Players.LocalPlayer.Character.Torso.Size.X/2*(game.Players.LocalPlayer.Character.Torso:FindFirstChild("ScaleInserted") ~= nil and game.Players.LocalPlayer.Character.Torso:FindFirstChild("ScaleInserted").Scale.Z or 1)*0.8
Speed = 20*Scale
if Scale ~= Last then
Part0Joint = CFrame.new(Vector3.new(1,0.75,0)*Scale*1.25)
Part1Joint = CFrame.new(Vector3.new(-0.5,0.75,0)*Scale*1.25)
Part0JointHead = CFrame.new(Vector3.new(0,1,0)*Scale*1.25)
Part1JointHead = CFrame.new(Vector3.new(0,-0.5,0)*Scale*1.25)
end
end)