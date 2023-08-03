--SB Plasma Shotgun 2013

--madiik's plasma shottie

--variables

local plr = game:service'Players'.LocalPlayer
local char = plr.Character
local mouse = plr:GetMouse()
local humanoid = char:findFirstChild("Humanoid")
local torso = char:findFirstChild("Torso")
local head = char.Head
local ra = char:findFirstChild("Right Arm")
local la = char:findFirstChild("Left Arm")
local rl = char:findFirstChild("Right Leg")
local ll = char:findFirstChild("Left Leg")
local rs = torso:findFirstChild("Right Shoulder")
local ls = torso:findFirstChild("Left Shoulder")
local rh = torso:findFirstChild("Right Hip")
local lh = torso:findFirstChild("Left Hip")
local neck = torso:findFirstChild("Neck")
local animate = char.Animate


--some more variables
local equipping = false
local equipped = false
local spread = 0
-- end of some more variables

local sound = Instance.new("Sound",head)
sound.SoundId = "http://www.roblox.com/asset?id=130113322"
sound.Volume = 1
sound.Pitch = 1

local sound2 = Instance.new("Sound",head)
sound2.SoundId = "http://www.roblox.com/asset?id=130113370"
sound2.Volume = 1
sound2.Pitch = 0.9


modelName = "Gun"

pcall(function()
char:findFirstChild(modelName):Destroy()
end)


local gun = Instance.new("Model", char)
gun.Name = modelName



function attach(weld, part0, part1)
weld.Part0 = part0
weld.Part1 = part1
end









--create func
function part(parent, size, color, formfactor, collide, transparency)
if transparency == nil then transparency = 0 end
if collide == nil then collide = false end
if formfactor == nil then formfactor = Enum.FormFactor.Custom end
local p=Instance.new("Part", parent)
p.FormFactor=formfactor
p.CanCollide=false
p.Size=size
p.Locked=true
p.Transparency=transparency
p.Position=torso.Position
p.BrickColor=color
p.FrontSurface="SmoothNoOutlines" 
p.BackSurface="SmoothNoOutlines" 
p.LeftSurface="SmoothNoOutlines" 
p.BottomSurface="SmoothNoOutlines" 
p.TopSurface="SmoothNoOutlines" 
p.RightSurface="SmoothNoOutlines" 
return p
end
function wedge(parent, size, color, formfactor, collide, transparency)

if transparency == nil then transparency = 0 end
if collide == nil then collide = false end
if formfactor == nil then formfactor = Enum.FormFactor.Custom end

local p=Instance.new("WedgePart", parent)
p.FormFactor=formfactor
p.CanCollide=false
p.Size=size
p.Locked=true
p.Position = torso.Position
p.BrickColor=color
p.FrontSurface="SmoothNoOutlines" 
p.BackSurface="SmoothNoOutlines" 
p.LeftSurface="SmoothNoOutlines" 
p.BottomSurface="SmoothNoOutlines" 
p.TopSurface="SmoothNoOutlines" 
p.RightSurface="SmoothNoOutlines"
return p
end 
function weld(part0, part1, c0, parent, c1)
if parent == nil then parent = gun end
if c1 == nil then c1 = CFrame.new() end

local wel=Instance.new("Weld", parent)
wel.Part0 = part0
wel.Part1 = part1
wel.C0 = c0
wel.C1 = c1
return wel
end
function specialmesh(parent, meshType, scale, meshId)
local mesh = Instance.new("SpecialMesh", parent)
mesh.Scale = scale
mesh.MeshType = meshType
mesh.MeshId = meshId
return mesh
end


--some ray functi0n

function rayCast(speed, gravity, from)
coroutine.wrap(function()        
if char.Humanoid.Health == 0 then return end
local rayP = Instance.new("Part")
rayP.Name = "rayP"
rayP.BrickColor = BrickColor.new("Cyan")
rayP.Anchored = true
rayP.CanCollide = false
rayP.Locked = true
rayP.TopSurface = Enum.SurfaceType.Smooth
rayP.BottomSurface = Enum.SurfaceType.Smooth
rayP.formFactor = Enum.FormFactor.Custom
rayP.Size = Vector3.new(0.2, 0.2, 0.2)

Instance.new("PointLight", rayP).Color = Color3.new(0, 255, 255)

Instance.new("BlockMesh", rayP).Scale = Vector3.new(0.3, 0.3, 20)








local bulletposition = from.Position + Vector3.new(0, 0.3, 0)

local bulletvelocity = (Vector3.new(math.random(-spread*4,spread*4), math.random(-spread*4,spread*4), math.random(-spread*4,spread*4)))+( plr:GetMouse().Hit.p - bulletposition).unit*speed
local bulletlastposition = bulletposition




coroutine.resume(coroutine.create(function()
while true do
local dt = wait()
bulletlastposition = bulletposition
bulletvelocity = bulletvelocity + (Vector3.new(0, -9.81*gravity, 0)*dt)
bulletposition = bulletposition + (bulletvelocity*dt)

local ray = Ray.new(bulletlastposition, (bulletposition - bulletlastposition))

local hit, hitposition = workspace:FindPartOnRayWithIgnoreList( ray, { char, rayP, TrailPart} )

if (torso.Position - rayP.Position).magnitude > 540 then
rayP:Destroy()
break
end


if hit then
local damage = math.random(1004, 1007)
if hit.Parent:findFirstChild("Humanoid") ~= nil then
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - damage
end
if hit.Parent:IsA("Hat") and hit.Parent.Parent:findFirstChild("Humanoid") ~= nil then
hit.Parent.Parent.Humanoid.Health = hit.Parent.Parent.Humanoid.Health - damage        
end
bulletposition = hitposition
rayP.CFrame = CFrame.new(bulletposition, bulletposition+bulletvelocity)
rayP:Destroy()
break
end
rayP.CFrame = CFrame.new(bulletposition, bulletposition+bulletvelocity)
rayP.Parent = workspace
end
end))
end)()
end



--part(parent, size, color, formfactor(opt), collide(opt), transparency(opt))
--specialmesh(parent, meshType, scale, meshId)
p1 = part(gun, Vector3.new(0.2, 0.85, 1), BrickColor.new("Really red"))
w1 = weld(p1, torso, CFrame.new(0.6, 0, -1)* CFrame.Angles(-math.pi/4, -math.pi/2, 0))


p2 = wedge(gun, Vector3.new(0.2, 0.2, 0.2), BrickColor.new("Really red"))
w2 = weld(p2, p1, CFrame.new(0, -0.325, 0.6))


p3 = wedge(gun, Vector3.new(0.2, 0.2, 0.2), BrickColor.new("Really red"))
w3 = weld(p3, p1, CFrame.new(0, -0.325, 0.6)*CFrame.Angles(math.pi, math.pi, 0))


p4 = part(gun, Vector3.new(0.2, 0.45, 2), BrickColor.new("Dark stone grey"))
w4 = weld(p4, p1, CFrame.new(0, 0, 1.5))


p5 = part(gun, Vector3.new(0.2, 0.2, 1), BrickColor.new("Dark stone grey"))
Instance.new("BlockMesh", p5).Scale = Vector3.new(1.01, 0.5, 1.01)
w5 = weld(p5, p1, CFrame.new(0, 0.175, 0))




p6 = part(gun, Vector3.new(0.2, 0.2, 1), BrickColor.new("Dark stone grey"))
Instance.new("BlockMesh", p6).Scale = Vector3.new(1.01, 0.5, 1.01)
w6 = weld(p6, p1, CFrame.new(0, -0.175, 0))



p7 = part(gun, Vector3.new(0.2, 0.75, 0.25), BrickColor.new("Really red"))
Instance.new("BlockMesh", p7).Scale = Vector3.new(.9, 1, 1)
w7 = weld(p7, p1, CFrame.new(0, -0.2, 1)*CFrame.Angles(math.pi/6, 0, 0))



p8 = part(gun, Vector3.new(0.2, 1, 0.2), BrickColor.new("Dark stone grey"))
Instance.new("CylinderMesh", p8)
w8 = weld(p8, p1, CFrame.new(0, -3, -0.1)*CFrame.Angles(math.pi/2, 0, 0))



--part(parent, size, color, formfactor(opt), collide(opt), transparency(opt))
--specialmesh(parent, meshType, scale, meshId)



p9 = part(gun, Vector3.new(0.2, 1, 0.2), BrickColor.new("Dark stone grey"))
Instance.new("CylinderMesh", p9).Scale = Vector3.new(0.8, 1, 0.8)
w9 = weld(p9, p1, CFrame.new(0, -2.8, 0.08)*CFrame.Angles(math.pi/2, 0, 0))




pa1 = part(gun, Vector3.new(0.2, 0.2, 0.2), BrickColor.new("Dark stone grey"))
specialmesh(pa1, "FileMesh", Vector3.new(0.4, 0.4, 1), "http://www.roblox.com/asset/?id=3270017")
we1 = weld(pa1, p1, CFrame.new(1.1, 0.2, 0)*CFrame.Angles(0, math.pi/2, 0))


pa2 = part(gun, Vector3.new(0.2, 0.2, 0.2), BrickColor.new("Dark stone grey"))
specialmesh(pa2, "FileMesh", Vector3.new(0.35, 0.35, 1.5), "http://www.roblox.com/asset/?id=3270017")
we2 = weld(pa2, p1, CFrame.new(1.9 - 0.6, 0, 0.05)*CFrame.Angles(0, math.pi/2, 0))

pa3 = part(gun, Vector3.new(0.2, 0.2, 0.2), BrickColor.White())
Instance.new("BlockMesh", pa3).Scale = Vector3.new(0.95, 1, 0.1)
we3 = weld(pa3, p1, CFrame.new(-0.01, 0, 1.82 - 0.6))

pa4 = part(gun, Vector3.new(0.2, 0.2, 0.2), BrickColor.White())
Instance.new("BlockMesh", pa4).Scale = Vector3.new(0.95, 1, 0.1)
we4 = weld(pa4, p1, CFrame.new(-0.01, 0, 1.98 - 0.6))

pa5 = part(gun, Vector3.new(0.2, 0.2, 0.2), BrickColor.White())
Instance.new("BlockMesh", pa5).Scale = Vector3.new(0.95, 0.1, 0.1)
we5 = weld(pa5, p1, CFrame.new(-0.01, -0.05, 1.85 - 0.6))

pa6 = part(gun, Vector3.new(0.2, 0.2, 0.2), BrickColor.White())
Instance.new("BlockMesh", pa6).Scale = Vector3.new(0.95, 0.1, 0.1)
we6 = weld(pa6, p1, CFrame.new(-0.01, -0.05, 1.95 - 0.6))

pa7 = part(gun, Vector3.new(0.2, 0.2, 0.2), BrickColor.White())
Instance.new("BlockMesh", pa7).Scale = Vector3.new(0.95, 0.1, 0.1)
we7 = weld(pa7, p1, CFrame.new(-0.01, -0.02, 1.9 - 0.6))


pa8 = wedge(gun, Vector3.new(0.2, 0.2, 0.2), BrickColor.new("Dark stone grey"))
specialmesh(pa8, "Wedge", Vector3.new(0.2, 1, 1), "")
we8 = weld(pa8, p1, CFrame.new(0, -0.23, -3.35)*CFrame.Angles(0, math.pi, 0))

pa9 = part(gun, Vector3.new(0.21, 0.8, 0.21), BrickColor.new("Really Red"))
we9 = weld(pa9, p1, CFrame.new(0, -2.3, 0.2)*CFrame.Angles(math.pi/2, 0, 0))


--part(parent, size, color, formfactor(opt), collide(opt), transparency(opt))
--specialmesh(parent, meshType, scale, meshId)


for pos = 0.9, 1.9, 0.2 do
local lpart = part(gun, Vector3.new(0.201, 0.201, 0.201), BrickColor.new("Really Red"))
Instance.new("BlockMesh", lpart).Scale = Vector3.new(1, 0.5, 0.8)
local lweld = weld(lpart, p1, CFrame.new(0, -0.25, pos))
end



--function attach(weld, part0, part1)
--weld.Part0 = part0
--weld.Part1 = part1
--end

function equip()
animate.Disabled = true
--weld(part0, part1, c0, c1)
--part(parent, size, color, formfactor(opt), collide(opt), transparency(opt))
local ftorso = part(gun, torso.Size, torso.BrickColor)
ftorso.Name = "FakeTorsoShotgun"
Instance.new("SpecialMesh", ftorso).MeshId = "rbxasset://fonts/torso.mesh"
local ftorsoweld = weld(ftorso, torso, CFrame.new(),ftorso)
torso.Transparency = 1
local ar = Instance.new("Part", gun)
ar.FormFactor = "Custom"
ar.Size = Vector3.new(1, 1, 1)
ar.Transparency = 1
ar.CanCollide = false
ar.Locked = true
ar.Name = "ShoulderJoint"
ar:BreakJoints()
local weldf = Instance.new("Motor", ar)
weldf.C0 = CFrame.new(0, 0.5, 0)
weldf.Part0 = ra
weldf.Part1 = ar
motor = Instance.new("Motor", ar)
motor.Part0 = ftorso
motor.Part1 = ar
motor.C0 = CFrame.new(1.5, 0.5, 0)
local ar2 = Instance.new("Part", gun)
ar2.FormFactor = "Custom"
ar2.Size = Vector3.new(1, 1, 1)
ar2.Transparency = 1
ar2.CanCollide = false
ar2.Locked = true
ar2.Name = "ShoulderJoint2"
ar2:BreakJoints()
local weldf2 = Instance.new("Motor", ar2)
weldf2.C0 = CFrame.new(0, 0.5, 0)
weldf2.Part0 = la
weldf2.Part1 = ar2
motor2 = Instance.new("Motor", ar2)
motor2.Part0 = ftorso
motor2.Part1 = ar2
motor2.C0 = CFrame.new(-1.5, 0.5, 0)
w1.Part1 = ra
for angle = 0, 180, 20 do
w1.C0 = CFrame.new(0+angle/460, 0.5-angle/160, 0.5-angle/360) * CFrame.Angles(math.pi + math.rad(angle/2), math.rad(angle), math.rad(angle))
wait()
end
attach(rh, ftorso, rl)
attach(lh, ftorso, ll)
for angle = 0, 90, 10 do
ftorsoweld.C0 = CFrame.new() * CFrame.Angles(0, math.rad(angle-30), 0)
motor.C0 = CFrame.new(1.3, 0.5, 0-angle/120) * CFrame.Angles(math.rad(angle), 0, -math.rad(angle-30))
motor2.C0 = CFrame.new(-1.3, 0.5, 0-angle/180) * CFrame.Angles(math.rad(angle), 0, 0)
wait()
end




end

function unequip()
animate.Disabled = false
attach(rh, torso, rl)
attach(lh, torso, ll)
w1.C0 = CFrame.new(0.6, 0, -1)* CFrame.Angles(-math.pi/4, -math.pi/2, 0)
w1.Part1 = torso
torso.Transparency = 0
pcall(function()
gun.FakeTorsoShotgun:Destroy()
gun.FakeTorsoShotgun:Destroy()
gun.ShoulderJoint:Destroy()
gun.ShoulderJoint:Destroy()
gun.ShoulderJoint2:Destroy()
gun.ShoulderJoint2:Destroy()
end)

end


local tool = Instance.new("HopperBin", plr.Backpack)
tool.Name = "Plasma Shotgun"



tool.Selected:connect(function(mouse2)
equipped = true
local mainGui = Instance.new("ScreenGui", plr.PlayerGui)
mainGui.Name = "AccuracyStuff"

local accuracyFrame = Instance.new("Frame", mainGui)
accuracyFrame.Size = UDim2.new(0, 100, 0, 100)
accuracyFrame.BackgroundTransparency = 1

mouse2.Icon = "http://www.roblox.com/asset/?id=108625356"



local accuracy1 = Instance.new("TextLabel", accuracyFrame)
accuracy1.Text = ""
accuracy1.BorderSizePixel = 0
accuracy1.BackgroundColor = BrickColor.new("Lime green")
accuracy1.Size = UDim2.new(0, -15, 0, 2)

local accuracy2 = Instance.new("TextLabel", accuracyFrame)
accuracy2.Text = ""
accuracy2.BorderSizePixel = 0
accuracy2.BackgroundColor = BrickColor.new("Lime green")
accuracy2.Size = UDim2.new(0, 15, 0, 2)

local accuracy3 = Instance.new("TextLabel", accuracyFrame)
accuracy3.Text = ""
accuracy3.BorderSizePixel = 0
accuracy3.BackgroundColor = BrickColor.new("Lime green")
accuracy3.Size = UDim2.new(0, 2, 0, -15)

local accuracy4 = Instance.new("TextLabel", accuracyFrame)
accuracy4.Text = ""
accuracy4.BorderSizePixel = 0
accuracy4.BackgroundColor = BrickColor.new("Lime green")
accuracy4.Size = UDim2.new(0, 2, 0, 15)

coroutine.wrap(function()
while equipped do
if spread < 0 then spread = 0 end
if humanoid.Health == 0 then break end
accuracy1.Position = UDim2.new(0, 41-(spread*40), 0, 50)
accuracy2.Position = UDim2.new(0, 60+(spread*40), 0, 50)
accuracy3.Position = UDim2.new(0, 50, 0, 40-(spread*40))
accuracy4.Position = UDim2.new(0, 50, 0, 60+(spread*40))        
accuracyFrame.Position = UDim2.new(0, mouse.X-50, 0, mouse.Y-50)
game:service'RunService'.Stepped:wait()
end
end)()

equip()
mouse2.Button1Down:connect(function()
if debounce then return end
debounce = true
sound:play()
motor.C0 = motor.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), -math.rad(12), 0)
coroutine.wrap(function()
wait(0.3)
for angle = 0, 4 do
motor.C0 = motor.C0 * CFrame.Angles(-math.rad(3.5), math.rad(2.2), 0)
wait()
end
motor.C0 = CFrame.new(1.3, 0.5, 0-90/120) * CFrame.Angles(math.rad(90), 0, -math.rad(90-30))
wait(0.2)
sound2:play()
we9.C0 = we9.C0 * CFrame.new(0, 0, -0.3)
motor2.C0 = motor2.C0 * CFrame.new(0.3, 0, 0)
wait(0.1)
for move = 0, 3 do
if move > 2 then return end
we9.C0 = we9.C0 * CFrame.new(0, 0, 0.1)
motor2.C0 = motor2.C0 * CFrame.new(-0.1, 0, 0)
wait(0.06)
end
end)()
spread = spread + 1
coroutine.wrap(function()
for bullitz = 0, 7 do
if bullitz > 6 then return end
rayCast(200, 2, pa8)
end
end)()
coroutine.wrap(function()
for _ = 0, 50 do
pcall(function()
spread = spread - 0.02
end)
wait()
end
end)()
wait(1)
debounce = false
end)

end)

tool.Deselected:connect(function()
equipped = false
pcall(function()
unequip()
plr.PlayerGui.AccuracyStuff:Destroy()
plr.PlayerGui.AccuracyStuff:Destroy()
plr.PlayerGui.AccuracyStuff:Destroy()
end)
end)