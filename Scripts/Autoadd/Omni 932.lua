-------[[ Lets start with something simple like the Variables & Settings ]] -----
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()

local char = game.Players.LocalPlayer.Character
for i,v in pairs(char:children()) do
    if v:IsA("Accessory") then
        v:Destroy()
    end
end
local aura = Instance.new("ParticleEmitter",game.Players.LocalPlayer.Character.Torso)
aura.Size = NumberSequence.new(0)
aura.Lifetime = NumberRange.new(0)
aura.LightEmission = 0
local jun = game.Players.LocalPlayer
local Player=game.Players.LocalPlayer
repeat wait()
until Player
local Char=Player.Character
repeat wait()
until Char
local CurrentEffects={}
local CurrentDamages={}
local Human=Char.Humanoid
local LArm=Char["Left Arm"]
local RArm=Char["Right Arm"]
local LLeg=Char["Left Leg"]
local RLeg=Char["Right Leg"]
local Torso=Char.Torso
local RS=Torso["Right Shoulder"]
local LS=Torso["Left Shoulder"]
local RH=Torso["Right Hip"]
local LH=Torso["Left Hip"]
local Head=Char.Head
local Neck=Torso.Neck
local RootPart=Char.HumanoidRootPart
local RootJoint=RootPart.RootJoint
local equipped=false
local Debounce=false
local Anim="Idle"
local chat = game:GetService("Chat")
local Mouse=Player:GetMouse()
local Lighting=game.Lighting
local cf=CFrame.new
local v3=Vector3.new
local c3=Color3.new
local it=Instance.new
local angles=CFrame.Angles
local rad=math.rad
local ran=math.random
local huge=math.huge
local attacking=false
local attacktype=1
local Portalling=false
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local symbolimg = "rbxassetid://349165228"
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local debris=game:service"Debris"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local eColors = {"Royal purple", "Really black"}
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LSC0=cf(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RSC0=cf(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
ROOTC0 = cf(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
r=game:service'RunService'.RenderStepped
--------------------------------------------------------------------



local Transforming = true
Human.WalkSpeed = 0


Player:ClearCharacterAppearance()
wait(0.1)
Player.Character.Head.BrickColor = BrickColor.new("Really black")
Player.Character.Torso.BrickColor = BrickColor.new("Really black")
Player.Character["Right Arm"].BrickColor = BrickColor.new("Really black")
Player.Character["Right Leg"].BrickColor = BrickColor.new("Really black")
Player.Character["Left Leg"].BrickColor = BrickColor.new("Really black")
Player.Character["Left Arm"].BrickColor = BrickColor.new("Really black")
Player.Character.Head.face:Destroy()







local selectionBoxOfTorso = Instance.new("SelectionBox",Torso)
selectionBoxOfTorso.Adornee = Torso
selectionBoxOfTorso.Color = BrickColor.new("Lime green")
selectionBoxOfTorso.LineThickness = 0.01
selectionBoxOfTorso.Transparency = 0
	
local selectionBoxOfRightArm = Instance.new("SelectionBox",Char["Right Arm"])
selectionBoxOfRightArm.Adornee = Char["Right Arm"]
selectionBoxOfRightArm.Color = BrickColor.new("Lime green")
selectionBoxOfRightArm.LineThickness = 0.01
selectionBoxOfRightArm.Transparency = 0
	
local selectionBoxOfRightLeg = Instance.new("SelectionBox",Char["Right Leg"])
selectionBoxOfRightLeg.Adornee = Char["Right Leg"]
selectionBoxOfRightLeg.Color = BrickColor.new("Lime green")
selectionBoxOfRightLeg.LineThickness = 0.01
selectionBoxOfRightLeg.Transparency = 0

local selectionBoxOfLeftArm = Instance.new("SelectionBox",Char["Left Arm"])
selectionBoxOfLeftArm.Adornee = Char["Left Arm"]
selectionBoxOfLeftArm.Color = BrickColor.new("Lime green")
selectionBoxOfLeftArm.LineThickness = 0.01
selectionBoxOfLeftArm.Transparency = 0

local selectionBoxOfLeftLeg = Instance.new("SelectionBox",Char["Left Leg"])
selectionBoxOfLeftLeg.Adornee = Char["Left Leg"]
selectionBoxOfLeftLeg.Color = BrickColor.new("Lime green")
selectionBoxOfLeftLeg.LineThickness = 0.01
selectionBoxOfLeftLeg.Transparency = 0


LightOnBody = Instance.new("PointLight", Head)
LightOnBody.Brightness = 3000
LightOnBody.Range = 20
LightOnBody.Color = Color3.new(0, 225, 0)



local p = game.Players.LocalPlayer
local char = p.Character
GodOfDestruction = Instance.new("Model",game.Players.LocalPlayer.Character.Torso)
GodOfDestruction.Name = "GodOfDestruction"
humanoid = Instance.new("Humanoid",game.Players.LocalPlayer.Character.Torso.GodOfDestruction)
shirt = Instance.new("Shirt",game.Players.LocalPlayer.Character.Torso.GodOfDestruction)
shirt.Name = "Shirt"
pants = Instance.new("Pants",game.Players.LocalPlayer.Character.Torso.GodOfDestruction)
pants.Name = "Pants"
torso = Instance.new("Part",game.Players.LocalPlayer.Character.Torso.GodOfDestruction)
torso.Size = Vector3.new(2,2,1)
torso.Rotation = Vector3.new(0,180,0)
torso.Position = Vector3.new(0,4,0)
torso.BrickColor = BrickColor.new("Really black")
torso.Name = "Torso"
head = Instance.new("Part",game.Players.LocalPlayer.Character.Torso.GodOfDestruction)
head.Size = Vector3.new(1.25,1.25,1.25)
head.BrickColor = BrickColor.new("Really black")
head.Name = "Head"
head.Position = Vector3.new(0,6,0)
headmesh = Instance.new("SpecialMesh",head)
headmesh.MeshType = "Head"
larm = Instance.new("Part",game.Players.LocalPlayer.Character.Torso.GodOfDestruction)
larm.Size = Vector3.new(1,2,1)
larm.BrickColor = BrickColor.new("Really black")
larm.Name = "Left Arm"
larm.Position = Vector3.new(-2,4,0)
rarm = Instance.new("Part",game.Players.LocalPlayer.Character.Torso.GodOfDestruction)
rarm.Size = Vector3.new(1,2,1)
rarm.BrickColor = BrickColor.new("Really black")
rarm.Name = "Right Arm"
rarm.Position = Vector3.new(2,4,0)
lleg = Instance.new("Part",game.Players.LocalPlayer.Character.Torso.GodOfDestruction)
lleg.Size = Vector3.new(1,2,1)
lleg.Name = "Left Leg"
lleg.Position = Vector3.new(1,2,0)
lleg.BrickColor = BrickColor.new("Really black")
rleg = Instance.new("Part",game.Players.LocalPlayer.Character.Torso.GodOfDestruction)
rleg.Size = Vector3.new(1,2,1)
rleg.Name = "Right Leg"
rleg.Position = Vector3.new(-1,2,0)
rleg.BrickColor = BrickColor.new("Really black")
headweld = Instance.new("Weld",game.Players.LocalPlayer.Character.Torso.GodOfDestruction.Head)
headweld.Part0 = game.Players.LocalPlayer.Character.Torso.GodOfDestruction.Head
headweld.Part1 = torso
headweld.C0 = CFrame.new(0, -1.5, 0)
larmweld = Instance.new("Weld",game.Players.LocalPlayer.Character.Torso.GodOfDestruction.Torso)
larmweld.Part0 = game.Players.LocalPlayer.Character.Torso.GodOfDestruction.Torso
larmweld.Part1 = larm
larmweld.C0 = CFrame.new(1.5, 0, 0)
rarmweld = Instance.new("Weld",game.Players.LocalPlayer.Character.Torso.GodOfDestruction.Torso)
rarmweld.Part0 = game.Players.LocalPlayer.Character.Torso.GodOfDestruction.Torso
rarmweld.Part1 = rarm
rarmweld.C0 = CFrame.new(-1.5, 0, 0)
rlegweld = Instance.new("Weld",game.Players.LocalPlayer.Character.Torso.GodOfDestruction.Torso)
rlegweld.Part0 = game.Players.LocalPlayer.Character.Torso.GodOfDestruction.Torso
rlegweld.Part1 = rleg
rlegweld.C0 = CFrame.new(-0.5, -2, 0)
llegweld = Instance.new("Weld",game.Players.LocalPlayer.Character.Torso.GodOfDestruction.Torso)
llegweld.Part0 = game.Players.LocalPlayer.Character.Torso.GodOfDestruction.Torso
llegweld.Part1 = lleg
llegweld.C0 = CFrame.new(0.5, -2, 0)
npctoplayer = Instance.new("Weld",game.Players.LocalPlayer.Character.Torso)
npctoplayer.Part0 = game.Players.LocalPlayer.Character.Torso
npctoplayer.Part1 = torso
npctoplayer.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(0))


local selectionBoxOfTorso = Instance.new("SelectionBox",torso)
selectionBoxOfTorso.Adornee = torso
selectionBoxOfTorso.Color = BrickColor.new("Really red")
selectionBoxOfTorso.LineThickness = 0.01
selectionBoxOfTorso.Transparency = 0
	
local selectionBoxOfRightArm = Instance.new("SelectionBox",rarm)
selectionBoxOfRightArm.Adornee =rarm
selectionBoxOfRightArm.Color = BrickColor.new("Really red")
selectionBoxOfRightArm.LineThickness = 0.01
selectionBoxOfRightArm.Transparency = 0
	
local selectionBoxOfRightLeg = Instance.new("SelectionBox",rleg)
selectionBoxOfRightLeg.Adornee =rleg
selectionBoxOfRightLeg.Color = BrickColor.new("Really red")
selectionBoxOfRightLeg.LineThickness = 0.01
selectionBoxOfRightLeg.Transparency = 0

local selectionBoxOfLeftArm = Instance.new("SelectionBox",larm)
selectionBoxOfLeftArm.Adornee = larm
selectionBoxOfLeftArm.Color = BrickColor.new("Really red")
selectionBoxOfLeftArm.LineThickness = 0.01
selectionBoxOfLeftArm.Transparency = 0

local selectionBoxOfLeftLeg = Instance.new("SelectionBox",lleg)
selectionBoxOfLeftLeg.Adornee = lleg
selectionBoxOfLeftLeg.Color = BrickColor.new("Really red")
selectionBoxOfLeftLeg.LineThickness = 0.01
selectionBoxOfLeftLeg.Transparency = 0


LightOnBody = Instance.new("PointLight", head)
LightOnBody.Brightness = 3000
LightOnBody.Range = 20
LightOnBody.Color = Color3.new(225, 0, 0)








CV="Pastel blue"
	
local txt = Instance.new("BillboardGui", GodOfDestruction)
txt.Adornee = head
txt.Name = "_status"
txt.Size = UDim2.new(2, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-9, 8, 0)
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(10, 0, 7, 0)
text.FontSize = "Size24"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1 
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "Antique"
text.TextStrokeColor3 = Color3.new(225,0,0)

v=Instance.new("Part")
v.Name = "ColorBrick"
v.Parent=Player.Character
v.FormFactor="Symmetric"
v.Anchored=true
v.CanCollide=false
v.BottomSurface="Smooth"
v.TopSurface="Smooth"
v.Size=Vector3.new(10,5,3)
v.Transparency=1
v.CFrame=Char.Torso.CFrame
v.BrickColor=BrickColor.new(CV)
v.Transparency=1
text.TextColor3 = Color3.new(0,0,0)
v.Shape="Block"
text.Text = "God Of Destruction"




local ChatService = game:GetService("Chat")

ChatService:Chat(Head, "If we fuse...we will become the omni god..", "Green")
wait(4)
ChatService:Chat(Head, "No one will be able to stop us...", "Green")
wait(4)
ChatService:Chat(Head, "Lets do this...", "Green")


local close = -10
for i=1,10 do
	wait(0.2)
	close = close + 1
	npctoplayer.C0 = CFrame.new(0, 0, close) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(0))
end
game.Players.LocalPlayer.Character.Torso.GodOfDestruction:Destroy()
wait(0.1)
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local debris=game:service"Debris"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped


Debounces = {
CanAttack = true;
NoIdl = false;
Slashing = false;
Slashed = false;
RPunch = false;
Invisible = false;
RPunched = false;
LPunch = false;
LPunched = false;
}
local Touche = {char.Name, }


function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end
function weld(a, b)
    local weld = Instance.new("Weld")
    weld.Name = "W"
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    weld.Parent = a
    return weld;
end
----------------------------------------------------
function Lerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end
----------------------------------------------------
function HasntTouched(plrname)
local ret = true
for _, v in pairs(Touche) do
if v == plrname then
ret = false
end
end
return ret
end
----------------------------------------------------

newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)


p = Instance.new("Part")
p.BrickColor = BrickColor.new("Dark indigo")
p.Transparency = 1
TorsoColor = p.BrickColor


local Transforming = true
hum.WalkSpeed = 0




local fx = Instance.new("Part",Torso)
wit = p.BrickColor.Color
wit2 = Color3.new(85,0,127)
local glowz = Instance.new("ParticleEmitter",fx)
glowz.LightEmission = 1
glowz.Texture = "rbxassetid://284205403"
glowz.Color = ColorSequence.new(wit)
glowz.Size = NumberSequence.new(5)
glowz.Speed = NumberRange.new(25,50)
glowz.LockedToPart = false
glowz.Transparency = NumberSequence.new(0.75)
glowz.RotSpeed = NumberRange.new(-2000,2000)
glowz.Lifetime = NumberRange.new(1)
glowz.Rate = 50000
glowz.VelocitySpread = 9001
local glowz2 = Instance.new("ParticleEmitter",fx)
glowz2.LightEmission = 0.5
glowz.Texture = "rbxassetid://284205403"
glowz2.Color = ColorSequence.new(wit2)
glowz2.Size = NumberSequence.new(5)
glowz2.Speed = NumberRange.new(25,50)
glowz2.LockedToPart = false
glowz2.Transparency = NumberSequence.new(0.75)
glowz2.RotSpeed = NumberRange.new(-2000,2000)
glowz2.Lifetime = NumberRange.new(1)
glowz2.Rate = 50000
glowz2.VelocitySpread = 9001
fx.Anchored = true
fx.Material = "Neon"
fx.CanCollide = false
fx.Locked = true
fx.Transparency = 1
fx.Material = "Neon"
fx.Size = Vector3.new(1,1,1)
fx.TopSurface = "SmoothNoOutlines"
fx.BottomSurface = "SmoothNoOutlines"
fx.BrickColor = BrickColor.new("Really black")
fxm = Instance.new("SpecialMesh",fx)
fxm.MeshType = "Sphere"
local sa2 = Instance.new("Sound",Torso)
sa2.SoundId = "rbxassetid://93724183"
sa2.Pitch = 0.5
sa2.Volume = 5
sa2.Looped = false
sa2:Play()
local value = 1
fxm.Scale = Vector3.new(1,1,1)
for i = 1, 20 do rs:wait()
        value = value - 0.05
        fx.Transparency = fx.Transparency - (1/20)
        fx.CFrame = Torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(value,value,value)
        rs:wait()
end


selectionBoxOfTorso:Destroy()
selectionBoxOfRightArm:Destroy()
selectionBoxOfRightLeg:Destroy()
selectionBoxOfLeftArm:Destroy()
selectionBoxOfLeftLeg:Destroy()
LightOnBody:Destroy()


local selectionBoxOfTorso = Instance.new("SelectionBox",Torso)
selectionBoxOfTorso.Adornee = Torso
selectionBoxOfTorso.Color = BrickColor.new("Royal purple")
selectionBoxOfTorso.LineThickness = 0.01
selectionBoxOfTorso.Transparency = 0
	
local selectionBoxOfRightArm = Instance.new("SelectionBox",Char["Right Arm"])
selectionBoxOfRightArm.Adornee = Char["Right Arm"]
selectionBoxOfRightArm.Color = BrickColor.new("Royal purple")
selectionBoxOfRightArm.LineThickness = 0.01
selectionBoxOfRightArm.Transparency = 0
	
local selectionBoxOfRightLeg = Instance.new("SelectionBox",Char["Right Leg"])
selectionBoxOfRightLeg.Adornee = Char["Right Leg"]
selectionBoxOfRightLeg.Color = BrickColor.new("Royal purple")
selectionBoxOfRightLeg.LineThickness = 0.01
selectionBoxOfRightLeg.Transparency = 0

local selectionBoxOfLeftArm = Instance.new("SelectionBox",Char["Left Arm"])
selectionBoxOfLeftArm.Adornee = Char["Left Arm"]
selectionBoxOfLeftArm.Color = BrickColor.new("Royal purple")
selectionBoxOfLeftArm.LineThickness = 0.01
selectionBoxOfLeftArm.Transparency = 0

local selectionBoxOfLeftLeg = Instance.new("SelectionBox",Char["Left Leg"])
selectionBoxOfLeftLeg.Adornee = Char["Left Leg"]
selectionBoxOfLeftLeg.Color = BrickColor.new("Royal purple")
selectionBoxOfLeftLeg.LineThickness = 0.01
selectionBoxOfLeftLeg.Transparency = 0




local Orbd = Instance.new("Part", char)
Orbd.Name = "Orbd"
Orbd.Shape = Enum.PartType.Ball
Orbd.CanCollide = false

	Orbd.BrickColor = BrickColor.new("Royal purple")

Orbd.Transparency = 0
Orbd.Material = "Neon"
Orbd.Size = Vector3.new(0.1, 0.1, 0.1)
Orbd.TopSurface = Enum.SurfaceType.Smooth
Orbd.BottomSurface = Enum.SurfaceType.Smooth

local Weld = Instance.new("Weld", Orbd)
Weld.Part0 = char.Head
Weld.Part1 = Orbd
Weld.C1 = CFrame.new(-0.2, -0.2, 0.5)
local glov = Instance.new("PointLight", Orbd)
glov.Brightness = 3000
glov.Range = 20
glov.Color = Color3.new(255, 0, 255)

--------------------------------------------------------
local Orbvc = Instance.new("Part", char)
Orbvc.Name = "Orbvc"
Orbvc.Shape = Enum.PartType.Ball
Orbvc.CanCollide = false

	Orbvc.BrickColor = BrickColor.new("Royal purple")

Orbvc.Transparency = 0
Orbvc.Material = "Neon"
Orbvc.Size = Vector3.new(0.1, 0.1, 0.1)
Orbvc.TopSurface = Enum.SurfaceType.Smooth
Orbvc.BottomSurface = Enum.SurfaceType.Smooth

local Weld = Instance.new("Weld", Orbvc)
Weld.Part0 = char.Head
Weld.Part1 = Orbvc
Weld.C1 = CFrame.new(0.2, -0.2, 0.5)
local glo = Instance.new("PointLight", Orbvc)
glo.Brightness = 3000
glo.Range = 20
glo.Color = Color3.new(255, 0, 255)
----------------------------------------------------










function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end
                    end
                end
            end
        end
    return List
end




GroundWave1 = function()
	local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local Colors = {"Royal purple", "Really black"}
		local wave = Instance.new("Part", Torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = HandCF
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wm.Scale = Vector3.new(50, 50, 1 + i*50)
		wave.Size = wm.Scale
		wave.CFrame = HandCF
		wave.Transparency = i/30
		wait()
		end
		wait()
		wave:Destroy()
	end)()
end
----------------------------------------------------


GroundWave3 = function()
	local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local Colors = {"Royal purple", "Royal purple"}
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = HandCF
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 14, 1 do
		wm.Scale = Vector3.new(1 + i*1.1, 1 + i*1.1, 1)
		wave.Size = wm.Scale
		wave.CFrame = HandCF
		wave.Transparency = i/14
		wait()
		end
		wait()
		wave:Destroy()
	end)()
end





local acos = math.acos
local sqrt = math.sqrt
local Vec3 = Vector3.new
local fromAxisAngle = CFrame.fromAxisAngle

local function toAxisAngle(CFr)
        local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
        local Angle = math.acos((R00+R11+R22-1)/2)
        local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        A = A == 0 and 0.00001 or A
        local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        B = B == 0 and 0.00001 or B
        local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        C = C == 0 and 0.00001 or C
        local x = (R21-R12)/sqrt(A)
        local y = (R02-R20)/sqrt(B)
        local z = (R10-R01)/sqrt(C)
        return Vec3(x,y,z),Angle
end

local acos = math.acos
local sqrt = math.sqrt
local Vec3 = Vector3.new
local fromAxisAngle = CFrame.fromAxisAngle

local function toAxisAngle(CFr)
        local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
        local Angle = math.acos((R00+R11+R22-1)/2)
        local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        A = A == 0 and 0.00001 or A
        local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        B = B == 0 and 0.00001 or B
        local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        C = C == 0 and 0.00001 or C
        local x = (R21-R12)/sqrt(A)
        local y = (R02-R20)/sqrt(B)
        local z = (R10-R01)/sqrt(C)
        return Vec3(x,y,z),Angle
end

function ApplyTrig(Num,Func)
        local Min,Max = Func(0),Func(1)
        local i = Func(Num)
        return (i-Min)/(Max-Min)
        --[[if Func == "sin" then
                return (math.sin((1-Num)*math.pi)+1)/2
        elseif Func == "cos" then
                return (math.cos((1-Num)*math.pi)+1)/2
        end]]
end

function LerpCFrame(CFrame1,CFrame2,Num)
        local Vec,Ang = toAxisAngle(CFrame1:inverse()*CFrame2)
        return CFrame1*fromAxisAngle(Vec,Ang*Num) + (CFrame2.p-CFrame1.p)*Num
end



local togglecamshake = true

function camshake(partoz, magn, intens)
    if togglecamshake == true then
      return
    end
    for _, guy in pairs(workspace:GetChildren()) do
      if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("Torso") and guy.Name ~= "Noob" and magn > (guy:FindFirstChild("Torso").Position - partoz.Position).magnitude then
        coroutine.resume(coroutine.create(function()
          local humz = guy:FindFirstChild("Humanoid")
          local torse = guy:FindFirstChild("Torso")
          for _ = 1, 5 * intens do
            wait()
            humz.CameraOffset = Vector3.new(2 * math.random(-intens, intens), 0.5 * math.random(-intens, intens), 2 * math.random(-intens, intens))
          end
          humz.CameraOffset = Vector3.new(0, 0, 0)
        end))
      end
    end
  end


function Crater(Torso,Radius)
        Spawn(function()
        local Ray = Ray.new(Torso.Position,Vector3.new(0,-1,0)*10)
        local Ignore = {}
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character ~= nil then
                        Ignore[#Ignore+1] = v.Character
                end
        end
        local Hit,Pos,SurfaceNorm = workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
        if Hit == nil then return end
        local Parts = {}
        for i = 1,360,10 do
                local P = Instance.new("Part",Torso.Parent)
                P.Anchored = true
                P.FormFactor = "Custom"
                P.BrickColor = BrickColor.new("Royal purple")
                P.Material = "Granite"
                P.TopSurface = "Smooth"
                P.BottomSurface = "Smooth"
                P.Size = Vector3.new(5,10,10)*(math.random(80,100)/100)
                P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,7,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                Parts[#Parts+1] = {P,P.CFrame,((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,1,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius)*CFrame.Angles(math.rad(math.random(-50,-20)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),P.Size}
                if math.random(0,5) == 0 then -- rubble
                        local P = Instance.new("Part",Torso.Parent)
                        P.Anchored = true
                        P.FormFactor = "Custom"
                        P.BrickColor = BrickColor.new("Royal Purple")
                        P.Material = Hit.Material
                        P.TopSurface = "Smooth"
                        P.BottomSurface = "Smooth"
                        P.Size = Vector3.new(5,5,5)*(math.random(80,100)/100)
                        P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,2.5,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                        Parts[#Parts+1] = {P,P.CFrame,(CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius-8)*CFrame.Angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90))),P.Size}
                end
        end
        for i = 0,1,0.05 do
                for i2,v in pairs(Parts) do
                        v[1].CFrame = LerpCFrame(v[2],v[3],ApplyTrig(i,math.cos))
                end
                wait(0.02)
        end
        for i,v in pairs(Parts) do
                if v[1].Size.X > 2.1 then
                        v[1].CFrame = v[1].CFrame+Vector3.new(0,2,0)
                end
                v[1].Anchored = false
        end
        for i = 0,1,0.05 do
                for i2,v in pairs(Parts) do
                        v[1].Transparency = i
                        if i == 1 then
                                v[1]:Destroy()
                        elseif i >= 0.25 then
                                v[1].CanCollide = false
                        end
                end
                wait(0.02)
        end
        Parts = nil
        end)
end



GroundWave = function()
        if Transforming == true then
                local value = 5
                local value2 = 10
                local value3 = 20
local sa2 = Instance.new("Sound",Torso)
sa2.SoundId = "rbxassetid://393621716"
sa2.Pitch = 1
sa2.Volume = 10
sa2.Looped = false
sa2:Play()
                local wave = Instance.new("Part", Torso)
local glowz = Instance.new("ParticleEmitter",wave)
glowz.LightEmission = 1
glowz.Texture = "rbxassetid://284205403"
glowz.Color = ColorSequence.new(wit)
glowz.Size = NumberSequence.new(30)
glowz.Speed = NumberRange.new(25,100)
glowz.LockedToPart = false
glowz.Transparency = NumberSequence.new(0.75)
glowz.RotSpeed = NumberRange.new(-2000,2000)
glowz.Lifetime = NumberRange.new(1)
glowz.Rate = 50000
glowz.VelocitySpread = 9001
local glowz2 = Instance.new("ParticleEmitter",wave)
glowz2.LightEmission = 1
glowz.Texture = "rbxassetid://284205403"
glowz2.Color = ColorSequence.new(wit)
glowz2.Size = NumberSequence.new(30)
glowz2.Speed = NumberRange.new(25,100)
glowz2.LockedToPart = false
glowz2.Transparency = NumberSequence.new(0.75)
glowz2.RotSpeed = NumberRange.new(-2000,2000)
glowz2.Lifetime = NumberRange.new(1)
glowz2.Rate = 50000
glowz2.VelocitySpread = 9001
                wave.BrickColor = BrickColor.new("Really black")
                wave.Anchored = true
                wave.CanCollide = false
                wave.Locked = true
                wave.Size = Vector3.new(1, 1, 1)
                wave.TopSurface = "Smooth"
                wave.BottomSurface = "Smooth"
                wave.Transparency = 0.35
                wave.CFrame = fx.CFrame
                wave.Material = "Neon"
                wm = Instance.new("SpecialMesh", wave)
                wm.MeshType = "Sphere"
                wm.Scale = Vector3.new(1,1,1)
                local wave2 = Instance.new("Part", Torso)
                wave2.BrickColor = TorsoColor
                wave2.Anchored = true
                wave2.CanCollide = false
                wave2.Locked = true
                wave2.Size = Vector3.new(1, 1, 1)
                wave2.TopSurface = "Smooth"
                wave2.BottomSurface = "Smooth"
                wave2.Transparency = 0.35
                wave2.CFrame = fx.CFrame
                wave2.Material = "Neon"
                wm2 = Instance.new("SpecialMesh", wave2)
                wm2.MeshType = "FileMesh"
                wm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
                wm2.Scale = Vector3.new(1,1,1)
                local wave3 = Instance.new("Part", Torso)
                wave3.BrickColor = BrickColor.new("Really black")
                wave3.Anchored = true
                wave3.CanCollide = false
                wave3.Locked = true
                wave3.Size = Vector3.new(1, 1, 1)
                wave3.TopSurface = "Smooth"
                wave3.BottomSurface = "Smooth"
                wave3.Transparency = 0.35
                wave3.CFrame = fx.CFrame
                wave3.Material = "Neon"
                wm3 = Instance.new("SpecialMesh", wave3)
                wm3.MeshType = "FileMesh"
                wm3.MeshId = "http://www.roblox.com/asset/?id=3270017"
                wm3.Scale = Vector3.new(1,1,1)
                coroutine.wrap(function()
                for i = 1, 18, 1 do
                value = value - 0.5
                value2 = value2 - 0.75*1.5
                value3 = value3 - 0.475*1.5
                wm.Scale = wm.Scale + Vector3.new(value*3.5,value*3.5,value*3.5)
                wm2.Scale = wm.Scale + Vector3.new(value2*3.5,value2*3.5,0.5)
                wm3.Scale = wm.Scale + Vector3.new(value3*3.5,value3*3.5,0.25)
                --wave.Size = wm.Scale
                wave.CFrame = fx.CFrame
                wave.Transparency = i/14
                --wave2.Size = wm2.Scale
                wave2.CFrame = fx.CFrame
                wave2.Rotation = Vector3.new(90, 0, 0)
                wave2.Transparency = i/14
                --wave3.Size = wm3.Scale
                wave3.CFrame = fx.CFrame
                wave3.Rotation = Vector3.new(90, 0, 0)
                wave3.Transparency = i/14
                wait()
                glowz.Rate = 0
                glowz2.Rate = 0
                end
                wait()
                wave:Destroy()
                wave2:Destroy()
                wave3:Destroy()
        end)()
        elseif Transforming == false then
        wait()
        end
end

for i = 1, 100 do rs:wait()
        fx.CFrame = Torso.CFrame
end

spawn(function()
	while wait(1) do
		GroundWave()
	end
end)






local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part"){
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material,
	}
	RemoveOutlines(Part)
	return Part
end
local Effects = {}



wait(2)
local Muss = Instance.new("Sound",char)
Muss.SoundId = "rbxassetid://186942568"
Muss.Pitch = 1
Muss.Volume = 0
Muss.Looped = true
Muss:Play()
Transforming = false


local value2 = 1
for i = 1, 20 do rs:wait()
        value2 = value2 - 0.05
        glowz.Rate = 0
        glowz2.Rate = 0
        fx.Transparency = fx.Transparency + (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(value2,value2,value2)
        rs:wait()
end


local Mus = Instance.new("Sound",char)
Mus.SoundId = "rbxassetid://752647397"
Mus.Pitch = 1
Mus.Volume = 40
Mus.Looped = false
wait(0.3)
Mus:Play()

glowz:Destroy()
glowz2:Destroy()
for i = 1,20 do
	
	torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.65,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.65,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(0)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.4, -.7) * CFrame.Angles(math.rad(-20), 0, math.rad(0)), 0.4)
end
wait(1)
for i = 1,20 do
	torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
								rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.65,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.65,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.2)

					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-10)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(10)), 0.4)

end


wait(5)

wait(1.3)
for i = 1,20 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.65,0)*CFrame.Angles(math.rad(50),math.rad(0),math.rad(30)), 0.2)
					
					
end
wait(0.4)
for i = 1,20 do
					
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.65,0)*CFrame.Angles(math.rad(50),math.rad(0),math.rad(-30)), 0.2)
end
wait(0.6)
for i = 1,20 do
	wait()
	torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.65,0)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(-35)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.65,0)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(35)), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(0)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(0)), 0.4)
end
wait(0.2)
for i = 1,20 do
	torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
								rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.65,0)*CFrame.Angles(math.rad(50),math.rad(0),math.rad(30)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.65,0)*CFrame.Angles(math.rad(50),math.rad(0),math.rad(-30)), 0.2)

					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-10)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(10)), 0.4)

end
wait()

camshake(torso, 48, 6)
for i,v in pairs(FindNearestTorso(Torso.CFrame.p,40))do
			if v:FindFirstChild('Humanoid') then
				v.Humanoid:TakeDamage(math.random(999999999999999999999999,99999999999999999999999999999999999999))
			end
end




function RayCast(Position, Direction, MaxDistance, IgnoreList)
	return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(Position, Direction.unit * (MaxDistance or 999.999)), IgnoreList) 
end

function rayCast(Position, Direction, MaxDistance, IgnoreList)
	return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(Position, Direction.unit * (MaxDistance or 999.999)), IgnoreList) 
end
local TBlast, TBMesh = Instance.new("Part"), Instance.new("SpecialMesh")
	TBlast.BrickColor = BrickColor.new("Pink")
	TBlast.Transparency = 1
	TBlast.Anchored = true
	TBlast.CanCollide = false
	TBlast.CFrame = root.CFrame
	TBlast.Size = Vector3.new(2,2,2)
	TBMesh.Parent = TBlast
	TBMesh.MeshType = "Sphere"
	game.Lighting.Brightness = 0
		game.Lighting.OutdoorAmbient = TBlast.BrickColor.Color
		game.Lighting.TimeOfDay = 0.1
		game.Lighting.FogEnd = 1000
		game.Lighting.FogColor = TBlast.BrickColor.Color
		game.Lighting.TimeOfDay = "00:00:00"
		game.Lighting.Ambient = Color3.new(0,0,0)
		game.Lighting.FogColor = Color3.new(0,0,0)
		game.Lighting.FogEnd = 500
		game.Lighting.FogStart = 0
		game.Lighting.GlobalShadows = true
		
		

local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local valuer = 5
        local valuer2 = 10
        local valuer3 = 15
local sa2 = Instance.new("Sound",torso)
sa2.SoundId = "rbxassetid://130972023"
sa2.Pitch = 1
sa2.Volume = 5
sa2.Looped = false
sa2:Play()
local sar2 = Instance.new("Sound",torso)
sar2.SoundId = "rbxassetid://153274423"
sar2.Pitch = 1
sar2.Volume = 5
sar2.Looped = false
sar2:Play()
Crater(torso,67)

GroundWave4 = function()
        
                local wave = Instance.new("Part", torso)
                wave.BrickColor = BrickColor.new("Royal purple")
                wave.Anchored = true
                wave.CanCollide = false
                wave.Locked = true
                wave.Size = Vector3.new(1, 1, 1)
                wave.TopSurface = "Smooth"
                wave.BottomSurface = "Smooth"
                wave.Transparency = 0.35
                wave.CFrame = fx.CFrame
                wm = Instance.new("SpecialMesh", wave)
                wm.MeshType = "Sphere"
                wm.Scale = Vector3.new(1,1,1)
                coroutine.wrap(function()
                for i = 1, 18, 1 do
                wm.Scale = Vector3.new(2 + i*2, 2 + i*2, 2 + i*2)
                --wave.Size = wm.Scale
                wave.CFrame = fx.CFrame
                wave.Transparency = i/14
                wait()
                end
                wait()
                wave:Destroy()
        end)()
        
end





		GroundWave1()
		
		
		CV="Pastel blue"
	
local txt = Instance.new("BillboardGui", Char)
txt.Adornee = Char .Head
txt.Name = "_status"
txt.Size = UDim2.new(2, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-9, 8, 0)
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(10, 0, 7, 0)
text.FontSize = "Size24"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1 
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "Antique"
text.TextStrokeColor3 = Color3.new(170,0,255)

v=Instance.new("Part")
v.Name = "ColorBrick"
v.Parent=Player.Character
v.FormFactor="Symmetric"
v.Anchored=true
v.CanCollide=false
v.BottomSurface="Smooth"
v.TopSurface="Smooth"
v.Size=Vector3.new(10,5,3)
v.Transparency=1
v.CFrame=Char.Torso.CFrame
v.BrickColor=BrickColor.new(CV)
v.Transparency=1
text.TextColor3 = Color3.new(0,0,0)
v.Shape="Block"
text.Text = "The Omni-God of Erradication"




ROW = function(out, trans, s, wt, t, ang, plus)
					for i = 1, 360, 360/t do
						local c = Instance.new("Part", game.Workspace)
						c.FormFactor = 3
						c.TopSurface = 0
						c.BottomSurface = 0
						c.Size = s
						c.Anchored = true
						c.CanCollide = wt
						c.Material=workspace.Base.Material
						c.Transparency = trans
						c.BrickColor = workspace.Base.BrickColor
						c.CFrame = CFrame.new(Torso.CFrame.x,0,Torso.CFrame.z) * CFrame.Angles(0, math.rad(i +  plus), 0) *     CFrame.new(0, 0, out) * ang
						c.Locked=true
						game.Debris:AddItem(c,15)
					end
end

ROW(12, 0, Vector3.new(34.5, 30, 3), true, 8, CFrame.Angles(math.rad(math.random (30,60)), 0, math.rad    (math.random(-30,30))), 0)
	
	
	
	
	
	
	
        local wave = Instance.new("Part", torso)
        wave.BrickColor = TorsoColor
        wave.Anchored = true
        wave.CanCollide = false
        wave.Locked = true
        wave.Size = Vector3.new(1, 1, 1)
        wave.TopSurface = "Smooth"
        wave.BottomSurface = "Smooth"
        wave.Transparency = 0.35
        wave.CFrame = HandCF
        wm = Instance.new("SpecialMesh", wave)
        wm.MeshId = "rbxassetid://3270017"
        local wave2 = Instance.new("Part", torso)
        wave2.BrickColor = BrickColor.new("Really black")
        wave2.Anchored = true
        wave2.CanCollide = false
        wave2.Locked = true
        wave2.Size = Vector3.new(1, 1, 1)
        wave2.TopSurface = "Smooth"
        wave2.BottomSurface = "Smooth"
        wave2.Transparency = 0.35
        wave2.CFrame = HandCF
        wm2 = Instance.new("SpecialMesh", wave2)
        wm2.MeshId = "rbxassetid://3270017"
        local wave3 = Instance.new("Part", torso)
        wave3.BrickColor = TorsoColor
        wave3.Anchored = true
        wave3.CanCollide = false
        wave3.Locked = true
        wave3.Size = Vector3.new(1, 1, 1)
        wave3.TopSurface = "Smooth"
        wave3.BottomSurface = "Smooth"
        wave3.Transparency = 0.35
        wave3.CFrame = HandCF
        wm3 = Instance.new("SpecialMesh", wave3)
        wm3.MeshId = "rbxassetid://3270017"
        coroutine.wrap(function()
        for i = 1, 14, 1 do
        valuer = valuer - 0.35
        valuer2 = valuer - 0.45
        valuer3 = valuer3 - 0.475
        wm.Scale = wm.Scale + Vector3.new(valuer*2.5,valuer*2.5, 1 + i*200)
        wave.Size = wm.Scale
        wave.CFrame = HandCF
        wave.Transparency = i/14
        wm2.Scale = wm2.Scale + Vector3.new(valuer2*2.5,valuer2*2.5, 0 + i*10)
        wave2.Size = wm2.Scale
        wave2.CFrame = HandCF
        wave2.Transparency = i/14
        wm3.Scale = wm3.Scale + Vector3.new(valuer3*2.5,valuer3*2.5, 1)
        wave3.Size = wm2.Scale
        wave3.CFrame = HandCF
        wave3.Transparency = i/14
        wait()
        end
        wait()
        wave:Destroy()
        wave2:Destroy()
end)()

local torso = game.Players.LocalPlayer.Character.Torso
local block = Instance.new("Part",torso)
block.Size = Vector3.new(0.1,0.1,0.1)
block.Position = block.Position + Vector3.new(2,2,2)
block.Transparency = 1
local weld = Instance.new("Weld",torso)
weld.Part0 = torso
weld.Part1 = block
weld.C0 = CFrame.new(0,5,0)
local tables = {5,4,3,2,1}
local part = Instance.new("ParticleEmitter")
part.Parent = game.Players.LocalPlayer.Character.Torso
part.LockedToPart = true

part.Texture = "rbxassetid://300899196"
part.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,18),NumberSequenceKeypoint.new(1,1)})
part.Transparency = NumberSequence.new(0.7)
part.Lifetime = NumberRange.new(2)
part.Rate = 30
local part2 = Instance.new("ParticleEmitter",block)
part2.Lifetime = NumberRange.new(5)
part2.Speed = NumberRange.new(0)
part2.Size = NumberSequence.new(18)
part2.LockedToPart = true
part2.Transparency = NumberSequence.new(0.5)
part2.Rate = 3
part2.Color = ColorSequence.new(Color3.fromRGB(170,0,255))
part2.Texture = "http://www.roblox.com/asset/?id=358965396"
local model = Instance.new("Model",torso)

local ball0 = Instance.new("Part",model)
ball0.Position = ball0.Position + Vector3.new(2,2,2)
ball0.Transparency = 0.5
ball0.BrickColor = BrickColor.new("Royal purple")
ball0.Size = Vector3.new(1,1,1)
ball0mesh = Instance.new("SpecialMesh",ball0)
ball0mesh.MeshType = "Sphere"
ball0mesh.Scale = Vector3.new(1,1,1)
ballweld = Instance.new("Weld",model)
ballweld.Part0 = torso
ballweld.Part1 = ball0




for i = 1,15 do
	wait(0.1)
	part.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,30),NumberSequenceKeypoint.new(1,1)})
	part2.Size = NumberSequence.new(15)
for i = 1 , 3 do
wait()
	ball0mesh.Scale = ball0mesh.Scale + Vector3.new(13,13,13)

end

	wait(0.1)
	part2.Size = NumberSequence.new(8)
	part.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,18),NumberSequenceKeypoint.new(1,1)})
	ball0mesh.Scale = Vector3.new(1,1,1)

end

hum.WalkSpeed = 16
Muss.Volume = 8


Charging = true
custommath={25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,-25,-26,-27,-28,-29,-30,-31,-32,-33,-34,-35,-36,-37,-38,-39,-40,-41,-42,-43,-44,-45,-46,-47,-48,-49,-50,-51,-52,-53,-54,-55,-56,-57,-58,-59,-60,-61,-62,-63,-64,-65,-66,-67,-68,-69,-70,-71,-72,-73,-74,-75,-76,-77,-78,-79,-80,-81,-82,-83,-84,-85,-86,-87,-88,-89,-90,-91,-92,-93,-94,-95,-96,-97,-98,-99,-100}
function FDebris()
	repeat
    local p = Instance.new('Part',Torso)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(1,1,1)
    p.BrickColor = BrickColor.new("Dark indigo")
    p.CanCollide = false
    p.Transparency = 0.2
    p.Anchored = true
    p.Locked=true
    p.Material = "Neon"
    s = math.random(1,40)/10
    local m = Instance.new("BlockMesh",p)
    m.Scale = Vector3.new(s,s,s)
    p.CFrame = Torso.CFrame*CFrame.new(custommath[math.random(1,#custommath)]/10,-math.random(5,7),custommath[math.random(1,#custommath)]/10)*CFrame.Angles(math.random(),math.random(),math.random())
	--[[coroutine.wrap(function()
		wait(2)
		while Charging == true do
		wait(2)
		GroundWave1()
		wait(2)
		end
	end)()]]--
	
	spawn(function()
        while rs:wait() do
            if p.Transparency >= 1 then p:Destroy() break end
            p.CFrame = p.CFrame*CFrame.Angles(math.rad(2),math.rad(2),math.rad(2))+Vector3.new(0,0.2,0)
            p.Transparency = p.Transparency+0.01
        end
    end)
    wait(.3)
until Charging == false
end
				

spawn(function()
	while wait(.01)
		 do
		FDebris()	
		end
end)	



FloatPart = function()
	local Part = Instance.new('Part',Torso)
	Part.CFrame = CFrame.new(Torso.CFrame.X,workspace.Base.CFrame.Y+1,Torso.CFrame.Z) * CFrame.fromEulerAnglesXYZ(86.4,0,87)
	Part.Anchored = true
	Part.Material = 'Neon'
	Part.CanCollide = false
	Part.BrickColor = BrickColor.new("Royal purple")
	local Mesh = Instance.new('SpecialMesh',Part)
	Mesh.Scale = Vector3.new(4,4,.2)
	Mesh.MeshId = 'http://www.roblox.com/asset/?id=3270017'
	Mesh.VertexColor = Vector3.new(0,170,255)
	spawn(function()
		for i = 1,30 do
			Mesh.Scale = Mesh.Scale + Vector3.new(.04,.04,0)
			Part.Transparency = Part.Transparency + .035
			game["Run Service"].RenderStepped:wait()
		end
		Part:Destroy()
	end)
end;

DubPart = function()
	local Part = Instance.new('Part',Torso)
	Part.CFrame = CFrame.new(Torso.CFrame.X,workspace.Base.CFrame.Y+1,Torso.CFrame.Z) * CFrame.fromEulerAnglesXYZ(86.4,0,87)
	Part.Anchored = true
	Part.CanCollide = false
	Part.Material = 'Neon'
	Part.BrickColor = BrickColor.new(SecondaryColor)
	local Mesh = Instance.new('SpecialMesh',Part)
	Mesh.Scale = Vector3.new(7,7,.2)
	Mesh.MeshId = 'http://www.roblox.com/asset/?id=3270017'
	Mesh.VertexColor = Vector3.new(0,170,255)
	spawn(function()
		for i = 1,30 do
			Mesh.Scale = Mesh.Scale + Vector3.new(.04,.04,0)
			Part.Transparency = Part.Transparency + .035
			game["Run Service"].RenderStepped:wait()
		end
		Part:Destroy()
	end)
end;

Fade = function(Item,t)
	spawn(function()
		for i = 1,20 do
			Item.Transparency = Item.Transparency + .05
			if t then
				wait(t)
			else 
				wait()
			end
		end
		Item:Destroy()
	end)
end

Particle = function(PrimaryColor)
	local Part = Instance.new('Part',Torso)
	Part.BrickColor = BrickColor.new(PrimaryColor)
	Part.Anchored = true
	Part.Transparency = .3
	Part.CanCollide = false
	Part.CFrame = Torso.CFrame * CFrame.new(math.random(-10,10),math.random(-15,15),math.random(-10,10)) * CFrame.fromEulerAnglesXYZ(math.random(),math.random(),math.random())
	local Mesh = Instance.new('BlockMesh',Part)
	Mesh.Scale = Vector3.new(.05,.1,.1)
	spawn(function()
		for i = 1,40 do
			Part.Transparency = Part.Transparency + .0125
			Part.CFrame = Part.CFrame * CFrame.new(0,-.07,0)
			game["Run Service"].RenderStepped:wait()
		end
		Part:Destroy()
	end)
end;

--[[spawn(function()
	while wait() do
		wait(.05)
		FloatPart()
		wait(.08)
		FloatPart()
		wait(.05)
		DubPart()
		wait(.08)
	end
end)]]

game["Run Service"].RenderStepped:connect(function(_)
	Particle("Royale purple")
	Particle("Really black")
        Particle("Royal purple")
	--Character['HumanoidRootPart'].C1 = Character['HumanoidRootPart'].C1 * CFrame.new(0,Height+math.sin(tick())/150,0)
end)
















function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end 
                    end 
                end 
            end 
        end
    return List
end




vt = Vector3.new



local player = game.Players.LocalPlayer
local pchar = player.Character
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera

local rad = math.rad
bodyparts = {}
local keysDown = {}
local flySpeed = 0
local MAX_FLY_SPEED = 150

local canFly = false
local flyToggled = false

local forward, side = 0, 0
local lastForward, lastSide = 0, 0

local floatBP = Instance.new("BodyPosition")
floatBP.maxForce = Vector3.new(0, math.huge, 0)
local flyBV = Instance.new("BodyVelocity")
flyBV.maxForce = Vector3.new(9e9, 9e9, 9e9)
local turnBG = Instance.new("BodyGyro")
turnBG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

mouse.KeyDown:connect(function(key)
        keysDown[key] = true

        if key == "f" then
                flyToggled = not flyToggled

        if not flyToggled then
                stanceToggle = "Normal"
                floatBP.Parent = nil
                flyBV.Parent = nil
                turnBG.Parent = nil
                root.Velocity = Vector3.new()
                pchar.Humanoid.PlatformStand = false
        end
end

end)
mouse.KeyUp:connect(function(key)
        keysDown[key] = nil
end)

local function updateFly()
	
	
	

        if not flyToggled then return end

        lastForward = forward
        lastSide = side

        forward = 0
        side = 0

        if keysDown.w then
                forward = forward + 1
        end
        if keysDown.s then
                forward = forward - 1
        end
        if keysDown.a then
                side = side - 1
        end
        if keysDown.d then
                side = side + 1
        end

        canFly = (forward ~= 0 or side ~= 0)

        if canFly then
                stanceToggle = "Floating"
                turnBG.Parent = root
                floatBP.Parent = nil
                flyBV.Parent = root

                flySpeed = flySpeed + 1 + (flySpeed / MAX_FLY_SPEED)
                if flySpeed > MAX_FLY_SPEED then flySpeed = MAX_FLY_SPEED end
        else
                floatBP.position = root.Position
                floatBP.Parent = root

                flySpeed = flySpeed - 1
                if flySpeed < 0 then flySpeed = 0 end
        end

        local camCF = cam.CoordinateFrame
        local in_forward = canFly and forward or lastForward
        local in_side = canFly and side or lastSide

        flyBV.velocity = ((camCF.lookVector * in_forward) + (camCF * CFrame.new(in_side,in_forward * 0.2, 0).p) - camCF.p) * flySpeed

        turnBG.cframe = camCF * CFrame.Angles(-rad(forward * (flySpeed / MAX_FLY_SPEED)), 0,0)
end

game:service'RunService'.RenderStepped:connect(function()
        if flyToggled then
                pchar.Humanoid.PlatformStand = true
        end
        updateFly()
end)



mouse.KeyDown:connect(function(key)
  if key == "b" then
    hum.WalkSpeed = 0
    if Debounces.CanAttack == true then
      Debounces.CanAttack = false
      Debounces.NoIdl = true
      Debounces.on = true
      v = Instance.new("Sound")
      v.SoundId = "http://www.roblox.com/asset/?id=753551986"
      v.Parent = char
      v.Looped = false
      v.Pitch = 1
      v.Volume =  3000
      wait(0.01)
      v:Play()
wait()
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(75), 0, math.rad(30)), 0.1)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(75), 0, math.rad(-30)), 0.1)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-20), math.rad(0), 0), 0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.1)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(30), 0, math.rad(-5)), 0.1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(30), 0, math.rad(5)), 0.1)
        if Debounces.on == false then
        end
        wait()
      end
      wait()
      
    
      local function Shockwave7()
        local ENERGY = Instance.new("Part", Char)
		ENERGY.Name = "ENERGY"
		ENERGY.CanCollide = false
			ENERGY.BrickColor = BrickColor.new("Really black")
		ENERGY.Transparency = 0.2
		ENERGY.TopSurface = 0
		ENERGY.BottomSurface = 0
		ENERGY.Anchored = true
		local cm = Instance.new("CylinderMesh", ENERGY)
		cm.Scale = Vector3.new(1, 20, 1)
		ENERGY.Size = Vector3.new(5, 20, 5)
		ENERGY.CFrame = char.Torso.CFrame
		ENERGY.Touched:connect(function(hit)
                    if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
                        local Occlude = true
                        local NotOccludes = {
                            char.Name;
                            "Wings";
                            "Scythe";
                            "Thingy";
                            "Thingy2"; -- put all of the names in a table pls
                        }
                        for i,v in pairs(NotOccludes) do
                            if hit.Parent.Name == v then
                                Occlude = false
                            end
                        end
                        --if hit.Parent.Name ~= char.Name and hit.Name ~= "Wings" and hit.Name ~= "Scythe" and hit.Name     ~= "Thingy" and hit.Name ~= "Thingy2" and hit.Parent.Name ~= "Wings" and hit.Parent.Name ~= "Scythe" and     hit.Parent.Name ~= "Thingy" and hit.Parent.Name ~= "Thingy2" then
                        if Occlude then
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 9999999999999999999999999999999999999999999999999999999999999999999999999999999999
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * 220
                        end
                    end
                end)
		for i = 1, 50 do
			ENERGY.CFrame = char.Torso.CFrame
			ENERGY.Transparency = ENERGY.Transparency + 0.012
			ENERGY.Size = ENERGY.Size + Vector3.new(0.2, 0, 0.2)
			wait()
		end
		ENERGY:Destroy()
      end
Shockwave7()


pt=Instance.new('Part',torso)
pt.Anchored=true
pt.CanCollide=false
pt.Locked = true
pt.FormFactor='Custom'
pt.Size=Vector3.new(1,1,1)
pt.CFrame=root.CFrame*CFrame.new(0,-1,0)
pt.Transparency=.6
pt.BrickColor=BrickColor.new('Royal purple')
msh=Instance.new('SpecialMesh',pt)
msh.MeshId='http://www.roblox.com/asset/?id=20329976'
msh.Scale=Vector3.new(8,4,8)
pt2=pt:clone()
pt2.Parent = torso
pt2.CFrame=root.CFrame*CFrame.new(0,-1,0)
pt2.BrickColor=BrickColor.new("Really black")
msh2=msh:clone()
msh2.Parent=pt2
msh2.Scale=Vector3.new(10,5,10)

custommath={25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,-25,-26,-27,-28,-29,-30,-31,-32,-33,-34,-35,-36,-37,-38,-39,-40,-41,-42,-43,-44,-45,-46,-47,-48,-49,-50,-51,-52,-53,-54,-55,-56,-57,-58,-59,-60,-61,-62,-63,-64,-65,-66,-67,-68,-69,-70,-71,-72,-73,-74,-75,-76,-77,-78,-79,-80,-81,-82,-83,-84,-85,-86,-87,-88,-89,-90,-91,-92,-93,-94,-95,-96,-97,-98,-99,-100}
bl = Instance.new("Part", char)
bl.Locked = true
bl.Name = "Shell"
bl.BrickColor = BrickColor.new("Royal purple")
bl.Anchored = true
bl.CanCollide = false
bl.Transparency = 0
bl.Reflectance = 0
bl.BottomSurface = 0
bl.TopSurface = 0
bl.Shape = 0
blm = Instance.new("SpecialMesh",bl)
blm.MeshType = "Sphere"
blm.Scale = Vector3.new(1,1,1)
blm.MeshId = "rbxassetid://9982590"

	coroutine.resume(coroutine.create(function()
        for i=1, math.huge, 4 do
				rs:wait()
				bl.CFrame = root.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-i/10), math.rad(-i/10), math.rad(i/10))
				blm.Scale = blm.Scale + Vector3.new(0.1, 0.1, 0.1)
				bl.Transparency = bl.Transparency + 0.005
				pt.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(i*2),0)
				pt2.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(-i*2),0)
				msh.Scale = msh.Scale + Vector3.new(0.05,0,0.05)
				msh2.Scale = msh2.Scale + Vector3.new(0.05,0,0.05)
			end
end))
     
      for i = 1, 15 do
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(-130)), 0.2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(70)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0.2) * CFrame.Angles(math.rad(45), math.rad(30), 0), 0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(20), math.rad(0)), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-40)), 0.1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
        if Debounces.on == false then
          break
        end
        wait()
      end
      for i = 1, 15 do
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(-70)), 0.2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(130)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0.2) * CFrame.Angles(math.rad(45), math.rad(-30), 0), 0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(-20), math.rad(0)), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(40)), 0.1)
        if Debounces.on == false then
          break
        end
        wait()
      end
      for i = 1, 15 do
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(-130)), 0.2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(70)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0.2) * CFrame.Angles(math.rad(45), math.rad(30), 0), 0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(20), math.rad(0)), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-40)), 0.1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
        if Debounces.on == false then
          break
        end
        wait()
      end
      for i = 1, 15 do
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(-70)), 0.2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(130)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0.2) * CFrame.Angles(math.rad(45), math.rad(-30), 0), 0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(-20), math.rad(0)), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(40)), 0.1)
        if Debounces.on == false then
          break
        end
        wait()
      end
      for i = 1, 15 do
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(-130)), 0.2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(70)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0.2) * CFrame.Angles(math.rad(45), math.rad(30), 0), 0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(20), math.rad(0)), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-40)), 0.1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
        if Debounces.on == false then
          break
        end
        wait()
      end
      for i = 1, 10 do
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(-70)), 0.2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(130)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0.2) * CFrame.Angles(math.rad(45), math.rad(-30), 0), 0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(-20), math.rad(0)), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(40)), 0.1)
        if Debounces.on == false then
          break
        end
        wait()
      end
      wait(1.4)
      Debounces.NoIdl = false
      hum.WalkSpeed = 5
      Debounces.on = false
      wait()
      if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        v:Destroy()
        bl:Destroy()
		blm:Destroy()
		pt:Destroy()
		pt2:Destroy()
		msh:Destroy()
	    msh2:Destroy()
      end
    end
  end)





local grabbed = false
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local NeckCF = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = (CFrame.fromEulerAnglesXYZ(0, -1.6, 0))

clerp = function(a, b, t)
  return a:lerp(b, t)
end

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
RemoveOutlines = function(part)
  part.TopSurface = 10
end

CreatePart = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
  local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
  RemoveOutlines(Part)
  return Part
end

CreateMesh = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end







ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.033333333333333
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
  tf = tf + s
  if frame <= tf then
    if allowframeloss then
      script.Heartbeat:Fire()
      lastframe = tick()
    else
      for i = 1, math.floor(tf / frame) do
        script.Heartbeat:Fire()
      end
      lastframe = tick()
    end
    if tossremainder then
      tf = 0
    else
      tf = tf - frame * math.floor(tf / frame)
    end
  end
end
)
swait = function(num)
  if num == 0 or num == nil then
    ArtificialHB.Event:wait()
  else
    for i = 0, num do
      ArtificialHB.Event:wait()
    end
  end
end









CreateWeld = function(Parent, Part0, Part1, C0, C1)
  local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
  return Weld
end

rayCast = function(Position, Direction, Range, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end

CreateSound = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    swait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end
))
end

local getclosest = function(obj, distance)
  local last, lastx = distance + 1, nil
  for i,v in pairs(workspace:GetChildren()) do
    if v:IsA("Model") and v ~= char and v:findFirstChild("Humanoid") and v:findFirstChild("Torso") and v:findFirstChild("Humanoid").Health > 0 then
      local t = v.Torso
      local dist = t.Position - obj.Position.magnitude
      if dist <= distance and dist < last then
        last = dist
        lastx = v
      end
    end
  end
  return lastx
end

Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
  if hit.Parent == nil then
    return 
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
  for _,v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return 
    end
    local c = Create("ObjectValue")({Name = "creator", Value = game:service("Players").LocalPlayer, Parent = h})
    game:GetService("Debris"):AddItem(c, 0.5)
    if HitSound ~= nil and HitPitch ~= nil then
      CreateSound(HitSound, hit, 1, HitPitch)
    end
    local Damage = math.random(minim, maxim)
    local blocked = false
    local block = hit.Parent:findFirstChild("Block")
    if block ~= nil and block.className == "IntValue" and block.Value > 0 then
      blocked = true
      block.Value = block.Value - 1
      print(block.Value)
    end
    if blocked == false then
      h.Health = h.Health - Damage
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    else
      h.Health = h.Health - Damage / 2
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    end
    if Type == "Knockdown" then
      local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      coroutine.resume(coroutine.create(function(HHumanoid)
    swait(1)
    HHumanoid.PlatformStand = false
  end
), hum)
      local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
      local bodvol = Create("BodyVelocity")({velocity = angle * knockback, P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
      local rl = Create("BodyAngularVelocity")({P = 3000, maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000, angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), Parent = hit})
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    else
      do
        if Type == "Debuff" then
            print'hi'
        else
          if Type == "Up" then
            local bodyVelocity = Create("BodyVelocity")({velocity = vt(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
            game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
          else
            do
              if Type == "DarkUp" then
                coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      swait()
      BlockEffect(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, 0.08, 1)
    end
  end
))
                local bodyVelocity = Create("BodyVelocity")({velocity = vt(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
                game:GetService("Debris"):AddItem(bodyVelocity, 1)
              else
                do
                  if Type == "Snare" then
                    local bp = Create("BodyPosition")({P = 2000, D = 100, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
                    game:GetService("Debris"):AddItem(bp, 1)
                  else
                    do
                      if Type == "Freeze" then
                        local BodPos = Create("BodyPosition")({P = 50000, D = 1000, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
                        local BodGy = Create("BodyGyro")({maxTorque = Vector3.new(400000, 400000, 400000) * math.huge, P = 20000, Parent = hit.Parent.Torso, cframe = hit.Parent.Torso.CFrame})
                        hit.Parent.Torso.Anchored = true
                        coroutine.resume(coroutine.create(function(Part)
    swait(1.5)
    Part.Anchored = false
  end), hit.Parent.Torso)
                        game:GetService("Debris"):AddItem(BodPos, 3)
                        game:GetService("Debris"):AddItem(BodGy, 3)
                      end
                      do
                        local debounce = Create("BoolValue")({Name = "DebounceHit", Parent = hit.Parent, Value = true})
                        game:GetService("Debris"):AddItem(debounce, Delay)
                        c = Instance.new("ObjectValue")
                        c.Name = "creator"
                        c.Value = Player
                        c.Parent = h
                        game:GetService("Debris"):AddItem(c, 0.5)
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

ShowDamage = function(Pos, Text, Time, Color)
  local Rate = 0.033333333333333
  if not Pos then
    local Pos = Vector3.new(0, 0, 0)
  end
  local Text = Text or ""
  local Time = Time or 2
  if not Color then
    local Color = Color3.new(1, 0, 1)
  end
  local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
  EffectPart.Anchored = true
  local BillboardGui = Create("BillboardGui")({Size = UDim2.new(3, 0, 3, 0), Adornee = EffectPart, Parent = EffectPart})
  local TextLabel = Create("TextLabel")({BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Text = Text, TextColor3 = Color, TextScaled = true, Font = Enum.Font.ArialBold, Parent = BillboardGui})
  game.Debris:AddItem(EffectPart, Time + 0.1)
  EffectPart.Parent = game:GetService("Workspace")
  delay(0, function()
    local Frames = Time / Rate
    for Frame = 1, Frames do
      wait(Rate)
      local Percent = Frame / Frames
      EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
      TextLabel.TextTransparency = Percent
    end
    if EffectPart and EffectPart.Parent then
      EffectPart:Destroy()
    end
  end
)
end

MagniDamage = function(Part, magni, mindam, maxdam, knock, Type)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "http://www.roblox.com/asset/?id=231917784", 1)
        end
      end
    end
  end
end





local effect = Instance.new("Model", Char)
effect.Name = "Effects"





BlockEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    end
  end
end




WaveEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end



local grabbing = false
WindFloor = function()
 
end



bc = BrickColor.new
function WindFloor2()
		local shur = Instance.new("Part",char)
		local gahd = Instance.new("Sound",shur)
gahd.SoundId = "rbxassetid://402981977"
gahd.Volume = 5
gahd.Pitch = 0.75
gahd:Play()
shur.Transparency = 1
shur.Material = "Neon"
shur.BrickColor = bc("Royal purple")
shur.Anchored = true
shur.CFrame = mouse.Hit
shur.Rotation = vt(0,math.random(-500,500),0)
shur.Size = vt(1,0.2,1)
shur.CanCollide = false
local dec = Instance.new("Decal",shur)
dec.Texture = symbolimg
dec.Face = "Top"
local dec2 = dec:Clone()
dec2.Parent = shur
dec2.Face = "Bottom"
local Meshshur = Instance.new("CylinderMesh",shur)
Meshshur.Scale = vt(0,1,0)
local value1 = 1*2.25
for i = 0, 50 do
	Meshshur.Scale = Meshshur.Scale + vt(value1,0,value1)
	value1 = value1 - 0.015*2.25
	wait(0)
end
local spart = Instance.new("Part",char)
local tick = Instance.new("Sound",spart)
tick.SoundId = "rbxassetid://414516914"
tick.Volume = 2.5
tick.Pitch = 0.45
tick:Play()
spart.Size = vt(1,1,1)
spart.BrickColor = BrickColor.new("Royal purple")
spart.Transparency = 0.1
spart.Anchored = true
spart.CanCollide = false
spart.CFrame = shur.CFrame + vt(0,2.5,0)
local expld = Instance.new("Explosion", spart)
expld.BlastRadius = 27.5
expld.Position = spart.Position
local mesh = Instance.new("SpecialMesh",spart)
mesh.MeshType = "FileMesh"
mesh.Scale = vt(1,0.01,1)
mesh.MeshId = "http://www.roblox.com/asset/?id=102638417"
local parz = spart:Clone()
local mshe = parz.Mesh
mshe.MeshId = "http://www.roblox.com/asset/?id=1051557"
parz.CFrame = spart.CFrame
parz.Parent = char
local par2 = spart:Clone()
local msh = par2.Mesh
par2.Mesh.MeshType = "Sphere"
par2.Material = "Neon"
par2.CFrame = spart.CFrame
par2.BrickColor = BrickColor.new("Royal purple")
par2.Parent = char
local par3 = spart:Clone()
local msh3 = par2.Mesh
msh3.Scale = vt(15,0,15)
par3.Mesh.MeshType = "Sphere"
par3.Material = "Neon"
par3.CFrame = spart.CFrame
par3.BrickColor = BrickColor.new("Royal purple")
par3.Parent = char
for i = 0, 150 do
spart.Transparency = spart.Transparency + 0.01
mesh.Scale = mesh.Scale + vt(2.25,0.15,2.25)
spart.Position = spart.Position
spart.CFrame = spart.CFrame*CFrame.Angles(0,0.5,0)
par2.Transparency = par2.Transparency + 0.01
msh.Scale = msh.Scale + vt(1.5/1.25,1.5/1.25,1.5/1.25)
par2.Position = par2.Position
par2.CFrame = par2.CFrame*CFrame.Angles(0,-0.5,0)
par3.Transparency = par2.Transparency + 0.05
msh3.Scale = msh3.Scale + vt(-0.5,50/1.25,-0.5)
par3.Position = par2.Position
par3.CFrame = par2.CFrame*CFrame.Angles(0,-0.5,0)
parz.Transparency = par2.Transparency + 0.01
mshe.Scale = msh.Scale + vt(4,1,4)
parz.Position = parz.Position
parz.CFrame = parz.CFrame*CFrame.Angles(0,-0.5,0)
wait(0)
end
for i = 0, 100 do
	dec.Transparency = dec.Transparency + 0.015
		dec2.Transparency = dec.Transparency
	Meshshur.Scale = Meshshur.Scale + vt(value1,0,value1)
	value1 = value1 - 0.015*2.25
	wait(0)
end
shur:Destroy()
par2:Destroy()
spart:Destroy()
end







function BlastStorm()

local lag = Instance.new("Sound", workspace)
lag.SoundId = "rbxassetid://752783199"
lag.Volume = 20000
lag.Pitch = 1
lag:Play()
wait(0)
	local ff = Instance.new("ForceField",char)
		local shur = Instance.new("Part",char)
		local gahd = Instance.new("Sound",char)
gahd.SoundId = "rbxassetid://402981977"
gahd.Volume = 2.5
gahd.Pitch = 0.6
gahd:Play()
shur.Transparency = 1
shur.Material = "Neon"
shur.BrickColor = bc("Royal purple")
shur.Anchored = true
shur.CFrame = mouse.Hit
shur.Size = vt(1,0.2,1)
shur.CanCollide = false
local dec = Instance.new("Decal",shur)
dec.Texture = symbolimg
dec.Face = "Top"
local dec2 = dec:Clone()
dec2.Parent = shur
dec2.Face = "Bottom"
local Meshshur = Instance.new("CylinderMesh",shur)
Meshshur.Scale = vt(0,1,0)
local value1 = 1*12.5
for i = 0, 50 do
shur.CFrame = torso.CFrame + vt(0,-2.5,0)
	Meshshur.Scale = Meshshur.Scale + vt(value1,0,value1)
	value1 = value1 - 0.015*12.5
	wait(0)
end

wait(0)
local spart = Instance.new("Part",char)
local tick = Instance.new("Sound",char)
tick.SoundId = "rbxassetid://414516914"
tick.Volume = 2.5
tick.Pitch = 0.4
tick:Play()
local tickz = Instance.new("Sound",char)
tickz.SoundId = "rbxassetid://435742675"
tickz.Volume = 1
tickz.Pitch = 1
tickz:Play()
local tickr = Instance.new("Sound",char)
tickr.SoundId = "rbxassetid://435742675"
tickr.Volume = 2.5
tickr.Pitch = 0.5
tickr:Play()
local tickel = Instance.new("Sound",char)
tickel.SoundId = "rbxassetid://2248511"
tickel.Volume = 3
tickel.Pitch = 0.2
tickel:Play()
spart.Size = vt(1,1,1)
spart.BrickColor = BrickColor.new("Royal purple")
spart.Transparency = 0.1
spart.Anchored = true
spart.CanCollide = false
spart.CFrame = mouse.Hit
local expld = Instance.new("Explosion", spart)
expld.BlastRadius = 500000
expld.Position = spart.Position
local mesh = Instance.new("SpecialMesh",spart)
mesh.MeshType = "FileMesh"
mesh.Scale = vt(1,0.01,1)
mesh.MeshId = "http://www.roblox.com/asset/?id=102638417"
local parz = spart:Clone()
local mshe = parz.Mesh
mshe.MeshId = "http://www.roblox.com/asset/?id=1051557"
parz.CFrame = spart.CFrame
parz.Parent = char
local par2 = spart:Clone()
local msh = par2.Mesh
par2.Mesh.MeshType = "Sphere"
par2.Material = "Neon"
par2.CFrame = spart.CFrame
par2.BrickColor = BrickColor.new("Royal purple")
par2.Parent = char
for i = 0, 200 do
spart.Transparency = spart.Transparency + 0.005
mesh.Scale = mesh.Scale + vt(10,1,10)
spart.Position = spart.Position
spart.CFrame = spart.CFrame*CFrame.Angles(0,0.5,0)
par2.Transparency = par2.Transparency + 0.005
msh.Scale = msh.Scale + vt(5/1.25,1000/1.25,5/1.25)
par2.Position = par2.Position
par2.CFrame = par2.CFrame*CFrame.Angles(0,-0.5,0)
parz.Transparency = par2.Transparency + 0.005
mshe.Scale = msh.Scale + vt(6,1,6)
parz.Position = parz.Position
parz.CFrame = parz.CFrame*CFrame.Angles(0,-0.5,0)
wait(0)
end
ff:Destroy()
for i = 0, 100 do
	dec.Transparency = dec.Transparency + 0.015
		dec2.Transparency = dec.Transparency
	Meshshur.Scale = Meshshur.Scale + vt(value1,0,value1)
	value1 = value1 - 0.015*12.5
	wait(0)
end
shur:Destroy()
par2:Destroy()
spart:Destroy()
tick:Destroy()
tickr:Destroy()
tickz:Destroy()
tickel:Destroy()
end








local maincolor = Color3.new(170/255,0/255,255/255)



function noobyisscripter()
local hitted = false
local valuesize = 5
 local lb = Instance.new("Part")
  lb.Parent = char
   lb.Material = "Neon"
    lb.BrickColor = BrickColor.new(maincolor)
     lb.CanCollide = false
     lb.Shape = "Ball"
     lb.CFrame = char.Torso.CFrame + Vector3.new(0,0.7,0)
     lb.Anchored = false
     lb.Size = vt(1,1,1)
     local thing = Instance.new("SpecialMesh",lb)
     thing.MeshType = "Sphere"
local trail = Instance.new("ParticleEmitter",lb)
trail.Texture = "rbxassetid://296874871"
trail.LightEmission = 0.95
trail.Color = ColorSequence.new(maincolor)
trail.Rate = 10000
trail.Lifetime = NumberRange.new(1.5)
trail.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1.5,0),NumberSequenceKeypoint.new(1,0,0)})
trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
trail.Speed = NumberRange.new(0,0)
trail.RotSpeed = NumberRange.new(-500,500)
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = mouse.Hit.lookVector *100
  bv.Parent = lb
  wait(0.1)
pewdiepie=lb.Touched:connect(function(hit)
if hitted == false then
local sd = Instance.new("Sound",lb)
sd.SoundId = "rbxassetid://138210320"
sd.Volume = 2.5
sd:Play()
hitted = true
trail.Rate = 0
lb.Anchored = true
local explosion = Instance.new("Explosion",lb)
explosion.BlastRadius = 10
explosion.Position = lb.Position
local ex = Instance.new("ParticleEmitter",lb)
ex.Texture = "rbxassetid://296874871"
ex.LightEmission = 0.95
ex.Color = ColorSequence.new(maincolor)
ex.Rate = 10000
ex.Lifetime = NumberRange.new(1.75)
ex.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,10,0),NumberSequenceKeypoint.new(1,25,0)})
ex.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
ex.Speed = NumberRange.new(25,45)
ex.VelocitySpread = 90000
ex.RotSpeed = NumberRange.new(-500,500)
for i = 0, 19 do
wait()
valuesize = valuesize - 0.25
thing.Scale = thing.Scale + vt(valuesize,valuesize,valuesize)
end
ex.Rate = 0
for i = 0, 9 do
wait()
lb.Transparency = lb.Transparency + 0.1
end
wait(5)
lb:Destroy()
end
end)
end


mouse.KeyDown:connect(function(key)
	if key == "g" then
		if Debounces.CanAttack == true then
		Debounces.CanAttack = false
		Debounces.on = true
		Debounces.NoIdl = true
pt = {1, 1.1, 1.2, 1.3, 1.4, 1.5}
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
Debounces.RPunch = true
Debounces.LPunch = true
Debounces.ks = true
Debounces.ks2 = true
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(110),math.rad(30),math.rad(20)), 0.9)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.9)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.9)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(110),math.rad(30),math.rad(20)), 0.9)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.9)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.9)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(110),math.rad(30),math.rad(20)), 0.9)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.9)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.9)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end

Debounces.LPunch = false
Debounces.RPunch = false
Debounces.ks = false
Debounces.ks2 = false
if Debounces.CanAttack == false then
Debounces.CanAttack = true
Debounces.on = false
Debounces.NoIdl = false
end
end
end
end)




mouse.KeyDown:connect(function(key)
	if key == "r" then

		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			game:GetService("Chat"):Chat(game.Players.LocalPlayer.Character,"Here is all of my energy","Red")
			function FindNearestTorso(Position,Distance,SinglePlayer)
				if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
					local List = {}
					for i,v in pairs(workspace:GetChildren())do
						if v:IsA("Model")then
							if v:findFirstChild("Torso")then
								if v ~= char then
									if(v.Torso.Position -Position).magnitude <= Distance then
										table.insert(List,v)
									end
								end
							end
						end
					end
				return List
			end
	z = Instance.new("Sound",hed)
	z.SoundId = "rbxassetid://232213955"
	z.Pitch = 1
	z.Volume = 1
	wait(0.2)
	z:Play()
	sp = Instance.new("Part",hed)
	sp.Anchored = true
	sp.CanCollide = false
	sp.Locked = false
	sp.Transparency = 0
	sp.Material = "Neon"
	sp.Size = Vector3.new(1,1,1)
	sp.TopSurface = "SmoothNoOutlines"
	sp.BottomSurface = "SmoothNoOutlines"
	sp.BrickColor = BrickColor.new("Royal purple")
	spm = Instance.new("SpecialMesh",sp)
	spm.MeshType = "Sphere"
	spm.Scale = Vector3.new(100,100,100)
	sp2 = Instance.new("Part", rarm)
	sp2.Name = "Energy"
	sp2.BrickColor = BrickColor.new("Royal purple")
	sp2.Size = Vector3.new(1,1,1)
	sp2.Shape = "Ball"
	sp2.CanCollide = false
	sp2.Anchored = true
	sp2.Locked = true
	sp2.TopSurface = 0
	sp2.BottomSurface = 0
	sp2.Transparency = 1
	spm2 = Instance.new("SpecialMesh",sp2)
	spm2.MeshId = "rbxassetid://9982590"
	spm2.Scale = Vector3.new(100,100,100)
	for i = 1, 20 do
		spm.Scale = spm.Scale - Vector3.new(1,1,1)
		sp.CFrame = root.CFrame*CFrame.new(0,100,0)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(-8)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	for i = 1, 100, 20 do rs:wait()
		sp.CFrame = root.CFrame*CFrame.new(0,100,0)
	end
	for i = 1, 20 do
		sp.CFrame = root.CFrame*CFrame.new(0,100,0)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(-8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,.2)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(8)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(20),math.rad(0),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	sp.Transparency = 0
	for i = 1, 20 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(-8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.62,-.2)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(8)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(20),math.rad(0),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	wait(1)
	sp.Transparency = 0
	sp2.Transparency = 0.84
	for i = 1, 20 do
		--spm.Scale = spm.Scale - Vector3.new(15,15,15)
		sp.CFrame = root.CFrame*CFrame.new(0,100,0)
		sp2.CFrame = sp.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i), math.rad(-i), math.rad(i))
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(-8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(8)), 0.2)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-8)), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(8)), 0.2)
		if Debounces.on == false then break end
		rs:wait()
	end
	for i = 1, 2880, 50 do
		rs:wait()
		sp.CFrame = root.CFrame*CFrame.new(0,100,0)
		sp2.CFrame = sp.CFrame * CFrame.new(0,0,0) 
		rs:wait()
	end
	sp:Destroy()
	sp2:Destroy()
game:GetService("Chat"):Chat(game.Players.LocalPlayer.Character,"TAKE THIS!","Red")
	local X = Instance.new("Part",char)
	local O = Instance.new("ObjectValue",X)
	O.Name = "creator"
	X.Locked = true
	X.Name = "Shell"
	X.Anchored = false
	X.CanCollide = false
	X.Transparency = 0
	X.Reflectance = 0
	X.BottomSurface = 0
	X.TopSurface = 0
	X.Shape = 0
	local V = Instance.new("ObjectValue",X)
	V.Value = char
	V.Name = "creator"
	X.BrickColor = BrickColor.new("Royal purple")
	X.Size = Vector3.new(1,1,1)
	X.Material = "Neon"
	local Z = Instance.new("SpecialMesh",X)
	Z.MeshType = "Sphere"
	Z.Scale = Vector3.new(100,100,100)
	X.CFrame = rarm.CFrame*CFrame.new(15,15,15)
	local bv = Instance.new("BodyVelocity",X)
	bv.maxForce = Vector3.new(99999,99999,99999)
	X.CFrame = CFrame.new(X.Position,mouse.Hit.p)
	bv.velocity = X.CFrame.lookVector*65

	Explode = X.Touched:connect(function(hit)
	
			local cf = X.CFrame
			bv:Destroy()
			X.Anchored = true
			Z:Remove()
			Explode:disconnect()
			
			local ROW2 = function(out, trans, s, wt, t, ang, plus)
					for i = 1, 360, 360/t do
						local c = Instance.new("Part", game.Workspace)
						c.FormFactor = 3
						c.TopSurface = 0
						c.BottomSurface = 0
						c.Size = s
						c.Anchored = true
						c.CanCollide = wt
						c.Material=workspace.Base.Material
						c.Transparency = trans
						c.BrickColor = workspace.Base.BrickColor
						c.CFrame = CFrame.new(X.CFrame.x,0,X.CFrame.z) * CFrame.Angles(0, math.rad(i +  plus), 0) *     CFrame.new(0, 0, out) * ang
						c.Locked=true
						game.Debris:AddItem(c,25)
					end
end

ROW2(18, 0, Vector3.new(34.5, 70, 3), true, 8, CFrame.Angles(math.rad(math.random (30,60)), 0, math.rad    (math.random(-30,30))), 0)
	
	
	local ra = Ray.new(X.Position, X.CFrame.upVector * 3)
    local part, positi = workspace:FindPartOnRayWithIgnoreList(ra, {Char}, false, true)
    if part then
      local cfremz = CFrame.new(positi)
      debris(cfremz, part, 30)
    end
				
			X.Size = Vector3.new(6,6,6)
			X.Touched:connect(function(hit) end)
			X.CanCollide = false
			local part3 = Instance.new("Part", rarm)
			part3.Anchored=true
			part3.CanCollide=false
			part3.Locked = true
			part3.TopSurface = "SmoothNoOutlines"
			part3.BottomSurface = "SmoothNoOutlines"
			part3.FormFactor='Custom'
			part3.Size=Vector3.new(2,2, 2)
			part3.CFrame=X.CFrame
			part3.Transparency=0
			part3.BrickColor=TorsoColor
			local mesh3 = Instance.new("SpecialMesh",part3)
			mesh3.MeshType = "Sphere"
			mesh3.Scale = Vector3.new(2,2,2)
			--debris:AddItem(X,8)
			local part4 = Instance.new("Part", rarm)
			part4.Material = "Neon"
			part4.Anchored=true
			part4.CanCollide=false
			part4.Locked = true
			part4.TopSurface = "SmoothNoOutlines"
			part4.BottomSurface = "SmoothNoOutlines"
			part4.FormFactor='Custom'
			part4.Size=Vector3.new(2,2, 2)
			part4.CFrame=X.CFrame
			part4.Transparency=0
			part4.BrickColor=BrickColor.new("Black")
			local mesh4 = Instance.new("SpecialMesh",part4)
			mesh4.MeshType = "Sphere"
			mesh4.Scale = Vector3.new(1,1,1)
			local part7 = Instance.new("Part", rarm)
			part7.Material = "Neon"
			part7.Anchored=true
			part7.CanCollide=false
			part7.Locked = true
			part7.TopSurface = "SmoothNoOutlines"
			part7.BottomSurface = "SmoothNoOutlines"
			part7.FormFactor='Custom'
			part7.Size=Vector3.new(2,2, 2)
			part7.CFrame=X.CFrame
			part7.Transparency=0
			part7.BrickColor=BrickColor.new("Really black")
			local mesh7 = Instance.new("SpecialMesh",part7)
			mesh7.MeshType = "Sphere"
			mesh7.Scale = Vector3.new(0.2, 0.2, 0.2)
		--[[X.Touched:connect(function(ht)
				hit = ht.Parent
			if ht and hit:IsA("Model") then
					if hit:FindFirstChild("Humanoid") then
						if hit.Name ~= p.Name then
							hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
							wait(.3)
						end
					end
			elseif ht and hit:IsA("Hat") then
				if hit.Parent.Name ~= p.Name then
					if hit.Parent:FindFirstChild("Humanoid") then
						hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
						wait(.3)
					end
				end
			end
		end)
		part3.Touched:connect(function(ht)
				hit = ht.Parent
			if ht and hit:IsA("Model") then
					if hit:FindFirstChild("Humanoid") then
						if hit.Name ~= p.Name then
							hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
							wait(.3)
						end
					end
			elseif ht and hit:IsA("Hat") then
				if hit.Parent.Name ~= p.Name then
					if hit.Parent:FindFirstChild("Humanoid") then
						hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
						wait(.3)
					end
				end
			end
		end)]]--
		for i,v in pairs(FindNearestTorso(X.CFrame.p,140))do
			if v:FindFirstChild('Humanoid') then
				v.Humanoid:TakeDamage(math.random(999999999999999999999999999999999999999999,999999999999999999999999999999999999999))
				v.Humanoid.PlatformStand = true
				v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 999
			end
		end

		local acos = math.acos
		local sqrt = math.sqrt
		local Vec3 = Vector3.new
		local fromAxisAngle = CFrame.fromAxisAngle

		local function toAxisAngle(CFr)
			local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
			local Angle = math.acos((R00+R11+R22-1)/2)
			local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
			A = A == 0 and 0.00001 or A
			local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
			B = B == 0 and 0.00001 or B
			local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
			C = C == 0 and 0.00001 or C
			local x = (R21-R12)/sqrt(A)
			local y = (R02-R20)/sqrt(B)
			local z = (R10-R01)/sqrt(C)
			return Vec3(x,y,z),Angle
		end

		function ApplyTrig(Num,Func)
			local Min,Max = Func(0),Func(1)
			local i = Func(Num)
			return (i-Min)/(Max-Min)
		end

		function LerpCFrame(CFrame1,CFrame2,Num)
			local Vec,Ang = toAxisAngle(CFrame1:inverse()*CFrame2)
			return CFrame1*fromAxisAngle(Vec,Ang*Num) + (CFrame2.p-CFrame1.p)*Num
		end

		function Crater(Torso,Radius)
			Spawn(function()
				local Ray = Ray.new(Torso.Position,Vector3.new(0,-1,0)*10)
				local Ignore = {}
				for i,v in pairs(game:GetService("Players"):GetPlayers()) do
					if v.Character ~= nil then
						Ignore[#Ignore+1] = v.Character
					end
				end
				local Hit,Pos,SurfaceNorm = Workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
				if Hit == nil then return end
					local Parts = {}
					for i = 1,360,10 do
						local P = Instance.new("Part",Torso.Parent)
						P.Anchored = true
						P.FormFactor = "Custom"
						P.BrickColor = Hit.BrickColor
						P.Material = Hit.Material
						P.TopSurface = "Smooth"
						P.BottomSurface = "Smooth"
						P.Size = Vector3.new(10,20,20)*(math.random(80,100)/100)
						P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,7,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
						Parts[#Parts+1] = {P,P.CFrame,((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,1,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius)*CFrame.Angles(math.rad(math.random(-50,-20)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),P.Size}
						if math.random(0,5) == 0 then -- rubble
							local P = Instance.new("Part",Torso.Parent)
							P.Anchored = true
							P.FormFactor = "Custom"
							P.BrickColor = Hit.BrickColor
							P.Material = Hit.Material
							P.TopSurface = "Smooth"
							P.BottomSurface = "Smooth"
							P.Size = Vector3.new(4,4,4)*(math.random(80,100)/100)
							P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,2.5,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
							Parts[#Parts+1] = {P,P.CFrame,(CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius-8)*CFrame.Angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90))),P.Size}
							end
						end
						for i = 0,1,0.05 do
							for i2,v in pairs(Parts) do
								v[1].CFrame = LerpCFrame(v[2],v[3],ApplyTrig(i,math.cos))
							end
							wait(0.02)
						end
						for i,v in pairs(Parts) do
							if v[1].Size.X > 2.1 then
								v[1].CFrame = v[1].CFrame+Vector3.new(0,2,0)
							end
							v[1].Anchored = false
						end
						for i = 0,1,0.05 do
							for i2,v in pairs(Parts) do
								v[1].Transparency = i
								if i == 1 then
									v[1]:Destroy()
								elseif i >= 0.25 then
									v[1].CanCollide = false
								end
							end
						wait(0.02)
						end
					Parts = nil
					end)
				end

				
				Part = function(x,y,z,color,tr,cc,an,parent)
					local p = Instance.new('Part',parent or Weapon)
					p.formFactor = 'Custom'
					p.Size = Vector3.new(x,y,z)
					p.BrickColor = BrickColor.new(color)
					p.CanCollide = cc
					p.Transparency = tr
					p.Anchored = an
					p.TopSurface,p.BottomSurface = 0,0
					p.Locked=true
					p:BreakJoints()
				return p end

			Mesh = function(par,num,x,y,z)
			local msh = _
			if num == 1 then msh = Instance.new("CylinderMesh",par)
			elseif num == 2 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 3
			elseif num == 3 then msh = Instance.new("BlockMesh",par)
			elseif num == 4 then msh = Instance.new("SpecialMesh",par) msh.MeshType = "Torso"
			elseif type(num) == 'string' then msh = Instance.new("SpecialMesh",par) msh.MeshId = num
			end msh.Scale = Vector3.new(x,y,z)
			return msh end

			function explosion(col1,col2,cfr,sz,rng,dmg)
				local a= Part(1,1,1,col1,.5,false,true,workspace)
				local a2= Part(1,1,1,col2,.5,false,true,workspace)
				local a3= Part(1,1,1,col2,.5,false,true,workspace)
				v1,v2,v3=sz.x,sz.y,sz.z
				local m= Mesh(a,'http://www.roblox.com/asset/?id=1185246',v1,v2,v3)
				local m2= Mesh(a2,3,v1/3,v2/3,v3/3)
				local m3= Mesh(a3,3,v1/3,v2/3,v3/3)
				a.CFrame=cfr
				a2.CFrame=cfr*CFrame.Angles(math.random(),math.random(),math.random())
				a3.CFrame=cfr*CFrame.Angles(math.random(),math.random(),math.random())

				Spawn(function()
					while wait() do
						if a.Transparency >= 1 then a:Destroy() a2:Destroy() a3:Destroy() break end
							m.Scale=m.Scale+Vector3.new(.1,0.1,0.1)
							m2.Scale=m2.Scale+Vector3.new(.1,0.1,0.1)
							m3.Scale=m3.Scale+Vector3.new(.1,0.1,0.1)
							a.Transparency=a.Transparency+0.05
							a2.Transparency=a2.Transparency+0.05
							a3.Transparency=a3.Transparency+0.05
						end
					end)
				end

				Crater(X,120)
				Crater(X,220)
				Crater(X,320)
				z = Instance.new("Sound",workspace)
				z.SoundId = "rbxassetid://231917744"
				z.Pitch = .5
				z.Volume = 5
				z1 = Instance.new("Sound",workspace)
				z1.SoundId = "rbxassetid://231917744"
				z1.Pitch = .5
				z1.Volume = 5
				z2 = Instance.new("Sound",workspace)
				z2.SoundId = "rbxassetid://231917744"
				z2.Pitch = .5
				z2.Volume = 5
				z3 = Instance.new("Sound",workspace)
				z3.SoundId = "rbxassetid://245537790"
				z3.Pitch = .7
				z3.Volume = 5
				z4 = Instance.new("Sound",workspace)
				z4.SoundId = "rbxassetid://245537790"
				z4.Pitch = .7
				z4.Volume = 5
                                z4a = Instance.new("Sound",workspace)
                                z4a.SoundId = "rbxassetid://419447292"
                                z4a.Pitch = 1
                                z4a.Volume = 5
                                z3a = Instance.new("Sound",workspace)
                                z3a.SoundId = "rbxassetid://421328847"
                                z3a.Pitch = 1
                                z3a.Volume = 5
                                wait(0.1)
				z:Play()
				z1:Play()
				z2:Play()
				z3:Play()
				z4:Play()
				z3a:Play()
				z4a:Play()

				local part=Instance.new('Part',rarm)
				part.Anchored=true
				part.CanCollide=false
				part.Locked = true
				part.FormFactor='Custom'
				part.Size=Vector3.new(2,2,2)
				part.CFrame=X.CFrame*CFrame.new(0,0,0)
				part.Transparency=0
				part.BrickColor=BrickColor.new('Really black')
				local mesh=Instance.new('SpecialMesh',part)
				mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
				mesh.Scale=Vector3.new(4,4,4)
				local part2=part:clone()
				part2.Parent = rarm
				part2.BrickColor=TorsoColor
				local part5=part:clone()
				part5.Parent = rarm
				part5.BrickColor=TorsoColor
				local part6=part:clone()
				part6.Parent = rarm
				part6.BrickColor=BrickColor.new("Black")
				local mesh2=mesh:clone()
				mesh2.Parent=part2
				mesh2.Scale=Vector3.new(6, 6, 6)
				local mesh5=mesh:clone()
				mesh5.Parent=part5
				mesh5.Scale=Vector3.new(6, 6, 6)
				local mesh6=mesh:clone()
				mesh6.Parent=part6
				mesh6.Scale=Vector3.new(6, 6, 6)
				local blast = Instance.new("Part", rarm)
				blast.BrickColor = BrickColor.new("Really black")
				blast.Anchored = true
				blast.CanCollide = false
				blast.Locked = true
				blast.Size = Vector3.new(2, 2, 2)
				blast.TopSurface = "Smooth"
				blast.BottomSurface = "Smooth"
				blast.Transparency = 0
				blast.CFrame = HandCF
				local bm = Instance.new("SpecialMesh", blast)
				bm.Scale = Vector3.new(10,2,10)
				bm.MeshId = "rbxassetid://3270017"
				local blast2 = Instance.new("Part", rarm)
				blast2.BrickColor = BrickColor.new("Really black")
				blast2.Anchored = true
				blast2.CanCollide = false
				blast2.Locked = true
				blast2.Size = Vector3.new(2, 2, 2)
				blast2.TopSurface = "Smooth"
				blast2.BottomSurface = "Smooth"
				blast2.Transparency = 0
				blast2.CFrame = HandCF
				local bm2 = Instance.new("SpecialMesh", blast2)
				bm2.Scale = Vector3.new(6,2,6)
				bm2.MeshId = "rbxassetid://3270017"
				local blast3 = Instance.new("Part", rarm)
				blast3.BrickColor = BrickColor.new("Really black")
				blast3.Anchored = true
				blast3.CanCollide = false
				blast3.Locked = true
				blast3.Size = Vector3.new(1, 1, 1)
				blast3.TopSurface = "Smooth"
				blast3.BottomSurface = "Smooth"
				blast3.Transparency = 0
				blast3.CFrame = HandCF
				local bm3 = Instance.new("SpecialMesh", blast3)
				bm3.Scale = Vector3.new(6,2,6)
				bm3.MeshId = "rbxassetid://3270017"
				for i = 1,120 do rs:wait()
					X.Transparency = X.Transparency + (1/120)
					part.Transparency = part.Transparency + (1/120)
					part2.Transparency = part2.Transparency + (1/120)
					part3.Transparency = part3.Transparency + (1/120)
					part4.Transparency = part4.Transparency + (1/120)
					part5.Transparency = part5.Transparency + (1/120)
					part6.Transparency = part6.Transparency + (1/120)
					part7.Transparency = part7.Transparency + (1/120)
					blast.Transparency = blast.Transparency + (1/120)
					blast2.Transparency = blast2.Transparency + (1/120)
					blast3.Transparency = blast3.Transparency + (1/120)
					X.Size = X.Size + Vector3.new(1.6,1.6,1.6)
					--part3.Size = part3.Size + Vector3.new(6,6,6)
					mesh.Scale = mesh.Scale + Vector3.new(2,.4,2)
					mesh2.Scale = mesh2.Scale + Vector3.new(2.2,.4,2.2)
					mesh3.Scale = mesh3.Scale + Vector3.new(6,6,6)
					mesh4.Scale = mesh4.Scale + Vector3.new(3.4,3.4,3.4)
					mesh5.Scale = mesh5.Scale + Vector3.new(3.2,.4,3.2)
					mesh6.Scale = mesh6.Scale + Vector3.new(4,.4,4)
					mesh7.Scale = mesh7.Scale + Vector3.new(8,8,8)
					bm.Scale = bm.Scale + Vector3.new(12,12,.4)
					bm2.Scale = bm2.Scale + Vector3.new(8,8,.4)
					bm3.Scale = bm3.Scale + Vector3.new(8,8,.4)
					X.CFrame = cf
					part.CFrame=X.CFrame * CFrame.Angles(0,math.rad(i*2),0)
					part2.CFrame=X.CFrame * CFrame.Angles(0,math.rad(-i*2),0)
					part3.CFrame=X.CFrame
					part4.CFrame=X.CFrame
					part7.CFrame=X.CFrame
					part5.CFrame=X.CFrame * CFrame.Angles(0,math.rad(i*2.6),0)
					part6.CFrame=X.CFrame * CFrame.Angles(0,math.rad(-i*2.4),0)
					blast.CFrame=X.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
					blast2.CFrame=X.CFrame * CFrame.Angles(math.rad(-i*4), math.rad(i*4), math.rad(0))
					blast3.CFrame=X.CFrame * CFrame.Angles(math.rad(180+i*4), math.rad(90-i*4), math.rad(0))
					rs:wait()
					end
					X:Destroy()
					part:Destroy()
					part2:Destroy()
					part3:Destroy()
					part4:Destroy()
					part5:Destroy()
					part6:Destroy()
					blast:Destroy()
					blast2:Destroy()
					blast3:Destroy()
					z:Destroy()
					z1:Destroy()
					z2:Destroy()
					z3:Destroy()
					z4:Destroy()
			for i = 1, 20 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(70),math.rad(-6),math.rad(-20)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), 0, math.rad(-8)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-6), 0, math.rad(8)), 0.2)
				if Debounces.on == false then break end
				rs:wait()
			end
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end
	end)
		end
	end
	end)
	
	
	
	
	
	
	
	WindFloor = function()
  local useRageVer = false
  local locor = 0
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
  Ult = true
  Ragemode = false
  CanInterrupt(false)
  PlayerIsAttacking = true
  local cl = 0
  local clastframe = lastframe
  BodyVel.velocity = Vector3.new()
  local CPlane = MousePlane()
  BodyVel.maxForce = Vector3.new(1000000, 1000000, 1000000)
  vPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vPlayer.Character.HumanoidRootPart.Position, vPlayer.Character.HumanoidRootPart.Position + CPlane * 50)
  BodyGyro.cframe = CFrame.new(vPlayer.Character.HumanoidRootPart.CFrame.p, vPlayer.Character.HumanoidRootPart.CFrame.p + CPlane * 50)
  local cl = 0
  DesiredWalkspeed = 0
  p = Instance.new("Sound", vPlayer.Character.Torso)
  p.Volume = 0.8
  p.Pitch = 1
  p.SoundId = "http://www.roblox.com/asset/?id=240517975"
  p:Play()
  game:GetService("Debris"):AddItem(p, 3)
  local pb = Instance.new("Sound", vPlayer.Character.Torso)
  pb.Volume = 1
  pb.Pitch = 0.85
  pb.SoundId = "http://www.roblox.com/asset/?id=240517987"
  pb:Play()
  game:GetService("Debris"):AddItem(pb, 10)
  do
    for i = 1, 8 do
      swait()
      cl = cl + i * 0.02
      LerpWelds(clastframe, cl, Animations.LHB.Animation(0))
      if i == 4 then
        local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position - Vector3.new(0, 2.5, 0)) * CFrame.Angles(0, math.random(-10, 10), 0), "Really black", "SpecialMesh", Vector3.new(11, 1, 11))
        pc.Mesh.MeshType = "FileMesh"
        pc.Anchored = true
        pc.CanCollide = false
        pc.Parent = workspace
        pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
        pc.Name = "Shockwave"
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p)
    for ii = 1, 10 do
      p.Transparency = ii / 10
      p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(10 + ii), 0) - Vector3.new(0, 0, 0)
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(0.5, 0, 0.5)
      swait()
    end
    p:Remove()
  end), pc)
      end
    end
  end
  BodyVel.Parent = vPlayer.Character.HumanoidRootPart
  BodyGyro.Parent = vPlayer.Character.HumanoidRootPart
  cl = 0
  clastframe = lastframe
  for i = 1, 6 do
    swait()
    cl = cl + i * 0.05
    LerpWelds(clastframe, cl, Animations.LHB.Animation(1))
    local eff = NewPart(Vector3.new(1, 1, 1), vPlayer.Character.Torso.CFrame * CFrame.new(math.random(-20, 20) / 30, math.random(-20, 20) / 30, math.random(-20, 20) / 30) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(12, 12, 12))
    eff.Parent = workspace
    eff.Name = "BloodEffect"
    eff.Anchored = true
    eff.CanCollide = false
    game:GetService("Debris"):AddItem(eff, 5)
    coroutine.resume(coroutine.create(function(p, V, x)
    A = vPlayer.Character.Torso.Velocity / 60
    for i = 1, 12 do
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(11, 1, 11) / 12
      p.Transparency = 0.75 + i / 48
      p.CFrame = p.CFrame * V + A
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2)))
    if i ~= 1 and (i ~= 4 or i == 6) then
      local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position - Vector3.new(0, 1.5, 0)) * CFrame.Angles(0, math.rad(i * 20), 0), "White", "SpecialMesh", Vector3.new(8, 1, 8))
      pc.Mesh.MeshType = "FileMesh"
      pc.Anchored = true
      pc.CanCollide = false
      pc.Parent = workspace
      pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
      pc.Name = "Shockwave"
      game:GetService("Debris"):AddItem(pc, 5)
      coroutine.resume(coroutine.create(function(p)
    for ii = 1, 7 do
      p.Transparency = ii / 7
      p.CFrame = p.CFrame * CFrame.Angles(0, -math.rad(3), 0) - Vector3.new(0, 0, 0)
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1.4, 0, 1.4)
      swait()
    end
    p:Remove()
  end), pc)
    end
  end
  swait()
  for i = 1, 20 do
    do
      CPlane = MousePlane()
      BodyGyro.Parent = vPlayer.Character.HumanoidRootPart
      BodyGyro.cframe = CFrame.new(BodyGyro.Parent.Position, BodyGyro.Parent.Position + CPlane * 50)
      if i == 5 or i == 10 then
        local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position - Vector3.new(0, 1.5, 0)) * CFrame.Angles(0, math.random(-10, 10), 0), "Really black", "SpecialMesh", Vector3.new(8, 2, 8))
        pc.Mesh.MeshType = "FileMesh"
        pc.Anchored = true
        pc.CanCollide = false
        pc.Parent = workspace
        pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
        pc.Name = "Shockwave"
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p)
    for ii = 1, 13 do
      p.Transparency = ii / 13
      p.CFrame = p.CFrame * CFrame.Angles(0, -math.rad(10 + ii), 0) - Vector3.new(0, 0, 0)
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(3, 0, 3)
      swait()
    end
    p:Remove()
  end), pc)
      else
        do
          do
            if i == 2 or i == 10 then
              local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 1, 0)) * CFrame.Angles(math.rad(90), 0, 0), "Really black", "SpecialMesh", Vector3.new(56, 56, 1))
              pc.Mesh.MeshType = "FileMesh"
              pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
              pc.Parent = workspace
              pc.Anchored = true
              pc.CanCollide = false
              pc.Transparency = 0.5
              game:GetService("Debris"):AddItem(pc, 5)
              coroutine.resume(coroutine.create(function(p)
    for ii = 1, 20 do
      p.Transparency = ii / 20
      p.CFrame = p.CFrame * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(1.4, 1.4, 0) * 2
      swait()
    end
    p:Remove()
  end), pc)
            end
            if i % 4 == 0 then
              for _,v in pairs(GetNubsInRadius(vPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 1, 0), 35)) do
                applyCameraShake(v, 80 + i * 10, 4)
              end
              local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position - Vector3.new(0, 1.5, 0)) * CFrame.Angles(0, math.rad(i * 20), 0), "Really black", "SpecialMesh", Vector3.new(18, 2, 18))
              pc.Mesh.MeshType = "FileMesh"
              pc.Anchored = true
              pc.CanCollide = false
              pc.Parent = workspace
              pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
              pc.Name = "Shockwave"
              game:GetService("Debris"):AddItem(pc, 5)
              coroutine.resume(coroutine.create(function(p)
    for ii = 1, 10 do
      p.Transparency = ii / 10
      p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(7 + ii), 0) - Vector3.new(0, 0, 0)
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(1.4, 0, 1.4)
      swait()
    end
    p:Remove()
  end), pc)
            else
              do
                do
                  if i % 1 == 0 then
                    local eff = NewPart(Vector3.new(1, 1, 1), vPlayer.Character.Torso.CFrame * CFrame.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(0.7, 0.7, 0.7))
                    eff.Parent = workspace
                    eff.Name = "BloodEffect"
                    eff.Anchored = true
                    eff.CanCollide = false
                    game:GetService("Debris"):AddItem(eff, 5)
                    coroutine.resume(coroutine.create(function(p, V, x)
    A = vPlayer.Character.Torso.Velocity / 60
    for i = 1, 8 do
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(6, 6, 6) / 8
      p.Transparency = 0.2
      p.CFrame = p.CFrame * V + A
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2)))
                    local eff = NewPart(Vector3.new(1, 1, 1), vPlayer.Character.Torso.CFrame * CFrame.new(math.random(-20, 20) / 30, math.random(-20, 20) / 30, math.random(-20, 20) / 30) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(12, 12, 12))
                    eff.Parent = workspace
                    eff.Name = "BloodEffect"
                    eff.Anchored = true
                    eff.CanCollide = false
                    game:GetService("Debris"):AddItem(eff, 5)
                    coroutine.resume(coroutine.create(function(p, V, x)
    A = vPlayer.Character.Torso.Velocity / 60
    for i = 1, 12 do
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(11, 1, 11) / 12
      p.Transparency = 0.75 + i / 48
      p.CFrame = p.CFrame * V + A
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2)))
                  end
                  do
                    fwait()
                  end
                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out DO_STMT

                end
              end
            end
          end
        end
      end
    end
  end
  cl = 0
  clastframe = lastframe
  for i = 1, 6 do
    swait()
    cl = cl + i * 0.05
    LerpWelds(clastframe, cl, Animations.LHB.Animation(2))
    local pc = NewPart(Vector3.new(1, 1, 1), vPlayer.Character["Left Arm"].CFrame * CFrame.new(0, -1.5, 0) * CFrame.Angles(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), "Really black", "BlockMesh", Vector3.new(2.3, 2.3, 2.3))
    pc.CanCollide = false
    pc.Anchored = true
    pc.Parent = workspace
    game:GetService("Debris"):AddItem(pc, 5)
    coroutine.resume(coroutine.create(function(p)
    local R = CFrame.Angles(math.random(-3, 3), math.random(-4, 4), math.random(-5, 5))
    local C = Vector3.new(math.random(-5, 5) / 40, math.random(-5, 5) / 40, math.random(-5, 5) / 40) + vPlayer.Character.Torso.Velocity / 120
    for i = 1, 30 do
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(2, 2, 2) / 30
      p.Transparency = i / 30
      p.CFrame = p.CFrame * R - Vector3.new(0, 0.0054555555555556 * i, 0) + C
      swait()
    end
    p:Remove()
  end), pc)
  end
  cl = 0
  clastframe = lastframe
  local Grabbee = nil
  for i = 1, 15 do
    fwait()
    do
      if i == 3 then
        local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position, vPlayer.Character.Torso.Position + CPlane * 5) * CFrame.Angles(math.rad(90), math.rad(0), 0), "Really black", "SpecialMesh", Vector3.new(8, 2, 8))
        pc.Mesh.MeshType = "FileMesh"
        pc.Anchored = true
        pc.CanCollide = false
        pc.Parent = workspace
        pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
        pc.Name = "Shockwave"
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p)
    for ii = 1, 10 do
      p.Transparency = ii / 10
      p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(7 + ii), 0) - Vector3.new(0, 0, 0)
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1, 0, 1)
      swait()
    end
    p:Remove()
  end), pc)
      end
      BodyVel.velocity = CPlane * (i * 7.5 + 65)
      for _,v in pairs(GetNubsInRadius(vPlayer.Character.HumanoidRootPart.Position + CPlane * 2, 4.75)) do
        Grabbee = v
        do break end
      end
      do
        local pc = NewPart(Vector3.new(1, 1, 1), vPlayer.Character["Left Arm"].CFrame * CFrame.new(0, -1.5, 0) * CFrame.Angles(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), "Really black", "BlockMesh", Vector3.new(2.3, 2.3, 2.3))
        pc.CanCollide = false
        pc.Anchored = true
        pc.Parent = workspace
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p)
    local R = CFrame.Angles(math.random(-3, 3), math.random(-4, 4), math.random(-5, 5))
    local C = Vector3.new(math.random(-5, 5) / 40, math.random(-5, 5) / 40, math.random(-5, 5) / 40) + vPlayer.Character.Torso.Velocity / 120
    for i = 1, 20 do
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(2, 2, 2) / 20
      p.Transparency = i / 20
      p.CFrame = p.CFrame * R - Vector3.new(0, 0.0054555555555556 * i, 0) + C
      swait()
    end
    p:Remove()
  end), pc)
        do
          local pc = NewPart(Vector3.new(1, 1, 1), vPlayer.Character["Left Arm"].CFrame * CFrame.new(0, -3.5, 0) * CFrame.Angles(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), "Really black", "BlockMesh", Vector3.new(5, 5, 5))
          pc.CanCollide = false
          pc.Anchored = true
          pc.Parent = workspace
          game:GetService("Debris"):AddItem(pc, 5)
          coroutine.resume(coroutine.create(function(p)
    local R = CFrame.Angles(math.random(-3, 3), math.random(-4, 4), math.random(-5, 5))
    for i = 1, 20 do
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(5, 5, 5) / 20
      p.Transparency = 0.5 + i / 40
      p.CFrame = p.CFrame * R
      swait()
    end
    p:Remove()
  end), pc)
          if i <= 6 then
            cl = cl + i * 0.05
            LerpWelds(clastframe, cl, Animations.LHB.Animation(3))
          end
          -- DECOMPILER ERROR at PC1273: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC1273: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
  end
  if Grabbee ~= nil then
    if Grabbee:FindFirstChild("Stats") and Grabbee.Stats.Stunned.Value == false then
      Grabbee.Stats.Stun.Value = 999
    end
    cbuff = Instance.new("NumberValue", playerstats.Decrease)
    cbuff.Name = "DecreaseDef"
    cbuff.Value = -2
    Mana.Value = Mana.Value - 10
    if useRageVer == true then
      borb = math.floor(40 + Mana.Value / 3 + (locor) / 3) * 0.4
    else
      borb = math.floor(40 + Mana.Value / 3) * 0.4
    end
    local Grabdone = false
    gpos = Instance.new("BodyPosition")
    gpos.Name = ":<"
    gpos.Parent = vPlayer.Character.HumanoidRootPart
    gpos.P = 5000
    gpos.D = 600
    gpos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
    gpos.position = vPlayer.Character.HumanoidRootPart.Position
    coroutine.resume(coroutine.create(function(NNoob)
    nubgyro = nil
    while Grabdone == false and vPlayer.Character.Humanoid.Health > 0 do
      if NNoob.Parent == nil then
        break
      else
        if NNoob.Humanoid.Health < 0 then
          break
        end
      end
      NNoob.Humanoid.PlatformStand = true
      if nubgyro == nil or nubpos == nil then
        if NNoob.Torso:FindFirstChild(":>") then
          NNoob.Torso[":>"]:Remove()
        end
        if NNoob.Torso:FindFirstChild(":<") then
          NNoob.Torso[":<"]:Remove()
        end
        nubgyro = Instance.new("BodyGyro")
        nubgyro.Name = ":>"
        nubgyro.Parent = NNoob.Torso
        nubgyro.P = 5000
        nubgyro.D = 200
        nubgyro.maxTorque = Vector3.new(50000, 50000, 50000) * 5000
        nubgyro.cframe = vPlayer.Character["Left Arm"].CFrame
        nubpos = Instance.new("BodyPosition")
        nubpos.Name = ":<"
        nubpos.Parent = NNoob.Torso
        nubpos.P = 8000
        nubpos.D = 200
        nubpos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        nubpos.position = vPlayer.Character["Left Arm"].CFrame * CFrame.new(0, -1.6, 0).p
      else
        if nubgyro.Parent == nil then
          nubgyro = nil
          nubpos = nil
        else
          nubgyro.cframe = vPlayer.Character.HumanoidRootPart.CFrame * CFrame.fromEulerAnglesXYZ(math.pi / 18, math.pi, 0)
          nubpos.position = vPlayer.Character["Left Arm"].CFrame * CFrame.new(0, -1.4, 0).p - Vector3.new(0, 0.3, 0)
        end
      end
      swait()
    end
    if nubpos and nubgyro then
      nubpos:Remove()
      nubgyro:Remove()
      if NNoob:FindFirstChild("Humanoid") then
        NNoob.Humanoid.PlatformStand = false
      end
    end
  end), Grabbee)
    p = Instance.new("Sound", vPlayer.Character.Torso)
    p.Volume = 1
    p.Pitch = 0.9
    p.SoundId = "http://www.roblox.com/asset/?id=240429615"
    p:Play()
    game:GetService("Debris"):AddItem(p, 3)
    BodyVel.velocity = Vector3.new()
    cl = 0
    clastframe = lastframe
    for i = 1, 7 do
      swait()
      cl = cl + i * 0.036
      LerpWelds(clastframe, cl, Animations.LHB.Animation(4))
    end
    cl = 0
    clastframe = lastframe
    for i = 1, 8 do
      swait()
      cl = cl + i * 0.028
      LerpWelds(clastframe, cl, Animations.LHB.Animation(5))
    end
    p = Instance.new("Sound", vPlayer.Character.Torso)
    p.Volume = 1
    p.Pitch = 0.55
    p.SoundId = "http://www.roblox.com/asset/?id=233856115"
    p:Play()
    game:GetService("Debris"):AddItem(p, 3)
    p = Instance.new("Sound", vPlayer.Character.Torso)
    p.Volume = 1
    p.Pitch = 1
    p.SoundId = "http://www.roblox.com/asset/?id=192410070"
    p:Play()
    game:GetService("Debris"):AddItem(p, 3)
    p = Instance.new("Sound", vPlayer.Character.Torso)
    p.Volume = 1
    p.Pitch = 0.4
    p.SoundId = "http://www.roblox.com/asset/?id=231917822"
    p:Play()
    game:GetService("Debris"):AddItem(p, 3)
    p = Instance.new("Sound", Grabbee.Torso)
    p.Volume = 1
    p.Pitch = 1
    p.SoundId = "http://www.roblox.com/asset/?id=243711335"
    p:Play()
    game:GetService("Debris"):AddItem(p, 3)
    local sees = math.ceil(Mana.Value / borb)
    local sees2 = (math.ceil(Corruption / borb))
    local partic1, partic2 = nil, nil
    partic1 = Instance.new("ParticleEmitter")
    partic1.Name = "AttackParticleEmitter3"
    partic1.Texture = "http://www.roblox.com/asset/?id=233069772"
    partic1.LightEmission = 0
    partic1.ZOffset = 2
    partic1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(1, 1)})
    partic1.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 5), NumberSequenceKeypoint.new(1, 1)})
    partic1.Color = ColorSequence.new(Color3.new(0, 0, 0), Color3.new(0.1, 0.1, 0.1))
    partic1.Rate = 80
    partic1.VelocitySpread = 180
    partic1.Speed = NumberRange.new(6, 10)
    partic1.Lifetime = NumberRange.new(1, 1.2)
    partic1.Rotation = NumberRange.new(-180, 180)
    partic1.RotSpeed = NumberRange.new(-100, 100)
    partic1.Parent = Grabbee.Torso
    if useRageVer then
      partic2 = Instance.new("ParticleEmitter", p)
      partic2.Name = "AttackParticleEmitter3"
      partic2.Texture = "http://www.roblox.com/asset/?id=241409051"
      partic2.LightEmission = 0
      partic2.ZOffset = 1
      partic2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5), NumberSequenceKeypoint.new(1, 1)})
      partic2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 3), NumberSequenceKeypoint.new(1, 0)})
      partic2.Color = ColorSequence.new(Color3.new(0.3, 0.3, 0.3), Color3.new(0.2, 0.2, 0.2))
      partic2.Rate = 60
      partic2.VelocitySpread = 180
      partic2.Speed = NumberRange.new(1, 2)
      partic2.Lifetime = NumberRange.new(1, 1.2)
      partic2.Rotation = NumberRange.new(-180, 180)
      partic2.RotSpeed = NumberRange.new(-100, 100)
      partic2.Acceleration = Vector3.new(0, 10, 0)
      partic2.Parent = Grabbee.Torso
    end
    for i = 1, borb + borb % 2 do
      swait()
      if i % 2 == 0 then
        applyDamage(Grabbee, 3, Vector3.new(), false, false, nil, 0, 0, "", 0, false, false, 0, true, "Pure", true, false)
        local st = Grabbee:FindFirstChild("Stats")
        if st and st:FindFirstChild("Mana") then
          if st.Mana.Value >= 3 then
            --script.Parent.DMG.RemoteEventM:FireServer(st.Mana, 3)
			st.Mana.Value = st.Mana.Value - 3
          else
            st.Mana.Value = 0
          end
        end
      end
      do
        if sees <= Mana.Value then
          Mana.Value = Mana.Value - sees
        else
          Mana.Value = 0
        end
        if useRageVer then
          if sees2 <= Corruption then
            Corruption = Corruption - sees2
          else
            Corruption = 0
          end
        end
        if useRageVer == true and i % 2 == 0 then
          if vPlayer.Character.Humanoid.Health >= 6.5 then
            vPlayer.Character.Humanoid:TakeDamage(1.5)
          end
          local eb = BillboardGui("http://www.roblox.com/asset/?id=233069772", Grabbee.Torso.CFrame * CFrame.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 20).p, 0)
          eb.Parent = workspace
          eb.BillboardGui.ImageLabel.Rotation = math.random(-180, 180)
          eb.BillboardGui.Size = UDim2.new(2, 0, 2, 0)
          game:GetService("Debris"):AddItem(eb, 3)
          coroutine.resume(coroutine.create(function(p)
    local r = math.random(-3, 3) * 9
    if r > -12 and r < 1 then
      r = -12
    else
      if r < 12 and r > -1 then
        r = 12
      end
    end
    for i = 1, 12 do
      p.BillboardGui.ImageLabel.ImageTransparency = 0.5 + i / 24
      p.BillboardGui.Size = UDim2.new(3 + i, 0, 3 + i, 0)
      p.BillboardGui.ImageLabel.Rotation = p.BillboardGui.ImageLabel.Rotation + r
      swait()
    end
    p:Remove()
  end), eb)
        end
        do
          local eff = NewPart(Vector3.new(1, 1, 1), vPlayer.Character.Torso.CFrame * CFrame.new(math.random(-20, 20) / 30, math.random(-20, 20) / 30, math.random(-20, 20) / 30) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(12, 12, 12))
          eff.Parent = workspace
          eff.Name = "BloodEffect"
          eff.Anchored = true
          eff.CanCollide = false
          game:GetService("Debris"):AddItem(eff, 5)
          coroutine.resume(coroutine.create(function(p, V, x)
    A = vPlayer.Character.Torso.Velocity / 60
    for i = 1, 8 do
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(11, 1, 11) / 8
      p.Transparency = 0.75 + i / 32
      p.CFrame = p.CFrame * V + A
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2)))
          if i % 5 == 0 then
            for _,v in pairs(GetNubsInRadius(vPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 1, 0), 35)) do
              applyCameraShake(v, 120, 5)
            end
            applyCameraShake(vPlayer.Character, 120, 5)
            local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position + Vector3.new(0, 2.5, 0)) * CFrame.Angles(0, math.rad(i * 20), 0), "Really black", "SpecialMesh", Vector3.new(6, 13, 6))
            pc.Mesh.MeshType = "FileMesh"
            pc.Anchored = true
            pc.CanCollide = false
            pc.Parent = workspace
            pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
            pc.Name = "Shockwave"
            game:GetService("Debris"):AddItem(pc, 5)
            coroutine.resume(coroutine.create(function(p)
    for ii = 1, 13 do
      p.Transparency = ii / 13
      p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(5 + ii), 0) - Vector3.new(0, 0.38461538461538, 0)
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1, -1, 1)
      swait()
    end
    p:Remove()
  end), pc)
          end
          do
            if Grabbee.Parent == nil then
              break
            else
              if Grabbee:FindFirstChild("Humanoid") == nil then
                break
              end
            end
            local eff = NewPart(Vector3.new(1, 1, 1), Grabbee.Torso.CFrame * CFrame.new(math.random(-20, 20) / 10, math.random(-25, 25) / 10, math.random(-20, 20) / 20) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(1.1, 1.1, 1.1))
            eff.Parent = workspace
            eff.Name = "BloodEffect"
            eff.Anchored = true
            eff.CanCollide = false
            game:GetService("Debris"):AddItem(eff, 5)
            coroutine.resume(coroutine.create(function(p, V, x)
    A = vPlayer.Character.Torso.Velocity / 60
    for i = 1, 12 do
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(5, 5, 5) / 12
      p.Transparency = 0.25 + i / 48
      p.CFrame = p.CFrame * V + A
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2)))
            do
              if i % 3 == 0 then
                local pc = NewPart(Vector3.new(1, 1, 1), Grabbee.Torso.CFrame * CFrame.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10) * CFrame.Angles(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), "Bright blue", "BlockMesh", Vector3.new(2, 2, 2))
                pc.CanCollide = false
                pc.Anchored = true
                pc.Parent = workspace
                game:GetService("Debris"):AddItem(pc, 5)
                coroutine.resume(coroutine.create(function(p)
    local R = CFrame.Angles(math.random(-3, 3), math.random(-4, 4), math.random(-5, 5))
    local C = Vector3.new(math.random(-5, 5) / 40, math.random(-5, 5) / 40, math.random(-5, 5) / 40)
    for i = 1, 20 do
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(2, 2, 2) / 20
      p.Transparency = i / 20
      p.CFrame = p.CFrame * R - Vector3.new(0, 0.029757575757576 * i, 0)
      swait()
    end
    p:Remove()
  end), pc)
              end
            end
          end
        end
      end
    end
    cl = 0
    clastframe = lastframe
    for i = 1, 5 do
      wait()
      cl = cl + i * 0.07
      if i == 3 then
        Grabdone = true
        partic1.Enabled = false
        game:GetService("Debris"):AddItem(partic1, 5)
        if partic2 then
          partic2.Enabled = false
          game:GetService("Debris"):AddItem(partic2, 5)
        end
        p = Instance.new("Sound", vPlayer.Character.Torso)
        p.Volume = 1
        p.Pitch = 0.95
        p.SoundId = "http://www.roblox.com/asset/?id=241816029"
        p:Play()
        game:GetService("Debris"):AddItem(p, 3)
        if Grabbee:FindFirstChild("Stats") then
          if Grabbee.Stats.Mana.Value >= 10 then
            Grabbee.Stats.Mana.Value = Grabbee.Stats.Mana.Value - 10
          else
            Grabbee.Stats.Mana.Value = 0
          end
          if Grabbee.Stats.Stunned.Value == false then
            Grabbee.Stats.Stun.Value = 999
          end
        end
        applyDamage(Grabbee, 15, Vector3.new(0, 30, 0) + CPlane * 40, true, false, addonCullMovers, 0, 0, "", 0, false, false, 0, true, "IgnoreDefense", true, false)
        local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(Grabbee.Torso.Position, Grabbee.Torso.Position + CPlane * 9.5 + Vector3.new(0, 5, 0)) * CFrame.Angles(math.random(-30, 30) / 50, math.random(-30, 30) / 50, math.random(-30, 30) / 50), "Really black", "SpecialMesh", Vector3.new(6, 6, 2))
        pc.Mesh.MeshType = "FileMesh"
        pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
        pc.Parent = workspace
        pc.Anchored = true
        pc.CanCollide = false
        pc.Transparency = 0.5
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p)
    for ii = 1, 28 do
      p.Transparency = ii / 28
      p.CFrame = p.CFrame * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0.1)
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1.8 - ii * 0.05, 1.8 - ii * 0.05, 0)
      swait()
    end
    p:Remove()
  end), pc)
        for loel = 1, 8 do
          local eff = NewPart(Vector3.new(1, 1, 1), Grabbee.Torso.CFrame * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(4, 4, 4))
          eff.Parent = workspace
          eff.Name = "BloodEffect"
          eff.Anchored = true
          eff.CanCollide = false
          game:GetService("Debris"):AddItem(eff, 5)
          coroutine.resume(coroutine.create(function(p, V, x)
    for i = 1, 25 do
      p.Transparency = 0.5 + i / 50
      p.CFrame = p.CFrame + x / 2
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8))), Vector3.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10))
        end
        for loel = 1, 3 do
          local eff = NewPart(Vector3.new(1, 1, 1), Grabbee.Torso.CFrame * CFrame.new(math.random(-20, 20) / 10, math.random(-25, 25) / 10, math.random(-20, 20) / 20) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(4, 4, 4))
          eff.Parent = workspace
          eff.Name = "BloodEffect"
          eff.Anchored = true
          eff.CanCollide = false
          game:GetService("Debris"):AddItem(eff, 5)
          coroutine.resume(coroutine.create(function(p, V, x)
    for i = 1, 25 do
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(14 + loel * 8, 14 + loel * 8, 14 + loel * 8) / 25
      p.Transparency = 0.25 + i / 18.75
      p.CFrame = p.CFrame * V
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8))))
        end
      end
      do
        do
          LerpWelds(clastframe, cl, Animations.LHB.Animation(6))
          -- DECOMPILER ERROR at PC2735: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
    cbuff:Remove()
    gpos:Remove()
  else
    do
      for i = 1, 4 do
        fwait()
        BodyVel.velocity = BodyVel.velocity / 1.25
      end
      do
        cl = 0
        coroutine.resume(coroutine.create(function(p)
    for i = 1, 30 do
      p.Volume = 1 - i / 30
      swait()
    end
    p:Stop()
  end), pb)
        clastframe = lastframe
        BodyVel.maxForce = Vector3.new(1000000, 0, 1000000)
        for i = 1, 15 do
          fwait()
          BodyVel.velocity = BodyVel.velocity / 1.2
          LerpWelds(clastframe, i / 15, Animations.Stand.Animation(0))
        end
        if Grabbee == nil then
          Cooldowns["4"] = CooldownsB["4"] / 3
        else
          Cooldowns["4"] = CooldownsB["4"]
        end
      end
    end
  end
        CanInterrupt(true)
        PlayerIsAttacking = false
        BodyVel.Parent = nil
        BodyGyro.Parent = nil
        Ult = false
end



mouse.KeyDown:connect(function(k)
  
k = k:lower()
if k == "q" then
  BlastStorm()
end
if k == "e" then
  WindFloor2()
end
if k == "t" then
  WindFloor()
end
end)








local BC = BrickColor.new
local Col3 = Color3.new
local Inst = Instance.new
local Ud2 = UDim2.new
local FONT = "SourceSansLight"







 Colour1 = BC("Pastel Blue")
 Colour2 = BC("Black")
 Colour3 = BC("Ghost grey")
 Chaos_UI = Inst("ScreenGui", Player.PlayerGui)
Chaos_UI.Name = "Chaos UI"
ColMain, KP, Moves, OM = Inst("Frame", Chaos_UI), Inst("Frame", Chaos_UI), Inst("ScrollingFrame", Chaos_UI), Inst("TextButton", Chaos_UI)


Moves.BackgroundColor3 = Col3(72/255,72/255,72/255)
Moves.BackgroundTransparency = .8
Moves.BorderSizePixel = 0
Moves.Name = "Moves"
Moves.Position = Ud2(-.2, 0, .4, 0)
Moves.Size = Ud2(.2, 0, .5, 0)
Moves.ScrollBarThickness = 8
OM.Name = "VML"
OM.Position = Ud2(.002, 0, .83, 0)
OM.Size = Ud2(.05, 0, .08, 0)
OM.Visible = false
OM.Style = "RobloxRoundButton"
OM.Font = FONT
OM.Text = "View Move List"
OM.TextColor3 = Col3(1,1,1)
OM.TextScaled = true
local Title = Inst("TextLabel", Moves)
Title.BackgroundTransparency = 1
Title.Name = "Title"
Title.Size = Ud2(1, 0, .014, 0)
Title.Font = FONT
Title.Text = "Move List"
Title.TextColor3 = Col3(1,1,1)
Title.TextScaled = true
Title.TextStrokeTransparency = 0

		OM.Visible = true

function Create_Moves_In_List()
	local ah = .012
	local am = .012
	local move = Title:Clone() move.Parent = Moves move.Name = "A Move" move.Text = "*Whatever you do, DO NOT use 2 different moves tat the same time!!*" move.Position = Ud2(0, 0, ah, 0) move.TextXAlignment = "Left" ah = ah+am
	move = Title:Clone() move.Parent = Moves move.Name = "A Move" move.Text = "Q - Ultimate Shadow Blast, must be flying when in use, *be carefull using this*" move.Position = Ud2(0, 0, ah, 0) move.TextXAlignment = "Left" ah = ah+am
	move = Title:Clone() move.Parent = Moves move.Name = "A Move" move.Text = "E - Shadow Blast" move.Position = Ud2(0, 0, ah, 0) move.TextXAlignment = "Left" ah = ah+am
	move = Title:Clone() move.Parent = Moves move.Name = "A Move" move.Text = "R - Purple Nova, I recommend being in a high distance when you use this" move.Position = Ud2(0, 0, ah, 0) move.TextXAlignment = "Left" ah = ah+am
	move = Title:Clone() move.Parent = Moves move.Name = "A Move" move.Text = "T - Unfinished, dont press it" move.Position = Ud2(0, 0, ah, 0) move.TextXAlignment = "Left" ah = ah+am
	move = Title:Clone() move.Parent = Moves move.Name = "A Move" move.Text = "F - Fly mode/ Fly mode Deactivate" move.Position = Ud2(0, 0, ah, 0) move.TextXAlignment = "Left" ah = ah+am
	move = Title:Clone() move.Parent = Moves move.Name = "A Move" move.Text = "B - Roar, you know how that is" move.Position = Ud2(0, 0, ah, 0) move.TextXAlignment = "Left" ah = ah+am
	move = Title:Clone() move.Parent = Moves move.Name = "A Move" move.Text = "G - Destructive Fire Blasts, I recommend being in fly mode" move.Position = Ud2(0, 0, ah, 0) move.TextXAlignment = "Left" ah = ah+am
end
Create_Moves_In_List()


local mopen = false
OM.MouseButton1Click:connect(function()
	if not Debounces.UIAction and not mopen then
		Debounces.UIAction = true
		OM.Text = "Hide Move List"
		mopen = true
		Moves:TweenPosition(Ud2(.002, 0, .4, 0),_, "Bounce", .6, true)
		OM:TweenPosition(Ud2(.202, 0, .83, 0),_, "Bounce", .6, true)
		wait(.3)
		Debounces.UIAction = false
	elseif not Debounces.UIAction and mopen then
		Debounces.UIAction = true
		OM.Text = "View Move List"
		mopen = false
		Moves:TweenPosition(Ud2(-.2, 0, .4, 0),_, "Bounce", .6, true)
		OM:TweenPosition(Ud2(.002, 0, .83, 0),_, "Bounce", .6, true)
		wait(.3)
		Debounces.UIAction = false
	end
end)





local animpose = "Idle"
local lastanimpose = "Idle"
local sine = 0
local change = 1
local val = 0
local ffing = false
-------------------------------
game:GetService("RunService").RenderStepped:connect(function()
--[[if char.Humanoid.Jump == true then
jump = true
else
jump = false
end]]
char.Humanoid.FreeFalling:connect(function(f)
if f then
ffing = true
else
ffing = false
end
end)
sine = sine + change
if jumpn == true then
animpose = "Jumping"
elseif ffing == true then
animpose = "Freefalling"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
animpose = "Idle"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
animpose = "Walking"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
animpose = "Running"
end
if animpose ~= lastanimpose then
sine = 0
if Debounces.NoIdl == false then
if animpose == "Idle" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8)), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
end
elseif animpose == "Walking" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
end
elseif animpose == "Running" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(-14),math.rad(8+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(14),math.rad(-8-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-10),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20),0, math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(-7)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(7)), 0.4)
wait()
end
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(sine/10),0)*CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(14+2*math.cos(sine/10))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(sine/10),0)*CFrame.Angles(math.rad(-20),math.rad(6),math.rad(-10-2*math.cos(sine/10))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/10)),math.rad(20),0), 0.2)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1-0.16*math.cos(sine/10), 0) * CFrame.Angles(0, math.rad(-20), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0-0.1*math.cos(sine/10), -0.55) * CFrame.Angles(math.rad(-10+1*math.cos(sine/10)), math.rad(10), math.rad(-0-2*math.cos(sine/10))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1-0.1*math.cos(sine/10), 0) * CFrame.Angles(0, math.rad(-10), math.rad(0+2*math.cos(sine/10))), 0.4)
elseif animpose == "Walking" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
elseif animpose == "Running" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.35,.4)*CFrame.Angles(math.rad(-30),math.rad(14),math.rad(-30+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.55,-.4)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(40-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2) * CFrame.Angles(math.rad(20),math.rad(10),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-40),math.rad(-10), math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1.2) * CFrame.Angles(math.rad(-20), math.rad(10), math.rad(0)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), math.rad(10), math.rad(0)), 0.4)
end
end
end)

hum.MaxHealth = math.huge
wait(3)
hum.Health = math.huge


spawn(function()
	while wait(2)
		 do
		GroundWave3()	
	end
end)


while true do --Loop
	wait(0.04)
part2.Texture = "http://www.roblox.com/asset/?id=358965396" --Insert decal's first texture 
part2.Texture = "http://www.roblox.com/asset/?id=358965513" --second texture
wait(0.04) --wait 1 second, you can change this and make it different for every one
part2.Texture = "http://www.roblox.com/asset/?id=358965632" 
wait(0.04)
part2.Texture = "http://www.roblox.com/asset/?id=358965664" 
wait(0.04)
end