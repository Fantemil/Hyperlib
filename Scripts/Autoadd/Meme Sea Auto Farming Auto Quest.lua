--: services
local Players = game:GetService("Players")

--: vars
local LocalPlayer = Players.LocalPlayer
local NPCFolder = workspace:WaitForChild("Npc")
local MonsterFolder = workspace:WaitForChild("Monster")

--: game stuff
local GetLevel = function()
   return LocalPlayer.PlayerData.Level.Value
end

local EquipTool = function()
   if not LocalPlayer.Character then return end

   if not LocalPlayer.Character:FindFirstChildOfClass("Tool") then
       LocalPlayer:WaitForChild("Backpack").Combat.Parent = LocalPlayer.Character
   end
end

local GetMonsters = function(quest)
   local monsters = {}; for i, v in pairs(MonsterFolder:GetChildren()) do
       if string.lower(v.Name) == string.lower(quest.QuestScript.Enemy.Value) then
           table.insert(monsters, v)
       end
   end
   
   return monsters
end

local GetQuest = function()
   local doable = {}
   for i, v in pairs(NPCFolder:GetChildren()) do
       if not string.find(string.lower(v.Name), "quest") then continue end
       if string.find(v.Name, "[", 0, true) ~= nil then continue end

       local Quest; for i2, v2 in pairs(v:GetDescendants()) do
           if v2.ClassName == "ProximityPrompt" then
               Quest = v2
           end
       end
       
       if not Quest then continue end
       if GetLevel() <= Quest.QuestScript.LevelNeed.Value then continue end

       table.insert(doable, Quest)
   end

   local highestLvl = 0
   local highestQ; for i, v in pairs(doable) do
       if v.QuestScript.LevelNeed.Value > highestLvl then
           highestQ = v
       end
   end
   
   return highestQ
end

local Attack = function(quest)
   local Monsters = GetMonsters(quest)

   for i, v in pairs(Monsters) do
       repeat
           if not v:FindFirstChild("HumanoidRootPart") then return end
           if not LocalPlayer.Character then return end
           if not LocalPlayer.Character:FindFirstChild("Combat") then return end
           
           LocalPlayer.Character.Combat.Sword_Client.RemoteEvent:FireServer(1, v.HumanoidRootPart.Position)
           task.wait(.2)
       until not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0
   end
end

local DoQuest = function()
   local Quest = GetQuest()
   pcall(function()
       LocalPlayer.Character.HumanoidRootPart.Position = Vector3.new(Quest.Parent.Position.X, Quest.Parent.Position.Y + 10, Quest.Parent.Position.Z)
   end)
   fireproximityprompt(Quest, 0)

   repeat
       EquipTool()
       Attack(Quest)
       task.wait()
   until LocalPlayer:FindFirstChild("QuestLeader") == nil
end

--: main
while task.wait() do
   DoQuest()
end