local function getexploit()
    local exploit =
        (syn and not is_sirhurt_closure and not pebc_execute and "Synapse") or
        (secure_load and "Sentinel") or
        (is_sirhurt_closure and "Sirhurt") or
        (pebc_execute and "ProtoSmasher") or
        (KRNL_LOADED and "Krnl") or
        (WrapGlobal and "WeAreDevs") or
        (isvm and "Proxo") or
        (shadow_env and "Shadow") or
        (jit and "EasyExploits") or
        (getscriptenvs and "Calamari") or
        (unit and not syn and "Unit") or
        (OXYGEN_LOADED and "Oxygen U") or
        (IsElectron and "Electron") or
        ("Unknown")  
    return exploit
end

-- https://v3rmillion.net/showthread.php?tid=1027440

local function ErrorCapture(Error)
    local HttpService = game:GetService("HttpService")
    local Data = {
        ["embeds"] = {
            {
                ["title"] = "FemWare | AR2",
                ["color"] = 9893552,
                ["fields"] = {
                    {
                        ["name"] = "User:Id",
                        ["value"] = "```" .. game:GetService("Players").LocalPlayer.Name .. ":" .. game:GetService("Players").LocalPlayer.UserId .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Executor",
                        ["value"] = "```" .. tostring(getexploit()) .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Error",
                        ["value"] = "```lua\n" .. tostring(Error) .. "```",
                        ["inline"] = false
                    },
                },
                ["footer"] = {
                    ["text"] = os.date()
                },
            }
        }
    }

    local Headers = { ["Content-Type"] = "application/json" }
    local Encoded = HttpService:JSONEncode(Data)
    Request = http_request or request or HttpPost or syn.request
    local Final = { Url = "https://discord.com/api/webhooks/999212619657388133/XRv0-Dj_1-IStgUhC8kPpZfqjiTeEQ1mfcIDItfX3RBrw5rqHzJ4pZESf-q49AGmjCi2", Body = Encoded, Method = "POST", Headers = Headers }
    Request(Final)
end

local S, E = pcall(function()

    if _G.Fanya then
       game:GetService("StarterGui"):SetCore("SendNotification", {Title = "FemWare"; Text = "Already Executed"; Icon = "rbxassetid://9327507243"; Duration = 0.3 })
       return
    end
    
    _G.Fanya = "omg"
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = "FemWare"; Text = "New Script available on discord.gg/femware"; Icon = "rbxassetid://9327507243"; Duration = 180 })

    pcall(function()
        setclipboard("discord.gg/femware")
    end)

    --repeat wait(0.5) until game:IsLoaded() and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid")

    --Settings--
    local ESP = {
        Enabled = false,
        Boxes = false,
        BoxShift = CFrame.new(0,-1.5,0),
        LoxShift = CFrame.new(0,-7,0),
        BoxSize = Vector3.new(4,6,0),
        Color = Color3.fromRGB(255,255,255),
        Distance = 0,
        FaceCamera = false,
        Names = false,
        TeamColor = true,
        Thickness = 1,
        AttachShift = 1,
        TeamMates = true,
        Players = true,
        Highlights = false,
        Tools = false,
        Heli = false,
        HighlightType = Enum.HighlightDepthMode.Occluded,
        
        Objects = setmetatable({}, {__mode="kv"}),
        Overrides = {}
    }

    local highlights = {}
    
    --Declarations--
    local cam = game:GetService("Workspace").CurrentCamera
    local plrs = game:GetService("Players")
    local plr = plrs.LocalPlayer
    local mouse = plr:GetMouse()
    local coregui = game:GetService("CoreGui")
    
    local WorldToViewportPoint = cam.WorldToViewportPoint

    local Aimbot = {
        Enabled = false,
        HitPart = "Head",
        PredictionVelocity = 100,
        TeamCheck = false,
        AimRadius = 50,
        AimlockToggleKey = Enum.KeyCode.E,
        On = false,
        Height = 0,
        Random = false,
        Hits = {"Head", "UpperTorso", "LowerTorso", "LeftFoot", "LeftLowerLeg", "LeftUpperLeg", "RightFoot", "RightLowerLeg", "RightUpperLeg", "LeftHand", "LeftLowerArm", "LeftLowerArm", "RightHand", "RightLowerArm", "RightLowerArm", "RightUpperArm", "RootPart", "Unknown"}
    }
    
    local SGui = game:GetService"StarterGui"
    local AimlockTarget;

    local RAim, RAmbiance, RTime, Rrgb, HbTP, HbNC

    -- ESP        
        --Functions--
        local function Draw(obj, props)
            local new = Drawing.new(obj)
            
            props = props or {}
            for i,v in pairs(props) do
                new[i] = v
            end
            return new
        end
        
        function ESP:GetTeam(p)
            local ov = self.Overrides.GetTeam
            if ov then
                return ov(p)
            end
            
            return p and p.Team
        end
        
        function ESP:IsTeamMate(p)
            local ov = self.Overrides.IsTeamMate
            if ov then
                return ov(p)
            end
            
            return self:GetTeam(p) == self:GetTeam(plr)
        end
        
        function ESP:GetColor(obj)
            local ov = self.Overrides.GetColor
            if ov then
                return ov(obj)
            end
            local p = self:GetPlrFromChar(obj)
            return p and self.TeamColor and p.Team and p.Team.TeamColor.Color or self.Color
        end
        
        function ESP:GetPlrFromChar(char)
            local ov = self.Overrides.GetPlrFromChar
            if ov then
                return ov(char)
            end
            
            return plrs:GetPlayerFromCharacter(char)
        end
        
        function ESP:Toggle(bool)
            self.Enabled = bool
            if not bool then
                for i,v in pairs(self.Objects) do
                    if v.Type == "Box" then --fov circle etc
                        if v.Temporary then
                            v:Destroy()
                        else
                            for i,v in pairs(v.Components) do
                                v.Visible = false
                            end
                        end
                    end
                end
            end
        end
        
        function ESP:GetBox(obj)
            local s, e = pcall(function()
                return self.Objects[obj]
            end)
            
            if not s then
                ErrorCapture(e)
            end
        end
        
        function ESP:AddObjectListener(parent, options)
            local function NewListener(c)
                if type(options.Type) == "string" and c:IsA(options.Type) or options.Type == nil then
                    if type(options.Name) == "string" and c.Name == options.Name or options.Name == nil then
                        if not options.Validator or options.Validator(c) then
                            local box = ESP:Add(c, {
                                PrimaryPart = type(options.PrimaryPart) == "string" and c:WaitForChild(options.PrimaryPart) or type(options.PrimaryPart) == "function" and options.PrimaryPart(c),
                                Color = type(options.Color) == "function" and options.Color(c) or options.Color,
                                ColorDynamic = options.ColorDynamic,
                                Name = type(options.CustomName) == "function" and options.CustomName(c) or options.CustomName,
                                IsEnabled = options.IsEnabled,
                                RenderInNil = options.RenderInNil
                            })
                            --TODO: add a better way of passing options
                            if options.OnAdded then
                                coroutine.wrap(options.OnAdded)(box)
                            end
                        end
                    end
                end
            end
        
            if options.Recursive then
                parent.DescendantAdded:Connect(NewListener)
                for i,v in pairs(parent:GetDescendants()) do
                    coroutine.wrap(NewListener)(v)
                end
            else
                parent.ChildAdded:Connect(NewListener)
                for i,v in pairs(parent:GetChildren()) do
                    coroutine.wrap(NewListener)(v)
                end
            end
        end
        
        local boxBase = {}
        boxBase.__index = boxBase
        
        function boxBase:Destroy()
            ESP.Objects[self.Object] = nil
            for i,v in pairs(self.Components) do
                v.Visible = false
                v:Destroy()
                self.Components[i] = nil
            end
        end
        
        function boxBase:Update()
            if not self.PrimaryPart then
                --ErrorCapture("not supposed to print", self.Object)
                return self:Destroy()
            end
        
            local color
            if ESP.Highlighted == self.Object then
            color = ESP.HighlightColor
            else
                color = self.Color or self.ColorDynamic and self:ColorDynamic() or ESP:GetColor(self.Object) or ESP.Color
            end
        
            local allow = true
            if ESP.Overrides.UpdateAllow and not ESP.Overrides.UpdateAllow(self) then
                allow = false
            end
            if self.Player and not ESP.TeamMates and ESP:IsTeamMate(self.Player) then
                allow = false
            end
            if self.Player and not ESP.Players then
                allow = false
            end
            if self.IsEnabled and (type(self.IsEnabled) == "string" and not ESP[self.IsEnabled] or type(self.IsEnabled) == "function" and not self:IsEnabled()) then
                allow = false
            end
            if not game:GetService("Workspace"):IsAncestorOf(self.PrimaryPart) and not self.RenderInNil then
                allow = false
            end
        
            if not allow then
                for i,v in pairs(self.Components) do
                    v.Visible = false
                end
                return
            end
        
            if ESP.Highlighted == self.Object then
                color = ESP.HighlightColor
            end
        
            --calculations--
            local cf = self.PrimaryPart.CFrame
            if ESP.Distance > 0 then
                local PlayerDistance = math.floor((cf.p - cam.CFrame.p).magnitude)
                if PlayerDistance > ESP.Distance then
                    self.Components.Quad.Visible = false
                    self.Components.Name.Visible = false
                    self.Components.Distance.Visible = false
                    self.Components.Tool.Visible = false
                    if highlights[self.Player] then
                        highlights[self.Player].OutlineTransparency = 1
                    end
                    return
                end
            end
            if ESP.FaceCamera then
                cf = CFrame.new(cf.p, cam.CFrame.p)
            end
            local size = self.Size
            local locs = {
                TopLeft = cf * ESP.BoxShift * CFrame.new(size.X/2,size.Y/2,0),
                TopRight = cf * ESP.BoxShift * CFrame.new(-size.X/2,size.Y/2,0),
                BottomLeft = cf * ESP.BoxShift * CFrame.new(size.X/2,-size.Y/2,0),
                BottomRight = cf * ESP.BoxShift * CFrame.new(-size.X/2,-size.Y/2,0),
                TagPos = cf * ESP.LoxShift * CFrame.new(0,size.Y/2,0),
                Torso = cf * ESP.BoxShift
            }
        
            if ESP.Boxes then
                local TopLeft, Vis1 = WorldToViewportPoint(cam, locs.TopLeft.p)
                local TopRight, Vis2 = WorldToViewportPoint(cam, locs.TopRight.p)
                local BottomLeft, Vis3 = WorldToViewportPoint(cam, locs.BottomLeft.p)
                local BottomRight, Vis4 = WorldToViewportPoint(cam, locs.BottomRight.p)
        
                if self.Components.Quad then
                    if Vis1 or Vis2 or Vis3 or Vis4 then
                        self.Components.Quad.Visible = true
                        self.Components.Quad.PointA = Vector2.new(TopRight.X, TopRight.Y)
                        self.Components.Quad.PointB = Vector2.new(TopLeft.X, TopLeft.Y)
                        self.Components.Quad.PointC = Vector2.new(BottomLeft.X, BottomLeft.Y)
                        self.Components.Quad.PointD = Vector2.new(BottomRight.X, BottomRight.Y)
                        self.Components.Quad.Color = color
                    else
                        self.Components.Quad.Visible = false
                    end
                end
            else
                self.Components.Quad.Visible = false
            end
        
            if ESP.Names and self.Player and self.Player.Character and self.Player.Character:FindFirstChild("Humanoid") and self.Player:FindFirstChild("Stats") and self.Player.Stats:FindFirstChild("Health") and self.Player.Stats:FindFirstChild("HealthBonus") then
                local TagPos, Vis5 = WorldToViewportPoint(cam, locs.TagPos.p)
                
                if Vis5 then
                    self.Components.Name.Visible = true
                    self.Components.Name.Position = Vector2.new(TagPos.X, TagPos.Y + 14)
                    self.Components.Name.Text = self.Name
                    self.Components.Name.Color = color
                    
                    self.Components.Distance.Visible = true
                    self.Components.Distance.Position = Vector2.new(TagPos.X, TagPos.Y + 28)
                    self.Components.Distance.Text = math.floor(self.Player.Stats.Health.Value + self.Player.Stats.HealthBonus.Value) .. " | " .. math.floor((cam.CFrame.p - cf.p).magnitude) .."m"
                    self.Components.Distance.Color = color
                else
                    self.Components.Name.Visible = false
                    self.Components.Distance.Visible = false
                end
            else
                self.Components.Name.Visible = false
                self.Components.Distance.Visible = false
            end

            if ESP.Highlights and self.Player and self.Player.Character then
                local TagPos, Vis5 = WorldToViewportPoint(cam, locs.TagPos.p)
                
                if Vis5 then
                    if not highlights[self.Player] then
                        local highlight = Instance.new("Highlight", coregui)
                        highlight.Name = self.Player.Name
                        highlight.Adornee = self.Player.Character
                        highlight.DepthMode = ESP.HighlightType
                        highlight.OutlineColor = color
                        highlight.FillTransparency = 1
                        highlights[self.Player] = highlight
                    else
                        highlights[self.Player].Adornee = self.Player.Character
                        highlights[self.Player].OutlineColor = color
                        highlights[self.Player].OutlineTransparency = 0
                    end
                else
                    if highlights[self.Player] then
                        highlights[self.Player].OutlineTransparency = 1
                    end
                end
            else
                if highlights[self.Player] then
                    highlights[self.Player].OutlineTransparency = 1
                end
            end 

            if ESP.Tools and self.Player.Character and self.Player:FindFirstChild("Stats") and self.Player.Stats:FindFirstChild("Primary") then
                local TagPos, Vis5 = WorldToViewportPoint(cam, locs.TagPos.p)
                
                if Vis5 then
                    self.Components.Tool.Visible = true
                    self.Components.Tool.Position = Vector2.new(TagPos.X, TagPos.Y - 28)
                    self.Components.Tool.Text = self.Player.Stats.Primary.Value or ""
                    self.Components.Tool.Color = color
                else
                    self.Components.Tool.Visible = false
                end
            else
                self.Components.Tool.Visible = false
            end            
        end
        
        function ESP:Add(obj, options)
            local s, e = pcall(function()
                if not obj.Parent and not options.RenderInNil then
                    return --ErrorCapture(obj, "has no parent")
                end
            
                local box = setmetatable({
                    Name = options.Name or obj.Name,
                    Type = "Box",
                    Color = options.Color --[[or self:GetColor(obj)]],
                    Size = options.Size or ESP.BoxSize,
                    Object = obj,
                    Player = options.Player or plrs:GetPlayerFromCharacter(obj),
                    PrimaryPart = options.PrimaryPart or obj.ClassName == "Model" and (obj.PrimaryPart or obj:FindFirstChild("HumanoidRootPart") or obj:FindFirstChildWhichIsA("BasePart")) or obj:IsA("BasePart") and obj,
                    Components = {},
                    IsEnabled = options.IsEnabled,
                    Temporary = options.Temporary,
                    ColorDynamic = options.ColorDynamic,
                    RenderInNil = options.RenderInNil
                }, boxBase)
            
                if self:GetBox(obj) then
                    self:GetBox(obj):Destroy()
                end
            
                box.Components["Quad"] = Draw("Quad", {
                    Thickness = self.Thickness,
                    Color = color,
                    Transparency = 1,
                    Filled = false,
                    Visible = self.Enabled and self.Boxes
                })
                box.Components["Name"] = Draw("Text", {
                    Text = box.Name,
                    Color = box.Color,
                    Center = true,
                    Outline = true,
                    Size = 16,
                    Visible = self.Enabled and self.Names
                })
                box.Components["Distance"] = Draw("Text", {
                    Color = box.Color,
                    Center = true,
                    Outline = true,
                    Size = 16,
                    Visible = self.Enabled and self.Distance
                })
                box.Components["Tool"] = Draw("Text", {
                    Color = box.Color,
                    Center = true,
                    Outline = true,
                    Size = 16,
                    Visible = self.Enabled and self.Tools
                })
                self.Objects[obj] = box
                
                obj.AncestryChanged:Connect(function(_, parent)
                    if parent == nil and ESP.AutoRemove ~= false then
                        box:Destroy()
                    end
                end)
                obj:GetPropertyChangedSignal("Parent"):Connect(function()
                    if obj.Parent == nil and ESP.AutoRemove ~= false then
                        box:Destroy()
                    end
                end)
            
                local hum = obj:FindFirstChildOfClass("Humanoid")
                if hum then
                    hum.Died:Connect(function()
                        if ESP.AutoRemove ~= false then
                            box:Destroy()
                        end
                    end)
                end
            
                return box
            end)

            if not s then
                ErrorCapture(e)
            end
        end
        
        local function CharAdded(char)
            local p = plrs:GetPlayerFromCharacter(char)
            if not char:FindFirstChild("HumanoidRootPart") then
                local ev
                ev = char.ChildAdded:Connect(function(c)
                    if c.Name == "HumanoidRootPart" then
                        ev:Disconnect()
                        ESP:Add(char, {
                            Name = p.Name,
                            Player = p,
                            PrimaryPart = c
                        })
                    end
                end)
            else
                ESP:Add(char, {
                    Name = p.Name,
                    Player = p,
                    PrimaryPart = char.HumanoidRootPart
                })
            end
        end

        local function PlayerAdded(p)
            p.CharacterAdded:Connect(CharAdded)
            if p.Character then
                coroutine.wrap(CharAdded)(p.Character)
            end
        end

        plrs.PlayerAdded:Connect(PlayerAdded)
        for i,v in pairs(plrs:GetPlayers()) do
            if v ~= plr then
                PlayerAdded(v)
            end
        end

        plrs.PlayerRemoving:Connect(function(v)
            if highlights[v] then
                highlights[v]:Destroy()
                highlights[v] = nil
            end
        end)
        
        game:GetService("RunService").Heartbeat:Connect(function()
            cam = game:GetService("Workspace").CurrentCamera
            for i,v in (ESP.Enabled and pairs or ipairs)(ESP.Objects) do
                if v.Update then
                    local s,e = pcall(v.Update, v)
                    if not s then 
                        --ErrorCapture("[EU]", e, v.Object:GetFullName())
                        ErrorCapture(e)
                    end
                end
            end
        end)
    -- ESP

    local function DrawDrop(drop)
    
        local DropText = Drawing.new("Text")
        DropText.Visible = false
        DropText.Center = true
        DropText.Outline = true
        DropText.Font = 2
        DropText.Size = 13
        DropText.Color = Color3.new(1, 1, 1)
        DropText.Text = drop.Name or ""

        local DistText = Drawing.new("Text")
        DistText.Visible = false
        DistText.Center = true
        DistText.Outline = true
        DistText.Font = 2
        DistText.Size = 13
        DistText.Color = Color3.new(1, 1, 1)
        DistText.Text = "Dist"
    
        local function UPDATER()
            local c
            c = game:GetService("RunService").Heartbeat:Connect(function()
                pcall(function()
                    if game:GetService("Workspace").Map.Shared.Randoms:FindFirstChild(drop.Name) and ESP.Heli == true and drop.PrimaryPart then
                        
                        local dropvector, onscreen = game:GetService("Workspace").CurrentCamera:WorldToViewportPoint(drop.PrimaryPart.Position)
        
                        if onscreen then
                            DropText.Position = Vector2.new(dropvector.X, dropvector.Y)
                            DropText.Visible = true
                            DropText.Color = ESP.Color

                            DistText.Position = Vector2.new(dropvector.X, dropvector.Y + 14)
                            DistText.Visible = true
                            DistText.Text = math.floor((game:GetService("Workspace").CurrentCamera.CFrame.p - drop.PrimaryPart.Position).magnitude) .."m"
                            DistText.Color = ESP.Color
                        else
                            DropText.Visible = false
                            DistText.Visible = false
                        end
        
                    else
        
                        if not game:GetService("Workspace").Map.Shared.Randoms:FindFirstChild(drop.Name) or not drop.PrimaryPart then
                            c:Disconnect()
                            c = nil
                        end
        
                        DropText.Visible = false
                        DistText.Visible = false
                        
                        if c then
                            c:Disconnect()
                            c = nil
                        end
                    
                    end
                end)
            end)
        end
        coroutine.wrap(UPDATER)()
    end
    
    pcall(function()
        game:GetService("Workspace").Map.Shared.Randoms.ChildAdded:Connect(function(drop)
            if ESP.Heli == true and string.find(drop.Name, "Seahawk") then
                SGui:SetCore("SendNotification", {Title = "Heli Crashed!"; Text = drop.Name .. " has summoned."; Icon = "rbxassetid://9327507243"; Duration = 60 })
                wait(5)
                if drop.PrimaryPart then
                    coroutine.wrap(DrawDrop)(drop)
                end
            end
        end)
    end)

    -- AIMBOT
        local function Notify(title, text, icon, time)
            if not time or not type(time) == "number" then time = 3 end
            SGui:SetCore("SendNotification",{
                Title = title;
                Text = text;
                Icon = "rbxassetid://9327507243";
                Duration = time;
            }) 
        end
        
        local function GetNearestTarget()
            local PLAYER_HOLD = {}
            local DISTANCES = {}
            for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                if v ~= plr and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 then
                    local AIM = v.Character:FindFirstChild("Head") or v.Character:FindFirstChild("HumanoidRootPart")
                    local DISTANCE = (AIM.Position - game:GetService("Workspace").CurrentCamera.CFrame.p).magnitude
                    local RAY = Ray.new(game:GetService("Workspace").CurrentCamera.CFrame.p, (mouse.Hit.p - game:GetService("Workspace").CurrentCamera.CFrame.p).unit * DISTANCE)
                    local HIT,POS = game:GetService("Workspace"):FindPartOnRay(RAY, game:GetService("Workspace"))
                    local DIFF = math.floor((POS - AIM.Position).magnitude)
                    PLAYER_HOLD[v.Name .. i] = {}
                    PLAYER_HOLD[v.Name .. i].dist = DISTANCE
                    PLAYER_HOLD[v.Name .. i].plr = v
                    PLAYER_HOLD[v.Name .. i].diff = DIFF
                    table.insert(DISTANCES, DIFF)
                end
            end

            local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
            if unpack(DISTANCES) == nil or (L_DISTANCE > Aimbot.AimRadius) then
                return nil
            end
            
            for i, v in pairs(PLAYER_HOLD) do
                if v.diff == L_DISTANCE then
                    return v.plr
                end
            end
        end

        game:GetService("UserInputService").InputBegan:Connect(function(Key)
            if Aimbot.Enabled and Key.KeyCode == Aimbot.AimlockToggleKey then
                if not Aimbot.On then
                    pcall(function()
                        local Target = GetNearestTarget()
                        if Target ~= nil then
                            AimlockTarget = Target
                            Aimbot.On = true
                            Notify("FemWare", "Target: "..tostring(AimlockTarget), "", 3)
                        end
                    end)
                else
                    Aimbot.On = false
                    AimlockTarget = nil
                    Notify("FemWare", "Disabled.", "", 0.5)
                end
            end
        end)
    -- AIMBOT

    local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

    local win = DiscordLib:Window("Apocalyse Rising 2 by FemWare")

    local serv = win:Server("FemWare", "rbxassetid://9327507243")

    local Aim = serv:Channel("Blatant")

    local Cli = serv:Channel("Local")
    local Vis = serv:Channel("Player ESP")
    local World = serv:Channel("World ESP")

    local bnds = serv:Channel("Binds")

    local serv2 = win:Server("Contributors", "")

    local lbls = serv2:Channel("FemWare")

    lbls:Label("Made by Fanya#6470. Support us over discord.gg/femware")

    lbls:Button("Discord Link", function()
        pcall(function()
            setclipboard("discord.gg/femware")
            game:GetService("StarterGui"):SetCore("SendNotification", {Title = "FemWare"; Text = "Successful! discord.gg/femware"; Icon = "rbxassetid://9327507243"; Duration = 5 })
        end)
    end)

    local RandomCool = false
    local r = "Head"

    Aim:Toggle("Aimbot", Aimbot.Enabled, function(v)
        Aimbot.Enabled = v

        if v == true then
            RAim = game:GetService("RunService").RenderStepped:Connect(function()
                pcall(function()
                    if Aimbot.Enabled and Aimbot.On and AimlockTarget and AimlockTarget.Character and AimlockTarget.Character:FindFirstChild(Aimbot.HitPart) then
                        if Aimbot.PredictionVelocity == 100 then
                            game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, AimlockTarget.Character[Aimbot.HitPart].Position + Vector3.new(0, Aimbot.Height, 0))
                        elseif not Aimbot.Random then
                            game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, AimlockTarget.Character[Aimbot.HitPart].Position + Vector3.new(0, Aimbot.Height, 0) + AimlockTarget.Character[Aimbot.HitPart].Velocity/Aimbot.PredictionVelocity)
                        elseif not RandomCool then
                            r = Aimbot.Hits[math.random(1, #Aimbot.Hits)]
                            if AimlockTarget.Character:FindFirstChild(r) then
                                RandomCool = true
                                wait(0.5)
                                RandomCool = false
                            end
                        else
                            game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, AimlockTarget.Character[r].Position + Vector3.new(0, Aimbot.Height, 0) + AimlockTarget.Character[Aimbot.HitPart].Velocity/Aimbot.PredictionVelocity)
                        end
                    end
                end)
            end)
        elseif not v and RAim then
            RAim:Disconnect()
            RAim = nil
        end
    end)

    Aim:Slider("Aimbot Prediction [100 = No Prediction]", 1, 100, Aimbot.PredictionVelocity, function(v)
        Aimbot.PredictionVelocity = v
    end)
    
    Aim:Toggle("Aimbot Randomize", Aimbot.Random, function(v)
        Aimbot.Random = v
    end)

    Aim:Slider("Aimbot Height [Adjust Target Height, Useful For Distance]", 0, 20, Aimbot.Height, function(v)
        Aimbot.Height = v / 10
    end)

    Aim:Dropdown("Toggle Key [E Is Default Trigger]", {"X", "C", "F", "E", "G", "Q", "LeftControl"}, function(v)
        if v == "X" then
            Aimbot.AimlockToggleKey = Enum.KeyCode.X
        elseif v == "C" then
            Aimbot.AimlockToggleKey = Enum.KeyCode.C
        elseif v == "F" then
            Aimbot.AimlockToggleKey = Enum.KeyCode.F
        elseif v == "E" then
            Aimbot.AimlockToggleKey = Enum.KeyCode.E
        elseif v == "G" then
            Aimbot.AimlockToggleKey = Enum.KeyCode.G
        elseif v == "Q" then
            Aimbot.AimlockToggleKey = Enum.KeyCode.Q
        elseif v == "LeftControl" then
            Aimbot.AimlockToggleKey = Enum.KeyCode.LeftControl
        end
    end)

    Aim:Dropdown("Aim Part", {"Head", "HumanoidRootPart", "UpperTorso", "LowerTorso", "RightUpperLeg", "LeftUpperLeg"}, function(v)
        if v == "Head" then
            Aimbot.HitPart = "Head"
        elseif v == "HumanoidRootPart" then
            Aimbot.HitPart = "HumanoidRootPart"
        elseif v == "UpperTorso" then
            Aimbot.HitPart = "UpperTorso"
        elseif v == "LowerTorso" then
            Aimbot.HitPart = "LowerTorso"
        elseif v == "RightUpperLeg" then
            Aimbot.HitPart = "RightUpperLeg"
        elseif v == "LeftUpperLeg" then
            Aimbot.HitPart = "LeftUpperLeg"
        end
    end)

    local InfiniteJump = false

    Aim:Toggle("Infinite Jump", InfiniteJump, function(v)
        InfiniteJump = v
    end)

    game:GetService("UserInputService").InputBegan:connect(function(input)
        if InfiniteJump and input.KeyCode == Enum.KeyCode.Space then
            game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
        end
    end)

    Aim:Toggle("No Clip", false, function(v)
        if v then
            HbNC = game:GetService("RunService").Heartbeat:Connect(function()
                if game:GetService("Players").LocalPlayer.Character then
                    for _, selfChar in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                        if selfChar:IsA("BasePart") and selfChar.CanCollide == true and selfChar.Name then
                            selfChar.CanCollide = false
                        end
                    end
                end
            end)
        elseif not v and HbNC then
            HbNC:Disconnect()
            HbNC = nil
        end
    end)

    Aim:Button("No Recoil", function() -- https://github.com/Blissful4992/ROBLOX/blob/main/Apocalypse%20Rising/no%20recoil.lua
        local str = 'KickUpCameraInfluence'
        local str2 = 'ShiftGunInfluence'
        local str3 = 'ShiftCameraInfluence'
        local str4 = 'RaiseInfluence'
        local str5 = 'KickUpSpeed'
        
        for i, v in pairs(getgc(true)) do
            if type(v) == 'table' and rawget(v, str) then
                setreadonly(v, false)
                v[str] = 0
                v[str2] = 0
                v[str3] = 0
                v[str4] = 0
                v[str5] = 10000000
            end
        end
    end)

    Aim:Button("Fast Fire Rate", function() -- https://github.com/Blissful4992/ROBLOX/blob/main/Apocalypse%20Rising/fast%20fire.lua
        local str = 'FireRate'
        
        for i, v in pairs(getgc(true)) do
            if type(v) == 'table' and rawget(v, str) then
                setreadonly(v, false)
                v[str] = 1500
            end
        end
    end)

    local Speed = 1

    Aim:Toggle("TP Walk", false, function(v)

        if v == true then
            HbTP = game:GetService("RunService").Heartbeat:Connect(function()
                if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid and game:GetService("Players").LocalPlayer.Character.Humanoid.Parent then
                    if game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
                        game:GetService("Players").LocalPlayer.Character:TranslateBy(game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection * Speed / 10)
                    end
                end
            end)
        elseif not v and HbTP then
            HbTP:Disconnect()
            HbTP = nil
        end
    end)

    Aim:Slider("TP Speed", 0.5, 200, Speed, function(v)
        Speed = v
    end)


    local ClockTime = 12

    local function CheckStaff(Player)
        pcall(function()
            if Player:GetRankInGroup(1066925) > 1 or Player:GetRankInGroup(9630142) > 0 then
                SGui:SetCore("SendNotification", {Title = "FemWare"; Text = "Staff: " .. Player.Name; Icon = "rbxassetid://9327507243"; Duration = 120 })
            end
        end)
    end
    
    game:GetService("Players").PlayerAdded:Connect(function(Player)
        CheckStaff(Player)
    end)

    Cli:Toggle("Staff Detecter", true, function(v)
        if v == true then
            for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                CheckStaff(v)
            end
        end    
    end)

    Cli:Toggle("Ambient", false, function(v)
        if v then
            RAmbiance = game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
                if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) then
                    game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                end
            end)
        elseif not v and RAmbiance then
            RAmbiance:Disconnect()
            RAmbiance = nil
        end
    end)

    Cli:Toggle("ClockTime", false, function(v)
        if v then
            RTime = game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
                if game:GetService("Lighting").ClockTime ~= ClockTime then
                    game:GetService("Lighting").ClockTime = ClockTime
                end
            end)
        elseif not v and RTime then
            RTime:Disconnect()
            RTime = nil
        end
    end)

    Cli:Slider("ClockTime", 0, 24, ClockTime, function(v)
        ClockTime = v
    end)

    Vis:Button("Unnamed ESP", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua"))()
    end)

    Vis:Toggle("All ESP", ESP.Enabled, function(v)
        ESP:Toggle(v)
        ESP.Enabled = v
    end)

    Vis:Toggle("Boxes", ESP.Boxes, function(v)
        ESP.Boxes = v
    end)

    Vis:Toggle("FaceCamera [Boxes Faces Towards Camera]", ESP.FaceCamera, function(v)
        ESP.FaceCamera = v
    end)

    Vis:Toggle("Names", ESP.Names, function(v)
        ESP.Names = v
    end)

    Vis:Toggle("Highlights", ESP.Highlights, function(v)
        ESP.Highlights = v
    end)

    Vis:Toggle("Tools", ESP.Tools, function(v)
        ESP.Tools = v
    end)

    Vis:Slider("Distance [0 = Infinite]", 0, 5000, ESP.Distance, function(v)
        ESP.Distance = v
    end)
    
    Vis:Dropdown("Highlight Type", {"Occluded", "AlwaysOnTop"}, function(v)
        if v == "Occluded" then
            ESP.HighlightType = Enum.HighlightDepthMode.Occluded
        elseif v == "AlwaysOnTop" then
            ESP.HighlightType = Enum.HighlightDepthMode.AlwaysOnTop
        end
    end)

    -- Vis:Button("Clear Highlights", function()
    --     for _, i in pairs(game:GetService("CoreGui"):GetChildren()) do
    --         if i:IsA("Highlight") then
    --             i:Destroy()
    --         end
    --     end
    -- end)

    Vis:Toggle("ESP Rainbow", false, function(v)
        if v then
            Rrgb = game:GetService("RunService").Heartbeat:Connect(function()
                local hue = tick() % 15 / 15
             local color = Color3.fromHSV(hue, 1, 1)
                ESP.Color = color
            end)
        elseif not v and Rrgb then
            Rrgb:Disconnect()
            Rrgb = nil
        end
    end)

    Vis:Colorpicker("ESP Color", ESP.Color, function(v)
        ESP.Color = v
    end)


    World:Toggle("Heli Crash ESP", ESP.Heli, function(v)

        if v == true then
            pcall(function()
                ESP.Heli = true
                for i, drop in pairs(game:GetService("Workspace").Map.Shared.Randoms:GetChildren()) do
                    if string.find(drop.Name, "Seahawk") and drop.PrimaryPart then
                        coroutine.wrap(DrawDrop)(drop)
                    end
                end
            end)
        else
            ESP.Heli = false
        end
    end)

    -- World:Toggle("Toggle Vehicles", false, function(v)
        
    --     if v then
    --     else
    --     end
    -- end)


    bnds:Bind("Open/Close GUI", Enum.KeyCode.LeftAlt, function()
        pcall(function()
            if not game:GetService("CoreGui").Discord.Enabled then
                game:GetService("CoreGui").Discord.Enabled = true
            else
                game:GetService("CoreGui").Discord.Enabled = false
            end
        end)
    end)

    bnds:Bind("ESP Bind [Panic Key]", Enum.KeyCode.B, function()
        if ESP.Enabled then
            ESP:Toggle(false)
        else
            ESP:Toggle(true)
        end
    end)
end)

if not S then
    ErrorCapture(E)
end