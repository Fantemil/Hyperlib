--Game link: https://www.roblox.com/games/3057050847/this-game-is-ass
if game.PlaceId == 3057050847 then
    --//Parts:
    getgenv().LowerElevator = Instance.new("Part", game.Workspace)
    LowerElevator.Position = Vector3.new(207.399, 215.501, 1447.298)
    LowerElevator.Size = Vector3.new(17, 18.2, 18)
    LowerElevator.CanCollide = false
    LowerElevator.Anchored = true
    LowerElevator.Transparency = 1

    getgenv().UpperElevator = Instance.new("Part", game.Workspace)
    UpperElevator.Position = Vector3.new(343.350, 14.098, 146.197)
    UpperElevator.Size = Vector3.new(16, 18.2, 15)
    UpperElevator.CanCollide = false
    UpperElevator.Anchored = true
    UpperElevator.Transparency = 1

    getgenv().OutsideElev = Instance.new("Part", game.Workspace)
    OutsideElev.Position = Vector3.new(345, 11.6, 160.5)
    OutsideElev.Size = Vector3.new(22, 13.2, 9)
    OutsideElev.CanCollide = false
    OutsideElev.Anchored = true
    OutsideElev.Transparency = 1

    --//Declarations
    local toggles = {
        modDetector = false,
        instantRespawn = false,
        rName = true,
        farmEscape = false
    }
    local fallDmgEnabled = false
    local noClip = nil

    --//Functions
    local function destroydoors()
        for i,v in pairs(Workspace:GetChildren()) do
            if v.Name == "Door" then
                v:Destroy()
            end
        end
        for i,v in pairs(Workspace:GetChildren()) do
            if v:FindFirstChild("LastHack") then
                v:Destroy()
            end
        end
        for i,v in pairs(Workspace.Spawns.DSpawns:GetChildren()) do
            if v:FindFirstChild("Door") then
                v:Destroy()
            end
        end
    end

    local function checkFallDmg()
        if not fallDmgEnabled then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AnomalyRBLX/Database/main/Misc/Hooks/NoFall_76.lua", true))();
            fallDmgEnabled = true
        end
    end
    
    local function destroyteslagates()
        for i,v in pairs(Workspace:GetChildren()) do
            if v.Name == "TeslaGate" or v.Name == "XL-TeslaGate" then
                v:Destroy()
                print("Deleted "..v.Name)
            end
        end
    end
    
    local function getmodule(name)
        for i,v in pairs(getnilinstances()) do
            if v.Name == name and v.ClassName == "ModuleScript" then
                return v
            end
        end
    end
    
    local function getconstants(scriptname, functionname)
        for i,v in pairs(getgc()) do
            if typeof(v) == "function" and getfenv(v).script.Name == scriptname and debug.getinfo(v).name == functionname then
                return debug.getconstants(v)
            end
        end
    end
    
    local function getupvalues(scriptname, functionname)
        for i,v in pairs(getgc()) do
            if typeof(v) == "function" and getfenv(v).script.Name == scriptname and debug.getinfo(v).name == functionname then
                return debug.getupvalues(v)
            end
        end
    end

    local function NoclipLoop()
        if game.Players.LocalPlayer.Character ~= nil then
            for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if child:IsA("BasePart") and child.CanCollide == true then
                    child.CanCollide = false
                end
            end
        end
    end

    local _speed = 250
    function tp(...)
        checkFallDmg()
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

    function get_in_part(HumanoidRootPart,TouchPart)
        local c = HumanoidRootPart.Touched:Connect(function() end)
        local parts = HumanoidRootPart:GetTouchingParts()
        c:Disconnect()
        
        for i, k in ipairs(parts) do
            if k == TouchPart then
                return true
            end
        end
        
        return false
    end

    local function becomeCI()
        tp(Vector3.new(348, 8, 159))
        wait(1)
        if game:GetService("Workspace").Elevators.GateAToSurface1.StatusButtons.Part.BrickColor.Name == "Crimson" then
            repeat wait(.5) until game:GetService("Workspace").Elevators.GateAToSurface1.StatusButtons.Part.BrickColor.Name == "Parsley green"
        end
        local args = {[1] = workspace.Elevators.GateAToSurface1.Call}
        game:GetService("ReplicatedStorage").Remotes.Interact:FireServer(unpack(args))
        wait(5)
        if get_in_part(game.Players.LocalPlayer.Character.HumanoidRootPart, OutsideElev) and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
            tp(Vector3.new(343, 8, 142))
        else
            game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Error", Text = 'Something went wrong, respawning.'})
            return game:GetService("ReplicatedStorage").Remotes.RespawnPlayer:FireServer()
        end
        wait(3)
        if get_in_part(game.Players.LocalPlayer.Character.HumanoidRootPart, UpperElevator) and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
            local args = {[1] = workspace.Elevators.GateAToSurface1.UseElevator}
            game:GetService("ReplicatedStorage").Remotes.Interact:FireServer(unpack(args))
        else
            game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Error", Text = 'Something went wrong, respawning.'})
            return game:GetService("ReplicatedStorage").Remotes.RespawnPlayer:FireServer()
        end
        wait(5)
        if get_in_part(game.Players.LocalPlayer.Character.HumanoidRootPart, LowerElevator) and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
            tp(Vector3.new(491, 209, 1416))
        else
            game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Error", Text = 'Something went wrong, respawning.'})
            return game:GetService("ReplicatedStorage").Remotes.RespawnPlayer:FireServer()
        end
        wait(1)
        local timesAttempted = 0
        repeat
            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            wait(1)
            timesAttempted = timesAttempted + 1
        until game:GetService("Players").LocalPlayer.Team.Name == "Chaos Insurgency" or timesAttempted >= 30
        if timesAttempted == 30 then
            return becomeCI()
        end
    end

    --//ESP
    local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Anomaly-hub/Anomalies-Scripts/main/kiriots%20esp", true))()
    local function refreshSCPs()
        for _,v in pairs(game:GetService("Workspace").SCPs:GetDescendants()) do   
            if v.Name == "AnomName" and v.ClassName == "StringValue" then
                ESP:Add(v.Parent, {Name = tostring(v.Value), IsEnabled = "SCPs"})
            end
        end
        if game:GetService("Workspace").SCPs["303"] then
            ESP:Add(game:GetService("Workspace").SCPs["303"], {Name = "The Door Man", IsEnabled = "SCPs"})
        end
        if game:GetService("Workspace").SCPs:FindFirstChild("096") then
            ESP:Add(game:GetService("Workspace").SCPs["096"], {Name = "The Shy Guy", IsEnabled = "SCPs"})
        end
        if game:GetService("Workspace").SCPs["131"]["131-A"] then
            ESP:Add(game:GetService("Workspace").SCPs["131"]["131-A"], {Name = "Eye Pod - A", IsEnabled = "SCPs"})
        end
        if game:GetService("Workspace").SCPs["131"]["131-B"] then
            ESP:Add(game:GetService("Workspace").SCPs["131"]["131-B"], {Name = "Eye Pod - B", IsEnabled = "SCPs"})
        end
    end
    local OpenedSCPs = false
    ESP.Players = false
    ESP.Tracers = false
    ESP.Boxes = false
    ESP.SCPs = true
    
    --UI Library is not for use of public
    local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/AnomalyRBLX/Database/main/Libraries/Jan's%20UI%20Copy.lua", true))();
    local window = Lib:CreateWindow("Site-76", Vector2.new(492, 520), Enum.KeyCode.RightShift)

    local Main = window:CreateTab("Main")
    local Config = window:CreateTab("Misc")
    local GS = Main:CreateSector("General", "left")
    GS:AddButton("Remove Name", function()
        game.Players.LocalPlayer.Character:FindFirstChild("Head"):FindFirstChildOfClass("BillboardGui"):Destroy()
    end)

    GS:AddButton("Mod Guns", function()
        for _,v in pairs(getgc(true)) do
            if typeof(v) == "table" and rawget(v, "Ammo") then
                v.Rate = 0
                v.Spread = 0.1
            end
        end
    end)

    GS:AddButton("Flamethrower Canister", function()
        local dist = math.huge
        local target
        for i,v in pairs(game:GetService("Workspace").Ign:GetChildren()) do
            if v.Name == "Flamethrower Canister" then
                local check = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("Interact").Position).Magnitude
                if check < dist then
                    dist = check
                    target = v
                end
            end
        end
        tp(target:FindFirstChild("Interact").Position)
    end)

    GS:AddButton("Remove Doors", function()
        destroydoors()
    end)

    GS:AddButton("Destroy Teslas", function()
        destroyteslagates()
    end)

    GS:AddButton("Respawn", function()
        game:GetService("ReplicatedStorage").Remotes.RespawnPlayer:FireServer()
    end)

    GS:AddToggle("Instant Respawn", false, function(s)
        toggles.instantRespawn = s
        if toggles.instantRespawn then
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
                game:GetService("ReplicatedStorage").Remotes.RespawnPlayer:FireServer()
            end)
        end
    end)

    GS:AddToggle("Auto-Remove Name", true, function(s)
        toggles.rName = s
    end)

    local SS = Main:CreateSector("SCPs", "right")
    SS:AddButton("SCP-008 Self-Infect", function()
        local plrprevpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        tp(Vector3.new(777, 21, -179))
        wait(1)
        local args = {
            [1] = workspace.SCPs:FindFirstChild("008"):FindFirstChild("008Activate")
            }
        game:GetService("ReplicatedStorage").Remotes.Interact:FireServer(unpack(args))
        tp(Vector3.new(779, 20, -134))
        wait(4)
        tp(plrprevpos)
    end)

    SS:AddButton("Grab Skeleton Key", function()
        if game:GetService("Workspace").SCPs["005"].Mesh.Transparency == 0 then
            local posPrev = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            tp(Vector3.new(361, 23, 325))
            local args = {
                [1] = workspace.SCPs:FindFirstChild("005")
            }
            game:GetService("ReplicatedStorage").Remotes.Interact:FireServer(unpack(args))
            wait(.5)
            tp(posPrev)
        end
    end)

    SS:AddButton("Breach SCPs", function()
        if game:GetService("Workspace").ContainmentRegions["173"].ContainmentNotice.Panel.SurfaceGui.TextLabel.Text == "SECURE" then
            tp(Vector3.new(665, 33, -260))
            local args = {
                [1] = workspace.PeanutDoor.ReleaseSCP
            }
            game:GetService("ReplicatedStorage").Remotes.Interact:FireServer(unpack(args))
            wait(1)
            local args = {
                [1] = workspace.PeanutDoor,
                [2] = "Release"
            }
            game:GetService("ReplicatedStorage").Remotes.ReleaseSCP:FireServer(unpack(args))
            wait(1)
        end
        if game:GetService("Workspace").ContainmentRegions["049"].ContainmentNotice.Panel.SurfaceGui.TextLabel.Text == "SECURE" then
            tp(Vector3.new(480, -169, -263))
            local args = {
                [1] = workspace.ContainmentRegions:FindFirstChild("049").Door.ReleaseSCP
            }
            game:GetService("ReplicatedStorage").Remotes.Interact:FireServer(unpack(args))
            wait(1)
            local args = {
                [1] = workspace.ContainmentRegions:FindFirstChild("049").Door,
                [2] = "Release"
            }
            game:GetService("ReplicatedStorage").Remotes.ReleaseSCP:FireServer(unpack(args))
            wait(1)
        end
        if game:GetService("Workspace").ContainmentRegions["457"].ContainmentNotice.Panel.SurfaceGui.TextLabel.Text == "SECURE" then
            tp(Vector3.new(416, -178, -478))
            local args = {
                [1] = workspace.ContainmentRegions:FindFirstChild("457").Door.ReleaseSCP
            }
            game:GetService("ReplicatedStorage").Remotes.Interact:FireServer(unpack(args))
            wait(1)
            local args = {
                [1] = workspace.ContainmentRegions:FindFirstChild("457").Door,
                [2] = "Release"
            }
            game:GetService("ReplicatedStorage").Remotes.ReleaseSCP:FireServer(unpack(args))
            wait(1)
        end
        if game:GetService("Workspace").ContainmentRegions["017"].ContainmentNotice.Panel.SurfaceGui.TextLabel.Text == "SECURE" then
            tp(Vector3.new(231, -169, -139))
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.Interact:FireServer(workspace.ContainmentRegions:FindFirstChild("017C").ReleaseSCP)
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.Interact:FireServer(workspace.ContainmentRegions:FindFirstChild("017C").ReleaseSCP)
            wait(1)
        end
        if game:GetService("Workspace").ContainmentRegions["106"].ContainmentNotice.Panel.SurfaceGui.TextLabel.Text == "SECURE" then
            tp(Vector3.new(922, -169, 158))
            local args = {
                [1] = workspace.ContainmentRegions:FindFirstChild("106").ReleaseSCP
            }
            
            game:GetService("ReplicatedStorage").Remotes.Interact:FireServer(unpack(args))
            wait(1)
            local args = {
                [1] = workspace.ContainmentRegions:FindFirstChild("106"),
                [2] = "Release"
            }
            game:GetService("ReplicatedStorage").Remotes.ReleaseSCP:FireServer(unpack(args))
            wait(1)
        end
        if game:GetService("Workspace").ContainmentRegions["096"].ContainmentNotice.Panel.SurfaceGui.TextLabel.Text == "SECURE" then
            tp(Vector3.new(681, -177, -525))
            local args = {
                [1] = workspace.ContainmentRegions:FindFirstChild("096").ReleaseSCP
            }
            game:GetService("ReplicatedStorage").Remotes.Interact:FireServer(unpack(args))
            wait(1)
            local args = {
                [1] = workspace.ContainmentRegions:FindFirstChild("096"),
                [2] = "Release"
            }
            game:GetService("ReplicatedStorage").Remotes.ReleaseSCP:FireServer(unpack(args))
            wait(1)
        end
        
        --527
        tp(Vector3.new(421, 19, -11))
        local args = {
            [1] = workspace.ContainmentRegions:FindFirstChild("527").Door.ReleaseSCP
        }
        
        game:GetService("ReplicatedStorage").Remotes.Interact:FireServer(unpack(args))
        wait(1)
        
        local args = {
            [1] = workspace.ContainmentRegions:FindFirstChild("527").Door,
            [2] = "Release"
        }
        game:GetService("ReplicatedStorage").Remotes.ReleaseSCP:FireServer(unpack(args))
        wait(1)
        --303
        tp(Vector3.new(665, 19, -192))
        local args = {
            [1] = workspace.ContainmentRegions:FindFirstChild("303").SwingDoor.ReleaseSCP
        }
        
        game:GetService("ReplicatedStorage").Remotes.Interact:FireServer(unpack(args))
        wait(1)
        local args = {
            [1] = workspace.ContainmentRegions:FindFirstChild("303").SwingDoor,
            [2] = "Release"
        }
        game:GetService("ReplicatedStorage").Remotes.ReleaseSCP:FireServer(unpack(args))
        wait(1)
    end)

    

    local TS = Main:CreateSector("Teleports", "right")
    TS:AddDropdown("Heists", {"Living Room", "Pathogen", "Red Lake", "Tetrahedron", "Telekill"}, "N/A", false, function(Selected)
        if Selected == "Living Room" then
            tp(CFrame.new(1012.98, -175.253, -333.356))
        elseif Selected == "Red Lake" then
            tp(CFrame.new(406.138, -170.914, 164.562))
        elseif Selected == "Tetrahedron" then
            tp(CFrame.new(291.09, 17.203, 329.67))
        elseif Selected == "Telekill" then
            tp(CFrame.new(403.92, 17.911, -421.251))
        elseif Selected == "Pathogen" then
            tp(CFrame.new(846, 20, -154))
        end
    end)

    TS:AddDropdown("Heavy Containment Zone", {"Warheads", "SCP-096", "SCP-035", "SCP-106", "SCP-049", "SCP-457", "SCP-017", "LCZ Elevators"}, "N/A", false, function(Selected)
        if Selected == "Warheads" then
            tp(CFrame.new(564, -175, 30))
        elseif Selected == "SCP-096" then
            tp(CFrame.new(647, -177, -492))
        elseif Selected == "SCP-035" then
            tp(CFrame.new(701, -169, 22))
        elseif Selected == "SCP-106" then
            tp(CFrame.new(921, -169, 161))
        elseif Selected == "SCP-049" then
            tp(CFrame.new(487, -169, -265))
        elseif Selected == "SCP-457" then
            tp(CFrame.new(406, -178, -471))
        elseif Selected == "SCP-017" then
            tp(CFrame.new(234, -169, -141))
        elseif Selected == "LCZ Elevators" then
            tp(CFrame.new(335, -170, -84))
        end
    end)

    TS:AddDropdown("Light Containment Zone",{"C.I. Shop", "SCP-914", "Skeleton Key", "Bell", "SCP-008", "Doorman", "Monolith", "SCP-173", "Wendigo", "Fish Man", "Explosive Bat"}, "N/A", false, function(Selected)
        if Selected == "SCP-914" then
            tp(CFrame.new(709, 19, 7))
        elseif Selected == "Bell" then
            tp(CFrame.new(676, 19, -72))
        elseif Selected == "SCP-008" then
            tp(CFrame.new(780, 21, -177))
        elseif Selected == "Doorman" then
            tp(CFrame.new(654, 19, -182))
        elseif Selected == "Monolith" then
            tp(CFrame.new(514, 19, -233))
        elseif Selected == "SCP-173" then
            tp(CFrame.new(660, 19, -311))
        elseif Selected == "Wendigo" then
            tp(CFrame.new(343, 19, -274))
        elseif Selected == "Fish Man" then
            tp(CFrame.new(417, 19, -35))
        elseif Selected == "Explosive Bat" then
            tp(CFrame.new(434, 19, -107))
        elseif Selected == "Skeleton Key" then
            tp(CFrame.new(361, 23, 325))
        elseif Selected == "C.I. Shop" then
            tp(CFrame.new(687, 2, 465))
        end
    end)

    local FS = Main:CreateSector("Farming", "right")
    local infCash = false
    local ran = false
    FS:AddToggle("Infinite Money/EXP", false, function(s)
        infCash = s 
        if infCash then
            if not ran then
                local part = Instance.new("Part", game.Workspace)
                part.Position = Vector3.new(679.05279541016, -186.08403015137, -524.87188720703)
                part.CanCollide = true
                part.Anchored = true
                part.Size = Vector3.new(10,1,10)
                ran = true
            end
            noClip = game:GetService('RunService').Stepped:Connect(NoclipLoop)
            tp(679, -183, -526)
            while infCash and wait(1) do
                local args = {
                    [1] = workspace.ContainmentRegions:FindFirstChild("096"),
                    [2] = "Release"
                }
                game:GetService("ReplicatedStorage").Remotes.ReleaseSCP:FireServer(unpack(args))
            end
        else
            noClip:Disconnect()
            game:GetService("ReplicatedStorage").Remotes.RespawnPlayer:FireServer()
        end
    end)
    FS:AddButton("Teleport to MCD", function()
        local dist = math.huge
        local target
        for _,v in pairs(game:GetService("Workspace").Contracts:GetChildren()) do
            if v.Name == "Agent" then
                local check = (v:FindFirstChild("Head").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                if check < dist then
                    target = v.Head.Position
                    dist = check
                end
            end
        end
        tp(target)
    end)

    FS:AddButton("Become Chaos Insurgency", function()
        becomeCI()
    end)

    FS:AddToggle("Escape Farm", false,function(s)
        toggles.farmEscape = s
        spawn(function()
            while toggles.farmEscape and wait() do
                if game:GetService("Players").LocalPlayer.Team.Name == "Prisoner" then
                    if toggles.mask then
                        if game:GetService("Workspace").ContainmentRegions["035C"]["035"].Interact.Transparency == 0 then
                            tp(701, -169, 22)
                            wait(1)
                            local args = {[1] = workspace.ContainmentRegions:FindFirstChild("035C"):FindFirstChild("035")}
                            game:GetService("ReplicatedStorage").Remotes.Interact:FireServer(unpack(args))
                            wait(1)
                        else
                            game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Notice", Text = "Unable to grab mask, skipping step."})
                        end
                    end
                    becomeCI()
                    wait(5)
                else
                    local args = {
                        [1] = "Prisoner",
                        [2] = false
                    }
                    repeat
                        game:GetService("ReplicatedStorage").Remotes.ChangeTeam:InvokeServer(unpack(args))
                        wait(1)
                    until game:GetService("Players").LocalPlayer.Team.Name == "Prisoner"
                    game:GetService("ReplicatedStorage").Remotes.RespawnPlayer:FireServer()
                    wait(2)
                end
            end
        end)
    end)
    
    FS:AddToggle("Grab Mask while Farming", true, function(s)
        toggles.mask = s
    end)

    FS:AddButton("Join Smallest Server", function()
        getgenv().AutoTeleport = true
        getgenv().DontTeleportTheSameNumber = true --If you set this true it won't teleport to the server if it has the same number of players as your current server

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
        print("All of the servers are searched") 
        print("Server : " .. goodserver .. " Players : " .. maxplayers .. "/" .. serversmaxplayer)
        if AutoTeleport then
            if DontTeleportTheSameNumber then 
                if #game:GetService("Players"):GetPlayers() - 1 == maxplayers then
                    return warn("The server you're currently in is the smallest one.")
                elseif goodserver == game.JobId then
                    return warn("The server you're currently in is the smallest one.") 
                end
            end
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
        end
    end)

    local BS = Main:CreateSector("Bypasses", "left")
    BS:AddButton("Infinite Stamina", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnomalyRBLX/Database/main/Misc/Hooks/InfStamina.lua", true))();
    end)

    BS:AddButton("No Falldamage", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnomalyRBLX/Database/main/Misc/Hooks/NoFall_76.lua", true))();
        fallDmgEnabled = true
    end)

    

    local MS = Config:CreateSector("Misc", "right")
    MS:AddSlider("Tween Speed", 1, 250, 300, 1, function(val)
        _speed = val
    end)

    MS:AddToggle("Kick on Mod Join", true, function(state)
        toggles.modDetector = state
    end)

    MS:AddButton("Join Discord", function()
        local request = request or http_request or (syn and syn.request)
        if not request then return end
        local start = 6463
        local invCode = 'ceE7jGFgkg'
        for i = start-10, start+1 do
            spawn(function()
                pcall(function()
                    request({Url = "http://127.0.0.1:"..tostring(i).."/rpc?v=1",Method = "POST",Headers = {["Content-Type"] = "application/json",["Origin"] = "https://discord.com"},Body = game:GetService("HttpService"):JSONEncode({["cmd"] = "INVITE_BROWSER",["nonce"] = game:GetService("HttpService"):GenerateGUID(false),["args"] = {["invite"] = {["code"] = invCode,},["code"] = invCode}})})
                end)
            end)
        end
    end)

    MS:AddButton("Copy Discord Invite", function()
        setclipboard("https://discord.gg/ceE7jGFgkg")
    end)

    MS:AddKeybind("Toggle UI", Enum.KeyCode.RightShift, function(v) window.hidebutton = v end, function()end)


    local ES = Main:CreateSector("ESP", "left")
    ES:AddToggle("Enabled", false, function(S)
        ESP:Toggle(S)
    end)

    ES:AddToggle("SCPs", false, function(S)
        ESP.SCPs = S
        if OpenedSCPs == false then
            refreshSCPs()
            spawn(function()
                while true and wait(60) do
                    refreshSCPs()
                end
            end)
            OpenedSCPs = true
        end
    end)

    ES:AddToggle("Players", false, function(S)
        ESP.Players = S
    end)

    ES:AddToggle("Tracers", false, function(S)
        ESP.Tracers = S
    end)

    ES:AddToggle("Boxes", true, function(S)
        ESP.Boxes = S
    end)

    --//Event Connections
    game:GetService("Workspace"):FindFirstChild("Laser"):Destroy()
    
    game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
            if toggles.instantRespawn then
                game:GetService("ReplicatedStorage").Remotes.RespawnPlayer:FireServer()
            end
        end)
        if toggles.rName then
            wait(.5)
            game.Players.LocalPlayer.Character:WaitForChild("Head"):FindFirstChildOfClass("BillboardGui"):Destroy()
        end
    end)

    spawn(function()
        for _, player in pairs(game.Players:GetPlayers()) do
            if player:GetRankInGroup(3363833) >= 20 then
                game:GetService("StarterGui"):SetCore("SendNotification", {Title = "["..player:GetRoleInGroup(3363833).."] "..player.Name, Text = 'Moderator joined the game.'})
            end
        end
    end)

    game.Players.PlayerAdded:Connect(function(Player)
        if Player:GetRankInGroup(3363833) >= 20 then
            game:GetService("StarterGui"):SetCore("SendNotification", {Title = "["..Player:GetRoleInGroup(3363833).."] "..Player.Name, Text = 'Moderator joined the game.'})
            if toggles.modDetector then
                game.Players.LocalPlayer:kick("\n["..Player:GetRoleInGroup(3363833).."]".." "..Player.Name.."\nModerator joined the game \n\nYou can disable kicks in the misc section\nReport bugs here: https://discord.gg/EP9fNzmm8E")
            end
        end
    end)
    Config:CreateConfigSystem("left")
end