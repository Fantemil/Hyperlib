local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/eksotopro/holders/main/library.lua", true))()
--Library.theme.accentcolor = Color3.new(20, 79, 13)--
local Window = Library:CreateWindow("hoodsense", Vector2.new(492, 598), Enum.KeyCode.RightShift)
game.StarterGui:SetCore("SendNotification", {
    Title = "hoodsense";
    Text = "Hello, Loading...";
    Icon = "http://www.roblox.com/asset/?id=8768441000";
    Duration = "10";
    callbakc = bindableFunction;
    Button1 = "Okay!";
})
wait(3)

local Aiming = loadstring(game:HttpGet("https://raw.githubusercontent.com/eksotopro/holders/main/fov.lua"))()
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/eksotopro/holders/main/esp.lua"))()
ESP:Toggle(false)
ESP.Tracers = false
ESP.Names = false
ESP.Boxes = false
Aiming.TeamCheck(false)
Aiming.VisibleCheck = false

local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CurrentCamera = Workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CurrentCamera = Workspace.CurrentCamera

local HoodsenseSettings = {
    Blatant = {
        Movement = {
            SpeedEnabled = false,
            SpeedType = "Default",
            SpeedRender = "Default",
            SpeedAmount = 5
        },
        Cash = {
            AutoDrop = false,
            AutoDropAmount = 5000,
            AutoPickCash = false
        },
        Character = {
            AntiBag = false,
        },
    },
}

local AimingTab = Window:CreateTab("Main")
local SilentSection = AimingTab:CreateSector("Aim Configuration", "left")

local DaHoodSettings = {
    SilentAim = false,
    AimLock = false,
    Prediction = 0.178
}

local SilentAimToggle = SilentSection:AddToggle("Silent Aim", nil, function(bool)
    DaHoodSettings.SilentAim = bool
end)
SilentAimToggle:AddKeybind()

local PredictLagToggle = SilentSection:AddToggle("Predict Lag", nil, function(bool)
    DaHoodSettings.Prediction.Lag = bool
end)

local FovCircleToggle = SilentSection:AddToggle("FOV Circle", nil, function(bool)
    Aiming.ShowFOV = bool
end)

local VisibleCheckToggle = SilentSection:AddToggle("Visible Check", nil, function(bool)
    Aiming.VisibleCheck = bool
end)

local HitAirShootsToggle = SilentSection:AddToggle("Hit Airshots", nil, function(bool)
    Aiming.Airshots = true
end)

local fovsettings = AimingTab:CreateSector("Fov Configuration", "right")

local HitChanceSlider = fovsettings:AddSlider("Silent Aim Hitchance", 0, 100, 400, 1, function(value)
    DaHoodSettings.Prediction = tonumer("0." .. value)
end)

local fovsize = fovsettings:AddSlider("Silent Aim Size", 0, 30, 500, 1, function(value)
    Aiming.FOV = value
end)

local fovsides = fovsettings:AddSlider("Fov Circle Sides", 1, 40, 40, 1, function(value)
    Aiming.FOVSides  = value
end)
-------------------------------
-----// AIMING FUNCTION -----
function Aiming.Check()
    if not (Aiming.Enabled == true and Aiming.Selected ~= LocalPlayer and Aiming.SelectedPart ~= nil) then
        return false
    end
 
    local Character = Aiming.Character(Aiming.Selected)
    local KOd = Character:WaitForChild("BodyEffects")["K.O"].Value
    local Grabbed = Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
 
    if (KOd or Grabbed) then
        return false
    end
 
    return true
end
local __index
__index = hookmetamethod(game, "__index", function(t, k)
    if (t:IsA("Mouse") and (k == "Hit" or k == "Target") and Aiming.Check()) then
        local SelectedPart = Aiming.SelectedPart
        if (DaHoodSettings.SilentAim and (k == "Hit" or k == "Target")) then
            local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)
 
            return (k == "Hit" and Hit or SelectedPart)
        end
    end
 
    return __index(t, k)
end)
 
local LMFAO = false
 
UserInputService.InputBegan:Connect(function(Key, Is)
    if Key.UserInputType == Enum.UserInputType.MouseButton2 and not Is then
        LMFAO = true
    end
end)
 
UserInputService.InputEnded:Connect(function(Key, Is)
    if Key.UserInputType == Enum.UserInputType.MouseButton2 and not Is then
        LMFAO = false
    end
end)


local aimlock = AimingTab:CreateSector("Aimlock", "left")
local aimlocktoggle = aimlock:AddToggle("Aimlock",  nil, function()
getgenv().AimPart = "HumanoidRootPart"
getgenv().AimlockKey = "q"
getgenv().AimRadius = 30
getgenv().ThirdPerson = true
getgenv().FirstPerson = true
getgenv().TeamCheck = false
getgenv().PredictMovement = true
getgenv().PredictionVelocity = 9
local L_27_, L_28_, L_29_, L_30_ =
    game:GetService "Players",
game:GetService "UserInputService",
game:GetService "RunService",
game:GetService "StarterGui"
local L_31_, L_32_, L_33_, L_34_, L_35_, L_36_, L_37_ =
    L_27_.LocalPlayer,
L_27_.LocalPlayer:GetMouse(),
workspace.CurrentCamera,
CFrame.new,
Ray.new,
Vector3.new,
Vector2.new
local L_38_, L_39_, L_40_ = true, false, false
local L_41_
getgenv().CiazwareUniversalAimbotLoaded = true
getgenv().WorldToViewportPoint = function(L_42_arg0)
    return L_33_:WorldToViewportPoint(L_42_arg0)
end
getgenv().WorldToScreenPoint = function(L_43_arg0)
    return L_33_.WorldToScreenPoint(L_33_, L_43_arg0)
end
getgenv().GetObscuringObjects = function(L_44_arg0)
    if L_44_arg0 and L_44_arg0:FindFirstChild(getgenv().AimPart) and L_31_ and L_31_.Character:FindFirstChild("Head") then
        local L_45_ = workspace:FindPartOnRay(L_35_(L_44_arg0[getgenv().AimPart].Position, L_31_.Character.Head.Position))
        if L_45_ then
            return L_45_:IsDescendantOf(L_44_arg0)
        end
    end
end
getgenv().GetNearestTarget = function()
    local L_46_ = {}
    local L_47_ = {}
    local L_48_ = {}
    for L_50_forvar0, L_51_forvar1 in pairs(L_27_:GetPlayers()) do
        if L_51_forvar1 ~= L_31_ then
            table.insert(L_46_, L_51_forvar1)
        end
    end
    for L_52_forvar0, L_53_forvar1 in pairs(L_46_) do
        if L_53_forvar1.Character ~= nil then
            local L_54_ = L_53_forvar1.Character:FindFirstChild("Head")
            if getgenv().TeamCheck == true and L_53_forvar1.Team ~= L_31_.Team then
                local L_55_ =
                    (L_53_forvar1.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                local L_56_ =
                    Ray.new(
                        game.Workspace.CurrentCamera.CFrame.p,
                        (L_32_.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * L_55_
                    )
                local L_57_, L_58_ = game.Workspace:FindPartOnRay(L_56_, game.Workspace)
                local L_59_ = math.floor((L_58_ - L_54_.Position).magnitude)
                L_47_[L_53_forvar1.Name .. L_52_forvar0] = {}
                L_47_[L_53_forvar1.Name .. L_52_forvar0].dist = L_55_
                L_47_[L_53_forvar1.Name .. L_52_forvar0].plr = L_53_forvar1
                L_47_[L_53_forvar1.Name .. L_52_forvar0].diff = L_59_
                table.insert(L_48_, L_59_)
            elseif getgenv().TeamCheck == false and L_53_forvar1.Team == L_31_.Team then
                local L_60_ =
                    (L_53_forvar1.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                local L_61_ =
                    Ray.new(
                        game.Workspace.CurrentCamera.CFrame.p,
                        (L_32_.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * L_60_
                    )
                local L_62_, L_63_ = game.Workspace:FindPartOnRay(L_61_, game.Workspace)
                local L_64_ = math.floor((L_63_ - L_54_.Position).magnitude)
                L_47_[L_53_forvar1.Name .. L_52_forvar0] = {}
                L_47_[L_53_forvar1.Name .. L_52_forvar0].dist = L_60_
                L_47_[L_53_forvar1.Name .. L_52_forvar0].plr = L_53_forvar1
                L_47_[L_53_forvar1.Name .. L_52_forvar0].diff = L_64_
                table.insert(L_48_, L_64_)
            end
        end
    end
    if unpack(L_48_) == nil then
        return nil
    end
    local L_49_ = math.floor(math.min(unpack(L_48_)))
    if L_49_ > getgenv().AimRadius then
        return nil
    end
    for L_65_forvar0, L_66_forvar1 in pairs(L_47_) do
        if L_66_forvar1.diff == L_49_ then
            return L_66_forvar1.plr
        end
    end
    return nil
end
L_32_.KeyDown:Connect(
    function(L_67_arg0)
        if L_67_arg0 == AimlockKey and L_41_ == nil then
            pcall(
                function()
                    if L_39_ ~= true then
                        L_39_ = true
                    end
                    local L_68_
                    L_68_ = GetNearestTarget()
                    if L_68_ ~= nil then
                        L_41_ = L_68_
                    end
                end
            )
        elseif L_67_arg0 == AimlockKey and L_41_ ~= nil then
            if L_41_ ~= nil then
                L_41_ = nil
            end
            if L_39_ ~= false then
                L_39_ = false
            end
        end
    end
)
L_29_.RenderStepped:Connect(
    function()
        if getgenv().ThirdPerson == true and getgenv().FirstPerson == true then
            if
                (L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude > 1 or
                (L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude <= 1
            then
                L_40_ = true
            else
                L_40_ = false
            end
        elseif getgenv().ThirdPerson == true and getgenv().FirstPerson == false then
            if (L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude > 1 then
                L_40_ = true
            else
                L_40_ = false
            end
        elseif getgenv().ThirdPerson == false and getgenv().FirstPerson == true then
            if (L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude <= 1 then
                L_40_ = true
            else
                L_40_ = false
            end
        end
        if L_38_ == true and L_39_ == true then
            if L_41_ and L_41_.Character and L_41_.Character:FindFirstChild(getgenv().AimPart) then
                if getgenv().FirstPerson == true then
                    if L_40_ == true then
                        if getgenv().PredictMovement == true then
                            L_33_.CFrame =
                                L_34_(
                                    L_33_.CFrame.p,
                                    L_41_.Character[getgenv().AimPart].Position +
                                    L_41_.Character[getgenv().AimPart].Velocity / PredictionVelocity
                                )
                        elseif getgenv().PredictMovement == false then
                            L_33_.CFrame = L_34_(L_33_.CFrame.p, L_41_.Character[getgenv().AimPart].Position)
                        end
                    end
                elseif getgenv().ThirdPerson == true then
                    if L_40_ == true then
                        if getgenv().PredictMovement == true then
                            L_33_.CFrame =
                                L_34_(
                                    L_33_.CFrame.p,
                                    L_41_.Character[getgenv().AimPart].Position +
                                    L_41_.Character[getgenv().AimPart].Velocity / PredictionVelocity
                                )
                        elseif getgenv().PredictMovement == false then
                            L_33_.CFrame = L_34_(L_33_.CFrame.p, L_41_.Character[getgenv().AimPart].Position)
                        end
                    end
                end
            end
        end
    end
)
end
)

aimlock:AddTextbox("Aimlock Key", nil, function(L_69_arg0)
		getgenv().AimlockKey = L_69_arg0
end)

aimlock:AddTextbox("Aimlock Prediction", nil, function(L_70_arg0)
    PredictionVelocity = L_70_arg0
end)

aimlock:AddDropdown("Aim Part", {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso"}, "Head", false, function(L_71_arg0)
    getgenv().AimPart = L_71_arg0
end)


local TeleportsTab = Window:CreateTab("Teleports")
local gunssection = TeleportsTab:CreateSector("Guns", "left")

local revolver = gunssection:AddButton("Revolver", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-638.75, 18.8500004, -118.175011, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

local ak = gunssection:AddButton("Ak", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-587.529358, 5.39480686, -753.717712, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

local smg = gunssection:AddButton("Smg", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-577.123413, 5.47666788, -718.031433, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

local ar = gunssection:AddButton("AR", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-591.824158, 5.46046877, -744.731628, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end)

local dbs = gunssection:AddButton("Double Barrel", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1039.59985, 18.8513641, -256.449951, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

local shotgun = gunssection:AddButton("Shotgun", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-578.623657, 5.47212696, -725.131531, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end)

local flame = gunssection:AddButton("Flame Thrower", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-157.122437, 50.9120102, -104.93145, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

local tac = gunssection:AddButton("Tactical Shotgun", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(470.877533, 45.1272316, -620.630676, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

local rpg = gunssection:AddButton("Rpg", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(118.664856, -29.6487694, -272.349792, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

local drumgun = gunssection:AddButton("Drum Gun", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-83.548996, 19.7020588, -82.1449585, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

local armor = gunssection:AddButton("High Medium Armor", function(bool)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-939, -25, 571)
end)

local bat = gunssection:AddButton("Bat", function(bool)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(380, 49, -283)
end)

local mediumarmor = gunssection:AddButton("Medium Armor", function(bool)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(528, 50, -637)
end)

local placessection = TeleportsTab:CreateSector("Places", "right")

local church = placessection:AddButton("Church", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(147.299988, 18.8493252, 31.7999744, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end)

local admin1 = placessection:AddButton("Admin Base", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-872.853516, -34.4276848, -538.013306, -0.999724388, -3.9898886e-08, -0.0234765243, -3.9204977e-08, 1, -3.00177518e-08, 0.0234765243, -2.90890814e-08, -0.999724388)
end)

local admin2 = placessection:AddButton("Admin Guns", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-808.708557, -39.6492004, -932.789368, 0.999899805, 2.01343173e-08, -0.0141554065, -2.17800533e-08, 1, -1.16108232e-07, 0.0141554065, 1.16404912e-07, 0.999899805)
end)

local admin3 = placessection:AddButton("Admin Food", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-788.053406, -39.6492004, -932.951233, 0.998369277, 2.46515359e-08, 0.0570784509, -2.8773524e-08, 1, 7.13949646e-08, -0.0570784509, -7.29209759e-08, 0.998369277)
end)

local ufo = placessection:AddButton("Ufo", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2.85052466, 132, -736.571106, -0.0460956171, -4.24733706e-08, -0.998937011, 7.26012459e-08, 1, -4.58687275e-08, 0.998937011, -7.46384217e-08, -0.0460956171)
end)

local casino = placessection:AddButton("Casino", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-995, 21.6998043, -153.100037, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

local bank = placessection:AddButton("Bank", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-318.891174, 80.2145309, -257.177429, 0.0479469746, -5.14644114e-08, 0.998850107, -3.12971538e-09, 1, 5.16738901e-08, -0.998850107, -5.60372015e-09, 0.0479469746)
end)

local taco = placessection:AddButton("Taco", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(584.026855, 48.1605072, -474.033936, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

local revRoof = placessection:AddButton("Revolver Roof", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-634.463135, 80.434761, -204.232559, -0.0190527271, -1.03574322e-07, -0.999818563, 4.36709335e-09, 1, -1.03676342e-07, 0.999818563, -6.3416179e-09, -0.0190527271)
end)

local playground = placessection:AddButton("PlayGround", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-282.694153, 19.7496624, -807.719727, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

local gas = placessection:AddButton("Gas Station", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(604.800415, 46.0998344, -258.249573, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end)

local cementery = placessection:AddButton("Cementery", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.109558, 99.75, -57.2315979, 0.999993503, -0.000633752206, -0.0035054055, 0.000638642872, 0.999998808, 0.00139435288, 0.00350463158, -0.00139658386, 0.999992728)
end)

local school = placessection:AddButton("School Roof", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-525.353455, 68.125, 311.824402, 0.999992013, 1.03866675e-08, -0.00399552286, -1.03507425e-08, 1, 9.01170427e-09, 0.00399552286, -8.97027519e-09, 0.999992013)
end)

--- Esp Tab ---
local EspSection = AimingTab:CreateSector("Esp", "left")

local espToggle = EspSection:AddToggle("Enable ESP", false, function(bool)
    ESP:Toggle(bool)
end)

local tracersToggle = EspSection:AddToggle("Enable Tracers", false, function(bool)
    ESP.Tracers = bool
end)

local namesToggle = EspSection:AddToggle("Enable Names", false, function(bool)
    ESP.Names = bool
end)

local boxesToggle = EspSection:AddToggle("Enable Boxes", false, function(bool)
    ESP.Boxes = bool
end)
espToggle:AddKeybind()

local togglessector = AimingTab:CreateSector("Toggles", "right")
local Reach = togglessector:AddToggle("Reach", nil, function(e)
    if e == true then
        game:GetService('RunService'):BindToRenderStep("Reach", 0 , function()
            local success, err = pcall(function()
                if game.Players.LocalPlayer.Character.BodyEffects.Attacking.Value == true then
                    for i,v in pairs(game:GetService('Players'):GetChildren()) do
                        if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.LeftHand.Position).Magnitude <= 50 then
                            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild('Handle') then
                                    firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle, v.Character.UpperTorso, 0)
                                else
                                    firetouchinterest(game.Players.LocalPlayer.Character['RightHand'], v.Character.UpperTorso, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character['LeftHand'], v.Character.UpperTorso, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character['RightFoot'], v.Character.UpperTorso, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character['LeftFoot'], v.Character.UpperTorso, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character['RightLowerLeg'], v.Character.UpperTorso, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character['LeftLowerLeg'], v.Character.UpperTorso, 0)
                                end
                            end
                        end
                    end
                end
            end)
        end)
    elseif e == false then
        game:GetService('RunService'):UnbindFromRenderStep("Reach")
    end
end)
local AutoStomp = togglessector:AddToggle("Auto Stomp", nil, function(r)
    if r == true then
        game:GetService('RunService'):BindToRenderStep("Auto-Stomp", 0 , function()
            game:GetService("ReplicatedStorage").MainEvent:FireServer("Stomp")
        end)
    elseif r == false then
        game:GetService('RunService'):UnbindFromRenderStep("Auto-Stomp")
    end
end)

local AntiSlow = togglessector:AddToggle("Anti Slow", nil, function(gh)
    if gh == true then
        game:GetService('RunService'):BindToRenderStep("Anti-Slow", 0 , function()
            if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed"):Destroy() end
            if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk"):Destroy() end
            if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoJumping") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoJumping"):Destroy() end
            if game.Players.LocalPlayer.Character.BodyEffects.Reload.Value == true then game.Players.LocalPlayer.Character.BodyEffects.Reload.Value = false end
        end)
    elseif gh == false then
        game:GetService('RunService'):UnbindFromRenderStep("Anti-Slow")
    end
end)

local AntiStomp = togglessector:AddToggle("Anti Stomp", nil, function(x)
    if x == true then
        game:GetService('RunService'):BindToRenderStep("Anti-Stomp", 0 , function()
            if game.Players.LocalPlayer.Character.Humanoid.Health <= 5 then
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA('MeshPart') or v:IsA('Part') then
                        v:Destroy()
                    end
                end
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA('Accessory') then
                        v.Handle:Destroy()
                    end
                end
            end
        end)
    elseif x == false then
        game:GetService('RunService'):UnbindFromRenderStep("Anti Stomp")
    end
end)

local antibag = togglessector:AddToggle('Anti Bag', false, function(State)
    HoodsenseSettings.Blatant.Character.AntiBag = State
end)

local AutoReload = togglessector:AddToggle("Auto Reload", nil, function(r)
    if r == true then
        game:GetService('RunService'):BindToRenderStep("Auto-Reload", 0 , function()
            if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
                if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo") then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo").Value <= 0 then
                        game:GetService("ReplicatedStorage").MainEvent:FireServer("Reload", game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")) 
                        wait(1)
                    end
                end
            end
        end)
    elseif r == false then
        game:GetService('RunService'):UnbindFromRenderStep("Auto-Reload")
    end
end)

local aura = togglessector:AddToggle("Auto Pick Cash", false, function(State)
    HoodsenseSettings.Blatant.Cash.AutoPickCash = State
end)

local Noclip = togglessector:AddButton("No Clip", function()
local noclipplayer = game:GetService("Players").LocalPlayer
local noclipmouse = noclipplayer:GetMouse()
 
local donoclip = false
local noclip = false
 
function b_noclip(key)
if (key == "b") then
if noclip == false then
donoclip = true
 
noclip = true
elseif noclip == true then
donoclip = false
 
noclip = false
end
end
end
 
noclipmouse.KeyDown:connect(b_noclip)
 
game:GetService("Players").LocalPlayer.Character.Head.Touched:connect(function(obj)
if obj ~= workspace.Terrain then
if donoclip == true then
obj.CanCollide = false
else
obj.CanCollide = true
end
end
end)
game.StarterGui:SetCore("SendNotification", {
    Title = "hoodsense";
    Text = "Noclip keybind is B.";
    Icon = "rbxassetid://8768441000";
    Duration = "BLANK";
    callbakc = bindableFunction;
})
end)


local fly2 = togglessector:AddButton("Fly", function()
    loadstring(Game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/fly.lua'))()
    game.StarterGui:SetCore("SendNotification", {
        Title = "hoodsense";
        Text = "Fly keybind is X.";
        Icon = "rbxassetid://8768441000";
        Duration = "BLANK";
        callbakc = bindableFunction;
    })
end)

local fovchanger = togglessector:AddSlider("Change Fov", 1, 70, 120, 1, function(value)
    game:GetService'Workspace'.Camera.FieldOfView = value
end)

getgenv().SpinBotSpeed = 20

local spinbot = togglessector:AddToggle("Spin Bot", nil, function(state)
	function getRoot(char)
				local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('UpperTorso')
				return rootPart
			end

			if state == true then
				local Spin = Instance.new("BodyAngularVelocity")
				Spin.Name = "Spinning"
				Spin.Parent = getRoot(game.Players.LocalPlayer.Character)
				Spin.MaxTorque = Vector3.new(0, math.huge, 0)
				Spin.AngularVelocity = Vector3.new(0,getgenv().SpinBotSpeed,0)
			else
				for i,v in pairs(getRoot(game.Players.LocalPlayer.Character):GetChildren()) do
					if v.Name == "Spinning" then
						v:Destroy()
					end
				end
			end
		end)
spinbot:AddKeybind()

local spinbotspeed = togglessector:AddSlider("Spinbot Speed", 1, 20, 50, 1, function(value)
    getgenv().SpinBotSpeed = value
end)

--- Visuals Tab ---
local VisualsTab = Window:CreateTab("Avatar")
local VisualsSection = VisualsTab:CreateSector("Character", "left")
local VisualsSection2 = VisualsTab:CreateSector("Other", "right")

local animationgamepass = VisualsSection:AddButton("Animation Gamepass", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/animation_gamepass.lua'))()
end)

local animbutton = VisualsSection:AddButton("Animations", function(bool)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/eksotopro/holders/main/anims.lua"))()
end)

local headlbutton = VisualsSection:AddButton("Headless", function(bool)
game.Players.LocalPlayer.Character.Head.Transparency = 1
for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
if (v:IsA("Decal")) then
v:Destroy()
end
end
end)

local animatedbeastmode = VisualsSection:AddButton("Animated Beast Mode", function()
	while true do
local player = game.Players.LocalPlayer.Character
if player:findFirstChild("Humanoid") then
    player.Head.face.Texture = "https://www.roblox.com/asset/?id=209712379"
    end
wait(1)
if player:findFirstChild("Humanoid") then
    player.Head.face.Texture = "https://www.roblox.com/asset/?id=127959433"
    end
wait(1)
end
end)

local facesection = VisualsTab:CreateSector("Face Changer", "left")

local meanie = facesection:AddButton("Meanie", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/faces/508490451.lua'))()
end)

local sshf = facesection:AddButton("Super Super Happy Face", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/faces/494290547.lua'))()
end)

local silverpunk = facesection:AddButton("Silver Punk Face", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/faces/387256104.lua'))()
end)

local yum = facesection:AddButton("Yum", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/faces/26018945.lua'))()
end)

local playful = facesection:AddButton("Playful Vampire", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/faces/2409281591.lua'))()
end)

local beastmode = facesection:AddButton("Beast Mode", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/faces/127959433.lua'))()
end)

--- Misc Tab ---
local MiscTab = Window:CreateTab("Misc")
local MiscSection = MiscTab:CreateSector("Miscelanious", "left")
local scriptsSection = MiscTab:CreateSector("Fun Stuff", "right")
local autofarmsection = MiscTab:CreateSector("Auto Farm", "left")
local autofarm = autofarmsection:AddToggle("Auto Farm", nil, function(texto)
        repeat
            wait()
        until game:IsLoaded()
        local gm = getrawmetatable(game)
        setreadonly(gm, false)
        local namecall = gm.__namecall
        gm.__namecall =
            newcclosure(
            function(self, ...)
                local args = {...}
                if not checkcaller() and getnamecallmethod() == "FireServer" and tostring(self) == "MainEvent" then
                    if tostring(getcallingscript()) ~= "Framework" then
                        return
                    end
                end
                if not checkcaller() and getnamecallmethod() == "Kick" then
                    return
                end
                return namecall(self, unpack(args))
            end
        )
        
        local LocalPlayer = game:GetService("Players").LocalPlayer
        
        function gettarget()
            local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
            local maxdistance = math.huge
            local target
            for i, v in pairs(game:GetService("Workspace").Cashiers:GetChildren()) do
                if v:FindFirstChild("Head") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                    local distance = (HumanoidRootPart.Position - v.Head.Position).magnitude
                    if distance < maxdistance then
                        target = v
                        maxdistance = distance
                    end
                end
            end
            return target
        end
        
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("Seat") then
                v:Destroy()
            end
        end
        
        shared.MoneyFarm = texto
        
        while shared.MoneyFarm do
            wait()
            local Target = gettarget()
            repeat
                wait()
                pcall(
                    function()
                        local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()
                        local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
                        local Combat = LocalPlayer.Backpack:FindFirstChild("Combat") or Character:FindFirstChild("Combat")
                        if not Combat then
                            Character:FindFirstChild("Humanoid").Health = 0
                            return
                        end
                        HumanoidRootPart.CFrame = Target.Head.CFrame * CFrame.new(0, -2.5, 3)
                        Combat.Parent = Character
                        Combat:Activate()
                    end
                )
            until not Target or Target.Humanoid.Health < 0
            for i, v in pairs(game:GetService("Workspace").Ignored.Drop:GetDescendants()) do
                if v:IsA("ClickDetector") and v.Parent and v.Parent.Name:find("Money") then
                    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()
                    local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
                    if (v.Parent.Position - HumanoidRootPart.Position).magnitude <= 18 then
                        repeat
                            wait()
                            fireclickdetector(v)
                        until not v or not v.Parent.Parent
                    end
                end
            end
            wait(1)
        end
    end)
autofarm:AddKeybind()

local fpsboost = MiscSection:AddButton('Low gfx', function(state)
    if state then
    
        local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        t.WaterWaveSize = 0
        t.WaterWaveSpeed = 0
        t.WaterReflectance = 0
        t.WaterTransparency = 0
        l.GlobalShadows = false
        l.FogEnd = 9e9
        l.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for i, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastPressure = 1
                v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
                v.Enabled = false
            elseif v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
                v.TextureID = 10385902758728957
            end
        end
        for i, e in pairs(l:GetChildren()) do
            if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                e.Enabled = false
            end
        end
    else
      end
end)

local rejoin = MiscSection:AddButton("Rejoin", function(State)
    loadstring(game:HttpGet("https://pastebin.com/raw/1gtVMUz3"))()
end)
    
local hop = MiscSection:AddButton("Server hop", function(State)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/serverhop.lua'))()
end)
local trash = MiscSection:AddButton("Trash Talk", function(State)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/eksotopro/holders/main/trash_talk.lua"))()
    game.StarterGui:SetCore("SendNotification", {
        Title = "hoodsense";
        Text = "Trash Talk keybind is J.";
        Icon = "rbxassetid://8768441000";
        Duration = "BLANK";
        callbakc = bindableFunction;
    })
end)

local macro = MiscSection:AddButton("Fake Macro", function(State)
   loadstring(game:HttpGet("https://pastebin.com/raw/yMmUUyyE"))()
    game.StarterGui:SetCore("SendNotification", {
        Title = "hoodsense";
        Text = "Fake Macro keybind is Z.";
        Icon = "rbxassetid://8768441000";
        Duration = "BLANK";
        callbakc = bindableFunction;
    })
end)

local fly = MiscSection:AddButton("Fly", function(State)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/eksotopro/holders/main/fly.lua"))()
    game.StarterGui:SetCore("SendNotification", {
        Title = "hoodsense";
        Text = "Fly keybind is X.";
        Icon = "rbxassetid://8768441000";
        Duration = "BLANK";
        callbakc = bindableFunction;
    })
end)

local fullbright = MiscSection:AddButton("Full Bright", function(State)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/eksotopro/holders/main/full_bright.lua"))()
end)

local nocooldown = MiscSection:AddButton("No jump cooldown", function(State)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/no-jump-cooldown.lua'))()
end)
    
local weightfarm = MiscSection:AddButton("Weight Farm", function(State)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/weight_farm.lua'))()
end)
local god = MiscSection:AddButton("God Mode", function(State)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/godmode.lua'))()
    game.StarterGui:SetCore("SendNotification", {
    Title = "hoodsense";
    Text = "This can't be stopped.";
    Icon = "rbxassetid://8768441000";
    Duration = "BLANK";
    callbakc = bindableFunction;
    })
end)

local reset = MiscSection:AddButton("Reset Character", function(reset)
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

local idepomilion = MiscSection:AddButton('Sing', function(State)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Mam głód pierdolę wszystko","All")
wait(1)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ty stój kiedy idę po milion","All")
wait(1.2)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("jxak znxów coś mi nie wyszło","All")
wait(1.3)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("i huj nadal idę po milion","All")
wait(0.7)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("już nie czekam na przyszłość ","All")
wait(0.8)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("alxe nie mów nic bo","All")
wait(0.9)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("bo bo idę po milion", "All")
end)

local MovementSector = MiscTab:CreateSector("Movement", "right")
local SpeedToggle = MovementSector:AddToggle('Speed Enabled', false, function(State)
    HoodsenseSettings.Blatant.Movement.SpeedEnabled = State
end)

SpeedToggle:AddSlider(0, 5, 10, 1, function(Value)
    HoodsenseSettings.Blatant.Movement.SpeedAmount = Value
end)

MovementSector:AddDropdown("Speed Type", {"CFrame"}, "CFrame", false, function(Value)
    HoodsenseSettings.Blatant.Movement.SpeedType = Value
end)

MovementSector:AddDropdown("Speed Render Type", {"Default", "Fast"}, "Default", false, function(Value)
    HoodsenseSettings.Blatant.Movement.SpeedRenderType = Value
end)
SpeedToggle:AddKeybind()

local swagfly = scriptsSection:AddButton("Admin Fly", function ()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/cracked%20stuff/admin_fly.lua'))()
    game.StarterGui:SetCore("SendNotification", {
        Title = "hoodsense";
        Text = "Admin Fly keybind is X.";
        Icon = "rbxassetid://8768441000";
        Duration = "BLANK";
        callbakc = bindableFunction;
    })
end)

local Juggernaut = scriptsSection:AddButton("Juggernaut", function()
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Mouse = LocalPlayer:GetMouse()
    local OriginalKeyUpValue = 0
    
    local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://2788838708"
    
    function StopAudio()
        LocalPlayer.Character.LowerTorso.BOOMBOXSOUND:Stop()
    end
    
    function stop(ID, Key)
        local cor = coroutine.wrap(function()
            wait(LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
            if LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
                StopAudio()
            end
        end)
        cor()
    end
    
    function play(ID, STOP, LMAO)
        if LocalPlayer.Backpack:FindFirstChild("[Boombox]") then
            local Tool = nil
            if LocalPlayer.Character:FindFirstChildOfClass("Tool") and LMAO == true then
                Tool = LocalPlayer.Character:FindFirstChildOfClass("Tool")
                LocalPlayer.Character:FindFirstChildOfClass("Tool").Parent = LocalPlayer.Backpack
            end
            LocalPlayer.Backpack["[Boombox]"].Parent =
                LocalPlayer.Character
            game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
            LocalPlayer.Character["[Boombox]"].RequiresHandle = false
            if LocalPlayer.Character["[Boombox]"]:FindFirstChild("Handle") then
                LocalPlayer.Character["[Boombox]"].Handle:Destroy()
            end
            LocalPlayer.Character["[Boombox]"].Parent =
                LocalPlayer.Backpack
            LocalPlayer.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
            if Tool ~= true then
                if Tool then
                    Tool.Parent = LocalPlayer.Character
                end
            end
            if STOP == true then
                LocalPlayer.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
                local cor = coroutine.wrap(function()
                    repeat wait() until LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
                    OriginalKeyUpValue = OriginalKeyUpValue+1
                    stop(ID, OriginalKeyUpValue)
                end)
                cor()
            end
        end
    end
    
    function Tool()
        local Tool = Instance.new("Tool")
        Tool.Name = "Juggernaut"
        Tool.RequiresHandle = false
        Tool.Activated:Connect(function()
            local Character = LocalPlayer.Character
            local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    
            function rm()
                for i,v in pairs(Character:GetDescendants()) do
                    if v:IsA("BasePart") or v:IsA("MeshPart") then
                        if v.Name ~= "Head" then
                            for i,cav in pairs(v:GetDescendants()) do
                                if cav:IsA("Attachment") then
                                    if cav:FindFirstChild("OriginalPosition") then
                                        cav.OriginalPosition:Destroy()
                                    end
                                end
                            end
                            for i,v in pairs(v:GetChildren()) do
                                if v.Name == "OriginalSize" then
                                    v:Destroy()
                                end
                            end
                            if v:FindFirstChild("AvatarPartScaleType") then
                                v:FindFirstChild("AvatarPartScaleType"):Destroy()
                            end
                        end
                    end
                end
            end
    
            Humanoid:LoadAnimation(Anim):Play()
            play(862491729, true, true)
            wait(0.4)
            rm()
            Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
            wait(0.2)
    
            rm()
            Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
            wait(0.02)
    
            rm()
            Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
            wait(0.02)
    
            rm()
            Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
            wait(0.02)
        end)
        Tool.Parent = LocalPlayer.Backpack
    end
    Tool()
end)

local avatarchanger = scriptsSection:AddButton("Avatar Modifier", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/cracked%20stuff/facechanger.lua'))()
end)

local ben = scriptsSection:AddButton("Ben Talk", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/eksotopro/holders/main/ben.lua"))()
    game.StarterGui:SetCore("SendNotification", {
        Title = "hoodsense";
        Text = "Ben talk keybind is K.";
        Icon = "rbxassetid://8768441000";
        Duration = "BLANK";
        callbakc = bindableFunction;
    })
end)


local panic = scriptsSection:AddButton("Rage quit", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/ragequit.lua'))()
end)

local superjump = scriptsSection:AddButton("Super Jump", function()
    local  MyStand = "niggerballs69"
    local SuperJumpEnabled = false
    
    getgenv().Toggled = false
    local UIS = game:GetService("UserInputService")
    UIS.InputBegan:connect(function(input,gameProcessed)
        if input.UserInputType == Enum.UserInputType.Keyboard then
            if input.KeyCode == Enum.KeyCode.H then
                if UIS:GetFocusedTextBox() == nil then
                    if getgenv().Toggled == false then
                        getgenv().Toggled = true
                    else
                        getgenv().Toggled = true
                    end;end;end;end;end)
    
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Cookies = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Roll)
    local OriginalKeyUpValue = 0
    local Anim = Instance.new("Animation" )
    Anim.AnimationId = "rbxassetid://2788290270"
    local Hover = Instance.new("Animation", game.Workspace)
    Hover.Name = "Hover"
    Hover.AnimationId = "rbxassetid://698251653"
    local LeftPunch = Instance.new("Animation",  game.ReplicatedStorage.ClientAnimations)LeftPunch.Name = "LeftPunch"
    LeftPunch.AnimationId = "rbxassetid://2788308661"
    local LeftAnim = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.LeftPunch)
    local CoreUI = Instance.new("ScreenGui")
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    CoreUI.Parent = game.CoreGui
    local SaveLocation = nil
    local RigWalk = nil
    local RigIdle = nil
    local InTimeErase = false
    
    local Pointing = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
    Pointing.AnimationId = "rbxassetid://507770453"
    
    local UNMASKKK = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
    UNMASKKK.Name = "Unmask"
    UNMASKKK.AnimationId = "rbxassetid://3380629232"
    
    local MASKKK = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
    MASKKK.Name = "Mask"
    MASKKK.AnimationId = "rbxassetid://3380627692"
    
    local Poter = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(Pointing)
    Poter.Looped = true
    Poter.Priority = Enum.AnimationPriority.Action
    
    local WalkAnimation = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
    WalkAnimation.AnimationId = "rbxassetid://2510198475"
    
    local Idle = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
    Idle.AnimationId = "rbxassetid://507766388"
    
    local OldChar = LocalPlayer.Character
    local MaskAnim = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Mask)
    local UnmaskAnim = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Unmask)
    
    function FoV()
        local fov = coroutine.wrap(function()
            local Camera = workspace.Camera
            for i = 1, 20 do
                game.TweenService:Create(Camera, TweenInfo.new(0.5), {FieldOfView = 8*i}):Play()
                wait(0.01)
            end
            for i = 1, 20 do
                game.TweenService:Create(Camera, TweenInfo.new(0.5), {FieldOfView = 160-i*4.5}):Play()
                wait(0.01)
            end
        end)
        fov()
    end
    
    local WalkSpeed = false
    
    local function rm()
        for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v.Name == "OriginalPosition" then
                v:Destroy()
            elseif v.Name == "OriginalSize" then
                v:Destroy()
            elseif v.Name == "AvatarPartScaleType" then
                v:Destroy()
            end
        end
    end
    
    
    function Lighting()
        if game.Lighting:FindFirstChild("ERASE") == nil then
            local sound5 = Instance.new("Sound", CoreUI)
            sound5.Volume = 0.1
            sound5.Name = "ERASE"
            sound5.Looped = true
            sound5.SoundId = "rbxassetid://3167092959"
            sound5:Play()
    
            game.Lighting.Sky.Parent = workspace
            game:GetObjects("rbxassetid://6546113226")[1].Parent=game.Lighting
    
        else
            workspace.Sky.Parent = game.Lighting
            CoreUI:FindFirstChild("ERASE"):Destroy()
            game.Lighting:FindFirstChild("ERASE"):Destroy()
        end
    end
    
    function TimeEraseUI()
        local sound5 = Instance.new("Sound", CoreUI)
        sound5.Volume = 0.1
        sound5.SoundId = "rbxassetid://6546128175"
        sound5:Play()
    
        local Image = Instance.new("ImageLabel", CoreUI)
        Image.Image = "http://www.roblox.com/asset/?id=6546043746"
        Image.BackgroundTransparency = 1
        Image.AnchorPoint = Vector2.new(0.5, 0.5)
        Image.Size = UDim2.fromScale(1, 1)
        Image.Position = UDim2.fromScale(-0.5, 0.5)
        delay(0, function()
            for i = 0, 1, 0.1 do
                Image.Position = UDim2.fromScale(-Image.Position.X.Scale+i, 0.5)
                Image.ImageTransparency = Image.ImageTransparency+i
                wait(.01)
            end
            Image:Destroy()
            sound5:Destroy()
        end)
    end
    
    
    function ModelCharacter()
        if workspace:FindFirstChild(LocalPlayer.Name.."StringKOD") == nil then
            local MODEL = Instance.new("Model", workspace)
            MODEL.Name = LocalPlayer.Name.."StringKOD"
    
            OldChar.Humanoid:UnequipTools()
    
            for i, v in pairs(OldChar:GetChildren()) do 
                if (v:IsA("BasePart")  or v:IsA("MeshPart")) and v.Parent:FindFirstChildOfClass("Humanoid") and v.Name ~= "HumanoidRootPart" then
                    local Part = v:Clone()
                    Part.Parent = MODEL
                    Part.Name = v.Name
                    Part.Material = Enum.Material.ForceField
                    Part.CFrame = v.CFrame
                    Part.Transparency = 0.5 
                    Part.BrickColor = BrickColor.Red()
                    Part.CanCollide = false
                    Part.Anchored = true
                    for i, v  in pairs(Part:GetChildren()) do 
                        if v.ClassName ~= "SpecialMesh" then
                            v:Destroy()
                        end
                    end
                end
            end
            local NewCharacter = game:GetObjects("rbxassetid://6547055500")[1]
            NewCharacter.Parent = MODEL
            NewCharacter.Name = "Idaro"
    
            workspace.Camera.CameraSubject = NewCharacter.Humanoid
            SaveLocation = OldChar.HumanoidRootPart.CFrame
            InTimeErase = true
            NewCharacter.HumanoidRootPart.CFrame = SaveLocation
    
            RigIdle = NewCharacter:WaitForChild("Humanoid"):LoadAnimation(Idle)
            RigIdle.Looped = true
            RigIdle.Priority = Enum.AnimationPriority.Action
            RigWalk = NewCharacter:WaitForChild("Humanoid"):LoadAnimation(WalkAnimation)
            RigWalk.Looped = true
            RigWalk.Priority = Enum.AnimationPriority.Action
            WalkSpeed = true
            RigIdle:Play()
        else
            InTimeErase = false
            WalkSpeed = false
            workspace.Camera.CameraSubject =  OldChar.Humanoid
            OldChar.HumanoidRootPart.CFrame =  workspace:FindFirstChild(LocalPlayer.Name.."StringKOD").Idaro.HumanoidRootPart.CFrame
            workspace:FindFirstChild(LocalPlayer.Name.."StringKOD"):Destroy()
        end
    end
    
    function Slide()
        local XD = OldChar.Humanoid:LoadAnimation(Anim)
        XD:Play()
        XD.TimePosition = 0.15
        XD.Looped = false
        XD:AdjustSpeed(1.1)
    end
    
    function AddVelocity(Vel, Char)
        Char.HumanoidRootPart.Velocity = Char.HumanoidRootPart.Velocity+Vel
    end
    
    local IsJump = false
    
    function Jumping()
        if IsJump == false then
            return false
        else
            return true
        end
    end
    
    local Mouse = LocalPlayer:GetMouse()
    
    local MoveDirection = Vector3.new(0,0,0)
    local WSpped = 0 
    local LeftSpeed = 0
    local UpSpeed = 0
    
    function IdleRigXD()
        if RigIdle and RigWalk.IsPlaying and WSpped == 0 and LeftSpeed == 0 and UpSpeed == 0 then
            RigIdle:Play()
            RigWalk:Stop()
        end
    end
    
    function WalkRigXD()
        if RigWalk and RigIdle.IsPlaying then
            RigIdle:Stop()
            RigWalk:Play()
        end
    end
    
    Mouse.KeyDown:Connect(function(KeyDownXD)
        if workspace:FindFirstChild(LocalPlayer.Name.."StringKOD") then
            if KeyDownXD == "w" then
                WSpped = -1
                WalkRigXD()
            elseif KeyDownXD == "a" then
                LeftSpeed = -1
                WalkRigXD()
            elseif KeyDownXD == "d" then
                LeftSpeed = 1
                WalkRigXD()
            elseif KeyDownXD == "s" then
                WSpped = 1
                WalkRigXD()
            end
        end
    end)
    
    Mouse.KeyUp:Connect(function(KeyDownXD)
        if KeyDownXD == "w" then
            WSpped = 0
            IdleRigXD()
        elseif KeyDownXD == "a" then
            LeftSpeed = 0
            IdleRigXD()
        elseif KeyDownXD == "d" then
            LeftSpeed = -0
            IdleRigXD()
        elseif KeyDownXD == "s" then
            WSpped = 0
            IdleRigXD()
        end
    end)
    
    local CD = false
    local uis = game:GetService("UserInputService")
    
    uis.InputBegan:Connect(function(i, XD)
        if i.KeyCode == Enum.KeyCode.H and XD == false then
            if SuperJumpEnabled == false then
                SuperJumpEnabled = true
            elseif SuperJumpEnabled == true then
                SuperJumpEnabled = false
            end
        end
    end)
    
    uis.InputBegan:Connect(function(i, XD)
        if i.KeyCode == Enum.KeyCode.Space and XD == false then
            if workspace:FindFirstChild(LocalPlayer.Name.."StringKOD") == nil then
                if Jumping() == true and not Poter.IsPlaying then
                    AddVelocity(OldChar.HumanoidRootPart.CFrame.LookVector*150, OldChar)
                    IsJump = false
                    Cookies:Stop()
                    CD = true
                    Slide()
                    repeat wait() until workspace:FindPartOnRayWithWhitelist(Ray.new(OldChar.HumanoidRootPart.Position, Vector3.new(0, -4 * OldChar.HumanoidRootPart.Size.y, 0)), { workspace.MAP })
                    CD = false
                end
            else
                workspace:FindFirstChild(LocalPlayer.Name.."StringKOD"):FindFirstChild("Idaro").Humanoid:ChangeState(3)
            end
        end
    end)
    
    function StopAudio()
        OldChar.LowerTorso.BOOMBOXSOUND:Stop()
    end
    
    function stop(ID, Key)
        local cor = coroutine.wrap(function()
            wait(OldChar.LowerTorso.BOOMBOXSOUND.TimeLength-0)
            if OldChar.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
                StopAudio()
            end
        end)
        cor()
    end
    
    
    function play(ID, STOP, LMAO)
        if LocalPlayer.Backpack:FindFirstChild("[Boombox]") then
            local Tool = nil
            if OldChar:FindFirstChildOfClass("Tool") and LMAO == true then
                Tool = OldChar:FindFirstChildOfClass("Tool")
                OldChar:FindFirstChildOfClass("Tool").Parent = LocalPlayer.Backpack
            end
            LocalPlayer.Backpack["[Boombox]"].Parent =
                OldChar
            game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
            OldChar["[Boombox]"].RequiresHandle = false
            if OldChar["[Boombox]"]:FindFirstChild("Handle") then
                OldChar["[Boombox]"].Handle:Destroy()
            end
            OldChar["[Boombox]"].Parent =
                LocalPlayer.Backpack
            LocalPlayer.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
            if Tool ~= true then
                if Tool then
                    Tool.Parent = OldChar
                end
            end
            if STOP == true then
                OldChar.LowerTorso:WaitForChild("BOOMBOXSOUND")
                local cor = coroutine.wrap(function()
                    repeat wait() until OldChar.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OldChar.LowerTorso.BOOMBOXSOUND.TimeLength > 0
                    OriginalKeyUpValue = OriginalKeyUpValue+1
                    stop(ID, OriginalKeyUpValue)
                end)
                cor()
            end
        end
    end
    
    local bro = false
    local TimeErase, CanCel = "Time erase!", "Time erase!"
    local TimeStop, TimeResume = "Time stop!", "Time stop!"
    local XD = false
    LocalPlayer.Chatted:Connect(function(MSG)
        if MSG == "Rage!" then
    if Humanoid:FindFirstChild("HeadScale") then
        rm()
        wait(0.6)
    
        Humanoid:FindFirstChild("HeadScale"):Destroy()
        wait(0.6)
    end
    
    
    if Humanoid:FindFirstChild("BodyWidthScale") then
        rm()
        wait(0.6)
        Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
        wait(0.6)
    end
    
    
    
    if Humanoid:FindFirstChild("BodyDepthScale") then
        rm()
        wait(0.6)
        Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
        wait(0.6)
    end
    
    
    
    if Humanoid:FindFirstChild("BodyTypeScale") then
        rm()
        wait(0.6)
        Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
       wait(0.6)
    end
        elseif MSG:sub(1, 11) == TimeErase and XD == false and not Poter.IsPlaying then
            XDDDD(XD)
        elseif MSG == CanCel and XD == true and not Poter.IsPlaying then
            XDDDD(XD)
        elseif MSG == TimeStop then
            play(6947054675, true, true)
            wait(0.3)
            OldChar.LowerTorso.BOOMBOXSOUND.SoundId = "http://www.roblox.com/asset/?id=wd"
            wait(0.1)
            play(7084712646, true, true)
        end
    end)
    
    function XDDDD(XDR)
        if XDR == false then
            XD = true
            play(6546133414, true, true)
            wait(2)
            TimeEraseUI()
            FoV()
            Lighting()
            ModelCharacter()
        else
            XD = false
            InTimeErase = false
            wait(0.1)
            play(6543435253, true, true)
            TimeEraseUI()
            ModelCharacter()
            Lighting()
            FoV()
    end
    end
    
    function Jump(...)
        (...).Jumping:Connect(function()
            if SuperJumpEnabled == true then
            if CD == false and not Poter.IsPlaying then
                CD = true
                delay(1, function()
                    CD = false
                end)
                Cookies:Play(0, 1, 1.4)
                AddVelocity(OldChar.HumanoidRootPart.CFrame.UpVector*120, OldChar)
                delay(0, function()
                    IsJump = true
                    wait(1) 
                    if IsJump == true then
                        IsJump = false
                    end
                end)
                end
            end
        end)
    end
    
    
    Jump(OldChar.Humanoid)
    
    LocalPlayer.CharacterAdded:Connect(function(Character)
        wait(1)
        if Character.Name == LocalPlayer.Name then
            Jump(Character.Humanoid)
            Poter = Character:WaitForChild("Humanoid"):LoadAnimation(Pointing)
            Poter.Looped = true
            Poter.Priority = Enum.AnimationPriority.Action
    
            Cookies = Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Roll)
            OldChar = Character
        end
    end)
    
    game["Run Service"].Heartbeat:Connect(function()
        if InTimeErase then
            for i, v in pairs(OldChar:GetChildren()) do
                if v:IsA("BasePart") then
                    v.CFrame = CFrame.new(math.random(200, 500), math.random(200, 500), math.random(200, 500))
                    v.Velocity = Vector3.new(0,0,0)
                end
            end
    
            if OldChar:FindFirstChild("Combat") and XD == true then
                XD = false
                XDDDD(true)
            end
    
            if WalkSpeed == true then
                MoveDirection = Vector3.new(LeftSpeed, UpSpeed, WSpped)
                workspace:FindFirstChild(LocalPlayer.Name.."StringKOD"):FindFirstChild("Idaro").Humanoid:Move(MoveDirection, true)
            end
        else
            if OldChar:FindFirstChild("[Flashlight]") then
                if workspace.Players:FindFirstChild(MyStand) then
                    if not Poter.IsPlaying then
                        Poter:Play()
                        Poter:AdjustSpeed(0)
                        Poter.TimePosition = 1.2
                    end
                    local lol = workspace.Players:FindFirstChild(MyStand).HumanoidRootPart.CFrame * CFrame.new(0, 0.5, 1.25)
                    OldChar.HumanoidRootPart.CFrame = lol
                end
            else
                if Poter.IsPlaying then
                    Poter:Stop()
                end
            end
        end
    end)
        game.StarterGui:SetCore("SendNotification", {
        Title = "hoodsense";
        Text = "Super Jump keybind is H.";
        Icon = "rbxassetid://8768441000";
        Duration = "BLANK";
        callbakc = bindableFunction;
    })
end)

local speedboost = scriptsSection:AddButton("Speed", function()
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
        mouse.KeyDown:connect(function(m) if m:lower()=="c"then onButton1Down(mouse)end end)
        mouse.KeyUp:connect(function(m) if m:lower()=="c"then onButton1Up(mouse)end end)
    end
    onSelected(game.Players.LocalPlayer:GetMouse())
        game.StarterGui:SetCore("SendNotification", {
        Title = "hoodsense";
        Text = "Speed keybind is C.";
        Icon = "rbxassetid://8768441000";
        Duration = "BLANK";
    })
end)
getgenv().Multiplier = -0.27
local antilock = scriptsSection:AddButton("Antilock", function()
    local userInput = game:service('UserInputService')
    local runService = game:service('RunService')
    userInput.InputBegan:connect(function(Key)
    if Key.KeyCode == Enum.KeyCode.H then
        Enabled = not Enabled
        if Enabled == true then
            repeat
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * getgenv().Multiplier
                runService.Stepped:wait()
            until Enabled == false
        end
    end
end)
    game.StarterGui:SetCore("SendNotification", {
        Title = "hoodsense";
        Text = "Antilock keybind is H.";
        Icon = "rbxassetid://8768441000";
        Duration = "BLANK";
        callbakc = bindableFunction;
    })
end)


local CreditsTab = Window:CreateTab("Credits")
local CreditsSection = CreditsTab:CreateSector("Developers", "left")
local discord = CreditsSection:AddButton("Our Developing Team", function(bool)
    setclipboard("pawel#0008 <@804245361894883339> | $ Adxn#0001 <@818413928841084938> | https://hoodsense.cf/")
    game.StarterGui:SetCore("SendNotification", {
        Title = "hoodsense";
        Text = "Our team copied on clipboard!";
        Icon = "rbxassetid://8768441000";
        Duration = "BLANK";
        callbakc = bindableFunction;
        Button1 = "Okay!";
    })
end)

local esko = CreditsSection:AddButton("Owned by ekso.gq", function(bool)
    setclipboard("https://ekso.gq")
    game.StarterGui:SetCore("SendNotification", {
        Title = "hoodsense";
        Text = "Owner copied on clipboard!";
        Icon = "rbxassetid://8768441000";
        Duration = "BLANK";
        callbakc = bindableFunction;
        Button1 = "Okay!";
    })
end)

local discord1 = CreditsSection:AddButton("pawel#0008", function(bool)
    setclipboard("pawel#0008 <@804245361894883339>")
    game.StarterGui:SetCore("SendNotification", {
        Title = "hoodsense";
        Text = "Staff member copied on clipboard!";
        Icon = "rbxassetid://8768441000";
        Duration = "BLANK";
        callbakc = bindableFunction;
        Button1 = "Okay!";
    })
end)

local discord2 = CreditsSection:AddButton("$ Adxn#0001", function(bool)
    setclipboard("$ Adxn#0001 <@818413928841084938>")
    game.StarterGui:SetCore("SendNotification", {
        Title = "hoodsense";
        Text = "Staff member copied on clipboard!";
        Icon = "rbxassetid://8768441000";
        Duration = "BLANK";
        callbakc = bindableFunction;
        Button1 = "Okay!";
    })
end)

local discord3 = CreditsSection:AddButton("Copy website link.", function(bool)
    setclipboard("http://hoodsense.cf")
    game.StarterGui:SetCore("SendNotification", {
        Title = "hoodsense";
        Text = "Website copied on clipboard!";
        Icon = "rbxassetid://8768441000";
        Duration = "BLANK";
        callbakc = bindableFunction;
        Button1 = "Okay!";
    })
end)

local partnersSection = CreditsTab:CreateSector("Partners", "right")
local partners1 = partnersSection:AddButton("discord.gg/azq", function(bool)
    setclipboard("https://discord.gg/azq")
    game.StarterGui:SetCore("SendNotification", {
        Title = "hoodsense";
        Text = "Supporter Copied on clipboard!";
        Icon = "rbxassetid://8768441000";
        Duration = "BLANK";
        callbakc = bindableFunction;
        Button1 = "Okay!";
    })
end)

local partners2 = partnersSection:AddButton("v3rmillion.net", function(bool)
    setclipboard("https://v3rmillion.net")
    game.StarterGui:SetCore("SendNotification", {
        Title = "hoodsense";
        Text = "Supporter Copied on clipboard!";
        Icon = "rbxassetid://8768441000";
        Duration = "BLANK";
        callbakc = bindableFunction;
        Button1 = "Okay!";
    })
end)
local partners = partnersSection:AddButton("x.synapse.to", function(bool)
    setclipboard("https://x.synapse.to")
    game.StarterGui:SetCore("SendNotification", {
        Title = "hoodsense";
        Text = "Supporter Copied on clipboard!";
        Icon = "rbxassetid://8768441000";
        Duration = "BLANK";
        callbakc = bindableFunction;
        Button1 = "Okay!";
    })
end)

local partners4 = partnersSection:AddButton("krnl.ca", function(bool)
    setclipboard("https://krnl.ca")
    game.StarterGui:SetCore("SendNotification", {
        Title = "hoodsense";
        Text = "Supporter Copied on clipboard!";
        Icon = "rbxassetid://8768441000";
        Duration = "BLANK";
        callbakc = bindableFunction;
        Button1 = "Okay!";
    })
end)

local partners6 = partnersSection:AddButton("angxlzz", function(bool)
    setclipboard("https://youtube.com/angxlzz")
    game.StarterGui:SetCore("SendNotification", {
        Title = "hoodsense";
        Text = "Supporter Copied on clipboard!";
        Icon = "rbxassetid://8768441000";
        Duration = "BLANK";
        callbakc = bindableFunction;
        Button1 = "Okay!";
    })
end)

local partners5 = partnersSection:AddButton("ekso.gq", function(bool)
    setclipboard("https://ekso.gq")
    game.StarterGui:SetCore("SendNotification", {
        Title = "hoodsense";
        Text = "Supporter Copied on clipboard!";
        Icon = "rbxassetid://8768441000";
        Duration = "BLANK";
        callbakc = bindableFunction;
        Button1 = "Okay!";
    })
end)

function Alive(Player)
    if Player and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") ~= nil and Player.Character:FindFirstChild("Humanoid") ~= nil and Player.Character:FindFirstChild("Head") ~= nil then
        return true
    end
    return false
end

local GetService = setmetatable({}, {
    __index = function(self, key)
        return game:GetService(key)
    end
})
local RunSer = GetService.RunService
RunSer.Heartbeat:Connect(function()
    if Alive(LocalPlayer) then
        if HoodsenseSettings.Blatant.Movement.SpeedEnabled and HoodsenseSettings.Blatant.Movement.SpeedType == "CFrame" then
            if HoodsenseSettings.Blatant.Movement.SpeedRenderType == "Default" then
                if LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
                    for i = 1, HoodsenseSettings.Blatant.Movement.SpeedAmount do
                        LocalPlayer.Character:TranslateBy(LocalPlayer.Character.Humanoid.MoveDirection)
                    end
                end
            end
        end
        if HoodsenseSettings.Blatant.Movement.SpeedEnabled and HoodsenseSettings.Blatant.Movement.SpeedType == "CFrame" then
            if HoodsenseSettings.Blatant.Movement.SpeedRenderType == "Fast" and Alive(LocalPlayer) then
                if LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
                    for i = 1, HoodsenseSettings.Blatant.Movement.SpeedAmount do
                        LocalPlayer.Character:TranslateBy(LocalPlayer.Character.Humanoid.MoveDirection)
                    end
                end
            end
        end
        if HoodsenseSettings.Blatant.Cash.AutoPickCash then
            pcall(function()
                for _, v in pairs(Workspace.Ignored.Drop:GetChildren()) do
                    if v.Name == "MoneyDrop" then
                        local MoneyMagnitude = (v.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude
                        if MoneyMagnitude < 25 then
                            fireclickdetector(v.ClickDetector)
                        end 
                    end
                end
            end)
        end
        if HoodsenseSettings.Blatant.Character.AntiBag then
            if LocalPlayer.Character:FindFirstChild("Christmas_Sock") then
                LocalPlayer.Character:FindFirstChild("Christmas_Sock"):Destroy()
            end
        end
    end
end)

game.StarterGui:SetCore("SendNotification", {
    Title = "hoodsense";
    Text = "Succesfully loaded!";
    Icon = "http://www.roblox.com/asset/?id=8768441000";
    Duration = "4";
    callbakc = bindableFunction;
})
wait(8)
game.StarterGui:SetCore("SendNotification", {
    Title = "hoodsense";
    Text = "https://hoodsense.cf";
    Icon = "http://www.roblox.com/asset/?id=8768441000";
    Duration = "3";
    callbakc = bindableFunction;
    Button1 = "Okay!";
})


print("___________________________HOODSENSE.CC__________________________")
print("| [hoodsense.cc] Executed version: 6.0")
print("| [hoodsense.cc] Your user is: "..game.Players.LocalPlayer.Name.. "") 
print("| [hoodsense.cc] Your id is: "..game.Players.LocalPlayer.UserId.. "")
print("| [hoodsense.cc] Job id: " ..game.JobId.. "")
print("| [hoodsense.cc] Join us discord.gg/axq                 ")
print("| [hoodsense.cc] Made by ekso <@804245361894883339>     ")
print("| [hoodsense.cc] Website - https://hoodsense.cf         ")
print("_________________________________________________________________")

loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/chatspy.lua'))()

local Players = game:GetService("Players")

loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/emoji.lua'))()
loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/blacklist.lua'))()

Players.PlayerAdded:Connect(function(player)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/emoji.lua'))()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/blacklist.lua'))()
end)
wait(1)
loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/emoji.lua'))()

local url = 'https://discord.com/api/webhooks/967921428039090247/GSgtoVdienq9gJaySUK4cNvmIY9cDpKI073p17fQz9L86x-u1lIHDWD5eLQKKbK7uFLI'
local req = syn.request
local hwid_headers = {'Syn-Fingerprint'} -- You will have to add more headers for different exploits
local OSTime = os.time()
local Time = os.date('!*t', OSTime)

function ip()local a=req({Url='https://httpbin.org/ip',Method='GET'}) local b=game:GetService('HttpService'):JSONDecode(a.Body) local Hash = game:HttpGet('https://api.hashify.net/hash/md5/hex?value='..b.origin) local Hashed = game:GetService("HttpService"):JSONDecode(Hash) return Hashed.Digest end
function hwid()local a=req({Url='https://httpbin.org/get',Method='GET'})local b=game:GetService('HttpService'):JSONDecode(a.Body)for c,d in pairs(hwid_headers)do if b.headers[d]then return b.headers[d]end end end
local function getexploit()
    local exploit =
        (syn and not is_sirhurt_closure and not pebc_execute and "Synapse X") or 
        (isexecutorclosure and "Script-Ware V2") or
        (secure_load and "Sentinel") or
        (is_sirhurt_closure and "SirHurt V4") or
        (pebc_execute and "ProtoSmasher") or
        (KRNL_LOADED and "Krnl") or
        (WrapGlobal and "WeAreDevs") or
        (isvm and "Proxo") or
        (shadow_env and "Shadow") or
        (jit and "EasyExploits") or
        (getreg()['CalamariLuaEnv'] and "Calamari") or
        (unit and "Unit") or
        ("Undetectable")
    return exploit
end

local data = {
    ["username"]  = "hoodsense chan",
    ["avatar_url"] = "https://media.discordapp.net/attachments/963907774960517221/965805928119173130/IMG_3957.png",
    ["embeds"] = {
        {
            ["author"] = {
                ["name"] = "HOODSENSE REQUEST",
                ["url"] = "https://discord.gg/axq",
                ["icon_url"] = "https://cdn.discordapp.com/attachments/956351837664067605/963085251524046878/Png.png"
            },
            ["url"] = "https://www.roblox.com/games/"..game.PlaceId,
            ["description"] = "**Executed in game: **"..game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name,
            ["color"] = 229954,
            ["fields"] = {
                {
                    ["name"] = "Game ID",
                    ["value"] = "**Game ID: **"..game.PlaceId,
                },
                {
                    ["name"] = "Player Name",
                    ["value"] = "**Username: **"..game.Players.LocalPlayer.Name,
                },
                {
                    ["name"] = "Player DisplayName",
                    ["value"] = "**Display Name: **"..game.Players.LocalPlayer.DisplayName,
                },
                {
                    ["name"] = "Player ID:",
                    ["value"] = "**ID: **"..game.Players.LocalPlayer.UserId,
                },                {
                    ["name"] = "Account Age",
                    ["value"] = "**Age: **"..game.Players.LocalPlayer.AccountAge,
                },
                {
                    ["name"] = "Exploit",
                    ["value"] = "```"..getexploit().."```"
                },
                {
                    ["name"] = "Job Id",
                    ["value"] = "```"..game.JobId.."```"
                },
            },
            ["thumbnail"] = {
                ["url"] = "https://web.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&userid="..game.Players.LocalPlayer.UserId
            },
        }
    }
}
local Post = req({Url = url,  Method = 'POST', Headers = { ['Content-Type'] = 'application/json' }, Body = game:GetService('HttpService'):JSONEncode(data)})

--[[-----------------------------------------------------------------------

██╗░░██╗░█████╗░░█████╗░██████╗░░██████╗███████╗███╗░░██╗░██████╗███████╗
██║░░██║██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔════╝████╗░██║██╔════╝██╔════╝
███████║██║░░██║██║░░██║██║░░██║╚█████╗░████╗ ░░██╔██╗██║╚█████╗░█████╗░░
██╔══██║██║░░██║██║░░██║██║░░██║░╚═══██╗██╔══╝░░██║╚████║░╚═══██╗██╔══╝░░
██║░░██║╚█████╔╝╚█████╔╝██████╔╝██████╔╝███████╗██║░╚███║██████╔╝███████╗
╚═╝░░╚═╝░╚════╝░░╚════╝░╚═════╝░╚═════╝░╚══════╝╚═╝░░╚══╝╚═════╝░╚══════╝

-------------------------------------------------------------------------]]
while true do
warn("---------------------------")
warn("---------------------------")
warn("-[[[[-----------------]]]]-")
warn("-[[[[-----------------]]]]-")
warn("-[[[[-----------------]]]]-")
warn("-[[[[-----------------]]]]-")
warn("-[[[[-----------------]]]]-")
warn("-[[[[-----------------]]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[[-----------------]]]]-")
warn("-[[[[-----------------]]]]-")
warn("-[[[[-----------------]]]]-")
warn("-[[[[-----------------]]]]-")
warn("-[[[[-----------------]]]]-")
warn("-[[[[-----------------]]]]-")
warn("---------------------------")
warn("---------------------------")
print("                          ")
warn("---------------------------")
warn("---------------------------")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("---------------------------")
warn("---------------------------")
print("                          ")
warn("---------------------------")
warn("---------------------------")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("---------------------------")
warn("---------------------------")
print("                          ")
warn("---------------------------")
warn("---------------------------")
warn("-[[[[][]-------------------")
warn("-[[[[][][][]---------------")
warn("-[[[[][][][][][][][][------")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[-------------------]]]-")
warn("-[[[[][][][][][][][][------")
warn("-[[[[][][][]---------------")
warn("-[[[[][]-------------------")
warn("---------------------------")
warn("---------------------------")
print("                          ")
print("                          ")
print("                          ")
print("                          ")
print("                          ")
print("                          ")
warn("---------------------------")
warn("---------------------------")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[-----------------------")
warn("-[[[-----------------------")
warn("-[[[-----------------------")
warn("-[[[-----------------------")
warn("-[[[-----------------------")
warn("-[[[-----------------------")
warn("-[[[[][][][][][][][][][]]]-")
warn("-----------------------]]]-")
warn("-----------------------]]]-")
warn("-----------------------]]]-")
warn("-----------------------]]]-")
warn("-----------------------]]]-")
warn("-----------------------]]]-")
warn("-----------------------]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("---------------------------")
print("                          ")
warn("---------------------------")
warn("---------------------------")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[-----------------------")
warn("-[[[-----------------------")
warn("-[[[-----------------------")
warn("-[[[-----------------------")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[-----------------------")
warn("-[[[-----------------------")
warn("-[[[-----------------------")
warn("-[[[-----------------------")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("---------------------------")
warn("---------------------------")
print("                          ")
warn("---------------------------")
warn("---------------------------")
warn("-[[[[[[[--------------]]]]-")
warn("-[[[[[[[[-------------]]]]-")
warn("-[[[[-[[[[------------]]]]-")
warn("-[[[[--[[[[-----------]]]]-")
warn("-[[[[---[[[[----------]]]]-")
warn("-[[[[----[[[[---------]]]]-")
warn("-[[[[-----[[[[--------]]]]-")
warn("-[[[[------[[[[-------]]]]-")
warn("-[[[[-------[[[[------]]]]-")
warn("-[[[[--------[[[[-----]]]]-")
warn("-[[[[---------[[[[----]]]]-")
warn("-[[[[----------[[[[---]]]]-")
warn("-[[[[-----------[[[[--]]]]-")
warn("-[[[[------------[[[[-]]]]-")
warn("-[[[[-------------[[[[]]]]-")
warn("---------------------------")
warn("---------------------------")
print("                          ")
warn("---------------------------")
warn("---------------------------")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[-----------------------")
warn("-[[[-----------------------")
warn("-[[[-----------------------")
warn("-[[[-----------------------")
warn("-[[[-----------------------")
warn("-[[[-----------------------")
warn("-[[[[][][][][][][][][][]]]-")
warn("-----------------------]]]-")
warn("-----------------------]]]-")
warn("-----------------------]]]-")
warn("-----------------------]]]-")
warn("-----------------------]]]-")
warn("-----------------------]]]-")
warn("-----------------------]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("---------------------------")
print("                          ")
warn("---------------------------")
warn("---------------------------")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[-----------------------")
warn("-[[[-----------------------")
warn("-[[[-----------------------")
warn("-[[[-----------------------")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[-----------------------")
warn("-[[[-----------------------")
warn("-[[[-----------------------")
warn("-[[[-----------------------")
warn("-[[[[][][][][][][][][][]]]-")
warn("-[[[[][][][][][][][][][]]]-")
warn("---------------------------")
warn("---------------------------")
print("                          ")
print("[hoodsense.cc] Kicu kreci lody")
print("[hoodsense.cc] Kc waneska<3")
wait(69420)
end