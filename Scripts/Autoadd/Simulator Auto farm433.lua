--[[
-----------------------
Description:

This is pretty self explanatory, basically just walk up to rocks or trees with the auras on
and you should destroy them pretty quickly

The autosell will autosell when you are half from max

I would suggest using a tp script to get to place to place
-----------------------
Game:

https://www.roblox.com/games/1405116413/BUILDING-Pirate-Simulator
-----------------------
Credits:

GUI ~ brianops1

Scripter(s) ~ brianops1
-----------------------
Scripts:
--]]
plr = game:GetService('Players').LocalPlayer
Root = plr.Character.HumanoidRootPart
--[[

--~ Copy Vector3 (setclipboard function) ~--


plr = game:GetService('Players').LocalPlayer
Root = plr.Character.HumanoidRootPart
function loc(A)
location = string.find(A, ".",0,true)
return string.sub(A, 0,location - 1)
end
function copy()
setclipboard(loc(x) .. ", " .. loc(y) .. ", " .. loc(z))
end

x = Root.CFrame.x
y = Root.CFrame.y
z = Root.CFrame.z
print('-----------------')
print('Your x value is '.. loc(x)) 
print('Your y value is '.. loc(y)) 
print('Your z value is '.. loc(z)) 
pcall(copy)




--~ Baseplate Teleport ~--


Height = 5000 --this is how high up the plate will be
SizeX = 60 --this is how big the X axis will be for the part
SizeY = 60 --this is how big the Y axis will be for the part
--Execute once to make the baseplate, execute again to delete and teleport back

plr = game:GetService('Players').LocalPlayer
Root = plr.Character.HumanoidRootPart
local check = game.Workspace:FindFirstChild("BRIAN'S PLATFORM")
if check then
Root.CFrame = _G.StartingPosition
check:Destroy()
else
_G.StartingPosition = Root.CFrame
local P = Instance.new("Part", workspace)
P.Anchored = true
P.CFrame = Root.CFrame * CFrame.new(0, Height, 0)
P.Name = "BRIAN'S PLATFORM"
P.Size = Vector3.new(SizeX, 1, SizeY)
Root.CFrame = P.CFrame * CFrame.new(0,5,0)
end


--]]


print('Loading')
UIS = game:GetService("UserInputService")
mouse = plr:GetMouse()
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Game = Instance.new("TextLabel")
local Minimize = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local Credit = Instance.new("TextLabel")
local B1 = Instance.new("TextButton")
local L1 = Instance.new("TextLabel")
local B2 = Instance.new("TextButton")
local L2 = Instance.new("TextLabel")
local B3 = Instance.new("TextButton")
local L3 = Instance.new("TextLabel")
local B4 = Instance.new("TextButton")
local L4 = Instance.new("TextLabel")
local B5 = Instance.new("TextButton")
local L5 = Instance.new("TextLabel")
local B6 = Instance.new("TextButton")
local L6 = Instance.new("TextLabel")
local B7 = Instance.new("TextButton")
local L7 = Instance.new("TextLabel")
local B8 = Instance.new("TextButton")
local L8 = Instance.new("TextLabel")
function VarOff()
_G.on1 = 0
_G.on2 = 0
_G.on3 = 0
_G.on4 = 0
_G.on5 = 0
_G.on6 = 0
_G.on7 = 0
_G.on8 = 0
end
VarOff()
ScreenGui.Parent = game.CoreGui
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.219608, 0.572549, 1)
Frame.BackgroundTransparency = 0.69999998807907
Frame.BorderColor3 = Color3.new(1, 1, 1)
Frame.Position = UDim2.new(0, 191, 0, 102)
Frame.Size = UDim2.new(0, 295, 0, 270)
Frame.Active = true
Frame.Selectable = true
Frame.Draggable = true
Game.Name = "Game"
Game.Parent = Frame
Game.BackgroundColor3 = Color3.new(1, 1, 1)
Game.BackgroundTransparency = 0.69999998807907
Game.BorderColor3 = Color3.new(1, 1, 1)
Game.BorderSizePixel = 0
Game.Size = UDim2.new(0, 245, 0, 25)
Game.Font = Enum.Font.SourceSans
Game.Text = ""
Game.TextColor3 = Color3.new(0, 0, 0)
Game.TextSize = 14
Minimize.Name = "Minimize"
Minimize.Parent = Frame
Minimize.BackgroundColor3 = Color3.new(1, 1, 1)
Minimize.BackgroundTransparency = 0.69999998807907
Minimize.BorderColor3 = Color3.new(1, 1, 1)
Minimize.BorderSizePixel = 0
Minimize.Position = UDim2.new(0, 245, 0, 0)
Minimize.Size = UDim2.new(0, 25, 0, 25)
Minimize.Font = Enum.Font.SourceSans
Minimize.Text = "-"
Minimize.TextColor3 = Color3.new(0, 0, 0)
Minimize.TextSize = 14
Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.new(1, 1, 1)
Close.BackgroundTransparency = 0.69999998807907
Close.BorderColor3 = Color3.new(0.87451, 0.87451, 0.87451)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0, 270, 0, 0)
Close.Size = UDim2.new(0, 25, 0, 25)
Close.Font = Enum.Font.SourceSans
Close.Text = "x"
Close.TextColor3 = Color3.new(0, 0, 0)
Close.TextSize = 14
Credit.Name = "Credit"
Credit.Parent = Frame
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 0.80000001192093
Credit.BorderColor3 = Color3.new(1, 1, 1)
Credit.Position = UDim2.new(0, 0, 0, 245)
Credit.Size = UDim2.new(0, 295, 0, 25)
Credit.Font = Enum.Font.SourceSans
Credit.Text = "GUI ~ brianops1 | Scipter(s) ~ "
Credit.TextColor3 = Color3.new(0, 0, 0)
Credit.TextSize = 14
B1.Name = "B1"
B1.Parent = Frame
B1.BackgroundColor3 = Color3.new(1, 1, 1)
B1.BackgroundTransparency = 0.5
B1.BorderColor3 = Color3.new(1, 1, 1)
B1.Position = UDim2.new(0.0240000002, 0, 0.123000003, 0)
B1.Size = UDim2.new(0, 135, 0, 45)
B1.Font = Enum.Font.SourceSans
B1.Text = ""
B1.TextColor3 = Color3.new(0, 0, 0)
B1.TextSize = 14
L1.Name = "L1"
L1.Parent = B1
L1.BackgroundColor3 = Color3.new(0.0509804, 0.137255, 0.254902)
L1.BackgroundTransparency = 0.30000001192093
L1.BorderSizePixel = 0
L1.Size = UDim2.new(0, 10, 0, 10)
L1.Font = Enum.Font.SourceSans
L1.Text = ""
L1.TextColor3 = Color3.new(0, 0, 0)
L1.TextSize = 14
B2.Name = "B2"
B2.Parent = Frame
B2.BackgroundColor3 = Color3.new(1, 1, 1)
B2.BackgroundTransparency = 0.5
B2.BorderColor3 = Color3.new(1, 1, 1)
B2.Position = UDim2.new(0.518999994, 0, 0.123000003, 0)
B2.Size = UDim2.new(0, 135, 0, 45)
B2.Font = Enum.Font.SourceSans
B2.Text = ""
B2.TextColor3 = Color3.new(0, 0, 0)
B2.TextSize = 14
L2.Name = "L2"
L2.Parent = B2
L2.BackgroundColor3 = Color3.new(0.0509804, 0.137255, 0.254902)
L2.BackgroundTransparency = 0.30000001192093
L2.BorderSizePixel = 0
L2.Size = UDim2.new(0, 10, 0, 10)
L2.Font = Enum.Font.SourceSans
L2.Text = ""
L2.TextColor3 = Color3.new(0, 0, 0)
L2.TextSize = 14
B3.Name = "B3"
B3.Parent = Frame
B3.BackgroundColor3 = Color3.new(1, 1, 1)
B3.BackgroundTransparency = 0.5
B3.BorderColor3 = Color3.new(1, 1, 1)
B3.Position = UDim2.new(0.0240000002, 0, 0.317999989, 0)
B3.Size = UDim2.new(0, 135, 0, 45)
B3.Font = Enum.Font.SourceSans
B3.Text = ""
B3.TextColor3 = Color3.new(0, 0, 0)
B3.TextSize = 14
L3.Name = "L3"
L3.Parent = B3
L3.BackgroundColor3 = Color3.new(0.0509804, 0.137255, 0.254902)
L3.BackgroundTransparency = 0.30000001192093
L3.BorderSizePixel = 0
L3.Size = UDim2.new(0, 10, 0, 10)
L3.Font = Enum.Font.SourceSans
L3.Text = ""
L3.TextColor3 = Color3.new(0, 0, 0)
L3.TextSize = 14
B4.Name = "B4"
B4.Parent = Frame
B4.BackgroundColor3 = Color3.new(1, 1, 1)
B4.BackgroundTransparency = 0.5
B4.BorderColor3 = Color3.new(1, 1, 1)
B4.Position = UDim2.new(0.518999994, 0, 0.317999989, 0)
B4.Size = UDim2.new(0, 135, 0, 45)
B4.Font = Enum.Font.SourceSans
B4.Text = ""
B4.TextColor3 = Color3.new(0, 0, 0)
B4.TextSize = 14
L4.Name = "L4"
L4.Parent = B4
L4.BackgroundColor3 = Color3.new(0.0509804, 0.137255, 0.254902)
L4.BackgroundTransparency = 0.30000001192093
L4.BorderSizePixel = 0
L4.Size = UDim2.new(0, 10, 0, 10)
L4.Font = Enum.Font.SourceSans
L4.Text = ""
L4.TextColor3 = Color3.new(0, 0, 0)
L4.TextSize = 14
B5.Name = "B5"
B5.Parent = Frame
B5.BackgroundColor3 = Color3.new(1, 1, 1)
B5.BackgroundTransparency = 0.5
B5.BorderColor3 = Color3.new(1, 1, 1)
B5.Position = UDim2.new(0.0240000002, 0, 0.514999986, 0)
B5.Size = UDim2.new(0, 135, 0, 45)
B5.Font = Enum.Font.SourceSans
B5.Text = ""
B5.TextColor3 = Color3.new(0, 0, 0)
B5.TextSize = 14
L5.Name = "L5"
L5.Parent = B5
L5.BackgroundColor3 = Color3.new(0.0509804, 0.137255, 0.254902)
L5.BackgroundTransparency = 0.30000001192093
L5.BorderSizePixel = 0
L5.Size = UDim2.new(0, 10, 0, 10)
L5.Font = Enum.Font.SourceSans
L5.Text = ""
L5.TextColor3 = Color3.new(0, 0, 0)
L5.TextSize = 14
B6.Name = "B6"
B6.Parent = Frame
B6.BackgroundColor3 = Color3.new(1, 1, 1)
B6.BackgroundTransparency = 0.5
B6.BorderColor3 = Color3.new(1, 1, 1)
B6.Position = UDim2.new(0.518999994, 0, 0.514999986, 0)
B6.Size = UDim2.new(0, 135, 0, 45)
B6.Font = Enum.Font.SourceSans
B6.Text = ""
B6.TextColor3 = Color3.new(0, 0, 0)
B6.TextSize = 14
L6.Name = "L6"
L6.Parent = B6
L6.BackgroundColor3 = Color3.new(0.0509804, 0.137255, 0.254902)
L6.BackgroundTransparency = 0.30000001192093
L6.BorderSizePixel = 0
L6.Size = UDim2.new(0, 10, 0, 10)
L6.Font = Enum.Font.SourceSans
L6.Text = ""
L6.TextColor3 = Color3.new(0, 0, 0)
L6.TextSize = 14
B7.Name = "B7"
B7.Parent = Frame
B7.BackgroundColor3 = Color3.new(1, 1, 1)
B7.BackgroundTransparency = 0.5
B7.BorderColor3 = Color3.new(1, 1, 1)
B7.Position = UDim2.new(0, 7, 0, 192)
B7.Size = UDim2.new(0, 135, 0, 45)
B7.Font = Enum.Font.SourceSans
B7.Text = ""
B7.TextColor3 = Color3.new(0, 0, 0)
B7.TextSize = 14
L7.Name = "L7"
L7.Parent = B7
L7.BackgroundColor3 = Color3.new(0.0509804, 0.137255, 0.254902)
L7.BackgroundTransparency = 0.30000001192093
L7.BorderSizePixel = 0
L7.Size = UDim2.new(0, 10, 0, 10)
L7.Font = Enum.Font.SourceSans
L7.Text = ""
L7.TextColor3 = Color3.new(0, 0, 0)
L7.TextSize = 14
B8.Name = "B8"
B8.Parent = Frame
B8.BackgroundColor3 = Color3.new(1, 1, 1)
B8.BackgroundTransparency = 0.5
B8.BorderColor3 = Color3.new(1, 1, 1)
B8.Position = UDim2.new(0, 153, 0, 192)
B8.Size = UDim2.new(0, 135, 0, 45)
B8.Font = Enum.Font.SourceSans
B8.Text = ""
B8.TextColor3 = Color3.new(0, 0, 0)
B8.TextSize = 14
L8.Name = "L8"
L8.Parent = B8
L8.BackgroundColor3 = Color3.new(0.0509804, 0.137255, 0.254902)
L8.BackgroundTransparency = 0.30000001192093
L8.BorderSizePixel = 0
L8.Size = UDim2.new(0, 10, 0, 10)
L8.Font = Enum.Font.SourceSans
L8.Text = ""
L8.TextColor3 = Color3.new(0, 0, 0)
L8.TextSize = 14
B1.TextWrapped = true
B2.TextWrapped = true
B3.TextWrapped = true
B4.TextWrapped = true
B5.TextWrapped = true
B6.TextWrapped = true
B7.TextWrapped = true
B8.TextWrapped = true
---------------------------------Functions---------------------------------
m = 0
Minimize.MouseButton1Click:connect(function()
if m == 0 then
m = 1
B1.Visible = false
B2.Visible = false
B3.Visible = false
B4.Visible = false
B5.Visible = false
B6.Visible = false
B7.Visible = false
B8.Visible = false
Credit.Visible = false
Frame.Size = UDim2.new(0, 295, 0, 25)
else
m = 0
B1.Visible = true
B2.Visible = true
B3.Visible = true
B4.Visible = true
B5.Visible = true
B6.Visible = true
B7.Visible = true
B8.Visible = true
Credit.Visible = true
Frame.Size = UDim2.new(0, 295, 0, 270)
end
end)
Close.MouseButton1Click:connect(function()
VarOff()
ScreenGui:Destroy()
end)
function on(light)
light.BackgroundColor3 = Color3.fromRGB(51, 139, 255)
end
function off(light)
light.BackgroundColor3 = Color3.fromRGB(13, 35, 65)
end
function packcheck(a)
if a == 1 then
local amount = plr["PlayerGui"]["GameGui"]["Backpack"]["Amount"]
local length = string.find(amount.Text,"/", 1, true)
local p = tonumber(string.sub(amount.Text, 1, (length - 1)))
return p
elseif a == 2 then
local amount = plr["PlayerGui"]["GameGui"]["Backpack"]["Amount"]
local length = string.find(amount.Text,"/", 1, true)
local p = tonumber(string.sub(amount.Text, length + 1))
return p
end
end
function repair(a)
plr = game:GetService('Players').LocalPlayer
Root = plr.Character.HumanoidRootPart
local tool = plr.Character:FindFirstChildOfClass("Tool")
if tool then
local check = tool.Data:FindFirstChild("Strength")
if check and a == 1 then
local A_1 = "RepairForager"
local A_2 = tool.Name
local Event = game:GetService("ReplicatedStorage").ReplicationManagers.ForagersRF
Event:InvokeServer(A_1, A_2)
local t = plr.Backpack:FindFirstChildOfClass("Tool")
if t and a == 2 then
local A_1 = "RepairWeapon"
local A_2 = t.Name
local Event = game:GetService("ReplicatedStorage").ReplicationManagers.WeaponsRF
Event:InvokeServer(A_1, A_2)
end
elseif a == 2 then
local A_1 = "RepairWeapon"
local A_2 = tool.Name
local Event = game:GetService("ReplicatedStorage").ReplicationManagers.WeaponsRF
Event:InvokeServer(A_1, A_2)
local t = plr.Backpack:FindFirstChildOfClass("Tool")
if t and a == 1 then
local A_1 = "RepairForager"
local A_2 = t.name
local Event = game:GetService("ReplicatedStorage").ReplicationManagers.ForagersRF
Event:InvokeServer(A_1, A_2)
end
end
else
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.ClassName == "Tool" then
local check = v.Data:FindFirstChild("Damage")
if check and a == 2 then
local A_1 = "RepairWeapon"
local A_2 = v.Name
local Event = game:GetService("ReplicatedStorage").ReplicationManagers.WeaponsRF
Event:InvokeServer(A_1, A_2)
elseif a == 1 then
local A_1 = "RepairForager"
local A_2 = v.name
local Event = game:GetService("ReplicatedStorage").ReplicationManagers.ForagersRF
Event:InvokeServer(A_1, A_2)
end
end
end
end
end
---------------------------------MainCode---------------------------------

Credit.Text = Credit.Text .. "brianops1" --Scripter Credit Here

Game.Text = "Pirate Simulator" --Game name here

B1.Text = "Tree Attack/Mine Aura" --Name of the buttons (scripts)
B2.Text = "Rock Attack/Mine Aura"
B3.Text = "Pirate Attack Aura"
B4.Text = "Player Attack Aura"
B5.Text = "Autosell"
B6.Text = "AutoRepair"
B7.Text = "Teleport to home cargo"
B8.Text = "Teleport to resources"


B1.MouseButton1Click:connect(function()
if _G.on1 == 1 then
_G.on1 = 0
off(L1)
else
_G.on1 = 1
on(L1)
while _G.on1 == 1 do
for a,islands in pairs(game:GetService("Workspace")["ResourceIslands"]:GetChildren()) do
for b,tree in pairs(islands.Resources.Trees:GetChildren()) do
plr = game:GetService('Players').LocalPlayer
Root = plr.Character.HumanoidRootPart
if tree and tree.Integrity.Value > 0 and _G.on1 == 1 then
local mag = (Root.Position - tree.Base.Position).magnitude
if mag < 12 then
local A_1 = "Hit"
local A_2 = tree
local Event = game:GetService("ReplicatedStorage").ReplicationManagers.HitResource
Event:FireServer(A_1, A_2)
end
end
end
game:GetService('RunService').Stepped:wait()
end
end
game:GetService('RunService').Stepped:wait()
end
end)


B2.MouseButton1Click:connect(function()
if _G.on2 == 1 then
_G.on2 = 0
off(L2)
else
_G.on2 = 1
on(L2)
while _G.on2 == 1 do
for a,islands in pairs(game:GetService("Workspace")["ResourceIslands"]:GetChildren()) do
for b,rock in pairs(islands.Resources.Rocks:GetChildren()) do
plr = game:GetService('Players').LocalPlayer
Root = plr.Character.HumanoidRootPart
local part = rock:FindFirstChild("Rock")
if rock and part and rock.Integrity.Value > 0 and _G.on2 == 1 then
local mag = (Root.Position - part.Position).magnitude
if mag < 12 then
local A_1 = "Hit"
local A_2 = rock
local Event = game:GetService("ReplicatedStorage").ReplicationManagers.HitResource
Event:FireServer(A_1, A_2)
end
end
end
game:GetService('RunService').Stepped:wait()
end
end
game:GetService('RunService').Stepped:wait()
end
end)


B3.MouseButton1Click:connect(function()
if _G.on3 == 1 then
_G.on3 = 0
off(L3)
else
_G.on3 = 1
on(L3)
while _G.on3 == 1 do
for ab, ship in pairs(game:GetService("Workspace")["Ships"]:GetChildren()) do
if ship and _G.on3 == 1 then
local N = ship:FindFirstChild("NPCs")
if N then
local NPC = N:FindFirstChildOfClass("Model")
if NPC then
for z, pirate in pairs(NPC.Parent:GetChildren()) do
plr = game:GetService('Players').LocalPlayer
Root = plr.Character.HumanoidRootPart
local hum = pirate:FindFirstChild("Humanoid")
local part = pirate:FindFirstChild("HumanoidRootPart")
if hum and part and _G.on3 == 1 then
local mag = (part.Position - Root.Position).magnitude
if mag < 18 then
local A_1 = "Hit"
local A_2 = 
{
[1] = 
{
[1] = hum, 
[2] = part
}
}
local A_3 = Root
local Event = game:GetService("ReplicatedStorage").ReplicationManagers.HitPlayer
Event:FireServer(A_1, A_2, A_3)
end
end
end
wait()
end
end
end
end
game:GetService('RunService').Stepped:wait()
end
end
end)


B4.MouseButton1Click:connect(function()
if _G.on4 == 1 then
_G.on4 = 0
off(L4)
else
_G.on4 = 1
on(L4)
game:GetService('RunService').Stepped:wait()
while _G.on4 == 1 do
for ab, players in pairs(game.Players:GetChildren()) do
plr = game:GetService('Players').LocalPlayer
Root = plr.Character.HumanoidRootPart
if players and players ~= plr and _G.on4 == 1 then
local P = players.Character
local hum = P:FindFirstChild("Humanoid")
local part = P:FindFirstChild("HumanoidRootPart")
if hum and part then
local mag = (part.Position - Root.Position).magnitude
if mag < 18 then
local A_1 = "Hit"
local A_2 = 
{
[1] = 
{
[1] = hum, 
[2] = part
}
}
local A_3 = Root
local Event = game:GetService("ReplicatedStorage").ReplicationManagers.HitPlayer
Event:FireServer(A_1, A_2, A_3)
end
end
end
end
wait()
end
end
end)


B5.MouseButton1Click:connect(function()
if _G.on5 == 1 then
_G.on5 = 0
off(L5)
else
_G.on5 = 1
on(L5)
game:GetService('RunService').Stepped:wait()
while _G.on5 == 1 do
plr = game:GetService('Players').LocalPlayer
Root = plr.Character.HumanoidRootPart
local current = packcheck(1)
local max = packcheck(2)
local orgin = Root.CFrame
if current > (max / 2) then
local java = game:GetService("Workspace").Islands[plr.Team.Name].Jerri
Root.CFrame = java.HumanoidRootPart.CFrame * CFrame.new(0,3,0)
wait()
local A_1 = "UnloadCargo"
local A_2 = java
local Event = game:GetService("ReplicatedStorage").ReplicationManagers.JerriRE
Event:FireServer(A_1, A_2)
wait(.05)
Root.CFrame = orgin
end
game:GetService('RunService').Stepped:wait()
end
end
end)


B6.MouseButton1Click:connect(function()
if _G.on6 == 1 then
_G.on6 = 0
off(L6)
else
_G.on6 = 1
on(L6)
game:GetService('RunService').Stepped:wait()
while _G.on6 == 1 do
plr = game:GetService('Players').LocalPlayer
Root = plr.Character.HumanoidRootPart
local forger = plr["PlayerGui"]["GameGui"]["ForagerSlot"]["Integrity"]["Bar"]
local weapon = plr["PlayerGui"]["GameGui"]["WeaponSlot"]["Integrity"]["Bar"]
if forger.Size == UDim2.new(0,0,1,0) then
repair(1)
end
if weapon.Size == UDim2.new(0,0,1,0) then
repair(2)
end
wait()
end
end
end)


B7.MouseButton1Click:connect(function()
if _G.on7 == 1 then
_G.on7 = 0
off(L7)
else
_G.on7 = 1
on(L7)
game:GetService('RunService').Stepped:wait()
plr = game:GetService('Players').LocalPlayer
Root = plr.Character.HumanoidRootPart
local p = game:GetService("Workspace").Islands[plr.Team.Name].Parts:FindFirstChild("0")
if p then
Root.CFrame = p.Main.CFrame * CFrame.new(0,5,0)
end
wait()
_G.on7 = 0
off(L7)
end
end)


B8.MouseButton1Click:connect(function()
if _G.on8 == 1 then
_G.on8 = 0
off(L8)
else
_G.on8 = 1
on(L8)
game:GetService('RunService').Stepped:wait()
while _G.on8 == 1 do
for _,island in pairs(game:GetService("Workspace")["ResourceIslands"]:GetChildren()) do
for _,resources in pairs(island.Resources:GetChildren()) do
if resources.Name == "Trees" or resources.Name == "Rocks" then
for _,resource in pairs(resources:GetChildren()) do
if _G.on8 == 1 and resource and resource.Integrity.Value > 0 then
local part = resource:FindFirstChildOfClass("Part")
local union = resource:FindFirstChildOfClass("UnionOperation")
if part and resource.Integrity.Value > 0 then
Root.CFrame = part.CFrame * CFrame.new(0,0,3)
wait(.3)
elseif union and resource.Integrity.Value > 0 then
Root.CFrame = union.CFrame * CFrame.new(0,0,3)
wait(.3)
end
end
end
end
end
wait()
end
end
end
end)
print('Loaded')

_G.KEY = "LeftAlt"
local UIS = game:GetService("UserInputService")
UIS.InputBegan:connect(function(Input)
local KeyCode = Input.KeyCode
if KeyCode == Enum.KeyCode[_G.KEY] then
local plr = game:GetService('Players').LocalPlayer
hum = plr.Character.HumanoidRootPart
mouse = plr:GetMouse()
if mouse.Target then
hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
end
end
end)