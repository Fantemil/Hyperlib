local Exploit = (syn and not is_sirhurt_closure and not pebc_execute and "Synapse X") or (secure_load and "Sentinel") or (pebc_execute and "ProtoSmasher") or (KRNL_LOADED and "Krnl") or (is_sirhurt_closure and "SirHurt") or (identifyexecutor():find("ScriptWare") and "Script-Ware") or ("Unsupported");
local req = (Exploit == "Synapse X" and syn.request) or ((Exploit == "Sentinel" or Exploit == "Krnl") and request) or (Exploit == "ProtoSmasher" or Exploit == "SirHurt" and http_request) or (Exploit == "Script-Ware" and http.request) or request;    
local success, response = pcall(function()
    local Settings = {
        State = false,
        Accuracy = 100,
        FOV = false,
        FOVSize = 250,
        FOVTransparency = 1,
        TriggerBot = false,
        Target = "Head",
        RageBot = false,
        Clip,
        Radio = false,
        Farm = false,
        HBE = false,
        HBESize = 5,
        HBETransparency = 0.7,
        ModDetector = true,
        ModLeave = false,
        LeaveDelay = 0,
        ProxCheck = false,
        ProxDistance = 50,
        Refresh = false,
        RefreshFreq = 120,
        Tween = 3000,
        QuickUpdate = false,
        MaintainWalspeed = false,
        filename = "Anomaly_Scripts/SCPRP/Save.json",
        AutoReload = true
    }
    local Aiming = false
    local Services = {
        UserInputService = game:GetService("UserInputService"),
        PlayerService = game:GetService("Players"),
        HttpService = game:GetService("HttpService")
    }
    --saving functions
    local function existsFile(name)
        if not readfile then return end
        return pcall(function()
            return readfile(name)
        end)
    end

    function Load()
        if not existsFile(Settings.filename) then return end
        local _, Result = pcall(readfile, Settings.filename);
        if _ then 
            local _, Table = pcall(Services.HttpService.JSONDecode, Services.HttpService, Result);
            if _ then
                for i, v in pairs(Table) do
                    if Settings[i] ~= nil  then
                        Settings[i] = v;
                        pcall(Settings[i], v);
                    end
                end
            end
        end
    end

    function Save()
        if writefile then
            if not isfolder("Anomaly_Scripts") then
                makefolder("Anomaly_Scripts")
                makefolder("Anomaly_Scripts/SCPRP")
            elseif not isfolder("Anomaly_Scripts/SCPRP") then
                makefolder("Anomaly_Scripts/SCPRP")
            end
            writefile(Settings.filename, Services.HttpService:JSONEncode(Settings));
        end
    end

    Load()

    local HBEColor = Color3.new(0.639216, 0.635294, 0.647059)

    local Script = {
        Loaded = false
    }

    local VIM = game:GetService("VirtualInputManager")
    keys = {
        w = Enum.KeyCode["W"],
        a = Enum.KeyCode["A"],
        s = Enum.KeyCode["S"],
        d = Enum.KeyCode["D"]
    }

    function presskey(key, duration)
        VIM:SendKeyEvent(true, key, false, nil)
        wait(duration)
        VIM:SendKeyEvent(false, key, false, nil)
    end
    local players = game:GetService("Players")
    local plr = players.LocalPlayer
    local mouse = plr:GetMouse()
    local camera = game.Workspace.CurrentCamera

    --//ESP
    local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Anomaly-hub/Anomalies-Scripts/main/kiriots%20esp", true))()
    pcall(function()
        if game:GetService("Workspace").SCPs:FindFirstChild("SCP-999") then
            ESP:Add(game:GetService("Workspace").SCPs:FindFirstChild("SCP-999"),{IsEnabled = "SCPs"})
        end
        if game:GetService("Workspace").SCPs:FindFirstChild("SCP-457") then
            ESP:Add(game:GetService("Workspace").SCPs:FindFirstChild("SCP-457"),{IsEnabled = "SCPs"})
        end
        if game:GetService("Workspace").SCPs:FindFirstChild("SCP-023") then
            ESP:Add(game:GetService("Workspace").SCPs:FindFirstChild("SCP-023"),{IsEnabled = "SCPs"})
        end
        if game:GetService("Workspace").SCPs:FindFirstChild("SCP-049") then
            ESP:Add(game:GetService("Workspace").SCPs:FindFirstChild("SCP-049"),{IsEnabled = "SCPs"})
        end
        if game:GetService("Workspace").SCPs:FindFirstChild("SCP-173") then
            ESP:Add(game:GetService("Workspace").SCPs:FindFirstChild("SCP-173"),{IsEnabled = "SCPs"})
        end
        if game:GetService("Workspace").SCPs:FindFirstChild("SCP-066") then
            ESP:Add(game:GetService("Workspace").SCPs:FindFirstChild("SCP-066"),{IsEnabled = "SCPs"})
        end
        if game:GetService("Workspace").SCPs:FindFirstChild("SCP-966"):FindFirstChild("Instance1") then
            ESP:Add(game:GetService("Workspace").SCPs:FindFirstChild("SCP-966").Instance1,{Name = "SCP-966", IsEnabled = "SCPs"})
        end
        if game:GetService("Workspace").SCPs:FindFirstChild("SCP-966"):FindFirstChild("Instance2") then
            ESP:Add(game:GetService("Workspace").SCPs:FindFirstChild("SCP-966").Instance2,{Name = "SCP-966", IsEnabled = "SCPs"})
        end
        if game:GetService("Workspace").SCPs:FindFirstChild("SCP-966"):FindFirstChild("Instance4") then
            ESP:Add(game:GetService("Workspace").SCPs:FindFirstChild("SCP-966").Instance4,{Name = "SCP-966", IsEnabled = "SCPs"})
        end
        if game:GetService("Workspace").SCPs:FindFirstChild("SCP-966"):FindFirstChild("Instance3") then
            ESP:Add(game:GetService("Workspace").SCPs:FindFirstChild("SCP-966").Instance3,{Name = "SCP-966", IsEnabled = "SCPs"})
        end
        if game:GetService("Workspace").SCPs:FindFirstChild("SCP-131"):FindFirstChild("Yellow") then
            ESP:Add(game:GetService("Workspace").SCPs:FindFirstChild("SCP-131").Yellow,{Name = "SCP-131", IsEnabled = "SCPs"})
        end
        if game:GetService("Workspace").SCPs:FindFirstChild("SCP-131"):FindFirstChild("Blue") then
            ESP:Add(game:GetService("Workspace").SCPs:FindFirstChild("SCP-131").Blue,{Name = "SCP-131", IsEnabled = "SCPs"})
        end
        if game:GetService("Workspace").SCPs:FindFirstChild("SCP-131"):FindFirstChild("Red") then
            ESP:Add(game:GetService("Workspace").SCPs:FindFirstChild("SCP-131").Red,{Name = "SCP-131", IsEnabled = "SCPs"})
        end
        if game:GetService("Workspace").SCPs:FindFirstChild("SCP-096"):FindFirstChild("Rig") then
            ESP:Add(game:GetService("Workspace").SCPs:FindFirstChild("SCP-096").Rig,{Name = "SCP-096", IsEnabled = "SCPs"})
        end
    end) 

    ESP.Players = false
    ESP.SCPs = true
    ESP.Boxes = true
    ESP.Tracers = false
    ESP.Names = false

    --//FOV
    local FOVCircle = Drawing.new("Circle")
    FOVCircle.Position = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
    FOVCircle.Radius = 100
    FOVCircle.Color = Color3.fromRGB(255, 255, 255)
    FOVCircle.Thickness = 1
    FOVCircle.Filled = false
    FOVCircle.Visible = false
    FOVCircle.Transparency = 1
    FOVCircle.NumSides = 50

    --//Functions
    local enemy = {
        "Class - D",
        "Chaos Insurgency"
    }
    local friends = {
        "Medical Department",
        "Mobile Task Force",
        "Rapid Response Team",
        "Administrative Department",
        "Scientific Department",
        "Security Department",
        "Internal Security Department",
        "Intelligence Agency"
    }

    function IsEnemy(plr) 
        if table.find(friends, players.LocalPlayer.Team.Name) then
            if table.find(enemy, plr.Team.Name) then
                return true
            else
                return false
            end
        else
            if table.find(enemy, plr.Team.Name) then
                return false
            else 
                return true
            end
        end
    end

    local _speed = 3000
    function tp(...)
        local plr=game.Players.LocalPlayer
        local args={...}
        if typeof(args[1])=="number"and args[2]and args[3]then
            args=Vector3.new(args[1],args[2],args[3])
        elseif typeof(args[1])=="Vector3" then
            args=args[1]    
        elseif typeof(args[1])=="CFrame" then
            args=args[1].Position
        end
        if Settings.ProxCheck then
            for _,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v ~= plr and v.Character:FindFirstChild("HumanoidRootPart") then
                    local check = (v.Character.HumanoidRootPart.Position - args).Magnitude
                    if check < Settings.ProxDistance then
                        game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Tween Prevented", Text = "Players are near the specified location."})
                        return false
                    end
                end
            end
        end
        local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
        local speed = dist/_speed
        local datween = game:GetService("TweenService"):Create(
            plr.Character.HumanoidRootPart,
            TweenInfo.new(speed,Enum.EasingStyle.Linear),
            {CFrame=CFrame.new(args)}
        ):Play()
        wait(speed)
        return true
    end

    function tpWithouCheck(...)
        local plr=game.Players.LocalPlayer
        local args={...}
        if typeof(args[1])=="number"and args[2]and args[3]then
            args=Vector3.new(args[1],args[2],args[3])
        elseif typeof(args[1])=="Vector3" then
            args=args[1]    
        elseif typeof(args[1])=="CFrame" then
            args=args[1].Position
        end
        local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
        local speed = dist/_speed
        local datween = game:GetService("TweenService"):Create(
            plr.Character.HumanoidRootPart,
            TweenInfo.new(speed,Enum.EasingStyle.Linear),
            {CFrame=CFrame.new(args)}
        ):Play()
        wait(speed)
    end

    function GetPlayerFromShort(String)
        String = string.lower(String)
        for _,Player in pairs(game:GetService("Players"):GetPlayers()) do
            local PlayerName = string.lower(Player.Name)

            if string.match(PlayerName, "^"..String) then
                return Player
            end
        end
    end

    function NoclipLoop()
        if game.Players.LocalPlayer.Character ~= nil then
            for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if child:IsA("BasePart") and child.CanCollide == true then
                    child.CanCollide = false
                end
            end
        end
    end

    function notification(Title, Desc)
        game:GetService("StarterGui"):SetCore("SendNotification", {Title = Title, Text = Desc})
    end

    function notBehindWall(target)
        local ray = Ray.new(plr.Character.HumanoidRootPart.Position, (target.Position - plr.Character.HumanoidRootPart.Position).Unit * 400)
        local part, position = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(ray, {plr.Character}, false, true)
        if part then
            local humanoid = part.Parent:FindFirstChildOfClass("Humanoid")
            if not humanoid then
                humanoid = part.Parent.Parent:FindFirstChildOfClass("Humanoid")
            end
            if humanoid and target and humanoid.Parent == target.Parent then
                local pos, visible = camera:WorldToScreenPoint(target.Position)
                if visible then
                    return true
                end
            end
        end
        return false
    end

    function ClosestPlayerToMouse()
        local target = nil
        local dist = math.huge
        for i,v in pairs(players:GetPlayers()) do
            if v.Name ~= plr.Name and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and IsEnemy(v) then
                for i,v in pairs(v.Character:GetChildren()) do
                    if v:IsA("Accessory") and v.Name == "Head" then
                        v.Name = "NotHead"
                    end
                end
                
                local screenpoint = camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
                local check = (Vector2.new(mouse.X,mouse.Y)-Vector2.new(screenpoint.X,screenpoint.Y)).magnitude
                if check < dist then
                    if Settings.FOV then
                        if check < Settings.FOVSize then
                            if notBehindWall(v.Character.HumanoidRootPart) then
                                target  = v
                                dist = check
                            end 
                        end
                    else
                        if notBehindWall(v.Character.HumanoidRootPart) then
                            target  = v
                            dist = check
                        end
                    end 
                end
            end
        end
        return target 
    end

    --THIS UI Library is not meant from public use, I'd like to ask all of you not to use it.
    local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/AnomalyRBLX/Database/main/Libraries/Jan's%20UI%20Copy.lua", true))();
    local window = Lib:CreateWindow("SCP Roleplay", Vector2.new(492, 588), Enum.KeyCode.RightShift)

    local Main = window:CreateTab("Main")
    local Misc = window:CreateTab("Miscellaneous")
    local Setting = window:CreateTab("Settings")
    local ST = Main:CreateSector("Silent Aim", "left")
    ST:AddToggle("Enabled", Settings.State, function(state)
        Settings.State = state
    end)

    ST:AddSlider("Accuracy", 1, Settings.Accuracy, 100, 1, function(num)
        Settings.Accuracy = num
    end)

    local bodyParts = {"Head", "HumanoidRootPart", "LeftUpperArm", "LowerTorso", "UpperTorso", "RightUpperArm", "LeftLowerLeg", "RightLowerLeg", "RightUpperLeg", "LeftFoot", "RightFoot", "LeftUpperLeg", "RightLowerArm", "LeftLowerArm", "LeftHand", "RightHand"}
    ST:AddDropdown("Target", {"Random", "Head", "HumanoidRootPart", "LeftUpperArm", "LowerTorso", "UpperTorso", "RightUpperArm", "LeftLowerLeg", "RightLowerLeg", "RightUpperLeg", "LeftFoot", "RightFoot", "LeftUpperLeg", "RightLowerArm", "LeftLowerArm", "LeftHand", "RightHand"}, Settings.Target, false, function(selected)
        Settings.Target = selected
    end)

    ST:AddSeperator("")

    ST:AddToggle("FOV Circle", Settings.Enabled, function(state)
        Settings.FOV = state
    end)

    ST:AddSlider("FOV Size", 50, Settings.FOVSize, 750, 1,  function(num)
        Settings.FOVSize = num
        FOVCircle.Radius = num
    end)

    ST:AddSlider("FOV Transparency", 0, 100, 100, 1, function(num)
        Settings.FOVTransparency = (num/100)
        FOVCircle.Transparency = (num/100)
    end)

    local SMT = Main:CreateSector("Miscellaneous", "right")
    SMT:AddToggle("Trigger Bot", Settings.TriggerBot, function(state)
        if not Script.Loaded then return end
        Settings.TriggerBot = state
        if state then notification("Notice", "This feature only works with Silent Aim enabled.") end
    end)

    SMT:AddToggle("Auto-Reload", Settings.AutoReload, function(state)
        Settings.AutoReload = state
    end)

    SMT:AddButton("Mod Guns", function()
        for i,v in next,getgc(true)do
            if type(v)=='table'and rawget(v,'AimFOV')then
                v.Piston = false
                v.Shotgun = false
                v.TBS = 0.05
                v.Weight = 0.1
            end
        end
    end)

    SMT:AddSeperator("Hitbox Expander")
    SMT:AddToggle("Enabled", Settings.HBE, function(state)
        if not Script.Loaded then return end
        Settings.HBE = state
        if Settings.HBE then
            for _,player in pairs(Services.PlayerService:GetPlayers()) do
                player.CharacterAdded:Connect(function()
                    if Settings.HBE and player.Character and player ~= Services.PlayerService.LocalPlayer and IsEnemy(player) then
                        pcall(function()
                            local hPart = player.Character:WaitForChild("HumanoidRootPart")
                            if hPart then
                                hPart.CanCollide = false
                                hPart.Size = Vector3.new(Settings.HBESize, Settings.HBESize, Settings.HBESize)
                                hPart.Transparency = Settings.HBETransparency
                                hPart.Material = Enum.Material.SmoothPlastic
                                hPart.Color = HBEColor
                            end
                        end)
                    end
                end)
                if player.Character and player ~= Services.PlayerService.LocalPlayer and IsEnemy(player) then
                    pcall(function()
                        local hPart = player.Character:WaitForChild("HumanoidRootPart")
                        if hPart then
                            hPart.CanCollide = false
                            hPart.Size = Vector3.new(Settings.HBESize, Settings.HBESize, Settings.HBESize)
                            hPart.Transparency = Settings.HBETransparency
                            hPart.Material = Enum.Material.SmoothPlastic
                            hPart.Color = HBEColor
                        end
                    end)
                end
            end
        elseif not Settings.HBE then
            for _,p in pairs(Services.PlayerService:GetPlayers()) do
                if p.Character ~= nil and IsEnemy(p) then
                    local Character = p.Character
                    if Character:FindFirstChild("HumanoidRootPart") then
                        Character.HumanoidRootPart.Size = Vector3.new(2, 0.400055, 1)
                        Character.HumanoidRootPart.Transparency = 1
                        Character.HumanoidRootPart.CanCollide = false 
                        Character.HumanoidRootPart.Material = Enum.Material.SmoothPlastic
                        Character.HumanoidRootPart.Color = HBEColor
                    end
                end
            end
        end
    end)

    SMT:AddSlider("Size", 1, Settings.HBESize, 25, 1, function(num)
        Settings.HBESize = num
        if Settings.HBE then
            for _,player in pairs(Services.PlayerService:GetPlayers()) do
                if player.Character and player ~= Services.PlayerService.LocalPlayer and IsEnemy(player) then
                    pcall(function()
                        local hPart = player.Character:WaitForChild("HumanoidRootPart")
                        if hPart then
                            hPart.CanCollide = false
                            hPart.Size = Vector3.new(Settings.HBESize, Settings.HBESize, Settings.HBESize)
                            hPart.Transparency = Settings.HBETransparency
                            hPart.Material = Enum.Material.SmoothPlastic
                            hPart.Color = HBEColor
                        end
                    end)
                end
            end
        end
    end)

    SMT:AddSlider("Transparency", 0, 70, 100, 1, function(num)
        Settings.HBETransparency = (num/100)
        if Settings.HBE then
            for _,player in pairs(Services.PlayerService:GetPlayers()) do
                if player.Character and player ~= Services.PlayerService.LocalPlayer and IsEnemy(player) then
                    pcall(function()
                        local hPart = player.Character:WaitForChild("HumanoidRootPart")
                        if hPart then
                            hPart.CanCollide = false
                            hPart.Size = Vector3.new(Settings.HBESize, Settings.HBESize, Settings.HBESize)
                            hPart.Transparency = Settings.HBETransparency
                            hPart.Material = Enum.Material.SmoothPlastic
                            hPart.Color = HBEColor
                        end
                    end)
                end
            end
        end
    end)

    SMT:AddColorpicker("Color", Color3.new(0.639216, 0.635294, 0.647059), function(val)
        HBEColor = val
        if Settings.HBE then
            for _,player in pairs(Services.PlayerService:GetPlayers()) do
                if player.Character and player ~= Services.PlayerService.LocalPlayer and IsEnemy(player) then
                    pcall(function()
                        local hPart = player.Character:WaitForChild("HumanoidRootPart")
                        if hPart then
                            hPart.CanCollide = false
                            hPart.Size = Vector3.new(Settings.HBESize, Settings.HBESize, Settings.HBESize)
                            hPart.Transparency = Settings.HBETransparency
                            hPart.Material = Enum.Material.SmoothPlastic
                            hPart.Color = HBEColor
                        end
                    end)
                end
            end
        end
    end)

    SMT:AddSeperator("ESP")
    SMT:AddToggle("Enabled", Settings.ESP, function(state)
        ESP:Toggle(state)
    end)

    SMT:AddToggle("Show Players", Settings.ESPPlayers, function(state)
        Settings.ESPPlayers = state
        ESP.Players = state
    end)

    SMT:AddToggle("Show SCPs", Settings.ESPSCPs, function(state)
        Settings.ESPSCPs = state
        ESP.SCPs = state
    end)

    local SCP = Main:CreateSector("SCPs", "left")
    SCP:AddButton("Self-Infect | SCP-008", function()
        if game.Players.LocalPlayer.Character.HumanoidRootPart.BrickColor.Name == "Olivine" then
            game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Error", Text = "You already are SCP-008!"})
        else
            local oldPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            tpWithouCheck(527, 43, 393)
            repeat wait() until game.Players.LocalPlayer.Character.HumanoidRootPart.BrickColor.Name == "Olivine"
            wait(5)
            tpWithouCheck(oldPosition)
        end
    end)

    SCP:AddButton("Self-Infect | SCP-409", function()
        if (game.Players.LocalPlayer.Character.LeftLowerArm:FindFirstChild("Crystal") or game.Players.LocalPlayer.Character.RightLowerArm:FindFirstChild("Crystal")) then
            game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Error", Text = "You already are infected with SCP-409!"})
        else
            local oldPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            tpWithouCheck(-89, 37, -9)
            repeat wait() until (game.Players.LocalPlayer.Character.LeftLowerArm:FindFirstChild("Crystal") or game.Players.LocalPlayer.Character.RightLowerArm:FindFirstChild("Crystal"))
            wait(5)
            tpWithouCheck(oldPosition)
        end
    end)

    SCP:AddSeperator("")
    SCP:AddDropdown("Recontain SCP", {"SCP-173", "SCP-096"}, "N/A", false, function(selected)
        if not Script.Loaded then return end
        if game.Players.LocalPlayer.Team.Name == "Mobile Task Force" or game.Players.LocalPlayer.Team.Name == "Rapid Response Team" then
            if selected == "SCP-173" then
                game:GetService("ReplicatedStorage").Remotes.Update:FireServer(workspace.SCPs:FindFirstChild("SCP-173"))
                notification("Success!", "SCP-173 has been successfully recontained.")
            else
                game:GetService("ReplicatedStorage").Remotes.Update:FireServer(workspace.SCPs:FindFirstChild("SCP-096"))
                notification("Success!", "SCP-096 has been successfully recontained.")
            end
        else
            notification("Error", "You can only use this feature if you are on the MTF or RRT team!")
        end
    end)

    SCP:AddTextbox("Infect Player | SCP-008", "Input Player", function(val)
        if not Script.Loaded then return end
        local target = GetPlayerFromShort(val).Character:FindFirstChild("HumanoidRootPart")
        if target then
            local oldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            if game.Players.LocalPlayer.Character.HumanoidRootPart.BrickColor.Name ~= "Olivine" then
                tpWithouCheck(527, 43, 393)
                repeat wait() until game.Players.LocalPlayer.Character.HumanoidRootPart.BrickColor.Name == "Olivine"
                wait(5)
            end
            local attempts = 0
            repeat
                tpWithouCheck(target.Position)
                wait(.1)
                attempts = attempts + 1
            until target.BrickColor.Name == "Olivine" or attempts == 50
            if attempts == 50 then
                game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Error", Text = "Infection attempt failed!"})
            end
            tpWithouCheck(oldPos)
        else
            game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Error", Text = "No user matching that name found!"})
        end
    end)

    SCP:AddTextbox("Infect Player | SCP-409", "Input Player",function(val)
        if not Script.Loaded then return end
        local target = GetPlayerFromShort(val)
        if target then
            local oldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            if not (game.Players.LocalPlayer.Character.LeftLowerArm:FindFirstChild("Crystal") or game.Players.LocalPlayer.Character.RightLowerArm:FindFirstChild("Crystal")) then
                tpWithouCheck(-89, 37, -9)
                repeat wait() until (game.Players.LocalPlayer.Character.LeftLowerArm:FindFirstChild("Crystal") or game.Players.LocalPlayer.Character.RightLowerArm:FindFirstChild("Crystal"))
                wait(5)
            end
            local attempts = 0
            repeat
                tpWithouCheck(target.Character.HumanoidRootPart.Position)
                wait(.1)
                attempts = attempts + 1
            until (target.Character.LeftLowerArm:FindFirstChild("Crystal") or target.Character.RightLowerArm:FindFirstChild("Crystal") or attempts == 50)
            if attempts == 50 then
                game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Error", Text = "Infection attempt failed!"})
            end
            tpWithouCheck(oldPos)
        else
            game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Error", Text = "No user matching that name found!"})
        end
    end)

    SCP:AddButton("Trigger SCP-096", function()
        local plrPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        local status = tp(game:GetService("Workspace").SCPs["SCP-096"].Rig.Head.CFrame + game:GetService("Workspace").SCPs["SCP-096"].Rig.Head.CFrame.LookVector*3)
        if status then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.lookAt(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, game:GetService("Workspace").SCPs["SCP-096"].Rig.Head.Position)
            notification("Notice", "If SCP-096 doesn't get angered, try looking at it manually.")
            wait(4)
            tpWithouCheck(812, 40, -71)
            notification("Stay here", "You'll get teleported back to your original position when the time is right.")
            wait(28)
            tpWithouCheck(plrPos)
        end
    end)

    local PS = Main:CreateSector("Player", "right")
    local firstTimeExec = true
    PS:AddToggle("Anti-AFK", Settings.Farm, function(state) --This can also be done via synapse key input functions to avoid detection, very similar code-
        Settings.Farm = state
        if not Script.Loaded then return end
        if Settings.Farm then
            if firstTimeExec then
                local part = Instance.new("Part")
                part.Parent = Workspace
                part.Position = Vector3.new(21, 18, 518)
                part.Anchored = true
                part.Size = Vector3.new(500,1,500)
                pcall(function()
                    local decal = Instance.new("Decal")
                    decal.Parent = part
                    decal.Face = Enum.NormalId.Top
                    decal.Texture = "http://www.roblox.com/asset/?id=2093843497"
                end)
                firstTimeExec = false
            end
            repeat
                local rnum = math.random(1,4)
                tpWithouCheck(21, 21, 518)
                wait(.5)
                if rnum == 1 then
                    presskey(keys.w, math.random(5,13))
                elseif rnum == 2 then
                    presskey(keys.a, math.random(5,13))
                elseif rnum == 3 then
                    presskey(keys.s, math.random(5,13))
                else
                    presskey(keys.d, math.random(5,13))
                end
                wait(1)
            until Settings.Farm == false
        end
    end)

    PS:AddToggle("No-Clip", false, function(state)
        if state then
            Settings.Clip = game:GetService("RunService").Stepped:Connect(NoclipLoop)
        else
            Settings.Clip:Disconnect()
        end
    end)

    PS:AddSeperator("")

    PS:AddTextbox("Authorize Player", "", function(val)
        if not Script.Loaded then return end
        local authTarget = GetPlayerFromShort(val)
        if authTarget then
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Authorize") then
                game.Players.LocalPlayer.Backpack:FindFirstChild("Authorize").Parent = game.Players.LocalPlayer.Character
                game:GetService("ReplicatedStorage").Remotes.Authorize:FireServer(authTarget)
            elseif game.Players.LocalPlayer.Character:FindFirstChild("Authorize") then
                game:GetService("ReplicatedStorage").Remotes.Authorize:FireServer(authTarget)
            else
                notification("Error", "Failed to locate the authorize tool.\nJoin a team that has this tool to use this feature.")
            end
        else
            notification("Error", "Failed to locate target.")
        end
    end)

    PS:AddButton("Authorize All", function()
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Authorize") then
            game.Players.LocalPlayer.Backpack:FindFirstChild("Authorize").Parent = game.Players.LocalPlayer.Character
            for _, player in pairs(game.Players:GetPlayers()) do
                if player.Team.Name == "Class - D" then
                    game:GetService("ReplicatedStorage").Remotes.Authorize:FireServer(player)
                end
            end
        elseif game.Players.LocalPlayer.Character:FindFirstChild("Authorize") then
            for _, player in pairs(game.Players:GetPlayers()) do
                if player.Team.Name == "Class - D" then
                    game:GetService("ReplicatedStorage").Remotes.Authorize:FireServer(player)
                end
            end
        else
            notification("Error", "Failed to locate the authorize tool.\nJoin a team that has this tool to use this feature.")
        end
    end)

    local radioMessage = {
        string.format("%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s",string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50),string.rep("#",50)),
        string.format("%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s",string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50),string.rep("e",50)),
        string.format("%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s",string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50),string.rep("x",50)),
        string.format("%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s",string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50),string.rep("t",50)),
        string.format("%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s",string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50),string.rep("y",50)),
        string.format("%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s",string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50),string.rep("f",50)),
        string.format("%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s",string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50),string.rep("l",50))
    }
    PS:AddToggle("Spam Radio", Settings.Radio, function(state)
        Settings.Radio = state
        while Settings.Radio and wait(1) do                          
            for _,v in pairs(radioMessage) do
                game:GetService("ReplicatedStorage").Remotes.Radio:FireServer(v)
                wait(1)
            end
        end
    end)

    PS:AddButton("Open Shop", function()
        game:GetService("Players").LocalPlayer.PlayerGui.Utility.Handler.Click:Play()
        game:GetService("Players").LocalPlayer.PlayerGui.Utility.Jerry:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), nil, nil, 0.5)
    end)

    PS:AddButton("Open Customization", function()
        game:GetService("Players").LocalPlayer.PlayerGui.Utility.Handler.Click:Play()
        game:GetService("Players").LocalPlayer.PlayerGui.Utility.Customization:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), nil, nil, 0.5)
    end)

    local SS = Misc:CreateSector("Security", "left")
    SS:AddToggle("Mod Detector", Settings.ModDetector, function(state)
        Settings.ModDetector = state
    end)

    SS:AddToggle("Leave on Mod", Settings.ModLeave, function(state)
        Settings.ModLeave = state
    end)

    SS:AddSlider("Leave Delay", 0, Settings.LeaveDelay, 25, 1, function(num)
        Settings.LeaveDelay = num
    end)

    SS:AddSeperator("Teleports")

    SS:AddToggle("Check For Players Nearby", Settings.ProxCheck, function(state)
        Settings.ProxCheck = state
    end)

    SS:AddSlider("Distance", 0, Settings.ProxDistance, 100, 1, function(state)
        Settings.ProxDistance = state
    end)

    local CHS = Misc:CreateSector("Character", "right")
    CHS:AddSlider("Tween Speed", 10, Settings.Tween, 4000, 1, function(num)
        Settings.Tween = num
        _speed = num
    end)

    CHS:AddSlider("Walkspeed", 1, 21, 400, 1, function(num)
        if not Script.Loaded then return end
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed = num
    end)

    CHS:AddSlider("JumpPower", 25, 50, 500, 1, function(num)
        if not Script.Loaded then return end
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").JumpPower = num
    end)

    local flyBP = false
    CHS:AddButton("Fling/Fly bypass", function()
        if not flyBP then
            local LocalPlayer = Services.PlayerService.LocalPlayer
            local BlacklistedClasses = {
                "BodyGyro",
                "BodyThrust",
                "BodyAngularVelocity",
                "SelectionBox"
            }

            local __fly
            __fly = hookmetamethod(game, "__namecall", function(...)
                local args = {...}
                local self = args[1]
                local method = getnamecallmethod()
                local calling = getcallingscript() or 0

                if (not checkcaller() and method == "FindFirstChildOfClass" and (tonumber(calling.Name) or 0) > 1634757802 and self:IsDescendantOf(LocalPlayer.Character) and table.find(BlacklistedClasses, args[2])) then
                    return nil
                end

                return __fly(...)
            end)
            flyBP = true
        else
            notification("Error", "Already bypassed")
        end
    end)


    local JS = Misc:CreateSector("Server", "right")
    JS:AddButton("Rejoin", function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end)

    JS:AddButton("Server Hop", function()
        local x = {}
        for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
            if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
                x[#x + 1] = v.id
            end
        end
        if #x > 0 then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
        else
            notif("Serverhop","Failed to locate a server")
        end
    end)

    JS:AddButton("Smallest Server", function()
        local maxplayers = math.huge
        local serversmaxplayer;
        local goodserver;
        local gamelink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"

        function serversearch()
            for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
                if type(v) == "table" and maxplayers > v.playing then
                    serversmaxplayer = v.maxPlayers
                    maxplayers = v.playing
                    goodserver = v.id
                end
            end
        end

        function getservers()
            serversearch()
            for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
                if i == "nextPageCursor" then
                    if gamelink:find("&cursor=") then
                        local a = gamelink:find("&cursor=")
                        local b = gamelink:sub(a)
                        gamelink = gamelink:gsub(b, "")
                    end
                    gamelink = gamelink .. "&cursor=" ..v
                    getservers()
                end
            end
        end

        getservers()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
    end)

    
    JS:AddButton("Join Discord", function()
        local request = request or http_request or (syn and syn.request)
        local start = 6463
        local invCode = 'Af5NFRJvFV'
        for i = start-10, start+1 do
            spawn(function()
                pcall(function()
                    req({Url = "http://127.0.0.1:"..tostring(i).."/rpc?v=1",Method = "POST",Headers = {["Content-Type"] = "application/json",["Origin"] = "https://discord.com"},Body = game:GetService("HttpService"):JSONEncode({["cmd"] = "INVITE_BROWSER",["nonce"] = game:GetService("HttpService"):GenerateGUID(false),["args"] = {["invite"] = {["code"] = invCode,},["code"] = invCode}})})
                end)
            end)
        end
    end)

    JS:AddButton("Copy Discord Invite", function()
        setclipboard("https://discord.gg/Af5NFRJvFV")
    end)

    local TS = Misc:CreateSector("Teleports", "left")
    TS:AddTextbox("Teleport to player", "", function(val)
        if not Script.Loaded then return end
        local plr = GetPlayerFromShort(val)
        if plr then
            tpWithouCheck(plr.Character.HumanoidRootPart.Position)
        else
            game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Error", Text = "Failed to locate target!"})
        end
    end)

    TS:AddDropdown("Sector-1", {"O5 Lounge", "Security Spawn", "Interrogation Room", "Intelligence Spawn", "Helipad", "Airlock"}, "N/A", false, function(Selected)
        if Selected == "O5 Lounge" then
            tp(CFrame.new(-493, 50, 111))
        elseif Selected == "Security Spawn" then
            tp(CFrame.new(-603, 40, -36))
        elseif Selected == "Interrogation Room" then
            tp(CFrame.new(-537, 40, 184))
        elseif Selected == "Intelligence Spawn" then
            tp(CFrame.new(-603, 40, 208))
        elseif Selected == "Airlock" then
            tp(CFrame.new(-573, 31, 502))
        elseif Selected == "Helipad" then
            tp(CFrame.new(-537, 40, 184))
        end
    end)

    TS:AddDropdown("Sector-2", {"Class-D Cells", "CDC Shop", "CDC", "Briefing Area - Left", "Briefing Area - Right", "CDC Viewing Area", "FP Item Shop", "SCP-131", "SCP-2950", "SCP-999", "SCP-066", "SCP-409", "SCP-1299", "SCP-173", "SCP-023", "SCP-002", "AD Spawn", "Nuclear Shelter", "Control Room", "Transformer Room", "ScD Spawn", "Medical Wing"}, "N/A", false, function(Selected)
        if Selected == "Class-D Cells" then
            tp(CFrame.new(60, 40, 566)) 
        elseif Selected == "CDC Shop" then
            tp(CFrame.new(-76, 40, 463)) 
        elseif Selected == "CDC" then
            tp(CFrame.new(21, 40, 517)) 
        elseif Selected == "Briefing Area - Left" then
            tp(CFrame.new(51, 40, 414))
        elseif Selected == "Briefing Area - Right" then
            tp(CFrame.new(-8, 40, 413))
        elseif Selected == "CDC Viewing Area" then
            tp(CFrame.new(21, 60, 471))
        elseif Selected == "FP Item Shop" then
            tp(CFrame.new(34, 40, 322))
        elseif Selected == "SCP-131" then
            tp(CFrame.new(-216, 40, 301))
        elseif Selected == "SCP-2950" then
            tp(CFrame.new(-213, 40, 191))
        elseif Selected == "SCP-999" then
            tp(CFrame.new(-282, 40, 37))
        elseif Selected == "SCP-066" then
            tp(CFrame.new(-218, 40, -37))
        elseif Selected == "SCP-409" then
            tp(CFrame.new(-86, 36, -23))
        elseif Selected == "Medical Wing" then
            tp(CFrame.new(66, 40, -152))
        elseif Selected == "SCP-1299" then
            tp(CFrame.new(143, 40, -68))
        elseif Selected == "SCP-173" then
            tp(CFrame.new(161, 40, 140)) 
        elseif Selected == "SCP-023" then
            tp(CFrame.new(260, 40, 248))
        elseif Selected == "SCP-002" then
            tp(CFrame.new(-80, 40, 134))
        elseif Selected == "AD Spawn" then
            tp(CFrame.new(-444, 46, 162))
        elseif Selected == "Nuclear Shelter" then
            tp(CFrame.new(232, 31, 503))
        elseif Selected == "Control Room" then
            tp(CFrame.new(110, 40, 238))
        elseif Selected == "Transformer Room" then
            tp(CFrame.new(-96, 40, -146))
        elseif Selected == "ScD Spawn" then
            tp(CFrame.new(304, 40, 31))
        end
    end)

    TS:AddDropdown("Sector-3", {"MTF Spawn", "SCP-008", "SCP-049", "SCP-966", "SCP-096", "SCP-457"}, "N/A", false, function(Selected)
        if Selected == "MTF Spawn" then
            tp(CFrame.new(414, 40, 87))
        elseif Selected == "SCP-008" then
            tp(CFrame.new(529, 40, 352))
        elseif Selected == "SCP-049" then
            tp(CFrame.new(606, 40, 51))
        elseif Selected == "SCP-966" then
            tp(CFrame.new(657, 40, 47))
        elseif Selected == "SCP-096" then
            tp(CFrame.new(662, 40, -122))
        elseif Selected == "SCP-457" then
            tp(CFrame.new(786, 40, -75))
        end
    end)

    local ESPS = Misc:CreateSector("ESP Setup", "left")
    ESPS:AddToggle("Boxes", true, function(state)
        ESP.Boxes = state
    end)

    ESPS:AddToggle("Tracers", false, function(state)
        ESP.Tracers = state
    end)

    ESPS:AddToggle("Names", false, function(state)
        ESP.Names = state
    end)

    pcall(function()
        Setting:CreateConfigSystem("left")
    end)

    pcall(function()
        local default = {
            fontsize = 15,
            titlesize = 18,
            font = Enum.Font.Code,
            background = "rbxassetid://5553946656",
            tilesize = 90,
            cursor = true,
            cursorimg = "https://t0.rbxcdn.com/42f66da98c40252ee151326a82aab51f",
            backgroundcolor = Color3.fromRGB(20, 20, 20),
            tabstextcolor = Color3.fromRGB(240, 240, 240),
            bordercolor = Color3.fromRGB(60, 60, 60),
            accentcolor = Color3.fromRGB(28, 56, 139),
            accentcolor2 = Color3.fromRGB(16, 31, 78),
            outlinecolor = Color3.fromRGB(60, 60, 60),
            outlinecolor2 = Color3.fromRGB(0, 0, 0),
            sectorcolor = Color3.fromRGB(30, 30, 30),
            toptextcolor = Color3.fromRGB(255, 255, 255),
            topheight = 48,
            topcolor = Color3.fromRGB(30, 30, 30),
            topcolor2 = Color3.fromRGB(30, 30, 30),
            buttoncolor = Color3.fromRGB(49, 49, 49),
            buttoncolor2 = Color3.fromRGB(39, 39, 39),
            itemscolor = Color3.fromRGB(200, 200, 200),
            itemscolor2 = Color3.fromRGB(210, 210, 210)
        }

        local standard = {
            fontsize = 15,
            titlesize = 18,
            font = Enum.Font.Code,
            background = "rbxassetid://5553946656",
            tilesize = 90,
            cursor = true,
            cursorimg = "https://t0.rbxcdn.com/42f66da98c40252ee151326a82aab51f",
            backgroundcolor = Color3.fromRGB(20, 20, 20),
            tabstextcolor = Color3.fromRGB(240, 240, 240),
            bordercolor = Color3.fromRGB(60, 60, 60),
            accentcolor = Color3.fromRGB(28, 56, 139),
            accentcolor2 = Color3.fromRGB(16, 31, 78),
            outlinecolor = Color3.fromRGB(60, 60, 60),
            outlinecolor2 = Color3.fromRGB(0, 0, 0),
            sectorcolor = Color3.fromRGB(30, 30, 30),
            toptextcolor = Color3.fromRGB(255, 255, 255),
            topheight = 48,
            topcolor = Color3.fromRGB(30, 30, 30),
            topcolor2 = Color3.fromRGB(30, 30, 30),
            buttoncolor = Color3.fromRGB(49, 49, 49),
            buttoncolor2 = Color3.fromRGB(39, 39, 39),
            itemscolor = Color3.fromRGB(200, 200, 200),
            itemscolor2 = Color3.fromRGB(210, 210, 210)
        }

        local SET = Setting:CreateSector("UI Settings", "right")

        SET:AddKeybind("Toggle UI", Enum.KeyCode.RightShift, function(v) window.hidebutton = v end, function()end)

        SET:AddSeperator("Themes")

        SET:AddToggle("Update Immediately", Settings.QuickUpdate, function(state)
            Settings.QuickUpdate = state
        end)

        SET:AddColorpicker("Background Color", default.backgroundcolor, function(val)
            default.backgroundcolor = val
            if Settings.QuickUpdate then
                window:UpdateTheme(default)
            end
        end)

        SET:AddColorpicker("Tab Text Color", default.tabstextcolor, function(val)
            default.tabstextcolor = val
            if Settings.QuickUpdate then
                window:UpdateTheme(default)
            end
        end)

        SET:AddColorpicker("Border Color", default.bordercolor, function(val)
            default.bordercolor = val
            if Settings.QuickUpdate then
                window:UpdateTheme(default)
            end
        end)

        SET:AddColorpicker("Accent Color", default.accentcolor, function(val)
            default.accentcolor = val
            if Settings.QuickUpdate then
                window:UpdateTheme(default)
            end
        end)

        SET:AddColorpicker("Accent Color 2", default.accentcolor2, function(val)
            default.accentcolor2 = val
            if Settings.QuickUpdate then
                window:UpdateTheme(default)
            end
        end)

        SET:AddColorpicker("Outline Color", default.outlinecolor, function(val)
            default.outlinecolor = val
            if Settings.QuickUpdate then
                window:UpdateTheme(default)
            end
        end)

        SET:AddColorpicker("Outline Color 2", default.outlinecolor2, function(val)
            default.outlinecolor2 = val
            if Settings.QuickUpdate then
                window:UpdateTheme(default)
            end
        end)

        SET:AddColorpicker("Sector Color", default.sectorcolor, function(val)
            default.sectorcolor = val
            if Settings.QuickUpdate then
                window:UpdateTheme(default)
            end
        end)

        SET:AddColorpicker("Top Text Color", default.toptextcolor, function(val)
            default.toptextcolor = val
            if Settings.QuickUpdate then
                window:UpdateTheme(default)
            end
        end)

        SET:AddColorpicker("Top Color", default.topcolor, function(val)
            default.topcolor = val
            if Settings.QuickUpdate then
                window:UpdateTheme(default)
            end
        end)

        SET:AddColorpicker("Top Color 2", default.topcolor2, function(val)
            default.topcolor2 = val
            if Settings.QuickUpdate then
                window:UpdateTheme(default)
            end
        end)

        SET:AddColorpicker("Button Color", default.buttoncolor, function(val)
            default.buttoncolor = val
            if Settings.QuickUpdate then
                window:UpdateTheme(default)
            end
        end)

        SET:AddColorpicker("Button Color 2", default.buttoncolor2, function(val)
            default.buttoncolor2 = val
            if Settings.QuickUpdate then
                window:UpdateTheme(default)
            end
        end)

        SET:AddColorpicker("Item Color", default.itemscolor, function(val)
            default.itemscolor = val
            if Settings.QuickUpdate then
                window:UpdateTheme(default)
            end
        end)


        SET:AddColorpicker("Item Color 2", default.itemscolor2, function(val)
            default.itemscolor2 = val
            if Settings.QuickUpdate then
                window:UpdateTheme(default)
            end
        end)

        SET:AddButton("Apply", function()
            window:UpdateTheme(default)
        end)

        SET:AddButton("Reset", function()
            window:UpdateTheme(standard)
        end)

        if readfile and writefile and isfolder and listfiles and makefolder then
            if (not isfolder("Anomaly_Scripts")) then
                makefolder("Anomaly_Scripts")
                makefolder("Anomaly_Scripts/Themes")
            elseif (not isfolder("Anomaly_Scripts/Themes")) then
                makefolder("Anomaly_Scripts/Themes")
            end
            local SaveT = Setting:CreateSector("Themes", "left")
            SaveT:AddTextbox("Theme Name", "", function(val)
                if not Script.Loaded then return end
                Settings.ThemeName = val
            end)

            
            
            local Themes = SaveT:AddDropdown("Themes", themes, "", false, function(val)
                if not Script.Loaded then return end
            end)
            for _,v in pairs(listfiles("Anomaly_Scripts/Themes")) do
                if v:find(".json") then
                Themes:Add(tostring(v):gsub("Anomaly_Scripts/Themes\\", ""):gsub(".json", ""))
                end
            end

            SaveT:AddButton("Create", function()
                if not Settings.ThemeName or Settings.ThemeName == "" then
                    return notification("Error", "Please set a theme name before creating a theme.")
                end
                values = {}
                for _,v in pairs(default) do
                    if (typeof(v)=="Color3") then
                        values[_] = {v.R, v.G, v.B}
                    end
                end
                writefile("Anomaly_Scripts/Themes/"..Settings.ThemeName..".json", game:GetService("HttpService"):JSONEncode(values))
                Themes:Add(Settings.ThemeName)
                notification("Success", "Your theme has been successfully saved in your exploits workspace.")
            end)

            SaveT:AddButton("Save", function()
                if Themes:Get() ~= "" then
                    if isfile("Anomaly_Scripts/Themes/"..Themes:Get()..".json") then
                        values = {}
                        for _,v in pairs(default) do
                            if (typeof(v)=="Color3") then
                                values[_] = {v.R, v.G, v.B}
                            end
                        end
                        writefile("Anomaly_Scripts/Themes/"..Themes:Get()..".json", game:GetService("HttpService"):JSONEncode(values))
                        notification("Success", "The theme has been saved.")
                    end
                else
                    notification("Error", "Please select a theme you would like to update.")
                end
            end)

            SaveT:AddButton("Load", function()
                if Themes:Get() ~= "" then
                    if isfile("Anomaly_Scripts/Themes/"..Themes:Get()..".json") then
                        local themeData = game:GetService("HttpService"):JSONDecode(readfile("Anomaly_Scripts/Themes/"..Themes:Get()..".json"))
                        for _,v in pairs(themeData) do
                            default[_] = Color3.new(v[1], v[2], v[3])
                        end
                        window:UpdateTheme(default)
                        notification("Success", "The theme has been successfully loaded.")
                    end
                else
                    notification("Error", "Please select a theme you would like to load.")
                end
            end)

            SaveT:AddButton("Delete", function()
                if Themes:Get() ~= "" then
                    if isfile("Anomaly_Scripts/Themes/"..Themes:Get()..".json") then
                        delfile("Anomaly_Scripts/Themes/"..Themes:Get()..".json")
                        Themes:Remove(Themes:Get())
                        notification("Success", "The theme has been successfully deleted.")
                    end
                else
                    notification("Error", "Please select a theme you would like to delete.")
                end
            end)
        end
    end)


    --//Events
    game:GetService("Players").PlayerAdded:Connect(function(player)
        local rank = player:GetRankInGroup(5479038)
        local role = player:GetRoleInGroup(5479038)
        if Settings.ModDetector then
            if rank >= 250 then
                notification("["..role.."] "..player.Name, "Moderator has joined the game.")
            end
        end
        if Settings.ModLeave then
            if rank >= 250 then
                wait(Settings.LeaveDelay)
                game.Players.LocalPlayer:Kick("\n["..role.."] "..player.Name.."\nModerator joined the game!")
            end
        end
    end)

    for _,player in pairs(game:GetService("Players"):GetPlayers()) do
        spawn(function()
            local rank = player:GetRankInGroup(5479038)
            local role = player:GetRoleInGroup(5479038)
            if Settings.ModDetector then
                if rank >= 250 then
                    notification("["..role.."] "..player.Name, "Moderator is in-game.")
                end
            end
            if Settings.ModLeave then
                if rank >= 250 then
                    game.Players.LocalPlayer:Kick("\n["..role.."] "..player.Name.."\nModerator detected in the game!")
                end
            end
        end)
    end

    Services.UserInputService.InputBegan:Connect(function(key)
        if key.UserInputType == Enum.UserInputType.MouseButton2 and Services.PlayerService.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("Muzzle") then
            Aiming = true
            if Settings.FOV then
                FOVCircle.Visible = true
            end
        end
    end)

    Services.UserInputService.InputEnded:Connect(function(key)
        if key.UserInputType == Enum.UserInputType.MouseButton2 then
            FOVCircle.Visible = false
            Aiming = false
        end
    end)

    Services.PlayerService.PlayerAdded:Connect(function(player)
        player.CharacterAdded:Connect(function()
            if Settings.HBE and player.Character and player ~= Services.PlayerService.LocalPlayer and IsEnemy(player) then
                pcall(function()
                    local hPart = player.Character:WaitForChild("HumanoidRootPart")
                    if hPart then
                        hPart.CanCollide = false
                        hPart.Size = Vector3.new(Settings.HBESize, Settings.HBESize, Settings.HBESize)
                        hPart.Transparency = Settings.HBETransparency
                        hPart.Material = Enum.Material.SmoothPlastic
                        hPart.Color = HBEColor
                    end
                end)
            end
        end)
    end)

    spawn(function()
        while wait(120) do
            Save()
        end
    end)

    spawn(function()
        while wait(.5) do
            if Settings.AutoReload then
                if game:GetService("Players").LocalPlayer.PlayerGui.WeaponUI.Reload.Visible == true then
                    keypress(0x52)
                    wait(0.1)
                    keyrelease(0x52)
                end
            end
        end
    end)

    spawn(function()
        while wait() do
            pcall(function()
                if Settings.TriggerBot then
                    if Aiming and Services.PlayerService.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("Muzzle") then
                        if ClosestPlayerToMouse() then
                            mouse1press() wait() mouse1release()
                        end
                    end
                end
            end)
        end
    end)

    Services.PlayerService.PlayerRemoving:Connect(function(p)
        if p == Services.PlayerService.LocalPlayer then
            Save()
        end
    end)

    --//Hooks & More
    local mt = getrawmetatable(game)
    local namecall = mt.__namecall
    setreadonly(mt,false)
    local OldNamecall
    OldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
        local args = {...}
        local method = getnamecallmethod()
        if tostring(self) == "Shot" and method == "FireServer" then
            if Settings.State then
                local rndm = math.random(0,100)
                local targ
                if Settings.Target == "Random" then
                    targ = bodyParts[math.random(1,15)]
                else
                    targ = Settings.Target
                end
                player = ClosestPlayerToMouse()
                if player and Settings.Accuracy >= rndm then
                    args[1] = player.Character:FindFirstChild(targ).Position
                    args[2] = player.Character:FindFirstChild(targ)
                    return self.FireServer(self, unpack(args))
                end
                return self.FireServer(self, unpack(args))
            else
                return self.FireServer(self, unpack(args))
            end
        end
        return OldNamecall(self, ...)
    end)

    hookfunction(game.Players.LocalPlayer.Kick,function() return end)
    hookfunction(workspace.Loadstring.InvokeServer,function() return wait(9e9) end)

    Script.Loaded = true
end)
if not success then
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Error", Text = "An error has occured while loading the script. Some things may not work properly. The error has been reported to our developers."})
    req({
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Url = "https://neko-hot.xyz/data/error",
        Body = game:GetService("HttpService"):JSONEncode({
            Error = response
        })
    })
else
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Loaded", Text = "The script has been loaded without any error occuring."})
end