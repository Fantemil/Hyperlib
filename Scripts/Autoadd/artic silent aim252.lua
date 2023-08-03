
getgenv().Arctic = {
    SilentAim = {
        Enabled = true,
        KeybindEnabled = false,
        Keybind = "X",
        Predict = true,
        Prediction = 0.1,
        AimPart = "HumanoidRootPart",
        LegitMode = true, -- nearest point
    },
    AimAssist = {
        Enabled = false,
        Keybind = "C",
        Predict = true,
        Prediction = 0.1267,
        Smoothness = 0.4,
        Aimpart = "HumanoidRootPart",
        LegitMode = false,
        DisableOnEnemyDeath = true,
        DisableOnOwnDeath = true,
        Shake = {
            Enabled = true,
            Strength = 100
        },
    },
    FOV = {
        SilentAim = {
            ShowFOV = true,
            KeybindEnabled = true,
            Keybind = "Z",
            Filled = false,
            FOV = 18,
            NumSides = 100,
            Color = Color3.fromRGB(255, 0, 0),
            Thickness = 1,
            Transparency = 0.7
        },
        AimAssist = {
            Enabled = false,
            ShowFOV = false,
            KeybindEnabled = false,
            Keybind = "M",
            Filled = false,
            FOV = 30,
            NumSides = 100,
            Color = Color3.fromRGB(0, 0, 0),
            Thickness = 1,
            Transparency = 0.7
        }
    },
    Checks = {
        KOCheck = true,
        WallCheck = true,
        CrewCheck = false,
        FriendCheck = false,
        VelocityCheck = true
    },
    GunFOV = {
        Enabled = false,
        DoubleBarrel = 22.5,
        Revolver = 27.5,
        Shotgun = 35,
        TacticalShotgun = 35,
        Smg = 25,
        Rifle = 50,
        Silencer = 32.5,
        SilencerAR = 32.5,
        Glock = 100,
        AK47 = 25,
        AR = 42
    },
    Customize = {
        HitChance = {
            Enabled = false,
            GroundHitChance = 0,
            AirHitChance = 0
        },
        Prediction = {
            Enabled = false,
            GroundPrediction = 0,
            AirPrediction = 0
        },
        Smoothness = {
            Enabled = false,
            GroundSmoothness = 0,
            AirSmoothness = 0
        },
        Shake = {
            Enabled = false,
            GroundShake = 0,
            AirShake = 0
        }
    },
    RangeManagement = {
        Enabled = false,
        Type = "Both", 
        Close = {
            CloseDetection = 5,
            CloseFOV = 60,
            ClosePrediction = 0.121
        },
        Mid = {
            MidDetection = 15,
            MidFOV = 45,
            MidPrediction = 0.127
        },
        Far = {
            FarDetection = 25,
            FarFOV = 35,
            FarPrediction = 0.131
        },
        ReallyFar = {
            ReallyFarDetection = math.huge,
            ReallyFarFOV = 20,
            ReallyFarPrediction = 0.134
        }
    },
    Resolver = {
        Enabled = true,
        KeybindEnabled = false,
        Keybind = "K"
    },
    Chat = {
        Enabled = true, 
        FOV = ".fov",
        Prediction = ".prediction",
        HitChance = ".hitchance",
    },
    AutoPrediction = {
        ComingSoon = false,


    },
    HitSound = {
        ComingSoon = false, 


    }
}



local Players = game:GetService("Players")
local Client = game:GetService("Players").LocalPlayer
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local RunService = game:GetService("RunService")
local Camera = game:GetService("Workspace").CurrentCamera
local Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()
local SilentAimFOV = Drawing.new("Circle")
local AimAssistFOV = Drawing.new("Circle")
local SilentAimTarget
local AimAssistTarget

SilentAimFOV.Color = getgenv().Arctic.FOV.SilentAim.Color
SilentAimFOV.Thickness = getgenv().Arctic.FOV.SilentAim.Thickness
SilentAimFOV.Filled = getgenv().Arctic.FOV.SilentAim.Filled
SilentAimFOV.Transparency = getgenv().Arctic.FOV.SilentAim.Transparency
SilentAimFOV.NumSides = getgenv().Arctic.FOV.SilentAim.NumSides

AimAssistFOV.Color = getgenv().Arctic.FOV.AimAssist.Color
AimAssistFOV.Thickness = getgenv().Arctic.FOV.AimAssist.Thickness
AimAssistFOV.Filled = getgenv().Arctic.FOV.AimAssist.Filled
AimAssistFOV.Transparency = getgenv().Arctic.FOV.AimAssist.Transparency
AimAssistFOV.NumSides = getgenv().Arctic.FOV.AimAssist.NumSides

local UpdateFOV = function()
    if not SilentAimFOV and AimAssistFOV then
        return SilentAimFOV and AimAssistFOV
    end
    SilentAimFOV.Visible = getgenv().Arctic.FOV.SilentAim.ShowFOV
    SilentAimFOV.Radius = getgenv().Arctic.FOV.SilentAim.FOV * 5
    SilentAimFOV.Position = Vector2.new(Mouse.X, Mouse.Y + (game:GetService("GuiService"):GetGuiInset().Y))

    AimAssistFOV.Visible = getgenv().Arctic.FOV.AimAssist.ShowFOV
    AimAssistFOV.Radius = getgenv().Arctic.FOV.AimAssist.FOV * 5
    AimAssistFOV.Position = Vector2.new(Mouse.X, Mouse.Y + (game:GetService("GuiService"):GetGuiInset().Y))
    return SilentAimFOV and AimAssistFOV
end
RunService.Heartbeat:Connect(UpdateFOV)

local grmt = getrawmetatable(game)
local backupindex = grmt.__index
setreadonly(grmt, false)
grmt.__index = newcclosure(function(self, v)
    if (getgenv().Arctic.SilentAim.Enabled and Mouse and tostring(v) == "Hit") then
        if SilentAimTarget and SilentAimTarget.Character then
            if getgenv().Arctic.SilentAim.Predict then
                local endpoint = game.Players[tostring(SilentAimTarget)].Character[getgenv().Arctic.SilentAim.AimPart]
                                     .CFrame +
                                     (game.Players[tostring(SilentAimTarget)].Character[getgenv().Arctic.SilentAim.AimPart]
                                         .Velocity * getgenv().Arctic.SilentAim.Prediction)
                return (tostring(v) == "Hit" and endpoint)
            else
                local endpoint = game.Players[tostring(SilentAimTarget)].Character[getgenv().Arctic.SilentAim.AimPart]
                                     .CFrame
                return (tostring(v) == "Hit" and endpoint)
            end
        end
    end
    return backupindex(self, v)
end)

local WorldToScreenPoint = function(Object)
    local ObjectVector = Camera:WorldToScreenPoint(Object.Position)
    return Vector2.new(ObjectVector.X, ObjectVector.Y)
end
local IsOnScreen = function(Object)
    local IsOnScreen = Camera:WorldToScreenPoint(Object.Position)
    return IsOnScreen
end
local NoMeshPart = function(Object)
    if string.find(Object.Name, "Gun") then
        return
    end
    if table.find({"Part", "MeshPart", "BasePart"}, Object.ClassName) then
        return true
    end
end
local WallCheck = function(destination, ignore)
    local Origin = Camera.CFrame.p
    local CheckRay = Ray.new(Origin, destination - Origin)
    local Hit = game.workspace:FindPartOnRayWithIgnoreList(CheckRay, ignore)
    return Hit == nil
end
local PlayerMouseFunction = function()
    local Target, Closest = nil, 1 / 0
    for _, v in pairs(Players:GetPlayers()) do
        if getgenv().Arctic.Checks.WallCheck then
            if (v.Character and v ~= Client and v.Character:FindFirstChild("HumanoidRootPart")) then
                local Position, OnScreen = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
                local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude

                if (SilentAimFOV.Radius > Distance and Distance < Closest and OnScreen) and
                    WallCheck(v.Character.HumanoidRootPart.Position, {Client, v.Character}) then
                    Closest = Distance
                    Target = v
                end
            end
        else
            if (v.Character and v ~= Client and v.Character:FindFirstChild("HumanoidRootPart")) then
                local Position, OnScreen = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
                local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude

                if (SilentAimFOV.Radius > Distance and Distance < Closest and OnScreen) then
                    Closest = Distance
                    Target = v
                end
            end
        end
    end
    return Target
end
local PlayerMouseFunction2 = function()
    local Target, Closest = nil, AimAssistFOV.Radius * 1.27
    for _, v in pairs(Players:GetPlayers()) do
        if (v.Character and v ~= Client and v.Character:FindFirstChild("HumanoidRootPart")) then
            if getgenv().Arctic.Checks.WallCheck then
                local Position, OnScreen = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
                local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                if (Distance < Closest and OnScreen) and
                    WallCheck(v.Character.HumanoidRootPart.Position, {Client, v.Character}) then
                    Closest = Distance
                    Target = v
                end
            else
                local Position, OnScreen = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
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
local BodyPartFunction = function(character)
    local ClosestDistance = 1 / 0
    local BodyPart = nil
    if (character and character:GetChildren()) then
        for _, x in next, character:GetChildren() do
            if NoMeshPart(x) and IsOnScreen(x) then
                local Distance = (WorldToScreenPoint(x) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                if (SilentAimFOV.Radius > Distance and Distance < ClosestDistance) then
                    ClosestDistance = Distance
                    BodyPart = x
                end
            end
        end
    end
    return BodyPart
end
local BodyPartFunction2 = function(character)
    local ClosestDistance = 1 / 0
    local BodyPart = nil

    if (character and character:GetChildren()) then
        for _, x in next, character:GetChildren() do
            if NoMeshPart(x) and IsOnScreen(x) then
                local Distance = (WorldToScreenPoint(x) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                if (Distance < ClosestDistance) then
                    ClosestDistance = Distance
                    BodyPart = x
                end
            end
        end
    end
    return BodyPart
end
task.spawn(function()
    while task.wait() do
        if getgenv().Arctic.SilentAim.Enabled then
            SilentAimTarget = PlayerMouseFunction()
        end
        if AimAssistTarget then
            if getgenv().Arctic.AimAssist.Enabled and (AimAssistTarget.Character) and
                getgenv().Arctic.AimAssist.LegitMode then
                getgenv().Arctic.AimAssist.Aimpart = tostring(BodyPartFunction2(AimAssistTarget.Character))
            end
        end
        if SilentAimTarget then
            if getgenv().Arctic.SilentAim.Enabled and (SilentAimTarget.Character) and
                getgenv().Arctic.SilentAim.LegitMode then
                getgenv().Arctic.SilentAim.AimPart = tostring(BodyPartFunction(SilentAimTarget.Character))
            end
        end
    end
end)
Mouse.KeyDown:Connect(function(Key)
    if getgenv().Arctic.FOV.SilentAim.KeybindEnabled then
        if (Key == getgenv().Arctic.FOV.SilentAim.Keybind:lower()) then
            if getgenv().Arctic.FOV.SilentAim.ShowFOV == true then
                getgenv().Arctic.FOV.SilentAim.ShowFOV = false
            else
                getgenv().Arctic.FOV.SilentAim.ShowFOV = true
            end
            if getgenv().Arctic.FOV.AimAssist.KeybindEnabled then
                if (Key == getgenv().Arctic.FOV.AimAssist.Keybind:lower()) then
                    if getgenv().Arctic.FOV.AimAssist.ShowFOV == true then
                        getgenv().Arctic.FOV.AimAssist.ShowFOV = false
                    else
                        getgenv().Arctic.FOV.AimAssist.ShowFOV = true
                    end
                end
                if getgenv().Arctic.SilentAim.KeybindEnabled then
                    if (Key == getgenv().Arctic.SilentAim.Keybind:lower()) then
                        if getgenv().Arctic.SilentAim.Enabled == true then
                            getgenv().Arctic.SilentAim.Enabled = false
                        else
                            getgenv().Arctic.SilentAim.Enabled = true
                        end
                    end
                end
            end
        end
        if (Key == getgenv().Arctic.AimAssist.Keybind:lower()) then
            if getgenv().Arctic.AimAssist.Enabled == true then
                IsTargetting = not IsTargetting
                if IsTargetting then
                    AimAssistTarget = PlayerMouseFunction2()
                else
                    if AimAssistTarget ~= nil then
                        AimAssistTarget = nil
                        IsTargetting = false
                    end
                end
            end
        end
    end
    if getgenv().Arctic.Resolver.KeybindEnabled then
        if (Key == getgenv().Arctic.Resolver.Keybind:lower()) then
            if getgenv().Arctic.Resolver.Enabled == true then
                getgenv().Arctic.Resolver.Enabled = false
            else
                getgenv().Arctic.Resolver.Enabled = true
            end
        end
    end
end)
if getgenv().Arctic.Checks.CrewCheck then
    while true do
        local newPlayer = game.Players.PlayerAdded:wait()
        if player:IsInGroup(newPlayer.Group) then
            table.insert(Ignored.Players, newPlayer)
        end
    end
end
if getgenv().Arctic.Checks.FriendCheck then
    game.Players.PlayerAdded:Connect(function(SilentAimTarget)
        if Client:IsFriendsWith(SilentAimTarget) then
            local newPlayer = game.Players.PlayerAdded:wait()
            table.insert(Ignored.Players, newPlayer)
        end
    end)
end

RunService.Heartbeat:Connect(function()
    if getgenv().Arctic.SilentAim.Enabled then
        if SilentAimTarget and SilentAimTarget.Character and SilentAimTarget.Character:WaitForChild(getgenv().Arctic.SilentAim.AimPart) then
            if getgenv().Arctic.Resolver.Enabled == true and
            SilentAimTarget.Character:WaitForChild("HumanoidRootPart").Velocity.magnitude > 50 then
                pcall(function()
                    local TargetVel = SilentAimTarget.Character[getgenv().Arctic.SilentAim.AimPart]
                    TargetVel.Velocity = Vector3.new(0, 0, 0)
                    TargetVel.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                end)
            end
            if getgenv().Arctic.Checks.VelocityCheck == true and SilentAimTarget.Character:FindFirstChild("Humanoid") ==
                Enum.HumanoidStateType.Freefall then
                pcall(function()
                    local TargetVelv5 = SilentAimTarget.Character[getgenv().Arctic.SilentAim.AimPart]
                    TargetVelv5.Velocity = Vector3.new(TargetVelv5.Velocity.X, (TargetVelv5.Velocity.Y * 0.5),
                        TargetVelv5.Velocity.Z)
                    TargetVelv5.AssemblyLinearVelocity = Vector3.new(TargetVelv5.Velocity.X,
                        (TargetVelv5.Velocity.Y * 0.5), TargetVelv5.Velocity.Z)
                end)
            end
            if getgenv().Arctic.Resolver.Enabled == true then
                pcall(function()
                    local TargetVelv2 = SilentAimTarget.Character[getgenv().Arctic.SilentAim.AimPart]
                    TargetVelv2.Velocity = Vector3.new(TargetVelv2.Velocity.X, 0, TargetVelv2.Velocity.Z)
                    TargetVelv2.AssemblyLinearVelocity = Vector3.new(TargetVelv2.Velocity.X, 0, TargetVelv2.Velocity.Z)
                end)
            end
        end
    end
end)
getgenv().Extra = {
    ["Enabled"] = (getgenv().Arctic.GunFOV.Enabled),
    ["Double-Barrel SG"] = {
        ["FOV"] = (getgenv().Arctic.GunFOV.DoubleBarrel)
    },
    ["DoubleBarrel"] = {
        ["FOV"] = (getgenv().Arctic.GunFOV.DoubleBarrel)
    },
    ["Revolver"] = {
        ["FOV"] = (getgenv().Arctic.GunFOV.Revolver)
    },
    ["SMG"] = {
        ["FOV"] = (getgenv().Arctic.GunFOV.Smg)
    },
    ["Shotgun"] = {
        ["FOV"] = (getgenv().Arctic.GunFOV.Shotgun)
    },
    ["TacticalShotgun"] = {
        ["FOV"] = (getgenv().Arctic.GunFOV.TacticalShotgun)
    },
    ["Rifle"] = {
        ["FOV"] = (getgenv().Arctic.GunFOV.Rifle)
    },
    ["Silencer"] = {
        ["FOV"] = (getgenv().Arctic.GunFOV.Silencer)
    },
    ["SilencerAR"] = {
        ["FOV"] = (getgenv().Arctic.GunFOV.SilencerAR)
    },
    ["Glock"] = {
        ["FOV"] = (getgenv().Arctic.GunFOV.Glock)
    },
    ["AK47"] = {
        ["FOV"] = (getgenv().Arctic.GunFOV.AK47)
    },
    ["AR"] = {
        ["FOV"] = (getgenv().Arctic.GunFOV.AR)
    }
}

local Script = {
    Functions = {}
}
Script.Functions.getToolName = function(name)
    local split = string.split(string.split(name, "[")[2], "]")[1]
    return split
end
Script.Functions.getEquippedWeaponName = function()
    if (Client.Character) and Client.Character:FindFirstChildWhichIsA("Tool") then
        local Tool = Client.Character:FindFirstChildWhichIsA("Tool")
        if string.find(Tool.Name, "%[") and string.find(Tool.Name, "%]") and not string.find(Tool.Name, "Wallet") and
            not string.find(Tool.Name, "Phone") then
            return Script.Functions.getToolName(Tool.Name)
        end
    end
    return nil
end
RunService.RenderStepped:Connect(function()
    if getgenv().Arctic.SilentAim.Enabled then
        if getgenv().Arctic.Checks.KOCheck == true and SilentAimTarget and SilentAimTarget.Character then
            local KOd = SilentAimTarget.Character:WaitForChild("BodyEffects")["K.O"].Value
            local Grabbed = SilentAimTarget.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
            if KOd or Grabbed then
                SilentAimTarget = nil
            end
        end
    end
    if getgenv().Arctic.AimAssist.Enabled == true then
        if getgenv().Arctic.Checks.KOCheck == true and AimAssistTarget and AimAssistTarget.Character then
            local KOd = AimAssistTarget.Character:WaitForChild("BodyEffects")["K.O"].Value
            local Grabbed = AimAssistTarget.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
            if KOd or Grabbed then
                AimAssistTarget = nil
                IsTargetting = false
            end
        end
    end
    if getgenv().Arctic.AimAssist.DisableOnEnemyDeath == true and AimAssistTarget and
    AimAssistTarget.Character:FindFirstChild("Humanoid") then
        if AimAssistTarget.Character.Humanoid.health < 2 then
            AimAssistTarget = nil
            IsTargetting = false
        end
    end
    if getgenv().Arctic.AimAssist.DisableOnOwnDeath == true and AimAssistTarget and
    AimAssistTarget.Character:FindFirstChild("Humanoid") then
        if Client.Character.Humanoid.health < 2 then
            AimAssistTarget = nil
            IsTargetting = false
        end
    end
    if getgenv().Arctic.FOV.AimAssist.Enabled == true and AimAssistTarget and AimAssistTarget.Character and
    AimAssistTarget.Character:WaitForChild("HumanoidRootPart") then
        if AimAssistFOV.Radius < (Vector2.new(Camera:WorldToScreenPoint(AimAssistTarget.Character.HumanoidRootPart.Position).X,
            Camera:WorldToScreenPoint(AimAssistTarget.Character.HumanoidRootPart.Position).Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude then
                AimAssistTarget = nil
            IsTargetting = false
        end
    end
    if getgenv().Arctic.AimAssist.Predict and AimAssistTarget and AimAssistTarget.Character and
    AimAssistTarget.Character:FindFirstChild(getgenv().Arctic.AimAssist.Aimpart) then
        if getgenv().Arctic.AimAssist.Shake.Enabled then
            local Main = CFrame.new(Camera.CFrame.p,
            AimAssistTarget.Character[getgenv().Arctic.AimAssist.Aimpart].Position +
                AimAssistTarget.Character[getgenv().Arctic.AimAssist.Aimpart].Velocity *
                    getgenv().Arctic.AimAssist.Prediction +
                    Vector3.new(math.random(-getgenv().Arctic.AimAssist.Shake.Strength,
                        getgenv().Arctic.AimAssist.Shake.Strength), math.random(
                        -getgenv().Arctic.AimAssist.Shake.Strength,
                        getgenv().Arctic.AimAssist.Shake.Strength), math.random(
                        -getgenv().Arctic.AimAssist.Shake.Strength,
                        getgenv().Arctic.AimAssist.Shake.Strength)) * 0.1)
            Camera.CFrame = Camera.CFrame:Lerp(Main, getgenv().Arctic.AimAssist.Smoothness / 2,
                Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
        else
            local Main = CFrame.new(Camera.CFrame.p,
            AimAssistTarget.Character[getgenv().Arctic.AimAssist.Aimpart].Position +
                AimAssistTarget.Character[getgenv().Arctic.AimAssist.Aimpart].Velocity *
                    getgenv().Arctic.AimAssist.Prediction)
            Camera.CFrame = Camera.CFrame:Lerp(Main, getgenv().Arctic.AimAssist.Smoothness / 2,
                Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
        end
    elseif getgenv().Arctic.AimAssist.Predict == false and AimAssistTarget and AimAssistTarget.Character and
    AimAssistTarget.Character:FindFirstChild(getgenv().Arctic.AimAssist.Aimpart) then
        if getgenv().Arctic.AimAssist.Shake.Enabled then
            local Main = CFrame.new(Camera.CFrame.p,
            AimAssistTarget.Character[getgenv().Arctic.AimAssist.Aimpart].Position +
                    Vector3.new(math.random(-getgenv().Arctic.AimAssist.Shake.Strength,
                        getgenv().Arctic.AimAssist.Shake.Strength), math.random(
                        -getgenv().Arctic.AimAssist.Shake.Strength,
                        getgenv().Arctic.AimAssist.Shake.Strength), math.random(
                        -getgenv().Arctic.AimAssist.Shake.Strength,
                        getgenv().Arctic.AimAssist.Shake.Strength)) * 0.1)
            Camera.CFrame = Camera.CFrame:Lerp(Main, getgenv().Arctic.AimAssist.Smoothness / 2,
                Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
        else
            local Main =
                CFrame.new(Camera.CFrame.p, AimAssistTarget.Character[getgenv().Arctic.AimAssist.Aimpart].Position)
            Camera.CFrame = Camera.CFrame:Lerp(Main, getgenv().Arctic.AimAssist.Smoothness / 2,
                Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
        end
    end
    if Script.Functions.getEquippedWeaponName() ~= nil then
        local WeaponSettings = getgenv().Extra[Script.Functions.getEquippedWeaponName()]
        if WeaponSettings ~= nil and getgenv().Arctic.GunFOV.Enabled == true then
            getgenv().Arctic.FOV.SilentAim.FOV = WeaponSettings.FOV
        else
            getgenv().Arctic.FOV.SilentAim.FOV = getgenv().Arctic.FOV.SilentAim.FOV
        end
    end
     if getgenv().Arctic.RangeManagement.Enabled and getgenv().Arctic.RangeManagement.Type == "Both" and Client ~= nil and
        (Client.Character) and SilentAimTarget and SilentAimTarget.Character then
        if (Client.Character.HumanoidRootPart.Position - SilentAimTarget.Character.HumanoidRootPart.Position).Magnitude <
            getgenv().Arctic.RangeManagement.Close.CloseDetection then
            getgenv().Arctic.FOV.SilentAim.FOV = getgenv().Arctic.RangeManagement.Close.CloseFOV
            getgenv().Arctic.SilentAim.Prediction = getgenv().Arctic.RangeManagement.Close.ClosePrediction

        elseif (Client.Character.HumanoidRootPart.Position - SilentAimTarget.Character.HumanoidRootPart.Position).Magnitude <
            getgenv().Arctic.RangeManagement.Mid.MidDetection then
            getgenv().Arctic.FOV.SilentAim.FOV = getgenv().Arctic.RangeManagement.Mid.MidFOV
            getgenv().Arctic.SilentAim.Prediction = getgenv().Arctic.RangeManagement.Mid.MidPrediction

        elseif (Client.Character.HumanoidRootPart.Position - SilentAimTarget.Character.HumanoidRootPart.Position).Magnitude <
            getgenv().Arctic.RangeManagement.Far.FarDetection then
            getgenv().Arctic.FOV.SilentAim.FOV = getgenv().Arctic.RangeManagement.Far.FarFOV
            getgenv().Arctic.SilentAim.Prediction = getgenv().Arctic.RangeManagement.Far.FarPrediction

        elseif (Client.Character.HumanoidRootPart.Position - SilentAimTarget.Character.HumanoidRootPart.Position).Magnitude <
            getgenv().Arctic.RangeManagement.ReallyFar.ReallyFarDetection then
            getgenv().Arctic.FOV.SilentAim.FOV = getgenv().Arctic.RangeManagement.ReallyFar.ReallyFarFOV
            getgenv().Arctic.SilentAim.Prediction = getgenv().Arctic.RangeManagement.ReallyFar.ReallyFarPrediction

        end
    end
    if getgenv().Arctic.RangeManagement.Enabled and getgenv().Arctic.RangeManagement.Type == "Prediction" and Client ~= nil and
        (Client.Character) and SilentAimTarget and SilentAimTarget.Character then
        if (Client.Character.HumanoidRootPart.Position - SilentAimTarget.Character.HumanoidRootPart.Position).Magnitude <
            getgenv().Arctic.RangeManagement.Close.CloseDetection then
            getgenv().Arctic.SilentAim.Prediction = getgenv().Arctic.RangeManagement.Close.ClosePrediction

        elseif (Client.Character.HumanoidRootPart.Position - SilentAimTarget.Character.HumanoidRootPart.Position).Magnitude <
            getgenv().Arctic.RangeManagement.Mid.MidDetection then
            getgenv().Arctic.SilentAim.Prediction = getgenv().Arctic.RangeManagement.Mid.MidPrediction

        elseif (Client.Character.HumanoidRootPart.Position - SilentAimTarget.Character.HumanoidRootPart.Position).Magnitude <
            getgenv().Arctic.RangeManagement.Far.FarDetection then
            getgenv().Arctic.SilentAim.Prediction = getgenv().Arctic.RangeManagement.Far.FarPrediction

        elseif (Client.Character.HumanoidRootPart.Position - SilentAimTarget.Character.HumanoidRootPart.Position).Magnitude <
            getgenv().Arctic.RangeManagement.ReallyFar.ReallyFarDetection then
            getgenv().Arctic.SilentAim.Prediction = getgenv().Arctic.RangeManagement.ReallyFar.ReallyFarPrediction

        end
    end
    if getgenv().Arctic.RangeManagement.Enabled and getgenv().Arctic.RangeManagement.Type == "FOV" and Client ~= nil and
        (Client.Character) and SilentAimTarget and SilentAimTarget.Character then
        if (Client.Character.HumanoidRootPart.Position - SilentAimTarget.Character.HumanoidRootPart.Position).Magnitude <
            getgenv().Arctic.RangeManagement.Close.CloseDetection then
            getgenv().Arctic.FOV.SilentAim.FOV = getgenv().Arctic.RangeManagement.Close.CloseFOV

        elseif (Client.Character.HumanoidRootPart.Position - SilentAimTarget.Character.HumanoidRootPart.Position).Magnitude <
            getgenv().Arctic.RangeManagement.Mid.MidDetection then
            getgenv().Arctic.FOV.SilentAim.FOV = getgenv().Arctic.RangeManagement.Mid.MidFOV

        elseif (Client.Character.HumanoidRootPart.Position - SilentAimTarget.Character.HumanoidRootPart.Position).Magnitude <
            getgenv().Arctic.RangeManagement.Far.FarDetection then
            getgenv().Arctic.FOV.SilentAim.FOV = getgenv().Arctic.RangeManagement.Far.FarFOV

        elseif (Client.Character.HumanoidRootPart.Position - SilentAimTarget.Character.HumanoidRootPart.Position).Magnitude <
            getgenv().Arctic.RangeManagement.ReallyFar.ReallyFarDetection then
            getgenv().Arctic.FOV.SilentAim.FOV = getgenv().Arctic.RangeManagement.ReallyFar.ReallyFarFOV

        end
    end
end)
if getgenv().Arctic.Customize.HitChance.Enabled then
    if SilentAimTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air then
        getgenv().Arctic.SilentAim.HitChance = getgenv().Arctic.Customize.HitChance.AirHitChance
    else
        getgenv().Arctic.SilentAim.HitChance = getgenv().Arctic.Customize.HitChance.GroundHitChance
    end
end
if getgenv().Arctic.Customize.Prediction.Enabled then
    if SilentAimTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air then
        getgenv().Arctic.SilentAim.Prediction = getgenv().Arctic.Customize.Prediction.AirPrediction
    else
        getgenv().Arctic.SilentAim.Prediction = getgenv().Arctic.Customize.Prediction.GroundPrediction
    end
end
if getgenv().Arctic.Customize.Smoothness.Enabled then
    if AimAssistTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air then
        getgenv().Arctic.AimAssist.Smoothness = getgenv().Arctic.Customize.Smoothness.AirSmoothness
    else
        getgenv().Arctic.AimAssist.Smoothness = getgenv().Arctic.Customize.Smoothness.GroundSmoothness
    end
end
if getgenv().Arctic.Customize.Shake.Enabled then
    if AimAssistTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air then
        getgenv().Arctic.AimAssist.Shake.Strength = getgenv().Arctic.Customize.Shake.AirShake
    else
        getgenv().Arctic.AimAssist.Shake.Strength = getgenv().Arctic.Customize.Shake.GroundShake
    end
end
Client.Chatted:Connect(function(message)
    if getgenv().Arctic.Chat.Enabled then
        local args = string.split(message, " ")
        if args[1] == getgenv().Arctic.Chat.FOV and args[2] ~= nil then
            getgenv().Arctic.FOV.SilentAim.FOV = tonumber(args[2])
        end
    end
    if getgenv().Arctic.Chat.Enabled then
        local args = string.split(message, " ")
        if args[1] == getgenv().Arctic.Chat.Prediction and args[2] ~= nil then
            getgenv().Arctic.SilentAim.Prediction = tonumber(args[2])
        end
    end
    if getgenv().Arctic.Chat.Enabled then
        local args = string.split(message, " ")
        if args[1] == getgenv().Arctic.Chat.HitChance and args[2] ~= nil then
            getgenv().Arctic.SilentAim.HitChance = tonumber(args[2])
        end
    end
end)
