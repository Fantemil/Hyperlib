local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Teams = game:GetService("Teams")
local LocalPlayer = Players.LocalPlayer

local GetGarbageCollection = getgc
local MoveMouse = mousemoverel
local IsLuaClosure = islclosure
local NewCClosure = newcclosure
local HookFunction = hookfunction
local WindowActive = iswindowactive
local GetConnections = getconnections

local GetUpValues = (getupvalues or debug.getupvalues)
local GetUpValue = (getupvalue or debug.getupvalue)
local SetUpValue = (setupvalue or debug.setupvalue)
local GetConstants = (getconstants or debug.getconstants)
local GetConstant = (getconstant or debug.getconstant)
local SetConstant = (setconstant or debug.setconstant)
local GetProtos = (getprotos or debug.getprotos)
local GetProto = (getproto or debug.getproto)
local SetProto = (setproto or debug.setproto)
local GetInfo = (getinfo or debug.getinfo)
local GetRegistry = (getreg or debug.getregistry)

local SetReadOnly = setreadonly
local IsReadOnly = isreadonly
local CheckCaller = checkcaller
local GetNamecallMethod = getnamecallmethod
local GetRawMetatable = getrawmetatable
local SetRawMetatable = setrawmetatable

local GetGlobalEnvironment = getgenv
local GetModuleEnvironment = getmenv
local GetScriptEnvironment = getsenv
local GetRobloxEnvironment = getrenv

local CIELUV = loadstring(game:HttpGet("https://raw.githubusercontent.com/coastss/releases/main/cieluv_color_lerp.lua"))()
local Library = loadstring(game:HttpGet("https://pastebin.com/raw/edJT9EGX"))()
local HealthbarLerp = CIELUV:Lerp(Color3.fromRGB(255, 0, 0), Color3.fromRGB(0, 255, 0))

local Visuals = {Players = {}} do
    local DrawingProperties = {
        Line = {
            Thickness = 1.5,
            Color = Color3.fromRGB(255, 255, 255),
            Visible = false
        },
        Text = {
            Size = 16,
            Center = true,
            Outline = true,
            Color = Color3.fromRGB(255, 255, 255),
            Visible = false
        },
        Circle = {
            Thickness = 1.5,
            NumSides = 100,
            Radius = 0,
            Filled = false,
            Color = Color3.fromRGB(255, 255, 255),
            Visible = false
        },
        Square = {
            Thickness = 1.5,
            Filled = false,
            Color = Color3.fromRGB(255, 255, 255),
            Visible = false
        },
        Image = {
            Rounding = 0,
            Visible = false
        }
    }

    function Visuals:Round(Number, Bracket)
        Bracket = (Bracket or 1)

        if typeof(Number) == "Vector2" then
            return Vector2.new(Visuals:Round(Number.X), Visuals:Round(Number.Y))
        else
            return (Number - Number % (Bracket or 1))
        end
    end

    function Visuals:GetScreenPosition(Position)
        local Position, Visible = Workspace.CurrentCamera:WorldToViewportPoint(Position)
        local FullPosition = Position
        Position = Vector2.new(Position.X, Position.Y)

        return Position, Visible, FullPosition
    end

    function Visuals:CreateDrawing(Type, Custom)
        local Drawing = Drawing.new(Type)

        for Property, Value in pairs(DrawingProperties[Type]) do
            Drawing[Property] = Value
        end

        if Custom then
            for Property, Value in pairs(Custom) do
                Drawing[Property] = Value
            end
        end

        return Drawing
    end

    function Visuals.AddPlayer(Player)
        if not Visuals.Players[Player] then
            Visuals.Players[Player] = {
                Box = {
                    Outline = Visuals:CreateDrawing("Square", {Color = Color3.fromRGB(0, 0, 0)}),
                    Main = Visuals:CreateDrawing("Square")
                    --// Main = Visuals:CreateDrawing("Image", {Data = game:HttpGet("https://coasts.cool/uploads/48ny7FCjZ9iCmbAwlirI.png")})

                },
                Healthbar = {
                    Outline = Visuals:CreateDrawing("Square", {Filled = true, Color = Color3.fromRGB(0, 0, 0)}),
                    Main = Visuals:CreateDrawing("Square", {Filled = true, Color = Color3.fromRGB(0, 255, 0)})
                },
                Info = {
                    Main = Visuals:CreateDrawing("Text"),
                    Extra = Visuals:CreateDrawing("Text")
                }
            }
        end
    end

    function Visuals.RemovePlayer(Player)
        if Visuals.Players[Player] then
            for Index, Table in pairs(Visuals.Players[Player]) do
                for Index2, Drawing in pairs(Table) do
                    if Drawing.Remove then
                        Drawing:Remove()
                    end
                end
            end

            Visuals.Players[Player] = nil
        end
    end
end

local Connections = {AllConnections = {}} do
    function Connections:Add(Name, Connection, Callback)
        if not Connections.AllConnections[Name] then
            Connection:Connect(Callback)
            Connections.AllConnections[Name] = Connection
        end
    end

    function Connections:Remove(Name)
        local Connection = Connections.AllConnections[Name]

        if Connection then
            Connection:Disconnect()
        end
    end
end

local PlayerUtilities = {} do
    function PlayerUtilities:IsPlayerAlive(Player)
        local Character = Player.Character
        local Humanoid = (Character and Character:FindFirstChildWhichIsA("Humanoid"))

        if Character and Humanoid then
            if Humanoid.Health > 0 then
                return true
            end
        end

        return false
    end

    function PlayerUtilities:GetHealth(Player)
        local Character = Player.Character
        local Humanoid = (Character and Character:FindFirstChildWhichIsA("Humanoid"))

        if Character and Humanoid then
            return {
                CurrentHealth = Humanoid.Health,
                MaxHealth = Humanoid.MaxHealth
            }
        end
    end

    function PlayerUtilities:GetBodyParts(Player)
        local Character = Player.Character
        local Head = (Character and Character:FindFirstChild("Head"))
        local Root = (Character and Character:FindFirstChild("HumanoidRootPart"))
        local Torso = Character and (Character:FindFirstChild("LowerTorso") or Character:FindFirstChild("Torso"))
        local LeftArm = Character and (Character:FindFirstChild("LeftLowerArm") or Character:FindFirstChild("Left Arm"))
        local RightArm = Character and (Character:FindFirstChild("RightLowerArm") or Character:FindFirstChild("Right Arm"))
        local LeftLeg = Character and (Character:FindFirstChild("LeftLowerLeg") or Character:FindFirstChild("Left Leg"))
        local RightLeg = Character and (Character:FindFirstChild("RightLowerLeg") or Character:FindFirstChild("Right Leg"))

        if Character and (Head and Root and Torso and LeftArm and RightArm and LeftLeg and RightLeg) then
            return {
                Character = Character,
                Head = Head,
                Root = Root,
                Torso = Torso,
                LeftArm = LeftArm,
                RightArm = RightArm,
                LeftLeg = LeftLeg,
                RightLeg = RightLeg
            }
        end
    end

    function PlayerUtilities:GetTeamColor(Player)
        return Player.TeamColor.Color
    end

    function PlayerUtilities:IsOnClientTeam(Player)
        if LocalPlayer.Team == Player.Team then
            return true
        end

        return false
    end

    function PlayerUtilities:GetDistanceFromClient(Position)
        return LocalPlayer:DistanceFromCharacter(Position)
    end

    function PlayerUtilities:GetClosestPlayer()
        local ClosestPlayer = nil
        local FarthestDistance = math.huge

        for Index, Player in pairs(Players:GetPlayers()) do
            if Player == LocalPlayer then continue end
        
            local PassedTeamCheck = true
            local IsPlayerAlive = PlayerUtilities:IsPlayerAlive(Player)
            local Health = PlayerUtilities:GetHealth(Player)
            local BodyParts = PlayerUtilities:GetBodyParts(Player)
            local IsOnClientTeam = PlayerUtilities:IsOnClientTeam(Player)
        
            if Library.flags["Aimbot Team Check"] and IsOnClientTeam then
                PassedTeamCheck = false
            end
        
            if IsPlayerAlive and Health and BodyParts and PassedTeamCheck then
                local ScreenPosition, OnScreen = Visuals:GetScreenPosition(BodyParts.Root.Position)

                if ScreenPosition and OnScreen then
                    local MouseDistance = (ScreenPosition - UserInputService:GetMouseLocation()).Magnitude

                    if MouseDistance < FarthestDistance then
                        if Library.flags["Aimbot Use FOV"] then
                            if MouseDistance <= Library.flags["Aimbot FOV Radius"] then
                                FarthestDistance = MouseDistance
                                ClosestPlayer = {
                                    Player = Player,
                                    BodyParts = BodyParts
                                }
                            end
                        else
                            FarthestDistance = MouseDistance
                            ClosestPlayer = {
                                Player = Player,
                                BodyParts = BodyParts
                            }
                        end
                    end
                end
            end
        end

        return ClosestPlayer
    end

    function PlayerUtilities:AimAt(Position, Smoothing)
        local MouseLocation = UserInputService:GetMouseLocation()
        MoveMouse(((Position.X - MouseLocation.X) / Smoothing), ((Position.Y - MouseLocation.Y) / Smoothing))
    end
end

for Index, Player in pairs(Players:GetPlayers()) do
    if Player == LocalPlayer then continue end
    Visuals.AddPlayer(Player)
end

local FOVCircle = Visuals:CreateDrawing("Circle")
local Games = {
    [1954906532] = "RIOTFALL"
}

local Game = Games[game.GameId]

if Game == "RIOTFALL" then
    function PlayerUtilities:IsPlayerAlive(Player)
        local Character = Player.Character
        local Humanoid = (Character and Character:FindFirstChild("Humanoid"))
        local Health = (Humanoid and Humanoid.Health)

        if Character and Humanoid and Health then
            if Health > 0 then
                return true
            end
        end

        return false
    end

    function PlayerUtilities:GetHealth(Player)
        local Character = Player.Character
        local Humanoid = (Character and Character:FindFirstChild("Humanoid"))
        local Health, MaxHealth = (Humanoid and Humanoid.Health), (Humanoid and Humanoid.MaxHealth)

        if Character and Humanoid and Health and MaxHealth then
            return {
                CurrentHealth = Health,
                MaxHealth = MaxHealth
            }
        end
    end

    function PlayerUtilities:GetBodyParts(Player)
        local Character = Player.Character
        local CollisionGeo = (Character and Character:FindFirstChild("CollisionGeo"))


        if Character and CollisionGeo then
            local Head = (CollisionGeo and CollisionGeo:FindFirstChild("Head"))
            local Root = (Character and Character:FindFirstChild("HumanoidRootPart"))
            local Torso = (CollisionGeo and CollisionGeo:FindFirstChild("LowerTorso"))
            local LeftArm = (CollisionGeo and CollisionGeo:FindFirstChild("LeftLowerArm"))
            local RightArm = (CollisionGeo and CollisionGeo:FindFirstChild("RightLowerArm"))
            local LeftLeg = (CollisionGeo and CollisionGeo:FindFirstChild("LeftLowerLeg"))
            local RightLeg = (CollisionGeo and CollisionGeo:FindFirstChild("RightLowerLeg"))

            if Character and (Head and Root and Torso and LeftArm and RightArm and LeftLeg and RightLeg) then
                return {
                    Character = Character,
                    Head = Head,
                    Root = Root,
                    Torso = Torso,
                    LeftArm = LeftArm,
                    RightArm = RightArm,
                    LeftLeg = LeftLeg,
                    RightLeg = RightLeg
                }
            end
        end
    end

    function PlayerUtilities:GetDistanceFromClient(Position)
        local Character = LocalPlayer.Character
        local Root = (Character and Character:FindFirstChild("HumanoidRootPart"))

        if Character and Root then
            return (Root.Position - Position).Magnitude
        end

        return 0
    end
end

Connections:Add("VisualsPlayerAdded", Players.PlayerAdded, Visuals.AddPlayer)
Connections:Add("VisualsPlayerRemoved", Players.PlayerRemoving, Visuals.RemovePlayer)
Connections:Add("UniversalRenderStepped", RunService.RenderStepped, function()
    FOVCircle.Position = UserInputService:GetMouseLocation()
    FOVCircle.Radius = Library.flags["Aimbot FOV Radius"]
    FOVCircle.Color = Library.flags["Aimbot FOV Color"]
    FOVCircle.Visible = ((Library.flags["Aimbot Enabled"] and Library.flags["Aimbot Use FOV"]) and true) or false
    
    if Library.flags["Aimbot Enabled"] and Library.flags["Aimbot Active"] then
        local ClosestPlayer = PlayerUtilities:GetClosestPlayer()

        if ClosestPlayer and (ClosestPlayer.Player and ClosestPlayer.BodyParts) then
            local ScreenPosition, OnScreen = Visuals:GetScreenPosition(ClosestPlayer.BodyParts.Head.Position)

            if ScreenPosition and OnScreen then
                PlayerUtilities:AimAt(ScreenPosition, Library.flags["Aimbot Smoothing"])
            end
        end
    end

    for Index, Player in pairs(Players:GetPlayers()) do
        if Player == LocalPlayer then continue end

        local Objects = Visuals.Players[Player]
        if not Objects then continue end

        local OnScreen, PassedTeamCheck = false, true
        local IsPlayerAlive = PlayerUtilities:IsPlayerAlive(Player)
        local Health = PlayerUtilities:GetHealth(Player)
        local BodyParts = PlayerUtilities:GetBodyParts(Player)
        local PlayerColor = (PlayerUtilities:IsOnClientTeam(Player) and Library.flags["Visuals Ally Color"]) or Library.flags["Visuals Enemy Color"]
        local IsOnClientTeam = PlayerUtilities:IsOnClientTeam(Player)

        if Library.flags["Visuals Use Team Color"] then
            PlayerColor = PlayerUtilities:GetTeamColor(Player)
        end

        if Library.flags["Visuals Team Check"] and IsOnClientTeam then
            PassedTeamCheck = false
        end

        if IsPlayerAlive and Health and BodyParts and PlayerColor and PassedTeamCheck then
            local HealthPercent = (Health.CurrentHealth / Health.MaxHealth)
            local Distance = PlayerUtilities:GetDistanceFromClient(BodyParts.Root.Position)
            ScreenPosition, OnScreen = Visuals:GetScreenPosition(BodyParts.Root.Position)

            local Orientation, Size = BodyParts.Character:GetBoundingBox()
            local Height = (Workspace.CurrentCamera.CFrame - Workspace.CurrentCamera.CFrame.Position) * Vector3.new(0, (math.clamp(Size.Y, 1, 10) + 0.5) / 2, 0)
            Height = math.abs(Workspace.CurrentCamera:WorldToScreenPoint(Orientation.Position + Height).Y - Workspace.CurrentCamera:WorldToScreenPoint(Orientation.Position - Height).Y)
            Size = Visuals:Round(Vector2.new((Height / 2), Height))

            local NameString = string.format("%s", Player.Name)

            if Player.DisplayName ~= Player.Name then
                NameString = string.format("%s | %s", Player.Name, Player.DisplayName)
            end

            Objects.Box.Main.Color = PlayerColor
            Objects.Box.Main.Size = Size
            Objects.Box.Main.Position = Visuals:Round(Vector2.new(ScreenPosition.X, ScreenPosition.Y) - (Size / 2))
            function Visuals:Round(Number, Bracket)
                Bracket = (Bracket or 1)
        
                if typeof(Number) == "Vector2" then
                    return Vector2.new(Visuals:Round(Number.X), Visuals:Round(Number.Y))
                else
                    return (Number - Number % (Bracket or 1))
                end
            end

            Objects.Box.Outline.Thickness = (Objects.Box.Main.Thickness * 2)
            Objects.Box.Outline.Size = Objects.Box.Main.Size
            Objects.Box.Outline.Position = Objects.Box.Main.Position

            Objects.Healthbar.Main.Color = HealthbarLerp(HealthPercent)
            Objects.Healthbar.Main.Size = Vector2.new(2, (-Objects.Box.Main.Size.Y * HealthPercent))
            Objects.Healthbar.Main.Position = Vector2.new((Objects.Box.Main.Position.X - (Objects.Box.Outline.Thickness + 1)), (Objects.Box.Main.Position.Y + Objects.Box.Main.Size.Y))

            Objects.Healthbar.Outline.Size = Vector2.new(4, (Objects.Box.Main.Size.Y + 2))
            Objects.Healthbar.Outline.Position = Vector2.new((Objects.Box.Main.Position.X - (Objects.Box.Outline.Thickness + 2)), (Objects.Box.Main.Position.Y - 1))
            
            Objects.Info.Main.Font = Drawing.Fonts[Library.flags["Visuals Info Font"]]
            Objects.Info.Main.Text = NameString
            Objects.Info.Main.Position = Vector2.new(((Objects.Box.Main.Size.X / 2) + Objects.Box.Main.Position.X), ((ScreenPosition.Y - Objects.Box.Main.Size.Y / 2) - 18))

            Objects.Info.Extra.Font = Drawing.Fonts[Library.flags["Visuals Info Font"]]
            Objects.Info.Extra.Text = string.format("(%dft) (%d/%d)", Distance, Health.CurrentHealth, Health.MaxHealth)
            Objects.Info.Extra.Position = Vector2.new(((Objects.Box.Main.Size.X / 2) + Objects.Box.Main.Position.X), (Objects.Box.Main.Size.Y + Objects.Box.Main.Position.Y))
        end

        Objects.Box.Main.Visible = (OnScreen and Library.flags["Visuals Show Boxes"]) or false
        Objects.Box.Outline.Visible = Objects.Box.Main.Visible

        Objects.Healthbar.Main.Visible = (OnScreen and Library.flags["Visuals Show Healthbar"]) or false
        Objects.Healthbar.Outline.Visible = Objects.Healthbar.Main.Visible

        Objects.Info.Main.Visible = (OnScreen and Library.flags["Visuals Show Info"]) or false
        Objects.Info.Extra.Visible = (OnScreen and Library.flags["Visuals Show Extra Info"]) or false
    end
end)

local Fonts = {} do
    for Font, Number in pairs(Drawing.Fonts) do
        table.insert(Fonts, Font)
    end
end

Library.flags["Aimbot Active"] = false

local AimbotTab = Library:CreateWindow("Aimbot")
AimbotTab:AddToggle({text = "Enabled", flag = "Aimbot Enabled"})
AimbotTab:AddToggle({text = "Use Field of View", flag = "Aimbot Use FOV"})
AimbotTab:AddToggle({text = "Team Check", flag = "Aimbot Team Check"})
AimbotTab:AddBind({
    text = "Bind",
    flag = "Aimbot Bind",
    key = Enum.UserInputType.MouseButton2,
    hold = true,
    callback = function(Value)
        Library.flags["Aimbot Active"] = (not Value)
    end
})

AimbotTab:AddSlider({
    text = "FOV Radius",
    flag = "Aimbot FOV Radius",
    min = 0,
    max = 500,
    float = 1
})

AimbotTab:AddSlider({
    text = "Smoothing",
    flag = "Aimbot Smoothing",
    min = 1,
    max = 5,
    float = 0.1
})

AimbotTab:AddColor({
    text = "FOV Circle Color",
    flag = "Aimbot FOV Color",
    color = Color3.fromRGB(255, 255, 255)
})

local VisualsTab = Library:CreateWindow("Visuals")
VisualsTab:AddToggle({text = "Boxes", flag = "Visuals Show Boxes"})
VisualsTab:AddToggle({text = "Healthbar", flag = "Visuals Show Healthbar"})
VisualsTab:AddToggle({text = "Info", flag = "Visuals Show Info"})
VisualsTab:AddToggle({text = "Extra Info", flag = "Visuals Show Extra Info"})
VisualsTab:AddToggle({text = "Use Team Color", flag = "Visuals Use Team Color"})
VisualsTab:AddToggle({text = "Team Check", flag = "Visuals Team Check"})
VisualsTab:AddList({
    text = "Info Font",
    flag = "Visuals Info Font",
    values = Fonts
})

VisualsTab:AddColor({
    text = "Ally Color",
    flag = "Visuals Ally Color",
    color = Color3.fromRGB(0, 255, 0)
})

VisualsTab:AddColor({
    text = "Enemy Color",
    flag = "Visuals Enemy Color",
    color = Color3.fromRGB(255, 0, 0)
})

Library:Init()

UserInputService.InputBegan:Connect(function(Input, GameProcessedEvent)
    if GameProcessedEvent then return end
    if Input.KeyCode == Enum.KeyCode.RightControl then
        Library:Close()
    end
end)

warn("[universal]: Loaded! Game:", Game)