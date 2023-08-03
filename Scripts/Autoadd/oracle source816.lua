local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/OperaGXE/Oracle.lua/main/ui.lua"))()
local esp = loadstring(game:HttpGet("https://raw.githubusercontent.com/Notaskid/storage/main/esplibv2.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/OperaGXE/Oracle.lua/main/dhacbypass.lua"))()
local Yung = loadstring(game:HttpGet("https://raw.githubusercontent.com/slattii/sr/main/resources/3d%20circle"))()
local Circle2222 = Yung:New3DCircle()
Circle2222.Visible = false
Circle2222.ZIndex = 1
Circle2222.Transparency = 1
Circle2222.Color = Color3.fromRGB(255, 255, 255)
Circle2222.Thickness = 1

library.theme.accentcolor = Color3.fromRGB(196, 255, 219)
library.theme.accentcolor2 = Color3.fromRGB(217, 255, 233)
local window = library:CreateWindow("oracle.lua", Vector2.new(492, 598), Enum.KeyCode.RightShift) -- 2nd argument is the size, 3rd is the show/hide ofc

esp.settings.tracersorigin = "Top"

--//Tabs
local legittab = window:CreateTab("Legit")
local ragetab = window:CreateTab("Rage")
local visualstab = window:CreateTab("Visuals")
local misctab = window:CreateTab("Misc")
local extratab = window:CreateTab("Extra")

--// tables
local aiming = {
    targetaim = {
        enabled = false,
        targeting = false,
        view = false,
        chat = false,
        ben = false,
        autoshoot = false,
        autoprediction = false,
        key = Enum.KeyCode.Q,
        prediction = 0.13,
        hitpart = "LowerTorso"
    },
    tracers = {
        enabled = false,
        showprediction = false,
        rainbow = false,
        colour = Color3.fromRGB(255, 255, 255),
        from = "Penis"
    },
    orbit = {
        enabled = false,
        visualization = false,
        vc = Color3.fromRGB(255, 255, 255),
        speed = 2,
        distance = 10
    },
    visualization = {
        part = false,
        circle = false,
        mode = "Part",
        partcolour = Color3.fromRGB(255, 255, 255),
        circlecolour = Color3.fromRGB(255, 255, 255)
    },
    fov = {
        enabled = false,
        filled = false,
        thickness = 2,
        sides = 350,
        radius = 50,
        colour = Color3.fromRGB(255, 255, 255),
        option = "Circle"
    },
    od = {
        unlockko = false,
        tpko = false,
        stompko = false,
        stomptime = 3
    }
}

local CurrentCamera = game:GetService("Workspace").CurrentCamera
local LocalMouse = game.Players.LocalPlayer:GetMouse()

local circle = Drawing.new("Circle")
circle.Color = Color3.fromRGB(255, 255, 255)
circle.Thickness = 2
circle.NumSides = 350
circle.Transparency = 0.6
circle.Radius = 70
circle.Visible = false
circle.Filled = false

local circlev = Drawing.new("Circle")
circlev.Color = Color3.fromRGB(255, 255, 255)
circlev.Thickness = 2
circlev.NumSides = 350
circlev.Transparency = 0.6
circlev.Radius = 50
circlev.Visible = false
circlev.Filled = false

local line = Drawing.new("Line")
line.Visible = false
line.From = Vector2.new(0, 0)
line.To = Vector2.new(200, 200)
_G.SpecterL = Color3.fromRGB(255, 255, 255)
line.Color = _G.SpecterL
line.Thickness = 1.26
line.Transparency = 1.

-- not mine lol
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
        if keyinput.KeyCode == aiming.targetaim.key then
            aiming.targetaim.targeting = not aiming.targetaim.targeting
            if aiming.targetaim.targeting then
                target = getClosestPlayerToCursor()
                targetplr = tostring(target)

                if aiming.targetaim.chat == true then
                    local args = {
                        [1] = "Targeting " .. tostring(targetplr),
                        [2] = "All"
                    }

                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                        unpack(args)
                    )
                end

                if aiming.targetaim.view == true then
                    if game.Players[targetplr].Character:FindFirstChild("Humanoid") then
                        CurrentCamera.CameraSubject = game.Players[targetplr].Character.Humanoid
                    end
                end

                if aiming.targetaim.ben == true then
                    local benlocked = Instance.new("Sound")
                    benlocked.Name = "e"
                    benlocked.Volume = aiming.targetaim.benvolume
                    benlocked.SoundId = "rbxassetid://8819783960"
                    benlocked.Parent = game:GetService("SoundService")
                    benlocked.Playing = true
                end

                if targetplr ~= nil and aiming.visualization.mode == "Part" then
                    local ipar = Instance.new("Part", game.Workspace)
                    ipar.Name = "uwu"
                    ipar.Anchored = true
                    ipar.CanCollide = false
                    ipar.Transparency = 0
                    ipar.Parent = game.Workspace
                    ipar.Shape = Enum.PartType.Ball
                    ipar.Size = Vector3.new(1, 0.7, 2)
                    ipar.Color = Color3.fromRGB(170, 0, 255)
                    ipar.Material = "Neon"
                    spawn(
                        function()
                            game:GetService("RunService").Stepped:Connect(
                                function()
                                    ipar.Position =
                                        game.Players[targetplr].Character.HumanoidRootPart.Position +
                                        (game.Players[targetplr].Character.LowerTorso.Velocity *
                                            aiming.targetaim.prediction)
                                end
                            )
                        end
                    )
                end

                if aiming.tracers.rainbow == true then 
                    spawn(function()
                    for i = 0, 1, 0.001 do
                        line.Color = Color3.fromHSV(i, 1, 1)
                        task.wait()
                    end
                    end)
                end 

                if aiming.orbit.enabled == true then
                    spawn(
                        function()
                            repeat
                                task.wait()

                                for i = 0, 360, aiming.orbit.speed do
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        CFrame.new(game.Players[targetplr].Character.HumanoidRootPart.Position) *
                                        CFrame.Angles(0, math.rad(i), 0) *
                                        CFrame.new(aiming.orbit.distance, 0, 0)
                                    task.wait()
                                end
                            until game.Players[targetplr].Character.Humanoid.health < 1 or aiming.orbit.enabled == false or
                                aiming.targetaim.targeting == false
                        end
                    )
                end
            elseif not aiming.targetaim.targeting then
                if aiming.targetaim.chat == true then
                    local args = {
                        [1] = "Untargeting " .. tostring(targetplr),
                        [2] = "All"
                    }

                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                        unpack(args)
                    )
                end

                if aiming.targetaim.view == true then
                    CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                end

                if aiming.visualization.mode == "Part" then
                    local vvv = game:GetService("Workspace").uwu
                    vvv:Destroy()
                end

                if aiming.targetaim.ben == true then
                    local benunlocked = Instance.new("Sound")
                    benunlocked.Name = "Penis"
                    benunlocked.Volume = aiming.targetaim.benvolume
                    benunlocked.SoundId = "rbxassetid://8819782435"
                    benunlocked.Parent = game:GetService("SoundService")
                    benunlocked.Playing = true
                end
            end
        end
    end
)

--//Legit
local legit1 = ragetab:CreateSector("Target Aim", "left")

local enabletarget =
    legit1:AddToggle(
    "Enabled",
    false,
    function(v)
        aiming.targetaim.enabled = v
    end
)

local showfov =
    legit1:AddToggle(
    "Draw FOV",
    false,
    function(v)
        aiming.fov.enabled = v
    end
)

local cp =
    showfov:AddColorpicker(
    Color3.fromRGB(196, 255, 219),
    function(c)
        aiming.fov.colour = c
    end
)

legit1:AddSlider(
    "Prediction",
    0,
    0.125,
    0.5,
    1000,
    function(v)
        aiming.targetaim.prediction = v
    end
)

legit1:AddDropdown(
    "HitPart",
    {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso"},
    "LowerTorso",
    false,
    function(v)
        aiming.targetaim.hitpart = v
    end
)

local autoprediction =
    legit1:AddToggle(
    "Ping Based Prediction",
    false,
    function(v)
        aiming.targetaim.autoprediction = v
    end
)

local viewopponent =
    legit1:AddToggle(
    "View Opponent",
    false,
    function(v)
        aiming.targetaim.view = v
    end
)

local viewopponent =
    legit1:AddToggle(
    "Chat Mode",
    false,
    function(v)
        aiming.targetaim.chat = v
    end
)

local tracerslol =
    legit1:AddToggle(
    "Tracers",
    false,
    function(v)
        aiming.tracers.enabled = v
    end
)

local cp2 =
    tracerslol:AddColorpicker(
    Color3.fromRGB(196, 255, 219),
    function(c)
        aiming.tracers.colour = c
    end
)

local rainbowtracer =
    legit1:AddToggle(
    "Rainbow Tracer",
    false,
    function(v)
        aiming.tracers.rainbow = v
    end
)

legit1:AddDropdown(
    "Tracer home",
    {"Head", "Torso", "Penis", "Cursor"},
    "Penis",
    false,
    function(v)
        aiming.tracers.from = v
    end
)

local legit2 = ragetab:CreateSector("Strafe", "left")

local orbitlol =
    legit2:AddToggle(
    "Enable",
    false,
    function(v)
        aiming.orbit.enabled = v
    end
)

local showcircle =
    legit2:AddToggle(
    "Visualize Path",
    false,
    function(v)
        aiming.orbit.visualization = v
    end
)

local cp3 =
    showcircle:AddColorpicker(
    Color3.fromRGB(196, 255, 219),
    function(c)
        aiming.orbit.vc = c
    end
)



legit2:AddSlider(
    "Speed",
    1,
    2,
    10,
    1,
    function(v)
        aiming.orbit.speed = v
    end
)

legit2:AddSlider(
    "Distance",
    1,
    10,
    20,
    1,
    function(v)
        aiming.orbit.distance = v
    end
)

local legit3 = ragetab:CreateSector("Visualization", "left")

legit3:AddDropdown(
    "Options",
    {"Part", "Circle"},
    "Part",
    false,
    function(v)
        aiming.visualization.mode = v
    end
)

local legit4 = ragetab:CreateSector("Fov Adjustments", "right")
local filled =
    legit4:AddToggle(
    "FOV Filled",
    false,
    function(v)
        aiming.fov.filled = v
    end
)

legit4:AddSlider(
    "FOV Thickness",
    1,
    2,
    10,
    1,
    function(v)
        aiming.fov.thickness = v
    end
)

legit4:AddSlider(
    "FOV Radius",
    1,
    70,
    250,
    1,
    function(v)
        aiming.fov.radius = v
    end
)

legit4:AddSlider(
    "FOV Sides",
    1,
    350,
    500,
    1,
    function(v)
        circle.NumSides = v
    end
)

legit4:AddDropdown(
    "Shape",
    {"Circle", "Hexagon", "Square", "Custom"},
    "Circle",
    false,
    function(v)
        aiming.fov.option = v
    end
)

local legit5 = ragetab:CreateSector("On Death", "right")

local unlockonknocked =
    legit5:AddToggle(
    "Unlock When Knocked",
    false,
    function(v)
        aiming.od.unlockko = v
    end
)

local unlockonknocked =
    legit5:AddToggle(
    "Teleport When Knocked",
    false,
    function(v)
        aiming.od.tpko = v
    end
)

local unlockonknocked =
    legit5:AddToggle(
    "Stomp After Knocked",
    false,
    function(v)
        aiming.od.stompko = v
    end
)

legit5:AddSlider(
    "Stomp Interval ",
    0,
    0.12,
    1,
    100,
    function(v)
        aiming.od.stomptime = v
    end
)

local legit6 = ragetab:CreateSector("Auto Shoot", "right")

legit6:AddToggle(
    "Enable",
    false,
    function(v)
        aiming.targetaim.autoshoot = v
    end
)

local legit7 = ragetab:CreateSector("Extra", "right")

legit7:AddToggle(
    "Ben Mode",
    false,
    function(v)
        aiming.targetaim.ben = v
    end
)

legit7:AddSlider(
    "Ben Volume",
    0,
    0.83,
    1,
    100,
    function(v)
        aiming.targetaim.benvolume = v
    end
)

--//Rage

--//Visuals
local visualsesp = visualstab:CreateSector("ESP", "left")

visualsesp:AddToggle(
    "Enable",
    false,
    function(v)
        esp.settings.enabled = v
    end
)

visualsesp:AddToggle(
    "Boxes",
    false,
    function(v)
        esp.settings.boxes = v
    end
)

visualsesp:AddToggle(
    "Healthbars",
    false,
    function(v)
        esp.settings.healthbars = v
    end
)

visualsesp:AddToggle(
    "Names",
    false,
    function(v)
        esp.settings.names = v
    end
)

visualsesp:AddToggle(
    "Tracers",
    false,
    function(v)
        esp.settings.tracers.enabled = v
    end
)

esp:Init()

local visuals2 = visualstab:CreateSector("Game Visuals", "left")

visuals2:AddToggle(
    "Disco Mode",
    false,
    function(v)
        util.visuals.disco = v
    end
)

local espsettings = visualstab:CreateSector("ESP Settings", "right")

--[[        espsettings:AddDropdown('Tracer Orgin', {"Top", "Left", "Right", "Bottom", "Center", "Mouse"}, {"Top"}, false, function(v)
            esp.settings.tracersorigin = v
        end)]]
espsettings:AddSlider(
    "Refresh Rate",
    0,
    5,
    1000,
    1,
    function(v)
        esp.settings.refreshrate = v
    end
)

--[[espsettings:AddSlider("Max Distance", 0, 2500, 2500, 1, function(v)
            esp.settings.maxdistance = v
        end)]]
--//Misc
local misc1 = misctab:CreateSector("Misc", "left")

local misc2 = misctab:CreateSector("Configuration", "right")

misc1:AddButton(
    "Fly (X)",
    function()
        local plr = game.Players.LocalPlayer
        local mouse = plr:GetMouse()

        localplayer = plr

        if workspace:FindFirstChild("Core") then
            workspace.Core:Destroy()
        end

        local Core = Instance.new("Part")
        Core.Name = "Core"
        Core.Size = Vector3.new(0.05, 0.05, 0.05)

        spawn(
            function()
                Core.Parent = workspace
                local Weld = Instance.new("Weld", Core)
                Weld.Part0 = Core
                Weld.Part1 = localplayer.Character.LowerTorso
                Weld.C0 = CFrame.new(0, 0, 0)
            end
        )

        workspace:WaitForChild("Core")

        local torso = workspace.Core
        flying = true
        local keys = {a = false, d = false, w = false, s = false}
        local e1
        local e2
        local function start()
            local pos = Instance.new("BodyPosition", torso)
            local gyro = Instance.new("BodyGyro", torso)
            pos.Name = "EPIXPOS"
            pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
            pos.position = torso.Position
            gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            gyro.cframe = torso.CFrame
            repeat
                wait()
                localplayer.Character.Humanoid.PlatformStand = true
                local new = gyro.cframe - gyro.cframe.p + pos.position
                if keys.w then
                    new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * util.fly.normalspeed
                    util.fly.normalspeed = util.fly.normalspeed + 0
                end
                if keys.s then
                    new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * util.fly.normalspeed
                    util.fly.normalspeed = util.fly.normalspeed + 0
                end
                if keys.d then
                    new = new * CFrame.new(util.fly.normalspeed, 0, 0)
                    util.fly.normalspeed = util.fly.normalspeed + 0
                end
                if keys.a then
                    new = new * CFrame.new(-util.fly.normalspeed, 0, 0)
                    util.fly.normalspeedd = util.fly.normalspeed + 0
                end
                pos.position = new.p
                if keys.w then
                    gyro.cframe =
                        workspace.CurrentCamera.CoordinateFrame *
                        CFrame.Angles(-math.rad(util.fly.normalspeed * 0), 0, 0)
                elseif keys.s then
                    gyro.cframe =
                        workspace.CurrentCamera.CoordinateFrame *
                        CFrame.Angles(math.rad(util.fly.normalspeed * 0), 0, 0)
                else
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame
                end
            until flying == false
            if gyro then
                gyro:Destroy()
            end
            if pos then
                pos:Destroy()
            end
            flying = false
            localplayer.Character.Humanoid.PlatformStand = false
        end
        e1 =
            mouse.KeyDown:connect(
            function(key)
                if not torso or not torso.Parent then
                    flying = false
                    e1:disconnect()
                    e2:disconnect()
                    return
                end
                if key == "w" then
                    keys.w = true
                elseif key == "s" then
                    keys.s = true
                elseif key == "a" then
                    keys.a = true
                elseif key == "d" then
                    keys.d = true
                elseif key == "x" then
                    if flying == true then
                        flying = false
                    else
                        flying = true
                        start()
                    end
                end
            end
        )
        e2 =
            mouse.KeyUp:connect(
            function(key)
                if key == "w" then
                    keys.w = false
                elseif key == "s" then
                    keys.s = false
                elseif key == "a" then
                    keys.a = false
                elseif key == "d" then
                    keys.d = false
                end
            end
        )
        start()
    end
)

misc1:AddButton(
    "CFrame Fly (M)",
    function()
        local Camera = workspace.CurrentCamera
        local Root = util.services.plrs.LocalPlayer.Character:WaitForChild("HumanoidRootPart")

        local C1, C2, C3
        local Nav = {Flying = false, Forward = false, Backward = false, Left = false, Right = false}
        C1 =
            util.services.uis.InputBegan:Connect(
            function(Input)
                if Input.UserInputType == Enum.UserInputType.Keyboard then
                    if Input.KeyCode == Enum.KeyCode.M then
                        Nav.Flying = not Nav.Flying
                        Root.Anchored = Nav.Flying
                    elseif Input.KeyCode == Enum.KeyCode.W then
                        Nav.Forward = true
                    elseif Input.KeyCode == Enum.KeyCode.S then
                        Nav.Backward = true
                    elseif Input.KeyCode == Enum.KeyCode.A then
                        Nav.Left = true
                    elseif Input.KeyCode == Enum.KeyCode.D then
                        Nav.Right = true
                    end
                end
            end
        )

        C2 =
            util.services.uis.InputEnded:Connect(
            function(Input)
                if Input.UserInputType == Enum.UserInputType.Keyboard then
                    if Input.KeyCode == Enum.KeyCode.W then
                        Nav.Forward = false
                    elseif Input.KeyCode == Enum.KeyCode.S then
                        Nav.Backward = false
                    elseif Input.KeyCode == Enum.KeyCode.A then
                        Nav.Left = false
                    elseif Input.KeyCode == Enum.KeyCode.D then
                        Nav.Right = false
                    end
                end
            end
        )

        C3 =
            Camera:GetPropertyChangedSignal("CFrame"):Connect(
            function()
                if Nav.Flying then
                    Root.CFrame = CFrame.new(Root.CFrame.Position, Root.CFrame.Position + Camera.CFrame.LookVector)
                end
            end
        )

        while true do
            local renderwait = util.services.rs.RenderStepped:Wait()
            if Nav.Flying then
                if Nav.Forward then
                    Root.CFrame = Root.CFrame + (Camera.CFrame.LookVector * (renderwait * util.fly.cframespeed * 10))
                end
                if Nav.Backward then
                    Root.CFrame = Root.CFrame + (-Camera.CFrame.LookVector * (renderwait * util.fly.cframespeed * 10))
                end
                if Nav.Left then
                    Root.CFrame = Root.CFrame + (-Camera.CFrame.RightVector * (renderwait * util.fly.cframespeed * 10))
                end
                if Nav.Right then
                    Root.CFrame = Root.CFrame + (Camera.CFrame.RightVector * (renderwait * util.fly.cframespeed * 10))
                end
            end
        end
    end
)

misc2:AddSlider(
    "Normal Fly Speed",
    10,
    20,
    100,
    1,
    function(v)
        util.fly.normalspeed = v
    end
)

misc2:AddSlider(
    "CFrame Fly Speed",
    10,
    20,
    100,
    1,
    function(v)
        util.fly.cframespeed = v
    end
)

--//Extra
local extra1 = extratab:CreateSector("Credits", "left")

extra1:AddLabel("Coding#8685 - founder/dev")
extra1:AddLabel("Nuts#0710 - founder/dev")

--//Code

--[[
util.services.rs.RenderStepped:Connect(
    function()
        if util.visuals.disco == true then
            game.Lighting.Ambient = util.vars.rainbowcolor
        else
            game.Lighting.Ambient = Color3.fromRGB(0, 0, 0)
        end
    end
)
spawn(
    function()
        while wait() do
            local r = (math.sin(util.services.ws.DistributedGameTime / 2) / 2) + 0.5
            local g = (math.sin(util.services.ws.DistributedGameTime) / 2) + 0.5
            local b = (math.sin(util.services.ws.DistributedGameTime * 1.5) / 2) + 0.5
            local color = Color3.new(r, g, b)
            util.vars.rainbowcolor = color
        end
    end
)

]]
local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall =
    newcclosure(
    function(...)
        local args = {...}
        if
            targetplr ~= nil and aiming.targetaim.enabled and targetplr and aiming.targetaim.targeting == true and
                aiming.targetaim.enabled == true and
                getnamecallmethod() == "FireServer" and
                args[2] == "UpdateMousePos"
         then
            args[3] =
                game.Players[targetplr].Character[aiming.targetaim.hitpart].Position +
                (game.Players[targetplr].Character.LowerTorso.Velocity * aiming.targetaim.prediction)
            return old(unpack(args))
        end
        return old(...)
    end
)

--// main Code

spawn(
    function()
        game:GetService("RunService").Stepped:Connect(
            function()
                --- fov
                spawn(
                    function()
                        circle.Position = Vector2.new(LocalMouse.X, LocalMouse.Y + 35)
                    end
                )

                spawn(
                    function()
                        if aiming.fov.option == "Circle" then
                            aiming.fov.side = 350
                            circle.NumSides = 350
                            aiming.fov.side = 350
                        elseif aiming.fov.option == "Hexagon" then
                            aiming.fov.side = 6
                            circle.NumSides = 6
                            aiming.fov.side = 6
                        elseif aiming.fov.option == "Square" then
                            aiming.fov.side = 4
                            circle.NumSides = 4
                            aiming.fov.side = 4
                        else
                        end
                    end
                )

                spawn(
                    function()
                        if aiming.fov.enabled == true then
                            circle.Visible = true
                        else
                            circle.Visible = false
                        end
                    end
                )

                spawn(
                    function()
                        circle.Color = aiming.fov.colour
                    end
                )

                spawn(
                    function()
                        circle.Filled = aiming.fov.filled
                    end
                )

                spawn(
                    function()
                        circle.Radius = aiming.fov.radius
                    end
                )

                spawn(
                    function()
                        circle.Thickness = aiming.fov.thickness
                    end
                )

                --- targetaim

                spawn(
                    function()
                        if aiming.targetaim.autoprediction == true then
                            local pingvalue =
                                game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
                            local split = string.split(pingvalue, "(")
                            local ping = tonumber(split[1])
                            -- u can change these (i stole them from .gg/sets)
                            if ping > 150 then
                                aiming.targetaim.prediction = 0
                            elseif ping > 140 then
                                aiming.targetaim.prediction = 0.165773
                            elseif ping > 130 then
                                aiming.targetaim.prediction = 0.156692
                            elseif ping > 120 then
                                aiming.targetaim.prediction = 0.15465
                            elseif ping > 110 then
                                aiming.targetaim.prediction = 0.124
                            elseif ping > 100 then
                                aiming.targetaim.prediction = 0.1398
                            elseif ping > 90 then
                                aiming.targetaim.prediction = 0.1254432
                            elseif ping > 80 then
                                aiming.targetaim.prediction = 0.134379
                            elseif ping > 70 then
                                aiming.targetaim.prediction = 0.135928
                            elseif ping > 60 then
                                aiming.targetaim.prediction = 0.14377
                            elseif ping > 50 then
                                aiming.targetaim.prediction = 0.110430
                            elseif ping > 40 then
                                aiming.targetaim.prediction = 0.12556
                            end
                        end
                    end
                )
                spawn(
                    function()
                        if aiming.tracers.rainbow == true then 
                            
                        else
                        line.Color = aiming.tracers.colour
                        end
                    end
                )

                spawn(
                    function()
                        if aiming.targetaim.enabled and aiming.targetaim.targeting and aiming.tracers.enabled == true then
                            local plrp =
                                CurrentCamera:WorldToViewportPoint(
                                game.Players[targetplr].Character[aiming.targetaim.hitpart].Position
                            )
                            local headt =
                                CurrentCamera:WorldToViewportPoint(game.Players.LocalPlayer.Character.Head.Position)
                            local torsot =
                                CurrentCamera:WorldToViewportPoint(
                                game.Players.LocalPlayer.Character.UpperTorso.Position
                            )
                            local penist =
                                CurrentCamera:WorldToViewportPoint(
                                game.Players.LocalPlayer.Character.LowerTorso.Position
                            )
                            local mouset = CurrentCamera:WorldToViewportPoint(LocalMouse.Hit.Position)

                            line.Visible = true

                            if aiming.tracers.from == "Penis" then
                                line.From = Vector2.new(penist.X, penist.Y)
                                line.To = Vector2.new(plrp.X, plrp.Y)
                            end

                            if aiming.tracers.from == "Head" then
                                line.From = Vector2.new(headt.X, headt.Y)
                                line.To = Vector2.new(plrp.X, plrp.Y)
                            end

                            if aiming.tracers.from == "Torso" then
                                line.From = Vector2.new(torsot.X, torsot.Y)
                                line.To = Vector2.new(plrp.X, plrp.Y)
                            end

                            if aiming.tracers.from == "Cursor" then
                                line.From = Vector2.new(mouset.X, mouset.Y)
                                line.To = Vector2.new(plrp.X, plrp.Y)
                            end
                        else
                            line.Visible = false
                        end
                    end
                )

                if aiming.od.unlockko and aiming.targetaim.targeting and aiming.targetaim.enabled == true then
                    if game.Players[targetplr].Character.Humanoid.health < 1 then
                        aiming.targetaim.targeting = false
                    end
                end

                if aiming.od.tpko == true then
                    if game.Players[targetplr].Character.Humanoid.health < 0.99 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            game.Players[targetplr].Character.LowerTorso.CFrame
                    end
                end

                if
                    aiming.targetaim.targeting == true and aiming.targetaim.enabled == true and
                        aiming.orbit.enabled == true and
                        aiming.orbit.visualization == true
                 then
                    Circle2222.Color =  aiming.orbit.vc
                    Circle2222.Visible = true
                    Circle2222.Radius = aiming.orbit.distance
                    Circle2222.Position = game.Players[targetplr].Character.HumanoidRootPart.Position
                else
                    Circle2222.Visible = false
                end

                if aiming.visualization.mode == "Circle" then
                    if aiming.targetaim.targeting and aiming.targetaim.enabled == true then
                        local narcan =
                            CurrentCamera:WorldToViewportPoint(
                            game.Players[targetplr].Character.HumanoidRootPart.Position
                        )
                        circlev.Position = Vector2.new(narcan.X, narcan.Y)
                        circlev.Visible = true
                    else
                        circlev.Visible = false
                    end
                end

                if aiming.targetaim.autoshoot and aiming.targetaim.targeting and aiming.targetaim.enabled == true then
                    mouse1click()
                end
            end
        )
    end
)

-- shit auto stomp srry
spawn(
    function()
        while task.wait() do
            if aiming.targetaim.targeting and aiming.targetaim.enabled and aiming.od.stompko == true then
                if game.Players[targetplr].Character.Humanoid.health < 7 then
                    if aiming.od.stompko == true then
                        spawn(
                            function()
                                wait(aiming.od.stomptime)
                                local args = {
                                    [1] = "Stomp"
                                }

                                game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
                            end
                        )
                    end
                end
            end
        end
    end
)

--[[


local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/CatzCode/cattoware/main/libraries/ui.lua"))()

local Window = library:CreateWindow("HoodReligions", Vector2.new(492, 665), Enum.KeyCode.RightShift) -- arg 1 is the name, arg 2 is the size in X-Y and RightShift is the bind.

local ExampleTab = Window:CreateTab("Example") --// tab (self explanatory) "ExampleTab" can be re named to anything you'd like 

--// Sector1 is where ur toggle's / buttons will be going remember that 

local Sector1 = ExampleTab:CreateSector("Example", "left") --// left is the side it goes on, example is the label of the box if u wanna put it on the right side change it to Right

--// toggles "Toggle" "ToggleSpeed" "Toggle this or that" it can be what ever Remember Ur Top Is Called "Sector1" so yeah 

local ToggleSpeed = Sector1:AddToggle("Toggle Name", false, function()
   --// toggle script here 
end)

--Buttons that's all u really need to see

local button = Sector1:AddButton("Button Name", function()
    print("Test") --// place script u wanna put for ur button lol
end)


local dropdownScripts = Sector1:AddDropdown("Aim Part", {"HumanoidRootPart", "Random", "LowerTorso"}, "Head", function() 
    --// script here i guess
end)

--// Slider's 

local JumpPowerr = Sector1:AddSlider("JumpPower", 50, 0, 500, 5, function(value) 
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)

local Speed = Sector1:AddSlider("Speed", 16, 0, 500, 5, function(value) 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)


local Fov = Sector1:AddSlider("Fov", 70, 0, 120, 5, function(value) 
    game:GetService'Workspace'.Camera.FieldOfView = value
end)


]]
