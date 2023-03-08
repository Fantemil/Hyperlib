loadstring(game:HttpGet("https://garfieldscripts.xyz/ui-libs/janlib.lua"))()
for i,v in next, getconnections(game.Players.LocalPlayer.Idled) do
    v:Disable()
end
library.title = "Amaterasu Hub | Anime Warriors"
local Window = library:AddTab("Anime Warriors")
local LegitColunm1 = Window:AddColumn()
local Farming = LegitColunm1:AddSection("Farming")

local dungeons = require(game.ReplicatedStorage.BACKEND.Lib.Import);
local plr = game.Players.LocalPlayer
local Dungs = {}
local settings = {}
local remote;
local replay;
local friendsonly;
local difficulty;
local joindungeon;
local startdungeon;
local votegame;
local remotes = {}
for i,v in pairs(game:GetService("ReplicatedStorage")._NETWORK:GetChildren()) do
    if v:IsA("RemoteEvent") then
        table.insert(remotes, v)
    end
end

for i,v in pairs(game:GetService("ReplicatedStorage")["_NETWORK"]:GetChildren()) do
    if i == 116 then
        remote = v
    end
end
for i,v in pairs(game:GetService("ReplicatedStorage")["_NETWORK"]:GetChildren()) do
    if i == 134 then
        replay = v
    end
end
for i,v in pairs(remotes) do
    if i == 29 then
        joindungeon = v
    end
end
for i,v in pairs(remotes) do
    if i == 73 then
        friendsonly,difficulty = v
    end
end
for i,v in pairs(remotes) do
    if i == 35 then
        startdungeon = v
    end
end
for i,v in pairs(remotes) do
    if i == 77 then
        votegame = v
    end
end
--[[ 
friendsonly:FireServer({["FriendsOnly"] = true}) difficulty:FireServer({["Diffuclty"]="Easy"})]]

for i,v in pairs(dungeons("Querys").GetDungeonList()) do
 table.insert(Dungs,v)
end
Farming:AddList({text = 'Select Dungeon', value = "_dungeonLeaf",values = Dungs, callback = function(v) 
    settings.Dungeon = v
end})
Farming:AddList({text = 'Select Difficulty', value = "Easy", values = {"Easy", "Medium", "Hard", "OverKill"}, callback = function(v) 
    settings.Difficulty = v
end})
Farming:AddToggle({text = "Friends Only", state = settings.FriendsO, callback = function(v)
    settings.FriendsO = v
end})
Farming:AddToggle({text = "Auto Replay", state = settings.AutoReplay,callback = function(v)
    settings.AutoReplay = v
end})
Farming:AddToggle({text = "Auto Farm (Works in Abyss)",state = settings.FriendsO,callback = function(v)
    settings.AutoFarm = v
end})
Farming:AddToggle({text = "Auto Skills",state = settings.AutoSkills,callback = function(v)
    settings.AutoSkills = v
end})
local SettingsTab = library:AddTab("Settings"); 
local SettingsColumn = SettingsTab:AddColumn(); 
local SettingsColumn2 = SettingsTab:AddColumn(); 
local SettingSection = SettingsColumn:AddSection("Menu"); 
local ConfigSection = SettingsColumn2:AddSection("Configs");
local Warning = library:AddWarning({type = "confirm"});

SettingSection:AddBind({text = "Open / Close", flag = "UI Toggle", nomouse = true, key = "End", callback = function()
    library:Close();
end});

SettingSection:AddColor({text = "Accent Color", flag = "Menu Accent Color", color = Color3.new(0.599623620510101318359375, 0.447115242481231689453125, 0.97174417972564697265625), callback = function(color)
    if library.currentTab then
        library.currentTab.button.TextColor3 = color;
    end
    for i,v in pairs(library.theme) do
        v[(v.ClassName == "TextLabel" and "TextColor3") or (v.ClassName == "ImageLabel" and "ImageColor3") or "BackgroundColor3"] = color;
    end
end});

-- [Background List]
local backgroundlist = {
    Floral = "rbxassetid://5553946656",
    Flowers = "rbxassetid://6071575925",
    Circles = "rbxassetid://6071579801",
    Hearts = "rbxassetid://6073763717"
};

-- [Background List]
local back = SettingSection:AddList({text = "Background", max = 4, flag = "background", values = {"Floral", "Flowers", "Circles", "Hearts"}, value = "Floral", callback = function(v)
    if library.main then
        library.main.Image = backgroundlist[v];
    end
end});

-- [Background Color Picker]
back:AddColor({flag = "backgroundcolor", color = Color3.new(), callback = function(color)
    if library.main then
        library.main.ImageColor3 = color;
    end
end, trans = 1, calltrans = function(trans)
    if library.main then
        library.main.ImageTransparency = 1 - trans;
    end
end});

-- [Tile Size Slider]
SettingSection:AddSlider({text = "Tile Size", min = 50, max = 500, value = 50, callback = function(size)
    if library.main then
        library.main.TileSize = UDim2.new(0, size, 0, size);
    end
end});

-- [Config Box]
ConfigSection:AddBox({text = "Config Name", skipflag = true});

-- [Config List]
ConfigSection:AddList({text = "Configs", skipflag = true, value = "", flag = "Config List", values = library:GetConfigs()});

-- [Create Button]
ConfigSection:AddButton({text = "Create", callback = function()
    library:GetConfigs();
    writefile(library.foldername .. "/" .. library.flags["Config Name"] .. library.fileext, "{}");
    library.options["Config List"]:AddValue(library.flags["Config Name"]);
end});

-- [Save Button]
ConfigSection:AddButton({text = "Save", callback = function()
    local r, g, b = library.round(library.flags["Menu Accent Color"]);
    Warning.text = "Are you sure you want to save the current settings to config <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. library.flags["Config List"] .. "</font>?";
    if Warning:Show() then
        library:SaveConfig(library.flags["Config List"]);
    end
end});

-- [Load Button]
ConfigSection:AddButton({text = "Load", callback = function()
    local r, g, b = library.round(library.flags["Menu Accent Color"]);
    Warning.text = "Are you sure you want to load config <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. library.flags["Config List"] .. "</font>?";
    if Warning:Show() then
        library:LoadConfig(library.flags["Config List"]);
    end
end});

-- [Delete Button]
ConfigSection:AddButton({text = "Delete", callback = function()
    local r, g, b = library.round(library.flags["Menu Accent Color"]);
    Warning.text = "Are you sure you want to delete config <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. library.flags["Config List"] .. "</font>?";
    if Warning:Show() then
        local config = library.flags["Config List"];
        if table.find(library:GetConfigs(), config) and isfile(library.foldername .. "/" .. config .. library.fileext) then
            library.options["Config List"]:RemoveValue(config);
            delfile(library.foldername .. "/" .. config .. library.fileext);
        end
    end
end});

library:Init();
library:selectTab(library.tabs[1]);

task.spawn(function()
    while task.wait() do
        if settings.AutoFarm then
            local InGame = game:GetService("ReplicatedStorage"):FindFirstChild("Wave")
            if votegame then
                votegame:FireServer(true)
            end
            if InGame then
                for i,v in pairs(game:GetService("Workspace").Live.NPCs:GetChildren()) do
                    if v:IsA("Model") and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChild("Humanoid") and plr.Character:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("HumanoidRootPart") and (plr.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude < 1200 then
                        repeat task.wait()
                            if v:FindFirstChild("HumanoidRootPart") then
                                remote:FireServer(v,"LightMelee")
                                plr.Character.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position + Vector3.new(0,5,0), v.HumanoidRootPart.Position)
                            end
                        until not settings.AutoFarm or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or v:FindFirstChild("Humanoid").Health <= 0
                    end
                    if settings.AutoReplay then
                        replay:FireServer()
                    end
                end
            else
                joindungeon:FireServer({['MissionID']=settings.Dungeon,["Difficulty"]=settings.Difficulty})
                if settings.FriendsO then
                    friendsonly:FireServer({["FriendsOnly"] = true})
                end
                startdungeon:FireServer()
            end
        end
    end
end)
task.spawn(function()
    while task.wait() do
        if settings.AutoSkills then
            game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.One, false, game)
            game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.One, false, game)
            wait(.2)
            game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Two, false, game)
            game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.Two, false, game)
            wait(.2)
            game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Three, false, game)
            game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.Three, false, game)
            wait(.2)
            game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Four, false, game)
            game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.Four, false, game)
        end
    end
end)