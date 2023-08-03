repeat wait() until game:IsLoaded()
local AbyssLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/iHavoc101/Genesis-Studios/main/UserInterface/Luminosity.lua", true))()
local Optimized = true
local AllHookProperty = {false, false, false}

local AbyssSettings = {
    Loaded = false,
    Target = {
        UseMouseNearest = "Mouse",
        WallCheck = false,
        Grabbed = false,
        Knocked = false,
        UseOldWallCheck = false,
        UseNewWallCheck = true
    },
    TargetStrafe = {
        Enabled = false,
        Controllable = false,
        AutoJump = false,
        Range = 10,
        Distance = 5,
        Speed = 4,
        InfRange = false,
        TargetOnly = false,
        HoldSpace = false,
        ShowRotationRange = false
    },
    Speed = {
        Enabled = false,
        Motion = false,
        BHop = false,
        Amount = 1
    },
    Strafe = {
        Enabled = false
    },
    NoJumpCd = {
        Enabled = false
    },
    Fly = {
        Enabled = false,
        Normal = true,
        Height = 35,
        MoveOnly = false,
        Amount = 1
    },
    SilentAim = {
        Enabled = false,
        CustomPrediction = false,
        PredictionAmount = 0.165,
        SilentRotation = false,
        UseRange = false,
        Range = 15,
        ForceHead = "Head",
        DrawingCircle = false,
        DrawingCircleSize = 100,
        NearestDistanceBehindCheck = false
    },
    Disabler = {
        CFrameDetection = false,
        Ban = false,
        Crash = false
    },
    NoRotation = {
        Enabled = false
    },
    NoSlow = {
        Enabled = false,
        GunOnly = false
    },
    AutoHeal = {
        Enabled = false,
        HealthBelow = 80
    },
    MotionBlur = {
        Enabled = false,
        BlurAmount = 50
    },
    TargetGui = {
        Enabled = false
    },
    Watermark = {
        Enabled = false
    },
    FPSBoost = {
        Enabled = false
    },
    LagDetector = {
        Enabled = false
    },
    SpeedGlitch = {
        Enabled = false,
        SpeedMultiplier = 8
    }
}

local AbyssStorage = {
    GetStrafeAngle = 0,
    BHoping = false,
    Side = "Right",
    StoredRange = 10,
    HeldSpace = false,
    GetPrediction = 0.165,
    Instance = {},
    Equipable = false,
    FPSBeat = 0,
    GetTime = 0,
    Macro = false
}

local Service = setmetatable({}, {
    __index = function(t, k)
        return game:GetService(k)
    end
})

local RunService = Service.RunService
local Players = Service.Players
local LocalPlayer = Players.LocalPlayer
local UIs = Service.UserInputService
local TweenService = Service.TweenService
local CurrentCamera = workspace.CurrentCamera
local WorldToViewPortPoint = CurrentCamera.WorldToViewportPoint
local WorldToScreenPoint = CurrentCamera.WorldToScreenPoint
local Mouse = LocalPlayer:GetMouse()
local CoreGui = Service.CoreGui
local Last = CurrentCamera.CFrame.lookVector
local Blur = Instance.new("BlurEffect", CurrentCamera)
Blur.Size = 0
local GuiInset = Service.GuiService:GetGuiInset()
local Stats = Service.Stats.Network.ServerStatsItem["Data Ping"]
local ReplicatedStorage = Service.ReplicatedStorage

if not pcall(function() return syn.protect_gui end) then
    syn = {}
    syn.protect_gui = function(gui)
        gui.Parent = CoreGui
    end
end

local MainGui = Instance.new("ScreenGui")
MainGui.Name = "VaultsUI"
MainGui.Parent = CoreGui
MainGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
syn.protect_gui(MainGui)

local DrawingFunctions = {
    NewLine = function(Thickness)
        local Line = Drawing.new("Line")
        Line.Visible = true
        Line.Color = Color3.fromRGB(21, 101, 192)
        Line.Thickness = 1
        Line.Transparency = 1
        Line.ZIndex = 2
        
        local OutLine = Drawing.new("Line")
        OutLine.Visible = true
        OutLine.Color = Color3.fromRGB(0, 0, 0)
        OutLine.Thickness = 4
        OutLine.Transparency = 1
        OutLine.ZIndex = 1
        return Line, OutLine
    end,
    NewCircle = function()
        local Circle = Drawing.new("Circle")
        Circle.Transparency = 1
        Circle.Thickness = 1
        Circle.ZIndex = 2
        Circle.Visible = true
        Circle.Color = Color3.fromRGB(21, 101, 192)
        Circle.NumSides = 100

        local OutLine = Drawing.new("Circle")
        OutLine.Visible = true
        OutLine.Color = Color3.fromRGB(0, 0, 0)
        OutLine.Transparency = 1
        OutLine.Thickness = 4
        OutLine.ZIndex = 1
        OutLine.NumSides = 100
        return Circle, OutLine
    end
}

local Line1, OutLine1
local Line2, OutLine2
local Line3, OutLine3
local Line4, OutLine4
local Line5, OutLine5
local Line6, OutLine6
local Line7, OutLine7
local Line8, OutLine8

local DrawingCircle, OutlineDrawingCircle = DrawingFunctions.NewCircle(1)

if not Optimized then
    Line1, OutLine1 = DrawingFunctions.NewLine()
    Line2, OutLine2 = DrawingFunctions.NewLine()
    Line3, OutLine3 = DrawingFunctions.NewLine()
    Line4, OutLine4 = DrawingFunctions.NewLine()
    Line5, OutLine5 = DrawingFunctions.NewLine()
    Line6, OutLine6 = DrawingFunctions.NewLine()
    Line7, OutLine7 = DrawingFunctions.NewLine()
    Line8, OutLine8 = DrawingFunctions.NewLine()
end

local IsNetwork = function(GetPlayer)
    return GetPlayer and GetPlayer.Character and GetPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil and GetPlayer.Character:FindFirstChild("Humanoid") ~= nil and GetPlayer.Character:FindFirstChild("Head") ~= nil and true or false
end

local AbyssFunctions = {
    TargetStrafe = function(IsAutoJump, IsControllable, GetSpeed, GetDistance, GetEnemy)
        if IsControllable then
            if AbyssStorage.Side == "Right" then
                AbyssStorage.GetStrafeAngle = AbyssStorage.GetStrafeAngle + GetSpeed
            else
                AbyssStorage.GetStrafeAngle = AbyssStorage.GetStrafeAngle - GetSpeed
            end
        else
            if AbyssStorage.GetStrafeAngle > 360 then
                AbyssStorage.GetStrafeAngle = 0
            else
                AbyssStorage.GetStrafeAngle = AbyssStorage.GetStrafeAngle + GetSpeed
            end
        end
        LocalPlayer.Character.HumanoidRootPart.CFrame = GetEnemy.CFrame * CFrame.Angles(0, math.rad(AbyssStorage.GetStrafeAngle), 0) * CFrame.new(0, 0, GetDistance)
    end,
    NearestDistance = function()
        local Target = nil
        local Distance = math.huge
        
        for i, v in next, Players:GetPlayers() do
            if v ~= LocalPlayer and IsNetwork(LocalPlayer) and IsNetwork(v) then
                local DistanceFromPlayer = (v.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                local RootPosition, RootVisible = CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                if (not AbyssSettings.Target.NearestDistanceBehindCheck or RootVisible) then
                    if Distance > DistanceFromPlayer then
                        Target = v
                        Distance = DistanceFromPlayer
                    end
                end
            end
        end
    
        return Target, Distance
    end,
    NearestMouse = function()
        local Target = nil
        local Distance = math.huge
    
        for i, v in next, Players:GetPlayers() do
            if v ~= LocalPlayer and IsNetwork(LocalPlayer) and IsNetwork(v) then
                local RootPosition, RootVisible = CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                local DistanceFromMouse = (Vector2.new(RootPosition.X, RootPosition.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                if RootVisible and Distance > DistanceFromMouse then
                    Target = v
                    Distance = DistanceFromMouse
                end
            end
        end
    
        return Target, Distance
    end,
    ToScreen = function(Point)
        local ScreenPosition, InScreen = WorldToViewPortPoint(CurrentCamera, Point)
    
        return Vector2.new(ScreenPosition.X, ScreenPosition.Y), ScreenPosition, InScreen
    end,
    GetVertices = function(BasePos, Multipler)
        local Size = Vector3.new(1, 1, 1) * Multipler
        local Vertices = {}
        
        Vertices.Top = BasePos + Vector3.new(0, 0, Size.Z)
        Vertices.Bottom = BasePos + Vector3.new(0, 0, -Size.Z)
        Vertices.Right = BasePos + Vector3.new(-Size.X, 0, 0)
        Vertices.Left = BasePos + Vector3.new(Size.X, 0, 0)
        
        Vertices.Corner1 = BasePos + (Vector3.new(0, 0, Size.Z) + Vector3.new(-Size.Z, 0, 0)) / 1.5
        Vertices.Corner3 = BasePos + (Vector3.new(0, 0, -Size.Z) + Vector3.new(Size.Z, 0, 0)) / 1.5
        Vertices.Corner4 = BasePos + (Vector3.new(Size.X, 0, 0) + Vector3.new(0, 0, Size.Z)) / 1.5
        Vertices.Corner2 = BasePos + (Vector3.new(-Size.X, 0, 0) + Vector3.new(0, 0, -Size.Z)) / 1.5
        
        return Vertices
    end,
    Notify = function(Desc, Delay, Type)
        local NovoIntentNotification = Instance.new("Frame")
        local Name = Instance.new("TextLabel")
        local Description = Instance.new("TextLabel")
        local Warnning = Instance.new("ImageButton")
        local Line = Instance.new("Frame")
        local Info = Instance.new("ImageButton")
        
        NovoIntentNotification.Name = "NovoIntent"
        NovoIntentNotification.Parent = MainGui
        NovoIntentNotification.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        NovoIntentNotification.BackgroundTransparency = 0.2
        NovoIntentNotification.BorderSizePixel = 0
        NovoIntentNotification.Position = UDim2.new(1, 5, 0, 50)
        NovoIntentNotification.Size = UDim2.new(0, 400, 0, 65)
        
        Name.Name = "Name"
        Name.Parent = NovoIntentNotification
        Name.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
        Name.BackgroundTransparency = 1.000
        Name.Position = UDim2.new(0.154267296, 0, 0.12849167, 0)
        Name.Size = UDim2.new(0, 287, 0, 14)
        Name.Font = Enum.Font.Roboto
        Name.Text = "Abyss Notification"
        Name.TextColor3 = Color3.fromRGB(255, 255, 255)
        Name.TextScaled = true
        Name.TextSize = 16.000
        Name.TextWrapped = true
        Name.TextXAlignment = Enum.TextXAlignment.Left
        
        Description.Name = "Description"
        Description.Parent = NovoIntentNotification
        Description.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
        Description.BackgroundTransparency = 1.000
        Description.Position = UDim2.new(0.153999954, 0, 0.430000156, 0)
        Description.Size = UDim2.new(0, 295, 0, 19)
        Description.Font = Enum.Font.Roboto
        Description.Text = Desc .. " (" .. Delay .. "s)"
        Description.TextColor3 = Color3.fromRGB(255, 255, 255)
        Description.TextSize = 16.000
        Description.TextXAlignment = Enum.TextXAlignment.Left
        
        Warnning.Name = "Warnning"
        Warnning.Parent = NovoIntentNotification
        Warnning.BackgroundTransparency = 1.000
        Warnning.LayoutOrder = 2
        Warnning.Position = UDim2.new(0.0389830507, 0, 0.183081031, 0)
        Warnning.Size = UDim2.new(0, 32, 0, 32)
        Warnning.ZIndex = 2
        Warnning.Image = "rbxassetid://3926305904"
        Warnning.ImageRectOffset = Vector2.new(364, 324)
        Warnning.ImageRectSize = Vector2.new(36, 36)
        if Type == "Warnning" then
            Warnning.Visible = true
        else
            Warnning.Visible = false
        end
        
        Line.Name = "Line"
        Line.Parent = NovoIntentNotification
        Line.AnchorPoint = Vector2.new(1, 0)
        Line.BackgroundColor3 = Color3.fromRGB(21, 101, 192)
        Line.BorderSizePixel = 0
        Line.Position = UDim2.new(0, 0, 0.941999912, 0)
        Line.Size = UDim2.new(0, 0, 0, 3)
        
        Info.Name = "Info"
        Info.Parent = NovoIntentNotification
        Info.BackgroundTransparency = 1.000
        Info.Position = UDim2.new(0.0390000008, 0, 0.182999998, 0)
        Info.Size = UDim2.new(0, 32, 0, 32)
        if Type == "Info" then
            Info.Visible = true
        else
            Info.Visible = false
        end
        Info.ZIndex = 2
        Info.Image = "rbxassetid://3926305904"
        Info.ImageRectOffset = Vector2.new(964, 84)
        Info.ImageRectSize = Vector2.new(36, 36)
        NovoIntentNotification:TweenPosition(UDim2.new(1, -400, 0, 50), "Out", "Sine", 0.35) 
        wait(0.35)
        Line:TweenPosition(UDim2.new(1, 0, 0.941999912, 0), "Out", "Linear", Delay)
        Line:TweenSize(UDim2.new(0, 400, 0, 3), "Out", "Linear", Delay)
        repeat
            Delay = Delay - 0.1
            if 0.1 > Delay then
                Description.Text = Desc .. " (0.0s)"
            else
                Description.Text = Desc .. " (" .. Delay .. "s)"
            end
            wait(0.0925)
        until 0 > Delay
        NovoIntentNotification:TweenPosition(UDim2.new(1, 5, 0, 50), "Out", "Sine", 0.35)
        wait(0.35)
        NovoIntentNotification:Destroy()
    end,
    Knocked = function(GetPlayer)
        if IsNetwork(GetPlayer) then
            return GetPlayer.Character.BodyEffects["K.O"].Value and true or false
        end
        return false
    end,
    Grabbing = function(GetPlayer)
        if IsNetwork(GetPlayer) then
            return GetPlayer.Character:FindFirstChild("GRABBING_CONSTRAINT") and true or false
        end
        return false
    end,
    Round = function(num, numDecimalPlaces)
        return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
    end,
    CalculateTime = function(GetValue)
        local HoursMul, MinutesMul, SecondsMul = 60 * 60, 60, 1
     
        local ResultHours = math.floor(GetValue / HoursMul)
        GetValue = GetValue - (HoursMul * ResultHours)
        local ResultMinutes = math.floor(GetValue / MinutesMul)
        GetValue = GetValue - (MinutesMul * ResultMinutes)
        local ResultSeconds = GetValue
        return ResultHours, ResultMinutes, ResultSeconds
    end
}

local AbyssMiscFunctions = {
    WallCheck = function(OriginPart, Part)
        if IsNetwork(LocalPlayer) then
            local IgnoreList = {CurrentCamera, LocalPlayer.Character, OriginPart.Parent}
            local Parts = CurrentCamera:GetPartsObscuringTarget(
                {
                    OriginPart.Position, 
                    Part.Position
                },
                IgnoreList
            )
        
            for i, v in pairs(Parts) do
                if v.Transparency >= 0.3 then
                    AbyssStorage.Instance[#AbyssStorage.Instance + 1] = v
                end
        
                if v.Material == Enum.Material.Glass then
                    AbyssStorage.Instance[#AbyssStorage.Instance + 1] = v
                end
            end
        
            return #Parts == 0
        end
        return true
    end,
    CameraCheck = function(GetPosition, IgnoredList)
        if IsNetwork(LocalPlayer) then
            return #CurrentCamera:GetPartsObscuringTarget({LocalPlayer.Character.Head.Position, GetPosition}, IgnoredList) == 0 and true or false
        end
    end,
    NearestType = function(Type)
        if Type == "Distance" then
            return AbyssFunctions.NearestDistance()
        elseif Type == "Mouse" then
            return AbyssFunctions.NearestMouse()
        end
    end
}

local Watermark = Instance.new("Frame")
local AmbientShadow = Instance.new("ImageLabel")
local UmbraShadow = Instance.new("ImageLabel")
local Container = Instance.new("Frame")
local Line = Instance.new("Frame")
local Title = Instance.new("TextLabel")

Watermark.Name = "Watermark"
Watermark.Parent = MainGui
Watermark.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Watermark.BackgroundTransparency = 0.700
Watermark.BorderSizePixel = 0
Watermark.Position = UDim2.new(0.00665557384, 0, 0.0178571437, 0)
Watermark.Size = UDim2.new(0, 320, 0, 32)
Watermark.Visible = false

AmbientShadow.Name = "AmbientShadow"
AmbientShadow.Parent = Watermark
AmbientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
AmbientShadow.BackgroundTransparency = 1.000
AmbientShadow.BorderSizePixel = 0
AmbientShadow.Position = UDim2.new(0.5, 0, 0.476000011, 3)
AmbientShadow.Size = UDim2.new(1, 5, 1, 5)
AmbientShadow.ZIndex = 0
AmbientShadow.Image = "rbxassetid://1316045217"
AmbientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
AmbientShadow.ImageTransparency = 0.500
AmbientShadow.ScaleType = Enum.ScaleType.Slice
AmbientShadow.SliceCenter = Rect.new(10, 10, 118, 118)

UmbraShadow.Name = "UmbraShadow"
UmbraShadow.Parent = Watermark
UmbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
UmbraShadow.BackgroundTransparency = 1.000
UmbraShadow.BorderSizePixel = 0
UmbraShadow.Position = UDim2.new(0.5, 0, 0.5, 6)
UmbraShadow.Size = UDim2.new(1, 10, 1, 10)
UmbraShadow.ZIndex = 0
UmbraShadow.Image = "rbxassetid://1316045217"
UmbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
UmbraShadow.ImageTransparency = 0.850
UmbraShadow.ScaleType = Enum.ScaleType.Slice
UmbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)

Container.Name = "Container"
Container.Parent = Watermark
Container.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Container.BackgroundTransparency = 0.650
Container.BorderSizePixel = 0
Container.Position = UDim2.new(0, 0, 0.0778557062, 0)
Container.Size = UDim2.new(0, 320, 0, 29)
Container.ZIndex = 2

Line.Name = "Line"
Line.Parent = Container
Line.BackgroundColor3 = Color3.fromRGB(21, 101, 192)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0.00182670204, 0, -0.0621119216, 0)
Line.Size = UDim2.new(0, 320, 0, 3)

Title.Name = "Title"
Title.Parent = Container
Title.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.0367155336, 0, 0.238294989, 0)
Title.Size = UDim2.new(0, 310, 0, 16)
Title.Font = Enum.Font.Roboto
Title.Text = "Abyss | Da Hood | 60 fps | 30 ms | 00:00:00"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16.000
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left

local TargetUI = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Container_2 = Instance.new("Frame")
local Line_2 = Instance.new("Frame")
local Profile = Instance.new("ImageButton")
local HealthBorder = Instance.new("Frame")
local HealthBar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local HealthText = Instance.new("TextLabel")
local HealthIcon = Instance.new("ImageButton")
local Title_2 = Instance.new("TextLabel")
local ArmorBorder = Instance.new("Frame")
local ArmorBar = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local ArmorText = Instance.new("TextLabel")
local ArmorIcon = Instance.new("ImageButton")
local UmbraShadow_2 = Instance.new("ImageLabel")
local AmbientShadow_2 = Instance.new("ImageLabel")

TargetUI.Name = "Target UI"
TargetUI.Parent = MainGui
TargetUI.AnchorPoint = Vector2.new(0.5, 0.5)
TargetUI.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
TargetUI.BackgroundTransparency = 0.700
TargetUI.BorderSizePixel = 0
TargetUI.Position = UDim2.new(0.504575729, 0, 0.787337661, 0)
TargetUI.Size = UDim2.new(0, 251, 0, 97)
TargetUI.Visible = false

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = TargetUI

Container_2.Name = "Container"
Container_2.Parent = TargetUI
Container_2.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Container_2.BackgroundTransparency = 0.700
Container_2.BorderSizePixel = 0
Container_2.Position = UDim2.new(0.00973401312, 0, 0.027855942, 0)
Container_2.Size = UDim2.new(0, 248, 0, 94)

Line_2.Name = "Line"
Line_2.Parent = Container_2
Line_2.BackgroundColor3 = Color3.fromRGB(21, 101, 192)
Line_2.BorderSizePixel = 0
Line_2.Position = UDim2.new(-0.00261220615, 0, -0.00655640941, 0)
Line_2.Size = UDim2.new(0, 249, 0, 3)

Profile.Name = "Profile"
Profile.Parent = Container_2
Profile.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Profile.BackgroundTransparency = 1.000
Profile.Position = UDim2.new(-0.00427350448, 0, 0.0338983051, 0)
Profile.Size = UDim2.new(0, 90, 0, 90)
Profile.AutoButtonColor = false
Profile.Image = "rbxthumb://type=AvatarHeadShot&id=590180069&w=420&h=420"

HealthBorder.Name = "HealthBorder"
HealthBorder.Parent = Container_2
HealthBorder.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
HealthBorder.BackgroundTransparency = 0.500
HealthBorder.BorderSizePixel = 0
HealthBorder.Position = UDim2.new(0.400000006, 0, 0.349999994, 0)
HealthBorder.Size = UDim2.new(0, 135, 0, 22)

HealthBar.Name = "HealthBar"
HealthBar.Parent = HealthBorder
HealthBar.Active = true
HealthBar.BackgroundColor3 = Color3.fromRGB(21, 101, 192)
HealthBar.BorderSizePixel = 0
HealthBar.ClipsDescendants = true
HealthBar.Position = UDim2.new(0.0220597833, 0, -0.0436026901, 0)
HealthBar.Size = UDim2.new(1, 0, 1, 0)

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = HealthBar

HealthText.Name = "HealthText"
HealthText.Parent = HealthBorder
HealthText.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
HealthText.BackgroundTransparency = 1.000
HealthText.Size = UDim2.new(0, 138, 0, 22)
HealthText.Font = Enum.Font.Roboto
HealthText.Text = "100"
HealthText.TextColor3 = Color3.fromRGB(255, 255, 255)
HealthText.TextSize = 20.000

HealthIcon.Name = "HealthIcon"
HealthIcon.Parent = HealthBorder
HealthIcon.BackgroundTransparency = 1.000
HealthIcon.Position = UDim2.new(0.0900000036, 0, 0.119999997, 0)
HealthIcon.Size = UDim2.new(0, 15, 0, 15)
HealthIcon.ZIndex = 2
HealthIcon.Image = "rbxassetid://3926305904"
HealthIcon.ImageRectOffset = Vector2.new(964, 444)
HealthIcon.ImageRectSize = Vector2.new(36, 36)

Title_2.Name = "Title"
Title_2.Parent = Container_2
Title_2.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
Title_2.BackgroundTransparency = 1.000
Title_2.Position = UDim2.new(0.426879644, 0, 0.0496608652, 0)
Title_2.Size = UDim2.new(0, 132, 0, 25)
Title_2.Font = Enum.Font.Roboto
Title_2.Text = "T_4Q (WetAnimeGirls)"
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextScaled = true
Title_2.TextSize = 20.000
Title_2.TextWrapped = true
Title_2.TextXAlignment = Enum.TextXAlignment.Left

ArmorBorder.Name = "ArmorBorder"
ArmorBorder.Parent = Container_2
ArmorBorder.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
ArmorBorder.BackgroundTransparency = 0.500
ArmorBorder.BorderSizePixel = 0
ArmorBorder.Position = UDim2.new(0.400000006, 0, 0.649999976, 0)
ArmorBorder.Size = UDim2.new(0, 135, 0, 22)

ArmorBar.Name = "ArmorBar"
ArmorBar.Parent = ArmorBorder
ArmorBar.BackgroundColor3 = Color3.fromRGB(21, 101, 192)
ArmorBar.BorderSizePixel = 0
ArmorBar.Position = UDim2.new(0.0220597833, 0, -0.0436026901, 0)
ArmorBar.Size = UDim2.new(1, 0, 1, 0)

UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = ArmorBar

ArmorText.Name = "ArmorText"
ArmorText.Parent = ArmorBorder
ArmorText.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
ArmorText.BackgroundTransparency = 1.000
ArmorText.Size = UDim2.new(0, 138, 0, 21)
ArmorText.Font = Enum.Font.Roboto
ArmorText.Text = "100"
ArmorText.TextColor3 = Color3.fromRGB(255, 255, 255)
ArmorText.TextSize = 20.000

ArmorIcon.Name = "ArmorIcon"
ArmorIcon.Parent = ArmorBorder
ArmorIcon.BackgroundTransparency = 1.000
ArmorIcon.Position = UDim2.new(0.0900000036, 0, 0.119999997, 0)
ArmorIcon.Size = UDim2.new(0, 15, 0, 15)
ArmorIcon.ZIndex = 2
ArmorIcon.Image = "rbxassetid://3926307971"
ArmorIcon.ImageRectOffset = Vector2.new(164, 284)
ArmorIcon.ImageRectSize = Vector2.new(36, 36)

UmbraShadow_2.Name = "UmbraShadow"
UmbraShadow_2.Parent = TargetUI
UmbraShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
UmbraShadow_2.BackgroundTransparency = 1.000
UmbraShadow_2.BorderSizePixel = 0
UmbraShadow_2.Position = UDim2.new(0.5, 0, 0.5, 6)
UmbraShadow_2.Size = UDim2.new(1, 10, 1, 10)
UmbraShadow_2.ZIndex = 0
UmbraShadow_2.Image = "rbxassetid://1316045217"
UmbraShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
UmbraShadow_2.ImageTransparency = 0.850
UmbraShadow_2.ScaleType = Enum.ScaleType.Slice
UmbraShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

AmbientShadow_2.Name = "AmbientShadow"
AmbientShadow_2.Parent = TargetUI
AmbientShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
AmbientShadow_2.BackgroundTransparency = 1.000
AmbientShadow_2.BorderSizePixel = 0
AmbientShadow_2.Position = UDim2.new(0.5, 0, 0.476000011, 3)
AmbientShadow_2.Size = UDim2.new(1, 5, 1, 5)
AmbientShadow_2.ZIndex = 0
AmbientShadow_2.Image = "rbxassetid://1316045217"
AmbientShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
AmbientShadow_2.ImageTransparency = 0.500
AmbientShadow_2.ScaleType = Enum.ScaleType.Slice
AmbientShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

local Window = AbyssLibrary.new("Abyss Internal", "v2.0.0", nil)

local CombatTab = Window.Tab("Combat")
local TargetFolder = CombatTab.Folder("Target Settings", "Configuration Of Target To Make User Easier To Use.")

TargetFolder.Toggle("Use Distance Nearest", function(State)
    if State then
        AbyssSettings.Target.UseMouseNearest = "Distance"
    else
        AbyssSettings.Target.UseMouseNearest = "Mouse"
    end
end)

TargetFolder.Toggle("Nearest Distance Behind Check", function(State)
    AbyssSettings.Target.NearestDistanceBehindCheck = State
end)

TargetFolder.Toggle("Wall Check", function(State)
    AbyssSettings.Target.WallCheck = State
end)

TargetFolder.Toggle("Use Old WallCheck", function(State)
    AbyssSettings.Target.UseOldWallCheck = State
    AbyssSettings.Target.UseNewWallCheck = not State
end)

TargetFolder.Toggle("Grabbed Check", function(State)
    AbyssSettings.Target.Grabbed = State
end)

TargetFolder.Toggle("Knocked Check", function(State)
    AbyssSettings.Target.Knocked = State
end)

local TargetStrafeModule = CombatTab.Cheat("TargetStrafe", "Rotate Around Target & Break Target Lock Velocity.", function(State)
    AbyssSettings.TargetStrafe.Enabled = State
end)

TargetStrafeModule.Toggle("Auto Jump", function(State)
    AbyssSettings.TargetStrafe.AutoJump = State
end)

TargetStrafeModule.Toggle("Controllable", function(State)
    AbyssSettings.TargetStrafe.Controllable = State
end)

if not Optimized then
    TargetStrafeModule.Toggle("Show Rotation Range", function(State)
        AbyssSettings.TargetStrafe.ShowRotationRange = State
    end)
end

TargetStrafeModule.Toggle("Inf Range", function(State)
    AbyssSettings.TargetStrafe.InfRange = State
    if AbyssSettings.TargetStrafe.InfRange then
        AbyssSettings.TargetStrafe.Range = math.huge
    else
        AbyssSettings.TargetStrafe.Range = AbyssStorage.StoredRange
    end
end)

TargetStrafeModule.Toggle("Hold Space", function(State)
    AbyssSettings.TargetStrafe.HoldSpace = State
end)

TargetStrafeModule.Slider("Distance", {Precise = true, Default = 5, Min = 2, Max = 25}, function(State)
    AbyssSettings.TargetStrafe.Distance = State
end)

TargetStrafeModule.Slider("Range", {Precise = true, Default = 15, Min = 2, Max = 50}, function(State)
    AbyssStorage.StoredRange = AbyssSettings.TargetStrafe.Range
    if AbyssSettings.TargetStrafe.InfRange then
        AbyssSettings.TargetStrafe.Range = math.huge
    else
        AbyssSettings.TargetStrafe.Range = State
    end
end)

TargetStrafeModule.Slider("Speed", {Precise = true, Default = 4, Min = 2, Max = 10}, function(State)
    AbyssSettings.TargetStrafe.Speed = State
end)

TargetStrafeModule.TextLabel("[Vawlt]: Range Need to be higher than distance!")

local SilentAimModule = CombatTab.Cheat("Silent Aim", "A Better Version Of Aimbot Without Aiming.", function(State)
    AbyssSettings.SilentAim.Enabled = State
end)

SilentAimModule.Toggle("Force Head", function(State)
    if State then
        AbyssSettings.SilentAim.ForceHead = "Head"
    else
        AbyssSettings.SilentAim.ForceHead = "HumanoidRootPart"
    end
end)

SilentAimModule.Toggle("Silent Rotation", function(State)
    AbyssSettings.SilentAim.SilentRotation = State
end)

SilentAimModule.Toggle("Drawing Circle", function(State)
    AbyssSettings.SilentAim.DrawingCircle = State
end)

SilentAimModule.Slider("Drawing Circle Size", {Precise = true, Default = 100, Min = 0, Max = 500}, function(State)
    AbyssSettings.SilentAim.DrawingCircleSize = State
end)

SilentAimModule.Toggle("Use Silent Aim Range", function(State)
    AbyssSettings.SilentAim.UseRange = State
end)

SilentAimModule.Slider("Silent Aim Range", {Precise = true, Default = 15, Min = 2, Max = 5000}, function(State)
    AbyssSettings.SilentAim.Range = State
end)

SilentAimModule.Toggle("Silent Aim Custom Prediction", function(State)
    AbyssSettings.SilentAim.CustomPrediction = State
end)

SilentAimModule.Slider("Silent Aim Prediction Multiplier", {Precise = true, Default = 6, Min = 0, Max = 10}, function(State)
    AbyssSettings.SilentAim.PredictionAmount = tonumber("0.1" .. State)
end)

local AutoHealModule = CombatTab.Cheat("Auto Heal", "Only Legit Auto Heal Avalible Now.", function(State)
    AbyssSettings.AutoHeal.Enabled = State
end)

AutoHealModule.Slider("Health Below", {Precise = true, Default = 80, Min = 10, Max = 99}, function(State)
    AbyssSettings.AutoHeal.HealthBelow = State
end)

local MovementTab = Window.Tab("Movement")
local SpeedModule = MovementTab.Cheat("Speed", "Making Player Movement Faster.", function(State)
    AbyssSettings.Speed.Enabled = State
end)

SpeedModule.Toggle("Motion", function(State)
    AbyssSettings.Speed.Motion = State
end)

SpeedModule.Toggle("BHop", function(State)
    AbyssSettings.Speed.BHop = State
end)

SpeedModule.Slider("Speed Multiplier", {Precise = true, Default = 1, Min = 1, Max = 10}, function(State)
    AbyssSettings.Speed.Amount = State
end)

--[[
local NoSlowModule = MovementTab.Cheat("NoSlow", "Disable Slow.", function(State)
    AbyssSettings.NoSlow.Enabled = State
end)

NoSlowModule.Toggle("Gun Only", function(State)
    AbyssSettings.NoSlow.GunOnly = State
end)
]]

MovementTab.Cheat("Strafe", "Smoother Movement While On Air", function(State)
    AbyssSettings.Strafe.Enabled = State
end)

MovementTab.Cheat("Disable Jump Cooldown", "Spamable Jump.", function(State)
    AbyssSettings.NoJumpCd.Enabled = State
end)

local FlyModule = MovementTab.Cheat("Fly", "Floating With Height Can Be Used With Target Strafe.", function(State)
    AbyssSettings.Fly.Enabled = State
    if State == false and AbyssSettings.Loaded then
        if IsNetwork(LocalPlayer) then
            LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 24, 0)
        end
    end
end)

FlyModule.Toggle("Move Only", function(State)
    AbyssSettings.Fly.MoveOnly = State
    if State == false and AbyssSettings.Loaded then
        if IsNetwork(LocalPlayer) then
            LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 24, 0)
        end
    end
end)

FlyModule.Slider("Height", {Precise = true, Default = 35, Min = 10, Max = 100}, function(State)
    AbyssSettings.Fly.Height = State
end)

FlyModule.Slider("Speed Multiplier", {Precise = true, Default = 1, Min = 1, Max = 10}, function(State)
    AbyssSettings.Fly.Amount = State
end)

local SpeedGltichModule = MovementTab.Cheat("Speed Glitch", "Custom macro built in script.", function(State)
    AbyssSettings.SpeedGlitch.Enabled = State
end)

SpeedGltichModule.Slider("Speed Multiplier", {Precise = true, Default = 8, Min = 1, Max = 10}, function(State)
    AbyssSettings.SpeedGlitch.SpeedMultiplier = tonumber("1" .. State .. "0")
end)

local RenderTab = Window.Tab("Render")

local MotionBlurModule = RenderTab.Cheat("Motion Blur", "Blur by moving camera can be smooth for users.", function(State)
    AbyssSettings.MotionBlur.Enabled = State
end)

MotionBlurModule.Slider("Blur Multiplier", {Precise = true, Default = 5, Min = 1, Max = 10}, function(State)
    AbyssSettings.MotionBlur.BlurAmount = State * 10
end)

RenderTab.Cheat("Target GUI", "Show Target In UI.", function(State)
    AbyssSettings.TargetGui.Enabled = State
end)

RenderTab.Cheat("Watermark", "Show Watermark Of Script.", function(State)
    AbyssSettings.Watermark.Enabled = State
end)

RenderTab.Cheat("Lag Detector", "Show Watermark Of Script.", function(State)
    AbyssSettings.LagDetector.Enabled = State
end)

RenderTab.Cheat("FPS Boost", "Disable Snow.", function(State)
    AbyssSettings.FPSBoost.Enabled = State
    LocalPlayer.PlayerGui.MainScreenGui.SNOWBALLFRAME.Visible = State
    if State then
        workspace.Ignored.SnowBlock.Parent = ReplicatedStorage
    else
        if ReplicatedStorage:FindFirstChild("SnowBlock") then
            ReplicatedStorage.SnowBlock.Parent = workspace.Ignored
        end
    end
end)

local MiscTab = Window.Tab("Misc")

local DisablerFolder = MiscTab.Folder("Disabler Notify", "Sus.")

DisablerFolder.Toggle("CFrame", function(State)
    AbyssSettings.Disabler.CFrameDetection = State
end)

DisablerFolder.Toggle("Ban", function(State)
    AbyssSettings.Disabler.Ban = State
end)

DisablerFolder.Toggle("Crash", function(State)
    AbyssSettings.Disabler.Crash = State
end)

MiscTab.Cheat("No Rotation", "Prevent LocalPlayer From Rotating By Shiftlock. & Auto Rotating", function(State)
    AbyssSettings.NoRotation.Enabled = State
end)

local TimeTick
TimeTick = hookfunction(wait, function(JumpCooldown)
    if JumpCooldown == 1.5 and (AbyssSettings.Speed.BHop and AbyssSettings.Speed.Enabled) or AbyssSettings.NoJumpCd.Enabled then 
        return TimeTick()
    end
    return TimeTick(JumpCooldown)
end)

UIs.InputBegan:Connect(function(Input, GameProcessed)
    if GameProcessed then
        return
    end
    if Input.KeyCode == Enum.KeyCode.Q then
        AbyssStorage.Macro = true
    end
    if Input.KeyCode == Enum.KeyCode.RightShift then
        Window:Toggle()
    end
    if Input.KeyCode == Enum.KeyCode.A then
        AbyssStorage.Side = "Left"
    end
    if Input.KeyCode == Enum.KeyCode.D then
        AbyssStorage.Side = "Right"
    end
    if Input.KeyCode == Enum.KeyCode.Space then
        AbyssStorage.HeldSpace = true
    end
    if Input.UserInputType == Enum.UserInputType.MouseButton2 then
        AbyssStorage.RotatingCamera = true
    end
end)

UIs.InputEnded:Connect(function(Input, GameProcessed)
    if GameProcessed then
        return
    end
    if Input.KeyCode == Enum.KeyCode.Space then
        AbyssStorage.HeldSpace = false
    end
    if Input.KeyCode == Enum.KeyCode.Q then
        AbyssStorage.Macro = false
    end
    if Input.UserInputType == Enum.UserInputType.MouseButton2 then
        AbyssStorage.RotatingCamera = false
    end
end)

RunService.Heartbeat:Connect(function()
    if AbyssSettings.Watermark.Enabled then
        AbyssStorage.FPSBeat = AbyssStorage.FPSBeat + 1
    end

    if AbyssSettings.MotionBlur.Enabled then
        if not Blur and CurrentCamera:FindFirstChild("Blur") then Instance.new("Blur", CurrentCamera).Size = 0 end
        Blur.Size = math.abs((CurrentCamera.CFrame.lookVector - Last).Magnitude) * AbyssSettings.MotionBlur.BlurAmount
        Last = CurrentCamera.CFrame.lookVector
    end

    if AbyssSettings.SilentAim.DrawingCircle then
        DrawingCircle.Radius = AbyssSettings.SilentAim.DrawingCircleSize
        DrawingCircle.Position = Vector2.new(Mouse.X, Mouse.Y + GuiInset.Y)
        DrawingCircle.Visible = true

        OutlineDrawingCircle.Radius = AbyssSettings.SilentAim.DrawingCircleSize
        OutlineDrawingCircle.Position = Vector2.new(Mouse.X, Mouse.Y + GuiInset.Y)
        OutlineDrawingCircle.Visible = true
    else
        DrawingCircle.Visible = false
        OutlineDrawingCircle.Visible = false
    end

    if IsNetwork(LocalPlayer) then
        if AbyssSettings.SpeedGlitch.Enabled and AbyssStorage.Macro then
            if LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall then
                LocalPlayer.Character.HumanoidRootPart.Velocity = CurrentCamera.CFrame.lookVector * AbyssSettings.SpeedGlitch.SpeedMultiplier
                if AbyssStorage.Angle == 1 then
                    LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(45), 0)
                    AbyssStorage.Angle = 0
                else
                    LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(-45), 0)
                    AbyssStorage.Angle = 1
                end
            end
        end

        if AbyssSettings.AutoHeal.Enabled then
            if LocalPlayer.Character.Humanoid.Health < AbyssSettings.AutoHeal.HealthBelow then
                for i, v in pairs(LocalPlayer.Character:GetChildren()) do
                    if v:FindFirstChild("Eat") or v:FindFirstChild("Drink") then
                        v:Activate()
                    else
                        AbyssStorage.Equipable = true
                    end
                end
            end
            if AbyssStorage.Equipable then
                pcall(function()
                    for i3, v3 in pairs(LocalPlayer.Backpack:GetChildren()) do
                        if v3:FindFirstChild("Eat") or v3:FindFirstChild("Drink") then
                            LocalPlayer.Character.Humanoid:EquipTool(v3)
                            AbyssStorage.Equipable = false
                        end
                    end
                end)
            end
        end

        if AbyssSettings.Speed.Enabled and not AbyssSettings.Fly.Enabled then
            if LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
                if AbyssSettings.Speed.Motion then
                    LocalPlayer.Character:TranslateBy(LocalPlayer.Character.Humanoid.MoveDirection * AbyssSettings.Speed.Amount / 1.5)
                end
                if AbyssSettings.Speed.BHop and LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall then
                    LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                end
            end
        end
        if AbyssSettings.SilentAim.Enabled then
            if AbyssSettings.SilentAim.SilentRotation then
                local GetEnemy, GetEnemyPos = AbyssMiscFunctions.NearestType(AbyssSettings.Target.UseMouseNearest)
                if IsNetwork(GetEnemy) then
                    local PrimaryPartOfChar = LocalPlayer.Character.PrimaryPart
                    local TargetRoot = GetEnemy.Character.HumanoidRootPart
                    if GetEnemy.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall or GetEnemy.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Jumping and (not AbyssSettings.Target.Knocked or not AbyssFunctions.Knocked(NearestTarget)) then
                        local NearestPos = CFrame.new(PrimaryPartOfChar.Position, Vector3.new(TargetRoot.Position.X, TargetRoot.Position.Y, TargetRoot.Position.Z))
                        LocalPlayer.Character:SetPrimaryPartCFrame(NearestPos)
                    end
                end
            end
        end

        if AbyssSettings.TargetStrafe.Enabled then
            local GetEnemy, GetEnemyPos = AbyssMiscFunctions.NearestType(AbyssSettings.Target.UseMouseNearest)
            if GetEnemy and GetEnemy.Character and AbyssSettings.TargetStrafe.Range > (LocalPlayer.Character.HumanoidRootPart.Position - GetEnemy.Character.HumanoidRootPart.Position).Magnitude and (not AbyssSettings.Target.Knocked or not AbyssFunctions.Knocked(NearestTarget)) and (not AbyssSettings.TargetStrafe.HoldSpace or AbyssStorage.HeldSpace) then
                if AbyssSettings.TargetStrafe.AutoJump and LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall then
                    LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                end
                AbyssFunctions.TargetStrafe(AbyssSettings.TargetStrafe.AutoJump, AbyssSettings.TargetStrafe.Controllable, AbyssSettings.TargetStrafe.Speed, AbyssSettings.TargetStrafe.Distance, GetEnemy.Character.HumanoidRootPart)
            end
        end

        if not AbyssStorage.Macro then
            if AbyssSettings.NoRotation.Enabled then
                LocalPlayer.Character.Humanoid.AutoRotate = false
            else
                LocalPlayer.Character.Humanoid.AutoRotate = true
            end
        end

        if AbyssSettings.Fly.Enabled and (not AbyssSettings.Fly.MoveOnly or LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0) then
            if AbyssSettings.Fly.Normal then
                local AngleX, AngleY, AngleZ = LocalPlayer.Character.HumanoidRootPart.CFrame:ToEulerAnglesYXZ()
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(LocalPlayer.Character.HumanoidRootPart.CFrame.X, AbyssSettings.Fly.Height + 24, LocalPlayer.Character.HumanoidRootPart.CFrame.Z) * CFrame.Angles(AngleX, AngleY, AngleZ)
                LocalPlayer.Character.Humanoid:ChangeState("Freefall")
                LocalPlayer.Character:TranslateBy(LocalPlayer.Character.Humanoid.MoveDirection * AbyssSettings.Fly.Amount / 1.5)
            end
        end

        if AbyssSettings.Strafe.Enabled then
            if LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 and LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall and not AbyssSettings.Speed.Enabled then
                LocalPlayer.Character:TranslateBy(LocalPlayer.Character.Humanoid.MoveDirection / 2.1)
            end
        end

        if not Optimized then
            if AbyssSettings.TargetStrafe.ShowRotationRange then
                local GetEnemy, GetEnemyPos = AbyssMiscFunctions.NearestType(AbyssSettings.Target.UseMouseNearest)
                if GetEnemy then
                    local RootPos = GetEnemy.Character.HumanoidRootPart.Position
                    local Vertices = AbyssFunctions.GetVertices(Vector3.new(RootPos.X, RootPos.Y - 2, RootPos.Z), AbyssSettings.TargetStrafe.Distance)
                    
                    local PointA, z, AVisible = AbyssFunctions.ToScreen(Vertices.Top)
                    local PointB, z, BVisible = AbyssFunctions.ToScreen(Vertices.Corner1)
                    local PointC, z, CVisible = AbyssFunctions.ToScreen(Vertices.Right)
                    local PointD, z, DVisible = AbyssFunctions.ToScreen(Vertices.Corner2)
                    local PointE, z, EVisible = AbyssFunctions.ToScreen(Vertices.Bottom)
                    local PointF, z, FVisible = AbyssFunctions.ToScreen(Vertices.Corner3)
                    local PointG, z, GVisible = AbyssFunctions.ToScreen(Vertices.Left)
                    local PointH, z, HVisible = AbyssFunctions.ToScreen(Vertices.Corner4)
                    
                    if AVisible and BVisible and CVisible and DVisible and EVisible and FVisible and GVisible and HVisible then
                        Line1.From = PointA
                        Line1.To = PointB
                        Line1.Visible = true
                        
                        Line2.From = PointB
                        Line2.To = PointC
                        Line2.Visible = true
                        
                        Line3.From = PointC
                        Line3.To = PointD
                        Line3.Visible = true
                        
                        Line4.From = PointD
                        Line4.To = PointE
                        Line4.Visible = true
                        
                        Line5.From = PointE
                        Line5.To = PointF
                        Line5.Visible = true
                        
                        Line6.From = PointF
                        Line6.To = PointG
                        Line6.Visible = true
                        
                        Line7.From = PointG
                        Line7.To = PointH
                        Line7.Visible = true
                        
                        Line8.From = PointH
                        Line8.To = PointA
                        Line8.Visible = true
                        
                        OutLine1.From = PointA
                        OutLine1.To = PointB
                        OutLine1.Visible = true
                        
                        OutLine2.From = PointB
                        OutLine2.To = PointC
                        OutLine2.Visible = true
                        
                        OutLine3.From = PointC
                        OutLine3.To = PointD
                        OutLine3.Visible = true
                        
                        OutLine4.From = PointD
                        OutLine4.To = PointE
                        OutLine4.Visible = true
                        
                        OutLine5.From = PointE
                        OutLine5.To = PointF
                        OutLine5.Visible = true
                        
                        OutLine6.From = PointF
                        OutLine6.To = PointG
                        OutLine6.Visible = true
                        
                        OutLine7.From = PointG
                        OutLine7.To = PointH
                        OutLine7.Visible = true
                        
                        OutLine8.From = PointH
                        OutLine8.To = PointA
                        OutLine8.Visible = true
                    else
                        Line1.Visible = false
                        Line2.Visible = false
                        Line3.Visible = false
                        Line4.Visible = false
                        Line5.Visible = false
                        Line6.Visible = false
                        Line7.Visible = false
                        Line8.Visible = false
                    
                        OutLine1.Visible = false
                        OutLine2.Visible = false
                        OutLine3.Visible = false
                        OutLine4.Visible = false
                        OutLine5.Visible = false
                        OutLine6.Visible = false
                        OutLine7.Visible = false
                        OutLine8.Visible = false
                    end
                end
            else
                Line1.Visible = false
                Line2.Visible = false
                Line3.Visible = false
                Line4.Visible = false
                Line5.Visible = false
                Line6.Visible = false
                Line7.Visible = false
                Line8.Visible = false
            
                OutLine1.Visible = false
                OutLine2.Visible = false
                OutLine3.Visible = false
                OutLine4.Visible = false
                OutLine5.Visible = false
                OutLine6.Visible = false
                OutLine7.Visible = false
                OutLine8.Visible = false
            end
        end
    end
end)

Workspace.Ignored.ChildAdded:Connect(function(newChild)
    wait()
    if newChild.Name == "SnowBlock" and AbyssSettings.FPSBoost.Enabled then
        newChild.Parent = ReplicatedStorage
    end
end)

local HookIndex
HookIndex = hookmetamethod(game, "__index", function(t, k)
    if t == Mouse and (tostring(k) == "Hit" or tostring(k) == "Target") then
        if AbyssSettings.SilentAim.Enabled then
            local NearestTarget, NearestPos = AbyssMiscFunctions.NearestType(AbyssSettings.Target.UseMouseNearest)
            if NearestTarget and (not AbyssSettings.SilentAim.DrawingCircle or AbyssSettings.SilentAim.DrawingCircleSize > NearestPos) and (not AbyssSettings.Target.Knocked or not AbyssFunctions.Knocked(NearestTarget)) and (not AbyssSettings.Target.Grabbed or not AbyssFunctions.Grabbing(NearestTarget)) and (not AbyssSettings.Target.WallCheck or (not AbyssSettings.Target.UseOldWallCheck or (not AbyssSettings.Target.WallCheck or AbyssMiscFunctions.WallCheck(NearestTarget.Character.HumanoidRootPart, LocalPlayer.Character.HumanoidRootPart))) and (not AbyssSettings.Target.UseNewWallCheck or (not AbyssSettings.Target.WallCheck or AbyssMiscFunctions.CameraCheck(NearestTarget.Character.HumanoidRootPart.Position, {NearestTarget.Character, LocalPlayer.Character, CurrentCamera}) == true))) and (not AbyssSettings.SilentAim.UseRange or AbyssSettings.SilentAim.Range > (LocalPlayer.Character.HumanoidRootPart.Position - NearestTarget.Character.HumanoidRootPart.Position).Magnitude) then
                local TargetBody 
                if NearestTarget.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then 
                    TargetBody = NearestTarget.Character.LeftFoot 
                else 
                    TargetBody = NearestTarget.Character[AbyssSettings.SilentAim.ForceHead]
                end
                local Prediction = TargetBody.CFrame + (TargetBody.Velocity * 0.165)
        
                return (tostring(k) == "Hit" and Prediction or tostring(k) == "Target" and TargetBody)
            end   
        end
    end

    return HookIndex(t, k)
end)

local AllHookProperty = {false,false,false}

local HookNamecall
HookNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local Args = {...}
    local Method = getnamecallmethod()

    if tostring(self) == "MainEvent" and tostring(Method) == "FireServer" then
        if Args[1] == "CHECKER_1" or Args[1] == "OneMoreTime" then
            if AbyssSettings.Disabler.Ban then
                AllHookProperty[1] = true
            end
            return
        end
        if Args[1] == "TeleportDetect" then
            if AbyssSettings.Disabler.CFrameDetection then
                AllHookProperty[2] = true
            end
            return
        end
    elseif getfenv(2).crash then
        hookfunction(getfenv(2).crash, function()
            if AbyssSettings.Disabler.Crash then
                AllHookProperty[3] = true
            end
            return
        end)
    end

    return HookNamecall(self, ...)
end)

spawn(function()
    while wait() do
        if AllHookProperty[1] then
            AbyssFunctions.Notify("Attempted To Ban Bypassed!", 1.5, "Warnning")
            AllHookProperty[1] = false
        end
        if AllHookProperty[2] then
            AbyssFunctions.Notify("Attempted To CFrame Detection Bypassed!", 1.5, "Warnning")
            AllHookProperty[2] = false
        end
        if AllHookProperty[3] then
            AbyssFunctions.Notify("Attempted To Crash Bypassed!", 1.5, "Warnning")
            AllHookProperty[3] = false
        end
        if AbyssSettings.LagDetector.Enabled then
            if math.floor(Stats:GetValue()) > 210 then
                AbyssFunctions.Notify("Lag Detected, [" .. math.floor(Stats:GetValue()) .. "ms]", 1.5, "Info")
            end
        end
    end
end)

AbyssFunctions.Notify("Script Loaded", 1.5, "Info")
AbyssSettings.Loaded = true

spawn(function()
    while wait(0.35) do
        if AbyssSettings.TargetGui.Enabled then
            local NearestTarget, NearestPos = AbyssMiscFunctions.NearestType(AbyssSettings.Target.UseMouseNearest)
            if NearestTarget and IsNetwork(NearestTarget) then
                local NewHealth = NearestTarget.Character.Humanoid.Health / NearestTarget.Character.Humanoid.MaxHealth
                Profile.Image = "rbxthumb://type=AvatarHeadShot&id=" .. NearestTarget.UserId .. "&w=420&h=420"
                Title_2.Text = NearestTarget.Name .. " (" .. NearestTarget.DisplayName .. ")"
                HealthText.Text = AbyssFunctions.Round(NewHealth * 100, 2)
                HealthBar:TweenSize(UDim2.new(NewHealth, 0, 1, 0), "In", "Linear", 0.25)
                if NearestTarget.Character:FindFirstChild("BodyEffects") and NearestTarget.Character:FindFirstChild("BodyEffects"):FindFirstChild("Armor") then
                    local NewArmor = NearestTarget.Character.BodyEffects.Armor.Value / 200
                    ArmorText.Text = AbyssFunctions.Round(NewArmor * 100, 2)
                    ArmorBar:TweenSize(UDim2.new(NewArmor, 0, 1, 0), "In", "Linear", 0.25)
                else
                    ArmorText.Text = "Data Not Found!"
                end
                TargetUI.Visible = true
            end
        else
            TargetUI.Visible = false
        end
    end
end)

spawn(function()
    while wait(0.05) do
        if AbyssSettings.SpeedGlitch.Enabled and AbyssStorage.Macro then
            LocalPlayer.Character.Humanoid.AutoRotate = not LocalPlayer.Character.Humanoid.AutoRotate
        end
    end
end)

while wait(1) do
    AbyssStorage.GetTime = AbyssStorage.GetTime + 1
    if AbyssSettings.Watermark.Enabled then
        local GetHours, GetMinutes, GetSeconds = AbyssFunctions.CalculateTime(AbyssStorage.GetTime)
        local HT, MT, ST = "00", "00", "00"
        if string.len(tostring(GetHours)) == 1 then HT = "0" .. GetHours else HT = GetHours end
        if string.len(tostring(GetMinutes)) == 1 then MT = "0" .. GetMinutes else MT = GetMinutes end
        if string.len(tostring(GetSeconds)) == 1 then ST = "0" .. GetSeconds else ST = GetSeconds end
        Title.Text = "Abyss | Da Hood | " .. AbyssStorage.FPSBeat .. " fps | " .. tostring(math.floor(Stats:GetValue())) .. " ms | " .. HT .. ":" .. MT .. ":" .. ST
        AbyssStorage.FPSBeat = 0
        Watermark.Visible = true
    else
        Watermark.Visible = false
    end
end