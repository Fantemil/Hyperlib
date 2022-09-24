_G.AutoFarm = true
_G.AutoHealth = true
_G.AutoStamina = false
_G.Skill = {
   "Q",
   "E",
   "R",
   "F",
}
local Client = game.Players.LocalPlayer
local Stats = setmetatable({},{
   __index = function(t,k)
       local Chr = Client.Character
       local list = {
           all = Client.Stats:GetAttributes(),
           Char = Chr,
           Human = Chr and Chr:FindFirstChild("Humanoid"),
           Root = Chr and Chr:FindFirstChild("HumanoidRootPart"),
           IsAlive = (Chr and Chr:FindFirstChild("Humanoid") or {Health = 0}).Health > 1,
       }
       if rawget(list,k) then
           return rawget(list,k)
       end
       return Client.Stats:GetAttribute(k)
   end,
})

local Quests = {}
local boss = {}

for i=1,#workspace.QUEST:GetChildren() do v = workspace.QUEST[i]
   local Promt = v:FindFirstChild("ProximityPrompt",true)
   if Promt then
       local RLevel = Promt.ObjectText:split("LEVEL")[2]
       local LastCharacter = RLevel:sub(#RLevel,#RLevel)
       if RLevel then
           local multi = 1
           if not tonumber(LastCharacter) then
               multi = ({
                   k = 1e+3,
                   m = 1e+6,
                   b = 1e+9,
                   t = 1e+12,
                   q = 1e+15,
                   qn = 1e+18,
                   sx = 1e+21,
                   st = 1e+24,
                   oc = 1e+27,
                   n = 1e+30,
                   dc = 1e+33,
               })[LastCharacter:lower()]
               RLevel = RLevel:sub(0,#RLevel - 1)
           end
           local Comp = RLevel*multi
           Quests[Comp] = i
       end
   end
end

function CheckIsBoss()
   local Qt = Client.PlayerGui.Frames.Quests
   if Qt.Visible then
       return tonumber(Qt.Objective.Text:split("/")[2]) == 2
   end
end

function GetMob()
   if workspace.NPCS:FindFirstChild("QuestLocation") then
       return workspace.NPCS.QuestLocation.Adornee.Parent
   end
end

function AcceptQuest(quest)
   local now_level = 0
   if not quest then
       local nearest = math.huge
       for i,v in pairs(Quests) do
           if Stats.Level >= i and Stats.Level - i < nearest and not table.find(boss,i) then
               nearest = Stats.Level - i
               quest = v
               now_level = i
           end
       end
   end
   Client.PlayerGui.Frames.Quests.Visible = false
   repeat
       Stats.Root.CFrame = workspace.QUEST[quest].HumanoidRootPart.CFrame + workspace.QUEST[quest].HumanoidRootPart.CFrame.LookVector * 2
       wait(.1)
       game.ReplicatedStorage.Remotes.QUEST_EVENT:FireServer(tostring(quest))
   until Client.PlayerGui.Frames.Quests.Visible
   if CheckIsBoss() then
       table.insert(boss,now_level)
       Client.PlayerGui.Frames.Quests.Visible = false
   end
end

function Attack(from,to)
   for i,v in pairs(_G.Skill or {}) do
       game:GetService("ReplicatedStorage").Remotes.SKILL_EVENT:FireServer(Stats.Class.."Skill"..v,{from,to})
   end
   game:GetService("ReplicatedStorage").Remotes.SKILL_EVENT:FireServer(Stats.Class.."Punch")
end

local mob = GetMob()
while task.wait() do
   pcall(function()
       if not Client.PlayerGui.Frames.Quests.Visible then
           AcceptQuest()
       end
       Client.PlayerGui.Main.WarningFrame.Visible = false
       if mob.Humanoid.Health < 1 then mob = GetMob() end
       if mob and Stats.Root  then
           Stats.Root.CFrame = CFrame.new(mob.HumanoidRootPart.Position + Vector3.new(0,5,0),mob.HumanoidRootPart.Position)
           Attack(Stats.Root.Position,mob.HumanoidRootPart.Position)
       end
       local mul = 1
       if _G.AutoHealth and _G.AutoStamina then
           mul = 0.5
       end
       if _G.AutoHealth then
           game:GetService("ReplicatedStorage").Remotes.REMOTE_EVENT:FireServer("HealthUp",{Stats.Points*mul})
       end
       if _G.AutoStamina then
           game:GetService("ReplicatedStorage").Remotes.REMOTE_EVENT:FireServer("StaminaUp",{Stats.Points*mul})
       end
   end)
   if not _G.AutoFarm then
       Client.PlayerGui.Main.WarningFrame.Visible = true
       break
   end
end