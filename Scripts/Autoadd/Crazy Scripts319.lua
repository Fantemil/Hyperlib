                                                            All Scripts:
Day Game Mode - game.Lighting.Brightness = 2

Gui, Frame, Button.. Transparency - script.Parent.Parent.Frame.Transparency = 1

Workspace Message - h = Instance.new("hint", game.workspace) h.text = "Text"

InterFace Hide - script.Parent.Parent.Frame.Visble = false / true

Torso Script - game.Workspace.YOURNAMEHERE.Head.Mesh.MeshType = "Torso"

Humanoid Reset Destroy - player = game:service("Players").LocalPlayer                         
function onTouched()
if (c[i].className == "Humanoid") then 
c[i]:remove() 
 
 
end
end 
end 
end

Fly Script - game.Workspace.Part.Anchored = true
if game.Workspace.Part.Anchored == true then
wait(10) 
game.Workspace.Part.Anchored = false
 
if game.Players.LocalPlayer.Character.Humanoid.Seated == true then  --[ Detects if your humanoid is currently sitting or not ]--
if game.Players.LocalPlayer.Character.Humanoid.SeatPart.Anchored == true then --[ It then detects if the SeatPart is Anchored ]--
game.Players.LocalPlayer.Character.Humanoid.SeatPart.Anchored = false --[ Changes the value to false so now the seat is UnAnchored ]--
end
end
 
if game.Players.LocalPlayer.Character.Humanoid.Seated == true then
game.Players.LocalPlayer.Humanoid.RootPart.Anchored = true
game.Players.LocalPlayer.PlayerScripts.ControlScript.Disabled = true -- I think this disables you from moving though
end
end
 
game:GetService('Players').LocalPlayer.Character.Humanoid.Name = "Humanoida"
repeat wait()
until game:GetService"Players".LocalPlayer and game:GetService"Players".LocalPlayer.Character and game:GetService"Players".LocalPlayer.Character:findFirstChild("UpperTorso") and game:GetService"Players".LocalPlayer.Character:findFirstChild("Humanoida")
local mouse = game:GetService"Players".LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game:GetService"Players".LocalPlayer
local torso = plr.Character.UpperTorso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 100
local speed = 0
 
function Fly()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
--plr.Character.Humanoida.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game:GetService("Workspace").CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game:GetService("Workspace").CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game:GetService("Workspace").CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game:GetService("Workspace").CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game:GetService("Workspace").CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game:GetService("Workspace").CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game:GetService("Workspace").CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
--plr.Character.Humanoida.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "e" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
end)
Fly()

Print script - print ("Hello, World")

                                                                   Thanks!!!
