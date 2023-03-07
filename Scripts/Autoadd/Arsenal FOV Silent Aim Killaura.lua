hookfunction(game.Stats.GetMemoryUsageMbForTag, function()
    coroutine.yield()
end)

local ChatKey = "GRR"
local Mouse = game.Players.LocalPlayer:GetMouse()
local Rockets = {"Rocket Launcher", "Concussion Rifle", "Arm Cannon", "RPG", "Firework Launcher"}

local FireRate = {}
for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
 if v:FindFirstChild("FireRate") then
  table.insert(FireRate, v.Name)
  FireRate[v.Name] = v.FireRate.Value
 end
end

local Circle = Drawing.new("Circle")
Circle.Visible = false
Circle.Position = game:GetService("UserInputService"):GetMouseLocation()
Circle.Color = Color3.fromRGB(9, 149, 98)
Circle.Thickness = 1
Circle.Transparency = 1
Circle.NumSides = 25
Circle.Radius = 150

game.RunService.RenderStepped:Connect(function()
    Circle.Position = game:GetService("UserInputService"):GetMouseLocation()
end)

local KeysPressed = {}

Mouse.KeyDown:Connect(function(x)
    KeysPressed[x] = true
end)

Mouse.KeyUp:Connect(function(x)
    KeysPressed[x] = false
end)

local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({Name = "Antix Hub", IntroText = "Antix Hub", HidePremium = true, SaveConfig = false})

OrionLib:MakeNotification({
 Name = "Antix Hub Notif",
 Content = "Make sure you are using your alt account!",
 Image = "rbxassetid://4483345998",
 Time = 5
})

local CombatTab = Window:MakeTab({
 Name = "Combat",
 Icon = "rbxassetid://4483345998"
})

CombatTab:AddSection({
 Name = "Blatant"
})

CombatTab:AddToggle({
 Name = "Kill All",
    Flag = "KillAll",
 Default = false,
 Callback = function()end
})

CombatTab:AddToggle({
 Name = "Kill Aura",
    Flag = "KillAura",
 Default = false,
 Callback = function()end
})

CombatTab:AddSection({
 Name = "Blatant"
})

CombatTab:AddToggle({
 Name = "Silent Aim",
    Flag = "SilentAim",
 Default = false,
 Callback = function()end
})

CombatTab:AddToggle({
 Name = "Semi Wallbang",
    Flag = "Wallbang",
 Default = false,
 Callback = function()end
})

CombatTab:AddToggle({
 Name = "Show FOV",
 Default = false,
 Callback = function(a)
        Circle.Visible = a
    end
})

CombatTab:AddSlider({
 Name = "Hit Chance",
    ValueName = "%",
    Flag = "HitChance",
 Min = 10,
 Max = 100,
 Default = 100,
 Increment = 1,
 Callback = function()end
})

CombatTab:AddSlider({
 Name = "FOV Value",
    ValueName = "%",
 Min = 50,
 Max = 800,
 Default = 150,
 Increment = 1,
 Callback = function(a)
        Circle.Radius = a
    end
})

CombatTab:AddDropdown({
 Name = "Aim Part",
 Default = "Random",
    Flag = "AimPart",
 Options = {"Random", "Torso", "Head"},
 Callback = function()end    
})

local GunModsTab = Window:MakeTab({
 Name = "Gun Mods",
 Icon = "rbxassetid://4483345998"
})

GunModsTab:AddSection({
 Name = "Aim"
})

GunModsTab:AddToggle({
 Name = "No Recoil",
    Flag = "Recoil",
 Default = false,
 Callback = function()end
})

GunModsTab:AddToggle({
 Name = "No Spread",
    Flag = "Spread",
 Default = false,
 Callback = function()end
})

GunModsTab:AddToggle({
 Name = "Anti Overheat",
    Flag = "Overheat",
 Default = false,
 Callback = function()end
})

GunModsTab:AddToggle({
 Name = "Fire Rate",
    Flag = "FireRate",
 Default = false,
 Callback = function(a)
        for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
            if v:FindFirstChild("FireRate") then
                v.FireRate.Value = a and 0.02 or FireRate[v.Name]
            end
        end
    end
})

GunModsTab:AddSection({
 Name = "Other"
})

GunModsTab:AddToggle({
 Name = "Infinite Ammo",
    Flag = "Ammo",
 Default = false,
 Callback = function()end
})

GunModsTab:AddToggle({
 Name = "Always Backstab",
    Flag = "Backstab",
 Default = false,
 Callback = function()end
})

GunModsTab:AddToggle({
 Name = "Always Auto",
    Flag = "Auto",
 Default = false,
 Callback = function()end
})

local PlayerTab = Window:MakeTab({
 Name = "Player",
 Icon = "rbxassetid://4483345998"
})

PlayerTab:AddSection({
 Name = "Character"
})

PlayerTab:AddButton({
 Name = "Godmode + Invisible",
 Callback = function()
        pcall(function()
            local root = game.Players.LocalPlayer.Character.LowerTorso.Root:Clone()
   game.Players.LocalPlayer.Character.LowerTorso.Root:Destroy()
            root.Parent = game.Players.LocalPlayer.Character.LowerTorso
  end)
   end
})

PlayerTab:AddToggle({
 Name = "Instant Respawn",
    Flag = "Respawn",
 Default = false,
 Callback = function()end
})

PlayerTab:AddToggle({
 Name = "Fly",
    Flag = "Fly",
 Default = false,
 Callback = function()end
})

PlayerTab:AddSlider({
 Name = "Fly Speed",
    ValueName = "%",
    Flag = "FlySpeed",
 Min = 10,
 Max = 500,
 Default = 100,
 Increment = 1,
 Callback = function()end
})

local FlyBind = false
PlayerTab:AddBind({
 Name = "Fly Bind",
 Default = Enum.KeyCode.T,
 Hold = false,
 Callback = function()
  FlyBind = not FlyBind
 end    
})

PlayerTab:AddSection({
 Name = "Humanoid"
})

PlayerTab:AddToggle({
 Name = "Toggle WalkSpeed",
    Flag = "WalkSpeed",
 Default = false,
 Callback = function()end
})

PlayerTab:AddSlider({
 Name = "WalkSpeed Value",
    ValueName = "%",
    Flag = "WalkSpeedValue",
 Min = 16,
 Max = 350,
 Default = 16,
 Increment = 1,
 Callback = function()end
})

PlayerTab:AddToggle({
 Name = "Noclip",
    Flag = "Noclip",
 Default = false,
 Callback = function()end
})

PlayerTab:AddToggle({
 Name = "Infinite Jump",
    Flag = "InfJump",
 Default = false,
 Callback = function()end
})

PlayerTab:AddToggle({
 Name = "Bunny Hop",
    Flag = "BunnyHop",
 Default = false,
 Callback = function()end
})

PlayerTab:AddSection({
 Name = "Chat"
})

PlayerTab:AddToggle({
 Name = "Chat Spammer",
    Flag = "Chat",
 Default = false,
 Callback = function()end
})

local ChatMsg = "Antix Hub Is The Best LOL"
PlayerTab:AddTextbox({
 Name = "Chat Message",
 Default = "Antix Hub Is The Best LOL",
 TextDisappear = false,
 Callback = function(a)
  ChatMsg = a
 end
})

local VisualsTab = Window:MakeTab({
 Name = "Visuals",
 Icon = "rbxassetid://4483345998"
})

VisualsTab:AddSection({
 Name = "Esp"
})

local EspLibrary = loadstring(game:HttpGet("https://pastebin.com/raw/e5iDWKnP"))()
EspLibrary.Players = true
EspLibrary:Toggle(true)

VisualsTab:AddToggle({
 Name = "Box Esp",
    Flag = "BoxEsp",
 Default = false,
 Callback = function(a)
  EspLibrary.Boxes = a
 end
})

VisualsTab:AddToggle({
 Name = "Name Esp",
    Flag = "NameEsp",
 Default = false,
 Callback = function(a)
  EspLibrary.Names = a
 end
})

VisualsTab:AddToggle({
 Name = "Tracer Esp",
    Flag = "TracerEsp",
 Default = false,
 Callback = function(a)
  EspLibrary.Tracers = a
 end
})

VisualsTab:AddSection({
 Name = "Viewmodel"
})

VisualsTab:AddToggle({
 Name = "Rainbow Gun",
    Flag = "RainbowGun",
 Default = false,
 Callback = function()end
})

VisualsTab:AddToggle({
 Name = "Rainbow Hands",
    Flag = "RainbowHands",
 Default = false,
 Callback = function()end
})

local MiscTab = Window:MakeTab({
 Name = "Misc",
 Icon = "rbxassetid://4483345998"
})

MiscTab:AddSection({
 Name = "Trolling"
})

MiscTab:AddToggle({
 Name = "Anti Aim",
    Flag = "AntiAim",
 Default = false,
 Callback = function()end
})

MiscTab:AddToggle({
 Name = "Teleport Behind",
    Flag = "Teleporter",
 Default = false,
 Callback = function()end
})

MiscTab:AddSection({
 Name = "Other"
})

MiscTab:AddToggle({
 Name = "Rainbow Crosshair",
    Flag = "Crosshair",
 Default = false,
 Callback = function()end
})

MiscTab:AddToggle({
 Name = "Autofarm Hearts",
    Flag = "Hearts",
 Default = false,
 Callback = function()end
})

function TeamCheck(v)
    if v.Team ~= game.Players.LocalPlayer.Team or game.ReplicatedStorage.wkspc.FFA.Value then
        return true
    end
    return false
end

function GetAimPart()
    if OrionLib.Flags["AimPart"].Value == "Head" then
        return "Head", 1
    elseif OrionLib.Flags["AimPart"].Value == "Torso" then
        return "LowerTorso", 0
    elseif OrionLib.Flags["AimPart"].Value == "Random" then
        if math.random(1, 4) == 1 then
            return "Head", 1
        else
            return "LowerTorso", 0
        end
    end
end

function HitPart(v, d)
    if table.find(Rockets, game.Players.LocalPlayer.NRPBS.EquippedTool.Value) then
        game.ReplicatedStorage.Events.CreateProjectile:FireServer("Rocket", 6300, Vector3.new(), CFrame.new(), 50, 50, 1, 35, game.Players.LocalPlayer.NRPBS.EquippedTool.Value, Vector3.new(), false, nil, {
            [1] = workspace.Map.Clips,
            [2] = workspace.Debris,
            [3] = game.Players.LocalPlayer.Character,
            [4] = workspace["Ray_Ignore"],
            [5] = workspace.Map.Spawns
        }, nil, {
            [1] = v.Character
        }, v.Character.Head, v.Character.Head.Position)
        return
    else
        if not d and tostring(game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value) == game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.melee.Value then
            game.Players.LocalPlayer.Character:PivotTo(v.Character.Head.CFrame)
        end
        local bitbuffer = require(game.ReplicatedStorage.Modules.BitBuffer)()
        local part, head = GetAimPart()
        bitbuffer.writeString(game.Players.LocalPlayer.NRPBS.EquippedTool.Value)
        bitbuffer.writeUnsigned(2, head)
        bitbuffer.writeUnsigned(2, 0) 
        bitbuffer.writeInt8(0)
        bitbuffer.writeFloat16(math.max((game.Players.LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude - 5, 0.143))
        bitbuffer.writeInt8(1)
        bitbuffer.writeUnsigned(1, 0)
        bitbuffer.writeUnsigned(1, 0)
        bitbuffer.writeVector3(v.Character[part].Position)
        bitbuffer.writeVector3(v.Character[part].Position)
        if game.ReplicatedStorage.wkspc.Status.RoundOver.Value then 
            return
        end
        return game.ReplicatedStorage.Events["\226\128\139HitPart"]:FireServer(v.Character[part], bitbuffer.dumpString(), "swaggg", nil)
    end
end

function GetClosest()
    local maxDist = math.huge
    local target
    for _,v in pairs(game.Players.GetPlayers(game.Players)) do
        if v ~= game.Players.LocalPlayer and TeamCheck(v) and v.Character and v.Character.FindFirstChild(v.Character, "Head") then
            local pos, vis = workspace.CurrentCamera.WorldToScreenPoint(workspace.CurrentCamera, v.Character.Head.Position)
            if vis then
                local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                if magnitude < maxDist and magnitude <= Circle.Radius then
                    maxDist = magnitude
                    target = v
                end
            end
        end
    end
    return target
end

game:GetService("Players").LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
    if OrionLib.Flags["WalkSpeed"].Value then
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = OrionLib.Flags["WalkSpeedValue"].Value
 end
end)

game:GetService("UserInputService").JumpRequest:Connect(function()
 if OrionLib.Flags["InfJump"].Value then
  game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
 end
end)

game:GetService("RunService").Stepped:Connect(function()
    if OrionLib.Flags["Noclip"].Value then
        if game.Players.LocalPlayer.Character then
            for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") and v.CanCollide then
                    v.CanCollide = false
                end
            end
        end
    end
    if FlyBind and OrionLib.Flags["Fly"].Value then
        local vel = 0
        local rfly = false
        if KeysPressed.w and KeysPressed.s then
            vel = 0
        elseif KeysPressed.a and KeysPressed.d then
            vel = 0
        elseif KeysPressed.w and KeysPressed.a then
            vel = 45
            rfly = true
        elseif KeysPressed.w and KeysPressed.d then
            vel = -45
            rfly = true
        elseif KeysPressed.s and KeysPressed.a then
            vel = 180 - 45
            rfly = true
        elseif KeysPressed.s and KeysPressed.d then
            vel= 180 + 45
            rfly = true
        elseif KeysPressed.w then
            vel = 0
            rfly = true
        elseif KeysPressed.a then
            vel = 90
            rfly = true
        elseif KeysPressed.d then
            vel = -90
            rfly = true
        elseif KeysPressed.s then
            vel = 180
            rfly = true
        end
        if rfly then
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = (workspace.CurrentCamera.CFrame * CFrame.Angles(0, math.rad(vel), 0)).LookVector * OrionLib.Flags["FlySpeed"].Value
        else
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new()
            local dir = Instance.new("IntValue")
            dir.Name = "changedirection"
            dir.Parent = game.Players.LocalPlayer.Character
        end
    end
    if OrionLib.Flags["AntiAim"].Value then
        game.Players.LocalPlayer.Character:PivotTo(CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position) * CFrame.Angles(0, math.rad(math.random(-180, 180)), 0))
    end
end)

coroutine.wrap(function()
    while wait(0.5) do
        if OrionLib.Flags["Hearts"].Value and game.Players.LocalPlayer.Character:FindFirstChild("Spawned") and game.Players.LocalPlayer.Character:FindFirstChild("IsAPlayer") and not game.ReplicatedStorage.wkspc.Status.RoundOver.Value and not game.ReplicatedStorage.wkspc.Status.Preparation.Value then
            for _,v in pairs(workspace.Debris:GetChildren()) do 
                if v.Name == "Heart" then
                    game.Players.LocalPlayer.Character:PivotTo(v.CFrame)
                end
            end
        end
    end
end)()

coroutine.wrap(function()
 while wait(0.2) do
        if not game.ReplicatedStorage.wkspc.Status.RoundOver.Value and not game.ReplicatedStorage.wkspc.Status.Preparation.Value then
            if OrionLib.Flags["Ammo"].Value then
                getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).ammocount.Value = 100
            end
            if OrionLib.Flags["Auto"].Value then
                getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).mode = "automatic"
            end
            if OrionLib.Flags["FireRate"].Value then
                if tostring(game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value) == "Minigun" then
                    game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.Held2.Value = true
                end
            end
            if OrionLib.Flags["Recoil"].Value then
                getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).recoil = 0
            end
            if OrionLib.Flags["Spread"].Value then
                getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).currentspread = {["Value"] = 0}
            end
            if OrionLib.Flags["Overheat"].Value then
                getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).overheat = {["Value"] = 0}
            end
            if OrionLib.Flags["Respawn"].Value then
                if game.Players.LocalPlayer.NRPBS.Health.Value <= 0 and game.Players.LocalPlayer.Status.Team.Value ~= "Spectator" then
                    getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).reviveme = true
                end
            end
            if OrionLib.Flags["BunnyHop"].Value then
                if game.Players.LocalPlayer.Character.Humanoid.FloorMaterial ~= Enum.Material.Air and KeysPressed[" "] then
                    game.Players.LocalPlayer.Character.Humanoid.Jump = true
                end
            end
        end
        if OrionLib.Flags["Chat"].Value and game.Players.LocalPlayer.Status.Team.Value ~= "Spectator" then
            game.ReplicatedStorage.Events.PlayerChatted:FireServer(ChatKey, ChatMsg, false, true, true)
  end
 end
end)()

coroutine.wrap(function()
    while wait(0.3) do
        if OrionLib.Flags["KillAll"].Value and game.Players.LocalPlayer.Character:FindFirstChild("Spawned") and game.Players.LocalPlayer.Character:FindFirstChild("IsAPlayer") and not game.ReplicatedStorage.wkspc.Status.RoundOver.Value and not game.ReplicatedStorage.wkspc.Status.Preparation.Value then
            pcall(function()
    for _,v in pairs(game.Players:GetPlayers()) do
     if v ~= game.Players.LocalPlayer and TeamCheck(v) and v.Character and v.Character:FindFirstChild("Head") then
      for _ = 1, 5 do
       HitPart(v, false)
      end
      game.RunService.Stepped:Wait()
     end
    end
   end)
        end
    end
end)()

coroutine.wrap(function()
    while wait(0.1) do
        if OrionLib.Flags["KillAura"].Value and game.Players.LocalPlayer.Character:FindFirstChild("Spawned") and game.Players.LocalPlayer.Character:FindFirstChild("IsAPlayer") and not game.ReplicatedStorage.wkspc.Status.RoundOver.Value and not game.ReplicatedStorage.wkspc.Status.Preparation.Value and not OrionLib.Flags["KillAll"].Value then
            pcall(function()
    for _,v in pairs(game.Players:GetPlayers()) do
     if v ~= game.Players.LocalPlayer and TeamCheck(v) and v.Character and v.Character:FindFirstChild("Head") then
      if (game.Players.LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude <= 25 then
       for _ = 1, 5 do
        HitPart(v, true)
       end
      end
      game.RunService.Stepped:Wait()
     end
    end
   end)
        end
    end
end)()

coroutine.wrap(function()
    while wait(0.4) do
        if OrionLib.Flags["Teleporter"].Value and game.Players.LocalPlayer.Character:FindFirstChild("Spawned") and game.Players.LocalPlayer.Character:FindFirstChild("IsAPlayer") and not game.ReplicatedStorage.wkspc.Status.RoundOver.Value and not game.ReplicatedStorage.wkspc.Status.Preparation.Value then
            pcall(function()
    for _,v in pairs(game.Players:GetPlayers()) do
     if v ~= game.Players.LocalPlayer and TeamCheck(v) and v.Character and v.Character:FindFirstChild("Head") then
                        pcall(function()
                            repeat
                                wait(0.4)
                                game.Players.LocalPlayer.Character:PivotTo(v.Character.HumanoidRootPart.CFrame + Vector3.new(0, 0, 5))
                            until not v or not v.Character or not v.Character:FindFirstChild("HumanoidRootPart") or not v.Character:FindFirstChild("Spawned") or v.Character.Humanoid:FindFirstChild("creator") or not OrionLib.Flags["Teleporter"].Value or game.ReplicatedStorage.wkspc.Status.RoundOver.Value
                        end)
     end
    end
   end)
        end
    end
end)()

coroutine.wrap(function()
 while wait(0.1) do
        if OrionLib.Flags["RainbowGun"].Value then
            if workspace.Camera:FindFirstChild("Arms") and workspace.Camera.Arms:FindFirstChild("CSSArms") then
                for _,v in pairs(workspace.Camera.Arms:GetChildren()) do
                    if v:IsA("BasePart") and v.Name ~= "Left Arm" and v.Name ~= "Right Arm" then
                        v.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                        v.Transparency = 0.5
                        v.Material = "ForceField"
                    end
                end
            end
        end
        if OrionLib.Flags["RainbowHands"].Value then
            if workspace.Camera:FindFirstChild("Arms") and workspace.Camera.Arms:FindFirstChild("CSSArms") then
                for _,v in pairs(workspace.Camera.Arms.CSSArms:GetChildren()) do
                    if v:IsA("BasePart") then
                        v.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                        v.Transparency = 0.5
                        v.Material = "ForceField"
                    end
                end
            end
        end
        if OrionLib.Flags["Crosshair"].Value then
            if game.Players.LocalPlayer.PlayerGui.GUI.Crosshairs:FindFirstChild("Crosshair") then
                for _,v in pairs(game.Players.LocalPlayer.PlayerGui.GUI.Crosshairs.Crosshair:GetChildren()) do
                    if v.Name ~= "Center1" then
                        pcall(function()
                            v.BackgroundColor3 = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                        end)
                    end
                end
            end
        end
 end
end)()

local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()

    if tostring(method) == "FindPartOnRayWithIgnoreList" and OrionLib.Flags["SilentAim"].Value then
        local HitChance = OrionLib.Flags["HitChance"].Value
        if HitChance == 100 or HitChance >= math.random(1, 100) then
            local target = GetClosest()
            if target and target.Character then
                args[1] = Ray.new(workspace.CurrentCamera.CFrame.Position, (target.Character[GetAimPart()].Position - workspace.CurrentCamera.CFrame.Position).Unit * 1000)
                return oldNamecall(self, unpack(args))
            end
        end
    end
    if tostring(self) == "CreateProjectile" and tostring(method) == "FireServer" and OrionLib.Flags["SilentAim"].Value then
        local HitChance = OrionLib.Flags["HitChance"].Value
        if HitChance == 100 or HitChance >= math.random(1, 100) then
            local target = GetClosest()
            if target and target.Character then
                args[3] = target.Character[GetAimPart()].Position
                return oldNamecall(self, unpack(args))
            end
        end
    end
    if tostring(self) == "ReplicateProjectile" and tostring(method) == "FireServer" and OrionLib.Flags["SilentAim"].Value then
        local HitChance = OrionLib.Flags["HitChance"].Value
        if HitChance == 100 or HitChance >= math.random(1, 100) then
            local target = GetClosest()
            if target and target.Character then
                HitPart(target, true)
            end
        end
    end
    if string.lower(tostring(method)) == "kick" then
        return nil
    end
    
    return oldNamecall(self, ...)
end)
local oldIndex
oldIndex = hookmetamethod(game, "__index", function(self, method)
    if string.lower(tostring(method)) == "kick" then
        return wait(9e9)
    end
    if tostring(method) == "Clips" and OrionLib.Flags["Wallbang"].Value then
        return workspace.Map
    end
 if tostring(self) == "HumanoidRootPart" and tostring(method) == "CFrame" and OrionLib.Flags["Backstab"].Value then
        if self ~= game.Players.LocalPlayer.Character.HumanoidRootPart then
   return CFrame.new(self.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.Position) * CFrame.Angles(0, math.rad(180), 0)
  end
    end

    return oldIndex(self, method)
end)