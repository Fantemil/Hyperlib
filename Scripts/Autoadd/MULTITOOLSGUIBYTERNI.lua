-- Press F to Fly
-- Press E to NoClip
-- Click TP Hotkey : CTRL
-- Press R to uninfinite jump


print("Thank you for using Simple")

-- Notification - Loaded |

game:GetService("StarterGui"):SetCore("SendNotification",{
            Title = "Simple";
            Text = "Made by Terni#2223";
                    })

-- Instances:

local Simple = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local noclip = Instance.new("TextButton")
local clicktp = Instance.new("TextButton")
local tpto = Instance.new("TextButton")
local infjump = Instance.new("TextButton")
local btools = Instance.new("TextButton")
local jumppower = Instance.new("TextButton")
local jpframe = Instance.new("Frame")
local jpinput = Instance.new("TextBox")
local setjp = Instance.new("TextButton")
local rejp = Instance.new("TextButton")
local title = Instance.new("TextLabel")
local walkspeed = Instance.new("TextButton")
local wsframe = Instance.new("Frame")
local wsinput = Instance.new("TextBox")
local setws = Instance.new("TextButton")
local rews = Instance.new("TextButton")
local close = Instance.new("TextButton")
local fly = Instance.new("TextButton")
local open = Instance.new("TextButton")
local jpclose = Instance.new("TextButton")
local wsclose = Instance.new("TextButton")
local tpframe = Instance.new("Frame")
local tpinput = Instance.new("TextBox")
local settp = Instance.new("TextButton")
local tpclose = Instance.new("TextButton")

--Properties:

Simple.Name = "Simple"
Simple.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

main.Name = "main"
main.Parent = Simple
main.Active = true
main.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
main.Position = UDim2.new(0.382422805, 0, 0.292828679, 0)
main.Size = UDim2.new(0, 349, 0, 287)
main.Draggable = true

noclip.Name = "noclip"
noclip.Parent = main
noclip.BackgroundColor3 = Color3.fromRGB(170, 170, 255)
noclip.Position = UDim2.new(0.0658583343, 0, 0.198759019, 0)
noclip.Size = UDim2.new(0, 119, 0, 40)
noclip.Font = Enum.Font.SourceSans
noclip.Text = "NoClip"
noclip.TextColor3 = Color3.fromRGB(0, 0, 0)
noclip.TextScaled = true
noclip.TextSize = 14.000
noclip.TextWrapped = true
noclip.MouseButton1Click:Connect(function()
 game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)

if key == "e" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
 noclip.Text = "Loaded!"
    noclip.TextColor3 = Color3.fromRGB(0, 255, 50)
    wait(2)
    noclip.TextColor3 = Color3.fromRGB(0, 0, 0)
    noclip.Text = "NoClip"
end)

clicktp.Name = "clicktp"
clicktp.Parent = main
clicktp.BackgroundColor3 = Color3.fromRGB(170, 170, 255)
clicktp.Position = UDim2.new(0.588318229, 0, 0.198759019, 0)
clicktp.Size = UDim2.new(0, 119, 0, 40)
clicktp.Font = Enum.Font.SourceSans
clicktp.Text = "Click TP"
clicktp.TextColor3 = Color3.fromRGB(0, 0, 0)
clicktp.TextScaled = true
clicktp.TextSize = 14.000
clicktp.TextWrapped = true
clicktp.MouseButton1Click:Connect(function()
 noclip = false
local UIS = game:GetService("UserInputService")
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()


function GetCharacter()
   return game.Players.LocalPlayer.Character
end

function Teleport(pos)
   local Char = GetCharacter()
   if Char then
       Char:MoveTo(pos)
   end
end


UIS.InputBegan:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
       Teleport(Mouse.Hit.p)
   end
end)
 clicktp.Text = "Loaded!"
    clicktp.TextColor3 = Color3.fromRGB(0, 255, 50)
    wait(2)
    clicktp.TextColor3 = Color3.fromRGB(0, 0, 0)
    clicktp.Text = "Click TP"
end)

tpto.Name = "tpto"
tpto.Parent = main
tpto.BackgroundColor3 = Color3.fromRGB(170, 170, 255)
tpto.Position = UDim2.new(0.588318229, 0, 0.411871731, 0)
tpto.Size = UDim2.new(0, 119, 0, 41)
tpto.Font = Enum.Font.SourceSans
tpto.Text = "Teleport To"
tpto.TextColor3 = Color3.fromRGB(0, 0, 0)
tpto.TextScaled = true
tpto.TextSize = 14.000
tpto.TextWrapped = true
tpto.MouseButton1Click:Connect(function()
 tpframe.Visible = true
 infjump.Visible = false
 jumppower.Visible = false
 walkspeed.Visible = false
 btools.Visible = false
 fly.Visible = false
end)

tpclose.Name = "tpclose"
tpclose.Parent = tpframe
tpclose.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
tpclose.Position = UDim2.new(0.92929244, 0, 0, 0)
tpclose.Size = UDim2.new(0, 24, 0, 24)
tpclose.Font = Enum.Font.SourceSans
tpclose.Text = "X"
tpclose.TextColor3 = Color3.fromRGB(255, 255, 255)
tpclose.TextScaled = true
tpclose.TextSize = 14.000
tpclose.TextWrapped = true
tpclose.MouseButton1Click:Connect(function()
 tpframe.Visible = false
 infjump.Visible = true
 jumppower.Visible = true
 walkspeed.Visible = true
 btools.Visible = true
 fly.Visible = true
end)

tpframe.Name = "tpframe"
tpframe.Parent = tpto
tpframe.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
tpframe.BorderSizePixel = 0
tpframe.Position = UDim2.new(-1.72255921, 0, -1.77698445, 0)
tpframe.Size = UDim2.new(0, 348, 0, 240)
tpframe.Visible = false

tpinput.Name = "tpinput"
tpinput.Parent = tpframe
tpinput.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
tpinput.Position = UDim2.new(0.209770113, 0, 0.174999997, 0)
tpinput.Size = UDim2.new(0, 200, 0, 50)
tpinput.Font = Enum.Font.SourceSans
tpinput.Text = "Full Player Username"
tpinput.TextColor3 = Color3.fromRGB(255, 255, 255)
tpinput.TextSize = 22.000

settp.Name = "settp"
settp.Parent = tpframe
settp.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
settp.Position = UDim2.new(0.304597706, 0, 0.470833331, 0)
settp.Size = UDim2.new(0, 135, 0, 50)
settp.Font = Enum.Font.SourceSans
settp.Text = "Teleport"
settp.TextColor3 = Color3.fromRGB(85, 0, 127)
settp.TextSize = 14.000
settp.MouseButton1Click:Connect(function()
 local Victim = tpinput.Text
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Victim].Character.HumanoidRootPart.CFrame
    settp.Text = "Teleported!"
    settp.TextColor3 = Color3.fromRGB(0, 255, 50)
    wait(2)
    settp.TextColor3 = Color3.fromRGB(255, 255, 255)
    settp.Text = "Teleport"
end)

infjump.Name = "infjump"
infjump.Parent = main
infjump.BackgroundColor3 = Color3.fromRGB(170, 170, 255)
infjump.Position = UDim2.new(0.0658583343, 0, 0.411871731, 0)
infjump.Size = UDim2.new(0, 119, 0, 41)
infjump.Font = Enum.Font.SourceSans
infjump.Text = "Infinite Jump"
infjump.TextColor3 = Color3.fromRGB(0, 0, 0)
infjump.TextScaled = true
infjump.TextSize = 14.000
infjump.TextWrapped = true
infjump.MouseButton1Click:Connect(function()
 loadstring(game:HttpGet("https://pastebin.com/raw/HQsQysa8", true))()
 infjump.Text = "Loaded!"
    infjump.TextColor3 = Color3.fromRGB(0, 255, 50)
    wait(2)
    infjump.TextColor3 = Color3.fromRGB(0, 0, 0)
    infjump.Text = "Infinite Jump"
end)

btools.Name = "btools"
btools.Parent = main
btools.BackgroundColor3 = Color3.fromRGB(170, 170, 255)
btools.Position = UDim2.new(0.588318229, 0, 0.621999919, 0)
btools.Size = UDim2.new(0, 119, 0, 38)
btools.Font = Enum.Font.SourceSans
btools.Text = "BTools"
btools.TextColor3 = Color3.fromRGB(0, 0, 0)
btools.TextScaled = true
btools.TextSize = 14.000
btools.TextWrapped = true
btools.MouseButton1Click:Connect(function()
 game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
for index, child in pairs(game:GetService("Workspace"):GetChildren()) do
   if child.ClassName == "Part" then
       child.Locked = false
   end
   if child.ClassName == "MeshPart" then
       child.Locked = false
   end
   if child.ClassName == "UnionOperation" then
       child.Locked = false
   end
   if child.ClassName == "Model" then
       for index, chil in pairs(child:GetChildren()) do
           if chil.ClassName == "Part" then
               chil.Locked = false
           end
           if chil.ClassName == "MeshPart" then
               chil.Locked = false
           end
           if chil.ClassName == "UnionOperation" then
               chil.Locked = false
           end
           if chil.ClassName == "Model" then
               for index, childe in pairs(chil:GetChildren()) do
                   if childe.ClassName == "Part" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "MeshPart" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "UnionOperation" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "Model" then
                       for index, childeo in pairs(childe:GetChildren()) do
                           if childeo.ClassName == "Part" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "MeshPart" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "UnionOperation" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "Model" then
                           end
                       end
                   end
               end
           end
       end
   end
end
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Hammer
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Clone
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Grab
    btools.Text = "Loaded!"
    btools.TextColor3 = Color3.fromRGB(0, 255, 50)
    wait(2)
    btools.TextColor3 = Color3.fromRGB(0, 0, 0)
    btools.Text = "BTools"
end)

jumppower.Name = "jumppower"
jumppower.Parent = main
jumppower.BackgroundColor3 = Color3.fromRGB(170, 170, 255)
jumppower.Position = UDim2.new(0.0658583343, 0, 0.621999919, 0)
jumppower.Size = UDim2.new(0, 119, 0, 42)
jumppower.Font = Enum.Font.SourceSans
jumppower.Text = "Jump Power"
jumppower.TextColor3 = Color3.fromRGB(0, 0, 0)
jumppower.TextScaled = true
jumppower.TextSize = 14.000
jumppower.TextWrapped = true
jumppower.MouseButton1Click:Connect(function()
 jpframe.Visible = true
 walkspeed.Visible = false
 fly.Visible = false
end)

jpframe.Name = "jpframe"
jpframe.Parent = jumppower
jpframe.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
jpframe.BorderSizePixel = 0
jpframe.Position = UDim2.new(-0.19314754, 0, -3.15096831, 0)
jpframe.Size = UDim2.new(0, 348, 0, 240)
jpframe.Visible = false

jpclose.Name = "jpclose"
jpclose.Parent = jpframe
jpclose.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
jpclose.Position = UDim2.new(0.92929244, 0, 0, 0)
jpclose.Size = UDim2.new(0, 24, 0, 24)
jpclose.Font = Enum.Font.SourceSans
jpclose.Text = "X"
jpclose.TextColor3 = Color3.fromRGB(255, 255, 255)
jpclose.TextScaled = true
jpclose.TextSize = 14.000
jpclose.TextWrapped = true
jpclose.MouseButton1Click:Connect(function()
 walkspeed.Visible = true
 fly.Visible = true
 jpframe.Visible = false
end)

jpinput.Name = "jpinput"
jpinput.Parent = jpframe
jpinput.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
jpinput.Position = UDim2.new(0.209770113, 0, 0.174999997, 0)
jpinput.Size = UDim2.new(0, 200, 0, 50)
jpinput.Font = Enum.Font.SourceSans
jpinput.Text = "Power Value"
jpinput.TextColor3 = Color3.fromRGB(255, 255, 255)
jpinput.TextSize = 22.000

setjp.Name = "setjp"
setjp.Parent = jpframe
setjp.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
setjp.Position = UDim2.new(0.0632183924, 0, 0.470833331, 0)
setjp.Size = UDim2.new(0, 135, 0, 50)
setjp.Font = Enum.Font.SourceSans
setjp.Text = "Set Jump Power"
setjp.TextColor3 = Color3.fromRGB(85, 0, 127)
setjp.TextSize = 14.000
setjp.MouseButton1Click:Connect(function()
 game.Players.LocalPlayer.Character.Humanoid.JumpPower = jpinput.Text
end)

rejp.Name = "rejp"
rejp.Parent = jpframe
rejp.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
rejp.Position = UDim2.new(0.537356317, 0, 0.470833331, 0)
rejp.Size = UDim2.new(0, 136, 0, 50)
rejp.Font = Enum.Font.SourceSans
rejp.Text = "Reset Jump Power"
rejp.TextColor3 = Color3.fromRGB(85, 0, 127)
rejp.TextSize = 14.000
rejp.MouseButton1Click:Connect(function()
 game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Position = UDim2.new(0.211408243, 0, -0.00288046151, 0)
title.Size = UDim2.new(0, 200, 0, 47)
title.Font = Enum.Font.Highway
title.Text = "Simple"
title.TextColor3 = Color3.fromRGB(0, 255, 255)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true

walkspeed.Name = "walkspeed"
walkspeed.Parent = main
walkspeed.BackgroundColor3 = Color3.fromRGB(170, 170, 255)
walkspeed.Position = UDim2.new(0.0658583343, 0, 0.817121804, 0)
walkspeed.Size = UDim2.new(0, 119, 0, 42)
walkspeed.Font = Enum.Font.SourceSans
walkspeed.Text = "Walk Speed"
walkspeed.TextColor3 = Color3.fromRGB(0, 0, 0)
walkspeed.TextScaled = true
walkspeed.TextSize = 14.000
walkspeed.TextWrapped = true
walkspeed.MouseButton1Click:Connect(function()
 wsframe.Visible = true
 fly.Visible = false
end)

wsframe.Name = "wsframe"
wsframe.Parent = walkspeed
wsframe.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
wsframe.BorderSizePixel = 0
wsframe.Position = UDim2.new(-0.201550901, 0, -4.48430157, 0)
wsframe.Size = UDim2.new(0, 348, 0, 240)
wsframe.Visible = false

wsclose.Name = "wsclose"
wsclose.Parent = wsframe
wsclose.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
wsclose.Position = UDim2.new(0.92929244, 0, 0, 0)
wsclose.Size = UDim2.new(0, 24, 0, 24)
wsclose.Font = Enum.Font.SourceSans
wsclose.Text = "X"
wsclose.TextColor3 = Color3.fromRGB(255, 255, 255)
wsclose.TextScaled = true
wsclose.TextSize = 14.000
wsclose.TextWrapped = true
wsclose.MouseButton1Click:Connect(function()
 wsframe.Visible = false
 fly.Visible = true
end)

wsinput.Name = "wsinput"
wsinput.Parent = wsframe
wsinput.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
wsinput.Position = UDim2.new(0.209770113, 0, 0.174999997, 0)
wsinput.Size = UDim2.new(0, 200, 0, 50)
wsinput.Font = Enum.Font.SourceSans
wsinput.Text = "Speed Value"
wsinput.TextColor3 = Color3.fromRGB(255, 255, 255)
wsinput.TextSize = 22.000

setws.Name = "setws"
setws.Parent = wsframe
setws.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
setws.Position = UDim2.new(0.0632183924, 0, 0.470833331, 0)
setws.Size = UDim2.new(0, 135, 0, 50)
setws.Font = Enum.Font.SourceSans
setws.Text = "Set Walk Speed"
setws.TextColor3 = Color3.fromRGB(85, 0, 127)
setws.TextSize = 14.000
setws.MouseButton1Click:Connect(function()
 game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = wsinput.Text
end)

rews.Name = "rews"
rews.Parent = wsframe
rews.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
rews.Position = UDim2.new(0.537356317, 0, 0.470833331, 0)
rews.Size = UDim2.new(0, 136, 0, 50)
rews.Font = Enum.Font.SourceSans
rews.Text = "Reset Walk Speed"
rews.TextColor3 = Color3.fromRGB(85, 0, 127)
rews.TextSize = 14.000
rews.MouseButton1Click:Connect(function()
 game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

close.Name = "close"
close.Parent = main
close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
close.Position = UDim2.new(0.92929244, 0, 0, 0)
close.Size = UDim2.new(0, 24, 0, 24)
close.Font = Enum.Font.SourceSans
close.Text = "X"
close.TextColor3 = Color3.fromRGB(255, 255, 255)
close.TextScaled = true
close.TextSize = 14.000
close.TextWrapped = true
close.MouseButton1Click:Connect(function()
 main.Visible = false
 open.Visible = true
end)

fly.Name = "fly"
fly.Parent = main
fly.BackgroundColor3 = Color3.fromRGB(170, 170, 255)
fly.Position = UDim2.new(0.587348342, 0, 0.817121804, 0)
fly.Size = UDim2.new(0, 119, 0, 42)
fly.Font = Enum.Font.SourceSans
fly.Text = "Fly"
fly.TextColor3 = Color3.fromRGB(0, 0, 0)
fly.TextScaled = true
fly.TextSize = 14.000
fly.TextWrapped = true
fly.MouseButton1Click:Connect(function()
 repeat wait() 
 until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Head 
local flying = false
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 400 
local speed = 5000 

function Fly() 
local bg = Instance.new("BodyGyro", torso) 
bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame 
local bv = Instance.new("BodyVelocity", torso) 
bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
repeat wait() 
plr.Character.Humanoid.PlatformStand = true 
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
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
else 
bv.velocity = Vector3.new(0,0.1,0) 
end 
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
until not flying 
ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 0 
bg:Destroy() 
bv:Destroy() 
plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
if key:lower() == "f" then 
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
    fly.Text = "Loaded!"
    fly.TextColor3 = Color3.fromRGB(0, 255, 50)
    wait(2)
    fly.TextColor3 = Color3.fromRGB(0, 0, 0)
    fly.Text = "Fly"
end)

open.Name = "open"
open.Parent = Simple
open.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
open.Position = UDim2.new(0, 0, 0.609974444, 0)
open.Size = UDim2.new(0, 70, 0, 18)
open.Visible = false
open.Font = Enum.Font.SourceSans
open.Text = "Open"
open.TextColor3 = Color3.fromRGB(0, 255, 255)
open.TextSize = 14.000
open.MouseButton1Click:Connect(function()
 main.Visible = true
 open.Visible = false
end)