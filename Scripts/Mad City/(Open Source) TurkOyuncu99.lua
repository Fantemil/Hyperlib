local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/miroeramaa/TurtleLib/main/TurtleUiLib.lua"))()
local window1 = library:Window("FE Scripts 1")
local window2 = library:Window("LocalPlayer")
local window3 = library:Window("Car Settings")
local window5 = library:Window("Teleport Areas")
local window6 = library:Window("Weapon Scripts")

window3:Slider("Car Height",3,100,3, function(valuee11)
    local a = require(game.Workspace.ObjectSelection[game.Players.LocalPlayer.Name.."'s Vehicle"].Settings)
a.Height = valuee11
end)



window3:Slider("Car Camera Zoom",1,50,1, function(value22)
        local a = require(game.Workspace.ObjectSelection[game.Players.LocalPlayer.Name.."'s Vehicle"].Settings)
a.CameraOffset = value22
end)


window3:Slider("Car MaxSpeed",20,1000,1, function(value3143)
local a = require(game.Workspace.ObjectSelection[game.Players.LocalPlayer.Name.."'s Vehicle"].Settings)
a.MaxSpeed = value3143
end)

window3:Slider("Car BrakeForce",5,5000,5, function(value4qc4)
local a = require(game.Workspace.ObjectSelection[game.Players.LocalPlayer.Name.."'s Vehicle"].Settings)
a.BrakeForce = value4qc4
end)

window3:Toggle("HoverMode",false,function(ogwe)
    getgenv().trinkhhnn4nets = ogwe
if getgenv().trinkhhnn4nets then
game.Workspace.ObjectSelection[game.Players.LocalPlayer.Name.."'s Vehicle"].CarChassis.HoverMode.Value = true
else
game.Workspace.ObjectSelection[game.Players.LocalPlayer.Name.."'s Vehicle"].CarChassis.HoverMode.Value = false
end
end)

window2:Toggle("Walk on Water",false,function(ddq)
    getgenv().trin4nets = ddq
if getgenv().trin4nets then
for k,v in pairs(game:GetService("Workspace").Water:GetChildren()) do
   v.CanCollide = true
   v.Anchored = true
   v.Material = "Ice"
end
else
    for k,v in pairs(game:GetService("Workspace").Water:GetChildren()) do
v.CanCollide = false
   v.Anchored = false
   v.Material = "Ice"
end
end
end)




window3:Button("Infinite Nitro",function()
    game:GetService("RunService").RenderStepped:Connect(function()
if workspace.ObjectSelection:FindFirstChild(game.Players.LocalPlayer.Name.."'s Vehicle") then
pcall(function()workspace.ObjectSelection[game.Players.LocalPlayer.Name.."'s Vehicle"].CarChassis.Boost.Value = 20;end)
end
end)
end)

window3:Label("FE Car Colors", Color3.fromRGB(127, 143, 166))

window3:Toggle("Rainbow Windows",false,function(e6hhhhh)
    getgenv().triqqqqqqqbnkets = e6hhhhh
while wait() do
if getgenv().triqqqqqqqbnkets then
    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","WC15")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","WC14")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","WC13")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","WC12")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","WC11")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","WC10")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","WC9")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","WC8")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","WC7")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","WC6")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","WC5")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","WC4")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","WC3")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","WC2")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","WC1")
end
end
        game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "Rainbow Windows",     
Text = "You Should Have All Window Colors to This Script work",
Duration = 7, })
end)

window3:Toggle("Rainbow Rims",false,function(e6hhhh)
    getgenv().triqqqqqqhhhqbnkets = e6hhhh
while wait() do
if getgenv().triqqqqqqhhhqbnkets then
    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","RC1")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","RC2")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","RC3")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","RC4")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","RC5")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","RC6")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","RC7")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","RC8")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","RC9")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","RC10")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","RC11")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","RC12")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","RC13")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","RC14")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","RC15")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","RC16")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","RC17")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","RC18")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","RC19")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","RC20")
end
end
            game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "Rainbow Rims",     
Text = "You Should Have All Rim Colors to This Script work",
Duration = 7, })
end)
    
    
window3:Toggle("Rainbow Spoiler",false,function(e6uohhhhh)
    getgenv().tqqbnkets = e6uohhhhh
while wait() do
if getgenv().tqqbnkets then
    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","SPC1")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","SPC2")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","SPC3")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","SPC4")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","SPC5")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","SPC6")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","SPC7")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","SPC8")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","SPC9")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","SPC10")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","SPC11")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","SPC12")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","SPC13")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","SPC14")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","SPC15")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","SPC16")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","SPC17")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","SPC18")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","SPC19")
    wait(.08)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipItem","SPC20")
    wait(.08)
end
end
            game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "Rainbow Spoiler",     
Text = "You Should Have All Spoiler Colors to This Script work",
Duration = 7, })
end)


window3:Box("Change Plate",function(ew60we,geyyu)
    if geyyu then
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("Plate",ew60we)
end
end)





window1:Button("Bring Unanchored Bricks [E]",function()
local UserInputService = game:GetService("UserInputService")
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local Folder = Instance.new("Folder", game:GetService("Workspace"))
local Part = Instance.new("Part", Folder)
local Attachment1 = Instance.new("Attachment", Part)
Part.Anchored = true
Part.CanCollide = false
Part.Transparency = 1
local Updated = Mouse.Hit + Vector3.new(0, 5, 0)
local NetworkAccess = coroutine.create(function()
    settings().Physics.AllowSleep = false
    while game:GetService("RunService").RenderStepped:Wait() do
        for _, Players in next, game:GetService("Players"):GetPlayers() do
            if Players ~= game:GetService("Players").LocalPlayer then
                Players.MaximumSimulationRadius = 0 
                sethiddenproperty(Players, "SimulationRadius", 0) 
            end 
        end
        game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)
        setsimulationradius(math.huge) 
    end 
end) 
coroutine.resume(NetworkAccess)
local function ForcePart(v)
    if v:IsA("Part") and v.Anchored == false and v.Parent:FindFirstChild("Humanoid") == nil and v.Parent:FindFirstChild("Head") == nil and v.Name ~= "Handle" then
        Mouse.TargetFilter = v
        for _, x in next, v:GetChildren() do
            if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                x:Destroy()
            end
        end
        if v:FindFirstChild("Attachment") then
            v:FindFirstChild("Attachment"):Destroy()
        end
        if v:FindFirstChild("AlignPosition") then
            v:FindFirstChild("AlignPosition"):Destroy()
        end
        if v:FindFirstChild("Torque") then
            v:FindFirstChild("Torque"):Destroy()
        end
        v.CanCollide = false
        local Torque = Instance.new("Torque", v)
        Torque.Torque = Vector3.new(100000, 100000, 100000)
        local AlignPosition = Instance.new("AlignPosition", v)
        local Attachment2 = Instance.new("Attachment", v)
        Torque.Attachment0 = Attachment2
        AlignPosition.MaxForce = 9999999999999999
        AlignPosition.MaxVelocity = math.huge
        AlignPosition.Responsiveness = 200
        AlignPosition.Attachment0 = Attachment2 
        AlignPosition.Attachment1 = Attachment1
    end
end
for _, v in next, game:GetService("Workspace"):GetDescendants() do
    ForcePart(v)
end
game:GetService("Workspace").DescendantAdded:Connect(function(v)
    ForcePart(v)
end)
UserInputService.InputBegan:Connect(function(Key, Chat)
    if Key.KeyCode == Enum.KeyCode.E and not Chat then
       Updated = Mouse.Hit + Vector3.new(0, 5, 0)
    end
end)
spawn(function()
    while game:GetService("RunService").RenderStepped:Wait() do
        Attachment1.WorldCFrame = Updated
    end
end)
    game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "Bring Unanchored Things Script",     
Text = "Only Works on Cars, Your exploit Should Support 'sethiddenproperty'",
Duration = 15, })
end)

window1:Button("FE Gravity Tool",function()
loadstring(game:HttpGet("https://ghostbin.co/paste/b93p/raw", true))()
game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "FE Gravity Tool",     
Text = "Only Works on Cars",
Duration = 4, })
end)


window1:Label("Other Scripts", Color3.fromRGB(127, 143, 166))


window6:Button("Infinite Ammo",function()
    game:GetService("RunService").RenderStepped:Connect(function()
local function main(v)
   if v.Name == "RifleScript" or v.Name == "ShotgunScript" or v.Name == "PistolScript" or v.Name == "TazerScript" or v.Name == "PowerScript" then
       local a = getsenv(v)
       if debug.getupvalues(a.Reload) then
           debug.setupvalue(a.Reload, 2, math.huge)
       end
   end
end

for _, v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do main(v) end
for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do main(v) end
end)
end)




window6:Label("10x Weapon Damage", Color3.fromRGB(127, 143, 166))



window6:Button("AK47",function()
local backpack = game.Players.LocalPlayer.Backpack
local gun = backpack['AK47']  --MP5,Pistol,Baton,Shotgun,Baton etc.
local ss = gun['RifleScript'] --RifleScript,PistolScript,MeeleScript,ShotgunScript etc.
for i=1,10 do --u can change this to higher value if u want more damage
ss:Clone().Parent = gun
end
end)

window6:Button("Deagle",function()
local backpack = game.Players.LocalPlayer.Backpack
local gun = backpack['Deagle']  --MP5,Pistol,Baton,Shotgun,Baton etc.
local ss = gun['PistolScript'] --RifleScript,PistolScript,MeeleScript,ShotgunScript etc.
for i=1,10 do --u can change this to higher value if u want more damage
ss:Clone().Parent = gun
end
end)

window6:Button("Sniper",function()
local backpack = game.Players.LocalPlayer.Backpack
local gun = backpack['Sniper']  --MP5,Pistol,Baton,Shotgun,Baton etc.
local ss = gun['RifleScript'] --RifleScript,PistolScript,MeeleScript,ShotgunScript etc.
for i=1,10 do --u can change this to higher value if u want more damage
ss:Clone().Parent = gun
end
end)
window6:Button("Shotgun",function()
local backpack = game.Players.LocalPlayer.Backpack
local gun = backpack['Shotgun']  --MP5,Pistol,Baton,Shotgun,Baton etc.
local ss = gun['ShotgunScript'] --RifleScript,PistolScript,MeeleScript,ShotgunScript etc.
for i=1,10 do --u can change this to higher value if u want more damage
ss:Clone().Parent = gun
end
end)
window6:Button("SPAS",function()
local backpack = game.Players.LocalPlayer.Backpack
local gun = backpack['SPAS']  --MP5,Pistol,Baton,Shotgun,Baton etc.
local ss = gun['ShotgunScript'] --RifleScript,PistolScript,MeeleScript,ShotgunScript etc.
for i=1,10 do --u can change this to higher value if u want more damage
ss:Clone().Parent = gun
end
end)
window6:Button("TEC9",function()
local backpack = game.Players.LocalPlayer.Backpack
local gun = backpack['TEC9']  --MP5,Pistol,Baton,Shotgun,Baton etc.
local ss = gun['PistolScript'] --RifleScript,PistolScript,MeeleScript,ShotgunScript etc.
for i=1,10 do --u can change this to higher value if u want more damage
ss:Clone().Parent = gun
end
end)
window6:Button("Pistol",function()
local backpack = game.Players.LocalPlayer.Backpack
local gun = backpack['Pistol']  --MP5,Pistol,Baton,Shotgun,Baton etc.
local ss = gun['PistolScript'] --RifleScript,PistolScript,MeeleScript,ShotgunScript etc.
for i=1,10 do --u can change this to higher value if u want more damage
ss:Clone().Parent = gun
end
end)

window6:Button("Famas",function()
local backpack = game.Players.LocalPlayer.Backpack
local gun = backpack['Famas']  --MP5,Pistol,Baton,Shotgun,Baton etc.
local ss = gun['RifleScript'] --RifleScript,PistolScript,MeeleScript,ShotgunScript etc.
for i=1,10 do --u can change this to higher value if u want more damage
ss:Clone().Parent = gun
end
end)




window6:Button("MP5",function()
local backpack = game.Players.LocalPlayer.Backpack
local gun = backpack['MP5']  --MP5,Pistol,Baton,Shotgun,Baton etc.
local ss = gun['RifleScript'] --RifleScript,PistolScript,MeeleScript,ShotgunScript etc.
for i=1,10 do --u can change this to higher value if u want more damage
ss:Clone().Parent = gun
end
end)

window6:Button("Deathray",function()
local backpack = game.Players.LocalPlayer.Backpack
local gun = backpack['Laser Beam']  --Laser Beam,Dark Energy etc.
local ss = gun['PowerScript']
for i=1,10 do --u can change this to higher value if u want more damage
ss:Clone().Parent = gun
end
end)

window6:Label("Gamepass Guns", Color3.fromRGB(127, 143, 166))



window6:Button("RPG",function()
local backpack = game.Players.LocalPlayer.Backpack
local gun = backpack['AK47']  --MP5,Pistol,Baton,Shotgun,Baton etc.
local ss = gun['RifleScript'] --RifleScript,PistolScript,MeeleScript,ShotgunScript etc.
for i=1,10 do --u can change this to higher value if u want more damage
ss:Clone().Parent = gun
end
end)
window6:Button("AWP",function()
local backpack = game.Players.LocalPlayer.Backpack
local gun = backpack['AWP']  --MP5,Pistol,Baton,Shotgun,Baton etc.
local ss = gun['RifleScript'] --RifleScript,PistolScript,MeeleScript,ShotgunScript etc.
for i=1,10 do --u can change this to higher value if u want more damage
ss:Clone().Parent = gun
end
end)
window6:Button("SCAR",function()
local backpack = game.Players.LocalPlayer.Backpack
local gun = backpack['SCAR']  --MP5,Pistol,Baton,Shotgun,Baton etc.
local ss = gun['RifleScript'] --RifleScript,PistolScript,MeeleScript,ShotgunScript etc.
for i=1,10 do --u can change this to higher value if u want more damage
ss:Clone().Parent = gun
end
end)
window6:Button("M4A1",function()
local backpack = game.Players.LocalPlayer.Backpack
local gun = backpack['M4A1']  --MP5,Pistol,Baton,Shotgun,Baton etc.
local ss = gun['RifleScript'] --RifleScript,PistolScript,MeeleScript,ShotgunScript etc.
for i=1,10 do --u can change this to higher value if u want more damage
ss:Clone().Parent = gun
end
end)













window5:Button("Prison",function()
local _speed=1000
function tp(...)
   local plr=game.Players.LocalPlayer
   local args={...}
   if typeof(args[1])=="number"and args[2]and args[3]then
      args=Vector3.new(args[1],args[2],args[3])
   elseif typeof(args[1])=="Vector3" then
       args=args[1]    
   elseif typeof(args[1])=="CFrame" then
       args=args[1].Position
   end
   local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
   game:GetService("TweenService"):Create(
       plr.Character.HumanoidRootPart,
       TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
       {CFrame=CFrame.new(args)}
   ):Play()
end


tp(-945, 119, -2979)
end)

window5:Button("Gun Shop",function()
    local _speed=1000
function tp(...)
   local plr=game.Players.LocalPlayer
   local args={...}
   if typeof(args[1])=="number"and args[2]and args[3]then
      args=Vector3.new(args[1],args[2],args[3])
   elseif typeof(args[1])=="Vector3" then
       args=args[1]    
   elseif typeof(args[1])=="CFrame" then
       args=args[1].Position
   end
   local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
   game:GetService("TweenService"):Create(
       plr.Character.HumanoidRootPart,
       TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
       {CFrame=CFrame.new(args)}
   ):Play()
end


tp(-1658, 43, 707)
end)

window5:Button("Criminal Base",function()
    local _speed=1000
function tp(...)
   local plr=game.Players.LocalPlayer
   local args={...}
   if typeof(args[1])=="number"and args[2]and args[3]then
      args=Vector3.new(args[1],args[2],args[3])
   elseif typeof(args[1])=="Vector3" then
       args=args[1]    
   elseif typeof(args[1])=="CFrame" then
       args=args[1].Position
   end
   local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
   game:GetService("TweenService"):Create(
       plr.Character.HumanoidRootPart,
       TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
       {CFrame=CFrame.new(args)}
   ):Play()
end

tp(2101, 27, 426)
end)

window5:Label("Robbery Areas", Color3.fromRGB(127, 143, 166))


window5:Button("Ship",function()
    local _speed=1000
function tp(...)
   local plr=game.Players.LocalPlayer
   local args={...}
   if typeof(args[1])=="number"and args[2]and args[3]then
      args=Vector3.new(args[1],args[2],args[3])
   elseif typeof(args[1])=="Vector3" then
       args=args[1]    
   elseif typeof(args[1])=="CFrame" then
       args=args[1].Position
   end
   local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
   game:GetService("TweenService"):Create(
       plr.Character.HumanoidRootPart,
       TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
       {CFrame=CFrame.new(args)}
   ):Play()
end


tp(2517, 81, 335)
end)

window5:Button("Airport",function()

local _speed=1000
function tp(...)
   local plr=game.Players.LocalPlayer
   local args={...}
   if typeof(args[1])=="number"and args[2]and args[3]then
      args=Vector3.new(args[1],args[2],args[3])
   elseif typeof(args[1])=="Vector3" then
       args=args[1]    
   elseif typeof(args[1])=="CFrame" then
       args=args[1].Position
   end
   local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
   game:GetService("TweenService"):Create(
       plr.Character.HumanoidRootPart,
       TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
       {CFrame=CFrame.new(args)}
   ):Play()
end


tp(-2146, 28, -1421)
end)
window5:Button("Jewelry Store",function()
    local _speed=1000
function tp(...)
   local plr=game.Players.LocalPlayer
   local args={...}
   if typeof(args[1])=="number"and args[2]and args[3]then
      args=Vector3.new(args[1],args[2],args[3])
   elseif typeof(args[1])=="Vector3" then
       args=args[1]    
   elseif typeof(args[1])=="CFrame" then
       args=args[1].Position
   end
   local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
   game:GetService("TweenService"):Create(
       plr.Character.HumanoidRootPart,
       TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
       {CFrame=CFrame.new(args)}
   ):Play()
end


tp(-109, 96, 746)
end)



window5:Button("Club",function()
    local _speed=1000
function tp(...)
   local plr=game.Players.LocalPlayer
   local args={...}
   if typeof(args[1])=="number"and args[2]and args[3]then
      args=Vector3.new(args[1],args[2],args[3])
   elseif typeof(args[1])=="Vector3" then
       args=args[1]    
   elseif typeof(args[1])=="CFrame" then
       args=args[1].Position
   end
   local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
   game:GetService("TweenService"):Create(
       plr.Character.HumanoidRootPart,
       TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
       {CFrame=CFrame.new(args)}
   ):Play()
end


tp(1093, 54, 169)
end)



window5:Button("Bank",function()
    local _speed=1000
function tp(...)
   local plr=game.Players.LocalPlayer
   local args={...}
   if typeof(args[1])=="number"and args[2]and args[3]then
      args=Vector3.new(args[1],args[2],args[3])
   elseif typeof(args[1])=="Vector3" then
       args=args[1]    
   elseif typeof(args[1])=="CFrame" then
       args=args[1].Position
   end
   local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
   game:GetService("TweenService"):Create(
       plr.Character.HumanoidRootPart,
       TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
       {CFrame=CFrame.new(args)}
   ):Play()
end
tp(637, 51, 465)

end)

window5:Button("Pyramid",function()
    local _speed=1000
function tp(...)
   local plr=game.Players.LocalPlayer
   local args={...}
   if typeof(args[1])=="number"and args[2]and args[3]then
      args=Vector3.new(args[1],args[2],args[3])
   elseif typeof(args[1])=="Vector3" then
       args=args[1]    
   elseif typeof(args[1])=="CFrame" then
       args=args[1].Position
   end
   local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
   game:GetService("TweenService"):Create(
       plr.Character.HumanoidRootPart,
       TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
       {CFrame=CFrame.new(args)}
   ):Play()
end


tp(-1046, 18, -499)
end)


window5:Button("Casino",function()
    local _speed=1000
function tp(...)
   local plr=game.Players.LocalPlayer
   local args={...}
   if typeof(args[1])=="number"and args[2]and args[3]then
      args=Vector3.new(args[1],args[2],args[3])
   elseif typeof(args[1])=="Vector3" then
       args=args[1]    
   elseif typeof(args[1])=="CFrame" then
       args=args[1].Position
   end
   local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
   game:GetService("TweenService"):Create(
       plr.Character.HumanoidRootPart,
       TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
       {CFrame=CFrame.new(args)}
   ):Play()
end


tp(1697, 38, 739)
end)

window5:Button("Train",function()
    if game.Workspace.Train ~= nil then
    local _speed=1000
function tp(...)
   local plr=game.Players.LocalPlayer
   local args={...}
   if typeof(args[1])=="number"and args[2]and args[3]then
      args=Vector3.new(args[1],args[2],args[3])
   elseif typeof(args[1])=="Vector3" then
       args=args[1]    
   elseif typeof(args[1])=="CFrame" then
       args=args[1].Position
   end
   local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
   game:GetService("TweenService"):Create(
       plr.Character.HumanoidRootPart,
       TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
       {CFrame=CFrame.new(args)}
   ):Play()
end
tp(game.Workspace.Train.Mid1.Yeet.Position)
end
end)

window5:Button("Plane",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Workspace.CargoPlane.Plane.Tele1.Position)
end)





window5:Label("Player Teleport", Color3.fromRGB(127, 143, 166))




window2:Toggle("Fast Walkspeed",false,function(val)
    getgenv().tr4111inkets = val
while wait() do
if getgenv().tr4111inkets then
   game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 150
   else
       game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 16
end
end
end)


window2:Slider("JumpPower",50,300,20, function(valaadue)
   game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = valaadue
end)


window2:Toggle("Noclip", false, function(boolrfq)
    getgenv().trfffffinketcs = boolrfq
        game:GetService("RunService").RenderStepped:Connect(function()
if getgenv().trfffffinketcs then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
end)

window2:Button("Rejoin Server", function()
    game:GetService("TeleportService"):Teleport(game.PlaceId)
end)


window2:Button("Reset Character",function()
      game.Players.LocalPlayer.Character.Head:Remove()
end)


window2:Label("FE Scripts 2", Color3.fromRGB(127, 143, 166))

window2:Toggle("Invisible",false,function(atakabqeq)
    loadstring(game:HttpGet("https://ghostbin.co/paste/r29e9n/raw", true))()
    getgenv().hokaea = atakabqeq
    while wait() do
if getgenv().hokaea then
    for i,v in pairs(game.Workspace.ObjectSelection:GetDescendants()) do
    if v.Name == "SeatWeld" then
        for i =1,2 do
game:GetService("ReplicatedStorage").Event:FireServer("Driveby",v,CFrame.new(),true)
end
end
end
end
end
end)


window2:Button("Be Black",function()
    for i = 1,3 do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-326, 142, -2869)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-326, 142, -2869)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1203.02539, 51058.3906, 552.828857, 0, -1, 0, 1, 0, -0, 0, 0, 1)
        wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1203.02539, 51058.3906, 533.490723, 0, -1, 0, 1, 0, -0, 0, 0, 1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1203.02539, 51058.3906, 552.828857, 0, -1, 0, 1, 0, -0, 0, 0, 1)
end
end)

window2:Button("Loop Remove Name",function()
    game:GetService("RunService").RenderStepped:Connect(function()
game.Players.LocalPlayer.Character.NameTag:Destroy()
end)
    game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "Attention",     
Text = "Your name is no longer visible to players",
Duration = 15, })
end)

window2:Button("Spam All Car Horn",function()
for i,v in pairs(game.Workspace.ObjectSelection:GetDescendants()) do
if v:IsA("Sound") then 
v:Play()
end
end
end)
window2:Label("Give Yourself", Color3.fromRGB(127, 143, 166))
window2:Button("Keycard",function()
    for i = 1,50 do
    for i,v in pairs(game.Players:GetChildren()) do
local args = {
    [1] = "Pickpocket",
    [2] = v
}

game:GetService("ReplicatedStorage").Event:FireServer(unpack(args))
end
end
end)
window2:Button("Jetpack",function()
    yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame

    game.Workspace.ObjectSelection.BossKey.Nope.BossKey.Event:FireServer()
local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(5,Enum.EasingStyle.Quad);
function tp(...)
   local tic_k = tick();
   local params = {...};
   local cframe = CFrame.new(params[1],params[2],params[3]);
   local tween,err = pcall(function()
       local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
       tween:Play();
   end)
   if not tween then return err end
end
tp(-2261, 31, -1559);
wait(6)
workspace.ObjectSelection.TakeJetpack.TakeJetpack.TakeJetpack.Event:FireServer()
end)




window2:Button("Get All Gamepasses",function()
game.ReplicatedStorage.Event:FireServer("Dialogue",{{Text="Car Radio, Emotes,Mobile Shop, Has Been Given",Delay=2}})
wait()
local g1 = Instance.new("BoolValue",game.Players.LocalPlayer)
g1.Name = "5275404"
g1.Value = true
local g2 = Instance.new("BoolValue",game.Players.LocalPlayer)
g2.Name = "5275406"
g2.Value = true
local g3 = Instance.new("BoolValue",game.Players.LocalPlayer)
g3.Name = "5275408"
g3.Value = true
local g4 = Instance.new("BoolValue",game.Players.LocalPlayer)
g4.Name = "5283883"
g4.Value = true
local g5 = Instance.new("BoolValue",game.Players.LocalPlayer)
g5.Name = "5285945"
g5.Value = true
local g6 = Instance.new("BoolValue",game.Players.LocalPlayer)
g6.Name = "5786950"
g6.Value = true
local g7 = Instance.new("BoolValue",game.Players.LocalPlayer)
g7.Name = "5945566"
g7.Value = true
local g8 = Instance.new("BoolValue",game.Players.LocalPlayer)
g8.Name = "5981868"
g8.Value = true
local g9 = Instance.new("BoolValue",game.Players.LocalPlayer)
g9.Name = "6023566"
g9.Value = true
local g10 = Instance.new("BoolValue",game.Players.LocalPlayer)
g10.Name = "6329988"
g10.Value = true
end)




window2:Button("Get Deathray",function()
    if game.ReplicatedStorage.HeistStatus.Pyramid.Locked.Value == true then
            game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "Get Deathray Script",     
Text = "Wait to Pyramid Open Again",
Duration = 10, })
else
local _speed=1999
function tp(...)
   local plr=game.Players.LocalPlayer
   local args={...}
   if typeof(args[1])=="number"and args[2]and args[3]then
      args=Vector3.new(args[1],args[2],args[3])
   elseif typeof(args[1])=="Vector3" then
       args=args[1]    
   elseif typeof(args[1])=="CFrame" then
       args=args[1].Position
   end
   local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
   game:GetService("TweenService"):Create(
       plr.Character.HumanoidRootPart,
       TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
       {CFrame=CFrame.new(args)}
   ):Play()
end


tp(-1047.58899, 18.2789993, -479.790009, 1, 0, 0, 0, 1, 0, 0, 0, 1)
wait(5)
tp(1044, 51073, 555)
wait(2)
for i = 1,10 do
workspace.ObjectSelection.GoldKey.GoldKey.GoldKey.Event:FireServer()
end
wait(2)
tp(1231.14185, 51051.2344, 381.096191, -1, 0, 0, 0, 1, 0, 0, 0, -1)
wait(2)
tp(-1024, 19, -522)
wait(2)
tp(865, 31, 990)
wait(4)
for c = 0,5 do
workspace.ObjectSelection.DeathRay.DeathRay.DeathRay.Event:FireServer()
end
wait(1)
tp(942, 25, 912)
end
end)







window5:Button("Teleport To Drop",function()
        if game.Workspace.Train ~= nil then
    local _speed=1000
function tp(...)
   local plr=game.Players.LocalPlayer
   local args={...}
   if typeof(args[1])=="number"and args[2]and args[3]then
      args=Vector3.new(args[1],args[2],args[3])
   elseif typeof(args[1])=="Vector3" then
       args=args[1]    
   elseif typeof(args[1])=="CFrame" then
       args=args[1].Position
   end
   local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
   game:GetService("TweenService"):Create(
       plr.Character.HumanoidRootPart,
       TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
       {CFrame=CFrame.new(args)}
   ):Play()
end
tp(game.Workspace.ObjectSelection.CrateDrop.CrateDrop.Position)
end
end)

window5:Box("Teleport to", function(bwha54ssee,eqwe65)
    if eqwe65 then
            local _speed=1000
function tp(...)
   local plr=game.Players.LocalPlayer
   local args={...}
   if typeof(args[1])=="number"and args[2]and args[3]then
      args=Vector3.new(args[1],args[2],args[3])
   elseif typeof(args[1])=="Vector3" then
       args=args[1]    
   elseif typeof(args[1])=="CFrame" then
       args=args[1].Position
   end
   local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
   game:GetService("TweenService"):Create(
       plr.Character.HumanoidRootPart,
       TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
       {CFrame=CFrame.new(args)}
   ):Play()
end


        tp(game.Players[bwha54ssee].Character.HumanoidRootPart.CFrame)
    end
end)
    


window1:Button("Give All Players Glider",function()
for i,v in pairs(game.Players:GetChildren()) do
local args = {
    [1] = "Glider",
    [2] = v.Character.Parachute.Handle,
    [3] = -math.huge
}
game:GetService("ReplicatedStorage").Event:FireServer(unpack(args))
end
end)


window1:Button("Remove Players Glider",function()
for i,v in pairs(game.Players:GetChildren()) do
local args = {
    [1] = "Glider",
    [2] = v.Character.Parachute.Handle,
    [3] = math.huge
}

game:GetService("ReplicatedStorage").Event:FireServer(unpack(args))
end
end)



window1:Button("Crash Server",function()
   if game.Players.LocalPlayer.Backpack:FindFirstChild("Shotgun") == nil then
    game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "Attention",     
Text = "You need equip Shotgun to Server Crash Work",
Duration = 7, })
else
local plr = game.Players.LocalPlayer
local char = plr.Character

for i = 1, 20 do
wait()
workspace.ObjectSelection.Shotgun.Shotgun.Shotgun.Event:FireServer()
end
char.Humanoid:EquipTool(plr.Backpack.Shotgun)
for i = 1, 8000 do
game:GetService("ReplicatedStorage").Event:FireServer("ShootShotgun", workspace[plr.Name], Vector3.new(0, 0, 0), "Shotgun", "inf", "inf", "inf")
end
           game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "Crash Server Script",     
Text = "Server Has Been Crashed",
Duration = 7, })
end
end)

window1:Label("God Mode Scripts", Color3.fromRGB(127, 143, 166))

window1:Toggle("Give Yourself",false,function(cwe)
    getgenv().trggewinkets = cwe
while wait() do
if getgenv().trggewinkets then
    pcall(function()
           local A_1 = "RevivePlayer"
           local A_2 = game:GetService("Workspace")[game.Players.LocalPlayer.Name]
           local A_3 = game:GetService("Workspace").ObjectSelection.DownedPart.DownedPart
           local Event = game:GetService("ReplicatedStorage").Event
           Event:FireServer(A_1, A_2, A_3)
end)
end
end
end)
window1:Toggle("Give Whole Server",false,function(cqwtrt)
        getgenv().trggbhewinkets = cqwtrt
while wait() do
if getgenv().trggbhewinkets then
for i,ve in pairs(game.Players:GetPlayers()) do
    pcall(function()
           local A_1 = "RevivePlayer"
           local A_2 = game:GetService("Workspace")[ve.Name]
           local A_3 = game:GetService("Workspace").ObjectSelection.DownedPart.DownedPart
           local Event = game:GetService("ReplicatedStorage").Event
           Event:FireServer(A_1, A_2, A_3)
end)
end
end
end
end)
window1:Toggle("XP Farm [Safe]",false,function(gtwe84)
    getgenv().trihrybvrnkets = gtwe84
    game:GetService("RunService").RenderStepped:Connect(function()
if getgenv().trihrybvrnkets then
    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("SetTeam", "Police")
wait(.75)
game:GetService("RunService").RenderStepped:Connect()
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
   if v.Name == "Handcuffs" then v.Parent = game:GetService("Players").LocalPlayer.Character
   end
end
game:GetService("ReplicatedStorage").Event:FireServer("Eject", game:GetService("Players").LocalPlayer)
end
end)
end)








window1:Label("FE Brick Spam", Color3.fromRGB(127, 143, 166))

window1:Button("Get Brick Spam Tool",function()
        game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "",     
Text = "Wait Until Loaded Message",
Duration = 15, })
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("SetTeam","Prisoners")
wait(2)

local _speed=1000
function tp(...)
   local plr=game.Players.LocalPlayer
   local args={...}
   if typeof(args[1])=="number"and args[2]and args[3]then
      args=Vector3.new(args[1],args[2],args[3])
   elseif typeof(args[1])=="Vector3" then
       args=args[1]    
   elseif typeof(args[1])=="CFrame" then
       args=args[1].Position
   end
   local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
   game:GetService("TweenService"):Create(
       plr.Character.HumanoidRootPart,
       TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
       {CFrame=CFrame.new(args)}
   ):Play()
end


tp(2140, 40, 441)
tp(2140, 40, 441)
tp(2140, 40, 441)
wait(5)
workspace.ObjectSelection.Treat.Treat.Treat.Event:FireServer()
    game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "Brick Spam Script",     
Text = "Loaded                                                             Now Execute 'Throw Brick' Script",
Duration = 15, })
end)



window1:Button("Throw Brick",function()
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Treat") == nil then
           game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "Attention",     
Text = "First Click 'Get Brick Spam Tool' Script to This Script Work'",
Duration = 15, })
else
    wait(1)
        local tool = "Treat"

for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") and v.Name == tool then
v.Parent = game:GetService("Players").LocalPlayer.Character
end
end
local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input, isProcessed)
if isProcessed then return end
if input.KeyCode == Enum.KeyCode.T then
    for c = 1,bbgw147we do
game:GetService("ReplicatedStorage").Event:FireServer("ThrowTreat",Vector3.new(1990, 26, 435))
end
end
end)




    game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "Attention",     
Text = "Enter  Brick Amount                               Press T to Throw Brick",
Duration = 15, })
for i =1,100 do
loadstring(game:HttpGet("https://ghostbin.co/paste/snksj/raw", true))()
end
end
end)

window1:Box("Brick Amount", function(bwhassee, focusloskamereeet)
    if focusloskamereeet then
       bbgw147we = bwhassee
end
    game:GetService("StarterGu-i"):SetCore("SendNotification",{     
Title = "Attention",     
Text = "Increase amount of brick to crash Server if you Want!",
Duration = 15, })
end)

window1:Label("Grenade Script", Color3.fromRGB(127, 143, 166))

window1:Button("Grenade Spam",function()
    if game.Players.LocalPlayer.Backpack:FindFirstChild("Grenade") == nil then
           game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "Attention",     
Text = "You need have Grenade in your inventory",
Duration = 15, })
else
    wait(1)
        local tool = "Grenade"

for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") and v.Name == tool then
v.Parent = game:GetService("Players").LocalPlayer.Character
end
end
local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input, isProcessed)
if isProcessed then return end
if input.KeyCode == Enum.KeyCode.F then
    for c = 1,bbgwqqwe do
game:GetService("ReplicatedStorage").Event:FireServer("ThrowGrenade",Vector3.new(-1626.83398, 43.1575661, 689.200378))
end
end
end)

           game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "Attention",     
Text = "Add Bomb Amount To Script Work, Press F to Drop Bomb",
Duration = 15, })
for i = 1,100 do
for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
if v:IsA("Tool") or v:IsA("HopperBin") then
if v.Handle:FindFirstChild("Mesh") then v.Handle.Mesh:Destroy() end
v.Parent = game:GetService("Workspace")
end
end
end
end
end)

window1:Box("Bomb Amount", function(bwee, fochhusloseeet)
    if fochhusloseeet then
       bbgwqqwe = bwee
end
end)


window1:Label("1 Time Rob Scripts", Color3.fromRGB(127, 143, 166))

window1:Button("Bypass TP",function()
            game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "Bypass TP",     
Text = "Now Players Can't See you But you can Interact Objects and Teleport to Players",
Duration = 15, })
             game.Players.LocalPlayer.Character.HumanoidRootPart.Parent = nil
for i,v in pairs(getnilinstances()) do 
   if v.Name == "HumanoidRootPart" then
       v.Parent = game.Players.LocalPlayer.Character
   end
end
end)
window1:Button("Rob Smalls",function()
wait(2)
         game.Players.LocalPlayer.Character.HumanoidRootPart.Parent = nil
for i,v in pairs(getnilinstances()) do 
   if v.Name == "HumanoidRootPart" then
       v.Parent = game.Players.LocalPlayer.Character
   end
end

local busy = false
local busy_with = "busy_with"
local thing = "thing"
local busy_str = "Can't rob %s because you are busy with %s"
local not_finished = "Can't rob other things because the %s rob isn't finished"

local cashRegister = coroutine.wrap(function()
   while wait(2) do
   pcall(function()
   if busy == false then
  for i, v in pairs(workspace.ObjectSelection:GetChildren()) do
          if v.Name == "CashRegister" then
          local part = v:FindFirstChildOfClass("Part")
          if part.Name ~= "Nope" then
          busy = true
          busy_with = "cash registers"
          local pos = v.SmashCash.Position
                          for i = 1, math.random(5,10) do
                              wait(.1)
                              game.Players.LocalPlayer.Character.HumanoidRootPart.Position = pos
                          end
              wait(0.3)
              v.SmashCash.SmashCash.Event:FireServer()
              wait(2)
              if part.Name ~= "Nope" then
              warn(string.format(not_finished, "cash registers"))
              else
              busy = false
              end
          end  
          end
  end
else
   thing = "cash registers"
   warn(string.format(busy_str, thing, busy_with))
end    
   end)
   end
end)

local diamondBox = coroutine.wrap(function()
   while wait(2) do
   pcall(function()
   if busy == false then
  for i, v in pairs(workspace.ObjectSelection:GetChildren()) do
          if v.Name == "DiamondBox" then
          local part = v:FindFirstChildOfClass("Part")
          if part.Name ~= "Nope" then
          busy = true
          busy_with = "diamond boxes"
          local pos = v.SmashCash.Position
                          for i = 1, math.random(5,10) do
                              wait(.1)
                              game.Players.LocalPlayer.Character.HumanoidRootPart.Position = pos
                          end
              wait(0.3)
              v.SmashCash.SmashCash.Event:FireServer()
              wait(2)
              if part.Name ~= "Nope" then
              warn(string.format(not_finished, "diamond boxes"))
              else
              busy = false
              end
          end  
          end
  end
   else
   thing = "diamond boxes"
   warn(string.format(busy_str, thing, busy_with))
end    
   end)
   end
end)

local safe = coroutine.wrap(function()
   while wait(2) do
   pcall(function()
   if busy == false then
  for i, v in pairs(workspace.ObjectSelection:GetChildren()) do
          if v.Name == "Safe" then
          local part = v:FindFirstChildOfClass("Part")
          if part.Name ~= "Nope" then
          busy = true
          busy_with = "safes"
          local pos = v.SmashCash.Position
                          for i = 1, math.random(5,10) do
                              wait(.1)
                              game.Players.LocalPlayer.Character.HumanoidRootPart.Position = pos
                          end
              wait(0.3)
              v.SmashCash.SmashCash.Event:FireServer()
              wait(2)
              if part.Name ~= "Nope" then
              warn(string.format(not_finished, "safes"))
              else
              busy = false
              end
          end  
          end
  end
   else
   thing = "safes"
   warn(string.format(busy_str, thing, busy_with))
end    
   end)
   end
end)

local tipJar = coroutine.wrap(function()
   while wait(2) do
   pcall(function()
   if busy == false then
  for i, v in pairs(workspace.ObjectSelection:GetChildren()) do
          if v.Name == "TipJar" then
          local part = v:FindFirstChildOfClass("Part")
          if part.Name == "SmashCash" then
          busy = true
          busy_with = "tip jars"
          local pos = v.SmashCash.Position
                          for i = 1, math.random(5,10) do
                              wait(.1)
                              game.Players.LocalPlayer.Character.HumanoidRootPart.Position = pos
                          end
              wait(0.3)
              v.SmashCash.SmashCash.Event:FireServer()
              wait(2)
              if part.Name == "SmashCash" then
              warn(string.format(not_finished, "tip jars"))
              else
              busy = false
              end
          end  
          end
  end
   else
   thing = "tip jars"
   warn(string.format(busy_str, thing, busy_with))
end    
   end)
   end
end)

local cash = coroutine.wrap(function()
   while wait(2) do
   pcall(function()
   if busy == false then
  for i, v in pairs(workspace.ObjectSelection:GetChildren()) do
          if v.Name == "Cash" then
          local part = v:FindFirstChildOfClass("MeshPart")
          if part.Name == "Cash" then
          busy = true
          busy_with = "cash"
          local pos = v.Cash.Position
                          for i = 1, math.random(5,10) do
                              wait(.1)
                              game.Players.LocalPlayer.Character.HumanoidRootPart.Position = pos
                          end
              wait(0.3)
              v.Cash.Cash.Event:FireServer()
              wait(2)
              if part.Name == "Cash" then
              warn(string.format(not_finished, "cash"))
              else
              busy = false
              end
          end  
          end
  end
   else
   thing = "cash"
   warn(string.format(busy_str, thing, busy_with))
end    
   end)
   end
end)

local tv = coroutine.wrap(function()
   while wait(2) do
   pcall(function()
   if busy == false then
  for i, v in pairs(workspace.ObjectSelection:GetChildren()) do
          if v.Name == "TV" then
          local part = v:FindFirstChildOfClass("Part")
          if part.Name ~= "Nope" then
          busy = true
          busy_with = "TVs"
          local pos = v.StealTV.Position
                          for i = 1, math.random(5,10) do
                              wait(.1)
                              game.Players.LocalPlayer.Character.HumanoidRootPart.Position = pos
                          end
              wait(0.3)
              v.StealTV.StealTV.Event:FireServer()
              wait(2)
              if part.Name ~= "Nope" then
              warn(string.format(not_finished, "TVs"))
              else
              busy = false
              end
          end  
          end
  end
   else
   thing = "TVs"
   warn(string.format(busy_str, thing, busy_with))
end    
   end)
   end
end)

local dropCrate = coroutine.wrap(function()
   while wait(2) do
   pcall(function()
   if busy == false then
  for i, v in pairs(workspace.ObjectSelection:GetChildren()) do
          if v.Name == "DropCrate" then
          local part = v:FindFirstChildOfClass("Part")
          if part.Name ~= "Nope" then
          busy = true
          busy_with = "drop crates"
          local pos = v.DropCrate.Position
                          for i = 1, math.random(5,10) do
                              wait(.1)
                              game.Players.LocalPlayer.Character.HumanoidRootPart.Position = pos
                          end
              wait(0.3)
              v.DropCrate.DropCrate.Event:FireServer()
              wait(2)
              if part.Name ~= "Nope" then
              warn(string.format(not_finished, "drop crates"))
              else
              busy = false
              end
          end  
          end
  end
   else
   thing = "drop crates"
   warn(string.format(busy_str, thing, busy_with))
end    
   end)
   end
end)

local atm = coroutine.wrap(function()
   while wait(2) do
   pcall(function()
   if busy == false then
  for i, v in pairs(workspace.ObjectSelection:GetChildren()) do
          if v.Name == "ATM" then
          local part = v:FindFirstChildOfClass("Part")
          if part.Name ~= "Nope" then
          busy = true
          busy_with = "ATMs"
          local pos = v.ATM.Position
                          for i = 1, math.random(5,10) do
                              wait(.1)
                              game.Players.LocalPlayer.Character.HumanoidRootPart.Position = pos
                          end
              wait(0.3)
              v.ATM.ATM.Event:FireServer()
              wait(2)
              if part.Name ~= "Nope" then
              warn(string.format(not_finished, "ATMs"))
              else
              busy = false
              end
          end  
          end
  end
   else
   thing = "ATMs"
   warn(string.format(busy_str, thing, busy_with))
end    
   end)
   end
end)

cashRegister()
diamondBox()
safe()
tipJar()
cash()
tv()
atm()
end)



window1:Button("Bank",function()
    if game.ReplicatedStorage.HeistStatus.Bank.Locked.Value == true then
        game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "Bank Rob Script",     
Text = "Wait to Bank Open",
Duration = 15, })
else
    local function Bank()
              local _speed=1000
function tp(...)
   local plr=game.Players.LocalPlayer
   local args={...}
   if typeof(args[1])=="number"and args[2]and args[3]then
      args=Vector3.new(args[1],args[2],args[3])
   elseif typeof(args[1])=="Vector3" then
       args=args[1]    
   elseif typeof(args[1])=="CFrame" then
       args=args[1].Position
   end
   local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
   game:GetService("TweenService"):Create(
       plr.Character.HumanoidRootPart,
       TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
       {CFrame=CFrame.new(args)}
   ):Play()
end
 
  tp(653, 52, 477)
  wait(5)
  tp(660, 52, 487)
  wait(2)
tp(732, 52, 540)
wait(2)
tp(678, 52, 599)
wait(2)
tp(710, 54, 639)
wait(2)
tp(722, 60, 636)
wait(2)
tp(744, 71, 627)
wait(2)
tp(755, 77, 615)
wait(1)
tp(657, 110, 617)
wait(2)
tp(705, 110, 544)
wait(10)
tp(724, 110, 534)
wait(40)
tp(653, 52, 477)
wait(1)
tp(758, 77, 622)
wait(2)
tp(2075, 26, 397) -- criminal base 
end
Bank()
end
end)







window1:Button("Plane",function()
    if game.Workspace.CargoPlane.Plane == nil then
        game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "Plane Rob Script",     
Text = "Wait to Plane Come",
Duration = 15, })
    else
    local _speed=1000
function tp(...)
   local plr=game.Players.LocalPlayer
   local args={...}
   if typeof(args[1])=="number"and args[2]and args[3]then
      args=Vector3.new(args[1],args[2],args[3])
   elseif typeof(args[1])=="Vector3" then
       args=args[1]    
   elseif typeof(args[1])=="CFrame" then
       args=args[1].Position
   end
   local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
   game:GetService("TweenService"):Create(
       plr.Character.HumanoidRootPart,
       TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
       {CFrame=CFrame.new(args)}
   ):Play()
end
tp(game.Workspace.CargoPlane.Plane.Tele1.Position)
wait(1)
tp(game.Workspace.CargoPlane.Plane.Tele1.Position)

 for i, v in pairs(workspace.ObjectSelection:GetChildren()) do
          if v.Name == "PlaneCrate" then
          local part = v:FindFirstChildOfClass("Part")
          local pos = v.PlaneCrate.Position
                          for i = 0,2 do
                              wait(.1)
                              game.Players.LocalPlayer.Character.HumanoidRootPart.Position = pos
                          end
              wait(0.3)
              v.PlaneCrate.PlaneCrate.Event:FireServer()
                            repeat
                 wait()
               until game.Players.LocalPlayer.PlayerGui.MainGUI.StatsHUD.CashBagHUD.Cash.Amount.Text == "4"
              wait(2)
              wait(2)
              end
          end
              wait(1)
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(232, 51061, 598)
              wait(1)
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(227, 51074, 695)
              wait(1)
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(236, 51091, 536)
             wait(1)

for i, v in pairs(workspace.ObjectSelection:GetChildren()) do
          if v.Name == "HackKeypad" then
          local part = v:FindFirstChildOfClass("Part")
          if part.Name ~= "Nope" then
          local pos = v.HackKeypad.Position
                          for i = 1,2 do
                              wait(.1)
                              game.Players.LocalPlayer.Character.HumanoidRootPart.Position = pos
                          end
              wait(0.3)
              v.HackKeypad.HackKeypad.Event:FireServer()
              wait(2)
          end
          end
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(232.338531, 51095.75, 513.972473, 1, 0, 0, 0, 1, 0, 0, 0, 1)
wait(1)
workspace.ObjectSelection.PlaneButton.PlaneButton.PlaneButton.Event:FireServer()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(231.832428, 51067.2266, 489.710938, 1, 0, 0, 0, 1, 0, 0, 0, 1)
wait(2)
tp(2062, 26, 429)
wait(2)
tp(2101, 27, 426)
end
end)





window1:Button("Pyramid",function()
if game.ReplicatedStorage.HeistStatus.Pyramid.Locked.Value == true then
            game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "Pyramid Rob Script",     
Text = "Wait to Pyramid Open For Rob",
Duration = 10, })
else
local _speed=1999
function tp(...)
   local plr=game.Players.LocalPlayer
   local args={...}
   if typeof(args[1])=="number"and args[2]and args[3]then
      args=Vector3.new(args[1],args[2],args[3])
   elseif typeof(args[1])=="Vector3" then
       args=args[1]    
   elseif typeof(args[1])=="CFrame" then
       args=args[1].Position
   end
   local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
   game:GetService("TweenService"):Create(
       plr.Character.HumanoidRootPart,
       TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
       {CFrame=CFrame.new(args)}
   ):Play()
end


tp(-1047.58899, 18.2789993, -479.790009, 1, 0, 0, 0, 1, 0, 0, 0, 1)
wait(3)
tp(1233, 51046, 428)
wait(1)
tp(1234, 51054, 444)
wait(.50)
tp(1209, 51053, 500)
wait(1)
tp(1180, 51059, 455)
wait(1)
tp(995, 51077, 499)
wait(1)
tp(997, 51073, 547)
for i, v in pairs(workspace.ObjectSelection:GetChildren()) do
          if v.Name == "TreasurePyramid" then
          local part = v:FindFirstChildOfClass("Part")
          local pos = v.TreasurePyramid.Position
                          for i = 1, math.random(3,10) do
                              wait(.1)
                              game.Players.LocalPlayer.Character.HumanoidRootPart.Position = pos
                          end
              wait(0.3)
              v.TreasurePyramid.TreasurePyramid.Event:FireServer()
          end
          
end
end
tp(-1053, 18, -508)
wait(2)
tp(-84, 27, 794)
wait(1)
tp(1230, 51052, 438)
wait(2)
tp(1231.14185, 51051.2344, 381.096191, -1, 0, 0, 0, 1, 0, 0, 0, -1)
wait(2)
tp(-1012, 21, -519)
wait(5)
tp(1997, 26, 420)
wait(2)
tp(2065, 26, 428)
wait(2)
tp(2086, 27, 435)
wait(1)
tp(2059, 26, 433)
wait(1)
tp(2059, 26, 433)
wait(1)
tp(2059, 26, 433)
end)



window1:Button("Ship",function()
    if game.Workspace.Ship.Boat.Vault == nil then
        game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "Ship Rob Script",     
Text = "Wait to Ship Come",
Duration = 15, })
else
                 local _speed=2000
function tp(...)
   local plr=game.Players.LocalPlayer
   local args={...}
   if typeof(args[1])=="number"and args[2]and args[3]then
      args=Vector3.new(args[1],args[2],args[3])
   elseif typeof(args[1])=="Vector3" then
       args=args[1]    
   elseif typeof(args[1])=="CFrame" then
       args=args[1].Position
   end
   local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
   game:GetService("TweenService"):Create(
       plr.Character.HumanoidRootPart,
       TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
       {CFrame=CFrame.new(args)}
   ):Play()
end


tp(2471, 42, 267)
wait(6)
tp(2488, 51, 205)   
wait(2)
tp(2502, 67, 256)
wait(2)
tp(2514, 62, 246)
wait(1)
tp(2510, 81, 326)
wait(10)
tp(2510, 82, 340)
wait(3)
tp(2517, 81, 333)
wait(25)
tp(2327, 26, 298)
wait(3)
tp(1976, 26, 345)
wait(3)
tp(2065, 27, 427)
wait(3)
tp(2076, 26, 427)
end
end)




















library:Keybind("Q")    