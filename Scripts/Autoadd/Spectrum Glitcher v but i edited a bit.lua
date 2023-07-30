
wait(0.2)
loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()

warn([[SpectrumGlitcher v5  Loaded.
The super switcher.
Velnorum is one of the first wielders.

Created, Reworked by NoobyGames12
Edited by GodzPlaysRB
Edited by wanTH092 (Gam_Filano CH)
SpectrumGlitcher Developers ^^^
]])


------------- ORIGINAL WIELDER OC: Velnorum
print([[Icons:
! = New
? = Spoilers
* = Exclusivity
C = Changes

]])
warn([[V 8.0 Update Log:
C: TEST BUILD
]])
--- its obs smooth af do not touch 
---- Sources and functions might be taken from others

plr = game:GetService("Players").LocalPlayer
char = plr.Character
hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
Camera = cam
local CamInterrupt = false
local TwoD = false
local TargetInfo = {nil, nil}
cam.CameraType = "Custom"
t = char.Torso
h = char.Head
ra = char["Right Arm"]
la = char["Left Arm"]
rl = char["Right Leg"]
ll = char["Left Leg"]
tors = char.Torso
lleg = char["Left Leg"]
root = char.HumanoidRootPart
hed = char.Head
rleg = char["Right Leg"]
rarm = char["Right Arm"]
larm = char["Left Arm"]
radian = math.rad
random = math.random
Vec3 = Vector3.new
Inst = Instance.new
cFrame = CFrame.new
Euler = CFrame.fromEulerAnglesXYZ
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new
local Player_Size = 0
cam = game.Workspace.CurrentCamera
CF = CFrame.new
angles = CFrame.Angles
attack = false
Euler = CFrame.fromEulerAnglesXYZ
Rad = math.rad
IT = Instance.new
BrickC = BrickColor.new
Cos = math.cos
Acos = math.acos
Sin = math.sin
Asin = math.asin
Abs = math.abs
Mrandom = math.random
Floor = math.floor
IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor
local SINE = 0

local Booleans = {
  CamFollow = true,
  GyroUse = true
}

function lerp(object, newCFrame, alpha)
  return object:lerp(newCFrame, alpha)
end

local Directer = Inst("BodyGyro", root)
Directer.MaxTorque = Vec3(0, 0, 0)
Directer.P = 600000
local CPart = Inst("Part")
CPart.Anchored = true
CPart.CanCollide = false
CPart.Locked = true
CPart.Transparency = 1

local rainbowmode = false
local chaosmode = false

local kan = Instance.new("Sound",tors)
kan.Volume = 0.85
kan.TimePosition = 0
kan.PlaybackSpeed = 1
kan.Pitch = 1
kan.SoundId = "rbxassetid://1255569288"
kan.Name = "wrecked"
kan.Looped = true
kan:Play()

local currentThemePlaying = kan.SoundId
local currentPitch = kan.Pitch
local currentVol = kan.Volume
function newTheme(ID,timepos,pitch,vol)
local kanz = kan
--kanz:Stop()
kanz.Volume = vol
--kanz.TimePosition = timepos
kanz.PlaybackSpeed = pitch
kanz.Pitch = pitch
kanz.SoundId = ID
kanz.Name = "wrecked"
kanz.Looped = true
currentThemePlaying = kanz.SoundId
currentVol = kanz.Volume
currentPitch = kanz.Pitch
--kanz:Play()
--coroutine.resume(coroutine.create(function()
--wait(0.05)
--end))
end


function newThemeCust(ID,timepos,pitch,vol)
local kanz = kan
kanz:Stop()
kanz.Volume = vol
kanz.TimePosition = timepos
kanz.PlaybackSpeed = pitch
kanz.Pitch = pitch
kanz.SoundId = ID
kanz.Name = "wrecked"
kanz.Looped = true
currentThemePlaying = kanz.SoundId
currentVol = kanz.Volume
currentPitch = kanz.Pitch
kanz:Play()
coroutine.resume(coroutine.create(function()
wait(0.05)
end))
end

local mutedtog = false

function CameraEnshaking(Length,Intensity)
coroutine.resume(coroutine.create(function()
      local intensity = 1*Intensity
      local rotM = 0.01*Intensity
for i = 0, Length, 0.1 do
swait()
intensity = intensity - 0.05*Intensity/Length
rotM = rotM - 0.0005*Intensity/Length
      hum.CameraOffset = Vec3(radian(random(-intensity, intensity)), radian(random(-intensity, intensity)), radian(random(-intensity, intensity)))
      cam.CFrame = cam.CFrame * cFrame(radian(random(-intensity, intensity)), radian(random(-intensity, intensity)), radian(random(-intensity, intensity))) * Euler(radian(random(-intensity, intensity)) * rotM, radian(random(-intensity, intensity)) * rotM, radian(random(-intensity, intensity)) * rotM)
end
Humanoid.CameraOffset = Vec3(0, 0, 0)
end))
end
CamShake=function(Part,Distan,Power,Times) 
local de=Part.Position
for i,v in pairs(workspace:children()) do
 if v:IsA("Model") and v:findFirstChild("Humanoid") then
for _,c in pairs(v:children()) do
if c.ClassName=="Part" and (c.Position - de).magnitude < Distan then
local Noob=v.Humanoid
if Noob~=nil then
coroutine.resume(coroutine.create(function()
FV = Instance.new("BoolValue", Noob)
FV.Name = "CameraShake"
for ShakeNum=1,Times do
swait()
local ef=Power
  if ef>=1 then
   Humanoid.CameraOffset = Vector3.new(math.random(-ef,ef),math.random(-ef,ef),math.random(-ef,ef))
  else
   ef=Power*10
   Humanoid.CameraOffset = Vector3.new(math.random(-ef,ef)/10,math.random(-ef,ef)/10,math.random(-ef,ef)/10)
  end	
end
Humanoid.CameraOffset = Vector3.new(0,0,0)
FV:Destroy()
end))
CameraShake(Times, Power, Noob)
end
end
end
end
end
end

local toggleTag = true
local bilguit = Instance.new("BillboardGui", hed)
bilguit.Adornee = nil
bilguit.Name = "ModeName"
bilguit.Size = UDim2.new(4, 0, 1.2, 0)
bilguit.StudsOffset = Vector3.new(-8, 8/1.5, 0)
local modet = Instance.new("TextLabel", bilguit)
modet.Size = UDim2.new(10/2, 0, 7/2, 0)
modet.FontSize = "Size8"
modet.TextScaled = true
modet.TextTransparency = 0
modet.BackgroundTransparency = 1 
modet.TextTransparency = 0
modet.TextStrokeTransparency = 0
modet.Font = "Antique"
modet.TextStrokeColor3 = Color3.new(1,0,0)
modet.TextColor3 = Color3.new(0.25,0,0)
modet.Text = "Spectrum Glitcher"


function chatfunc(text,color,typet,font,timeex)
local chat = coroutine.wrap(function()
if Character:FindFirstChild("TalkingBillBoard")~= nil then
Character:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",Character)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = Character.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = font
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = color
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
local tecks3 = Instance.new("TextLabel",naeeym2)
tecks3.BackgroundTransparency = 1
tecks3.BorderSizePixel = 0
tecks3.Text = ""
tecks3.Font = font
tecks3.TextSize = 30
tecks3.TextStrokeTransparency = 0
if typet == "Inverted" then
tecks3.TextColor3 = Color3.new(0,0,0)
tecks3.TextStrokeColor3 = color
elseif typet == "Normal" then
tecks3.TextColor3 = color
tecks3.TextStrokeColor3 = Color3.new(0,0,0)
end
tecks3.Size = UDim2.new(1,0,0.5,0)
coroutine.resume(coroutine.create(function()
while true do
swait(1)
if chaosmode == true then
tecks2.TextColor3 = BrickColor.random().Color
tecks3.TextStrokeColor3 = BrickColor.random().Color
end
end
end))
modet.TextTransparency = modet.TextTransparency  + 1
modet.TextStrokeTransparency = modet.TextStrokeTransparency + 1
for i = 0, 74*timeex do
swait()
modet.TextTransparency = 1
modet.TextStrokeTransparency = 1
tecks2.Text = text
tecks3.Text = text
end
local randomrot = math.random(1,2)
if randomrot == 1 then
for i = 1, 50 do
swait()
tecks2.Text = text
tecks3.Text = text
modet.TextTransparency = modet.TextTransparency - .02
modet.TextStrokeTransparency = modet.TextStrokeTransparency - .02
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
elseif randomrot == 2 then
	for i = 1, 50 do
swait()
tecks2.Text = text
tecks3.Text = text
modet.TextTransparency = modet.TextTransparency - .02
modet.TextStrokeTransparency = modet.TextStrokeTransparency - .02
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
end
modet.TextTransparency = 0
modet.TextStrokeTransparency = 0
if toggleTag == false then
modet.TextTransparency = 1
modet.TextStrokeTransparency = 1
end
naeeym2:Destroy()
end)
chat()
end

function bosschatfunc(text,color,watval)
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
coroutine.resume(coroutine.create(function()
if v.PlayerGui:FindFirstChild("Dialog")~= nil then
v.PlayerGui:FindFirstChild("Dialog"):destroy()
end
local scrg = Instance.new("ScreenGui",v.PlayerGui)
CFuncs["EchoSound"].Create("rbxassetid://525200869", scrg, 0.5, 1,0,10,0.1,0.25,1)
scrg.Name = "Dialog"
local txtlb = Instance.new("TextLabel",scrg)
txtlb.Text = ""
txtlb.Font = "Bodoni"
txtlb.TextColor3 = Color3.new(0,0,0)
txtlb.TextStrokeTransparency = 0
txtlb.BackgroundTransparency = 0.75
txtlb.BackgroundColor3 = Color3.new(0,0,0)
txtlb.TextStrokeColor3 = color
txtlb.TextScaled = true
txtlb.Size = UDim2.new(1,0,0.25,0)
txtlb.TextXAlignment = "Left"
txtlb.Position = UDim2.new(0,0,0.75 + 1,0)
local txtlb2 = Instance.new("TextLabel",scrg)
txtlb2.Text = plr.Name.."The hot sexy Pendulum Hub user totally not an easter egg."
txtlb2.Font = "Antique"
txtlb2.TextColor3 = Color3.new(0,0,0)
txtlb2.TextStrokeTransparency = 0
txtlb2.BackgroundTransparency = 1
txtlb2.TextStrokeColor3 = color
txtlb2.TextSize = 40
txtlb2.Size = UDim2.new(1,0,0.25,0)
txtlb2.TextXAlignment = "Left"
txtlb2.Position = UDim2.new(0,0,1,0)
local fvalen = 0.55
local fval = -0.49
coroutine.resume(coroutine.create(function()
while true do
swait()
if chaosmode == true then
txtlb.Rotation = math.random(-1,1)
txtlb2.Rotation = math.random(-1,1)
txtlb.Position = txtlb.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb.TextStrokeColor3 = BrickColor.random().Color
txtlb2.TextStrokeColor3 = BrickColor.random().Color
end
end
end))
coroutine.resume(coroutine.create(function()
while true do
swait()
if scrg.Parent ~= nil then
	fvalen = fvalen - 0.0001
elseif scrg.Parent == nil then
break
end
end
end))
local flol = 1.75
local flil = 1.6
coroutine.resume(coroutine.create(function()
	for i = 0, 9 do
		swait()
		fval = fval + 0.05
		flol = flol - 0.1
		flil = flil - 0.1
		txtlb.Text = ""
		txtlb.Position = UDim2.new(0,0,flol,0)
		txtlb2.Position = UDim2.new(0,0,flil,0)
	end
	txtlb.Text = text
wait(watval)
local valinc = 0
for i = 0, 99 do
swait()
valinc = valinc + 0.0001
flol = flol + valinc
flil = flil + valinc
txtlb.Rotation = txtlb.Rotation + valinc*20
txtlb2.Rotation = txtlb2.Rotation - valinc*50
txtlb.Position = UDim2.new(0,0,flol,0)
txtlb2.Position = UDim2.new(0,0,flil,0)
txtlb.TextStrokeTransparency = txtlb.TextStrokeTransparency + 0.01
txtlb.TextTransparency = txtlb.TextTransparency + 0.01
txtlb2.TextStrokeTransparency = txtlb2.TextStrokeTransparency + 0.01
txtlb2.TextTransparency = txtlb2.TextTransparency + 0.01
txtlb.BackgroundTransparency = txtlb.BackgroundTransparency + 0.0025
end
scrg:Destroy()
end))
end))
end
end


local Create = LoadLibrary("RbxUtility").Create

CFuncs = {	
	["Part"] = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
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
		end;
	};
	
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end;
	};
	
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end;
	};
	
	["Weld"] = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld"){
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1,
			}
			return Weld
		end;
	};

	["Sound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
                                        Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};

	["TimeSound"] = {
		Create = function(id, par, vol, pit, timepos) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
                                        Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
                                        TimePosition = timepos,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};
		["EchoSound"] = {
		Create = function(id, par, vol, pit, timepos,delays,echodelay,fedb,dryl) 
			coroutine.resume(coroutine.create(function()
				local Sas = Create("Sound"){
					Volume = vol,
                    Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
                    TimePosition = timepos,
					Parent = par or workspace,
				}
				local E = Create("EchoSoundEffect"){
					Delay = echodelay,
                    Name = "Echo",
					Feedback = fedb,
                    DryLevel = dryl,
					Parent = Sas,
				}
				wait() 
				Sas:play() 
				game:GetService("Debris"):AddItem(Sas, delays)
			end))
		end;
	};

["LongSound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 60)
			end))
		end;
	};
	
	["ParticleEmitter"] = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter"){
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread,
			}
			return fp
		end;
	};

	CreateTemplate = {
	
	};
}



New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
local halocolor = BrickColor.new("Pastel light blue")
local halocolor2 = BrickColor.new("Cool yellow")
local starcolor = BrickColor.new("Bright yellow")
local lunacolor = BrickColor.new("Navy blue")
local lunacolor2 = BrickColor.new("Bright blue")
local wepcolor = BrickColor.new("Really black")
local maincolor = BrickColor.new("Really black")
local m = Instance.new("Model",char)
local m2 = Instance.new("Model",char)
local m3 = Instance.new("Model",char)
local mw1 = Instance.new("Model",char)
local mw2 = Instance.new("Model",char)


gui = function(GuiType, parent, text, backtrans, backcol, pos, size)
  local gui = it(GuiType)
  gui.Parent = parent
  gui.Text = text
  gui.BackgroundTransparency = backtrans
  gui.BackgroundColor3 = backcol
  gui.SizeConstraint = "RelativeXY"
  gui.TextXAlignment = "Center"
  gui.TextYAlignment = "Center"
  gui.Position = pos
  gui.Size = size
  gui.Font = "SourceSans"
  gui.FontSize = "Size14"
  gui.TextWrapped = false
  gui.TextStrokeTransparency = 0
  gui.TextColor = BrickColor.new("White")
  return gui
end
--------------------------- GUI STUFF
local basgui = it("GuiMain")
basgui.Parent = plr.PlayerGui
basgui.Name = "VISgui"
local fullscreenz = it("Frame")
fullscreenz.Parent = basgui
fullscreenz.BackgroundColor3 = Color3.new(255, 255, 255)
fullscreenz.BackgroundTransparency = 1
fullscreenz.BorderColor3 = Color3.new(17, 17, 17)
fullscreenz.Size = UDim2.new(1, 0, 1, 0)
fullscreenz.Position = UDim2.new(0, 0, 0, 0)
local imgl2 = Instance.new("ImageLabel",fullscreenz)
imgl2.BackgroundTransparency = 1
imgl2.BorderSizePixel = 0
imgl2.ImageTransparency = 0.5
imgl2.ImageColor3 = Color3.new(1,0,0)
imgl2.Position = UDim2.new(0.75,-200,0.55,-200)
imgl2.Size = UDim2.new(0,1000,0,1000)
imgl2.Image = "rbxassetid://2325939897"
local techc = imgl2:Clone()
techc.Parent = fullscreenz
techc.ImageTransparency = 0
techc.Size = UDim2.new(0,900,0,900)
techc.Position = UDim2.new(0.75,-150,0.55,-150)
techc.ImageColor3 = Color3.new(1,0,0)
techc.Image = "rbxassetid://2273224484"
local circl = imgl2:Clone()
circl.Parent = fullscreenz
circl.ImageTransparency = 0
circl.Size = UDim2.new(0,550,0,550)
circl.Position = UDim2.new(0.75,25,0.55,25)
circl.ImageColor3 = Color3.new(0,0,0)
circl.Image = "rbxassetid://2312119891"
local circl2 = imgl2:Clone()
circl2.Parent = fullscreenz
circl2.ImageTransparency = 0
circl2.Size = UDim2.new(0,700,0,700)
circl2.Position = UDim2.new(0.75,-50,0.55,-50)
circl2.ImageColor3 = Color3.new(1,0,0)
circl2.Image = "rbxassetid://2312119891"
local imgl2b = imgl2:Clone()
imgl2b.Parent = fullscreenz
imgl2b.ImageTransparency = 0
imgl2b.Size = UDim2.new(0,800,0,800)
imgl2b.Position = UDim2.new(0.75,-100,0.55,-100)
imgl2b.ImageColor3 = Color3.new(0,0,0)
local ned = Instance.new("TextLabel",fullscreenz)
ned.ZIndex = 2
ned.Font = "Arcade"
ned.BackgroundTransparency = 1
ned.BorderSizePixel = 0.65
ned.Size = UDim2.new(0.3,0,0.2,0)
ned.Position = UDim2.new(0.7,0,0.8,0)
ned.TextColor3 = BrickColor.new("Really red").Color
ned.TextStrokeColor3 = BrickColor.new("Really black").Color
ned.TextScaled = true
ned.TextStrokeTransparency = 0
ned.Text = "Spectrum Glitcher"
ned.TextSize = 24
ned.Rotation = 1
ned.TextXAlignment = "Right"
ned.TextYAlignment = "Bottom"

local extrawingmod1 = Instance.new("Model",char)
local extrawingmod2 = Instance.new("Model",char)

function CreateParta(parent,transparency,reflectance,material,brickcolor)
local p = Instance.new("Part")
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = parent
p.Size = Vector3.new(0.1,0.1,0.1)
p.Transparency = transparency
p.Reflectance = reflectance
p.CanCollide = false
p.Locked = true
p.BrickColor = brickcolor
p.Material = material
return p
end

function CreateMesh(parent,meshtype,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = meshtype
mesh.Scale = Vector3.new(x1*10,y1*10,z1*10)
return mesh
end

function CreateSpecialMesh(parent,meshid,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = "FileMesh"
mesh.MeshId = meshid
mesh.Scale = Vector3.new(x1,y1,z1)
return mesh
end


function CreateSpecialGlowMesh(parent,meshid,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = "FileMesh"
mesh.MeshId = meshid
mesh.TextureId = "http://www.roblox.com/asset/?id=269748808"
mesh.Scale = Vector3.new(x1,y1,z1)
mesh.VertexColor = Vector3.new(parent.BrickColor.r, parent.BrickColor.g, parent.BrickColor.b)
return mesh
end

function CreateWeld(parent,part0,part1,C1X,C1Y,C1Z,C1Xa,C1Ya,C1Za,C0X,C0Y,C0Z,C0Xa,C0Ya,C0Za)
local weld = Instance.new("Weld")
weld.Parent = parent
weld.Part0 = part0
weld.Part1 = part1
weld.C1 = CFrame.new(C1X,C1Y,C1Z)*CFrame.Angles(C1Xa,C1Ya,C1Za)
weld.C0 = CFrame.new(C0X,C0Y,C0Z)*CFrame.Angles(C0Xa,C0Ya,C0Za)
return weld
end


--------------
--------------
local sorb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWeld(sorb,rarm,sorb,0,1,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local sorb2 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWeld(sorb2,larm,sorb2,0,1,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local handlex = CreateParta(mw2,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0,0,0)
local handlexweld = CreateWeld(handlex,tors,handlex,0,-1.5,-1.05,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local valuaring = 10
for i = 0, 49 do
	valuaring = valuaring + 10
rn = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(rn,"Brick",0.25,0.1,0.1)
CreateWeld(rn,handlex,rn,0,1,0,math.rad(0),math.rad(0),math.rad(valuaring),0,0,0,math.rad(0),math.rad(0),math.rad(0))
end

handlex = CreateParta(mw2,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0,0,0)
CreateWeld(handlex,tors,handlex,0,-3,-2.1,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local valuaring = 10
for i = 0, 49 do
	valuaring = valuaring + 10
rn = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(rn,"Brick",0.5,0.2,0.2)
CreateWeld(rn,handlex,rn,0,2,0,math.rad(0),math.rad(0),math.rad(valuaring),0,0,0,math.rad(0),math.rad(0),math.rad(0))
end


local handle = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local handleweld = CreateWeld(handle,tors,handle,0,-1.5,-1.05,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

--- Left wing.

local lwing1 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local lwing1weld = CreateWeld(lwing1,handle,lwing1,3,0,0,math.rad(5),math.rad(0),math.rad(12.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing1,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing1,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,lwing1,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,-0.25,-2)
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,lwing1,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

tl1 = Instance.new('Trail',wed)
tl1.Attachment0 = A1
tl1.Attachment1 = A0
tl1.Texture = "rbxassetid://2108945559"
tl1.LightEmission = 1
tl1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl1.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tl1.Lifetime = 0.6


local lwing2 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local lwing2weld = CreateWeld(lwing2,handle,lwing2,4,1,0,math.rad(10),math.rad(0),math.rad(25),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing2,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing2,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,lwing2,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,-0.25,-2)
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,lwing2,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

tl2 = Instance.new('Trail',wed)
tl2.Attachment0 = A1
tl2.Attachment1 = A0
tl2.Texture = "rbxassetid://2108945559"
tl2.LightEmission = 1
tl2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl2.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tl2.Lifetime = 0.6

local lwing3 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local lwing3weld = CreateWeld(lwing3,handle,lwing3,4.75,2,0,math.rad(15),math.rad(0),math.rad(37.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing3,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing3,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,lwing3,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,-0.25,-2)
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,lwing3,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

tl3 = Instance.new('Trail',wed)
tl3.Attachment0 = A1
tl3.Attachment1 = A0
tl3.Texture = "rbxassetid://2108945559"
tl3.LightEmission = 1
tl3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl3.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tl3.Lifetime = 0.6

tl1.Enabled = false
tl2.Enabled = false
tl3.Enabled = false
local lwing4 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local lwing4weld = CreateWeld(lwing4,handle,lwing4,5.75,3,0,math.rad(20),math.rad(0),math.rad(50),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing4,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing4,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,lwing4,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,lwing4,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local lwing5 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local lwing5weld = CreateWeld(lwing5,handle,lwing5,6.75,4,0,math.rad(25),math.rad(0),math.rad(62.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing5,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing5,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,lwing5,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,lwing5,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local lwing6 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local lwing6weld = CreateWeld(lwing6,handle,lwing6,7.75,5,0,math.rad(30),math.rad(0),math.rad(75),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing6,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing6,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,lwing6,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,lwing6,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

-- Right wing.

local rwing1 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing1weld = CreateWeld(rwing1,handle,rwing1,-3,0,0,math.rad(5),math.rad(0),math.rad(-12.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing1,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing1,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,rwing1,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,rwing1,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)

tr1 = Instance.new('Trail',wed)
tr1.Attachment0 = A1
tr1.Attachment1 = A0
tr1.Texture = "rbxassetid://2108945559"
tr1.LightEmission = 1
tr1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr1.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tr1.Lifetime = 0.6

local rwing2 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing2weld = CreateWeld(rwing2,handle,rwing2,-4,1,0,math.rad(10),math.rad(0),math.rad(-25),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing2,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing2,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,rwing2,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,rwing2,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)

tr2 = Instance.new('Trail',wed)
tr2.Attachment0 = A1
tr2.Attachment1 = A0
tr2.Texture = "rbxassetid://2108945559"
tr2.LightEmission = 1
tr2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr2.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tr2.Lifetime = 0.6

local rwing3 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing3weld = CreateWeld(rwing3,handle,rwing3,-4.75,2,0,math.rad(15),math.rad(0),math.rad(-37.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing3,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing3,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,rwing3,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,rwing3,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)

tr3 = Instance.new('Trail',wed)
tr3.Attachment0 = A1
tr3.Attachment1 = A0
tr3.Texture = "rbxassetid://2108945559"
tr3.LightEmission = 1
tr3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr3.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tr3.Lifetime = 0.6


local rwing4 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing4weld = CreateWeld(rwing4,handle,rwing4,-5.75,3,0,math.rad(20),math.rad(0),math.rad(-50),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing4,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing4,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,rwing4,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,rwing4,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local rwing5 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing5weld = CreateWeld(rwing5,handle,rwing5,-6.75,4,0,math.rad(25),math.rad(0),math.rad(-62.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing5,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing5,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,rwing5,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,rwing5,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local rwing6 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing6weld = CreateWeld(rwing6,handle,rwing6,-7.75,3,0,math.rad(30),math.rad(0),math.rad(-75),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing6,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing6,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,rwing6,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,rwing6,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

--HERES THE RING


--[[ran = CreateParta(m2,0,0,"SmoothPlastic",wepcolor)
CreateMesh(ran,"Wedge",1.02,1.02,1.02)
CreateWeld(ran,larm,ran,0,0.15,0,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
ran = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(ran,"Wedge",0.9,0.9,1.025)
CreateWeld(ran,larm,ran,0,0.155,0,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
ran = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(ran,"Wedge",1.025,0.9,0.9)
CreateWeld(ran,larm,ran,0,0.155,-0.025,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))


gan = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(gan,"Brick",1.075,0.1,1.075)
CreateWeld(gan,larm,gan,0,0.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(gan,"Brick",1.075,0.1,1.075)
CreateWeld(gan,larm,gan,0,0.75,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))



gan = CreateParta(m2,0,0,"Neon",halocolor2)
CreateMesh(gan,"Brick",1.095,0.035,1.095)
CreateWeld(gan,larm,gan,0,0.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m2,0,0,"Neon",halocolor2)
CreateMesh(gan,"Brick",1.095,0.035,1.095)
CreateWeld(gan,larm,gan,0,0.75,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gane = CreateParta(m3,0,0,"SmoothPlastic",lunacolor2)
CreateMesh(gane,"Brick",1.0625,0.2,1.0625)
CreateWeld(gane,larm,gane,0,0.6,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

star = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateSpecialMesh(star,"http://www.roblox.com/asset/?id=45428961",2.5,2.5,2.5)
CreateWeld(star,larm,star,0,0.475,0.6,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
starl = CreateParta(m3,0,0,"SmoothPlastic",starcolor)
CreateSpecialMesh(starl,"http://www.roblox.com/asset/?id=45428961",1.95,2.55,1.95)
CreateWeld(starl,larm,starl,0,0.475,0.6,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))]]--

--- second ring


gan = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(gan,"Brick",1.075,0.1,1.075)
CreateWeld(gan,rarm,gan,0,0.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(gan,"Brick",1.075,0.1,1.075)
CreateWeld(gan,rarm,gan,0,0.75,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))



gan = CreateParta(m2,0,0,"Neon",halocolor2)
CreateMesh(gan,"Brick",1.095,0.035,1.095)
CreateWeld(gan,rarm,gan,0,0.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m2,0,0,"Neon",halocolor2)
CreateMesh(gan,"Brick",1.095,0.035,1.095)
CreateWeld(gan,rarm,gan,0,0.75,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gane = CreateParta(m3,0,0,"SmoothPlastic",lunacolor2)
CreateMesh(gane,"Brick",1.0625,0.2,1.0625)
CreateWeld(gane,rarm,gane,0,0.6,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

star = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateSpecialMesh(star,"http://www.roblox.com/asset/?id=45428961",2.5,2.5,2.5)
CreateWeld(star,rarm,star,0,-0.475,0.6,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
starl = CreateParta(m3,0,0,"SmoothPlastic",starcolor)
CreateSpecialMesh(starl,"http://www.roblox.com/asset/?id=45428961",1.95,2.55,1.95)
CreateWeld(starl,rarm,starl,0,-0.475,0.6,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))



for i, v in pairs(m:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = BrickColor.new("Really black")
v.Material = "Glass"
end
end
for i, v in pairs(m2:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = BrickColor.new("Crimson")
v.Material = "Granite"
end
end
for i, v in pairs(m3:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = BrickColor.new("Really red")
v.Material = "Neon"
end
end
for i, v in pairs(mw2:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = BrickColor.new("Really red")
v.Material = "Neon"
end
end
for i, v in pairs(mw1:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 1
v.BrickColor = BrickColor.new("Really red")
v.Material = "Neon"
end
end
for i, v in pairs(extrawingmod1:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 1
v.BrickColor = BrickColor.new("White")
v.Material = "Neon"
end
end
for i, v in pairs(extrawingmod2:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 1
v.BrickColor = BrickColor.new("White")
v.Material = "Neon"
end
end
local MAINRUINCOLOR = BrickColor.new("Really red")
------


function RemoveOutlines(part)
  part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
  local Part = Create("Part")({
    Parent = Parent,
    Reflectance = Reflectance,
    Transparency = Transparency,
    CanCollide = false,
    Locked = true,
    BrickColor = BrickColor.new(tostring(BColor)),
    Name = Name,
    Size = Size,
    Material = Material
  })
  Part.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
  RemoveOutlines(Part)
  return Part
end
function CreateMesha(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  local Msh = Create(Mesh)({
    Parent = Part,
    Offset = OffSet,
    Scale = Scale
  })
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end
function CreateWeld(Parent, Part0, Part1, C0, C1)
  local Weld = Create("Weld")({
    Parent = Parent,
    Part0 = Part0,
    Part1 = Part1,
    C0 = C0,
    C1 = C1
  })
  return Weld
end

Player = plr
Character=Player.Character 
PlayerGui=Player.PlayerGui 
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
local sine = 0
local change = 1

function RecolorTextAndRename(name,col1,col2,font)
modet.TextStrokeColor3 = col2
modet.TextColor3 = col1
modet.Font = font
modet.Text = name
techc.ImageColor3 = col2
circl.ImageColor3 = col2
circl2.ImageColor3 = col1
imgl2.ImageColor3 = col1
imgl2b.ImageColor3 = col2
ned.Text = name
ned.TextColor3 = col1
ned.TextStrokeColor3 = col2
end
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

local Stats=Instance.new("BoolValue")
Stats.Name="Stats"
Stats.Parent=Character
local Atk=Instance.new("NumberValue")
Atk.Name="Damage"
Atk.Parent=Stats
Atk.Value=1
local Def=Instance.new("NumberValue")
Def.Name="Defense"
Def.Parent=Stats
Def.Value=1
local Speed=Instance.new("NumberValue")
Speed.Name="Speed"
Speed.Parent=Stats
Speed.Value=1
local Mvmt=Instance.new("NumberValue")
Mvmt.Name="Movement"
Mvmt.Parent=Stats
Mvmt.Value=1

local donum=0
local ast = {744586075,385254610}

function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp=it("Part")
fp.formFactor=formfactor 
fp.Parent=parent
fp.Reflectance=reflectance
fp.Transparency=transparency
fp.CanCollide=false 
fp.Locked=true
fp.BrickColor=brickcolor
fp.Name=name
fp.Size=size
fp.Position=Torso.Position 
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh=it(Mesh) 
mesh.Parent=part
if Mesh=="SpecialMesh" then
mesh.MeshType=meshtype
if meshid~="nil" then
mesh.MeshId="http://www.roblox.com/asset/?id="..meshid
end
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part0,part1,c0)
local weld=it("Weld") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end
 
local Color1=Torso.BrickColor

local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")

--------- SazEreno's Artificial HB --------------
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")
Frame_Speed = 1 / 60
frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
			end
		lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

------------------
function swait(num)
if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, num do
			ArtificialHB.Event:wait()
		end
	end
end
-------- RAINBOW LEAVE IT TO ME
local r = 255
local g = 0
local b = 0
coroutine.resume(coroutine.create(function()
while wait() do
	for i = 0, 254/5 do
		swait()
		g = g + 5
	end
	for i = 0, 254/5 do
		swait()
		r = r - 5
	end
	for i = 0, 254/5 do
		swait()
		b = b + 5
	end
	for i = 0, 254/5 do
		swait()
		g = g - 5
	end
	for i = 0, 254/5 do
		swait()
		r = r + 5
	end
	for i = 0, 254/5 do
		swait()
		b = b - 5
	end
end
end))
 
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Really red")
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
local l1 = Instance.new("PointLight",w1)
l1.Color = Color3.new(170,0,0)
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new("Really red")
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
local l2 = Instance.new("PointLight",w2)
l2.Color = Color3.new(170,0,0)
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
 

function Damagefunc(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
  if hit.Parent == nil then
    return
  end
  local h = hit.Parent:FindFirstChildOfClass("Humanoid")
  for _, v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Head") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return
    end
    local c = Create("ObjectValue")({
      Name = "creator",
      Value = game:GetService("Players").jail_breakplayer,
      Parent = h
    })
    game:GetService("Debris"):AddItem(c, 0.5)
    if HitSound ~= nil and HitPitch ~= nil then
      CFuncs.Sound.Create(HitSound, hit, 1, HitPitch)
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
      HitHealth = h.Health
      h.MaxHealth = 100
      h.Health = h.Health - Damage
      if HitHealth ~= h.Health and HitHealth ~= 0 and 0 >= h.Health and h.Parent.Name ~= "Hologram" then
        print("gained kill")
        dmg(h.Parent)
      end
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
      end), hum)
      local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
      local bodvol = Create("BodyVelocity")({
        velocity = angle * knockback,
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      local rl = Create("BodyAngularVelocity")({
        P = 3000,
        maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
        angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    elseif Type == "Normal" then
      local vp = Create("BodyVelocity")({
        P = 500,
        maxForce = Vector3.new(math.huge, 0, math.huge),
        velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
      })
      if knockback > 0 then
        vp.Parent = hit.Parent.Head
      end
      game:GetService("Debris"):AddItem(vp, 0.5)
    elseif Type == "Up" then
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 1)
    elseif Type == "Leech" then
      local hum = hit.Parent.Humanoid
      if hum ~= nil then
        for i = 0, 2 do
          Effects.Sphere.Create(BrickColor.new("Bright red"), hit.Parent.Torso.CFrame * cn(0, 0, 0) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 15, 1, 0, 5, 0, 0.02)
        end
        Humanoid.Health = Humanoid.Health + 10
      end
    elseif Type == "UpKnock" then
      local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      if hum ~= nil then
        hitr = true
      end
      coroutine.resume(coroutine.create(function(HHumanoid)
        swait(5)
        HHumanoid.PlatformStand = false
        hitr = false
      end), hum)
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 1)
    elseif Type == "Snare" then
      local bp = Create("BodyPosition")({
        P = 2000,
        D = 100,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      game:GetService("Debris"):AddItem(bp, 1)
    elseif Type == "Slashnare" then
      Effects.Block.Create(BrickColor.new("Pastel Blue"), hit.Parent.Torso.CFrame * cn(0, 0, 0), 15*4, 15*4, 15*4, 3*4, 3*4, 3*4, 0.07)
      for i = 1, math.random(4, 5) do
        Effects.Sphere.Create(BrickColor.new("Teal"), hit.Parent.Torso.CFrame * cn(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 15, 1, 0, 5, 0, 0.02)
      end
      local bp = Create("BodyPosition")({
        P = 2000,
        D = 100,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      game:GetService("Debris"):AddItem(bp, 1)
    elseif Type == "Spike" then
      CreateBigIceSword(hit.Parent.Torso.CFrame)
      local bp = Create("BodyPosition")({
        P = 2000,
        D = 100,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      game:GetService("Debris"):AddItem(bp, 1)
    elseif Type == "Freeze" then
      local BodPos = Create("BodyPosition")({
        P = 50000,
        D = 1000,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      local BodGy = Create("BodyGyro")({
        maxTorque = Vector3.new(400000, 400000, 400000) * math.huge,
        P = 20000,
        Parent = hit.Parent.Torso,
        cframe = hit.Parent.Torso.CFrame
      })
      hit.Parent.Torso.Anchored = true
      coroutine.resume(coroutine.create(function(Part)
        swait(1.5)
        Part.Anchored = false
      end), hit.Parent.Torso)
      game:GetService("Debris"):AddItem(BodPos, 3)
      game:GetService("Debris"):AddItem(BodGy, 3)
    end
    local debounce = Create("BoolValue")({
      Name = "DebounceHit",
      Parent = hit.Parent,
      Value = true
    })
    game:GetService("Debris"):AddItem(debounce, Delay)
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = Player
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5)
  end
end
function ShowDamage(Pos, Text, Time, Color)
  local Rate = 0.03333333333333333
  local Pos = Pos or Vector3.new(0, 0, 0)
  local Text = Text or ""
  local Time = Time or 2
  local Color = Color or Color3.new(1, 0, 1)
  local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
  EffectPart.Anchored = true
  local BillboardGui = Create("BillboardGui")({
    Size = UDim2.new(3, 0, 3, 0),
    Adornee = EffectPart,
    Parent = EffectPart
  })
  local TextLabel = Create("TextLabel")({
    BackgroundTransparency = 1,
    Size = UDim2.new(1, 0, 1, 0),
    Text = Text,
    TextColor3 = Color,
    TextScaled = true,
    Font = Enum.Font.ArialBold,
    Parent = BillboardGui
  })
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
  end)
end
function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChildOfClass("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Head")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= Player.Name then
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "rbxassetid://231917784", 1)
        end
      end
    end
  end
end

function MagniDamageWithEffect(Part, magni, mindam, maxdam, knock, Type)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= Player.Name then
	MagicBlock(BrickColor.new("Pastel light blue"),head.CFrame,5,5,5,1,1,1,0.05)
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "rbxassetid://231917784", 1)
        end
      end
    end
  end
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function SkullEffect(brickcolor,cframe,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=4770583",vt(0,0,0),vt(x1,y1,z1))
--http://www.roblox.com/asset/?id=4770560
game:GetService("Debris"):AddItem(prt,2)
CF=prt.CFrame
coroutine.resume(coroutine.create(function(Part,Mesh,TehCF) 
for i=0,1,0.2 do
wait()
Part.CFrame=CF*cf(0,0,-0.4)
end
for i=0,1,delay do
wait()
--Part.CFrame=CF*cf((math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5)
Mesh.Scale=Mesh.Scale
end
for i=0,1,0.1 do
wait()
Part.Transparency=i
end
Part.Parent=nil
end),prt,msh,CF)
end
 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
prt.CFrame=prt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicBlockSteady(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicSphere(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
prt.CFrame=prt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicBlockSteady(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShock(brickcolor,cframe,x1,y1,x3,y3,delay,rottype)
local prt=part(3,char,1,1,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
local dec = decal(prt.Color,"http://www.roblox.com/asset/?id=874580939","Front",prt)
local dec2 = decal(prt.Color,"http://www.roblox.com/asset/?id=874580939","Front",prt)
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,0.01))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
dec.Transparency=i
dec2.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,0)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockAlt(brickcolor,cframe,x1,y1,x3,y3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,0.01))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,0)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockAltCircle(brickcolor,cframe,x1,z1,x3,z3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0.1,0)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,-0.1,0)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,0,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockTrailAlt(brickcolor,cframe,x1,y1,z1,x3,y3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,0)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockTrailAlt2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicBlock2(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,cframe)
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
wait()
Weld.C0=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cframe
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicBlock3(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,euler(0,0,0)*cf(0,0,0))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
wait()
Weld.C0=euler(i*20,0,0)
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicCircle2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
local prt2=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt2.Anchored=true
prt2.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2=mesh("SpecialMesh",prt2,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
game:GetService("Debris"):AddItem(prt2,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame*cf(0,0.5,0)
end
Part.Parent=nil
end),prt2,msh2)
end
for i=0,1,delay*2 do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=vt((x1+x3)-(x1+x3)*i,(y1+y3)-(y1+y3)*i,(z1+z3)-(z1+z3)*i)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()/10
rand1=math.random()/10
for i=0,1,rand1 do
wait()
CF=CF*cf(0,math.random()/2,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt,CF,Numbb,randnumb)
end
 
function MagicWaveThing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1051557",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(0,0.7,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function WaveEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*cf(0,y3/2,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function StravEffect(brickcolor,cframe,x,y,z,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x,y,z)
msh=mesh("SpecialMesh",prt,"FileMesh","rbxassetid://168892363",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,ex,why,zee) 
local num=math.random()
local num2=math.random(-3,2)+math.random()
local numm=0
for i=0,1,delay*2 do
swait()
Part.CFrame=cframe*euler(0,numm*num*10,0)*cf(ex,why,zee)*cf(-i*10,num2,0)
Part.Transparency=i
numm=numm+0.01
end
Part.Parent=nil
Mesh.Parent=nil
end),prt,msh,x,y,z)
end

function dmgstart(dmg,what)
	hitcon = what.Touched:connect(function(hit)
		local hum = hit.Parent:FindFirstChild("Humanoid")
		if hum and not hum:IsDescendantOf(Character) then
			hum:TakeDamage(dmg)
		end
	end)
end

function dmgstop()
	hitcon:disconnect()
end

function Cloak()
Face.Parent=nil
cloaked=true
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.2 do
                wait()
                v.Transparency=i
                end
                v.Transparency=1
                end))
                end
                if v.className=="Hat" then
                hatp=v.Handle
                coroutine.resume(coroutine.create(function(derp) 
                for i=0,1,0.2 do
                wait()
                derp.Transparency=i
                end
                derp.Transparency=1
                end),hatp)
                end
        end
        for _,v in pairs(m:children()) do
                if v.className=="Part" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.2 do
                wait()
                v.Transparency=i
                end
                v.Transparency=1
                end))
                end
        end
end
 
function UnCloak()
so("http://roblox.com/asset/?id=2767090",Torso,1,1.1) 
Face.Parent=Head 
cloaked=false
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.1 do
                wait()
                v.Transparency=v.Transparency-0.1
                end
                v.Transparency=0
                end))
                end
                if v.className=="Hat" then
                hatp=v.Handle
                coroutine.resume(coroutine.create(function(derp) 
                for i=0,1,0.1 do
                wait()
                derp.Transparency=derp.Transparency-0.1
                end
                derp.Transparency=0
                end),hatp)
                end
        end
        for _,v in pairs(m:children()) do
                if v.className=="Part" and v.Name~="hitbox" and v.Name~='tip' then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.1 do
                wait()
                v.Transparency=v.Transparency-0.1
                end
                v.Transparency=0
                end))
                v.Transparency=0
                end
        end
end

local origcolor = BrickColor.new("Pastel light blue")
---- This section of explosions.

----


function ring(type,pos,scale,value)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, 0)
end
rng:Destroy()
end))
end


function wave(type,pos,scale,value)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=20329976"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, scaler2)
end
rng:Destroy()
end))
end

function wind(type,pos,scale,value,speed)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=1051557"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.CFrame = rng.CFrame*CFrame.Angles(0,0.025*speed,0)
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, scaler2)
end
rng:Destroy()
end))
end

function groundwind(type,pos,scale,value,speed)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=1051557"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.CFrame = rng.CFrame*CFrame.Angles(0,0.025*speed,0)
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2/5, scaler2)
end
rng:Destroy()
end))
end

function CameraManager()
  if TwoD and not CamInterrupt then
    if Humanoid.Health > 0 then
      Camera.CameraSubject = Humanoid
      Camera.CameraType = "Scriptable"
      Humanoid.AutoRotate = false
      if Booleans.GyroUse then
        Directer.MaxTorque = Vec3(0, huge, 0)
      else
        Directer.MaxTorque = Vec3(0, 0, 0)
      end
      if TargetInfo[1] ~= nil and TargetInfo[2] ~= nil then
        if Booleans.CamFollow then
          CPart.CFrame = cFrame(RootPart.Position, Vec3(TargetInfo[1].Position.X, RootPart.Position.Y, TargetInfo[1].Position.Z))
          Directer.CFrame = cFrame((RootPart.CFrame * cFrame(0, 0, 10)).p, TargetInfo[1].Position)
        else
          CPart.Position = RootPart.Position
        end
      else
        local ahead = (RootPart.CFrame * cFrame(0, 0, -3)).p
        CPart.CFrame = cFrame(RootPart.Position, Vec3(ahead.X, RootPart.Position.Y, ahead.Z))
      end
      Camera.CFrame = lerp(Camera.CFrame, CPart.CFrame * cFrame(25, 3, 0) * Euler(0, radian(90), 0), 0.2)
    else
      Camera.CameraSubject = Humanoid
      Camera.CameraType = "Custom"
      Controller.Disabled = false
    end
  end
end

function ring(type,pos,scale,value)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, 0)
end
rng:Destroy()
end))
end


function wave(type,pos,scale,value)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=20329976"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, scaler2)
end
rng:Destroy()
end))
end

function sphere(bonuspeed,type,pos,scale,value,color)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
if ModeOfGlitch ~= 9 then
        rng.BrickColor = color
elseif ModeOfGlitch == 9 then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
end
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = scale
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if ModeOfGlitch == 9 then
coroutine.resume(coroutine.create(function()
while true do
swait()
if rng.Parent ~= nil then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
else
break
end
end
end))
end
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end

function sphere2(bonuspeed,type,pos,scale,value,value2,value3,color)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
if ModeOfGlitch ~= 9 then
        rng.BrickColor = color
elseif ModeOfGlitch == 9 then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
end
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = scale
local scaler2 = 1
local scaler2b = 1
local scaler2c = 1
if type == "Add" then
scaler2 = 1*value
scaler2b = 1*value2
scaler2c = 1*value3
elseif type == "Divide" then
scaler2 = 1/value
scaler2b = 1/value2
scaler2c = 1/value3
end
if ModeOfGlitch == 9 then
coroutine.resume(coroutine.create(function()
while true do
swait()
if rng.Parent ~= nil then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
else
break
end
end
end))
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
scaler2b = scaler2b - 0.01*value/bonuspeed
scaler2c = scaler2c - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
scaler2b = scaler2b - 0.01/value*bonuspeed
scaler2c = scaler2c - 0.01/value*bonuspeed
end
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2b*bonuspeed, scaler2c*bonuspeed)
end
rng:Destroy()
end))
end

function slash(bonuspeed,rotspeed,rotatingop,typeofshape,type,typeoftrans,pos,scale,value,color)
local type = type
local rotenable = rotatingop
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
if typeoftrans == "In" then
rng.Transparency = 1
end
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "FileMesh"
if typeofshape == "Normal" then
rngm.MeshId = "rbxassetid://662586858"
elseif typeofshape == "Round" then
rngm.MeshId = "rbxassetid://662585058"
end
rngm.Scale = scale
local scaler2 = 1/10
if type == "Add" then
scaler2 = 1*value/10
elseif type == "Divide" then
scaler2 = 1/value/10
end
local randomrot = math.random(1,2)
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed/10
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed/10
end
if rotenable == true then
if randomrot == 1 then
rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(rotspeed*bonuspeed/2),0)
elseif randomrot == 2 then
rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(-rotspeed*bonuspeed/2),0)
end
end
if typeoftrans == "Out" then
rng.Transparency = rng.Transparency + 0.01*bonuspeed
elseif typeoftrans == "In" then
rng.Transparency = rng.Transparency - 0.01*bonuspeed
end
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed/10, 0, scaler2*bonuspeed/10)
end
rng:Destroy()
end))
end

function PixelBlock(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
local speeder = FastSpeed/10
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
--rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end

function PixelBlockX(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
local speeder = FastSpeed/10
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end

function PixelBlockNeg(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 0
local speeder = FastSpeed/10
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder + 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
--rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end

function block(bonuspeed,type,pos,scale,value,value2,value3,color,color3)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.Color = color3
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = scale
local scaler2 = 1
local scaler2b = 1
local scaler2c = 1
if type == "Add" then
scaler2 = 1*value
scaler2b = 1*value2
scaler2c = 1*value3
elseif type == "Divide" then
scaler2 = 1/value
scaler2b = 1/value2
scaler2c = 1/value3
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
scaler2b = scaler2b - 0.01*value/bonuspeed
scaler2c = scaler2c - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
scaler2b = scaler2b - 0.01/value*bonuspeed
scaler2c = scaler2c - 0.01/value*bonuspeed
end
rng.CFrame = rng.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2b*bonuspeed, scaler2c*bonuspeed)
end
rng:Destroy()
end))
end

function sphereMK(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
if ModeOfGlitch ~= 9 then
        rng.BrickColor = color
elseif ModeOfGlitch == 9 then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
end
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if ModeOfGlitch == 9 then
coroutine.resume(coroutine.create(function()
while true do
swait()
if rng.Parent ~= nil then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
else
break
end
end
end))
end
local scaler2 = 1
local speeder = FastSpeed
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0)
end
rng:Destroy()
end))
end


function sphereMKCharge(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
if ModeOfGlitch ~= 9 then
        rng.BrickColor = color
elseif ModeOfGlitch == 9 then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
end
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 1
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if ModeOfGlitch == 9 then
coroutine.resume(coroutine.create(function()
while true do
swait()
if rng.Parent ~= nil then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
else
break
end
end
end))
end
local scaler2 = 1
local speeder = FastSpeed
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency - 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0)
end
rng:Destroy()
end))
end

function dmg(dude)
if dude.Name ~= Character then
local keptcolor = MAINRUINCOLOR
local bgf = Instance.new("BodyGyro",dude.Head)
bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
--[[local val = Instance.new("BoolValue",dude)
val.Name = "IsHit"]]--
local ds = coroutine.wrap(function()
dude:WaitForChild("Head"):BreakJoints()
for i, v in pairs(dude:GetChildren()) do
if v:IsA("Part") or v:IsA("MeshPart") then
v.Name = "DEMINISHED"
end
end
wait(0.5)
targetted = nil
CFuncs["Sound"].Create("rbxassetid://62339698", char, 0.75, 0.285)
coroutine.resume(coroutine.create(function()
for i, v in pairs(dude:GetChildren()) do
if v:IsA("Accessory") then
v:Destroy()
end
if v:IsA("Humanoid") then
v:Destroy()
end
if v:IsA("CharacterMesh") then
v:Destroy()
end
if v:IsA("Model") then
v:Destroy()
end
if v:IsA("Part") or v:IsA("MeshPart") then
for x, o in pairs(v:GetChildren()) do
if o:IsA("Decal") then
o:Destroy()
end
end
coroutine.resume(coroutine.create(function()
v.Material = "Neon"
v.CanCollide = false
v.Anchored = false
local bld = Instance.new("ParticleEmitter",v)
bld.LightEmission = 0.75
bld.Texture = "rbxassetid://363275192" ---284205403
bld.Color = ColorSequence.new(keptcolor.Color)
bld.Rate = 500
bld.Lifetime = NumberRange.new(1)
bld.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(0.8,2.25,0),NumberSequenceKeypoint.new(1,0,0)})
bld.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(0.8,0.75,0),NumberSequenceKeypoint.new(1,1,0)})
bld.Speed = NumberRange.new(2,5)
bld.VelocitySpread = 50000
bld.Rotation = NumberRange.new(-500,500)
bld.RotSpeed = NumberRange.new(-500,500)
        local sbs = Instance.new("BodyPosition", v)
        sbs.P = 3000
        sbs.D = 1000
        sbs.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
        sbs.position = v.Position + Vector3.new(math.random(-2,2),10 + math.random(-2,2),math.random(-2,2))
v.Color = keptcolor.Color
coroutine.resume(coroutine.create(function()
for i = 0, 49 do
swait(1)
v:BreakJoints()
v.Transparency = v.Transparency + 0.02
end
v:BreakJoints()
sphere2(1,"Add",v.CFrame,vt(0,0,0),0.1,0.1,0.1,keptcolor)
CFuncs["Sound"].Create("rbxassetid://1192402877", v, 0.5, 0.75)
bld.Speed = NumberRange.new(10,25)
bld.Drag = 5
bld.Acceleration = vt(0,2,0)
wait(0.5)
bld.Enabled = false
wait(8)
v:Destroy()
dude:Destroy()
end))
end))
end
end
end))
end)
ds()
end
end


function FindNearestHead(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return (SinglePlayer.Torso.CFrame.p - Position).magnitude < Distance
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") then
			if v:findFirstChild("Head") then
				if v ~= Character then
					if (v.Head.Position - Position).magnitude <= Distance then
						table.insert(List, v)
					end 
				end 
			end 
		end 
	end
	return List
end

function FaceMouse()
  Cam = workspace.CurrentCamera
  return {
    print("ok")
  }
end

function FaceMouse2()
  Cam = workspace.CurrentCamera
  return {
    CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)),
    Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
  }
end

local ModeOfGlitch = 1
-- Functions are ready.
local storehumanoidWS = 16

function CorruptBlink()
for i = 0, 14 do
PixelBlock(3,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.03,MAINRUINCOLOR,0)
end
sphere(10,"Add",root.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
CFuncs["Sound"].Create("rbxassetid://1177785010", root, 10,1)
RootPart.CFrame = mouse.Hit *CFrame.new(0,2,0)
CameraEnshaking(2,10)
for i, v in pairs(FindNearestHead(Torso.CFrame.p, 20)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
for i = 0, 14 do
PixelBlock(3,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.03,MAINRUINCOLOR,0)
end
sphere(10,"Add",root.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
end
function PureBomb()
attack = true
hum.WalkSpeed = 0
local orb = Instance.new("Part", char)
        orb.Anchored = true
        orb.BrickColor = BrickColor.new("Toothpaste")
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 0
        orb.TopSurface = 0
        orb.BottomSurface = 0
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = vt(0,0,0)
local scaled = 0.1
local posid = 0
CFuncs["Sound"].Create("rbxassetid://136007472", orb, 1,1)
for i = 0, 5, 0.1 do
swait()
scaled = scaled - 0.001
posid = posid - scaled
orb.CFrame = rarm.CFrame*CFrame.new(0,-0.1+posid/1.05,0)
local scaled = 0.1
orbm.Scale = orbm.Scale + vt(scaled,scaled,scaled)
sphereMKCharge(5,-0.25,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,5,-0.005,BrickColor.new("Toothpaste"),10)
PixelBlockNeg(2,1,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.01,BrickColor.new("Toothpaste"),0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(180),math.rad(20),math.rad(0)),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.1)
end
for i = 0, 2, 0.1 do
swait()
orb.CFrame = rarm.CFrame*CFrame.new(0,-0.1+posid/1.05,0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.4)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(-50)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(20)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(220),math.rad(20),math.rad(0)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.4)
end
coroutine.resume(coroutine.create(function()
orb.Anchored = false
CFuncs["Sound"].Create("rbxassetid://260433768", root, 1.25,1)
	local a = Instance.new("Part",workspace)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("Bright red")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	   print("ok")
	) 
	local ignore = orb
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (orb.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, 0)
orb.CFrame = a.CFrame
a:Destroy()
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = orb.CFrame.lookVector*125
bv.Parent = orb
local hitted = false
game:GetService("Debris"):AddItem(orb, 15)
wait()
local hit =orb.Touched:connect(function(hit) 
	if hitted == false then
	hitted = true
CameraEnshaking(10,2.5)
CFuncs["Sound"].Create("rbxassetid://151304356", orb, 5,1)
	MagniDamage(orb, 65, 65,90, 0, "Normal")
sphere(1,"Add",orb.CFrame,vt(orbm.Scale.x,orbm.Scale.y,orbm.Scale.z),1,BrickColor.new("Toothpaste"))
sphere(2,"Add",orb.CFrame,vt(orbm.Scale.x,orbm.Scale.y,orbm.Scale.z),2,BrickColor.new("Toothpaste"))
for i = 0, 49 do
PixelBlock(1,math.random(1,30),"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),4,4,4,0.08,BrickColor.new("Toothpaste"),0)
end
for i = 0, 9 do
sphereMK(1,2.5,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,50,-0.05,BrickColor.new("Toothpaste"),0)
sphereMK(2,5,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,50,-0.05,BrickColor.new("Toothpaste"),0)
end
orb.Anchored = true
orb.Transparency = 1
wait(8)
orb:Destroy()
end
end)
end))
for i = 0, 1, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.4)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(50)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-50)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(60),math.rad(20),math.rad(50)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.4)
end
hum.WalkSpeed = storehumanoidWS
attack = false
end

function BanishingOrb()
attack = true
hum.WalkSpeed = 0
local radm = math.random(1,3)
if radm == 1 then
bosschatfunc("Let it's go..",MAINRUINCOLOR.Color,1)
elseif radm == 2 then
bosschatfunc("So this is it..",MAINRUINCOLOR.Color,1)
elseif radm == 3 then
bosschatfunc("I have enough thing..",MAINRUINCOLOR.Color,1)
end
CFuncs["EchoSound"].Create("rbxassetid://1535994940", char, 5, 1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://1535994940", root, 60, 1,0,10,0.15,0.5,1)
local orb = Instance.new("Part", char)
        orb.Anchored = true
        orb.BrickColor = BrickColor.new("Lime green")
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 0
        orb.TopSurface = 0
        orb.BottomSurface = 0
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = vt(0,0,0)
local scaled = 0.1
local posid = 0
CFuncs["Sound"].Create("rbxassetid://136007472", orb, 1.5,0.9)
for i = 0, 5, 0.1 do
swait()
scaled = scaled - 0.001
posid = posid - scaled
orb.CFrame = rarm.CFrame*CFrame.new(0,-0.1+posid/1.05,0)
local scaled = 0.1
orbm.Scale = orbm.Scale + vt(scaled,scaled,scaled)
sphereMKCharge(5,-0.25,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,5,-0.005,BrickColor.new("Cool yellow"),10)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(180),math.rad(20),math.rad(0)),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.1)
end
for i = 0, 2, 0.1 do
swait()
orb.CFrame = rarm.CFrame*CFrame.new(0,-0.1+posid/1.05,0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.4)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(-50)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(20)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(220),math.rad(20),math.rad(0)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.4)
end
coroutine.resume(coroutine.create(function()
orb.Anchored = false
CFuncs["Sound"].Create("rbxassetid://260433768", root, 1.25,0.75)
	local a = Instance.new("Part",workspace)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("Lime green")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	    print("ok")
	) 
	local ignore = orb
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (orb.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, 0)
orb.CFrame = a.CFrame
a:Destroy()
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = orb.CFrame.lookVector*0
bv.Parent = orb
local hitted = false
local rate = 0
coroutine.resume(coroutine.create(function()
for i = 0, 24 do
wait(0.1)
rate = rate + 0.25
bv.velocity = bv.velocity + orb.CFrame.lookVector*rate
for i, v in pairs(FindNearestHead(orb.CFrame.p, 15)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
CFuncs["Sound"].Create("rbxassetid://1177785010", orb, 2.5,0.9)
sphere(2,"Add",orb.CFrame,vt(0,0,0),0.5,bc"Lime green")
sphere(3,"Add",orb.CFrame,vt(0,0,0),0.75,MAINRUINCOLOR)
end
orb.Anchored = true
orb.Transparency = 1
for i, v in pairs(FindNearestHead(orb.CFrame.p, 32)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
local eff = Instance.new("ParticleEmitter",orb)
eff.Texture = "rbxassetid://296874871"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(MAINRUINCOLOR.Color)
eff.Rate = 1000000000
eff.Lifetime = NumberRange.new(3)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,50,0),NumberSequenceKeypoint.new(0.1,10,0),NumberSequenceKeypoint.new(0.8,9,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(30)
eff.Acceleration = vt(0,-15,0)
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 100000
eff.RotSpeed = NumberRange.new(-500,500)
coroutine.resume(coroutine.create(function()
	wait(0.6)
	eff.Enabled = false
end))
CFuncs["Sound"].Create("rbxassetid://1177785010", orb, 8,0.6)
CFuncs["Sound"].Create("rbxassetid://438666141", orb, 7.5,0.9)
sphere(1,"Add",orb.CFrame,vt(0,0,0),0.75,bc"Lime green")
sphere(1.5,"Add",orb.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(2,"Add",orb.CFrame,vt(0,0,0),1.25,MAINRUINCOLOR)
game:GetService("Debris"):AddItem(orb, 15)
end))
end))
for i = 0, 1, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.4)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(50)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-50)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(60),math.rad(20),math.rad(50)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.4)
end
hum.WalkSpeed = storehumanoidWS
attack = false
end


function ChaosGroundStrike()
attack = true
for i = 0, 2, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(20)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(140),math.rad(0),math.rad(-20)),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(140),math.rad(0),math.rad(20)),.2)
end
CFuncs["Sound"].Create("rbxassetid://438666141", root, 7.5,1)
CFuncs["Sound"].Create("rbxassetid://1208650519", root, 7.5, 1)
CameraEnshaking(4,12)
for i, v in pairs(FindNearestHead(Torso.CFrame.p, 52.5)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
sphere(5,"Add",root.CFrame*CFrame.new(0,-2.9,0),vt(0,0,0),1,BrickColor.random())
sphere(10,"Add",root.CFrame*CFrame.new(0,-2.9,0),vt(0,0,0),2,BrickColor.random())
sphere(1,"Add",root.CFrame*CFrame.new(0,-2.9,0),vt(100,0.1,100),0.01,BrickColor.random())
for i = 0, 2, 0.1 do
swait()
sphereMK(2.5,0.75,"Add",root.CFrame*CFrame.new(math.random(-52.5,52.5),-5,math.random(-52.5,52.5))*CFrame.Angles(math.rad(90 + math.rad(math.random(-45,45))),math.rad(math.random(-45,45)),math.rad(math.random(-45,45))),2.5,2.5,25,-0.025,BrickColor.random(),0)
sphereMK(2.5,0.75,"Add",root.CFrame*CFrame.new(math.random(-52.5,52.5),-5,math.random(-52.5,52.5))*CFrame.Angles(math.rad(90 + math.rad(math.random(-45,45))),math.rad(math.random(-45,45)),math.rad(math.random(-45,45))),2.5,2.5,25,-0.025,BrickColor.random(),0)
RH.C0=clerp(RH.C0,cf(1,-1,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(10)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(10)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(30)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(-30)),.4)
end
attack = false
end



function Starfall()
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://136007472", root, 5, 1)
for i = 0, 5, 0.1 do
swait()
PixelBlockNeg(1,math.random(1,2),"Add",sorb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
PixelBlockNeg(1,math.random(1,2),"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(-5 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(70 + 2.5 * math.cos(sine / 28))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(-70 - 2.5 * math.cos(sine / 28))),.1)
end
local Overed = false
CameraEnshaking(2,20)
sphere(1.5,"Add",sorb.CFrame,vt(0,0,0),0.25,MAINRUINCOLOR)
sphere(1.5,"Add",sorb2.CFrame,vt(0,0,0),0.25,MAINRUINCOLOR)
sphere(5,"Add",root.CFrame,vt(0,0,0),12.5,MAINRUINCOLOR)
CFuncs["Sound"].Create("rbxassetid://1177785010", char, 1, 1)
local orb = Instance.new("Part", char)
        orb.Anchored = true
        orb.BrickColor = BrickColor.new("Toothpaste")
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Remenant"
        orb.Material = "Neon"
orb.CFrame = root.CFrame*CFrame.new(0,150,0)
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 1
        orb.TopSurface = 0
        orb.BottomSurface = 0
hum.WalkSpeed = storehumanoidWS
coroutine.resume(coroutine.create(function()
for i = 0, 9 do
swait(10)
				 local lb = Instance.new("Part")
    lb.Color = MAINRUINCOLOR.Color
     lb.CanCollide = false
lb.Material = "Neon"
     lb.Anchored = true
lb.TopSurface = 0
        lb.BottomSurface = 0
     lb.Transparency = 0
     lb.Size = vt(1,1,1)
     lb.CFrame = orb.CFrame*CFrame.new(math.random(-150,150),0,math.random(-150,150))*CFrame.Angles(math.rad(-90 + math.random(-15,15)),0,math.rad(math.random(-15,15)))
lb.Anchored = false
  lb.Parent = char
local thingery = Instance.new("SpecialMesh",lb)
     thingery.MeshType = "Sphere"
thingery.Scale = vt(20,20,20)
game:GetService("Debris"):AddItem(lb, 10)
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = lb.CFrame.lookVector*math.random(75,250)
  bv.Parent = lb
sphere(2.5,"Add",lb.CFrame,vt(50,50,0),0.25,MAINRUINCOLOR)
sphere(5,"Add",lb.CFrame,vt(50,50,0),0.5,MAINRUINCOLOR)
CFuncs["Sound"].Create("rbxassetid://633627961",lb, 5, 1)
CFuncs["Sound"].Create("rbxassetid://1002081188", lb, 5, 1)
CFuncs["Sound"].Create("rbxassetid://741272936", lb, 5, 1)
CFuncs["Sound"].Create("rbxassetid://1192402877", lb, 5, 1)
local hitted = false
coroutine.resume(coroutine.create(function()
while true do
swait(1)
if lb.Parent ~= nil and hitted == false then
PixelBlockNeg(5,math.random(1,2),"Add",lb.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),10,10,10,0.1,MAINRUINCOLOR,-2)
elseif lb.Parent == nil then
break
end
end
end))

game:GetService("Debris"):AddItem(a, 0.1)

coroutine.resume(coroutine.create(function()
swait(1)
lb.Touched:connect(function(hit)
if hitted == false then
hitted = true
lb.Transparency = 1
lb.Anchored = true
CFuncs["Sound"].Create("rbxassetid://1177785010", lb, 5, 1)
CFuncs["Sound"].Create("rbxassetid://192410089", lb, 5, 0.7)
CFuncs["Sound"].Create("rbxassetid://579687077", lb, 2.5, 0.75)
CFuncs["Sound"].Create("rbxassetid://1060191237", lb, 3, 0.75)
CFuncs["Sound"].Create("rbxassetid://164881112", lb, 5, 1)
CFuncs["Sound"].Create("rbxassetid://429123896", lb, 3.5, 0.85)
MagniDamage(lb, 45, 45,85, 0, "Normal")
CameraEnshaking(1,5)
sphere(8,"Add",lb.CFrame,vt(20,20,20),1,MAINRUINCOLOR)
sphere(16,"Add",lb.CFrame,vt(20,20,20),2,MAINRUINCOLOR)
for i = 0, 9 do
sphereMK(1,math.random(1,3),"Add",lb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,50,-0.1,MAINRUINCOLOR,0)
end
for i = 0, 49 do
swait()
MagniDamage(lb, 30, 2,4, 0, "Normal")
PixelBlock(4,math.random(1,30),"Add",lb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),16,16,16,0.16,MAINRUINCOLOR,0)
end
end
end)
end))
end
Overed = true
orb:Destroy()
end))

attack = false
end

function StarfallEX()
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://136007472", root, 5, 0.7)
for i = 0, 10, 0.1 do
swait()
PixelBlockNeg(1,math.random(1,2),"Add",sorb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
PixelBlockNeg(1,math.random(1,2),"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(-5 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(70 + 2.5 * math.cos(sine / 28))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(-70 - 2.5 * math.cos(sine / 28))),.1)
end
local Overed = false
CameraEnshaking(2,20)
sphere(1.5,"Add",sorb.CFrame,vt(0,0,0),0.5,MAINRUINCOLOR)
sphere(1.5,"Add",sorb2.CFrame,vt(0,0,0),0.5,MAINRUINCOLOR)
sphere(5,"Add",root.CFrame,vt(0,0,0),2.5,MAINRUINCOLOR)
CFuncs["Sound"].Create("rbxassetid://1177785010", char, 1, 0.9)
local orb = Instance.new("Part", char)
        orb.Anchored = true
        orb.BrickColor = BrickColor.new("Toothpaste")
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Remenant"
        orb.Material = "Neon"
orb.CFrame = root.CFrame*CFrame.new(0,250,0)
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 1
        orb.TopSurface = 0
        orb.BottomSurface = 0
hum.WalkSpeed = storehumanoidWS
coroutine.resume(coroutine.create(function()
for i = 0, 4 do
swait(15)
				 local lb = Instance.new("Part")
    lb.Color = MAINRUINCOLOR.Color
     lb.CanCollide = false
lb.Material = "Neon"
     lb.Anchored = true
lb.TopSurface = 0
        lb.BottomSurface = 0
     lb.Transparency = 0
     lb.Size = vt(1,1,1)
     lb.CFrame = orb.CFrame*CFrame.new(math.random(-150,150),0,math.random(-150,150))*CFrame.Angles(math.rad(-90 + math.random(-15,15)),0,math.rad(math.random(-15,15)))
lb.Anchored = false
  lb.Parent = char
local thingery = Instance.new("SpecialMesh",lb)
     thingery.MeshType = "Sphere"
thingery.Scale = vt(50,50,50)
game:GetService("Debris"):AddItem(lb, 10)
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = lb.CFrame.lookVector*math.random(50,420)
  bv.Parent = lb
sphere(2.5,"Add",lb.CFrame,vt(100,100,0),0.25,MAINRUINCOLOR)
sphere(5,"Add",lb.CFrame,vt(100,100,0),0.5,MAINRUINCOLOR)
CFuncs["Sound"].Create("rbxassetid://633627961",lb, 5, 0.9)
CFuncs["Sound"].Create("rbxassetid://1002081188", lb, 5, 0.9)
CFuncs["Sound"].Create("rbxassetid://741272936", lb, 5, 0.9)
CFuncs["Sound"].Create("rbxassetid://1192402877", lb, 5, 0.9)
local hitted = false
coroutine.resume(coroutine.create(function()
while true do
swait(1)
if lb.Parent ~= nil and hitted == false then
PixelBlockNeg(5,math.random(1,2),"Add",lb.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),25,25,25,0.25,MAINRUINCOLOR,-2)
elseif lb.Parent == nil then
break
end
end
end))

game:GetService("Debris"):AddItem(a, 0.1)

coroutine.resume(coroutine.create(function()
swait(1)
lb.Touched:connect(function(hit)
if hitted == false then
hitted = true
lb.Transparency = 1
lb.Anchored = true
CFuncs["Sound"].Create("rbxassetid://1177785010", lb, 5, 0.9)
CFuncs["Sound"].Create("rbxassetid://192410089", lb, 5, 0.6)
CFuncs["Sound"].Create("rbxassetid://579687077", lb, 2.5, 0.65)
CFuncs["Sound"].Create("rbxassetid://1060191237", lb, 3, 0.65)
CFuncs["Sound"].Create("rbxassetid://164881112", lb, 5, 0.9)
CFuncs["Sound"].Create("rbxassetid://429123896", lb, 3.5, 0.75)
MagniDamage(lb, 50, 60,99, 0, "Normal")
CameraEnshaking(1,5)
sphere(4,"Add",lb.CFrame,vt(50,50,50),2,MAINRUINCOLOR)
sphere(8,"Add",lb.CFrame,vt(50,50,50),4,MAINRUINCOLOR)
for i = 0, 9 do
sphereMK(1,math.random(1,3),"Add",lb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,100,-0.1,MAINRUINCOLOR,0)
end
for i = 0, 99 do
swait()
MagniDamage(lb, 30, 6,18, 0, "Normal")
PixelBlock(4,math.random(1,30),"Add",lb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),32,32,32,0.32,MAINRUINCOLOR,0)
end
end
end)
end))
end
Overed = true
orb:Destroy()
end))

attack = false
end

function DivineBlast()
attack = true
bosschatfunc("Justice Beam!!",MAINRUINCOLOR.Color,0.7)
hum.WalkSpeed = 0
local elocacenter = CreateParta(sorb,1,1,"SmoothPlastic",BrickColor.random())
elocacenter.Anchored = true
elocacenter.CFrame = sorb.CFrame
local eloca1 = CreateParta(elocacenter,1,1,"SmoothPlastic",BrickColor.random())
eloca1.Anchored = true
eloca1.CFrame = elocacenter.CFrame
local eloca2 = CreateParta(elocacenter,1,1,"SmoothPlastic",BrickColor.random())
eloca2.Anchored = true
eloca2.CFrame = elocacenter.CFrame
local eloca3 = CreateParta(elocacenter,1,1,"SmoothPlastic",BrickColor.random())
eloca3.Anchored = true
eloca3.CFrame = elocacenter.CFrame
local eloca4 = CreateParta(elocacenter,1,1,"SmoothPlastic",BrickColor.random())
eloca4.Anchored = true
eloca4.CFrame = elocacenter.CFrame
local lookavec = 0 
local speeds = 0
CFuncs["Sound"].Create("rbxassetid://1192402877", sorb, 1.5, 1)
for i = 0, 3, 0.1 do
swait()
---
lookavec = lookavec + 0.1
speeds = speeds + 10
elocacenter.CFrame = sorb.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)

eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)

eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,0.1,"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)

eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,0.1,"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)
---
root.CFrame = FaceMouse()[1]
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0.1 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2.5 * math.cos(sine / 28)),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.1 * math.cos(sine / 28),0.45)*angles(math.rad(-30),math.rad(0),math.rad(30)),.1)
end
for i = 0, 3, 0.1 do
swait()
---
speeds = speeds + 10
elocacenter.CFrame = sorb.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)

eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)

eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,0.1,"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)

eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,0.1,"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)
---
root.CFrame = FaceMouse()[1]
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0.1 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2.5 * math.cos(sine / 28)),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.1 * math.cos(sine / 28),0.45)*angles(math.rad(-30),math.rad(0),math.rad(30)),.1)
end
CFuncs["Sound"].Create("rbxassetid://136007472", sorb, 1,1)
CFuncs["Sound"].Create("rbxassetid://1436239652", char, 40,1)
for i = 0, 3, 0.1 do
swait()
---
speeds = speeds + 10
elocacenter.CFrame = sorb.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)

eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)

eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,0.1,"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)

eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,0.1,"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)
---
root.CFrame = FaceMouse()[1]
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0.1 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(40)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2.5 * math.cos(sine / 28)),math.rad(0),math.rad(-40)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(40)),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.1 * math.cos(sine / 28),0.45)*angles(math.rad(-30),math.rad(0),math.rad(30)),.1)
end
coroutine.resume(coroutine.create(function()
local a = Instance.new("Part",Character)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("White")
a.Material = "Neon"
a.Transparency = 0
a.Shape = "Cylinder"
	a.CanCollide = false
local a2 = Instance.new("Part",Character)
	a2.Name = "Direction"	
	a2.Anchored = true
	a2.BrickColor = bc("Bright yellow")
a2.Material = "Neon"
a2.Transparency = 0
a2.Shape = "Cylinder"
	a2.CanCollide = false
local b = Instance.new("Part",Character)
	b.Name = "HitDirect"	
	b.Anchored = true
	b.BrickColor = bc("Cool yellow")
b.Material = "Neon"
b.Transparency = 1
	b.CanCollide = false
	local ray = Ray.new(
	    print("ok")
	) 
	local ignore = Character
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	a2.BottomSurface = 10
	a2.TopSurface = 10
	local distance = (elocacenter.CFrame.p - position).magnitude
	a.Size = Vector3.new(distance, 1, 1)
	a.CFrame = CFrame.new(elocacenter.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
	a2.Size = Vector3.new(distance, 1, 1)
	a2.CFrame = CFrame.new(elocacenter.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
b.CFrame = CFrame.new(elocacenter.CFrame.p, position) * CFrame.new(0, 0, -distance)
a.CFrame = a.CFrame*CFrame.Angles(0,math.rad(90),0)
a2.CFrame = a2.CFrame*CFrame.Angles(0,math.rad(90),0)
game:GetService("Debris"):AddItem(a, 10)
game:GetService("Debris"):AddItem(a2, 10)
game:GetService("Debris"):AddItem(b, 10)
local eff = Instance.new("ParticleEmitter",b)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(Color3.new(1,1,0))
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(20,250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
coroutine.resume(coroutine.create(function()
wait(0.25)
eff.Enabled = false
end))
local msh = Instance.new("SpecialMesh",a)
msh.MeshType = "Cylinder"
msh.Scale = vt(1,2,2)
local msh2 = Instance.new("SpecialMesh",a2)
msh2.MeshType = "Cylinder"
msh2.Scale = vt(1,2.5,2.5)
CFuncs["Sound"].Create("rbxassetid://376970418", sorb, 2, 0.75)
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
msh.Scale = msh.Scale + vt(0,0.05,0.05)
a.Transparency = a.Transparency + 0.025
msh2.Scale = msh2.Scale + vt(0,0.25,0.25)
a2.Transparency = a2.Transparency + 0.05
end
a:Destroy()
a2:Destroy()
end))
CFuncs["Sound"].Create("rbxassetid://1177785010", b, 3, 1)
CFuncs["Sound"].Create("rbxassetid://192410089", b, 3, 0.7)
CFuncs["Sound"].Create("rbxassetid://579687077", b, 0.5, 0.75)
CFuncs["Sound"].Create("rbxassetid://1060191237", b, 1, 0.75)
CFuncs["Sound"].Create("rbxassetid://164881112", b, 3, 1)
CFuncs["Sound"].Create("rbxassetid://429123896", b, 1.5, 0.85)
MagniDamage(b, 25, 40,65, 0, "Normal")
for i = 0, 49 do
PixelBlock(2,math.random(10,20),"Add",b.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),4,4,4,0.04,BrickColor.new("Bright yellow"),0)
PixelBlock(1,math.random(1,10),"Add",b.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),4,4,4,0.08,BrickColor.new("Bright yellow"),0)
end
sphere(1,"Add",b.CFrame,vt(4,4,4),0.1,BrickColor.new("White"))
sphere(1,"Add",b.CFrame,vt(5,5,5),0.25,BrickColor.new("Bright yellow"))
sphere(1,"Add",b.CFrame,vt(5,5,5),0.5,BrickColor.new("Bright yellow"))
sphere(2,"Add",b.CFrame,vt(5,5,5),0.5,BrickColor.new("Bright yellow"))
sphere(3,"Add",b.CFrame,vt(5,5,5),0.5,BrickColor.new("Bright yellow"))
sphere(4,"Add",b.CFrame,vt(5,5,5),0.5,BrickColor.new("Bright yellow"))
end))
game:GetService("Debris"):AddItem(elocacenter, 5)
hum.WalkSpeed = storehumanoidWS
attack = false
end

function StarDivision()
attack = true
CFuncs["Sound"].Create("rbxassetid://136007472", root, 2, 1.5)
for i = 0, 2, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2.5 * math.cos(sine / 28)),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.6)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.1 * math.cos(sine / 28),0.45)*angles(math.rad(-30),math.rad(0),math.rad(30)),.1)
end
local orb = Instance.new("Part", char)
        orb.BrickColor = MAINRUINCOLOR
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 0
        orb.TopSurface = 0
        orb.BottomSurface = 0
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = vt(2,2,2)
local a = Instance.new("Part",workspace)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("Bright red")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	   print("ok")
	) 
	local ignore = sorb
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (sorb.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(sorb.CFrame.p, position) * CFrame.new(0, 0, 0)
orb.CFrame = a.CFrame
a:Destroy()
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = orb.CFrame.lookVector*100
bv.Parent = orb
local hitted = false
game:GetService("Debris"):AddItem(orb, 10)
CFuncs["Sound"].Create("rbxassetid://376970418",orb, 1.5, 1.15)
CFuncs["Sound"].Create("rbxassetid://633627961",orb, 1, 1.15)
CFuncs["Sound"].Create("rbxassetid://1002081188", orb, 1, 1.15)
CFuncs["Sound"].Create("rbxassetid://741272936", orb, 1, 1.15)
CFuncs["Sound"].Create("rbxassetid://1192402877", orb, 1, 1.15)
coroutine.resume(coroutine.create(function()
while true do
swait(1)
if orb.Parent ~= nil and hitted == false then
PixelBlockNeg(1,math.random(1,2),"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),1,1,1,0.02,MAINRUINCOLOR,-2)
elseif orb.Parent == nil then
break
end
end
end))
coroutine.resume(coroutine.create(function()
swait(1)
orb.Touched:connect(function(hit)
if hitted == false then
hitted = true
game:GetService("Debris"):AddItem(orb, 5)
orb.Transparency = 1
orb.Anchored = true
local elocacenter = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
elocacenter.Anchored = true
elocacenter.CFrame = orb.CFrame
elocacenter.Orientation = vt(0,0,0)
local eloca1 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
eloca1.Anchored = true
eloca1.CFrame = elocacenter.CFrame
local eloca2 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
eloca2.Anchored = true
eloca2.CFrame = elocacenter.CFrame
local eloca3 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
eloca3.Anchored = true
eloca3.CFrame = elocacenter.CFrame
local eloca4 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
eloca4.Anchored = true
eloca4.CFrame = elocacenter.CFrame
local lookavec = 0 
local speeds = 0
CameraEnshaking(1,1)
CFuncs["Sound"].Create("rbxassetid://419447292", elocacenter, 10,1)
sphere(1,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(2,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(3,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(4,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(5,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
for i = 0, 99 do
swait()
lookavec = lookavec + 1
speeds = speeds + 0.1
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,math.random(1,2),"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,math.random(1,2),"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,math.random(1,2),"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,math.random(1,2),"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)
end

for i = 0, 149 do
swait()
speeds = speeds + 0.1
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,math.random(1,2),"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,math.random(1,2),"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,math.random(1,2),"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,math.random(1,2),"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)
end
for i, v in pairs(FindNearestHead(elocacenter.CFrame.p, 125)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
CameraEnshaking(7,30)
MagniDamage(elocacenter, 225, 50,75, 0, "Normal")
CFuncs["Sound"].Create("rbxassetid://468991944", char, 4, 1)
CFuncs["Sound"].Create("rbxassetid://533636230", char, 5, 0.75)
CFuncs["Sound"].Create("rbxassetid://419447292", char, 1,1)
CFuncs["Sound"].Create("rbxassetid://421328847", char, 1,1)
sphere(1,"Add",elocacenter.CFrame,vt(125,90000,125),-0.25,MAINRUINCOLOR)
sphere(1,"Add",elocacenter.CFrame,vt(125,90000,125),0.5,MAINRUINCOLOR)
sphere(1,"Add",elocacenter.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(2,"Add",elocacenter.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(3,"Add",elocacenter.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(4,"Add",elocacenter.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(5,"Add",elocacenter.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
for i = 0, 24 do
sphereMK(1,2,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,100,-0.5,MAINRUINCOLOR,0)
sphereMK(2,4,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,75,-0.25,MAINRUINCOLOR,0)
sphereMK(3,6,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,50,-0.25,MAINRUINCOLOR,0)
sphereMK(4,8,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,25,-0.25,MAINRUINCOLOR,0)
end
coroutine.resume(coroutine.create(function()
for i = 0, 499 do
swait(1)
MagniDamage(elocacenter, 90, 1,5, 0, "Normal")
PixelBlockNeg(2,math.random(1,10),"Add",elocacenter.CFrame*CFrame.new(math.random(-75,75),0,math.random(-75,75))*CFrame.Angles(math.rad(90 + math.random(-30,30)),math.rad(math.random(-30,30)),math.rad(math.random(-30,30))),15,15,15,0.15,MAINRUINCOLOR,-5)
end
elocacenter:Destroy()
eloca1:Destroy()
eloca2:Destroy()
eloca3:Destroy()
eloca4:Destroy()
end))
end
end)
end))
attack = false
end


function THE_TRUE_POWER_OF_VIOLENCE()
attack = true
hum.WalkSpeed = 0
bosschatfunc("ALL YOUR DESTINY...",MAINRUINCOLOR.Color,4)
for i = 0, 10, 0.1 do
swait()
PixelBlockNeg(1,math.random(1,2),"Add",sorb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 2 * math.cos(sine / 39))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 6 * math.cos(sine / 31))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(40)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-40)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(170),math.rad(0),math.rad(0)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-10),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.4)
end
local orb = Instance.new("Part", char)
        orb.BrickColor = MAINRUINCOLOR
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 0
        orb.TopSurface = 0
        orb.BottomSurface = 0
orb.CFrame = sorb.CFrame
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = vt(0,0,0)
        local sbs = Instance.new("BodyPosition", orb)
        sbs.P = 3000
        sbs.D = 1000
        sbs.maxForce = Vector3.new(50000000000, 10e10, 50000000000)
        sbs.position = RootPart.CFrame.p + Vector3.new(0, 250, 0)
CFuncs["Sound"].Create("rbxassetid://419447292", rarm, 5,1)
sphere(1,"Add",sorb.CFrame,vt(0,0,0),0.25,MAINRUINCOLOR)
sphere(2,"Add",sorb.CFrame,vt(0,0,0),0.25,MAINRUINCOLOR)
sphere(3,"Add",sorb.CFrame,vt(0,0,0),0.25,MAINRUINCOLOR)
sphere(4,"Add",sorb.CFrame,vt(0,0,0),0.25,MAINRUINCOLOR)
sphere(5,"Add",sorb.CFrame,vt(0,0,0),0.25,MAINRUINCOLOR)
for i = 0, 10, 0.1 do
swait()
PixelBlockNeg(1,0.01,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),6,6,6,0.12,MAINRUINCOLOR,0)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 2 * math.cos(sine / 39))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 6 * math.cos(sine / 31))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(60)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-60)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(170),math.rad(0),math.rad(0)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-10),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.6)
end
orb.Anchored = true
local elocacenter = CreateParta(orb,1,1,"SmoothPlastic",BrickColor.random())
elocacenter.Anchored = true
elocacenter.CFrame = orb.CFrame
elocacenter.Orientation = vt(0,0,0)
local eloca1 = CreateParta(orb,1,1,"SmoothPlastic",BrickColor.random())
eloca1.Anchored = true
eloca1.CFrame = elocacenter.CFrame
local eloca2 = CreateParta(orb,1,1,"SmoothPlastic",BrickColor.random())
eloca2.Anchored = true
eloca2.CFrame = elocacenter.CFrame
local eloca3 = CreateParta(orb,1,1,"SmoothPlastic",BrickColor.random())
eloca3.Anchored = true
eloca3.CFrame = elocacenter.CFrame
local eloca4 = CreateParta(orb,1,1,"SmoothPlastic",BrickColor.random())
eloca4.Anchored = true
eloca4.CFrame = elocacenter.CFrame
local lookavec = 0 
local speeds = 0
CameraEnshaking(1,1)
CFuncs["Sound"].Create("rbxassetid://1208650519", char, 3,1)
CFuncs["Sound"].Create("rbxassetid://419447292", char, 1.5,1)
CFuncs["Sound"].Create("rbxassetid://468991944", char, 2.5, 1)
CFuncs["Sound"].Create("rbxassetid://164881112", char, 2.5, 1)
sphere(1,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(2,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(3,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(4,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(5,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
for i = 0, 99 do
swait()
lookavec = lookavec + 2.5
speeds = speeds + 0.25
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,0,"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,0,"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,0,"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,0,"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)
end

for i = 0, 149 do
swait()
speeds = speeds + 0.25
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,0,"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,0,"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,0,"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,0,"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)
end
CFuncs["Sound"].Create("rbxassetid://1192402877", char, 5, 0.75)
for i = 0, 99 do
swait()
lookavec = lookavec - 2.5
speeds = speeds + 0.25
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,0,"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,0,"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,0,"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,0,"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)
end
local scaled = 0.1*75
CFuncs["Sound"].Create("rbxassetid://289315275", char, 2.5,1)
CFuncs["Sound"].Create("rbxassetid://1208650519", char, 2.5,1)
CFuncs["Sound"].Create("rbxassetid://419447292", char, 2.5,0.5)
CFuncs["Sound"].Create("rbxassetid://151304356", char, 1,0.5)
CFuncs["Sound"].Create("rbxassetid://164881112", char, 3.5, 0.75)
CFuncs["Sound"].Create("rbxassetid://1192402877", char, 2.5, 0.5)
sphere(1,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(2,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(3,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(4,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(5,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)

for i = 0, 10, 0.1 do
swait()
scaled = scaled - 0.001*75
orbm.Scale = orbm.Scale + vt(scaled,scaled,scaled)
PixelBlockNeg(1,math.random(1,2),"Add",sorb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 2 * math.cos(sine / 39))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 6 * math.cos(sine / 31))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(60)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-60)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(170),math.rad(0),math.rad(0)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-10),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.6)
end
bosschatfunc("WILL BE MINE!!!!",MAINRUINCOLOR.Color,2)
CFuncs["EchoSound"].Create("rbxassetid://1690476035", char, 10, 1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://1690476035", root, 60, 1,0,10,0.15,0.5,1)
for x = 0, 4 do
for i = 0, 9 do
sphereMK(0.5,0,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),10,10,100000,0,MAINRUINCOLOR,0)
end
CFuncs["Sound"].Create("rbxassetid://419447292", char, 5,0.75)
CFuncs["Sound"].Create("rbxassetid://164881112", char, 2.5, 0.5)
sphere(1,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(2,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(3,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(4,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(5,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
for i = 0, 5, 0.1 do
swait()
PixelBlockNeg(1,math.random(1,2),"Add",sorb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
PixelBlockNeg(1,math.random(1,2),"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 2 * math.cos(sine / 39))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 6 * math.cos(sine / 31))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(170),math.rad(0),math.rad(-10)),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(170),math.rad(0),math.rad(10)),.1)
end
end
local speedearn = 0
CFuncs["Sound"].Create("rbxassetid://136007472", char, 5,0.2)
CFuncs["Sound"].Create("rbxassetid://289315275", char, 5,0.75)
CFuncs["Sound"].Create("rbxassetid://163619849", char, 2.5, 0.25)
for i = 0, 30, 0.1 do
swait()
scaled = scaled - 0.001*75/10
speedearn = speedearn + 0.5
for i = 0, 4 do 
sphereMK(1+speedearn,speedearn,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,10*speedearn,-0.05,MAINRUINCOLOR,0)
end
PixelBlock(1,speedearn,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1*speedearn/10,1*speedearn/10,1*speedearn/10,0.02*speedearn/10,MAINRUINCOLOR,0)
orbm.Scale = orbm.Scale + vt(scaled,scaled,scaled)
PixelBlockNeg(1,math.random(1,2),"Add",sorb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
PixelBlockNeg(1,math.random(1,2),"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 2 * math.cos(sine / 39))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 6 * math.cos(sine / 31))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(0)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(170),math.rad(0),math.rad(-10)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(170),math.rad(0),math.rad(10)),.6)
end
orb.Transparency = 1
for i, v in pairs(FindNearestHead(elocacenter.CFrame.p, 125000000)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
CameraEnshaking(7,30)
MagniDamage(elocacenter, 9999999, 5000000,99999999, 0, "Normal")
CFuncs["Sound"].Create("rbxassetid://167115397", char, 5,1)
CFuncs["Sound"].Create("rbxassetid://289315275", char, 5,0.5)
CFuncs["Sound"].Create("rbxassetid://163619849", char, 3, 0.25)
CFuncs["Sound"].Create("rbxassetid://468991944", char, 10, 1)
CFuncs["Sound"].Create("rbxassetid://533636230", char, 10, 0.75)
CFuncs["Sound"].Create("rbxassetid://419447292", char, 6,1)
CFuncs["Sound"].Create("rbxassetid://421328847", char, 1,1)
CFuncs["Sound"].Create("rbxassetid://741272936", char, 5, 1)
CFuncs["Sound"].Create("rbxassetid://164881112", char, 5, 1)
CFuncs["Sound"].Create("rbxassetid://1192402877", char, 7.5, 0.5)
CFuncs["Sound"].Create("rbxassetid://429123896", char, 5, 0.85)
CFuncs["Sound"].Create("rbxassetid://1208650519", char, 5, 1)
CFuncs["Sound"].Create("rbxassetid://919941001", char, 5,1.05)
sphere(1,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(2,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(3,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(4,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(5,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
for i = 0, 99 do
PixelBlock(1,math.random(50,1000),"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),20,20,20,0.4,MAINRUINCOLOR,0)
PixelBlock(2,math.random(250,1000),"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),10,10,10,0.2,MAINRUINCOLOR,0)
end
for i = 0, 24 do
sphereMK(0.5,0,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),10,10,100000,0,MAINRUINCOLOR,0)
sphereMK(1,2,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,100,-0.5,MAINRUINCOLOR,0)
sphereMK(2,4,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,75,-0.25,MAINRUINCOLOR,0)
sphereMK(3,6,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,50,-0.25,MAINRUINCOLOR,0)
sphereMK(4,8,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,25,-0.25,MAINRUINCOLOR,0)
end
game:GetService("Debris"):AddItem(orb, 10)
hum.WalkSpeed = storehumanoidWS
attack = false
end


function ViolentRing()
attack = true
CFuncs["Sound"].Create("rbxassetid://136007472", rarm, 1, 1)
bosschatfunc("SHOULD I TAKE THAT EASIER?!",MAINRUINCOLOR.Color,0.7)
CFuncs["EchoSound"].Create("rbxassetid://1535994137", char, 4, 1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://1535994137", root, 7, 1,0,10,0.15,0.5,1)
for i = 0, 2, 0.1 do
swait()
local snap = math.random(1,10)
if snap == 1 then
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(-50 + math.random(-10,10))),1)
end
PixelBlockX(5,0.5,"Add",rarm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.01,MAINRUINCOLOR,0)
PixelBlockNeg(5,0.5,"Add",rarm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.01,MAINRUINCOLOR,0)
PixelBlockX(5,0.25,"Add",larm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.65,0.65,0.65,0.0065,MAINRUINCOLOR,0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.6)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(50)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-50)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(70),math.rad(20),math.rad(50)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.6)
RootPart.CFrame = FaceMouse()[1]
end
local orb = Instance.new("Part", char)
        orb.BrickColor = MAINRUINCOLOR
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 0
        orb.TopSurface = 0
        orb.BottomSurface = 0
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = vt(2,2,2)
orb.CFrame = mouse.Hit
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = orb.CFrame.lookVector*100
bv.Parent = orb
local hitted = false
coroutine.resume(coroutine.create(function()
game:GetService("Debris"):AddItem(orb, 5)
orb.Transparency = 1
orb.Anchored = true
local elocacenter = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
elocacenter.Anchored = true
elocacenter.CFrame = orb.CFrame
elocacenter.Orientation = vt(0,0,0)
local eloca1 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
eloca1.Anchored = true
eloca1.CFrame = elocacenter.CFrame
local eloca2 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
eloca2.Anchored = true
eloca2.CFrame = elocacenter.CFrame
local eloca3 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
eloca3.Anchored = true
eloca3.CFrame = elocacenter.CFrame
local eloca4 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
eloca4.Anchored = true
eloca4.CFrame = elocacenter.CFrame
local lookavec = 0 
local speeds = 0
CameraEnshaking(1,1)
CFuncs["Sound"].Create("rbxassetid://419447292", elocacenter, 10,1)
sphere(5,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(6,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(7,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(8,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(9,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
for i = 0, 24 do
swait()
lookavec = lookavec + 3.5
speeds = speeds + 1
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,math.random(1,2),"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,math.random(1,2),"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,math.random(1,2),"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,math.random(1,2),"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)
end

local risen = 0
for i = 0, 49 do
swait()
risen = risen + 0.05
speeds = speeds + 0.1
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,math.random(1+risen,2+risen),"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,math.random(1+risen,2+risen),"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,math.random(1+risen,2+risen),"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,math.random(1+risen,2+risen),"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)
end
for i, v in pairs(FindNearestHead(elocacenter.CFrame.p, 100)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
CameraEnshaking(4,10)
MagniDamage(elocacenter, 150, 50,75, 0, "Normal")
CFuncs["Sound"].Create("rbxassetid://468991944", char, 2, 1)
CFuncs["Sound"].Create("rbxassetid://533636230", char, 2.5, 0.75)
CFuncs["Sound"].Create("rbxassetid://419447292", char, 0.25,1)
CFuncs["Sound"].Create("rbxassetid://421328847", char, 0.25,1)
CFuncs["Sound"].Create("rbxassetid://919941001", char, 1.5,1.05)
local eff = Instance.new("ParticleEmitter",elocacenter)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(Color3.new(1,1,0))
eff.Rate = 1000000
eff.Lifetime = NumberRange.new(0.5,2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(20,250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 5000000
eff.RotSpeed = NumberRange.new(-50,50)
coroutine.resume(coroutine.create(function()
wait(1)
eff.Enabled = false
end))
sphere(1,"Add",elocacenter.CFrame,vt(100,90000,100),-0.25,MAINRUINCOLOR)
sphere(1,"Add",elocacenter.CFrame,vt(100,90000,100),0.5,MAINRUINCOLOR)
sphere(1,"Add",elocacenter.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(2,"Add",elocacenter.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(3,"Add",elocacenter.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(4,"Add",elocacenter.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(5,"Add",elocacenter.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(5,"Add",elocacenter.CFrame,vt(0,0,0),500,MAINRUINCOLOR)
for i = 0, 24 do
sphereMK(2,2,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,100,-0.25,MAINRUINCOLOR,0)
sphereMK(4,4,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,75,-0.25,MAINRUINCOLOR,0)
sphereMK(6,6,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,50,-0.25,MAINRUINCOLOR,0)
sphereMK(8,8,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,25,-0.25,MAINRUINCOLOR,0)
end
coroutine.resume(coroutine.create(function()
wait(10)
elocacenter:Destroy()
eloca1:Destroy()
eloca2:Destroy()
eloca3:Destroy()
eloca4:Destroy()
end))
end))
attack = false
end

function UniversalCollapse()
attack = true
local speedearn = 0
hum.WalkSpeed = 0
        local sbs = Instance.new("BodyPosition", root)
        sbs.P = 3000
        sbs.D = 1000
        sbs.maxForce = Vector3.new(50000000000, 10e10, 50000000000)
        sbs.position = RootPart.CFrame.p + Vector3.new(0, 200, 0)
CFuncs["Sound"].Create("rbxassetid://1208650519", char, 10, 1)
for i = 0, 85, 0.1 do
swait()
speedearn = speedearn + 0.1
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,10*speedearn,-0.05,MAINRUINCOLOR,0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,10*speedearn,-0.05,MAINRUINCOLOR,0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,10*speedearn,-0.05,MAINRUINCOLOR,0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,10*speedearn,-0.05,MAINRUINCOLOR,0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,10*speedearn,-0.05,MAINRUINCOLOR,0)
sphere(25,"Add",root.CFrame,vt(speedearn*2,speedearn*2,speedearn*2),0.01,MAINRUINCOLOR)
RH.C0=clerp(RH.C0,cf(1,-0.05,-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.1)
LH.C0=clerp(LH.C0,cf(-1,-0.5,-0.25)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(20 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(55),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(0.75,0.5,-0.25)*angles(math.rad(140),math.rad(0),math.rad(-20 + 2.5 * math.cos(sine / 28))),.1)
LW.C0=clerp(LW.C0,cf(-0.75,0.5,-0.25)*angles(math.rad(140),math.rad(0),math.rad(20 - 2.5 * math.cos(sine / 28))),.1)
end
bosschatfunc("Universary..",MAINRUINCOLOR.Color,1)
CFuncs["EchoSound"].Create("rbxassetid://1448032598", char, 5, 1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://1448032598", root, 20, 1,0,10,0.15,0.5,1)
for i = 0, 25, 0.1 do
swait()
speedearn = speedearn + 0.1
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,10*speedearn,-0.05,MAINRUINCOLOR,0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,10*speedearn,-0.05,MAINRUINCOLOR,0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,10*speedearn,-0.05,MAINRUINCOLOR,0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,10*speedearn,-0.05,MAINRUINCOLOR,0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,10*speedearn,-0.05,MAINRUINCOLOR,0)
sphere(25,"Add",root.CFrame,vt(speedearn*2,speedearn*2,speedearn*2),0.01,MAINRUINCOLOR)
RH.C0=clerp(RH.C0,cf(1,-0.05,-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.1)
LH.C0=clerp(LH.C0,cf(-1,-0.5,-0.25)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(20 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(55),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(0.75,0.5,-0.25)*angles(math.rad(140),math.rad(0),math.rad(-20 + 2.5 * math.cos(sine / 28))),.1)
LW.C0=clerp(LW.C0,cf(-0.75,0.5,-0.25)*angles(math.rad(140),math.rad(0),math.rad(20 - 2.5 * math.cos(sine / 28))),.1)
end
bosschatfunc("COLLAPSE!!!",MAINRUINCOLOR.Color,1)
CFuncs["EchoSound"].Create("rbxassetid://1436241883", char, 5, 1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://1436241883", root, 20, 1,0,10,0.15,0.5,1)
CameraEnshaking(5,50)
sphere(5,"Add",root.CFrame,vt(0,0,0),25,MAINRUINCOLOR)
for i = 0, 2 do 
CFuncs["Sound"].Create("rbxassetid://1177785010", char, 10, 1)
CFuncs["Sound"].Create("rbxassetid://533636230", char, 10, 0.75)
CFuncs["Sound"].Create("rbxassetid://419447292", char, 5,1)
CFuncs["Sound"].Create("rbxassetid://421328847", char, 5,1)
end
for i = 0, 49 do
sphereMK(1,3,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,200,-1,MAINRUINCOLOR,0)
sphereMK(2,6,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,150,-0.5,MAINRUINCOLOR,0)
sphereMK(3,9,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,100,-0.5,MAINRUINCOLOR,0)
sphereMK(4,12,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,50,-0.5,MAINRUINCOLOR,0)
end
sphere(1,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
sphere(2,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
sphere(3,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
sphere(4,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
sphere(5,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
sphere(6,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
sphere(1,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(2,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(3,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(4,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(5,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(6,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
for i = 0, 99 do
PixelBlock(1,math.random(50,1000),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),20,20,20,0.4,MAINRUINCOLOR,0)
PixelBlock(2,math.random(250,1000),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),10,10,10,0.2,MAINRUINCOLOR,0)
end
for i, v in pairs(FindNearestHead(root.CFrame.p, 9999999)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
MagniDamage(root, 9999999, 1000000,9999999, 0, "Normal")
sbs:Destroy()
hum.WalkSpeed = storehumanoidWS
attack = false
end


function ChaosEND()
attack = true
local speedearn = 0
bosschatfunc("THIS IS..",MAINRUINCOLOR.Color,0.8)
CFuncs["EchoSound"].Create("rbxassetid://1548599511", char, 4.5, 1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://1548599511", root, 30, 1,0,10,0.15,0.5,1)
CFuncs["Sound"].Create("rbxassetid://1208650519", char, 4, 1)
for i = 0, 15, 0.1 do
swait()
speedearn = speedearn + 0.25
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,10*speedearn,-0.25,BrickColor.random(),0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,10*speedearn,-0.25,BrickColor.random(),0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,10*speedearn,-0.25,BrickColor.random(),0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,10*speedearn,-0.25,BrickColor.random(),0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,10*speedearn,-0.25,BrickColor.random(),0)
RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(20)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(140),math.rad(0),math.rad(-20)),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(140),math.rad(0),math.rad(20)),.2)
end
CFuncs["Sound"].Create("rbxassetid://438666141", char, 3,1)
CFuncs["Sound"].Create("rbxassetid://1208650519", char, 4, 1)
bosschatfunc("THE END!!!",MAINRUINCOLOR.Color,2)
CFuncs["EchoSound"].Create("rbxassetid://1548599962", char, 8, 1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://1548599962", root, 40, 1,0,10,0.15,0.5,1)
CameraEnshaking(5,25)
for i, v in pairs(FindNearestHead(Torso.CFrame.p, 1234567890)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
sphere(5,"Add",root.CFrame*CFrame.new(0,-2.9,0),vt(0,0,0),1*1000,BrickColor.random())
sphere(10,"Add",root.CFrame*CFrame.new(0,-2.9,0),vt(0,0,0),2*1000,BrickColor.random())
sphere(1,"Add",root.CFrame*CFrame.new(0,-2.9,0),vt(100*1000,0.1,100*1000),0.01,BrickColor.random())
for i = 0, 3, 0.1 do
swait()
sphereMK(2.5,0.75,"Add",root.CFrame*CFrame.new(math.random(-52.5*10,52.5*10),-5,math.random(-52.5*10,52.5*10))*CFrame.Angles(math.rad(90 + math.rad(math.random(-45,45))),math.rad(math.random(-45,45)),math.rad(math.random(-45,45))),25,25,250,-0.25,BrickColor.random(),0)
sphereMK(2.5,0.75,"Add",root.CFrame*CFrame.new(math.random(-52.5*10,52.5*10),-5,math.random(-52.5*10,52.5*10))*CFrame.Angles(math.rad(90 + math.rad(math.random(-45,45))),math.rad(math.random(-45,45)),math.rad(math.random(-45,45))),25,25,250,-0.25,BrickColor.random(),0)
sphereMK(2.5,0.75,"Add",root.CFrame*CFrame.new(math.random(-52.5*10,52.5*10),-5,math.random(-52.5*10,52.5*10))*CFrame.Angles(math.rad(90 + math.rad(math.random(-45,45))),math.rad(math.random(-45,45)),math.rad(math.random(-45,45))),25,25,250,-0.25,BrickColor.random(),0)
sphereMK(2.5,0.75,"Add",root.CFrame*CFrame.new(math.random(-52.5*10,52.5*10),-5,math.random(-52.5*10,52.5*10))*CFrame.Angles(math.rad(90 + math.rad(math.random(-45,45))),math.rad(math.random(-45,45)),math.rad(math.random(-45,45))),25,25,250,-0.25,BrickColor.random(),0)
RH.C0=clerp(RH.C0,cf(1,-1,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(10)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(10)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(30)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(-30)),.4)
end
attack = false
end

function orb_spawn_norm(positted,timer,color,MagniBoost,min,max,volEx,ShakePower,volSummon)
local orb = Instance.new("Part", char)
        orb.Anchored = true
        orb.BrickColor = color
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 0
        orb.TopSurface = 0
        orb.BottomSurface = 0
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orb.CFrame = positted
orbm.Name = "SizeMesh"
orbm.Scale = vt(1,1,1)
CFuncs["Sound"].Create("rbxassetid://183763506", orb, volSummon, 1)
sphere(2.5,"Add",orb.CFrame,vt(1,1,1),0.05,orb.BrickColor)
--[[for i = 0, 2 do
sphereMK(5,0.15,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1.5,1.5,7.5,-0.015,orb.BrickColor,0)
end]]--
coroutine.resume(coroutine.create(function()
wait(timer)
CameraEnshaking(3,ShakePower)
orb.Transparency = 1
MagniDamage(orb, 3.5*MagniBoost, min,max, 0, "Normal")
sphere(5,"Add",orb.CFrame,vt(1,1,1),0.1*MagniBoost,orb.BrickColor)
--[[for i = 0, 4 do
sphereMK(5,0.15*MagniBoost,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2.5,2.5,15,-0.025,orb.BrickColor,0)
end]]--
CFuncs["Sound"].Create("rbxassetid://192410089", orb, volEx, 0.7)
wait(3)
orb:Destroy()
end))
end

function orb_spawn(positted,timer)
local randomcol = math.random(1,2)
local orb = Instance.new("Part", char)
        orb.Anchored = true
if randomcol == 1 then
        orb.BrickColor = BrickColor.new("White")
elseif randomcol == 2 then
orb.BrickColor = BrickColor.new("Really black")
end
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 0
        orb.TopSurface = 0
        orb.BottomSurface = 0
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orb.CFrame = positted
orbm.Name = "SizeMesh"
orbm.Scale = vt(1,1,1)
CFuncs["Sound"].Create("rbxassetid://183763506", orb, 0.15, 1)
sphere(2.5,"Add",orb.CFrame,vt(1,1,1),0.025,orb.BrickColor)
for i = 0, 2 do
sphereMK(5,0.15,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1.5,1.5,7.5,-0.015,orb.BrickColor,0)
end
coroutine.resume(coroutine.create(function()
wait(timer)
CameraEnshaking(3,2)
orb.Transparency = 1
MagniDamage(orb, 17.5, 10,50, 0, "Normal")
sphere(5,"Add",orb.CFrame,vt(1,1,1),0.5,orb.BrickColor)
for i = 0, 4 do
sphereMK(5,0.65,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2.5,2.5,15,-0.025,orb.BrickColor,0)
end
CFuncs["Sound"].Create("rbxassetid://192410089", orb, 0.15, 0.7)
wait(3)
orb:Destroy()
end))
end

function scattercorrupt()
attack = true
hum.WalkSpeed = 0
for i = 0, 2, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(30)),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-30)),.2)
end
local rot = 0
local randomrotations = math.random(1,2)
local lookv = 2.5
local power = 7
local radm = math.random(1,3)
if radm == 1 then
bosschatfunc("HOW LONG CAN YOU TAKE THIS?",MAINRUINCOLOR.Color,1)
elseif radm == 2 then
bosschatfunc("SWAMP!!",MAINRUINCOLOR.Color,1)
elseif radm == 3 then
bosschatfunc("SCATTER!!",MAINRUINCOLOR.Color,1)
end
CFuncs["Sound"].Create("rbxassetid://183763506", RightLeg, 2, 1)
for i = 0, 1, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1,-0.5)*angles(math.rad(15),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.15)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(15),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(15),math.rad(0),math.rad(0)),.15)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(0)),.15)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-25),math.rad(0),math.rad(40)),.15)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-25),math.rad(0),math.rad(-40)),.15)
end
CFuncs["EchoSound"].Create("rbxassetid://1535994669", char, 5, 1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://1535994669", root, 20, 1,0,10,0.15,0.5,1)
sphere(1,"Add",root.CFrame,vt(1,100000,1),0.5,BrickColor.new("Royal purple"))
sphere(1,"Add",root.CFrame,vt(1,1,1),0.75,BrickColor.new("Royal purple"))
for i = 0, 9 do
sphereMK(1,1.5,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),10,10,45,-0.1,BrickColor.new("Royal purple"),0)
end
local hite = Instance.new("Part", char)
        hite.Anchored = true
        hite.CanCollide = false
        hite.FormFactor = 3
        hite.Name = "Ring"
        hite.Material = "Neon"
        hite.Size = Vector3.new(1, 1, 1)
        hite.Transparency = 1
        hite.TopSurface = 0
        hite.BottomSurface = 0
hite.CFrame = root.CFrame*CFrame.new(0,-2.5,0)
local rem = Instance.new("Part", char)
        rem.Anchored = true
        rem.CanCollide = false
        rem.FormFactor = 3
        rem.Name = "Ring"
        rem.Material = "Neon"
        rem.Size = Vector3.new(1, 1, 1)
        rem.Transparency = 1
        rem.TopSurface = 0
        rem.BottomSurface = 0
rem.CFrame = hite.CFrame
local rem2 = rem:Clone()
rem2.Parent = char
rem2.CFrame = rem.CFrame*CFrame.Angles(0,math.rad(90),0)
local rem3 = rem:Clone()
rem3.Parent = char
rem3.CFrame = rem.CFrame*CFrame.Angles(0,math.rad(180),0)
local rem4 = rem:Clone()
rem4.Parent = char
rem4.CFrame = rem.CFrame*CFrame.Angles(0,math.rad(270),0)
hite:Destroy()
coroutine.resume(coroutine.create(function()
for i = 0, 24 do
swait(1)
if randomrotations == 1 then
rot = rot + 1
elseif randomrotations == 2 then
rot = rot - 1
end
power = power + 0.5
lookv = lookv + 7.5
rem.CFrame = rem.CFrame*CFrame.Angles(0,math.rad(rot),0)
rem2.CFrame = rem.CFrame*CFrame.Angles(0,math.rad(90),0)
rem3.CFrame = rem.CFrame*CFrame.Angles(0,math.rad(180),0)
rem4.CFrame = rem.CFrame*CFrame.Angles(0,math.rad(270),0)
orb_spawn_norm(rem.CFrame + rem.CFrame.lookVector*lookv,3,BrickColor.new("Royal purple"),power,25,75,10,1)
orb_spawn_norm(rem2.CFrame + rem2.CFrame.lookVector*lookv,3,BrickColor.new("Royal purple"),power,25,75,10,1)
orb_spawn_norm(rem3.CFrame + rem3.CFrame.lookVector*lookv,3,BrickColor.new("Royal purple"),power,25,75,10,1)
orb_spawn_norm(rem4.CFrame + rem4.CFrame.lookVector*lookv,3,BrickColor.new("Royal purple"),power,25,75,10,1)
end
end))
wait(2)
hum.WalkSpeed = storehumanoidWS
attack = false
end
function yinyangi()
attack = true
for i = 0, 2, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(20)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.5,0.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(75),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.2)
end
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = root.CFrame.lookVector*175
bv.Parent = root
for Rotations = 0, 9 do
for i = 0, 1, 0.5 do
swait()
bv.velocity = root.CFrame.lookVector*175
RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-20)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(20)),.5)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.5,0.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(90),math.rad(0),math.rad(90)),.5)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.5)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.5)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.5)
end
orb_spawn(rarm.CFrame*CFrame.new(0,-1,0),2.5)
for i = 0, 1, 0.5 do
swait()
bv.velocity = root.CFrame.lookVector*175
RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-20)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(20)),.5)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.5,0.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(90),math.rad(0),math.rad(180)),.5)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.5)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.5)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.5)
end
orb_spawn(rarm.CFrame*CFrame.new(0,-1,0),2.5)
for i = 0, 1, 0.5 do
swait()
bv.velocity = root.CFrame.lookVector*175
RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-20)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(20)),.5)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.5,0.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(90),math.rad(0),math.rad(270)),.5)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.5)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.5)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.5)
end
orb_spawn(rarm.CFrame*CFrame.new(0,-1,0),2.5)
for i = 0, 1, 0.5 do
swait()
bv.velocity = root.CFrame.lookVector*175
RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-20)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(20)),.5)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.5,0.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(90),math.rad(0),math.rad(360)),.5)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.5)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.5)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.5)
end
orb_spawn(rarm.CFrame*CFrame.new(0,-1,0),2.5)
end
bv:Destroy()
attack = false
end

function createBGCircle(size,parent,color)
local bgui = Instance.new("BillboardGui",parent)
bgui.Size = UDim2.new(size, 0, size, 0)
local imgc = Instance.new("ImageLabel",bgui)
imgc.BackgroundTransparency = 1
imgc.ImageTransparency = 0
imgc.Size = UDim2.new(1,0,1,0)
imgc.Image = "rbxassetid://997291547" --997291547,521073910
imgc.ImageColor3 = color
return bgui,imgc
end

function symbolizeBlink(guipar,size,img,color,bonussize,vol,pit,soundid,spar,rotationenabled,rotsp,delay)
local bgui,imgc = createBGCircle(size,guipar,color)
bgui.AlwaysOnTop = true
imgc.Image = "rbxassetid://" ..img
local rrot = math.random(1,2)
CFuncs["Sound"].Create("rbxassetid://" ..soundid, spar, vol,pit)
coroutine.resume(coroutine.create(function()
for i = 0, 24*delay do
swait()
if rotationenabled == true then
if rrot == 1 then
imgc.Rotation = imgc.Rotation + rotsp
elseif rrot == 2 then
imgc.Rotation = imgc.Rotation - rotsp
end
end
bgui.Size = bgui.Size + UDim2.new(1*bonussize/delay,0,1*bonussize/delay,0)
imgc.ImageTransparency = imgc.ImageTransparency + 0.04/delay
end
bgui:Destroy()
end))
end
function RecolorThing(one,two,three,four,five,exonetran,exone,extwotran,extwo,secondaryenabled)
for i, v in pairs(mw2:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = one
v.Material = "Neon"
end
end
CFuncs["EchoSound"].Create("rbxassetid://847061203", root, 1, 1,0,10,0.25,0.25,1)
symbolizeBlink(root,0,2092248396,one.Color,5,3,1,847061203,root,true,10,1)
symbolizeBlink(root,0,2092248396,one.Color,4,0,0,0,root,true,-5,1)
tr1.Color = ColorSequence.new(one.Color)
tr2.Color = ColorSequence.new(one.Color)
tr3.Color = ColorSequence.new(one.Color)
for i, v in pairs(mw1:GetChildren()) do
if v:IsA("Part") then
if secondaryenabled == false then
v.Transparency = 1
elseif secondaryenabled == true then
v.Transparency = 0
end
v.BrickColor = two
v.Material = "Neon"
end
end
if secondaryenabled == false then
tl1.Enabled = false
tl2.Enabled = false
tl3.Enabled = false
elseif secondaryenabled == true then
tl1.Enabled = true
tl2.Enabled = true
tl3.Enabled = true
end
tl1.Color = ColorSequence.new(two.Color)
tl2.Color = ColorSequence.new(two.Color)
tl3.Color = ColorSequence.new(two.Color)
for i, v in pairs(m:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = three
v.Material = "Ice"
end
end
for i, v in pairs(m2:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = four
v.Material = "Ice"
end
end
for i, v in pairs(m3:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = five
v.Material = "Neon"
end
end
for i, v in pairs(extrawingmod1:GetChildren()) do
if v:IsA("Part") then
v.Transparency = exonetran
v.BrickColor = exone
v.Material = "Neon"
end
end
for i, v in pairs(extrawingmod2:GetChildren()) do
if v:IsA("Part") then
v.Transparency = extwotran
v.BrickColor = extwo
v.Material = "Neon"
end
end
end


function normalmog()
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://136007472", root, 5, 1.25)
for i = 0,6,0.1 do
swait()
sphereMK(2.5,-1.5,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3.5,3.5,45,-0.035,MAINRUINCOLOR,100)
slash(math.random(30,60)/10,5,true,"Round","Add","In",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,0.01,0.5),-0.5,MAINRUINCOLOR)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.3,-0.15)*angles(math.rad(30),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30),math.rad(0),math.rad(0 - 5 * math.cos(sine / 0.2))),.2)
RW.C0=clerp(RW.C0,cf(1.05,0.4,-0.5)*angles(math.rad(140),math.rad(0),math.rad(-50)),.2)
LW.C0=clerp(LW.C0,cf(-1.05,0.4,-0.5)*angles(math.rad(140),math.rad(0),math.rad(50)),.2)
end
CFuncs["Sound"].Create("rbxassetid://206082327", root, 7.5,1)
CFuncs["Sound"].Create("rbxassetid://847061203", root, 10,1)
CFuncs["Sound"].Create("rbxassetid://239000203", root, 7.5,1)
CFuncs["Sound"].Create("rbxassetid://579687077", root, 7.5,0.75)
CFuncs["Sound"].Create("rbxassetid://1368637781", root, 10,1)
CFuncs["Sound"].Create("rbxassetid://763718160", root, 7.5, 1.1)
CFuncs["Sound"].Create("rbxassetid://782353443", root, 7.5, 1)
rainbowmode = false
chaosmode = false
ModeOfGlitch = 1
storehumanoidWS = 16
newTheme("rbxassetid://367339030",48.6,1,1.25)
RecolorTextAndRename("Spectrum Glitcher",Color3.new(0.25,0,0),Color3.new(1,0,0),"Antique")
CameraEnshaking(5,2.5)
MAINRUINCOLOR = BrickColor.new("Really red")
sphere(2.5,"Add",root.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
for i = 0, 49 do
PixelBlock(1,math.random(1,20),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.04,MAINRUINCOLOR,0)
end
for i = 0, 24 do
sphere2(2,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,7,-0.01,MAINRUINCOLOR)
slash(math.random(10,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(150,350)/250,BrickColor.new("White"))
end
for i = 0,3,0.1 do
sphereMK(2.5,-1,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2.5,2.5,25,-0.025,MAINRUINCOLOR,0)
end
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,false)
for i = 0,2,0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.5)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.3,-0.15)*angles(math.rad(-30),math.rad(0),math.rad(0)),.5)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-30),math.rad(0),math.rad(0 - 2.5 * math.cos(sine / 0.2))),.5)
RW.C0=clerp(RW.C0,cf(1.45,0.4,0)*angles(math.rad(-20),math.rad(0 - 2 * math.cos(sine / 0.2)),math.rad(80 + 2 * math.cos(sine / 0.2))),.5)
LW.C0=clerp(LW.C0,cf(-1.45,0.4,0)*angles(math.rad(-20),math.rad(0 + 2 * math.cos(sine / 0.2)),math.rad(-80 - 2 * math.cos(sine / 0.2))),.5)
end
hum.WalkSpeed = storehumanoidWS
attack = false
end

function attackone()
	attack = true
local keptcolor = MAINRUINCOLOR
	for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(-10),math.rad(-20)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(10),math.rad(20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-15),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(2.5),math.rad(0),math.rad(0)),.3)
	end
local distlook = 5
coroutine.resume(coroutine.create(function()
for i = 0, 4 do
swait(2)
CameraEnshaking(2,3)
local hite = Instance.new("Part", char)
        hite.Anchored = true
        hite.CanCollide = false
        hite.FormFactor = 3
        hite.Name = "Ring"
        hite.Material = "Neon"
        hite.Size = Vector3.new(1, 1, 1)
        hite.Transparency = 1
        hite.TopSurface = 0
        hite.BottomSurface = 0
hite.CFrame = root.CFrame*CFrame.new(0,-3,-distlook)
sphere2(4,"Add",hite.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(0,1,0),0.2,0.001,0.2,keptcolor)
sphere2(4,"Add",hite.CFrame*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),vt(8,1,8),-0.045,0.15,-0.045,keptcolor)
sphere2(4,"Add",hite.CFrame*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),vt(4,1,4),-0.025,0.25,-0.025,keptcolor)
sphere2(4,"Add",hite.CFrame*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),vt(2,1,2),-0.015,0.35,-0.015,keptcolor)
MagniDamage(hite, 9, 10,25, 0, "Normal")
for i = 0, 14 do
local rsiz = math.random(5,20)
sphereMK(math.random(1,3),0.25,"Add",hite.CFrame*CFrame.new(math.random(-20,20)/50,math.random(-20,20)/50,math.random(-20,20)/50)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,keptcolor,0)
end
CFuncs["Sound"].Create("rbxassetid://178452221", hite, 1, 1)
CFuncs["Sound"].Create("rbxassetid://1042722746", hite, 0.5, 1)
game:GetService("Debris"):AddItem(hite, 5)
distlook = distlook + 10
end
end))
	for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(5),math.rad(90)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-90)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(120)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-0.5),math.rad(0),math.rad(-10)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.5)
	end
	attack = false
end

function attacktwo()
	attack = true
hum.WalkSpeed = 2
local keptcolor = MAINRUINCOLOR
CFuncs["Sound"].Create("rbxassetid://847061203", root, 2, 1)
sphere2(5,"Add",rarm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(1,1,1),0.1,0.1,0.1,keptcolor,keptcolor.Color)
sphere2(5,"Add",rarm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(1,1,1),0.2,0.2,0.2,keptcolor,keptcolor.Color)
for i = 0, 14 do
PixelBlock(1,math.random(1,3),"Add",rarm.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,keptcolor,0)
end
for i = 0,1,0.1 do
swait()
sphere2(8,"Add",larm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-30)),.3)
RW.C0=clerp(RW.C0,cf(1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(-60)),.3)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-10)),.3)
end
for i = 0, 1 do
CFuncs["Sound"].Create("rbxassetid://763755889", root, 3,1.1)
for i = 0,1,0.6 do
swait()
sphere2(8,"Add",rarm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-30)),.6)
RW.C0=clerp(RW.C0,cf(1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(-60)),.6)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-10)),.6)
end
for i = 0,1,0.6 do
swait()
sphere2(8,"Add",rarm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-30)),.6)
RW.C0=clerp(RW.C0,cf(1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(-60)),.6)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-10)),.6)
end
for i = 0,1,0.6 do
swait()
sphere2(8,"Add",rarm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-180)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-30)),.6)
RW.C0=clerp(RW.C0,cf(1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(-60)),.6)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-10)),.6)
end
for i = 0,1,0.6 do
swait()
sphere2(8,"Add",rarm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-270)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-30)),.6)
RW.C0=clerp(RW.C0,cf(1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(-60)),.6)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-10)),.6)
end
local rot = 0
local dis = CreateParta(char,0.5,1,"Neon",keptcolor)
CFuncs["EchoSound"].Create("rbxassetid://763718160", dis, 3, 1.1,0,10,0.15,0.5,1)
dis.CFrame = root.CFrame*CFrame.new(0,2,-3)
CreateMesh(dis,"Sphere",10,1,10)
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-5,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(5,0,0)
local trl = Instance.new('Trail',wed)
trl.Attachment0 = at1
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(dis.Color)
trl.Lifetime = 0.6
local a = Instance.new("Part",workspace)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("Bright red")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	    print("yes")
	) 
	local ignore = dis
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (dis.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(dis.CFrame.p, position) * CFrame.new(0, 0, 0)
dis.CFrame = a.CFrame
dis.CFrame = dis.CFrame*CFrame.Angles(0,math.rad(rot),0)
a:Destroy()
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*250
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 5)
local hitted = false
coroutine.resume(coroutine.create(function()
dis.Touched:connect(function(hit) 
	if hitted == false and hit.Parent ~= char then
	hitted = true
	CFuncs["EchoSound"].Create("rbxassetid://782200047", dis, 7, 1.1,0,10,0.15,0.5,1)
	MagniDamage(dis, 30, 33,56, 0, "Normal")
	sphere2(8,"Add",dis.CFrame,vt(10,1,10),1,0.1,1,keptcolor,keptcolor.Color)
	sphere2(4,"Add",dis.CFrame,vt(1,1,1),0.5,0.5,0.5,keptcolor,keptcolor.Color)
	sphere2(3,"Add",dis.CFrame,vt(1,1,1),0.5,0.5,0.5,keptcolor,keptcolor.Color)
	coroutine.resume(coroutine.create(function()
		for i = 0, 9 do
local disr = CreateParta(char,1,1,"Neon",keptcolor)
disr.CFrame = dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",disr)
at1.Position = vt(-5,0,0)
local at2 = Instance.new("Attachment",disr)
at2.Position = vt(5,0,0)
local trl = Instance.new('Trail',disr)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://2342682798"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(keptcolor.Color)
trl.Lifetime = 0.5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = disr.CFrame.lookVector*math.random(50,200)
bv.Parent = disr
local val = 0
coroutine.resume(coroutine.create(function()
	swait(30)
	for i = 0, 9 do
		swait()
		val = val + 0.1
		trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, val),NumberSequenceKeypoint.new(1, 1)})
	end
game:GetService("Debris"):AddItem(disr, 3)
end))
end
local eff = Instance.new("ParticleEmitter",dis)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(keptcolor.Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(20,250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.25)
eff.Enabled = false
end))
	for i = 0, 9 do
		slash(math.random(10,20)/10,5,true,"Round","Add","Out",dis.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.01,0.01,0.01),math.random(100,200)/250,BrickColor.new("White"))
	end
for i = 0, 19 do
PixelBlock(1,math.random(5,20),"Add",dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),4,4,4,0.08,keptcolor,0)
end
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/70,math.random(-10,10)/70,math.random(-10,10)/70)
end
hum.CameraOffset = vt(0,0,0)
end))
dis.Anchored = true
dis.Transparency = 1
wait(8)
dis:Destroy()
end
end)
end))
rot = rot - 15
end
for i = 0,2,0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(-30),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(5)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(60)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-10)),.3)
end
attack = false
hum.WalkSpeed = storehumanoidWS
end

function attackthree()
attack = true
local keptcolor = MAINRUINCOLOR
CFuncs["Sound"].Create("rbxassetid://136007472", root, 2, 1.5)
	for i = 0,2,0.1 do
		swait()
		sphere2(5,"Add",larm.CFrame*CFrame.new(0,-1.5,0),vt(1,1,1),0.025,0.025,0.025,MAINRUINCOLOR,MAINRUINCOLOR.Color)
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(50)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(10), math.rad(60)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(140), math.rad(0), math.rad(-70)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(-50),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(40)),.3)
	end
CFuncs["Sound"].Create("rbxassetid://763716870", root, 3,1)
CFuncs["Sound"].Create("rbxassetid://782353443", root, 5,0.9)
CFuncs["Sound"].Create("rbxassetid://782225570", root, 4,0.5)
CFuncs["Sound"].Create("rbxassetid://763717569", root, 3,1)
sphere2(5,"Add",root.CFrame,vt(1,1,1),1,1,1,MAINRUINCOLOR)
sphere2(5,"Add",root.CFrame,vt(1,1,1),0.5,0.5,0.5,MAINRUINCOLOR)
for i = 0, 24 do
		slash(math.random(10,50)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(90),math.rad(math.random(-360,360)),math.rad(0)),vt(0.01,0.01,0.01),math.random(50,200)/250,BrickColor.new("White"))
end
for i = 0,4,0.1 do
		swait()
		root.CFrame = root.CFrame + root.CFrame.lookVector*5
		local dis = CreateParta(char,0.25,1,"Neon",MAINRUINCOLOR)
CreateMesh(dis,"Sphere",1,1,1)
dis.Anchored = true
dis.CFrame = larm.CFrame*CFrame.new(0,-3,0)
sphere2(5,"Add",dis.CFrame,vt(1,1,1),0.1,0.1,0.1,dis.BrickColor,dis.Color)
coroutine.resume(coroutine.create(function()
	swait(30)
	dis.Transparency = 1
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/40,math.random(-10,10)/40,math.random(-10,10)/40)
end
hum.CameraOffset = vt(0,0,0)
end))
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",dis)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(dis.Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(50,450)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.125)
eff.Enabled = false
end))
MagniDamage(dis, 30, 45,50, 0, "Normal")
    for i = 0, 2 do
		slash(math.random(10,80)/10,5,true,"Round","Add","Out",dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(50,150)/250,dis.BrickColor)
	end
	CFuncs["Sound"].Create("rbxassetid://782353117", dis, 1,1)
	CFuncs["Sound"].Create("rbxassetid://1666361078", dis, 1,1.5)
	CFuncs["Sound"].Create("rbxassetid://782353443", dis, 2,1.65)
	sphere2(3,"Add",dis.CFrame,vt(1,1,1),0.4,0.4,0.4,dis.BrickColor,dis.Color)
end))
game:GetService("Debris"):AddItem(dis, 5)
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(89),math.rad(-8),math.rad(-5)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-30),math.rad(0),math.rad(8)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-14), math.rad(1), math.rad(17)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.85, 0) * angles(math.rad(180), math.rad(0), math.rad(-8)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-8),math.rad(0),math.rad(-20)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(9),math.rad(0),math.rad(20)),.5)
	end
attack = false
end
----------------------------------- Abilities

function ExtinctiveHeartbreak()
local targetted = nil
if mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
targetted = mouse.Target.Parent
end
if targetted ~= nil then
attack = true
CFuncs["Sound"].Create("rbxassetid://847061203", root, 2.5,1)
for i = 0, 9 do
sphereMK(3,0.25,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,10,-0.01,BrickColor.new("Really red"),0)
end
for i = 0, 24 do
PixelBlock(1,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.06,BrickColor.new("Really red"),0)
end
sphere(3,"Add",root.CFrame,vt(0,0,0),0.25,BrickColor.new("Really red"))
local originalpos = root.CFrame
RootPart.CFrame = targetted.Head.CFrame * CFrame.new(0,-2,2)
for i = 0, 9 do
sphereMK(3,0.25,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,10,-0.01,BrickColor.new("Really red"),0)
end
for i = 0, 24 do
PixelBlock(1,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.06,BrickColor.new("Really red"),0)
end
hum.WalkSpeed = 0
sphere(3,"Add",root.CFrame,vt(0,0,0),0.25,BrickColor.new("Really red"))
local radm = math.random(1,3)
if radm == 1 then
bosschatfunc("YOU WONT BE NECCESSARY.",MAINRUINCOLOR.Color,2)
elseif radm == 2 then
bosschatfunc("YOUR EXISTANCE WILL BE GONE.",MAINRUINCOLOR.Color,2)
elseif radm == 3 then
bosschatfunc("DIE!",MAINRUINCOLOR.Color,2)
end
for i = 0,2,0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(-10),math.rad(0)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0),math.rad(0),math.rad(80)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(10)),.8)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(20),math.rad(0),math.rad(10)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(90),math.rad(0),math.rad(60)),.4)
end
CFuncs["Sound"].Create("rbxassetid://153092227", root, 0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://153092227", root, 2, 1,0,10,0.25,0.5,1)
for i = 0,2,0.1 do
swait()
coroutine.resume(coroutine.create(function()
targetted.Head.CFrame = larm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(-90),0,0)
for i,v in pairs(targetted:GetChildren()) do
if v:IsA("Part") or v:IsA("MeshPart") then
v.Velocity = vt(0,0,0)
end
end
end))
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.8)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(10),math.rad(0)),.8)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0),math.rad(0),math.rad(-80)),.8)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(80)),.8)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(20),math.rad(0),math.rad(10)),.8)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(90),math.rad(0),math.rad(-80)),.8)
end
CFuncs["EchoSound"].Create("rbxassetid://824687369", char, 0.5, 1,0,10,0.25,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://153092227", char, 0.5, 0.9,0,10,0.25,0.5,1)
for i = 0, 1 do
CFuncs["EchoSound"].Create("rbxassetid://159882598", char, 2, 1,0.1,10,0.15,0.5,1)
end
CFuncs["EchoSound"].Create("rbxassetid://159882598", root, 15, 1,0.1,10,0.15,0.5,1)
--chatfunc("RRRRROOAGHH!",Color3.new(1,0,0),"Inverted","Antique",0.75)
for i = 0,4,0.1 do
swait()
coroutine.resume(coroutine.create(function()
local dis = CreateParta(char,1,1,"Neon",MAINRUINCOLOR)
dis.CFrame = targetted.Head.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-25000,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(25000,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(Color3.new(1,0,0))
trl.Lifetime = 5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*math.random(500,2500)
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 5)
targetted.Head.CFrame = larm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(-90),0,0)
CFuncs["Sound"].Create("rbxassetid://782353443", targetted.Head, 4,1)
CFuncs["Sound"].Create("rbxassetid://824687369", targetted.Head, 6, 1)
CFuncs["Sound"].Create("rbxassetid://153092227", targetted.Head,6,math.random(75,150)/150)
CFuncs["Sound"].Create("rbxassetid://163680447", targetted.Head, 3,math.random(75,150)/150)
CFuncs["Sound"].Create("rbxassetid://782354021", targetted.Head, 2.5,0.75)
sphere2(5,"Add",targetted.Head.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(3,3,3),-0.03,15,-0.03,MAINRUINCOLOR)
targetted:FindFirstChildOfClass("Humanoid").CameraOffset = vt(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)
for i = 0, 2 do
slash(5,5,true,"Round","Add","Out",targetted.Head.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(50,350)/250,BrickColor.new("Crimson"))
end
symbolizeBlink(targetted.Head,0,2092248396,Color3.new(1,0,0),math.random(3,35),0,0,0,targetted.Head,true,math.random(3,9),0.25)
for i,v in pairs(targetted:GetChildren()) do
if v:IsA("Part") or v:IsA("MeshPart") then
v.Velocity = vt(0,0,0)
end
end
end))
hum.CameraOffset = vt(math.random(-10,10)/25,math.random(-10,10)/25,math.random(-10,10)/25)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.8)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(10),math.rad(0)),.8)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0),math.rad(0),math.rad(-80)),.8)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(80)),.8)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(20),math.rad(0),math.rad(40)),.8)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(170),math.rad(0),math.rad(-30)),.8)
end
hum.CameraOffset = vt(0,0,0)
for i = 0, 49 do
local dis = CreateParta(char,1,1,"Neon",MAINRUINCOLOR)
dis.CFrame = targetted.Head.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-50000,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(50000,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(Color3.new(1,0.1,0.1))
trl.Lifetime = 5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*math.random(500,2500)
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 5)
end
for i = 0, 49 do
sphere2(math.random(10,75)/10,"Add",targetted.Head.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(5,5,5),-0.05,50,-0.05,MAINRUINCOLOR)
slash(math.random(10,30)/15,5,true,"Round","Add","Out",targetted.Head.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(40,500)/250,BrickColor.new("Really red"))
end
CFuncs["EchoSound"].Create("rbxassetid://824687369", char, 2, 0.9,0,10,0.25,0.5,1)
for i = 0, 1 do
CFuncs["Sound"].Create("rbxassetid://221920821", targetted.Head, 5,0.9)
CFuncs["Sound"].Create("rbxassetid://221920821", targetted.Head, 7.5,0.75)
end
for i = 0, 4 do
CFuncs["Sound"].Create("rbxassetid://824687369", targetted.Head, 10, 1)
end
symbolizeBlink(targetted.Head,0,2109052855,Color3.new(1,0,0),30,0,0,0,root,false,0,1)
symbolizeBlink(targetted.Head,0,2109052855,Color3.new(1,0,0),30,0,0,0,root,false,0,2)
symbolizeBlink(targetted.Head,0,2109052855,Color3.new(1,0,0),30,0,0,0,root,false,0,4)
dmg(targetted)
CFuncs["Sound"].Create("rbxassetid://847061203", root, 2.5,1)
for i = 0, 9 do
sphereMK(3,0.25,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,10,-0.01,BrickColor.new("Really red"),0)
end
for i = 0, 24 do
PixelBlock(1,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.06,BrickColor.new("Really red"),0)
end
sphere(3,"Add",root.CFrame,vt(0,0,0),0.25,BrickColor.new("Really red"))
root.CFrame = originalpos
for i = 0, 9 do
sphereMK(3,0.25,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,10,-0.01,BrickColor.new("Really red"),0)
end
for i = 0, 24 do
PixelBlock(1,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.06,BrickColor.new("Really red"),0)
end
sphere(3,"Add",root.CFrame,vt(0,0,0),0.25,BrickColor.new("Really red"))
attack = false
hum.WalkSpeed = storehumanoidWS
end
end

function CorruptionEvent()
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://838392947", root, 10, 1)
CFuncs["Sound"].Create("rbxassetid://1368598393", root, 10, 1)
local keptcolor = MAINRUINCOLOR
for i = 0,4,0.1 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
block(10,"Add",rleg.CFrame*CFrame.new(0,-1,0),vt(1,1,1),0.01,0.01,0.01,MAINRUINCOLOR,MAINRUINCOLOR.Color)
RH.C0=clerp(RH.C0,cf(1,-0.15,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-5),math.rad(-20)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(1),math.rad(20)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,-0.05)*angles(math.rad(-20),math.rad(0),math.rad(10)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-10)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(-5),math.rad(-10),math.rad(20)),.1)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,0.1)*angles(math.rad(-5),math.rad(10),math.rad(-20)),.1)
end
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,25,0,0,0,root,false,0,1)
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,25,0,0,0,root,false,0,1.5)
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,25,0,0,0,root,false,0,3)
CFuncs["Sound"].Create("rbxassetid://1368637781", root, 3,1)
CFuncs["Sound"].Create("rbxassetid://763718160", root, 4, 1.1)
CFuncs["Sound"].Create("rbxassetid://782353443", root, 6, 1)
CFuncs["EchoSound"].Create("rbxassetid://824687369", root, 10, 1.1,0,10,0.25,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://824687369", char, 1.5, 1.1,0,10,0.25,0.5,1)
hum.CameraOffset = vt(0,0,0)
sphere2(5,"Add",root.CFrame*CFrame.new(0,-3,0),vt(10,1,10),1,0.01,1,MAINRUINCOLOR,MAINRUINCOLOR.Color)
sphere2(5,"Add",root.CFrame*CFrame.new(0,-3,0),vt(10,1,10),2,0.01,2,MAINRUINCOLOR,MAINRUINCOLOR.Color)
for i = 0, 24 do
slash(math.random(15,50)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.01,0.01,0.01),math.random(200,500)/250,BrickColor.new("Really black"))
end
local rrot = 0
coroutine.resume(coroutine.create(function()
for i = 0, 4 do
rrot = rrot + 45
local xa = CreateParta(char,1,1,"SmoothPlastic",BrickColor.random())
xa.Anchored = true
local xb = CreateParta(char,1,1,"SmoothPlastic",BrickColor.random())
xb.Anchored = true
local xc = CreateParta(char,1,1,"SmoothPlastic",BrickColor.random())
xc.Anchored = true
local xd = CreateParta(char,1,1,"SmoothPlastic",BrickColor.random())
xd.Anchored = true
CFuncs["Sound"].Create("rbxassetid://824687369", xa, 1,0.75)
CFuncs["Sound"].Create("rbxassetid://822968467", xa, 2,0.95)
CFuncs["Sound"].Create("rbxassetid://822969951", xa, 3,1)
CFuncs["Sound"].Create("rbxassetid://824687369", xb, 1,0.75)
CFuncs["Sound"].Create("rbxassetid://822968467", xb, 2,0.95)
CFuncs["Sound"].Create("rbxassetid://822969951", xb, 3,1)
CFuncs["Sound"].Create("rbxassetid://824687369", xc, 1,0.75)
CFuncs["Sound"].Create("rbxassetid://822968467", xc, 2,0.95)
CFuncs["Sound"].Create("rbxassetid://822969951", xc, 3,1)
CFuncs["Sound"].Create("rbxassetid://824687369", xd, 1,0.75)
CFuncs["Sound"].Create("rbxassetid://822968467", xd, 2,0.95)
CFuncs["Sound"].Create("rbxassetid://822969951", xd, 3,1)
xa.CFrame = root.CFrame*CFrame.Angles(0,math.rad(rrot),0)*CFrame.new(0,-3,-rrot/1.75)
xb.CFrame = root.CFrame*CFrame.Angles(0,math.rad(rrot),0)*CFrame.new(0,-3,rrot/1.75)
xc.CFrame = root.CFrame*CFrame.Angles(0,math.rad(rrot),0)*CFrame.new(-rrot/1.75,-3,0)
xd.CFrame = root.CFrame*CFrame.Angles(0,math.rad(rrot),0)*CFrame.new(rrot/1.75,-3,0)
MagniDamage(xa, 30, 39*rrot/5,65*rrot/2.5, 0, "Normal")
MagniDamage(xb, 30, 39*rrot/5,65*rrot/2.5, 0, "Normal")
MagniDamage(xc, 30, 39*rrot/5,65*rrot/2.5, 0, "Normal")
MagniDamage(xd, 30, 39*rrot/5,65*rrot/2.5, 0, "Normal")
for i = 0, 9 do
slash(math.random(15,50)/10,5,true,"Round","Add","Out",xa.CFrame*CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(0.01,0.01,0.01),math.random(50,125)/250,BrickColor.new("Really black"))
slash(math.random(15,50)/10,5,true,"Round","Add","Out",xb.CFrame*CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(0.01,0.01,0.01),math.random(50,125)/250,BrickColor.new("Really black"))
slash(math.random(15,50)/10,5,true,"Round","Add","Out",xc.CFrame*CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(0.01,0.01,0.01),math.random(50,125)/250,BrickColor.new("Really black"))
slash(math.random(15,50)/10,5,true,"Round","Add","Out",xd.CFrame*CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(0.01,0.01,0.01),math.random(50,125)/250,BrickColor.new("Really black"))
end
block(1.5,"Add",xa.CFrame*CFrame.new(0,-10,0),vt(30,30,30),0.3,0.3,0.3,keptcolor,keptcolor.Color)
block(1.5,"Add",xb.CFrame*CFrame.new(0,-10,0),vt(30,30,30),0.3,0.3,0.3,keptcolor,keptcolor.Color)
block(1.5,"Add",xc.CFrame*CFrame.new(0,-10,0),vt(30,30,30),0.3,0.3,0.3,keptcolor,keptcolor.Color)
block(1.5,"Add",xd.CFrame*CFrame.new(0,-10,0),vt(30,30,30),0.3,0.3,0.3,keptcolor,keptcolor.Color)
sphere2(2,"Add",xa.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(25,1,25),0.05,1.5,0.05,keptcolor,keptcolor.Color)
sphere2(2,"Add",xb.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(25,1,25),0.05,1.5,0.05,keptcolor,keptcolor.Color)
sphere2(2,"Add",xc.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(25,1,25),0.05,1.5,0.05,keptcolor,keptcolor.Color)
sphere2(2,"Add",xd.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(25,1,25),0.05,1.5,0.05,keptcolor,keptcolor.Color)
sphere2(4,"Add",xa.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(30,1,30),0.05,1.5,0.05,BrickColor.new("Really black"),Color3.new(0,0,0))
sphere2(4,"Add",xb.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(30,1,30),0.05,1.5,0.05,BrickColor.new("Really black"),Color3.new(0,0,0))
sphere2(4,"Add",xc.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(30,1,30),0.05,1.5,0.05,BrickColor.new("Really black"),Color3.new(0,0,0))
sphere2(4,"Add",xd.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(30,1,30),0.05,1.5,0.05,BrickColor.new("Really black"),Color3.new(0,0,0))
game:GetService("Debris"):AddItem(xa, 5)
game:GetService("Debris"):AddItem(xb, 5)
game:GetService("Debris"):AddItem(xc, 5)
game:GetService("Debris"):AddItem(xd, 5)
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/50,math.random(-10,10)/50,math.random(-10,10)/50)
end
hum.CameraOffset = vt(0,0,0)
end))
swait(9)
end
end))
for i = 0,2,0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(10)),.8)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(1),math.rad(10)),.8)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.25,-0.05)*angles(math.rad(10),math.rad(0),math.rad(0)),.8)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(40),math.rad(0),math.rad(0)),.8)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(-35),math.rad(-10),math.rad(60)),.8)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,0.1)*angles(math.rad(-35),math.rad(10),math.rad(-50)),.8)
end
attack = false
hum.WalkSpeed = storehumanoidWS
end

function EndGROUND()
	attack = true
hum.WalkSpeed = 0
bosschatfunc("DIE!",MAINRUINCOLOR.Color,1)
--CFuncs["Sound"].Create("rbxassetid://838392947", root, 10, 1)
CFuncs["Sound"].Create("rbxassetid://1368598393", root, 10, 1)
CFuncs["EchoSound"].Create("rbxassetid://1690475123", char, 1.5, 1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://1690475123", root, 10, 1,0,10,0.15,0.5,1)
local keptcolor = MAINRUINCOLOR
for i = 0,4,0.1 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
block(10,"Add",rarm.CFrame*CFrame.new(0,-6,0),vt(4,4,4),0.05,0.05,0.05,MAINRUINCOLOR,MAINRUINCOLOR.Color)
slash(math.random(25,50)/10,5,true,"Round","Add","Out",rarm.CFrame*CFrame.new(0,-6,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.1,0.01,0.1),-0.1,BrickColor.new("Really black"))
RH.C0=clerp(RH.C0,cf(1,-0.15,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-15),math.rad(-20)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(1),math.rad(20)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,-0.05)*angles(math.rad(-20),math.rad(0),math.rad(30)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-30)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(170),math.rad(-5),math.rad(10)),.1)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,0.1)*angles(math.rad(-5),math.rad(10),math.rad(-20)),.1)
end
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,25,0,0,0,root,false,0,1)
CFuncs["Sound"].Create("rbxassetid://1368637781", root, 3,1)
CFuncs["Sound"].Create("rbxassetid://763718160", root, 4, 1.1)
CFuncs["Sound"].Create("rbxassetid://782353443", root, 6, 1)
CFuncs["EchoSound"].Create("rbxassetid://824687369", root, 10, 1,0,10,0.25,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://824687369", char, 2, 1,0,10,0.25,0.5,1)
coroutine.resume(coroutine.create(function()
	local shval = 10
	for i = 0, 99 do
		swait()
		shval = shval - 0.1
		hum.CameraOffset = vt(math.random(-shval,shval)/15,math.random(-shval,shval)/15,math.random(-shval,shval)/15)
	end
	hum.CameraOffset = vt(0,0,0)
end))
sphere2(5,"Add",root.CFrame*CFrame.new(0,-3,0),vt(10,1,10),1,0.01,1,MAINRUINCOLOR,MAINRUINCOLOR.Color)
sphere2(5,"Add",root.CFrame*CFrame.new(0,-3,0),vt(10,1,10),2,0.01,2,MAINRUINCOLOR,MAINRUINCOLOR.Color)
for i = 0, 24 do
slash(math.random(15,50)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.01,0.01,0.01),math.random(200,500)/250,BrickColor.new("Really black"))
end
local rrot = 0
local xam = 1
coroutine.resume(coroutine.create(function()
for i = 0, 14 do
--swait()
rrot = rrot + 40*xam
xam = xam + 0.25
local bonus = xam
local xa = CreateParta(char,0.5,1,"Neon",BrickColor.random())
xa.Anchored = true
xa.Color = Color3.new(0,0,0)
xa.CFrame = root.CFrame*CFrame.new(0,-3,-rrot/1.75)
CreateMesh(xa,"Sphere",30*bonus,1,30*bonus)
local xc = 0
coroutine.resume(coroutine.create(function()
for i = 0, 99 do
	swait()
	xc = xc + 0.01
	xa.Color = Color3.new(xc,0,0)
end
xa.Transparency = 1
CFuncs["Sound"].Create("rbxassetid://331666100", xa, 5,0.75)
MagniDamage(xa, 30*bonus, 78*bonus,99*bonus, 0, "Normal")
for i = 0, 9 do
slash(math.random(15,50)/10,5,true,"Round","Add","Out",xa.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(0.01*bonus,0.01,0.01*bonus),math.random(50,125)/250*bonus,BrickColor.new("Really black"))
end
block(1.5,"Add",xa.CFrame*CFrame.new(0,-10,0),vt(30*bonus,30*bonus,30*bonus),0.3,0.3,0.3,keptcolor,keptcolor.Color)
sphere2(2,"Add",xa.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(25*bonus,1,25*bonus),0.05*bonus,1.5*bonus,0.05*bonus,keptcolor,keptcolor.Color)
sphere2(4,"Add",xa.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(30*bonus,1,30*bonus),0.05*bonus,1.5*bonus,0.05*bonus,BrickColor.new("Really black"),Color3.new(0,0,0))
game:GetService("Debris"):AddItem(xa, 5)
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/50,math.random(-10,10)/50,math.random(-10,10)/50)
end
hum.CameraOffset = vt(0,0,0)
end))
end))
end
end))
for i = 0,2,0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-25),math.rad(30)),.8)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(1),math.rad(20)),.8)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.25,-0.5)*angles(math.rad(30),math.rad(0),math.rad(50)),.8)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-50)),.8)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(35),math.rad(-10),math.rad(30)),.8)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,0.1)*angles(math.rad(-35),math.rad(10),math.rad(-50)),.8)
end
attack = false
hum.WalkSpeed = storehumanoidWS
end

function HeavenlyDisk()
attack = true
hum.WalkSpeed = 2
local keptcolor = MAINRUINCOLOR
local radm = math.random(1,3)
if radm == 1 then
bosschatfunc("Dont make this too HARD for you.",MAINRUINCOLOR.Color,1)
elseif radm == 2 then
bosschatfunc("Disks!",MAINRUINCOLOR.Color,1)
elseif radm == 3 then
bosschatfunc("Take it!",MAINRUINCOLOR.Color,1)
end
CFuncs["Sound"].Create("rbxassetid://847061203", root, 2, 1)
CFuncs["EchoSound"].Create("rbxassetid://1625448638", char, 4, 1,0,10,0.15,0.5,1)
sphere2(5,"Add",larm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(1,1,1),0.1,0.1,0.1,keptcolor,keptcolor.Color)
sphere2(5,"Add",larm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(1,1,1),0.2,0.2,0.2,keptcolor,keptcolor.Color)
for i = 0, 14 do
PixelBlock(1,math.random(1,3),"Add",larm.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,BrickColor.new("Toothpaste"),0)
end
for i = 0,2,0.1 do
swait()
sphere2(8,"Add",larm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(30)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.3)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(60)),.3)
end
CFuncs["Sound"].Create("rbxassetid://763755889", root, 2.5,1.1)
for i = 0,1,0.6 do
swait()
sphere2(8,"Add",larm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(30)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.6)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(60)),.6)
end
for i = 0,1,0.6 do
swait()
sphere2(8,"Add",larm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(30)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.6)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(60)),.6)
end
for i = 0,1,0.6 do
swait()
sphere2(8,"Add",larm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(180)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(30)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.6)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(60)),.6)
end
for i = 0,1,0.6 do
swait()
sphere2(8,"Add",larm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(270)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(30)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.6)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(60)),.6)
end
local rot = 15
for i = 0, 2 do
local dis = CreateParta(char,0.5,1,"Neon",BrickColor.new("Toothpaste"))
CFuncs["EchoSound"].Create("rbxassetid://763718160", dis, 3, 1.1,0,10,0.15,0.5,1)
dis.CFrame = root.CFrame*CFrame.new(0,2,-3)
CreateMesh(dis,"Sphere",10,1,10)
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-5,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(5,0,0)
local trl = Instance.new('Trail',wed)
trl.Attachment0 = at1
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(dis.Color)
trl.Lifetime = 0.6
local a = Instance.new("Part",workspace)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("Bright red")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	    print("hi")
	) 
	local ignore = dis
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (dis.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(dis.CFrame.p, position) * CFrame.new(0, 0, 0)
dis.CFrame = a.CFrame
dis.CFrame = dis.CFrame*CFrame.Angles(0,math.rad(rot),0)
a:Destroy()
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*250
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 5)
local hitted = false
coroutine.resume(coroutine.create(function()
dis.Touched:connect(function(hit) 
	if hitted == false and hit.Parent ~= char then
	hitted = true
	CFuncs["EchoSound"].Create("rbxassetid://782200047", dis, 7, 1.1,0,10,0.15,0.5,1)
	MagniDamage(dis, 30, 82,34575, 0, "Normal")
	sphere2(8,"Add",dis.CFrame,vt(10,1,10),1,0.1,1,keptcolor,keptcolor.Color)
	sphere2(4,"Add",dis.CFrame,vt(1,1,1),0.5,0.5,0.5,keptcolor,keptcolor.Color)
	sphere2(3,"Add",dis.CFrame,vt(1,1,1),0.5,0.5,0.5,BrickColor.new("White"),Color3.new(1,1,1))
	coroutine.resume(coroutine.create(function()
		for i = 0, 9 do
local disr = CreateParta(char,1,1,"Neon",keptcolor)
disr.CFrame = dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",disr)
at1.Position = vt(-2,0,0)
local at2 = Instance.new("Attachment",disr)
at2.Position = vt(2,0,0)
local trl = Instance.new('Trail',disr)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://2342682798"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(Color3.new(0.3,1,1))
trl.Lifetime = 0.5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = disr.CFrame.lookVector*math.random(50,200)
bv.Parent = disr
local val = 0
coroutine.resume(coroutine.create(function()
	swait(30)
	for i = 0, 9 do
		swait()
		val = val + 0.1
		trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, val),NumberSequenceKeypoint.new(1, 1)})
	end
game:GetService("Debris"):AddItem(disr, 3)
end))
end
local eff = Instance.new("ParticleEmitter",dis)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(Color3.new(0.3,1,1))
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(20,250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.25)
eff.Enabled = false
end))
	for i = 0, 9 do
		slash(math.random(10,20)/10,5,true,"Round","Add","Out",dis.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.01,0.01,0.01),math.random(100,200)/250,BrickColor.new("White"))
	end
for i = 0, 19 do
PixelBlock(1,math.random(5,20),"Add",dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),4,4,4,0.08,BrickColor.new("Toothpaste"),0)
end
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/70,math.random(-10,10)/70,math.random(-10,10)/70)
end
hum.CameraOffset = vt(0,0,0)
end))
dis.Anchored = true
dis.Transparency = 1
wait(8)
dis:Destroy()
end
end)
end))
rot = rot - 15
end
for i = 0,2,0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(-30),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(5)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(-50)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(-60)),.3)
end
attack = false
hum.WalkSpeed = storehumanoidWS
end


function RapidBurst()
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://1368598393", char, 2.5, 0.5)
CFuncs["Sound"].Create("rbxassetid://1368598393", root, 10, 0.5)
CFuncs["EchoSound"].Create("rbxassetid://1718412034", char, 4, 1,0,10,0.15,0.5,1)
bosschatfunc("PIECE OF TRASH!",MAINRUINCOLOR.Color,1.8)
bosschatfunc("PIECE OF TRASH!",MAINRUINCOLOR.Color,1.9)
bosschatfunc("PIECE OF TRASH!",MAINRUINCOLOR.Color,2)
local keptcolor = MAINRUINCOLOR
for i = 0,8,0.1 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
slash(math.random(25,50)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,25,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(2,0.01,2),-2,BrickColor.random())
block(10,"Add",root.CFrame*CFrame.new(0,25,0),vt(0,0,0),0.5,0.5,0.5,BrickColor.random(),BrickColor.random().Color)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-15 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(15 + 2 * math.cos(sine / 32))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.15 + 0.02 * math.cos(sine / 32),-0.1 + 0.05 * math.cos(sine / 32))*angles(math.rad(-15 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-25 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.35,1 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(165 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(-10 + 3 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1.35,1 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(165 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(13 - 3 * math.cos(sine / 45))),.1)
end
for i = 0, 99 do
local dis = CreateParta(char,1,1,"Neon",MAINRUINCOLOR)
dis.CFrame = root.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-25000,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(25000,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(BrickColor.random().Color)
trl.Lifetime = 5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*math.random(500,2500)
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 5)
end
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,125,0,0,0,root,false,0,1)
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,125,0,0,0,root,false,0,1.5)
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,125,0,0,0,root,false,0,3)
sphere2(2,"Add",root.CFrame,vt(1,1,1),1,1,1,BrickColor.random(),BrickColor.random().Color)
sphere2(2,"Add",root.CFrame,vt(1,1,1),2,2,2,BrickColor.random(),BrickColor.random().Color)
sphere2(2,"Add",root.CFrame,vt(1,1,1),4,4,4,BrickColor.random(),BrickColor.random().Color)
sphere2(2,"Add",root.CFrame,vt(1,1,1),8,8,8,BrickColor.random(),BrickColor.random().Color)
CFuncs["Sound"].Create("rbxassetid://1841058541", root, 10,1)
CFuncs["Sound"].Create("rbxassetid://2095993595", char, 5,0.8)
CFuncs["Sound"].Create("rbxassetid://1841058541", char, 5,1)
hum.CameraOffset = vt(0,0,0)
for i = 0, 24 do
slash(math.random(10,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(500,1500)/250,BrickColor.random())
end
local distam = 0
coroutine.resume(coroutine.create(function()
for i = 0, 99 do
	wait()
distam = distam + 1
local xa = CreateParta(char,1,1,"SmoothPlastic",BrickColor.random())
xa.Anchored = true
xa.CFrame = root.CFrame*CFrame.new(math.random(-distam,distam),math.random(-distam,distam),math.random(-distam,distam))
game:GetService("Debris"):AddItem(xa, 5)
for i = 0, 4 do
slash(math.random(25,50)/10,5,true,"Round","Add","Out",xa.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(200,500)/250,BrickColor.random())
end
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",xa)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(BrickColor.random().Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(1,3)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,30,0),NumberSequenceKeypoint.new(0.2,5,0),NumberSequenceKeypoint.new(0.8,5,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(50,500)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.25)
eff.Enabled = false
end))
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
end
hum.CameraOffset = vt(0,0,0)
end))
CFuncs["Sound"].Create("rbxassetid://675172759", xa, 7,math.random(100,200)/200)
sphere2(5,"Add",xa.CFrame,vt(1,1,1),1,1,1,BrickColor.random(),BrickColor.random().Color)
sphere2(5,"Add",xa.CFrame,vt(1,1,1),2,2,2,BrickColor.random(),BrickColor.random().Color)
MagniDamage(xa, 60, 9999,99999, 0, "Normal")
end
end))
attack = false
hum.WalkSpeed = storehumanoidWS
end

function InsaneBeam()
attack = true
hum.WalkSpeed = 0
local keptcolor = MAINRUINCOLOR
local orb = Instance.new("Part", char)
        orb.BrickColor = keptcolor
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 1
        orb.TopSurface = 0
        orb.BottomSurface = 0
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = vt(22.5,10000,22.5)
orb.Anchored = true
orb.Orientation = vt(0,0,0)
orb.CFrame = orb.CFrame*CFrame.new(0,1,0)
CFuncs["LongSound"].Create("rbxassetid://1545630949", char, 1.5, 1)
coroutine.resume(coroutine.create(function()
coroutine.resume(coroutine.create(function()
for i = 0, 399 do
swait()
orbm.Scale = orbm.Scale - vt(0.05,0,0.05)
orb.Transparency = orb.Transparency - 0.0025
end
end))
wait(9)
coroutine.resume(coroutine.create(function()
local hfr,pfr=rayCast(orb.Position,(CFrame.new(orb.Position,orb.Position - Vector3.new(0,1,0))).lookVector,4,char)
if hfr ~= nil then
    for i = 0, 49 do
local deb = Instance.new("Part", char)
deb.Anchored = true
deb.CanCollide = false
deb.FormFactor = 3
deb.Name = "Ring"
deb.Material = hitfloor.Material
deb.Color = hitfloor.Color
deb.Size = vt(math.random(50,55),math.random(50,55),math.random(50,55))
deb.Transparency = 0
deb.TopSurface = 0
deb.BottomSurface = 0
deb.CFrame = orb.CFrame*CFrame.new(math.random(-150,150),-5,math.random(-150,150))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local deb2 = Instance.new("Part", char)
deb2.CanCollide = false
deb2.FormFactor = 3
deb2.Name = "Ring"
deb2.Material = hitfloor.Material
deb2.Color = hitfloor.Color
deb2.Size = vt(math.random(34,38),math.random(34,38),math.random(34,38))
deb2.Transparency = 0
deb2.TopSurface = 0
deb2.BottomSurface = 0
deb2.Velocity = vt(math.random(-150,150),math.random(250,650),math.random(-150,150))
deb2.CFrame = orb.CFrame*CFrame.new(math.random(-60,60),-5,math.random(-60,60))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local eff = Instance.new("ParticleEmitter",deb)
eff.Texture = "rbxassetid://363275192"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(keptcolor.Color)
eff.Rate = 100
eff.Lifetime = NumberRange.new(1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,40,0),NumberSequenceKeypoint.new(1,45,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.5,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(0,5)
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-10,10)
local at1 = Instance.new('Attachment',deb2)
at1.Position = vt(0,15,0)
local at2 = Instance.new('Attachment',deb2)
at2.Position = vt(0,-15,0)
local tl = Instance.new('Trail',deb2)
tl.Attachment0 = at1
tl.Attachment1 = at2
tl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl.Color = ColorSequence.new(BrickColor.new('White').Color)
tl.Lifetime = 1
game:GetService("Debris"):AddItem(deb,30)
game:GetService("Debris"):AddItem(deb2,30)
coroutine.resume(coroutine.create(function()
    wait(15)
eff.Enabled = false
    for i = 0, 49 do
        swait()
        deb.Transparency = deb.Transparency + 0.02
    end
wait(1)
    deb:Destroy()
end))
end
end
end))
for i = 0, 199 do
swait(1.5)
for i, v in pairs(FindNearestHead(orb.CFrame.p, 175)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
sphere2(5,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(10,10,10),5,5,5,keptcolor)
sphere2(5,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(10,10,10),1,35,1,keptcolor)
sphere2(5,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(10,10,10),0,50,0,keptcolor)
sphere2(5,"Add",orb.CFrame,vt(10,100000,10),2,2,2,keptcolor)
end
orb:Destroy()
end))
hum.WalkSpeed = storehumanoidWS
attack = false
end

function InsaneDrop()
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://907329669", char, 2.5, 0.5)
CFuncs["Sound"].Create("rbxassetid://907329669", root, 10, 0.5)
CFuncs["EchoSound"].Create("rbxassetid://907329669", char, 4, 1,0,10,0.15,0.5,1)
bosschatfunc("LEAVE THE DEATH WHERE THEY FALL!",MAINRUINCOLOR.Color,1.8)
bosschatfunc("LEAVE THE DEATH WHERE THEY FALL!",MAINRUINCOLOR.Color,1.9)
bosschatfunc("LEAVE THE DEATH WHERE THEY FALL!",MAINRUINCOLOR.Color,2)
local keptcolor = MAINRUINCOLOR
for i = 0,8,0.1 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
slash(math.random(25,50)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,25,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(2,0.01,2),-2,BrickColor.random())
block(10,"Add",root.CFrame*CFrame.new(0,25,0),vt(0,0,0),0.5,0.5,0.5,BrickColor.random(),BrickColor.random().Color)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-15 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(15 + 2 * math.cos(sine / 32))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.15 + 0.02 * math.cos(sine / 32),-0.1 + 0.05 * math.cos(sine / 32))*angles(math.rad(-15 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-25 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.35,1 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(165 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(-10 + 3 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1.35,1 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(165 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(13 - 3 * math.cos(sine / 45))),.1)
end
for i = 0, 99 do
local dis = CreateParta(char,1,1,"Neon",MAINRUINCOLOR)
dis.CFrame = root.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-25000,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(25000,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(BrickColor.random().Color)
trl.Lifetime = 5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*math.random(500,2500)
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 5)
end
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,125,0,0,0,root,false,0,1)
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,125,0,0,0,root,false,0,1.5)
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,125,0,0,0,root,false,0,3)
sphere2(2,"Add",root.CFrame,vt(1,1,1),1,1,1,BrickColor.random(),BrickColor.random().Color)
sphere2(2,"Add",root.CFrame,vt(1,1,1),2,2,2,BrickColor.random(),BrickColor.random().Color)
sphere2(2,"Add",root.CFrame,vt(1,1,1),4,4,4,BrickColor.random(),BrickColor.random().Color)
sphere2(2,"Add",root.CFrame,vt(1,1,1),8,8,8,BrickColor.random(),BrickColor.random().Color)
CFuncs["Sound"].Create("rbxassetid://1841058541", root, 10,1)
CFuncs["Sound"].Create("rbxassetid://2095993595", char, 5,0.8)
CFuncs["Sound"].Create("rbxassetid://1841058541", char, 5,1)
hum.CameraOffset = vt(0,0,0)
for i = 0, 24 do
slash(math.random(10,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(500,1500)/250,BrickColor.random())
end
local distam = 0
coroutine.resume(coroutine.create(function()
for i = 0, 99 do
	wait()
distam = distam + 1
local xa = CreateParta(char,1,1,"SmoothPlastic",BrickColor.random())
xa.Anchored = true
xa.CFrame = root.CFrame*CFrame.new(math.random(-distam,distam),math.random(-distam,distam),math.random(-distam,distam))
game:GetService("Debris"):AddItem(xa, 5)
for i = 0, 4 do
slash(math.random(25,50)/10,5,true,"Round","Add","Out",xa.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(200,500)/250,BrickColor.random())
end
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",xa)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(BrickColor.random().Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(1,3)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,30,0),NumberSequenceKeypoint.new(0.2,5,0),NumberSequenceKeypoint.new(0.8,5,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(50,500)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.25)
eff.Enabled = false
end))
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
end
hum.CameraOffset = vt(0,0,0)
end))
CFuncs["Sound"].Create("rbxassetid://675172759", xa, 7,math.random(100,200)/200)
sphere2(5,"Add",xa.CFrame,vt(1,1,1),1,1,1,BrickColor.random(),BrickColor.random().Color)
sphere2(5,"Add",xa.CFrame,vt(1,1,1),2,2,2,BrickColor.random(),BrickColor.random().Color)
MagniDamage(xa, 60, 9999,99999, 0, "Normal")
end
end))
attack = false
hum.WalkSpeed = storehumanoidWS
end

function FallenOrbs()
attack = true
hum.WalkSpeed = 2
local keptcolor = MAINRUINCOLOR
CFuncs["EchoSound"].Create("rbxassetid://1448033299", char, 5, 1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://1448033299", root, 60, 1,0,10,0.15,0.5,1)
local radm = math.random(1,3)
if radm == 1 then
bosschatfunc("This wont be easy to you.",MAINRUINCOLOR.Color,1)
elseif radm == 2 then
bosschatfunc("How about this?",MAINRUINCOLOR.Color,1)
elseif radm == 3 then
bosschatfunc("DIE!",MAINRUINCOLOR.Color,1)
end
coroutine.resume(coroutine.create(function()
for i = 0, 29 do
swait(2)
local dis = CreateParta(char,0.5,1,"Neon",MAINRUINCOLOR)
dis.Anchored = true
CFuncs["Sound"].Create("rbxassetid://137463716", dis, 2.5,1.5)
dis.CFrame = root.CFrame*CFrame.new(math.random(-35,35),math.random(5,35),math.random(-35,35))
CreateMesh(dis,"Sphere",2,2,2)
sphere2(5,"Add",dis.CFrame,vt(1,1,1),0.1,0.1,0.1,keptcolor,keptcolor.Color)
slash(math.random(10,20)/10,5,true,"Round","Add","Out",dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(10,50)/250,BrickColor.new("White"))
coroutine.resume(coroutine.create(function()
wait(0.5)
dis.Anchored = false
CFuncs["EchoSound"].Create("rbxassetid://1602800656", dis, 9, 1,0,2,0.15,0.1,1)
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-1,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(1,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(dis.Color)
trl.Lifetime = 0.6
local a = Instance.new("Part",workspace)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("Bright red")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	    print("hi")
	) 
	local ignore = dis
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (dis.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(dis.CFrame.p, position) * CFrame.new(0, 0, 0)
dis.CFrame = a.CFrame
a:Destroy()
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*500
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 5)
local hitted = false
coroutine.resume(coroutine.create(function()
dis.Touched:connect(function(hit) 
	if hitted == false and hit.Parent ~= char then
	hitted = true
	CFuncs["EchoSound"].Create("rbxassetid://675172759", dis, 5, 0.8,0,10,0.15,0.5,1)
	MagniDamage(dis, 60, 25456,124672, 0, "Normal")
	sphere2(1,"Add",dis.CFrame,vt(1,1,1),1,1,1,keptcolor,keptcolor.Color)
	sphere2(8,"Add",dis.CFrame,vt(1,1,1),1.25,1.25,1.25,BrickColor.new("White"),Color3.new(1,1,1))
	coroutine.resume(coroutine.create(function()
for i = 0, 4 do
local disr = CreateParta(char,1,1,"Neon",keptcolor)
disr.CFrame = dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",disr)
at1.Position = vt(-10,0,0)
local at2 = Instance.new("Attachment",disr)
at2.Position = vt(10,0,0)
local trl = Instance.new('Trail',disr)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://2342682798"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(disr.Color)
trl.Lifetime = 0.5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = disr.CFrame.lookVector*math.random(125,250)
bv.Parent = disr
local val = 0
coroutine.resume(coroutine.create(function()
	swait(30)
	for i = 0, 9 do
		swait()
		val = val + 0.1
		trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, val),NumberSequenceKeypoint.new(1, 1)})
	end
game:GetService("Debris"):AddItem(disr, 3)
end))
end
local eff = Instance.new("ParticleEmitter",dis)
eff.Texture = "rbxassetid://1049219073"
eff.LightEmission = 1
eff.Color = ColorSequence.new(dis.Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(20,250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.5)
eff.Enabled = false
end))
	for i = 0, 4 do
		slash(math.random(20,50)/10,5,true,"Round","Add","Out",dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(100,200)/250,BrickColor.new("White"))
	end
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/70,math.random(-10,10)/70,math.random(-10,10)/70)
end
hum.CameraOffset = vt(0,0,0)
end))
dis.Anchored = true
dis.Transparency = 1
wait(8)
dis:Destroy()
end
end)
end))
end))
end
end))
for i = 0,9,0.1 do
swait()
sphere2(8,"Add",rarm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,MAINRUINCOLOR,MAINRUINCOLOR.Color)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 2 * math.cos(sine / 32))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 2 * math.cos(sine / 32))),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15 - 2 * math.cos(sine / 37)),math.rad(-15 + 1 * math.cos(sine / 58)),math.rad(-90 + 2 * math.cos(sine / 53))),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(90 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(90 + 2 * math.cos(sine / 45))),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(8 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(-9 - 4 * math.cos(sine / 45))),.3)
end
attack = false
hum.WalkSpeed = storehumanoidWS
end

function CyberSlash()
local posit = -2
attack = true
hum.WalkSpeed = 5
CFuncs["EchoSound"].Create("rbxassetid://1448033920", char, 5, 1,0,10,0.15,0.5,1)
local radm = math.random(1,3)
if radm == 1 then
bosschatfunc("FIBER!!!",MAINRUINCOLOR.Color,1)
elseif radm == 2 then
bosschatfunc("SLASHED!!",MAINRUINCOLOR.Color,1)
elseif radm == 3 then
bosschatfunc("TAKE!!",MAINRUINCOLOR.Color,1)
end
CFuncs["Sound"].Create("rbxassetid://169380495", sorb2, 1, 1)
	for i = 0,2,0.1 do
		swait()
sphere2(7,"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.075,-0.01,MAINRUINCOLOR)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,1)* angles(math.rad(0),math.rad(0),math.rad(30)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-30)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(45), math.rad(6), math.rad(-30)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(8 - 6 * math.cos(sine / 67)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-18 - 5 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-15 - 8 * math.cos(sine / 74)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(31 + 8 * math.cos(sine / 38))),.1)
	end
for i = 0, 2 do
CameraEnshaking(1,2)
local hite = Instance.new("Part", char)
        hite.Anchored = true
        hite.CanCollide = false
        hite.FormFactor = 3
        hite.Name = "Ring"
        hite.Material = "Neon"
        hite.Size = Vector3.new(1, 1, 1)
        hite.Transparency = 1
        hite.TopSurface = 0
        hite.BottomSurface = 0
hite.CFrame = root.CFrame*CFrame.new(0,posit,-5)
CFuncs["Sound"].Create("rbxassetid://231917856", hite, 0.5, 0.9)
CFuncs["Sound"].Create("rbxassetid://231917758", hite, 0.25, 0.8)
coroutine.resume(coroutine.create(function()
for i = 0, 1 do
	swait()
		sphere2(4,"Add",hite.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),vt(0.5,0.5,0.5),-0.005,0.25,-0.005,MAINRUINCOLOR)
		sphere2(4,"Add",hite.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)),vt(0.5,0.5,0.5),-0.005,0.25,-0.005,MAINRUINCOLOR)
	    sphere2(4,"Add",hite.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(0.5,0.5,0.5),-0.005,0.25,-0.005,MAINRUINCOLOR)
end
end))
sphere2(6,"Add",hite.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(2,2,2),0.5,-0.01,-0.01,MAINRUINCOLOR)
MagniDamage(hite, 3, 30,40, 0, "Normal")
game:GetService("Debris"):AddItem(hite, 5)
posit = posit + 2
end
	for i = 0,1,0.1 do
		swait()
sphere2(7,"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.075,-0.01,MAINRUINCOLOR)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,1)* angles(math.rad(0),math.rad(0),math.rad(-80)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(80)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(110), math.rad(6), math.rad(40)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(-20),math.rad(0)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(0)),.5)
	end
	for i = 0,1,0.1 do
		swait()
sphere2(7,"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.075,-0.01,MAINRUINCOLOR)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,-0.2,1)* angles(math.rad(20),math.rad(0),math.rad(60)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-60)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(60)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(60), math.rad(6), math.rad(-50)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(-20),math.rad(30)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(40)),.5)
	end
	posit = -6
	for i = 0, 6 do
CameraEnshaking(1,3)
local hite = Instance.new("Part", char)
        hite.Anchored = true
        hite.CanCollide = false
        hite.FormFactor = 3
        hite.Name = "Ring"
        hite.Material = "Neon"
        hite.Size = Vector3.new(1, 1, 1)
        hite.Transparency = 1
        hite.TopSurface = 0
        hite.BottomSurface = 0
hite.CFrame = root.CFrame*CFrame.new(posit,0,-5)
CFuncs["Sound"].Create("rbxassetid://231917856", hite, 0.5, 1.2)
CFuncs["Sound"].Create("rbxassetid://231917758", hite, 0.25, 1)
sphere2(6,"Add",hite.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(1,1,1),-0.01,1,-0.01,MAINRUINCOLOR)
coroutine.resume(coroutine.create(function()
for i = 0, 2 do
	swait()
		sphere2(4,"Add",hite.CFrame*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),vt(0.5,0.5,0.5),-0.005,0.25,-0.005,MAINRUINCOLOR)
		sphere2(4,"Add",hite.CFrame*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)),vt(0.5,0.5,0.5),-0.005,0.25,-0.005,MAINRUINCOLOR)
	    sphere2(4,"Add",hite.CFrame*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(0.5,0.5,0.5),-0.005,0.25,-0.005,MAINRUINCOLOR)
end
end))
MagniDamage(hite, 5, 40,70, 0, "Normal")
game:GetService("Debris"):AddItem(hite, 5)
posit = posit + 2
	end
	for i = 0,1,0.1 do
		swait()
sphere2(7,"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.075,-0.01,MAINRUINCOLOR)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0.1,1.5)* angles(math.rad(-10),math.rad(0),math.rad(-60)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(50)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(140), math.rad(6), math.rad(-50)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(10),math.rad(-10)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(60)),.5)
	end
	hum.WalkSpeed = storehumanoidWS
attack = false
end

function EquinoxOrbs()
hum.WalkSpeed = 0
attack = true
local radm = math.random(1,3)
if radm == 1 then
bosschatfunc("NOX-DASH!!!",MAINRUINCOLOR.Color,1)
elseif radm == 2 then
bosschatfunc("Beware from behind",MAINRUINCOLOR.Color,1)
elseif radm == 3 then
bosschatfunc("I'M COMING!!",MAINRUINCOLOR.Color,1)
end
for i = 0,1,0.1 do
swait()
	RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1.5),math.rad(0),math.rad(-20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1),math.rad(0),math.rad(20)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.5,0.5)*angles(math.rad(90),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-17),math.rad(0),math.rad(0)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(5),math.rad(40)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-5),math.rad(-40)),.3)
end
sphere2(5,"Add",root.CFrame,vt(1,1,1),1.5,1.5,1.5,MAINRUINCOLOR)
sphere2(5,"Add",root.CFrame,vt(1,1,1),1,1,1,MAINRUINCOLOR)
for i = 0, 24 do
		slash(math.random(10,50)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(90),math.rad(math.random(-360,360)),math.rad(0)),vt(0.01,0.01,0.01),math.random(100,400)/250,BrickColor.new("White"))
end
CFuncs["Sound"].Create("rbxassetid://763716870", root, 8,1)
CFuncs["Sound"].Create("rbxassetid://782353443", root, 10,0.8)
CFuncs["Sound"].Create("rbxassetid://782225570", root, 9,0.5)
CFuncs["Sound"].Create("rbxassetid://763717569", root, 8,0.9)
for i = 0,4,0.1 do
swait()
root.CFrame = root.CFrame + root.CFrame.lookVector*7.5
local dis = CreateParta(char,0.25,1,"Neon",MAINRUINCOLOR)
CreateMesh(dis,"Sphere",1,1,1)
dis.Anchored = true
dis.CFrame = larm.CFrame*CFrame.new(0,-3,0)
local dis2 = CreateParta(char,0.25,1,"Neon",BrickColor.new("Really black"))
CreateMesh(dis2,"Sphere",1,1,1)
dis2.Anchored = true
dis2.CFrame = rarm.CFrame*CFrame.new(0,-3,0)
sphere2(5,"Add",dis.CFrame,vt(1,1,1),0.1,0.1,0.1,dis.BrickColor,dis.Color)
sphere2(5,"Add",dis2.CFrame,vt(1,1,1),0.1,0.1,0.1,dis2.BrickColor,dis2.Color)
coroutine.resume(coroutine.create(function()
	swait(60)
	dis.Transparency = 1
	dis2.Transparency = 1
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/40,math.random(-10,10)/40,math.random(-10,10)/40)
end
hum.CameraOffset = vt(0,0,0)
end))
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",dis)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(dis.Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(50,450)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
local eff2 = eff:Clone()
eff2.Parent = dis2
eff2.LightEmission = 0
eff2.Color = ColorSequence.new(dis2.Color)
wait(0.25)
eff.Enabled = false
eff2.Enabled = false
end))
MagniDamage(dis, 55, 89,219788936, 0, "Normal")
MagniDamage(dis2, 55, 89,219788936, 0, "Normal")
    for i = 0, 2 do
		slash(math.random(10,80)/10,5,true,"Round","Add","Out",dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(100,300)/250,dis.BrickColor)
		slash(math.random(10,80)/10,5,true,"Round","Add","Out",dis2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(100,300)/250,dis2.BrickColor)
	end
	CFuncs["Sound"].Create("rbxassetid://782353117", dis, 1,0.75)
	CFuncs["Sound"].Create("rbxassetid://782353117", dis2, 1,0.75)
	CFuncs["Sound"].Create("rbxassetid://1666361078", dis, 1,1.25)
	CFuncs["Sound"].Create("rbxassetid://1666361078", dis2, 1,1.25)
	CFuncs["Sound"].Create("rbxassetid://782353443", dis, 2,1.15)
	CFuncs["Sound"].Create("rbxassetid://782353443", dis2, 2,1.15)
	sphere2(3,"Add",dis.CFrame,vt(1,1,1),0.8,0.8,0.8,dis.BrickColor,dis.Color)
	sphere2(3,"Add",dis2.CFrame,vt(1,1,1),0.8,0.8,0.8,dis2.BrickColor,dis2.Color)
end))
game:GetService("Debris"):AddItem(dis, 5)
game:GetService("Debris"):AddItem(dis2, 5)
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1.5),math.rad(0),math.rad(-20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1),math.rad(0),math.rad(20)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.5,0.5)*angles(math.rad(90),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-17),math.rad(0),math.rad(0)),.2)
RW.C0=clerp(RW.C0,cf(1.4,1.5,0)*angles(math.rad(0),math.rad(5),math.rad(210)),.1)
LW.C0=clerp(LW.C0,cf(-1.4,1.5,0)*angles(math.rad(0),math.rad(-5),math.rad(-210)),.1)
end
attack = false
hum.WalkSpeed = storehumanoidWS
end
function FallenDEMISE()
attack = true
hum.WalkSpeed = 0
local keptcolor = MAINRUINCOLOR
bosschatfunc("ALL WILL DIE!",MAINRUINCOLOR.Color,3)
CFuncs["Sound"].Create("rbxassetid://289315275", char, 2.5,0.75)
CFuncs["Sound"].Create("rbxassetid://136007472", char, 2,0.5)
for i = 0, 15, 0.1 do
swait()
local dis = CreateParta(char,1,1,"Neon",MAINRUINCOLOR)
dis.CFrame = root.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-25000,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(25000,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(dis.Color)
trl.Lifetime = 5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*math.random(500,2500)
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 1)
sphere2(15,"Add",root.CFrame,vt(8,8,8),2,2,2,MAINRUINCOLOR)
slash(math.random(30,150)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))),vt(1,0.01,1),math.random(100,500)/250,BrickColor.new("Toothpaste"))
slash(math.random(30,150)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))),vt(1,0.01,1),math.random(100,500)/250,BrickColor.new("Deep orange"))
RH.C0=clerp(RH.C0,cf(1,-0.35,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(-35)),.1)
LH.C0=clerp(LH.C0,cf(-1,-0.45,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(35)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(55),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.15,0.5,-0.5)*angles(math.rad(92),math.rad(0),math.rad(-67)),.1)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(68)),.1)
end
CFuncs["Sound"].Create("rbxassetid://294188875", char, 10,1)
for i = 0, 30, 0.1 do
swait()
coroutine.resume(coroutine.create(function()
for i, v in pairs(FindNearestHead(root.CFrame.p, 10000000)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
end))
local dis = CreateParta(char,1,1,"Neon",MAINRUINCOLOR)
dis.CFrame = root.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-50000,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(50000,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(dis.Color)
trl.Lifetime = 10
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*math.random(1500,10000)
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, math.random(1,4))
sphere2(15,"Add",root.CFrame,vt(8,80000,8),5,1,5,MAINRUINCOLOR)
sphere2(15,"Add",root.CFrame,vt(8,8,8),8,8,8,MAINRUINCOLOR)
sphere2(2,"Add",root.CFrame*CFrame.new(math.random(-2000,2000),math.random(-2000,2000),math.random(-2000,2000)),vt(0,0,0),5,5,5,BrickColor.new("Deep orange"))
sphere2(2,"Add",root.CFrame*CFrame.new(math.random(-2000,2000),math.random(-2000,2000),math.random(-2000,2000)),vt(0,0,0),5,5,5,BrickColor.new("Toothpaste"))
slash(math.random(50,100)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(5,0.01,5),math.random(500,5000)/250,BrickColor.new("Deep orange"))
slash(math.random(50,100)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(5,0.01,5),math.random(500,5000)/250,BrickColor.new("Toothpaste"))
for i = 0, 2 do
slash(math.random(50,100)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,math.random(-3,1000),0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))),vt(2,0.01,2),math.random(250,750)/250,MAINRUINCOLOR)
end
RH.C0=clerp(RH.C0,cf(1,-0.35,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(-35)),.1)
LH.C0=clerp(LH.C0,cf(-1,-0.45,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(35)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(55),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.15,0.5,-0.5)*angles(math.rad(92),math.rad(0),math.rad(-67)),.1)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(68)),.1)
end
attack = false
hum.WalkSpeed = storehumanoidWS
end

function SpeedDrop()
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://1208650519", tors, 5, 1)
local poste = 3
local rotation = 0
local rate = 0
bosschatfunc("BUG.",MAINRUINCOLOR.Color,2)
for i = 0, 124 do
swait()
rotation = rotation + rate
poste = poste + 0.1
rate = rate + 0.1
sphere2(8,"Add",root.CFrame*CFrame.new(0,-3,0),vt(poste,1,poste),0.05*poste/3,0,0.05*poste/3,MAINRUINCOLOR)
sphere2(8,"Add",root.CFrame*CFrame.new(math.random(-20,20),-3,math.random(-20,20)),vt(1,1,1),-0.01,0.5,-0.01,MAINRUINCOLOR)
sphere2(8,"Add",root.CFrame*CFrame.Angles(0,math.rad(rotation),0)*CFrame.new(0,-3,poste)*CFrame.Angles(math.rad(40),0,0),vt(1,1,1),0.025,0.25,0.025,MAINRUINCOLOR)
sphere2(8,"Add",root.CFrame*CFrame.Angles(0,math.rad(90 + rotation),0)*CFrame.new(0,-3,poste)*CFrame.Angles(math.rad(40),0,0),vt(1,1,1),0.025,0.25,0.025,MAINRUINCOLOR)
sphere2(8,"Add",root.CFrame*CFrame.Angles(0,math.rad(180 + rotation),0)*CFrame.new(0,-3,poste)*CFrame.Angles(math.rad(40),0,0),vt(1,1,1),0.025,0.25,0.025,MAINRUINCOLOR)
sphere2(8,"Add",root.CFrame*CFrame.Angles(0,math.rad(270 + rotation),0)*CFrame.new(0,-3,poste)*CFrame.Angles(math.rad(40),0,0),vt(1,1,1),0.025,0.25,0.025,MAINRUINCOLOR)
RH.C0=clerp(RH.C0,cf(1,-0.35,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(-20),math.rad(30)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.5)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.75)*angles(math.rad(30),math.rad(0),math.rad(20)),.5)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(-20)),.5)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(40),math.rad(-8),math.rad(-10)),.5)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(-30)),.5)
end
CameraEnshaking(3,7)
bosschatfunc("AN ERROR HAS OCCURED",MAINRUINCOLOR.Color,2)
local loc = Instance.new("Part", char)
loc.BrickColor = MAINRUINCOLOR
loc.CanCollide = false
loc.FormFactor = 3
loc.Name = "Ring"
loc.Material = "Neon"
loc.Size = Vector3.new(1, 1, 1)
loc.Transparency = 1
loc.TopSurface = 0
loc.BottomSurface = 0
loc.Anchored = true
loc.CFrame = root.CFrame + root.CFrame.lookVector*100
CFuncs["Sound"].Create("rbxassetid://782353443", loc, 5, 1)
CFuncs["Sound"].Create("rbxassetid://1177785010", loc, 6, 1)
MagniDamage(loc, 95, 500,6000, 0, "Normal")
sphere2(10,"Add",loc.CFrame,vt(5,5,5),-0.05,-0.05,5,MAINRUINCOLOR)
sphere2(8,"Add",loc.CFrame,vt(5,5,5),2.5,2.5,2.5,MAINRUINCOLOR)
sphere2(4,"Add",loc.CFrame,vt(5,5,5),2.5,2.5,2.5,MAINRUINCOLOR)
sphere2(2,"Add",loc.CFrame,vt(5,5,5),2.5,2.5,2.5,MAINRUINCOLOR)
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",loc)
eff.Texture = "rbxassetid://363275192"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(MAINRUINCOLOR.Color)
eff.Rate = 10000
eff.Lifetime = NumberRange.new(1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,50,0),NumberSequenceKeypoint.new(0.8,75,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(100,500)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.5)
eff.Enabled = false
end))
for i = 0, 49 do
sphere2(math.random(100,300)/100,"Add",loc.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,5),-0.01,-0.01,5,MAINRUINCOLOR)
end
for i = 0, 9 do
sphere2(3,"Add",loc.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),0),vt(1,1,5),-0.01,-0.01,5,MAINRUINCOLOR)
end
game:GetService("Debris"):AddItem(loc, 5)
root.CFrame = root.CFrame + root.CFrame.lookVector*200
hum.WalkSpeed = storehumanoidWS
attack = false
end

function cutesigh()
attack = true
hum.WalkSpeed = 0
bosschatfunc("sigh~~",MAINRUINCOLOR.Color,2)
local blush = Instance.new("Decal",hed)
blush.Texture = "rbxassetid://898404027"
blush.Face = "Front"
CFuncs["Sound"].Create("rbxassetid://294861193", char, 9,1)
for i = 0, 9, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(19 + 8 * math.cos(sine / 62)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-20 - 3 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(3 - 1 * math.cos(sine / 55)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(26 + 5 * math.cos(sine / 41))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(-13 - 2 * math.cos(sine / 32)),math.rad(3),math.rad(10 - 4 * math.cos(sine / 67))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(23 - 8 * math.cos(sine / 37)),math.rad(-21 + 2 * math.cos(sine / 58)),math.rad(-10 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(0 + 0 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(33 + 5 * math.cos(sine / 51))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(0 - 0 * math.cos(sine / 73)),math.rad(2 - 3 * math.cos(sine / 53)),math.rad(-33 - 5 * math.cos(sine / 51))),.1)
end
coroutine.resume(coroutine.create(function()
for i = 0, 49 do
swait()
blush.Transparency = blush.Transparency + 0.02
end
blush:Destroy()
end))
hum.WalkSpeed = storehumanoidWS
attack = false
end

function smiter()
local targetted = nil
if mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
targetted = mouse.Target.Parent
end
if targetted ~= nil then
RootPart.CFrame = FaceMouse()[1]
attack = true
local radm = math.random(1,3)
if radm == 1 then
bosschatfunc("SMITED!!",MAINRUINCOLOR.Color,1)
elseif radm == 2 then
bosschatfunc("FROM ABOVE!!",MAINRUINCOLOR.Color,1)
elseif radm == 3 then
bosschatfunc("LOOK UP!!",MAINRUINCOLOR.Color,1)
end
hum.WalkSpeed = 0
coroutine.resume(coroutine.create(function()
CFuncs["Sound"].Create("rbxassetid://1117054464", targetted.Head, 2, 1)
sphere2(4,"Add",targetted.Head.CFrame,vt(8,8,8),0.1,0.1,0.1,MAINRUINCOLOR)
local vel = Instance.new("BodyPosition", targetted.Head)
vel.P = 12500
vel.D = 1000
vel.maxForce = Vector3.new(50000000000, 10e10, 50000000000)
vel.position = targetted.Head.CFrame.p
end))
CFuncs["Sound"].Create("rbxassetid://671759140", sorb2, 1, 1.2)
CFuncs["EchoSound"].Create("rbxassetid://1436242685", char, 4, 1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://1436242685", root, 60, 1,0,10,0.15,0.5,1)
	for i = 0,4,0.1 do
		swait()
sphere2(4,"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.125,-0.01,MAINRUINCOLOR)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,1)* angles(math.rad(0),math.rad(0),math.rad(-60)),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(60)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.01 * math.cos(sine / 28),0)*angles(math.rad(15),math.rad(15),math.rad(-10)),.2)
LW.C0=clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-40)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 2 * math.cos(sine / 32))),.1)
	end
coroutine.resume(coroutine.create(function()
CameraEnshaking(6,5)
MagniDamage(targetted.Head, 18, 18,30, 0, "Normal")
CFuncs["Sound"].Create("rbxassetid://1042705869", targetted.Head, 6.5, 0.8)
CFuncs["Sound"].Create("rbxassetid://1042716828", targetted.Head, 6.25, 0.8)
CFuncs["Sound"].Create("rbxassetid://1117054464", targetted.Head, 5, 0.8)
sphere2(3,"Add",targetted.Head.CFrame,vt(0,40000,0),0.25,0,0.25,MAINRUINCOLOR)
sphere2(2,"Add",targetted.Head.CFrame,vt(0,40000,0),0.25,0,0.25,MAINRUINCOLOR)
sphere2(4,"Add",targetted.Head.CFrame,vt(0,0,0),0.5,0.5,0.5,MAINRUINCOLOR)
sphere2(5,"Add",targetted.Head.CFrame,vt(0,0,0),0.5,0.5,0.5,MAINRUINCOLOR)
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",targetted.Head)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(Color3.new(0.3,1,1))
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(20,250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.25)
eff.Enabled = false
local eff = Instance.new("ParticleEmitter",targetted.Head)
eff.Texture = "rbxassetid://363275192"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(MAINRUINCOLOR.Color)
eff.Rate = 10000
eff.Lifetime = NumberRange.new(1.5)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,15,0),NumberSequenceKeypoint.new(0.8,25,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(25,150)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
local eff2 = eff:Clone()
eff2.Parent = targetted.Head
eff2.Texture = "rbxassetid://284205403"
eff2.Rate = 10000
eff2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff2.Drag = 5
eff2.Rotation = NumberRange.new(-500,500)
eff2.VelocitySpread = 9000
wait(0.5)
eff2.Enabled = false
eff.Enabled = false
end))
for i = 0, 9 do
sphere2(3,"Add",targetted.Head.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(2,1,2),-0.02,3,-0.02,MAINRUINCOLOR)
end
for i = 0, 49 do
local rsiz = math.random(10,50)
sphereMK(math.random(1,4),1,"Add",targetted.Head.CFrame*CFrame.new(math.random(-20,20)/50,math.random(-20,20)/50,math.random(-20,20)/50)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,MAINRUINCOLOR,0)
end
game:GetService("Debris"):AddItem(vel,1)
dmg(targetted)
end))
	for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,1)* angles(math.rad(0),math.rad(0),math.rad(-70)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(70)),.5)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.01 * math.cos(sine / 28),0)*angles(math.rad(15),math.rad(15),math.rad(-10)),.2)
LW.C0=clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-40)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 2 * math.cos(sine / 32))),.1)
	end
attack = false
hum.WalkSpeed = storehumanoidWS
end
end

function shytaunty()
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://543623779", char, 1, 1)
local blush = Instance.new("Decal",hed)
blush.Texture = "rbxassetid://898404027"
blush.Face = "Front"
for i = 0, 13, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28) + 0.05 * math.cos(sine / 44),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(7 - 5 * math.cos(sine / 44)),math.rad(0),math.rad(-6 - 3 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28) - 0.05 * math.cos(sine / 44),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(3 + 5 * math.cos(sine / 44)),math.rad(0),math.rad(0 + 3 * math.cos(sine / 34))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 - 0.05 * math.cos(sine / 44),0 + 0.03 * math.cos(sine / 34),1 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 3 * math.cos(sine / 34)),math.rad(0 - 5 * math.cos(sine / 44)),math.rad(-5)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2 - 2.5 * math.cos(sine / 28)),math.rad(20 + 5 * math.cos(sine / 62)),math.rad(35 + 5 * math.cos(sine / 59))),.1)
RW.C0=clerp(RW.C0,cf(1,0.5 + 0.1 * math.cos(sine / 28),-0.45)*angles(math.rad(22 - 1 * math.cos(sine / 53)),math.rad(0),math.rad(-60 + 2 * math.cos(sine / 37))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.1 * math.cos(sine / 28),-0.45)*angles(math.rad(26 - 2 * math.cos(sine / 58)),math.rad(0),math.rad(59 - 3 * math.cos(sine / 57) )),.1)
end
coroutine.resume(coroutine.create(function()
for i = 0, 49 do
swait()
blush.Transparency = blush.Transparency + 0.02
end
blush:Destroy()
end))
hum.WalkSpeed = storehumanoidWS
attack = false
end

function PureBomb()
attack = true
CFuncs["EchoSound"].Create("rbxassetid://1436241485", char, 5, 1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://1436241485", root, 60, 1,0,10,0.15,0.5,1)
bosschatfunc("Purified..",MAINRUINCOLOR.Color,2)
local orb = Instance.new("Part", char)
        orb.Anchored = true
        orb.BrickColor = BrickColor.new("Toothpaste")
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 0
        orb.TopSurface = 0
        orb.BottomSurface = 0
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = vt(0,0,0)
local scaled = 0.1
local posid = 0
CFuncs["Sound"].Create("rbxassetid://136007472", orb, 30,1)
for i = 0, 5, 0.1 do
swait()
scaled = scaled - 0.001
posid = posid - scaled
orb.CFrame = rarm.CFrame*CFrame.new(0,-0.1+posid/1.05,0)
orbm.Scale = orbm.Scale + vt(scaled,scaled,scaled)
sphereMKCharge(5,-0.25,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,5,-0.005,BrickColor.new("Toothpaste"),10)
PixelBlockNeg(2,1,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.01,BrickColor.new("Toothpaste"),0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(180),math.rad(20),math.rad(0)),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.1)
end
for i = 0, 2, 0.1 do
swait()
orb.CFrame = rarm.CFrame*CFrame.new(0,-0.1+posid/1.05,0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.4)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(-50)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(20)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(220),math.rad(20),math.rad(0)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.4)
end
CFuncs["EchoSound"].Create("rbxassetid://1436240026", char, 4, 1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://1436240026", root, 60, 1,0,10,0.15,0.5,1)
bosschatfunc("BOMB!!",MAINRUINCOLOR.Color,2)
coroutine.resume(coroutine.create(function()
orb.Anchored = false
CFuncs["Sound"].Create("rbxassetid://260433768", root, 555,1)
	local a = Instance.new("Part",workspace)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("Bright red")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	    print("hi")
	) 
	local ignore = orb
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (orb.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, 0)
orb.CFrame = a.CFrame
a:Destroy()
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = orb.CFrame.lookVector*125
bv.Parent = orb
local hitted = false
game:GetService("Debris"):AddItem(orb, 15)
wait()
local hit =orb.Touched:connect(function(hit) 
	if hitted == false then
	hitted = true
CameraEnshaking(10,2.5)
	MagniDamage(orb, 65, 65,90, 0, "Normal")
sphere(1,"Add",orb.CFrame,vt(orbm.Scale.x,orbm.Scale.y,orbm.Scale.z),1,BrickColor.new("Toothpaste"))
sphere(2,"Add",orb.CFrame,vt(orbm.Scale.x,orbm.Scale.y,orbm.Scale.z),2,BrickColor.new("Toothpaste"))
for i = 0, 49 do
PixelBlock(1,math.random(1,30),"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),4,4,4,0.08,BrickColor.new("Toothpaste"),0)
end
local eff = Instance.new("ParticleEmitter",orb)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(Color3.new(4/255,175/255,236/255))
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(20,250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
coroutine.resume(coroutine.create(function()
wait(0.25)
eff.Enabled = false
end))
CFuncs["Sound"].Create("rbxassetid://1666361078", orb, 30,1)
for i = 0, 9 do
sphereMK(1,2.5,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,50,-0.05,BrickColor.new("Toothpaste"),0)
sphereMK(2,5,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,50,-0.05,BrickColor.new("Toothpaste"),0)
end
orb.Anchored = true
orb.Transparency = 1
local eff = Instance.new("ParticleEmitter",orb)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(Color3.new(M))
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(20,250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
coroutine.resume(coroutine.create(function()
wait(1)
eff.Enabled = false
end))
wait(8)
orb:Destroy()
end
end)
end))
for i = 0, 1, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.4)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(50)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-50)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(60),math.rad(20),math.rad(50)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.4)
end
attack = false
end


function BeamOfDeath()
coroutine.resume(coroutine.create(function()
attack = true
hum.WalkSpeed = 0 
for i = 0, 11, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(8 - 6 * math.cos(sine / 67)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-18 - 5 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-15 - 8 * math.cos(sine / 74)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(31 + 8 * math.cos(sine / 38))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(-16 - 2 * math.cos(sine / 32)),math.rad(3),math.rad(10 - 4 * math.cos(sine / 67))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-23 - 8 * math.cos(sine / 37)),math.rad(-21 + 2 * math.cos(sine / 58)),math.rad(-10 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),-0.15)*angles(math.rad(125 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(33 + 14 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),0.45)*angles(math.rad(-23 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(35 - 8 * math.cos(sine / 51))),.1)
end
for i = 0, 1, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(8 - 6 * math.cos(sine / 67)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-18 - 5 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-15 - 8 * math.cos(sine / 74)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(31 + 8 * math.cos(sine / 38))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(16 - 2 * math.cos(sine / 32)),math.rad(3),math.rad(10 - 4 * math.cos(sine / 67))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(23 - 8 * math.cos(sine / 37)),math.rad(-21 + 2 * math.cos(sine / 58)),math.rad(-10 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1,0.5 + 0.025 * math.cos(sine / 45),-0.15)*angles(math.rad(-5 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(33 + 14 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),0.45)*angles(math.rad(-23 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(35 - 8 * math.cos(sine / 51))),.1)
end
hum.WalkSpeed = storehumanoidWS
attack = false
end))
CFuncs["Sound"].Create("rbxassetid://430315987", char, 5, 1,0,10,0.10,0.25,1)
local radm = math.random(1,3)
if radm == 1 then
bosschatfunc("YAHHHH!!!",MAINRUINCOLOR.Color,1)
elseif radm == 2 then
bosschatfunc("TAKE THAT!!",MAINRUINCOLOR.Color,1)
elseif radm == 3 then
bosschatfunc("CONSUMED!!!",MAINRUINCOLOR.Color,1)
end
local keptcolor = MAINRUINCOLOR
local orb = Instance.new("Part", char)
        orb.BrickColor = keptcolor
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 1
        orb.TopSurface = 0
        orb.BottomSurface = 0
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = vt(22.5,10000,22.5)
orb.CFrame = mouse.Hit
orb.Anchored = true
orb.Orientation = vt(0,0,0)
orb.CFrame = orb.CFrame*CFrame.new(0,1,0)
CFuncs["LongSound"].Create("rbxassetid://1545630949", char, 0.5, 1.2)
coroutine.resume(coroutine.create(function()
coroutine.resume(coroutine.create(function()
for i = 0, 175 do
swait()
orbm.Scale = orbm.Scale - vt(0.1,0,0.1)
orb.Transparency = orb.Transparency - 0.005
end
end))
wait(2)
coroutine.resume(coroutine.create(function()
local hfr,pfr=rayCast(orb.Position,(CFrame.new(orb.Position,orb.Position - Vector3.new(0,1,0))).lookVector,4,char)
if hfr ~= nil then
	for i = 0, 24.5 do
local deb = Instance.new("Part", char)
deb.Anchored = true
deb.CanCollide = false
deb.FormFactor = 3
deb.Name = "Ring"
deb.Material = hitfloor.Material
deb.Color = hitfloor.Color
deb.Size = vt(math.random(50,55),math.random(50,55),math.random(50,55))
deb.Transparency = 0
deb.TopSurface = 0
deb.BottomSurface = 0
deb.CFrame = orb.CFrame*CFrame.new(math.random(-150,150),-5,math.random(-150,150))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local deb2 = Instance.new("Part", char)
deb2.CanCollide = false
deb2.FormFactor = 3
deb2.Name = "Ring"
deb2.Material = hitfloor.Material
deb2.Color = hitfloor.Color
deb2.Size = vt(math.random(34,38),math.random(34,38),math.random(34,38))
deb2.Transparency = 0
deb2.TopSurface = 0
deb2.BottomSurface = 0
deb2.Velocity = vt(math.random(-150,150),math.random(250,650),math.random(-150,150))
deb2.CFrame = orb.CFrame*CFrame.new(math.random(-60,60),-5,math.random(-60,60))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local eff = Instance.new("ParticleEmitter",deb)
eff.Texture = "rbxassetid://363275192"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(keptcolor.Color)
eff.Rate = 100
eff.Lifetime = NumberRange.new(1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,40,0),NumberSequenceKeypoint.new(1,45,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.5,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(0,5)
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-10,10)
local at1 = Instance.new('Attachment',deb2)
at1.Position = vt(0,15,0)
local at2 = Instance.new('Attachment',deb2)
at2.Position = vt(0,-15,0)
local tl = Instance.new('Trail',deb2)
tl.Attachment0 = at1
tl.Attachment1 = at2
tl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl.Color = ColorSequence.new(BrickColor.new('White').Color)
tl.Lifetime = 1
game:GetService("Debris"):AddItem(deb,30)
game:GetService("Debris"):AddItem(deb2,30)
coroutine.resume(coroutine.create(function()
	wait(15)
eff.Enabled = false
	for i = 0, 49 do
		swait()
		deb.Transparency = deb.Transparency + 0.02
	end
wait(1)
	deb:Destroy()
end))
end
end
end))
for i = 0, 199 do
swait(1.5)
for i, v in pairs(FindNearestHead(orb.CFrame.p, 175)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
CFuncs["Sound"].Create("rbxassetid://1666361078", orb, 30,1)
sphere2(5,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(10,10,10),5,5,5,keptcolor)
sphere2(5,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(10,10,10),1,35,1,keptcolor)
sphere2(5,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(10,10,10),0,50,0,keptcolor)
sphere2(5,"Add",orb.CFrame,vt(10,100000,10),2,2,2,keptcolor)
end
orb:Destroy()
end))
end

function Beams()
attack = true
hum.WalkSpeed = 0 
CFuncs["EchoSound"].Create("rbxassetid://1436242274", char, 8, 1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://1436242274", root, 60, 1,0,10,0.15,0.5,1)
bosschatfunc("You'll gone..",MAINRUINCOLOR.Color,2)
local keptcolor = MAINRUINCOLOR
coroutine.resume(coroutine.create(function()
for i = 0, 96 do
swait(5)
local orb = Instance.new("Part", char)
CFuncs["Sound"].Create("rbxassetid://663361028", orb, 2, 1)
        orb.BrickColor = keptcolor
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 0
        orb.TopSurface = 0
        orb.BottomSurface = 0
orb.Anchored = true
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = vt(1.25,1.25,1.25)
orb.CFrame = root.CFrame*CFrame.new(math.random(-6,6),math.random(3,9),math.random(-6,6))
sphere2(6,"Add",orb.CFrame,vt(1.25,1.25,1.25),0.025,0.025,0.025,keptcolor)
coroutine.resume(coroutine.create(function()
wait(0.5)
CFuncs["Sound"].Create("rbxassetid://161006182", orb, 2.5, 1.1)
sphere2(3,"Add",orb.CFrame,vt(1.25,1.25,1.25),0.025,0.025,0.025,keptcolor)
sphere2(4,"Add",orb.CFrame,vt(1.25,1.25,1.25),0.025,0.025,0.025,keptcolor)
orb.Transparency = 1
	local a = Instance.new("Part",char)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = keptcolor
a.Material = "Neon"
a.Transparency = 0.25
a.Shape = "Cylinder"
	local ht = Instance.new("Part",char)
	ht.Name = "DirectionHit"	
	ht.Anchored = true
	ht.BrickColor = keptcolor
ht.CanCollide = false
ht.Transparency = 1
ht.Size = vt(0.1,0.1,0.1)
CFuncs["Sound"].Create("rbxassetid://183763487", ht, 2, 1.6)
	a.CanCollide = false
	local ray = Ray.new(
	    print("hi")
	) 
	local ignore = char
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (orb.CFrame.p - position).magnitude
	a.Size = Vector3.new(distance,1,1)
	a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
	ht.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance)
sphere2(2,"Add",ht.CFrame,vt(1.25,1.25,1.25),0.15,0.15,0.15,keptcolor)
sphere2(4,"Add",ht.CFrame,vt(1.25,1.25,1.25),0.15,0.15,0.15,keptcolor)
MagniDamage(ht, 9, 30,60, 0, "Normal")
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",ht)
eff.Texture = "rbxassetid://284205403"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(keptcolor.Color)
eff.Rate = 500
eff.Lifetime = NumberRange.new(0.5)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,5,0),NumberSequenceKeypoint.new(0.2,2.5,0),NumberSequenceKeypoint.new(1,0.1,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(10,50)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-500,500)
wait(0.25)
eff.Enabled = false
end))
for i = 0, 4 do
sphere2(8,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.005,0.125,-0.005,keptcolor)
sphere2(4,"Add",ht.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(2,1,2),-0.01,0.5,-0.01,keptcolor)
local rsiz = math.random(10,30)
sphereMK(math.random(2,4),0.25,"Add",ht.CFrame*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,keptcolor,0)
end
a.CFrame = a.CFrame*CFrame.Angles(0,math.rad(90),0)
local msh = Instance.new("SpecialMesh",a)
msh.MeshType = "Cylinder"
msh.Scale = vt(1,1,1)
for i = 0, 49 do
swait()
msh.Scale = msh.Scale + vt(0,0.01,0.01)
a.Transparency = a.Transparency + 0.02
end
orb:Destroy()
a:Destroy()
ht:Destroy()
end))
game:GetService("Debris"):AddItem(orb, 10)
end
end))
	for i = 0,6,0.1 do
		swait()
sphere2(7,"Add",sorb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.075,-0.01,keptcolor)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.2 * math.cos(sine / 35))* angles(math.rad(0),math.rad(0),math.rad(40)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(-40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(6), math.rad(20), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 6 * math.cos(sine / 39))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 3 * math.cos(sine / 45))),.1)
	end
hum.WalkSpeed = storehumanoidWS
attack = false
end

function CalamityTrans()
attack = true
rainbowmode = false
chaosmode = false
               ModeOfGlitch = 8889
hum.WalkSpeed = 0
newThemeCust("rbxassetid://723652641",0,1,1.25)
local elocacenter = CreateParta(root,1,1,"SmoothPlastic",BrickColor.random())
elocacenter.Anchored = true
elocacenter.CFrame = root.CFrame
local eloca1 = CreateParta(elocacenter,1,1,"SmoothPlastic",BrickColor.random())
eloca1.Anchored = true
eloca1.CFrame = elocacenter.CFrame
local eloca2 = CreateParta(elocacenter,1,1,"SmoothPlastic",BrickColor.random())
eloca2.Anchored = true
eloca2.CFrame = elocacenter.CFrame
local eloca3 = CreateParta(elocacenter,1,1,"SmoothPlastic",BrickColor.random())
eloca3.Anchored = true
eloca3.CFrame = elocacenter.CFrame
local eloca4 = CreateParta(elocacenter,1,1,"SmoothPlastic",BrickColor.random())
eloca4.Anchored = true
eloca4.CFrame = elocacenter.CFrame
local lookavec = 0 
local speeds = 0
CameraEnshaking(3,2.5)
sphere(1,"Add",elocacenter.CFrame,vt(0,0,0),0.75,MAINRUINCOLOR)
sphere(2,"Add",elocacenter.CFrame,vt(0,0,0),0.75,MAINRUINCOLOR)
sphere(3,"Add",elocacenter.CFrame,vt(0,0,0),0.75,MAINRUINCOLOR)
sphere(4,"Add",elocacenter.CFrame,vt(0,0,0),0.75,MAINRUINCOLOR)
sphere(5,"Add",elocacenter.CFrame,vt(0,0,0),0.75,MAINRUINCOLOR)
CFuncs["Sound"].Create("rbxassetid://419447292", root, 10,1)
CFuncs["Sound"].Create("rbxassetid://1192402877", root, 10, 1)
for i = 0, 5, 0.1 do
swait()
---
lookavec = lookavec + 1
speeds = speeds + 10
elocacenter.CFrame = root.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,0.1,"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,0.1,"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
---
RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90 + 2.5 * math.cos(sine / 28))),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90 - 2.5 * math.cos(sine / 28))),.1)
end
for i = 0, 5, 0.1 do
swait()
---
speeds = speeds + 10
elocacenter.CFrame = root.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,0.1,"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,0.1,"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
---
RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90 + 2.5 * math.cos(sine / 28))),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90 - 2.5 * math.cos(sine / 28))),.1)
end
MAINRUINCOLOR = BrickColor.new("Bright violet")
CFuncs["Sound"].Create("rbxassetid://468991944", eloca1, 5, 1)
CFuncs["Sound"].Create("rbxassetid://468991944", eloca2, 5, 1)
CFuncs["Sound"].Create("rbxassetid://468991944", eloca3, 5, 1)
CFuncs["Sound"].Create("rbxassetid://468991944", eloca4, 5, 1)
CameraEnshaking(1,3)
for i = 0, 24 do
PixelBlock(1,math.random(5,25),"Add",eloca1.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,5,0.1,MAINRUINCOLOR,0)
PixelBlock(1,math.random(5,25),"Add",eloca2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,5,0.1,MAINRUINCOLOR,0)
PixelBlock(1,math.random(5,25),"Add",eloca3.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,5,0.1,MAINRUINCOLOR,0)
PixelBlock(1,math.random(5,25),"Add",eloca4.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,5,0.1,MAINRUINCOLOR,0)
end
sphere(1,"Add",eloca1.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(2,"Add",eloca1.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(3,"Add",eloca1.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(1,"Add",eloca2.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(2,"Add",eloca2.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(3,"Add",eloca2.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(1,"Add",eloca3.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(2,"Add",eloca3.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(3,"Add",eloca3.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(1,"Add",eloca4.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(2,"Add",eloca4.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(3,"Add",eloca4.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
for i = 0, 5, 0.1 do
swait()
---
lookavec = lookavec - 1
speeds = speeds + 10
elocacenter.CFrame = root.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,0.1,"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,0.1,"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
---
RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90 + 2.5 * math.cos(sine / 28))),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90 - 2.5 * math.cos(sine / 28))),.1)
end
sphere(1,"Add",elocacenter.CFrame,vt(0,0,0),2,MAINRUINCOLOR)
sphere(2,"Add",elocacenter.CFrame,vt(0,0,0),2,MAINRUINCOLOR)
sphere(3,"Add",elocacenter.CFrame,vt(0,0,0),2,MAINRUINCOLOR)
sphere(4,"Add",elocacenter.CFrame,vt(0,0,0),2,MAINRUINCOLOR)
sphere(5,"Add",elocacenter.CFrame,vt(0,0,0),2,MAINRUINCOLOR)
for i = 0, 49 do
PixelBlock(1,math.random(8,16),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),10,10,10,0.2,MAINRUINCOLOR,0)
PixelBlock(2,math.random(16,32),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,5,0.05,MAINRUINCOLOR,0)
end
CameraEnshaking(5,6)
CFuncs["Sound"].Create("rbxassetid://419447292", root, 10,1)
CFuncs["Sound"].Create("rbxassetid://151304356", root, 5,1)
CFuncs["Sound"].Create("rbxassetid://741272936", root, 5, 1)
CFuncs["Sound"].Create("rbxassetid://164881112", root, 5, 1)
CFuncs["Sound"].Create("rbxassetid://1192402877", root, 5, 1)
CFuncs["Sound"].Create("rbxassetid://429123896", root, 5, 0.85)
CFuncs["Sound"].Create("rbxassetid://1208650519", root, 5, 1)
storehumanoidWS = 100
hum.WalkSpeed = 100
rainbowmode = false
chaosmode = false
tl1.Enabled = true
tl2.Enabled = true
tl3.Enabled = true
RecolorTextAndRename("Space Glitcher",Color3.new(10,1,1),Color3.new(0.5,0,1),"Code")
tl1.Color = ColorSequence.new(MAINRUINCOLOR.Color)
tl2.Color = ColorSequence.new(MAINRUINCOLOR.Color)
tl3.Color = ColorSequence.new(MAINRUINCOLOR.Color)
for i, v in pairs(mw2:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = MAINRUINCOLOR
v.Material = "Neon"
end
end
for i, v in pairs(mw1:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0
v.BrickColor = MAINRUINCOLOR
v.Material = "Neon"
end
end
for i, v in pairs(m:GetChildren()) do
if v:IsA("Part") then
v.Color = Color3.new(0.5,0,1)
v.Material = "Neon"
end
end
for i, v in pairs(m2:GetChildren()) do
if v:IsA("Part") then
v.Color = Color3.new(0.25,0,1)
v.Material = "Neon"
end
end
for i, v in pairs(m3:GetChildren()) do
if v:IsA("Part") then
v.Color = Color3.new(0.45,0,1)
v.Material = "Neon"
end
end
for i, v in pairs(extrawingmod1:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0.75
v.Color = Color3.new(0.25,0,1)
v.Material = "Neon"
end
end
for i, v in pairs(extrawingmod2:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0.75
v.Color = Color3.new(0.5,0,1)
v.Material = "Neon"
end
end
attack = false
end

function InsaneTrans()
attack = true
rainbowmode = false
chaosmode = false
               ModeOfGlitch = 8889
hum.WalkSpeed = 0
newThemeCust("rbxassetid://183142252",1,1,10)
local elocacenter = CreateParta(root,1,1,"SmoothPlastic",BrickColor.random())
elocacenter.Anchored = true
elocacenter.CFrame = root.CFrame
local eloca1 = CreateParta(elocacenter,1,1,"SmoothPlastic",BrickColor.random())
eloca1.Anchored = true
eloca1.CFrame = elocacenter.CFrame
local eloca2 = CreateParta(elocacenter,1,1,"SmoothPlastic",BrickColor.random())
eloca2.Anchored = true
eloca2.CFrame = elocacenter.CFrame
local eloca3 = CreateParta(elocacenter,1,1,"SmoothPlastic",BrickColor.random())
eloca3.Anchored = true
eloca3.CFrame = elocacenter.CFrame
local eloca4 = CreateParta(elocacenter,1,1,"SmoothPlastic",BrickColor.random())
eloca4.Anchored = true
eloca4.CFrame = elocacenter.CFrame
local lookavec = 0 
local speeds = 0
CameraEnshaking(3,2.5)
sphere(1,"Add",elocacenter.CFrame,vt(0,0,0),0.75,MAINRUINCOLOR)
sphere(2,"Add",elocacenter.CFrame,vt(0,0,0),0.75,MAINRUINCOLOR)
sphere(3,"Add",elocacenter.CFrame,vt(0,0,0),0.75,MAINRUINCOLOR)
sphere(4,"Add",elocacenter.CFrame,vt(0,0,0),0.75,MAINRUINCOLOR)
sphere(5,"Add",elocacenter.CFrame,vt(0,0,0),0.75,MAINRUINCOLOR)
CFuncs["Sound"].Create("rbxassetid://419447292", root, 10,1)
CFuncs["Sound"].Create("rbxassetid://1192402877", root, 10, 1)
for i = 0, 5, 0.1 do
swait()
---
lookavec = lookavec + 1
speeds = speeds + 10
elocacenter.CFrame = root.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,0.1,"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,0.1,"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
---
RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90 + 2.5 * math.cos(sine / 28))),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90 - 2.5 * math.cos(sine / 28))),.1)
end
for i = 0, 5, 0.1 do
swait()
---
speeds = speeds + 10
elocacenter.CFrame = root.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,0.1,"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,0.1,"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
---
RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90 + 2.5 * math.cos(sine / 28))),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90 - 2.5 * math.cos(sine / 28))),.1)
end
MAINRUINCOLOR = BrickColor.new("Really black")
CFuncs["Sound"].Create("rbxassetid://468991944", eloca1, 5, 1)
CFuncs["Sound"].Create("rbxassetid://468991944", eloca2, 5, 1)
CFuncs["Sound"].Create("rbxassetid://468991944", eloca3, 5, 1)
CFuncs["Sound"].Create("rbxassetid://468991944", eloca4, 5, 1)
CameraEnshaking(1,3)
for i = 0, 24 do
PixelBlock(1,math.random(5,25),"Add",eloca1.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,5,0.1,MAINRUINCOLOR,0)
PixelBlock(1,math.random(5,25),"Add",eloca2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,5,0.1,MAINRUINCOLOR,0)
PixelBlock(1,math.random(5,25),"Add",eloca3.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,5,0.1,MAINRUINCOLOR,0)
PixelBlock(1,math.random(5,25),"Add",eloca4.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,5,0.1,MAINRUINCOLOR,0)
end
sphere(1,"Add",eloca1.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(2,"Add",eloca1.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(3,"Add",eloca1.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(1,"Add",eloca2.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(2,"Add",eloca2.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(3,"Add",eloca2.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(1,"Add",eloca3.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(2,"Add",eloca3.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(3,"Add",eloca3.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(1,"Add",eloca4.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(2,"Add",eloca4.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(3,"Add",eloca4.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
for i = 0, 5, 0.1 do
swait()
---
lookavec = lookavec - 1
speeds = speeds + 10
elocacenter.CFrame = root.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,0.1,"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,0.1,"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),2.5,2.5,2.5,0.025,MAINRUINCOLOR,-2)
---
RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90 + 2.5 * math.cos(sine / 28))),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90 - 2.5 * math.cos(sine / 28))),.1)
end
sphere(1,"Add",elocacenter.CFrame,vt(0,0,0),2,MAINRUINCOLOR)
sphere(2,"Add",elocacenter.CFrame,vt(0,0,0),2,MAINRUINCOLOR)
sphere(3,"Add",elocacenter.CFrame,vt(0,0,0),2,MAINRUINCOLOR)
sphere(4,"Add",elocacenter.CFrame,vt(0,0,0),2,MAINRUINCOLOR)
sphere(5,"Add",elocacenter.CFrame,vt(0,0,0),2,MAINRUINCOLOR)
for i = 0, 49 do
PixelBlock(1,math.random(8,16),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),10,10,10,0.2,MAINRUINCOLOR,0)
PixelBlock(2,math.random(16,32),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,5,0.05,MAINRUINCOLOR,0)
end
CameraEnshaking(5,6)
CFuncs["Sound"].Create("rbxassetid://419447292", root, 10,1)
CFuncs["Sound"].Create("rbxassetid://151304356", root, 5,1)
CFuncs["Sound"].Create("rbxassetid://741272936", root, 5, 1)
CFuncs["Sound"].Create("rbxassetid://164881112", root, 5, 1)
CFuncs["Sound"].Create("rbxassetid://1192402877", root, 5, 1)
CFuncs["Sound"].Create("rbxassetid://429123896", root, 5, 0.85)
CFuncs["Sound"].Create("rbxassetid://1208650519", root, 5, 1)
storehumanoidWS = 100
hum.WalkSpeed = 100
rainbowmode = false
chaosmode = false
tl1.Enabled = true
tl2.Enabled = true
tl3.Enabled = true
RecolorTextAndRename("The Big Black",Color3.new(0,0,0),Color3.new(0,0,0),"Antique")
tl1.Color = ColorSequence.new(MAINRUINCOLOR.Color)
tl2.Color = ColorSequence.new(MAINRUINCOLOR.Color)
tl3.Color = ColorSequence.new(MAINRUINCOLOR.Color)
for i, v in pairs(mw2:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = MAINRUINCOLOR
v.Material = "Neon"
end
end
for i, v in pairs(mw1:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0
v.BrickColor = MAINRUINCOLOR
v.Material = "Neon"
end
end
for i, v in pairs(m:GetChildren()) do
if v:IsA("Part") then
v.Color = Color3.new(170,0,0)
v.Material = "Neon"
end
end
for i, v in pairs(m2:GetChildren()) do
if v:IsA("Part") then
v.Color = Color3.new(0,0,0)
v.Material = "Neon"
end
end
for i, v in pairs(m3:GetChildren()) do
if v:IsA("Part") then
v.Color = Color3.new(0,0,0)
v.Material = "Neon"
end
end
for i, v in pairs(extrawingmod1:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0.75
v.Color = Color3.new(0,0,0)
v.Material = "Neon"
end
end
for i, v in pairs(extrawingmod2:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0.75
v.Color = Color3.new(0,0,0)
v.Material = "Neon"
end
end
attack = false
end

function GleamingBeam()
attack = true
bosschatfunc("IT ENDS !!!",MAINRUINCOLOR.Color,3)
CFuncs["EchoSound"].Create("rbxassetid://1535995570", char, 8, 1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://1535995570", root, 60, 1,0,10,0.15,0.5,1)
local rsiz = math.random(1,15)
	local hb = CreateParta(char,1,1,"SmoothPlastic",BrickColor.random())
	hb.Anchored = true
	hb.CFrame = sorb.CFrame*CFrame.new(0,-3,0)
	CFuncs["Sound"].Create("rbxassetid://1042700914", sorb, 8,0.25)
	for i = 0, 16, 0.1 do
		swait()
rsiz = math.random(5,15)
hb.CFrame = sorb.CFrame*CFrame.new(0,-3,0)
sphereMK(math.random(3,9),0.25,"Add",sorb.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,MAINRUINCOLOR,-15)	
sphere2(5,"Add",sorb.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(4,4,4),0.01,0.01,0.01,MAINRUINCOLOR)
RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(40)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15),math.rad(0),math.rad(-40)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(40)),.1)
LW.C0=clerp(LW.C0,cf(-1.25,0.5,0.5)*angles(math.rad(-20),math.rad(0),math.rad(20)),.1)
	end
	CFuncs["Sound"].Create("rbxassetid://1042693018", sorb, 10,0.6)
	CFuncs["Sound"].Create("rbxassetid://1042695469", sorb, 10,0.5)
for i = 0, 2 do
	CFuncs["Sound"].Create("rbxassetid://1042696115", sorb, 10,1)
end
sphere2(3,"Add",hb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,0.5,0.5),0.3,0.3,0.3,MAINRUINCOLOR)
sphere2(6,"Add",hb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,0.5,0.5),0.3,0.3,0.3,MAINRUINCOLOR)
sphere2(9,"Add",hb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,0.5,0.5),0.3,0.3,0.3,MAINRUINCOLOR)
for i = 0, 49 do 
local rsiza = math.random(1,15)
sphereMK(math.random(1,5),0.75,"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiza/10,rsiza/10,rsiza/10,0,MAINRUINCOLOR,0)	
end
local a = Instance.new("Part",Character)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = MAINRUINCOLOR
a.Material = "Neon"
a.Transparency = 0
a.Shape = "Cylinder"
	a.CanCollide = false
local ba = Instance.new("Part",Character)
	ba.Name = "HitDirect"	
	ba.Anchored = true
	ba.BrickColor = bc("Cool yellow")
ba.Material = "Neon"
ba.Transparency = 1
	ba.CanCollide = false
	local ray = Ray.new(
	   print("hi")
	) 
	local ignore = Character
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (hb.CFrame.p - position).magnitude
	a.Size = Vector3.new(distance, 1, 1)
	a.CFrame = CFrame.new(hb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
ba.CFrame = CFrame.new(hb.CFrame.p, position) * CFrame.new(0, 0, -distance)
a.CFrame = a.CFrame*CFrame.Angles(0,math.rad(90),0)
local msh = Instance.new("SpecialMesh",a)
msh.MeshType = "Cylinder"
msh.Scale = vt(1,4,4)
game:GetService("Debris"):AddItem(a, 30)
game:GetService("Debris"):AddItem(ba, 30)
	for i = 0, 25, 0.1 do
		swait()
hb.CFrame = sorb.CFrame*CFrame.new(0,-3,0)
ray = Ray.new(
	    print("hi")
	) 
hit, position, normal = workspace:FindPartOnRay(ray, ignore)
distance = (hb.CFrame.p - position).magnitude
	a.Size = Vector3.new(distance, 1, 1)
	a.CFrame = CFrame.new(hb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
ba.CFrame = CFrame.new(hb.CFrame.p, position) * CFrame.new(0, 0, -distance)
a.CFrame = a.CFrame*CFrame.Angles(0,math.rad(90),0)
rsiz = math.random(5,25)
	MagniDamage(ba, 12, 40000,900000, 0, "Normal")
sphereMK(math.random(4,8),0.25,"Add",hb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/5,rsiz/5,rsiz/5,0,MAINRUINCOLOR,0)
for c = 0, 2 do	
sphereMK(math.random(3,6),0.5,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/5,rsiz/5,rsiz/5,0,MAINRUINCOLOR,2)
end
sphere2(5,"Add",hb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(4.2,4.2,4.2),0.01,0.01,0.01,MAINRUINCOLOR)
sphere2(5,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(12,12,12),0.05,0.05,0.05,MAINRUINCOLOR)
RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(80)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15),math.rad(0),math.rad(-80)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(80)),.6)
LW.C0=clerp(LW.C0,cf(-1.25,0.5,0.5)*angles(math.rad(-20),math.rad(0),math.rad(20)),.6)
	end
	CFuncs["Sound"].Create("rbxassetid://1042693018", sorb, 5,0.8)
	CFuncs["Sound"].Create("rbxassetid://1042695469", sorb, 5,0.9)
	CFuncs["Sound"].Create("rbxassetid://1042693018", ba, 10,0.8)
	CFuncs["Sound"].Create("rbxassetid://1042695469", ba, 10,0.9)
	MagniDamage(ba, 30, 400000,9000000, 0, "Normal")
sphere2(1,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0,0,0),1,1,1,MAINRUINCOLOR)
sphere2(2,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0,0,0),1,1,1,MAINRUINCOLOR)
sphere2(3,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0,0,0),1,1,1,MAINRUINCOLOR)
sphere2(3,"Add",hb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,0.5,0.5),0.3,0.3,0.3,MAINRUINCOLOR)
sphere2(6,"Add",hb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,0.5,0.5),0.3,0.3,0.3,MAINRUINCOLOR)
sphere2(9,"Add",hb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,0.5,0.5),0.3,0.3,0.3,MAINRUINCOLOR)
for i = 0, 49 do 
local rsiza = math.random(1,15)
sphereMK(math.random(1,5),0.75,"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiza/10,rsiza/10,rsiza/10,0,MAINRUINCOLOR,0)	
end
for i = 0, 49 do
rsiz = math.random(1,8)	
sphereMK(math.random(1,3),1,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz,rsiz,rsiz,0,MAINRUINCOLOR,2)
end
coroutine.resume(coroutine.create(function()
for i = 0, 99 do
swait()
a.Transparency = a.Transparency + 0.01
end
a:Destroy()
ba:Destroy()
end))
hb:Destroy()
attack = false
end

function DualGleamingBeam()
attack = true
hum.WalkSpeed = 0 
CFuncs["EchoSound"].Create("rbxassetid://1448033299", char, 5, 1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://1448033299", root, 60, 1,0,10,0.15,0.5,1)
local radm = math.random(1,3)
if radm == 1 then
bosschatfunc("YOU CAN'T ESCAPE THIS!!",MAINRUINCOLOR.Color,1)
elseif radm == 2 then
bosschatfunc("HOW DO YOU LIKE THIS?!",MAINRUINCOLOR.Color,1)
elseif radm == 3 then
bosschatfunc("You make the choice..",MAINRUINCOLOR.Color,1)
end
local rsiz = math.random(1,15)
	local hb = CreateParta(char,1,1,"SmoothPlastic",BrickColor.random())
	hb.Anchored = true
	hb.CFrame = sorb.CFrame*CFrame.new(0,-3,0)
	local hb2 = CreateParta(char,1,1,"SmoothPlastic",BrickColor.random())
	hb2.Anchored = true
	hb2.CFrame = sorb.CFrame*CFrame.new(0,-3,0)
	CFuncs["Sound"].Create("rbxassetid://1042700914", sorb, 8,0.25)
	for i = 0, 14, 0.1 do
		swait()
rsiz = math.random(5,15)
hb.CFrame = sorb.CFrame*CFrame.new(0,-3,0)
hb2.CFrame = sorb2.CFrame*CFrame.new(0,-3,0)
sphereMK(math.random(3,9),0.25,"Add",sorb.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,MAINRUINCOLOR,-15)	
sphere2(5,"Add",sorb.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(4,4,4),0.01,0.01,0.01,MAINRUINCOLOR)
sphereMK(math.random(3,9),0.25,"Add",sorb2.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,BrickColor.new("Lime green"),-15)	
sphere2(5,"Add",sorb2.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(4,4,4),0.01,0.01,0.01,BrickColor.new("Lime green"))
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-4 - 2 * math.cos(sine / 53)),math.rad(0 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(9 - 2 * math.cos(sine / 53)),math.rad(0 + 2 * math.cos(sine / 32))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0.3 + 0.1 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15),math.rad(0),math.rad(10)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(120)),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(-120)),.1)
	end
	CFuncs["Sound"].Create("rbxassetid://1042693018", sorb, 10,0.6)
	CFuncs["Sound"].Create("rbxassetid://1042695469", sorb, 10,0.5)
	CFuncs["Sound"].Create("rbxassetid://1042693018", sorb2, 10,0.6)
	CFuncs["Sound"].Create("rbxassetid://1042695469", sorb2, 10,0.5)
	CFuncs["Sound"].Create("rbxassetid://1042696115", sorb, 10,1)
	CFuncs["Sound"].Create("rbxassetid://1042696115", sorb2, 10,1)
sphere2(3,"Add",hb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,0.5,0.5),0.3,0.3,0.3,MAINRUINCOLOR)
sphere2(6,"Add",hb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,0.5,0.5),0.3,0.3,0.3,MAINRUINCOLOR)
sphere2(9,"Add",hb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,0.5,0.5),0.3,0.3,0.3,MAINRUINCOLOR)
sphere2(3,"Add",hb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,0.5,0.5),0.3,0.3,0.3,BrickColor.new("Lime green"))
sphere2(6,"Add",hb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,0.5,0.5),0.3,0.3,0.3,BrickColor.new("Lime green"))
sphere2(9,"Add",hb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,0.5,0.5),0.3,0.3,0.3,BrickColor.new("Lime green"))
for i = 0, 49 do 
local rsiza = math.random(1,15)
sphereMK(math.random(1,5),0.75,"Add",sorb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiza/10,rsiza/10,rsiza/10,0,MAINRUINCOLOR,0)	
sphereMK(math.random(1,5),0.75,"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiza/10,rsiza/10,rsiza/10,0,MAINRUINCOLOR,0)
end
local a = Instance.new("Part",Character)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = MAINRUINCOLOR
a.Material = "Neon"
a.Transparency = 0
a.Shape = "Cylinder"
	a.CanCollide = false
local a2 = Instance.new("Part",Character)
	a2.Name = "Direction"	
	a2.Anchored = true
	a2.BrickColor = MAINRUINCOLOR
a2.Material = "Neon"
a2.Transparency = 0
a2.Shape = "Cylinder"
	a2.CanCollide = false
local ba = Instance.new("Part",Character)
	ba.Name = "HitDirect"	
	ba.Anchored = true
	ba.BrickColor = MAINRUINCOLOR
ba.Material = "Neon"
ba.Transparency = 1
	ba.CanCollide = false
local ba2 = Instance.new("Part",Character)
	ba2.Name = "HitDirect"	
	ba2.Anchored = true
	ba2.BrickColor = MAINRUINCOLOR
ba2.Material = "Neon"
ba2.Transparency = 1
	ba2.CanCollide = false
	local ray = Ray.new(
	    print("hi")
	) 
	local ignore = Character
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	local ray2 = Ray.new(
	    print("hi")
	) 
	local hit2, position2, normal2 = workspace:FindPartOnRay(ray2, ignore)
	local distance2 = (hb2.CFrame.p - position).magnitude

	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (hb.CFrame.p - position).magnitude
	a.Size = Vector3.new(distance, 1, 1)
	a.CFrame = CFrame.new(hb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
	a2.BottomSurface = 10
	a2.TopSurface = 10
	a2.Size = Vector3.new(distance2, 1, 1)
	a2.CFrame = CFrame.new(hb2.CFrame.p, position) * CFrame.new(0, 0, -distance2/2)
ba.CFrame = CFrame.new(hb.CFrame.p, position) * CFrame.new(0, 0, -distance)
ba2.CFrame = CFrame.new(hb2.CFrame.p, position) * CFrame.new(0, 0, -distance2)
a.CFrame = a.CFrame*CFrame.Angles(0,math.rad(90),0)
a2.CFrame = a2.CFrame*CFrame.Angles(0,math.rad(90),0)
local msh = Instance.new("SpecialMesh",a)
msh.MeshType = "Cylinder"
msh.Scale = vt(1,4,4)
local msh2 = Instance.new("SpecialMesh",a2)
msh2.MeshType = "Cylinder"
msh2.Scale = vt(1,4,4)
game:GetService("Debris"):AddItem(a, 30)
game:GetService("Debris"):AddItem(a2, 30)
game:GetService("Debris"):AddItem(ba, 30)
game:GetService("Debris"):AddItem(ba2, 30)
	for i = 0, 20, 0.1 do
		swait()
hb.CFrame = sorb.CFrame*CFrame.new(0,-3,0)
hb2.CFrame = sorb2.CFrame*CFrame.new(0,-3,0)
ray = Ray.new(
	    print("ok")
	) 
hit, position, normal = workspace:FindPartOnRay(ray, ignore)
distance = (hb.CFrame.p - position).magnitude
ray2 = Ray.new(
	   print("ok")
	) 
hit2, position2, normal2 = workspace:FindPartOnRay(ray2, ignore)
distance2 = (hb2.CFrame.p - position).magnitude
	a.Size = Vector3.new(distance, 1, 1)
	a.CFrame = CFrame.new(hb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
	a2.Size = Vector3.new(distance2, 1, 1)
	a2.CFrame = CFrame.new(hb2.CFrame.p, position) * CFrame.new(0, 0, -distance2/2)
ba.CFrame = CFrame.new(hb.CFrame.p, position) * CFrame.new(0, 0, -distance)
ba2.CFrame = CFrame.new(hb2.CFrame.p, position) * CFrame.new(0, 0, -distance2)
a.CFrame = a.CFrame*CFrame.Angles(0,math.rad(90),0)
a2.CFrame = a2.CFrame*CFrame.Angles(0,math.rad(90),0)
rsiz = math.random(5,25)
	MagniDamage(ba, 12, 800,18000, 0, "Normal")
	MagniDamage(ba2, 12, 800,18000, 0, "Normal")
for i, v in pairs(FindNearestHead(ba.CFrame.p, 4)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
coroutine.resume(coroutine.create(function()
local bx = Instance.new("Part",Character)
bx.Name = "Location"	
bx.Anchored = true
bx.BrickColor = MAINRUINCOLOR
bx.Material = "Neon"
bx.Transparency = 1
bx.CanCollide = false
bx.Position = ba.Position
sphere2(2,"Add",bx.CFrame,vt(20,0.5,20),0.001,0,0.001,MAINRUINCOLOR)
wait(math.random(1,2))
sphere2(4,"Add",bx.CFrame,vt(5,10000,5),0.1,0,0.1,bc("Lime green"))
sphere2(4,"Add",bx.CFrame,vt(5,10000,5),0.25,0,0.25,MAINRUINCOLOR)
sphere2(6,"Add",bx.CFrame,vt(10,10,10),0.5,0.5,0.5,bc("Lime green"))
	CFuncs["Sound"].Create("rbxassetid://1042693018", bx, 5,0.7)
	CFuncs["Sound"].Create("rbxassetid://1042695469", bx, 5,0.8)
	MagniDamage(bx, 20, 80000,900000, 0, "Normal")
for i, v in pairs(FindNearestHead(bx.CFrame.p, 15)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
wait(5)
bx:Destroy()
end))
sphereMK(math.random(4,8),0.25,"Add",hb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/5,rsiz/5,rsiz/5,0,BrickColor.new("Lime green"),0)
sphereMK(math.random(4,8),0.25,"Add",hb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/5,rsiz/5,rsiz/5,0,BrickColor.new("Lime green"),0)
for c = 0, 2 do	
sphereMK(math.random(3,6),0.5,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/5,rsiz/5,rsiz/5,0,BrickColor.new("Lime green"),2)
end
sphere2(5,"Add",hb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(4.2,4.2,4.2),0.01,0.01,0.01,MAINRUINCOLOR)
sphere2(5,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(12,12,12),0.05,0.05,0.05,MAINRUINCOLOR)
sphere2(5,"Add",hb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(4.2,4.2,4.2),0.01,0.01,0.01,MAINRUINCOLOR)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-4 - 2 * math.cos(sine / 53)),math.rad(0 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(9 - 2 * math.cos(sine / 53)),math.rad(0 + 2 * math.cos(sine / 32))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0.3 + 0.1 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.05)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15),math.rad(0),math.rad(10)),.05)
RW.C0=clerp(RW.C0,cf(1.25,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(-15)),.05)
LW.C0=clerp(LW.C0,cf(-1.25,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(15)),.05)
	end
for i = 0, 1 do
	CFuncs["Sound"].Create("rbxassetid://1042693018", sorb, 5,0.8)
	CFuncs["Sound"].Create("rbxassetid://1042695469", sorb, 5,0.9)
	CFuncs["Sound"].Create("rbxassetid://1042693018", ba, 10,0.8)
	CFuncs["Sound"].Create("rbxassetid://1042695469", ba, 10,0.9)
end
	MagniDamage(ba, 30, 8000,180000, 0, "Normal")
	MagniDamage(ba2, 30, 8000,180000, 0, "Normal")
for i, v in pairs(FindNearestHead(ba.CFrame.p, 10)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
sphere2(1,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0,0,0),1,1,1,MAINRUINCOLOR)
sphere2(2,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0,0,0),1,1,1,MAINRUINCOLOR)
sphere2(3,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0,0,0),1,1,1,MAINRUINCOLOR)
sphere2(3,"Add",hb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,0.5,0.5),0.3,0.3,0.3,MAINRUINCOLOR)
sphere2(6,"Add",hb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,0.5,0.5),0.3,0.3,0.3,MAINRUINCOLOR)
sphere2(9,"Add",hb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,0.5,0.5),0.3,0.3,0.3,MAINRUINCOLOR)
sphere2(3,"Add",hb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,0.5,0.5),0.3,0.3,0.3,bc("Lime green"))
sphere2(6,"Add",hb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,0.5,0.5),0.3,0.3,0.3,bc("Lime green"))
sphere2(9,"Add",hb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,0.5,0.5),0.3,0.3,0.3,bc("Lime green"))
for i = 0, 49 do 
local rsiza = math.random(1,15)
sphereMK(math.random(1,5),0.75,"Add",sorb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiza/10,rsiza/10,rsiza/10,0,bc("Lime green"),0)
sphereMK(math.random(1,5),0.75,"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiza/10,rsiza/10,rsiza/10,0,bc("Lime green"),0)	
end
for i = 0, 49 do
rsiz = math.random(1,8)	
sphereMK(math.random(1,3),1,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz,rsiz,rsiz,0,bc("Lime green"),2)
end
coroutine.resume(coroutine.create(function()
for i = 0, 99 do
swait()
a.Transparency = a.Transparency + 0.01
a2.Transparency = a2.Transparency + 0.01
end
a:Destroy()
ba:Destroy()
a2:Destroy()
ba2:Destroy()
end))
hum.WalkSpeed = storehumanoidWS
hb:Destroy()
hb2:Destroy()
attack = false
end

function dragin()
local targetted = nil
if mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
targetted = mouse.Target.Parent
end
if targetted ~= nil then
RootPart.CFrame = FaceMouse()[1]
attack = true
hum.WalkSpeed = 0
for x = 0, 1 do
for i = 0,1,0.5 do
swait()
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(8 - 6 * math.cos(sine / 67)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-18 - 5 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-15 - 8 * math.cos(sine / 74)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(31 + 8 * math.cos(sine / 38))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(15),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.1 * math.cos(sine / 30),0)*angles(math.rad(90),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-0.85,0.5 + 0.1 * math.cos(sine / 28),-0.65)*angles(math.rad(40),math.rad(0),math.rad(100)),.3)
end
for i = 0,1,0.5 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(6),math.rad(0),math.rad(-10 + 1 * math.cos(sine / 34))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(3),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1)*angles(math.rad(0),math.rad(0),math.rad(180)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(15),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.1 * math.cos(sine / 30),0)*angles(math.rad(90),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-0.85,0.5 + 0.1 * math.cos(sine / 28),-0.65)*angles(math.rad(40),math.rad(0),math.rad(100)),.3)
end
for i = 0,1,0.5 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(6),math.rad(0),math.rad(-10 + 1 * math.cos(sine / 34))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(3),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1)*angles(math.rad(0),math.rad(0),math.rad(270)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(15),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.1 * math.cos(sine / 30),0)*angles(math.rad(90),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-0.85,0.5 + 0.1 * math.cos(sine / 28),-0.65)*angles(math.rad(40),math.rad(0),math.rad(100)),.3)
end
for i = 0,1,0.5 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(6),math.rad(0),math.rad(-10 + 1 * math.cos(sine / 34))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(3),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(15),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.1 * math.cos(sine / 30),0)*angles(math.rad(90),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-0.85,0.5 + 0.1 * math.cos(sine / 28),-0.65)*angles(math.rad(40),math.rad(0),math.rad(100)),.3)
end
end
coroutine.resume(coroutine.create(function()
targetted:FindFirstChildOfClass("Humanoid").Health = targetted:FindFirstChildOfClass("Humanoid").Health + 50
CFuncs["Sound"].Create("rbxassetid://884155627", targetted.Head, 1,1)
CFuncs["Sound"].Create("rbxassetid://153092213", targetted.Head, 2.5,1)
end))
local A1 = Instance.new("Attachment",targetted.Head)
local A2 = Instance.new("Attachment",sorb)
local Beem = Instance.new("Beam",tors)
Beem.Attachment0 = A1
Beem.Attachment1 = A2
Beem.Texture = "rbxassetid://897585362"
Beem.LightEmission = 0.75
Beem.FaceCamera = true
Beem.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 0)})
Beem.Width0 = 1
Beem.Width1 = 1
Beem.TextureMode = "Wrap"
Beem.TextureLength = 1
Beem.Color = ColorSequence.new(MAINRUINCOLOR.Color)
sphere2(3,"Add",targetted.Head.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0,0,0),0.15,0.15,0.15,MAINRUINCOLOR)
sphere2(3,"Add",targetted.Head.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0,0,0),0.2,0.2,0.2,MAINRUINCOLOR)
for x = 0, 24 do
local rsiz = math.random(5,15)
sphereMK(math.random(1,5),0.25,"Add",targetted.Head.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,MAINRUINCOLOR,0)
end

CFuncs["EchoSound"].Create("rbxassetid://1448032965", char, 7, 1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://1448032965", root, 60, 1,0,10,0.15,0.5,1)
local radm = math.random(1,2)
if radm == 1 then
bosschatfunc("GOTCHA!!",MAINRUINCOLOR.Color,1)
elseif radm == 2 then
bosschatfunc("COM'ERE!!",MAINRUINCOLOR.Color,1)
end
for i = 0,3,0.1 do
swait()
coroutine.resume(coroutine.create(function()
local rsiz = math.random(5,15)
targetted:FindFirstChildOfClass("Humanoid").Health = targetted:FindFirstChildOfClass("Humanoid").Health + 10
sphereMK(math.random(1,5),0.01,"Add",targetted.Head.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,MAINRUINCOLOR,0)
end))
sphere2(8,"Add",sorb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),0.01,0.01,0.01,MAINRUINCOLOR)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(8 - 6 * math.cos(sine / 67)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-18 - 5 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-15 - 8 * math.cos(sine / 74)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(31 + 8 * math.cos(sine / 38))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1)*angles(math.rad(0),math.rad(0),math.rad(50)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(15),math.rad(-50)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.1 * math.cos(sine / 30),0)*angles(math.rad(90),math.rad(0),math.rad(50)),.6)
LW.C0=clerp(LW.C0,cf(-0.85,0.5 + 0.1 * math.cos(sine / 28),-0.65)*angles(math.rad(40),math.rad(0),math.rad(100)),.6)
end
CFuncs["Sound"].Create("rbxassetid://231917750", sorb, 1.25,0.9)
CFuncs["Sound"].Create("rbxassetid://1042716828", sorb, 1.5,1)
local vel = Instance.new("BodyPosition", targetted.Head)
vel.P = 12500
vel.D = 1000
vel.maxForce = Vector3.new(50000000000, 10e10, 50000000000)
vel.position = hed.CFrame.p + root.CFrame.lookVector*2.75
for i = 0,4,0.1 do
swait()
coroutine.resume(coroutine.create(function()
local rsiz = math.random(5,15)
targetted:FindFirstChildOfClass("Humanoid").Health = targetted:FindFirstChildOfClass("Humanoid").Health + 10
sphereMK(math.random(1,5),0.01,"Add",targetted.Head.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,MAINRUINCOLOR,0)
end))
sphere2(8,"Add",sorb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),0.01,0.01,0.01,MAINRUINCOLOR)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(6),math.rad(0),math.rad(-10 + 1 * math.cos(sine / 34))),.2)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(3),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1)*angles(math.rad(0),math.rad(0),math.rad(-40)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(15),math.rad(40)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.1 * math.cos(sine / 30),0)*angles(math.rad(90),math.rad(0),math.rad(-50)),.2)
LW.C0=clerp(LW.C0,cf(-0.85,0.5 + 0.1 * math.cos(sine / 28),-0.65)*angles(math.rad(40),math.rad(0),math.rad(100)),.2)
end
local visibility = 0
coroutine.resume(coroutine.create(function()
for i = 0, 49 do
swait()
visibility = visibility + 0.02
Beem.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, visibility),NumberSequenceKeypoint.new(1, visibility)})
end
Beem:Destroy()
A1:Destroy()
A2:Destroy()
end))
game:GetService("Debris"):AddItem(vel,0.75)
attack = false
hum.WalkSpeed = storehumanoidWS

end
end

function hugg()
attack = true
hum.WalkSpeed = 5
local rsiz = math.random(5,15)
for i = 0, 2, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(7.5),math.rad(0),math.rad(-10 + 1 * math.cos(sine / 34))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.05 * math.cos(sine / 28))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(sine / 28)),math.rad(10),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(110),math.rad(0),math.rad(40)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(110),math.rad(0),math.rad(-40)),.3)
end
CFuncs["Sound"].Create("rbxassetid://444895479", root, 0.5,1)
	local hb = CreateParta(char,1,1,"SmoothPlastic",BrickColor.random())
	hb.Anchored = true
	hb.CFrame = root.CFrame*CFrame.new(0,1,0) + root.CFrame.lookVector*2
local huggedperson = nil
local act = false
local alreadydid = false
for i = 0, 3, 0.1 do
swait()
if act == false then
for i, v in pairs(FindNearestHead(hb.CFrame.p, 1.25)) do
if v:FindFirstChild('Head') then
if alreadydid == false then
huggedperson = v
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://294861193", root, 1,1)
CFuncs["Sound"].Create("rbxassetid://200632821", root, 1,1.15)
CFuncs["Sound"].Create("rbxassetid://1042716828", root, 1.5,1)
CFuncs["Sound"].Create("rbxassetid://884155627", root, 2,1)
local radm = math.random(1,3)
if radm == 1 then
bosschatfunc("I'm sorry.. if I hurt you..",MAINRUINCOLOR.Color,1)
elseif radm == 2 then
bosschatfunc("I Love you",MAINRUINCOLOR.Color,1)
elseif radm == 3 then
bosschatfunc("I'm with you",MAINRUINCOLOR.Color,1)
end
root.Anchored = true
coroutine.resume(coroutine.create(function()
huggedperson.Humanoid.WalkSpeed = 0
huggedperson:WaitForChild("HumanoidRootPart").Anchored = true
end))
--chatfunc(string.lower(huggedperson.Name).. "~~",BrickColor.new("Pink").Color,"Normal","SourceSansBold",1)
alreadydid = true
act = true
print(huggedperson.Name)
end
end
end
hb.CFrame = root.CFrame*CFrame.new(0,1,0) + root.CFrame.lookVector*2
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(sine / 28)),math.rad(10),math.rad(0)),.3)
elseif act == true then
coroutine.resume(coroutine.create(function()
huggedperson:FindFirstChildOfClass("Humanoid").Health = huggedperson:FindFirstChildOfClass("Humanoid").Health + 0.2
end))
rsiz = math.random(5,15)
sphereMK(math.random(1,4),0.15,"Add",root.CFrame*CFrame.new(math.random(-5,5),math.random(-8,-4),math.random(-5,5))*CFrame.Angles(math.rad(90),0,0),rsiz/20,rsiz/20,rsiz/20,0,MAINRUINCOLOR,0)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(sine / 28)),math.rad(10),math.rad(40)),.1)
huggedperson.Head.CFrame = root.CFrame*CFrame.new(0,2.25,-1.25)*CFrame.Angles(0,math.rad(180),0)
end
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(7.5),math.rad(0),math.rad(-10 + 1 * math.cos(sine / 34))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.05 * math.cos(sine / 28))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1,0.7,-1)*angles(math.rad(120),math.rad(0),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.7,-1)*angles(math.rad(100),math.rad(0),math.rad(50)),.3)
end
hb:Destroy()
if act == true then
for x = 0, 2 do
for i = 0, 2, 0.1 do
swait()
coroutine.resume(coroutine.create(function()
huggedperson:FindFirstChildOfClass("Humanoid").Health = huggedperson:FindFirstChildOfClass("Humanoid").Health + 0.2
end))
rsiz = math.random(5,15)
sphereMK(math.random(1,4),0.15,"Add",root.CFrame*CFrame.new(math.random(-5,5),math.random(-8,-4),math.random(-5,5))*CFrame.Angles(math.rad(90),0,0),rsiz/20,rsiz/20,rsiz/20,0,MAINRUINCOLOR,0)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(sine / 28)),math.rad(10),math.rad(45)),.1)
huggedperson.Head.CFrame = root.CFrame*CFrame.new(0,2.25,-1.25)*CFrame.Angles(0,math.rad(180),0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(7.5),math.rad(0),math.rad(-10 + 1 * math.cos(sine / 34))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.05 * math.cos(sine / 28))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1,0.7,-1)*angles(math.rad(120),math.rad(0),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.7,-1)*angles(math.rad(100),math.rad(0),math.rad(50)),.3)
end
for i = 0, 2, 0.1 do
swait()
coroutine.resume(coroutine.create(function()
huggedperson:FindFirstChildOfClass("Humanoid").Health = huggedperson:FindFirstChildOfClass("Humanoid").Health + 0.2
end))
rsiz = math.random(5,15)
sphereMK(math.random(1,4),0.15,"Add",root.CFrame*CFrame.new(math.random(-5,5),math.random(-8,-4),math.random(-5,5))*CFrame.Angles(math.rad(90),0,0),rsiz/20,rsiz/20,rsiz/20,0,MAINRUINCOLOR,0)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(sine / 28)),math.rad(10),math.rad(35)),.1)
huggedperson.Head.CFrame = root.CFrame*CFrame.new(0,2.25,-1.25)*CFrame.Angles(0,math.rad(180),0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(7.5),math.rad(0),math.rad(-10 + 1 * math.cos(sine / 34))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.05 * math.cos(sine / 28))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1,0.7,-1)*angles(math.rad(120),math.rad(0),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.7,-1)*angles(math.rad(100),math.rad(0),math.rad(50)),.3)
end
end
end
hum.WalkSpeed = storehumanoidWS
root.Anchored = false
if act == true then
coroutine.resume(coroutine.create(function()
huggedperson.Humanoid.WalkSpeed = 16
huggedperson:WaitForChild("HumanoidRootPart").Anchored = false
end))
end
hum.WalkSpeed = storehumanoidWS
attack = false
end

function Counter()
	hum.WalkSpeed = 0
CFuncs["EchoSound"].Create("rbxassetid://2370794297", char, 5, 1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://2370794297", root, 60, 1,0,10,0.15,0.5,1)
bosschatfunc("COUNTER!!",MAINRUINCOLOR.Color,1)
	attack = true
	for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,-0.15,1)* angles(math.rad(10),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.25, 0.5, -0.5) * angles(math.rad(40), math.rad(0), math.rad(-90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.25, 0.5, -0.5) * angles(math.rad(40), math.rad(0), math.rad(70)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.3)
	end
CameraEnshaking(3,4)
MagniDamageWithEffect(root, 24, 0,0, 75, "Normal")
sphere2(10,"Add",root.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(50)),vt(5,5,5),0.35,0.35,0.35,MAINRUINCOLOR)
sphere2(1.5,"Add",root.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(50)),vt(5,5,5),0.35,0.35,0.35,MAINRUINCOLOR)
sphere2(20,"Add",root.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(50)),vt(5,5,5),0.35,0.35,0.35,MAINRUINCOLOR)
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",root)
eff.Texture = "rbxassetid://363275192"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(MAINRUINCOLOR.Color)
eff.Rate = 10000
eff.Lifetime = NumberRange.new(1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,15,0),NumberSequenceKeypoint.new(0.8,50,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.25,0),NumberSequenceKeypoint.new(0.8,0.75,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(10,125)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
local eff2 = eff:Clone()
eff2.Parent = root
eff2.Texture = "rbxassetid://284205403"
eff2.Rate = 10000
eff2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.1,10,0),NumberSequenceKeypoint.new(0.8,30,0),NumberSequenceKeypoint.new(1,0,0)})
eff2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(0.8,0.75,0),NumberSequenceKeypoint.new(1,1,0)})
eff2.Drag = 5
eff2.Speed = NumberRange.new(10,50)
eff2.Rotation = NumberRange.new(-500,500)
eff2.VelocitySpread = 9000
wait(0.25)
eff2.Enabled = false
eff.Enabled = false
wait(3)
eff2:Destroy()
eff:Destroy()
end))
for i = 0, 9 do
sphere2(1.5,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.0025,1,-0.0025,MAINRUINCOLOR)
end
for i = 0, 24 do
local rsiz = math.random(5,20)
sphereMK(math.random(2,10),0.75,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/8,rsiz/8,rsiz/8,0,MAINRUINCOLOR,0)
end
CFuncs["Sound"].Create("rbxassetid://1042705869", root, 2.5, 1)
CFuncs["Sound"].Create("rbxassetid://1042716828", root, 2.25, 1)
CFuncs["Sound"].Create("rbxassetid://1117054464", root, 1, 1)
	for i = 0,2,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0.15,1)* angles(math.rad(-10),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(120)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-120)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.3)
	end
	hum.WalkSpeed = storehumanoidWS
attack = false
end

function superjump()
attack = true
hum.WalkSpeed = 0
sphere2(5,"Add",root.CFrame,vt(1,1,1),1.5,1.5,1.5,BrickColor.new("Royal purple"),BrickColor.new("Royal purple").Color)
sphere2(5,"Add",root.CFrame,vt(1,1,1),1,1,1,BrickColor.new("Cyan"),BrickColor.new("Cyan").Color)
CFuncs["Sound"].Create("rbxassetid://1368637781", root, 7.5, 1)
for i = 0, 2, 0.1 do
		swait()
root.Velocity = vt(0,0,0)
slash(math.random(50,100)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))),vt(0.05,0.01,0.05),math.random(25,250)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-0.45,-0.45)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(20)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(40)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.5,-1)*angles(math.rad(20),math.rad(0),math.rad(0)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(0)),.4)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(10),math.rad(0),math.rad(40)),.4)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(10),math.rad(0),math.rad(-40)),.4)
end
MagniDamage(root, 28, 25,50, 25, "Normal")
CFuncs["Sound"].Create("rbxassetid://477843807", char, 17, 1.05)
hum.Jump = true
swait()
root.Velocity = vt(0,250,0) + root.CFrame.lookVector*250
sphere2(5,"Add",root.CFrame*CFrame.Angles(math.rad(-45),0,0),vt(25,1,25),0.3,5,0.3,BrickColor.new("Royal purple"),BrickColor.new("Royal purple").Color)
sphere2(5,"Add",root.CFrame*CFrame.Angles(math.rad(-45),0,0),vt(25,1,25),0.2,4,0.2,BrickColor.new("Cyan"),BrickColor.new("Cyan").Color)
CFuncs["Sound"].Create("rbxassetid://1295446488", root, 10, 1)
for i = 0, 3, 0.1 do
		swait()
RH.C0=clerp(RH.C0,cf(1,-0.45,-0.45)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(-20)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(30)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.75,0)*angles(math.rad(40),math.rad(0),math.rad(0)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.4)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(-30),math.rad(0),math.rad(20)),.4)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(-30),math.rad(0),math.rad(-20)),.4)
end
attack = false
if equipped == false then
hum.WalkSpeed = 16
else
hum.WalkSpeed = 24
end
end


-------------------------------------



Humanoid.Animator.Parent = nil



-------------------------------------
local mouse = game.Players.LocalPlayer:GetMouse()
local attacktype = 1
mouse.Button1Down:connect(function()
  if attack == false and attacktype == 1 then
    attacktype = 2
    attackone()
  elseif attack == false and attacktype == 2 then
    attacktype = 3
    attacktwo()
  elseif attack == false and attacktype == 3 then
    attacktype = 1
    attackthree()
  elseif attack == false and attacktype == 4 then
    attacktype = 1
    --attackfour()
  end
end)
mouse.KeyDown:connect(function(k)
if k == "q" and attack == false and ModeOfGlitch ~= 1 then
--normalmog()
ModeOfGlitch = 1
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false
newTheme("rbxassetid://367339030",48.6,1,0.85)
RecolorTextAndRename("Mayhem",Color3.new(0.25,0,0),Color3.new(1,0,0),"Antique")
MAINRUINCOLOR = BrickColor.new("Really red")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,false)
end
if k == "e" and attack == false and ModeOfGlitch ~= 2 then
ModeOfGlitch = 2
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false
RecolorTextAndRename("Purity",Color3.new(0,1,1),Color3.new(1,1,1),"Code")
newTheme("rbxassetid://1539245059",0,1,0.85)
MAINRUINCOLOR = BrickColor.new("Toothpaste")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
end
if k == "r" and attack == false and ModeOfGlitch ~= 3 then
               ModeOfGlitch = 3
storehumanoidWS = 14
hum.WalkSpeed = 14
rainbowmode = false
chaosmode = false
RecolorTextAndRename("Corrupt",Color3.new(0,0,0),Color3.new(0.35,0,1),"Antique")
newTheme("rbxassetid://367339030",58.15,0.98,1)
MAINRUINCOLOR = BrickColor.new("Royal purple")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
end
if k == "t" and attack == false and ModeOfGlitch ~= 4 then
               ModeOfGlitch = 4
storehumanoidWS = 14
hum.WalkSpeed = 14
rainbowmode = false
chaosmode = true
RecolorTextAndRename("CHAOS",Color3.new(0,0,0),Color3.new(1,1,1),"Antique")
newTheme("rbxassetid://2203914587",10,1.01,0.85)
MAINRUINCOLOR = BrickColor.new("Crimson")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
end
if k == "y" and attack == false and ModeOfGlitch ~= 5 then
               ModeOfGlitch = 5
storehumanoidWS = 14
hum.WalkSpeed = 14
rainbowmode = false
chaosmode = false
RecolorTextAndRename("Ancient",Color3.new(1,1,1),Color3.new(1,1,0.5),"SciFi")
newTheme("rbxassetid://661079869",0,1.02,0.85)
MAINRUINCOLOR = BrickColor.new("Bright yellow")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
end
if k == "u" and attack == false and ModeOfGlitch ~= 6 then
               ModeOfGlitch = 6
storehumanoidWS = 65
hum.WalkSpeed = 65
rainbowmode = false
chaosmode = false
RecolorTextAndRename("Justice",Color3.new(0,0,0),Color3.new(1,1,1),"Fantasy")
newTheme("rbxassetid://1347011178",0,1.01,0.85)
MAINRUINCOLOR = BrickColor.new("White")
RecolorThing(MAINRUINCOLOR,BrickColor.new("Really black"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
end
if k == "f" and attack == false and ModeOfGlitch ~= 8 then
               ModeOfGlitch = 8
storehumanoidWS = 100
hum.WalkSpeed = 100
rainbowmode = false
chaosmode = false
RecolorTextAndRename("Alder",Color3.new(1,1,1),BrickColor.new("Alder").Color,"Code")
newTheme("rbxassetid://919231299",0,1.01,0.85)
MAINRUINCOLOR = BrickColor.new("Alder")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
end
if k == "g" and attack == false and ModeOfGlitch ~= 9 then
               ModeOfGlitch = 9
storehumanoidWS = 85
hum.WalkSpeed = 85
rainbowmode = false
chaosmode = false
RecolorTextAndRename("Blox Watch Hacker",Color3.new(0,1,0),Color3.new(0.8,1,0.5),"Bodoni")
newTheme("rbxassetid://879189331",0,1.01,0.85)
MAINRUINCOLOR = BrickColor.new("Br. yellowish green")
RecolorThing(MAINRUINCOLOR,BrickColor.new("Lime green"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
end
if k == "h" and attack == false and ModeOfGlitch ~= 5555 then
               ModeOfGlitch = 5555
storehumanoidWS = 30
hum.WalkSpeed = 30
rainbowmode = false
chaosmode = false
RecolorTextAndRename("LOVE",Color3.new(1,1,1),BrickColor.new("Hot pink").Color,"Arcade")
newTheme("rbxassetid://736003449",0,1,1.25)
MAINRUINCOLOR = BrickColor.new("Hot pink")
RecolorThing(MAINRUINCOLOR,BrickColor.new("White"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
end
if k == "m" and attack == false and ModeOfGlitch == 8 and ModeOfGlitch ~= 8889 then
CalamityTrans()
end
if k == "b" and attack == false and ModeOfGlitch == 1 and ModeOfGlitch ~= 8889 then
InsaneTrans()
end
if k == "n" and attack == false and ModeOfGlitch == 1 and ModeOfGlitch ~= 55469696922 then
               ModeOfGlitch = 55469696922
storehumanoidWS = 95
hum.WalkSpeed = 95
rainbowmode = false
chaosmode = false
RecolorTextAndRename("Death",Color3.new(0.25,0,0.1),BrickColor.new("Hot pink").Color,"Antique")
newTheme("rbxassetid://919231299",0,1.005,0.9)
MAINRUINCOLOR = BrickColor.new("Hot pink")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
end
if k == "n" and attack == false and ModeOfGlitch == 2 and ModeOfGlitch ~= 4367677813 then
               ModeOfGlitch = 4367677813
storehumanoidWS = 75
hum.WalkSpeed = 75
rainbowmode = false
chaosmode = false
RecolorTextAndRename("...",Color3.new(0.75,0.9,1),BrickColor.new("Pink").Color,"Arcade")
newTheme("rbxassetid://919231299",0,1.01,0.95)
MAINRUINCOLOR = BrickColor.new("Baby blue")
RecolorThing(MAINRUINCOLOR,BrickColor.new("Pink"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
end
if k == "n" and attack == false and ModeOfGlitch == 8 and ModeOfGlitch ~= 9999999921111 then
               ModeOfGlitch = 9999999921111
storehumanoidWS = 145
hum.WalkSpeed = 145
rainbowmode = false
chaosmode = false
RecolorTextAndRename("Ultra",BrickColor.new("Really black").Color,BrickColor.new("Bright bluish green").Color,"SciFi")
newTheme("rbxassetid://643309199",0,1.01,1)
MAINRUINCOLOR = BrickColor.new("Bright bluish green")
RecolorThing(MAINRUINCOLOR,BrickColor.new("Really black"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
end
if k == "n" and attack == false and ModeOfGlitch == 4 and ModeOfGlitch ~= 999999999556 then
               ModeOfGlitch = 999999999556
storehumanoidWS = 115
hum.WalkSpeed = 115
rainbowmode = false
chaosmode = false
RecolorTextAndRename("Crazy",BrickColor.new("Really black").Color,BrickColor.new("Navy blue").Color,"Code")
newTheme("rbxassetid://719008519",0,1.02,0.85)
MAINRUINCOLOR = BrickColor.new("Navy blue")
RecolorThing(MAINRUINCOLOR,BrickColor.new("Really black"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
end
if k == "m" and attack == false and ModeOfGlitch == 3 and ModeOfGlitch ~= 12 then
               ModeOfGlitch = 12
storehumanoidWS = 19
hum.WalkSpeed = 19
rainbowmode = false
chaosmode = false
print'Mode was meant for Vengeful Program or those other fans out there'
RecolorTextAndRename("Neptunian",BrickColor.new("Royal purple").Color,BrickColor.new("Bright blue").Color,"SciFi")
newTheme("rbxassetid://1873219898",0,1,1.7)
MAINRUINCOLOR = BrickColor.new("Royal purple")
RecolorThing(MAINRUINCOLOR,BrickColor.new("Bright blue"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
end

if k == "m" and attack == false and ModeOfGlitch == 1 and ModeOfGlitch ~= 50 then
sphere(0.9,"Add",root.CFrame,vt(0,100000,0),1,BrickColor.new("Institutional white"))
for i = 0, 49 do
PixelBlock(1,math.random(1,20),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),8,8,8,0.16,BrickColor.new("Institutional white"),0)
end
CFuncs["Sound"].Create("rbxassetid://239000203", root, 4, 1)
CFuncs["Sound"].Create("rbxassetid://1042716828", root, 2, 1)
CFuncs["Sound"].Create("rbxassetid://847061203", root, 3, 1)
hum.WalkSpeed = storehumanoidWS
attack = false
	ModeOfGlitch = 50
storehumanoidWS = 18
hum.WalkSpeed = 18
rainbowmode = false
chaosmode = false
RecolorTextAndRename("Light",BrickColor.new("Institutional white").Color,BrickColor.new("Institutional white").Color,"Arcade")
newTheme("rbxassetid://435773595",0,1.01,1.5)
MAINRUINCOLOR = BrickColor.new("Institutional white")
RecolorThing(MAINRUINCOLOR,BrickColor.new("Institutional white"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
end

if k == "m" and attack == false and ModeOfGlitch == 4 and ModeOfGlitch ~= 66 then
	hum.WalkSpeed = 0
	attack = true
	for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,-0.15,0)* angles(math.rad(10),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.25, 0.5, -0.5) * angles(math.rad(40), math.rad(0), math.rad(-90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.25, 0.5, -0.5) * angles(math.rad(40), math.rad(0), math.rad(70)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 7 * math.cos(sine / 56))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 3 * math.cos(sine / 52))),.1)
	end
sphere(2.5,"Add",root.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
for i = 0, 148 do
PixelBlock(1,math.random(1,20),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
end
for i = 0,3,0.1 do
sphereMK(2.5,-1,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2.5,2.5,25,-0.025,MAINRUINCOLOR,0)
end
CFuncs["Sound"].Create("rbxassetid://239000203", root, 4, 1)
CFuncs["Sound"].Create("rbxassetid://1042716828", root, 2, 1)
CFuncs["Sound"].Create("rbxassetid://847061203", root, 3, 1)
	hum.WalkSpeed = storehumanoidWS
attack = false
	ModeOfGlitch = 66
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false
newTheme("rbxassetid://"..ast[Mrandom(1,2)],0,1,1.35)
MAINRUINCOLOR = BrickColor.new("Really black")
RecolorThing(MAINRUINCOLOR,BrickColor.new("Black"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
	for i = 0,2,0.1 do
		swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0.15,0)* angles(math.rad(-10),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(120)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-120)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 7 * math.cos(sine / 56))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 3 * math.cos(sine / 52))),.1)
	end
end

if k == "m" and attack == false and ModeOfGlitch == 6 and ModeOfGlitch ~= 13 then
	hum.WalkSpeed = 0
	attack = true
	for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,-0.15,1)* angles(math.rad(10),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.25, 0.5, -0.5) * angles(math.rad(40), math.rad(0), math.rad(-90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.25, 0.5, -0.5) * angles(math.rad(40), math.rad(0), math.rad(70)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 7 * math.cos(sine / 56))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 3 * math.cos(sine / 52))),.1)
	end
sphere(2.5,"Add",root.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
for i = 0, 49 do
PixelBlock(1,math.random(1,20),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.04,MAINRUINCOLOR,0)
end
for i = 0,3,0.1 do
sphereMK(2.5,-1,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2.5,2.5,25,-0.025,MAINRUINCOLOR,0)
end
CFuncs["Sound"].Create("rbxassetid://239000203", root, 4, 1)
CFuncs["Sound"].Create("rbxassetid://1042716828", root, 2, 1)
CFuncs["Sound"].Create("rbxassetid://847061203", root, 3, 1)
	hum.WalkSpeed = storehumanoidWS
attack = false
	ModeOfGlitch = 13
storehumanoidWS = 45
hum.WalkSpeed = 45
rainbowmode = false
chaosmode = false
RecolorTextAndRename("Judicial",BrickColor.new("Dark stone grey").Color,BrickColor.new("Light blue").Color,"Bodoni")
newTheme("rbxassetid://190845741",0,1,1.35)
MAINRUINCOLOR = BrickColor.new("Dark stone grey")
RecolorThing(MAINRUINCOLOR,BrickColor.new("Light blue"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
	for i = 0,2,0.1 do
		swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0.15,1)* angles(math.rad(-10),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(120)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-120)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 7 * math.cos(sine / 56))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 3 * math.cos(sine / 52))),.1)
	end
end
if k == "j" and attack == false and ModeOfGlitch ~= 1002 then
               ModeOfGlitch = 1002
storehumanoidWS = 45
hum.WalkSpeed = 45
rainbowmode = false
chaosmode = false
RecolorTextAndRename("ERROR 404",BrickColor.new("Really black").Color,BrickColor.new("Dark blue").Color,"Code")
newTheme("rbxassetid://2027652726",0,1,0.85)
MAINRUINCOLOR = BrickColor.new("Dark blue")
RecolorThing(MAINRUINCOLOR,BrickColor.new("Dark blue"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
end
if k == "k" and attack == false and ModeOfGlitch ~= 1003 then
               ModeOfGlitch = 1003
storehumanoidWS = 90
hum.WalkSpeed = 90
rainbowmode = false
chaosmode = false
RecolorTextAndRename("Sky",BrickColor.new("White").Color,BrickColor.new("Bright yellow").Color,"Code")
newTheme("rbxassetid://257453119",0,1,0.85)
MAINRUINCOLOR = BrickColor.new("Bright yellow")
RecolorThing(MAINRUINCOLOR,BrickColor.new("White"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
end
if k == "n" and attack == false and ModeOfGlitch == 5 and ModeOfGlitch ~= 1264532489 then
               ModeOfGlitch = 1264532489
storehumanoidWS = 175
hum.WalkSpeed = 175
rainbowmode = false
chaosmode = false
RecolorTextAndRename("Fall",Color3.new(0.5,1,1),BrickColor.new("Deep orange").Color,"Antique")
newTheme("rbxassetid://1505487022",0,1.01,1.25)
MAINRUINCOLOR = BrickColor.new("Pastel green")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
end
if k == "l" and mutedtog == false then
mutedtog = true
kan.Volume = 0.85
elseif k == "l" and mutedtog == true then
mutedtog = false
kan.Volume = 0.85
end
if k == "p" and toggleTag == false then
toggleTag = true
modet.TextTransparency = 0
modet.TextStrokeTransparency = 0
elseif k == "p" and toggleTag == true then
toggleTag = false
modet.TextTransparency = 1
modet.TextStrokeTransparency = 1
end
if k == "z" and attack == false and ModeOfGlitch == 1 then
ExtinctiveHeartbreak()
elseif k == "z" and attack == false and ModeOfGlitch == 2 then
HeavenlyDisk()
elseif k == "z" and attack == false and ModeOfGlitch == 9 then
DualGleamingBeam()
elseif k == "c" and attack == false and ModeOfGlitch == 9 then
BanishingOrb()
elseif k == "z" and attack == false and ModeOfGlitch == 5555 then
hugg()
elseif k == "b" and attack == false and ModeOfGlitch == 55469696922 then
cutesigh()
elseif k == "v" and attack == false and ModeOfGlitch == 55469696922 then
Counter()
elseif k == "v" and attack == false and ModeOfGlitch == 12 then
superjump()
elseif k == "v" and attack == false and ModeOfGlitch == 9999999921111 then
dragin()
elseif k == "x" and attack == false and ModeOfGlitch == 8889 then
UniversalCollapse()
elseif k == "c" and attack == false and ModeOfGlitch == 2 then
PureBomb()
elseif k == "z" and attack == false and ModeOfGlitch == 999999999556 then
Beams()
elseif k == "x" and attack == false and ModeOfGlitch == 55469696922 then
BeamOfDeath()
elseif k == "v" and attack == false and ModeOfGlitch == 8 then
THE_TRUE_POWER_OF_VIOLENCE()
elseif k == "z" and attack == false and ModeOfGlitch == 8 then
GleamingBeam()
elseif k == "x" and attack == false and ModeOfGlitch == 5 then
ViolentRing()
elseif k == "z" and attack == false and ModeOfGlitch == 3 then
CorruptionEvent()
elseif k == "v" and attack == false and ModeOfGlitch == 3 then
CorruptBlink()
elseif k == "c" and attack == false and ModeOfGlitch == 3 then
scattercorrupt()
elseif k == "b" and attack == false and ModeOfGlitch == 5555 then
shytaunty()
elseif k == "v" and attack == false and ModeOfGlitch == 8889 then
InsaneBeam()
elseif k == "z" and attack == false and ModeOfGlitch == 4 then
RapidBurst()
elseif k == "z" and attack == false and ModeOfGlitch == 8889 then
InsaneDrop()
wait(2)
ChaosEND()
elseif k == "x" and attack == false and ModeOfGlitch == 4 then
ChaosEND()
elseif k == "c" and attack == false and ModeOfGlitch == 9999999921111 then
CyberSlash()
elseif k == "z" and attack == false and ModeOfGlitch == 4367677813 then
smiter()
elseif k == "z" and attack == false and ModeOfGlitch == 1002 then
SpeedDrop()
elseif k == "v" and attack == false and ModeOfGlitch == 5 then
--DivineLights()
elseif k == "z" and attack == false and ModeOfGlitch == 5 then
DivineBlast()
elseif k == "z" and attack == false and ModeOfGlitch == 6 then
EquinoxOrbs()
elseif k == "v" and attack == false and ModeOfGlitch == 6 then
yinyangi()
elseif k == "z" and attack == false and ModeOfGlitch == 1264532489 then
FallenOrbs()
elseif k == "z" and attack == false and ModeOfGlitch == 1003 then
StarfallEX()
end
if k == "v" and attack == false and ModeOfGlitch == 1264532489 then
FallenDEMISE()
end
if k == "x" and attack == false and ModeOfGlitch == 1 then
EndGROUND()
end
end)

coroutine.resume(coroutine.create(function()
while true do
swait()
if ModeOfGlitch == 6 or ModeOfGlitch == 8 or ModeOfGlitch == 9 or ModeOfGlitch == 8889 or ModeOfGlitch == 1264532489 or ModeOfGlitch == 55469696922 or ModeOfGlitch == 4367677813 or ModeOfGlitch == 9999999921111 or ModeOfGlitch == 999999999556 then
sphereMK(7.5,math.random(15,50)/45,"Add",root.CFrame*CFrame.new(math.random(-25,25),-10,math.random(-25,25))*CFrame.Angles(math.rad(90 + math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))),0.75,0.75,10,-0.0075,MAINRUINCOLOR,0)
end
if ModeOfGlitch == 5555 then
sphereMK(5,math.random(8,14)/45,"Add",root.CFrame*CFrame.new(math.random(-25,25),-10,math.random(-25,25))*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.25,0.25,7.5,-0.0025,MAINRUINCOLOR,0)
end
end
end))
--[[coroutine.resume(coroutine.create(function()
while true do
swait(2)
if chaosmode == true then
tl1.Color = ColorSequence.new(BrickColor.random().Color)
tl2.Color = ColorSequence.new(BrickColor.random().Color)
tl3.Color = ColorSequence.new(BrickColor.random().Color)
RecolorTextAndRename("ÇHÆØS",Color3.new(0,0,0),BrickColor.random().Color,"Antique")
for i, v in pairs(mw1:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0.75
v.BrickColor = BrickColor.random()
v.Material = "Neon"
end
end
for i, v in pairs(m2:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = BrickColor.random()
v.Material = "Neon"
end
end
end
end
end))]]



ff = Instance.new("ForceField",char)
ff.Visible = false
hum.Name = "Base"
hum.MaxHealth = 1.0E298
hum.Health = 1.0E298
game:GetService("RunService"):BindToRenderStep("Bbae", 0, function()
  if hum.Health > 0.1 and hum.Health < 1.0E298 then
    hum.MaxHealth = 1.0E298
    hum.Health = 1.0E298
  end
end)

local Hair = Instance.new("Part", char)
Hair.Name = "Hair"
Hair.CanCollide = false
Hair.BrickColor = BrickColor.new("Institutional white")
Hair.Transparency = 0
Hair.Material = "Plastic"
Hair.Size = Vector3.new(1, 1, 2)
Hair.TopSurface = Enum.SurfaceType.Smooth
Hair.BottomSurface = Enum.SurfaceType.Smooth


local bguis = Instance.new("BillboardGui",tors)
bguis.Size = UDim2.new(25, 0, 25, 0)
local imgca = Instance.new("ImageLabel",bguis)
imgca.BackgroundTransparency = 1
imgca.ImageTransparency = 1
imgca.Size = UDim2.new(1,0,1,0)
imgca.Image = "rbxassetid://2312119891" --997291547,521073910,2312119891
imgca.ImageColor3 = Color3.new(0,0,0)


local bguis2 = Instance.new("BillboardGui",tors)
bguis2.Size = UDim2.new(25, 0, 25, 0)
local imgca2 = Instance.new("ImageLabel",bguis)
imgca2.BackgroundTransparency = 1
imgca2.ImageTransparency = 1
imgca2.Size = UDim2.new(1,0,1,0)
imgca2.Image = "rbxassetid://2406462507" --997291547,521073910,2312119891
imgca2.ImageColor3 = Color3.new(0,0,0)



idleanim=.4
while true do
if mutedtog == false then
kan.Volume = currentVol
elseif mutedtog == true then
kan.Volume = 0
end
kan.PlaybackSpeed = currentPitch
kan.Pitch = currentPitch
kan.SoundId = currentThemePlaying
kan.Looped = true
kan.Parent = char
kan:Resume()
if ModeOfGlitch ~= 1264532489 and ModeOfGlitch ~= 55469696922 and ModeOfGlitch ~= 4367677813 and ModeOfGlitch ~= 9999999921111 and ModeOfGlitch ~= 999999999556 and ModeOfGlitch ~= 13 then
imgca.ImageTransparency = 1
imgca2.ImageTransparency = 1
elseif ModeOfGlitch == 1264532489 or ModeOfGlitch == 55469696922 or ModeOfGlitch == 4367677813 or ModeOfGlitch == 9999999921111 or ModeOfGlitch == 999999999556 then
imgca.ImageColor3 = MAINRUINCOLOR.Color
imgca.ImageTransparency = 0 + 0.25 * math.cos(sine / 30)
elseif ModeOfGlitch == 13 then
imgca2.ImageColor3 = MAINRUINCOLOR.Color
imgca2.ImageTransparency = 0 + 0.25 * math.cos(sine / 30)
end
imgca.Rotation = imgca.Rotation + 5 + kan.PlaybackLoudness/25
bguis.Size = UDim2.new(12 + 3 * math.cos(sine / 30),0, 12 + 3 * math.cos(sine / 30),0)
imgca2.Rotation = imgca.Rotation + 5 + kan.PlaybackLoudness/60
bguis2.Size = UDim2.new(12 + 3 * math.cos(sine / 30),0, 12 + 3 * math.cos(sine / 30),0)
coroutine.resume(coroutine.create(function()
	if chaosmode == true then
for i, v in pairs(mw1:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0
v.BrickColor = BrickColor.random()
v.Material = "Neon"
end
end
tl1.Color = ColorSequence.new(BrickColor.random().Color)
tl2.Color = ColorSequence.new(BrickColor.random().Color)
tl3.Color = ColorSequence.new(BrickColor.random().Color)
	RecolorTextAndRename("Ender",Color3.new(0,0,0),BrickColor.random().Color,"Antique")
	end
end))
coroutine.resume(coroutine.create(function()
	if ModeOfGlitch == 66 then
		for i, v in pairs(m:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0
v.BrickColor = BrickColor.random()
v.Material = "Neon"
end
end
		for i, v in pairs(m2:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0
v.BrickColor = BrickColor.random()
v.Material = "Neon"
end
end
for i, v in pairs(mw1:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0
v.BrickColor = BrickColor.random()
v.Material = "Neon"
end
end
for i, v in pairs(extrawingmod1:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0.5
v.BrickColor = BrickColor.random()
v.Material = "Neon"
end
end
tl1.Color = ColorSequence.new(BrickColor.random().Color)
tl2.Color = ColorSequence.new(BrickColor.random().Color)
tl3.Color = ColorSequence.new(BrickColor.random().Color)
gane.Color = ColorSequence.new(BrickColor.random().Color)
gan.Color = ColorSequence.new(BrickColor.random().Color)
end
end))

coroutine.resume(coroutine.create(function()
	if ModeOfGlitch == 66 then
RecolorTextAndRename("S N A P P E D G U E S T",BrickColor.random().Color,Color3.new(0,0,0),"Garamond")
	end
	end))

if chaosmode == false then
modet.Position = UDim2.new(0,0,0,0)
modet.Rotation = -5 * math.cos(sine / 32)
techc.Rotation = techc.Rotation + 1
circl.Rotation = circl.Rotation - kan.PlaybackLoudness/200 - 1
circl2.Rotation = circl2.Rotation + kan.PlaybackLoudness/175 + 1
imgl2.Rotation = imgl2.Rotation - kan.PlaybackLoudness/175 + 1
imgl2b.Rotation = imgl2b.Rotation + kan.PlaybackLoudness/150 - 1
ned.Rotation = 0 - 2 * math.cos(sine / 24)
ned.Position = UDim2.new(0.7,0 - 10 * math.cos(sine / 32),0.8,0 - 10 * math.cos(sine / 45))
else
	techc.Rotation = techc.Rotation + 1
circl.Rotation = circl.Rotation - kan.PlaybackLoudness/50 + math.random(-5,5)
circl2.Rotation = circl2.Rotation + kan.PlaybackLoudness/25 + math.random(-5,5)
imgl2.Rotation = imgl2.Rotation - kan.PlaybackLoudness/25 + math.random(-5,5)
imgl2b.Rotation = imgl2b.Rotation + kan.PlaybackLoudness/12.5 + math.random(-5,5)
ned.Rotation = 0 -2 * math.cos(sine / 1) + math.random(-3,3)
ned.Position = UDim2.new(0.7,0 + math.random(-3,3),0.8,0 + math.random(-3,3))
modet.Position = UDim2.new(0,math.random(-1,1),0,math.random(-1,1))
modet.Rotation = -2 * math.cos(sine / 1) + math.random(-3,3)
end
CameraManager()
swait()
lwing1weld.C1=clerp(lwing1weld.C1,cf(2,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 10 * math.cos(sine / 32)),math.rad(0),math.rad(12.5 + 5 * math.cos(sine / 32))),.3)
lwing2weld.C1=clerp(lwing2weld.C1,cf(3,1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(sine / 32))),.3)
lwing3weld.C1=clerp(lwing3weld.C1,cf(3.75,2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos(sine / 32)),math.rad(0),math.rad(37.5 + 10 * math.cos(sine / 32))),.3)
lwing4weld.C1=clerp(lwing4weld.C1,cf(4.75,3,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(20 + 25 * math.cos(sine / 32)),math.rad(0),math.rad(50 + 12.5 * math.cos(sine / 32))),.3)
lwing5weld.C1=clerp(lwing5weld.C1,cf(5.75,4,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(25 + 30 * math.cos(sine / 32)),math.rad(0),math.rad(62.5 + 15 * math.cos(sine / 32))),.3)
lwing6weld.C1=clerp(lwing6weld.C1,cf(6.75,5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(30 + 35 * math.cos(sine / 32)),math.rad(0),math.rad(75 + 17.5 * math.cos(sine / 32))),.3)
rwing1weld.C1=clerp(rwing1weld.C1,cf(-2,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 10 * math.cos(sine / 32)),math.rad(0),math.rad(-12.5 - 5 * math.cos(sine / 32))),.3)
rwing2weld.C1=clerp(rwing2weld.C1,cf(-3,1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(sine / 32))),.3)
rwing3weld.C1=clerp(rwing3weld.C1,cf(-3.75,2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos(sine / 32)),math.rad(0),math.rad(-37.5 - 10 * math.cos(sine / 32))),.3)
rwing4weld.C1=clerp(rwing4weld.C1,cf(-4.75,3,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(20 + 25 * math.cos(sine / 32)),math.rad(0),math.rad(-50 - 12.5 * math.cos(sine / 32))),.3)
rwing5weld.C1=clerp(rwing5weld.C1,cf(-5.75,4,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(25 + 30 * math.cos(sine / 32)),math.rad(0),math.rad(-62.5 - 15 * math.cos(sine / 32))),.3)
rwing6weld.C1=clerp(rwing6weld.C1,cf(-6.75,5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(30 + 35 * math.cos(sine / 32)),math.rad(0),math.rad(-75 - 17.5 * math.cos(sine / 32))),.3)
 sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
coroutine.resume(coroutine.create(function()
if ModeOfGlitch == 6 or ModeOfGlitch == 8 or ModeOfGlitch == 1003 or ModeOfGlitch == 1264532489 or ModeOfGlitch == 55469696922 or ModeOfGlitch == 4367677813 or ModeOfGlitch == 9999999921111 or ModeOfGlitch == 999999999556 or ModeOfGlitch == 8889 or ModeOfGlitch == 13 then
if hitfloor ~= nil then
slash(math.random(50,100)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))),vt(0.01,0.01,0.01),math.random(5,50)/250,BrickColor.new("White"))
if ModeOfGlitch == 1264532489 or ModeOfGlitch == 55469696922 or ModeOfGlitch == 4367677813 or ModeOfGlitch == 9999999921111 or ModeOfGlitch == 999999999556 or ModeOfGlitch == 13 then
slash(math.random(75,150)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))),vt(0.01,0.01,0.01),math.random(5,150)/250,MAINRUINCOLOR)
end
end
end
end))
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RH.C0=clerp(RH.C0,cf(1,-0.35 - 0.05 * math.cos(sine / 25),-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(20)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 25))*angles(math.rad(-10),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-5),math.rad(0),math.rad(25)),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-5),math.rad(0),math.rad(-25)),.1)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RH.C0=clerp(RH.C0,cf(1,-0.35 - 0.05 * math.cos(sine / 25),-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(20)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 25))*angles(math.rad(10),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2.5),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-15),math.rad(0),math.rad(55)),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-15),math.rad(0),math.rad(-55)),.1)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
if ModeOfGlitch == 1 then
local snap = math.random(1,10)
if snap == 1 then
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(23 + math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(22 + math.random(-5,5))),1)
end
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-5.5 - 2 * math.cos(sine / 56)),math.rad(-12 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-6),math.rad(22 - 2 * math.cos(sine / 56)),math.rad(-1 + 2 * math.cos(sine / 32))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.01 + 0.03 * math.cos(sine / 32),0 + 0.1 * math.cos(sine / 32))*angles(math.rad(1 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-22 + 2 * math.cos(sine / 56))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(23 - 2 * math.cos(sine / 37)),math.rad(0 + 5 * math.cos(sine / 43) - 5 * math.cos(sine / 0.25)),math.rad(22 - 2 * math.cos(sine / 56))),.1)
RW.C0=clerp(RW.C0,cf(1,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(62 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1.35,1 + 0.025 * math.cos(sine / 45),-0.2)*angles(math.rad(148 - 2 * math.cos(sine / 51)),math.rad(0 - 4 * math.cos(sine / 64)),math.rad(22 - 2 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 2 then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(1 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-0.5),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-1 + 2 * math.cos(sine / 32))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.01 + 0.02 * math.cos(sine / 32),0 + 0.05 * math.cos(sine / 32))*angles(math.rad(1 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0 + 3 * math.cos(sine / 42))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15 - 2 * math.cos(sine / 37)),math.rad(0 + 2 * math.cos(sine / 58)),math.rad(0 + 1 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(62 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(89 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(67 - 4 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 2 then
RH.C0=clerp(RH.C0,cf(1,-0.5 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(1 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-0.5 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-0.5),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-1 + 2 * math.cos(sine / 32))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.01 + 0.02 * math.cos(sine / 32),-1 + 0.05 * math.cos(sine / 32))*angles(math.rad(1 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0 + 3 * math.cos(sine / 42))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15 - 2 * math.cos(sine / 37)),math.rad(0 + 2 * math.cos(sine / 58)),math.rad(0 + 1 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(62 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(89 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(67 - 4 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 50 then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(-10 + 2 * math.cos(sine / 43)),math.rad(0 - 2 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(0 + 2 * math.cos(sine / 34))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 34),0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 2 * math.cos(sine / 34)),math.rad(0),math.rad(10 - 2 * math.cos(sine / 43))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2.5 * math.cos(sine / 28)),math.rad(0 - 2 * math.cos(sine / 47)),math.rad(-10 + 2 * math.cos(sine / 43))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(10 + 3 * math.cos(sine / 48)),math.rad(-20 - 4 * math.cos(sine / 53)),math.rad(15 - 3 * math.cos(sine / 38))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(-10 + 2 * math.cos(sine / 45)),math.rad(0),math.rad(-20 + 2 * math.cos(sine / 39))),.1)
elseif ModeOfGlitch == 5555 then --5555
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.1 * math.cos(sine / 28))*angles(math.rad(0 - 2 * math.cos(sine / 34)),math.rad(0),math.rad(-26 + 2 * math.cos(sine / 44))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20 - 1 * math.cos(sine / 28)),math.rad(-5 + 3 * math.cos(sine / 47)),math.rad(26 - 2 * math.cos(sine / 44))),.1)
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1),math.rad(0),math.rad(-10 + 5 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1.25),math.rad(0),math.rad(6 + 2 * math.cos(sine / 34))),.1)
RW.C0=clerp(RW.C0,cf(1,0.5 + 0.1 * math.cos(sine / 28),-0.45)*angles(math.rad(22 - 3 * math.cos(sine / 53)),math.rad(0),math.rad(-37 + 2 * math.cos(sine / 37))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.1 * math.cos(sine / 28),-0.45)*angles(math.rad(23 - 2 * math.cos(sine / 58)),math.rad(0),math.rad(38 - 3 * math.cos(sine / 57) )),.1)
elseif ModeOfGlitch == 1002 then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 - 1 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(20),math.rad(0 + 1 * math.cos(sine / 34))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(-20)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(sine / 28)),math.rad(0),math.rad(20)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(10),math.rad(-20),math.rad(30 + 2.5 * math.cos(sine / 25))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(10),math.rad(20),math.rad(-20)),.1)
elseif ModeOfGlitch == 12 then
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 20)  - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3 + 2 * math.cos(sine / 40)),math.rad(-15),math.rad(0 + 2 * math.cos(sine / 20))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 20) - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 - 2 * math.cos(sine / 40)),math.rad(1),math.rad(0 - 2 * math.cos(sine / 20))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.02 * math.cos(sine / 40),0 - 0.02 * math.cos(sine / 40),-0.05 - 0.05 * math.cos(sine / 20))*angles(math.rad(0 + 2 * math.cos(sine / 20)),math.rad(0 + 2 * math.cos(sine / 40)),math.rad(30 + 3 * math.cos(sine / 40))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2),math.rad(0 - 7 * math.cos(sine / 40)),math.rad(-30 - 3 * math.cos(sine / 40))),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.05 * math.cos(sine / 28),0.1)*angles(math.rad(-6 + 5 * math.cos(sine / 26)),math.rad(-10 - 6 * math.cos(sine / 24)),math.rad(13 - 5 * math.cos(sine / 34))),.1)
LW.C0=clerp(LW.C0,cf(-1.4,0.5 + 0.05 * math.cos(sine / 28),0.1)*angles(math.rad(-13 - 1 * math.cos(sine / 25)),math.rad(10 + 2 * math.cos(sine / 24)),math.rad(10 + 2 * math.cos(sine / 34))),.1)
elseif ModeOfGlitch == 3 then
local snap = math.random(1,32)
if snap == 1 then
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(22 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),1)
end
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(1 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-1 + 2 * math.cos(sine / 32))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.02 + 0.02 * math.cos(sine / 32),0 + 0.05 * math.cos(sine / 32))*angles(math.rad(2 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0 - 1 * math.cos(sine / 44))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(22 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1,0.5 + 0.025 * math.cos(sine / 45),0.45)*angles(math.rad(-33 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(-33 + 3 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),0.45)*angles(math.rad(-23 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(33 - 3 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 4 then
local snap = math.random(1,5)
if snap == 1 then
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 + math.random(-1,1)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),0.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(25 + 5 * math.cos(sine / 74) + math.random(-1,1)),math.rad(1 - 3 * math.cos(sine / 53) + math.random(-1,1)),math.rad(1 + 3 * math.cos(sine / 45) + math.random(-1,1))),.6)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(25 - 3 * math.cos(sine / 73) + math.random(-1,1)),math.rad(2 - 1 * math.cos(sine / 55) + math.random(-1,1)),math.rad(-3 - 3 * math.cos(sine / 45) + math.random(-1,1))),.6)
end
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(25 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-25 + 2 * math.cos(sine / 32))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.25 + 0.02 * math.cos(sine / 32),-0.1 + 0.05 * math.cos(sine / 32))*angles(math.rad(25 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(25 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(1 + 3 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(25 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(-3 - 3 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 66 then
local snap = math.random(1,2)
if snap == 1 then
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 + math.random(-1,1)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),0.6)
RW.C0=clerp(RW.C0,cf(1.35,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(165 + 5 * math.cos(sine / 74) + math.random(-1,1)),math.rad(1 - 3 * math.cos(sine / 53) + math.random(-1,1)),math.rad(-15 + 3 * math.cos(sine / 45) + math.random(-1,1))),.6)
LW.C0=clerp(LW.C0,cf(-1.35,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(165 - 3 * math.cos(sine / 73) + math.random(-1,1)),math.rad(2 - 1 * math.cos(sine / 55) + math.random(-1,1)),math.rad(15 - 3 * math.cos(sine / 45) + math.random(-1,1))),.6)
end
RH.C0=clerp(RH.C0,cf(1,0.35 - 0.05 * math.cos(sine / 32),-0.7)*angles(math.rad(-20),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(25 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1.125 - 0.05 * math.cos(sine / 32),-0.6)*angles(math.rad(-105),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-25 + 2 * math.cos(sine / 32))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.3 + 0.05 * math.cos(sine / 32))*angles(math.rad(7.5 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.35,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(165 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(-15 + 3 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1.35,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(165 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(15 - 3 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 5 then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(0 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(0 + 2 * math.cos(sine / 32))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),-0.1 + 0.05 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(10 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(2 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(8 + 3 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(5 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(-14 - 3 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 6 then
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 7 * math.cos(sine / 56))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 3 * math.cos(sine / 52))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(13 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(2 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(14 + 5 * math.cos(sine / 32))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(5 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(-14 - 6 * math.cos(sine / 33))),.1)
elseif ModeOfGlitch == 13 then
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 7 * math.cos(sine / 56))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 3 * math.cos(sine / 52))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(13 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1,0.5 + 0.025 * math.cos(sine / 45),-0.35)*angles(math.rad(6 + 1 * math.cos(sine / 74)),math.rad(-14 - 1 * math.cos(sine / 53)),math.rad(-86 + 5 * math.cos(sine / 32))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.55)*angles(math.rad(-20 - 3 * math.cos(sine / 73)),math.rad(23 - 2.25 * math.cos(sine / 55)),math.rad(86 - 6 * math.cos(sine / 33))),.1)
elseif ModeOfGlitch == 8 then
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 2 * math.cos(sine / 39))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 6 * math.cos(sine / 31))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-20)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(13 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(20 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(62 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(89 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(67 - 4 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 9 then
sphere2(8,"Add",rarm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,MAINRUINCOLOR,MAINRUINCOLOR.Color)
sphere2(8,"Add",larm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,BrickColor.new("Lime green"),Color3.new(0,1,0))
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-4 - 2 * math.cos(sine / 53)),math.rad(0 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(9 - 2 * math.cos(sine / 53)),math.rad(0 + 2 * math.cos(sine / 32))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),-0.1 + 0.05 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0 - 2 * math.cos(sine / 53))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(19 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(2 + 5 * math.cos(sine / 74)),math.rad(18 - 3 * math.cos(sine / 53)),math.rad(17 + 3 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(5 - 3 * math.cos(sine / 73)),math.rad(-11 - 1 * math.cos(sine / 55)),math.rad(-14 - 3 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 1003 then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.1 * math.cos(sine / 28))*angles(math.rad(0 - 2 * math.cos(sine / 34)),math.rad(0),math.rad(-26 + 2 * math.cos(sine / 44))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20 - 1 * math.cos(sine / 28)),math.rad(-5 + 3 * math.cos(sine / 47)),math.rad(26 - 2 * math.cos(sine / 44))),.1)
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1),math.rad(0),math.rad(-10 + 5 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1.25),math.rad(0),math.rad(6 + 2 * math.cos(sine / 34))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(3 + 7 * math.cos(sine / 79)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(33 + 10 * math.cos(sine / 73))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(15 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(-27 - 6 * math.cos(sine / 33))),.1)

elseif ModeOfGlitch == 8889 then
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 5 * math.cos(sine / 51))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 3 * math.cos(sine / 44))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-36)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(13 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(36 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(3 + 7 * math.cos(sine / 79)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(33 + 10 * math.cos(sine / 73))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(15 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(-27 - 6 * math.cos(sine / 33))),.1)
elseif ModeOfGlitch == 1264532489 then
sphere2(8,"Add",rarm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,MAINRUINCOLOR,MAINRUINCOLOR.Color)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-14 - 5 * math.cos(sine / 48))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(15 + 7 * math.cos(sine / 51))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(21 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(13 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(28 + 2 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(89 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(67 - 4 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 9999999921111 then  --9999999921111
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(8 - 6 * math.cos(sine / 67)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-18 - 5 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-15 - 8 * math.cos(sine / 74)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(31 + 8 * math.cos(sine / 38))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(-21 - 2 * math.cos(sine / 32)),math.rad(8),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 - 6 * math.cos(sine / 37)),math.rad(-14 + 5 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(-24 + 9 * math.cos(sine / 72)),math.rad(3 - 5 * math.cos(sine / 58)),math.rad(38 + 7 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-0.8,0.35 + 0.025 * math.cos(sine / 45),-0.75)*angles(math.rad(160 - 2 * math.cos(sine / 66)),math.rad(5 - 8 * math.cos(sine / 59)),math.rad(87 - 3 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 4367677813 then
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 2 * math.cos(sine / 32))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(10)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15 - 2 * math.cos(sine / 37)),math.rad(0 + 2 * math.cos(sine / 58)),math.rad(-10 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(4 + 3 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(19 + 2 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1.25,0.5 + 0.025 * math.cos(sine / 45),-0.15)*angles(math.rad(10 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(13 - 4 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 55469696922 then --5555
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(8 - 6 * math.cos(sine / 67)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-18 - 5 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-15 - 8 * math.cos(sine / 74)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(31 + 8 * math.cos(sine / 38))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(-13 - 2 * math.cos(sine / 32)),math.rad(3),math.rad(10 - 4 * math.cos(sine / 67))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(23 - 8 * math.cos(sine / 37)),math.rad(-21 + 2 * math.cos(sine / 58)),math.rad(-10 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1,0.5 + 0.025 * math.cos(sine / 45),0.45)*angles(math.rad(-33 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(-33 + 14 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),0.45)*angles(math.rad(-23 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(35 - 8 * math.cos(sine / 51))),.1)
elseif ModeOfGlitch == 999999999556 then
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 6 * math.cos(sine / 39))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 3 * math.cos(sine / 45))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(17)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(29 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(-17 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(62 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(89 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(67 - 4 * math.cos(sine / 45))),.1)
end
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false and ModeOfGlitch ~= 66 then
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 35 * math.cos(sine / 8))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 35 * math.cos(sine / 8))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.05,-0.05 - 0.05 * math.cos(sine / 4))*angles(math.rad(5 + 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - root.RotVelocity.Y - 5 * math.cos(sine / 8))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - hed.RotVelocity.Y*1.5 + 5 * math.cos(sine / 8))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + 0.25 * math.cos(sine / 8))*angles(math.rad(0 - 50 * math.cos(sine / 8)),math.rad(0),math.rad(5 - 10 * math.cos(sine / 4))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - 0.25 * math.cos(sine / 8))*angles(math.rad(0 + 50 * math.cos(sine / 8)),math.rad(0),math.rad(-5 + 10 * math.cos(sine / 4))),.1)
elseif attack==false and ModeOfGlitch == 66 then
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 35 * math.cos(sine / 8))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 35 * math.cos(sine / 8))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.05,-0.05 - 0.05 * math.cos(sine / 4))*angles(math.rad(5 + 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - root.RotVelocity.Y - 5 * math.cos(sine / 8))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.35,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(165 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(-15 + 3 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1.35,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(165 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(15 - 3 * math.cos(sine / 45))),.1)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
if ModeOfGlitch ~= 6 and ModeOfGlitch ~= 13 and ModeOfGlitch ~= 5555 and ModeOfGlitch ~= 1003 and ModeOfGlitch ~= 8 and ModeOfGlitch ~= 1264532489 and ModeOfGlitch ~= 55469696922 and ModeOfGlitch ~= 4367677813 and ModeOfGlitch ~= 9999999921111 and ModeOfGlitch ~= 999999999556 and ModeOfGlitch ~= 8889 then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.15 * math.cos(sine / 3),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 95 * math.cos(sine / 6))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.15 * math.cos(sine / 3),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 95 * math.cos(sine / 6))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.3,-0.05 + 0.15 * math.cos(sine / 3))*angles(math.rad(25 - 4 * math.cos(sine / 3)),math.rad(0 + root.RotVelocity.Y*1.5),math.rad(0 - root.RotVelocity.Y - 1 * math.cos(sine / 6))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-6 + 2 * math.cos(sine / 3)),math.rad(0 + root.RotVelocity.Y*1.5),math.rad(0 - hed.RotVelocity.Y*1.5 + 1 * math.cos(sine / 6))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0.3)*angles(math.rad(-50 + 10 * math.cos(sine / 3)),math.rad(-10),math.rad(7 + 5 * math.cos(sine / 6))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0.3)*angles(math.rad(-50 + 10 * math.cos(sine / 3)),math.rad(10),math.rad(-7 - 5 * math.cos(sine / 6))),.1)
if ModeOfGlitch == 12 then
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 45 * math.cos(sine / 8))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 45 * math.cos(sine / 8))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.05,-0.05 + 0.05 * math.cos(sine / 4))*angles(math.rad(1.5 + 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - root.RotVelocity.Y - 10 * math.cos(sine / 8))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5 - 5 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - hed.RotVelocity.Y*1.5 + 10 * math.cos(sine / 8))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + 0.25 * math.cos(sine / 8))*angles(math.rad(0 - 50 * math.cos(sine / 8)),math.rad(0),math.rad(5 - 10 * math.cos(sine / 4))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - 0.25 * math.cos(sine / 8))*angles(math.rad(0 + 50 * math.cos(sine / 8)),math.rad(0),math.rad(-5 + 10 * math.cos(sine / 4))),.1)
end
if ModeOfGlitch == 9 then
	sphere2(8,"Add",rarm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,MAINRUINCOLOR,MAINRUINCOLOR.Color)
sphere2(8,"Add",larm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,BrickColor.new("Lime green"),Color3.new(0,1,0))
sphereMK(2,-0.5,"Add",root.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),8)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.5,0.5,20,-0.0075,MAINRUINCOLOR,0)
end
elseif ModeOfGlitch == 6 or ModeOfGlitch == 1003 or ModeOfGlitch == 5555 or ModeOfGlitch == 8 or ModeOfGlitch == 1264532489 or ModeOfGlitch == 55469696922 or ModeOfGlitch == 4367677813 or ModeOfGlitch == 9999999921111 or ModeOfGlitch == 999999999556 or ModeOfGlitch == 8889 then
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1.5),math.rad(0),math.rad(-20 - 5 * math.cos(sine / 34))),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1),math.rad(0),math.rad(20 + 2 * math.cos(sine / 38))),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 - 0.15 * math.cos(sine / 47),-0.5,0.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(70),math.rad(0 - root.RotVelocity.Y),math.rad(0 - root.RotVelocity.Y *4.5 + 3 * math.cos(sine / 47))),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-17 - 5 * math.cos(sine / 52)),math.rad(0 - 3 * math.cos(sine / 37)),math.rad(0 + 2 * math.cos(sine / 78))),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.05 * math.cos(sine / 28),0)*angles(math.rad(-8 - 4 * math.cos(sine / 59)),math.rad(-20 + 7 * math.cos(sine / 62)),math.rad(20 + 5 * math.cos(sine / 50))),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(-8 - 3 * math.cos(sine / 55)),math.rad(20 + 8 * math.cos(sine / 67)),math.rad(-20 - 4 * math.cos(sine / 29))),.2)
elseif ModeOfGlitch == 13 then
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1.5),math.rad(0),math.rad(-20 - 5 * math.cos(sine / 34))),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1),math.rad(0),math.rad(20 + 2 * math.cos(sine / 38))),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 - 0.15 * math.cos(sine / 47),-0.5,0.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(40),math.rad(0 - root.RotVelocity.Y),math.rad(0 - root.RotVelocity.Y *4.5 + 3 * math.cos(sine / 47))),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-17 - 5 * math.cos(sine / 52)),math.rad(0 - 3 * math.cos(sine / 37)),math.rad(0 + 2 * math.cos(sine / 78))),.2)
RW.C0=clerp(RW.C0,cf(1,0.5 + 0.025 * math.cos(sine / 45),-0.35)*angles(math.rad(6 + 3 * math.cos(sine / 74)),math.rad(-14 - 1 * math.cos(sine / 53)),math.rad(-86 + 5 * math.cos(sine / 32))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.55)*angles(math.rad(-20 - 5 * math.cos(sine / 73)),math.rad(23 - 2.25 * math.cos(sine / 55)),math.rad(86 - 6 * math.cos(sine / 33))),.1)
end
end
end
end
end

local Player = game:GetService("Players").LocalPlayer
	
	local Char = Player.Character
	local Event = Char:WaitForChild("UserInput_Event")
	
	local UIS = game:GetService("UserInputService")
	
	local input = function(io,a)
	    if a then return end
		local io = {KeyCode=io.KeyCode,UserInputType=io.UserInputType,UserInputState=io.UserInputState}
		Event:FireServer(io)
	end
	UIS.InputBegan:Connect(input)
	UIS.InputEnded:Connect(input)
	local Changed = false
	local Mouse = Player:GetMouse()
	local h,t = Mouse.Hit,Mouse.Target
	while wait(1/30) do
		if h~=Mouse.Hit or t~=Mouse.Target then
			Event:FireServer({isMouse=true,Target=Mouse.Target,Hit=Mouse.Hit})
            h,t=Mouse.Hit,Mouse.Target
		end
	end