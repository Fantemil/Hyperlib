local QuestModule = require(game:GetService("ReplicatedStorage").Quests)
local GuideModule = require(game:GetService("ReplicatedStorage").GuideModule)

function GetQuest()
local PlayerLvl = game:GetService("Players").LocalPlayer.Data.Level.Value
local Levels = {}
local QuestHold = {lvl = nil}

local HolderNpc = {}

for i,v in pairs(GuideModule.Data.NPCList) do
    if v.NPCName == GuideModule.Data.LastClosestNPC then
        NPCpos = v.Position
        NPCName = v.NPCName
    end
    for i1, v1 in pairs(v.Levels) do
        if PlayerLvl >= v1 then
            if not levelreq then
                levelreq = 0
            end
            if v1 > levelreq then
                levelreq = v1
            end
        end
    end
end

for i,v in next, QuestModule do
    for _,v in pairs(v) do
        MobNameTest = v.Name
        if v.LevelReq == levelreq then
            for i1,v1 in pairs(v.Task) do
                if i1 == MobNameTest then
                    Ms = i1
                end
            end
        end
        Check, Ammount = next(v.Task, nil)
        if v.LevelReq <= PlayerLvl and
        v.Name ~= "Trainees"
        and v.Name ~= "Swan's Raid"
        and v.Name ~= "Town Raid"
        and Ammount ~= 1 then
            QuestHold["lvl"] = v.LevelReq
            table.insert(Levels, {_, v, i})
        end
    end
end


for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    movl = string.match(v.Name, "%d+")
    if tonumber(movl) <= levelreq then
        Ms = v.Name
    end
end

-- v.Name:find(Ms) and #v.Name > #Ms and

table.sort(Levels, function(g,h)
    return g[2].LevelReq < h[2].LevelReq
end)

local Higets = Levels[#Levels]
local Check,Ammount = next(Higets[2].Task,nil)
local Info = {
    MobName = Ms;
    QuestPos = NPCpos;
    QuestNPC = NPCName;
    QuestCframe = Check;
    QuestText = Check;
    QuestName = Higets[3];
    QuestIndex = Higets[1];
    QuestLevelReq = levelreq or QuestHold["lvl"];
}
return Info
end

print(GetQuest().MobName)