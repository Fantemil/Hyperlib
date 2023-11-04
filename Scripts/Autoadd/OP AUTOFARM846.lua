--//Variables
local Settings = {
Farms = {
MobFarm = false,
Selectedmob = "Frisker",
Position = 6,
TweenSpeed = 100,
Autoequip = false,
},
Teleports = {
Selectednpc = "",
},
Autoquest = {
Toggle = false,
Questboard = "MissionBoard 12",
Position = 6,
},
Shikaifight = {
Toggle = false,
Position = 6,
},
Adjfarm = {
Toggle = false,
Position = -8.7,
},
Closest = {
Toggle = false,
Position = -8,
Distance = 150,
},
Notifier = false,
Minigame = false,
Obby = false,
}

local attackremote = game:GetService("ReplicatedStorage").Remotes.ServerCombatHandler
local mobTable = { "Fishbone", "Frisker", "LostSoul", "Jackal", "Shinigami", "Menos", "Bawabawa", "Jidanbo" }
local RunService = game:GetService("RunService")
local NextFrame = RunService.Heartbeat
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local ForceStop = false
local npcTable = {}
local player = game.Players.LocalPlayer
local questTable = { "nothing" }
local name = player.Name
local modtable = {
15293648, --iqcs
30370774, --Rakutsu
83254134, --s9d
80916772, -- Jaleox
23977275, -- Tsumoe
82280601, -- Lipopss
83254134, -- s9d
1506296146, -- okhwan
606256561, -- Abaddonisu
18577857, -- DripMonger
4061168, -- Castalysts
1159863871, -- enraiton
432360403, -- sinfuldms
10712932, -- Yreol
20660983, -- H3mzz
83338597, -- LeafyRei
54066348, -- PioClean
25329898, -- Joochun
8925483, -- K1LLUAA
1161914,
3427072680, -- haniyura
57431326, -- Khaotxc
77857290, -- 4Data
4192362393, -- mitakamora
300780145, -- invictal
232346707, -- Drakos
59903508, --cartier361
400349, -- streak
194177872,
36989055, -- Minst_r
36710249, -- MassRelays
30370774,
}


--Settings--
--Declarations--


--// Script Functions
local function Tween(Target, angle)
ForceStop = false
if typeof(Target) == "Instance" and Target:IsA("BasePart") then
Target = Target.Position
end
if typeof(Target) == "CFrame" then
Target = Target.p
end

local HRP = (Player.Character and Player.Character:FindFirstChild("HumanoidRootPart"))
if not HRP then
return
end

local StartingPosition = HRP.Position
local PositionDelta = (Target - StartingPosition)
local StartTime = tick()
local TotalDuration = (StartingPosition - Target).magnitude / Settings.Farms.TweenSpeed

repeat
NextFrame:Wait()
local Delta = tick() - StartTime
local Progress = math.min(Delta / TotalDuration, 1) 

local MappedPosition = StartingPosition + (PositionDelta * Progress)
HRP.Velocity = Vector3.new() 
HRP.CFrame = CFrame.new(MappedPosition)
until (HRP.Position - Target).magnitude <= Settings.Farms.TweenSpeed / 2 or ForceStop
if ForceStop then
ForceStop = false
return
end --
HRP.Anchored = false
HRP.CFrame = CFrame.new(Target) * CFrame.Angles(math.rad(angle), 0, 0)
end

for i, v in pairs(workspace.NPCs:GetDescendants()) do
if v:IsA("Model") and not table.find(npcTable, v.Name) then
table.insert(npcTable, v.Name)
end
end

for i, v in pairs(workspace.NPCs.MissionNPC:GetChildren()) do
if v:IsA("Model") and not table.find(questTable, v.Name) then
table.insert(questTable, v.Name)
end
end

local function tweentonpc()
for i, v in pairs(workspace.NPCs:GetDescendants()) do
if v:IsA("Model") and v.Name == Settings.Teleports.Selectednpc then
Tween(v:GetPivot().Position, 0)
end
end
end

local function stoptween()
ForceStop = true
end

local findmob = function()
local MaxDistance = math.huge
local find = nil
for i, v in pairs(workspace.Entities:GetChildren()) do
if
string.find(v.Name, Settings.Farms.Selectedmob)
and v:FindFirstChild("HumanoidRootPart")
and v.Humanoid.Health > 0
then
local magnitude = (player.Character:GetPivot().Position - v:GetPivot().Position).Magnitude
if magnitude < MaxDistance then
MaxDistance = magnitude
find = v
end
else
print("No mob found")
end
end
return find
end



local function MobFarm()
if Settings.Farms.MobFarm then
if Settings.Farms.Position >= 0 then
local mob = findmob()
Tween(mob:GetPivot().Position + Vector3.new(0, Settings.Farms.Position, 0), -90)
if (mob:GetPivot().Position - player.Character:GetPivot().Position).magnitude <= 15 then
Tween(mob:GetPivot().Position + Vector3.new(0, Settings.Farms.Position, 0), -90)
attackremote:FireServer("LightAttack")
end
else
local mob = findmob()
Tween(mob:GetPivot().Position + Vector3.new(0, Settings.Farms.Position, 0), 90)
if (mob:GetPivot().Position - player.Character:GetPivot().Position).magnitude <= 15 then
Tween(mob:GetPivot().Position + Vector3.new(0, Settings.Farms.Position, 0), 90)
attackremote:FireServer("LightAttack")
end
end
end
end

local near = function()
if not Settings.Autoquest.Toggle then
return
end
if player.PlayerGui.QueueUI.Enabled == true then
local distance = math.huge
local z = nil
for i, v in pairs(workspace.Entities:GetChildren()) do
if string.find(v.Name, "Fishbone") or string.find(v.Name, "Frisker") then
if v.Humanoid.Health > 0 and v:FindFirstChild("Highlight") then
local magnitude = (player.Character:GetPivot().Position - v:GetPivot().Position).Magnitude
if magnitude < distance then
distance = magnitude
z = v
end
end
end
end
return z
end
end

local questboard = function()
if not Settings.Autoquest.Toggle then
return
end
if player.PlayerGui.MissionsUI.Queueing.Visible == false and player.PlayerGui.QueueUI.Enabled == false then
local distance = math.huge
local quest
for i, v in pairs(workspace.NPCs.MissionNPC:GetChildren()) do
if string.find(v.Name, "MissionBoard") then
local magnitude = (player.Character:GetPivot().Position - v:GetPivot().Position).Magnitude
if magnitude < distance then
distance = magnitude
quest = v
end
end
end
return quest
end
end

--player.PlayerGui.MissionsUI.Queueing.Visible == false

local function autoquest()
if not Settings.Autoquest.Toggle then
return
end
player.Character.Humanoid:ChangeState("FreeFall")
if player.PlayerGui.QueueUI.Enabled == true then
local dummy = near()
if Settings.Autoquest.Position >= 0 then
Tween(dummy:GetPivot().Position + Vector3.new(0, Settings.Autoquest.Position, 0), -90)
if (player.Character:GetPivot().Position - dummy:GetPivot().Position).Magnitude < 25 then
Tween(dummy:GetPivot().Position + Vector3.new(0, Settings.Autoquest.Position, 0), -90)
attackremote:FireServer("LightAttack")
end
else
Tween(dummy:GetPivot().Position + Vector3.new(0, Settings.Autoquest.Position, 0), 90)
if (player.Character:GetPivot().Position - dummy:GetPivot().Position).Magnitude < 25 then
Tween(dummy:GetPivot().Position + Vector3.new(0, Settings.Autoquest.Position, 0), 90)
attackremote:FireServer("LightAttack")
end
end
elseif player.PlayerGui.QueueUI.Enabled == false then
if player.PlayerGui.MissionsUI.Queueing.Visible == false then
local quest = questboard()
local magnitude = (player.Character:GetPivot().Position - quest:GetPivot().Position).Magnitude
Tween(quest:GetPivot().Position + Vector3.new(0, -8, 0), 0)
if magnitude < 15 then
Tween(quest:GetPivot().Position + Vector3.new(0, -8, 0), 0)
task.wait()
fireclickdetector(quest.Board.Union.ClickDetector)
task.wait()
player[quest.Name]:FireServer("Yes")
end
end
end
end

local function streamermode() -- hides your user on the party list
player.PlayerGui.MissionsUI.MainFrame.ScrollingFrame[name].PlayerName.Text = "Asteria on top"
end

local function destroykillbricks()
for i, v in pairs(workspace.DeathBricks:GetChildren()) do
v:Destroy()
end
end
local function instantreset()
player.Character.Head:Destroy()
end

local function chatlogger()
loadstring(game:HttpGet("https://raw.githubusercontent.com/mac2115/Cool-private/main/ESP", true))()
end

local function Teleport()
if game.PlaceId == 14071822972 then
for i, v in
pairs(game:GetService("ReplicatedStorage").Requests.RequestServerList:InvokeServer("Wandenreich City"))
do
if v.JobID ~= game.JobId then
wait()
player.Character.CharacterHandler.Remotes.ServerListTeleport:FireServer("Wandenreich City", v.JobID)
break
end
end
elseif game.PlaceId == 14070029709 then
for i, v in pairs(game:GetService("ReplicatedStorage").Requests.RequestServerList:InvokeServer("Soul Society")) do
if v.JobID ~= game.JobId then
wait()
player.Character.CharacterHandler.Remotes.ServerListTeleport:FireServer("Soul Society", v.JobID)
break
end
end
elseif game.PlaceId == 14069122388 then
for i, v in pairs(game:GetService("ReplicatedStorage").Requests.RequestServerList:InvokeServer("Hueco Mundo")) do
if v.JobID ~= game.JobId then
wait()
player.Character.CharacterHandler.Remotes.ServerListTeleport:FireServer("Hueco Mundo", v.JobID)
break
end
end
elseif game.PlaceId == 14069678431 then
for i, v in pairs(game:GetService("ReplicatedStorage").Requests.RequestServerList:InvokeServer("Karakura Town")) do
if v.JobID ~= game.JobId then
wait()
player.Character.CharacterHandler.Remotes.ServerListTeleport:FireServer("Karakura Town", v.JobID)
break
end
end
elseif game.PlaceId == 14069866342 then
for i, v in pairs(game:GetService("ReplicatedStorage").Requests.RequestServerList:InvokeServer("Las Noches")) do
if v.JobID ~= game.JobId then
wait()
player.Character.CharacterHandler.Remotes.ServerListTeleport:FireServer("Las Noches", v.JobID)
break
end
end
elseif game.PlaceId == 14069956183 then
for i, v in
pairs(game:GetService("ReplicatedStorage").Requests.RequestServerList:InvokeServer("Rukon District"))
do
if v.JobID ~= game.JobId then
wait()
player.Character.CharacterHandler.Remotes.ServerListTeleport:FireServer("Rukon District", v.JobID)
break
end
end
end
end


local function autoequip()
spawn(function()
if not Settings.Farms.Autoequip then
return
end
if player.Character:FindFirstChild("Zanpakuto") then
player.Character.CharacterHandler.Remotes.Weapon:FireServer("UnsheatheWeapon")
else
return
end
end)
end

local function farmclosest()
if not Settings.Closest.Toggle then
return
end
local distance = Settings.Closest.Distance
for i, v in pairs(workspace.Entities:GetChildren()) do
if v.Humanoid.Health > 0 and v ~= player.Character then
local magnitude = (player.Character:GetPivot().Position - v:GetPivot().Position).magnitude
if magnitude <= distance then
player.Character.Humanoid:ChangeState("FreeFall")
if Settings.Closest.Position >= 0 then
Tween(v:GetPivot().Position + Vector3.new(0, Settings.Closest.Position, 0), -90)
attackremote:FireServer("LightAttack")
else
Tween(v:GetPivot().Position + Vector3.new(0, Settings.Closest.Position, 0), 90)
attackremote:FireServer("LightAttack")
end
end
end
end
end


local adju = function()
if not Settings.Adjfarm.Toggle then
return
end
local distance = math.huge
local q
for i, v in pairs(workspace.Entities:GetChildren()) do
if string.find(v.Name, "Jackal") and v:FindFirstChild("HumanoidRootPart") then
local magnitude = (player.Character:GetPivot().Position - v:GetPivot().Position).Magnitude
if magnitude < distance then
distance = magnitude
q = v
end
end
end
return q
end


local function adjufarm()
if not Settings.Adjfarm.Toggle then
return
end
local v = adju()
if v == nil then
Teleport()
else
player.Character.Humanoid:ChangeState("FreeFall")
if v.Humanoid.Health > 0 then
if Settings.Adjfarm.Position >= 0 then
Tween(v:GetPivot().Position + Vector3.new(0, Settings.Adjfarm.Position, 0), -90)
if (player.Character:GetPivot().Position - v:GetPivot().Position).Magnitude < 25 then
Tween(v:GetPivot().Position + Vector3.new(0, Settings.Adjfarm.Position, 0), -90)
attackremote:FireServer("LightAttack")
end
else
Tween(v:GetPivot().Position + Vector3.new(0, Settings.Autoquest.Position, 0), 90)
if (player.Character:GetPivot().Position - v:GetPivot().Position).Magnitude < 25 then
Tween(v:GetPivot().Position + Vector3.new(0, Settings.Adjfarm.Position, 0), 90)
attackremote:FireServer("LightAttack")
end
end
elseif v.Humanoid.Health == 0 then
Teleport()
end
end
end

local function shikaichecker() end

local function obby()
if not Settings.Obby then
return
end
for i, v in pairs(workspace.PartialRes.PartialResObby:GetChildren()) do
if v.Name == "PartialObject" then
local magnitude = (player.Character:GetPivot().Position - v:GetPivot().Position).magnitude
Tween(v:GetPivot().Position, 0)
if magnitude <= 15 then
Tween(v:GetPivot().Position, 0)
fireclickdetector(v.ClickDetector)
end
end
end
end

local function minigame()
if not Settings.Minigame then
return
end
if player.PlayerGui:FindFirstChild("Division11Minigame") then
for i, v in pairs(player.PlayerGui.Division11Minigame.Frame:GetChildren()) do
if string.find(v.Name, "HollowImage") and v:FindFirstChild("UISizeConstraint") then
v.UISizeConstraint.MaxSize = Vector2.new(1000, 1000)
v.UISizeConstraint.MinSize = Vector2.new(1000, 1000)
end
end
else
fireclickdetector(workspace.NPCs.DivisionDuties["Division Duties 12"].Board.Click.ClickDetector)
player:FindFirstChild("Division Duties 12"):FireServer("Yes")
end
end









--//UI
loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
local GUI = Mercury:Create({
Name = "Asteria",
Size = UDim2.fromOffset(600, 400),
Theme = Mercury.Themes.Dark,
Link = "Asteria/TypeSoul",
})
local Tab = GUI:Tab({
Name = "Main",
Icon = "rbxassetid://8569322835",
})

Tab:Toggle({
Name = "MobFarm",
StartingState = false,
Description = nil,
Callback = function(state)
Settings.Farms.MobFarm = state
end,
})

local MyDropdown = Tab:Dropdown({
Name = "Mob selector",
StartingText = "Select...",
Description = nil,
Items = mobTable,
Callback = function(item)
Settings.Farms.Selectedmob = item
end,
})

Tab:Slider({
Name = "Farm position",
Default = 6,
Min = -25,
Max = 25,
Callback = function(val)
Settings.Farms.Position = val
end,
})

Tab:Slider({
Name = "TweenSpeed",
Default = 80,
Min = 0,
Max = 250,
Callback = function(val)
Settings.Farms.TweenSpeed = val
end,
})

Tab:Toggle({
Name = "Autoequip",
StartingState = false,
Description = nil,
Callback = function(state)
Settings.Farms.Autoequip = state
end,
})

Tab:Toggle({
Name = "Autoquest",
StartingState = false,
Description = nil,
Callback = function(state)
Settings.Autoquest.Toggle = state
end,
})

Tab:Slider({
Name = "Farm position",
Default = 6,
Min = -25,
Max = 25,
Callback = function(val)
Settings.Autoquest.Position = val
end,
})

Tab:Toggle({
Name = "Adju farm",
StartingState = false,
Description = nil,
Callback = function(state)
Settings.Adjfarm.Toggle = state
end,
})

Tab:Slider({
Name = "Farm position",
Default = 6,
Min = -25,
Max = 25,
Callback = function(val)
Settings.Adjfarm.Position = val
end,
})

Tab:Toggle({
Name = "Farm closest",
StartingState = false,
Description = nil,
Callback = function(state)
Settings.Closest.Toggle = state
end,
})

Tab:Slider({
Name = "Farm position",
Default = 6,
Min = -25,
Max = 25,
Callback = function(val)
Settings.Closest.Position = val
end,
})

Tab:Slider({
Name = "Range",
Default = 50,
Min = 0,
Max = 250,
Callback = function(val)
Settings.Closest.range = val
end,
})

local Tab = GUI:Tab({
Name = "Misc",
Icon = "rbxassetid://8569322835",
})

Tab:Toggle({
Name = "Minigame simplifier",
StartingState = false,
Description = nil,
Callback = function(state)
Settings.Minigame = state
end,
})

Tab:Toggle({
Name = "Complete res obby",
StartingState = false,
Description = nil,
Callback = function(state)
Settings.Obby = state
end,
})

Tab:Button({
Name = "Serverhop",
Description = nil,
Callback = function()
Teleport()
end,
})

Tab:Button({
Name = "Chatlogger",
Description = nil,
Callback = function()
chatlogger()
end,
})

Tab:Button({
Name = "Streamer mode",
Description = nil,
Callback = function()
streamermode()
end,
})

Tab:Button({
Name = "Instant reset",
Description = nil,
Callback = function()
instantreset()
end,
})

Tab:Button({
Name = "Destroy killbricks",
Description = nil,
Callback = function()
destroykillbricks()
end,
})

local MyDropdown = Tab:Dropdown({
Name = "Tween to npc",
StartingText = "Select...",
Description = nil,
Items = mobTable,
Callback = function(item)
Settings.Teleports.Selectednpc = item
tweentonpc()
end,
})

Tab:Button({
Name = "Stop tween",
Description = nil,
Callback = function()
stoptween()
end,
})

local Tab = GUI:Tab({
Name = "Visuals",
Icon = "rbxassetid://8569322835",
})

Tab:Toggle({
Name = "Esp toggle",
StartingState = false,
Description = nil,
Callback = function(state)
ESP.Enabled = state
end,
})

Tab:Toggle({
Name = "Teammates",
StartingState = false,
Description = nil,
Callback = function(state)
ESP.TeamMates = state
end,
})

Tab:Toggle({
Name = "Names",
StartingState = false,
Description = nil,
Callback = function(state)
ESP.Names = state
end,
})
Tab:Toggle({
Name = "Boxes",
StartingState = false,
Description = nil,
Callback = function(state)
ESP.Boxes = state
end,
})

Tab:ColorPicker({
Style = Mercury.ColorPickerStyles.Legacy,
Callback = function(color)
ESP.Color = color
end,
})

--//configs

--//Loops

local function notifier()
if not Settings.Notifier then
return
end

for i, v in pairs(game.Players:GetChildren()) do
if table.find(modtable, v.UserId) then
player:Kick("An Admin has joined your server")
end
end
end

game:GetService("RunService").Heartbeat:connect(function()
autoquest()
MobFarm()
adjufarm()
autoequip()
farmclosest()
notifier()
obby()
minigame()
end)