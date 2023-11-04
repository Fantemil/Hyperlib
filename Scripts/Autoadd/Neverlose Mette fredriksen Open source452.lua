local Players = game:GetService("Players")
local Client = Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")

local Neverlose_Main = loadstring(game:HttpGet("https://raw.githubusercontent.com/Mana42138/Neverlose-UI/main/Source.lua"))()
local win = Neverlose_Main:Window({
    Title = "NEVERLOSE",
    CFG = "Neverlose",
    Key = Enum.KeyCode.H,
    External = {
        KeySystem = false,
        Key = loadstring(game:HttpGet("https://pastebin.com/raw/qbJ9JtTW"))()
    }
})

function GetRemote(name)
    for i,v in pairs(game:GetService("ReplicatedStorage").Events:GetChildren()) do
        local R_Name = string.upper(v.Name)
        if string.find(R_Name, string.upper(name)) then
            return game:GetService("ReplicatedStorage").Events[v.Name]
        end
    end
end

function SendKeyEvent(key)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,key,false,game)
end

local TabSection1 = win:TSection("Farming")
local TabSection2 = win:TSection("Other")

local tab = TabSection1:Tab("Autofarm")
local QuestTab = TabSection1:Tab("Quests")

local Teleport = TabSection2:Tab("Teleport")
local Teleport = Teleport:Section("Teleportation")

local Farms = tab:Section("Traning")
local Farm_Mob = tab:Section("Mob Farm")
local Exploits = tab:Section("Exploits")
local Chest_Farm = tab:Section("Chest Farming")
local Upgrades = tab:Section("Upgrades")
local Mix = tab:Section("Collect")

local CreditSection = tab:Section("Credits")

CreditSection:Slider("Mana#9724", 0, 1, 0, function() end)

local JoinDiscord = CreditSection:Toggle("Discord", function(t)
    Neverlose_Main:Notify({
        Title = "Script",
        Text = "Discord Copied to Clipboard",
        Time = 2
    })
    setclipboard("https://discord.gg/qq6WgyMwkw")
    hasclicked = t
end)

spawn(function()
    while task.wait() do
        if hasclicked then
            JoinDiscord:Set(false)
        end
    end
end)

Farms:Toggle('Train Strength', function(t)
    Train_Strength = t
end)

task.spawn(function()
    while task.wait() do
        if Train_Strength then
            pcall(function()
                local MainStr = "Strength"
                GetRemote("Stats/RemoteFunction"):InvokeServer("TrainStat", MainStr)
            end)
        end
    end
end)

Farms:Toggle('Train Durability', function(t)
    Train_Durability = t
end)

task.spawn(function()
    while task.wait() do
        if Train_Durability then
            pcall(function()
                local MainStr = "Durability"
                GetRemote("Stats/RemoteFunction"):InvokeServer("TrainStat", MainStr)
            end)
        end
    end
end)

Farms:Toggle('Train Chakra', function(t)
    Train_Chakra = t
end)

task.spawn(function()
    while task.wait() do
        if Train_Chakra then
            pcall(function()
                local MainStr = "Chakra"
                GetRemote("Stats/RemoteFunction"):InvokeServer("TrainStat", MainStr)
            end)
        end
    end
end)

Farms:Toggle('Train Sword', function(t)
    Train_Sword = t
end)

task.spawn(function()
    while task.wait() do
        if Train_Sword then
            pcall(function()
                local MainStr = "Sword"
                GetRemote("Stats/RemoteFunction"):InvokeServer("TrainStat", MainStr)
            end)
        end
    end
end)

Farms:Toggle('Train Speed', function(t)
    Train_Speed = t
end)

task.spawn(function()
    while task.wait() do
        if Train_Speed then
            pcall(function()
                local MainStr = "Speed"
                GetRemote("Stats/RemoteFunction"):InvokeServer("TrainStat", MainStr)
            end)
        end
    end
end)

for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
    v:Disable()
end

local ANAFK = Farms:Toggle("Anti-Afk", function()
    for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
        v:Disable()
    end
end)

ANAFK:Set(true)

local Mobs_Table = {}
for i,v in pairs(game:GetService("ReplicatedStorage").Assets.Mobs:GetChildren()) do
    if v.ClassName == "Folder" then
        for i,v in pairs(v:GetChildren()) do
            table.insert(Mobs_Table, v.Name)
        end
    end
    if v.ClassName == "Model" then
        table.insert(Mobs_Table, v.Name)
    end
end

Farm_Mob:Dropdown("Select Mob", Mobs_Table, function(t)
    Selected_Mob = t
end)

Farm_Mob:Toggle("Farm Selected Mob", function(t)
    Farm_Selected_Mob = t
end)

task.spawn(function()
    while task.wait() do
        if Farm_Selected_Mob then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Scriptable.Mobs:GetChildren()) do
                    if string.find(string.lower(v.Name), string.lower(Selected_Mob)) and v:FindFirstChild("HumanoidRootPart") and v then
                        repeat task.wait()
                        Client.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0) * CFrame.Angles(math.rad(90), 0,0)
                        until not v:FindFirstChild("HumanoidRootPart") or not v.Parent or not v or Farm_Selected_Mob == false
                    end
                end
            end)
        end
    end
end)

Upgrades:Toggle('Upgrade Strength', function(t)
    Upgrade_Strength = t
end)

task.spawn(function()
    while task.wait() do
        if Upgrade_Strength then
            pcall(function()
                local MainStr = "Strength"
                GetRemote("Stats/RemoteEvent"):InvokeServer("Upgrade", MainStr)
            end)
        end
    end
end)

Upgrades:Toggle('Upgrade Durability', function(t)
    Upgrade_Durability = t
end)

task.spawn(function()
    while task.wait() do
        if Upgrade_Durability then
            pcall(function()
                local MainStr = "Durability"
                GetRemote("Stats/RemoteEvent"):InvokeServer("Upgrade", MainStr)
            end)
        end
    end
end)

Upgrades:Toggle('Upgrade Chakra', function(t)
    Upgrade_Chakra = t
end)

task.spawn(function()
    while task.wait() do
        if Upgrade_Chakra then
            pcall(function()
                local MainStr = "Chakra"
                GetRemote("Stats/RemoteEvent"):InvokeServer("Upgrade", MainStr)
            end)
        end
    end
end)

Upgrades:Toggle('Upgrade Sword', function(t)
    Upgrade_Sword = t
end)

task.spawn(function()
    while task.wait() do
        if Upgrade_Sword then
            pcall(function()
                local MainStr = "Sword"
                GetRemote("Stats/RemoteEvent"):InvokeServer("Upgrade", MainStr)
            end)
        end
    end
end)

Upgrades:Toggle('Upgrade Speed', function(t)
    Upgrade_Speed = t
end)

task.spawn(function()
    while task.wait() do
        if Upgrade_Speed then
            pcall(function()
                local MainStr = "Speed"
                GetRemote("Stats/RemoteEvent"):InvokeServer("Upgrade", MainStr)
            end)
        end
    end
end)

Mix:Toggle("Auto Claim Daily", function(t)
    Auto_Daily = t
end)

task.spawn(function()
    while task.wait() do
        if Auto_Daily then
            pcall(function()
                GetRemote("Rewards/RemoteEvent"):FireServer('ClaimDaily')
            end)
        end
    end
end)

Mix:Toggle("Auto Claim Achievement", function(t)
    Auto_Claim_Achievement = t
end)

task.spawn(function()
    while task.wait(1) do
        if Auto_Claim_Achievement then
            pcall(function()
                for i,v in pairs(Client.PlayerGui.Menu.PagesContainer.Achievements.container.Content:GetChildren()) do
                    if v:IsA("ScrollingFrame") then
                        for i,v in pairs(v:GetChildren()) do
                            if v:FindFirstChildOfClass("Frame") then
                                local modifiedString = v.Name:gsub("(%a)(%d)", "%1_%2")
                                GetRemote("Achievements/RemoteEvent"):FireServer('ClaimAchievement', modifiedString)
                            end
                        end
                    end
                end
            end)
        end
    end
end)

Exploits:Toggle("Inf Stamina", function(t)
    INF_Stamina = t
end)

task.spawn(function()
    while task.wait(.5) do
        if INF_Stamina then
            pcall(function()
                GetRemote("Stamina/RemoteEvent"):FireServer('Use', -9e9)
            end)
        end
    end
end)

Chest_Farm:Toggle("Main Chest Switch", function(t)
    Chest_Main = t
end)

Chest_Farm:Toggle("Farm Common", function(t)
    Farm_Common = t
end)

Chest_Farm:Toggle("Farm Rare", function(t)
    Farm_Rare = t
end)

Chest_Farm:Toggle("Farm Epic", function(t)
    Farm_Epic = t
end)

Chest_Farm:Toggle("Farm Legendary", function(t)
    Farm_Legendary = t
end)

Chest_Farm:Slider("-_-", 0, 1, 0, function() end)

Chest_Farm:Toggle("Smart Chest Farm", function(t)
    Smart_Chest_Farm = t
end)

Chest_Farm:Toggle("Notify Chest Spawn", function(t)
    Notify_Chest_Spawn = t
end)

function GetChestAllow()
    local ReturnTable = {}
    if Farm_Legendary then
        table.insert(ReturnTable, "legendary")
    end
    if Farm_Epic then
        table.insert(ReturnTable, "epic")
    end
    if Farm_Rare then
        table.insert(ReturnTable, "rare")
    end
    if Farm_Common then
        table.insert(ReturnTable, "common")
    end
    if Smart_Chest_Farm then
        ReturnTable = {
            'legendary',
            'epic',
            'rare',
            'common'
        }
        return ReturnTable
    end
    return ReturnTable
end

task.spawn(function()
    while task.wait(.5) do
        if Chest_Main then
            pcall(function()
                local chests = game:GetService("Workspace").Scriptable.Crates:GetChildren()
                local allowedChests = GetChestAllow()

                local highestPriorityChest = nil
                local BetterTeleport = nil
                local highestPriority = -1

                for i, v in pairs(chests) do
                    if table.find(allowedChests, v.Name) then
                        local priority = 0
                        if v.Name == "legendary" then
                            priority = 3
                        elseif v.Name == "epic" then
                            priority = 2
                        elseif v.Name == "rare" then
                            priority = 1
                        end

                        if priority > highestPriority then
                            highestPriority = priority
                            highestPriorityChest = v
                        end
                        if v:FindFirstChild("PP") then
                            BetterTeleport = true
                        else
                            BetterTeleport = false
                        end
                    end
                end

                if highestPriorityChest then
                    if BetterTeleport then
                        Client.Character.HumanoidRootPart.CFrame = highestPriorityChest.PP.CFrame
                    else
                        Client.Character.HumanoidRootPart.CFrame = highestPriorityChest:GetModelCFrame()
                    end
                    task.wait(.5)
                end
            end)
        end
    end
end)

task.spawn(function()
    while task.wait() do
        if Chest_Main or Smart_Chest_Farm then
            pcall(function()
                SendKeyEvent("E")
            end)
        end
    end
end)

game:GetService("Workspace").Scriptable.Crates.ChildAdded:Connect(function(v)
    if Notify_Chest_Spawn then
        Neverlose_Main:Notify({
            Title = "Chests",
            Text = "New: "..tostring(v.Name),
            Time = 2
        })
    end
end)

local TPVar = {}

for i,v in pairs(game:GetService("Workspace").Scriptable.TrainingsAreas:GetChildren()) do
    TPVar[v.Name] = Teleport:Toggle(v.Name, function(t)
        if t then
            Client.Character.HumanoidRootPart.CFrame = v.CFrame
            Neverlose_Main:Notify({
                Title = "Game",
                Text = "Teleported to: "..v.Name,
                Time = 2
            })
        end
        HasTP = t
    end)
    
    spawn(function()
        while task.wait() do
            if HasTP then
                TPVar[v.Name]:Set(false)
            end
        end
    end)
end

local Testsom = require(game:GetService("ReplicatedStorage").util.Quests.Main.BanditQuest)

local Everyone = QuestTab:Section("KillMobs Quests")

local Table_Quests = {}
for i,v in pairs(game:GetService("ReplicatedStorage").util.Quests.Main:GetChildren()) do
    if v.Name ~= "FirstQuest" then
        table.insert(Table_Quests, v.Name)
    end
end

function GetAllQuests()
	local ReturnTable = {
		["KillMob"] = {},
		["Stat"] = {}
	}
	for i,v1 in pairs(game:GetService("ReplicatedStorage").util.Quests.Main:GetChildren()) do
		local MainReq = require(v1)
			for i,v in pairs(MainReq.Quests) do
				if v.Type == "KillMob" then
					ReturnTable["KillMob"][v.Name] = {
						["Mob"] = v.Objectives[1].Mob,
						["Goal"] = v.Objectives[1].Goal,
						["QuestName"] = v.Name,
                        ["QuestIndex"] = i,
						["Reward"] = v.Rewards["Yen"]["Amount"]
					}

					table.insert(ReturnTable["KillMob"], MainReq.Quests)
				end
			end
	end
	return ReturnTable
end

Everyone:Dropdown("Select Quest", Table_Quests, function(t)
    Quest_Selected = t
end)

Everyone:Toggle("Farm Quest & Mob", function(t)
    Start_Everyone_Farming = t
end)

local QIndex = Everyone:Slider("Quest Index", 1, 3, 1, function(t)
    Selected_Quest_Index = t
end)

QIndex:Set(1)

function AcceptQuest(QuestName)
    GetRemote("Quests/RemoteEvent"):FireServer("StartQuest", QuestName, Selected_Quest_Index)
end

task.spawn(function()
    while task.wait() do
        if Start_Everyone_Farming then
            pcall(function()
                AcceptQuest(Quest_Selected)
                for i,v in pairs(game:GetService("Workspace").Scriptable.Mobs:GetChildren()) do
                    if string.find(string.lower(v.Name), string.lower(Testsom.Quests[Selected_Quest_Index].Objectives[1].Mob)) and v:FindFirstChild("HumanoidRootPart") and v then
                        repeat task.wait()
                        Client.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0) * CFrame.Angles(math.rad(90), 0,0)
                        until not v:FindFirstChild("HumanoidRootPart") or not v.Parent or not v or Start_Everyone_Farming == false
                    end
                end
            end)
        end
    end
end)

Everyone:Toggle("First Quest [Boom]", function(t)
    Auto_Quest_Boom = t
end)

task.spawn(function()
    while task.wait() do
        if Auto_Quest_Boom then
            pcall(function()
                GetRemote("Quests/RemoteEvent"):FireServer("StartQuest", 'FirstQuest')
            end)
        end
    end
end)