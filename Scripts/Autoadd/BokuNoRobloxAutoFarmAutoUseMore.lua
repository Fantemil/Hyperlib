-- Handle Loading and Config | Saw this on a release and decided to use htis since its much cleaner @ https://v3rmillion.net/showthread.php?tid=1149810
FTS = "ZenLib - Boku No Roblox"
local ZenLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/laderite/scripts/main/library.lua"))()
ver = "1.0"
local win = ZenLib:New({
 Name = "Boku No Roblox - Zen X",
 FolderToSave = FTS
})

getgenv().loaded = false

default = {
    autofarm = false,
    mob = "",
 autoquest = false,
 teleport = false,
 q = false,
 z = false,
 x = false,
 c = false,
 v = false,
 f = false,
 e = false,
 autostat = false,
 strength = false,
 agility = false,
 durability = false,
 stun = false,
 spin = false,
 quirk = "",
 speed = 16,
 jump = 50,
    version = ver,
}

local Quests = {
 -- Defeat Villains
 ["Criminal"] = {"Injured Man", "15/15"},
 ["Weak Villain"] = {"Aizawa", "15/15"},
 ["Villain"] = {"Hero", "15/15"},
 ["Weak Nomu "] = {"Jeanist", "15/15"},
 ["High End "] = {"Mirko", "15/15"},

 -- Defeat Heros
 ["Police"] = {"Gang Member", "15/15"},
 ["UA Student "] = {"Suspicious Character", "15/15"},
 ["Forest Beast"] = {"Twice", "15/15"},
 ["Pro Hero "] = {"Toga", "15/15"},
}

if not isfile(FTS .. "/configs/config.json") then
    writefile(FTS .. "/configs/config.json", game:GetService("HttpService"):JSONEncode(default))
end
Settings = game:GetService("HttpService"):JSONDecode(readfile(FTS .. "/configs/config.json"))
if Settings.version ~= ver then
    delfile(FTS .. "/configs/config.json")
    writefile(FTS .. "/configs/config.json", game:GetService("HttpService"):JSONEncode(default))
end
function save()
    writefile(FTS .. "/configs/config.json", game:GetService("HttpService"):JSONEncode(Settings))
end

local VirtualInputManager = game:GetService('VirtualInputManager')

-- 

-- Setup NPC List

function contains(table, key)
    for _, value in pairs(table) do
        if value == key then return true end
    end
    return false
end

function GetMobs()
 local AllNPCS = {
  Villains = {},
  Heros = {},
  All = {}
 }
 for _, npc in pairs(game.Workspace.NPCs:GetChildren()) do
  local fame = game.Workspace.NPCs[npc.Name].Fame.Value
  local name = npc.Name:gsub('[0-9\n]','')
  if fame > 0 then
   if not contains(AllNPCS.Heros, name) then
    table.insert(AllNPCS.Heros, name)
   end
  else
   if not contains(AllNPCS.Villains, name) then
    table.insert(AllNPCS.Villains, name)
   end
  end
 end
 for _, v in pairs({"Villains", "Heros"}) do
  table.insert(AllNPCS.All, "-- "..v.." --")
  for _, npc in pairs(AllNPCS[v]) do
   table.insert(AllNPCS.All, npc)
  end
 end
 return AllNPCS.All
end
--

-- Useful Functions

function AcceptQuest(args)
 game.ReplicatedStorage.Remotes.Quest.AcceptQuest:FireServer(unpack(args))
end

function CompleteQuest(args)
 game.ReplicatedStorage.Remotes.Quest.CompleteQuest:FireServer(unpack(args))
end

function AbortQuest(args)
 game.ReplicatedStorage.Remotes.Quest.CancelQuest:FireServer("CancelQuestScript")
end

function GetCooldown(Key)
 local cooldown = game.Players.LocalPlayer.PlayerGui.CooldownGui.Main[Key].Timer.Text
 return (cooldown) and cooldown or "0.0s"
end

function safeteleport(Position)
 game.Players.LocalPlayer.Character.Humanoid.Sit = true
 repeat wait() until not game.Players.LocalPlayer:FindFirstChild("LastSpawned")
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position + Vector3.new(0, 1, 3)
 wait(0.1)
 game.Players.LocalPlayer.Character.Humanoid.Sit = false
 wait(0.1)
end

function UseSkill(Key, Enemy)
 local descendants = game.Players.LocalPlayer.Character:GetDescendants()
 for _, descendant in pairs(descendants) do
  if descendant.Name == Key then
   if Key == "E" then
    descendant:FireServer()
    wait(0.1)
   else
    if contains({"0.0s", "0.1s"}, GetCooldown(Key)) then
     descendant:FireServer(Vector3.new(Enemy.x, Enemy.y, Enemy.z))
    end
   end
  end
 end
 wait(0.3)
end

function blockac()
 local oldnamecall
 oldnamecall = hookmetamethod(game, "__namecall", function(self, ...)
  local args = {...}
  if getnamecallmethod() == "FireServer" and self.Name == "ExploitKick" then 
   return
  end
  return oldnamecall(self, ...)
 end)
end

function direction(chr, target) -- found this func somewhere
    if chr.PrimaryPart then 
        local chrPos=chr.PrimaryPart.Position 
        local tPos=target.Position 
        local newCF=CFrame.new(chrPos,tPos) 
        chr:SetPrimaryPartCFrame(newCF)
    end
end

function acquiremob(mob)
 local target
 for _, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
  local name = v.Name:gsub('[0-9\n]','')
        if name == mob and v.Humanoid ~= nil and v then
            if v.Humanoid.Health ~= 0 then
                target = v
            end
        end
    end
 return target
end

function kill()
 while getgenv().autofarm and getgenv().loaded do
  wait(0.1)
  local target = acquiremob(getgenv().mob)
  if target then
   for _, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    local name = v.Name:gsub('[0-9\n]','')
    if name == mob and v.Humanoid ~= nil and v then
     if v.Humanoid.Health ~= 0 then
      repeat
       if not getgenv().teleport then
        safeteleport(v.HumanoidRootPart.CFrame)
        direction(game.Players.LocalPlayer.Character, v.HumanoidRootPart)
       end
       wait()
       for key, bool in pairs(Settings) do
        if string.len(key) == 1 and bool then
         UseSkill(string.upper(key), v.HumanoidRootPart.CFrame)
        end
       end
       wait()
      until v.Humanoid.Health == 0 or game.Players.LocalPlayer.Character.Humanoid.Health == 0 or not v:IsDescendantOf(game.Workspace.NPCs) or not v.HumanoidRootPart:IsDescendantOf(v)
     end
    end
   end
   kill()
  end
 end
end

--

-- UI

local farm = win:Tab("Farming")
local autofarm = farm:Section("Auto Farm")
local autoskill = farm:Section("Auto Skill")
local misc = win:Tab("Misc")
local autostat = misc:Section("Auto Stat")
local other = misc:Section("Miscellaneous")

autofarm:Toggle("Auto Farm", Settings.autofarm, "Toggle",function(v)
    getgenv().autofarm = v
    Settings.autofarm = v
    save()
 kill()
end)
autofarm:Toggle("Auto Quest", Settings.autoquest, "Toggle",function(v)
    getgenv().autoquest = v
    Settings.autoquest = v
    save()
end)
autofarm:Dropdown("Mob", GetMobs(), Settings.mob,"Dropdown", function(v)
    getgenv().mob = v
    Settings.mob = v
    save()
end)
autofarm:Toggle("No Teleport", Settings.teleport, "Toggle",function(v)
    getgenv().teleport = v
    Settings.teleport = v
    save()
end)

autoskill:Toggle("Q Skill", Settings.q, "Toggle",function(v)
    getgenv().q = v
    Settings.q = v
    save()
end)
autoskill:Toggle("Z Skill", Settings.z, "Toggle",function(v)
    getgenv().z = v
    Settings.z = v
    save()
end)
autoskill:Toggle("X Skill", Settings.x, "Toggle",function(v)
    getgenv().x = v
    Settings.x = v
    save()
end)
autoskill:Toggle("C Skill", Settings.c, "Toggle",function(v)
    getgenv().c = v
    Settings.c = v
    save()
end)
autoskill:Toggle("V Skill", Settings.v, "Toggle",function(v)
    getgenv().v = v
    Settings.v = v
    save()
end)
autoskill:Toggle("F Skill", Settings.f, "Toggle",function(v)
    getgenv().f = v
    Settings.f = v
    save()
end)
autoskill:Toggle("Melee", Settings.e, "Toggle",function(v)
    getgenv().e = v
    Settings.e = v
    save()
end)

autostat:Toggle("Auto Stat", Settings.autostat, "Toggle",function(v)
    getgenv().autostat = v
    Settings.autostat = v
    save()
end)
autostat:Toggle("Strength", Settings.strength, "Toggle",function(v)
    getgenv().strength = v
    Settings.strength = v
    save()
end)
autostat:Toggle("Agility", Settings.agility, "Toggle",function(v)
    getgenv().agility = v
    Settings.agility = v
    save()
end)
autostat:Toggle("Durability", Settings.durability, "Toggle",function(v)
    getgenv().durability = v
    Settings.durability = v
    save()
end)

other:Toggle("Disable Stuns", Settings.stun, "Toggle",function(v)
    getgenv().stun = v
    Settings.stun = v
    save()
end)

other:Textbox("Wanted Quirk", false, function(v)
 getgenv().quirk = v
    Settings.quirk = v
    save()
end)

other:Toggle("Auto Spin", Settings.spin, "Toggle",function(v)
    getgenv().spin = v
    Settings.spin = v
    save()
end)

other:Slider("Walk Speed", 16, 500, 17, 1, "Slider", function(v)
 getgenv().speed = v
    Settings.speed = v
    save()
 game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

other:Slider("Jump Power", 50, 500, 51, 1, "Slider", function(v)
 getgenv().jump = v
    Settings.jump = v
    save()
 game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)
--

-- Cooldown Removal & Wait on Death

game.Players.LocalPlayer.CharacterAdded:connect(function()
 wait(1)
 blockac()
 wait(1)
 kill()
end)

game:GetService("RunService").RenderStepped:Connect(function()
 if game:GetService("Players").LocalPlayer.Character then
  if getgenv().stun then
   for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if v.Name == "StunAnims" then
     v:Destroy()
    end
   end
  end
 end
end)

--

-- Auto Stat / Questing

coroutine.resume(coroutine.create(function()
    while wait(0.3) do
  local Player = game.Players.LocalPlayer
        if getgenv().autoquest and Player.Character ~= nil then
   print(getgenv().mob, Quests[getgenv().mob])
   if Quests[getgenv().mob] then
    local QuestObjective = Player.PlayerGui.QuestGui.QuestObjectives.NPCName.Text
    local QuestProgress = Player.PlayerGui.QuestGui.QuestObjectives.KilledAmount.Text
    if QuestProgress == Quests[getgenv().mob][2] then
     CompleteQuest({[1] = Quests[getgenv().mob][1], [2] = "Quest"})
    elseif QuestProgress == "" then
     AcceptQuest({[1] = Quests[getgenv().mob][1], [2] = "Quest"})
    elseif QuestObjective == "" then
     AbortQuest()
    end
   end
  end
    end
end))

coroutine.resume(coroutine.create(function()
    while wait(0.3) do
        if getgenv().autostat then
   local points = tonumber(game.Players.LocalPlayer.PlayerGui.MainMenus.StatsPage.AvalPointsFrame.Points.Text)
   if points > 0 then
    if getgenv().strength then
     game.ReplicatedStorage.Remotes.Strength:FireServer(1)
    end
    if getgenv().agility then
     game.ReplicatedStorage.Remotes.Agility:FireServer(1)
    end
    if getgenv().durability then
     game.ReplicatedStorage.Remotes.Durability:FireServer(1)
    end
   end
  end
    end
end))

coroutine.resume(coroutine.create(function()
    while wait(0.5) do
  local quirk = game.Players.LocalPlayer.PlayerGui.playerhud.playerstats.display.quirk.Text
  local current = string.gsub(quirk, "Quirk: ", "")
        if getgenv().spin and not string.find(current, getgenv().quirk) and getgenv().quirk ~= "" then
   local args = {[1] = "Commons"}
   workspace.S1c2R5i66p5t5s51.Spin.Spinner:InvokeServer(unpack(args))
  end
    end
end))

--

for _,v in pairs(Settings) do
    getgenv()[_] = v
end

blockac()
kill()
getgenv().loaded = true