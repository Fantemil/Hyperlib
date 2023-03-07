--that should do it
Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
char = Player.Character
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]

local Orin = "http://www.roblox.com/asset/?id=7074786"
Head.face.Texture = Orin
function weld(a, b, acf)
 local w = Instance.new("Weld", a)
 w.Part0 = a
 w.Part1 = b
 w.C0 = acf
end
local righteyebrickcolor = "Toothpaste"
local reye = Instance.new("Part", char)
reye.CanCollide = false
reye.BrickColor = BrickColor.new(righteyebrickcolor)
reye.Material = "Neon"
reye.Size = Vector3.new(.25,.35,.15)
weld(reye, char.Head, CFrame.new(0.15,-0.2,0.55), CFrame.new(1,0,0))
m1 = Instance.new("SpecialMesh", reye)
m1.MeshType = "Sphere"
m1.Scale = Vector3.new(0.9,0.9,0.9)
reye.Locked = true
reye.Name = "re"


--chat

local p = game:GetService("Players").LocalPlayer
local plr = game:GetService("Players").LocalPlayer
local player = game:GetService("Players").LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char:WaitForChild("Left Arm")
local rarm = char:WaitForChild("Right Arm")
local lleg = char:WaitForChild("Left Leg")
local rleg = char:WaitForChild("Right Leg")
local hed = char:WaitForChild("Head")
local torso = char:WaitForChild("Torso")
local root = char:WaitForChild("HumanoidRootPart")
local hum = char:FindFirstChildOfClass("Humanoid")
local debris = game:GetService("Debris")
local run = game:GetService("RunService")
local rs = run.RenderStepped
local cam = workspace.CurrentCamera
local movement = 4
local change = 0.4
local DebrisModel = Instance.new("Model",char)
local stealth = false
local debounce = false
hum.MaxHealth = 50000
hum.Health = hum.MaxHealth
themeid = 175635113
themepitch = 1.4
main = {r = 0;g = 100;b = 255;v = 1}
if p:FindFirstChild("rcolor") then main.r = p.rcolor.Value else local string = Instance.new("StringValue",p) string.Name = "rcolor" end
if p:FindFirstChild("gcolor") then main.g = p.gcolor.Value else local string = Instance.new("StringValue",p) string.Name = "gcolor" end
if p:FindFirstChild("bcolor") then main.b = p.bcolor.Value else local string = Instance.new("StringValue",p) string.Name = "bcolor" end
if p:FindFirstChild("vcolor") then main.v = p.vcolor.Value else local string = Instance.new("StringValue",p) string.Name = "vcolor" end
if p:FindFirstChild("idtheme") then themeid = p.idtheme.Value else local string = Instance.new("StringValue",p) string.Name = "idtheme" end
if p:FindFirstChild("pitchtheme") then themepitch = p.pitchtheme.Value else local string = Instance.new("StringValue",p) string.Name = "pitchtheme" end
pr = p:FindFirstChild("rcolor")
pg = p:FindFirstChild("gcolor")
pb = p:FindFirstChild("bcolor")
pv = p:FindFirstChild("vcolor")
idth = p:FindFirstChild("idtheme")
pith = p:FindFirstChild("pitchtheme")
main_color = Color3.fromRGB(main.r,main.g,main.b)
explosionid = {262562442,144699494,539294959,1388740053}
--919941001
Prefix = "/"
p.Chatted:connect(function(msg)
 
    if msg:lower():sub(1,#Prefix+#'color r ')==Prefix..'color r ' then
    local v = tonumber(msg:sub(#Prefix+#'color r '+1))
    main.r = v
    elseif msg:lower():sub(1,#Prefix+#'color g ')==Prefix..'color g ' then
    local v = tonumber(msg:sub(#Prefix+#'color g '+1))
    main.g = v
    elseif msg:lower():sub(1,#Prefix+#'color b ')==Prefix..'color b ' then
    local v = tonumber(msg:sub(#Prefix+#'color b '+1))
    main.b = v
    elseif msg:lower():sub(1,#Prefix+#'color v ')==Prefix..'color v ' then
    local v = tonumber(msg:sub(#Prefix+#'color v '+1))
    if v > 1 then main.v = 1 elseif v < -1 then main.v = -1 else main.v = v end

    elseif msg:lower():sub(1,#Prefix+#'theme ')==Prefix..'theme ' then
    local v = tonumber(msg:sub(#Prefix+#'theme '+1))
    themeid = v
    music(themeid,themepitch)

    elseif msg:lower():sub(1,#Prefix+#'pitch ')==Prefix..'pitch ' then
    local v = tonumber(msg:sub(#Prefix+#'pitch '+1))
    themepitch = v
    music(themeid,themepitch)

    elseif msg:lower():sub(1,#Prefix+#'prefix ')==Prefix..'prefix ' then
    local v = msg:sub(#Prefix+#'prefix '+1)
    Prefix = v
 
    elseif msg:lower():sub(1,#Prefix+#'reset')==Prefix..'reset' then
    main.r = 0
    main.g = 100
    main.b = 255
    main.v = 1
    themeid = 175635113
    themepitch = 1
    music(themeid,themepitch)

    end

end)
----------------------------------------------------------------------------
no_anim = false
attack = false
attacking = false
canjump = true
aiming_anim = false
animid = math.random(0,1)
timer = 0
bg = Instance.new("BodyGyro",root)
bg.P = 100000
bg.D = 100
----------------------------------------------------------------------------

function rswait(value)
  if value ~= nil and value ~= 0 then
    for i=1,value do
     rs:wait()
    end
  else
 rs:wait()
  end
end

----------------------------------------------------------------------------
max = 0
function music(id,pitch)
max = 0
if id == "Stop" then
if not torso:FindFirstChild("MusicRuin") then
soundz = Instance.new("Sound",torso)
end
soundz:Stop()
else
if not torso:FindFirstChild("MusicRuin") then
soundz = Instance.new("Sound",torso)
end
soundz.MaxDistance = 150*5
soundz.EmitterSize = 150/5
soundz.Volume = 10
soundz.Name = "MusicRuin"
soundz.Looped = true
soundz.PlaybackSpeed = pitch
soundz.SoundId = "rbxassetid://"..id
soundz:Stop()
soundz:Play()
end
end

----------------------------------------------------------------------------

function lerp(a, b, t)
  return a + (b - a)*t
end

----------------------------------------------------------------------------

function Lerp(c1,c2,al)
  local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
  local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
  for i,v in pairs(com1) do
    com1[i] = v+(com2[i]-v)*al
  end
  return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end

----------------------------------------------------------------------------

function slerp(a, b, t)
  dot = a:Dot(b)
  if dot > 0.99999 or dot < -0.99999 then
    return t <= 0.5 and a or b
  else
    r = math.acos(dot)
    return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
  end
end

----------------------------------------------------------------------------

function clerp(c1,c2,al)

  local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}

  local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}

  for i,v in pairs(com1) do

    com1[i] = lerp(v,com2[i],al)

  end

  return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))

end

----------------------------------------------------------------------------

function findAllNearestTorso(pos,dist)
    local list = game.Workspace:children()
    local torso = {}
    local temp = nil
    local human = nil
    local temp2 = nil
    for x = 1, #list do
        temp2 = list[x]
        if (temp2.className == "Model") and (temp2 ~= char) then
            local nayem = "Torso"
            if temp2:findFirstChild("UpperTorso") then nayem = "UpperTorso" end
            temp = temp2:findFirstChild(nayem)
            human = temp2:findFirstChildOfClass("Humanoid")
            if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
                if (temp.Position - pos).magnitude < dist then
                    table.insert(torso,temp)
                    dist = (temp.Position - pos).magnitude
                end
            end
        end
    end
    return torso
end

----------------------------------------------------------------------------

local isAPlayer
function checkIfNotPlayer(model)
coroutine.resume(coroutine.create(function()
if model ~= char and model.Parent ~= char and model.Parent.Parent ~= char and model.Parent ~= DebrisModel and model.Parent.Parent ~= DebrisModel and model.Parent.Parent.Parent ~= DebrisModel then
isAPlayer = true
else
isAPlayer = false
end
end))
return isAPlayer
end

----------------------------------------------------------------------------

function computeDirection(vec)
local lenSquared = vec.magnitude * vec.magnitude
local invSqrt = 1 / math.sqrt(lenSquared)
return Vector3.new(vec.x * invSqrt, vec.y * invSqrt, vec.z * invSqrt)
end

----------------------------------------------------------------------------

function newWeld(wp0, wp1, wc0x, wc0y, wc0z)

  local wld = Instance.new("Weld", wp1)

  wld.Part0 = wp0

  wld.Part1 = wp1

  wld.C0 = CFrame.new(wc0x, wc0y, wc0z)

  return wld

end

----------------------------------------------------------------------------

function weld(model)
 local parts,last = {}
 local function scan(parent)
  for _,v in pairs(parent:GetChildren()) do
   if (v:IsA("BasePart")) then
    if (last) then
     local w = Instance.new("Weld")
     w.Name = ("%s_Weld"):format(v.Name)
     w.Part0,w.Part1 = last,v
     w.C0 = last.CFrame:inverse()
     w.C1 = v.CFrame:inverse()
     w.Parent = last
    end
    last = v
    table.insert(parts,v)
   end
   scan(v)
  end
 end
 scan(model)
 for _,v in pairs(parts) do
  v.Anchored = false
  v.Locked = true
 end
end

----------------------------------------------------------------------------

function sound(id,position,vol,pitch,dist,start,finish)
  coroutine.resume(coroutine.create(function()

  local part = Instance.new("Part",DebrisModel)
  part.Anchored = true
  part.Position = position
  part.Size = Vector3.new(0,0,0)
  part.CanCollide = false
  part.Transparency = 1

  soundasd = Instance.new("Sound",part)
  
  soundasd.SoundId = "rbxassetid://"..id
  
  if vol ~= nil then
    soundasd.Volume = vol
  end

  if pitch ~= nil then
    soundasd.PlaybackSpeed = pitch
  end
  
  if dist ~= nil then
    soundasd.MaxDistance = dist*5
    soundasd.EmitterSize = dist/5
  end

  delay(0.5,function() debris:AddItem(part,soundasd.TimeLength+3) end)
  
  soundasd:Play()
  
  end))
  return soundasd
end

function createsound(id,parent)

  local soundz = Instance.new("Sound",parent)

  soundz.SoundId = "rbxassetid://"..id

  return soundz

end

function playsound(sond,vol,pitch,start)
  
  if vol ~= nil then
    sond.Volume = vol
  end

  if pitch ~= nil then
    sond.PlaybackSpeed = pitch
  end
 
  if start ~= nil then
    sond.TimePosition = start
  end

  sond:Play()
  
end

----------------------------------------------------------------------------
eColors={"Really red","Really black"}
function Lightning(Part0,Part1,Times,Offset,Color,Thickness,Trans)
    local magz = (Part0 - Part1).magnitude
    local curpos = Part0
    local trz = {-Offset,Offset} 
    for i=1,Times do
        local li = Instance.new("Part", DebrisModel)
        li.TopSurface =0
        li.Material = Enum.Material.Neon
        li.BottomSurface = 0
        li.Anchored = true
        li.Locked = true
        li.Transparency = Trans or 0.4
        li.BrickColor = BrickColor.new(Color)
        li.formFactor = "Custom"
        li.CanCollide = false
        li.Size = Vector3.new(Thickness,Thickness,magz/Times)
        local lim = Instance.new("BlockMesh",li)
        local Offzet = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
        local trolpos = CFrame.new(curpos,Part1)*CFrame.new(0,0,magz/Times).p+Offzet
        if Times == i then
        local magz2 = (curpos - Part1).magnitude
        li.Size = Vector3.new(Thickness,Thickness,magz2)
        li.CFrame = CFrame.new(curpos,Part1)*CFrame.new(0,0,-magz2/2)
        else
        li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
        end
        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p
        li.Name = "LIGHTNING"
    end
end

----------------------------------------------------------------------------

local HBill = Instance.new("BillboardGui",hed)
local HMain, HBar = Instance.new("Frame", HBill), Instance.new("Frame")
local HName = Instance.new("TextLabel")
HBill.Size = UDim2.new(15,0,2.2,0)
HBill.StudsOffset = Vector3.new(3.675,1.2,0)
HBill.AlwaysOnTop = true
HBill.Enabled = true
HMain.BackgroundColor3 = Color3.new(0, 0, 0)
HMain.BackgroundTransparency = 1
HMain.Size = UDim2.new(.5,0,.2,0)
HName.Parent = HMain
HName.BackgroundTransparency = 1
HName.BackgroundColor3 = Color3.new(244,255,25)
HName.BorderColor3 = Color3.new(244,255,25)
HName.BorderSizePixel = 2
HName.Size = UDim2.new(1,0,.75,0)
HName.Font = "Code"
HName.Text = [[( Dream!Tale )]]
HName.TextScaled = true
HName.TextColor3 = Color3.new(244,255,25)
HName.TextStrokeColor3 = Color3.new(0.1,0.1,0.1)
HName.TextStrokeTransparency = 0
HName.TextYAlignment = "Bottom"

local HBill = Instance.new("BillboardGui",hed)
local HMain, HBar = Instance.new("Frame", HBill), Instance.new("Frame")
local HName = Instance.new("TextLabel")
HBill.Size = UDim2.new(15,0,2.2,0)
HBill.StudsOffset = Vector3.new(3.675,2,0)
HBill.AlwaysOnTop = true
HBill.Enabled = true
HMain.BackgroundColor3 = Color3.new(0, 0, 0)
HMain.BackgroundTransparency = 1
HMain.Size = UDim2.new(.5,0,.5,0)
HName.Parent = HMain
HName.BackgroundTransparency = 1
HName.BackgroundColor3 = Color3.new(0,0,0)
HName.BorderColor3 = Color3.new(0,0,0)
HName.BorderSizePixel = 2
HName.Size = UDim2.new(1,0,.75,0)
HName.Font = "Antique"
HName.Text = [[Nightmare!Sans]]
HName.TextScaled = true
HName.TextColor3 = Color3.new(0,0,0)
HName.TextStrokeColor3 = Color3.new(0,0,0)
HName.TextStrokeTransparency = 0
HName.TextYAlignment = "Bottom"

function bigboomrektxd()
coroutine.resume(coroutine.create(function()
local magnitude = nil
local Position = nil
if animid == 0 then
Position = larm.Position
else
Position = rarm.Position
end
--sound(743499393,Position,10,math.random(6,8)/10)
sound(440145223,Position,10,math.random(10,12)/10,50)

local Part1 = Instance.new("Part")
local mesh2 = Instance.new("SpecialMesh",Part1)
mesh2.MeshId = "rbxassetid://559831844"
mesh2.Scale = Vector3.new(0,0,0.4)
Part1.Material = Enum.Material.Neon
Part1.CanCollide = false
Part1.Color = Color3.fromHSV(0,0,main.v)
Part1.Parent = DebrisModel
Part1.Size = Vector3.new(0,0,0)
Part1.Anchored = true
Part1.CFrame = CFrame.new(Position,mouse.Hit.p)
Part1.Name = "EXPLOSION2"

local Part0 = Instance.new("Part",DebrisModel)
local PointLight2 = Instance.new("PointLight")
Part0.Name = "Bullet"
Part0.Material = Enum.Material.Neon
Part0.Color = Color3.fromHSV(0,0,main.v)
Part0.Anchored = false
Part0.Size = Vector3.new(5, 5, 5)
local mesh = Instance.new("SpecialMesh",Part0)
mesh.MeshType = Enum.MeshType.Sphere
local bforce = Instance.new("BodyForce",Part0)
bforce.force = Vector3.new(0, ((bforce.Parent:getMass())*workspace.Gravity), 0)
Part0.CanCollide = false
PointLight2.Parent = Part0
PointLight2.Color = Part0.Color
local Target = mouse.Hit.p
local direction = Target - Position
local direction = computeDirection(direction)
local pos = Position + (direction * 2) 
Part0.CFrame = CFrame.new(pos,  pos + direction) * CFrame.Angles((math.pi/2)+math.rad(180), 0, 0)
Part0.Velocity = direction * 60
local asd = nil
local loop = nil
delay(5, function() Part0:Destroy() loop:disconnect() asd:disconnect() end)
loop = rs:connect(function()
local asdf = math.random(500,1000)/1000
local Part1 = Instance.new("Part")
local mesh2 = Instance.new("SpecialMesh",Part1)
mesh2.MeshType = Enum.MeshType.Sphere
Part1.Material = Enum.Material.Neon
Part1.CanCollide = false
Part1.Color = Color3.fromHSV(Color3.toHSV(main_color),math.random(0,10000)/10000,main.v)
Part1.Parent = DebrisModel
Part1.Size = Part0.Size + Vector3.new(asdf,asdf,asdf)
Part1.Anchored = true
Part1.CFrame = CFrame.new(Part0.Position + Vector3.new(math.random(-1000,1000)/750,math.random(-1000,1000)/750,math.random(-1000,1000)/750))
Part1.Name = "SMOKE"
end)
asd = Part0.Touched:connect(function(ht)
local hit=ht.Parent
if checkIfNotPlayer(ht) == true and ht.CanCollide == true then
asd:disconnect()
loop:disconnect()
Part0:Destroy()

sound(explosionid[math.random(1,#explosionid)],Part0.Position,10,math.random(6,9)/10,200)
for i,v in pairs(findAllNearestTorso(Part0.Position,50)) do
if v.Parent:FindFirstChildOfClass("Humanoid").MaxHealth >= 9e+99 then
v:Destroy()
else
v.Parent:FindFirstChildOfClass("Humanoid"):TakeDamage(v.Parent:FindFirstChildOfClass("Humanoid").MaxHealth/(math.random(50,60)/10))
end
local Position = Part0.Position
local Target = v.Position
local direction = Target - Position
local direction = computeDirection(direction)
local bv = Instance.new("BodyVelocity",v)
bv.Velocity = direction * (50 - ((Position - Target).magnitude/2))
debris:AddItem(bv,1)
end
for i=1,14,2 do for x=1,math.random(0,1) do rs:wait() end
for z=1,math.random(2,3) do
local asdf = math.random(-5,5)*10-(i/20)*8
local Part1 = Instance.new("Part")
local mesh2 = Instance.new("SpecialMesh",Part1)
mesh2.MeshType = Enum.MeshType.Sphere
mesh2.Scale = Vector3.new(0,0,0)
Part1.Material = Enum.Material.Neon
Part1.CanCollide = false
Part1.Color = Color3.fromHSV(Color3.toHSV(main_color),math.random(0,10000)/10000,main.v)
Part1.Parent = DebrisModel
Part1.Size = Vector3.new(asdf,asdf,asdf)
Part1.Anchored = true
local a = i*0.5
Part1.CFrame = CFrame.new(Part0.Position + Vector3.new(math.random(-2,2)*a,math.random(-10,10),math.random(-2,2)*a))
Part1.Name = "EXPLOSION"
end
end

end
end)
end))
end

holdclick=false

mouse.Button1Down:connect(function()
if debounce == false then
if animid == 0 then
animid = 1
else
animid = 0
end
debounce = true
holdclick = true
aiming_anim = true
wait(0.2)
repeat 
rs:wait()
timer = 150
until holdclick == false
bigboomrektxd()

local Position = mouse.Hit.p
local Target = root.Position
local direction = Target - Position
local direction = computeDirection(direction)
root.Velocity = direction * 150

aiming_anim = false
delay(0.3,function() debounce = false end)
end
end)

mouse.Button1Up:connect(function()
holdclick=false
end)

function dashasdf()
debounce = true

canjump = false
attack = true

for i,v in pairs(char:GetChildren()) do
if v ~= root then
if v:IsA("Part") then
v.Transparency = 1
elseif v:IsA("Accoutrement") then
v:FindFirstChildOfClass("Part").Transparency = 1
end
end
end

local tempattachment = Instance.new("Attachment",root)
tempattachment.Position = Vector3.new(0,0,-4)

for i=1,20 do rs:wait()
root.Velocity = Vector3.new(0,0,0)
root.CFrame = CFrame.new(tempattachment.WorldPosition) * CFrame.Angles(math.rad(root.Orientation.X),math.rad(root.Orientation.Y),math.rad(root.Orientation.Z))
local asdf = math.random(500,1000)/100
local Part1 = Instance.new("Part")
local mesh2 = Instance.new("SpecialMesh",Part1)
mesh2.MeshType = Enum.MeshType.Sphere
Part1.Material = Enum.Material.Neon
Part1.CanCollide = false
Part1.Color = Color3.fromHSV(Color3.toHSV(main_color),math.random(0,10000)/10000,main.v)
Part1.Parent = DebrisModel
Part1.Size = Vector3.new(asdf,asdf,asdf)
Part1.Anchored = true
Part1.CFrame = CFrame.new(root.Position + Vector3.new(math.random(-1000,1000)/500,math.random(-1000,1000)/500,math.random(-1000,1000)/500))
Part1.Name = "SMOKE"
end

tempattachment:Destroy()

for i,v in pairs(char:GetChildren()) do
if v ~= root then
if v:IsA("Part") then
v.Transparency = 0
elseif v:IsA("Accoutrement") then
v:FindFirstChildOfClass("Part").Transparency = 0
end
end
end

canjump = true
attack = false

delay(0.1,function() debounce = false end)
end

function laz0r()

local Position = nil
if animid == 0 then
Position = larm.Position
else
Position = rarm.Position
end

local Part1 = Instance.new("Part")
local mesh2 = Instance.new("SpecialMesh",Part1)
mesh2.MeshId = "rbxassetid://559831844"
mesh2.Scale = Vector3.new(0,0,0.4)
Part1.Material = Enum.Material.Neon
Part1.CanCollide = false
Part1.Color = Color3.fromHSV(0,0,main.v)
Part1.Parent = DebrisModel
Part1.Size = Vector3.new(0,0,0)
Part1.Anchored = true
Part1.CFrame = CFrame.new(Position,mouse.Hit.p)
Part1.Name = "EXPLOSION3"

local Part0 = Instance.new("Part",DebrisModel)
Part0.Name = "Bullet"
Part0.Material = Enum.Material.Neon
Part0.Color = Color3.fromHSV(0,0,main.v)
Part0.Anchored = true
local mesh = Instance.new("SpecialMesh",Part0)
mesh.MeshType = Enum.MeshType.Sphere
Part0.CanCollide = false
local Target = mouse.Hit.p
local direction = Target - Position
local direction = computeDirection(direction)
local ray = Ray.new(Position, (Target-Position).unit*1048)
local part, endPoint = workspace:FindPartOnRay(ray, char)
Part0.Size = Vector3.new(5,1,5)
mesh.Scale = Vector3.new(1,(Position-endPoint).magnitude,1)
local pos = Position + (direction * (mesh.Scale.Y/2))
Part0.CFrame = CFrame.new(pos,  pos + direction) * CFrame.Angles((math.pi/2)+math.rad(180), 0, 0)

clashpart = Instance.new("Part",DebrisModel)
clashpart.Size = Vector3.new(50,50,50)
clashpart.CanCollide = false
clashpart.Anchored = true
clashpart.Transparency = 1
clashpart.Color = main_color
clashpart.Name = "StarLightClash"
clashpart.CFrame = CFrame.new(endPoint, root.Position)

sound(1177475476,Position,10,math.random(5,6)/10,300)

local z = 10
for i = 1,100 do rs:wait()
if animid == 0 then
Position = larm.Position
else
Position = rarm.Position
end
local Target = mouse.Hit.p
local direction = Target - Position
local direction = computeDirection(direction)
local ray = Ray.new(Position, (Target-Position).unit*1048)
local part, endPoint = workspace:FindPartOnRay(ray, char)
Part0.Size = Vector3.new(5-((i/100)*5),1,5-((i/100)*5))
mesh.Scale = Vector3.new(1,(Position-endPoint).magnitude,1)
mesh.Offset = Vector3.new(math.random(-10000,10000)/20000,math.random(-10000,10000)/20000,0)
local pos = Position + (direction * (mesh.Scale.Y/2))
Part0.CFrame = CFrame.new(pos,  pos + direction) * CFrame.Angles((math.pi/2)+math.rad(180), 0, 0)
clashpart.CFrame = CFrame.new(endPoint, root.Position)

local Position = mouse.Hit.p
local Target = root.Position
local direction = Target - Position
local direction = computeDirection(direction)
root.Velocity = direction * 5

if i >= z then z = i + 10 sound(explosionid[math.random(1,#explosionid)],endPoint,10,math.random(6,9)/10,200) end

Part1 = Part0:Clone()
Part1.Parent = DebrisModel
Part1.Color = Color3.fromHSV(Color3.toHSV(main_color),math.random(0,10000)/10000,main.v)
Part1.Name = "SMOKE2"

if part ~= nil then
if part.Name == "StarLightClash" then
local asdf = math.random(0,5)*20
local Part1 = Instance.new("Part")
local mesh2 = Instance.new("SpecialMesh",Part1)
mesh2.MeshType = Enum.MeshType.Sphere
mesh2.Scale = Vector3.new(0,0,0)
Part1.Material = Enum.Material.Neon
Part1.CanCollide = false
Part1.Color = Color3.fromHSV(Color3.toHSV(Color3.fromRGB((main.r+(255*part.Color.r))/2,(main.g+(255*part.Color.g))/2,(main.b+(255*part.Color.b))/2)),math.random(5000,10000)/10000,main.v)
Part1.Parent = DebrisModel
Part1.Size = Vector3.new(asdf,asdf,asdf)
Part1.Anchored = true
local a = 1.5
Part1.CFrame = CFrame.new(endPoint + Vector3.new(math.random(-2,2)*a,math.random(-4,4),math.random(-2,2)*a))
Part1.Name = "EXPLOSION"
else
local asdf = math.random(0,5)*10
local Part1 = Instance.new("Part")
local mesh2 = Instance.new("SpecialMesh",Part1)
mesh2.MeshType = Enum.MeshType.Sphere
mesh2.Scale = Vector3.new(0,0,0)
Part1.Material = Enum.Material.Neon
Part1.CanCollide = false
Part1.Color = Color3.fromHSV(Color3.toHSV(main_color),math.random(0,10000)/10000,main.v)
Part1.Parent = DebrisModel
Part1.Size = Vector3.new(asdf,asdf,asdf)
Part1.Anchored = true
local a = 1.5
Part1.CFrame = CFrame.new(endPoint + Vector3.new(math.random(-2,2)*a,math.random(-4,4),math.random(-2,2)*a))
Part1.Name = "EXPLOSION"
end
end

for i,v in pairs(findAllNearestTorso(endPoint,50)) do
if v.Parent:FindFirstChildOfClass("Humanoid").MaxHealth >= 9e+99 then
v:Destroy()
else
v.Parent:FindFirstChildOfClass("Humanoid"):TakeDamage(v.Parent:FindFirstChildOfClass("Humanoid").MaxHealth/math.random(120,180))
end
local Position = mouse.Hit.p
local Target = v.Position
local direction = Target - Position
local direction = computeDirection(direction)
local bv = Instance.new("BodyVelocity",v)
bv.Velocity = direction * (10 - ((Position - Target).magnitude/2))
debris:AddItem(bv,1)
end

end
clashpart:Destroy()
Part0:Destroy()
wait(0.3)
aiming_anim = false
delay(0.3,function() debounce = false end)
end

function nukewelpo()
coroutine.resume(coroutine.create(function()
local magnitude = nil
local Position = nil
if animid == 0 then
Position = larm.Position
else
Position = rarm.Position
end
--sound(743499393,Position,10,math.random(6,8)/10)
sound(440145223,Position,10,math.random(4,5)/10,100)

local Part1 = Instance.new("Part")
local mesh2 = Instance.new("SpecialMesh",Part1)
mesh2.MeshId = "rbxassetid://559831844"
mesh2.Scale = Vector3.new(0,0,0.4)
Part1.Material = Enum.Material.Neon
Part1.CanCollide = false
Part1.Color = Color3.fromHSV(0,0,main.v)
Part1.Parent = DebrisModel
Part1.Size = Vector3.new(0,0,0)
Part1.Anchored = true
Part1.CFrame = CFrame.new(Position,mouse.Hit.p)
Part1.Name = "EXPLOSION3"

local Part0 = Instance.new("Part",DebrisModel)
local PointLight2 = Instance.new("PointLight")
Part0.Name = "Bullet"
Part0.Material = Enum.Material.Neon
Part0.Color = Color3.fromHSV(0,0,main.v)
Part0.Anchored = false
Part0.Size = Vector3.new(5, 5, 5)
local mesh = Instance.new("SpecialMesh",Part0)
mesh.MeshType = Enum.MeshType.Sphere
mesh.Scale = Vector3.new(3,3,3)
local bforce = Instance.new("BodyForce",Part0)
bforce.force = Vector3.new(0, ((bforce.Parent:getMass())*workspace.Gravity), 0)
Part0.CanCollide = false
PointLight2.Parent = Part0
PointLight2.Color = Part0.Color
local Target = mouse.Hit.p
local direction = Target - Position
local direction = computeDirection(direction)
local pos = Position + (direction * 2) 
Part0.CFrame = CFrame.new(pos,  pos + direction) * CFrame.Angles((math.pi/2)+math.rad(180), 0, 0)
Part0.Velocity = direction * 150
local asd = nil
local loop = nil
delay(5, function() Part0:Destroy() loop:disconnect() asd:disconnect() end)
loop = rs:connect(function()
local asdf = math.random(500,1000)/1000
local Part1 = Instance.new("Part")
local mesh2 = Instance.new("SpecialMesh",Part1)
mesh2.MeshType = Enum.MeshType.Sphere
Part1.Material = Enum.Material.Neon
Part1.CanCollide = false
Part1.Color = Color3.fromHSV(Color3.toHSV(main_color),math.random(0,10000)/10000,main.v)
Part1.Parent = DebrisModel
Part1.Size = (Part0.Size*3) + Vector3.new(asdf,asdf,asdf)
Part1.Anchored = true
Part1.CFrame = CFrame.new(Part0.Position + Vector3.new(math.random(-3000,3000)/750,math.random(-3000,3000)/750,math.random(-3000,3000)/750))
Part1.Name = "SMOKE"
end)
asd = Part0.Touched:connect(function(ht)
local hit=ht.Parent
if checkIfNotPlayer(ht) == true and ht.CanCollide == true then
asd:disconnect()
loop:disconnect()
Part0:Destroy()

sound(explosionid[math.random(1,#explosionid)],Part0.Position,10,math.random(3,5)/10,500)
for i,v in pairs(findAllNearestTorso(Part0.Position,160)) do
if v.Parent:FindFirstChildOfClass("Humanoid").MaxHealth >= 9e+99 then
v:Destroy()
else
v.Parent:FindFirstChildOfClass("Humanoid"):TakeDamage(v.Parent:FindFirstChildOfClass("Humanoid").MaxHealth/(math.random(20,30)/10))
end
local Position = Part0.Position
local Target = v.Position
local direction = Target - Position
local direction = computeDirection(direction)
local bv = Instance.new("BodyVelocity",v)
bv.Velocity = direction * (120 - ((Position - Target).magnitude/2))
debris:AddItem(bv,1)
end
for i=1,10,0.5 do for x=1,math.random(0,1) do rs:wait() end
for z=1,math.random(2,3) do
local asdf = math.random(-5,5)*10-(i/20)*12
local Part1 = Instance.new("Part")
local mesh2 = Instance.new("SpecialMesh",Part1)
mesh2.MeshType = Enum.MeshType.Sphere
mesh2.Scale = Vector3.new(0,0,0)
Part1.Material = Enum.Material.Neon
Part1.CanCollide = false
Part1.Color = Color3.fromHSV(Color3.toHSV(main_color),math.random(0,10000)/10000,main.v)
Part1.Parent = DebrisModel
Part1.Size = Vector3.new(asdf,asdf,asdf)
Part1.Anchored = true
local a = i*5
Part1.CFrame = CFrame.new(Part0.Position + Vector3.new(math.random(-2,2)*a,math.random(-30,30),math.random(-2,2)*a))
Part1.Name = "EXPLOSION4"
end
end

end
end)
end))
end

holdq = false
holdr = false
cooldownult = false

mouse.KeyDown:connect(function(key)
if debounce == false then
if key == "e" then
dashasdf()
elseif key == "r" and cooldownult == false then
cooldownult = true
if animid == 0 then
animid = 1
else
animid = 0
end
debounce = true
holdr = true
aiming_anim = true
wait(0.2)
repeat 
rs:wait()
timer = 150
until holdr == false
nukewelpo()

local Position = mouse.Hit.p
local Target = root.Position
local direction = Target - Position
local direction = computeDirection(direction)
root.Velocity = direction * 300

aiming_anim = false
delay(5,function() cooldownult = false end)
delay(1,function() debounce = false end)

elseif key == "q" then
debounce = true
if animid == 0 then
animid = 1
else
animid = 0
end
holdq = true
attack = true
aiming_anim = true
repeat rs:wait() timer = 150 until holdq == false
laz0r()
attack = false
end
end
end)

mouse.KeyUp:connect(function(key)
if key == "q" then
holdq = false
elseif key == "r" then
holdr = false
end
end)

----------------------------------------------------------------------------
music(themeid,themepitch)
velocityYFall=0
velocityYFall2=0
velocityYFall3=0
velocityYFall4=0
neckrotY=0
neckrotY2=0
torsorotY=0
torsorotY2=0
torsoY=0
torsoY2=0
sine = 0
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

rs:connect(function()

bg.MaxTorque = Vector3.new(0,0,0)

for i,v in pairs(DebrisModel:GetChildren()) do
    

if v.Name == "EXPLOSION" then
local change = 0.04-(v.Transparency*0.02)
local vm = v:FindFirstChildOfClass("SpecialMesh")
vm.Scale = vm.Scale + Vector3.new(change,change,change)
v.Transparency = v.Transparency + 0.02
if v.Transparency >= 1 then
v:Destroy()
end

elseif v.Name == "EXPLOSION2" then
local change = 0.04-(v.Transparency*0.04)
local vm = v:FindFirstChildOfClass("SpecialMesh")
vm.Scale = vm.Scale + Vector3.new(change,change,0)
v.Transparency = v.Transparency + 0.025
if v.Transparency >= 1 then
v:Destroy()
end

elseif v.Name == "EXPLOSION3" then
local change = 0.5-(v.Transparency*0.5)
local vm = v:FindFirstChildOfClass("SpecialMesh")
vm.Scale = vm.Scale + Vector3.new(change,change,0)
v.Transparency = v.Transparency + 0.1
if v.Transparency >= 1 then
v:Destroy()
end

elseif v.Name == "EXPLOSION4" then
local change = 0.15-(v.Transparency*0.125)
local vm = v:FindFirstChildOfClass("SpecialMesh")
vm.Scale = vm.Scale + Vector3.new(change,change,change)
v.Transparency = v.Transparency + 0.01
if v.Transparency >= 1 then
v:Destroy()
end

elseif v.Name == "SMOKE" then
local vm = v:FindFirstChildOfClass("SpecialMesh")
vm.Scale = vm.Scale - Vector3.new(0.075,0.075,0.075)
if vm.Scale.X <= 0 then
v:Destroy()
end

elseif v.Name == "SMOKE2" then
local change = 2-(v.Transparency*2)
local vm = v:FindFirstChildOfClass("SpecialMesh")
local Position = nil
if animid == 0 then
Position = larm.Position
else
Position = rarm.Position
end
local Target = mouse.Hit.p
local direction = Target - Position
local direction = computeDirection(direction)
local ray = Ray.new(Position, (Target-Position).unit*1048)
local part, endPoint = workspace:FindPartOnRay(ray, char)
vm.Scale = Vector3.new(vm.Scale.X,(Position-endPoint).magnitude,vm.Scale.Z) + Vector3.new(change,0,change)
local pos = Position + (direction * (vm.Scale.Y/2))
v.CFrame = CFrame.new(pos,  pos + direction) * CFrame.Angles((math.pi/2)+math.rad(180), 0, 0)
vm.Offset = Vector3.new(math.random(-10000,10000)/10000,math.random(-10000,10000)/10000,0)
v.Transparency = v.Transparency + 0.1
if v.Transparency >= 1 then
v:Destroy()
end


elseif v.Name == "LIGHTNING" then
local vm = v:FindFirstChildOfClass("BlockMesh")
vm.Scale = vm.Scale - Vector3.new(0.1,0.1,0)
if vm.Scale.X <= 0 then
v:Destroy()
end

end
end

if -root.Velocity.Y/1.5 > 0 and -root.Velocity.Y/1.5 < 160 then
velocityYFall = root.Velocity.Y/1.5
end
if -root.Velocity.Y/180 > 0 and -root.Velocity.Y/180 < 1.2 then
velocityYFall2 = root.Velocity.Y/180
end
if -root.Velocity.Y/1.5 > -5 and -root.Velocity.Y/1.5 < 50 then
velocityYFall3 = root.Velocity.Y/1.5
end
if -root.Velocity.Y/1.5 > -50 and -root.Velocity.Y/1.5 < 20 then
velocityYFall4 = root.Velocity.Y/1.5
end
if root.RotVelocity.Y/6 < 1 and root.RotVelocity.Y/6 > -1 then
neckrotY = root.RotVelocity.Y/6
end
if root.RotVelocity.Y/8 < 0.6 and root.RotVelocity.Y/8 > -0.6 then
neckrotY2 = root.RotVelocity.Y/8
end

if root.RotVelocity.Y/6 < 0.2 and root.RotVelocity.Y/6 > -0.2 then
torsorotY = root.RotVelocity.Y/6
end
if root.RotVelocity.Y/8 < 0.2 and root.RotVelocity.Y/8 > -0.2 then
torsorotY2 = root.RotVelocity.Y/8
end


torsoY = -(torso.Velocity*Vector3.new(1, 0, 1)).magnitude/20
torsoY2 = -(torso.Velocity*Vector3.new(1, 0, 1)).magnitude/36

if attack == true then
hum.WalkSpeed = 1
else
hum.WalkSpeed = 10
end

if canjump == true then
hum.JumpPower = 50
else
hum.JumpPower = 0
end

local jumped = false
local ray1 = Ray.new(root.Position+Vector3.new(1,0,0),Vector3.new(0, -6, 0))
local part1, endPoint = workspace:FindPartOnRay(ray1, char)
local ray2 = Ray.new(root.Position-Vector3.new(1,0,0),Vector3.new(0, -6, 0))
local part2, endPoint = workspace:FindPartOnRay(ray2, char)
local ray3 = Ray.new(root.Position+Vector3.new(0,0,0.5),Vector3.new(0, -6, 0))
local part3, endPoint = workspace:FindPartOnRay(ray3, char)
local ray4 = Ray.new(root.Position-Vector3.new(0,0,0.5),Vector3.new(0, -6, 0))
local part4, endPoint = workspace:FindPartOnRay(ray4, char)

if part1 or part2 or part3 or part4 then jumped = false else endPoint = 0 jumped = true end

local rlegray = Ray.new(rleg.Position+Vector3.new(0,0.5,0),Vector3.new(0, -1.75, 0))
local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)

local llegray = Ray.new(lleg.Position+Vector3.new(0,0.5,0),Vector3.new(0, -1.75, 0))
local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)

if no_anim == false then
if hum.Health > 0 then
if (torso.Velocity*Vector3.new(1, 0, 1)).magnitude >= 5 and jumped == false then
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-18),math.rad(0+math.rad(0+2*math.cos(sine/2))),0), 0.1)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(math.rad(-10),0,0),0.1)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62-(movement/30)*math.cos(sine/4)/2,(movement/50)*math.cos(sine/4))*CFrame.Angles(math.rad(-5-(movement*2)*math.cos(sine/4))+ -(movement/10)*math.sin(sine/4),math.rad(0-(movement*2)*math.cos(sine/4)),math.rad(0)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+(movement/30)*math.cos(sine/4)/2,-(movement/50)*math.cos(sine/4))*CFrame.Angles(math.rad(-5+(movement*2)*math.cos(sine/4))+ (movement/10)*math.sin(sine/4),math.rad(0-(movement*2)*math.cos(sine/4)),math.rad(0)), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+(movement/20)*math.cos(sine/2), 0) * CFrame.Angles(math.rad(-(change*20)-4*math.cos(sine/2)), torsorotY2+math.rad(0-4*math.cos(sine/4)), torsorotY2+math.rad(0-1*math.cos(sine/4))), 0.1)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5,-0.85-(movement/10)*math.cos(sine/4)/2,-0.1+(movement/15)*math.cos(sine/4))*CFrame.Angles(math.rad(-10+(change*5)-movement*math.cos(sine/4))+ -(movement/10)*math.sin(sine/4),math.rad(0+(movement*2)*math.cos(sine/4)),math.rad(0)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5,-0.85+(movement/10)*math.cos(sine/4)/2,-0.1-(movement/15)*math.cos(sine/4))*CFrame.Angles(math.rad(-10+(change*5)+movement*math.cos(sine/4))+ (movement/10)*math.sin(sine/4),math.rad(0+(movement*2)*math.cos(sine/4)),math.rad(0)), 0.2)
elseif jumped == true then
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-18),math.rad(0+math.rad(0+2*math.cos(sine/2))),0), 0.1)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(0,0,0),0.1)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,1-0.1*math.cos(sine/16)/2,0.1*math.cos(sine/16))*CFrame.Angles(math.rad(0),math.rad(0-1*math.cos(sine/16)),math.rad(-50-1*math.cos(sine/8))), 0.2)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,1-0.1*math.cos(sine/16)/2,0.1*math.cos(sine/16))*CFrame.Angles(math.rad(0),math.rad(0-1*math.cos(sine/16)),math.rad(50+1*math.cos(sine/8))), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1-0.1*math.cos(sine/16), 0) * CFrame.Angles(math.rad(0-2*math.cos(sine/16)),math.rad(0), math.rad(0-1*math.cos(sine/32))), 0.1)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5,-0.925+0.1*math.cos(sine/16),0)*CFrame.Angles(math.rad(-35-1*math.cos(sine/16)),math.rad(0-1*math.cos(sine/16)),math.rad(-2-0.5*math.cos(sine/8))), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5,0+0.1*math.cos(sine/16),-0.8)*CFrame.Angles(math.rad(-25+1*math.cos(sine/16)),math.rad(0-1*math.cos(sine/16)),math.rad(2+0.5*math.cos(sine/8))), 0.2)
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 5 then
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.1)*CFrame.Angles(math.rad(-18),math.rad(0+math.rad(0+2*math.cos(sine/2))),0), 0.1)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(math.rad(-15),0,0),0.1)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55-0.1*math.cos(sine/16)/2,-0.1*math.cos(sine/16))*CFrame.Angles(math.rad(0),math.rad(0-1*math.cos(sine/16)),math.rad(-5-1*math.cos(sine/8))), 0.2)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55-0.1*math.cos(sine/16)/2,-0.1*math.cos(sine/16))*CFrame.Angles(math.rad(0),math.rad(0-1*math.cos(sine/16)),math.rad(5+1*math.cos(sine/8))), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1-0.1*math.cos(sine/16), 0) * CFrame.Angles(math.rad(0-2*math.cos(sine/16)),math.rad(0), math.rad(0-1*math.cos(sine/32))), 0.1)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(0,llegendPoint.Y-lleg.Position.Y,0)*CFrame.new(-0.5,0+0.1*math.cos(sine/16),0)*CFrame.Angles(math.rad(0-1*math.cos(sine/16)),math.rad(0-1*math.cos(sine/16)),math.rad(-2-0.5*math.cos(sine/8))), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0,rlegendPoint.Y-rleg.Position.Y,0)*CFrame.new(0.5,0+0.1*math.cos(sine/16),0)*CFrame.Angles(math.rad(0+1*math.cos(sine/16)),math.rad(0-1*math.cos(sine/16)),math.rad(2+0.5*math.cos(sine/8))), 0.2)
end
for i=1,5 do
if aiming_anim == true then
bg.MaxTorque = Vector3.new(9e9,9e9,9e9)
if jumped == false then
bg.CFrame = CFrame.new(root.Position,Vector3.new(mouse.Hit.x,root.Position.Y,mouse.Hit.z))
else
bg.CFrame = CFrame.new(root.Position,mouse.Hit.p)
end
if animid == 0 then
hed.Weld.C1 =  Lerp(hed.Weld.C1,CFrame.Angles(0,math.rad(-80),0),0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0,CFrame.new(0, -1.1-0.1*math.cos(sine/16), 0) * CFrame.Angles(math.rad(0-2*math.cos(sine/16)),math.rad(-80), math.rad(0-1*math.cos(sine/32))),0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0,CFrame.new(-1.5,0.55-0.1*math.cos(sine/16)/2,-0.1*math.cos(sine/16))*CFrame.Angles(math.rad(0),math.rad(-10-1*math.cos(sine/16)),math.rad(-90-1*math.cos(sine/8))),0.4)
else
hed.Weld.C1 =  Lerp(hed.Weld.C1,CFrame.Angles(0,math.rad(80),0),0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0,CFrame.new(0, -1.1-0.1*math.cos(sine/16), 0) * CFrame.Angles(math.rad(0-2*math.cos(sine/16)),math.rad(80), math.rad(0-1*math.cos(sine/32))),0.2)
rarm.Weld.C0 = Lerp(rarm.Weld.C0,CFrame.new(1.5,0.55-0.1*math.cos(sine/16)/2,-0.1*math.cos(sine/16))*CFrame.Angles(math.rad(0),math.rad(10-1*math.cos(sine/16)),math.rad(90+1*math.cos(sine/8))),0.4)
end
else
if timer <= 0 then
animid = math.random(0,1)
else
timer = timer - 1
end
end
end
end
end
main_color = Color3.fromRGB(main.r,main.g,main.b)
pr.Value = main.r
pg.Value = main.g
pb.Value = main.b
pv.Value = main.v
idth.Value = themeid
pith.Value = themepitch
HName.TextStrokeColor3 = Color3.fromHSV(Color3.toHSV(main_color),1,main.v/2)
HName.TextColor3 = Color3.fromHSV(Color3.toHSV(main_color),1,main.v)
sine = sine + change
if hum.Health <= 0 then
debounce = true
end
end)



--Extras--
q = char:GetChildren()
        for u = 1, #q do
        if q[u].ClassName == "Accessory" or q[u].ClassName == "Hat" then
                q[u]:remove()
                elseif q[u].ClassName == "CharacterMesh" then
                q[u]:remove()
            elseif q[u].ClassName == "ShirtGraphic" then
                q[u]:remove()
    elseif q[u].ClassName == "Shirt" then
        q[u]:Destroy()
elseif q[u].ClassName == "Pants" then
    q[u]:Destroy()
    end
end
local top = Instance.new("Shirt")
top.ShirtTemplate = "rbxassetid://1042097476"
top.Parent = char
local bottom = Instance.new("Pants")
bottom.PantsTemplate = "rbxassetid://1042097548"
bottom.Parent = char
 
local BodyColors =  char:FindFirstChildOfClass"BodyColors"
if BodyColors then
    BodyColors.HeadColor = BrickColor.new"Really black"
    BodyColors.TorsoColor = BrickColor.new"Really black"
    BodyColors.LeftArmColor = BrickColor.new"Really black"
    BodyColors.RightArmColor = BrickColor.new"Really black"
    BodyColors.LeftLegColor = BrickColor.new"Really black"
    BodyColors.RightLegColor = BrickColor.new"Really black"
end

--extras
local talksound = Instance.new("Sound",char.Torso)
talksound.SoundId = "rbxassetid://928210219"
talksound.Volume = 4
local blastsound = Instance.new("Sound",char.Torso)
blastsound.Name = "blast_sound"
blastsound.SoundId = "rbxassetid://345052019"
blastsound.Volume = 4
function swait(num)
if num==0 or num==nil then
game:service'RunService'.Stepped:wait(0)
else
for i=0,num do
game:service'RunService'.Stepped:wait(0)
end
end
end
 
function chatfunc(text)
local chat = coroutine.wrap(function()
if char:FindFirstChild("TalkingBillBoard") ~= nil then
char:FindFirstChild("TalkingBillBoard"):Destroy()
end
local naeeym2 = Instance.new("BillboardGui",char)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = char.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "Fantasy"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(.6,0,0)
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
local tecks3 = Instance.new("TextLabel",naeeym2)
tecks3.BackgroundTransparency = 1
tecks3.BorderSizePixel = 0
tecks3.Text = ""
tecks3.Font = "Fantasy"
tecks3.TextSize = 30
tecks3.TextStrokeTransparency = 0
tecks3.TextColor3 = Color3.new(0,0,0)
tecks3.TextStrokeColor3 = Color3.new(1,1,1)
tecks3.Size = UDim2.new(1,0,0.5,0)
for i = 1,string.len(text),1 do
tecks2.Text = string.sub(text,1,i)
tecks3.Text = string.sub(text,1,i)
tecks3.Text = string.sub(text,1,i)
talksound:Play()
wait(0.01)
end
wait(2)
for i = 1, 50 do
swait()
tecks2.Position = tecks2.Position - UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
tecks2.Rotation = tecks2.Rotation - .8
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.Position = tecks2.Position - UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
tecks3.Rotation = tecks2.Rotation + .8
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
naeeym2:Destroy()
end)
chat()
end
function onChatted(msg)
chatfunc(msg)
end
plr.Chatted:connect(onChatted)
wait(2)
chatfunc("ItÂ´s a beatefule night in void..")
wait(2)
chatfunc("Black is rising...")
wait(2)
chatfunc("Dream!Sans is dying....")
wait(2)
chatfunc("On days like these... Chara like you...")
wait(2)
chatfunc("Should be erasing in hell.")
wait(0.5)
char.Humanoid.Name = "Sans"

--chat

function Blast(AAA)
 if AAA == "f" then
  local chatmath = math.random(1,3)
  if chatmath == 1 then
   chatfunc("Gaster Blaster!")
  end
  if chatmath == 2 then
   chatfunc("This is what you get for killing everybody.")
  end
  if chatmath == 3 then
   chatfunc("Look, I gave up trying to go back a long time ago.")
  end
  local gasterblaster = Instance.new("Part",char.Torso)
  gasterblaster.Size = Vector3.new(7, 16, 4)
  gasterblaster.CanCollide = false
  local gasterblastermesh = Instance.new("FileMesh",gasterblaster)
  gasterblastermesh.MeshId = "rbxassetid://431908407"
  gasterblastermesh.Scale = Vector3.new(0.05,0.05,0.05)
  local gasterblastertexture = Instance.new("Decal",gasterblaster)
  gasterblastertexture.Face = "Back"
  gasterblastertexture.Texture = "http://www.roblox.com/asset/?id=441975828"
  local weeld = Instance.new("Weld",gasterblaster)
  weeld.Part0 = gasterblaster
  weeld.Part1 = char.Torso
  weeld.C0 = CFrame.new(3.71674585, -11.54426, -0.129204988, -0.999741375, 0, 0.0227420069, 0, 1, 0, -0.0227420069, 0, -0.999741375)
  blastsound:Play()
  char.Head.Anchored = true
  wait(1)
  local blast = Instance.new("Part",gasterblaster)
  blast.Size = Vector3.new(18.07, 16.36, 73.54)
  blast.Transparency = 0.7
  blast.Material = "Neon"
  blast.Color = Color3.new(1,1,1)
  blast.CanCollide = true
  local blastweld = Instance.new("Weld",blast)
  blastweld.Part0 = blast
  blastweld.Part1 = gasterblaster
  blastweld.C0 = CFrame.new(-0.430000305, 1.73999977, -40.1399994, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  blast.Touched:connect(function(part)
   part.Parent:FindFirstChildOfClass("Humanoid"):Destroy() -- Makes them not able to move
        end)
  wait(2)
  char.Head.Anchored = false
  blast:Destroy()
  gasterblaster:Destroy()
 end
end
mouse.KeyDown:connect(Blast)