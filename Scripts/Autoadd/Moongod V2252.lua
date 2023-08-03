local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vKhonshu/intro2/main/ui2"))()
    local NotifyLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vKhonshu/intro/main/ui"))()
    NotifyLib.prompt('Moon God - Q To Lock  - Revamped by Valox', 'Loading..', 5)
    NotifyLib.prompt('Moon God - Revamped by Valox', 'best lock ong - valox', 5)
    NotifyLib.prompt('Moon God - Revamped by Valox', 'yarn#0001, Valox#8980', 5)


local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/qvrwd/etarry/main/libraries/ui/splix"))()


-- Security 


-- Locals 

local LocalPlayer = game.Players.LocalPlayer

local Mouse = LocalPlayer:GetMouse()

local RunService = game:GetService("RunService")

local workspace = game:GetService("Workspace")

local Light = game:GetService("Lighting")

local camera = workspace.CurrentCamera

local worldToViewportPoint = camera.worldToViewportPoint

-- Functions

local function fail(r) return LocalPlayer:Kick(r) end

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
        return fail(string.format('Failed to GET url %q for reason: %q', url, tostring(result)))
    end

    local fn, err = loadstring(result)
    if (type(fn) ~= 'function') then
        return fail(string.format('Failed to loadstring url %q for reason: %q', url, tostring(err)))
    end

    local results = { pcall(fn) }
    if (not results[1]) then
        return fail(string.format('Failed to initialize url %q for reason: %q', url, tostring(results[2])))
    end

    shared.__urlcache[url] = result
    return unpack(results, 2)
end

local prefix = "moongod: "

local function log(text)
    print(prefix..text)
end

local function warn(text)
    warn(prefix..text)
end

-- Anti Cheat Bypass


local ReplicatedStorage = game:GetService("ReplicatedStorage")

local MainEvent = ReplicatedStorage.MainEvent

local HB = RunService.Heartbeat

do 
   local oldFunc = nil

  oldFunc = hookfunction(MainEvent.FireServer, newcclosure(function(Event, ...)
     local args = {...}

     if args[1] == "CHECKER_1" or args[1] == "TeleportDetect" or args[1] == "OneMoreTime" then
        return nil
     end

     return oldFunc(Event, ...)
  end))

   HB:Connect(function()
       local root = LocalPlayer.Character and LocalPlayer.Character.PrimaryPart

       if root then
           for i,v in pairs(getconnections(root:GetPropertyChangedSignal("CFrame"))) do
               v:Disable()
           end
       end
   end)

  local function added(char)
     while true do
           if not char then return end
        HB:Wait()
        for i,v in pairs(char:GetChildren()) do
           if v:IsA("Script") and v:FindFirstChildOfClass("LocalScript") then
              v:FindFirstChildOfClass("LocalScript").Source = "Cleared by moongod"
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

log("Bypassed Anti-Cheat")

-- Aiming 



local guimain = Instance.new("Folder", game.CoreGui)
local CC = game:GetService "Workspace".CurrentCamera
local LocalMouse = game.Players.LocalPlayer:GetMouse()
local Locking = false
local cc = game:GetService("Workspace").CurrentCamera
local gs = game:GetService("GuiService")
local ggi = gs.GetGuiInset
local lp = game:GetService("Players").LocalPlayer
local mouse = lp:GetMouse()

local Tracer = Drawing.new("Line")
Tracer.Visible = false
Tracer.Color = Color3.fromRGB(255, 20, 88)
Tracer.Thickness = 1
Tracer.Transparency = 1

local sound = Instance.new("Sound", game.Workspace)
sound.SoundId = "rbxassetid://8819783960"

if not sound.IsLoaded then
	sound.Loaded:wait()
end

local sound1 = Instance.new("Sound", game.Workspace)
sound1.SoundId = "rbxassetid://8819782435"

if not sound1.IsLoaded then
	sound1.Loaded:wait()
end


local StepTable = {}
local function BindToSteppedold(name, num, func)
	if StepTable[name] == nil then
		StepTable[name] = game:GetService("RunService").Stepped:connect(func)
	end
end

local function UnbindFromSteppedold(name)
	if StepTable[name] then
		StepTable[name]:Disconnect()
		StepTable[name] = nil
	end
end

function x(tt, tx, cc, tc)
    game.StarterGui:SetCore(
        "SendNotification",
        {
            Title = tt,
            Text = tx,
            Duration = cc,
            Icon = tc
        }
    )
end

local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(
    function(keygo, ok)
        if (not ok) then
            if (keygo.KeyCode == getgenv().Key) then
                if getgenv().loltoggle then
                    Locking = not Locking
                    if Locking then
                        Plr = getClosestPlayerToCursor()
                        getgenv().targetenabledV3 = true
                        if getgenv().Notificationmode then
                            StarterGui:SetCore(
                            "SendNotification",
                            {
                                Title = "yarn",
                                Text = "" ..Plr.DisplayName,
                                Duration = 3,
                                Icon = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. Plr .."&width=420&height=420&format=png"
                            })
                        end
                        if getgenv().ViewMode == true then
                            game.Workspace.CurrentCamera.CameraSubject = Plr.Character
                        end
                        if getgenv().ChatMode == true then
                            local A_3 = "yarn: "..Plr.DisplayName
                            local A_4 = "All"
                            local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
                            Event:FireServer(A_3, A_4)
                        end
                        if getgenv().TPToPlayer == true then
                            LocalPlayer.Character.HumanoidRootPart.CFrame = Plr.Character.HumanoidRootPart.CFrame
                        end
                        if getgenv().BenMode == true then
                            sound:Play()
                        end
                        if getgenv().TargetStrafeV3 == true then
                            getgenv().TSV3Multiplier = 5
                            getgenv().TSV3Distance = 5
                            local i = 0
                            BindToSteppedold("TargetStrafev3", nil, function(dt)
                            i = (i + dt/getgenv().TSV3Multiplier) % 1
                            local alpha = 2 * math.pi * i
                
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.Angles(0, alpha, 0)
                            * CFrame.new(0, 0, getgenv().TSV3Distance)
                            + Plr.Character.HumanoidRootPart.Position
                        end)
                        end
                    elseif not Locking then
                        UnbindFromSteppedold("TargetStrafev3")
                        if getgenv().Notificationmode then
                            x("yarn", "Unlocked", 3)
                        end
                        if getgenv().ViewMode == true then
                            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
                        end
                        
                        if getgenv().ChatMode == true then
                            local A_1 = "Unlocked"
                            local A_2 = "All"
                            local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
                            Event:FireServer(A_1, A_2)
                        end
                        if getgenv().BenMode == true then
                            sound1:Play()
                        end
                    end
                end
            end
        end
    end
)

RunService.Heartbeat:Connect(function()
    if getgenv().LookAt == true then
        local Char = game.Players.LocalPlayer.Character
        local PrimaryPartOfChar = game.Players.LocalPlayer.Character.PrimaryPart
        local NearestChar = Plr.Character
        local NearestRoot = Plr.Character.HumanoidRootPart
        local NearestPos = CFrame.new(PrimaryPartOfChar.Position, Vector3.new(NearestRoot.Position.X, NearestRoot.Position.Y, NearestRoot.Position.Z))
        Char:SetPrimaryPartCFrame(NearestPos)
    else
        local Char = game.Players.LocalPlayer.Character
        local PrimaryPartOfChar = game.Players.LocalPlayer.Character.PrimaryPart
        local NearestChar = LocalPlayer.Character
        local NearestRoot = LocalPlayer.Character.HumanoidRootPart
        local NearestPos = CFrame.new(PrimaryPartOfChar.Position, Vector3.new(NearestRoot.Position.X, NearestRoot.Position.Y, NearestRoot.Position.Z))
        Char:SetPrimaryPartCFrame(LocalPlayer)
    end
end)

function getClosestPlayerToCursor()
    local closestPlayer
    local shortestDistance = 137

    for i, v in pairs(game.Players:GetPlayers()) do
        if
            v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
                v.Character.Humanoid.Health ~= 0 and
                v.Character:FindFirstChild("LowerTorso")
         then
            local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
            if magnitude < shortestDistance then
                closestPlayer = v
                shortestDistance = magnitude
            end
        end
    end
    return closestPlayer
end




local rawmetatable = getrawmetatable(game)
local old = rawmetatable.__namecall
setreadonly(rawmetatable, false)
rawmetatable.__namecall =
    newcclosure(
    function(...)
        local args = {...}
        if Locking and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
            args[3] =
                Plr.Character[getgenv().Partz].Position + (Plr.Character[getgenv().Partz].Velocity * Prediction / 10)
            return old(unpack(args))
        end
        return old(...)
    end
)

local LocalPlayer = game.Players.LocalPlayer
local mouse = LocalPlayer:GetMouse()

_G.TracerVisible = false
_G.TracerColor = Color3.fromRGB(255, 255, 255)
_G.TracerThickness = 3
_G.TracerTransparency = 1

_G.CircleSides = 3604
_G.CircleColor = Color3.fromRGB(255, 20, 88)
_G.CircleTransparency = 0.5
_G.CircleRadius = 80
_G.CircleFilled = false
_G.CircleVisible = false
_G.CircleThickness = 0

circle = Drawing.new("Circle")
circle.Color = Color3.fromRGB(255, 20, 88)
circle.Thickness = 0.1
circle.Transparency = 0.5
circle.NumSides = 64
circle.Radius = 64
circle.Visible = false
circle.Filled = true
getgenv().autoclick = false
game:GetService("RunService").RenderStepped:Connect(
    function()
        if getgenv().autosetup == true then
            local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
            local split = string.split(pingvalue, " ")
            local ping = split[1]
            if tonumber(ping) < 30 then
                getgenv().Prediction = 1.14
            elseif tonumber(ping) <= 30 then
                if tonumber(ping) < 40 then
                    getgenv().Prediction = 1.16
                elseif tonumber(ping) <= 40 then
                    if tonumber(ping) < 50 then
                        getgenv().Prediction = 1.19
                    elseif tonumber(ping) <= 50 then
                        if tonumber(ping) < 70 then
                            getgenv().Prediction = 1.22
                        elseif tonumber(ping) <= 80 then
                            getgenv().Prediction = 1.38
                        elseif tonumber(ping) <= 80 then
                            getgenv().Prediction = 1.39
                        elseif tonumber(ping) <= 90 then
                            getgenv().Prediction = 1.42
                        elseif tonumber(ping) <= 150 then
                            getgenv().Prediction = 1.51
                        elseif tonumber(ping) >= 200 then
                            getgenv().Prediction = 1.69
                        end
                    end
                end
            end
        end

        circle.Position =
            Vector2.new(
            game:GetService("UserInputService"):GetMouseLocation().X,
            game:GetService("UserInputService"):GetMouseLocation().Y
        )
        circle.Radius = _G.CircleRadius
        circle.Filled = _G.CircleFilled
        circle.Color = _G.CircleColor
        circle.Visible = _G.CircleVisible
        circle.Radius = _G.CircleRadius
        circle.Transparency = _G.CircleTransparency
        circle.NumSides = _G.CircleSides
        circle.Thickness = _G.CircleThickness
        Tracer.Visible = _G.TracerVisible
        Tracer.Color = _G.TracerColor
        Tracer.Thickness = _G.TracerThickness
        Tracer.Transparency = _G.TracerTransparency
        if getgenv().AirshotFunccc == true then
            if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                getgenv().Partz = "RightFoot"
            else
                Plr.Character:WaitForChild("Humanoid").StateChanged:Connect(
                    function(old, new)
                        if new == Enum.HumanoidStateType.Freefall then
                            getgenv().Partz = "RightFoot"
                        else
                            getgenv().Partz = "LowerTorso"
                        end
                    end
                )
            end
        end

        if getgenv().Tracer == true and Locking then
            local Vector, OnScreen =
                cc:worldToViewportPoint(
                Plr.Character[getgenv().Partz].Position + (Plr.Character[getgenv().Partz].Velocity * Prediction / 10)
            )
            Tracer.Visible = true
            Tracer.From = Vector2.new(mouse.X, mouse.Y + ggi(gs).Y)
            Tracer.To = Vector2.new(Vector.X, Vector.Y)
        elseif getgenv().Tracer == false then
            Tracer.Visible = false
        end
    end)
game:GetService("RunService").Heartbeat:Connect(
    function()
        if cframespeedtoggle == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                game.Players.LocalPlayer.Character.Humanoid.MoveDirection * speedvalue
        end
        if Spinbot then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad((positive1)), 0)
        end
        if Jitter then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position) *
                CFrame.Angles(0, math.rad(Angle) + math.rad((math.random(1, 2) == 1 and Jit or -Jit)), 0)
        end

        if AntiAim1 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * -250
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(555), 0)
        end
        if AntiAim2 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1.333, 0)
            wait(0.2)
        end
        if getgenv().antilock then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                -game.Players.LocalPlayer.Character.Humanoid.MoveDirection * getgenv().antilockspeed
        end
        if getgenv().DesyncEnabled then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * getgenv().DesyncVelocity
                game:GetService("RunService").Heartbeat:Wait()
        end
        if getgenv().antistomplo then
            if game.Players.LocalPlayer.Character.Humanoid.Health <= 5 then
                for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v:Destroy()
                    end
                end
            end
        end
        if getgenv().antislow then
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
        if getgenv().AutoReloadx then
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
        if getgenv().autostomp then
            game.ReplicatedStorage.MainEvent:FireServer("Stomp")
        end
        if getgenv().antibag then
            game.Players.LocalPlayer.Character["Christmas_Sock"]:Destroy()
        end
    end)

-- Visuals --

local ESPSettings = {
    SkeletonESPEnabled = false,
    RainbowsESPEnabled = false,
    TextOutlineEnabled = false,
    TeamCheckEnabled = false,
    MouseFrom = false,
    CustomColor = true,
    BottomFrom = true,
    HeadFrom = false,
    RoundedCorner = 12,
    Length = 14,
    ESPColor = Color3.fromRGB(255,255,255),
    Thickness = 1,
    TextSize = 15,
    Transparency = 1,
    HeadOff = Vector3.new(0,0.5,0),
    LegOff = Vector3.new(0,3,0)
}

-- Drawings --

Circle = Drawing.new("Circle")
Circle.Color = Color3.fromRGB(101, 90, 173)
Circle.Thickness = 2
Circle.NumSides = 120
Circle.Radius = 70
Circle.Visible = false
Circle.Filled = false
Circle.Transparency = 1

RunService.RenderStepped:Connect(function()
	Circle.Position = Vector2.new(Mouse.X, Mouse.Y + 35)
end)

-- Loadstrings

local Kiriot = httpload("https://raw.githubusercontent.com/fakecurfew/storage/main/libraries/esp/kiriot")

local Pika = httpload("https://raw.githubusercontent.com/trendyylol/roblox/main/Libraries/ESP/Pikahub")

local Lowfi = httpload("https://raw.githubusercontent.com/trendyylol/roblox/main/Libraries/ESP/Lowfi")


local window = library:new({textsize = 13.5,font = Enum.Font.RobotoMono,name = "Moon God V2",color = Color3.fromRGB(204, 255, 255)})

local tab = window:page({name = "Legit"})
local tab2 = window:page({name = "Visuals"})
local tab3 = window:page({name = "Misc"})
local tab4 = window:page({name = "Teleports"})




getgenv().Key = Enum.KeyCode.Q
getgenv().Prediction = 1.35
getgenv().AirshotFunccc = false
getgenv().Tracer = false
getgenv().Partz = "UpperTorso"
getgenv().Notificationmode = false
getgenv().ViewMode = false
getgenv().Spinbot = false
getgenv().Jitter = false
getgenv().positive1 = 45
local Jit = math.random(30, 90)
getgenv().Angle = 60
getgenv().DesyncEnabled = false
getgenv().DesyncVelocity = 15
getgenv().BenMode = false
getgenv().TPToPlayer = false
getgenv().LookAt = false
getgenv().AntiAim1 = false
getgenv().AntiAim2 = false
getgenv().antistomplo = false
getgenv().autoreload = false
getgenv().autostomp = false
getgenv().antibag = false
getgenv().antislow = false

local section1 = tab:section({name = "Strafe",side = "right",size = 80})

section1:toggle({name = "Enable",def = false, callback = function(bool)
    getgenv().TargetStrafeV3 = bool
end})


section1:slider({name = "Strafe Distance",def = 5, max = 100,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
    getgenv().TSV3Distance = value
end})



local section1 = tab:section({name = "Main",side = "left",size = 185})

section1:toggle({name = "Enable",def = false, callback = function(bool)
    getgenv().loltoggle = bool
end})

section1:toggle({name = "Ping Based ",def = false, callback = function(bool)
    getgenv().autosetup = bool
end})


section1:toggle({name = "Teleport ",def = false, callback = function(bool)
    getgenv().TPToPlayer = bool
end})

section1:toggle({name = "View ",def = false ,callback = function(bool)
    getgenv().ViewMode = bool
end})

section1:toggle({name = "Airshot ",def = false, callback = function(bool)
    getgenv().AirshotFunccc = bool
end})

section1:toggle({name = "Tracer ",def = false, callback = function(bool)
    getgenv().Tracer = bool
end})

section1:toggle({name = "Notification ",def = false, callback = function(bool)
    getgenv().Notificationmode = bool
end})

section1:toggle({name = "Look ",def = false, callback = function(bool)
    getgenv().LookAt = bool
end})









local section1 = tab:section({name = "Settings",side = "left",size = 185})

section1:colorpicker({name = "Tracer Color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(color)
    _G.TracerColor = color
end})

section1:slider({name = "Thickness",def = 3, max = 5,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
    _G.TracerThickness = value
end})


section1:dropdown({name = "Target Part",def = "HumanoidRootPart",max = 10,options = {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso", "LeftUpperLeg", "RightUpperLeg", "LeftLowerLeg", "RightLowerLeg", "LeftFoot", "RightFoot"},callback = function(part)
    getgenv().Partz = part
end})

section1:dropdown({name = "Airshot Part",def = "RightFoot",max = 10,options = {"Head", "HumanoidRootPart", "LowerTorso", "LeftUpperLeg", "RightUpperLeg", "LeftLowerLeg", "RightLowerLeg", "LeftFoot", "RightFoot"},callback = function(part)
    getgenv().airshotpart = part
end})

section1:slider({name = "Prediction",def = 1.25, max = 6,min = 0.5,rounding = false,ticking = false,measuring = "",callback = function(value)
    getgenv().Prediction = value
end})


local section1 = tab:section({name = "Extra",side = "right",size = 100})
section1:button({name = "Trace Lock = X",callback = function()
    getgenv().OldAimPart = "UpperTorso"
    getgenv().AimPart = "UpperTorso" -- For R15 Games: {UpperTorso, LowerTorso, HumanoidRootPart, Head} | For R6 Games: {Head, Torso, HumanoidRootPart}  
        getgenv().AimlockKey = "x"
        getgenv().AimRadius = 30 -- How far away from someones character you want to lock on at
        getgenv().ThirdPerson = true 
        getgenv().FirstPerson = true
        getgenv().TeamCheck = false -- Check if Target is on your Team (True means it wont lock onto your teamates, false is vice versa) (Set it to false if there are no teams)
        getgenv().PredictMovement = true -- Predicts if they are moving in fast velocity (like jumping) so the aimbot will go a bit faster to match their speed 
        getgenv().PredictionVelocity = 6.612
        getgenv().CheckIfJumped = true
        getgenv().Smoothness = true
        getgenv().SmoothnessAmount = 0.0452
    
        local Players, Uis, RService, SGui = game:GetService"Players", game:GetService"UserInputService", game:GetService"RunService", game:GetService"StarterGui";
        local Client, Mouse, Camera, CF, RNew, Vec3, Vec2 = Players.LocalPlayer, Players.LocalPlayer:GetMouse(), workspace.CurrentCamera, CFrame.new, Ray.new, Vector3.new, Vector2.new;
        local Aimlock, MousePressed, CanNotify = true, false, false;
        local AimlockTarget;
        local OldPre;
        
    
        
        getgenv().WorldToViewportPoint = function(P)
            return Camera:WorldToViewportPoint(P)
        end
        
        getgenv().WorldToScreenPoint = function(P)
            return Camera.WorldToScreenPoint(Camera, P)
        end
        
        getgenv().GetObscuringObjects = function(T)
            if T and T:FindFirstChild(getgenv().AimPart) and Client and Client.Character:FindFirstChild("Head") then 
                local RayPos = workspace:FindPartOnRay(RNew(
                    T[getgenv().AimPart].Position, Client.Character.Head.Position)
                )
                if RayPos then return RayPos:IsDescendantOf(T) end
            end
        end
        
        getgenv().GetNearestTarget = function()
            -- Credits to whoever made this, i didnt make it, and my own mouse2plr function kinda sucks
            local players = {}
            local PLAYER_HOLD  = {}
            local DISTANCES = {}
            for i, v in pairs(Players:GetPlayers()) do
                if v ~= Client then
                    table.insert(players, v)
                end
            end
            for i, v in pairs(players) do
                if v.Character ~= nil then
                    local AIM = v.Character:FindFirstChild("Head")
                    if getgenv().TeamCheck == true and v.Team ~= Client.Team then
                        local DISTANCE = (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                        local RAY = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (Mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE)
                        local HIT,POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                        local DIFF = math.floor((POS - AIM.Position).magnitude)
                        PLAYER_HOLD[v.Name .. i] = {}
                        PLAYER_HOLD[v.Name .. i].dist= DISTANCE
                        PLAYER_HOLD[v.Name .. i].plr = v
                        PLAYER_HOLD[v.Name .. i].diff = DIFF
                        table.insert(DISTANCES, DIFF)
                    elseif getgenv().TeamCheck == false and v.Team == Client.Team then 
                        local DISTANCE = (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                        local RAY = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (Mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE)
                        local HIT,POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                        local DIFF = math.floor((POS - AIM.Position).magnitude)
                        PLAYER_HOLD[v.Name .. i] = {}
                        PLAYER_HOLD[v.Name .. i].dist= DISTANCE
                        PLAYER_HOLD[v.Name .. i].plr = v
                        PLAYER_HOLD[v.Name .. i].diff = DIFF
                        table.insert(DISTANCES, DIFF)
                    end
                end
            end
            
            if unpack(DISTANCES) == nil then
                return nil
            end
            
            local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
            if L_DISTANCE > getgenv().AimRadius then
                return nil
            end
            
            for i, v in pairs(PLAYER_HOLD) do
                if v.diff == L_DISTANCE then
                    return v.plr
                end
            end
            return nil
        end
        
        Mouse.KeyDown:Connect(function(a)
            if not (Uis:GetFocusedTextBox()) then 
                if a == AimlockKey and AimlockTarget == nil then
                    pcall(function()
                        if MousePressed ~= true then MousePressed = true end 
                        local Target;Target = GetNearestTarget()
                        if Target ~= nil then 
                            AimlockTarget = Target
                        end
                    end)
                elseif a == AimlockKey and AimlockTarget ~= nil then
                    if AimlockTarget ~= nil then AimlockTarget = nil end
                    if MousePressed ~= false then 
                        MousePressed = false 
                    end
                end
            end
        end)
        
        RService.RenderStepped:Connect(function()
            if getgenv().ThirdPerson == true and getgenv().FirstPerson == true then 
                if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 or (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1 then 
                    CanNotify = true 
                else 
                    CanNotify = false 
                end
            elseif getgenv().ThirdPerson == true and getgenv().FirstPerson == false then 
                if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 then 
                    CanNotify = true 
                else 
                    CanNotify = false 
                end
            elseif getgenv().ThirdPerson == false and getgenv().FirstPerson == true then 
                if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1 then 
                    CanNotify = true 
                else 
                    CanNotify = false 
                end
            end
            if Aimlock == true and MousePressed == true then 
                if AimlockTarget and AimlockTarget.Character and AimlockTarget.Character:FindFirstChild(getgenv().AimPart) then 
                    if getgenv().FirstPerson == true then
                        if CanNotify == true then
                            if getgenv().PredictMovement == true then
                                if getgenv().Smoothness == true then
                                    --// The part we're going to lerp/smoothen \\--
                                    local Main = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position + AimlockTarget.Character[getgenv().AimPart].Velocity/PredictionVelocity)
                                    
                                    --// Making it work \\--
                                    Camera.CFrame = Camera.CFrame:Lerp(Main, getgenv().SmoothnessAmount, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut)
                                else
                                    Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position + AimlockTarget.Character[getgenv().AimPart].Velocity/PredictionVelocity)
                                end
                            elseif getgenv().PredictMovement == false then 
                                if getgenv().Smoothness == true then
                                    --// The part we're going to lerp/smoothen \\--
                                    local Main = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position)
    
                                    --// Making it work \\--
                                    Camera.CFrame = Camera.CFrame:Lerp(Main, getgenv().SmoothnessAmount, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut)
                                else
                                    Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position)
                                end
                            end
                        end
                    end
                end
            end
             if CheckIfJumped == true then
           if AimlockTarget.Character.HuDDDDDDDDDDWmanoid.FloorMaterial == Enum.Material.Air then
        
               getgenv().AimPart = "UpperTorso"
           else
             getgenv().AimPart = getgenv().OldAimPart
    
           end
        end
    end)
end})


section1:button({name = "No Recoil",callback = function()
    getgenv().NoRecoil = true
    if NoRecoil == true then
        local mt = getrawmetatable(game)
        local newindex = mt.newindex
        setreadonly(mt,false)
        function isframework(scriptInstance)
            if tostring(scriptInstance) == "Framework" then
                return true
            end
            return false
        end
        function checkArgs(instance,index)
            if tostring(instance):lower():find("camera") and tostring(index) == "CFrame" then
                return true
            end
            return false
        end
        mt.newindex = newcclosure(function(self,index,value)
            local callingScr = getcallingscript()
            if isframework(callingScr) and checkArgs(self,index) then
               return;
            end
            return newindex(self,index,value)
        end)
        setreadonly(mt,true)
    end   
    end})
    
section1:button({name = "Moon God Revamped",callback = function()
    if game.PlaceId == 2788229376 then
        print'da hood'

    NotifyLib.prompt('Game Detected: Da Hood', 'yarn#0001, Valox#8980', 5)
            Settings = {
            rewrittenmain = {
            Enabled = true,
            Key = "q",
            DOT = true,
            AIRSHOT = true,
            NOTIF = true,
            FOV = math.huge,
        }
    }
    local SelectedPart = "HumanoidRootPart"
    local Prediction = true
    local PredictionValue = 0.1176529
        local AnchorCount = 0
        local MaxAnchor = 50
    
        local CC = game:GetService"Workspace".CurrentCamera
        local Plr;
        local enabled = false
        local accomidationfactor = 0.122
        local mouse = game.Players.LocalPlayer:GetMouse()
        local placemarker = Instance.new("Part", game.Workspace)
    
        function makemarker(Parent, Adornee, Color, Size, Size2)
            local e = Instance.new("BillboardGui", Parent)
            e.Name = "PP"
            e.Adornee = Adornee
            e.Size = UDim2.new(Size, Size2, Size, Size2)
            e.AlwaysOnTop = Settings.rewrittenmain.DOT
            local a = Instance.new("Frame", e)
            if Settings.rewrittenmain.DOT == true then
            a.Size = UDim2.new(1, 0, 1, 0)
            else
            a.Size = UDim2.new(0, 0, 0, 0)
            end
            if Settings.rewrittenmain.DOT == true then
            a.Transparency = 0
            a.BackgroundTransparency = 0
            else
            a.Transparency = 0
            a.BackgroundTransparency = 0
            end
            a.BackgroundColor3 = Color
            local g = Instance.new("UICorner", a)
            if Settings.rewrittenmain.DOT == false then
            g.CornerRadius = UDim.new(0, 0)
            else
            g.CornerRadius = UDim.new(1, 1) 
            end
            return(e)
        end
    
        
        local data = game.Players:GetPlayers()
        function noob(player)
            local character
            repeat wait() until player.Character
            local handler = makemarker(guimain, player.Character:WaitForChild(SelectedPart), Color3.fromRGB(0, 255, 0), 0.3, 1)
            handler.Name = player.Name
            player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild(SelectedPart) end)
    
    
            spawn(function()
                while wait() do
                    if player.Character then
                    end
                end
            end)
        end
    
        for i = 1, #data do
            if data[i] ~= game.Players.LocalPlayer then
                noob(data[i])
            end
        end
    
        game.Players.PlayerAdded:connect(function(Player)
            noob(Player)
        end)
    
        spawn(function()
            placemarker.Anchored = true
            placemarker.CanCollide = false
            if Settings.rewrittenmain.DOT == true then
            placemarker.Size = Vector3.new(4, 4, 4), Color3.fromRGB(50, 255, 70)
            else
            placemarker.Size = Vector3.new(0, 0, 0)
            end
            placemarker.Transparency = 0.50
            if Settings.rewrittenmain.DOT then
            makemarker(placemarker, placemarker, Color3.fromRGB(81, 0, 81), 0.40, 0)
            end
        end)
    
        
        game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
            if k == Settings.rewrittenmain.Key and Settings.rewrittenmain.Enabled then
                if enabled == true then
                    enabled = false
                    if Settings.rewrittenmain.NOTIF == true then
                        Plr = getClosestPlayerToCursor()
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "yarn | revamped";
                        Text = "Unlocked",
                        Duration = 3
                    })
                end
                else
                    Plr = getClosestPlayerToCursor()
                    enabled = true
                    if Settings.rewrittenmain.NOTIF == true then
    
                        game.StarterGui:SetCore("SendNotification", {
                            Title = "yarn | revamped";
                            Text = "Target: "..tostring(Plr.Character.Humanoid.DisplayName),
                            Duration = 3
                        })
    
                    end
                end
            end
        end)
    
    
    
        function getClosestPlayerToCursor()
            local closestPlayer
            local shortestDistance = Settings.rewrittenmain.FOV
    
            for i, v in pairs(game.Players:GetPlayers()) do
                if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
                    local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                    local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
                    if magnitude < shortestDistance then
                        closestPlayer = v
                        shortestDistance = magnitude
                    end
                end
            end
            return closestPlayer
        end
    
        local pingvalue = nil;
        local split = nil;
        local ping = nil;
    
        game:GetService"RunService".Stepped:connect(function()
            if enabled and Plr.Character ~= nil and Plr.Character:FindFirstChild("HumanoidRootPart") then
                placemarker.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor))
            else
                placemarker.CFrame = CFrame.new(0, 9999, 0)
            end
        end)
    
        local mt = getrawmetatable(game)
        local old = mt.__namecall
        setreadonly(mt, false)
        mt.__namecall = newcclosure(function(...)
            local args = {...}
            if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" and Settings.rewrittenmain.Enabled and Plr.Character ~= nil then
    
                -- args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor)
                --[[
                if Settings.rewrittenmain.AIRSHOT == true then
                    if game.Workspace.Players[Plr.Name].Humanoid:GetState() == Enum.HumanoidStateType.Freefall then -- Plr.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Freefall
                        
                        --// Airshot
                        args[3] = Plr.Character.LeftFoot.Position+(Plr.Character.LeftFoot.Velocity*PredictionValue)
    
                    else
                        args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*PredictionValue)
    
                    end
                else
                        args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*PredictionValue)
                end
                ]]
                if Prediction == true then
                    
                args[3] = Plr.Character[SelectedPart].Position+(Plr.Character[SelectedPart].Velocity*PredictionValue)
    
                else
    
                args[3] = Plr.Character[SelectedPart].Position
    
                end
    
                return old(unpack(args))
            end
            return old(...)
        end)
    
        game:GetService("RunService").RenderStepped:Connect(function()
            if Settings.rewrittenmain.AIRSHOT == true and enabled and Plr.Character ~= nil then
                
                if game.Workspace.Players[Plr.Name].Humanoid:GetState() == Enum.HumanoidStateType.Freefall then -- Plr.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Freefall
                    
                    --// Airshot
    
                    --// Anchor Check
    
                    if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
                        AnchorCount = AnchorCount + 1
                        if AnchorCount >= MaxAnchor then
                            Prediction = false
                            wait(2)
                            AnchorCount = 0;
                    else
                        Prediction = true
                        AnchorCount = 0;
                    end
    
                    SelectedPart = "LeftFoot"
    
                else
                    --// Anchor Check
    
                    if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
                        AnchorCount = AnchorCount + 1
                        if AnchorCount >= MaxAnchor then
                            Prediction = false
                            wait(2)
                            AnchorCount = 0;
                        end
                    else
                        Prediction = true
                        AnchorCount = 0;
                    end
    
                    SelectedPart = "HumanoidRootPart"
    
                end
                else
    
                    --// Anchor Check
    
                    if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
                        AnchorCount = AnchorCount + 1
                        if AnchorCount >= MaxAnchor then
                            Prediction = false
                            wait(2)
                            AnchorCount = 0;
                        end
                    else
                        Prediction = true
                        AnchorCount = 0;
                    end
    
                    SelectedPart = "HumanoidRootPart"
                end
    
            else
                    SelectedPart = "HumanoidRootPart"
            end
        end)
    end
    if game.PlaceId == 5602055394 then
        print'hood modded'
        
    NotifyLib.prompt('Game Detected: Hood Modded', 'yarn#0001, Valox#8980', 5)
            Settings = {
            rewrittenmain = {
            Enabled = true,
            Key = "q",
            DOT = true,
            AIRSHOT = true,
            NOTIF = true,
            FOV = math.huge,
        }
    }
    local SelectedPart = "UpperTorso"
    local Prediction = true
    local PredictionValue = 0.125
        local AnchorCount = 0
        local MaxAnchor = 50
    
        local CC = game:GetService"Workspace".CurrentCamera
        local Plr;
        local enabled = false
        local accomidationfactor = 0.136
        local mouse = game.Players.LocalPlayer:GetMouse()
        local placemarker = Instance.new("Part", game.Workspace)
    
        function makemarker(Parent, Adornee, Color, Size, Size2)
            local e = Instance.new("BillboardGui", Parent)
            e.Name = "PP"
            e.Adornee = Adornee
            e.Size = UDim2.new(Size, Size2, Size, Size2)
            e.AlwaysOnTop = Settings.rewrittenmain.DOT
            local a = Instance.new("Frame", e)
            if Settings.rewrittenmain.DOT == true then
            a.Size = UDim2.new(1, 0, 1, 0)
            else
            a.Size = UDim2.new(0, 0, 0, 0)
            end
            if Settings.rewrittenmain.DOT == true then
            a.Transparency = 0
            a.BackgroundTransparency = 0
            else
            a.Transparency = 1
            a.BackgroundTransparency = 1
            end
            a.BackgroundColor3 = Color
            local g = Instance.new("UICorner", a)
            if Settings.rewrittenmain.DOT == false then
            g.CornerRadius = UDim.new(0, 0)
            else
            g.CornerRadius = UDim.new(1, 1) 
            end
            return(e)
        end
    
        
        local data = game.Players:GetPlayers()
        function noob(player)
            local character
            repeat wait() until player.Character
            local handler = makemarker(guimain, player.Character:WaitForChild(SelectedPart), Color3.fromRGB(255, 0, 0), 0.3, 3)
            handler.Name = player.Name
            player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild(SelectedPart) end)
    
    
            spawn(function()
                while wait() do
                    if player.Character then
                    end
                end
            end)
        end
    
        for i = 1, #data do
            if data[i] ~= game.Players.LocalPlayer then
                noob(data[i])
            end
        end
    
        game.Players.PlayerAdded:connect(function(Player)
            noob(Player)
        end)
    
        spawn(function()
            placemarker.Anchored = true
            placemarker.CanCollide = false
            if Settings.rewrittenmain.DOT == true then
            placemarker.Size = Vector3.new(3, 3, 3)
            else
            placemarker.Size = Vector3.new(0, 0, 0)
            end
            placemarker.Transparency = 0.55
            if Settings.rewrittenmain.DOT then
            makemarker(placemarker, placemarker, Color3.fromRGB(255, 50, 80), 0.40, 0)
            end
        end)
    
        game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
            if k == Settings.rewrittenmain.Key and Settings.rewrittenmain.Enabled then
                if enabled == true then
                    enabled = false
                    if Settings.rewrittenmain.NOTIF == true then
                        Plr = getClosestPlayerToCursor()
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "yarn | revamped";
                        Text = "Unlocked",
                        Duration = 3
                    })
                end
                else
                    Plr = getClosestPlayerToCursor()
                    enabled = true
                    if Settings.rewrittenmain.NOTIF == true then
    
                        game.StarterGui:SetCore("SendNotification", {
                            Title = "yarn | revamped";
                            Text = "Target: "..tostring(Plr.Character.Humanoid.DisplayName),
                            Duration = 3
                        })
    
                    end
                end
            end
        end)
function getClosestPlayerToCursor()
    local closestPlayer
    local shortestDistance = math.huge

    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("Head") then
            local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
            if magnitude < shortestDistance then
                closestPlayer = v
                shortestDistance = magnitude
            end
        end
    end
   return closestPlayer
end
    
        local pingvalue = nil;
        local split = nil;
        local ping = nil;
    
        game:GetService"RunService".Stepped:connect(function()
            if enabled and Plr.Character ~= nil and Plr.Character:FindFirstChild("HumanoidRootPart") then
                placemarker.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor))
            else
                placemarker.CFrame = CFrame.new(0, 9999, 0)
            end
        end)
    
        local mt = getrawmetatable(game)
        local old = mt.__namecall
        setreadonly(mt, false)
        mt.__namecall = newcclosure(function(...)
            local args = {...}
            if enabled and getnamecallmethod() == "FireServer" and args[2] == "MousePos" and Settings.rewrittenmain.Enabled and Plr.Character ~= nil then
    
                -- args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor)
                --[[
                if Settings.rewrittenmain.AIRSHOT == true then
                    if game.Workspace.Players[Plr.Name].Humanoid:GetState() == Enum.HumanoidStateType.Freefall then -- Plr.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Freefall
                        
                        --// Airshot
                        args[3] = Plr.Character.LeftFoot.Position+(Plr.Character.LeftFoot.Velocity*PredictionValue)
    
                    else
                        args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*PredictionValue)
    
                    end
                else
                        args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*PredictionValue)
                end
                ]]
                if Prediction == true then
                    
                args[3] = Plr.Character[SelectedPart].Position+(Plr.Character[SelectedPart].Velocity*PredictionValue)
    
                else
    
                args[3] = Plr.Character[SelectedPart].Position
    
                end
    
                return old(unpack(args))
            end
            return old(...)
        end)
    
        game:GetService("RunService").RenderStepped:Connect(function()
            if Settings.rewrittenmain.AIRSHOT == true and enabled and Plr.Character ~= nil then
                
                if game.Workspace.Players[Plr.Name].Humanoid:GetState() == Enum.HumanoidStateType.Freefall then -- Plr.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Freefall
                    
                    --// Airshot
    
                    --// Anchor Check
    
                    if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
                        AnchorCount = AnchorCount + 1
                        if AnchorCount >= MaxAnchor then
                            Prediction = false
                            wait(2)
                            AnchorCount = 0;
                    else
                        Prediction = true
                        AnchorCount = 0;
                    end
    
                    SelectedPart = "LeftFoot"
    
                else
                    --// Anchor Check
    
                    if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
                        AnchorCount = AnchorCount + 1
                        if AnchorCount >= MaxAnchor then
                            Prediction = false
                            wait(2)
                            AnchorCount = 0;
                        end
                    else
                        Prediction = true
                        AnchorCount = 0;
                    end
    
                    SelectedPart = "HumanoidRootPart"
    
                end
                else
    
                    --// Anchor Check
    
                    if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
                        AnchorCount = AnchorCount + 1
                        if AnchorCount >= MaxAnchor then
                            Prediction = false
                            wait(2)
                            AnchorCount = 0;
                        end
                    else
                        Prediction = true
                        AnchorCount = 0;
                    end
    
                    SelectedPart = "HumanoidRootPart"
                end
    
            else
                    SelectedPart = "HumanoidRootPart"
            end
        end)
    end

    if game.PlaceId == 9183932460 then
        print'Untitled Hood'
    NotifyLib.prompt('Game Detected: Untitled Hood', 'yarn#0001, Valox#8980', 5)
            Settings = {
            rewrittenmain = {
            Enabled = true,
            Key = "q",
            DOT = true,
            AIRSHOT = true,
            NOTIF = true,
            FOV = math.huge,
        }
    }
    local SelectedPart = "UpperTorso"
    local Prediction = true
    local PredictionValue = 0.125
        local AnchorCount = 0
        local MaxAnchor = 50
    
        local CC = game:GetService"Workspace".CurrentCamera
        local Plr;
        local enabled = false
        local accomidationfactor = 0.136
        local mouse = game.Players.LocalPlayer:GetMouse()
        local placemarker = Instance.new("Part", game.Workspace)
    
        function makemarker(Parent, Adornee, Color, Size, Size2)
            local e = Instance.new("BillboardGui", Parent)
            e.Name = "PP"
            e.Adornee = Adornee
            e.Size = UDim2.new(Size, Size2, Size, Size2)
            e.AlwaysOnTop = Settings.rewrittenmain.DOT
            local a = Instance.new("Frame", e)
            if Settings.rewrittenmain.DOT == true then
            a.Size = UDim2.new(1, 0, 1, 0)
            else
            a.Size = UDim2.new(0, 0, 0, 0)
            end
            if Settings.rewrittenmain.DOT == true then
            a.Transparency = 0
            a.BackgroundTransparency = 0
            else
            a.Transparency = 1
            a.BackgroundTransparency = 1
            end
            a.BackgroundColor3 = Color
            local g = Instance.new("UICorner", a)
            if Settings.rewrittenmain.DOT == false then
            g.CornerRadius = UDim.new(0, 0)
            else
            g.CornerRadius = UDim.new(1, 1) 
            end
            return(e)
        end
    
        
        local data = game.Players:GetPlayers()
        function noob(player)
            local character
            repeat wait() until player.Character
            local handler = makemarker(guimain, player.Character:WaitForChild(SelectedPart), Color3.fromRGB(255, 0, 0), 0.3, 3)
            handler.Name = player.Name
            player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild(SelectedPart) end)
    
    
            spawn(function()
                while wait() do
                    if player.Character then
                    end
                end
            end)
        end
    
        for i = 1, #data do
            if data[i] ~= game.Players.LocalPlayer then
                noob(data[i])
            end
        end
    
        game.Players.PlayerAdded:connect(function(Player)
            noob(Player)
        end)
    
        spawn(function()
            placemarker.Anchored = true
            placemarker.CanCollide = false
            if Settings.rewrittenmain.DOT == true then
            placemarker.Size = Vector3.new(4, 4, 4)
            else
            placemarker.Size = Vector3.new(0, 0, 0)
            end
            placemarker.Transparency = 0.50
            if Settings.rewrittenmain.DOT then
            makemarker(placemarker, placemarker, Color3.fromRGB(255, 0, 0), 0.40, 0)
            end
        end)
    
        game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
            if k == Settings.rewrittenmain.Key and Settings.rewrittenmain.Enabled then
                if enabled == true then
                    enabled = false
                    if Settings.rewrittenmain.NOTIF == true then
                        Plr = getClosestPlayerToCursor()
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "yarn | revamped";
                        Text = "Unlocked",
                        Duration = 3
                    })
                end
                else
                    Plr = getClosestPlayerToCursor()
                    enabled = true
                    if Settings.rewrittenmain.NOTIF == true then
    
                        game.StarterGui:SetCore("SendNotification", {
                            Title = "yarn | revamped";
                            Text = "Target: "..tostring(Plr.Character.Humanoid.DisplayName),
                            Duration = 3
                        })
    
                    end
                end
            end
        end)
    
    
    
        function getClosestPlayerToCursor()
            local closestPlayer
            local shortestDistance = Settings.rewrittenmain.FOV
    
            for i, v in pairs(game.Players:GetPlayers()) do
                if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
                    local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                    local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
                    if magnitude < shortestDistance then
                        closestPlayer = v
                        shortestDistance = magnitude
                    end
                end
            end
            return closestPlayer
        end
    
        local pingvalue = nil;
        local split = nil;
        local ping = nil;
    
        game:GetService"RunService".Stepped:connect(function()
            if enabled and Plr.Character ~= nil and Plr.Character:FindFirstChild("HumanoidRootPart") then
                placemarker.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor))
            else
                placemarker.CFrame = CFrame.new(0, 9999, 0)
            end
        end)
    
        local mt = getrawmetatable(game)
        local old = mt.__namecall
        setreadonly(mt, false)
        mt.__namecall = newcclosure(function(...)
            local args = {...}
            if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" and Settings.rewrittenmain.Enabled and Plr.Character ~= nil then
    
                -- args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor)
                --[[
                if Settings.rewrittenmain.AIRSHOT == true then
                    if game.Workspace.Players[Plr.Name].Humanoid:GetState() == Enum.HumanoidStateType.Freefall then -- Plr.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Freefall
                        
                        --// Airshot
                        args[3] = Plr.Character.LeftFoot.Position+(Plr.Character.LeftFoot.Velocity*PredictionValue)
    
                    else
                        args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*PredictionValue)
    
                    end
                else
                        args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*PredictionValue)
                end
                ]]
                if Prediction == true then
                    
                args[3] = Plr.Character[SelectedPart].Position+(Plr.Character[SelectedPart].Velocity*PredictionValue)
    
                else
    
                args[3] = Plr.Character[SelectedPart].Position
    
                end
    
                return old(unpack(args))
            end
            return old(...)
        end)
    
        game:GetService("RunService").RenderStepped:Connect(function()
            if Settings.rewrittenmain.AIRSHOT == true and enabled and Plr.Character ~= nil then
                
                if game.Workspace.Players[Plr.Name].Humanoid:GetState() == Enum.HumanoidStateType.Freefall then -- Plr.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Freefall
                    
                    --// Airshot
    
                    --// Anchor Check
    
                    if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
                        AnchorCount = AnchorCount + 1
                        if AnchorCount >= MaxAnchor then
                            Prediction = false
                            wait(2)
                            AnchorCount = 0;
                    else
                        Prediction = true
                        AnchorCount = 0;
                    end
    
                    SelectedPart = "LeftFoot"
    
                else
                    --// Anchor Check
    
                    if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
                        AnchorCount = AnchorCount + 1
                        if AnchorCount >= MaxAnchor then
                            Prediction = false
                            wait(2)
                            AnchorCount = 0;
                        end
                    else
                        Prediction = true
                        AnchorCount = 0;
                    end
    
                    SelectedPart = "HumanoidRootPart"
    
                end
                else
    
                    --// Anchor Check
    
                    if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
                        AnchorCount = AnchorCount + 1
                        if AnchorCount >= MaxAnchor then
                            Prediction = false
                            wait(2)
                            AnchorCount = 0;
                        end
                    else
                        Prediction = true
                        AnchorCount = 0;
                    end
    
                    SelectedPart = "HumanoidRootPart"
                end
    
            else
                    SelectedPart = "HumanoidRootPart"
            end
        end)
    else
        local NotifyLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vKhonshu/intro/main/ui"))()
       
    end
end})




local section1 = tab3:section({name = "Anti ",side = "right",size = 255})


section1:toggle({name = "Anti Lock",def = false, callback = function(bool)
    getgenv().antilock = bool
end})

section1:slider({name = "Anti Lock Speed",def = 1, max = 5,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
    getgenv().antilockspeed = value
end})

    section1:toggle({name = "Desync",def = false, callback = function(bool)
        getgenv().DesyncEnabled = bool
    end})

    section1:slider({name = "Desync Speed",def = 1, max = 150,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
        getgenv().DesyncVelocity = value
end})

    section1:toggle({name = "Confusion",def = false, callback = function(bool)
        getgenv().Jitter = bool
    end})

    section1:slider({name = "Angle Confusion",def = 1, max = 150,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
        getgenv().Angle = value
    end})

    
    section1:toggle({name = "Anti Bag",def = false, callback = function(bool)
        getgenv().antibag = bool
    end})
    
    section1:toggle({name = "Anti Fling",def = false, callback = function(bool)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = bool
    end})

    section1:toggle({name = "Anti Slow",def = false, callback = function(bool)
        getgenv().antislow = bool
    end})
    

    section1:toggle({name = "Anti Stomp",def = false, callback = function(bool)
        getgenv().antistomplo = bool
    end})
    
    local section1 = tab3:section({name = "Animations ",side = "right",size = 225})

    section1:dropdown({name = "Idle",max = 10,options = {"Borock", "Zombie", "Werewolf", "Ninja", "Ud'zal", "Mage", "Toy"},callback = function(State)
        if State == "Borock" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=3293641938"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=3710131919"
        elseif State == "Zombie" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=616158929"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=616160636"
        elseif State == "Werewolf" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=1083195517"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=1083214717"
        elseif State == "Ninja" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=656117400"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=656118341"
        elseif State == "Udzal" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=3303162274"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=3303162274"
        elseif State == "Mage" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=707742142"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=707855907"
        elseif State == "Toy" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=782841498"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=782841498"
        end
    end
})

section1:dropdown({name = "Walk",max = 10,options = {"Zombie", "Toy", "Ninja", "Mage", "Werewolf"},callback = function(State)
    if State == "Zombie" then
        game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
            "http://www.roblox.com/asset/?id=616168032"
        elseif State == "Toy" then
            game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
                "http://www.roblox.com/asset/?id=782843345"
    elseif State == "Ninja" then
        game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
            "http://www.roblox.com/asset/?id=656121766"
    elseif State == "Mage" then
        game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
            "http://www.roblox.com/asset/?id=707897309"
        elseif State == "Werewolf" then
            game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
                "http://www.roblox.com/asset/?id=1083178339"
    end
end
})

section1:dropdown({name = "Run",max = 10,options = {"Zombie", "Toy", "Ninja", "Mage", "Werewolf"},callback = function(State)
    if State == "Zombie" then
        game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
            "http://www.roblox.com/asset/?id=616163682"
     elseif State == "Toy" then
            game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
                "http://www.roblox.com/asset/?id=782842708"
    elseif State == "Ninja" then
        game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
            "http://www.roblox.com/asset/?id=656118852"
    elseif State == "Mage" then
        game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
            "http://www.roblox.com/asset/?id=707861613"
        elseif State == "Werewolf" then
            game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
                "http://www.roblox.com/asset/?id=1083216690"
    end
end
})

section1:dropdown({name = "Jump",max = 10,options = {"Zombie", "Werewolf", "Ninja", "Mage", "Toy", "OldSchool"},callback = function(State)
if State == "Zombie" then
    game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
        "http://www.roblox.com/asset/?id=616161997"
elseif State == "Werewolf" then
    game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
        "http://www.roblox.com/asset/?id=1083218792"
elseif State == "Ninja" then
    game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
        "http://www.roblox.com/asset/?id=656117878"
elseif State == "Mage" then
    game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
        "http://www.roblox.com/asset/?id=707853694"
elseif State == "Toy" then
    game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
        "http://www.roblox.com/asset/?id=782847020"
elseif State == "OldSchool" then
    game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
        "http://www.roblox.com/asset/?id=5319841935"
end
end
})

section1:dropdown({name = "Fall",max = 10,options = {"Zombie", "Werewolf", "Ninja", "Mage", "Toy", "OldSchool"},callback = function(State)
if State == "Zombie" then
    game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
        "http://www.roblox.com/asset/?id=616157476"
elseif State == "Werewolf" then
    game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
        "http://www.roblox.com/asset/?id=1083189019"
elseif State == "Ninja" then
    game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
        "http://www.roblox.com/asset/?id=656115606"
elseif State == "Mage" then
    game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
        "http://www.roblox.com/asset/?id=707829716"
elseif State == "Toy" then
    game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
        "http://www.roblox.com/asset/?id=782846423"
elseif State == "OldSchool" then
    game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
        "http://www.roblox.com/asset/?id=5319839762"
end
end
})




    local section1 = tab3:section({name = "Auto ",side = "left",size = 85})
    
    section1:toggle({name = " Reload",def = false, callback = function(bool)
        getgenv().AutoReloadx = bool
    end})

    if getgenv().AutoReloadx then
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

    section1:toggle({name = " Medium Armor",def = false, callback = function(bool)
        if getgenv().AutoHighArmor == true then
            getgenv().AutoHighArmor = false
        else
            getgenv().AutoHighArmor = true
        end
        
        while getgenv().AutoHighArmor == true and game:GetService("RunService").Heartbeat:Wait() do
            pcall(function()
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("BodyEffects"):FindFirstChild("Armor").Value <= 0 then
                    local LS = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                    repeat
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[High-Medium Armor] - $2300"].Head.CFrame
                        fireclickdetector(game:GetService("Workspace").Ignored.Shop["[High-Medium Armor] - $2300"].ClickDetector)
                        game:GetService("RunService").Heartbeat:Wait()
                    until game:GetService("Players").LocalPlayer.Character:FindFirstChild("BodyEffects"):FindFirstChild("Armor").Value >= 50
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = LS
                end
            end)
        end
    end})

    section1:toggle({name = " Stomp",def = false, callback = function(bool)
        getgenv().autostomp = bool
    end})
    
    if getgenv().autostomp then
        game.ReplicatedStorage.MainEvent:FireServer("Stomp")
    end


local section1 = tab3:section({name = "Movement",side = "left",size = 220})

section1:toggle({name = " Enable Cframe",def = false, callback = function(bool)
    getgenv().cframespeedtoggle = bool
end})
section1:slider({name = "Cframe Speed",def = 1, max = 20,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
    getgenv().speedvalue = value
end})

section1:toggle({name = "Spinbot",def = false, callback = function(bool)
    getgenv().Spinbot = bool
end})

if Spinbot then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad((positive1)), 0)
end

section1:slider({name = "Spinbot Multiplier",def = 45, max = 165,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
    getgenv().positive1 = value
end})


section1:toggle({name = "B-Hop",def = false, callback = function(state)
    bhop = state
    spawn(function()
    while wait() and bhop do
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
    end
    end)
end})


section1:button({name = "Speed = Z",callback = function()


plr = game:GetService('Players').LocalPlayer
    down = true
    
    function onButton1Down(mouse)
        down = true
        while down do
            if not down then break end
            local char = plr.Character
            char.HumanoidRootPart.Velocity = char.HumanoidRootPart.CFrame.lookVector * 190
            wait()
        end
    end
    
    function onButton1Up(mouse)
        down = false
    end
    
    function onSelected(mouse)
        mouse.KeyDown:connect(function(q) if q:lower()=="z"then onButton1Down(mouse)end end)
        mouse.KeyUp:connect(function(q) if q:lower()=="z"then onButton1Up(mouse)end end)
    end
    onSelected(game.Players.LocalPlayer:GetMouse())
        
end})

section1:button({name = "Macro = X",callback = function()
    local Player = game:GetService("Players").LocalPlayer
    local Mouse = Player:GetMouse()
    local SpeedGlitch = false
    local Wallet = Player.Backpack:FindFirstChild("Wallet")

    local UniversalAnimation = Instance.new("Animation")

    function stopTracks()
        for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
            if (v.Animation.AnimationId:match("rbxassetid")) then
                v:Stop()
            end
        end
    end

    function loadAnimation(id)
        if UniversalAnimation.AnimationId == id then
            stopTracks()
            UniversalAnimation.AnimationId = "1"
        else
            UniversalAnimation.AnimationId = id
            local animationTrack = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(UniversalAnimation)
            animationTrack:Play()
        end
    end

    Mouse.KeyDown:Connect(function(Key)
        if Key == "x" then
            SpeedGlitch = not SpeedGlitch
            if SpeedGlitch == true then
                stopTracks()
                loadAnimation("rbxassetid://3189777795")
                wait(1.5)
                Wallet.Parent = Player.Character
                wait(0.15)
                Player.Character:FindFirstChild("Wallet").Parent = Player.Backpack
                wait(0.05)
                repeat game:GetService("RunService").Heartbeat:wait()
                    keypress(0x49)
                    game:GetService("RunService").Heartbeat:wait()
                    keypress(0x4F)
                    game:GetService("RunService").Heartbeat:wait()
                    keyrelease(0x49)
                    game:GetService("RunService").Heartbeat:wait()
                    keyrelease(0x4F)
                    game:GetService("RunService").Heartbeat:wait()
                until SpeedGlitch == false
            end
        end
    end)
end})

section1:button({name = "Fly = V",callback = function()
local L_152_
	local L_153_ = game.Players.LocalPlayer
	IYMouse = L_153_:GetMouse()
	IYMouse.KeyDown:connect(
            function(L_154_arg0)
		if L_154_arg0 == "v" then
			if L_152_ then
				L_152_ = false
				fly()
			else
				L_152_ = true
				NOFLY()
			end
		end
	end
        )
	for L_155_forvar0, L_156_forvar1 in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if L_156_forvar1:IsA("BasePart") and L_156_forvar1.CanCollide == true then
			L_156_forvar1.CanCollide = false
		end
	end
	FLYING = false
	QEfly = true
	iyflyspeed = 7
	vehicleflyspeed = 7
	function sFLY(L_157_arg0)
		repeat
			wait()
		until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and
                game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
		repeat
			wait()
		until IYMouse
		local L_158_ = game.Players.LocalPlayer.Character.LowerTorso
		local L_159_ = {
			F = 0,
			B = 0,
			L = 0,
			R = 0,
			Q = 0,
			E = 0
		}
		local L_160_ = {
			F = 0,
			B = 0,
			L = 0,
			R = 0,
			Q = 0,
			E = 0
		}
		local L_161_ = 5
		local function L_162_func()
			FLYING = true
			local L_163_ = Instance.new("BodyGyro", L_158_)
			local L_164_ = Instance.new("BodyVelocity", L_158_)
			L_163_.P = 9e4
			L_163_.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			L_163_.cframe = L_158_.CFrame
			L_164_.velocity = Vector3.new(0, 0, 0)
			L_164_.maxForce = Vector3.new(9e9, 9e9, 9e9)
			spawn(
                    function()
				repeat
					wait()
					if not L_157_arg0 and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
						game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand =
                                    true
					end
					if L_159_.L + L_159_.R ~= 0 or L_159_.F + L_159_.B ~= 0 or L_159_.Q + L_159_.E ~= 0 then
						L_161_ = 50
					elseif not (L_159_.L + L_159_.R ~= 0 or L_159_.F + L_159_.B ~= 0 or L_159_.Q + L_159_.E ~= 0) and L_161_ ~= 0 then
						L_161_ = 0
					end
					if L_159_.L + L_159_.R ~= 0 or L_159_.F + L_159_.B ~= 0 or L_159_.Q + L_159_.E ~= 0 then
						L_164_.velocity =
                                    (workspace.CurrentCamera.CoordinateFrame.lookVector * (L_159_.F + L_159_.B) +
                                    workspace.CurrentCamera.CoordinateFrame *
                                        CFrame.new(L_159_.L + L_159_.R, (L_159_.F + L_159_.B + L_159_.Q + L_159_.E) * 0.2, 0).p -
                                    workspace.CurrentCamera.CoordinateFrame.p) *
                                    L_161_
						L_160_ = {
							F = L_159_.F,
							B = L_159_.B,
							L = L_159_.L,
							R = L_159_.R
						}
					elseif L_159_.L + L_159_.R == 0 and L_159_.F + L_159_.B == 0 and L_159_.Q + L_159_.E == 0 and L_161_ ~= 0 then
						L_164_.velocity =
                                    (workspace.CurrentCamera.CoordinateFrame.lookVector * (L_160_.F + L_160_.B) +
                                    workspace.CurrentCamera.CoordinateFrame *
                                        CFrame.new(L_160_.L + L_160_.R, (L_160_.F + L_160_.B + L_159_.Q + L_159_.E) * 0.2, 0).p -
                                    workspace.CurrentCamera.CoordinateFrame.p) *
                                    L_161_
					else
						L_164_.velocity = Vector3.new(0, 0, 0)
					end
					L_163_.cframe = workspace.CurrentCamera.CoordinateFrame
				until not FLYING
				L_159_ = {
					F = 0,
					B = 0,
					L = 0,
					R = 0,
					Q = 0,
					E = 0
				}
				L_160_ = {
					F = 0,
					B = 0,
					L = 0,
					R = 0,
					Q = 0,
					E = 0
				}
				L_161_ = 0
				L_163_:destroy()
				L_164_:destroy()
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
					game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
				end
			end
                )
		end
		IYMouse.KeyDown:connect(
                function(L_165_arg0)
			if L_165_arg0:lower() == "w" then
				if L_157_arg0 then
					L_159_.F = vehicleflyspeed
				else
					L_159_.F = iyflyspeed
				end
			elseif L_165_arg0:lower() == "s" then
				if L_157_arg0 then
					L_159_.B = -vehicleflyspeed
				else
					L_159_.B = -iyflyspeed
				end
			elseif L_165_arg0:lower() == "a" then
				if L_157_arg0 then
					L_159_.L = -vehicleflyspeed
				else
					L_159_.L = -iyflyspeed
				end
			elseif L_165_arg0:lower() == "d" then
				if L_157_arg0 then
					L_159_.R = vehicleflyspeed
				else
					L_159_.R = iyflyspeed
				end
			elseif QEfly and L_165_arg0:lower() == "e" then
				if L_157_arg0 then
					L_159_.Q = vehicleflyspeed * 2
				else
					L_159_.Q = iyflyspeed * 2
				end
			elseif QEfly and L_165_arg0:lower() == "q" then
				if L_157_arg0 then
					L_159_.E = -vehicleflyspeed * 2
				else
					L_159_.E = -iyflyspeed * 2
				end
			end
		end
            )
		IYMouse.KeyUp:connect(
                function(L_166_arg0)
			if L_166_arg0:lower() == "w" then
				L_159_.F = 0
			elseif L_166_arg0:lower() == "s" then
				L_159_.B = 0
			elseif L_166_arg0:lower() == "a" then
				L_159_.L = 0
			elseif L_166_arg0:lower() == "d" then
				L_159_.R = 0
			elseif L_166_arg0:lower() == "e" then
				L_159_.Q = 0
			elseif L_166_arg0:lower() == "q" then
				L_159_.E = 0
			end
		end
            )
		L_162_func()
	end
	function NOFLY()
		FLYING = false
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
	end
	function fly()
		NOFLY()
		wait()
		sFLY()
	end
end})




    local section1 = tab3:section({name = "Client Sided",side = "left",size = 125})

    section1:button({name = "Headless",callback = function()
        game.Players.LocalPlayer.Character.Head.Transparency = 1
        game.Players.LocalPlayer.Character.Head.Transparency = 1
        for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
        if (v:IsA("Decal")) then
        v.Transparency = 1
        end
        end
    end})
    
    section1:button({name = "Korblox",callback = function()
        local ply = game.Players.LocalPlayer
            local chr = ply.Character
            chr.RightLowerLeg.MeshId = "902942093"
            chr.RightLowerLeg.Transparency = "1"
            chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
            chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
            chr.RightFoot.MeshId = "902942089"
            chr.RightFoot.Transparency = "1"
        end})
            
       
section1:button({name = "Beast Mode",callback = function()
local L_412_ = game.Players.LocalPlayer.Character
	local L_413_ = L_412_:WaitForChild("Head")
	local L_414_ = L_413_:WaitForChild("face")
	L_414_.Texture = "rbxassetid://127959433"
end})

section1:button({name = "Playful Vampire",callback = function()
    local L_415_ = game.Players.LocalPlayer.Character
	local L_416_ = L_415_:WaitForChild("Head")
	local L_417_ = L_416_:WaitForChild("face")
	L_417_.Texture = "rbxassetid://2409281591"
end})


local section1 = tab3:section({name = "FE",side = "left",size = 75})

section1:button({name = "Headless",callback = function()
	local L_418_ = game.Players.LocalPlayer
	L_418_.Character.Head:BreakJoints()
	L_418_.Character.Head.Position = Vector3.new(0, 999999999999, 0)
end})

section1:button({name = "Korblox",callback = function()
	game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
end})




local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/trendyylol/roblox/main/Libraries/ESP/Pikahub"))()
local library = loadstring(game:HttpGet("https://pastebin.com/raw/U2HwmEyF"))()




-- Esp

 local section1 = tab2:section({name = "ESP",side = "left",size = 105})

section1:toggle({name = "Boxes", callback = function(bool)
    getgenv().PikaESPSettings.Box = bool
end})

section1:toggle({name = "Name",callback = function(bool)
    getgenv().PikaESPSettings.Name = bool
end})


section1:toggle({name = "Tracers", callback = function(bool)
    getgenv().PikaESPSettings.Tracers = bool
end})

section1:toggle({name = "Unlock Tracers", callback = function(bool)
    getgenv().PikaESPSettings.UnlockTracers = bool
end})



local section1 = tab2:section({name = "Visuals Settings",side = "right",size = 165})




section1:slider({name = "Saturation ",def = 0.1, max = 100,min = 0,rounding = false,ticking = false,measuring = "",callback = function(value)
    Light.ColorCorrection.Saturation = value
end})

section1:slider({name = "Fog",def = 500, max = 2000,min = 0,rounding = false,ticking = false,measuring = "",callback = function(value)
    game.Lighting.FogEnd = value
end})


section1:slider({name = "Brightness",def = 1, max = 100,min = 0,rounding = false,ticking = false,measuring = "",callback = function(value)
    Light.Brightness = value
end})

section1:slider({name = "Stars",def = 500, max = 5000,min = 0,rounding = false,ticking = false,measuring = "",callback = function(value)
    Light.Sky.StarCount = value
end})

section1:colorpicker({name = "World Color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(color)
    Light.Ambient = color
    Light.OutdoorAmbient = color
end})





local custom_theme = {} --soon

local function CreateInstance(cls,props)
local inst = Instance.new(cls)
for i,v in pairs(props) do
	inst[i] = v
end
return inst
end

local section1 = tab2:section({name = "Client Visuals",side = "left",size = 105})
	
section1:toggle({name = "Gun Cham",def = false, callback = function(callback)
    if callback then
        local Client = game.GetService(game, "Players").LocalPlayer
        Client.Character:FindFirstChildOfClass("Tool").Default.Material = Enum.Material.ForceField
        Client.Character:FindFirstChildOfClass("Tool").Default.BrickColor  = BrickColor.new(255, 255, 255)
    else
        local Client = game.GetService(game, "Players").LocalPlayer
        Client.Character:FindFirstChildOfClass("Tool").Default.Material = Enum.Material.Plastic
    end
end})

section1:colorpicker({name = "Gun Cham Color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(color)
    LocalPlayer.Character:FindFirstChildOfClass("Tool").Default.BrickColor = BrickColor.new(color)
end})


section1:toggle({name = "Body Cham",def = false, callback = function(callback)
    if callback then
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
end})

section1:colorpicker({name = "Body Color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(color)
    LocalPlayer.Character.LeftHand.Color = color
    LocalPlayer.Character.RightHand.Color = color
    LocalPlayer.Character.LeftLowerArm.Color = color
    LocalPlayer.Character.RightLowerArm.Color = color
    LocalPlayer.Character.LeftUpperArm.Color = color
    LocalPlayer.Character.RightUpperArm.Color = color
    LocalPlayer.Character.LeftFoot.Color = color
    LocalPlayer.Character.RightFoot.Color = color
    LocalPlayer.Character.LeftLowerLeg.Color = color
    LocalPlayer.Character.RightLowerLeg.Color = color
    LocalPlayer.Character.UpperTorso.Color = color
    LocalPlayer.Character.LowerTorso.Color = color
    LocalPlayer.Character.LeftUpperLeg.Color = color
    LocalPlayer.Character.RightUpperLeg.Color = color
    LocalPlayer.Character.Head.Color = color
end})




    
    local section1 = tab4:section({name = "Locations",side = "left",size = 300})
    section1:button({name = "Admin Base",def = false,callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-874.903992, -32.6492004, -525.215698)
    end})
   
    section1:button({name = "Food",def = false,callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        CFrame.new(-788.39318847656, -39.649200439453, -935.27795410156)
    end})

    section1:button({name = "High-Medium Armor",def = false,callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-934.73651123047, -28.492471694946, 565.99884033203)
    end})

    section1:button({name = "Double Barrel",def = false,callback = function()
        getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1039.59985, 18.8513641, -256.449951, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    end})

    section1:button({name = "Revolver",def = false,callback = function()
        getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-638.75, 18.8500004, -118.175011, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    end})

    section1:button({name = "Shotgun",def = false,callback = function()
getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-578.623657, 5.47212696, -725.131531, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end})

section1:button({name = "Tac",def = false,callback = function()
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(470.877533, 45.1272316, -620.630676, 0.999999821, 0.000604254019, -2.60802135e-08, -0.000604254019, 0.999999821, -8.63220048e-05, -2.60802135e-08, 8.63220048e-05, 1)
end})

section1:button({name = "Smg",def = false,callback = function()
getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-577.123413, 5.47666788, -718.031433, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end})


section1:button({name = "Rpg",def = false,callback = function()
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-794.814697, -42.5468521, -932.97998, 5.96046448e-08, 2.91038305e-11, 1, -0.000610388815, 0.999999821, 2.91038305e-11, -0.999999762, -0.000610388815, 5.96046448e-08)
end})


section1:button({name = "Casino",def = false,callback = function()
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-962.72345, 21.2549973, -186.814987, -0.0274876002, 2.91178949e-05, 0.999621451, -5.5798846e-06, 1, -2.92823333e-05, -0.999621451, -6.38268148e-06, -0.0274876002)
end})


section1:button({name = "Bank",def = false,callback = function()
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-402.123718, 21.75, -283.988617, 0.0159681588, -0.000121377925, -0.999872446, -2.60148026e-05, 1, -0.000121808866, 0.999872506, 2.79565484e-05, 0.0159681737)
end})

    


local section1 = tab4:section({name = "Weapons",side = "Right",size = 250})
section1:button({name = "Revolver",def = false,callback = function()
        LocalPlayer = game:GetService "Players".LocalPlayer
        local gunName = "[Revolver] - $1300"
        local k = game.Workspace.Ignored.Shop[gunName]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    

    section1:button({name = "DB",def = false,callback = function()
    
        LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    

    section1:button({name = "SMG",def = false,callback = function()
        LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[SMG] - $750"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[SMG] - $750"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[SMG] - $750"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})


    section1:button({name = "AK47",def = false,callback = function()
        LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[AK47] - $2250"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[AK47] - $2250"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[AK47] - $2250"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    

    section1:button({name = "LMG",def = false,callback = function()
    LocalPlayer = game:GetService "Players".LocalPlayer
    local k = game.Workspace.Ignored.Shop["[LMG] - $3750"]
    local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
    wait(0.5)
    fireclickdetector(game.Workspace.Ignored.Shop["[LMG] - $3750"].ClickDetector)
    fireclickdetector(game.Workspace.Ignored.Shop["[LMG] - $3750"].ClickDetector)
    LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})


    section1:button({name = "Glock",def = false,callback = function()
        LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Glock] - $500"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Glock] - $500"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Glock] - $500"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})


 section1:button({name = "Silencer",def = false,callback = function()
    LocalPlayer = game:GetService "Players".LocalPlayer
    local k = game.Workspace.Ignored.Shop["[Silencer] - $550"]
    local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
    wait(0.5)
    fireclickdetector(game.Workspace.Ignored.Shop["[Silencer] - $550"].ClickDetector)
    fireclickdetector(game.Workspace.Ignored.Shop["[Silencer] - $550"].ClickDetector)
    LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
 end})

 section1:button({name = "RPG",def = false,callback = function()
 LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[RPG] - $6000"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[RPG] - $6000"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[RPG] - $6000"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
 end})

    section1:button({name = "Flamethrower",def = false,callback = function()
        LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Flamethrower] - $25000"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Flamethrower] - $25000"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Flamethrower] - $25000"].ClickDetector)

        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})


    local section1 = tab4:section({name = "Ammo",side = "Right",size = 250})

    section1:button({name = "Revolver Ammo",def = false,callback = function()
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
    end})

    section1:button({name = "DB Ammo",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    section1:button({name = "SMG Ammo",def = false,callback = function()
        LocalPlayer = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"]
            local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end})

        section1:button({name = "AK47 Ammo",def = false,callback = function()
            LocalPlayer = game:GetService "Players".LocalPlayer
                local k = game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"]
                local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
                wait(0.5)
                fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)
                fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            end})

            section1:button({name = "LMG Ammo",def = false,callback = function()
            local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            end})

            section1:button({name = "Glock Ammo",def = false,callback = function()
            local LocalPlayer = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["25 [Glock Ammo] - $60"]
            local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["25 [Glock Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["25 [Glock Ammo] - $60"].ClickDetector)
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            end})

            section1:button({name = "Silencer Ammo",def = false,callback = function()
            local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["25 [Silencer Ammo] - $50"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["25 [Silencer Ammo] - $50"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["25 [Silencer Ammo] - $50"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            end})

section1:button({name = "RPG Ammo",def = false,callback = function()
            local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["5 [RPG Ammo] - $1000"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["5 [RPG Ammo] - $1000"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["5 [RPG Ammo] - $1000"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
end})

section1:button({name = "Flamethrower Ammo",def = false,callback = function()
local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["140 [Flamethrower Ammo] - $1550"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["140 [Flamethrower Ammo] - $1550"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["140 [Flamethrower Ammo] - $1550"].ClickDetector)

        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})


    local section1 = tab4:section({name = "Food",side = "Left",size = 220})
    section1:button({name = "Pizza",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Pizza] - $5"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Pizza] - $5"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Pizza] - $5"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})


    section1:button({name = "Chicken",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Chicken] - $7"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Chicken] - $7"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Chicken] - $7"].ClickDetector)

        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)

    end})

    section1:button({name = "Taco",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Taco] - $2"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Taco] - $2"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Taco] - $2"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    section1:button({name = "Hot Dog",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[HotDog] - $8"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[HotDog] - $8"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[HotDog] - $8"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    section1:button({name = "Hamburger",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Hamburger] - $5"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Hamburger] - $5"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Hamburger] - $5"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    
    section1:button({name = "Lettuce",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Lettuce] - $5"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Lettuce] - $5"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Lettuce] - $5"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})
    

    section1:button({name = "Donut",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Donut] - $5"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Donut] - $5"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Donut] - $5"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})


    section1:button({name = "Popcorn",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Popcorn] - $7"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Popcorn] - $7"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Popcorn] - $7"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    


    game:GetService("RunService").Heartbeat:Connect(
        function()
    if cframespeedtoggle == true then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
            game.Players.LocalPlayer.Character.Humanoid.MoveDirection * speedvalue
    end
    if Spinbot then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad((positive1)), 0)
    end
    if Jitter then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position) *
            CFrame.Angles(0, math.rad(Angle) + math.rad((math.random(1, 2) == 1 and Jit or -Jit)), 0)
    end

    if AntiAim1 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * -250
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(555), 0)
    end
    if AntiAim2 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1.333, 0)
        wait(0.2)
    end
    if getgenv().antilock then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
            -game.Players.LocalPlayer.Character.Humanoid.MoveDirection * getgenv().antilockspeed
    end
    if getgenv().DesyncEnabled then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * getgenv().DesyncVelocity
            game:GetService("RunService").Heartbeat:Wait()
    end
    if getgenv().antistomplo then
        if game.Players.LocalPlayer.Character.Humanoid.Health <= 5 then
            for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v:Destroy()
                end
            end
        end
    end
    if getgenv().AutoReloadx then
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
    if getgenv().autostomp then
        game.ReplicatedStorage.MainEvent:FireServer("Stomp")
    end
    if getgenv().antibag then
        game.Players.LocalPlayer.Character["Christmas_Sock"]:Destroy()
    end
end)
