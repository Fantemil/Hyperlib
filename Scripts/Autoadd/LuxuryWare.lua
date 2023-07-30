local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("LuxuryWare", "DarkTheme")

local Tab = Window:NewTab("Other Scripts")
local TabSection = Tab:NewSection("Other")





TabSection:NewButton("Nyula", "go away retard", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nyulachan/nyula/main/nyulauh"))();
end)



TabSection:NewButton("Venus", "venus", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/VenusTheUI/VenusUI/main/Venus%20UI"))()
end)



TabSection:NewButton("Orbit paid ", "go away retard", function()
-- ORBIT SOURCE LEAKED BY 2017#0001 SUB TO HALAL GAMING FOR MORE LEAKS!!!!!!!!

getgenv().Settings = {
    Silent = {
        SilentToggle = "p",
        Enabled = true,
        AimPart = "HumanoidRootPart",
        Prediction = 0.1134,
        ClosestPart = true,
        HitChance = 100,
        AntiGroundshot = true,
        PredictMovement = true,
        UseAirPart = true,
        AirPart = "LowerTorso"
    },
    FOV = {
        Visible = true,
        Radius = 65,
        Filled = false,
    },
    Checks = {
        WallCheck = true,
        UnlockedOnDeath = true,
        CrewCheck = false,
    },
    AutoGunFov = {
        ["Enabled"] = (true), -- // Gun Fov 
        ["Double-Barrel SG"] = {["FOV"] = 34}, -- // Db
        ["Revolver"] = {["FOV"] = 65}, -- // Rev
        ["SMG"] = {["FOV"] = 23}, -- // Smg
        ["Shotgun"] = {["FOV"] = 20}, -- // Shotgun
        ["Rifle"] = {["FOV"] = 26}, -- // Rifle
        ["TacticalShotgun"] = {["FOV"] = 430}, -- // Rev
        ["Silencer"] = {["FOV"] = 170}, -- // Smg
        ["AK47"] = {["FOV"] = 130}, -- // Shotgun
        ["P90"] = {["FOV"] = 120}, -- // Rifle
        ["Glock"] = {["FOV"] = 120}, -- // Rifle
        ["RPG"] = {["FOV"] = 120}, --// Rpg 
        ["AR"] = {["FOV"] = 120} 
    },
    AimAssist = {
        Enable = true,
        ToggleKey = true,
        UseKeyBoardKey = true,
        KeyBoardKey = Enum.KeyCode.C,
        ThirdPerson = true,
        FirstPerson = true,
        AutoPingSets = true,
        UseCircleRadius = false,
        DisableOutSideCircle = false,
        UseShake = true,
        ShakePower = 100,
        CheckForWalls = true,
    },
    Check = {
        CheckIfKo = true,
        DisableOnPlayerDeath = true,
    },
    Prediction = {
        PredictMovement = true,
        PredictionVelocity = 0.13,
    },
    Smooth = {
        Smoothness = true,
        SmoothnessAmount = 0.0150,
    },
    Part = {
        AimPart = "Head",
        CheckIfJumpedAimPart = "HumanoidRootPart",
        CheckIfJumped = true,
        GetClosestPart = true,
    },
    Resolver = {---- this is for camlock
        UnderGround = true,
        DetectDesync = true,
    },
    Visual = {
        Fov = false,
        FovTransparency = 1,
        FovThickness = 1,
        FovColor = Color3.fromRGB(255, 185, 255),
        FovRadius = 360,
    },
    Spoofer = {
        MemorySpoofer = true,
        MemoryTabColor = Color3.fromRGB(211, 88, 33),
        MemoryMost = 85000,
        MemoryLeast = 80000,
        
  
    },
    }

  if not LPH_OBFUSCATED then
    LPH_NO_VIRTUALIZE = function(...)
        return (...)
    end
    LPH_NO_VIRTUALIZE = function(...)
        return (...)
    end
  end
  
  LPH_NO_VIRTUALIZE(
    function()
        local Players, Client, Mouse, RS, Camera, r =
            game:GetService("Players"),
            game:GetService("Players").LocalPlayer,
            game:GetService("Players").LocalPlayer:GetMouse(),
            game:GetService("RunService"),
            game.Workspace.CurrentCamera,
            math.random
  local Circle = Drawing.new("Circle")
  Circle.Color = Color3.new(180, 180, 255)
  Circle.Transparency = 0.5
  Circle.Thickness = 1
  
  local Prey = nil
  local Plr  = nil
  local OldSilentAimPart = getgenv().Settings.Silent.AirPart
  
  local Vec2 = function(property)
  return Vector2.new(property.X, property.Y + (game:GetService("GuiService"):GetGuiInset().Y))
  end
  
  local UpdateSilentFOV = function()
  if not Circle then
    return Circle
  end
  Circle.Visible = getgenv().Settings.FOV["Visible"]
  Circle.Radius = getgenv().Settings.FOV["Radius"] * 3.05
  Circle.Filled = getgenv().Settings.FOV["Filled"]
  Circle.Position = Vec2(Mouse)
  local chance = CalcChance(Settings.Silent.HitChance)
  if not chance then
    return nil
  end
  
  
  
  return Circle
  end
  
  
  game.RunService.RenderStepped:Connect(
  function()
    UpdateSilentFOV()
  end
  )
  
  local WallCheck = function(destination, ignore)
  if getgenv().Settings.Checks.WallCheck then
    local Origin = Camera.CFrame.p
    local CheckRay = Ray.new(Origin, destination - Origin)
    local Hit = game.workspace:FindPartOnRayWithIgnoreList(CheckRay, ignore)
    return Hit == nil
  else
    return true
  end
  end
  
  if getgenv().Settings.Checks.CrewCheck == true then
    while true do
        local newPlayer = game.Players.PlayerAdded:wait()
        if player:IsInGroup(newPlayer.Group) then
            table.insert(Ignored.Players, newPlayer)
        end
    end
  end
  
  GetClosestToMouse = function()
  local Target, Closest = nil, 1 / 0
  
  for _, v in pairs(Players:GetPlayers()) do
    if (v.Character and v ~= Client and v.Character:FindFirstChild("HumanoidRootPart")) then
        local Position, OnScreen = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
        local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
  
        if
            (Circle.Radius > Distance and Distance < Closest and OnScreen and
                WallCheck(v.Character.HumanoidRootPart.Position, {Client, v.Character}))
         then
            Closest = Distance
            Target = v
        end
    end
  end
  return Target
  end
  
  function TargetChecks(Target)
  if getgenv().Settings.Checks.UnlockedOnDeath == true and Target.Character then
    return Target.Character.BodyEffects["K.O"].Value and true or false
  end
  return false
  end
  
  function PredictionictTargets(Target, Value)
  return Target.Character[getgenv().Settings.Silent.AimPart].CFrame +
    (Target.Character.Humanoid.MoveDirection * Value * 16)
  end
  
  
  local WTS = function(Object)
  local ObjectVector = Camera:WorldToScreenPoint(Object.Position)
  return Vector2.new(ObjectVector.X, ObjectVector.Y)
  end
  
  local IsOnScreen = function(Object)
  local IsOnScreen = Camera:WorldToScreenPoint(Object.Position)
  return IsOnScreen
  end
  
  local FilterObjs = function(Object)
  if string.find(Object.Name, "Gun") then
    return
  end
  if table.find({"Part", "MeshPart", "BasePart"}, Object.ClassName) then
    return true
  end
  end
  
  Mouse.KeyDown:Connect(
  function(Key)
    if (Key == getgenv().Settings.Silent.SilentToggle:lower()) then
        if getgenv().Settings.Silent.Enabled == true then
            getgenv().Settings.Silent.Enabled = false
        else
            getgenv().Settings.Silent.Enabled = true
        end
    end
  end
  )
  RS.Heartbeat:Connect(function()
  if getgenv().Settings.Silent.Enabled then
      if Prey and Prey.Character and Prey.Character:WaitForChild(getgenv().Settings.Silent.AimPart) then
            if getgenv().Settings.Resolve.Desync == true and Prey.Character:WaitForChild("HumanoidRootPart").Velocity.magnitude > getgenv().Settings.Resolve.Desync then            
                pcall(function()
                    local TargetVel = Prey.Character[getgenv().Settings.Silent.AimPart]
                    TargetVel.Velocity = Vector3.new(0.36, 0.21, 0.34)
                    TargetVel.AssemblyLinearVelocity = Vector3.new(0.36, 0.21, 0.34)
                end)
            end
            if getgenv().Settings.Silent.AntiGroundShots == true and Prey.Character:FindFirstChild("Humanoid") == Enum.HumanoidStateType.Freefall then
                pcall(function()
                    local TargetVelv5 = Prey.Character[getgenv().Settings.Silent.AimPart]
                    TargetVelv5.Velocity = Vector3.new(TargetVelv5.Velocity.X, (TargetVelv5.Velocity.Y * 0.2), TargetVelv5.Velocity.Z)
                    TargetVelv5.AssemblyLinearVelocity = Vector3.new(TargetVelv5.Velocity.X, (TargetVelv5.Velocity.Y * 0.2), TargetVelv5.Velocity.Z)
                end)
            end
            if getgenv().Settings.Resolve.UnderGround == true then            
                pcall(function()
                    local TargetVelv2 = Prey.Character[getgenv().Settings.Silent.AimPart]
                    TargetVelv2.Velocity = Vector3.new(TargetVelv2.Velocity.X, 0, TargetVelv2.Velocity.Z)
                    TargetVelv2.AssemblyLinearVelocity = Vector3.new(TargetVelv2.Velocity.X, 0, TargetVelv2.Velocity.Z)
                end)
            end
            if getgenv().Settings.Resolve.SkyAA == true and AimlockTarget and AimlockTarget.Character and
            AimlockTarget.Character:WaitForChild("HumanoidRootPart").Velocity.magnitude >
                getgenv().Settings.Resolve.SkyAA
     then
        pcall(
            function()
                local TargetVel = AimlockTarget.Character[getgenv().Settings.Part.AimPart]
                TargetVel.Velocity = Vec3(0.36, 0.21, 0.34)
                TargetVel.AssemblyLinearVelocity = Vec3(0.36, 0.21, 0.34)
            end
        )
    end
            if getgenv().Settings.Silent.UseAirPart == true and Prey.Character:FindFirstChild("Humanoid") then
                if Prey.Character.Humanoid.FloorMaterial == Enum.Material.Air and Prey.Character.Humanoid.Jump == true then
                    getgenv().Settings.Silent.Part = getgenv().Settings.Silent.AirPart
                else
                    getgenv().Settings.Silent.Part = OldSilentAimPart
                end
            end
      end
  end
    if getgenv().Settings.CamLock.Enabled == true then
        if getgenv().Settings.CamLock.DesyncRES == true and Plr and Plr.Character and Plr.Character:WaitForChild(getgenv().Settings.CamLock.AimPart) and Plr.Character:WaitForChild("HumanoidRootPart").Velocity.magnitude > getgenv().Settings.CamLock.DesyncRES then
            pcall(function()
                local TargetVelv3 = Plr.Character[getgenv().Settings.CamLock.AimPart]
                TargetVelv3.Velocity = Vector3.new(0, 0, 0)
                TargetVelv3.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
            end)
        end
        if getgenv().Settings.CamLock.UnderGroundRES == true and Plr and Plr.Character and Plr.Character:WaitForChild(getgenv().Settings.CamLock.AimPart)then
            pcall(function()
                local TargetVelv4 = Plr.Character[getgenv().Settings.CamLock.AimPart]
                TargetVelv4.Velocity = Vector3.new(TargetVelv4.Velocity.X, 0, TargetVelv4.Velocity.Z)
                TargetVelv4.AssemblyLinearVelocity = Vector3.new(TargetVelv4.Velocity.X, 0, TargetVelv4.Velocity.Z)
            end)
        end
    end
  end)
  
  RS.RenderStepped:Connect(
  function()
    if prey then
        if prey ~= nil and getgenv().Settings.Silent.Enabled and getgenv().Settings.Silent.ClosestPart == true then
            getgenv().Settings.Silent["AimPart"] = tostring(GetClosestBodyPart(prey.Character))
        end
    end
  end
  )
  
  
  game:GetService("CorePackages").Packages:Destroy()
  
  
  
  local grmt = getrawmetatable(game)
  local index = grmt.__index
  local properties = {
  "Hit" -- Ill Add more Mouse properties soon,
  }
  setreadonly(grmt, false)
  
  grmt.__index =
  newcclosure(
  function(self, v)
    if Mouse and (table.find(properties, v)) then
        prey = GetClosestToMouse()
        if prey ~= nil and getgenv().Settings.Silent.Enabled and not TargetChecks(prey) then
            local endpoint = PredictionictTargets(prey, getgenv().Settings.Silent.Prediction)
  
            return (table.find(properties, tostring(v)) and endpoint)
        end
    end
    return index(self, v)
  end
  )
  
  
  
  local Script = {Functions = {}}
    Script.Functions.getToolName = function(name)
        local split = string.split(string.split(name, "[")[2], "]")[1]
        return split
    end
    Script.Functions.getEquippedWeaponName = function()
        if (Client.Character) and Client.Character:FindFirstChildWhichIsA("Tool") then
           local Tool =  Client.Character:FindFirstChildWhichIsA("Tool")
           if string.find(Tool.Name, "%[") and string.find(Tool.Name, "%]") and not string.find(Tool.Name, "Wallet") and not string.find(Tool.Name, "Phone") then
              return Script.Functions.getToolName(Tool.Name)
           end
        end
        return nil
    end
    RS.RenderStepped:Connect(function()
    if Script.Functions.getEquippedWeaponName() ~= nil then
        local WeaponSettings = getgenv().Settings.AutoGunFov[Script.Functions.getEquippedWeaponName()]
        if WeaponSettings ~= nil and getgenv().Settings.AutoGunFov.Enabled == true then
            getgenv().Settings.FOV.Radius = WeaponSettings.FOV
        else
            getgenv().Settings.FOV.Radius = getgenv().Settings.FOV.Radius
        end
    end
  end)
  
  -- // Locals
  
  local Players, Uis, RService, Inset, CurrentCamera = 
  game:GetService("Players"), 
  game:GetService("UserInputService"), 
  game:GetService("RunService"),
  game:GetService("GuiService"):GetGuiInset().Y,
  game:GetService("Workspace").CurrentCamera
  
  local Client = Players.LocalPlayer;
  
  local Mouse, Camera = Client:GetMouse(), workspace.CurrentCamera
  
  local Circle = Drawing.new("Circle")
  
  local CF, RNew, Vec3, Vec2 = CFrame.new, Ray.new, Vector3.new, Vector2.new
  
  local OldAimPart = getgenv().Settings.Part.AimPart
  
  local AimlockTarget, MousePressed, CanNotify = nil, false, false
  
  getgenv().UpdateFOV = function()
    if (not Circle) then
        return (Circle)
    end
    Circle.Color = Settings.Visual.FovColor
    Circle.Visible = Settings.Visual.Fov
    Circle.Radius = Settings.Visual.FovRadius
    Circle.Thickness = Settings.Visual.FovThickness
    Circle.Position = Vec2(Mouse.X, Mouse.Y + Inset)
    return (Circle)
  end
  
  RService.Heartbeat:Connect(UpdateFOV)
  
  -- // Functions
  
  getgenv().WallCheck = function(destination, ignore)
    local Origin = Camera.CFrame.p
    local CheckRay = RNew(Origin, destination - Origin)
    local Hit = game.workspace:FindPartOnRayWithIgnoreList(CheckRay, ignore)
    return Hit == nil
  end
  
  getgenv().WTS = function(Object)
    local ObjectVector = Camera:WorldToScreenPoint(Object.Position)
    return Vec2(ObjectVector.X, ObjectVector.Y)
  end
  
  getgenv().IsOnScreen = function(Object)
    local IsOnScreen = Camera:WorldToScreenPoint(Object.Position)
    return IsOnScreen
  end
  
  getgenv().FilterObjs = function(Object)
    if string.find(Object.Name, "Gun") then
        return
    end
    if table.find({"Part", "MeshPart", "BasePart"}, Object.ClassName) then
        return true
    end
  end
  
  getgenv().GetClosestBodyPart = function(character)
    local ClosestDistance = 1 / 0
    local BodyPart = nil
    if (character and character:GetChildren()) then
        for _, x in next, character:GetChildren() do
            if FilterObjs(x) and IsOnScreen(x) then
                local Distance = (WTS(x) - Vec2(Mouse.X, Mouse.Y)).Magnitude
                if (Circle.Radius > Distance and Distance < ClosestDistance) then
                    ClosestDistance = Distance
                    BodyPart = x
                end
            end
        end
    end
    return BodyPart
  end
  
  getgenv().WorldToViewportPoint = function(P)
    return Camera:WorldToViewportPoint(P)
  end
  
  getgenv().WorldToScreenPoint = function(P)
    return Camera.WorldToScreenPoint(Camera, P)
  end
  
  getgenv().GetObscuringObjects = function(T)
    if T and T:FindFirstChild(getgenv().Settings.Part.AimPart) and Client and Client.Character:FindFirstChild("Head") then
        local RayPos =
            workspace:FindPartOnRay(RNew(T[getgenv().Settings.Part.AimPart].Position, Client.Character.Head.Position))
        if RayPos then
            return RayPos:IsDescendantOf(T)
        end
    end
  end
  
  getgenv().GetNearestTarget = function()
    local AimlockTarget, Closest = nil, 1 / 0
  
    for _, v in pairs(game:GetService("Players"):GetPlayers()) do
        if (v.Character and v ~= Client and v.Character:FindFirstChild("HumanoidRootPart")) then
            local Position, OnScreen = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
            local Distance = (Vec2(Position.X, Position.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude
            if Settings.AimAssist.CheckForWalls then
                if
                    (Circle.Radius > Distance and Distance < Closest and OnScreen and
                        getgenv().WallCheck(v.Character.HumanoidRootPart.Position, {Client, v.Character}))
                 then
                    Closest = Distance
                    AimlockTarget = v
                end
            elseif Settings.AimAssist.UseCircleRadius then
                if
                    (Circle.Radius > Distance and Distance < Closest and OnScreen and
                        getgenv().WallCheck(v.Character.HumanoidRootPart.Position, {Client, v.Character}))
                 then
                    Closest = Distance
                    AimlockTarget = v
                end
            else
                if (Circle.Radius > Distance and Distance < Closest and OnScreen) then
                    Closest = Distance
                    AimlockTarget = v
                end
            end
        end
    end
    return AimlockTarget
  end
  
  -- // Use KeyBoardKey Function
  
  Uis.InputBegan:connect(
    function(input)
        if
            input.KeyCode == Settings.AimAssist.KeyBoardKey and Settings.AimAssist.UseKeyBoardKey == true and
                getgenv().Settings.AimAssist.Enable == true and
                AimlockTarget == nil and
                getgenv().Settings.AimAssist.HoldKey == true
         then
            pcall(
                function()
                    MousePressed = true
                    AimlockTarget = GetNearestTarget()
                end
            )
        end
    end
  )
  
  Uis.InputBegan:Connect(
    function(keyinput, stupid)
        if
            keyinput.KeyCode == Settings.AimAssist.KeyBoardKey and Settings.AimAssist.UseKeyBoardKey == true and
                getgenv().Settings.AimAssist.Enable == true and
                AimlockTarget == nil and
                getgenv().Settings.AimAssist.ToggleKey == true
         then
            pcall(
                function()
                    MousePressed = true
                    AimlockTarget = GetNearestTarget()
                end
            )
        elseif
            keyinput.KeyCode == Settings.AimAssist.KeyBoardKey and Settings.AimAssist.UseKeyBoardKey == true and
                getgenv().Settings.AimAssist.Enable == true and
                AimlockTarget ~= nil
         then
            AimlockTarget = nil
            MousePressed = false
        end
    end
  )
  
  -- // AimAssist Functions. RunService HeartBeat.
  
  task.spawn(
    function()
        while task.wait() do
            if MousePressed == true and getgenv().Settings.AimAssist.Enable == true then
                if AimlockTarget and AimlockTarget.Character then
                    if getgenv().Settings.Part.GetClosestPart == true then
                        getgenv().Settings.Part.AimPart = tostring(GetClosestBodyPart(AimlockTarget.Character))
                    end
                end
                if getgenv().Settings.AimAssist.DisableOutSideCircle == true and AimlockTarget and AimlockTarget.Character then
                    if
                        Circle.Radius <
                            (Vec2(
                                Camera:WorldToScreenPoint(AimlockTarget.Character.HumanoidRootPart.Position).X,
                                Camera:WorldToScreenPoint(AimlockTarget.Character.HumanoidRootPart.Position).Y
                            ) - Vec2(Mouse.X, Mouse.Y)).Magnitude
                     then
                        AimlockTarget = nil
                    end
                end
            end
        end
    end
  )
  
  RService.Heartbeat:Connect(
    function()
        if getgenv().Settings.AimAssist.Enable == true and MousePressed == true then
            if getgenv().Settings.AimAssist.UseShake == true and AimlockTarget and AimlockTarget.Character then
                pcall(
                    function()
                        local TargetVelv1 = AimlockTarget.Character[getgenv().Settings.Part.AimPart]
                        TargetVelv1.Velocity =
                            Vec3(TargetVelv1.Velocity.X, TargetVelv1.Velocity.Y, TargetVelv1.Velocity.Z) +
                            Vec3(
                                math.random(-getgenv().Settings.AimAssist.ShakePower, getgenv().Settings.AimAssist.ShakePower),
                                math.random(-getgenv().Settings.AimAssist.ShakePower, getgenv().Settings.AimAssist.ShakePower),
                                math.random(-getgenv().Settings.AimAssist.ShakePower, getgenv().Settings.AimAssist.ShakePower)
                            ) *
                                0.1
                        TargetVelv1.AssemblyLinearVelocity =
                            Vec3(TargetVelv1.Velocity.X, TargetVelv1.Velocity.Y, TargetVelv1.Velocity.Z) +
                            Vec3(
                                math.random(-getgenv().Settings.AimAssist.ShakePower, getgenv().Settings.AimAssist.ShakePower),
                                math.random(-getgenv().Settings.AimAssist.ShakePower, getgenv().Settings.AimAssist.ShakePower),
                                math.random(-getgenv().Settings.AimAssist.ShakePower, getgenv().Settings.AimAssist.ShakePower)
                            ) *
                                0.1
                    end
                )
            end
            if getgenv().Settings.Resolver.UnderGround == true and AimlockTarget and AimlockTarget.Character then
                pcall(
                    function()
                        local TargetVelv2 = AimlockTarget.Character[getgenv().Settings.Part.AimPart]
                        TargetVelv2.Velocity = Vec3(TargetVelv2.Velocity.X, 0, TargetVelv2.Velocity.Z)
                        TargetVelv2.AssemblyLinearVelocity = Vec3(TargetVelv2.Velocity.X, 0, TargetVelv2.Velocity.Z)
                    end
                )
            end
            if
                getgenv().Settings.Resolver.Desync == true and AimlockTarget and AimlockTarget.Character and
                    AimlockTarget.Character:WaitForChild("HumanoidRootPart").Velocity.magnitude >
                        getgenv().Settings.Resolver.Detection
             then
                pcall(
                    function()
                        local TargetVel = AimlockTarget.Character[getgenv().Settings.Part.AimPart]
                        TargetVel.Velocity = Vec3(0, 0, 0)
                        TargetVel.AssemblyLinearVelocity = Vec3(0, 0, 0)
                    end
                )
            end
            if getgenv().Settings.AimAssist.ThirdPerson == true and getgenv().Settings.AimAssist.FirstPerson == true then
                if
                    (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 or
                        (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1
                 then
                    CanNotify = true
                else
                    CanNotify = false
                end
            elseif getgenv().Settings.AimAssist.ThirdPerson == true and getgenv().Settings.AimAssist.FirstPerson == false then
                if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 then
                    CanNotify = true
                else
                    CanNotify = false
                end
            elseif getgenv().Settings.AimAssist.ThirdPerson == false and getgenv().Settings.AimAssist.FirstPerson == true then
                if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1 then
                    CanNotify = true
                else
                    CanNotify = false
                end
            end
            
            if getgenv().Settings.AimAssist.AutoPingSets == true and getgenv().Settings.Prediction.PredictionVelocity then
                local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
                local split = string.split(pingvalue, "(")
                local ping = tonumber(split[1])
                if ping > 190 then
                    getgenv().Settings.Prediction.PredictionVelocity = 0.206547
                elseif ping > 180 then
                    getgenv().Settings.Prediction.PredictionVelocity = 0.19284
                elseif ping > 170 then
                    getgenv().Settings.Prediction.PredictionVelocity = 0.1923111
                elseif ping > 160 then
                    getgenv().Settings.Prediction.PredictionVelocity = 0.1823111
                elseif ping > 150 then
                    getgenv().Settings.Prediction.PredictionVelocity = 0.171
                elseif ping > 140 then
                    getgenv().Settings.Prediction.PredictionVelocity = 0.165773
                elseif ping > 130 then
                    getgenv().Settings.Prediction.PredictionVelocity = 0.1223333
                elseif ping > 120 then
                    getgenv().Settings.Prediction.PredictionVelocity = 0.143765
                elseif ping > 110 then
                    getgenv().Settings.Prediction.PredictionVelocity = 0.1455
                elseif ping > 100 then
                    getgenv().Settings.Prediction.PredictionVelocity = 0.130340
                elseif ping > 90 then
                    getgenv().Settings.Prediction.PredictionVelocity = 0.136
                elseif ping > 80 then
                    getgenv().Settings.Prediction.PredictionVelocity = 0.1347
                elseif ping > 70 then
                    getgenv().Settings.Prediction.PredictionVelocity = 0.119
                elseif ping > 60 then
                    getgenv().Settings.Prediction.PredictionVelocity = 0.12731
                elseif ping > 50 then
                    getgenv().Settings.Prediction.PredictionVelocity = 0.127668
                elseif ping > 40 then
                    getgenv().Settings.Prediction.PredictionVelocity = 0.125
                elseif ping > 30 then
                    getgenv().Settings.Prediction.PredictionVelocity = 0.11
                elseif ping > 20 then
                    getgenv().Settings.Prediction.PredictionVelocity = 0.12588
                elseif ping > 10 then
                    getgenv().Settings.Prediction.PredictionVelocity = 0.9
                end
            end
            if getgenv().Settings.Check.CheckIfKo == true and AimlockTarget and AimlockTarget.Character then
                local KOd = AimlockTarget.Character:WaitForChild("BodyEffects")["K.O"].Value
                local Grabbed = AimlockTarget.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
                if AimlockTarget.Character.Humanoid.health < 1 or KOd or Grabbed then
                    if MousePressed == true then
                        AimlockTarget = nil
                        MousePressed = false
                    end
                end
            end
            if
                getgenv().Settings.Check.DisableOnTargetDeath == true and AimlockTarget and
                    AimlockTarget.Character:FindFirstChild("Humanoid")
             then
                if AimlockTarget.Character.Humanoid.health < 1 then
                    if MousePressed == true then
                        AimlockTarget = nil
                        MousePressed = false
                    end
                end
            end
            if
                getgenv().Settings.Check.DisableOnPlayerDeath == true and Client.Character and
                    Client.Character:FindFirstChild("Humanoid") and
                    Client.Character.Humanoid.health < 1
             then
                if MousePressed == true then
                    AimlockTarget = nil
                    MousePressed = false
                end
            end
            if getgenv().Settings.Part.CheckIfJumped == true and getgenv().Settings.Part.GetClosestPart == false then
                if AimlockTarget and AimlockTarget.Character then
                    if AimlockTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                        getgenv().Settings.Part.AimPart = getgenv().Settings.Part.CheckIfJumpedAimPart
                    else
                        getgenv().Settings.Part.AimPart = OldAimPart
                    end
                end
            end
            if
                AimlockTarget and AimlockTarget.Character and
                    AimlockTarget.Character:FindFirstChild(getgenv().Settings.Part.AimPart)
             then
                if getgenv().Settings.AimAssist.FirstPerson == true then
                    if CanNotify == true then
                        if getgenv().Settings.Prediction.PredictMovement == true then
                            if getgenv().Settings.Smooth.Smoothness == true then
                                local AimAssist =
                                    CF(
                                    Camera.CFrame.p,
                                    AimlockTarget.Character[getgenv().Settings.Part.AimPart].Position +
                                        AimlockTarget.Character.Humanoid.MoveDirection * getgenv().Settings.Prediction.PredictionVelocity * 16
                                )
  
                                Camera.CFrame =
                                    Camera.CFrame:Lerp(
                                    AimAssist,
                                    getgenv().Settings.Smooth.SmoothnessAmount,
                                    Enum.EasingStyle.Elastic,
                                    Enum.EasingDirection.InOut
                                )
                            else
                                Camera.CFrame =
                                    CF(
                                    Camera.CFrame.p,
                                    AimlockTarget.Character[getgenv().Settings.Part.AimPart].CFrame +
                                        AimlockTarget.Character.Humanoid.MoveDirection * getgenv().Settings.Prediction.PredictionVelocity * 16 + Vector3
                                )
                            end
                        elseif getgenv().Settings.Prediction.PredictMovement == false then
                            if getgenv().Settings.Smooth.Smoothness == true then
                                local AimAssist =
                                    CF(
                                    Camera.CFrame.p,
                                    AimlockTarget.Character[getgenv().Settings.Part.AimPart].Position
                                )
                                Camera.CFrame =
                                    Camera.CFrame:Lerp(
                                    AimAssist,
                                    getgenv().Settings.Smooth.SmoothnessAmount
                                    
                                )
                            else
                                Camera.CFrame =
                                    CF(
                                    Camera.CFrame.p,
                                    AimlockTarget.Character[getgenv().Settings.Part.AimPart].Position
                                )
                            end
                        end
                    end
                end
            end
        end
    end
  )local PerformanceStats = game:GetService("CoreGui"):WaitForChild("RobloxGui"):WaitForChild("PerformanceStats")
  
  local MemLabel
  local color,
    color1,
    color2,
    color3,
    color4,
    color5,
    color6,
    color7,
    color8,
    color9,
    color10,
    color11,
    color12,
    color13,
    color14,
    color15,
    color16,
    color17,
    color18,
    color19
  for I, Child in next, PerformanceStats:GetChildren() do
    if Child.StatsMiniTextPanelClass.TitleLabel.Text == "Mem" then
        MemLabel = Child.StatsMiniTextPanelClass.ValueLabel
        color = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_0
        color1 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_1
        color2 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_2
        color3 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_3
        color4 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_4
        color5 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_5
        color6 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_6
        color7 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_7
        color8 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_8
        color9 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_9
        color10 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_10
        color11 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_11
        color12 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_12
        color13 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_13
        color14 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_14
        color15 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_15
        color16 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_16
        color17 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_17
        color18 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_18
        color19 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_19
        break
    end
  end
  MemLabel:GetPropertyChangedSignal("Text"):Connect(
    function()
        if Settings.Spoofer.MemorySpoofer == true then
            MemLabel.Text = math.random(Settings.Spoofer.MemoryLeast, Settings.Spoofer.MemoryMost) / 100 .. " MB"
            color.BackgroundColor3 = Settings.Spoofer.MemoryTabColor
            color1.BackgroundColor3 = Settings.Spoofer.MemoryTabColor
            color2.BackgroundColor3 = Settings.Spoofer.MemoryTabColor
            color3.BackgroundColor3 = Settings.Spoofer.MemoryTabColor
            color4.BackgroundColor3 = Settings.Spoofer.MemoryTabColor
            color5.BackgroundColor3 = Settings.Spoofer.MemoryTabColor
            color6.BackgroundColor3 = Settings.Spoofer.MemoryTabColor
            color7.BackgroundColor3 = Settings.Spoofer.MemoryTabColor
            color8.BackgroundColor3 = Settings.Spoofer.MemoryTabColor
            color9.BackgroundColor3 = Settings.Spoofer.MemoryTabColor
            color10.BackgroundColor3 = Settings.Spoofer.MemoryTabColor
            color11.BackgroundColor3 = Settings.Spoofer.MemoryTabColor
            color12.BackgroundColor3 = Settings.Spoofer.MemoryTabColor
            color13.BackgroundColor3 = Settings.Spoofer.MemoryTabColor
            color14.BackgroundColor3 = Settings.Spoofer.MemoryTabColor
            color15.BackgroundColor3 = Settings.Spoofer.MemoryTabColor
            color16.BackgroundColor3 = Settings.Spoofer.MemoryTabColor
            color17.BackgroundColor3 = Settings.Spoofer.MemoryTabColor
            color18.BackgroundColor3 = Settings.Spoofer.MemoryTabColor
            color19.BackgroundColor3 = Settings.Spoofer.MemoryTabColor
        end
  end)
  end
  )()
end)

TabSection:NewButton("Random script", "go away retard", function()
-- sub to halal gaming for more
-- // thank shquals (CHRISTIAN#1770) for this leak

local Aiming = loadstring(game:HttpGet("https://raw.githubusercontent.com/cotton12moneypooppee12/cottonv1.2345678910/main/asdad"))()
Aiming.TeamCheck(false)

local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CurrentCamera = Workspace.CurrentCamera

getgenv().DaHoodSettings = {
    SilentAim = true,
    AimLock = false,
    Prediction = 0.11243,
    AimLockKeybind = Enum.KeyCode.E,
    AUTO_PREDICTION = true
}
getgenv().DaHoodSettings = DaHoodSettings

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




RunService:BindToRenderStep("AimLock", 0, function()
    if (DaHoodSettings.AimLock and Aiming.Check() and UserInputService:IsKeyDown(DaHoodSettings.AimLockKeybind)) then
        local SelectedPart = Aiming.SelectedPart

        local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)

        CurrentCamera.CFrame = CFrame.lookAt(CurrentCamera.CFrame.Position, Hit.Position)
    end
    end)


if getgenv().DaHoodSettings.AUTO_PREDICTION == true then
    pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    split = string.split(pingvalue,'(')
    ping = tonumber(split[1])
    if ping < 360 then
        getgenv().DaHoodSettings.Prediction = 0.16537
    elseif ping < 270 then
        getgenv().DaHoodSettings.Prediction = 0.195566
    elseif ping < 260 then
        getgenv().DaHoodSettings.Prediction = 0.175566
    elseif ping < 250 then
        getgenv().DaHoodSettings.Prediction = 0.1651
    elseif ping < 240 then
        getgenv().DaHoodSettings.Prediction = 0.16780
    elseif ping < 230 then
        getgenv().DaHoodSettings.Prediction = 0.15692
    elseif ping < 220 then
        getgenv().DaHoodSettings.Prediction = 0.165566
    elseif ping < 210 then
        getgenv().DaHoodSettings.Prediction = 0.16780
    elseif ping < 200 then
        getgenv().DaHoodSettings.Prediction = 0.165566
    elseif ping < 190 then
        getgenv().DaHoodSettings.Prediction = 0.166547
    elseif ping < 180 then
        getgenv().DaHoodSettings.Prediction = 0.19284
    elseif ping < 170 then
        getgenv().DaHoodSettings.Prediction = 0.1923111 
    elseif ping < 160 then
        getgenv().DaHoodSettings.Prediction = 0.16
    elseif ping < 150 then
        getgenv().DaHoodSettings.Prediction = 0.15
    elseif ping < 140 then
        getgenv().DaHoodSettings.Prediction = 0.1223333
    elseif ping < 130 then
        getgenv().DaHoodSettings.Prediction = 0.156692
    elseif ping < 120 then
        getgenv().DaHoodSettings.Prediction = 0.143765
    elseif ping < 110 then
        getgenv().DaHoodSettings.Prediction = 0.1455
    elseif ping < 100 then
        getgenv().DaHoodSettings.Prediction = 0.130340
    elseif ping < 90 then
        getgenv().DaHoodSettings.Prediction = 0.136
    elseif ping < 80 then
        getgenv().DaHoodSettings.Prediction = 0.1347
    elseif ping < 70 then
        getgenv().DaHoodSettings.Prediction = 0.119
    elseif ping < 60 then
        getgenv().DaHoodSettings.Prediction = 0.12731
    elseif ping < 50 then
        getgenv().DaHoodSettings.Prediction = 0.127668
    elseif ping < 40 then
        getgenv().DaHoodSettings.Prediction = 0.125
    elseif ping < 30 then
        getgenv().DaHoodSettings.Prediction = 0.11
    elseif ping < 20 then
        getgenv().DaHoodSettings.Prediction = 0.12588
    elseif ping < 10 then
        getgenv().DaHoodSettings.Prediction = 0.9
    end
end
    local player = game.Players.LocalPlayer
    local mouse = player:GetMouse()
    mouse.KeyDown:Connect(function(key)
    
        if key == "]" then
                
        
        
            if DaHoodSettings.SilentAim == false then
                
            DaHoodSettings.SilentAim = true
                
            else
                    
            DaHoodSettings.SilentAim = false
        
            end
        end
    end)
    
    
    wait(2)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cotton12moneypooppee12/popopmonkey/main/useless"))()
    wait(2)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cotton12moneypooppee12/re/main/rea"))()
    
    
    getgenv().OldAimPart = "UpperTorso"
getgenv().AimPart = "UpperTorso" -- For R15 Games: {UpperTorso, LowerTorso, HumanoidRootPart, Head} | For R6 Games: {Head, Torso, HumanoidRootPart}  
    getgenv().AimlockKey = "q"
    getgenv().AimRadius = 30 -- How far away from someones character you want to lock on at
    getgenv().ThirdPerson = true 
    getgenv().FirstPerson = true
    getgenv().TeamCheck = false -- Check if Target is on your Team (True means it wont lock onto your teamates, false is vice versa) (Set it to false if there are no teams)
    getgenv().PredictMovement = true -- Predicts if they are moving in fast velocity (like jumping) so the aimbot will go a bit faster to match their speed 
    getgenv().PredictionVelocity = 7.02
    getgenv().CheckIfJumped = true
    getgenv().Smoothness = true
    getgenv().SmoothnessAmount = 0.0399

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
end)



local Woah = Window:NewTab("Features")
local WoahSection = Woah:NewSection("LuxuryWare Features")


WoahSection:NewButton("Silent-Aim", "go away retard", function()
loadstring(game:HttpGet("https://pastebin.com/raw/idHN49At", true))()


getgenv().Aiming.FOV = 50
getgenv().Aiming.FOVSides = 360
getgenv().Aiming.HitChance = 100
getgenv().Aiming.ShowFOV = true
DahoodSettings.Prediction = 0.135 --this random shit so changeit LOL
cframeSpheedhotkeyXd1 = "" -- its ass dont mind this

getgenv().Aiming.UseMoreHitparts = false
getgenv().Aiming.UseNearestCursor = true
getgenv().Aiming.AutoPrediction = true
getgenv().Aiming.KnockedCheck = true
getgenv().Aiming.GrabbedCheck = true
getgenv().Aiming.Wallcheck = true
end)

WoahSection:NewButton("Fly (X)", "go away retard", function()
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
local speed=10
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
speed=5
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
if speed>10 then
speed=5
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
speed=10
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
start()
end)

WoahSection:NewButton("Animation Packs", "go away retard", function()
-- Credit for Zackary#1011 for making animation pack/++
--and credit for ilovebee#6666 for giving animations id
 
repeat
    wait()
until game:IsLoaded() and game.Players.LocalPlayer.Character:FindFirstChild("FULLY_LOADED_CHAR") and game.Players.LocalPlayer.PlayerGui.MainScreenGui:FindFirstChild("AnimationPack") and game.Players.LocalPlayer.PlayerGui.MainScreenGui:FindFirstChild("AnimationPlusPack")
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Lean") then
    game.ReplicatedStorage.ClientAnimations.Lean:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Lay") then
    game.ReplicatedStorage.ClientAnimations.Lay:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Dance1") then
    game.ReplicatedStorage.ClientAnimations.Dance1:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Dance2") then
    game.ReplicatedStorage.ClientAnimations.Dance2:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Greet") then
    game.ReplicatedStorage.ClientAnimations.Greet:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Chest Pump") then
    game.ReplicatedStorage.ClientAnimations["Chest Pump"]:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Praying") then
    game.ReplicatedStorage.ClientAnimations.Praying:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("TheDefault") then
    game.ReplicatedStorage.ClientAnimations.TheDefault:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Sturdy") then
    game.ReplicatedStorage.ClientAnimations.Sturdy:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Rossy") then
    game.ReplicatedStorage.ClientAnimations.Rossy:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Griddy") then
    game.ReplicatedStorage.ClientAnimations.Griddy:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("TPose") then
    game.ReplicatedStorage.ClientAnimations.TPose:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("SpeedBlitz") then
    game.ReplicatedStorage.ClientAnimations.SpeedBlitz:Destroy()
end
 
local Animations = game.ReplicatedStorage.ClientAnimations
 
local LeanAnimation = Instance.new("Animation", Animations)
LeanAnimation.Name = "Lean"
LeanAnimation.AnimationId = "rbxassetid://3152375249"
 
local LayAnimation = Instance.new("Animation", Animations)
LayAnimation.Name = "Lay"
LayAnimation.AnimationId = "rbxassetid://3152378852"
 
local Dance1Animation = Instance.new("Animation", Animations)
Dance1Animation.Name = "Dance1"
Dance1Animation.AnimationId = "rbxassetid://3189773368"
 
local Dance2Animation = Instance.new("Animation", Animations)
Dance2Animation.Name = "Dance2"
Dance2Animation.AnimationId = "rbxassetid://3189776546"
 
local GreetAnimation = Instance.new("Animation", Animations)
GreetAnimation.Name = "Greet"
GreetAnimation.AnimationId = "rbxassetid://3189777795"
 
local ChestPumpAnimation = Instance.new("Animation", Animations)
ChestPumpAnimation.Name = "Chest Pump"
ChestPumpAnimation.AnimationId = "rbxassetid://3189779152"
 
local PrayingAnimation = Instance.new("Animation", Animations)
PrayingAnimation.Name = "Praying"
PrayingAnimation.AnimationId = "rbxassetid://3487719500"
 
local TheDefaultAnimation = Instance.new("Animation", Animations)
TheDefaultAnimation.Name = "TheDefault"
TheDefaultAnimation.AnimationId = "rbxassetid://11710529975" -- FIX THIS
 
local SturdyAnimation = Instance.new("Animation", Animations)
SturdyAnimation.Name = "Sturdy"
SturdyAnimation.AnimationId = "rbxassetid://11710524717"
 
local RossyAnimation = Instance.new("Animation", Animations)
RossyAnimation.Name = "Rossy"
RossyAnimation.AnimationId = "rbxassetid://11710527244"
 
local GriddyAnimation = Instance.new("Animation", Animations)
GriddyAnimation.Name = "Griddy"
GriddyAnimation.AnimationId = "rbxassetid://11710529220"
 
local TPoseAnimation = Instance.new("Animation", Animations)
TPoseAnimation.Name = "TPose"
TPoseAnimation.AnimationId = "rbxassetid://11710524200"
 
local SpeedBlitzAnimation = Instance.new("Animation", Animations)
SpeedBlitzAnimation.Name = "SpeedBlitz"
SpeedBlitzAnimation.AnimationId = "rbxassetid://11710541744"
 
function AnimationPack(Character)
    Character:WaitForChild'Humanoid'
    repeat
        wait()
    until game.Players.LocalPlayer.Character:FindFirstChild("FULLY_LOADED_CHAR") and game.Players.LocalPlayer.PlayerGui.MainScreenGui:FindFirstChild("AnimationPack") and game.Players.LocalPlayer.PlayerGui.MainScreenGui:FindFirstChild("AnimationPlusPack")
 
    local AnimationPack = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
    local AnimationPackPlus = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPlusPack
    local ScrollingFrame = AnimationPack.ScrollingFrame
    local CloseButton = AnimationPack.CloseButton
    local ScrollingFramePlus = AnimationPackPlus.ScrollingFrame
    local CloseButtonPlus = AnimationPackPlus.CloseButton
 
    local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)
 
    local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)
 
    local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)
 
    local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)
 
    local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)
 
    local ChestPump = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(ChestPumpAnimation)
 
    local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)
 
    local TheDefault = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(TheDefaultAnimation)
 
    local Sturdy = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(SturdyAnimation)
 
    local Rossy = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(RossyAnimation)
 
    local Griddy = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GriddyAnimation)
 
    local TPose = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(TPoseAnimation)
 
    local SpeedBlitz = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(SpeedBlitzAnimation)
 
    AnimationPack.Visible = true
 
    AnimationPackPlus.Visible = true
 
    ScrollingFrame.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
 
    ScrollingFramePlus.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
 
    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Lean" then
                v.Name = "LeanButton"
            end
        end
    end
 
    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Lay" then
                v.Name = "LayButton"
            end
        end
    end
 
    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Dance1" then
                v.Name = "Dance1Button"
            end
        end
    end
 
    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Dance2" then
                v.Name = "Dance2Button"
            end
        end
    end
 
    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Greet" then
                v.Name = "GreetButton"
            end
        end
    end
 
    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Chest Pump" then
                v.Name = "ChestPumpButton"
            end
        end
    end
 
    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Praying" then
                v.Name = "PrayingButton"
            end
        end
    end
 
    for i,v in pairs(ScrollingFramePlus:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "The Default" then
                v.Name = "TheDefaultButton"
            end
        end
    end
 
    for i,v in pairs(ScrollingFramePlus:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Sturdy" then
                v.Name = "SturdyButton"
            end
        end
    end
 
    for i,v in pairs(ScrollingFramePlus:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Rossy" then
                v.Name = "RossyButton"
            end
        end
    end
 
    for i,v in pairs(ScrollingFramePlus:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Griddy" then
                v.Name = "GriddyButton"
            end
        end
    end
 
    for i,v in pairs(ScrollingFramePlus:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "T Pose" then
                v.Name = "TPoseButton"
            end
        end
    end
 
    for i,v in pairs(ScrollingFramePlus:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Speed Blitz" then
                v.Name = "SpeedBlitzButton"
            end
        end
    end
 
    function Stop()
        Lean:Stop()
        Lay:Stop()
        Dance1:Stop()
        Dance2:Stop()
        Greet:Stop()
        ChestPump:Stop()
        Praying:Stop()
        TheDefault:Stop()
        Sturdy:Stop()
        Rossy:Stop()
        Griddy:Stop()
        TPose:Stop()
        SpeedBlitz:Stop()
    end
 
    --credit Zackary#1011 (again cuz someone might skid this to their script)
 
    local LeanTextButton = ScrollingFrame.LeanButton
    local LayTextButton = ScrollingFrame.LayButton
    local Dance1TextButton = ScrollingFrame.Dance1Button
    local Dance2TextButton = ScrollingFrame.Dance2Button
    local GreetTextButton = ScrollingFrame.GreetButton
    local ChestPumpTextButton = ScrollingFrame.ChestPumpButton
    local PrayingTextButton = ScrollingFrame.PrayingButton
    local TheDefaultTextButton = ScrollingFramePlus.TheDefaultButton
    local SturdyTextButton = ScrollingFramePlus.SturdyButton
    local RossyTextButton = ScrollingFramePlus.RossyButton
    local GriddyTextButton = ScrollingFramePlus.GriddyButton
    local TPoseTextButton = ScrollingFramePlus.TPoseButton
    local SpeedBlitzTextButton = ScrollingFramePlus.SpeedBlitzButton
 
    AnimationPack.MouseButton1Click:Connect(function()
        if ScrollingFrame.Visible == false then
            ScrollingFrame.Visible = true
            CloseButton.Visible = true
            AnimationPackPlus.Visible = false
        end
    end)
    AnimationPackPlus.MouseButton1Click:Connect(function()
        if ScrollingFramePlus.Visible == false then
            ScrollingFramePlus.Visible = true
            CloseButtonPlus.Visible = true
            AnimationPack.Visible = false
        end
    end)
    CloseButton.MouseButton1Click:Connect(function()
        if ScrollingFrame.Visible == true then
            ScrollingFrame.Visible = false
            CloseButton.Visible = false
            AnimationPackPlus.Visible = true
        end
    end)
    CloseButtonPlus.MouseButton1Click:Connect(function()
        if ScrollingFramePlus.Visible == true then
            ScrollingFramePlus.Visible = false
            CloseButtonPlus.Visible = false
            AnimationPack.Visible = true
        end
    end)
 
    LeanTextButton.MouseButton1Click:Connect(function()
        Stop()
        Lean:Play()
    end)
    LayTextButton.MouseButton1Click:Connect(function()
        Stop()
        Lay:Play()
    end)
    Dance1TextButton.MouseButton1Click:Connect(function()
        Stop()
        Dance1:Play()
    end)
    Dance2TextButton.MouseButton1Click:Connect(function()
        Stop()
        Dance2:Play()
    end)
    GreetTextButton.MouseButton1Click:Connect(function()
        Stop()
        Greet:Play()
    end)
    ChestPumpTextButton.MouseButton1Click:Connect(function()
        Stop()
        ChestPump:Play()
    end)
    PrayingTextButton.MouseButton1Click:Connect(function()
        Stop()
        Praying:Play()
    end)
    TheDefaultTextButton.MouseButton1Click:Connect(function()
        Stop()
        TheDefault:Play()
    end)
    SturdyTextButton.MouseButton1Click:Connect(function()
        Stop()
        Sturdy:Play()
    end)
    RossyTextButton.MouseButton1Click:Connect(function()
        Stop()
        Rossy:Play()
    end)
    GriddyTextButton.MouseButton1Click:Connect(function()
        Stop()
        Griddy:Play()
    end)
    TPoseTextButton.MouseButton1Click:Connect(function()
        Stop()
        TPose:Play()
    end)
    SpeedBlitzTextButton.MouseButton1Click:Connect(function()
        Stop()
        SpeedBlitz:Play()
    end)
 
    game:GetService("Players").LocalPlayer.Character.Humanoid.Running:Connect(function()
        Stop()
    end)
 
    game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
        Stop()
    end)
end
AnimationPack(game.Players.LocalPlayer.Character)
game.Players.LocalPlayer.CharacterAdded:Connect(AnimationPack)
end)

local Anti = Window:NewTab("Anti-Locks")
local AntiSection = Anti:NewSection("Anti-Lock")

local Lock = Window:NewTab("Locks")
local LockSection = Lock:NewSection("Lock")

LockSection:NewButton("Box-Lock", "go away retard", function()
    -- script bought by kal (private request)


--[[

KKKKKKKKK    KKKKKKK               AAA               LLLLLLLLLLL             
K:::::::K    K:::::K              A:::A              L:::::::::L             
K:::::::K    K:::::K             A:::::A             L:::::::::L             
K:::::::K   K::::::K            A:::::::A            LL:::::::LL             
KK::::::K  K:::::KKK           A:::::::::A             L:::::L               
  K:::::K K:::::K             A:::::A:::::A            L:::::L               
  K::::::K:::::K             A:::::A A:::::A          22 L:::::L               
  K:::::::::::K             A:::::A   A:::::A          L:::::L               
  K:::::::::::K            A:::::A     A:::::A         L:::::L               
  K::::::K:::::K          A:::::AAAAAAAAA:::::A        L:::::L               
  K:::::K K:::::K        A:::::::::::::::::::::A       L:::::L               
KK::::::K  K:::::KKK    A:::::AAAAAAAAAAAAA:::::A      L:::::L         LLLLLL
K:::::::K   K::::::K   A:::::A             A:::::A   LL:::::::LLLLLLLLL:::::L
K:::::::K    K:::::K  A:::::A               A:::::A  L::::::::::::::::::::::L
K:::::::K    K:::::K A:::::A                 A:::::A L::::::::::::::::::::::L
KKKKKKKKK    KKKKKKKAAAAAAA                   AAAAAAALLLLLLLLLLLLLLLLLLLLLLLL


]]


--[[


                       _            _                _             _   
                      ( )          ( )              ( )           (_ ) 
  ___ ___     _ _    _| |   __     | |_    _   _    | |/')    _ _  | | 
/' _ ` _ `\ /'_` ) /'_` | /'__`\   | '_`\ ( ) ( )   | , <   /'_` ) | | 
| ( ) ( ) |( (_| |( (_| |(  ___/   | |_) )| (_) |   | |\`\ ( (_| | | | 
(_) (_) (_)`\__,_)`\__,_)`\____)   (_,__/'`\__, |   (_) (_)`\__,_)(___)
                                          ( )_| |                      
                                          `\___/'                      
-- Moongod Modfified (Switched out metatables / airshot and Sorted things out optimzing it)
-- Was this fully made by kal? fuck no bro its literally skidded but skidded inna good way no1 
seen before so yes its good


]]

    --[[ set Values to
        true if you want it to show
        false if not
    --]]
    
    -- Configurations
    --[[
    CLose = HumanoidRootPart / 0.120689803 Predict /  0.132 Accomdation / No AIRSHOT
    Mid = HumanoidRootPart / 0.141 Predict / 0.135 Accomdation / No AIRSHOT
    Far = 121 Predict / 0.138 Accomdation / Airshot true
    
                ^ My Sets


       // -- = -- sets  -- = -- \\
      |       astro  - 0.109     |
      |       astro  - 0.115     |
      |       astro  - 0.121     |
      |       astro  - 0.135     |
      |       astro  - 0.132     |
      |       silent - 0.1325    |     
      |       silent - 0.119     |     
      |       silent - 0.112     |
      // -- = -- holy  -- = -- \\
    ]]
    

--[[
        _G.Types = {
            Ball = Enum.PartType.Ball,
            Block = Enum.PartType.Block, 
            Cylinder = Enum.PartType.Cylinder
        }
        
        --variables                 
            local Tracer = Instance.new("Part", game.Workspace)
        Tracer.Name = "gay"
        Tracer.Shape = _G.Types.Ball
        Tracer.Material = "ForceField"
        Tracer.Size = Vector3.new(7,7,7)
        game:GetService("RunService").RenderStepped:Connect(function()
        Tracer.Transparency = Options.MySlider.Value
        Tracer.Color = Options.ColorPicker.Value
        end)
        --]]
        Settings = {
            Kalslock = {
            Enabled = true,
            Key = "q",
            showdot = true,
            airshots = true,
            notifaction = true,
            pingprediction = true,
            FOV = math.huge,
            RESOVLER = true,
            Tracer = true,
            TracerColor = Color3.new(0, 255, 238),
            TracerTransparency = 0.75,
            TracerThickness = 5,
            Circles = false,
            CircleFOV = 500,
            CircleColor = Color3.new(255, 255, 255),
            CircleThickness = 2,
            CircleFilled = true,
            CircleTransparency = 0.10,
            CircleTransparencyOutline = 0,
            OutlineColor = Color3.new(255, 255, 255),
            Texts = false, 
            TextColor = Color3.new(255, 255, 255),
            TextSize = 35,
            TextInput = "made by kal",
            Hitbox = true,
            NoBulletDelay = true,
            Autoclicker = true,
            AutoclickerTime = 0.01,
            AutoclickerKey = "v",
            AnimationPack = true
        
    }
    }
    
    --[[
        Parts - / HumanoidRootPart / LowerTorso / UpperTorso / Head 
    ]]
    
            local SelectedPart = "HumanoidRootPart"
            local Prediction = true
            local PredictionValue = 0.132
            
    
    
     local AnchorCount = 0
                local MaxAnchor = 50
    
                    local CC = game:GetService"Workspace".CurrentCamera
                        local Plr;
                            local enabled = false
                                local accomidationfactor = 0.132
                    local mouse = game.Players.LocalPlayer:GetMouse()
                        
                                local Inset = game:GetService("GuiService"):GetGuiInset().Y
                    local Line = Drawing.new("Line")
                        local Text = Drawing.new("Text")
                              local Circle = Drawing.new("Circle")
                              local Circle1 = Drawing.new("Circle")
                              
                              
                               _G.Types = {
                Ball = Enum.PartType.Ball,
                Block = Enum.PartType.Block, 
                Cylinder = Enum.PartType.Cylinder
            }
                              
                              local placemarker = Instance.new("Part", game.Workspace)
                              placemarker.Shape = _G.Types.Ball
                              placemarker.Material = "ForceField"
                              placemarker.Color = Color3.new(0, 1, 1)
    
        function makemarker(Parent, Adornee, Color, Size, Size2)
            local e = Instance.new("BillboardGui", Parent)
            e.Name = "PP"
            e.Adornee = Adornee
            e.Size = UDim2.new(Size, Size2, Size, Size2)
            e.AlwaysOnTop = Settings.Kalslock.showdot
            local a = Instance.new("Frame", e)
            if Settings.Kalslock.showdot == true then
            a.Size = UDim2.new(1, 0, 1, 0)
            else
            a.Size = UDim2.new(0, 0, 0, 0)
            end
            if Settings.Kalslock.showdot == true then
            a.Transparency = 0
            a.BackgroundTransparency = 0
            else
            a.Transparency = 1
            a.BackgroundTransparency = 1
            end
            a.BackgroundColor3 = Color
            local g = Instance.new("UICorner", a)
            if Settings.Kalslock.showdot == false then
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
            local handler = makemarker(guimain, player.Character:WaitForChild(SelectedPart), Color3.fromRGB(0, 255, 229), 0.3, 3)
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
            if Settings.Kalslock.showdot == true then
            placemarker.Size = Vector3.new(11, 11, 11)
            else
            placemarker.Size = Vector3.new(0, 0, 0)
            end
            if Settings.Kalslock.Hitbox == true then
            placemarker.Transparency = 0.30
            else
            placemarker.Transparency = 1
            end
            if Settings.Kalslock.showdot then
            makemarker(placemarker, placemarker, Color3.fromRGB(0, 255, 238), 0.80, 0)
            end
        end)
    
        game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
            if k == Settings.Kalslock.Key and Settings.Kalslock.Enabled then
                if enabled == true then
                    enabled = false
                    if Settings.Kalslock.notifaction == true then
                        Plr = getClosestPlayerToCursor()
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "  Kal >3";
                        Text = "  Unlocked",
                        Icon = "http://www.roblox.com/asset/?id=5314810647",
                        Duration = 3
                    })
                end
                else
                    Plr = getClosestPlayerToCursor()
                    enabled = true
                    if Settings.Kalslock.notifaction == true then
    
                        game.StarterGui:SetCore("SendNotification", {
                            Title = "  Kal >3";
                            Text = "  Target: "..tostring(Plr.Character.Humanoid.DisplayName),
                            Icon = "http://www.roblox.com/asset/?id=8709610734",
                            Duration = 3
                        })
    
                    end
                end
            end
        end)
    
    
    
        function getClosestPlayerToCursor()
            local closestPlayer
            local shortestDistance = Settings.Kalslock.FOV
    
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
                placemarker.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position)
                                local Vector1 = CC:WorldToViewportPoint(Plr.Character.HumanoidRootPart.Position)
                Line.Color = Settings.Kalslock.TracerColor
                    Line.Transparency = Settings.Kalslock.TracerTransparency
                    Line.Thickness = Settings.Kalslock.TracerThickness
                    Line.From = Vector2.new(mouse.X, mouse.Y + Inset)
                    Line.To = Vector2.new(Vector1.X, Vector1.Y)
                    Line.Visible = Settings.Kalslock.Tracer
                    Text.Position = Vector2.new(mouse.X, mouse.Y + Inset)
                    Text.Visible = Settings.Kalslock.Texts
                    Text.Center = true
                    Text.Outline = true
                    Text.Font = 1
                    Text.Size = Settings.Kalslock.TextSize
                    Text.Color = Settings.Kalslock.TextColor
                    Text.Text = Settings.Kalslock.TextInput
                    Circle.Position = Vector2.new(mouse.X, mouse.Y + Inset)
                    Circle.Visible = Settings.Kalslock.Circles
                    Circle.Thickness = 1.5
                    Circle.Thickness = Settings.Kalslock.CircleThickness
                    Circle.Radius = Settings.Kalslock.CircleFOV
                    Circle.Color = Settings.Kalslock.CircleColor
                    Circle.Filled = Settings.Kalslock.CircleFilled
                    Circle.Transparency = Settings.Kalslock.CircleTransparency
                    Circle1.Visible = true
                    Circle1.Radius = Settings.Kalslock.CircleTransparencyOutline
                    Circle1.Position = Vector2.new(mouse.X, mouse.Y + Inset)
                    Circle1.Thickness = 5
                    Circle1.Color = Settings.Kalslock.OutlineColor
    
            else
                    Circle.Visible = false
                    Line.Visible = false
                    Text.Visible = false
                    Circle1.Visible = false
                placemarker.CFrame = CFrame.new(0, 9999, 0)
            end
            if Settings.Kalslock.pingprediction == true then
                 pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
                 split = string.split(pingvalue,'(')
                 ping = tonumber(split[1])
                if ping < 130 then
                    PredictionValue = 0.151
                elseif ping < 125 then
                    PredictionValue = 0.149
                elseif ping < 110 then
                    PredictionValue = 0.146
                elseif ping < 105 then
                    PredictionValue = 0.138
                elseif ping < 90 then
                    PredictionValue = 0.136
                elseif ping < 80 then
                    PredictionValue = 0.134
                elseif ping < 70 then
                    PredictionValue = 0.131
                elseif ping < 60 then
                    PredictionValue = 0.1229
                elseif ping < 50 then
                    PredictionValue = 0.1225
                elseif ping < 40 then
                    PredictionValue = 0.1256
                end
            end
        end)
    
        local mt = getrawmetatable(game)
        local old = mt.__namecall
        setreadonly(mt, false)
        mt.__namecall = newcclosure(function(...)
            local args = {...}
            if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" and Settings.Kalslock.Enabled and Plr.Character ~= nil then
    
                -- args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor)
                --[[
                if Settings.Kalslock.airshots == true then
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
            if Settings.Kalslock.RESOVLER == true and Plr.Character ~= nil and enabled and Settings.Kalslock.Enabled then
            if Settings.Kalslock.airshots == true and enabled and Plr.Character ~= nil then
                
            if game.Workspace.Players[Plr.Name].Humanoid:GetState() == Enum.HumanoidStateType.Freefall then -- Plr.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Freefall
                    
    
    
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
    
            SelectedPart = "LeftFoot"
    
            else
                    
    
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
    
            if Settings.Kalslock.NoBulletDelay == true then
                local FuckDelay = game:GetService("CorePackages").Packages
                FuckDelay:Destroy()
            end
    
            if Settings.Kalslock.Autoclicker == true then
                local time = Settings.Kalslock.AutoclickerTime --decrease if too slow increase if too fast
        
                click = false
                m = game.Players.LocalPlayer:GetMouse()
                m.KeyDown:connect(function(key)
                if key == Settings.Kalslock.AutoclickerKey then
                if click == true then click = false
                elseif
                click == false then click = true
                
                while click == true do 
                wait(time)
                mouse1click()
                end
                end
                end
                end)
            end
            
            if Settings.Kalslock.AnimationPack == true then
                -- Animation Pack --
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    for _, v in next, game:GetService("CoreGui"):GetChildren() do
        if (v.Name:match("Animation")) then
            v:Destroy()
        end
    end
    
    local Folder = Instance.new('Folder', game:GetService("Workspace"))
    Folder.Name = ("Animation")
    
    local LeanAnimation = Instance.new("Animation", Folder)
    LeanAnimation.Name = "LeanAnimation"
    LeanAnimation.AnimationId = "rbxassetid://3152375249"
    
    local LayAnimation = Instance.new("Animation", Folder)
    LayAnimation.Name = "LayAnimation"
    LayAnimation.AnimationId = "rbxassetid://3152378852"
    
    local Dance1Animation = Instance.new("Animation", Folder)
    Dance1Animation.Name = "Dance1Animation"
    Dance1Animation.AnimationId = "rbxassetid://3189773368"
    
    local Dance2Animation = Instance.new("Animation", Folder)
    Dance2Animation.Name = "Dance2Animation"
    Dance2Animation.AnimationId = "rbxassetid://3189776546"
    
    local GreetAnimation = Instance.new("Animation", Folder)
    GreetAnimation.Name = "GreetAnimation"
    GreetAnimation.AnimationId = "rbxassetid://3189777795"
    
    local ChestPumpAnimation = Instance.new("Animation", Folder)
    ChestPumpAnimation.Name = "ChestPumpAnimation"
    ChestPumpAnimation.AnimationId = "rbxassetid://3189779152"
    
    local PrayingAnimation = Instance.new("Animation", Folder)
    PrayingAnimation.Name = "PrayingAnimation"
    PrayingAnimation.AnimationId = "rbxassetid://3487719500"
    
    if game.PlaceId == 2788229376 then
        function AnimationPack(Character)
            Character:WaitForChild'HumanoidRootPart'
            local Animation = Instance.new("ScreenGui")
            local AnimationPack = Instance.new("TextButton")
            local CloseButton = Instance.new("TextButton")
            local ScrollingFrame = Instance.new("ScrollingFrame")
            local ChestPumpButton = Instance.new("TextButton")
            local Dance1Button = Instance.new("TextButton")
            local Dance2Button = Instance.new("TextButton")
            local LayButton = Instance.new("TextButton")
            local GreetButton = Instance.new("TextButton")
            local LeanButton = Instance.new("TextButton")
            local PrayingButton = Instance.new("TextButton")
    
            Animation.Name = "Animation"
            Animation.Parent = game.CoreGui
            Animation.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
            AnimationPack.Name = "AnimationPack"
            AnimationPack.Parent = Animation
            AnimationPack.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            AnimationPack.BorderSizePixel = 0
            AnimationPack.Position = UDim2.new(0, 0, 0.5, 0)
            AnimationPack.Size = UDim2.new(0, 100, 0, 20)
            AnimationPack.Visible = false
            AnimationPack.Font = Enum.Font.SourceSansBold
            AnimationPack.Text = "Animations"
            AnimationPack.TextColor3 = Color3.fromRGB(0, 0, 0)
            AnimationPack.TextSize = 18.000
    
            CloseButton.Name = "CloseButton"
            CloseButton.Parent = AnimationPack
            CloseButton.BackgroundColor3 = Color3.fromRGB(255, 112, 112)
            CloseButton.Position = UDim2.new(0, 0, 0, 97)
            CloseButton.Size = UDim2.new(0, 120, 0, 25)
            CloseButton.Visible = false
            CloseButton.Font = Enum.Font.SourceSansBold
            CloseButton.Text = "CLOSE"
            CloseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            CloseButton.TextSize = 30.000
    
            ScrollingFrame.Parent = AnimationPack
            ScrollingFrame.Active = true
            ScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            ScrollingFrame.BackgroundColor3 = Color3.fromRGB(102, 102, 102)
            ScrollingFrame.Position = UDim2.new(0, 60, 0, 0)
            ScrollingFrame.Size = UDim2.new(0, 120, 0, 195)
            ScrollingFrame.Visible = false
            ScrollingFrame.CanvasSize = UDim2.new(0, 0, 1, 200)
    
            ChestPumpButton.Name = "ChestPumpButton"
            ChestPumpButton.Parent = ScrollingFrame
            ChestPumpButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ChestPumpButton.Position = UDim2.new(0, 0, 0.727272749, 0)
            ChestPumpButton.Size = UDim2.new(1, 0, 0, 30)
            ChestPumpButton.Font = Enum.Font.GothamBlack
            ChestPumpButton.Text = "Chest Pump"
            ChestPumpButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            ChestPumpButton.TextSize = 12.000
            ChestPumpButton.TextWrapped = true
    
            Dance1Button.Name = "Dance1Button"
            Dance1Button.Parent = ScrollingFrame
            Dance1Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Dance1Button.Position = UDim2.new(0, 0, 0.290909111, 0)
            Dance1Button.Size = UDim2.new(1, 0, 0, 30)
            Dance1Button.Font = Enum.Font.GothamBlack
            Dance1Button.Text = "Dance1"
            Dance1Button.TextColor3 = Color3.fromRGB(0, 0, 0)
            Dance1Button.TextSize = 12.000
            Dance1Button.TextWrapped = true
    
            Dance2Button.Name = "Dance2Button"
            Dance2Button.Parent = ScrollingFrame
            Dance2Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Dance2Button.Position = UDim2.new(0, 0, 0.436363667, 0)
            Dance2Button.Size = UDim2.new(1, 0, 0, 30)
            Dance2Button.Font = Enum.Font.GothamBlack
            Dance2Button.Text = "Dance2"
            Dance2Button.TextColor3 = Color3.fromRGB(0, 0, 0)
            Dance2Button.TextSize = 12.000
            Dance2Button.TextWrapped = true
    
            LayButton.Name = "LayButton"
            LayButton.Parent = ScrollingFrame
            LayButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LayButton.Position = UDim2.new(0, 0, 0.145454556, 0)
            LayButton.Size = UDim2.new(1, 0, 0, 30)
            LayButton.Font = Enum.Font.GothamBlack
            LayButton.Text = "Lay"
            LayButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            LayButton.TextSize = 12.000
            LayButton.TextWrapped = true
    
            GreetButton.Name = "GreetButton"
            GreetButton.Parent = ScrollingFrame
            GreetButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            GreetButton.Position = UDim2.new(0, 0, 0.581818223, 0)
            GreetButton.Size = UDim2.new(1, 0, 0, 30)
            GreetButton.Font = Enum.Font.GothamBlack
            GreetButton.Text = "Greet"
            GreetButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            GreetButton.TextSize = 12.000
            GreetButton.TextWrapped = true
    
            LeanButton.Name = "LeanButton"
            LeanButton.Parent = ScrollingFrame
            LeanButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LeanButton.Size = UDim2.new(1, 0, 0, 30)
            LeanButton.Font = Enum.Font.GothamBlack
            LeanButton.Text = "Lean"
            LeanButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            LeanButton.TextSize = 12.000
            LeanButton.TextWrapped = true
    
            PrayingButton.Name = "PrayingButton"
            PrayingButton.Parent = ScrollingFrame
            PrayingButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            PrayingButton.Position = UDim2.new(5.96046448e-08, 0, 0.872727275, 0)
            PrayingButton.Size = UDim2.new(1, 0, 0, 30)
            PrayingButton.Font = Enum.Font.GothamBlack
            PrayingButton.Text = "Praying"
            PrayingButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            PrayingButton.TextSize = 12.000
            PrayingButton.TextWrapped = true
    
            wait(1)
    
            local AnimationPack = game:GetService("CoreGui").Animation.AnimationPack
            local ScrollingFrame = AnimationPack.ScrollingFrame
            local CloseButton = AnimationPack.CloseButton
    
            AnimationPack.Visible = true
    
            local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)
    
            local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)
    
            local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)
    
            local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)
    
            local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)
    
            local ChestPump = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(ChestPumpAnimation)
    
            local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)
    
            function Stop()
                Lay:Stop()
                Lean:Stop()
                Dance1:Stop()
                Dance2:Stop()
                Greet:Stop()
                ChestPump:Stop()
                Praying:Stop()
            end
    
            local LeanTextButton = ScrollingFrame.LeanButton
            local LayTextButton = ScrollingFrame.LayButton
            local Dance1TextButton = ScrollingFrame.Dance1Button
            local Dance2TextButton = ScrollingFrame.Dance2Button
            local GreetTextButton = ScrollingFrame.GreetButton
            local ChestPumpTextButton = ScrollingFrame.ChestPumpButton
            local PrayingTextButton = ScrollingFrame.PrayingButton
    
            AnimationPack.MouseButton1Click:Connect(function()
                if ScrollingFrame.Visible == false then
                    ScrollingFrame.Visible = true
                    CloseButton.Visible = true
                end
            end)
            CloseButton.MouseButton1Click:Connect(function()
                if ScrollingFrame.Visible == true then
                    ScrollingFrame.Visible = false
                    CloseButton.Visible = false
                end
            end)
            LeanTextButton.MouseButton1Click:Connect(function()
                Stop()
                Lean:Play()
            end)
            LayTextButton.MouseButton1Click:Connect(function()
                Stop()
                Lay:Play()
            end)
            Dance1TextButton.MouseButton1Click:Connect(function()
                Stop()
                Dance1:Play()
            end)
            Dance2TextButton.MouseButton1Click:Connect(function()
                Stop()
                Dance2:Play()
            end)
            GreetTextButton.MouseButton1Click:Connect(function()
                Stop()
                Greet:Play()
            end)
            ChestPumpTextButton.MouseButton1Click:Connect(function()
                Stop()
                ChestPump:Play()
            end)
            PrayingTextButton.MouseButton1Click:Connect(function()
                Stop()
                Praying:Play()
            end)
    
            game:GetService("Players").LocalPlayer.Character.Humanoid.Running:Connect(function()
                Stop()
            end)
            game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
                game.CoreGui.Animation:Destroy()
            end)
        end
        AnimationPack(game.Players.LocalPlayer.Character)
        game.Players.LocalPlayer.CharacterAdded:Connect(AnimationPack)
    end
    end
end)

AntiSection:NewButton("Anti-Lock (Z)", "go away retard", function()
    -- Z to toggle

loadstring(game:HttpGet(('https://raw.githubusercontent.com/AvianProjects/Dahood/main/AntilockerV2'),true))()
end)

LockSection:NewButton("Box-Lock V2", "go away retard", function()
-- sub for more 
--[[

  ███▄ ▄███▓  ██░ ██  ▄▄▄      ██▓       ▒██   ██▒      ██████   ██ ███▄    █   ██████ 
 ▓██▒▀█▀ ██▒▒▓██░ ██ ▒████▄   ▓██▒       ▒▒ █ █ ▒░    ▒██    ▒ ▒▓██ ██ ▀█   █ ▒██    ▒ 
 ▓██    ▓██░░▒██▀▀██ ▒██  ▀█▄ ▒██░       ░░  █   ░    ░ ▓██▄   ░▒██▓██  ▀█ ██▒░ ▓██▄   
 ▒██    ▒██  ░▓█ ░██ ░██▄▄▄▄██▒██░        ░ █ █ ▒       ▒   ██▒ ░██▓██▒  ▐▌██▒  ▒   ██▒
▒▒██▒   ░██▒ ░▓█▒░██▓ ▓█   ▓██░██████    ▒██▒ ▒██▒    ▒██████▒▒ ░██▒██░   ▓██░▒██████▒▒
░░ ▒░   ░  ░  ▒ ░░▒░▒ ▒▒   ▓▒█░ ▒░▓      ▒▒ ░ ░▓ ░    ▒ ▒▓▒ ▒ ░ ░▓ ░ ▒░   ▒ ▒ ▒ ▒▓▒ ▒ ░
░░  ░      ░  ▒ ░▒░ ░  ░   ▒▒ ░ ░ ▒      ░░   ░▒ ░    ░ ░▒  ░    ▒ ░ ░░   ░ ▒░░ ░▒  ░  
 ░      ░     ░  ░░ ░  ░   ▒    ░ ░       ░    ░      ░  ░  ░    ▒    ░   ░ ░ ░   ░  ░  
░       ░     ░  ░  ░      ░      ░       ░    ░            ░    ░          ░       ░  

]]
local configs = {
    main = {
        enabled = true,
        aimlockkey = "q",
        prediction =  0.1291293,
        aimpart = 'HumanoidRootPart', -- Head, UpperTorso, HumanoidRootPart, LowerTorso
        notifications = true
    }
}

-- box / marker settings

local boxsettings = {
    box = {
        Showbox = true,

        boxsize = Vector3.new(7, 2, 7), -- Box Size
        markercolor = Color3.fromRGB(75, 0, 130), -- Marrker Color
        markersize = UDim2.new(1, 2, 1) -- Marker Size
    }
}

-- dont mess with anything below
local box = Instance.new("Part", game.Workspace)

local Mouse = game.Players.LocalPlayer:GetMouse()

function makemarker(Parent, Adornee, Color, Size, Size2)
    local box = Instance.new("BillboardGui", Parent)
    box.Name = "Halal Gaming!"
    box.Adornee = Adornee
    box.Size = UDim2.new(Size, Size2, Size, Size2)
    box.AlwaysOnTop = true

    local a = Instance.new("Frame", box)
    a.Size = boxsettings.box.markersize
    a.BackgroundColor3 = Color

    local g = Instance.new("UICorner", a)
    g.CornerRadius = UDim.new(50, 25)
    return (box)
end

local Plr
Mouse.KeyDown:Connect(function(KeyPressed)
    if KeyPressed == (configs.main.aimlockkey) then
        if configs.main.enabled == true then
            configs.main.enabled = false
            if configs.main.notifications == true then
                Plr = FindClosestUser()
                game.StarterGui:SetCore("SendNotification", {
                    Title = "Halal Gaming",
                    Text = "Unlocked:"
                })
            end
        else
            Plr = FindClosestUser()
            configs.main.enabled = true
            if configs.main.notifications == true then
                game.StarterGui:SetCore("SendNotification", {
                    Title = "Mhal x Sins",
                    Text = "Locked On:  " .. tostring(Plr.Character.Humanoid.DisplayName)
                })
            end
        end
    end
end)

local data = game.Players:GetPlayers()
function noob(player)
    local character
    repeat
        wait()
    until player.Character
    local handler = makemarker(guimain, player.Character:WaitForChild(configs.main.aimpart),
        Color3.fromRGB(107, 184, 255), 0.10, 8)
    handler.Name = player.Name
    player.CharacterAdded:connect(function(Char)
        handler.Adornee = Char:WaitForChild("HumanoidRootPart")
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
    box.Anchored = true
    box.CanCollide = false
    box.Size = boxsettings.box.boxsize
    if boxsettings.box.Showbox == true then
        box.Transparency = 0.10
    else
        box.Transparency = 1
    end
    makemarker(box, box, boxsettings.box.markercolor, 0.40, 1)
end)

function FindClosestUser()
    local closestPlayer
    local ShortestDistance = 300

    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
            v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
            local pos = game:GetService "Workspace".CurrentCamera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) -
                                  Vector2.new(game.Players.LocalPlayer:GetMouse().X,
                    game.Players.LocalPlayer:GetMouse().Y)).magnitude
            if magnitude < ShortestDistance then
                closestPlayer = v
                ShortestDistance = magnitude
            end
        end
    end
    return closestPlayer
end

game:GetService "RunService".Stepped:connect(function()
    if configs.main.enabled and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") then
        box.CFrame = CFrame.new(Plr.Character[configs.main.aimpart].Position +
                                    (Plr.Character.UpperTorso.Velocity * configs.main.prediction))
    else
        box.CFrame = CFrame.new(0, 9999, 0)
    end
end)

repeat
    wait()
until game:IsLoaded()
local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall = newcclosure(function(...)
    local args = {...}
    if configs.main.enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
        args[3] = Plr.Character[configs.main.aimpart].Position +
                      (Plr.Character[configs.main.aimpart].Velocity * configs.main.prediction)
        return old(unpack(args))
    end
    return old(...)
end)
end)

AntiSection:NewButton("Runs.gg", "go away retard", function()
      loadstring(game:HttpGet("https://runs.gg/main/loader.lua"))()
end)

LockSection:NewButton("Thusky Dot", "go away retard", function()
local CC = game:GetService"Workspace".CurrentCamera
local Plr
local enabled = falseWD
local accomidationfactor = 0.1413
local mouse = game.Players.LocalPlayer:GetMouse()
local placemarker = Instance.new("Part", game.Workspace)

function makemarker(Parent, Adornee, Color, Size, Size2)
    local e = Instance.new("BillboardGui", Parent)
    e.Name = "PP"
    e.Adornee = Adornee
    e.Size = UDim2.new(Size, Size2, Size, Size2)
    e.AlwaysOnTop = true
    local a = Instance.new("Frame", e)
    a.Size = UDim2.new(1, 0, 1, 0)
    a.BackgroundTransparency = 0
    a.BackgroundColor3 = Color
    local g = Instance.new("UICorner", a)
    g.CornerRadius = UDim.new(50, 50)
    return(e)
end


local data = game.Players:GetPlayers()
function noob(player)
    local character
    repeat wait() until player.Character
    local handler = makemarker(guimain, player.Character:WaitForChild("HumanoidRootPart"), Color3.fromRGB(107, 184, 255), 0.3, 3)
    handler.Name = player.Name
    player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild("HumanoidRootPart") end)


    spawn(function()
        while wait() do
            if player.Character then
                TextLabel.Text = player.Name..tostring(player:WaitForChild("leaderstats").Wanted.Value).." | "..tostring(math.floor(player.Character:WaitForChild("Humanoid").Health))
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
    placemarker.Size = Vector3.new(8, 8, 8)
    placemarker.Transparency = 0.75
    makemarker(placemarker, placemarker, Color3.fromRGB(82, 112, 234), 0.40, 0)
end)    

mouse.KeyDown:Connect(function(k)
if k ~= "b" then return end
if enabled then
    enabled = false
    guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
else
    enabled = true 
    Plr = getClosestPlayerToCursor()
    guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
end    
end)

function getClosestPlayerToCursor()
    local closestPlayer
    local shortestDistance = math.huge

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

game:GetService"RunService".Stepped:connect(function()
    if enabled and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") then
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
    if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
        args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor)
        return old(unpack(args))
    end
    return old(...)
end)
end)

WoahSection:NewButton("Bring hahal tut", "go away retard", function()
getgenv().Prefix_Settings = {
    ['Spot'] = 'left', --// Left or Right ( Can be uppercase or not it doesnt matter )
    ['Prefix'] = '/' --// Your Prefix ( This goes with the Spot )
}
getgenv().Commands = {
    ['Lock'] = 'lock', --// Use this command to target someone
    ['Unlock'] = 'unlock' --// Use this command to untarget
}

repeat
    task.wait()
until game:IsLoaded()

local localPlayer = game:FindService'Players'.localPlayer
local Target
localPlayer.Chatted:connect(function(Argument)
    local Split = Argument:lower():split' '
    local function AddCommand(Command, Function)
        if Prefix_Settings.Spot:lower() == 'right' then
            if Split[1] == Command:lower()..Prefix_Settings.Prefix then
                Function()
            end
        elseif Prefix_Settings.Spot:lower() == 'left' then
            if Split[1] == Prefix_Settings.Prefix..Command:lower() then
                Function()
            end
        end
    end
    AddCommand(Commands.Unlock, function()
        if Target then
            Target = nil
        end
    end)
    for _, Player in pairs(game:FindService'Players':GetPlayers()) do
        AddCommand(Commands.Lock, function()
            if Player.Name:lower():match(Split[2]) or Player.DisplayName:lower():match(Split[2]) then
                Target = Player
            end
        end)
    end
end)
local function Bring()
    localPlayer.Character:WaitForChild'FULLY_LOADED_CHAR'
    localPlayer:FindFirstChildWhichIsA'Backpack':WaitForChild'[Crossbow]'
    localPlayer:FindFirstChildWhichIsA'Backpack'['[Crossbow]'].Activated:connect(function()
        if Target then
            workspace:WaitForChild'Arrow'
            firetouchinterest(workspace.Arrow, Target.Character.HumanoidRootPart, 0)
        end
    end)
end
Bring()
localPlayer.CharacterAdded:connect(function()
    Bring()
end)
end)