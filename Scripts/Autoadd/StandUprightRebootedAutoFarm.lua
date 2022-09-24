if not game:IsLoaded() then
   game.Loaded:Wait()
end

--//Dependencies
game:GetService("Workspace").Fartinglloll.Name = "Npcs"
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/uwuware-ui/main/main.lua"))()

--//Variables
local Client = Players.LocalPlayer
local Character = Client.Character or Client.CharacterAdded:Wait()

local DataFolder = Client:WaitForChild("Data")
local QuestFolder = DataFolder:WaitForChild("Quests")

local ClientStand = DataFolder:WaitForChild("Stand")

local Window = Library:CreateWindow("Stand Upright: Rebooted")
local MainFolder = Window:AddFolder("Main")
local CreditsFolder = Window:AddFolder("Credits")

local ItemFolder = workspace.Items
local NPCFolder = workspace.Npcs
local LivingFolder = workspace.Living

local TargetMob = nil
local LastAttack = 0

local NoclipParts = {}
local MobValues = {}
local StandList = {}
local QuestList = {
   ["Bad Gi"] = "1+",
   ["Giorno Giovanna"] = "5+",
   ["Scary Monster"] = "10+",
   ["Rker Dummy"] = "15+",
   ["Dio Over Heaven"] = "25+",
   ["Yoshikage Kira"] = "30+",
   ["Angelo"] = "40+",
   ["Alien"] = "50+",
   ["Jotaro Part 4"] = "65+",
   ["Kakyoin"] = "75+",
   ["Jungle Bandit"] = "90+",
}

for _, QuestNPC in ipairs(NPCFolder:GetChildren()) do --shit fix but u know it works xD
   if not QuestNPC:FindFirstChild("Head") then continue end
   local MainUI = QuestNPC.Head:FindFirstChild("Main")
   if not MainUI then continue end
   local TextBox = MainUI:FindFirstChildWhichIsA("TextBox")
   if not TextBox then continue end

   for MobName, NPCName in pairs(QuestList) do
       if type(NPCName) == "userdata" then continue end
       if TextBox.Text:find(NPCName) then
           QuestList[MobName] = QuestNPC
       end
   end
end


local StandBlacklist = {"CauldronBlack", "TalkingBen", "GER"}
local TweenObject = nil

--//Functions
local function Teleport(Position)
   if TweenObject then
       TweenObject:Cancel()
       TweenObject:Destroy()
       TweenObject = nil
   end

   local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
   if not HumanoidRootPart then return end
   HumanoidRootPart.Anchored = false

   if Client:DistanceFromCharacter(Position) > 5 then
       local Info = TweenInfo.new((Position - HumanoidRootPart.Position).Magnitude/Library.flags.TweenSpeed, Enum.EasingStyle.Linear)
       TweenObject = game:GetService("TweenService"):Create(HumanoidRootPart, Info, {CFrame = CFrame.new(Position)})
       TweenObject:Play()
   else
       HumanoidRootPart.CFrame = CFrame.new(Position) * CFrame.new(0, 8, 0) * CFrame.Angles(math.rad(-90),0,0)
   end
end

local function AddNoclipParts(Character)
   NoclipParts = {}
   Character:WaitForChild("Head")
   for _, BasePart in pairs(Character:GetChildren()) do
       if not BasePart:IsA("BasePart") then continue end
       NoclipParts[#NoclipParts + 1] = BasePart
   end
end


local function IsAlive(Model)
   if not Model or not Model.Parent then return end
   local Humanoid = Model:FindFirstChildWhichIsA("Humanoid")

   if not Humanoid or not Model:FindFirstChild("HumanoidRootPart") then return end
   if Humanoid:GetState() == Enum.HumanoidStateType.Dead then return end
   
   return true
end

local function GetQuest()
   local NPC = QuestList[Library.flags.Target]
   if not NPC then return end

   for _, Folder in ipairs(QuestFolder:GetChildren()) do
       local EnemyObject = Folder:FindFirstChild("Enemy")

       if EnemyObject and EnemyObject.Value == Library.flags.Target then
           if Folder.Completed.Value then
               NPC.QuestDone:FireServer()
           end
           return
       end
   end

   NPC.Done:FireServer() --get quest
end

local function Attack()
   local EventFolder = Character:FindFirstChild("StandEvents")
   if not EventFolder then return end
   
   EventFolder.M1:FireServer()

   if Library.flags.StandAttack then        
       local Stand = Character:FindFirstChild("Stand")
       if not Stand then return end

       if not Character.Aura.Value then
           EventFolder.Summon:FireServer()
       end

       if os.clock() - LastAttack < 0.5 then return end --lag prevention
       LastAttack = os.clock()

       for _, Event in ipairs(EventFolder:GetChildren()) do
           if Event.Name == "Block" then continue end
           if Event.Name == "Quote" then continue end
           if Event.Name == "Pose" then continue end
           if Event.Name == "Summon" then continue end
           if Event.Name == "TogglePilot" then continue end
           Event:FireServer(true)
       end
   end
end

local function GetItem(Tool)
   if not Library.flags.Itemfarm then return end
   if not Tool:IsA("Tool") then return end
   local Handle = Tool:WaitForChild("Handle", 5)

   repeat task.wait()
       Teleport(Handle.Position)
       if Client:DistanceFromCharacter(Handle.Position) > 10 then continue end
       Character.Humanoid:EquipTool(Tool)
   until not Tool or Tool.Parent ~= ItemFolder or Tool.Parent ~= workspace
end

local function RunGetItem()
   if not Library.flags.Itemfarm then return end

   for _, Tool in ipairs(ItemFolder:GetChildren()) do
       GetItem(Tool)
   end

   for _, Tool in ipairs(workspace:GetChildren()) do
       GetItem(Tool)
   end
end

local function SetTargetMob()
   if Library.flags.LairFarm then
       local Boss = LivingFolder:FindFirstChild("Boss")
       if not Boss then return end

       TargetMob = Boss
       return
   end

   for _, Mob in ipairs(LivingFolder:GetChildren()) do
       if Players:GetPlayerFromCharacter(Mob) then continue end
       if not IsAlive(Mob) then continue end
       if Mob.Name ~= Library.flags.Target then continue end
       TargetMob = Mob
       return
   end
   
   Character.HumanoidRootPart.Anchored = true
end

local function HideName()
   if not Library.flags.NameHide then return end
   Character:WaitForChild("Head"):WaitForChild("HealthGui"):Destroy()
end

local function GetLair()
   if not Library.flags.LairFarm then return end

   for _, NPC in ipairs(NPCFolder:GetChildren()) do --eeeeeeeeee
       if not NPC:FindFirstChild("Head") then continue end

       local SubUI = NPC.Head:FindFirstChild("Sub")
       if not SubUI or not SubUI:FindFirstChildWhichIsA("TextBox") or SubUI:FindFirstChildWhichIsA("TextBox").Text ~= "Lair Quest" then continue end

       local MainUI = NPC.Head:FindFirstChild("Main")
       if not MainUI then continue end

       local TextBox = MainUI:FindFirstChildWhichIsA("TextBox")
       if not TextBox then continue end
       
       if string.lower(TextBox.Text):find(string.lower(Library.flags.LairTarget.."+")) then
           NPC.Done:FireServer()
       end
   end
end

--//Init
RunService.Heartbeat:Connect(function()
   if not Library.flags.MobFarm then return end
   if not Character then return end

   if not IsAlive(Character) then return end
   if not IsAlive(TargetMob) or TargetMob.Name ~= Library.flags.Target and TargetMob.Name ~= "Boss" then
       return SetTargetMob()
   end
   if IsAlive(TargetMob) and LivingFolder:FindFirstChild("Boss") and TargetMob.Name ~= "Boss" then
       return SetTargetMob()
   end

   if Library.flags.AutoQuest then
       GetQuest()
   end
   
   Character.HumanoidRootPart.CFrame =TargetMob.HumanoidRootPart.CFrame * CFrame.new(0, 0, 4)
   Attack()
end)

RunService.Stepped:Connect(function() --noclip
   if not Library.flags.Noclip then return end
   
   for i = 1, #NoclipParts do
       NoclipParts[i].CanCollide = false
   end

   local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
   if not HumanoidRootPart then return end

   if HumanoidRootPart.RotVelocity.Magnitude >= 50 or HumanoidRootPart.Velocity.Magnitude >= 50 then --prevent fling
       HumanoidRootPart.RotVelocity = Vector3.new()
       HumanoidRootPart.Velocity = Vector3.new()
   end
end)

Client.CharacterAdded:Connect(function(NewCharacter)
   Character = NewCharacter
   AddNoclipParts(NewCharacter)
   HideName()
   GetLair()
   RunGetItem()
end)
AddNoclipParts(Character)

ItemFolder.ChildAdded:Connect(GetItem)
workspace.ChildAdded:Connect(GetItem)

local Old; Old = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
   local Method = getnamecallmethod()

   if Method == "Raycast" or Method == "Kick" or Method == "FireServer" and tostring(self) == "PlayerStandMainHandle" then
       return wait(9e9)
   end
   
   return Old(self, ...)
end))
for _, Connection in pairs(getconnections(Client.Idled)) do --anti afk
   Connection:Disable()
end

--//UI
for MobName, _ in pairs(QuestList) do
   if table.find(MobValues, MobName) then continue end
   MobValues[#MobValues + 1] = MobName
end

for _, Mob in ipairs(LivingFolder:GetChildren()) do
   if Players:GetPlayerFromCharacter(Mob) then continue end
   if table.find(MobValues, Mob.Name) then continue end
   MobValues[#MobValues + 1] = Mob.Name
end

for _, StandObject in ipairs(game:GetService("ReplicatedStorage").StandNameConvert:GetChildren()) do
   if table.find(StandList, StandObject.Name) then continue end
   if table.find(StandBlacklist, StandObject.Name) then continue end
   if string.lower(StandObject.Name):find("oh") or string.lower(StandObject.Name):find("overheaven")  then continue end

   StandList[#StandList + 1] = StandObject.Name
end

MainFolder:AddList({text = "Mob Target", flag = "Target", values = MobValues})
MainFolder:AddList({text = "Lairs", flag = "LairTarget", values = {"Lvl. 15", "Lvl. 40", "Lvl. 80", "Lvl. 100"}})
MainFolder:AddList({text = "Stand Farm", flag = "TargetStand", values = StandList})
MainFolder:AddList({text = "Arrow Selector[Stand Farm]", flag = "Arrow", values = {"Stand Arrow", "Charged Arrow"}})
MainFolder:AddSlider({text = "Tween Speed", flag = "TweenSpeed", min = 50, max = 100})

MainFolder:AddToggle({text = "ENABLE FARM", flag = "MobFarm", callback = function(Bool)
   if TweenObject then
       TweenObject:Cancel()
       TweenObject:Destroy()
       TweenObject = nil
   end
   
   Character.HumanoidRootPart.Anchored = false
end})
MainFolder:AddToggle({text = "Lair Farm", flag = "LairFarm", callback = GetLair}) --get lair quest
MainFolder:AddToggle({text = "Item Farm", flag = "Itemfarm", callback = RunGetItem})
MainFolder:AddToggle({text = "Stand Farm", flag = "StandFarm", callback = function()
   while Library.flags.StandFarm and ClientStand.Value ~= Library.flags.TargetStand and task.wait(0.2) do
       local Arrow = Client.Backpack:FindFirstChild(Library.flags.Arrow) or Character:FindFirstChild(Library.flags.Arrow)
       local Fruit = Client.Backpack:FindFirstChild("Rokakaka") or Character:FindFirstChild("Rokakaka")

       if not Arrow or not Fruit then continue end

       if ClientStand.Value == "None" then
           repeat
               Arrow.Parent = Character
               task.wait(0.3)
               Arrow.Use:FireServer()
           until ClientStand.Value ~= "None" or not Library.flags.StandFarm
       else
           repeat
               Fruit.Parent = Character
               task.wait(0.3)
               Fruit.Use:FireServer()
           until ClientStand.Value == "None" or not Library.flags.StandFarm
       end
   end
end})

MainFolder:AddToggle({text = "Auto Quest", flag = "AutoQuest"})
MainFolder:AddToggle({text = "Auto Stand Skills", flag = "StandAttack"})
MainFolder:AddToggle({text = "Noclip", flag = "Noclip"})

CreditsFolder:AddLabel({text = "Script: Kaide"})
CreditsFolder:AddLabel({text = "UI Library: Jan"})
CreditsFolder:AddLabel({text = "Fixed By: Lololopink"})

Window:AddLabel({text = "StandFarm needs arrow/fruit"})
Window:AddLabel({text = "Reccommend low speed"})

Library:Init()