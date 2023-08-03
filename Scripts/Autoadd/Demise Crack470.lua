
    local LocalPlayer = game.Players.LocalPlayer
    local RunService = game:GetService("RunService")

    local ReplicatedStorage = game:GetService("ReplicatedStorage")

    local MainEvent = ReplicatedStorage.MainEvent

    local HB = RunService.Heartbeat
    local function fail(r)
        return LocalPlayer:Kick(r)
    end

    local usedCache = shared.__urlcache and next(shared.__urlcache) ~= nil

    shared.__urlcache = shared.__urlcache or {}
    local function httpload(url)
        local success, result

        if shared.__urlcache[url] then
            success, result = true, shared.__urlcache[url]
        else
            success, result = pcall(game.HttpGet, game, url)
        end

        if (not success) then
            return fail(string.format("Failed to GET url %q for reason: %q", url, tostring(result)))
        end

        local fn, err = loadstring(result)
        if (type(fn) ~= "function") then
            return fail(string.format("Failed to loadstring url %q for reason: %q", url, tostring(err)))
        end

        local results = {pcall(fn)}
        if (not results[1]) then
            return fail(string.format("Failed to initialize url %q for reason: %q", url, tostring(results[2])))
        end

        shared.__urlcache[url] = result
        return unpack(results, 2)
    end

    do
        local oldFunc = nil

        oldFunc =
            hookfunction(
            MainEvent.FireServer,
            newcclosure(
                function(Event, ...)
                    local args = {...}

                    if args[1] == "CHECKER_1" or args[1] == "TeleportDetect" or args[1] == "OneMoreTime" then
                        return nil
                    end

                    return oldFunc(Event, ...)
                end
            )
        )

        HB:Connect(
            function()
                local root = LocalPlayer.Character and LocalPlayer.Character.PrimaryPart

                if root then
                    for i, v in pairs(getconnections(root:GetPropertyChangedSignal("CFrame"))) do
                        v:Disable()
                    end
                end
            end
        )

        local function added(char)
            while true do
                if not char then
                    return
                end
                HB:Wait()
                for i, v in pairs(char:GetChildren()) do
                    if v:IsA("Script") and v:FindFirstChildOfClass("LocalScript") then
                        v:FindFirstChildOfClass("LocalScript").Source = "Cleared by Demise"
                        return
                    end
                end
            end
        end

        if LocalPlayer.Character then
            added(LocalPlayer.Character)
        end

        LocalPlayer.CharacterAdded:Connect(added)
    end

    -- Aiming

    -- Aiming

    local repo = "https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/"
    local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
    local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()
    local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()
    -- notification librarys
    local AkaliNotif =
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))()
    local Notify = AkaliNotif.Notify
    --vKhonshu library
    local Library1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/vKhonshu/intro2/main/ui2"))()
    local NotifyLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/hujuuhgi/sdadsaasddsa/main/sdadsa"))()

    -- dxhook.cc notif
    local l = loadstring(game:HttpGet("https://raw.githubusercontent.com/hujuuhgi/sdadsaasddsa/main/noti", true))()

    local Window =
        Library:CreateWindow(
        {
            Title = "demise.cc | rewrite",
            Center = true,
            AutoShow = true
        }
    )

    local Tabs = {
        Aiming = Window:AddTab("Rage"),
        otha = Window:AddTab("Player")
    }
    -- Visuals = Window:AddTab('Visuals'),
    local aimlockshhh = Tabs.Aiming:AddRightGroupbox("Aimbot")

    local LeftGroupBox123 = Tabs.otha:AddLeftGroupbox("-")
    local LeftGroupBox321 = Tabs.otha:AddLeftGroupbox("*")
    local LeftGroupBox456 = Tabs.otha:AddLeftGroupbox("^")

    local LeftGroupBox1234 = Tabs.otha:AddRightGroupbox("CFrame")
    local LeftGroupBox12345 = Tabs.otha:AddRightGroupbox("Wrist")
    local eigthballniaaa = Tabs.otha:AddLeftGroupbox("Misc")
    local TpTabs233 = Tabs.otha:AddRightGroupbox("Character")

    local dggdg = Tabs.otha:AddRightGroupbox("Spinbot")
    getgenv().Aiming = {
        Target = {
            Enabled = false,
            Prediction = 0.1337,
            AirshotFunc = false,
            Part = "HumanoidRootPart", -- Head UpperTorso HumanoidRootPart LowerTorso
            AirshotPart = "RightFoot", -- i use rightfoot and rightarm
            Key = "q",
            Notifications = false,
            Toggle = false,
            velcotit = false
        },
        TargetExtras = {
            SpectatePlayer = false,
            TeleportToPlayer = false
        }
    }
    --getgenv().Aiming.Target.velcotit
    client = {
        Color = Color3.fromRGB(255, 255, 255),
        Worldc = Color3.fromRGB(242, 3, 255),
        Brightness1 = 0,
        Contrast1 = 0,
        Saturation1 = 0,
        clr = Color3.fromRGB(255, 0, 0),
        chm1 = Color3.fromRGB(255, 0, 0),
        chm2 = Color3.fromRGB(255, 0, 0),
        ng1 = Color3.fromRGB(255, 255, 255),
        speed = 5,
        deesp = 5,
        chamspeed = 5,
        highlightspeed = 5,
        ballspeed = 5,
        ambiencespeed = 5
    }
    local notifytype = {
        Typexx = "Library"
    }

    Aimlock = {
        Key = Enum.KeyCode.C,
        Hitpart = "Head",
        Prediction = 10,
        Enabled = false,
        Targeting = false,
        Smoothed = true,
        SmoothVelocity = 0.092,
        Airshot = false,
        Notifffs = false,
        Notitypes = "Library",
        VelocityResolver = false
    }

    local settings = {
        Colorthingidkklolllllll = Color3.fromRGB(161, 165, 162),
        Colorthingidkklolllllll1 = Color3.fromRGB(161, 165, 162),
        uuuuuuuuuuuuuuuuuuuucolourrrrrrr = 0.82,
        Raingaybow = false,
        TracersOptions = "Character",
        TracersEnabled = false,
        fakehitcocx = false,
        fakehitcocx1 = false,
        fakehitsize = 70,
        material = "ForceField",
        ShowingDot = false,
        spinbotgangy = false,
        spinbotangle = 110
    }

    local CurrentCamera = game:GetService("Workspace").CurrentCamera
    local RunService = game:GetService("RunService")
    local Plr = game.Players.LocalPlayer
    local lp = game.Players.LocalPlayer
    local Mouse = game.Players.LocalPlayer:GetMouse()
    local Other = {
        Camera = workspace.CurrentCamera,
        BeamPart = Instance.new("Part", workspace)
    }
    getgenv().Show = false

    local fuckniggas = {
        Color = Color3.fromRGB(255, 255, 255)
    }
    _G.Color = Color3.fromRGB(255, 255, 255)
    _G.Size = Vector3.new(15, 15, 15)

    local Part = Instance.new("Part", game.Workspace)
    Part.Anchored = true
    Part.CanCollide = false
    Part.Parent = game.Workspace
    Part.Shape = Enum.PartType.Ball
    Part.Size = _G.Size
    Part.Transparency = 0.2
    Part.Material = Enum.Material.ForceField

    local ballspos =
        CurrentCamera:WorldToViewportPoint(
        Plr.Character[getgenv().Aiming.Target.Part].Position +
            (Plr.Character.LowerTorso.Velocity * getgenv().Aiming.Target.Prediction / 100)
    )

    local circle2 = Drawing.new("Circle")

    circle2.Thickness = 2
    circle2.NumSides = 350
    circle2.Transparency = 1
    circle2.Radius = 9.5
    circle2.Visible = false
    circle2.Filled = true

    local line = Drawing.new("Line")
    line.Visible = false
    line.From = Vector2.new(0, 0)
    line.To = Vector2.new(200, 200)
    _G.FUCKYUN = Color3.fromRGB(255, 110, 238)
    line.Color = _G.FUCKYUN
    --line.Thickness = 0.89
    --line.Transparency = 1.

    local aiming = {
        grippos = {
            enabled = true,
            key = Enum.KeyCode.X,
            targeting = false
        }
    }

    getgenv().espcolors = {
        boxcolor = Color3.fromRGB(255, 255, 255),
        healthcolor = Color3.fromRGB(0, 255, 0),
        namecolor = Color3.fromRGB(255, 255, 255),
        toolcolor = Color3.fromRGB(255, 255, 255),
        outlinecolor = Color3.fromRGB(0, 0, 0),
        crosshaircolor = Color3.fromRGB(255, 255, 255),
        distance = 120,
        textsize = 13
    }

    getgenv().boxes = false
    getgenv().weapon = false
    getgenv().health = false
    getgenv().healthnumber = false
    getgenv().displaynames = false
    local CurrentCamera = game:GetService("Workspace").CurrentCamera
    local Lighting = game:GetService("Lighting")

    local LocalMouse = game.Players.LocalPlayer:GetMouse()

    -- // uis
    local UserInputService = game:GetService("UserInputService")
    local Plr

    function getClosestPlayerToCursor()
        local ClosestDistance, ClosestPlayer = math.huge, nil
        for _, Player in next, game:GetService("Players"):GetPlayers() do
            local ISNTKNOCKED = Player.Character:WaitForChild("BodyEffects")["K.O"].Value ~= true
            local ISNTGRABBED = Player.Character:FindFirstChild("GRABBING_COINSTRAINT") == nil

            if Player ~= game.Players.LocalPlayer then
                local Character = Player.Character
                if Character and Character.Humanoid.Health > 1 and ISNTKNOCKED and ISNTGRABBED then
                    local Position, IsVisibleOnViewPort =
                        CurrentCamera:WorldToViewportPoint(Character.HumanoidRootPart.Position)
                    if IsVisibleOnViewPort then
                        local Distance =
                            (Vector2.new(LocalMouse.X, LocalMouse.Y) - Vector2.new(Position.X, Position.Y)).Magnitude
                        if Distance < ClosestDistance then
                            ClosestPlayer = Player
                            ClosestDistance = Distance
                        end
                    end
                end
            end
        end
        return ClosestPlayer, ClosestDistance
    end

    game:GetService("UserInputService").InputBegan:Connect(
        function(keyinput, stupid)
            if keyinput.KeyCode == aiming.grippos.key and Toggles.wristposk.Value then -- the 2nd var checks every fucking key so we finna stop this hoe
                aiming.grippos.targeting = not aiming.grippos.targeting
                if aiming.grippos.targeting then
                    gcptc2 = getClosestPlayerToCursor()
                    gplr = tostring(gcptc2)

                    spawn(
                        function()
                            if gplr and gcptc2 ~= nil and aiming.grippos.targeting and aiming.grippos.enabled == true then
                                local Plr = game.Players.LocalPlayer
                                local Hand = Plr.Character.RightHand

                                game:GetService("RunService").Heartbeat:Connect(
                                    function()
                                        if
                                            gplr and gcptc2 ~= nil and aiming.grippos.targeting and
                                                aiming.grippos.enabled == true
                                        then
                                            Hand.CFrame =
                                                CFrame.new(
                                                game.Players[gplr].Character.Head.Position +
                                                    Vector3.new(0, aiming.grippos.height, 0)
                                            )
                                        end
                                    end
                                )

                                if Hand:FindFirstChild("RightWrist") then
                                    Hand.RightWrist:Destroy()
                                end

                                game.Workspace.CurrentCamera.CameraSubject = Hand
                                Hand.Transparency = 1
                            end
                        end
                    )
                elseif not aiming.grippos.targeting then
                    if aiming.grippos.enabled == true then
                        game:GetService("Workspace").CurrentCamera.CameraSubject =
                            game.Players.LocalPlayer.Character.Humanoid

                        local Plr = game.Players.LocalPlayer
                        local Hand = Plr.Character.RightHand
                        Hand.Transparency = 0
                        Hand.CFrame = CFrame.new(game.Players.LocalPlayer.Character.Head.Position - Vector3.new(0, 10, 0))
                    end
                end
            end
        end
    )

    lolnigga = {
        NiggaKey = "q"
    }

    Mouse.KeyDown:Connect(
        function(KeyPressed)
            if KeyPressed == (getgenv().Aiming.Target.Key) then
                if getgenv().Aiming.Target.Toggle == true then
                    if getgenv().Aiming.Target.Enabled == true then
                        getgenv().Aiming.Target.Enabled = false
                        if getgenv().Aiming.Target.Notifications == true and notifytype.Typexx == "StarterGui" then
                            Plr = FindClosestUser()
                            game.StarterGui:SetCore(
                                "SendNotification",
                                {
                                    -------------- all of this is if key is pressed the notification will pop up and will lock on to the closest player via m2p
                                    Title = "demise.cc",
                                    Text = "Untargeted",
                                    Icon = "http://www.roblox.com/asset/?id=10038026545"
                                }
                            )
                        end

                        if getgenv().Aiming.Target.Notifications == true and notifytype.Typexx == "Library" then
                            Library:Notify("Untargeted")
                        end

                        if getgenv().Aiming.Target.Notifications == true and notifytype.Typexx == "vKhonshu" then
                            NotifyLib.prompt("demise.cc", "Untargeted", 5)
                        end

                        if getgenv().Aiming.Target.Notifications == true and notifytype.Typexx == "dxHook" then
                            l:Notify("demise.cc", "Untargeted", 0.14)
                        end

                        if getgenv().Aiming.Target.Notifications == true and notifytype.Typexx == "Akali" then
                            Notify(
                                {
                                    Description = "Untargeted",
                                    Title = "demise.cc",
                                    Duration = 5
                                }
                            )
                        end

                        if game.Workspace:FindFirstChild("xd") then
                            vvv = game.Workspace.xd
                            vvv:Destroy()
                        end

                        if settings.ShowingDot == true then
                            circle2.Visible = false
                        end

                        --getgenv().Aiming.Target.Prediction

                        if getgenv().Aiming.TargetExtras.SpectatePlayer == true then
                            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
                        end
                        while getgenv().Show == true do
                            wait()
                            Part.Transparency = 0.50
                        end
                        while getgenv().Show == false do
                            wait()
                            Part.Transparency = 1
                        end
                    else
                        Plr = FindClosestUser()
                        getgenv().Aiming.Target.Enabled = true
                        if getgenv().Aiming.Target.Notifications == true and notifytype.Typexx == "StarterGui" then
                            game.StarterGui:SetCore(
                                "SendNotification",
                                {
                                    Title = "demise.cc",
                                    Text = "Targeting : " .. tostring(Plr.Character.Humanoid.DisplayName),
                                    Icon = "http://www.roblox.com/asset/?id=10038026545"
                                }
                            )
                        end

                        if getgenv().Aiming.Target.Notifications == true and notifytype.Typexx == "Library" then
                            Library:Notify("Targeting : " .. tostring(Plr.Character.Humanoid.DisplayName))
                        end

                        if getgenv().Aiming.Target.Notifications == true and notifytype.Typexx == "Akali" then
                            Notify(
                                {
                                    Description = "Targeting : " .. tostring(Plr.Character.Humanoid.DisplayName),
                                    Title = "demise.cc",
                                    Duration = 5
                                }
                            )
                        end

                        if getgenv().Aiming.Target.velcotit == true then
                            getgenv().Aiming.Target.Prediction = 0
                        end

                        if settings.fakehitcocx == true then
                            local Tracerhfsdisyfdfdd = Instance.new("Part", game.Workspace)
                            Tracerhfsdisyfdfdd.Name = "xd"
                            Tracerhfsdisyfdfdd.Anchored = true
                            Tracerhfsdisyfdfdd.CanCollide = false
                            Tracerhfsdisyfdfdd.Transparency = 0
                            Tracerhfsdisyfdfdd.Parent = game.Workspace
                            Tracerhfsdisyfdfdd.Shape = Enum.PartType.Block
                            Tracerhfsdisyfdfdd.Size = Vector3.new(7, 7, 7)
                            Tracerhfsdisyfdfdd.Material = "ForceField"
                            Tracerhfsdisyfdfdd.Color = Color3.fromRGB(200, 0, 227)
                            spawn(
                                function()
                                    game:GetService("RunService").Stepped:Connect(
                                        function()
                                            Tracerhfsdisyfdfdd.Color = settings.Colorthingidkklolllllll1
                                            Tracerhfsdisyfdfdd.Position =
                                                Plr.Character[getgenv().Aiming.Target.Part].Position +
                                                (Plr.Character.LowerTorso.Velocity * getgenv().Aiming.Target.Prediction /
                                                    100)
                                            Tracerhfsdisyfdfdd.Transparency = settings.uuuuuuuuuuuuuuuuuuuucolourrrrrrr
                                            Tracerhfsdisyfdfdd.Size =
                                                Vector3.new(
                                                settings.fakehitsize,
                                                settings.fakehitsize,
                                                settings.fakehitsize
                                            )
                                            Tracerhfsdisyfdfdd.Material = settings.material
                                        end
                                    )
                                end
                            )
                        end

                        if getgenv().Aiming.Target.Notifications == true and notifytype.Typexx == "vKhonshu" then
                            NotifyLib.prompt("demise.cc", "Targeting : " .. tostring(Plr.Character.Humanoid.DisplayName), 5)
                        end

                        if getgenv().Aiming.Target.Notifications == true and notifytype.Typexx == "dxHook" then
                            l:Notify("demise.cc", "Targeting : " .. tostring(Plr.Character.Humanoid.DisplayName), 0.14)

                            if getgenv().Aiming.TargetExtras.SpectatePlayer == true then
                                game.Workspace.CurrentCamera.CameraSubject = Plr.Character
                            end
                            if getgenv().Aiming.TargetExtras.TeleportToPlayer == true then
                                lp.Character.HumanoidRootPart.CFrame = Plr.Character.HumanoidRootPart.CFrame
                            end
                        end
                    end
                end
            end
        end
    )

    function FindClosestUser()
        local closestPlayer
        local shortestDistance = math.huge

        for i, v in pairs(game.Players:GetPlayers()) do
            if
                v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
                    v.Character.Humanoid.Health ~= 0 and
                    v.Character:FindFirstChild("HumanoidRootPart")
            then
                local pos = CurrentCamera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude -- this getclosestplayer function is ass but it works ig
                if magnitude < shortestDistance then
                    closestPlayer = v
                    shortestDistance = magnitude
                end
            end
        end
        return closestPlayer
    end

    UserInputService.InputBegan:Connect(
        function(keyinput, stupid)
            if keyinput.KeyCode == Aimlock.Key then -- the 2nd var checks every fucking key so we finna stop this hoe
                Aimlock.Targeting = not Aimlock.Targeting
                if Aimlock.Targeting then
                    PlrbRop = getClosestPlayerToCursor()

                    if Aimlock.Notifffs == true and Aimlock.Notitypes == "Library" then
                        Library:Notify("Locked onto : " .. tostring(PlrbRop.Character.Humanoid.DisplayName))
                    end

                    if Aimlock.Notifffs == true and Aimlock.Notitypes == "Akali" then
                        Notify(
                            {
                                Description = "Locked onto : " .. tostring(PlrbRop.Character.Humanoid.DisplayName),
                                Title = "demise.cc",
                                Duration = 5
                            }
                        )
                    end

                    if Aimlock.Notifffs == true and Aimlock.Notitypes == "vKhonshu" then
                        NotifyLib.prompt(
                            "demise.cc",
                            "Locked onto : " .. tostring(PlrbRop.Character.Humanoid.DisplayName),
                            5
                        )
                    end

                    if Aimlock.Notifffs == true and Aimlock.Notitypes == "dxHook" then
                        l:Notify("demise.cc", "Locked onto : " .. tostring(PlrbRop.Character.Humanoid.DisplayName), 0.14)
                    end

                    if Aimlock.Notifffs == true and Aimlock.Notitypes == "StarterGui" then
                        game.StarterGui:SetCore(
                            "SendNotification",
                            {
                                -------------- all of this is if key is pressed the notification will pop up and will lock on to the closest player via m2p
                                Title = "demise.cc",
                                Text = "Locked onto : " .. tostring(PlrbRop.Character.Humanoid.DisplayName),
                                Icon = "http://www.roblox.com/asset/?id=10038026545"
                            }
                        )
                    end

                    if Aimlock.VelocityResolver == true then
                        Aimlock.Prediction = 0
                    else
                        Aimlock.Prediction = Options.aimlockpred.Value
                    end
                elseif not Aimlock.Targeting then
                    if Aimlock.Enabled == true then
                        if Aimlock.Notifffs == true and Aimlock.Notitypes == "Library" then
                            Library:Notify("Unlocked")
                        end

                        if Aimlock.Notifffs == true and Aimlock.Notitypes == "Akali" then
                            Notify(
                                {
                                    Description = "Unlocked",
                                    Title = "demise.cc",
                                    Duration = 5
                                }
                            )
                        end

                        if Aimlock.Notifffs == true and Aimlock.Notitypes == "vKhonshu" then
                            NotifyLib.prompt("demise.cc", "Unlocked", 5)
                        end

                        if Aimlock.Notifffs == true and Aimlock.Notitypes == "dxHook" then
                            l:Notify("demise.cc", "Unlocked", 0.14)
                        end

                        if Aimlock.Notifffs == true and Aimlock.Notitypes == "StarterGui" then
                            game.StarterGui:SetCore(
                                "SendNotification",
                                {
                                    -------------- all of this is if key is pressed the notification will pop up and will lock on to the closest player via m2p
                                    Title = "demise.cc",
                                    Text = "Unlocked",
                                    Icon = "http://www.roblox.com/asset/?id=10038026545"
                                }
                            )
                        end
                    end
                end
            end
        end
    )

    spawn(
        function()
            game:GetService("RunService").Stepped:Connect(
                function()
                    if getgenv().Aiming.Target.Enabled and Plr.Character and Plr.Character:FindFirstChild("LowerTorso") then
                        if settings.ShowingDot == true then
                            local worldPosition = Plr.Character.HumanoidRootPart.Position
                            local screenPosition, onScreen = CurrentCamera:WorldToScreenPoint(worldPosition)

                            if onScreen then
                                circle2.Visible = true
                            else
                                circle2.Visible = false
                            end
                            local rayhit69, hitpos69 =
                                workspace:FindPartOnRayWithIgnoreList(
                                Ray.new(Plr.Character.Head.Position, Plr.Character.Head.CFrame.LookVector * 1),
                                {CurrentCamera, Plr.Character},
                                false,
                                true,
                                ""
                            )

                            local viewportpointhit, isOnScreen = CurrentCamera:WorldToViewportPoint(hitpos69)
                            local headpos123 =
                                CurrentCamera:WorldToViewportPoint(
                                Plr.Character[getgenv().Aiming.Target.Part].Position +
                                    Plr.Character.LowerTorso.Velocity * getgenv().Aiming.Target.Prediction / 100
                            )

                            circle2.Position = Vector2.new(headpos123.X, headpos123.Y)
                        --[[  elseif
                    Plr ~= nil and settings.ShowingDot and getgenv().Aiming.Target.Enabled and Plr.Character and Plr.Character:FindFirstChild("LowerTorso") == false
    then]]
                        end
                    end
                end
            )
        end
    )

    local peace = {
        Part = "HumanoidRootPart",
        Prediction = 0.165,
        FOVHolder = true,
        ShowFOV = false,
        Radius = 76,
        Enabled = false,
        Locking,
        Wallcheck = false,
        Airshot = false,
        AirshotPart = "RightFoot",
        RandomHP = false
    }

    --[[local bitchboy = Drawing.new("Circle")
    local Inset = game:GetService("GuiService"):GetGuiInset().Y
    local Camera = workspace.CurrentCamera
    local GetPartsObscuringTarget = Camera.GetPartsObscuringTarget
    local Storage = { Instance = {} }
    local GuiService = game:GetService("GuiService")
    local xplr
    ]]
    local bitchboy = Drawing.new("Circle")
    local CurrentCamera = game:GetService("Workspace").CurrentCamera
    local GuiService = game:GetService("GuiService")
    local Inset = GuiService:GetGuiInset().Y
    local LocalPlayer = game.Players.LocalPlayer
    local xplr
    local RunService = game:GetService("RunService")
    local Mouse = LocalPlayer:GetMouse()
    local Camera = workspace.CurrentCamera
    local GetPartsObscuringTarget = Camera.GetPartsObscuringTarget
    local Storage = {Instance = {}}

    local GetService =
        setmetatable(
        {},
        {
            __index = function(self, key)
                return game:GetService(key)
            end
        }
    )

    bitchboy.Filled = false
    bitchboy.Transparency = 1
    bitchboy.Thickness = 2
    bitchboy.Color = Color3.fromRGB(255, 255, 255)

    function updatehoe()
        if bitchboy then
            if (peace.FOVHolder) then
                bitchboy.Radius = peace.Radius
                bitchboy.Visible = peace.ShowFOV
                bitchboy.Position = Vector2.new(LocalMouse.X, LocalMouse.Y + Inset) -- 0,36
                return bitchboy
            elseif not peace.FOVHolder then
                bitchboy.Visible = false
            end
        end
    end

    RunService.RenderStepped:Connect(
        function()
            updatehoe()
            xplr = FindClosestUser()
        end
    )

    function IsNetwork(GetPlayer)
        return GetPlayer and GetPlayer.Character and GetPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil and
            GetPlayer.Character:FindFirstChild("Humanoid") ~= nil and
            GetPlayer.Character:FindFirstChild("Head") ~= nil and
            true or
            false
    end

    local CharacterAdded = LocalPlayer.CharacterAdded
    local CharacterAddedWait = CharacterAdded.Wait

    function WallCheck(OriginPart, Part)
        if IsNetwork(LocalPlayer) then
            local IgnoreList = {CurrentCamera, LocalPlayer.Character, OriginPart.Parent}
            local Parts =
                CurrentCamera:GetPartsObscuringTarget(
                {
                    OriginPart.Position,
                    Part.Position
                },
                IgnoreList
            )

            for i, v in pairs(Parts) do
                if v.Transparency >= 0.3 then
                    Storage.Instance[#Storage.Instance + 1] = v
                end

                if v.Material == Enum.Material.Glass then
                    Storage.Instance[#Storage.Instance + 1] = v
                end
            end

            return #Parts == 0
        end
        return true
    end

    --[[local function CheckTargetPart(TargetPartName)
        local TargetPart = FindFirstChild(Character, TargetPartName)

        if (TargetPart) then
            local PartPos, onScreen = WorldToViewportPoint(CurrentCamera, TargetPart.Position)
            local Magnitude = (Vector2new(PartPos.X, PartPos.Y) - Vector2new(Mouse.X, Mouse.Y)).Magnitude

            if (Magnitude < ShortestDistance) then
                ClosestPart = TargetPart
                ClosestPartPosition = PartPos
                ClosestPartOnScreen = onScreen
                ClosestPartMagnitudeFromMouse = Magnitude
                ShortestDistance = Magnitude
            end
        end
    end]]
    local ClosestPart = nil
    local ClosestPartPosition = nil
    local ClosestPartOnScreen = false
    local ClosestPartMagnitudeFromMouse = nil
    local ShortestDistance = 1 / 0

    function FindClosestUser()
        local closestPlayer
        local shortestDistance = math.huge

        for i, v in pairs(game.Players:GetPlayers()) do
            if
                v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
                    v.Character.Humanoid.Health ~= 0 and
                    v.Character:FindFirstChild("HumanoidRootPart")
            then
                local pos, IsVisibleOnViewPort = CurrentCamera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                if IsVisibleOnViewPort then
                    local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude

                    if peace.FOVHolder == true then
                        if peace.Radius > magnitude and magnitude < shortestDistance then
                            if
                                (not peace.Wallcheck or
                                    WallCheck(v.Character.HumanoidRootPart, LocalPlayer.Character.HumanoidRootPart))
                            then
                                closestPlayer = v
                                shortestDistance = magnitude
                            end
                        end
                    else
                        if magnitude < shortestDistance then
                            closestPlayer = v
                            shortestDistance = magnitude
                        end
                    end
                end
            end
        end

        return closestPlayer, shortestDistance
    end

    --IsVisibleOnViewPort

    RunService.Heartbeat:Connect(
        function()
            if peace.RandomHP and peace.Enabled then
                myTable = {
                    "Head",
                    "UpperTorso",
                    "HumanoidRootPart",
                    "LowerTorso",
                    "RightFoot",
                    "LeftFoot"
                }

                peace.Part = myTable[math.random(0, #myTable - 1)]
            else
                peace.Part = "HumanoidRootPart"
            end
        end
    )

    local gmt = getrawmetatable(game)
    setreadonly(gmt, false)
    local old = gmt.__namecall

    gmt.__namecall =
        newcclosure(
        function(...)
            local args = {...}
            local method = getnamecallmethod()

            if peace.Enabled and method == "FireServer" and args[2] == "UpdateMousePos" and xplr ~= nil then
                args[3] = xplr.Character[peace.Part].Position + (xplr.Character[peace.Part].Velocity * peace.Prediction)
                return old(unpack(args))
            end
            return old(...)
        end
    )

    if peace.Airshot then
        if xplr.Character.Humanoid.Jump == true and xplr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
            peace.Part = peace.AirshotPart
        else
            xplr.Character:WaitForChild("Humanoid").StateChanged:Connect(
                function(old, new)
                    if new == Enum.HumanoidStateType.Freefall then
                        peace.Part = peace.AirshotPart
                    else
                        peace.Part = "HumanoidRootPart"
                    end
                end
            )
        end
    end

    local coreGui = game:GetService("CoreGui")

    local highlight = Instance.new("Highlight")

    highlight.Parent = coreGui
    --highlight.FillColor = client.chm2

    local whathuhhigh = Instance.new("Highlight")

    --whathuhhigh

    whathuhhigh.Parent = coreGui

    local mt = getrawmetatable(game)
    local gold = mt.__namecall
    setreadonly(mt, false)
    mt.__namecall =
        newcclosure(
        function(...)
            local args = {...}
            if
                getgenv().Aiming.Target.Enabled and Plr and getnamecallmethod() == "FireServer" and
                    args[2] == "UpdateMousePos"
            then
                args[3] =
                    Plr.Character[getgenv().Aiming.Target.Part].Position +
                    (Plr.Character[getgenv().Aiming.Target.Part].Velocity * getgenv().Aiming.Target.Prediction / 100) ----- MAIN
                return gold(unpack(args))
            end
            return gold(...)
        end
    )

    -- airshot function bellow then end of target code

    if getgenv().Aiming.Target.AirshotFunc == true then
        if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
            getgenv().Aiming.Target.Part = getgenv().Aiming.Target.AirshotPart
        else
            Plr.Character:WaitForChild("Humanoid").StateChanged:Connect(
                function(old, new)
                    if new == Enum.HumanoidStateType.Freefall then
                        getgenv().Aiming.Target.Part = getgenv().Aiming.Target.AirshotPart
                    else
                        getgenv().Aiming.Target.Part = "LowerTorso"
                    end
                end
            )
        end
    end

    RunService.Stepped:connect(
        function()
            if getgenv().Aiming.Target.Enabled and Plr.Character and Plr.Character:FindFirstChild("LowerTorso") then
                Part.CFrame = CFrame.new(Plr.Character[getgenv().Aiming.Target.Part].Position)
            else
                Part.CFrame = CFrame.new(0, 9999, 0)
            end
        end
    )

    -- Esp / visuals

    local Visuals = Window:AddTab("Visuals")

    local RightVisuals = Visuals:AddRightGroupbox("World")
    local LeftVisuals = Visuals:AddLeftGroupbox("Rainbows")

    local MapLightingJmp = Instance.new("ColorCorrectionEffect")

    RightVisuals:AddToggle("World", {Text = "World Ambience"}):AddColorPicker(
        "wrld11",
        {
            Default = Color3.fromRGB(233, 203, 255), -- Bright green
            Title = "Some color" -- Optional. Allows you to have a custom color picker title (when you open it)
        }
    )
    Options.wrld11:OnChanged(
        function()
            client.Worldc = Options.wrld11.Value
        end
    )

    local VisualjH1 = Visuals:AddRightGroupbox("Color Correction")

    VisualjH1:AddToggle("st1", {Text = "Saturation"})

    VisualjH1:AddSlider(
        "SaturationValue",
        {
            Text = "Saturation Value",
            Default = 0,
            Min = 0,
            Max = 10,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.SaturationValue:OnChanged(
        function()
            client.Saturation1 = Options.SaturationValue.Value
        end
    )

    VisualjH1:AddToggle("st12", {Text = "Contrast"})

    VisualjH1:AddSlider(
        "ContrastValue",
        {
            Text = "Saturation Value",
            Default = 0,
            Min = 0,
            Max = 10,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.ContrastValue:OnChanged(
        function()
            client.Contrast1 = Options.ContrastValue.Value
        end
    )

    VisualjH1:AddToggle("st123", {Text = "Brightness"})

    VisualjH1:AddSlider(
        "BrightnessValue",
        {
            Text = "Brightness Value",
            Default = 0,
            Min = 0,
            Max = 3,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.BrightnessValue:OnChanged(
        function()
            client.Brightness1 = Options.BrightnessValue.Value
        end
    )
    local Ballsakcs = {
                    Enabled = nil,
                    Duration = nil,
                    Color = nil,
                    Material = nil,
                    Speed = nil
    }
    local BVisuals = Visuals:AddRightGroupbox("Backtrack Chams")

    BVisuals:AddToggle('CloneChamsEnabled', {
        Text = 'Clone Chams',
        Default = false, 
        Tooltip = 'Clone Chams Enabled', 
    })

    Toggles.CloneChamsEnabled:OnChanged(function()
        Ballsakcs.Enabled = Toggles.CloneChamsEnabled.Value
    end)

    Toggles.CloneChamsEnabled:AddColorPicker('CloneChamsColor', {
        Default = Color3.fromRGB(255,255,255),
        Title = 'Clone Chams Color'
    })

    Options.CloneChamsColor:OnChanged(function()
        Ballsakcs.Color = Options.CloneChamsColor.Value
    end)
    local bootycall = {
        bootyduration = nil
    }



    local SexVisuals = Visuals:AddLeftGroupbox("Fake Lag")
    SexVisuals:AddToggle('Niggas', {
        Text = 'Fake Lag',
        Default = false, 
        Tooltip = 'Fake Lag Enabled', 
    })


    SexVisuals:AddSlider(
        "BootyValue",
        {
            Text = "Lag Value",
            Default = 0.5,
            Min = 0.1,
            Max = 3,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.BootyValue:OnChanged(
        function()
            bootycall.bootyduration = Options.BootyValue.Value
        end
    )









    task.spawn(function ()
        while true do
            wait()
            if Ballsakcs.Enabled then
                repeat
                    game.Players.LocalPlayer.Character.Archivable = true
                    local Clone = game.Players.LocalPlayer.Character:Clone()
                    for _,Nigga in next, Clone:GetDescendants() do
                    if Nigga.Name == "HumanoidRootPart" or Nigga:IsA("Humanoid") or Nigga:IsA("LocalScript") or Nigga:IsA("Script") or Nigga:IsA("Decal") then
                        Nigga:Destroy()
                    elseif Nigga:IsA("BasePart") or Nigga:IsA("Meshpart") or Nigga:IsA("Part") then
                        if Nigga.Transparency == 1 then
                            Nigga:Destroy()
                        else
                            Nigga.CanCollide = false
                            Nigga.Anchored = true
                            Nigga.Material = Ballsakcs.Material
                            Nigga.Color = Ballsakcs.Color
                            Nigga.Transparency = 0
                            Nigga.Size = Nigga.Size + Vector3.new(0.03, 0.03, 0.03)   
                    end
                end
                    pcall(function()
                        Nigga.CanCollide = false
                    end)
                end
                Clone.Parent = game.Workspace
                wait(Ballsakcs.Duration)
                Clone:Destroy()  
                until Ballsakcs.Enabled == false
            end
        end
    end)

    BVisuals:AddSlider('DurationSliderWHAT', {
        Text = 'Duration',

        Default = 0.1,
        Min = 0.1,
        Max = 3,
        Rounding = 2,

        Compact = false,
    })

    Options.DurationSliderWHAT:OnChanged(function()
        Ballsakcs.Duration = Options.DurationSliderWHAT.Value
    end)

    BVisuals:AddDropdown('CloneChamsMaterial', {
        Values = { 'Neon', 'ForceField', 'Plastic' },
        Default = 2,
        Multi = false, 

        Text = 'Clone Chams Material',
        Tooltip = 'Clone Chams Material',
    })

    Options.CloneChamsMaterial:OnChanged(function()
        Ballsakcs.Material = Options.CloneChamsMaterial.Value
    end)



    local Skyboxes1 = {
        Type = "Idk"
    }
    local Visuxb = Visuals:AddLeftGroupbox("Skyboxes")


    Visuxb:AddToggle('SkyboxEnabled', {
        Text = 'Skybox Enabled',
        Default = false, 
        Tooltip = 'Skyboxes Enabled', 
    })



    getgenv().nix = nil
    Toggles.SkyboxEnabled:OnChanged(function()
        getgenv().nix = Toggles.SkyboxEnabled.Value
    end)


    Visuxb:AddDropdown('Skyboxtype', {
        Values = { 'Nebula', 'Gloomy Clouds', 'Dark Night', 'Space'},
        Default = 1,
        Multi = false, 

        Text = 'Custom Skybox',
        Tooltip = 'Custom Skybox',
    })

    Options.Skyboxtype:OnChanged(function()
        Skyboxes1.Type = Options.Skyboxtype.Value
    end)



    local Light = game:GetService("Lighting")
    local RunService = game:GetService("RunService")





    game:GetService("RunService").Heartbeat:Connect(

    function()
    
        if getgenv().nix == true and Skyboxes1.Type == "Gloomy Clouds" then

            Light["ClockTime"] = "12";
            local skybox = Instance.new("Sky")
            skybox.Parent = game.Lighting   
            skybox.SkyboxBk = "rbxassetid://6285733679"
            skybox.SkyboxDn = "rbxassetid://6285735209"
            skybox.SkyboxFt =  "rbxassetid://6285737080"
        
            skybox.SkyboxLf = "rbxassetid://6285738756"
            skybox.SkyboxRt = "rbxassetid://6285742177"
            skybox.SkyboxUp = "rbxassetid://6285743752"
        elseif getgenv().nix == true and Skyboxes1.Type == "Nebula" then
            Light["ClockTime"] = "12";
            local sky1 = Instance.new("Sky")
            sky1.Parent = game.Lighting  
            sky1.SkyboxBk = "rbxassetid://6277563515"
            sky1.SkyboxDn = "rbxassetid://6277565742"
            sky1.SkyboxFt =  "rbxassetid://6277567481"

            sky1.SkyboxLf = "rbxassetid://6277569562"
            sky1.SkyboxRt = "rbxassetid://6277583250"
            sky1.SkyboxUp = "rbxassetid://6277586065"
        elseif getgenv().nix == true and Skyboxes1.Type == "Dark Night" then
            Light["ClockTime"] = "12";
            local guys = Instance.new("Sky")
            guys.Parent = game.Lighting  
            guys.SkyboxBk = "rbxassetid://6285719338"
            guys.SkyboxDn = "rbxassetid://6285721078"
            guys.SkyboxFt = "rbxassetid://6285722964"
            guys.SkyboxLf = "rbxassetid://6285724682"
            guys.SkyboxRt = "rbxassetid://6285726335"
            guys.SkyboxUp = "rbxassetid://6285730635"
        elseif getgenv().nix == true and Skyboxes1.Type == "Space" then
            Light["ClockTime"] = "12";
            local suygs = Instance.new("Sky")
            suygs.Parent = game.Lighting  
            suygs.SkyboxBk = "rbxassetid://877168885"
            suygs.SkyboxDn = "rbxassetid://877169070"
            suygs.SkyboxFt = "rbxassetid://877169154"
            suygs.SkyboxLf = "rbxassetid://877169233"
            suygs.SkyboxRt = "rbxassetid://877169317"
            suygs.SkyboxUp = "rbxassetid://877169431"
        else
        


            local box = Instance.new("Sky")
            box.Parent = game.Lighting  


            box.SkyboxBk = "rbxassetid://600830446"
            box.SkyboxDn = "rbxassetid://600831635"
            box.SkyboxFt =  "rbxassetid://600832720"
        
            box.SkyboxLf = "rbxassetid://600886090"
            box.SkyboxRt = "rbxassetid://600833862"
            box.SkyboxUp = "rbxassetid://600835177"
            
        end
    end)





    local TpTab = Window:AddTab("Teleports")

    local mTpTab = TpTab:AddLeftTabbox()

    local TpTabs = mTpTab:AddTab("Locations")

    TpTabs:AddDropdown(
        "SchoolDropdown",
        {
            Values = {"None", "Bank", "Casino", "Downhill Guns", "Taco", "Admin", "Sewer", "School", "Mountain"},
            Default = 1,
            Multi = false,
            Text = "Locations",
            Tooltip = "Locations"
        }
    )

    Options.SchoolDropdown:OnChanged(
        function()
            if Options.SchoolDropdown.Value == "None" then
            elseif Options.SchoolDropdown.Value == "Bank" then
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-423, 22, -284)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
            elseif Options.SchoolDropdown.Value == "Casino" then
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-948, 21, -105)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
            elseif Options.SchoolDropdown.Value == "Downhill Guns" then
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-588, 8, -744)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
            elseif Options.SchoolDropdown.Value == "Taco" then
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-278, 22, -807)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
            elseif Options.SchoolDropdown.Value == "Admin" then
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-872, -32, -534)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
            elseif Options.SchoolDropdown.Value == "Sewer" then
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(112, -38, -296)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
            elseif Options.SchoolDropdown.Value == "School" then
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-599, 21, 214)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
            elseif Options.SchoolDropdown.Value == "Mountain" then
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-68, 138, -692)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
            end
        end
    )

    --[[TpTabs:AddButton('Bank', function()
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-423,22,-284)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
                end)
                
                TpTabs:AddButton('Casino', function()
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-948,21,-105)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
                end)
                
                TpTabs:AddButton('Downhill Guns', function()
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-588, 8, -744)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
                end)
                
                TpTabs:AddButton('Taco And Hamburger', function()
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-278,22,-807)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
                end)
                
                TpTabs:AddButton('Admin Base', function()
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-872, -32, -534)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
                end)
                
                TpTabs:AddButton('Sewer', function()
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(112, -38, -296)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
                end)
                
                TpTabs:AddButton('Mountain', function()
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-68, 138, -692)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
                end)
                
                TpTabs:AddButton('School', function()
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-599, 21 ,214)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
                end)
                
                TpTabs:AddButton('Popcorn', function()
                getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-995, 21.6998043, -153.100037, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                end)
                
                TpTabs:AddButton('Main Food', function()
                getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-338.352173, 23.6826477, -297.2146, -0.0060598203, -1.03402984e-08, -0.999981582, -1.61653102e-09, 1, -1.03306892e-08, 0.999981582, 1.55389912e-09, -0.0060598203)
                end)]]
    local m1TpTab = TpTab:AddRightTabbox()

    local TpTabs1 = m1TpTab:AddTab("Guns")

    TpTabs1:AddDropdown(
        "GunDropdown",
        {
            Values = {"None", "Rev", "DB", "Shotgun", "Tact", "SMG", "RPG", "Others", "All"},
            Default = 1,
            Multi = false,
            Text = "Guns",
            Tooltip = "Guns"
        }
    )

    Options.GunDropdown:OnChanged(
        function()
            if Options.GunDropdown.Value == "None" then
            elseif Options.GunDropdown.Value == "Rev" then
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-643, 21, -118)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
            elseif Options.GunDropdown.Value == "DB" then
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-1042, 21, -256)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
            elseif Options.GunDropdown.Value == "Shotgun" then
                getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-578.623657, 5.47212696, -725.131531, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            elseif Options.GunDropdown.Value == "Tact" then
                getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    470.877533,
                    45.1272316,
                    -620.630676,
                    0.999999821,
                    0.000604254019,
                    -2.60802135e-08,
                    -0.000604254019,
                    0.999999821,
                    -8.63220048e-05,
                    -2.60802135e-08,
                    8.63220048e-05,
                    1
                )
            elseif Options.GunDropdown.Value == "SMG" then
                getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-577.123413, 5.47666788, -718.031433, -1, 0, 0, 0, 1, 0, 0, 0, -1)
            elseif Options.GunDropdown.Value == "RPG" then
                getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    -794.814697,
                    -42.5468521,
                    -932.97998,
                    5.96046448e-08,
                    2.91038305e-11,
                    1,
                    -0.000610388815,
                    0.999999821,
                    2.91038305e-11,
                    -0.999999762,
                    -0.000610388815,
                    5.96046448e-08
                )
            elseif Options.GunDropdown.Value == "Others" then
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-588, 8, -744)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
            elseif Options.GunDropdown.Value == "All" then
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-872, -32, -534)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
            end
        end
    )

    --[[      TpTabs1:AddButton('Revolver', function()
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-643, 21, -118)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
                end)
                
                TpTabs1:AddButton('DB Shotgun', function()
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-1042, 21, -256)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
                end)
                
                TpTabs1:AddButton('Shotgun', function()
                getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-578.623657, 5.47212696, -725.131531, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                end)
                
                TpTabs1:AddButton('Tatical Shotgun', function()
                getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(470.877533, 45.1272316, -620.630676, 0.999999821, 0.000604254019, -2.60802135e-08, -0.000604254019, 0.999999821, -8.63220048e-05, -2.60802135e-08, 8.63220048e-05, 1)
                end)
                
                TpTabs1:AddButton('SMG', function()
                getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-577.123413, 5.47666788, -718.031433, -1, 0, 0, 0, 1, 0, 0, 0, -1)
                end)
                
                TpTabs1:AddButton('RPG', function()
                getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-794.814697, -42.5468521, -932.97998, 5.96046448e-08, 2.91038305e-11, 1, -0.000610388815, 0.999999821, 2.91038305e-11, -0.999999762, -0.000610388815, 5.96046448e-08)
                end)
                
                TpTabs1:AddButton('Armour', function()
                getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-607.978455, 7.44964886, -788.494263, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07)
                end)
                
                TpTabs1:AddButton('Other Guns', function()
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-588, 8, -744)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
                end)
                
                TpTabs1:AddButton('All Guns', function()
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-872, -32, -534)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                pl.CFrame = location
                end)
                TpTabs1:AddButton('Filler', function()
                    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-338.352173, 23.6826477, -297.2146, -0.0060598203, -1.03402984e-08, -0.999981582, -1.61653102e-09, 1, -1.03306892e-08, 0.999981582, 1.55389912e-09, -0.0060598203)
                    end)
    ]]
    local mTpTab12 = TpTab:AddRightTabbox()

    local TpTabs2 = mTpTab12:AddTab("Food Autobuys")

    TpTabs2:AddDropdown(
        "AutoFood",
        {
            Values = {"None", "Pizza", "Chicken", "Taco", "Hot dog", "Hamburger", "Lettuce", "Donut", "Popcorn"},
            Default = 1,
            Multi = false,
            Text = "Food",
            Tooltip = "Food"
        }
    )

    Options.AutoFood:OnChanged(
        function()
            if Options.AutoFood.Value == "None" then
            elseif Options.AutoFood.Value == "Pizza" then
                local LocalPlayer = game:GetService "Players".LocalPlayer
                local k = game.Workspace.Ignored.Shop["[Pizza] - $5"]
                local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
                wait(0.5)
                fireclickdetector(game.Workspace.Ignored.Shop["[Pizza] - $5"].ClickDetector)
                fireclickdetector(game.Workspace.Ignored.Shop["[Pizza] - $5"].ClickDetector)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            elseif Options.AutoFood.Value == "Chicken" then
                local LocalPlayer = game:GetService "Players".LocalPlayer
                local k = game.Workspace.Ignored.Shop["[Pizza] - $5"]
                local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
                wait(0.5)
                fireclickdetector(game.Workspace.Ignored.Shop["[Pizza] - $5"].ClickDetector)
                fireclickdetector(game.Workspace.Ignored.Shop["[Pizza] - $5"].ClickDetector)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            elseif Options.AutoFood.Value == "Taco" then
                local LocalPlayer = game:GetService "Players".LocalPlayer
                local k = game.Workspace.Ignored.Shop["[Taco] - $2"]
                local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
                wait(0.5)
                fireclickdetector(game.Workspace.Ignored.Shop["[Taco] - $2"].ClickDetector)
                fireclickdetector(game.Workspace.Ignored.Shop["[Taco] - $2"].ClickDetector)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            elseif Options.AutoFood.Value == "Hot dog" then
                local LocalPlayer = game:GetService "Players".LocalPlayer
                local k = game.Workspace.Ignored.Shop["[HotDog] - $8"]
                local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
                wait(0.5)
                fireclickdetector(game.Workspace.Ignored.Shop["[HotDog] - $8"].ClickDetector)
                fireclickdetector(game.Workspace.Ignored.Shop["[HotDog] - $8"].ClickDetector)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            elseif Options.AutoFood.Value == "Hamburger" then
                local LocalPlayer = game:GetService "Players".LocalPlayer
                local k = game.Workspace.Ignored.Shop["[Hamburger] - $5"]
                local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
                wait(0.5)
                fireclickdetector(game.Workspace.Ignored.Shop["[Hamburger] - $5"].ClickDetector)
                fireclickdetector(game.Workspace.Ignored.Shop["[Hamburger] - $5"].ClickDetector)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            elseif Options.AutoFood.Value == "Lettuce" then
                local LocalPlayer = game:GetService "Players".LocalPlayer
                local k = game.Workspace.Ignored.Shop["[Lettuce] - $5"]
                local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
                wait(0.5)
                fireclickdetector(game.Workspace.Ignored.Shop["[Lettuce] - $5"].ClickDetector)
                fireclickdetector(game.Workspace.Ignored.Shop["[Lettuce] - $5"].ClickDetector)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            elseif Options.AutoFood.Value == "Donut" then
                local LocalPlayer = game:GetService "Players".LocalPlayer
                local k = game.Workspace.Ignored.Shop["[Donut] - $5"]
                local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
                wait(0.5)
                fireclickdetector(game.Workspace.Ignored.Shop["[Donut] - $5"].ClickDetector)
                fireclickdetector(game.Workspace.Ignored.Shop["[Donut] - $5"].ClickDetector)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            elseif Options.AutoFood.Value == "Popcorn" then
                local LocalPlayer = game:GetService "Players".LocalPlayer
                local k = game.Workspace.Ignored.Shop["[Popcorn] - $7"]
                local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
                wait(0.5)
                fireclickdetector(game.Workspace.Ignored.Shop["[Popcorn] - $7"].ClickDetector)
                fireclickdetector(game.Workspace.Ignored.Shop["[Popcorn] - $7"].ClickDetector)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            end
        end
    )

    local mTpTab123 = TpTab:AddLeftTabbox()

    local TpTabs23 = mTpTab123:AddTab("Ammo Autobuys")

    TpTabs23:AddDropdown(
        "AutoAmmo",
        {
            Values = {"None", "Rev", "DB", "Smg", "AK", "LMG", "Glock", "Silencer", "RPG"},
            Default = 1,
            Multi = false,
            Text = "Ammo",
            Tooltip = "Ammo"
        }
    )

    Options.AutoAmmo:OnChanged(
        function()
            if Options.AutoAmmo.Value == "None" then
            elseif Options.AutoAmmo.Value == "Rev" then
                local LocalPlayer = game:GetService "Players".LocalPlayer
                local gunName = "12 [Revolver Ammo] - $75"
                local k = game.Workspace.Ignored.Shop[gunName]
                local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
                wait(0.5)
                fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
                fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            elseif Options.AutoAmmo.Value == "DB" then
                local LocalPlayer = game:GetService "Players".LocalPlayer
                local k = game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"]
                local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
                wait(0.5)
                fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)
                fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            elseif Options.AutoAmmo.Value == "Smg" then
                LocalPlayer = game:GetService "Players".LocalPlayer
                local k = game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"]
                local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
                wait(0.5)
                fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)
                fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            elseif Options.AutoAmmo.Value == "AK" then
                LocalPlayer = game:GetService "Players".LocalPlayer
                local k = game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"]
                local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
                wait(0.5)
                fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)
                fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            elseif Options.AutoAmmo.Value == "LMG" then
                local LocalPlayer = game:GetService "Players".LocalPlayer
                local k = game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"]
                local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
                wait(0.5)
                fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"].ClickDetector)
                fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"].ClickDetector)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            elseif Options.AutoAmmo.Value == "Glock" then
                local LocalPlayer = game:GetService "Players".LocalPlayer
                local k = game.Workspace.Ignored.Shop["25 [Glock Ammo] - $60"]
                local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
                wait(0.5)
                fireclickdetector(game.Workspace.Ignored.Shop["25 [Glock Ammo] - $60"].ClickDetector)
                fireclickdetector(game.Workspace.Ignored.Shop["25 [Glock Ammo] - $60"].ClickDetector)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            elseif Options.AutoAmmo.Value == "Silencer" then
                local LocalPlayer = game:GetService "Players".LocalPlayer
                local k = game.Workspace.Ignored.Shop["25 [Silencer Ammo] - $50"]
                local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
                wait(0.5)
                fireclickdetector(game.Workspace.Ignored.Shop["25 [Silencer Ammo] - $50"].ClickDetector)
                fireclickdetector(game.Workspace.Ignored.Shop["25 [Silencer Ammo] - $50"].ClickDetector)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            elseif Options.AutoAmmo.Value == "RPG" then
                local LocalPlayer = game:GetService "Players".LocalPlayer
                local k = game.Workspace.Ignored.Shop["5 [RPG Ammo] - $1000"]
                local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
                wait(0.5)
                fireclickdetector(game.Workspace.Ignored.Shop["5 [RPG Ammo] - $1000"].ClickDetector)
                fireclickdetector(game.Workspace.Ignored.Shop["5 [RPG Ammo] - $1000"].ClickDetector)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            end
        end
    )





    local shitcool198191 = Tabs.Aiming:AddLeftTabbox()

    local pussyuzi = shitcool198191:AddTab("Rage")
    local silentaim = shitcool198191:AddTab("Legit")

    pussyuzi:AddToggle(
        "MyToggle",
        {
            Text = "Enable Target",
            Default = false, -- Default value (true / false)
            Tooltip = "Target Aim Toggle" -- Information shown when you hover over the toggle
        }
    )

    local Key = {
        keylol = Enum.KeyCode.C
    }

    --lolxdniggaballs

    local Table = {
        LookAt = false
    }

    pussyuzi:AddToggle(
        "lookat",
        {
            Text = "Look At",
            Default = false, -- Default value (true / false)
            Tooltip = "Enables look at mode" -- Information shown when you hover over the toggle
        }
    )

    Toggles.lookat:OnChanged(
        function()
            Table.LookAt = Toggles.lookat.Value
        end
    )

    RunService.RenderStepped:Connect(
        function()
            if
                getgenv().Aiming.Target.Enabled and Plr.Character and Plr.Character:FindFirstChild("LowerTorso") and
                    Table.LookAt
            then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position,
                    Vector3.new(
                        Plr.Character.HumanoidRootPart.CFrame.X,
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position.Y,
                        Plr.Character.HumanoidRootPart.CFrame.Z
                    )
                )
            end
        end
    )

    --table

    pussyuzi:AddToggle(
        "MyToggle1",
        {
            Text = "Enable Airshot Function",
            Default = false, -- Default value (true / false)
            Tooltip = "Enables or disables airshot function" -- Information shown when you hover over the toggle
        }
    )
    pussyuzi:AddToggle(
        "resvvelcoity",
        {
            Text = "Velocity Resolver",
            Default = false, -- Default value (true / false)
            Tooltip = "Resolver Toggle" -- Information shown when you hover over the toggle
        }
    )

    Toggles.resvvelcoity:OnChanged(
        function()
            getgenv().Aiming.Target.velcotit = Toggles.resvvelcoity.Value
        end
    )

    pussyuzi:AddToggle(
        "d111d",
        {
            Text = "Notification Mode",
            Default = false, -- Default value (true / false)
            Tooltip = "Enables or disables notification mode" -- Information shown when you hover over the toggle
        }
    )

    Toggles.d111d:OnChanged(
        function()
            getgenv().Aiming.Target.Notifications = Toggles.d111d.Value
        end
    )

    pussyuzi:AddDropdown(
        "ddd1111",
        {
            Values = {"Library", "StarterGui", "Akali", "vKhonshu", "dxHook"},
            Default = "Library", -- number index of the value / string
            Multi = false, -- true / false, allows multiple choices to be selected
            Text = "Type of Notification",
            Tooltip = "Let's you choose between various notification libraries" -- Information shown when you hover over the textbox
        }
    )

    Options.ddd1111:OnChanged(
        function()
            notifytype.Typexx = Options.ddd1111.Value
        end
    )
    --ez

    silentaim:AddToggle("senable", {Text = "Enable Silent Aim"})

    Toggles.senable:OnChanged(
        function()
            peace.Enabled = Toggles.senable.Value
        end
    )

    silentaim:AddToggle("fovshow", {Text = "Draw FOV"})

    Toggles.fovshow:OnChanged(
        function()
            peace.ShowFOV = Toggles.fovshow.Value
        end
    )

    silentaim:AddSlider(
        "radiusfov",
        {
            Text = "FOV Value",
            Default = 100,
            Min = 1,
            Max = 275,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.radiusfov:OnChanged(
        function()
            peace.Radius = Options.radiusfov.Value
        end
    )

    silentaim:AddToggle("hprand", {Text = "Random Hitpart"})

    Toggles.hprand:OnChanged(
        function()
            peace.RandomHP = Toggles.hprand.Value
        end
    )

    silentaim:AddToggle("checkwall", {Text = "Wall Check"})

    Toggles.checkwall:OnChanged(
        function()
            peace.Wallcheck = Toggles.checkwall.Value
        end
    )

    silentaim:AddToggle("shotair", {Text = "Enable Airshot"})

    Toggles.shotair:OnChanged(
        function()
            peace.Airshot = Toggles.shotair.Value
        end
    )

    silentaim:AddDivider()

    silentaim:AddDropdown(
        "airpart",
        {
            Values = {"LowerTorso", "RightFoot"},
            Default = 4, -- number index of the value / string
            Multi = false, -- true / false, allows multiple choices to be selected
            Text = "Airshot Part",
            Tooltip = "Changes aimbot hit part" -- Information shown when you hover over the textbox
        }
    )

    Options.airpart:OnChanged(
        function()
            peace.AirshotPart = Options.airpart.Value
        end
    )

    silentaim:AddDropdown(
        "silpart",
        {
            Values = {"Head", "UpperTorso", "HumanoidRootPart"},
            Default = "HumanoidRootPart", -- number index of the value / string
            Multi = false, -- true / false, allows multiple choices to be selected
            Text = "Regular Hitpart",
            Tooltip = "Let's you choose between various Hitparts" -- Information shown when you hover over the textbox
        }
    )

    Options.silpart:OnChanged(
        function()
            peace.Part = Options.silpart.Value
        end
    )

    local coolshit7274 = Tabs.Aiming:AddLeftTabbox()

    local lilpzui = coolshit7274:AddTab("Visuals")

    local bubbletar2 = coolshit7274:AddTab("Hitbox")

    local trac77wer = coolshit7274:AddTab("Tracer")

    lilpzui:AddToggle(
        "MyToggle2",
        {
            Text = "Show Bubble",
            Default = false, -- Default value (true / false)
            Tooltip = "Shows forcefield material like bubble" -- Information shown when you hover over the toggle
        }
    ):AddColorPicker("dcvxa", {Default = Color3.fromRGB(0, 255, 140)})

    Options.dcvxa:OnChanged(
        function()
            Part.Color = Options.dcvxa.Value
        end
    )

    --[[RunService.Heartbeat:Connect(function()
        FF.Color = Visualize.VisualizeSettings.FFSettings.Color
    end)]]
    lilpzui:AddToggle(
        "lolxdniggaballs",
        {
            Text = "Highlight Targets",
            Default = false, -- Default value (true / false)
            Tooltip = "Highlights selected target" -- Information shown when you hover over the toggle
        }
    ):AddColorPicker("bhallfuck", {Default = Color3.fromRGB(0, 255, 140)}):AddColorPicker(
        "fuckbxha",
        {Default = Color3.fromRGB(0, 255, 140)}
    )

    Options.bhallfuck:OnChanged(
        function()
            highlight.FillColor = Options.bhallfuck.Value
        end
    )

    Options.fuckbxha:OnChanged(
        function()
            highlight.OutlineColor = Options.fuckbxha.Value
        end
    )

    lilpzui:AddToggle(
        "loooool",
        {
            Text = "ForceField Targets",
            Default = false, -- Default value (true / false)
            Tooltip = "Enables forcefield material on selected target" -- Information shown when you hover over the toggle
        }
    )

    trac77wer:AddToggle(
        "ShowTracer",
        {
            Text = "Show Tracer",
            Default = false,
            Tooltip = "Toggle to enable or disable to show a tracer to the opponent"
        }
    ):AddColorPicker(
        "ShowTracercpPORM",
        {
            Default = Color3.new(1, 1, 1), -- Bright green
            Title = "Some color" -- Optional. Allows you to have a custom color picker title (when you open it)
        }
    )

    trac77wer:AddSlider(
        "thcnaa",
        {
            Text = "Thickness Value",
            Default = 1,
            Min = 1,
            Max = 7,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.thcnaa:OnChanged(
        function()
            line.Thickness = Options.thcnaa.Value
        end
    )

    trac77wer:AddSlider(
        "nahc",
        {
            Text = "Thickness Value",
            Default = 0.50,
            Min = 0.1,
            Max = 1,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.nahc:OnChanged(
        function()
            line.Transparency = Options.nahc.Value
        end
    )

    bubbletar2:AddToggle(
        "FAKEHITBOXXXXXXXXXXXXXXX",
        {
            Text = "Fake Hitbox",
            Default = false,
            Tooltip = "Toggle to enable or disable to show a big retarded box"
        }
    ):AddColorPicker(
        "Showuwudiockcuddddddm",
        {
            Default = Color3.fromRGB(233, 203, 255), -- Bright green
            Title = "Some color" -- Optional. Allows you to have a custom color picker title (when you open it)
        }
    )

    Toggles.FAKEHITBOXXXXXXXXXXXXXXX:OnChanged(
        function()
            settings.fakehitcocx = Toggles.FAKEHITBOXXXXXXXXXXXXXXX.Value
        end
    )

    Options.Showuwudiockcuddddddm:OnChanged(
        function()
            settings.Colorthingidkklolllllll1 = Options.Showuwudiockcuddddddm.Value
        end
    )

    bubbletar2:AddSlider(
        "pussyeatergrablollll",
        {
            Text = "Hitbox Transparency",
            Default = 0.9,
            Min = 0.,
            Max = 1,
            Rounding = 2,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    bubbletar2:AddSlider(
        "pussyeatergrablollll1",
        {
            Text = "Hitbox Size ",
            Default = 1,
            Min = 1,
            Max = 20,
            Rounding = 2,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.pussyeatergrablollll:OnChanged(
        function()
            settings.uuuuuuuuuuuuuuuuuuuucolourrrrrrr = Options.pussyeatergrablollll.Value
        end
    )

    Options.pussyeatergrablollll1:OnChanged(
        function()
            settings.fakehitsize = Options.pussyeatergrablollll1.Value
        end
    )

    bubbletar2:AddDropdown(
        "fatniggaautisitc",
        {
            Values = {"ForceField", "Neon"},
            Default = "ForceField", -- number index of the value / string
            Multi = false, -- true / false, allows multiple choices to be selected
            Text = "Hitbox Material",
            Tooltip = "Let's you choose between various Materials for ur hitbox" -- Information shown when you hover over the textbox
        }
    )

    Options.fatniggaautisitc:OnChanged(
        function()
            settings.material = Options.fatniggaautisitc.Value
        end
    )

    Options.ShowTracercpPORM:OnChanged(
        function()
            _G.FUCKYUN = Options.ShowTracercpPORM.Value
        end
    )

    Toggles.ShowTracer:OnChanged(
        function()
            settings.TracersEnabled = Toggles.ShowTracer.Value
        end
    )

    lilpzui:AddToggle(
        "ballnix",
        {
            Text = "Dot Targets",
            Default = false, -- Default value (true / false)
            Tooltip = "Highlights selected target" -- Information shown when you hover over the toggle
        }
    ):AddColorPicker("dchotlopr", {Default = Color3.fromRGB(0, 255, 140)})

    lilpzui:AddDivider()

    Options.dchotlopr:OnChanged(
        function()
            circle2.Color = Options.dchotlopr.Value
        end
    )

    Toggles.ballnix:OnChanged(
        function()
            settings.ShowingDot = Toggles.ballnix.Value
        end
    )

    trac77wer:AddDropdown(
        "TracerHome",
        {
            Values = {"Mouse", "Character"},
            Default = "Character", -- number index of the value / string
            Multi = false, -- true / false, allows multiple choices to be selected
            Text = "Tracer Home",
            Tooltip = "Part where silent aim connects" -- Information shown when you hover over the textbox
        }
    )

    Options.TracerHome:OnChanged(
        function()
            settings.TracersOptions = Options.TracerHome.Value
        end
    )

    --[[Options.cx1:OnChanged(
        function()
            client.chm2 = Options.cx1.Value
        end
    )]]
    Toggles.MyToggle:OnChanged(
        function()
            getgenv().Aiming.Target.Toggle = Toggles.MyToggle.Value
        end
    )

    Toggles.MyToggle1:OnChanged(
        function()
            getgenv().Aiming.Target.AirshotFunc = Toggles.MyToggle1.Value
        end
    )

    Toggles.MyToggle2:OnChanged(
        function()
            getgenv().Show = Toggles.MyToggle2.Value
        end
    )

    local sh477zz = Tabs.Aiming:AddRightTabbox()

    local s787 = sh477zz:AddTab("Slider")

    s787:AddSlider(
        "MyTextboxlamo",
        {
            Text = "Target Prediction",
            Default = 12.5,
            Min = 10.5,
            Max = 20,
            Rounding = 6,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    s787:AddSlider(
        "lmaotext",
        {
            Text = "Silent Prediction",
            Default = 0.165,
            Min = 0.1,
            Max = 0.2,
            Rounding = 4,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.MyTextboxlamo:OnChanged(
        function()
            getgenv().Aiming.Target.Prediction = Options.MyTextboxlamo.Value
        end
    )

    Options.lmaotext:OnChanged(
        function()
            peace.Prediction = Options.lmaotext.Value
        end
    )
    --

    --

    pussyuzi:AddDivider()
    pussyuzi:AddDropdown(
        "MyDropdown",
        {
            Values = {"Head", "HumanoidRootPart", "UpperTorso", "LowerTorso"},
            Default = 2, -- number index of the value / string
            Multi = false, -- true / false, allows multiple choices to be selected
            Text = "Part",
            Tooltip = "Changes Target Part" -- Information shown when you hover over the textbox
        }
    )

    pussyuzi:AddDropdown(
        "weeezzee230",
        {
            Values = {"LowerTorso", "LeftFoot", "RightFoot"},
            Default = 2, -- number index of the value / string
            Multi = false, -- true / false, allows multiple choices to be selected
            Text = "Airshot Function Part",
            Tooltip = "Changes Target Aim Airshot Function part" -- Information shown when you hover over the textbox
        }
    )

    Options.weeezzee230:OnChanged(
        function()
            getgenv().Aiming.Target.AirshotPart = Options.weeezzee230.Value
        end
    )

    local ui2737 = Tabs.Aiming:AddRightTabbox()

    local lftgb1 = ui2737:AddTab("Strafe")
    local lftgb = ui2737:AddTab("Options")

    local dfff1 = {
        targetstwafeuwu = false,
        speed = 2,
        distance = 10,
        yposition = 0,
        type = "Orbit"
    }

    local z1 = {
        zposition = 0
    }

    lftgb1:AddToggle(
        "sfr",
        {
            Text = "Target Strafe",
            Default = false, -- Default value (true / false)
            Tooltip = "Enables target aim with strafe (orbit)" -- Information shown when you hover over the toggle
        }
    )

    Toggles.sfr:OnChanged(
        function()
            dfff1.targetstwafeuwu = Toggles.sfr.Value
        end
    )

    lftgb1:AddSlider(
        "ddffff",
        {
            Text = "Speed Value",
            Default = 2,
            Min = 1,
            Max = 10,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.ddffff:OnChanged(
        function()
            dfff1.speed = Options.ddffff.Value
        end
    )

    --ShowTracercpPORM

    lftgb1:AddSlider(
        "ddddffff",
        {
            Text = "Distance Value",
            Default = 6,
            Min = 1,
            Max = 20,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.ddddffff:OnChanged(
        function()
            dfff1.distance = Options.ddddffff.Value
        end
    )

    lftgb1:AddSlider(
        "ffffdddd",
        {
            Text = "Height Value",
            Default = 0,
            Min = 0,
            Max = 20,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.ffffdddd:OnChanged(
        function()
            dfff1.xposition = Options.ffffdddd.Value
        end
    )

    local wtf = {
        visulizerotationcp = Color3.fromRGB(255, 25, 25),
        transxp = 1,
        thcnk = 1
    }

    lftgb:AddToggle("visualizepath", {Text = "Visualize Rotation"}):AddColorPicker(
        "cclllr",
        {Default = Color3.fromRGB(255, 25, 25)}
    )

    Options.cclllr:OnChanged(
        function()
            wtf.visulizerotationcp = Options.cclllr.Value
        end
    )

    lftgb:AddSlider(
        "fdddssdadsad1",
        {
            Text = "Transparency",
            Default = 1,
            Min = 0,
            Max = 1,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.fdddssdadsad1:OnChanged(
        function()
            wtf.transxp = Options.fdddssdadsad1.Value
        end
    )

    lftgb:AddSlider(
        "ffcfff",
        {
            Text = "Thickness",
            Default = 0.8,
            Min = 0,
            Max = 20,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.ffcfff:OnChanged(
        function()
            wtf.thcnk = Options.ffcfff.Value
        end
    )

    lftgb:AddDropdown(
        "strxfetype",
        {
            Values = {"Orbit", "Sky", "Side"},
            Default = "Orbit", -- number index of the value / string
            Multi = false, -- true / false, allows multiple choices to be selected
            Text = "Type of Strafe",
            Tooltip = "Let's you choose between various Strafe Types" -- Information shown when you hover over the textbox
        }
    )

    Options.strxfetype:OnChanged(
        function()
            dfff1.Type = Options.strxfetype.Value
        end
    )

    lilpzui:AddToggle(
        "nhxa",
        {
            Text = "Rainbow Highlight Targets",
            Default = false, -- Default value (true / false)
            Tooltip = "Highlights selected target" -- Information shown when you hover over the toggle
        }
    )
    lilpzui:AddToggle(
        "xdlolll",
        {
            Text = "Rainbow ForceField Targets",
            Default = false, -- Default value (true / false)
            Tooltip = "Enables forcefield material on selected target" -- Information shown when you hover over the toggle
        }
    )
    lilpzui:AddToggle(
        "togglemy2",
        {
            Text = "Rainbow Forcefield",
            Default = false, -- Default value (true / false)
            Tooltip = "Shows Rainbow forcefield [ Bubble ]" -- Information shown when you hover over the toggle
        }
    )

    RunService.Stepped:connect(
        function()
            if Toggles.nhxa.Value then
                highlight.FillColor = Color3.fromHSV(tick() % client.speed / client.speed, 1, 1)
                highlight.OutlineColor = Color3.fromHSV(tick() % client.speed / client.speed, 1, 1)
            end
        end
    )

    lilpzui:AddSlider(
        "dfqqqq",
        {
            Text = "Highlight Speed",
            Default = 3,
            Min = 1,
            Max = 5,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.dfqqqq:OnChanged(
        function()
            client.speed = Options.dfqqqq.Value
        end
    )

    lilpzui:AddSlider(
        "qfd",
        {
            Text = "ForceField Speed",
            Default = 3,
            Min = 1,
            Max = 5,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.qfd:OnChanged(
        function()
            client.deesp = Options.qfd.Value
        end
    )

    local Yung = loadstring(game:HttpGet("https://raw.githubusercontent.com/hujuuhgi/ddasddsa/main/bliss"))()
    local Circle2222 = Yung:New3DCircle()
    Circle2222.Visible = false
    Circle2222.ZIndex = 1

    spawn(
        function()
            game:GetService("RunService").Stepped:Connect(
                function()
                    if
                        getgenv().Aiming.Target.Enabled and Plr.Character and Plr.Character:FindFirstChild("LowerTorso") and
                            dfff1.targetstwafeuwu == true and
                            Toggles.visualizepath.Value
                    then
                        Circle2222.Color = wtf.visulizerotationcp
                        Circle2222.Transparency = wtf.transxp

                        Circle2222.Thickness = wtf.thcnk
                        Circle2222.Visible = true
                        Circle2222.Radius = dfff1.distance
                        Circle2222.Position = Plr.Character.HumanoidRootPart.Position
                    else
                        Circle2222.Visible = false
                    end
                end
            )
        end
    )

    aimlockshhh:AddToggle(
        "aiimlocktoggle",
        {
            Text = "Enable",
            Default = false,
            Tooltip = "Enables or disables aimbot"
        }
    ):AddKeyPicker(
        "KeyPickerforaimlock",
        {
            Default = "C",
            SyncToggleState = false,
            Mode = "Toggle",
            Text = "Aimlock",
            NoUI = false
        }
    )

    Options.KeyPickerforaimlock:OnClick(
        function()
            Aimlock.Key = Enum.KeyCode[Options.KeyPickerforaimlock.Value]
        end
    )

    Toggles.aiimlocktoggle:OnChanged(
        function()
            Aimlock.Enabled = Toggles.aiimlocktoggle.Value
        end
    )

    aimlockshhh:AddToggle(
        "SMoothingToggleee",
        {
            Text = "Smoothing",
            Default = false,
            Tooltip = "Toggle to enable or disable smoothing on aimbot"
        }
    )

    Toggles.SMoothingToggleee:OnChanged(
        function()
            Aimlock.Smoothed = Toggles.SMoothingToggleee.Value
        end
    )

    aimlockshhh:AddSlider(
        "smoothamount",
        {
            Text = "Smoothing Multiplier ",
            Default = 0.019,
            Min = 0.004,
            Max = 0.1,
            Rounding = 4,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.smoothamount:OnChanged(
        function()
            Aimlock.SmoothVelocity = Options.smoothamount.Value
        end
    )

    aimlockshhh:AddSlider(
        "aimlockpred",
        {
            Text = "Prediction ",
            Default = 1.9,
            Min = 1,
            Max = 8,
            Rounding = 2,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.aimlockpred:OnChanged(
        function()
            Aimlock.Prediction = Options.aimlockpred.Value
        end
    )

    aimlockshhh:AddToggle(
        "Aimlcnot",
        {
            Text = "Notification Mode",
            Default = false,
            Tooltip = "Toggles aimbot notification mode"
        }
    )

    Toggles.Aimlcnot:OnChanged(
        function()
            Aimlock.Notifffs = Toggles.Aimlcnot.Value
        end
    )

    aimlockshhh:AddToggle(
        "VelocityResolver",
        {
            Text = "Velocity Resolver",
            Default = false,
            Tooltip = "Resolves Velocity"
        }
    )

    Toggles.VelocityResolver:OnChanged(
        function()
            Aimlock.VelocityResolver = Toggles.VelocityResolver.Value
        end
    )
    aimlockshhh:AddDropdown(
        "amlpcoockckckckckc",
        {
            Values = {"Library", "StarterGui", "Akali", "vKhonshu", "dxHook"},
            Default = "Library", -- number index of the value / string
            Multi = false, -- true / false, allows multiple choices to be selected
            Text = "Type of Notification",
            Tooltip = "Let's you choose between various notification libraries" -- Information shown when you hover over the textbox
        }
    )

    Options.amlpcoockckckckckc:OnChanged(
        function()
            Aimlock.Notitypes = Options.amlpcoockckckckckc.Value
        end
    )

    aimlockshhh:AddDropdown(
        "HITPARTHITCOCKAIM",
        {
            Values = {"Head", "HumanoidRootPart", "UpperTorso", "LowerTorso", "RightUpperLeg"},
            Default = 4, -- number index of the value / string
            Multi = false, -- true / false, allows multiple choices to be selected
            Text = "Hit Part",
            Tooltip = "Changes aimbot hit part" -- Information shown when you hover over the textbox
        }
    )

    Options.HITPARTHITCOCKAIM:OnChanged(
        function()
            Aimlock.Hitpart = Options.HITPARTHITCOCKAIM.Value
        end
    )

    spawn(
        function()
            game:GetService("RunService").RenderStepped:Connect(
                function()
                    if Aimlock.Smoothed and Aimlock.Enabled and Aimlock.Targeting == true then
                        local Main =
                            CFrame.new(
                            workspace.CurrentCamera.CFrame.Position,
                            PlrbRop.Character[Aimlock.Hitpart].Position +
                                PlrbRop.Character[Aimlock.Hitpart].Velocity * Aimlock.Prediction / 10
                        )
                        workspace.CurrentCamera.CFrame =
                            workspace.CurrentCamera.CFrame:Lerp(
                            Main,
                            Aimlock.SmoothVelocity,
                            Enum.EasingStyle.Elastic,
                            Enum.EasingDirection.InOut
                        )
                    elseif Aimlock.Smoothed == false and Aimlock.Enabled and Aimlock.Targeting == true then
                        workspace.CurrentCamera.CFrame =
                            CFrame.new(
                            workspace.CurrentCamera.CFrame.Position,
                            PlrbRop.Character[Aimlock.Hitpart].Position +
                                PlrbRop.Character[Aimlock.Hitpart].Velocity * Aimlock.Prediction / 10
                        )
                    end
                end
            )
        end
    )

    --local LeftGroupBox123 = Tabs.otha:AddLeftGroupbox('Anti Locks')
    --local LeftGroupBox1234 = Tabs.otha:AddRightGroupbox('Speed n sh')
    plr = game:GetService("Players").LocalPlayer
    LocalPlayer = game.Players.LocalPlayer

    local Reverse = {
        Speed = 3
    }

    local nigga = {
        hip = 4.8,
        vel = -70
    }

    local Settings = {
        Cframe = 69,
        underground = 4.8,
        LOL = "Underground",
        cframeoptions = "Blatant",
        cframespedtoggle = true,
        CFramespedamout = 1000,
        Modelol = "UI"
    }

    local Reverse = {
        Speed = 3
    }

    local uu = {
        niggerboy = -1000
    }

    function anti()
    end

    LeftGroupBox123:AddToggle("Anti1", {Text = "Anti Lock Underground"})

    LeftGroupBox123:AddSlider(
        "HipHeight",
        {
            Text = "Hip Height",
            Default = 2,
            Min = 1,
            Max = 10,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.HipHeight:OnChanged(
        function()
            nigga.hip = Options.HipHeight.Value
        end
    )

    LeftGroupBox123:AddSlider(
        "Velocity",
        {
            Text = "Velocity UU",
            Default = -50,
            Min = -100,
            Max = 0,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.Velocity:OnChanged(
        function()
            nigga.vel = Options.Velocity.Value
        end
    )

    LeftGroupBox321:AddToggle("Speedster", {Text = "Reverse Anti Lock"})

    LeftGroupBox321:AddSlider(
        "Speed1",
        {
            Text = "Reverse Anti Speed",
            Default = 3,
            Min = 0,
            Max = 5,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.Speed1:OnChanged(
        function()
            Reverse.Speed = Options.Speed1.Value
        end
    )

    LeftGroupBox456:AddToggle("un1", {Text = "Overhead Anti aim"})

    LeftGroupBox456:AddSlider(
        "un12",
        {
            Text = "Overhead Anti",
            Default = -1000,
            Min = 0,
            Max = -10000,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.un12:OnChanged(
        function()
            uu.niggerboy = Options.un12.Value
        end
    )

    LeftGroupBox1234:AddToggle(
        "CFrameSpeedToggle",
        {
            Text = "Enable",
            Default = false,
            Tooltip = " Cframe pro sanic "
        }
    ):AddKeyPicker(
        "Keypickersanic",
        {
            Default = "Z",
            SyncToggleState = false,
            Mode = "Toggle",
            Text = "CFrame",
            NoUI = false
        }
    )

    Toggles.CFrameSpeedToggle:OnChanged(
        function()
            Settings.cframespedtoggle = Toggles.CFrameSpeedToggle.Value
        end
    )

    LeftGroupBox1234:AddSlider(
        "speedgangyimocolerstop",
        {
            Text = "Speed",
            Default = 1,
            Min = 1,
            Max = 7,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.speedgangyimocolerstop:OnChanged(
        function()
            Settings.CFramespedamout = Options.speedgangyimocolerstop.Value
        end
    )

    LeftGroupBox1234:AddDropdown(
        "typeofcframe",
        {
            Values = {
                "Blatant",
                "Legit"
            },
            Default = "Blatant", -- number index of the value / string
            Multi = false, -- true / false, allows multiple choices to be selected
            Text = "Options",
            Tooltip = "Type of movment" -- Information shown when you hover over the textbox
        }
    )

    Options.typeofcframe:OnChanged(
        function()
            Settings.cframeoptions = Options.typeofcframe.Value
        end
    )

    Options.MyDropdown:OnChanged(
        function()
            getgenv().Aiming.Target.Part = Options.MyDropdown.Value
        end
    )

    LeftGroupBox12345:AddToggle("wristposk", {Text = "Enable"}):AddKeyPicker(
        "wristposkeypicker",
        {Text = "Wrist Position", Default = "X"}
    )

    Options.wristposkeypicker:OnClick(
        function()
            aiming.grippos.key = Enum.KeyCode[Options.wristposkeypicker.Value]
        end
    )
    LeftGroupBox12345:AddSlider("wristposheight", {Text = "Height", Min = 1, Max = 20, Rounding = 0, Default = 10})
    Options.wristposheight:OnChanged(
        function()
            aiming.grippos.height = Options.wristposheight.Value
        end
    )

    eigthballniaaa:AddToggle("Stomps", {Text = "Anti Stomp"})
    eigthballniaaa:AddToggle("Reloads", {Text = "Auto Reload"})

    eigthballniaaa:AddToggle(
        "AutoStomp",
        {
            Text = "Auto Stomp",
            Default = false
        }
    )

    eigthballniaaa:AddToggle(
        "Slowdownlol",
        {
            Text = "Anti Slowdown",
            Default = false
        }
    )

    dggdg:AddToggle("bslltotrt", {Text = "Spinbot"})

    dggdg:AddSlider(
        "dd12d",
        {
            Text = "Spinbot Direction",
            Default = 1,
            Min = 1,
            Max = 350,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.dd12d:OnChanged(
        function()
            settings.spinbotangle = Options.dd12d.Value
        end
    )

    Toggles.bslltotrt:OnChanged(
        function()
            settings.spinbotgangy = Toggles.bslltotrt.Value
        end
    )



    TpTabs233:AddDropdown(
        "FortniteVisual",
        {
            Values = {"Korblox", "Headless"},
            Default = nil,
            Multi = false,
            Text = "Misc",
            Tooltip = "Char Stuff"
        }
    )


    TpTabs233:AddDropdown(
        "ViusalFortnite",
        {
            Values = {"Beastmode", "Playful Vampire", "Super Happy Face"},
            Default = nil,
            Multi = false,
            Text = "Faces",
            Tooltip = "Char Stuff"
        }
    )



    TpTabs233:AddDropdown(
        "FortVis",
        {
            Values = {"FE Korblox", "FE Headless"},
            Default = nil,
            Multi = false,
            Text = "FE",
            Tooltip = "Char Stuff"
        }
    )


    Options.FortniteVisual:OnChanged(
        function()
            if Options.FortniteVisual.Value == "None" then
            elseif Options.FortniteVisual.Value == "Korblox" then
                local ply = game.Players.LocalPlayer
                local chr = ply.Character
                chr.RightLowerLeg.MeshId = "902942093"
                chr.RightLowerLeg.Transparency = "1"
                chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
                chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
                chr.RightFoot.MeshId = "902942089"
                chr.RightFoot.Transparency = "1"
            elseif Options.FortniteVisual.Value == "Headless" then
                game.Players.LocalPlayer.Character.Head.Transparency = 1
                game.Players.LocalPlayer.Character.Head.Transparency = 1
                for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
                if (v:IsA("Decal")) then
                v.Transparency = 1
                end
                end
            end
        end
    )






    Options.ViusalFortnite:OnChanged(
        function()
            if Options.ViusalFortnite.Value == "None" then
                

        



            elseif Options.ViusalFortnite.Value == "Beastmode" then
                local L_412_ = game.Players.LocalPlayer.Character
                local L_413_ = L_412_:WaitForChild("Head")
                local L_414_ = L_413_:WaitForChild("face")
                L_414_.Texture = "rbxassetid://127959433"
            elseif Options.ViusalFortnite.Value == "Playful Vampire" then
                local L_415_ = game.Players.LocalPlayer.Character
                local L_416_ = L_415_:WaitForChild("Head")
                local L_417_ = L_416_:WaitForChild("face")
                L_417_.Texture = "rbxassetid://2409281591"

            elseif Options.ViusalFortnite.Value == "Super Happy Face" then
                local L_415_ = game.Players.LocalPlayer.Character
                local L_416_ = L_415_:WaitForChild("Head")
                local L_417_ = L_416_:WaitForChild("face")
                L_417_.Texture = "rbxassetid://494290547"
                
            end
        end
    )


    Options.FortVis:OnChanged(
        function()
            if Options.FortVis.Value == "None" then
                

        



            elseif Options.FortVis.Value == "FE Headless" then
                local L_418_ = game.Players.LocalPlayer
                L_418_.Character.Head:BreakJoints()
                L_418_.Character.Head.Position = Vector3.new(0, 999999999999, 0)
            elseif Options.FortVis.Value == "FE Korblox" then
                game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()

                
            end
        end
    )

    spawn(
        function()
            game:GetService("RunService").Stepped:Connect(
                function()
                    if settings.spinbotgangy == true then
                        task.wait()
                        local LocalPlayer = game.Players.LocalPlayer
                        local Jit = Speed or math.random(30, 90)
                        LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(LocalPlayer.Character.HumanoidRootPart.CFrame.Position) *
                            CFrame.Angles(
                                0,
                                math.rad(settings.spinbotangle) + math.rad((math.random(1, 2) == 1 and Jit or -Jit)),
                                0
                            )
                    end
                end
            )
        end
    )


    --[[


    getgenv()["Desync"] = false

    local Players = game:GetService("Players");
    local Player = Players["LocalPlayer"];
    local Humanoid = Player["Character"]:WaitForChild("Humanoid");

    while getgenv()["Desync"] do
        local angle = math["random"](1,360) * math.rad(1)
    -- if Humanoid["Health"] > Humanoid["MaxHealth"]/2 then wait(1)end
        local dir = Vector3["new"](math["cos"](0,360,0), 0, math["sin"](angle))
        Humanoid:Move(dir)
        wait(math["random"]())
        Humanoid:Move(dir)
        game:GetService("RunService")["RenderStepped"]:wait()
    end

    ]]

    RightVisuals:AddToggle("Body", {Text = "Body Chams"}):AddColorPicker(
        "chamthingg",
        {
            Default = Color3.fromRGB(233, 203, 255), -- Bright green
            Title = "Some color" -- Optional. Allows you to have a custom color picker title (when you open it)
        }
    )
    Options.chamthingg:OnChanged(
        function()
            client.Color = Options.chamthingg.Value
        end
    )

    BulletTracers = true

    RightVisuals:AddToggle("cln", {Text = "Highlight Chams"}):AddColorPicker(
        "fuckvhaa",
        {Default = Color3.fromRGB(0, 255, 140)}
    ):AddColorPicker("vhafhck", {Default = Color3.fromRGB(0, 255, 140)})

    Options.fuckvhaa:OnChanged(
        function()
            whathuhhigh.FillColor = Options.fuckvhaa.Value
        end
    )

    Options.vhafhck:OnChanged(
        function()
            whathuhhigh.OutlineColor = Options.vhafhck.Value
        end
    )

    RightVisuals:AddLabel("Highlight Colors")

    LeftVisuals:AddToggle("raonbiwo", {Text = "Rainbow Body Chams"})

    LeftVisuals:AddSlider(
        "raib",
        {
            Text = "Rainbow Chams Speed Value",
            Default = 3,
            Min = 1,
            Max = 5,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.raib:OnChanged(
        function()
            client.chamspeed = Options.raib.Value
        end
    )

    LeftVisuals:AddToggle("rnbnb", {Text = "Rainbow Highlight Chams"})

    RunService.Stepped:connect(
        function()
            if Toggles.rnbnb.Value then
                whathuhhigh.FillColor = Color3.fromHSV(tick() % client.highlightspeed / client.highlightspeed, 1, 1)
                whathuhhigh.OutlineColor = Color3.fromHSV(tick() % client.highlightspeed / client.highlightspeed, 1, 1)
            end
        end
    )

    LeftVisuals:AddSlider(
        "brai",
        {
            Text = "Rainbow Highlight Speed Value",
            Default = 3,
            Min = 1,
            Max = 5,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.brai:OnChanged(
        function()
            client.highlightspeed = Options.brai.Value
        end
    )

    LeftVisuals:AddToggle("Rainbowworld", {Text = "Rainbow World Ambience"})

    LeftVisuals:AddSlider(
        "ddddaaaffgggg",
        {
            Text = "Rainbow Ambience Speed Value",
            Default = 3,
            Min = 1,
            Max = 5,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.ddddaaaffgggg:OnChanged(
        function()
            client.ambiencespeed = Options.ddddaaaffgggg.Value
        end
    )


    LeftVisuals:AddToggle("Brainbow", {Text = "Rainbow Backtrack Chams"})

    LeftVisuals:AddSlider(
        "dfadsdsajudsausda",
        {
            Text = "Rainbow Ambience Speed Value",
            Default = 3,
            Min = 1,
            Max = 5,
            Rounding = 1,
            Compact = false -- If set to true, then it will hide the label
        }
    )

    Options.dfadsdsajudsausda:OnChanged(
        function()
            Ballsakcs.Speed = Options.dfadsdsajudsausda.Value
        end
    )

    --[[    FOVHolder = true,
        ShowFOV = false,
        Radius = 76,]]
    local Tabs = {
        ["UI Settings"] = Window:AddTab("UI Settings")
    }

    local MenuGroup = Tabs["UI Settings"]:AddLeftGroupbox("Menu")
    local df1group = Tabs["UI Settings"]:AddRightGroupbox("Menu")

    Library:SetWatermark("demise.cc | rewrite > buyer build | v1.1.0")

    Library.KeybindFrame.Visible = false
    -- I set NoUI so it does not show up in the keybinds menu
    MenuGroup:AddButton(
        "Unload",
        function()
            Library:Unload()
        end
    )
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker(
        "MenuKeybind",
        {Default = "RightShift", NoUI = true, Text = "Menu keybind"}
    )
    df1group:AddToggle("Rainbow", {Text = "Rainbow Accent Color"})
    df1group:AddToggle("Keybinds", {Text = "Show Keybinds Menu", Default = true}):OnChanged(
        function()
            Library.KeybindFrame.Visible = Toggles.Keybinds.Value
        end
    )

    df1group:AddToggle("Watermark", {Text = "Show Watermark", Default = true}):OnChanged(
        function()
            Library:SetWatermarkVisibility(Toggles.Watermark.Value)
        end
    )

    Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu

    -- Addons:
    -- SaveManager (Allows you to have a configuration system)
    -- ThemeManager (Allows you to have a menu theme system)

    -- Hand the library over to our managers
    ThemeManager:SetLibrary(Library)
    SaveManager:SetLibrary(Library)

    -- Ignore keys that are used by ThemeManager.
    -- (we dont want configs to save themes, do we?)
    SaveManager:IgnoreThemeSettings()

    -- Adds our MenuKeybind to the ignore list
    -- (do you want each config to have a different menu key? probably not.)
    SaveManager:SetIgnoreIndexes({"MenuKeybind"})

    -- use case for doing it this way:
    -- a script hub could have themes in a global folder
    -- and game configs in a separate folder per game
    ThemeManager:SetFolder("MyScriptHub")
    SaveManager:SetFolder("MyScriptHub/specific-game")

    -- Builds our config menu on the right side of our tab
    SaveManager:BuildConfigSection(Tabs["UI Settings"])

    -- Builds our theme menu (with plenty of built in themes) on the left side
    -- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
    ThemeManager:ApplyToTab(Tabs["UI Settings"])

    -- You can use the SaveManager:LoadAutoloadConfig() to load a config
    -- which has been marked to be one that auto loads!

    --Plr.Character
    spawn(
        function()
            game:GetService("RunService").Stepped:Connect(
                function()
                    if settings.TracersOptions == "Character" then
                        if
                            Plr ~= nil and settings.TracersEnabled and getgenv().Aiming.Target.Enabled and Plr.Character and
                                Plr.Character:FindFirstChild("LowerTorso") and
                                Plr.Character.Humanoid.health > 0
                        then
                            local rayhit, hitpos =
                                workspace:FindPartOnRayWithIgnoreList(
                                Ray.new(
                                    Plr.Character[getgenv().Aiming.Target.Part].Position,
                                    Plr.Character[getgenv().Aiming.Target.Part].CFrame.LookVector * 1
                                ),
                                {CurrentCamera, Plr.Character},
                                false,
                                true,
                                ""
                            )

                            local viewportpointhit, isOnScreen = CurrentCamera:WorldToViewportPoint(hitpos)

                            local headpos =
                                CurrentCamera:WorldToViewportPoint(
                                Plr.Character[getgenv().Aiming.Target.Part].Position +
                                    (Plr.Character.LowerTorso.Velocity * getgenv().Aiming.Target.Prediction / 100)
                            )

                            local rayhit2, hitpos2 =
                                workspace:FindPartOnRayWithIgnoreList(
                                Ray.new(
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 1
                                ),
                                {CurrentCamera, game.Players.LocalPlayer.Character},
                                false,
                                true,
                                ""
                            )

                            local viewportpointhit2, isOnScreen2 = CurrentCamera:WorldToViewportPoint(hitpos)

                            local headpos2 =
                                CurrentCamera:WorldToViewportPoint(
                                game.Players.LocalPlayer.Character.LowerTorso.Position +
                                    (game.Players.LocalPlayer.Character.LowerTorso.Velocity * 0.007)
                            )

                            line.To = Vector2.new(headpos.X, headpos.Y)
                            line.From = Vector2.new(headpos2.X, headpos2.Y)
                            local worldPosition = Plr.Character.HumanoidRootPart.Position
                            local screenPosition, onScreen = CurrentCamera:WorldToScreenPoint(worldPosition)

                            if onScreen then
                                line.Visible = true
                            else
                                line.Visible = false
                            end
                            if settings.Raingaybow == true then
                            else
                                line.Color = _G.FUCKYUN
                            end
                        else
                            line.Visible = false
                        end
                    elseif settings.TracersOptions == "Mouse" then
                        if
                            Plr ~= nil and settings.TracersEnabled and getgenv().Aiming.Target.Enabled and Plr.Character and
                                Plr.Character:FindFirstChild("LowerTorso") and
                                Plr.Character.Humanoid.health > 0
                        then
                            idx = 10

                            local rayhit5, hitpos5 =
                                workspace:FindPartOnRayWithIgnoreList(
                                Ray.new(
                                    Plr.Character[getgenv().Aiming.Target.Part].Position,
                                    Plr.Character[getgenv().Aiming.Target.Part].CFrame.LookVector * idx
                                ),
                                {CurrentCamera, Plr.Character},
                                false,
                                true,
                                ""
                            )

                            local viewportpointhit5, isOnScreen5 = CurrentCamera:WorldToViewportPoint(hitpos5)
                            local headpos5 =
                                CurrentCamera:WorldToViewportPoint(
                                Plr.Character[getgenv().Aiming.Target.Part].Position +
                                    (Plr.Character.LowerTorso.Velocity * getgenv().Aiming.Target.Prediction / 100)
                            )
                            line.To = Vector2.new(headpos5.X, headpos5.Y)
                            line.From =
                                Vector2.new(
                                game.Players.LocalPlayer:GetMouse().X,
                                game.Players.LocalPlayer:GetMouse().Y + 35
                            )
                            line.Visible = true

                            if settings.Raingaybow == true then
                            else
                                line.Color = _G.FUCKYUN
                            end
                        else
                            line.Visible = false
                        end
                    end
                end
            )
        end
    )

    getgenv().xdstrafekey = Enum.KeyCode.Q

    local ballssack = game:GetService("CoreGui")

    UserInputService.InputBegan:Connect(
        function(keygo, ok)
            if (not ok) then
                if (keygo.KeyCode == getgenv().xdstrafekey) then
                    if
                        getgenv().Aiming.Target.Enabled and Plr.Character and Plr.Character:FindFirstChild("LowerTorso") and
                            Options.strxfetype.Value == "Orbit" and
                            dfff1.targetstwafeuwu == true
                    then
                        spawn(
                            function()
                                -- uwu dev forums
                                repeat
                                    task.wait()

                                    for i = 0, 360, dfff1.speed do
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            CFrame.new(Plr.Character.HumanoidRootPart.Position) *
                                            CFrame.Angles(0, math.rad(i), 0) *
                                            CFrame.new(dfff1.distance, dfff1.xposition, z1.zposition)
                                        --CFrame.new(dfff1.distance, 0, 0)
                                        task.wait()
                                    end
                                until Plr.Character.Humanoid.health < 1 or getgenv().Aiming.Target.Enabled == false or
                                    --Plr.Character == false or

                                    dfff1.targetstwafeuwu == false
                            end
                        )
                    end
                end
            end
        end
    )

    UserInputService.InputBegan:Connect(
        function(keypicks, lol)
            if (not lol) then
                if (keypicks.KeyCode == getgenv().xdstrafekey) then
                    if
                        getgenv().Aiming.Target.Enabled and Plr.Character and Plr.Character:FindFirstChild("LowerTorso") and
                            Options.strxfetype.Value == "Sky" and
                            dfff1.targetstwafeuwu == true
                    then
                        spawn(
                            function()
                                repeat
                                    task.wait()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        Plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, dfff1.xposition, 0)
                                until Plr.Character.Humanoid.health < 1 or getgenv().Aiming.Target.Enabled == false or
                                    --Plr.Character == false or

                                    dfff1.targetstwafeuwu == false
                            end
                        )
                    end
                end
            end
        end
    )

    UserInputService.InputBegan:Connect(
        function(pickeys, lmao)
            if (not lmao) then
                if (pickeys.KeyCode == getgenv().xdstrafekey) then
                    if
                        getgenv().Aiming.Target.Enabled and Plr.Character and Plr.Character:FindFirstChild("LowerTorso") and
                            Options.strxfetype.Value == "Side" and
                            dfff1.targetstwafeuwu == true
                    then
                        spawn(
                            function()
                                repeat
                                    task.wait()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        Plr.Character.HumanoidRootPart.CFrame * CFrame.new(dfff1.distance, 0, 0)
                                until Plr.Character.Humanoid.health < 1 or getgenv().Aiming.Target.Enabled == false or
                                    --Plr.Character == false or

                                    dfff1.targetstwafeuwu == false
                            end
                        )
                    end
                end
            end
        end
    )

    game:GetService("RunService").Heartbeat:Connect(
        function()
            if Toggles.cln.Value then
                --   highlight.FillColor = Color3.fromRGB(255,255,255)
                --[[
                
                
                
                local players = game:GetService("Players")
                local localPlayer = plr.LocalPlayer
                local storage = {}  
            ]]
                --[[  for a,b in pairs(game.Players:GetChildren()) do
                        for i,v in pairs(b.Character:GetChildren()) do
                        if v:IsA("BasePart") then
                ]]
                whathuhhigh.Adornee = LocalPlayer.Character
            else
                whathuhhigh.Adornee = nil
            end

            if Toggles.Anti1.Value and Settings.LOL == "Underground" then
                task.wait()
                local oldvel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldvel.X, nigga.vel, oldvel.Z)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldvel.X, oldvel.Y, oldvel.Z)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldvel.X, nigga.vel, oldvel.Z)
                game.Players.LocalPlayer.Character.Humanoid.HipHeight = nigga.hip
            elseif Toggles.Anti1.Value == false then
                game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2
            end

            if Toggles.Speedster.Value then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                    -game.Players.LocalPlayer.Character.Humanoid.MoveDirection * Reverse.Speed
            end

            if Toggles.CFrameSpeedToggle.Value and Settings.cframeoptions == "Blatant" then
                local state = Options.Keypickersanic:GetState()
                if state then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                        game.Players.LocalPlayer.Character.Humanoid.MoveDirection * Settings.CFramespedamout
                end
            end

            if Toggles.CFrameSpeedToggle.Value and Settings.cframeoptions == "Legit" then
                local state = Options.Keypickersanic:GetState()
                if state then
                    local char = plr.Character
                    char.HumanoidRootPart.Velocity = char.HumanoidRootPart.CFrame.lookVector * Settings.CFramespedamout * 62
                end
            end

            if Toggles.Body.Value then
                game.Players.LocalPlayer.Character.LeftHand.Material = "ForceField"
                game.Players.LocalPlayer.Character.RightHand.Material = "ForceField"
                game.Players.LocalPlayer.Character.LeftLowerArm.Material = "ForceField"
                game.Players.LocalPlayer.Character.RightLowerArm.Material = "ForceField"
                game.Players.LocalPlayer.Character.LeftUpperArm.Material = "ForceField"
                game.Players.LocalPlayer.Character.RightUpperArm.Material = "ForceField"
                game.Players.LocalPlayer.Character.LeftFoot.Material = "ForceField"
                game.Players.LocalPlayer.Character.RightFoot.Material = "ForceField"
                game.Players.LocalPlayer.Character.LeftLowerLeg.Material = "ForceField"
                game.Players.LocalPlayer.Character.RightLowerLeg.Material = "ForceField"
                game.Players.LocalPlayer.Character.UpperTorso.Material = "ForceField"
                game.Players.LocalPlayer.Character.LowerTorso.Material = "ForceField"
                game.Players.LocalPlayer.Character.LeftUpperLeg.Material = "ForceField"
                game.Players.LocalPlayer.Character.RightUpperLeg.Material = "ForceField"
                game.Players.LocalPlayer.Character.Head.Material = "ForceField"
                LocalPlayer.Character.LeftHand.Color = client.Color
                LocalPlayer.Character.RightHand.Color = client.Color
                LocalPlayer.Character.LeftLowerArm.Color = client.Color
                LocalPlayer.Character.RightLowerArm.Color = client.Color
                LocalPlayer.Character.LeftUpperArm.Color = client.Color
                LocalPlayer.Character.RightUpperArm.Color = client.Color
                LocalPlayer.Character.LeftFoot.Color = client.Color
                LocalPlayer.Character.RightFoot.Color = client.Color
                LocalPlayer.Character.LeftLowerLeg.Color = client.Color
                LocalPlayer.Character.RightLowerLeg.Color = client.Color
                LocalPlayer.Character.UpperTorso.Color = client.Color
                LocalPlayer.Character.LowerTorso.Color = client.Color
                LocalPlayer.Character.LeftUpperLeg.Color = client.Color
                LocalPlayer.Character.RightUpperLeg.Color = client.Color
                LocalPlayer.Character.Head.Color = client.Color
            else
                game.Players.LocalPlayer.Character.LeftHand.Material = "Plastic"
                game.Players.LocalPlayer.Character.RightHand.Material = "Plastic"
                game.Players.LocalPlayer.Character.LeftLowerArm.Material = "Plastic"
                game.Players.LocalPlayer.Character.RightLowerArm.Material = "Plastic"
                game.Players.LocalPlayer.Character.LeftUpperArm.Material = "Plastic"
                game.Players.LocalPlayer.Character.RightUpperArm.Material = "Plastic"
                game.Players.LocalPlayer.Character.LeftFoot.Material = "Plastic"
                game.Players.LocalPlayer.Character.RightFoot.Material = "Plastic"
                game.Players.LocalPlayer.Character.LeftLowerLeg.Material = "Plastic"
                game.Players.LocalPlayer.Character.RightLowerLeg.Material = "Plastic"
                game.Players.LocalPlayer.Character.UpperTorso.Material = "Plastic"
                game.Players.LocalPlayer.Character.LowerTorso.Material = "Plastic"
                game.Players.LocalPlayer.Character.LeftUpperLeg.Material = "Plastic"
                game.Players.LocalPlayer.Character.RightUpperLeg.Material = "Plastic"
                game.Players.LocalPlayer.Character.Head.Material = "Plastic"
            end

            if Toggles.Body.Value and Toggles.raonbiwo.Value then
                LocalPlayer.Character.LeftHand.Color = Color3.fromHSV(tick() % client.chamspeed / client.chamspeed, 1, 1)
                LocalPlayer.Character.RightHand.Color = Color3.fromHSV(tick() % client.chamspeed / client.chamspeed, 1, 1)
                LocalPlayer.Character.LeftLowerArm.Color =
                    Color3.fromHSV(tick() % client.chamspeed / client.chamspeed, 1, 1)
                LocalPlayer.Character.RightLowerArm.Color =
                    Color3.fromHSV(tick() % client.chamspeed / client.chamspeed, 1, 1)
                LocalPlayer.Character.LeftUpperArm.Color =
                    Color3.fromHSV(tick() % client.chamspeed / client.chamspeed, 1, 1)
                LocalPlayer.Character.RightUpperArm.Color =
                    Color3.fromHSV(tick() % client.chamspeed / client.chamspeed, 1, 1)
                LocalPlayer.Character.LeftFoot.Color = Color3.fromHSV(tick() % client.chamspeed / client.chamspeed, 1, 1)
                LocalPlayer.Character.RightFoot.Color = Color3.fromHSV(tick() % client.chamspeed / client.chamspeed, 1, 1)
                LocalPlayer.Character.LeftLowerLeg.Color =
                    Color3.fromHSV(tick() % client.chamspeed / client.chamspeed, 1, 1)
                LocalPlayer.Character.RightLowerLeg.Color =
                    Color3.fromHSV(tick() % client.chamspeed / client.chamspeed, 1, 1)
                LocalPlayer.Character.UpperTorso.Color = Color3.fromHSV(tick() % client.chamspeed / client.chamspeed, 1, 1)
                LocalPlayer.Character.LowerTorso.Color = Color3.fromHSV(tick() % client.chamspeed / client.chamspeed, 1, 1)
                LocalPlayer.Character.LeftUpperLeg.Color =
                    Color3.fromHSV(tick() % client.chamspeed / client.chamspeed, 1, 1)
                LocalPlayer.Character.RightUpperLeg.Color =
                    Color3.fromHSV(tick() % client.chamspeed / client.chamspeed, 1, 1)
                LocalPlayer.Character.Head.Color = Color3.fromHSV(tick() % client.chamspeed / client.chamspeed, 1, 1)
            end


            if Toggles.Brainbow.Value and Toggles.CloneChamsEnabled.Value then
                Ballsakcs.Color = Color3.fromHSV(tick() % Ballsakcs.Speed / Ballsakcs.Speed, 1, 1)
            end
            if Toggles.World.Value then
                game:GetService("Lighting").ColorCorrection.TintColor = client.Worldc
            else
                if Toggles.Rainbowworld.Value then
                    game:GetService("Lighting").ColorCorrection.TintColor =
                        Color3.fromHSV(tick() % client.ambiencespeed / client.ambiencespeed, 1, 1)
                else
                    game:GetService("Lighting").ColorCorrection.TintColor = Color3.fromRGB(255, 255, 255)
                end
            end

            --    game:GetService("ColorCorrectionEffect").ColorCorrection.Saturation = client.Worldc

            if Toggles.st1.Value then
                game:GetService("Lighting").ColorCorrection.Saturation = client.Saturation1
            else
                game:GetService("Lighting").ColorCorrection.Saturation = 0
            end

            if Toggles.st12.Value then
                game:GetService("Lighting").ColorCorrection.Contrast = client.Contrast1
            else
                game:GetService("Lighting").ColorCorrection.Contrast = 0
            end

            if Toggles.st123.Value then
                game:GetService("Lighting").ColorCorrection.Brightness = client.Brightness1
            else
                game:GetService("Lighting").ColorCorrection.Brightness = 0
            end

            if Toggles.Reloads.Value then
                if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
                    if
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild(
                            "Ammo"
                        )
                    then
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild(
                                "Ammo"
                            ).Value <= 0
                        then
                            game:GetService("ReplicatedStorage").MainEvent:FireServer(
                                "Reload",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
                            )
                        end
                    end
                end
            end

            if Toggles.Stomps.Value then
                if game.Players.LocalPlayer.Character.Humanoid.Health <= 5 then
                    for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v:Destroy()
                        end
                    end
                end
            end

            while Toggles.Niggas.Value do
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                wait(bootycall.bootyduration)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                wait(bootycall.bootyduration)
            end

            if Toggles.Slowdownlol.Value then
                local player = game.Players.LocalPlayer
                local DeletePart =
                    player.Character.BodyEffects.Movement:FindFirstChild("NoJumping") or
                    player.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk") or
                    player.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed")
                if DeletePart then
                    DeletePart:Destroy()
                end
                if player.Character.BodyEffects.Reload.Value == true then
                    player.Character.BodyEffects.Reload.Value = false
                end
            end

            if Toggles.AutoStomp.Value then
                game.ReplicatedStorage.MainEvent:FireServer("Stomp")
                wait(0.2)
            end
        end


            
    )







    game:GetService("RunService").Heartbeat:Connect(
        function()

            if
                getgenv().Aiming.Target.Enabled and Plr.Character and Plr.Character:FindFirstChild("LowerTorso") and
                    Toggles.lolxdniggaballs.Value
            then
                highlight.Adornee = Plr.Character
            else
                highlight.Adornee = nil
            end



            if
            getgenv().Aiming.Target.Enabled and Plr.Character and Plr.Character:FindFirstChild("LowerTorso") and
                Toggles.loooool.Value
        then
            Plr.Character.Head.Material = "ForceField"
            Plr.Character.LeftHand.Material = "ForceField"
            Plr.Character.RightHand.Material = "ForceField"
            Plr.Character.LeftLowerArm.Material = "ForceField"
            Plr.Character.RightLowerArm.Material = "ForceField"
            Plr.Character.LeftUpperArm.Material = "ForceField"
            Plr.Character.RightUpperArm.Material = "ForceField"
            Plr.Character.LeftFoot.Material = "ForceField"
            Plr.Character.RightFoot.Material = "ForceField"
            Plr.Character.LeftLowerLeg.Material = "ForceField"
            Plr.Character.RightLowerLeg.Material = "ForceField"
            Plr.Character.UpperTorso.Material = "ForceField"
            Plr.Character.LowerTorso.Material = "ForceField"
            Plr.Character.LeftUpperLeg.Material = "ForceField"
            Plr.Character.RightUpperLeg.Material = "ForceField"
        else
            Plr.Character.Head.Material = "Plastic"
            Plr.Character.LeftHand.Material = "Plastic"
            Plr.Character.RightHand.Material = "Plastic"
            Plr.Character.LeftLowerArm.Material = "Plastic"
            Plr.Character.RightLowerArm.Material = "Plastic"
            Plr.Character.LeftUpperArm.Material = "Plastic"
            Plr.Character.RightUpperArm.Material = "Plastic"
            Plr.Character.LeftFoot.Material = "Plastic"
            Plr.Character.RightFoot.Material = "Plastic"
            Plr.Character.LeftLowerLeg.Material = "Plastic"
            Plr.Character.RightLowerLeg.Material = "Plastic"
            Plr.Character.UpperTorso.Material = "Plastic"
            Plr.Character.LowerTorso.Material = "Plastic"
            Plr.Character.LeftUpperLeg.Material = "Plastic"
            Plr.Character.RightUpperLeg.Material = "Plastic"
        end



            if
                getgenv().Aiming.Target.Enabled and Plr.Character and Plr.Character:FindFirstChild("LowerTorso") and
                    Toggles.loooool.Value and
                    Toggles.xdlolll.Value
            then
                Plr.Character.LeftHand.Color = Color3.fromHSV(tick() % client.deesp / client.deesp, 1, 1)
                Plr.Character.RightHand.Color = Color3.fromHSV(tick() % client.deesp / client.deesp, 1, 1)
                Plr.Character.LeftLowerArm.Color = Color3.fromHSV(tick() % client.deesp / client.deesp, 1, 1)
                Plr.Character.RightLowerArm.Color = Color3.fromHSV(tick() % client.deesp / client.deesp, 1, 1)
                Plr.Character.LeftUpperArm.Color = Color3.fromHSV(tick() % client.deesp / client.deesp, 1, 1)
                Plr.Character.RightUpperArm.Color = Color3.fromHSV(tick() % client.deesp / client.deesp, 1, 1)
                Plr.Character.LeftFoot.Color = Color3.fromHSV(tick() % client.deesp / client.deesp, 1, 1)
                Plr.Character.RightFoot.Color = Color3.fromHSV(tick() % client.deesp / client.deesp, 1, 1)
                Plr.Character.LeftLowerLeg.Color = Color3.fromHSV(tick() % client.deesp / client.deesp, 1, 1)
                Plr.Character.RightLowerLeg.Color = Color3.fromHSV(tick() % client.deesp / client.deesp, 1, 1)
                Plr.Character.UpperTorso.Color = Color3.fromHSV(tick() % client.deesp / client.deesp, 1, 1)
                Plr.Character.LowerTorso.Color = Color3.fromHSV(tick() % client.deesp / client.deesp, 1, 1)
                Plr.Character.LeftUpperLeg.Color = Color3.fromHSV(tick() % client.deesp / client.deesp, 1, 1)
                Plr.Character.RightUpperLeg.Color = Color3.fromHSV(tick() % client.deesp / client.deesp, 1, 1)
                Plr.Character.Head.Color = Color3.fromHSV(tick() % client.deesp / client.deesp, 1, 1)
            end

            if Toggles.togglemy2.Value then
                Part.Color = Color3.fromHSV(tick() % client.deesp / client.deesp, 1, 1)
            end
        end
    )

    spawn(
        function()
            while task.wait() do
                if Toggles.un1.Value then
                    while Toggles.un1.Value do
                        local oldVelocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
                        local oldVelocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(-2, 15, -2)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                            Vector3.new(oldVelocity.X, oldVelocity.Y, oldVelocity.Z)
                        task.wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(2, 30, 2)

                        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                            Vector3.new(oldVelocity.X, -140, oldVelocity.Z)
                        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2.8674
                        task.wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                            Vector3.new(oldVelocity.X, 700, oldVelocity.Z)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, -140, 140)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                            Vector3.new(oldVelocity.X, -26969000000000000000000000000000000000000000000000000696, 140) -- change the .y to the number (make it negative)

                        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                            Vector3.new(oldVelocity.X, oldVelocity.Y, oldVelocity.Z)
                    end
                end
            end
        end
    )

    task.spawn(
        function()
            while game:GetService("RunService").RenderStepped:Wait() do
                if Toggles.Rainbow.Value == true then
                    local Registry = Window.Holder.Visible and Library.Registry or Library.HudRegistry

                    for Idx, Object in next, Registry do
                        for Property, ColorIdx in next, Object.Properties do
                            if ColorIdx == "AccentColor" or ColorIdx == "AccentColorDark" then
                                local Instance = Object.Instance
                                local yPos = Instance.AbsolutePosition.Y

                                local Mapped = Library:MapValue(yPos, 0, 1080, 0, 0.3) / 0.45
                                local Color = Color3.fromHSV((Library.CurrentRainbowHue - Mapped) % 1, 0.59, 1)

                                if ColorIdx == "AccentColorDark" then
                                    Color = Library:GetDarkerColor(Color)
                                end

                                Instance[Property] = Color
                            end
                        end
                    end
                end
            end
        end
    )

    Toggles.Rainbow:OnChanged(
        function()
            if not Toggles.Rainbow.Value then
                UpdateTheme()
            end
        end
    )

    --getgenv()["Watermark"] = true
