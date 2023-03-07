--[[
Lucky Block Admin V.1

Lucky Block is the best suggested game for this

Reset or retry if it doesn't work because it needs to search for a gear.
--]]

local plr = game.Players.LocalPlayer

local prefix = ";"
local cht

local char = plr.Character or plr.Character.Added:Wait()

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Punish = Instance.new("TextBox")
local SilentCMD = Instance.new("TextBox")
local SilentCM = Instance.new("TextBox")
local Scale = Instance.new("TextBox")
local SilentC = Instance.new("TextButton")
local X = Instance.new("TextButton")
local plr = game:GetService("Players").LocalPlayer

ScreenGui.Parent = game.CoreGui
ScreenGui.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.new(0.333333, 0.666667, 0.498039)
Main.BorderSizePixel = 4
Main.Position = UDim2.new(0.117575757, 0, 0.152334154, 0)
Main.Size = UDim2.new(0, 334, 0, 180)
Main.Active = true
Main.Draggable = true
Main.Visible = false

Punish.Name = "Punish"
Punish.Parent = Main
Punish.BackgroundColor3 = Color3.new(0.168627, 0.513726, 0.25098)
Punish.BorderColor3 = Color3.new(0.168627, 0.513726, 0.25098)
Punish.Position = UDim2.new(0.0209580846, 0, 0.094202876, 0)
Punish.Size = UDim2.new(0, 162, 0, 50)
Punish.Font = Enum.Font.GothamBlack
Punish.PlaceholderText = "MeshId"
Punish.Text = ""
Punish.TextColor3 = Color3.new(1, 1, 1)
Punish.TextSize = 14
Punish.TextStrokeColor3 = Color3.new(1, 1, 1)

Scale.Name = "Scale"
Scale.Parent = Main
Scale.BackgroundColor3 = Color3.new(0.168627, 0.513726, 0.25098)
Scale.BorderColor3 = Color3.new(0.168627, 0.513726, 0.25098)
Scale.Position = UDim2.new(0.0209580846, 0, 0.394202876, 0)
Scale.Size = UDim2.new(0, 162, 0, 50)
Scale.Font = Enum.Font.GothamBlack
Scale.PlaceholderText = "Mesh Scale"
Scale.Text = "1,1,1"
Scale.TextColor3 = Color3.new(1, 1, 1)
Scale.TextSize = 14
Scale.TextStrokeColor3 = Color3.new(1, 1, 1)

SilentCMD.Name = "SilentCMD"
SilentCMD.Parent = Main
SilentCMD.BackgroundColor3 = Color3.new(0.168627, 0.513726, 0.25098)
SilentCMD.BorderColor3 = Color3.new(0.168627, 0.513726, 0.25098)
SilentCMD.Position = UDim2.new(0.514970064, 0, 0.094202876, 0)
SilentCMD.Size = UDim2.new(0, 152, 0, 50)
SilentCMD.Font = Enum.Font.GothamBlack
SilentCMD.PlaceholderText = "Mesh Texture"
SilentCMD.Text = ""
SilentCMD.TextColor3 = Color3.new(1, 1, 1)
SilentCMD.TextSize = 14
SilentCMD.TextStrokeColor3 = Color3.new(1, 1, 1)

SilentCM.Name = "SilentC"
SilentCM.Parent = Main
SilentCM.BackgroundColor3 = Color3.new(0.168627, 0.513726, 0.25098)
SilentCM.BorderColor3 = Color3.new(0.168627, 0.513726, 0.25098)
SilentCM.Position = UDim2.new(0.514970064, 0, 0.394202876, 0)
SilentCM.Size = UDim2.new(0, 152, 0, 50)
SilentCM.Font = Enum.Font.GothamBlack
SilentCM.PlaceholderText = "Mesh Position"
SilentCM.Text = "0,0,0"
SilentCM.TextColor3 = Color3.new(1, 1, 1)
SilentCM.TextSize = 14
SilentCM.TextStrokeColor3 = Color3.new(1, 1, 1)

SilentC.Name = "SilentC"
SilentC.Parent = Main
SilentC.BackgroundColor3 = Color3.new(0.168627, 0.513726, 0.25098)
SilentC.BorderColor3 = Color3.new(0.168627, 0.513726, 0.25098)
SilentC.Position = UDim2.new(0.280070064, 0, 0.694202876, 0)
SilentC.Size = UDim2.new(0, 152, 0, 50)
SilentC.Font = Enum.Font.GothamBlack
SilentC.Text = "Generate Mesh"
SilentC.TextColor3 = Color3.new(1, 1, 1)
SilentC.TextSize = 14
SilentC.TextStrokeColor3 = Color3.new(1, 1, 1)

X.Name = "X"
X.Parent = Main
X.BackgroundColor3 = Color3.new(0.168627, 0.513726, 0.25098)
X.BorderColor3 = Color3.new(0.168627, 0.513726, 0.25098)
X.BorderSizePixel = 0
X.Position = UDim2.new(0.952095807, 0, 0, 0)
X.Size = UDim2.new(0, 16, 0, 16)
X.Font = Enum.Font.SourceSans
X.Text = "X"
X.TextColor3 = Color3.new(1, 1, 1)
X.TextScaled = true
X.TextSize = 14
X.TextWrapped = true

X.MouseButton1Click:Connect(function()
Main.Visible = false
end)

SilentC.MouseButton1Click:Connect(function()
local chr = plr.Character or plr.CharacterAdded:Wait()
function CloudInvok(Object, Prop, Value)
chr:FindFirstChild("PompousTheCloud")['ServerControl']:InvokeServer(
"SetProperty",
{["Value"]=Value,
["Property"]=Prop,
["Object"]=Object
})
end

repeat wait()
game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
until plr.Backpack:FindFirstChild'PompousTheCloud' ~= nil
if plr.Backpack:FindFirstChild("PompousTheCloud") then
plr.Backpack.PompousTheCloud.Parent = chr
task.wait(1)
CloudInvok(chr.PompousTheCloud,"ManualActivationOnly",true)
CloudInvok(chr.PompousTheCloud.Handle,"Massless",true)

CloudInvok(chr.PompousTheCloud.Handle.Mesh,"MeshId","rbxassetid://"..Punish.Text)

local strscale = Scale.Text
local strgrip = SilentCM.Text
local strscaletab = {}
local strgriptab = {}
for s in string.gmatch(strscale,"[^,]+") do
table.insert(strscaletab,tonumber(s))
end
for x in string.gmatch(strgrip,"[^,]+") do
table.insert(strgriptab,tonumber(x))
end

CloudInvok(chr.PompousTheCloud.Handle.Mesh,"Scale",Vector3.new(unpack(strscaletab)))
CloudInvok(chr.PompousTheCloud.Handle.Mesh,"TextureId","rbxassetid://"..SilentCMD.Text)
CloudInvok(chr.PompousTheCloud,"Grip",CFrame.new(unpack(strgriptab)))
CloudInvok(chr.Humanoid,"MaxHealth",9e24)
task.wait(0.7)
CloudInvok(chr.Humanoid,"Health",9e24)
end
end)

function mOut(txt, type)
if type == 1 then
spawn(function()
local m = Instance.new("Message", game.CoreGui)
m.Text = txt
task.wait(3)
m:Destroy()
end)
elseif type == 2 then
spawn(function()
local h = Instance.new("Hint", game.CoreGui)
h.Text = txt
task.wait(3)
h:Destroy()
end)
end
end

cht = plr.Chatted:Connect(function(msg)
local chr = plr.Character
function CloudInvoke(Object, Prop, Value)
chr:FindFirstChild("PompousTheCloud")['ServerControl']:InvokeServer(
"SetProperty",
{["Value"]=Value,
["Property"]=Prop,
["Object"]=Object
})
end
function Delete()
for i, x in pairs(plr.Backpack:GetDescendants()) do
if x:IsA("Tool") then
if x.Name ~= "PompousTheCloud" then
x:Destroy()
end
end
end
end
function DeleteCloud()
for i, x in pairs(chr:GetDescendants()) do
if x:IsA("Tool") then
if x.Name == "PompousTheCloud" and x ~= nil then
x:Destroy()
end
end
end
for i, x in pairs(plr.Backpack:GetDescendants()) do
if x:IsA("Tool") then
if x.Name == "PompousTheCloud" and x ~= nil then
x:Destroy()
end
end
end
end
if msg:sub(1,5) == prefix.."cmds" then
game.StarterGui:SetCore("DevConsoleVisible", true)
print([[

Everytime you use commands you must reset or it will break the remote that it is abusing please listen carefully (Fedoratum Words)

List Of Commands

(prefix) means the first symbol called
(lines) means can be stopped or started

prefix(stopadmin) (Stops the admin and remove it entirely if there a reason that it breaks but you can reset it)

prefix(morph) (makes you morph into whatever there is on morphlist)

prefix(un-god) (makes your health 9e24)

prefix(in-visible) (makes you transparent)

prefix(morphlist) (prints all of the morphs you can morph into)

prefix(sky [textureID or ImageID]) (makes the skybox illusionized as any image)

prefix(mapblock) (pushes everyone off the map and lag the server a bit)

prefix(size [number]) (makes your body the desired size, can break)

prefix(dropmoddedtool) (drops your modded tools and give it away and the second string means anyone can pick it up or not)

prefix(mesheditor) (Will pop up a GUI that will make you edit your gear mesh)

]])
elseif msg:sub(1,10) == prefix.."invisible" then
repeat wait()
game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
until plr.Backpack:FindFirstChild'PompousTheCloud' ~= nil
if plr.Backpack:FindFirstChild("PompousTheCloud") then
Delete()
plr.Backpack.PompousTheCloud.Parent = chr
task.wait(1)
CloudInvoke(chr.PompousTheCloud,"ManualActivationOnly",true)
for i, v in pairs(chr:GetDescendants()) do
if v:IsA("BasePart") then
if v.Name ~= "HumanoidRootPart" then
CloudInvoke(v,"Transparency", 1)
end
end
end
for i, v in pairs(chr.Head:GetDescendants()) do
 if v.className == "Decal" or v.className == "Texture" then 
  CloudInvoke(v,"Transparency",1)
 end
end
task.wait(0.7)
DeleteCloud()
end
elseif msg:sub(1,8) == prefix.."visible" then
DeleteCloud()
Delete()
task.wait(0.6)
repeat wait()
game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
until plr.Backpack:FindFirstChild'PompousTheCloud' ~= nil
if plr.Backpack:FindFirstChild("PompousTheCloud") then
Delete()
plr.Backpack.PompousTheCloud.Parent = chr
task.wait(1)
CloudInvoke(chr.PompousTheCloud,"ManualActivationOnly",true)
for i, v in pairs(chr:GetDescendants()) do
if v:IsA("BasePart") then
if v.Name ~= "HumanoidRootPart" then
CloudInvoke(v,"Transparency", 0)
end
end
end
for i, v in pairs(chr.Head:GetDescendants()) do
 if v.className == "Decal" or v.className == "Texture" then 
  CloudInvoke(v,"Transparency",0)
 end
end
task.wait(0.7)
DeleteCloud()
end
elseif msg:sub(1,4) == prefix.."god" then
DeleteCloud()
Delete()
task.wait(0.6)
repeat wait()
game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
until plr.Backpack:FindFirstChild'PompousTheCloud' ~= nil
if plr.Backpack:FindFirstChild("PompousTheCloud") then
Delete()
plr.Backpack.PompousTheCloud.Parent = chr
task.wait(0.8)
CloudInvoke(chr.PompousTheCloud,"ManualActivationOnly",true)
CloudInvoke(chr.Humanoid,"MaxHealth",9e24)
task.wait(1)
CloudInvoke(chr.Humanoid,"Health",9e24)
task.wait(0.8)
DeleteCloud()
end

elseif msg:sub(1,6) == prefix.."ungod" then
DeleteCloud()
Delete()
task.wait(0.6)
repeat wait()
game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
until plr.Backpack:FindFirstChild'PompousTheCloud' ~= nil
if plr.Backpack:FindFirstChild("PompousTheCloud") then
Delete()
plr.Backpack.PompousTheCloud.Parent = chr
task.wait(0.8)
CloudInvoke(chr.PompousTheCloud,"ManualActivationOnly",true)
CloudInvoke(chr.Humanoid,"MaxHealth",100)
task.wait(1)
CloudInvoke(chr.Humanoid,"Health",100)
task.wait(0.8)
DeleteCloud()
end
elseif msg:sub(1,4) == prefix.."sky" then
DeleteCloud()
Delete()
task.wait(0.6)
repeat wait()
game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
until plr.Backpack:FindFirstChild'PompousTheCloud' ~= nil
if plr.Backpack:FindFirstChild("PompousTheCloud") then
Delete()
plr.Backpack.PompousTheCloud.Parent = chr
task.wait(1)
CloudInvoke(chr.PompousTheCloud,"ManualActivationOnly",true)
CloudInvoke(chr.PompousTheCloud.Handle,"Transparency",0)
CloudInvoke(chr.PompousTheCloud.Handle,"Massless",true)
CloudInvoke(chr.PompousTheCloud.Handle.Mesh,"MeshId","rbxassetid://230850974")
CloudInvoke(chr.PompousTheCloud.Handle.Mesh,"Scale",Vector3.new(500,500,-500))
CloudInvoke(chr.PompousTheCloud.Handle.Mesh,"TextureId","rbxassetid://"..tostring(msg:sub(6)))
CloudInvoke(chr.Humanoid,"MaxHealth",9e24)
task.wait(1)
CloudInvoke(chr.Humanoid,"Health",9e24)
end
elseif msg:sub(1,9) == prefix.."mapblock" then
DeleteCloud()
Delete()
task.wait(0.6)
repeat wait()
game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
until plr.Backpack:FindFirstChild'PompousTheCloud' ~= nil
if plr.Backpack:FindFirstChild("PompousTheCloud") then
Delete()
plr.Backpack.PompousTheCloud.Parent = chr
task.wait(1)
CloudInvoke(chr.PompousTheCloud,"ManualActivationOnly",true)
CloudInvoke(chr.PompousTheCloud.Handle,"Anchored",true)
CloudInvoke(chr.PompousTheCloud.Handle,"Size",Vector3.new(5000,5000,5000))
CloudInvoke(chr.PompousTheCloud.Handle,"CanCollide",true)
task.wait(1)
chr.Humanoid.Health = 0
end
elseif msg:sub(1,10) == prefix.."morphlist" then
game.StarterGui:SetCore("DevConsoleVisible", true)
print([[
animegirl (Genshin Impact Character)
bacon (A Bacon Hair character)
dog (A German Shepherd Dog) (Special Effect Running Faster)
titan (Attack On Titan, Armored Titan) (Special Effect Jumping Higher and Running Faster)
tank (A tank from Spongebob cartoon) (Special Effect Drifting)
]])
elseif msg:sub(1,10) == prefix.."stopadmin" then
mOut("Stopped Admin", 2)
cht:Disconnect()
ScreenGui:Destroy()
elseif msg:sub(1,15) == prefix.."dropmoddedtool" then
if chr:FindFirstChild("PompousTheCloud") then
CloudInvoke(chr.PompousTheCloud,"CanBeDropped", true)
CloudInvoke(chr.PompousTheCloud,"TextureId","rbxassetid://6862780932")
CloudInvoke(chr.PompousTheCloud,"ToolTip","I gave you this tool, you may use it.")
task.wait(0.7)
CloudInvoke(chr.PompousTheCloud,"Parent",game.Workspace)
end
elseif msg:sub(1,5) == prefix.."size" then
local gs = tostring(msg:sub(7))
DeleteCloud()
Delete()
task.wait(0.6)
repeat wait()
game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
until plr.Backpack:FindFirstChild'PompousTheCloud' ~= nil
if plr.Backpack:FindFirstChild("PompousTheCloud") then
Delete()
plr.Backpack.PompousTheCloud.Parent = chr
task.wait(1)
for i, v in pairs(chr:GetDescendants()) do
if v:IsA("BasePart") then
if v.Name ~= "HumanoidRootPart" then
CloudInvoke(v,"Size", Vector3.new(gs,gs,gs))
end
end
end
end
elseif msg:sub(1,11) == prefix.."mesheditor" then
Main.Visible = true
elseif msg:sub(1,6) == prefix.."morph" then
if tostring(msg:sub(8)) == "bacon" then
DeleteCloud()
Delete()
task.wait(0.6)
repeat wait()
game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
until plr.Backpack:FindFirstChild'PompousTheCloud' ~= nil
if plr.Backpack:FindFirstChild("PompousTheCloud") then
Delete()
plr.Backpack.PompousTheCloud.Parent = chr
task.wait(1)
CloudInvoke(chr.PompousTheCloud,"ManualActivationOnly",true)
for i, v in pairs(chr:GetDescendants()) do
if v:IsA("BasePart") then
CloudInvoke(v,"Transparency", 1)
end
end
for i, v in pairs(chr.Head:GetDescendants()) do
 if v.className == "Decal" or v.className == "Texture" then 
  CloudInvoke(v,"Transparency",1)
 end
end
task.wait(0.7)

CloudInvoke(chr.PompousTheCloud.Handle,"Transparency",0)
CloudInvoke(chr.PompousTheCloud.Handle,"Massless",true)
CloudInvoke(chr.PompousTheCloud.Handle.Mesh,"MeshId","rbxassetid://1766745563")
CloudInvoke(chr.PompousTheCloud.Handle.Mesh,"Scale",Vector3.new(1,1,1))
CloudInvoke(chr.PompousTheCloud.Handle.Mesh,"TextureId","rbxassetid://1701719148")
CloudInvoke(chr.PompousTheCloud,"Grip",CFrame.Angles(0,math.rad(90),0) + Vector3.new(-1,0.8,-1.5))
CloudInvoke(chr.Humanoid,"MaxHealth",9e24)
task.wait(1)
CloudInvoke(chr.Humanoid,"Health",9e24)
end
elseif tostring(msg:sub(8)) == "animegirl" then
DeleteCloud()
Delete()
task.wait(0.6)
repeat wait()
game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
until plr.Backpack:FindFirstChild'PompousTheCloud' ~= nil
if plr.Backpack:FindFirstChild("PompousTheCloud") then
plr.Backpack.PompousTheCloud.Parent = chr
Delete()
task.wait(1)
CloudInvoke(chr.PompousTheCloud,"ManualActivationOnly",true)
for i, v in pairs(chr:GetDescendants()) do
if v:IsA("BasePart") then
CloudInvoke(v,"Transparency", 1)
end
end
for i, v in pairs(chr.Head:GetDescendants()) do
 if v.className == "Decal" or v.className == "Texture" then 
  CloudInvoke(v,"Transparency",1)
 end
end
task.wait(0.7)

CloudInvoke(chr.PompousTheCloud.Handle,"Transparency",0)
CloudInvoke(chr.PompousTheCloud.Handle,"Massless",true)
CloudInvoke(chr.PompousTheCloud.Handle.Mesh,"MeshId","rbxassetid://7262213072")
CloudInvoke(chr.PompousTheCloud.Handle.Mesh,"Scale",Vector3.new(0.5,0.5,0.5))
CloudInvoke(chr.PompousTheCloud.Handle.Mesh,"TextureId","rbxassetid://7262215836")
CloudInvoke(chr.PompousTheCloud,"Grip",CFrame.new(1.6,-1.3,-1.7))
CloudInvoke(chr.Humanoid,"MaxHealth",9e24)
task.wait(1)
CloudInvoke(chr.Humanoid,"Health",9e24)
end
elseif tostring(msg:sub(8)) == "dog" then
DeleteCloud()
Delete()
task.wait(0.6)
repeat wait()
game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
until plr.Backpack:FindFirstChild'PompousTheCloud' ~= nil

if plr.Backpack:FindFirstChild("PompousTheCloud") then
plr.Backpack.PompousTheCloud.Parent = chr
task.wait(1)
CloudInvoke(chr.PompousTheCloud,"ManualActivationOnly",true)
for i, v in pairs(chr:GetDescendants()) do
if v:IsA("BasePart") then
if v.Name ~= "HumanoidRootPart" then
CloudInvoke(v,"Transparency", 1)
end
end
end
for i, v in pairs(chr.Head:GetDescendants()) do
 if v.className == "Decal" or v.className == "Texture" then 
  CloudInvoke(v,"Transparency",1)
 end
end
task.wait(0.7)

CloudInvoke(chr.PompousTheCloud.Handle,"Transparency",0)
CloudInvoke(chr.PompousTheCloud.Handle,"Massless",true)
CloudInvoke(chr.PompousTheCloud.Handle.Mesh,"MeshId","rbxassetid://432602064")
CloudInvoke(chr.PompousTheCloud.Handle.Mesh,"Scale",Vector3.new(0.06,0.06,0.06))
CloudInvoke(chr.PompousTheCloud.Handle.Mesh,"TextureId","rbxassetid://432602074")
CloudInvoke(chr.PompousTheCloud,"Grip",CFrame.Angles(0,math.rad(180),0) + Vector3.new(-1.5,1.5,1))
chr.Humanoid.WalkSpeed = 50
CloudInvoke(chr.Humanoid,"MaxHealth",9e24)
task.wait(1)
CloudInvoke(chr.Humanoid,"Health",9e24)
end
elseif tostring(msg:sub(8)) == "titan" then
DeleteCloud()
Delete()
task.wait(0.6)
repeat wait()
game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
until plr.Backpack:FindFirstChild'PompousTheCloud' ~= nil

if plr.Backpack:FindFirstChild("PompousTheCloud") then
plr.Backpack.PompousTheCloud.Parent = chr
task.wait(1)
CloudInvoke(chr.PompousTheCloud,"ManualActivationOnly",true)
for i, v in pairs(chr:GetDescendants()) do
if v:IsA("BasePart") then
CloudInvoke(v,"Transparency", 1)
end
end
for i, v in pairs(chr.Head:GetDescendants()) do
 if v.className == "Decal" or v.className == "Texture" then 
  CloudInvoke(v,"Transparency",1)
 end
end
task.wait(0.7)

CloudInvoke(chr.PompousTheCloud.Handle,"Transparency",0)
CloudInvoke(chr.PompousTheCloud.Handle,"Massless",true)
CloudInvoke(chr.PompousTheCloud.Handle.Mesh,"MeshId","rbxassetid://891077308")
CloudInvoke(chr.PompousTheCloud.Handle.Mesh,"Scale",Vector3.new(0.5,0.5,0.5))
CloudInvoke(chr.PompousTheCloud.Handle.Mesh,"TextureId","rbxassetid://891077835")
CloudInvoke(chr.PompousTheCloud,"Grip",CFrame.new(0,3,0))
chr.Humanoid.HipHeight = 36.98
chr.Humanoid.JumpPower = 150
chr.Humanoid.WalkSpeed = 50
CloudInvoke(chr.Humanoid,"MaxHealth",9e24)
task.wait(1)
CloudInvoke(chr.Humanoid,"Health",9e24)
end
elseif tostring(msg:sub(8)) == "tank" then
DeleteCloud()
Delete()
task.wait(0.7)
repeat wait()
game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
until plr.Backpack:FindFirstChild'PompousTheCloud' ~= nil

if plr.Backpack:FindFirstChild("PompousTheCloud") then
plr.Backpack.PompousTheCloud.Parent = chr
task.wait(1)
CloudInvoke(chr.PompousTheCloud,"ManualActivationOnly",true)
for i, v in pairs(chr:GetDescendants()) do
if v:IsA("BasePart") then
if v.Name ~= "HumanoidRootPart" then
CloudInvoke(v,"Transparency", 1)
end
end
end
for i, v in pairs(chr.Head:GetDescendants()) do
 if v.className == "Decal" or v.className == "Texture" then 
  CloudInvoke(v,"Transparency",1)
 end
end
for i, v in pairs(chr:GetDescendants()) do
if v.className == "Part" then CloudInvoke(v,"CustomPhysicalProperties",PhysicalProperties.new(0.04,0,0))
 end
end
task.wait(0.7)

CloudInvoke(chr.PompousTheCloud.Handle,"Transparency",0)
CloudInvoke(chr.PompousTheCloud.Handle,"Massless",true)
CloudInvoke(chr.PompousTheCloud.Handle.Mesh,"MeshId","rbxassetid://5443255278")
CloudInvoke(chr.PompousTheCloud.Handle.Mesh,"Scale",Vector3.new(2,2,2))
CloudInvoke(chr.PompousTheCloud.Handle.Mesh,"TextureId","rbxassetid://5443255507")
CloudInvoke(chr.PompousTheCloud,"Grip",CFrame.new(2,-3.2,0))
chr.Humanoid.WalkSpeed = 50
chr.Humanoid.JumpPower = 0
CloudInvoke(chr.Humanoid,"MaxHealth",9e24)
task.wait(1)
CloudInvoke(chr.Humanoid,"Health",9e24)
end

end

end
end)

mOut("Type ;cmds to see commands", 2)