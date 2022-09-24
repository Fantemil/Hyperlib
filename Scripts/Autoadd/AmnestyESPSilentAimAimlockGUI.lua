--[[
Universal.lua
TODO 
: Cleanup Garbage
: Fix Aimbot
: Add ESP (DONE)
: Add Trigerbot
: Fix silent aim on some games (kat, booga booga etc.)


]]--

repeat wait() until game:IsLoaded()

-- Variables
loadstring(game:HttpGet("https://raw.githubusercontent.com/tehtestedd/ROBLOX/main/Jan_Lib.lua"))()


local GlobalTargetPlayer = nil
local GlobalTargetPosition = nil
local GlobalTarget = nil
local SAimGlobalTarget = nil
local SAimGlobalTargetPosition = nil
local HasInitialized = false


FovCircle = Drawing.new("Circle")
FovCircle.Thickness = 0.8
FovCircle.NumSides = 40
FovCircle.Radius = 100
FovCircle.Filled = false
FovCircle.Position = Vector2.new(game.Workspace.CurrentCamera.ViewportSize.x / 2, game.Workspace.CurrentCamera.ViewportSize.y / 2)
FovCircle.Visible = false
FovCircle.Transparency = 1

SAimFovCircle = Drawing.new("Circle")
SAimFovCircle.Thickness = 0.8
SAimFovCircle.NumSides = 40
SAimFovCircle.Radius = 100
SAimFovCircle.Filled = false
SAimFovCircle.Position = Vector2.new(game.Workspace.CurrentCamera.ViewportSize.x / 2, game.Workspace.CurrentCamera.ViewportSize.y / 2)
SAimFovCircle.Visible = false
SAimFovCircle.Transparency = 1

-- UI Library
local AimTab = library:AddTab("Aim", 1); 
local VisualsTab = library:AddTab("Visuals", 2); 
local MiscTab = library:AddTab("Miscellaneous", 3); 

local AimbotColumn =  AimTab:AddColumn();
local AimbotColumn1 = AimTab:AddColumn();

-- Aimbot
local Aimbot = AimbotColumn:AddSection("Aimbot")
local SilentAim = AimbotColumn1:AddSection("Silent Aim")

local function get2dDistance(src, dst)
    return math.sqrt(math.pow(src.x - dst.x, 2) + math.pow(src.y - dst.y, 2))
end
local function get3dDistance(src, dst)
    return math.sqrt(math.pow(src.x - dst.x, 2) + math.pow(src.y - dst.y, 2) + math.pow(src.z - dst.z, 2))
end






local function Checkfov(pos2, fov)
    local ssize =
    Vector2.new(
    game.Workspace.CurrentCamera.ViewportSize.x / 2,
    game.Workspace.CurrentCamera.ViewportSize.y / 2
)

if (ssize - pos2).Magnitude < fov then
    return true
else
    return false
end
end

local function IsVisible(pos, part)
    local params = RaycastParams.new()
    params.FilterDescendantsInstances = {game.Players.LocalPlayer.Character, part.Parent}
    params.FilterType = Enum.RaycastFilterType.Blacklist
    local Result = workspace:Raycast(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, (pos - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).unit * (pos - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude, params)
    if Result ~= nil then
        return false
    end
    return true
end


local function GetClosestToCenter()
    local UserInputService = game:GetService("UserInputService")
    local Camera = game.Workspace.CurrentCamera
    local Distance = 99999
    local SAimDistance = 99999
    local PlayerPos2 = Vector2.new(0,0)
    for i,v in pairs(game.Players:GetChildren()) do
        if v.Character and v.Name ~= game.Players.LocalPlayer.Name then
            local PlayerHeadPart = v.Character:FindFirstChild(library.flags["Priority"])
            local ssize = Vector2.new(Camera.ViewportSize.x / 2, Camera.ViewportSize.y / 2)
            if PlayerHeadPart then
                pos3 = Camera:WorldToViewportPoint(PlayerHeadPart.Position)
                if pos3.z > 0 then
                    pos2 = Vector2.new(pos3.x, pos3.y)
                    local dist = get2dDistance(pos2, ssize)
                    if library.flags["TeamCheck"] then
                        if v.Team ~= game.Players.LocalPlayer.Team then
                            if dist < Distance  then
                                Distance = dist
                                ReturnPlayer = v
                                PlayerPos2 = pos2
                            end
                        end 
                    else
                        if dist < Distance  then
                            Distance = dist
                            ReturnPlayer = v
                            PlayerPos2 = pos2
                        end               
                    end
                    if library.flags["SilentAimTeamCheck"] then
                        if v.Team ~= game.Players.LocalPlayer.Team then -- is enemy 
                            if library.flags["SilentAimVisibleCheck"] and IsVisible(PlayerHeadPart.Position, PlayerHeadPart) then
                                if dist < SAimDistance  then
                                    SAimDistance = dist
                                    SAimReturnPlayer = v
                                    SAimPlayerPos2 = pos2
                                end
                            else
                                if dist < SAimDistance  then
                                    SAimDistance = dist
                                    SAimReturnPlayer = v
                                    SAimPlayerPos2 = pos2
                                end
                            end
                        end 
                    else
                        if library.flags["SilentAimVisibleCheck"] and IsVisible(PlayerHeadPart.Position, PlayerHeadPart) then
                            if dist < SAimDistance  then -- is teammate
                                SAimDistance = dist
                                SAimReturnPlayer = v
                                SAimPlayerPos2 = pos2
                            end
                        else
                            if dist < SAimDistance  then -- is teammate
                                SAimDistance = dist
                                SAimReturnPlayer = v
                                SAimPlayerPos2 = pos2
                            end
                        end
                    end
                end
            end
        end
    end
    print(ReturnPlayer, PlayerPos2)
    return ReturnPlayer, PlayerPos2, SAimReturnPlayer, SAimPlayerPos2
end



local function CameraAimbot()
    local Cam = game.Workspace.CurrentCamera
    local MyPart = game.Players.LocalPlayer.Character:FindFirstChild(library.flags["Priority"])
    if GlobalTarget and MyPart and Checkfov(GlobalTargetPosition, library.flags["FOV"])  then
        if (MyPart.Position - GlobalTarget.Position).Magnitude / 3 < library.flags["AimDistance"] then
            if IsVisible(GlobalTarget.Position, GlobalTarget) and library.flags["VisCheck"] then
                Cam.CFrame = CFrame.new(Cam.CFrame.p, GlobalTarget.CFrame.p) 
            end 
            if not library.flags["VisCheck"] then 
                Cam.CFrame = CFrame.new(Cam.CFrame.p, GlobalTarget.CFrame.p) 
            end
        end
    end
end

local function MouseAimbot(pSmoothness)
    local Camera = game.Workspace.CurrentCamera
    local ScreenSize = Vector2.new(Camera.ViewportSize.x / 2, Camera.ViewportSize.y / 2)    
    local RelativeOffset = GlobalTargetPosition - ScreenSize
    local MyPart = game.Players.LocalPlayer.Character:FindFirstChild(library.flags["Priority"])
    
    if Checkfov(GlobalTargetPosition, library.flags["FOV"]) then
        if MyPart and GlobalTarget then
            if (MyPart.Position - GlobalTarget.Position).Magnitude / 3 < library.flags["AimDistance"] then 
                if IsVisible(GlobalTarget.Position, GlobalTarget) and library.flags["VisCheck"] then
                    mousemoverel(RelativeOffset.x / pSmoothness, RelativeOffset.y / pSmoothness)
                end
                if not library.flags["VisCheck"] then 
                    mousemoverel(RelativeOffset.x / pSmoothness, RelativeOffset.y / pSmoothness)
                end
            end
        end
    end
end





-- Metamethod hook initialization because we do not want to hook at the start of the game because if we hook at the start of the game depending on the game and obfucsator we can lag or break game so instead we will  put it in a function and call it when we want to hook metatmethods, the call will be in the silent aim toggle  first time it is pressed it will be called 


local function ItializedMetamethodHooks() 
    local OldIndex = nil
    local OldNameCall = nil
    
    
    OldIndex = hookmetamethod(game, "__index", function(Self, Key) -- METHOD 2
        if checkcaller() then return OldIndex(Self, Key) end 
        
        
        if library.flags["SilentAimEnabled"] and library.flags["SilentAimMethod"] == "Method 2" and SAimGlobalTarget then
            if tostring(Key) == "Hit" then
                
                if Checkfov(SAimGlobalTargetPosition, library.flags["SilentAimFov"]) then
                    return SAimGlobalTarget.CFrame
                end
            end
        end
        
        
        if library.flags["JumpPowerKickBypass"] and tostring(Key) == "JumpPower" then
            return 50
        end
        if library.flags["WalkSpeedKickBypass"] and tostring(Key) == "WalkSpeed" then
            return 14
        end
        
        
        
        return OldIndex(Self, Key)
    end)
    
    
    OldNameCall = hookmetamethod(game, "__namecall", function(...) -- METHOD 1
        if checkcaller() then return OldNameCall(...) end 
        local Method = getnamecallmethod()
        local MethodArgs = {...}
        
        if library.flags["SilentAimEnabled"] and library.flags["SilentAimMethod"] == "Method 1" and SAimGlobalTarget then
            if string.find(Method, "Ray") then
                if Checkfov(SAimGlobalTargetPosition, library.flags["SilentAimFov"]) then
                    
                    MethodArgs[2] = Ray.new( Game.Workspace.CurrentCamera.CFrame.Position,
                    (SAimGlobalTarget.Position + Vector3.new(0, (Game.Workspace.CurrentCamera.CFrame.Position - SAimGlobalTarget.Position).Magnitude / 500, 0) -
                    Game.Workspace.CurrentCamera.CFrame.Position).unit * 500)  
                    return OldNameCall(unpack(MethodArgs))
                    
                end
            end
        end
        return OldNameCall(...)
    end)
end

--[[
Wasnt working near the btotom of the script so I added it up here, sets the part and position of the global silent aim target
]]--
spawn(function()
    while task.wait(0.05) do
        local Player, PlayerPosition, SAimPlayer, SAimPlayerPosition = GetClosestToCenter()
        if SAimPlayer and SAimPlayer.Character then
            local SAimTargetPart = SAimPlayer.Character:FindFirstChild(library.flags["Priority"])
            if SAimTargetPart then
                SAimGlobalTarget = SAimTargetPart
                SAimGlobalTargetPosition = SAimPlayerPosition
            end 
        end
        if Player and Player.Character then
            local TargetPart = Player.Character:FindFirstChild(library.flags["Priority"])
            if TargetPart then
                GlobalTarget = TargetPart
                GlobalTargetPosition = PlayerPosition
                GlobalTargetPlayer = Player
            end
        end
    end
end)

Aimbot:AddToggle({text = "Enabled", flag = "AimEnabled", state = false}):AddBind({mode = "hold", key = "MouseButton2", callback = function(a) 
    if a then else if not library.flags["AimEnabled"]then return end;if library.flags["AimMode"]=="Camera"then CameraAimbot()else MouseAimbot(library.flags["AimSmoothness"])end end
end})
SilentAim:AddToggle({text = "Enabled", flag = "SilentAimEnabled", state = false, callback = function(a)
    if not HasInitialized then ItializedMetamethodHooks() end HasInitialized = true
    
end})
Aimbot:AddToggle({text = "Team Check", flag = "TeamCheck", state = false})
SilentAim:AddToggle({text = "Team Check", flag = "SilentAimTeamCheck", state = false})
SilentAim:AddToggle({text = "Visible Check", flag = "SilentAimVisibleCheck", state = false})

SilentAim:AddList({text = "Methods", max = 2, flag = "SilentAimMethod", values = {"Method 1", "Method 2"}, value = "Method 1"});

SilentAim:AddSlider({text = "FOV", flag = "SilentAimFov", min = 0, max = 1000, value = 300, callback = function(a) SAimFovCircle.Radius = a end})
SilentAim:AddToggle({text = "Draw Circle", flag = "SAimCircle", state = false, callback = function(a) SAimFovCircle.Visible = a
end}):AddColor({flag = "SAimCircleColor", color = Color3.fromRGB(255, 255, 255), callback = function(a) SAimFovCircle.Color = a end});

Aimbot:AddList({text = "Mode", max = 3, flag = "AimMode", values = {"Camera", "Mouse"}, value = "Camera"});

Aimbot:AddDivider();
Aimbot:AddSlider({text = "Aim Smoothness", flag = "AimSmoothness", tip = "Aimbot mouse only", min = 1, max = 100, value = 5})

Aimbot:AddList({text = "Target Priority", max = 3, flag = "Priority", values = {"Head", "HumanoidRootPart", "Torso"}, value = "Head"});

Aimbot:AddDivider();
Aimbot:AddToggle({text = "Visible Check", flag = "VisCheck", state = false})
Aimbot:AddToggle({text = "Draw Circle", flag = "Circle", state = false, callback = function(a) FovCircle.Visible = a
end}):AddColor({flag = "CircleColor", color = Color3.fromRGB(255, 255, 255), callback = function(a) FovCircle.Color = a end});
Aimbot:AddSlider({text = "Circle Radius", flag = "FOV", min = 1, max = 1000, value = 100, callback = function(a) FovCircle.Radius = a end})
Aimbot:AddSlider({text = "Aim Distance", flag = "AimDistance", min = 1, max = 5000, value = 100})

-- [Visuals] --------------------------------------------------------------------------------------------------------------------------------------------------------------------
local VisaulsColumn =  VisualsTab:AddColumn();
local VisaulsColumn1 =  VisualsTab:AddColumn();

-- Visual Sections
local VisualsPlayers = VisaulsColumn:AddSection("Players")
local VisualsLighting = VisaulsColumn1:AddSection("Lighting")

VisualsPlayers:AddToggle({text = "Enabled", flag = "Enabled", state = false});

VisualsPlayers:AddDivider();
VisualsPlayers:AddToggle({text = "Name", flag = "Name", state = false, style = 1}):AddColor({flag = "NameColor", color = Color3.fromRGB(255, 255, 255)});
VisualsPlayers:AddToggle({text = "Box", flag = "Box", state = false, style = 1}):AddColor({flag = "BoxColor", color = Color3.fromRGB(255, 255, 255)});
VisualsPlayers:AddToggle({text = "Healthbar", flag = "Healthbar", state = false, style = 1}):AddColor({flag = "HealthColor", color = Color3.fromRGB(66, 245, 69)});

VisualsPlayers:AddDivider();
VisualsPlayers:AddToggle({text = "Distance", flag = "Distance", state = false, style = 1});
VisualsPlayers:AddToggle({text = "Health Number", flag = "HealthNumber", state = false, style = 1});

VisualsPlayers:AddDivider();
VisualsPlayers:AddSlider({text = "Font Size", min = 0, max = 50, value = 13, flag = "FontSize"})
VisualsPlayers:AddList({text = "Font", values = {"UI", "System", "Plex", "Monospace"}, value = "Plex", flag = "Font"})

-- Visual Lighting
VisualsLighting:AddToggle({text = "Custom Lighting", flag = "CustomLighting", state = false, callback = function(state)
    if not state then 
        game:GetService("Lighting").Ambient = oldAmbient
        game:GetService("Lighting").OutdoorAmbient = oldAmbientB
        
        game:GetService("Lighting").ColorShift_Bottom = oldColorShift
        game:GetService("Lighting").ColorShift_Top = oldColorShiftB
        
        game:GetService("Lighting").ClockTime = oldTime
    end
end})
VisualsLighting:AddColor({text = "Ambient", color = Color3.new(1,1,1), callback = function(Color)
    if library.flags["CustomLighting"] then
        game:GetService("Lighting").Ambient = Color
    end
end}):AddColor({color = Color3.new(1,1,1), callback = function(Color)
    if library.flags["CustomLighting"] then
        game:GetService("Lighting").OutdoorAmbient = Color
    end
end})
VisualsLighting:AddColor({text = "Colorshift", color = Color3.new(1,1,1), callback = function(Color)
    if library.flags["CustomLighting"] then
        game:GetService("Lighting").ColorShift_Bottom = Color
    end
end}):AddColor({color = Color3.new(1,1,1), callback = function(Color)
    if library.flags["CustomLighting"] then
        game:GetService("Lighting").ColorShift_Top = Color
    end
end})
VisualsLighting:AddSlider({text = "Time", value = 12, min = 0, max = 24, tip = "Clock time", callback = function(Time)
    if library.flags["CustomLighting"] then
        game:GetService("Lighting").ClockTime = Time
    end
end})

VisualsLighting:AddDivider();
VisualsLighting:AddToggle({text = "Terrain Grass", state = true, callback = function(bool) 
    if bool then 
        sethiddenprop(workspace.Terrain, "Decoration", true)
    else 
        sethiddenprop(workspace.Terrain, "Decoration", false)
    end
end});




local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Cam = workspace.CurrentCamera
local Esp = {}

pcall(function()
    local function AddToEsp(Player)
        local Outline = Drawing.new("Square")
        Outline.Color = Color3.fromRGB(0,0,0)
        Outline.Visible = false 
        Outline.Thickness = 3
        
        
        local Box = Drawing.new("Square")
        Box.Color = Color3.fromRGB(255, 255, 255)
        Box.Visible = false 
        Box.Thickness = 1.3
        
        local Name = Drawing.new("Text")
        Name.Center = true 
        Name.Outline = true 
        Name.OutlineColor = Color3.fromRGB(0,0,0)
        Name.Color = Color3.fromRGB(255, 255, 255)
        Name.Text = Player.Name
        Name.Font = Drawing.Fonts.Plex
        
        local HealthBarOutLine = Drawing.new("Line")
        HealthBarOutLine.Thickness = 3
        HealthBarOutLine.Color = Color3.new(0,0,0)
        
        local HealthBar = Drawing.new("Line")
        HealthBar.Thickness = 1.3 
        HealthBar.Color = Color3.new(0,255,0)
        
        local TracerOutLine = Drawing.new("Line")
        TracerOutLine.Thickness = 3
        TracerOutLine.Color = Color3.fromRGB(0, 0, 0)
        
        local Tracer = Drawing.new("Line")
        Tracer.Thickness = 1.3
        Tracer.Color = Color3.fromRGB(255, 255, 255)
        
        
        Esp[Player] = {
            ["Box"] = Box,
            ["Outline"] = Outline,
            ["Name"] = Name,
            ["Health"] = {
                HealthBarOutLine,
                HealthBar
            },
            ["Tracer"] = Tracer,
            ["TracerOutLine"] = TracerOutLine
        }
    end 
    
    local function SizeVecs(Part)
        local Size = Part.Size
        
        return {
            TBRC = Part.CFrame * CFrame.new(Size.X,Size.Y * 1.3,Size.Z),
            TBLC = Part.CFrame * CFrame.new(-Size.X,Size.Y * 1.3,Size.Z),
            TFRC = Part.CFrame * CFrame.new(Size.X,Size.Y * 1.3,-Size.Z),
            TFLC = Part.CFrame * CFrame.new(-Size.X,Size.Y * 1.3,-Size.Z ),
            
            BBRC = Part.CFrame * CFrame.new(Size.X,-Size.Y * 1.6,Size.Z),
            BBLC = Part.CFrame * CFrame.new(-Size.X,-Size.Y * 1.6,Size.Z),
            BFRC = Part.CFrame * CFrame.new(Size.X,-Size.Y * 1.6,-Size.Z),
            BFLC = Part.CFrame * CFrame.new(-Size.X,-Size.Y * 1.6,-Size.Z),
        }
    end
    
    game:GetService("RunService").RenderStepped:Connect(function()
            for I,V in pairs(Esp) do 
                if I and I.Team ~= LocalPlayer.Team or I.Team == nil and I.Character and I.Character:FindFirstChild("HumanoidRootPart") and I.Character:FindFirstChild("Humanoid") then
                        local Hum = I.Character.Humanoid
                        local Hrp = I.Character.HumanoidRootPart
                        local RootVec,On = Cam:WorldToScreenPoint(Hrp.Position)
                        local Distance = math.floor((Cam.CFrame.Position - Hrp.CFrame.Position).Magnitude)
                    
                        local GrabDeminsons = SizeVecs(Hrp)
                        local YMin,YMax = Cam.ViewportSize.X,0 
                        local XMin,XMax = Cam.ViewportSize.X,0 
                        
                        for _,V in pairs(GrabDeminsons) do 
                            
                            local Vec = Cam:WorldToViewportPoint(V.Position)
                            
                            if Vec.X < XMin then 
                                XMin = Vec.X 
                            end 
                            
                            if Vec.X > XMax then 
                                XMax = Vec.X 
                            end 
                            
                            if Vec.Y < YMin then 
                                YMin = Vec.Y 
                            end 
                            
                            if Vec.Y > YMax then 
                                YMax = Vec.Y 
                            end 
                        end 
                        
                        local Font = library.flags["Font"]
                        
                        V["Box"].Size = Vector2.new(XMin - XMax,YMin - YMax)
                        V["Box"].Position = Vector2.new(XMax + V["Box"].Size.X / XMin, YMax + V["Box"].Size.Y / YMin) 
                        V["Box"].Color = library.flags["BoxColor"]
                        
                        V["Name"].Size = 13
                        V["Name"].Position = Vector2.new(XMax + V["Box"].Size.X / 2,V["Box"].Position.Y) - Vector2.new(0,V["Name"].TextBounds.Y - V["Box"].Size.Y + 1)
                        V["Name"].Color = library.flags["NameColor"]
                        V["Name"].Size = library.flags["FontSize"]
                        
                        if Font == "Plex" then 
                            V["Name"].Font = 2
                        end
                        if Font == "UI" then 
                            V["Name"].Font = 0
                        end
                        if Font == "System" then 
                            V["Name"].Font = 1
                        end
                        if Font == "Monospace" then 
                            V["Name"].Font = 3
                        end
                        
                        
                        if library.flags["Distance"] then 
                            if library.flags["HealthNumber"] then 
                                V["Name"].Text = I.Name.." ["..tostring(Distance).."]" .. "[" .. Hum.Health .. "]"
                            else
                                V["Name"].Text = I.Name.." ["..tostring(Distance).."]"
                            end
                        else 
                            if library.flags["HealthNumber"] then 
                                V["Name"].Text = I.Name .. " [" .. Hum.Health .. "]"
                            else
                                V["Name"].Text = I.Name
                            end
                        end
                        
                        
                        V["Health"][1].From = Vector2.new(XMax + V["Box"].Size.X - 5,V["Box"].Position.Y)
                        V["Health"][1].To = Vector2.new(V["Health"][1].From.X,V["Box"].Position.Y + V["Box"].Size.Y)
                        
                        V["Health"][2].From = Vector2.new(XMax + V["Box"].Size.X - 5,V["Box"].Position.Y)
                        V["Health"][2].To = Vector2.new(V["Health"][1].From.X,V["Box"].Position.Y + V["Box"].Size.Y / (Hum.MaxHealth / Hum.Health))
                        V["Health"][2].Color = library.flags["HealthColor"]
                        
                        V["Outline"].Size = Vector2.new(XMin - XMax,YMin - YMax)
                        V["Outline"].Position = Vector2.new(XMax + V["Box"].Size.X / XMin,YMax + V["Box"].Size.Y / YMin) 
                        --V["Outline"].Color = library.flags["BoxOutline"]
                        
                        V["Tracer"].From = Vector2.new(Cam.ViewportSize.X / 2,Cam.ViewportSize.Y)
                        V["Tracer"].To = Vector2.new(XMax + V["Box"].Size.X / 2,V["Box"].Position.Y)
                        --V["Tracer"].Color = library.flags["TracerColor"]
                        
                        V["TracerOutLine"].From = Vector2.new(Cam.ViewportSize.X / 2,Cam.ViewportSize.Y)
                        V["TracerOutLine"].To = Vector2.new(XMax + V["Box"].Size.X / 2,V["Box"].Position.Y)
                        --V["TracerOutLine"].Color = library.flags["TracerOutline"]
                        
                        
                        if On then
                            V["Tracer"].Visible = false
                            V["TracerOutLine"].Visible = false
                            V["Health"][1].Visible = library.flags["Healthbar"]
                            V["Health"][2].Visible = library.flags["Healthbar"]
                            V["Name"].Visible = library.flags["Name"]
                            V["Outline"].Visible = library.flags["Box"]
                            V["Box"].Visible = library.flags["Box"] 
                        else 
                            V["Tracer"].Visible = false
                            V["TracerOutLine"].Visible = false
                            V["Health"][1].Visible = false 
                            V["Health"][2].Visible = false
                            V["Name"].Visible = false
                            V["Outline"].Visible = false
                            V["Box"].Visible = false
                        end 
                    else 
                        V["Tracer"].Visible = false
                        V["TracerOutLine"].Visible = false
                        V["Health"][1].Visible = false 
                        V["Health"][2].Visible = false
                        V["Name"].Visible = false
                        V["Outline"].Visible = false
                        V["Box"].Visible = false 
                    end 
            end 
            
            

        
        end)

        for _,V in pairs(Players:GetChildren()) do 
            if V ~= LocalPlayer then
                AddToEsp(V)
            end
        end 
        
        Players.PlayerAdded:Connect(function(V)
            AddToEsp(V)
        end)
end)

-- [Misc] --------------------------------------------------------------------------------------------------------------------------------------------------------------------
local MiscColumn =  MiscTab:AddColumn();
local MiscColumn1 =  MiscTab:AddColumn();

-- Misc Sections
local MovementMisc = MiscColumn:AddSection("Movement")

MovementMisc:AddToggle({text = "Walkspeed Kick Bypass", flag = "WalkSpeedKickBypass", callback = function(v)
    if not HasInitialized then ItializedMetamethodHooks() end HasInitialized = true
end})
MovementMisc:AddToggle({text = "Jumppower Kick Bypass", flag = "JumpPowerKickBypass", callback = function(v)
    if not HasInitialized then ItializedMetamethodHooks() end HasInitialized = true
end})
MovementMisc:AddSlider({text = "Walkspeed", flag = "Walk Speed", value = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed or 16, min = 0, max = 500, callback = function(v)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end})
MovementMisc:AddSlider({text = "Jumppower", flag = "Jump Power", value = game.Players.LocalPlayer.Character.Humanoid.JumpPower or 50, min = 0, max = 500, callback = function(v)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end})

-- [Init] --------------------------------------------------------------------------------------------------------------------------------------------------------------------

library:Init();
library:selectTab(library.tabs[1]);