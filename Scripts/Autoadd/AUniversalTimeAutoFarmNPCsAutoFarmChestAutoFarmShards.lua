repeat wait() until game:IsLoaded()

local OldNameCall = nil
  OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
      if not checkcaller() and getnamecallmethod() == "FireServer" and Self.Name == "Log" then
         return
      end
     return OldNameCall(Self, ...)
end)

local Meta = getrawmetatable(game)
local NewIndex = Meta.__newindex
setreadonly(Meta, false)

Meta.__newindex = newcclosure(function(t, k, ...)
   if not checkcaller() and (k == "WalkSpeed" or k == "JumpPower") then
       return
   end
   NewIndex(t, k, ...)
end)
setreadonly(Meta, true)
spawn(function()
game:GetService('RunService').Stepped:connect(function() 
pcall(function()
sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
end) end) end)

loadstring(game:HttpGet("https://garfieldscripts.xyz/ui-libs/janlib.lua"))()
for i,v in next, getconnections(game.Players.LocalPlayer.Idled) do
    v:Disable()
end
library.title = "Amaterasu Hub | Aut"
--Main Tab
local Main = library:AddTab("Main")

local LegitColunm1 = Main:AddColumn()
local LegitColunm2 = Main:AddColumn()
local Main = LegitColunm1:AddSection("Item Farming")
local MF = LegitColunm2:AddSection("Regular Farming")
--Misc Tab
local Misc = library:AddTab("Misc")
local Misc1 = Misc:AddColumn()
local Misc2 = Misc:AddColumn()
local Misc = Misc1:AddSection("Misc")
local as = Misc2:AddSection("Auto Skill")
--Esp 
local Esp = library:AddTab("Esp")
local Esp1 = Esp:AddColumn()
local Esp = Esp1:AddSection("Esp")
--Creds
local cred = library:AddTab("Credits")
local cred1 = cred:AddColumn()
local cred = cred1:AddSection("Credits")

--Ui STuff
local SettingsTab = library:AddTab("Settings"); 
local SettingsColumn = SettingsTab:AddColumn(); 
local SettingsColumn2 = SettingsTab:AddColumn(); 
local SettingSection = SettingsColumn:AddSection("Menu"); 
local ConfigSection = SettingsColumn2:AddSection("Configs");
local Warning = library:AddWarning({type = "confirm"});

--Main

Main:AddToggle({text = "Auto Farm Chest", flag = "Farm Chest", callback = function(state)
getgenv().chest = state
end})

Main:AddToggle({text = "Auto Farm Meteors", flag = "Farm Meteors", callback = function(state)
    getgenv().Meteors = state
end})

Main:AddToggle({text = "Auto Farm Regular Items", flag = "Farm Items", callback = function(state)
    getgenv().StandardItems = state
end})

Main:AddToggle({text = "Auto Farm Astral Chest", flag = "Farm Astral Chest", callback = function(state)
    getgenv().AstralChest = state
end})

Main:AddToggle({text = "Auto Farm Shards", flag = "Farm Shards", callback = function(state)
    getgenv().Shards = state
end})

Main:AddToggle({text = "Auto Farm Sand Debris", flag = "Farm Sand Debris", callback = function(state)
    getgenv().SDF = state
end})

--MOB FARMING
MF:AddToggle({text = "Auto Farm Dio", flag = "Farm Dio", callback = function(state)
getgenv().farmdio = state
end})

MF:AddToggle({text = "Auto Farm Johnny", flag = "Farm Johnny", callback = function(state)
getgenv().JohnnyFarm = state
end})

MF:AddToggle({text = "Auto Farm Diavolo", flag = "Farm Diavolo", callback = function(state)
    getgenv().DiavoloFarm = state
end})

MF:AddToggle({text = "Auto Farm Boa H", flag = "Farm Boa H", callback = function(state)
    getgenv().BoaFarm = state
end})

MF:AddToggle({text = "Auto Damage UrSelf", flag = "Farm Dummy", callback = function(state)
getgenv().Damageurself = state
end})

MF:AddToggle({text = "Auto Farm Players", flag = "Farm Players", callback = function(state)
getgenv().playerfarm = state
end})
--Misc


Misc:AddToggle({text = "God Mode", flag = "God Mode", callback = function(state)
getgenv().godmode = state
while getgenv().godmode do task.wait()
pcall(function()
    game:GetService("Players").LocalPlayer.Character.Values.Block:Destroy()
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
    repeat wait() until game:GetService("Players").LocalPlayer.Character
            end)
        end)
    end
end})

Misc:AddButton({text = "Invis", callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(254, 992, -254)
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint:Destroy()
    wait(1.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(334, 982, -277)
end});

Misc:AddButton({text = "Fix Character", callback = function()
    game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
end});

Misc:AddButton({text = "No Effects", callback = function()
    game:GetService("Workspace").Effects:Destroy()
end});

Misc:AddButton({text = "Crash/Lag Server Bad", callback = function()
    for i=1, 150 do
        game:GetService("RunService").Heartbeat:Connect(function()
        local args = {[1] = "DefaultDance"}
        game:GetService("ReplicatedStorage").ReplicatedModules.KnitPackage.Knit.Services.EmoteService.RF.Play:InvokeServer(unpack(args))
        local args = {[1] = "TortureDance"}
        game:GetService("ReplicatedStorage").ReplicatedModules.KnitPackage.Knit.Services.EmoteService.RF.Play:InvokeServer(unpack(args))
        local args = {[1] = "CaramellDansen"}
        game:GetService("ReplicatedStorage").ReplicatedModules.KnitPackage.Knit.Services.EmoteService.RF.Play:InvokeServer(unpack(args))
        local args = {[1] = "Smug"}
        game:GetService("ReplicatedStorage").ReplicatedModules.KnitPackage.Knit.Services.EmoteService.RF.Play:InvokeServer(unpack(args))
        local args = {[1] = "LoseControl"}
        game:GetService("ReplicatedStorage").ReplicatedModules.KnitPackage.Knit.Services.EmoteService.RF.Play:InvokeServer(unpack(args))
        local args = {[1] = "Infestation"}
        game:GetService("ReplicatedStorage").ReplicatedModules.KnitPackage.Knit.Services.EmoteService.RF.Play:InvokeServer(unpack(args))
        local args = {[1] = "FNF"}
        game:GetService("ReplicatedStorage").ReplicatedModules.KnitPackage.Knit.Services.EmoteService.RF.Play:InvokeServer(unpack(args))
        local args = {[1] = "PAC-MAN"}
        game:GetService("ReplicatedStorage").ReplicatedModules.KnitPackage.Knit.Services.EmoteService.RF.Play:InvokeServer(unpack(args))
        local args = {[1] = "Backflip"}
        game:GetService("ReplicatedStorage").ReplicatedModules.KnitPackage.Knit.Services.EmoteService.RF.Play:InvokeServer(unpack(args))
        end)
    end
end});

Misc:AddButton({text = "Bloody Character", callback = function()
local args = {[1] = "Low HP",[2] = true}
game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(unpack(args))
end});


Misc:AddButton({text = "Load Map", callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-120, 920, -1934)
    wait(0.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-173, 923, 1081)
    wait(0.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(776, 1023, -1051)
    wait(0.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1367, 582, 10467)
    wait(0.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10899, 934, 15194)
    wait(0.6)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(27, 974, -12)
end});

Misc:AddButton({text = "Rejoin Game", callback = function()
    game:GetService'TeleportService':TeleportToPlaceInstance(game.PlaceId,game.JobId,game:GetService'Players'.LocalPlayer)
end});

Misc:AddButton({text = "Server Hop", callback = function()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    local File = pcall(function()
        AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
    end)
    if not File then
        table.insert(AllIDs, actualHour)
        writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
    end
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                delfile("NotSameServers.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end
    
    function Teleport()
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
end});


Misc:AddSlider({text = "WalkSpeed", min = 16, max = 500, value = 16, callback = function(speed)
getgenv().speed = speed
while getgenv().speed do task.wait()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
    end
end});

Misc:AddSlider({text = "JumpPower", min = 50, max = 500, value = 50, callback = function(JumpPower)
getgenv().JumpPower = JumpPower
while getgenv().JumpPower do task.wait()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpPower
    end
end})

--Esp Stuff
Esp:AddButton({text = "Player Esp", callback = function()
    local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
    ESP:Toggle(true)
    ESP.Tracers = true
end});

--Auto Skill
as:AddToggle({text = "E", flag = "E", callback = function(state)
getgenv().E = state
end})

as:AddToggle({text = "R", flag = "R", callback = function(state)
getgenv().R = state
end})

as:AddToggle({text = "T", flag = "T", callback = function(state)
getgenv().T = state
end})

as:AddToggle({text = "F", flag = "F", callback = function(state)
getgenv().F = state
end})

as:AddToggle({text = "Y", flag = "Y", callback = function(state)
getgenv().Y = state
end})

as:AddToggle({text = "P", flag = "P", callback = function(state)
getgenv().P = state
end})

as:AddToggle({text = "G", flag = "G", callback = function(state)
getgenv().G = state
end})

as:AddToggle({text = "N", flag = "N", callback = function(state)
getgenv().N = state
end})

as:AddToggle({text = "H", flag = "H", callback = function(state)
getgenv().H = state
end})

as:AddToggle({text = "V", flag = "V", callback = function(state)
getgenv().V = state
end})

--Creds
cred:AddButton({text = "blackout#2121 - Scripting", callback = function()
setclipboard("blackout#2121")
end});

cred:AddButton({text = "Kirito22 - Esp Lib", callback = function()
end});



--LIB stuff
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


-- [Init] --------------------------------------------------------------------------------------------------------------------------------------------------------------------
library:Init();
library:selectTab(library.tabs[1]);



--functions

task.spawn(function()
    while task.wait() do
    if getgenv().chest then
        while getgenv().chest do wait()
            spawn(function()
            pcall(function()
            for i,v in pairs(game:GetService("Workspace").ItemSpawns.Chests:GetDescendants()) do
            if v:IsA("Model") then
                repeat task.wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Base.CFrame * CFrame.new(0,-2.5,0)*CFrame.Angles(0,0,0)
                fireproximityprompt(v.RootPart:WaitForChild("ProximityAttachment").Interaction, 20)
                    until getgenv().chest == false
                            end
                        end 
                    end)
                end)
            end
        end
    end
end)

task.spawn(function()
    while task.wait() do
    if getgenv().AstralChest then
        while getgenv().AstralChest do wait()
            spawn(function()
            pcall(function()
            for i,v in pairs(game:GetService("Workspace").ItemSpawns.AstralChests:GetDescendants()) do
            if v:IsA("Model") then
                repeat task.wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Base.CFrame * CFrame.new(0,-2.5,0)*CFrame.Angles(0,0,0)
                fireproximityprompt(v.RootPart:WaitForChild("ProximityAttachment").Interaction, 20)
                    until getgenv().AstralChest == false
                            end
                        end 
                    end)
                end)
            end
        end
    end
end)


task.spawn(function()
    while task.wait() do
    if getgenv().Meteors then
        while getgenv().Meteors do wait()
        spawn(function()
        pcall(function()
        for i,v in pairs(game:GetService("Workspace").ItemSpawns.Meteors:GetDescendants()) do
            if v:IsA("MeshPart") then
                repeat task.wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,-3,0)*CFrame.Angles(0,0,0)
                fireproximityprompt(v:WaitForChild("ProximityAttachment").Interaction, 20)
            until getgenv().Meteors == false
                            end
                        end
                    end)
                end)
            end
        end
    end
end)

task.spawn(function()
    while task.wait() do
    if getgenv().Shards then
        while getgenv().Shards do wait()
        spawn(function()
        pcall(function()
        for i,v in pairs(game:GetService("Workspace").ItemSpawns.Shards.Active:GetDescendants()) do
            if v:IsA("MeshPart") then
                repeat task.wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,-3,0)*CFrame.Angles(0,0,0)
                fireproximityprompt(v.HumanoidRootPart:WaitForChild("ProximityAttachment").Interaction, 20)
            until getgenv().Shards == false
                            end
                        end
                    end)
                end)
            end
        end
    end
end)

task.spawn(function()
    while task.wait() do
    if getgenv().StandardItems then
        while getgenv().StandardItems do wait()
        spawn(function()
        pcall(function()
        for i,v in pairs(game:GetService("Workspace").ItemSpawns.StandardItems:GetDescendants()) do
            if v:IsA("MeshPart") then
                repeat task.wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,-4,0)*CFrame.Angles(0,0,0)
                fireproximityprompt(v.game:GetService("Workspace").ItemSpawns.StandardItems.SpawnLocation:GetDescendants():WaitForChild("ProximityAttachment").Interaction, 20)
            until getgenv().StandardItems == false
                            end
                        end
                    end)
                end)
            end
        end
    end
end)

task.spawn(function()
    while task.wait() do
    if getgenv().SDF then
        while getgenv().SDF do wait()
        spawn(function()
        pcall(function()
        for i,v in pairs(game:GetService("Workspace").ItemSpawns["Sand Debris"]:GetDescendants()) do
            if v:IsA("MeshPart") then
                repeat task.wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,-4,0)*CFrame.Angles(0,0,0)
                fireproximityprompt(v:WaitForChild("ProximityAttachment").Interaction, 20)
            until getgenv().SDF == false
                            end
                        end
                    end)
                end)
            end
        end
    end
end)

task.spawn(function()
    while task.wait() do
            if getgenv().farmdio then
                pcall(function()
                    for i,v in pairs(game:GetService("Workspace").NPCSpawns["DIO Boss"]:GetChildren()) do
                        if v:IsA("Model") and v.Name == "Dio" then
                            if v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                                repeat
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,5,0) * CFrame.Angles(math.rad(-90),0,0)
                                local args = {[1] = "LMB"}
                                game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(unpack(args))
                            until v.Humanoid.Health <= 0 or getgenv().farmdio == false
                        end
                    end
                end
            end)
        end
    end
end)  

spawn(function()
    while task.wait() do
        if getgenv().playerfarm == true then
         while getgenv().playerfarm do task.wait()
            pcall(function()
            for i,v in pairs(game.Players:GetChildren()) do
                if v ~= game.Players.LocalPlayer then
                    repeat task.wait()
                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,3.25)
                     wait()
                     local args = {[1] = "LMB"}
                     game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(unpack(args))   
                    until v.Humanoid.Health > 0 or not getgenv().playerfarm or not v:IsDescendantOf(workspace)
                    end
                    end
                    end)
                 end
                end
            end
        end)


task.spawn(function()
    while task.wait() do
            if getgenv().Damageurself then
                pcall(function()
                    for i,v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                        if v:IsA("Model") and v.Name == "ReflectingDummy" then
                            if v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                                repeat
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,3) * CFrame.Angles(math.rad(-90),0,0)
                                local args = {[1] = "LMB"}
                                game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(unpack(args))
                            until v.Humanoid.Health <= 0 or getgenv().Damageurself == false
                        end
                    end
                end
            end)
        end
    end
end)  

task.spawn(function()
    while task.wait() do
            if getgenv().JohnnyFarm then
                pcall(function()
                    for i,v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                        if v:IsA("Model") and v.Name == "Johnny" then
                            if v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                                repeat
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,3) * CFrame.Angles(math.rad(-90),0,0)
                                local args = {[1] = "LMB"}
                                game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(unpack(args))
                            until v.Humanoid.Health <= 0 or getgenv().JohnnyFarm == false
                        end
                    end
                end
            end)
        end
    end
end)  

task.spawn(function()
    while task.wait() do
            if getgenv().DiavoloFarm then
                pcall(function()
                    for i,v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                        if v:IsA("Model") and v.Name == "Diavolo" then
                            if v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                                repeat
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,3) * CFrame.Angles(math.rad(-90),0,0)
                                local args = {[1] = "LMB"}
                                game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(unpack(args))
                            until v.Humanoid.Health <= 0 or getgenv().DiavoloFarm == false
                        end
                    end
                end
            end)
        end
    end
end)  

task.spawn(function()
    while task.wait() do
            if getgenv().BoaFarm then
                pcall(function()
                    for i,v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                        if v:IsA("Model") and v.Name == "Boa H" then
                            if v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                                repeat
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,3) * CFrame.Angles(math.rad(-90),0,0)
                                local args = {[1] = "LMB"}
                                game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(unpack(args))
                            until v.Humanoid.Health <= 0 or getgenv().BoaFarm == false
                        end
                    end
                end
            end)
        end
    end
end)  



task.spawn(function()
    while task.wait() do
            if getgenv().E then
            local args = {[1] = "E"}
            game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(unpack(args))
        end
    end
end)

task.spawn(function()
    while task.wait() do
            if getgenv().R then
            local args = {[1] = "R"}
            game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(unpack(args))
        end
    end
end) 

task.spawn(function()
    while task.wait() do
            if getgenv().T then
            local args = {[1] = "T"}
            game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(unpack(args))
        end
    end
end)

task.spawn(function()
    while task.wait() do
            if getgenv().F then
            local args = {[1] = "F"}
            game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(unpack(args))
        end
    end
end) 

task.spawn(function()
    while task.wait() do
            if getgenv().Y then
            local args = {[1] = "Y"}
            game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(unpack(args))
        end
    end
end) 

task.spawn(function()
    while task.wait() do
            if getgenv().P then
            local args = {[1] = "P"}
            game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(unpack(args))
        end
    end
end) 

task.spawn(function()
    while task.wait() do
            if getgenv().G then
            local args = {[1] = "G"}
            game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(unpack(args))
        end
    end
end) 

task.spawn(function()
    while task.wait() do
            if getgenv().N then
            local args = {[1] = "N"}
            game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(unpack(args))
        end
    end
end) 

task.spawn(function()
    while task.wait() do
            if getgenv().H then
            local args = {[1] = "H"}
            game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(unpack(args))
        end
    end
end)

task.spawn(function()
    while task.wait() do
            if getgenv().V then
            local args = {[1] = "V"}
            game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(unpack(args))
        end
    end
end) 