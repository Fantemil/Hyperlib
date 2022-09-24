-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Modules
local Ts = require(ReplicatedStorage.TS)

-- Player
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()
local CurrentCamera = workspace.CurrentCamera

-- Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/WetCheezit/UI-Libs/main/uwuware.lua"))()
local Math = loadstring(game:HttpGet("https://raw.githubusercontent.com/iRay888/Ray/main/Math"))()

-- Window(s)
local CombatWindow = Library:CreateWindow("Combat")
local EspWindow = Library:CreateWindow("Esp")
local MiscWindow = Library:CreateWindow("Misc")
local Settings = Library:CreateWindow("Settings")

-- Folders
local Main = CombatWindow:AddFolder("Aimbot")
local KnifeAura = CombatWindow:AddFolder("Knife Aura")
local EspMain = EspWindow:AddFolder("Main")
local EspSettings = EspWindow:AddFolder("Settings")
local GunMods = MiscWindow:AddFolder("Gun Mods")
local Misc = MiscWindow:AddFolder("Movement")
local MainSettings = Settings:AddFolder("Settings")

Main:AddToggle({text = "Enabled", flag = "aimbot_enabled"})
--Main:AddToggle({text = "Visible Check", flag = "aimbot_visiblecheck"})
Main:AddList({text = "Aimbot type", flag = "aimbot_type", value = "Redirection", values = {"Redirection", "Lock on"}})
Main:AddList({text = "Hitpart", flag = "aimbot_hitpart", value = "Abdomen", values = {"Abdomen", "Hips", "Chest", "Neck", "Head"}})
Main:AddSlider({text = "Redirection miss %", flag = "aimbot_misspercent", min = 0, max = 100, value = 0})
Main:AddSlider({text = "Aimbot smoothing", flag = "aimbot_smoothing", min = 3, max = 10, value = 5, float = 0.1})
Main:AddToggle({text = "Fov circle", flag = "aimbot_fovcircle"})
Main:AddSlider({text = "Fov radius", flag = "aimbot_fovradius", min = 10, max = 800, value = 100})
Main:AddColor({text = "Fov color", flag = "aimbot_fovcolor", value = Color3.fromRGB(255,255,255)})

KnifeAura:AddToggle({text = "Enabled", flag = "knifeaura_enabled"})
KnifeAura:AddToggle({text = "Auto knife", flag = "knifeaura_autoknife"})
KnifeAura:AddToggle({text = "Kill all", flag = "knifeaura_killall"})
KnifeAura:AddToggle({text = "Instant teleport", flag = "knifeaura_instanttp"})
KnifeAura:AddSlider({text = "Radius", flag = "knifeaura_radius", min = 0, max = 20, suffix = " Studs"})
KnifeAura:AddList({text = "Hitpart", flag = "knifeaura_hitpart", values = {"Abdomen", "Hips", "Chest", "Neck", "Head"}})
KnifeAura:AddLabel({text = "Turn off fly with kill all"})

GunMods:AddToggle({text = "No recoil", flag = "gun_norecoil"})
GunMods:AddToggle({text = "No spread", flag = "gun_nospread"})

Misc:AddToggle({text = "Click TP", flag = "misc_clicktp"})
Misc:AddBind({text = "TP Key", flag = "misc_clicktpbind", key = "Z", callback = function()
    local Character = Ts.Characters:GetCharacter(Player)

    if (Character and Character:FindFirstChild("Root") and Library.flags.misc_clicktp) then
        Character.Root.CFrame = Mouse.Hit * CFrame.new(0, 5, 0)
    end
end})
Misc:AddToggle({text = "Fly", flag = "misc_fly"})
Misc:AddSlider({text = "Fly speed", flag = "misc_flyspeed", min = 0, max = 100, value = 100})

EspMain:AddToggle({text = "Enabled", flag = "esp_enabled"})
EspMain:AddToggle({text = "Names", flag = "esp_names"})
EspMain:AddToggle({text = "Distance", flag = "esp_distance"})
EspMain:AddToggle({text = "Weapons", flag = "esp_weapons"})
EspMain:AddToggle({text = "Boxes", flag = "esp_boxes"})
EspMain:AddToggle({text = "Healthbars", flag = "esp_healthbars"})

EspSettings:AddList({text = "Text casing", flag = "esp_textcasing", values = {"Normal", "UPPERCASE", "lowercase"}})

MainSettings:AddBind({text = "Open / Close", key = "RightShift", callback = function()
    Library:Close()
end})
MainSettings:AddButton({text = "Copy discord invite", callback = function()
    setclipboard("https://discord.gg/etKPjb4n")
end})
MainSettings:AddLabel({text = "WetCheezit#4345"})
MainSettings:AddLabel({text = "siper#9938"})

-- Functions
local function CheckTeam(Target)
    return Ts.Teams:GetPlayerTeam(Target) ~= Ts.Teams:GetPlayerTeam(Player)
end

local function GetClosest(Fov)
    local Target, Closest = nil, Fov or math.huge

    for i,v in pairs(Players:GetPlayers()) do
        local Character = Ts.Characters:GetCharacter(v)

        if (v ~= Player and CheckTeam(v)) then
            if (Character and Character:FindFirstChild("Hitbox") and Character.Hitbox:FindFirstChild(Library.flags.aimbot_hitpart)) then
                local Position, OnScreen = CurrentCamera:WorldToScreenPoint(Character.Hitbox[Library.flags.aimbot_hitpart].Position)
                local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude

                if (Distance < Closest and OnScreen) then
                    Closest = Distance
                    Target = v
                end
            end
        end
    end

    return Target
end

local function GetDistanceClosest(MaxDist)
    local Target, Closest = nil, MaxDist or math.huge

    for i,v in pairs(Players:GetPlayers()) do
        local Character = Ts.Characters:GetCharacter(v)

        if (v ~= Player and CheckTeam(v)) then
            if (Character and Character:FindFirstChild("Hitbox") and Character.Hitbox:FindFirstChild(Library.flags.aimbot_hitpart)) then
                local LocalCharacter = Ts.Characters:GetCharacter(Player)

                if (LocalCharacter) then
                    local LocalRoot = LocalCharacter:FindFirstChild("Root")
                    local Root = Character:FindFirstChild("Root")
                    
                    local Distance = (LocalRoot.Position - Root.Position).Magnitude

                    if (Distance < Closest) then
                        Closest = Distance
                        Target = v
                    end
                end
            end
        end
    end

    return Target
end

--[[local function IsVisible(Target)
    local Character = Ts.Characters:GetCharacter(Target)
    local RootPos = Character.Root.Position
    local IgnoreList = { CurrentCamera, Character, Character.Root, Ts.Characters:GetCharacter(Player) }

    return workspace:FindPartOnRayWithIgnoreList(Ray.new(CurrentCamera.CFrame.p, RootPos - CurrentCamera.CFrame.p), IgnoreList) == nil
end]]--

local function GetKnifeModel()
    local Character = Ts.Characters:GetCharacter(Player)

    if (Character and Character:FindFirstChild("Backpack") and Character.Backpack:FindFirstChild("Melee")) then
        return Character.Backpack.Melee.Value
    end

    return nil
end

local EspCache = {}

local function ParseText(Text)
    local Casing = Library.flags.esp_textcasing
    local NewText = Text

    if (Casing == "UPPERCASE") then
        NewText = NewText:upper()
    elseif (Casing == "lowercase") then
        NewText = NewText:lower()
    end

    return NewText
end

local function GetBoundingBox(Character)
    local Data = {}

    for i,v in pairs(Character.Body:GetChildren()) do
        for i2, v2 in pairs(Math.getpartinfo2(v.CFrame, v.Size)) do
            Data[#Data + 1] = v2
        end
    end

    return Math.getposlist2(Data)
end

local function Create(Class, Properties)
    local Object = Drawing.new(Class)

    for i,v in pairs(Properties) do
        Object[i] = v
    end

    return Object
end

local function AddEsp(Player)
    if (Player == Players.LocalPlayer) then
        return
    end

    local Objects = {
        Box = Create("Quad", {
            Visible = false,
            Color = Color3.new(1, 1, 1),
            Thickness = 1,
            Filled = false,
            ZIndex = 2,
        }),
        BoxOutline = Create("Quad", {
            Visible = false,
            Color = Color3.new(),
            Thickness = 3,
            Filled = false,
            ZIndex = 1,
        }),
        Name = Create("Text", {
            Visible = false,
            Color = Color3.new(1, 1, 1),
            Text = Player.Name,
            Size = 13,
            Center = true,
            Outline = true,
            OutlineColor = Color3.new(),
            Font = Drawing.Fonts.Plex
        }),
        Distance = Create("Text", {
            Visible = false,
            Color = Color3.new(1, 1, 1),
            Size = 13,
            Center = true,
            Outline = true,
            OutlineColor = Color3.new(),
            Font = Drawing.Fonts.Plex
        }),
        Weapon = Create("Text", {
            Visible = false,
            Color = Color3.new(1, 1, 1),
            Size = 13,
            Center = false,
            Outline = true,
            OutlineColor = Color3.new(),
            Font = Drawing.Fonts.Plex
        }),
        Healthbar = Create("Square", {
            Visible = false,
            Color = Color3.new(0, 1, 0),
            Thickness = 1,
            Filled = false,
            ZIndex = 2
        }),
        HealthbarOutline = Create("Square", {
            Visible = false,
            Color = Color3.new(),
            Thickness = 3,
            Filled = false,
            ZIndex = 1
        }),
    }

    local Connection; Connection = RunService.RenderStepped:Connect(function()
        local Character = Ts.Characters:GetCharacter(Player)

        if (Character and Character:FindFirstChild("Root") and CheckTeam(Player)) then
            local _, OnScreen = CurrentCamera:WorldToViewportPoint(Character.Root.Position)
            local CanShow = OnScreen and Library.flags.esp_enabled

            if (CanShow) then
                local Data = GetBoundingBox(Character)
                local Health, MaxHealth = Character.Health.Value, Character.Health.MaxHealth.Value
                local DistY = Data.Positions.TopLeft.Y - Data.Positions.BottomRight.Y
                local HealthbarSize = Vector2.new(2, DistY)
                local HealthbarPosition = Vector2.new(Data.Positions.TopLeft.X - (4 + Objects.Healthbar.Size.X), Data.Positions.BottomLeft.Y)

                Objects.Box.Visible = CanShow and Library.flags.esp_boxes
                Objects.BoxOutline.Visible = CanShow and Library.flags.esp_boxes

                for i,v in pairs(Data.Quad) do
                    Objects.Box[i] = v
                    Objects.BoxOutline[i] = v
                end

                Objects.Name.Visible = CanShow and Library.flags.esp_names
                Objects.Name.Text = ParseText(Player.Name)
                Objects.Name.Position = Vector2.new(Data.Positions.Middle.X, Data.Positions.TopLeft.Y - 15)

                Objects.Distance.Visible = CanShow and Library.flags.esp_distance
                Objects.Distance.Text = ParseText(math.floor((Character.Root.Position - CurrentCamera.CFrame.p).Magnitude) .. " Studs")
                Objects.Distance.Position = Vector2.new(Data.Positions.Middle.X, Data.Positions.BottomLeft.Y + 3)

                Objects.Weapon.Visible = CanShow and Library.flags.esp_weapons
                Objects.Weapon.Text = ParseText(Character.Backpack.Equipped.Value and Character.Backpack.Equipped.Value.Name or "UNKNOWN")
                Objects.Weapon.Position = Vector2.new(Data.Positions.TopRight.X + 4, Data.Positions.TopRight.Y - 2)

                Objects.Healthbar.Visible = CanShow and Library.flags.esp_healthbars
                Objects.Healthbar.Size = Vector2.new(HealthbarSize.X, HealthbarSize.Y * math.clamp((Health / MaxHealth), 0, 1))
                Objects.Healthbar.Position = HealthbarPosition

                Objects.HealthbarOutline.Visible = CanShow and Library.flags.esp_healthbars
                Objects.HealthbarOutline.Size = HealthbarSize
                Objects.HealthbarOutline.Position = HealthbarPosition
            else
                for i,v in pairs(Objects) do
                    v.Visible = false
                end
            end
        else
            for i,v in pairs(Objects) do
                v.Visible = false
            end
        end
    end)

    EspCache[Player] = {
        Objects = Objects,
        Connection = Connection,
    }
end

local function RemoveEsp(Player)
    local Data = EspCache[Player]

    if (Data) then
        Data.Connection:Disconnect()

        for i,v in pairs(Data.Objects) do
            v:Remove()
            v = nil
        end
    end
end

Library:Init()

-- Fov
local CircleInline = Drawing.new("Circle")
local CircleOutline = Drawing.new("Circle")

RunService.Heartbeat:Connect(function()
    CircleInline.Radius = Library.flags.aimbot_fovradius
    CircleInline.Thickness = 2
    CircleInline.Position = Vector2.new(Mouse.X, Mouse.Y + 36)
    CircleInline.Transparency = 1
    CircleInline.Color = Library.flags.aimbot_fovcolor
    CircleInline.Visible = Library.flags.aimbot_fovcircle
    CircleInline.ZIndex = 2

    CircleOutline.Radius = Library.flags.aimbot_fovradius
    CircleOutline.Thickness = 4
    CircleOutline.Position = Vector2.new(Mouse.X, Mouse.Y + 36)
    CircleOutline.Transparency = 1
    CircleOutline.Color = Color3.new()
    CircleOutline.Visible = Library.flags.aimbot_fovcircle
    CircleOutline.ZIndex = 1
end)

-- Aimbot
local Target
local MeleeTarget

RunService.Heartbeat:Connect(function()
    Target = GetClosest(Library.flags.aimbot_fovradius)
    MeleeTarget = GetDistanceClosest(Library.flags.knifeaura_radius)
end)

RunService.Heartbeat:Connect(function()
    if (Target) then
        local Character = Ts.Characters:GetCharacter(Target)

        if (Character and Character.Hitbox[Library.flags.aimbot_hitpart]) then
            local Position, OnScreen = CurrentCamera:WorldToScreenPoint(Character.Hitbox[Library.flags.aimbot_hitpart].Position)

            if (Library.flags.aimbot_visiblecheck and not IsVisible(Target)) then
                return
            end

            if (OnScreen and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) and Library.flags.aimbot_enabled and Library.flags.aimbot_type == "Lock on") then
                mousemoverel((Position.X - Mouse.X) / Library.flags.aimbot_smoothing, (Position.Y - Mouse.Y) / Library.flags.aimbot_smoothing)
            end
        end
    end
end)

RunService.Heartbeat:Connect(function()
    local KnifeModel = GetKnifeModel()

    if (Library.flags.knifeaura_enabled and Library.flags.knifeaura_autoknife and MeleeTarget and KnifeModel) then
        local Character = Ts.Characters:GetCharacter(MeleeTarget)
        
        if (Character) then
            local Hitbox = Character:FindFirstChild("Hitbox")

            if (Hitbox) then
                Ts.Network:Fire("Item_Melee", "StabBegin", KnifeModel)
                Ts.Network:Fire("Item_Melee", "Stab", KnifeModel, Hitbox[Library.flags.knifeaura_hitpart], Hitbox[Library.flags.knifeaura_hitpart].Position, Vector3.new())
            end
        end
    end
end)

local CanKnifeRun = true

RunService.Heartbeat:Connect(function()
    if (not CanKnifeRun) then
        return
    end

    CanKnifeRun = false

    local KnifeModel = GetKnifeModel()

    if (Library.flags.knifeaura_enabled and Library.flags.knifeaura_killall and KnifeModel) then
        local Target = GetDistanceClosest()

        if (Target) then
            local Character = Ts.Characters:GetCharacter(Target)
            local LocalCharacter = Ts.Characters:GetCharacter(Player)

            if (LocalCharacter) then
                local Magnitude = (LocalCharacter.Root.Position - Character.Root.Position).Magnitude

                local Mag
                local BreakAmount

                if (Library.flags.knifeaura_instanttp) then
                    BreakAmount = math.huge
                else
                    BreakAmount = 50
                end

                if (Magnitude > BreakAmount) then
                    for i = 0, Magnitude, 0.05 do
                        Mag = (LocalCharacter.Root.Position - Character.Root.Position).Magnitude

                        if (Mag <= BreakAmount) then
                            break
                        end

                        LocalCharacter.Root.CanCollide = false
                        LocalCharacter.Root.CFrame = LocalCharacter.Root.CFrame:Lerp(Character.Root.CFrame, i / Mag)
                        task.wait(0.025)
                    end
                end

                LocalCharacter.Root.CanCollide = true
                LocalCharacter.Root.CFrame = Character.Root.CFrame * CFrame.new(0, 0, 5)

                Ts.Network:Fire("Item_Melee", "StabBegin", KnifeModel)
                Ts.Network:Fire("Item_Melee", "Stab", KnifeModel, Character.Hitbox[Library.flags.knifeaura_hitpart], Character.Hitbox[Library.flags.knifeaura_hitpart].Position, Vector3.new())
            end
        end
    end

    task.wait(0.35)

    CanKnifeRun = true
end)

local OldLookVector = Ts.Input.Reticle.LookVector; do
    Ts.Input.Reticle.LookVector = newcclosure(function(...)
        if (Library.flags.gun_nospread) then
            return CurrentCamera.CFrame.LookVector
        end

        return OldLookVector(...)
    end)

    debug.setupvalue(Ts.Input.Reticle.GetPosition, 2, Ts.Input.Reticle.LookVector)
end

local OldFire = Ts.Camera.Recoil.Fire; do
    Ts.Camera.Recoil.Fire = newcclosure(function(...)
        if (Library.flags.gun_norecoil) then
            return
        end

        return OldFire(...)
    end)

    debug.setupvalue(Ts.Camera.Recoil.Update, 2, Ts.Camera.Recoil.Fire)
end

RunService.Stepped:Connect(function()
    local Character = Ts.Characters:GetCharacter(Player)

    if (Character) then
        local Root = Character:FindFirstChild("Root")

        if (Root) then
            if (Library.flags.misc_fly) then
                local LookVector = CurrentCamera.CFrame.LookVector
                local RightVector = CurrentCamera.CFrame.RightVector
                local UpVector = Root.CFrame.UpVector

                local TargetVelocity = Vector3.new()
                local Moving = false

                if (UserInputService:IsKeyDown("W")) then
                    TargetVelocity = TargetVelocity + LookVector
                    Moving = true
                end

                if (UserInputService:IsKeyDown("S")) then
                    TargetVelocity = TargetVelocity + -LookVector
                    Moving = true
                end

                if (UserInputService:IsKeyDown("A")) then
                    TargetVelocity = TargetVelocity + -RightVector
                    Moving = true
                end

                if (UserInputService:IsKeyDown("D")) then
                    TargetVelocity = TargetVelocity + RightVector
                    Moving = true
                end

                if (UserInputService:IsKeyDown("Space")) then
                    TargetVelocity = TargetVelocity + UpVector
                    Moving = true
                end

                if (UserInputService:IsKeyDown("LeftShift")) then
                    TargetVelocity = TargetVelocity + -UpVector
                    Moving = true
                end

                Root.Anchored = not Moving
                Root.Velocity = TargetVelocity * Library.flags.misc_flyspeed
            else
                Root.Anchored = false
            end
        end
    end
end)

-- Esp
for i,v in pairs(Players:GetPlayers()) do
    AddEsp(v)
end

Players.PlayerAdded:Connect(function(Player)
    AddEsp(Player)
end)

Players.PlayerRemoving:Connect(function(Player)
    RemoveEsp(Player)
end)

local Old; Old = hookmetamethod(game, "__namecall", function(Self, ...)
    local Args = {...}
    local Method = getnamecallmethod()

    if (not checkcaller() and Method == "FireServer" and Self.Name == "Projectiles") then
        if (Target and Library.flags.aimbot_enabled and Library.flags.aimbot_type == "Redirection") then
            local Character = Ts.Characters:GetCharacter(Target)

            if (Character and Character.Hitbox and Character.Hitbox[Library.flags.aimbot_hitpart] and Args[1] == "__Hit") then
                --[[if (Library.flags.aimbot_visiblecheck and not IsVisible(Target)) then
                    return
                end]]--

                if (math.random(0, 100) >= Library.flags.aimbot_misspercent) then
                    Args[3] = Character.Hitbox[Library.flags.aimbot_hitpart].Position
                    Args[4] = Character.Hitbox[Library.flags.aimbot_hitpart]
                    Args[6] = Character
                end
            end
        end
    elseif (Self.Name == "Item_Melee" and Args[1] == "Stab" and Method == "FireServer") then
        if (MeleeTarget and Library.flags.knifeaura_enabled) then
            local Character = Ts.Characters:GetCharacter(MeleeTarget)
            
            Args[3] = Character.Hitbox[Library.flags.knifeaura_hitpart]
            Args[4] = Character.Hitbox[Library.flags.knifeaura_hitpart].Position
            Args[5] = Vector3.new()
        end
    end
    return Old(Self, unpack(Args))
end)