local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ido1212/ui/main/CustomVenusUI.lua", true))()
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ido1212/Mr.Beast.ccV2/main/CLASHROYALE.COM"))()
local NotifyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))()
local Notify = NotifyLibrary.Notify

    Notify({
    Title = "EPL REBORN",
    Description = "Was Made By Edvin Only",
    Duration = 5
    })
    
    Notify({
    Title = "EPL",
    Description = "(RightShift To Close Gui)",
    Duration = 7
    })

    Notify({
    Title = "EPL REBORN",
    Description = "is now Loaded!",
    Duration = 7
    })

local main = library:Load({Name = "( ͡° ͜ʖ ͡°)EPL REBORN Made By Edvin#9100( ͠° ͟ʖ ͡°)", Theme = "Dark", SizeX = 440, SizeY = 467, ColorOverrides = {}})

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


local aimbot = main:Tab("Aiming")
local Biden = main:Tab("Speed")
local visuals = main:Tab("Visuals")
local trump = main:Tab("God")
local boris = main:Tab("Antilock")
local obama = main:Tab("Toggles & Extra")

local section = aimbot:Section({Name = "Aiming", column = 1})

local button = section:button({Name = "EXECUTE", Flag = "", callback = function(arg)
getgenv().Enabled = false
getgenv().Key = Enum.KeyCode.Q
getgenv().Prediction = 1.33
getgenv().autpred = false
getgenv().Tracer = false
getgenv().TracerBugged = false
getgenv().LookAt = false
getgenv().AimPart = "HumanoidRootPart"
getgenv().OldAimPart = "HumanoidRootPart"
getgenv().Notif = false
getgenv().ViewPlr = false
getgenv().BEN = false
getgenv().CheckIfJumped = false
getgenv().TargetStrafeV3 = false
getgenv().TargetstrafeV2 = false
_G.Strafe = Vector3.new(0,8,0)
_G.Strafe2 = Vector3.new(0,0,0)
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
Tracer.Color = Color3.fromRGB(255, 0, 0)
Tracer.Thickness = 1
Tracer.Transparency = 1

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


local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(
    function(keygo, ok)
        if (not ok) then
            if (keygo.KeyCode == getgenv().Key) then
                if getgenv().Enabled then
                    Locking = not Locking
                    if Locking then
                    if getgenv().TargetStrafeV3 == true then
                            getgenv().TSV3Multiplier = 5
                            getgenv().TSV3Distance = getgenv().TSV3Distance
                            local i = 0
                            BindToSteppedold("TargetStrafev3", nil, function(dt)
                            i = (i + dt/getgenv().TSV3Multiplier) % 1
                            local alpha = 2 * math.pi * i
                
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.Angles(0, alpha, 0)
                            * CFrame.new(0, 0, getgenv().TSV3Distance)
                            + Plr.Character.HumanoidRootPart.Position
                        end)
                        end
                        Plr = getClosestPlayerToCursor()
                        if getgenv().ViewPlr then
                        	game.Workspace.CurrentCamera.CameraSubject = Plr.Character
                            
                        end
                        if getgenv().BEN then
                            sound:Play()
                        end
if getgenv().Notif == true then
            Notify({
                Title = "EPL",
                Description = ""..""..tostring(Plr.Character.Humanoid.DisplayName).."",
                Duration = 3
            })
end
                    elseif not Locking then
                    UnbindFromSteppedold("TargetStrafev3")    
if getgenv().ViewPlr then
	game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
end

if getgenv().BEN then
    sound1:Play()
end

if getgenv().Notif == true then
            Notify({
                Title = "EPL",
                Description = "Unlocked",
                Duration = 3
            })
end
                    end
                end
            end
        end
    end
)
function getClosestPlayerToCursor()
    local closestPlayer
    local shortestDistance = math.huge

    for i, v in pairs(game.Players:GetPlayers()) do
        if
            v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
                v.Character.Humanoid.Health ~= 0 and
                v.Character:FindFirstChild("UpperTorso")
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
                Plr.Character[getgenv().AimPart].Position + (Plr.Character[getgenv().AimPart].Velocity * Prediction / 10)
            return old(unpack(args))
        end
        return old(...)
    end
)

if getgenv().TargetstrafeV2 and Locking and getgenv().Enabled then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position + _G.Strafe)
    
end

if getgenv().TargetstrafeV2 and Locking and getgenv().Enabled then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position + _G.Strafe)
    
end
local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()

_G.TracerVisible = false
_G.TracerColor = Color3.fromRGB(79, 11, 158)
_G.TracerThickness = 1
_G.TracerTransparency = 1

_G.CircleSides = 3604
_G.CircleColor = Color3.fromRGB(79, 11, 158)
_G.CircleTransparency = 1
_G.CircleRadius = 80
_G.CircleFilled = false
_G.CircleVisible = false
_G.CircleThickness = 1

circle = Drawing.new("Circle")
circle.Color = Color3.fromRGB(255, 0, 0)
circle.Thickness = 0.1
circle.Transparency = 0.5
circle.NumSides = 64
circle.Radius = 64
circle.Visible = false
circle.Filled = true
game:GetService("RunService").RenderStepped:Connect(
    function()
        if getgenv().autpred == true then
        local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        local split = string.split(pingvalue, " ")
        local ping = split[1]
        if tonumber(ping) < 30 then
        getgenv().Prediction = 0.114
        elseif tonumber(ping) <= 30 then
        if tonumber(ping) < 40 then
        getgenv().Prediction = 0.117
        elseif tonumber(ping) <= 40 then
        if tonumber(ping) < 50 then
        getgenv().Prediction = 0.117
        elseif tonumber(ping) <= 50 then
        if tonumber(ping) < 70 then
        getgenv().Prediction = 0.122
        elseif tonumber(ping) <= 80 then
        getgenv().Prediction = 0.133
        elseif tonumber(ping) <= 80 then
        getgenv().Prediction = 0.133
        elseif tonumber(ping) <= 90 then
        getgenv().Prediction = 0.143
        elseif tonumber(ping) <= 150 then
        getgenv().Prediction = 0.155
        elseif tonumber(ping) >= 200 then
        getgenv().Prediction = 0.17
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

if getgenv().LookAt and Locking and getgenv().Enabled then
                    local Char = game.Players.LocalPlayer.Character
                local PrimaryPartOfChar = game.Players.LocalPlayer.Character.PrimaryPart
                local NearestChar = Plr.Character
                local NearestRoot = Plr.Character.HumanoidRootPart
                local NearestPos = CFrame.new(PrimaryPartOfChar.Position, Vector3.new(NearestRoot.Position.X, NearestRoot.Position.Y, NearestRoot.Position.Z))
                Char:SetPrimaryPartCFrame(NearestPos)
                
    end
        if getgenv().Tracer == true and Locking then
            local Vector, OnScreen =
                cc:worldToViewportPoint(
                Plr.Character[getgenv().AimPart].Position + (Plr.Character[getgenv().AimPart].Velocity * Prediction / 10)
            )
            Tracer.Visible = true
            Tracer.From = Vector2.new(mouse.X, mouse.Y + ggi(gs).Y)
            Tracer.To = Vector2.new(Vector.X, Vector.Y)
        elseif getgenv().Tracer == false then
            Tracer.Visible = false
        end
if Tracer.Visible == true and not Locking and getgenv().Enabled then
    getgenv().TracerBugged = true
    Tracer.Visible = false
end

if getgenv().Tracer == true and getgenv().TracerBugged and Locking then
    Tracer.Visible = true
end

	if CheckIfJumped == true then
	if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
        getgenv().AimPart = getgenv().OldAimPart
    else
        getgenv().AimPart = getgenv().OldAimPart
	end
	end
    end)
end})
local toggle = section:Toggle({Name = "Enable", Flag = "", callback = function(arg)
   getgenv().Enabled = arg
end})
local keybind = section:Keybind({Name = "Key", Default = Enum.KeyCode.Q,  Flag = "", Callback = function(arg)
   getgenv().Key = arg
end})
local slider = section:Slider({Name = "Prediction", Min = 0.5, Max = 5, Default = 1.33, Decimals = 10, Flag = "", Callback = function(slider)
   getgenv().Prediction = slider
end})
local toggle6 = section:Toggle({Name = "Auto Prediction (may work)", Flag = "", callback = function(arg)
   getgenv().autpred = arg
end})
local dropdown = section:Dropdown({Default = "HumanoidRootPart", Content = {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso"}, MultiChoice = false, Flag = "", Callback = function(arg)
   getgenv().AimPart = ""..arg
end})
local toggle6 = section:Toggle({Name = "Airshot function", Flag = "", callback = function(arg)
   getgenv().CheckIfJumped = arg
end})
local dropdown = section:Dropdown({Default = "HumanoidRootPart", Content = {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso"}, MultiChoice = false, Flag = "", Callback = function(arg)
   getgenv().OldAimPart = ""..arg
end})
local toggle2 = section:Toggle({Name = "Notification", Flag = "", callback = function(arg)
   getgenv().Notif = arg
end})
local toggle7 = section:Toggle({Name = "Ben Notification Sound", Flag = "", callback = function(arg)
   getgenv().BEN = arg
end})
local toggle4 = section:Toggle({Name = "View", Flag = "", callback = function(arg)
   getgenv().ViewPlr = arg
end})
local toggle5 = section:Toggle({Name = "Look at", Flag = "", callback = function(arg)
   getgenv().LookAt = arg
end})
local section = aimbot:Section({Name = "Tracer", column = 1})
local toggle3 = section:Toggle({Name = "Tracer", Flag = "", callback = function(arg)
   getgenv().Tracer = arg
end})

local slider = section:Slider({Name = "tracer Thickness", Min = 1, Max = 9, Default = 1, Flag = "", Callback = function(slider)
   _G.TracerThickness = slider
end})

local slider = section:Slider({Name = "tracer Transparency", Min = 0, Max = 1, Default = 1, Decimals = 50, Flag = "", Callback = function(slider)
   _G.TracerTransparency = slider
end})

local colorPicker = section:ColorPicker({name = "Tracer Colour", Default = Color3.fromRGB(79, 11, 158),  Flag = "", Callback = function(color)
   _G.TracerColor = color
end})
local section = aimbot:Section({Name = "Circle", column = 1})

local toggle8 = section:Toggle({Name = "Circle Visible", Flag = "", callback = function(arg)
   _G.CircleVisible = arg
end})
local toggle9 = section:Toggle({Name = "Circle Filled", Flag = "", callback = function(arg)
   _G.CircleFilled = arg
end})

local slider = section:Slider({Name = "Circle Radius/size", Min = 0, Max = 450, Default = 80, Decimals = 1, Flag = "", Callback = function(slider)
   _G.CircleRadius = slider
end})

local slider = section:Slider({Name = "Circle Thickness", Min = 1, Max = 9, Default = 1, Flag = "", Callback = function(slider)
   _G.CircleThickness = slider
end})

local slider = section:Slider({Name = "Circle Transparency", Min = 0, Max = 1, Default = 1, Decimals = 50, Flag = "", Callback = function(slider)
   _G.CircleTransparency = slider
end})

local colorPicker = section:ColorPicker({name = "Circle Colour", Default = Color3.fromRGB(79, 11, 158),  Flag = "", Callback = function(color)
   _G.CircleColor = color
end})
local dropdown = section:Dropdown({Default = "Circle", Content = {"Circle", "Hexagon", "Triangle", "Pentagon", "Heptagon", "Octagon", "Quadrilateral", "Nonagon"},
    multichoice = false,
    callback = function(State)
        if State == "Circle" then
            _G.CircleSides = 350
        elseif State == "Hexagon" then
            _G.CircleSides = 6
        elseif State == "Triangle" then
            _G.CircleSides = 3
        elseif State == "Pentagon" then
            _G.CircleSides = 5
        elseif State == "Heptagon" then
            _G.CircleSides = 7
        elseif State == "Octagon" then
            _G.CircleSides = 8
        elseif State == "Quadrilateral" then
            _G.CircleSides = 4
        elseif State == "Nonagon" then
            _G.CircleSides = 9
        end
end})
local section = aimbot:Section({Name = "Target strafe", column = 1})

local toggle10 = section:Toggle({Name = "Strafe 1", Flag = "", callback = function(arg)
   getgenv().TargetStrafeV3 = arg
end})

local slider = section:Slider({Name = "Strafe 1 Distance", Min = 0, Max = 40, Default = 5, Decimals = 50, Flag = "", Callback = function(slider)
   getgenv().TSV3Distance = slider
end})

local toggle11 = section:Toggle({Name = "Air Strafe", Flag = "", callback = function(arg)
   getgenv().BlindStrafe = arg
end})

local slider = section:Slider({Name = "Air strafe up", Min = 0, Max = 40, Default = 8, Decimals = 50, Flag = "", Callback = function(slider)
   _G.FRAME = Vector3.new(0,slider,0)
end})

local section = aimbot:Section({Name = "Aiming ||", column = 2})

local button = section:button({Name = "EXECUTE", Flag = "", callback = function(arg)
getgenv().OldAimingPart = "HumanoidRootPart"
getgenv().AimingPart = "HumanoidRootPart"
    getgenv().AimlockKey = "q"
    getgenv().AimRadius = 30 
    getgenv().ThirdPerson = true 
    getgenv().FirstPerson = true
    getgenv().TeamCheck = false
    getgenv().PredictMovement = true
    getgenv().PredictionVelocity = 7
    getgenv().AIR = false
    getgenv().Smoothness = false
    getgenv().SmoothnessAmount = 1

    local Players, Uis, RService, SGui = game:GetService"Players", game:GetService"UserInputService", game:GetService"RunService", game:GetService"StarterGui";
    local Client, Mouse, Camera, CF, RNew, Vec3, Vec2 = Players.LocalPlayer, Players.LocalPlayer:GetMouse(), workspace.CurrentCamera, CFrame.new, Ray.new, Vector3.new, Vector2.new;
    getgenv().Aimlock = false
    local AimlockTarget;
    local OldPre;
   

    
    getgenv().WorldToViewportPoint = function(P)
        return Camera:WorldToViewportPoint(P)
    end
    
    getgenv().WorldToScreenPoint = function(P)
        return Camera.WorldToScreenPoint(Camera, P)
    end
    
    getgenv().GetObscuringObjects = function(T)
        if T and T:FindFirstChild(getgenv().AimingPart) and Client and Client.Character:FindFirstChild("Head") then 
            local RayPos = workspace:FindPartOnRay(RNew(
                T[getgenv().AimingPart].Position, Client.Character.Head.Position)
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
            if AimlockTarget and AimlockTarget.Character and AimlockTarget.Character:FindFirstChild(getgenv().AimingPart) then
                if getgenv().FirstPerson == true then
                    if CanNotify == true then
                        if getgenv().PredictMovement == true then
                            if getgenv().Smoothness == true then
                                --// The part we're going to lerp/smoothen \\--
                                local Main = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimingPart].Position + AimlockTarget.Character[getgenv().AimingPart].Velocity/PredictionVelocity)
                                
                                --// Making it work \\--
                                Camera.CFrame = Camera.CFrame:Lerp(Main, getgenv().SmoothnessAmount, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut)
                            else
                                Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimingPart].Position + AimlockTarget.Character[getgenv().AimingPart].Velocity/PredictionVelocity)
                            end
                        elseif getgenv().PredictMovement == false then 
                            if getgenv().Smoothness == true then
                                --// The part we're going to lerp/smoothen \\--
                                local Main = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimingPart].Position)

                                --// Making it work \\--
                                Camera.CFrame = Camera.CFrame:Lerp(Main, getgenv().SmoothnessAmount, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut)
                            else
                                Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimingPart].Position)
                            end
                        end
                    end
                end
            end
        end
		if AIR == true then
            if AimlockTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                getgenv().AimingPart = getgenv().OldAimingPart
            else
               getgenv().AimingPart = getgenv().OldAimingPart
          end
        end
end)
end})

local toggle12 = section:Toggle({Name = "Enable", Flag = "", callback = function(arg)
   getgenv().Aimlock = arg
end})

local box = section:Box({Name = "Key", Flag = "", Callback = function(arg)
   getgenv().AimlockKey = arg
end})

local slider = section:Slider({Name = "Prediction", Min = 0, Max = 20, Default = 7, Decimals = 50, Flag = "", Callback = function(slider)
   getgenv().PredictionVelocity = slider
end})

local dropdown = section:Dropdown({Default = "HumanoidRootPart", Content = {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso"}, MultiChoice = false, Flag = "", Callback = function(arg)
   getgenv().AimingPart = ""..arg
end})

local toggle13 = section:Toggle({Name = "Airshot function", Flag = "", callback = function(arg)
   getgenv().AIR = arg
end})

local dropdown = section:Dropdown({Default = "HumanoidRootPart", Content = {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso"}, MultiChoice = false, Flag = "", Callback = function(arg)
   getgenv().OldAimingPart = ""..arg
end})

local toggle14 = section:Toggle({Name = "Smoothing", Flag = "", callback = function(arg)
   getgenv().Smoothness = arg
end})

local slider = section:Slider({Name = "Smoothing Amount", Min = 0, Max = 1, Default = 1, Decimals = 25, Flag = "", Callback = function(slider)
   getgenv().SmoothnessAmount = slider
end})


local section4 = Biden:Section({Name = "WalkSpeed", column = 1})

local button = section4:button({Name = "Enable WalkSpeed", Flag = "", callback = function(arg)
repeat wait() until game:IsLoaded() 

getgenv().TeclasWS = {
    ["tecla1"] = "",
    ["tecla2"] = "", 
    ["tecla3"] = "C" 
}



-- // servicios
local MININOS_DOXXEADOS = game:GetService("Players")
local AUDIOS_LOUD_DE_TRAP = game:GetService("StarterGui") or "son una mierda"

-- // objetos
local neonazi = MININOS_DOXXEADOS.LocalPlayer
local esvastica = neonazi:GetMouse()

-- // variables
local lista_de_victimas_de_drizzy = getrenv()._G
local da_hood_rblxm_REAL = getrawmetatable(game)
local CP = da_hood_rblxm_REAL.__newindex
local CP_DE_DRIZZY = da_hood_rblxm_REAL.__index
getgenv().velocidad_de_cum = 125
local es_pedofilo = true

-- // funciones para acortar codigo :]
function anunciar_atentado_terrorista(fecha_del_atentado)
    AUDIOS_LOUD_DE_TRAP:SetCore("SendNotification",{
        Title="Speed",
        Text=fecha_del_atentado,
       })
end


getgenv().TECHWAREWALKSPEED_LOADED = true


wait(1.5)



-- // conexiÃ³n
esvastica.KeyDown:Connect(function(el_impostor)
    if el_impostor:lower() == TeclasWS.tecla1:lower() then
        velocidad_de_cum = velocidad_de_cum + 1
        anunciar_atentado_terrorista(" (speed =   "..tostring(velocidad_de_cum)..")")
    elseif el_impostor:lower() == TeclasWS.tecla2:lower() then
        velocidad_de_cum = velocidad_de_cum - 1
        anunciar_atentado_terrorista(" (speed =  "..tostring(velocidad_de_cum)..")")
    elseif el_impostor:lower() == TeclasWS.tecla3:lower() then
        if es_pedofilo then
            es_pedofilo = false
            anunciar_atentado_terrorista("speed off")
        else
            es_pedofilo = true
            anunciar_atentado_terrorista("speed on")
        end
    end
end)

-- // mi parte favorita: metametodos
setreadonly(da_hood_rblxm_REAL,false)
da_hood_rblxm_REAL.__index = newcclosure(function(BEST_ON_TOP,IS_GARBAGE)
    local esPedofilo = checkcaller()
    if IS_GARBAGE == "WalkSpeed" and not esPedofilo then
        return lista_de_victimas_de_drizzy.CurrentWS
    end
    return CP_DE_DRIZZY(BEST_ON_TOP,IS_GARBAGE)
end)
da_hood_rblxm_REAL.__newindex = newcclosure(function(kaias,ip,logger)
    local unNeonazi = checkcaller()
    if es_pedofilo then
        if ip == "WalkSpeed" and logger ~= 0 and not unNeonazi then
            return CP(kaias,ip,velocidad_de_cum)
        end
    end
    return CP(kaias,ip,logger)
end)
setreadonly(da_hood_rblxm_REAL,true)

repeat wait() until game:IsLoaded()
local Players = game:service('Players')
local Player = Players.LocalPlayer

repeat wait() until Player.Character

local userInput = game:service('UserInputService')
local runService = game:service('RunService')

local Multiplier = -0.22
local Enabled = false
local whentheflashnoiq

userInput.InputBegan:connect(function(Key)
    if Key.KeyCode == Enum.KeyCode.LeftBracket then
        Multiplier = Multiplier + 0.01
        print(Multiplier)
        wait(0.2)
        while userInput:IsKeyDown(Enum.KeyCode.LeftBracket) do
            wait()
            Multiplier = Multiplier + 0.01
            print(Multiplier)
        end
    end

    if Key.KeyCode == Enum.KeyCode.RightBracket then
        Multiplier = Multiplier - 0.01
        print(Multiplier)
        wait(0.2)
        while userInput:IsKeyDown(Enum.KeyCode.RightBracket) do
            wait()
            Multiplier = Multiplier - 0.01
            print(Multiplier)
        end
    end

    if Key.KeyCode == Enum.KeyCode.P then
        Enabled = not Enabled
        if Enabled == true then
            repeat
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * Multiplier
                game:GetService("RunService").Stepped:waitn()
            until Enabled == true
        end
    end
end)
end})

local box = section4:Box({Name = "Key", Flag = "", Callback = function(arg)
   TeclasWS.tecla3 = arg
end})

local slider = section4:Slider({Name = "WalkSpeed Speed", Min = 16, Max = 750, Default = 125, Flag = "", Callback = function(slider)
   getgenv().velocidad_de_cum = slider
end})


getgenv().CFrameSpeedKey = Enum.KeyCode.Z
getgenv().Multiplier = 0

local section4 = Biden:Section({Name = "CFrame Speed", column = 1})

local button = section4:Button({Name = "CFrame Speed", Callback = function()
			local userInput = game:service('UserInputService')
			local runService = game:service('RunService')
			
			userInput.InputBegan:connect(function(Key)
				if Key.KeyCode == getgenv().CFrameSpeedKey then
					Enabled = not Enabled
					if Enabled == true then
						repeat
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * getgenv().Multiplier
							runService.Stepped:wait()
						until Enabled == false
					end
				end
				end)
end})

local keybind = section4:Keybind({Name = "Keybind", Default = Enum.KeyCode.Z,  Flag = "p", Callback = function(arg)
getgenv().CFrameSpeedKey = arg
end})

local slider = section4:Slider({Name = "Speed", Min = -9, Max = 12, Default = 0, Flag = "Slider", Callback = function(slider)
   getgenv().Multiplier = slider
end})


local button3 = section4:Button({Name = "CFrame Speed Fix", Callback = function()
			for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if v:IsA("Script") and v.Name ~= "Health" and v.Name ~= "Sound" and v:FindFirstChild("LocalScript") then
					v:Destroy()
				end
			end
			game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
				repeat
					wait()
				until game.Players.LocalPlayer.Character
				char.ChildAdded:Connect(function(child)
					if child:IsA("Script") then 
						wait(0.1)
						if child:FindFirstChild("LocalScript") then
							child.LocalScript:FireServer()
						end
end
end)
end)
end})

local section4 = Biden:Section({Name = "Fly (X)", column = 2})

local button = section4:Button({Name = "Enable Fligth", Callback = function()
 local plr = game.Players.LocalPlayer
    local mouse = plr:GetMouse()

    localplayer = plr

    if workspace:FindFirstChild("Core") then
        workspace.Core:Destroy()
    end

    local Core = Instance.new("Part")
    Core.Name = "Core"
    Core.Size = Vector3.new(0.05, 0.05, 0.05)

    spawn(function()
        Core.Parent = workspace
        local Weld = Instance.new("Weld", Core)
        Weld.Part0 = Core
        Weld.Part1 = localplayer.Character.LowerTorso
        Weld.C0 = CFrame.new(0, 0, 0)
    end)

    workspace:WaitForChild("Core")

    local torso = workspace.Core
    flying = true
    local speed = 150
    local keys={a=false,d=false,w=false,s=false}
    local e1
    local e2
    local function start()
        local pos = Instance.new("BodyPosition",torso)
        local gyro = Instance.new("BodyGyro",torso)
        pos.Name="EPIXPOS"
        pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        pos.position = torso.Position
        gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        gyro.cframe = torso.CFrame
        repeat
            wait()
            localplayer.Character.Humanoid.PlatformStand=true
            local new=gyro.cframe - gyro.cframe.p + pos.position
            if not keys.w and not keys.s and not keys.a and not keys.d then
                speed = 15
            end
            if keys.w then
                new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                speed=speed+0
            end
            if keys.s then
                new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                speed=speed+0
            end
            if keys.d then
                new = new * CFrame.new(speed,0,0)
                speed=speed+0
            end
            if keys.a then
                new = new * CFrame.new(-speed,0,0)
                speed=speed+0
            end
            if speed>3.2 then
                speed= 15
            end
            pos.position=new.p
            if keys.w then
                gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*0),0,0)
            elseif keys.s then
                gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*0),0,0)
            else
                gyro.cframe = workspace.CurrentCamera.CoordinateFrame
            end
        until flying == false
        if gyro then gyro:Destroy() end
        if pos then pos:Destroy() end
        flying=false
        localplayer.Character.Humanoid.PlatformStand=false
        speed = 15
    end
    e1=mouse.KeyDown:connect(function(key)
        if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
        if key=="w" then
            keys.w=true
        elseif key=="s" then
            keys.s=true
        elseif key=="a" then
            keys.a=true
        elseif key=="d" then
            keys.d=true
        elseif key=="x" then
            if flying==true then
                flying=false
            else
                flying=true
                start()
            end
        end
    end)
    e2=mouse.KeyUp:connect(function(key)
        if key=="w" then
            keys.w=false
        elseif key=="s" then
            keys.s=false
        elseif key=="a" then
            keys.a=false
        elseif key=="d" then
            keys.d=false
        end
    end)
end})

local section3 = visuals:Section({Name = "ESP", column = 1})

local toggle4 = section3:Toggle({Name = "Enabled", Flag = "Enable", callback = function(arg)
   ESP.Enabled = arg
end})

local toggle5 = section3:Toggle({Name = "Boxes", Flag = "Enable", callback = function(arg)
   ESP.Boxes = arg
end})

local toggle6 = section3:Toggle({Name = "Info", Flag = "Enable", callback = function(arg)
   ESP.Names = arg
end})

local toggle7 = section3:Toggle({Name = "TeamMates", Flag = "Enable", callback = function(arg)
   ESP.TeamMates = arg
end})

local toggle8 = section3:Toggle({Name = "TeamColor", Flag = "Enable", callback = function(arg)
   ESP.TeamColor = arg
end})

local toggle9 = section3:Toggle({Name = "FaceCamera", Flag = "Enable", callback = function(arg)
   ESP.FaceCamera = arg
end})

local toggle10 = section3:Toggle({Name = "Tracer", Flag = "Enable", callback = function(arg)
   ESP.Tracers = arg
end})

local colorPicker2 = section3:ColorPicker({name = "Colour", Default = Color3.fromRGB(79, 11, 158),  Flag = "Color", Callback = function(color)
   ESP.Color = color
end})

local section3 = visuals:Section({Name = "Body chams", column = 2})

local toggle13 = section3:Toggle({Name = "Body Chams Enable", Flag = "", callback = function(callback)
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

local colorPicker = section3:ColorPicker({name = "Body Chams Color", Default = Color3.fromRGB(79, 11, 158),  Flag = "", Callback = function(color)
    game.Players.LocalPlayer.Character.LeftHand.Color = color
    game.Players.LocalPlayer.Character.RightHand.Color = color
    game.Players.LocalPlayer.Character.LeftLowerArm.Color = color
    game.Players.LocalPlayer.Character.RightLowerArm.Color = color
    game.Players.LocalPlayer.Character.LeftUpperArm.Color = color
    game.Players.LocalPlayer.Character.RightUpperArm.Color = color
    game.Players.LocalPlayer.Character.LeftFoot.Color = color
    game.Players.LocalPlayer.Character.RightFoot.Color = color
    game.Players.LocalPlayer.Character.LeftLowerLeg.Color = color
    game.Players.LocalPlayer.Character.RightLowerLeg.Color = color
    game.Players.LocalPlayer.Character.UpperTorso.Color = color
    game.Players.LocalPlayer.Character.LowerTorso.Color = color
    game.Players.LocalPlayer.Character.LeftUpperLeg.Color = color
    game.Players.LocalPlayer.Character.RightUpperLeg.Color = color
    game.Players.LocalPlayer.Character.Head.Color = color
end})

local section3 = visuals:Section({Name = "Gun chams", column = 2})

local toggle14 = section3:Toggle({Name = "Gun Chams Enable", Flag = "", callback = function(callback)
    if callback then
        local Client = game.GetService(game, "Players").LocalPlayer
        Client.Character:FindFirstChildOfClass("Tool").Default.Material = Enum.Material.ForceField
        Client.Character:FindFirstChildOfClass("Tool").Default.BrickColor  = BrickColor.new(255, 255, 255)
    else
        local Client = game.GetService(game, "Players").LocalPlayer
        Client.Character:FindFirstChildOfClass("Tool").Default.Material = Enum.Material.Plastic
    end
end})

local colorPicker = section3:ColorPicker({name = "Gun Chams Color", Default = Color3.fromRGB(79, 11, 158),  Flag = "", Callback = function(color)
game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Default.BrickColor = BrickColor.new(color)
end})

local section5 = trump:Section({Name = "Full Godmode", column = 1})

local button = section5:button({Name = "Enable", Flag = "", callback = function(arg)
 local localPlayer = game:GetService('Players').LocalPlayer;
                local localCharacter = localPlayer.Character;
                localCharacter:FindFirstChildOfClass('Humanoid').Health = 0;
                local newCharacter = localPlayer.CharacterAdded:Wait();
                local spoofFolder = Instance.new('Folder');
                spoofFolder.Name = 'FULLY_LOADED_CHAR';
                spoofFolder.Parent = newCharacter;
                newCharacter:WaitForChild('RagdollConstraints'):Destroy();
                local spoofValue = Instance.new('BoolValue', newCharacter);
                spoofValue.Name = 'RagdollConstraints';
                local name = game.Players.LocalPlayer.Name
                local lol =    game.Workspace:WaitForChild(name)
                local money = Instance.new("Folder",game.Players.LocalPlayer.Character);money.Name = "FULLY_LOADED_CHAR"
                lol.Parent = game.Workspace.Players
                game.Players.LocalPlayer.Character:WaitForChild("BodyEffects")
                game.Players.LocalPlayer.Character.BodyEffects.BreakingParts:Destroy()    
end})

local section5 = trump:Section({Name = "Gobblock", column = 2})

local button = section5:button({Name = "Enable", Flag = "", callback = function(arg)
local localPlayer = game:GetService('Players').LocalPlayer;
				local localCharacter = localPlayer.Character;
				localCharacter:FindFirstChildOfClass('Humanoid').Health = 0;
				local newCharacter = localPlayer.CharacterAdded:Wait();
				local spoofFolder = Instance.new('Folder');
				spoofFolder.Name = 'FULLY_LOADED_CHAR';
				spoofFolder.Parent = newCharacter;
				newCharacter:WaitForChild('BodyEffects').Dead:Destroy();
				local spoofValue = Instance.new('BoolValue', newCharacter.BodyEffects);
				spoofValue.Name = 'Dead';
				wait()
				--godblock/godbullet
				local ps = game:GetService("Players")
				local lp = ps.LocalPlayer
				local char = lp.Character

				char.BodyEffects.Armor:Destroy()
				char.BodyEffects.Defense:Destroy()

				local Clone1 = Instance.new("IntValue")
				Clone1.Name = "Armor"
				Clone1.Parent = char.BodyEffects

				local Clone2 = Instance.new("NumberValue")
				Clone2.Name = "Defense"
				Clone2.Parent = char.BodyEffects
				wait()
				--walspeed
				local d = {}
				local e = {}
				local g = {}
				local h = {}
				local j = {}
				local k = {}
				local function l()
					local m = 3
					local n = checkcaller
					local o = getrawmetatable(game)
					setreadonly(o, false)
					local p = o.__index
					local q = o.__newindex
					local r = o.__namecall
					o.__index =
						newcclosure(
							function(s, t)
							if n() then
								return p(s, t)
							end
							if d[s] and d[s][t] then
								local u = d[s][t]
								if u["IsCallback"] == true then
									return u["Value"](s)
								else
									return u["Value"]
								end
							end
							if g[t] then
								local v = g[t]
								if v["IsCallback"] == true then
									return v["Value"](s)
								else
									return v["Value"]
								end
							end
							if j[s] and j[s][t] then
								return k[s][t]
							end
							return p(s, t)
						end
						)
					o.__newindex =
						newcclosure(
							function(w, x, y)
							if n() then
								return q(w, x, y)
							end
							if e[w] and e[w][x] then
								local z = e[w][x]
								if z["Callback"] == nil then
									return
								else
									z["Callback"](w, y)
									return
								end
							end
							if h[x] then
								local A = h[x]
								if A["Callback"] == nil then
									return
								else
									A["Callback"](w, y)
									return
								end
							end
							if j[w] and j[w][x] then
								local B = j[w][x]
								if type(y) ~= B["Type"] then
									error("bad argument #3 to '" .. x .. "' (" .. B["Type"] .. " expected, got " .. type(x) .. ")")
								end
								k[w][x] = y
								return
							end
							return q(w, x, y)
						end
						)
					local D = game.Players.LocalPlayer.Character.Humanoid
					local function A(_)
						local a0 = p(D, _)
						local a1 = type(a0)
						if not j[D] then
							j[D] = {}
						end
						if not k[D] then
							k[D] = {}
						end
						j[D][_] = {Type = a1}
						k[D][_] = p(D, _)
						local a2 = function()
							j[D][_] = nil
							k[D][_] = nil
						end
						return {remove = a2, Remove = a2}
					end
					A("WalkSpeed")
					A("JumpPower")
				end
				l()
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 22
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
				wait()
				while wait() do
					game.ReplicatedStorage.MainEvent:FireServer("Block", true)
					wait()
					for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
						if (v.Animation.AnimationId:match("rbxassetid://2788354405")) then
							v:Stop();
						end;
					end;
				end
				wait()
				while wait() do
					pcall(function()
						for i, v in pairs(game.Players:GetPlayers()) do
							if (workspace.Players[game.Players.LocalPlayer.Name].HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude < 1 then
								game.ReplicatedStorage.MainEvent:FireServer("Block", true)
							end
						end
					end)
				end   
end})

getgenv().Jit = math.random(30, 90)
getgenv().Angle = 150
getgenv().Spinbot = true
getgenv().Jitter = true
getgenv().AntiAim1 = true
getgenv().AntiAim2 = true
getgenv().BlatantAA = true
getgenv().antilock = true
getgenv().antilockspeed = 0.18
getgenv().Underground = true
getgenv().hip = 2.80
getgenv().val = - 35
getgenv().antistomplo = true
getgenv().AutoReloadx = true
getgenv().autostomp = true
getgenv().antibag = true

local section5 = boris:Section({Name = "Blatant Section", column = 1})

local section5 = boris:Section({Name = "Underground AA", column = 1})

local toggle = section5:Toggle({Name = "Toggle", Flag = "Enable", callback = function(arg)
getgenv().Underground = arg
if getgenv().Underground == true then
repeat
task.wait()
 local oldVelocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, val, oldVelocity.Z)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, oldVelocity.Y, oldVelocity.Z)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, val, oldVelocity.Z)
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = hip 
   until getgenv().Underground == false
    end
end})

local slider = section5:Slider({Name = "Underground AA Val", Min = - 70, Max = - 1, Default = - 35, Decimals = 10, Flag = "", Callback = function(slider)
   getgenv().val = slider
end})


local section5 = boris:Section({Name = "Blatant Spin AA", column = 1})

local toggle = section5:Toggle({Name = "Toggle", Flag = "Enable", callback = function(arg)
getgenv().AntiAim1 = arg
if getgenv().AntiAim1 == true then
    repeat
        task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * -250
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(555), 0)
    until getgenv().AntiAim1 == false
    end
end})
local section5 = boris:Section({Name = "SlingShot AA (not Recomended)", column = 1})

local toggle = section5:Toggle({Name = "Toggle", Flag = "Enable", callback = function(arg)
getgenv().AntiAim2 = arg
    if getgenv().AntiAim2 == true then
        repeat
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0.999, 0)
        until getgenv().AntiAim2 == false
        end
end})
local section5 = boris:Section({Name = "Super Blatant Fling AA", column = 1})

local toggle = section5:Toggle({Name = "Toggle", Flag = "Enable", callback = function(arg)
    getgenv().BlatantAA = arg
    local Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
if getgenv().BlatantAA == true  then
    repeat
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (CFrame.new(Position) + Vector3.new(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15))) * CFrame.Angles(math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)))
until getgenv().BlatantAA == false
end
end})

local section5 = boris:Section({Name = "Non Blatant Section", column = 2})

local section5 = boris:Section({Name = "Jitter", column = 2})

local toggle = section5:Toggle({Name = "Toggle", Flag = "Enable", callback = function(arg)
getgenv().Jitter = arg
if getgenv().Jitter == true then
    repeat
        task.wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position) *
                CFrame.Angles(0, math.rad(Angle) + math.rad((math.random(1, 2) == 1 and Jit or -Jit)), 0)
            until getgenv().Jitter == false
        end
end})

local slider = section5:Slider({Name = "Jitter Angle", Min = 0, Max = 250, Default = 150, Decimals = 3, Flag = "", Callback = function(slider)
   getgenv().Angle = slider
end})

local section5 = boris:Section({Name = "Spinbot", column = 2})

local toggle = section5:Toggle({Name = "Toggle", Flag = "Enable", callback = function(arg)
getgenv().Spinbot = arg
if getgenv().Spinbot == true then
repeat
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(555), 0)
until getgenv().Spinbot == false
    end
end})

local section5 = boris:Section({Name = "Reverse AA", column = 2})

local toggle = section5:Toggle({Name = "Toggle", Flag = "Enable", callback = function(arg)
getgenv().antilock = arg
if getgenv().antilock == true then
    repeat
        task.wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                -game.Players.LocalPlayer.Character.Humanoid.MoveDirection * getgenv().antilockspeed
until getgenv().antilock == false
end    
end})

local slider = section5:Slider({Name = "Reverse AA Speed", Min = 0, Max = 1, Default = 0.18, Decimals = 2, Flag = "", Callback = function(slider)
   getgenv().antilockspeed = slider
end})

local section4 = obama:Section({Name = "Random Stuff", column = 1})

local button = section4:button({Name = "Tool Reach", Flag = "", callback = function(arg)
for i, v in pairs(game:GetService"Players".LocalPlayer.Character:GetChildren()) do
        if v:isA("Tool") then
            local a = Instance.new("SelectionBox", v.Handle)
            a.Adornee = v.Handle
            v.Handle.Size = Vector3.new(50, 50, 50)
            v.Handle.Transparency = 1
            v.GripPos = Vector3.new(0, 0, 0)
        end
    end
end})

local button = section4:button({Name = "Become Fat (FE)", Flag = "", callback = function(arg)
game.Players.LocalPlayer.Character.Humanoid.BodyDepthScale:Destroy()
        game.Players.LocalPlayer.Character.Humanoid.BodyWidthScale:Destroy()
end})

local button = section4:button({Name = "Become Fat (FE) Say .Fat", Flag = "", callback = function(arg)
    game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".Fat" then
game.Players.LocalPlayer.Character.Humanoid.BodyDepthScale:Destroy()
        game.Players.LocalPlayer.Character.Humanoid.BodyWidthScale:Destroy()
    end
        end)
end})

local button = section4:button({Name = "Headless (FE)", Flag = "", callback = function(arg)
game.Players.LocalPlayer.Character.Head:BreakJoints()
game.Players.LocalPlayer.Character.Head.Position = Vector3.new(0, 999999999999, 0)
end})

local section4 = obama:Section({Name = "Toggles", column = 2})

local toggle = section4:Toggle({Name = "Antistomp", Flag = "Enable", callback = function(arg)
getgenv().antistomplo = arg    
if getgenv().antistomplo then
repeat
            if game.Players.LocalPlayer.Character.Humanoid.Health <= 5 then
                for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v:Destroy()
                    end
                end
            end
    until antistomplo == false
        end
end})
local toggle = section4:Toggle({Name = "Autostomp", Flag = "Enable", callback = function(arg)
getgenv().autostomp = arg
if getgenv().autostomp then
    repeat
        task.wait()
            game.ReplicatedStorage.MainEvent:FireServer("Stomp")
until autostomp == false
end
end})
local toggle = section4:Toggle({Name = "Autoreload", Flag = "Enable", callback = function(arg)
getgenv().AutoReloadx = arg
if getgenv().AutoReloadx then
    repeat
        task.wait()
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
    until AutoReloadx == false
   end
end})
local toggle = section4:Toggle({Name = "Antibag", Flag = "Enable", callback = function(arg)
getgenv().antibag = arg
if getgenv().antibag then
repeat
        task.wait()    
            game.Players.LocalPlayer.Character["Christmas_Sock"]:Destroy()
until antibag == false
end
end})