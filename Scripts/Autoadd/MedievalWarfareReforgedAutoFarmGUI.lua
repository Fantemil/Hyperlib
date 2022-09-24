-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Mainframe = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local dummyButton = Instance.new("TextButton")
local Creds = Instance.new("TextLabel")
local OrbitButton = Instance.new("TextButton")
local WhitelistButton = Instance.new("TextButton")
local FarmPlayerButton = Instance.new("TextButton")
local TeleportButton = Instance.new("TextButton")
local AddToFarmButton = Instance.new("TextButton")
local RemoveFarmButton = Instance.new("TextButton")
local PrintFarmingButton = Instance.new("TextButton")
local KillAuraButton = Instance.new("TextButton")
local BowAuraButton = Instance.new("TextButton")
local RemoveWhitelist = Instance.new("TextButton")
local SelectedPlayer = Instance.new("TextLabel")
local killaura = false
local bowaura = false
local Replicated = game:GetService("ReplicatedStorage")
local GameData = require(Replicated.GameData)
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Client = Players.LocalPlayer
local playerselected = nil
Farming = {}
Whitelist = {}
local orbiting = false
local farmingplayer = false

for _,v in pairs(Client.PlayerScripts["Server Helpers"]:GetChildren()) do
for _,c in pairs(getconnections(v:GetPropertyChangedSignal("Disabled"))) do
c:Disable()
end
v.Disabled = true
end

local Character,Humanoid,RootPart
function SetCharVars()
Character = Client.Character
Humanoid = Character:WaitForChild("Humanoid")
RootPart = Character:WaitForChild("HumanoidRootPart")
end
SetCharVars()

Client.CharacterAdded:Connect(SetCharVars)


ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Mainframe.Name = "Mainframe"
Mainframe.Parent = ScreenGui
Mainframe.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Mainframe.BorderSizePixel = 0
Mainframe.Position = UDim2.new(0.11619959, 0, 0.141277641, 0)
Mainframe.Size = UDim2.new(0, 580, 0, 304)

ScrollingFrame.Parent = Mainframe
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 0.800
ScrollingFrame.Position = UDim2.new(-0.00149149634, 0, 0, 0)
ScrollingFrame.Size = UDim2.new(0, 197, 0, 303)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 5, 0)

dummyButton.Name = "dummyButton"
dummyButton.Parent = ScrollingFrame
dummyButton.BackgroundColor3 = Color3.fromRGB(17, 141, 56)
dummyButton.BorderColor3 = Color3.fromRGB(48, 48, 48)
dummyButton.BorderSizePixel = 3
dummyButton.Position = UDim2.new(0.00300000003, 0, 0, 3)
dummyButton.Size = UDim2.new(0, 182, 0, 29)
dummyButton.Font = Enum.Font.SourceSans
dummyButton.TextColor3 = Color3.fromRGB(0, 0, 0)
dummyButton.TextScaled = true
dummyButton.TextSize = 14.000
dummyButton.TextWrapped = true

Creds.Name = "Creds"
Creds.Parent = Mainframe
Creds.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Creds.BackgroundTransparency = 1.000
Creds.BorderSizePixel = 0
Creds.Position = UDim2.new(0.372720659, 0, 0.00986842066, 0)
Creds.Size = UDim2.new(0, 327, 0, 50)
Creds.Font = Enum.Font.Highway
Creds.Text = "Drifter's MW:R Bot GUI"
Creds.TextColor3 = Color3.fromRGB(17, 141, 56)
Creds.TextScaled = true
Creds.TextSize = 20.000
Creds.TextWrapped = true

OrbitButton.Name = "OrbitButton"
OrbitButton.Parent = Mainframe
OrbitButton.BackgroundColor3 = Color3.fromRGB(17, 141, 56)
OrbitButton.BorderColor3 = Color3.fromRGB(48, 48, 48)
OrbitButton.BorderSizePixel = 3
OrbitButton.Position = UDim2.new(0.372720659, 0, 0.296052605, 3)
OrbitButton.Size = UDim2.new(0, 163, 0, 29)
OrbitButton.Font = Enum.Font.SourceSans
OrbitButton.Text = "Orbit Player"
OrbitButton.TextColor3 = Color3.fromRGB(0, 0, 0)
OrbitButton.TextScaled = true
OrbitButton.TextSize = 14.000
OrbitButton.TextWrapped = true

function Orbit()

local part1 = Instance.new('Part')
part1.Anchored = true
part1.Size = Vector3.new (25,0.1,25)
part1.Parent = workspace
part1.Name = "SomeBodyOnceToldMe"
local center = game.Players[playerselected].Character.HumanoidRootPart
local moon = RootPart

local Orbitt
Orbitt = RunService.Heartbeat:Connect(function()

local x = game.Players[playerselected].Character.HumanoidRootPart.Position.X
local y = game.Players[playerselected].Character.HumanoidRootPart.Position.Y + 4
local z = game.Players[playerselected].Character.HumanoidRootPart.Position.Z
part1.Position = Vector3.new(x,y,z)
if Humanoid.Health == 0 or game.Players[playerselected].Character.Humanoid.Health == 0 or orbiting == false then
Orbitt:Disconnect()
part1:Destroy()

end

end)





local ORBIT_TIME = 1
local RADIUS = 5
local ECLIPSE = 1
local ROTATION = CFrame.Angles(0,0,0)

-- But not these
local sin, cos = math.sin, math.cos
local ROTSPEED = math.pi*2/ORBIT_TIME
ECLIPSE = ECLIPSE * RADIUS
local runservice = game:GetService('RunService')



-- There are many ways to run this loop, you could do while true do if you want, if so use this: rot = rot + wait() * ROTSPEED
local rot = 0
local OrbitPart
OrbitPart = game:GetService('RunService').Stepped:connect(function(t, dt)
rot = rot + dt * ROTSPEED
moon.CFrame = ROTATION * CFrame.new(sin(rot)*ECLIPSE, 0, cos(rot)*RADIUS) + Vector3.new(center.Position.X, center.Position.Y + 6.7, center.Position.Z)
if game.Players[playerselected].Character.Humanoid.Health == 0 or Humanoid.Health == 0 or orbiting == false then

OrbitPart:Disconnect()
end
end)


end

local OrbitF = nil;
OrbitButton.MouseButton1Click:connect(function()
if orbiting == false then
orbiting = true
OrbitButton.Text = "Orbit Player: On"
Orbit()
else
orbiting = false
OrbitButton.Text = "Orbit Player"

end
end)





WhitelistButton.Name = "WhitelistButton"
WhitelistButton.Parent = Mainframe
WhitelistButton.BackgroundColor3 = Color3.fromRGB(17, 141, 56)
WhitelistButton.BorderColor3 = Color3.fromRGB(48, 48, 48)
WhitelistButton.BorderSizePixel = 3
WhitelistButton.Position = UDim2.new(0.372720659, 0, 0.430921048, 3)
WhitelistButton.Size = UDim2.new(0, 163, 0, 29)
WhitelistButton.Font = Enum.Font.SourceSans
WhitelistButton.Text = "WhitelistButton"
WhitelistButton.TextColor3 = Color3.fromRGB(0, 0, 0)
WhitelistButton.TextScaled = true
WhitelistButton.TextSize = 14.000
WhitelistButton.TextWrapped = true
WhitelistButton.MouseButton1Click:connect(function()

table.insert(Whitelist,1,playerselected)

end)
FarmPlayerButton.Name = "FarmPlayerButton"
FarmPlayerButton.Parent = Mainframe
FarmPlayerButton.BackgroundColor3 = Color3.fromRGB(17, 141, 56)
FarmPlayerButton.BorderColor3 = Color3.fromRGB(48, 48, 48)
FarmPlayerButton.BorderSizePixel = 3
FarmPlayerButton.Position = UDim2.new(0.372720659, 0, 0.56249994, 3)
FarmPlayerButton.Size = UDim2.new(0, 163, 0, 29)
FarmPlayerButton.Font = Enum.Font.SourceSans
FarmPlayerButton.Text = "Farm Player(s)"
FarmPlayerButton.TextColor3 = Color3.fromRGB(0, 0, 0)
FarmPlayerButton.TextScaled = true
FarmPlayerButton.TextSize = 14.000
FarmPlayerButton.TextWrapped = true

function RegionCheck(HRP)
for _,Region in pairs(ReplicatedStorage["world regions"]:GetChildren()) do
if string.match(Region.Name,"graveyard") and table.find(workspace:FindPartsInRegion3(Region3.new(Region.Position - (0.5 * Region.Size),Region.Position + (0.5 * Region.Size)),nil,math.huge),HRP) then
return false
end
end
return true
end

local GetClosestCharacter = function()
local ClosestCharacter = nil;
local closest = math.huge;

for _, player in ipairs(Players:GetPlayers()) do
if (Client.Team ~= player.Team) and table.find(Farming,player.Name) and player.Team.Name ~= "Loading" then
local character = player.Character;

if (character) then
local HRP = character:FindFirstChild("HumanoidRootPart");
local humanoid = character:FindFirstChild("Humanoid");

if (HRP and humanoid and humanoid.Health > 0) and RegionCheck(HRP) then
local distance = player:DistanceFromCharacter(Vector3.new(609.924,310.2,-91.444));

if (distance < closest) then
closest = distance;
ClosestCharacter = character;
end
end
end
end
end
return ClosestCharacter;
end

local FarmMelee = function()
local players = {};

for _, player in ipairs(Players:GetPlayers()) do
if (Client.Team ~= player.Team) and table.find(Farming,player.Name) and Client.Team.Name ~= "Loading" then
local character = player.Character;

if (character) then
local HRP = character:FindFirstChild("HumanoidRootPart");
local humanoid = character:FindFirstChild("Humanoid");

if (HRP and humanoid and humanoid.Health > 0) then
local distance = player:DistanceFromCharacter(Vector3.new(609.924,310.2,-91.444));

if RegionCheck(HRP) then
table.insert(players, {
Distance = distance,
UserId = player.UserId
})
end
end
end
end
end

if (#players == 0) then return end;

local UserIds = {};

table.sort(players, function(a, b)
return a.Distance < b.Distance;
end)

for i = 1, math.min(#players, 5) do
table.insert(UserIds, players[i].UserId);
end

ReplicatedStorage.Communication.MeleeTalk:FireServer(nil, HttpService:JSONEncode(UserIds),"faIse",false)
end

local MeleeFarm = nil;
local FarmBowF = nil;
FarmPlayerButton.MouseButton1Click:connect(function()
if farmingplayer == false then
farmingplayer = true
FarmPlayerButton.Text = "Farm Player(s): On"
coroutine.wrap(function()
MeleeFarm = RunService.Heartbeat:Connect(FarmMelee)
repeat wait()
local ClosestCharacter = GetClosestCharacter();

if (ClosestCharacter) then
local HRP = ClosestCharacter.HumanoidRootPart;
local HRPPos = HRP.Position;

local args = {
RangedKey,
ClosestCharacter.Name,
0,
HRP.CFrame,
HRPPos,
HRPPos,
'{"Z":-nan(ind),"X":-nan(ind),"Y":-nan(ind)}',
nil,
"faIse",
false,
}
pcall(function()
RootPart.CFrame = ClosestCharacter.HumanoidRootPart.CFrame
end)
ReplicatedStorage.Communication.RangedTalk:FireServer(unpack(args));
else
local redcliff = game:GetService("Teams")["Redcliff Kingdom"]
local overseer = game:GetService("Teams")["Overseer Kingdom"]
local greywolf = game:GetService("Teams")["Greywolf Kingdom"]
local korblox = game:GetService("Teams")["Korblox Kingdom"]
if (Client.Team == greywolf) then
Client.Character.HumanoidRootPart.CFrame = CFrame.new(-165, 413, 168)
end
if (Client.Team == korblox) then
Client.Character.HumanoidRootPart.CFrame = CFrame.new(1288, 322, 226)
end
if(Client.Team == redcliff) then
Client.Character.HumanoidRootPart.CFrame = CFrame.new(617, 323, 1143)
end
if(Client.Team == overseer) then
Client.Character.HumanoidRootPart.CFrame = CFrame.new(776, 320, -1017)
end
end
until farmingplayer == false
end)()
else
MeleeFarm:Disconnect()
farmingplayer = false
FarmPlayerButton.Text = "Farm Player(s)"
end
end)




TeleportButton.Name = "TeleportButton"
TeleportButton.Parent = Mainframe
TeleportButton.BackgroundColor3 = Color3.fromRGB(17, 141, 56)
TeleportButton.BorderColor3 = Color3.fromRGB(48, 48, 48)
TeleportButton.BorderSizePixel = 3
TeleportButton.Position = UDim2.new(0.372720659, 0, 0.697368383, 3)
TeleportButton.Size = UDim2.new(0, 163, 0, 29)
TeleportButton.Font = Enum.Font.SourceSans
TeleportButton.Text = "Teleport"
TeleportButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TeleportButton.TextScaled = true
TeleportButton.TextSize = 14.000
TeleportButton.TextWrapped = true
TeleportButton.MouseButton1Click:connect(function()
RootPart.CFrame = CFrame.new(game.Players[playerselected].Character.HumanoidRootPart.Position)
end)

AddToFarmButton.Name = "AddToFarmButton"
AddToFarmButton.Parent = Mainframe
AddToFarmButton.BackgroundColor3 = Color3.fromRGB(17, 141, 56)
AddToFarmButton.BorderColor3 = Color3.fromRGB(48, 48, 48)
AddToFarmButton.BorderSizePixel = 3
AddToFarmButton.Position = UDim2.new(0.684789658, 0, 0.296052665, 3)
AddToFarmButton.Size = UDim2.new(0, 163, 0, 29)
AddToFarmButton.Font = Enum.Font.SourceSans
AddToFarmButton.Text = "Add To Farm list"
AddToFarmButton.TextColor3 = Color3.fromRGB(0, 0, 0)
AddToFarmButton.TextScaled = true
AddToFarmButton.TextSize = 14.000
AddToFarmButton.TextWrapped = true
AddToFarmButton.MouseButton1Click:connect(function()
table.insert(Farming,1,playerselected)

end)
RemoveFarmButton.Name = "RemoveFarmButton"
RemoveFarmButton.Parent = Mainframe
RemoveFarmButton.BackgroundColor3 = Color3.fromRGB(17, 141, 56)
RemoveFarmButton.BorderColor3 = Color3.fromRGB(48, 48, 48)
RemoveFarmButton.BorderSizePixel = 3
RemoveFarmButton.Position = UDim2.new(0.684789658, 0, 0.430921108, 3)
RemoveFarmButton.Size = UDim2.new(0, 163, 0, 29)
RemoveFarmButton.Font = Enum.Font.SourceSans
RemoveFarmButton.Text = "Remove From Farm List"
RemoveFarmButton.TextColor3 = Color3.fromRGB(0, 0, 0)
RemoveFarmButton.TextScaled = true
RemoveFarmButton.TextSize = 14.000
RemoveFarmButton.TextWrapped = true
RemoveFarmButton.MouseButton1Click:connect(function()
for i,v in pairs(Farming) do
if v == playerselected then
table.remove(Farming, i)
else
print("player cannot be found in this table!")
end
end

end)
PrintFarmingButton.Name = "PrintFarmingButton"
PrintFarmingButton.Parent = Mainframe
PrintFarmingButton.BackgroundColor3 = Color3.fromRGB(17, 141, 56)
PrintFarmingButton.BorderColor3 = Color3.fromRGB(48, 48, 48)
PrintFarmingButton.BorderSizePixel = 3
PrintFarmingButton.Position = UDim2.new(0.684789658, 0, 0.56249994, 3)
PrintFarmingButton.Size = UDim2.new(0, 163, 0, 29)
PrintFarmingButton.Font = Enum.Font.SourceSans
PrintFarmingButton.Text = "Print Farm List"
PrintFarmingButton.TextColor3 = Color3.fromRGB(0, 0, 0)
PrintFarmingButton.TextScaled = true
PrintFarmingButton.TextSize = 14.000
PrintFarmingButton.TextWrapped = true
PrintFarmingButton.MouseButton1Click:connect(function()
print("----------FARMING----------")
for _,v in pairs(Farming) do
print(v)
end
print("----------WHITELISTED----------")
for _,v in pairs(Whitelist) do
print(v)
end
end)



KillAuraButton.Name = "KillAuraButton"
KillAuraButton.Parent = Mainframe
KillAuraButton.BackgroundColor3 = Color3.fromRGB(17, 141, 56)
KillAuraButton.BorderColor3 = Color3.fromRGB(48, 48, 48)
KillAuraButton.BorderSizePixel = 3
KillAuraButton.Position = UDim2.new(0.684789658, 0, 0.697368383, 3)
KillAuraButton.Size = UDim2.new(0, 163, 0, 29)
KillAuraButton.Font = Enum.Font.SourceSans
KillAuraButton.Text = "Kill Aura"
KillAuraButton.TextColor3 = Color3.fromRGB(0, 0, 0)
KillAuraButton.TextScaled = true
KillAuraButton.TextSize = 14.000
KillAuraButton.TextWrapped = true

local KillAuraF = nil;
KillAuraButton.MouseButton1Click:connect(function()
if killaura == false then
killaura = true
KillAuraButton.Text = "Kill Aura: On"
repeat wait()
local players = {};

for _, player in ipairs(Players:GetPlayers()) do
if (Client.Team ~= player.Team) then
local character = player.Character;

if (character) then
local HRP = character:FindFirstChild("HumanoidRootPart");
local humanoid = character:FindFirstChild("Humanoid");

if (HRP and humanoid and humanoid.Health > 0) then
local distance = Client:DistanceFromCharacter(HRP.Position);

if (distance <=25) then
table.insert(players, {
Distance = distance,
UserId = player.UserId
})
end
end
end
end
end

if (#players == 0) then return end;

local UserIds = {};

table.sort(players, function(a, b)
return a.Distance < b.Distance;
end)

for i = 1, math.min(#players, 5) do
table.insert(UserIds, players[i].UserId);
end

ReplicatedStorage.Communication.MeleeTalk:FireServer(nil, HttpService:JSONEncode(UserIds),"faIse",false)
until killaura == false
else
killaura = false
KillAuraButton.Text = "Kill Aura"
end
end)

BowAuraButton.Name = "BowAuraButton"
BowAuraButton.Parent = Mainframe
BowAuraButton.BackgroundColor3 = Color3.fromRGB(17, 141, 56)
BowAuraButton.BorderColor3 = Color3.fromRGB(48, 48, 48)
BowAuraButton.BorderSizePixel = 3
BowAuraButton.Position = UDim2.new(0.685, 0,0.832, 3)
BowAuraButton.Size = UDim2.new(0, 163, 0, 29)
BowAuraButton.Font = Enum.Font.SourceSans
BowAuraButton.Text = "Bow Aura"
BowAuraButton.TextColor3 = Color3.fromRGB(0, 0, 0)
BowAuraButton.TextScaled = true
BowAuraButton.TextSize = 14.000
BowAuraButton.TextWrapped = true

local BowAuraF = nil;
BowAuraButton.MouseButton1Click:connect(function()
if bowaura == false then
bowaura = true
BowAuraButton.Text = "Bow Aura: On"
repeat wait()
local ClosestCharacter = GetClosestCharacter();

if (ClosestCharacter) then
local HRP = ClosestCharacter.HumanoidRootPart;
local HRPPos = HRP.Position;

local args = {
RangedKey,
ClosestCharacter.Name,
0,
HRP.CFrame,
HRPPos,
HRPPos,
'{"Z":-nan(ind),"X":-nan(ind),"Y":-nan(ind)}',
nil,
"faIse",
false,
}
pcall(function()
RootPart.CFrame = ClosestCharacter.HumanoidRootPart.CFrame
end)
ReplicatedStorage.Communication.RangedTalk:FireServer(unpack(args));
else
RootPart.CFrame = CFrame.new(617.85369873047, 323.98428344727, 1151.2896728516)
end
until farmingplayer == false
else
bowaura = false
BowAuraButton.Text = "Bow Aura"
end
end)

RemoveWhitelist.Name = "RemoveWhitelist"
RemoveWhitelist.Parent = Mainframe
RemoveWhitelist.BackgroundColor3 = Color3.fromRGB(17, 141, 56)
RemoveWhitelist.BorderColor3 = Color3.fromRGB(48, 48, 48)
RemoveWhitelist.BorderSizePixel = 3
RemoveWhitelist.Position = UDim2.new(0.372720689, 0, 0.832236826, 3)
RemoveWhitelist.Size = UDim2.new(0, 163, 0, 29)
RemoveWhitelist.Font = Enum.Font.SourceSans
RemoveWhitelist.Text = "Remove Whitelist"
RemoveWhitelist.TextColor3 = Color3.fromRGB(0, 0, 0)
RemoveWhitelist.TextScaled = true
RemoveWhitelist.TextSize = 14.000
RemoveWhitelist.TextWrapped = true
RemoveWhitelist.MouseButton1Click:connect(function()
for i,v in pairs(Whitelist) do
if v == playerselected then
table.remove(Whitelist, i)
end
end
end)
SelectedPlayer.Name = "SelectedPlayer"
SelectedPlayer.Parent = Mainframe
SelectedPlayer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectedPlayer.BackgroundTransparency = 1.000
SelectedPlayer.BorderSizePixel = 0
SelectedPlayer.Position = UDim2.new(0.494827569, 0, 0.151315793, 0)
SelectedPlayer.Size = UDim2.new(0, 200, 0, 28)
SelectedPlayer.Font = Enum.Font.SourceSans
SelectedPlayer.Text = "Selected Player:"
SelectedPlayer.TextColor3 = Color3.fromRGB(17, 141, 56)
SelectedPlayer.TextScaled = true
SelectedPlayer.TextSize = 14.000
SelectedPlayer.TextWrapped = true

-- Scripts:

local function UHBLM_fake_script() -- Mainframe.LocalScript
local script = Instance.new('LocalScript', Mainframe)

local UserInputService = game:GetService("UserInputService")

local gui = script.Parent

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
local delta = input.Position - dragStart
gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
dragging = true
dragStart = input.Position
startPos = gui.Position

input.Changed:Connect(function()
if input.UserInputState == Enum.UserInputState.End then
dragging = false
end
end)
end
end)

gui.InputChanged:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
dragInput = input
end
end)

UserInputService.InputChanged:Connect(function(input)
if input == dragInput and dragging then
update(input)
end
end)
end
coroutine.wrap(UHBLM_fake_script)()
local function YDLX_fake_script() -- Mainframe.LocalScript
local script = Instance.new('LocalScript', Mainframe)

-- brought to you by Jesus Bin Laden
local Plr = game:GetService("Players")
local PlrFold = script.Parent.ScrollingFrame

local dummyButton = PlrFold.dummyButton:Clone()
PlrFold.dummyButton:Destroy()

function update()

PlrFold:ClearAllChildren()

local CurrentPlayer = 0

for i,v in pairs(Plr:GetPlayers()) do

CurrentPlayer = CurrentPlayer + 1

local newButton = dummyButton:Clone()

newButton.Position = UDim2.new( 0, 0, 0, newButton.Size.Y.Offset * ( CurrentPlayer - 1 ) )
newButton.Text = v.Name

newButton.MouseButton1Down:connect(function()
playerselected = v.Name
SelectedPlayer.Text = "Selected Player:"..playerselected
end)

newButton.Parent = PlrFold

end

end

Plr.PlayerAdded:connect(update)
Plr.PlayerRemoving:connect(update)

update()

end
coroutine.wrap(YDLX_fake_script)()