if not getgenv().already_executed then
   getgenv().already_executed = true

   if setfflag then
       setfflag("HumanoidParallelRemoveNoPhysics", "False")
       setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
   end

   local stop_kill_aura
   local using_move
   local http_request
   local queue_on_tp
   local current_tween
   local farming_tween
   local noclip_tween
   local reached_place
   local UIs = game:GetService("UserInputService")
   local RunService = game:GetService("RunService")
   local TweenService = game:GetService("TweenService")

   UIs.WindowFocused:Connect(function()
       RunService:Set3dRenderingEnabled(true)
       setfpscap(360)
   end)

   UIs.WindowFocusReleased:Connect(function()
       RunService:Set3dRenderingEnabled(false)
       setfpscap(360)
   end)

   for i,v in next, getconnections(game:GetService("Players").LocalPlayer.Idled) do
       v:Disable()
   end

   if syn then
       http_request = syn.request
       queue_on_tp = syn.queue_on_teleport
   elseif KRNL_LOADED or (request and queue_on_teleport) then
       http_request = request
       queue_on_tp = queue_on_teleport
   end

   if not isfolder("AmaterasuHub-Configs") then
       makefolder("AmaterasuHub-Configs")
   end

   _G.Options = {
       LevelFarm = false,
       AutoQuest = false,
       BossFarm = false,
       SpeedEnabled = false,
       JumpEnabled = false,
       KillAura = false,
       NoDrown = false,
       NoSunDmg = false,
       AutoCollectChests = false,
       AutoPickFlowers = false,
       InfStam = false,
       InfBreathing = false,
       NoCdMoves = false,
       AutoGourd = false,
       AutoFistMast = false,
       SkillMastery = false,
       TypeSelected = "Fists",
       MobName = "Zoku's Subordinate",
       BossName = "Giyu",
       GourdSize = "Small Gourd",
       WalkSpeed = 50,
       JumpPower = 100,
       TweenSpeed = 120,
       MasteryHealth = 20,
       Skills = {
           Z = false,
           X = false,
           C = false,
           V = false,
           B = false,
           N = false
       },
   }

   local LocationsCFrame = {
       ["Kiribating Village"] = CFrame.new(75.5425491, 283.277435, -1555.1051, 0.999934971, 1.67819341e-08, -0.0114030642, -1.65642859e-08, 1, 1.91810035e-08, 0.0114030642, -1.89908782e-08, 0.999934971),
       ["Ushumaru Village"] = CFrame.new(-500.414673, 274.43689, -3192.9812, 0.999331057, -1.54465774e-08, 0.0365706086, 1.52752992e-08, 1, 4.96289765e-09, -0.0365706086, -4.40095071e-09, 0.999331057),
       ["Abubu Cave"] = CFrame.new(1045.9281, 276.115692, -3557.97437, 0.690576077, 4.18119832e-08, -0.723259389, -1.72029413e-08, 1, 4.13849079e-08, 0.723259389, -1.61372355e-08, 0.690576077),
       ["Waroru Cave"] = CFrame.new(691.615356, 260.926971, -2414.06421, -0.999933839, 0, -0.0115051772, 0, 1, 0, 0.0115051772, 0, -0.999933839),
       ["Final Selection"] = CFrame.new(5292.28369, 365.874969, -2423.28613, 0.0337216519, 0, -0.999431252, 0, 1, 0, 0.999431252, 0, 0.0337216519),
       ["Butterfly Mansion"] = CFrame.new(2979.67236, 315.908905, -3948.33569, -0.996236086, 1.69854353e-08, -0.0866835564, 1.4287254e-08, 1, 3.17471667e-08, 0.0866835564, 3.03891916e-08, -0.996236086),
       ["Dangerous Woods"] = CFrame.new(4087.44189, 342.914246, -3973.68408, 0.387004584, 1.5535921e-08, -0.922077775, -2.12095443e-08, 1, 7.94697641e-09, 0.922077775, 1.64813336e-08, 0.387004584),
       ["Dungeon"] = CFrame.new(-1118.17505, 283.394897, -1574.73694, -0.963565588, -3.70083768e-08, -0.267472088, -4.71384567e-08, 1, 3.14523234e-08, 0.267472088, 4.29145999e-08, -0.963565588),
       ["Zapiwara Mountain"] = CFrame.new(-330.747986, 425.857422, -2331.74097, 0.950173199, -4.93285093e-08, 0.311722487, 5.37885505e-08, 1, -5.70998004e-09, -0.311722487, 2.21925713e-08, 0.950173199),
       ["Ouwbayashi Home"] = CFrame.new(1508.06531, 315.908813, -4621.9585, -0.306320429, -1.04160225e-09, 0.951928437, -2.96041911e-08, 1, -8.43211101e-09, -0.951928437, -3.07639993e-08, -0.306320429),
       ["Kabiwaru Village"] = CFrame.new(1995.30994, 315.908813, -2971.81641, -0.0428119712, -5.69404008e-08, 0.999083161, 7.8262623e-08, 1, 6.03463093e-08, -0.999083161, 8.07744058e-08, -0.0428119712),
       ["Zapiwara Cave"] = CFrame.new(36.8455238, 275.869537, -2420.4834, -0.0517088324, 1.07195525e-07, 0.998662174, 1.31237599e-08, 1, -1.06659598e-07, -0.998662174, 7.59095986e-09, -0.0517088324)
   }

   local TrainerCFrames = {
       ["Thunder Trainer"] = CFrame.new(-321.562347, 426.857788, -2383.81519, 0.10044384, 4.35164864e-08, -0.994942725, 5.00700068e-08, 1, 4.87924652e-08, 0.994942725, -5.47176917e-08, 0.10044384),
       ["Wind Trainer"] = CFrame.new(1792.06519, 334.338989, -3520.479, 0.88860625, -1.43524312e-08, -0.458670795, 3.71993742e-08, 1, 4.07768823e-08, 0.458670795, -5.32968585e-08, 0.88860625),
       ["Butterfly Trainer"] = CFrame.new(2875.76538, 316.767059, -3917.08398, 0.560217917, 5.14149328e-08, 0.828345299, 2.19298251e-08, 1, -7.69007968e-08, -0.828345299, 6.12466735e-08, 0.560217917),
       ["Water Trainer"] = CFrame.new(711.290039, 260.92688, -2394.80396, -0.703831196, 2.28924524e-08, -0.710367262, 6.56879209e-08, 1, -3.28573115e-08, 0.710367262, -6.97885483e-08, -0.703831196)
   }

   if getgenv()["d-d-d-d-d dont look at me you pervert!!!"] ~= "pervert!" then
       getgenv()["d-d-d-d-d dont look at me you pervert!!!"] = "pervert!"

       local oldnamecall;
       local oldindex;

       oldnamecall = hookmetamethod(game, "__namecall", function(self, ...)
           local args = { ... }
           local method = getnamecallmethod()

           local isFireServer = (string.lower(method) == "fireserver") == true
           local isKick = (string.lower(method) == "kick") == true

           if isFireServer and self.Name == "moddelteasdasd123" then
               return
           end

           if isFireServer and self.Name == "To_Server_commends" and args[1] == "set_platform_stand" then
               return
           end

           if not checkcaller() and self.Name == "Handle_Initiate_S" and args[1] == "fist_combat" and _G.Options.KillAura then
               return
           elseif not checkcaller() and self.Name == "Handle_Initiate_S" and args[1] == "Sword_Combat_Slash" and _G.Options.KillAura then
               return
           end

           if isFireServer and #args == 2 and type(args[1]) == "boolean" then
               return
           end

           if isFireServer and #args == 1 and args[1] == "yes" and self.Name == "check_clanasd123123" then
               return
           end

           if isKick and not checkcaller() then
               return
           end

           return oldnamecall(self, unpack(args))
       end)

       oldindex = hookmetamethod(game, "__index", function(index, value)
           if tostring(index) == "LastUsed" and _G.Options.NoCdMoves then
               return 0
           end

           if not checkcaller() and tostring(value) == "WalkSpeed" then
               return 16
           end

           if not checkcaller() and tostring(value) == "JumpPower" then
               return 50
           end

           return oldindex(index, value)
       end)

       local mod = require(game:GetService("ReplicatedStorage").Modules.Server["Skills_Modules_Handler"])

       getrenv()._G.handle_irregular = nil
       getrenv()._G.cuasdamsndasdasd = nil
       
       mod.Kick = function()
           return
       end

       game:GetService("Players").LocalPlayer.PlayerScripts["Small_Scripts"]["Client_Global_utility"].Disabled = true
       game:GetService("Players").LocalPlayer.PlayerScripts["Small_Scripts"]["client_global_delete_script"].Disabled = true

       game:GetService("Players").LocalPlayer.PlayerScripts["Small_Scripts"]["Client_Global_utility"]:GetPropertyChangedSignal("Disabled"):Connect(function()
           game:GetService("Players").LocalPlayer.PlayerScripts["Small_Scripts"]["Client_Global_utility"].Disabled = true
           game:GetService("Players").LocalPlayer.PlayerScripts["Small_Scripts"]["client_global_delete_script"].Disabled = true
       end)
   end

   function ReturnAllMobs()
       local tbl = {"Zoku's Subordinate"}

       return tbl
   end

   function ReturnAllBosses()
       local tbl = {
           "Sabito",
           "Zanegutsu Kuuchie",
           "Shiron",
           "Sanemi",
           "Giyu",
           "Nezuko",
           "Yahaba",
           "Bandit Zuko",
           "Susamaru"
       }

       return tbl
   end

   function ReturnValue(value)
       return _G.Options[value]
   end

   function LoadOptions()
       if isfile("AmaterasuHub-Configs/pjs-config.txt") then
           local file = game:GetService("HttpService"):JSONDecode(readfile("AmaterasuHub-Configs/pjs-config.txt"))

           for i,v in next, _G.Options do
               if not file[i] then
                   file[i] = v
                   writefile("AmaterasuHub-Configs/pjs-config.txt", game:GetService("HttpService"):JSONEncode(file))
               end
           end

           _G.Options = file
       else
           makefolder("AmaterasuHub-Configs")
           writefile("AmaterasuHub-Configs/pjs-config.txt", game:GetService("HttpService"):JSONEncode(_G.Options))
       end
   end

   function SaveOptions()
       if isfile("AmaterasuHub-Configs/pjs-config.txt") then
           writefile("AmaterasuHub-Configs/pjs-config.txt", game:GetService("HttpService"):JSONEncode(_G.Options))
       end
   end

   LoadOptions()

   loadstring(game:HttpGet("https://garfieldscripts.xyz/ui-libs/janlib.lua"))()

   library.title = "Amaterasu Hub"
   library.foldername = "AmaterasuHub-Configs"
   library.fileext = ".txt"

   local CreditsTab = library:AddTab("Home")
   local MainTab = library:AddTab("Main")
   local TeleportationTab = library:AddTab("Teleportations")

   local CreditsColumn = CreditsTab:AddColumn()
   local MainColumn = MainTab:AddColumn()
   local MiscColumn = MainTab:AddColumn()
   local LeftTPColumn = TeleportationTab:AddColumn()
   local RightTPColumn = TeleportationTab:AddColumn()

   local CreditsSection = CreditsColumn:AddSection("Credits")

   local MobSection = MainColumn:AddSection("Mob Farm")
   local BossSection = MainColumn:AddSection("Boss Farm")
   local PlayerSection = MainColumn:AddSection("Player Modification")
   local ScriptsSettingsSection = MainColumn:AddSection("Script Settings")

   local MiscSection = MiscColumn:AddSection("Miscellaneous")
   local GourdSection = MiscColumn:AddSection("Auto Gourd")
   local MasterySection = MiscColumn:AddSection("Mastery")
   local SkillMasterySection = MiscColumn:AddSection("Skill Mastery")

   local LocationTeleports = LeftTPColumn:AddSection("Location")
   local TrainerTeleports = LeftTPColumn:AddSection("Trainers")

   local OtherTP = RightTPColumn:AddSection("Others")

   CreditsSection:AddDivider("Spectrum#9959")

   CreditsSection:AddButton({text = "Join Discord", callback = function()
       if not http_request then
           game:GetService("StarterGui"):SetCore("SendNotification", {
               Title = "Amaterasu Hub",
               Text = "Your executor isn't supported for this function, please join the discord manually. (discord.gg/amaterasuhub)",
               Duration = 5
           })
           return
       end

       local response = http_request({
           Url = "http://127.0.0.1:6463/rpc?v=1",
           Method = "POST",
           Headers = {
               ["Content-Type"] = "application/json",
               Origin = "https://discord.com"
           },
           Body = game:GetService("HttpService"):JSONEncode({
               cmd = "INVITE_BROWSER",
               nonce = game:GetService("HttpService"):GenerateGUID(false),
               args = {code = "amaterasuhub"}
           })
       })

       if not response.StatusCode == 200 then
           game:GetService("StarterGui"):SetCore("SendNotification", {
               Title = "Amaterasu Hub",
               Text = "There was a problem while joining the discord",
               Duration = 5
           })
       end
   end})

   MobSection:AddToggle({text = "Auto Quest", state = _G.Options.AutoQuest, callback = function(value)
       if current_tween then
           current_tween:Cancel()
           current_tween = nil
       end

       _G.Options.AutoQuest = value
       SaveOptions()
   end})

   MobSection:AddToggle({text = "Enable", state = _G.Options.LevelFarm, callback = function(value)
       if current_tween then
           current_tween:Cancel()
           current_tween = nil
       end

       _G.Options.LevelFarm = value
       SaveOptions()
   end}):AddList({text = "Mob", value = _G.Options.MobName, values = ReturnAllMobs(), callback = function(value)
       _G.Options.MobName = value
       SaveOptions()
   end})

   BossSection:AddToggle({text = "Auto Collect Chests", state = _G.Options.AutoCollectChests, callback = function(value)
       _G.Options.AutoCollectChests = value
       SaveOptions()
   end})

   BossSection:AddToggle({text = "Enable", state = _G.Options.BossFarm, callback = function(value)
       if current_tween then
           current_tween:Cancel()
           current_tween = nil
       end

       _G.Options.BossFarm = value
       SaveOptions()
   end}):AddList({text = "Boss", value = _G.Options.BossName, values = ReturnAllBosses(), callback = function(value)
       _G.Options.BossName = value
       SaveOptions()
   end})

   PlayerSection:AddToggle({text = "Walk Speed", state = _G.Options.SpeedEnabled, callback = function(value)
       _G.Options.SpeedEnabled = value
       SaveOptions()
   end}):AddSlider({text = "Amount", min = 16, max = 200, value = _G.Options.WalkSpeed, callback = function(value)
       _G.Options.WalkSpeed =  value
       SaveOptions()
   end})

   PlayerSection:AddToggle({text = "Jump Power", state = _G.Options.JumpEnabled, callback = function(value)
       _G.Options.SpeedEnabled = value
       SaveOptions()
   end}):AddSlider({text = "Amount", min = 50, max = 200, value = _G.Options.JumpPower, callback = function(value)
       _G.Options.JumpPower =  value
       SaveOptions()
   end})

   local drop = ScriptsSettingsSection:AddList({text = "Weapon Type", value = _G.Options.TypeSelected, values = {"Fists", "Sword", "Claws"}, callback = function(value)
       _G.Options.TypeSelected = value
       SaveOptions()
   end})

   MiscSection:AddButton({text = "Finish Current Training", callback = function()
       if #game:GetService("Players").LocalPlayer.PlayerGui.ExcessGuis:GetChildren() > 0 then
           getrenv()._G.Completed_Excersie(true)
           for i,v in next, game:GetService("Players").LocalPlayer.PlayerGui.ExcessGuis:GetChildren() do
               if v:IsA("ScreenGui") then
                   game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer("remove_item", v)
               end
           end
       end
   end})

   MiscSection:AddButton({text = "Check Breathing Progress", callback = function()
       local Plr = game:GetService("Players").LocalPlayer
       local b = game:GetService("ReplicatedStorage")["Player_Data"][Plr.Name].BreathingProgress

       game:GetService("StarterGui"):SetCore("SendNotification", {
           Title = "Amaterasu Hub",
           Text = "Breathing Progress: " .. b["1"].Value .. " / " .. b["2"].Value,
           Duration = 5
       })
   end})

   MiscSection:AddButton({text = "Check Demon Progress", callback = function()
       local Plr = game:GetService("Players").LocalPlayer
       local b = game:GetService("ReplicatedStorage")["Player_Data"][Plr.Name].DemonProgress

       game:GetService("StarterGui"):SetCore("SendNotification", {
           Title = "Amaterasu Hub",
           Text = "Demon Progress: " .. b["1"].Value .. " / " .. b["2"].Value,
           Duration = 5
       })
   end})

   MiscSection:AddDivider("Toggles")

   MiscSection:AddToggle({text = "Kill Aura", state = _G.Options.KillAura, callback = function(value)
       _G.Options.KillAura = value
       SaveOptions()
   end})
   
   MiscSection:AddToggle({text = "No Drown", state = _G.Options.NoDrown, callback = function(value)
       _G.Options.NoDrown = value
       SaveOptions()
   end})

   MiscSection:AddToggle({text = "No Sun Damage", state = _G.Options.NoSunDmg, callback = function(value)
       _G.Options.NoSunDmg = value
       game:GetService("Players").LocalPlayer.PlayerScripts["Small_Scripts"].Gameplay["Sun_Damage"].Disabled = _G.Options.NoSunDmg
       SaveOptions()
   end})

   MiscSection:AddToggle({text = "Auto Pick Flowers", state = _G.Options.AutoPickFlowers, callback = function(value)
       _G.Options.AutoPickFlowers = value
       SaveOptions()
   end})

   MiscSection:AddToggle({text = "Inf Stamina", state = _G.Options.InfStam, callback = function(value)
       _G.Options.InfStam = value
       SaveOptions()
   end})

   MiscSection:AddToggle({text = "Inf Breathing", state = _G.Options.InfBreathing, callback = function(value)
       _G.Options.InfBreathing = value
       SaveOptions()
   end})
   
   MiscSection:AddToggle({text = "No Cooldown Moves", state = _G.Options.NoCdMoves, callback = function(value)    
       _G.Options.NoCdMoves = value
       SaveOptions()
   end})

   GourdSection:AddToggle({text = "Enable", state = _G.Options.AutoGourd, callback = function(value)
       _G.Options.AutoGourd = value
       SaveOptions()
   end}):AddList({text = "Gourd Size", value = _G.Options.GourdSize, values = {"Small Gourd", "Medium Gourd", "Big Gourd"}, callback = function(value)
       _G.Options.GourdSize = value
       SaveOptions()
   end})
   
   MasterySection:AddToggle({text = "Fist Mastery", state = _G.Options.AutoFistMast, callback = function(value)
       if current_tween then
           current_tween:Cancel()
       end

       _G.Options.AutoFistMast = value
       SaveOptions()
   end})

   SkillMasterySection:AddToggle({text = "Enable", state = _G.Options.SkillMastery, callback = function(value)
       using_move = false
       stop_kill_aura = false
       _G.Options.SkillMastery = value
       SaveOptions()
   end}):AddSlider({text = "HP % to Start Using Skills", min = 15, max = 70, value = _G.Options.MasteryHealth, callback = function(value)
       _G.Options.MasteryHealth =  value
       SaveOptions()
   end})

   SkillMasterySection:AddDivider("Skills")

   for i,v in next, _G.Options.Skills do
       SkillMasterySection:AddToggle({text = "Auto Use " .. i, state = v, callback = function(value)
           _G.Options.Skills[i] = value
           SaveOptions()
       end})
   end


   for i,v in next, LocationsCFrame do
       LocationTeleports:AddButton({text = i, callback = function()
           if current_tween then
               current_tween:Cancel()
               current_tween = nil
           end
       
           TeleportTween(v)
       end})
   end

   for i,v in next, TrainerCFrames do
       TrainerTeleports:AddButton({text = i, callback = function()
           if current_tween then
               current_tween:Cancel()
               current_tween = nil
           end
       
           TeleportTween(v)
       end})
   end

   OtherTP:AddButton({text = "Stop Teleportation", callback = function()
       if current_tween then
           current_tween:Cancel()
           current_tween = nil
       end
   end})

   OtherTP:AddButton({text = "Teleport to Muzan", callback = function()
       if workspace:FindFirstChild("Muzan") then
           local Cnice = CFrame.new(workspace:WaitForChild("Muzan"):WaitForChild("SpawnPos").Value)
           TeleportTween(Cnice)
       end
   end})

   local SettingsTab = library:AddTab("UI Settings")

   local SettingsColumn = SettingsTab:AddColumn()
   local SettingsColumn2 = SettingsTab:AddColumn()

   local SettingSection = SettingsColumn:AddSection("Menu")
   local ConfigSection = SettingsColumn2:AddSection("Configs")

   local Warning = library:AddWarning({type = "confirm"})

   SettingSection:AddBind({text = "Open / Close", flag = "UI Toggle", nomouse = true, key = "RightControl", callback = function()
       library:Close()
   end})

   SettingSection:AddColor({text = "Accent Color", flag = "Menu Accent Color", color = Color3.fromRGB(203, 0, 174), callback = function(color)
       if library.currentTab then
           library.currentTab.button.TextColor3 = color
       end

       for i,v in next, library.theme do
           v[(v.ClassName == "TextLabel" and "TextColor3") or (v.ClassName == "ImageLabel" and "ImageColor3") or "BackgroundColor3"] = color
       end
   end})

   local backgroundlist = {
       Floral = "rbxassetid://5553946656",
       Flowers = "rbxassetid://6071575925",
       Circles = "rbxassetid://6071579801",
       Hearts = "rbxassetid://6073763717"
   }

   local back = SettingSection:AddList({text = "Background", max = 4, flag = "background", values = {"Floral", "Flowers", "Circles", "Hearts"}, value = "Floral", callback = function(v)
       if library.main then
           library.main.Image = backgroundlist[v]
       end
   end})

   back:AddColor({flag = "backgroundcolor", color = Color3.new(), callback = function(color)
       if library.main then
           library.main.ImageColor3 = color
       end
   end, trans = 1, calltrans = function(trans)
       if library.main then
           library.main.ImageTransparency = 1 - trans
       end
   end})

   SettingSection:AddSlider({text = "Tile Size", min = 50, max = 500, value = 50, callback = function(size)
       if library.main then
           library.main.TileSize = UDim2.new(0, size, 0, size)
       end
   end})

   ConfigSection:AddBox({text = "Config Name", skipflag = true})

   ConfigSection:AddList({text = "Configs", skipflag = true, value = "", flag = "Config List", values = library:GetConfigs()})

   ConfigSection:AddButton({text = "Create", callback = function()
       library:GetConfigs()
       writefile(library.foldername .. "/" .. library.flags["Config Name"] .. library.fileext, "{}")
       library.options["Config List"]:AddValue(library.flags["Config Name"])
   end})

   ConfigSection:AddButton({text = "Save", callback = function()
       local r, g, b = library.round(library.flags["Menu Accent Color"])
       Warning.text = "Are you sure you want to save the current settings to config <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. library.flags["Config List"] .. "</font>?"
       if Warning:Show() then
           library:SaveConfig(library.flags["Config List"])
       end
   end})

   ConfigSection:AddButton({text = "Load", callback = function()
       local r, g, b = library.round(library.flags["Menu Accent Color"])
       Warning.text = "Are you sure you want to load config <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. library.flags["Config List"] .. "</font>?"
       if Warning:Show() then
           library:LoadConfig(library.flags["Config List"])
       end
   end})

   ConfigSection:AddButton({text = "Delete", callback = function()
       local r, g, b = library.round(library.flags["Menu Accent Color"])
       Warning.text = "Are you sure you want to delete config <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. library.flags["Config List"] .. "</font>?"
       if Warning:Show() then
           local config = library.flags["Config List"]
           if table.find(library:GetConfigs(), config) and isfile(library.foldername .. "/" .. config .. library.fileext) then
               library.options["Config List"]:RemoveValue(config)
               delfile(library.foldername .. "/" .. config .. library.fileext)
           end
       end
   end})

   library:Init()
   library:selectTab(library.tabs[1])

   -- // Script Function \\ --

   local TweenService = game:GetService("TweenService")
   local Plr = game:GetService("Players").LocalPlayer
   local Data = game:GetService("ReplicatedStorage")["Player_Data"][Plr.Name]

   local quest_tbl = {
       ["Zoku's Subordinate"] = {
           ["MobCFrame"] = CFrame.new(140.232758, 283.25769, -1702.76099, 0.998476863, 2.14063682e-08, 0.0551717877, -1.8081284e-08, 1, -6.07670003e-08, -0.0551717877, 5.96768643e-08, 0.998476863),
           ["QuestFunc"] = require(Plr.PlayerGui:WaitForChild("Npc_Dialogue"):WaitForChild("LocalScript"):WaitForChild("Functions")).OkayZukoSubordinates
       }
   }

   function TeleportTween(dist, AdditionalCFrame)
       if Plr.Character:FindFirstChild("HumanoidRootPart") and Plr.Character:FindFirstChild("Humanoid") then
           if AdditionalCFrame then
               local tweenInfo = TweenInfo.new((Plr.Character:WaitForChild("HumanoidRootPart").Position - dist.Position).magnitude / _G.Options.TweenSpeed, Enum.EasingStyle.Linear)
               current_tween = TweenService:Create(Plr.Character:WaitForChild("HumanoidRootPart"), tweenInfo, {CFrame = dist * AdditionalCFrame})
           else
               local tweenInfo = TweenInfo.new((Plr.Character:WaitForChild("HumanoidRootPart").Position - dist.Position).magnitude / _G.Options.TweenSpeed, Enum.EasingStyle.Linear)
               current_tween = TweenService:Create(Plr.Character:WaitForChild("HumanoidRootPart"), tweenInfo, {CFrame = dist})
           end

           current_tween:Play()
           noclip_tween = true
           current_tween.Completed:Wait()
           current_tween = nil
           noclip_tween = false
       end
   end

   function ChangeTrans(x)
       local Change_Transparency = require(game:GetService("ReplicatedStorage").Modules.Server["Server_Modules"]["Change_Transparency"])

       for _, v in next, Plr.Character:GetDescendants() do
           if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
               Change_Transparency(
                   Plr,
                   {
                       {
                           v,
                           x
                       }
                   }
               )
           end
       end
   end

   task.spawn(function()
       for i,v in next, getgc(true) do
           if type(v) == "table" and rawget(v, "swim_bar") then
               while task.wait() do
                   if _G.Options.NoDrown then
                       rawset(v, "swim_bar", {
                           [1] = 2,
                           [2] = 2
                       })
                   end
               end
           end
       end
   end)

   task.spawn(function()
       while task.wait() do
           if noclip_tween then
               Plr.Character:WaitForChild("Humanoid"):ChangeState(11)
           end


           if _G.Options.LevelFarm and _G.Options.MobName then
               Plr.Character:WaitForChild("Humanoid"):ChangeState(11)

               local mob
               repeat task.wait()
                   mob = workspace.Mobs:FindFirstChild(_G.Options.MobName, true)
                   if not mob then
                       local MobValues = quest_tbl[_G.Options.MobName]
                       TeleportTween(MobValues["MobCFrame"])
                   end
               until mob

               if mob and mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") then
                   local mag = math.floor((Plr.Character:WaitForChild("HumanoidRootPart").Position - mob:WaitForChild("HumanoidRootPart").Position).magnitude)
                   local MaxHP = mob:WaitForChild("Humanoid").MaxHealth

                   if _G.Options.SkillMastery and mob:WaitForChild("Humanoid").Health/MaxHP * 100 <= _G.Options.MasteryHealth then
                       stop_kill_aura = true
                       if mag <= 100 then
                           if current_tween then current_tween:Cancel() end
                           if mob:FindFirstChild("Humanoid").FloorMaterial ~= Enum.Material.Air then
                               if using_move ~= true then
                                   Plr.Character:WaitForChild("HumanoidRootPart").CFrame = mob:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0, 10, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                               end
                           end

                           for i,v in next, _G.Options.Skills do
                               if v then
                                   using_move = true
                               end
                               game:GetService("VirtualInputManager"):SendKeyEvent(v, i, false, game)
                               using_move = false
                               game:GetService("VirtualInputManager"):SendKeyEvent(false, i, false, game)
                           end
                           stop_kill_aura = false
                       else
                           TeleportTween(mob:WaitForChild("HumanoidRootPart").CFrame)
                       end
                   else
                       if mag <= 100 then
                           if current_tween then current_tween:Cancel() end
                           if mob:FindFirstChild("Humanoid").FloorMaterial ~= Enum.Material.Air then
                               Plr.Character:WaitForChild("HumanoidRootPart").CFrame = mob:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0, 6, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                           end
                       else
                           TeleportTween(mob:WaitForChild("HumanoidRootPart").CFrame)
                       end
                   end
               end
           end

           if _G.Options.AutoCollectChests then
               local chest = game:GetService("Workspace").Debree:FindFirstChild("Loot_Chest")
               
               if chest and #chest:WaitForChild("Drops"):GetChildren() > 0 then
                   local remote = chest:WaitForChild("Add_To_Inventory")

                   for _,v in next, chest:WaitForChild("Drops"):GetChildren() do
                       if not game:GetService("ReplicatedStorage")["Player_Data"][Plr.Name].Inventory:FindFirstChild(v.Name, true) then
                           remote:InvokeServer(v.Name)
                       end
                   end
               end
           end

           if _G.Options.BossFarm and _G.Options.BossName then
               Plr.Character:WaitForChild("Humanoid"):ChangeState(11)
               local mob

               repeat task.wait()
                   mob = workspace.Mobs.Bosses:FindFirstChild(_G.Options.BossName, true)

                   if mob and mob:IsA("Folder") and mob:FindFirstChild(_G.Options.BossName) then
                       mob = mob:FindFirstChild(_G.Options.BossName)
                   end
               until mob

               if mob and mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") then
                   Plr.Character:WaitForChild("Humanoid"):ChangeState(11)
                   local mag = math.floor((Plr.Character:WaitForChild("HumanoidRootPart").Position - mob:WaitForChild("HumanoidRootPart").Position).magnitude)
                   local MaxHP = mob:WaitForChild("Humanoid").MaxHealth

                   if _G.Options.SkillMastery and mob:WaitForChild("Humanoid").Health/MaxHP * 100 <= _G.Options.MasteryHealth then
                       stop_kill_aura = true
                       if mag <= 100 then
                           if current_tween then current_tween:Cancel() end
                           if mob:WaitForChild("Humanoid").FloorMaterial ~= Enum.Material.Air then
                               if using_move ~= true then
                                   Plr.Character:WaitForChild("HumanoidRootPart").CFrame = mob:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0, 10, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                               end
                           end

                           for i,v in next, _G.Options.Skills do
                               if v then
                                   using_move = true
                               end
                               game:GetService("VirtualInputManager"):SendKeyEvent(v, i, false, game)
                               using_move = false
                               game:GetService("VirtualInputManager"):SendKeyEvent(false, i, false, game)
                           end
                           stop_kill_aura = false
                       else
                           TeleportTween(mob:WaitForChild("HumanoidRootPart").CFrame)
                       end
                   else
                       if mag <= 100 then
                           if current_tween then current_tween:Cancel() end
                           if mob:WaitForChild("Humanoid").FloorMaterial ~= Enum.Material.Air then
                               Plr.Character:WaitForChild("Humanoid"):ChangeState(11)
                               Plr.Character:WaitForChild("HumanoidRootPart").CFrame = mob:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0, 6, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                           end
                       else
                           TeleportTween(mob:WaitForChild("HumanoidRootPart").CFrame)
                       end
                   end
               end
           end

           if _G.Options.SpeedEnabled and Plr.Character:FindFirstChild("Humanoid") then
               Plr.Character:WaitForChild("Humanoid").WalkSpeed = _G.Options.WalkSpeed
           end

           if _G.Options.JumpEnabled and Plr.Character:FindFirstChild("Humanoid") then
               Plr.Character:WaitForChild("Humanoid").JumpPower = _G.Options.JumpPower
           end

           if _G.Options.AutoPickFlowers then
               local flower = workspace:WaitForChild("Demon_Flowers_Spawn"):WaitForChild("Cube.002", true)

               if flower then
                   local mag = math.floor((Plr.Character:WaitForChild("HumanoidRootPart").Position - flower.Position).magnitude)

                   if mag <= 100 then
                       Plr:WaitForChild("HumanoidRootPart").CFrame = flower.CFrame
                   else
                       if flower then
                           TeleportTween(flower.CFrame)
                       end
                   end
               end
           end

           if _G.Options.InfStam then
               getrenv()._G:Stamina(-9e9)
           end

           if _G.Options.InfBreathing then
               getrenv()._G:Breath(-9e9)
           end

           if _G.Options.AutoFistMast then
               Plr.Character:WaitForChild("Humanoid"):ChangeState(11)

               local Cnice = CFrame.new(171.59729, 283.718292, -1768.19495, -0.153865099, 0, 0.988091826, 0, 1, 0, -0.988091826, 0, -0.153865099)
               TeleportTween(Cnice, CFrame.new(0, 0, 4))
           end
       end
   end)

   task.spawn(function()
       while task.wait() do
           if _G.Options.AutoGourd then
               if _G.Options.GourdSize == "Big Gourd" and Data.Yen.Value >= 700 then
                   for i = 1,6 do
                       task.wait()
                       game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer("buysomething", Plr, _G.Options.GourdSize, Data.Yen, Data.Inventory)
                       wait(1)
                       repeat task.wait()
                           local GourdFound = Plr.Backpack:WaitForChild(_G.Options.GourdSize) or Plr.Character:WaitForChild(_G.Options.GourdSize)
                           game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer("blow_in_gourd_thing", Plr, GourdFound, 1)
                       until not Plr.Backpack:FindFirstChild(_G.Options.GourdSize)
                   end
               elseif _G.Options.GourdSize == "Medium Gourd" and Data.Yen.Value >= 450 then
                   for i = 1,6 do
                       task.wait()
                       game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer("buysomething", Plr, _G.Options.GourdSize, Data.Yen, Data.Inventory)
                       wait(1)
                       repeat task.wait()
                           local GourdFound = Plr.Backpack:WaitForChild(_G.Options.GourdSize) or Plr.Character:WaitForChild(_G.Options.GourdSize)
                           game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer("blow_in_gourd_thing", Plr, GourdFound, 1)
                       until not Plr.Backpack:FindFirstChild(_G.Options.GourdSize)
                   end
               elseif _G.Options.GourdSize == "Small Gourd" and Data.Yen.Value >= 200 then
                   for i = 1,6 do
                       task.wait()
                       game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer("buysomething", Plr, _G.Options.GourdSize, Data.Yen, Data.Inventory)
                       wait(1)
                       repeat task.wait()
                           local GourdFound = Plr.Backpack:WaitForChild(_G.Options.GourdSize) or Plr.Character:WaitForChild(_G.Options.GourdSize)
                           game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer("blow_in_gourd_thing", Plr, GourdFound, 1)
                       until not Plr.Backpack:FindFirstChild(_G.Options.GourdSize)
                   end
               end
           end
       end
   end)

   function args(style, count)
       return {
           [1] = style,
           [2] = Plr,
           [3] = Plr.Character,
           [4] = Plr.Character:WaitForChild("HumanoidRootPart"),
           [5] = Plr.Character:WaitForChild("Humanoid"),
           [6] = count,
           [7] = nil,
           [8] = nil
       }
   end

   task.spawn(function()
       while task.wait() do
           if _G.Options.KillAura and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") and Plr.Character:FindFirstChild("Humanoid") then
               if _G.Options.TypeSelected == "Fists" then
                   game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args("fist_combat", 1)))
                   game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args("fist_combat", 2)))
                   game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args("fist_combat", 3)))
                   game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args("fist_combat", 4)))
                   game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args("fist_combat", 919)))
                   repeat task.wait(0.1) until Plr:WaitForChild("combotangasd123").Value <= 0
               elseif _G.Options.TypeSelected == "Sword" then
                   game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args("Sword_Combat_Slash", 1)))
                   game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args("Sword_Combat_Slash", 2)))
                   game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args("Sword_Combat_Slash", 3)))
                   game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args("Sword_Combat_Slash", 4)))
                   game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args("Sword_Combat_Slash", 919)))
                   repeat task.wait(0.1) until Plr:WaitForChild("combotangasd123").Value <= 0
               end
           end
       end
   end)
end