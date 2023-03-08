--[[stfu with that discord link @bossman
also this is for people that uses anti ip logger
]]
local Framework = loadstring(game:HttpGet("https://pastebinp.com/raw/KP1dUHFg"))()
local Watermark = Framework:CreateWatermark("Br1xton V.1 | {game} | {fps}")
local WriteLine = Framework:CreateWindow("Br1xton (Paid)", Vector2.new(492, 588), Enum.KeyCode.RightControl)

local ESPSettings = { PlayerESP = { Enabled = false, TracersOn = false, BoxesOn = false, NamesOn = false, DistanceOn = false, HealthOn = false, ToolOn = false, FaceCamOn = false, Distance = 2000 }, ScrapESP = { Enabled = false, Distance = 2000, LegendaryOnly = true, RareOnly = true, GoodOnly = true, BadOnly = true }, SafeESP = { Enabled = false, Distance = 2000, BigOnly = true, SmallOnly = true }, RegisterESP = { Enabled = false, Distance = 2000 }, ESPColor = Color3.fromRGB(255, 255, 255), ToolColor = Color3.fromRGB(255, 255, 255)};
local ESPFramework             = loadstring(game:HttpGet("https://raw.githubusercontent.com/NougatBitz/Femware-Leak/main/ESP.lua", true))()


local General = WriteLine:CreateTab("Main")
local Main4 = General:CreateSector("cant u see", "left")
local Main2 = General:CreateSector("nigger beat", "right")
local Main6 = General:CreateSector("Settings", "right")
General:CreateConfigSystem("left")


-->> Silent Aim [Section 1 - Tab 1]
local Camera = workspace.CurrentCamera
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local RenderStepped = RunService.RenderStepped

local LocalPlayer = Players.LocalPlayer
local chr = LocalPlayer.Character
local hum = chr:WaitForChild("Humanoid")

local game = game;
local GetService = game.GetService;

local RunService = game:GetService("RunService")
local RenderStepped = RunService.RenderStepped

local Workspace = GetService(game, "Workspace");
local Players = GetService(game, "Players");
local ReplicatedStorage = GetService(game, "ReplicatedStorage");
local StarterGui = GetService(game, "StarterGui");

local resume = coroutine.resume 
local create = coroutine.create

local LogService = GetService(game, "LogService");
local HttpService = GetService(game, "HttpService");
local ScriptContext = GetService(game, "ScriptContext");

local UIS = game:GetService("UserInputService")

local Request = http_request or request or HttpPost or syn.request
local Player = Players.LocalPlayer;
local Character = Player.Character;
local Mouse = Player:GetMouse()
local Cam = workspace.CurrentCamera;

local WorldToScreen = Cam.WorldToScreenPoint
local WorldToViewportPoint = Cam.WorldToViewportPoint
local GetPartsObscuringTarget = Cam.GetPartsObscuringTarget

local SilentSettings = { Main = { Enabled = false, TeamCheck = false, VisibleCheck = false, TargetPart = "Head" }, FOVSettings = { Visible = false, Radius = 120 } };
local ValidTargetParts = {"Head", "Torso"};

local RequiredArgs = {
ArgCountRequired = 3,
    Args = {
    "Instance", "Vector3", "Vector3", "RaycastParams"
}
}

local fov_circle = Drawing.new("Circle")
fov_circle.Thickness = 1
fov_circle.NumSides = 100
fov_circle.Radius = 120
fov_circle.Filled = false
fov_circle.Visible = false
fov_circle.ZIndex = 999
fov_circle.Transparency = 1
fov_circle.Color = Color3.fromRGB(255, 255 ,255)

local function GetPositionOnScreen(Vector)
local Vec3, OnScreen = WorldToScreen(Cam, Vector)
return Vector2.new(Vec3.X, Vec3.Y), OnScreen
end
local function ValidateArguments(Args, RayMethod)
local Matches = 0

if #Args < RayMethod.ArgCountRequired then
    return false
end

for Pos, Argument in next, Args do
    if typeof(Argument) == RayMethod.Args[Pos] then
        Matches = Matches + 1
    end
end

return Matches >= RayMethod.ArgCountRequired
end
    
local function GetDirection(Origin, Position)
return (Position - Origin).Unit * 1000
end
    
local function GetMousePosition()
return Vector2.new(Mouse.X, Mouse.Y)
end
    
    local function GetClosestPlayer()
        if not SilentSettings.Main.TargetPart then return end

        local Closest
        local DistanceToMouse

        for _, v in next, game.GetChildren(Players) do
            if v == Player then continue end
            if SilentSettings.Main.TeamCheck and v.Team == Player.Team then continue end
    
            local Character = v.Character
            if not Character then continue end
    
            local HumanoidRootPart = game.FindFirstChild(Character, "HumanoidRootPart")
            local Humanoid = game.FindFirstChild(Character, "Humanoid")
    
            if not HumanoidRootPart or not Humanoid or Humanoid and Humanoid.Health <= 0 then continue end
    
            local ScreenPosition, OnScreen = GetPositionOnScreen(HumanoidRootPart.Position)
    
            if not OnScreen then continue end
    
            local Distance = (GetMousePosition() - ScreenPosition).Magnitude
            if Distance <= (DistanceToMouse or (SilentSettings.Main.Enabled and SilentSettings.FOVSettings.Radius) or 2000) then
                Closest = ((SilentSettings.Main.TargetPart == "Random" and Character[ValidTargetParts[math.random(1, #ValidTargetParts)]]) or Character[SilentSettings.Main.TargetPart])
                DistanceToMouse = Distance
            end
        end
        return Closest
    end
    
            local oldNamecall
    oldNamecall = hookmetamethod(game, "__namecall", function(...)
        local Method = getnamecallmethod()
        local Arguments = {...}
        local self = Arguments[1]
    
        if SilentSettings.Main.Enabled and self == workspace then
            if ValidateArguments(Arguments, RequiredArgs) then
                local A_Origin = Arguments[2]
                local HitPart = GetClosestPlayer()

                if HitPart then
                    Arguments[3] = GetDirection(A_Origin, HitPart.Position)

                    return oldNamecall(unpack(Arguments))
                end
            end
        end

        return oldNamecall(...)
end)
    

resume(create(function()
game:GetService("RunService").RenderStepped:Connect(function()
    if SilentSettings.FOVSettings.Visible then 
        fov_circle.Position = GetMousePosition() + Vector2.new(0, 36)
    end
end)
end))

local SaylintTogle = Main2:AddToggle("Enabled", false, function(v)
SilentSettings.Main.Enabled = v
end)

Main2:AddDropdown("Hit Part", {"Head", "Torso", "Random"}, "Head", false, function(V)
SilentSettings.Main.TargetPart = V
end)


local FovToggle = Main2:AddToggle("Fov Circle", false, function(v)
SilentSettings.FOVSettings.Visible = v
fov_circle.Visible = v
end)

local Slider1 = Main2:AddSlider("Fov Radius", 5, 5, 1000, 1, function(v)
SilentSettings.FOVSettings.Radius = v
fov_circle.Radius = v
end)

local Colorpicker1 = Main2:AddColorpicker("Fov Color", Color3.new(1, 1, 1), function(v)
fov_circle.Color = v
end) 


Main4:AddToggle("Enable ESP", ESPSettings.PlayerESP.Enabled, function(v)
    ESPSettings.PlayerESP.Enabled = v

    ESPFramework.Color = ESPSettings.ESPColor
    ESPFramework.ToolColor = ESPSettings.ToolColor
    ESPFramework.Tracers = ESPSettings.PlayerESP.TracersOn
    ESPFramework.Names = ESPSettings.PlayerESP.NamesOn
    ESPFramework.Health = ESPSettings.PlayerESP.HealthOn
    ESPFramework.Distance = ESPSettings.PlayerESP.DistanceOn
    ESPFramework.Tool = ESPSettings.PlayerESP.ToolOn
    ESPFramework.Boxes = ESPSettings.PlayerESP.BoxesOn
    ESPFramework.FaceCamera = ESPSettings.PlayerESP.FaceCamOn
    ESPFramework:Toggle(ESPSettings.PlayerESP.Enabled)
end, "PlayerESPsToggle")

Main4:AddToggle("Face Camera", ESPSettings.PlayerESP.FaceCamOn, function(v)
    ESPSettings.PlayerESP.FaceCamOn = v
    ESPFramework.FaceCamera = ESPSettings.PlayerESP.FaceCamOn
end)

Main4:AddToggle("Box ESP", ESPSettings.PlayerESP.BoxesOn, function(v)
    ESPSettings.PlayerESP.BoxesOn = v
    ESPFramework.Boxes = ESPSettings.PlayerESP.BoxesOn
end)

Main4:AddToggle("Tracers ESP", ESPSettings.PlayerESP.TracersOn, function(v)
    ESPSettings.PlayerESP.TracersOn = v
    ESPFramework.Tracers = ESPSettings.PlayerESP.TracersOn
end)

Main4:AddToggle("Name ESP", ESPSettings.PlayerESP.NamesOn, function(v)
    ESPSettings.PlayerESP.NamesOn = v
    ESPFramework.Names = ESPSettings.PlayerESP.NamesOn
end)

Main4:AddToggle("Health ESP", ESPSettings.PlayerESP.HealthOn, function(v)
    ESPSettings.PlayerESP.HealthOn = v
    ESPFramework.Health = ESPSettings.PlayerESP.HealthOn
end)

Main4:AddToggle("Tool ESP", ESPSettings.PlayerESP.ToolOn, function(v)
    ESPSettings.PlayerESP.ToolOn = v
    ESPFramework.Tool = ESPSettings.PlayerESP.ToolOn
end)

Main4:AddToggle("Distance ESP", ESPSettings.PlayerESP.DistanceOn, function(v)
    ESPSettings.PlayerESP.DistanceOn = v
    ESPFramework.Distance = ESPSettings.PlayerESP.DistanceOn
end)




Main6:AddColorpicker("Main ESP", ESPFramework.Color, function(V)
    ESPFramework.Color = V
    ESPSettings.ESPColor = V
end)

Main6:AddColorpicker("Tool ESP", ESPFramework.ToolColor, function(V)
   ESPFramework.ToolColor = V
   ESPSettings.ToolColor = V
end)


Main6:AddColorpicker("Health ESP", ESPFramework.HealthColor, function(V)
   ESPFramework.HealthColor = V
   ESPSettings.HealthColor = V
end)

Main6:AddColorpicker("Distance ESP", ESPFramework.DistanceColor, function(V)
   ESPFramework.DistanceColor = V
   ESPSettings.DistanceColor = V
end)



Main6:AddSeperator("UI Settings")

Main6:AddColorpicker("Accent 1", Framework.theme.accentcolor, function(V)
Framework.theme.accentcolor = V
end)

Main6:AddColorpicker("Accent 2", Framework.theme.accentcolor2, function(V)
Framework.theme.accentcolor2 = V
end)