
if game.PlaceId == 60654525 then
local sword
local money
local mtime
local waith
local dtime
local ftime
local gtime
local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()
local s = VLib:Window("RobloxHub", "Legendary Swords", "LS")
local ss = s:Tab("Buy Any Sword")
ss:Label("Buy Any Sword For Free")
ss:Textbox("Name Of Sword", true,function(sword1)
sword=sword1
end)
ss:Button("Buy The Sword",function()

local args = {
    [1] = "Buy",
    [2] = 0,
    [3] = (sword)
}

game:GetService("Players").LocalPlayer.RemoteFunctions.SwordShopSystem:FireServer(unpack(args))
end)
local ss = s:Tab("Inf Money")
ss:Label("Get Infinite Money")
ss:Textbox("How Much Money You Want", true,function(money1)
money=money1
end)
ss:Textbox("Wait Time For Auto Money", true,function(moneyw)
mtime=moneyw
end)
ss:Button("Click This Before Get Money",function()

local args = {
    [1] = "Buy",
    [2] = 0,
    [3] = "DragonAxe"
}

game:GetService("Players").LocalPlayer.RemoteFunctions.SwordShopSystem:FireServer(unpack(args))
wait()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
 if v.Name == "DragonAxe" then
  v:Destroy()
 end
end
end)
ss:Button("Get Money",function(t)
local args = {
    [1] = "Sell",
    [2] = money,
    [3] = "DragonAxe"
}

game:GetService("Players").LocalPlayer.RemoteFunctions.SwordShopSystem:FireServer(unpack(args))
end)
local ss = s:Tab("Inf Stats")
ss:Label("Get Infinite Stats")
ss:Textbox("Wait Time For Health", true,function(hwait)
waith=hwait
end)
ss:Toggle("Infinite Health",function(t)
if t then
	_G.autoh = true
	while _G.autoh == true do
	wait(waith)
	game:GetService("Players").LocalPlayer.RemoteFunctions.UpgradeFunction:FireServer("Health","One")
	end
else
	_G.autoh = false
end
    end)
	ss:Button("Manual Inf Health",function()
game:GetService("Players").LocalPlayer.RemoteFunctions.UpgradeFunction:FireServer("Health","One")
end)
ss:Textbox("Wait Time For Damage", true,function(dwait)
dtime=dwait
end)
ss:Toggle("Infinite Damage",function(t)
if t then
	_G.autod = true
	while _G.autod == true do
	wait(dtime)
	game:GetService("Players").LocalPlayer.RemoteFunctions.UpgradeFunction:FireServer("Damage","One")
	end
else
	_G.autod = false
end
    end)
	ss:Button("Manual Inf Damage",function()
game:GetService("Players").LocalPlayer.RemoteFunctions.UpgradeFunction:FireServer("Damage","One")
end)
ss:Textbox("Wait Time For Defense", true,function(fwait)
ftime=fwait
end)
ss:Toggle("Infinite Defense",function(t)
if t then
	_G.autof = true
	while _G.autof == true do
	wait(ftime)
	game:GetService("Players").LocalPlayer.RemoteFunctions.UpgradeFunction:FireServer("Defense","One")
	end
else
	_G.autof = false
end
    end)
	ss:Button("Manual Inf Defense",function()
	game:GetService("Players").LocalPlayer.RemoteFunctions.UpgradeFunction:FireServer("Defense","One")
end)
ss:Textbox("Wait Time For Gold Gain", true,function(gwait)
gtime=gwait
end)
ss:Toggle("Infinite Gold Gain",function(t)
if t then
	_G.autog = true
	while _G.autog == true do
	wait(gtime)
	game:GetService("Players").LocalPlayer.RemoteFunctions.UpgradeFunction:FireServer("Loot","One")
	end
else
	_G.autog = false
end
    end)
	ss:Button("Manual Inf Gold Gain",function()
	game:GetService("Players").LocalPlayer.RemoteFunctions.UpgradeFunction:FireServer("Loot","One")
end)
local ss = s:Tab("Free GamePasses")
ss:Label("Get All The Passes For Free")
local gp = false
ss:Toggle("Get All GamePasses For Free",function(gp)
gp = not gp
if (gp) then
game.Players.LocalPlayer.UserId = ""
else
	game.Players.LocalPlayer.UserId = "16332998"
end
end)
local lp = false
ss:Toggle("LegendaryPack Free",function(lp)
 lp = not lp
   if (lp) then
      game.Players.LocalPlayer.LegendaryPack.Value = false
  else
       game.Players.LocalPlayer.LegendaryPack.Value = true
   end
end)
local dw = false
ss:Toggle("DualWeapons Free",function(dw)
 dw = not dw
   if (dw) then
      game.Players.LocalPlayer.DualWeapons.Value = false
  else
       game.Players.LocalPlayer.DualWeapons.Value = true
   end
end)
local da = false
ss:Toggle("DevilArmor Free",function(da)
 da = not da
   if (da) then
      game.Players.LocalPlayer.DevilArmor.Value = false
  else
       game.Players.LocalPlayer.DevilArmor.Value = true
   end
end)
local dp = false
ss:Toggle("DoublePass Free",function(dp)
 dp = not dp
   if (dp) then
      game.Players.LocalPlayer.DoublePass.Value = false
  else
       game.Players.LocalPlayer.DoublePass.Value = true
   end
end)
end
if game.PlaceId == 2788229376 then

local dwEntities = game:GetService("Players")
local dwLocalPlayer = dwEntities.LocalPlayer 
local dwRunService = game:GetService("RunService")
local settings_tbl = {
    ESP_Enabled = false,
    ESP_TeamCheck = false,
    Chams = false,
    Chams_Color = Color3.fromRGB(0,0,255),
    Chams_Transparency = 0.1,
    Chams_Glow_Color = Color3.fromRGB(255,0,0)
}
local Aiming = loadstring(game:HttpGet("https://raw.githubusercontent.com/farthefarter/e/main/e"))()
Aiming.TeamCheck(false)
Aiming.VisibleCheck = false
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
 
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CurrentCamera = Workspace.CurrentCamera
 
local themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),  
    TextColor = Color3.fromRGB(255, 255, 255)
}
 
local DaHoodSettings = {
    SilentAim = false,
    AimLock = false,
    Prediction = 0.178
}
 
getgenv().DaHoodSettings = DaHoodSettings
local LocalPlayer = game.Players.LocalPlayer

local Mouse = LocalPlayer:GetMouse()

local RunService = game:GetService("RunService")

local workspace = game:GetService("Workspace")

local Light = game:GetService("Lighting")

local camera = workspace.CurrentCamera

local worldToViewportPoint = camera.worldToViewportPoint

-- Functions

local function fail(r) return LocalPlayer:Kick(r) end

local usedCache = shared.__urlcache and next(shared.__urlcache) ~= nil

shared.__urlcache = shared.__urlcache or {}
local function httpload(url)
    local success, result

    if shared.__urlcache[url] then
        success, result = true, shared.__urlcache[url]
    else
        success, result = pcall(game.HttpGet, game, url)
    end

    if (not success) then
        return fail(string.format('Failed to GET url %q for reason: %q', url, tostring(result)))
    end

    local fn, err = loadstring(result)
    if (type(fn) ~= 'function') then
        return fail(string.format('Failed to loadstring url %q for reason: %q', url, tostring(err)))
    end

    local results = { pcall(fn) }
    if (not results[1]) then
        return fail(string.format('Failed to initialize url %q for reason: %q', url, tostring(results[2])))
    end

    shared.__urlcache[url] = result
    return unpack(results, 2)
end

local prefix = "moongod: "

local function log(text)
    print(prefix..text)
end

local function warn(text)
    warn(prefix..text)
end

-- Anti Cheat Bypass


local ReplicatedStorage = game:GetService("ReplicatedStorage")

local MainEvent = ReplicatedStorage.MainEvent

local HB = RunService.Heartbeat

do 
   local oldFunc = nil

  oldFunc = hookfunction(MainEvent.FireServer, newcclosure(function(Event, ...)
     local args = {...}

     if args[1] == "CHECKER_1" or args[1] == "TeleportDetect" or args[1] == "OneMoreTime" then
        return nil
     end

     return oldFunc(Event, ...)
  end))

   HB:Connect(function()
       local root = LocalPlayer.Character and LocalPlayer.Character.PrimaryPart

       if root then
           for i,v in pairs(getconnections(root:GetPropertyChangedSignal("CFrame"))) do
               v:Disable()
           end
       end
   end)

  local function added(char)
     while true do
           if not char then return end
        HB:Wait()
        for i,v in pairs(char:GetChildren()) do
           if v:IsA("Script") and v:FindFirstChildOfClass("LocalScript") then
              v:FindFirstChildOfClass("LocalScript").Source = "Cleared by moongod"
              return
           end
        end
     end
  end

  if LocalPlayer.Character then
     added(LocalPlayer.Character)
  end

  LocalPlayer.CharacterAdded:Connect(added)

end

log("Bypassed Anti-Cheat")

-- Aiming 



local guimain = Instance.new("Folder", game.CoreGui)
local CC = game:GetService "Workspace".CurrentCamera
local LocalMouse = game.Players.LocalPlayer:GetMouse()
local Locking = false
local cc = game:GetService("Workspace").CurrentCamera
local gs = game:GetService("GuiService")
local ggi = gs.GetGuiInset
local lp = game:GetService("Players").LocalPlayer
local mouse = lp:GetMouse()

local Tracer = Drawing.new("Line")
Tracer.Visible = false
Tracer.Color = Color3.fromRGB(255, 20, 88)
Tracer.Thickness = 1
Tracer.Transparency = 1

local sound = Instance.new("Sound", game.Workspace)
sound.SoundId = "rbxassetid://8819783960"

if not sound.IsLoaded then
	sound.Loaded:wait()
end

local sound1 = Instance.new("Sound", game.Workspace)
sound1.SoundId = "rbxassetid://8819782435"

if not sound1.IsLoaded then
	sound1.Loaded:wait()
end


local StepTable = {}
local function BindToSteppedold(name, num, func)
	if StepTable[name] == nil then
		StepTable[name] = game:GetService("RunService").Stepped:connect(func)
	end
end

local function UnbindFromSteppedold(name)
	if StepTable[name] then
		StepTable[name]:Disconnect()
		StepTable[name] = nil
	end
end

function x(tt, tx, cc, tc)
    game.StarterGui:SetCore(
        "SendNotification",
        {
            Title = tt,
            Text = tx,
            Duration = cc,
            Icon = tc
        }
    )
end

local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(
    function(keygo, ok)
        if (not ok) then
            if (keygo.KeyCode == getgenv().Key) then
                if getgenv().loltoggle then
                    Locking = not Locking
                    if Locking then
                        Plr = getClosestPlayerToCursor()
                        getgenv().targetenabledV3 = true
                        if getgenv().Notificationmode then
                            StarterGui:SetCore(
                            "SendNotification",
                            {
                                Title = "yarn",
                                Text = "" ..Plr.DisplayName,
                                Duration = 3,
                                Icon = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. Plr .."&width=420&height=420&format=png"
                            })
                        end
                        if getgenv().ViewMode == true then
                            game.Workspace.CurrentCamera.CameraSubject = Plr.Character
                        end
                        if getgenv().ChatMode == true then
                            local A_3 = "yarn: "..Plr.DisplayName
                            local A_4 = "All"
                            local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
                            Event:FireServer(A_3, A_4)
                        end
                        if getgenv().TPToPlayer == true then
                            LocalPlayer.Character.HumanoidRootPart.CFrame = Plr.Character.HumanoidRootPart.CFrame
                        end
                        if getgenv().BenMode == true then
                            sound:Play()
                        end
                        if getgenv().TargetStrafeV3 == true then
                            getgenv().TSV3Multiplier = 5
                            getgenv().TSV3Distance = 5
                            local i = 0
                            BindToSteppedold("TargetStrafev3", nil, function(dt)
                            i = (i + dt/getgenv().TSV3Multiplier) % 1
                            local alpha = 2 * math.pi * i
                
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.Angles(0, alpha, 0)
                            * CFrame.new(0, 0, getgenv().TSV3Distance)
                            + Plr.Character.HumanoidRootPart.Position
                        end)
                        end
                    elseif not Locking then
                        UnbindFromSteppedold("TargetStrafev3")
                        if getgenv().Notificationmode then
                            x("yarn", "Unlocked", 3)
                        end
                        if getgenv().ViewMode == true then
                            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
                        end
                        
                        if getgenv().ChatMode == true then
                            local A_1 = "Unlocked"
                            local A_2 = "All"
                            local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
                            Event:FireServer(A_1, A_2)
                        end
                        if getgenv().BenMode == true then
                            sound1:Play()
                        end
                    end
                end
            end
        end
    end
)

RunService.Heartbeat:Connect(function()
    if getgenv().LookAt == true then
        local Char = game.Players.LocalPlayer.Character
        local PrimaryPartOfChar = game.Players.LocalPlayer.Character.PrimaryPart
        local NearestChar = Plr.Character
        local NearestRoot = Plr.Character.HumanoidRootPart
        local NearestPos = CFrame.new(PrimaryPartOfChar.Position, Vector3.new(NearestRoot.Position.X, NearestRoot.Position.Y, NearestRoot.Position.Z))
        Char:SetPrimaryPartCFrame(NearestPos)
    else
        local Char = game.Players.LocalPlayer.Character
        local PrimaryPartOfChar = game.Players.LocalPlayer.Character.PrimaryPart
        local NearestChar = LocalPlayer.Character
        local NearestRoot = LocalPlayer.Character.HumanoidRootPart
        local NearestPos = CFrame.new(PrimaryPartOfChar.Position, Vector3.new(NearestRoot.Position.X, NearestRoot.Position.Y, NearestRoot.Position.Z))
        Char:SetPrimaryPartCFrame(LocalPlayer)
    end
end)

function getClosestPlayerToCursor()
    local closestPlayer
    local shortestDistance = 137

    for i, v in pairs(game.Players:GetPlayers()) do
        if
            v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
                v.Character.Humanoid.Health ~= 0 and
                v.Character:FindFirstChild("LowerTorso")
         then
            local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
            if magnitude < shortestDistance then
                closestPlayer = v
                shortestDistance = magnitude
            end
        end
    end
    return closestPlayer
end




local rawmetatable = getrawmetatable(game)
local old = rawmetatable.__namecall
setreadonly(rawmetatable, false)
rawmetatable.__namecall =
    newcclosure(
    function(...)
        local args = {...}
        if Locking and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
            args[3] =
                Plr.Character[getgenv().Partz].Position + (Plr.Character[getgenv().Partz].Velocity * Prediction / 10)
            return old(unpack(args))
        end
        return old(...)
    end
)

local LocalPlayer = game.Players.LocalPlayer
local mouse = LocalPlayer:GetMouse()

_G.TracerVisible = false
_G.TracerColor = Color3.fromRGB(255, 255, 255)
_G.TracerThickness = 3
_G.TracerTransparency = 1

_G.CircleSides = 3604
_G.CircleColor = Color3.fromRGB(255, 20, 88)
_G.CircleTransparency = 0.5
_G.CircleRadius = 80
_G.CircleFilled = false
_G.CircleVisible = false
_G.CircleThickness = 0

circle = Drawing.new("Circle")
circle.Color = Color3.fromRGB(255, 20, 88)
circle.Thickness = 0.1
circle.Transparency = 0.5
circle.NumSides = 64
circle.Radius = 64
circle.Visible = false
circle.Filled = true
getgenv().autoclick = false
game:GetService("RunService").RenderStepped:Connect(
    function()
        if getgenv().autosetup == true then
            local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
            local split = string.split(pingvalue, " ")
            local ping = split[1]
            if tonumber(ping) < 30 then
                getgenv().Prediction = 1.14
            elseif tonumber(ping) <= 30 then
                if tonumber(ping) < 40 then
                    getgenv().Prediction = 1.16
                elseif tonumber(ping) <= 40 then
                    if tonumber(ping) < 50 then
                        getgenv().Prediction = 1.19
                    elseif tonumber(ping) <= 50 then
                        if tonumber(ping) < 70 then
                            getgenv().Prediction = 1.22
                        elseif tonumber(ping) <= 80 then
                            getgenv().Prediction = 1.38
                        elseif tonumber(ping) <= 80 then
                            getgenv().Prediction = 1.39
                        elseif tonumber(ping) <= 90 then
                            getgenv().Prediction = 1.42
                        elseif tonumber(ping) <= 150 then
                            getgenv().Prediction = 1.51
                        elseif tonumber(ping) >= 200 then
                            getgenv().Prediction = 1.69
                        end
                    end
                end
            end
        end

        circle.Position =
            Vector2.new(
            game:GetService("UserInputService"):GetMouseLocation().X,
            game:GetService("UserInputService"):GetMouseLocation().Y
        )
        circle.Radius = _G.CircleRadius
        circle.Filled = _G.CircleFilled
        circle.Color = _G.CircleColor
        circle.Visible = _G.CircleVisible
        circle.Radius = _G.CircleRadius
        circle.Transparency = _G.CircleTransparency
        circle.NumSides = _G.CircleSides
        circle.Thickness = _G.CircleThickness
        Tracer.Visible = _G.TracerVisible
        Tracer.Color = _G.TracerColor
        Tracer.Thickness = _G.TracerThickness
        Tracer.Transparency = _G.TracerTransparency
        if getgenv().AirshotFunccc == true then
            if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                getgenv().Partz = "RightFoot"
            else
                Plr.Character:WaitForChild("Humanoid").StateChanged:Connect(
                    function(old, new)
                        if new == Enum.HumanoidStateType.Freefall then
                            getgenv().Partz = "RightFoot"
                        else
                            getgenv().Partz = "LowerTorso"
                        end
                    end
                )
            end
        end

        if getgenv().Tracer == true and Locking then
            local Vector, OnScreen =
                cc:worldToViewportPoint(
                Plr.Character[getgenv().Partz].Position + (Plr.Character[getgenv().Partz].Velocity * Prediction / 10)
            )
            Tracer.Visible = true
            Tracer.From = Vector2.new(mouse.X, mouse.Y + ggi(gs).Y)
            Tracer.To = Vector2.new(Vector.X, Vector.Y)
        elseif getgenv().Tracer == false then
            Tracer.Visible = false
        end
    end)
game:GetService("RunService").Heartbeat:Connect(
    function()
        if cframespeedtoggle == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                game.Players.LocalPlayer.Character.Humanoid.MoveDirection * speedvalue
        end
        if Spinbot then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad((positive1)), 0)
        end
        if Jitter then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position) *
                CFrame.Angles(0, math.rad(Angle) + math.rad((math.random(1, 2) == 1 and Jit or -Jit)), 0)
        end

        if AntiAim1 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * -250
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(555), 0)
        end
        if AntiAim2 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1.333, 0)
            wait(0.2)
        end
        if getgenv().antilock then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                -game.Players.LocalPlayer.Character.Humanoid.MoveDirection * getgenv().antilockspeed
        end
        if getgenv().DesyncEnabled then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * getgenv().DesyncVelocity
                game:GetService("RunService").Heartbeat:Wait()
        end
        if getgenv().antistomplo then
            if game.Players.LocalPlayer.Character.Humanoid.Health <= 5 then
                for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v:Destroy()
                    end
                end
            end
        end
        if getgenv().antislow then
            local player = game.Players.LocalPlayer
            local DeletePart =
                player.Character.BodyEffects.Movement:FindFirstChild("NoJumping") or
                player.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk") or
                player.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed")
            if DeletePart then
                DeletePart:Destroy()
            end
            if player.Character.BodyEffects.Reload.Value == true then
                player.Character.BodyEffects.Reload.Value = false
            end
        end
        if getgenv().AutoReloadx then
            if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
                if
                    game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild(
                        "Ammo"
                    )
                 then
                    if
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild(
                            "Ammo"
                        ).Value <= 0
                     then
                        game:GetService("ReplicatedStorage").MainEvent:FireServer(
                            "Reload",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
                        )
                    end
                end
            end
        end
        if getgenv().autostomp then
            game.ReplicatedStorage.MainEvent:FireServer("Stomp")
        end
        if getgenv().antibag then
            game.Players.LocalPlayer.Character["Christmas_Sock"]:Destroy()
        end
    end)

-- Visuals --

local ESPSettings = {
    SkeletonESPEnabled = false,
    RainbowsESPEnabled = false,
    TextOutlineEnabled = false,
    TeamCheckEnabled = false,
    MouseFrom = false,
    CustomColor = true,
    BottomFrom = true,
    HeadFrom = false,
    RoundedCorner = 12,
    Length = 14,
    ESPColor = Color3.fromRGB(255,255,255),
    Thickness = 1,
    TextSize = 15,
    Transparency = 1,
    HeadOff = Vector3.new(0,0.5,0),
    LegOff = Vector3.new(0,3,0)
}

-- Drawings --

Circle = Drawing.new("Circle")
Circle.Color = Color3.fromRGB(101, 90, 173)
Circle.Thickness = 2
Circle.NumSides = 120
Circle.Radius = 70
Circle.Visible = false
Circle.Filled = false
Circle.Transparency = 1

RunService.RenderStepped:Connect(function()
	Circle.Position = Vector2.new(Mouse.X, Mouse.Y + 35)
end)

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/qvrwd/etarry/main/libraries/ui/splix"))()
getgenv().Key = Enum.KeyCode.Q
getgenv().Prediction = 1.35
getgenv().AirshotFunccc = false
getgenv().Tracer = false
getgenv().Partz = "UpperTorso"
getgenv().Notificationmode = false
getgenv().ViewMode = false
getgenv().Spinbot = false
getgenv().Jitter = false
getgenv().positive1 = 45
local Jit = math.random(30, 90)
getgenv().Angle = 60
getgenv().DesyncEnabled = false
getgenv().DesyncVelocity = 15
getgenv().BenMode = false
getgenv().TPToPlayer = false
getgenv().LookAt = false
getgenv().AntiAim1 = false
getgenv().AntiAim2 = false
getgenv().antistomplo = false
getgenv().autoreload = false
getgenv().autostomp = false
getgenv().antibag = false
getgenv().antislow = false

local window = library:new({textsize = 13.5,font = Enum.Font.RobotoMono,name = "Roblox Hub",color = Color3.fromRGB(225,58,81)})

local tab = window:page({name = "Silent Aim"})
local s = tab:section({name = "Silent Aim",side = "left",size = 180})
s:toggle({name = "Silent Aim",def = false, callback = function(bool)
DaHoodSettings.SilentAim = bool
end})
s:toggle({name = "Predict Lag",def = false, callback = function(bool)
    DaHoodSettings.Prediction.Lag = bool
end})
s:toggle({name = "Visibilty Check",def = false, callback = function(bool)
    Aiming.VisibleCheck = bool
end})
s:toggle({name = "Hit Air Shots",def = false, callback = function(bool)
    Aiming.Airshots = true
end})
s:toggle({name = "Show FOV",def = false, callback = function(bool)
    Aiming.ShowFOV = bool
end})
s:slider({name = "FOV Size",def = 5, max = 400,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
    Aiming.FOV = value
end})
s:slider({name = "Hitchance",def = 5, max = 400,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
    DaHoodSettings.Prediction = tonumer("0." .. value)
end})
local tab = window:page({name = "AimLock"})
local section1 = tab:section({name = "Strafe Around Target",side = "right",size = 80})

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/trendyylol/roblox/main/Libraries/ESP/Pikahub"))()
local library = loadstring(game:HttpGet("https://pastebin.com/raw/U2HwmEyF"))()
local tab = window:page({name = "ESP"})
local e = tab:section({name = "Esp",side = "right",size = 100})
e:toggle({name = "Boxes", callback = function(bool)
    getgenv().PikaESPSettings.Box = bool
end})

e:toggle({name = "Name",callback = function(bool)
    getgenv().PikaESPSettings.Name = bool
end})


e:toggle({name = "Tracers", callback = function(bool)
    getgenv().PikaESPSettings.Tracers = bool
end})

e:toggle({name = "Mouse Tracers", callback = function(bool)
    getgenv().PikaESPSettings.UnlockTracers = bool
end})
local c = tab:section({name = "Chams",side = "left",size = 100})
c:toggle({name = "Must Enable For Chams", callback = function(t)
    settings_tbl.ESP_Enabled = t	
end})
c:toggle({name = "Enable Chams", callback = function(t)
    settings_tbl.Chams = t
end})
c:colorpicker({name = "Chams Color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(color)
    settings_tbl.Chams_Color = t
end})
c:colorpicker({name = "Glow Color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(color)
settings_tbl.Chams_Glow_Color = t
end})

local cs = tab:section({name = "Client Visuals",side = "left",size = 105})
	
cs:toggle({name = "Gun Cham",def = false, callback = function(callback)
    if callback then
        local Client = game.GetService(game, "Players").LocalPlayer
        Client.Character:FindFirstChildOfClass("Tool").Default.Material = Enum.Material.ForceField
        Client.Character:FindFirstChildOfClass("Tool").Default.BrickColor  = BrickColor.new(255, 255, 255)
    else
        local Client = game.GetService(game, "Players").LocalPlayer
        Client.Character:FindFirstChildOfClass("Tool").Default.Material = Enum.Material.Plastic
    end
end})

cs:colorpicker({name = "Gun Cham Color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(color)
    LocalPlayer.Character:FindFirstChildOfClass("Tool").Default.BrickColor = BrickColor.new(color)
end})


cs:toggle({name = "Body Cham",def = false, callback = function(callback)
    if callback then
        game.Players.LocalPlayer.Character.LeftHand.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightHand.Material = "ForceField"
        game.Players.LocalPlayer.Character.LeftLowerArm.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightLowerArm.Material = "ForceField"
        game.Players.LocalPlayer.Character.LeftUpperArm.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightUpperArm.Material = "ForceField"
        game.Players.LocalPlayer.Character.LeftFoot.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightFoot.Material = "ForceField"
        game.Players.LocalPlayer.Character.LeftLowerLeg.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightLowerLeg.Material = "ForceField"
        game.Players.LocalPlayer.Character.UpperTorso.Material = "ForceField"
        game.Players.LocalPlayer.Character.LowerTorso.Material = "ForceField"
        game.Players.LocalPlayer.Character.LeftUpperLeg.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightUpperLeg.Material = "ForceField"
        game.Players.LocalPlayer.Character.Head.Material = "ForceField"
    else
        game.Players.LocalPlayer.Character.LeftHand.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightHand.Material = "Plastic"
        game.Players.LocalPlayer.Character.LeftLowerArm.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightLowerArm.Material = "Plastic"
        game.Players.LocalPlayer.Character.LeftUpperArm.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightUpperArm.Material = "Plastic"
        game.Players.LocalPlayer.Character.LeftFoot.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightFoot.Material = "Plastic"
        game.Players.LocalPlayer.Character.LeftLowerLeg.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightLowerLeg.Material = "Plastic"
        game.Players.LocalPlayer.Character.UpperTorso.Material = "Plastic"
        game.Players.LocalPlayer.Character.LowerTorso.Material = "Plastic"
        game.Players.LocalPlayer.Character.LeftUpperLeg.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightUpperLeg.Material = "Plastic"
        game.Players.LocalPlayer.Character.Head.Material = "Plastic"
    end
end})

cs:colorpicker({name = "Body Color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(color)
    LocalPlayer.Character.LeftHand.Color = color
    LocalPlayer.Character.RightHand.Color = color
    LocalPlayer.Character.LeftLowerArm.Color = color
    LocalPlayer.Character.RightLowerArm.Color = color
    LocalPlayer.Character.LeftUpperArm.Color = color
    LocalPlayer.Character.RightUpperArm.Color = color
    LocalPlayer.Character.LeftFoot.Color = color
    LocalPlayer.Character.RightFoot.Color = color
    LocalPlayer.Character.LeftLowerLeg.Color = color
    LocalPlayer.Character.RightLowerLeg.Color = color
    LocalPlayer.Character.UpperTorso.Color = color
    LocalPlayer.Character.LowerTorso.Color = color
    LocalPlayer.Character.LeftUpperLeg.Color = color
    LocalPlayer.Character.RightUpperLeg.Color = color
    LocalPlayer.Character.Head.Color = color
end})
local tab = window:page({name = "Visuals"})
local w = tab:section({name = "World Visuals",side = "right",size = 165})
w:slider({name = "Saturation ",def = 0.1, max = 100,min = 0,rounding = false,ticking = false,measuring = "",callback = function(value)
    Light.ColorCorrection.Saturation = value
end})

w:slider({name = "Fog",def = 500, max = 2000,min = 0,rounding = false,ticking = false,measuring = "",callback = function(value)
    game.Lighting.FogEnd = value
end})


w:slider({name = "Brightness",def = 1, max = 100,min = 0,rounding = false,ticking = false,measuring = "",callback = function(value)
    Light.Brightness = value
end})

w:slider({name = "Stars",def = 500, max = 5000,min = 0,rounding = false,ticking = false,measuring = "",callback = function(value)
    Light.Sky.StarCount = value
end})

w:colorpicker({name = "World Color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(color)
    Light.Ambient = color
    Light.OutdoorAmbient = color
end})
    local an = tab:section({name = "Player Animations",side = "right",size = 225})

an:dropdown({name = "Idle",max = 10,options = {"Borock", "Zombie", "Werewolf", "Ninja", "Ud'zal", "Mage", "Toy"},callback = function(State)
        if State == "Borock" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=3293641938"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=3710131919"
        elseif State == "Zombie" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=616158929"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=616160636"
        elseif State == "Werewolf" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=1083195517"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=1083214717"
        elseif State == "Ninja" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=656117400"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=656118341"
        elseif State == "Udzal" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=3303162274"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=3303162274"
        elseif State == "Mage" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=707742142"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=707855907"
        elseif State == "Toy" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=782841498"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=782841498"
        end
    end
})

an:dropdown({name = "Walk",max = 10,options = {"Zombie", "Toy", "Ninja", "Mage", "Werewolf"},callback = function(State)
    if State == "Zombie" then
        game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
            "http://www.roblox.com/asset/?id=616168032"
        elseif State == "Toy" then
            game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
                "http://www.roblox.com/asset/?id=782843345"
    elseif State == "Ninja" then
        game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
            "http://www.roblox.com/asset/?id=656121766"
    elseif State == "Mage" then
        game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
            "http://www.roblox.com/asset/?id=707897309"
        elseif State == "Werewolf" then
            game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
                "http://www.roblox.com/asset/?id=1083178339"
    end
end
})

an:dropdown({name = "Run",max = 10,options = {"Zombie", "Toy", "Ninja", "Mage", "Werewolf"},callback = function(State)
    if State == "Zombie" then
        game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
            "http://www.roblox.com/asset/?id=616163682"
     elseif State == "Toy" then
            game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
                "http://www.roblox.com/asset/?id=782842708"
    elseif State == "Ninja" then
        game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
            "http://www.roblox.com/asset/?id=656118852"
    elseif State == "Mage" then
        game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
            "http://www.roblox.com/asset/?id=707861613"
        elseif State == "Werewolf" then
            game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
                "http://www.roblox.com/asset/?id=1083216690"
    end
end
})

an:dropdown({name = "Jump",max = 10,options = {"Zombie", "Werewolf", "Ninja", "Mage", "Toy", "OldSchool"},callback = function(State)
if State == "Zombie" then
    game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
        "http://www.roblox.com/asset/?id=616161997"
elseif State == "Werewolf" then
    game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
        "http://www.roblox.com/asset/?id=1083218792"
elseif State == "Ninja" then
    game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
        "http://www.roblox.com/asset/?id=656117878"
elseif State == "Mage" then
    game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
        "http://www.roblox.com/asset/?id=707853694"
elseif State == "Toy" then
    game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
        "http://www.roblox.com/asset/?id=782847020"
elseif State == "OldSchool" then
    game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
        "http://www.roblox.com/asset/?id=5319841935"
end
end
})

an:dropdown({name = "Fall",max = 10,options = {"Zombie", "Werewolf", "Ninja", "Mage", "Toy", "OldSchool"},callback = function(State)
if State == "Zombie" then
    game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
        "http://www.roblox.com/asset/?id=616157476"
elseif State == "Werewolf" then
    game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
        "http://www.roblox.com/asset/?id=1083189019"
elseif State == "Ninja" then
    game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
        "http://www.roblox.com/asset/?id=656115606"
elseif State == "Mage" then
    game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
        "http://www.roblox.com/asset/?id=707829716"
elseif State == "Toy" then
    game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
        "http://www.roblox.com/asset/?id=782846423"
elseif State == "OldSchool" then
    game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
        "http://www.roblox.com/asset/?id=5319839762"
end
end
})
local css = tab:section({name = "Client Sided Styles",side = "left",size = 125})

css:button({name = "Headless",callback = function()
        game.Players.LocalPlayer.Character.Head.Transparency = 1
        game.Players.LocalPlayer.Character.Head.Transparency = 1
        for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
        if (v:IsA("Decal")) then
        v.Transparency = 1
        end
        end
    end})
    
css:button({name = "Korblox",callback = function()
        local ply = game.Players.LocalPlayer
            local chr = ply.Character
            chr.RightLowerLeg.MeshId = "902942093"
            chr.RightLowerLeg.Transparency = "1"
            chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
            chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
            chr.RightFoot.MeshId = "902942089"
            chr.RightFoot.Transparency = "1"
        end})
            
       
css:button({name = "Beast Mode",callback = function()
local L_412_ = game.Players.LocalPlayer.Character
	local L_413_ = L_412_:WaitForChild("Head")
	local L_414_ = L_413_:WaitForChild("face")
	L_414_.Texture = "rbxassetid://127959433"
end})

css:button({name = "Playful Vampire",callback = function()
    local L_415_ = game.Players.LocalPlayer.Character
	local L_416_ = L_415_:WaitForChild("Head")
	local L_417_ = L_416_:WaitForChild("face")
	L_417_.Texture = "rbxassetid://2409281591"
end})


local we = tab:section({name = "FE Styles",side = "left",size = 75})

we:button({name = "Headless",callback = function()
	local L_418_ = game.Players.LocalPlayer
	L_418_.Character.Head:BreakJoints()
	L_418_.Character.Head.Position = Vector3.new(0, 999999999999, 0)
end})

we:button({name = "Korblox",callback = function()
	game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
end})
local tab = window:page({name = "Anti-Aim"})
local an = tab:section({name = "Movement",side = "left",size = 125})
an:toggle({name = "Spinbot",def = false, callback = function(bool)
    getgenv().Spinbot = bool
end})

if Spinbot then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad((positive1)), 0)
end

an:slider({name = "Spinbot Multiplier",def = 45, max = 165,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
    getgenv().positive1 = value
end})

an:toggle({name = " Enable Cframe",def = false, callback = function(bool)
    getgenv().cframespeedtoggle = bool
end})
an:slider({name = "Cframe Speed",def = 1, max = 20,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
    getgenv().speedvalue = value
end})
local at = tab:section({name = "Anti-Aim",side = "right",size = 200})
at:toggle({name = "Anti Lock",def = false, callback = function(bool)
    getgenv().antilock = bool
end})

at:slider({name = "Anti Lock Speed",def = 1, max = 5,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
    getgenv().antilockspeed = value
end})

    at:toggle({name = "Desync",def = false, callback = function(bool)
        getgenv().DesyncEnabled = bool
    end})

    at:slider({name = "Desync Speed",def = 1, max = 150,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
        getgenv().DesyncVelocity = value
end})

    at:toggle({name = "Anit-Aim",def = false, callback = function(bool)
        getgenv().Jitter = bool
    end})

    at:slider({name = "Anti-Aim Angle",def = 1, max = 150,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
        getgenv().Angle = value
    end})
    local tab = window:page({name = "Misc"})
    local au = tab:section({name = "Auto ",side = "left",size = 85})
    
    au:toggle({name = " Reload",def = false, callback = function(bool)
        getgenv().AutoReloadx = bool
    end})

    if getgenv().AutoReloadx then
        if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
            if
                game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild(
                    "Ammo"
                )
             then
                if
                    game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild(
                        "Ammo"
                    ).Value <= 0
                 then
                    game:GetService("ReplicatedStorage").MainEvent:FireServer(
                        "Reload",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
                    )
                end
            end
        end
    end

    au:toggle({name = " Medium Armor",def = false, callback = function(bool)
        if getgenv().AutoHighArmor == true then
            getgenv().AutoHighArmor = false
        else
            getgenv().AutoHighArmor = true
        end
        
        while getgenv().AutoHighArmor == true and game:GetService("RunService").Heartbeat:Wait() do
            pcall(function()
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("BodyEffects"):FindFirstChild("Armor").Value <= 0 then
                    local LS = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                    repeat
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[High-Medium Armor] - $2300"].Head.CFrame
                        fireclickdetector(game:GetService("Workspace").Ignored.Shop["[High-Medium Armor] - $2300"].ClickDetector)
                        game:GetService("RunService").Heartbeat:Wait()
                    until game:GetService("Players").LocalPlayer.Character:FindFirstChild("BodyEffects"):FindFirstChild("Armor").Value >= 50
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = LS
                end
            end)
        end
    end})

    au:toggle({name = " Stomp",def = false, callback = function(bool)
        getgenv().autostomp = bool
    end})
    
    if getgenv().autostomp then
        game.ReplicatedStorage.MainEvent:FireServer("Stomp")
    end
    local m = tab:section({name = "Movement",side = "left",size = 150})
    m:toggle({name = "B-Hop",def = false, callback = function(state)
        bhop = state
        spawn(function()
        while wait() and bhop do
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
        end
        end)
    end})
    
    
    m:button({name = "Speed = Z",callback = function()
    
    
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
            mouse.KeyDown:connect(function(q) if q:lower()=="z"then onButton1Down(mouse)end end)
            mouse.KeyUp:connect(function(q) if q:lower()=="z"then onButton1Up(mouse)end end)
        end
        onSelected(game.Players.LocalPlayer:GetMouse())
            
    end})
    
    m:button({name = "Fake Macro = X",callback = function()
        local Player = game:GetService("Players").LocalPlayer
        local Mouse = Player:GetMouse()
        local SpeedGlitch = false
        local Wallet = Player.Backpack:FindFirstChild("Wallet")
    
        local UniversalAnimation = Instance.new("Animation")
    
        function stopTracks()
            for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
                if (v.Animation.AnimationId:match("rbxassetid")) then
                    v:Stop()
                end
            end
        end
    
        function loadAnimation(id)
            if UniversalAnimation.AnimationId == id then
                stopTracks()
                UniversalAnimation.AnimationId = "1"
            else
                UniversalAnimation.AnimationId = id
                local animationTrack = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(UniversalAnimation)
                animationTrack:Play()
            end
        end
    
        Mouse.KeyDown:Connect(function(Key)
            if Key == "x" then
                SpeedGlitch = not SpeedGlitch
                if SpeedGlitch == true then
                    stopTracks()
                    loadAnimation("rbxassetid://3189777795")
                    wait(1.5)
                    Wallet.Parent = Player.Character
                    wait(0.15)
                    Player.Character:FindFirstChild("Wallet").Parent = Player.Backpack
                    wait(0.05)
                    repeat game:GetService("RunService").Heartbeat:wait()
                        keypress(0x49)
                        game:GetService("RunService").Heartbeat:wait()
                        keypress(0x4F)
                        game:GetService("RunService").Heartbeat:wait()
                        keyrelease(0x49)
                        game:GetService("RunService").Heartbeat:wait()
                        keyrelease(0x4F)
                        game:GetService("RunService").Heartbeat:wait()
                    until SpeedGlitch == false
                end
            end
        end)
    end})
    m:button({name = "Shazam Fly = X",callback = function()
        _G.ShazamFlySpeed = 3
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Raycodex/Exploiting/main/Roblox/DaHoodShazamFly"))()
    end})
    m:button({name = "Fly = V",callback = function()
    local L_152_
        local L_153_ = game.Players.LocalPlayer
        IYMouse = L_153_:GetMouse()
        IYMouse.KeyDown:connect(
                function(L_154_arg0)
            if L_154_arg0 == "v" then
                if L_152_ then
                    L_152_ = false
                    fly()
                else
                    L_152_ = true
                    NOFLY()
                end
            end
        end
            )
        for L_155_forvar0, L_156_forvar1 in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if L_156_forvar1:IsA("BasePart") and L_156_forvar1.CanCollide == true then
                L_156_forvar1.CanCollide = false
            end
        end
        FLYING = false
        QEfly = true
        iyflyspeed = 7
        vehicleflyspeed = 7
        function sFLY(L_157_arg0)
            repeat
                wait()
            until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
            repeat
                wait()
            until IYMouse
            local L_158_ = game.Players.LocalPlayer.Character.LowerTorso
            local L_159_ = {
                F = 0,
                B = 0,
                L = 0,
                R = 0,
                Q = 0,
                E = 0
            }
            local L_160_ = {
                F = 0,
                B = 0,
                L = 0,
                R = 0,
                Q = 0,
                E = 0
            }
            local L_161_ = 5
            local function L_162_func()
                FLYING = true
                local L_163_ = Instance.new("BodyGyro", L_158_)
                local L_164_ = Instance.new("BodyVelocity", L_158_)
                L_163_.P = 9e4
                L_163_.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                L_163_.cframe = L_158_.CFrame
                L_164_.velocity = Vector3.new(0, 0, 0)
                L_164_.maxForce = Vector3.new(9e9, 9e9, 9e9)
                spawn(
                        function()
                    repeat
                        wait()
                        if not L_157_arg0 and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand =
                                        true
                        end
                        if L_159_.L + L_159_.R ~= 0 or L_159_.F + L_159_.B ~= 0 or L_159_.Q + L_159_.E ~= 0 then
                            L_161_ = 50
                        elseif not (L_159_.L + L_159_.R ~= 0 or L_159_.F + L_159_.B ~= 0 or L_159_.Q + L_159_.E ~= 0) and L_161_ ~= 0 then
                            L_161_ = 0
                        end
                        if L_159_.L + L_159_.R ~= 0 or L_159_.F + L_159_.B ~= 0 or L_159_.Q + L_159_.E ~= 0 then
                            L_164_.velocity =
                                        (workspace.CurrentCamera.CoordinateFrame.lookVector * (L_159_.F + L_159_.B) +
                                        workspace.CurrentCamera.CoordinateFrame *
                                            CFrame.new(L_159_.L + L_159_.R, (L_159_.F + L_159_.B + L_159_.Q + L_159_.E) * 0.2, 0).p -
                                        workspace.CurrentCamera.CoordinateFrame.p) *
                                        L_161_
                            L_160_ = {
                                F = L_159_.F,
                                B = L_159_.B,
                                L = L_159_.L,
                                R = L_159_.R
                            }
                        elseif L_159_.L + L_159_.R == 0 and L_159_.F + L_159_.B == 0 and L_159_.Q + L_159_.E == 0 and L_161_ ~= 0 then
                            L_164_.velocity =
                                        (workspace.CurrentCamera.CoordinateFrame.lookVector * (L_160_.F + L_160_.B) +
                                        workspace.CurrentCamera.CoordinateFrame *
                                            CFrame.new(L_160_.L + L_160_.R, (L_160_.F + L_160_.B + L_159_.Q + L_159_.E) * 0.2, 0).p -
                                        workspace.CurrentCamera.CoordinateFrame.p) *
                                        L_161_
                        else
                            L_164_.velocity = Vector3.new(0, 0, 0)
                        end
                        L_163_.cframe = workspace.CurrentCamera.CoordinateFrame
                    until not FLYING
                    L_159_ = {
                        F = 0,
                        B = 0,
                        L = 0,
                        R = 0,
                        Q = 0,
                        E = 0
                    }
                    L_160_ = {
                        F = 0,
                        B = 0,
                        L = 0,
                        R = 0,
                        Q = 0,
                        E = 0
                    }
                    L_161_ = 0
                    L_163_:destroy()
                    L_164_:destroy()
                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
                    end
                end
                    )
            end
            IYMouse.KeyDown:connect(
                    function(L_165_arg0)
                if L_165_arg0:lower() == "w" then
                    if L_157_arg0 then
                        L_159_.F = vehicleflyspeed
                    else
                        L_159_.F = iyflyspeed
                    end
                elseif L_165_arg0:lower() == "s" then
                    if L_157_arg0 then
                        L_159_.B = -vehicleflyspeed
                    else
                        L_159_.B = -iyflyspeed
                    end
                elseif L_165_arg0:lower() == "a" then
                    if L_157_arg0 then
                        L_159_.L = -vehicleflyspeed
                    else
                        L_159_.L = -iyflyspeed
                    end
                elseif L_165_arg0:lower() == "d" then
                    if L_157_arg0 then
                        L_159_.R = vehicleflyspeed
                    else
                        L_159_.R = iyflyspeed
                    end
                elseif QEfly and L_165_arg0:lower() == "e" then
                    if L_157_arg0 then
                        L_159_.Q = vehicleflyspeed * 2
                    else
                        L_159_.Q = iyflyspeed * 2
                    end
                elseif QEfly and L_165_arg0:lower() == "q" then
                    if L_157_arg0 then
                        L_159_.E = -vehicleflyspeed * 2
                    else
                        L_159_.E = -iyflyspeed * 2
                    end
                end
            end
                )
            IYMouse.KeyUp:connect(
                    function(L_166_arg0)
                if L_166_arg0:lower() == "w" then
                    L_159_.F = 0
                elseif L_166_arg0:lower() == "s" then
                    L_159_.B = 0
                elseif L_166_arg0:lower() == "a" then
                    L_159_.L = 0
                elseif L_166_arg0:lower() == "d" then
                    L_159_.R = 0
                elseif L_166_arg0:lower() == "e" then
                    L_159_.Q = 0
                elseif L_166_arg0:lower() == "q" then
                    L_159_.E = 0
                end
            end
                )
            L_162_func()
        end
        function NOFLY()
            FLYING = false
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
        end
        function fly()
            NOFLY()
            wait()
            sFLY()
        end
    end})
    local ant = tab:section({name = "Anti ",side = "right",size = 150})
    ant:toggle({name = "Anti Lock",def = false, callback = function(bool)
        getgenv().antilock = bool
    end})
    
    ant:slider({name = "Anti Lock Speed",def = 1, max = 5,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
        getgenv().antilockspeed = value
    end})
    ant:toggle({name = "Anti Bag",def = false, callback = function(bool)
        getgenv().antibag = bool
    end})
    
    ant:toggle({name = "Anti Fling",def = false, callback = function(bool)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = bool
    end})

    ant:toggle({name = "Anti Slow",def = false, callback = function(bool)
        getgenv().antislow = bool
    end})

    ant:toggle({name = "Anti Stomp",def = false, callback = function(bool)
        getgenv().antistomplo = bool
    end})
    local ra = tab:section({name = "Random Stuff",side = "right",size = 250})
  ra:slider({name = "Player FOV",def = 1, max = 120,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
        workspace.CurrentCamera.FieldOfView = value
    end})
    ra:button({name = "Free animation Pack",callback = function()
        local Folder = Instance.new('Folder', game:GetService("Workspace"))
        local AnimationPack = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
        local ScrollingFrame = AnimationPack.ScrollingFrame
        local CloseButton = AnimationPack.CloseButton
    
        AnimationPack.Visible = true
    
        local LeanAnimation = Instance.new("Animation", Folder)
        LeanAnimation.Name = "LeanAnimation"
        LeanAnimation.AnimationId = "rbxassetid://3152375249"
        local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)
    
        local LayAnimation = Instance.new("Animation", Folder)
        LayAnimation.Name = "LayAnimation"
        LayAnimation.AnimationId = "rbxassetid://3152378852"
        local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)
    
        local Dance1Animation = Instance.new("Animation", Folder)
        Dance1Animation.Name = "Dance1Animation"
        Dance1Animation.AnimationId = "rbxassetid://3189773368"
        local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)
    
        local Dance2Animation = Instance.new("Animation", Folder)
        Dance2Animation.Name = "Dance2Animation"
        Dance2Animation.AnimationId = "rbxassetid://3189776546"
        local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)
    
        local GreetAnimation = Instance.new("Animation", Folder)
        GreetAnimation.Name = "GreetAnimation"
        GreetAnimation.AnimationId = "rbxassetid://3189777795"
        local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)
    
        local PrayingAnimation = Instance.new("Animation", Folder)
        PrayingAnimation.Name = "PrayingAnimation"
        PrayingAnimation.AnimationId = "rbxassetid://3487719500"
        local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)
    
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
                if v.Text == "Praying" then
                    v.Name = "PrayingButton"
                end
            end
        end
    
        function Stop()
            Lay:Stop()
            Lean:Stop()
            Dance1:Stop()
            Dance2:Stop()
            Greet:Stop()
            Praying:Stop()
        end
    
        local LeanTextButton = ScrollingFrame.LeanButton
        local LayTextButton = ScrollingFrame.LayButton
        local Dance1TextButton = ScrollingFrame.Dance1Button
        local Dance2TextButton = ScrollingFrame.Dance2Button
        local GreetTextButton = ScrollingFrame.GreetButton
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
        PrayingTextButton.MouseButton1Click:Connect(function()
            Stop()
            Praying:Play()
        end)
    
        game:GetService("Players").LocalPlayer.Character.Humanoid.Running:Connect(function()
            Stop()
        end)
        game:GetService("Players").LocalPlayer.Character.Humanoid.Died:Connect(function()
            Stop()
            repeat
                wait()
            until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 100
            wait(1)
            local AnimationPack = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
            local ScrollingFrame = AnimationPack.ScrollingFrame
            local CloseButton = AnimationPack.CloseButton
    
            AnimationPack.Visible = true
    
            local LeanAnimation = Instance.new("Animation", Folder)
            LeanAnimation.Name = "LeanAnimation"
            LeanAnimation.AnimationId = "rbxassetid://3152375249"
            local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)
    
            local LayAnimation = Instance.new("Animation", Folder)
            LayAnimation.Name = "LayAnimation"
            LayAnimation.AnimationId = "rbxassetid://3152378852"
            local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)
    
            local Dance1Animation = Instance.new("Animation", Folder)
            Dance1Animation.Name = "Dance1Animation"
            Dance1Animation.AnimationId = "rbxassetid://3189773368"
            local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)
    
            local Dance2Animation = Instance.new("Animation", Folder)
            Dance2Animation.Name = "Dance2Animation"
            Dance2Animation.AnimationId = "rbxassetid://3189776546"
            local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)
    
            local GreetAnimation = Instance.new("Animation", Folder)
            GreetAnimation.Name = "GreetAnimation"
            GreetAnimation.AnimationId = "rbxassetid://3189777795"
            local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)
    
            local PrayingAnimation = Instance.new("Animation", Folder)
            PrayingAnimation.Name = "PrayingAnimation"
            PrayingAnimation.AnimationId = "rbxassetid://3487719500"
            local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)
    
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
                    if v.Text == "Praying" then
                        v.Name = "PrayingButton"
                    end
                end
            end
    
            function Stop()
                Lay:Stop()
                Lean:Stop()
                Dance1:Stop()
                Dance2:Stop()
                Greet:Stop()
                Praying:Stop()
            end
    
            local LeanTextButton = ScrollingFrame.LeanButton
            local LayTextButton = ScrollingFrame.LayButton
            local Dance1TextButton = ScrollingFrame.Dance1Button
            local Dance2TextButton = ScrollingFrame.Dance2Button
            local GreetTextButton = ScrollingFrame.GreetButton
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
            PrayingTextButton.MouseButton1Click:Connect(function()
                Stop()
                Praying:Play()
            end)
        end)
    end})
    
    ra:button({name = "Chat Spy",callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/nzXicwc1", true))()
    end})
    ra:button({name = "Inf Zoom",callback = function()
        game.Players.localPlayer.CameraMaxZoomDistance = 99999999
        game.Players.LocalPlayer.CameraMinZoomDistance = 0
    end})
    ra:button({name = "Reach",callback = function()

        LP = game.Players.LocalPlayer
        for i,v in ipairs(LP.Character:GetDescendants()) do
            if v:IsA("MeshPart") then v.Massless = true
                v.CanCollide = false
                v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
    
            end
        end
    
        for i,v in ipairs(game.workspace:GetDescendants()) do
            if v:IsA("Seat") then 
                v.Disabled = true
            end
        end
        x = 40
        y = 40
        z = 40
    
    
        penis = Vector3.new(x,y,z)
    
        LP.Character.RightHand.Size = penis
    
        LP.Character.RightHand.Transparency = 1
        local selectionBox = Instance.new("SelectionBox",LP.Character.RightHand)
        selectionBox.Adornee = LP.Character.RightHand
        selectionBox.Color3 = Color3.new(0, 0, 0)
    end})
    ra:button({name = "No Jump Cooldown",callback = function()
        local player = game.Players.LocalPlayer
        local spacedown = false
        staminup = true
        game:GetService('UserInputService').InputBegan:Connect(function(key,b)
            if key.KeyCode == Enum.KeyCode.Space and not b then
                if staminup == true then
                    spacedown = true
                    while spacedown == true do
                        wait()
                        player.Character:FindFirstChildWhichIsA('Humanoid').JumpPower = 50
                        player.Character:FindFirstChildWhichIsA('Humanoid').Jump = true
                        player.Character:FindFirstChildWhichIsA('Humanoid').JumpPower = 50
                    end
                end
            end
        end)
        game:GetService('UserInputService').InputEnded:Connect(function(key,b)
            if key.KeyCode == Enum.KeyCode.Space and not b then
                if staminup == true then
                    spacedown = false
                end
            end
        end)
    end})
    ra:button({name = "No Recoil",callback = function()
        local player = game.Players.LocalPlayer
        for i,v in pairs(game:GetService('Workspace'):GetChildren()) do
            if v:IsA('Camera') then
                v:Destroy()
            end
        end
        local newcam = Instance.new('Camera')
        newcam.Parent = game:GetService('Workspace')
        newcam.Name = 'Camera'
        newcam.CameraType = 'Custom'
        newcam.CameraSubject = player.Character:FindFirstChildWhichIsA('Humanoid')
        newcam.HeadLocked = true
        newcam.HeadScale = 1 
    end})
    ra:button({name = "Low ASF GFX",callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/Av2rdcUp'))()
    end})
    ra:button({name = "No Fog",callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/06iG6YkU", true))()
    end})
    local tab4 = window:page({name = "Teleports"})
    local section1 = tab4:section({name = "Locations",side = "left",size = 300})
    section1:button({name = "Admin Base",def = false,callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-874.903992, -32.6492004, -525.215698)
    end})
   
    section1:button({name = "Food",def = false,callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        CFrame.new(-788.39318847656, -39.649200439453, -935.27795410156)
    end})

    section1:button({name = "High-Medium Armor",def = false,callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-934.73651123047, -28.492471694946, 565.99884033203)
    end})

    section1:button({name = "Double Barrel",def = false,callback = function()
        getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1039.59985, 18.8513641, -256.449951, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    end})

    section1:button({name = "Revolver",def = false,callback = function()
        getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-638.75, 18.8500004, -118.175011, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    end})

    section1:button({name = "Shotgun",def = false,callback = function()
getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-578.623657, 5.47212696, -725.131531, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end})

section1:button({name = "Tac",def = false,callback = function()
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(470.877533, 45.1272316, -620.630676, 0.999999821, 0.000604254019, -2.60802135e-08, -0.000604254019, 0.999999821, -8.63220048e-05, -2.60802135e-08, 8.63220048e-05, 1)
end})

section1:button({name = "Smg",def = false,callback = function()
getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-577.123413, 5.47666788, -718.031433, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end})


section1:button({name = "Rpg",def = false,callback = function()
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-794.814697, -42.5468521, -932.97998, 5.96046448e-08, 2.91038305e-11, 1, -0.000610388815, 0.999999821, 2.91038305e-11, -0.999999762, -0.000610388815, 5.96046448e-08)
end})


section1:button({name = "Casino",def = false,callback = function()
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-962.72345, 21.2549973, -186.814987, -0.0274876002, 2.91178949e-05, 0.999621451, -5.5798846e-06, 1, -2.92823333e-05, -0.999621451, -6.38268148e-06, -0.0274876002)
end})


section1:button({name = "Bank",def = false,callback = function()
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-402.123718, 21.75, -283.988617, 0.0159681588, -0.000121377925, -0.999872446, -2.60148026e-05, 1, -0.000121808866, 0.999872506, 2.79565484e-05, 0.0159681737)
end})

    


local section1 = tab4:section({name = "Weapons",side = "Right",size = 250})
section1:button({name = "Revolver",def = false,callback = function()
        LocalPlayer = game:GetService "Players".LocalPlayer
        local gunName = "[Revolver] - $1300"
        local k = game.Workspace.Ignored.Shop[gunName]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    

    section1:button({name = "DB",def = false,callback = function()
    
        LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    

    section1:button({name = "SMG",def = false,callback = function()
        LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[SMG] - $750"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[SMG] - $750"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[SMG] - $750"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})


    section1:button({name = "AK47",def = false,callback = function()
        LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[AK47] - $2250"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[AK47] - $2250"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[AK47] - $2250"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    

    section1:button({name = "LMG",def = false,callback = function()
    LocalPlayer = game:GetService "Players".LocalPlayer
    local k = game.Workspace.Ignored.Shop["[LMG] - $3750"]
    local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
    wait(0.5)
    fireclickdetector(game.Workspace.Ignored.Shop["[LMG] - $3750"].ClickDetector)
    fireclickdetector(game.Workspace.Ignored.Shop["[LMG] - $3750"].ClickDetector)
    LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})


    section1:button({name = "Glock",def = false,callback = function()
        LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Glock] - $500"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Glock] - $500"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Glock] - $500"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})


 section1:button({name = "Silencer",def = false,callback = function()
    LocalPlayer = game:GetService "Players".LocalPlayer
    local k = game.Workspace.Ignored.Shop["[Silencer] - $550"]
    local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
    wait(0.5)
    fireclickdetector(game.Workspace.Ignored.Shop["[Silencer] - $550"].ClickDetector)
    fireclickdetector(game.Workspace.Ignored.Shop["[Silencer] - $550"].ClickDetector)
    LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
 end})

 section1:button({name = "RPG",def = false,callback = function()
 LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[RPG] - $6000"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[RPG] - $6000"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[RPG] - $6000"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
 end})

    section1:button({name = "Flamethrower",def = false,callback = function()
        LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Flamethrower] - $25000"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Flamethrower] - $25000"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Flamethrower] - $25000"].ClickDetector)

        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})


    local section1 = tab4:section({name = "Ammo",side = "Right",size = 250})

    section1:button({name = "Revolver Ammo",def = false,callback = function()
    local LocalPlayer = game:GetService "Players".LocalPlayer
        local gunName = "12 [Revolver Ammo] - $75"
        local k = game.Workspace.Ignored.Shop[gunName]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    section1:button({name = "DB Ammo",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    section1:button({name = "SMG Ammo",def = false,callback = function()
        LocalPlayer = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"]
            local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end})

        section1:button({name = "AK47 Ammo",def = false,callback = function()
            LocalPlayer = game:GetService "Players".LocalPlayer
                local k = game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"]
                local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
                wait(0.5)
                fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)
                fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            end})

            section1:button({name = "LMG Ammo",def = false,callback = function()
            local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            end})

            section1:button({name = "Glock Ammo",def = false,callback = function()
            local LocalPlayer = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["25 [Glock Ammo] - $60"]
            local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["25 [Glock Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["25 [Glock Ammo] - $60"].ClickDetector)
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            end})

            section1:button({name = "Silencer Ammo",def = false,callback = function()
            local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["25 [Silencer Ammo] - $50"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["25 [Silencer Ammo] - $50"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["25 [Silencer Ammo] - $50"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            end})

section1:button({name = "RPG Ammo",def = false,callback = function()
            local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["5 [RPG Ammo] - $1000"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["5 [RPG Ammo] - $1000"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["5 [RPG Ammo] - $1000"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
end})

section1:button({name = "Flamethrower Ammo",def = false,callback = function()
local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["140 [Flamethrower Ammo] - $1550"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["140 [Flamethrower Ammo] - $1550"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["140 [Flamethrower Ammo] - $1550"].ClickDetector)

        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})


    local section1 = tab4:section({name = "Food",side = "Left",size = 220})
    section1:button({name = "Pizza",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Pizza] - $5"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Pizza] - $5"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Pizza] - $5"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})


    section1:button({name = "Chicken",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Chicken] - $7"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Chicken] - $7"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Chicken] - $7"].ClickDetector)

        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)

    end})

    section1:button({name = "Taco",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Taco] - $2"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Taco] - $2"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Taco] - $2"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    section1:button({name = "Hot Dog",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[HotDog] - $8"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[HotDog] - $8"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[HotDog] - $8"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    section1:button({name = "Hamburger",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Hamburger] - $5"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Hamburger] - $5"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Hamburger] - $5"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    
    section1:button({name = "Lettuce",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Lettuce] - $5"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Lettuce] - $5"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Lettuce] - $5"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})
    

    section1:button({name = "Donut",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Donut] - $5"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Donut] - $5"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Donut] - $5"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})


    section1:button({name = "Popcorn",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Popcorn] - $7"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Popcorn] - $7"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Popcorn] - $7"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    


    game:GetService("RunService").Heartbeat:Connect(
        function()
    if cframespeedtoggle == true then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
            game.Players.LocalPlayer.Character.Humanoid.MoveDirection * speedvalue
    end
    if Spinbot then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad((positive1)), 0)
    end
    if Jitter then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position) *
            CFrame.Angles(0, math.rad(Angle) + math.rad((math.random(1, 2) == 1 and Jit or -Jit)), 0)
    end

    if AntiAim1 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * -250
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(555), 0)
    end
    if AntiAim2 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1.333, 0)
        wait(0.2)
    end
    if getgenv().antilock then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
            -game.Players.LocalPlayer.Character.Humanoid.MoveDirection * getgenv().antilockspeed
    end
    if getgenv().DesyncEnabled then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * getgenv().DesyncVelocity
            game:GetService("RunService").Heartbeat:Wait()
    end
    if getgenv().antistomplo then
        if game.Players.LocalPlayer.Character.Humanoid.Health <= 5 then
            for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v:Destroy()
                end
            end
        end
    end
    if getgenv().AutoReloadx then
        if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
            if
                game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild(
                    "Ammo"
                )
             then
                if
                    game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild(
                        "Ammo"
                    ).Value <= 0
                 then
                    game:GetService("ReplicatedStorage").MainEvent:FireServer(
                        "Reload",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
                    )
                end
            end
        end
    end
    if getgenv().autostomp then
        game.ReplicatedStorage.MainEvent:FireServer("Stomp")
    end
    if getgenv().antibag then
        game.Players.LocalPlayer.Character["Christmas_Sock"]:Destroy()
    end
end)


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
 
game:GetService("CoreGui").imgui.Windows.Window.Visible = false
RunService:BindToRenderStep("AimLock", 0, function()
    if (DaHoodSettings.AimLock and Aiming.Check() and LMFAO) then
        local SelectedPart = Aiming.SelectedPart
 
        local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)
 
        CurrentCamera.CFrame = CFrame.lookAt(CurrentCamera.CFrame.Position, Hit.Position)
    end
end)
game.Players.PlayerAdded:Connect(function(plr) 
    plr.CharacterAdded:Connect(function(Char)
        Char:WaitForChild("Humanoid")
        if plr.UserId == 247041371 then
            Char.Humanoid.DisplayName = "[ðŸ‘‘â­ï¸ðŸ’Ž]" .. plr.DisplayName
        end
    end)
end)


function destroy_chams(char)

    for k,v in next, char:GetChildren() do 

        if v:IsA("BasePart") and v.Transparency ~= 1 then

            if v:FindFirstChild("Glow") and 
            v:FindFirstChild("Chams") then

                v.Glow:Destroy()
                v.Chams:Destroy() 

            end 

        end 

    end 

end

dwRunService.Heartbeat:Connect(function()

    if settings_tbl.ESP_Enabled then

        for k,v in next, dwEntities:GetPlayers() do 

            if v ~= dwLocalPlayer then

                if v.Character and
                v.Character:FindFirstChild("HumanoidRootPart") and 
                v.Character:FindFirstChild("Humanoid") and 
                v.Character:FindFirstChild("Humanoid").Health ~= 0 then

                    if settings_tbl.ESP_TeamCheck == false then

                        local char = v.Character 

                        for k,b in next, char:GetChildren() do 

                            if b:IsA("BasePart") and 
                            b.Transparency ~= 1 then
                                
                                if settings_tbl.Chams then

                                    if not b:FindFirstChild("Glow") and
                                    not b:FindFirstChild("Chams") then

                                        local chams_box = Instance.new("BoxHandleAdornment", b)
                                        chams_box.Name = "Chams"
                                        chams_box.AlwaysOnTop = true 
                                        chams_box.ZIndex = 4 
                                        chams_box.Adornee = b 
                                        chams_box.Color3 = settings_tbl.Chams_Color
                                        chams_box.Transparency = settings_tbl.Chams_Transparency
                                        chams_box.Size = b.Size + Vector3.new(0.02, 0.02, 0.02)

                                        local glow_box = Instance.new("BoxHandleAdornment", b)
                                        glow_box.Name = "Glow"
                                        glow_box.AlwaysOnTop = false 
                                        glow_box.ZIndex = 3 
                                        glow_box.Adornee = b 
                                        glow_box.Color3 = settings_tbl.Chams_Glow_Color
                                        glow_box.Size = chams_box.Size + Vector3.new(0.13, 0.13, 0.13)

                                    end

                                else

                                    destroy_chams(char)

                                end
                            
                            end

                        end

                    else

                        if v.Team == dwLocalPlayer.Team then
                            destroy_chams(v.Character)
                        end

                    end

                else

                    destroy_chams(v.Character)

                end

            end

        end

    else 

        for k,v in next, dwEntities:GetPlayers() do 

            if v ~= dwLocalPlayer and 
            v.Character and 
            v.Character:FindFirstChild("HumanoidRootPart") and 
            v.Character:FindFirstChild("Humanoid") and 
            v.Character:FindFirstChild("Humanoid").Health ~= 0 then
                
                destroy_chams(v.Character)

            end

        end

    end

end)
end
--dependencies important part
if game.PlaceId == 7503115095 then
local upgradetimea
local function GetToolFromCharacter()
    for _, Tool in ipairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
        if Tool:IsA("Tool") then
            return Tool
        end
    end
end

local AutoUpgrading = false
local YourDadExists = false

local function AutoUpgrade() -- Auto Upgrades The Tool Your Holding To The Jet
    repeat task.wait(upgradetimea)
        if GetToolFromCharacter() and AutoUpgrading and GetToolFromCharacter().Name ~= "10082" then
            local Args = {
                [1] = {
                    [GetToolFromCharacter().Name] = 1
                }
            }

            task.spawn(function()
                game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(Args))
            end)
        else
            AutoUpgrade()
        end
    until
    YourDadExists == true
end
task.spawn(AutoUpgrade)
local faster
local upgradetimes
local function GetToolFromCharactere()
    for _, Toole in ipairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
        if Toole:IsA("Tool") then
            return Toole
        end
    end
end
local AutoUpgradings = false
local YourDadExistss = false

local function AutoUpgrades() 
    repeat task.wait(upgradetimes)
        if GetToolFromCharacter() and AutoUpgradings and GetToolFromCharacter().Name ~= "10082" then
            local Args = {
                [1] = {
                [GetToolFromCharactere().Name] = (faster)
                }
            }

            task.spawn(function()
                game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(Args))
            end)
        else
            AutoUpgrades()
        end
    until
    YourDadExistss == true
end
task.spawn(AutoUpgrades)
local AutoDropping = false
local AutoDropping_Delay = 0
local CurrentAutoDropping = nil

task.spawn(function()
    while task.wait() do
        if GetToolFromCharacter() then
            CurrentAutoDropping = GetToolFromCharacter().Name
        end
    end
end)

local function AutoDrop()
    repeat task.wait(0.2)
        if CurrentAutoDropping and AutoDropping then
            local Args_1 = {
                [1] = game:GetService("Players").LocalPlayer
            }

            game:GetService("ReplicatedStorage").Events.PickAndDrop.DropRE:FireServer(unpack(Args_1))

            local Args_2 = {
                [1] = CurrentAutoDropping
            }

            game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(Args_2))
            task.wait(AutoDropping_Delay)
        else
            AutoDrop()
        end
    until
    YourDadExists == true
end
task.spawn(AutoDrop)

local function NormalDupe() -- Dupes A Normal Item (Atleast 6 Of Them Required)
    if GetToolFromCharacter() then
        local Args = {
            [1] = GetToolFromCharacter().Name,
            [2] = 6,
            [3] = "Normal"
        }
        task.spawn(function()
            game:GetService("ReplicatedStorage").Functions.Upgrade.UpgradeRF:InvokeServer(unpack(Args))
        end)
    end
end

local function GoldenDupe() -- Dupes A Golden Item (Atleast 6 Of Them Required)
    if GetToolFromCharacter() then
        local Args = {
            [1] = GetToolFromCharacter().Name,
            [2] = 6,
            [3] = "Golden"
        }
        task.spawn(function()
            game:GetService("ReplicatedStorage").Functions.Upgrade.UpgradeRF:InvokeServer(unpack(Args))
        end)
    end
end

local function ColoredDupe() -- Dupes A Colored Item (Atleast 6 Of Them Required)
    if GetToolFromCharacter() then
        local Args = {
            [1] = GetToolFromCharacter().Name,
            [2] = 6,
            [3] = "Colored"
        }
        task.spawn(function()
            game:GetService("ReplicatedStorage").Functions.Upgrade.UpgradeRF:InvokeServer(unpack(Args))
        end)
    end
end

local AutoNormalDupee = false
local AutoColoredDupee = false
local coloredtime
local normaltime
local function AutoNormalDupe()
    repeat task.wait(normaltime)
        if GetToolFromCharacter() and AutoNormalDupee then
            local Args = {
                [1] = GetToolFromCharacter().Name,
                [2] = 6,
                [3] = "Normal"
            }
            task.spawn(function()
                game:GetService("ReplicatedStorage").Functions.Upgrade.UpgradeRF:InvokeServer(unpack(Args))
            end)
        else
            AutoNormalDupe()
        end
    until
    YourDadExists == true
end
task.spawn(AutoNormalDupe)

local function AutoColoredDupe()
    repeat task.wait(coloredtime)
        if GetToolFromCharacter() and AutoColoredDupee then
            local Args = {
                [1] = GetToolFromCharacter().Name,
                [2] = 6,
                [3] = "Colored"
            }
            task.spawn(function()
                game:GetService("ReplicatedStorage").Functions.Upgrade.UpgradeRF:InvokeServer(unpack(Args))
            end)
        else
            AutoColoredDupe()
        end
    until
    YourDadExists == true
end
task.spawn(AutoColoredDupe)
--UI library


local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()
local s    = VLib:Window("DIDAR GAMING", "Pop It Trading", "H+16")

local ss = s:Tab("Main")
ss:Slider("WalkSpeed",16,250,16,function(t)
local Player                        = game:service'Players'.LocalPlayer;
Player.Character.Humanoid.WalkSpeed = (t) 
end)
ss:Slider("JumpPower",20,250,20,function(t)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = (t)
end)
ss:Button("Infinite Jump",function()
    local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';

_G.JumpHeight = 50;

function Action(Object, Function) if Object ~= nil then Function(Object); end end

UIS.InputBegan:connect(function(UserInput)
if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
Action(Player.Character.Humanoid, function(self)
if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
Action(self.Parent.HumanoidRootPart, function(self)
    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
end)
end
end)
end
end)
    end)
ss:Button("Grow Tall Script" ,function()

local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character:FindFirstChildOfClass("Humanoid")

function rm()
    for i,v in pairs(Character:GetDescendants()) do
        if v:IsA("BasePart") then
            if v.Name == "Handle" or v.Name == "Head" then
                if Character.Head:FindFirstChild("OriginalSize") then
                    Character.Head.OriginalSize:Destroy()
                end
            else
                for i,cav in pairs(v:GetDescendants()) do
                    if cav:IsA("Attachment") then
                        if cav:FindFirstChild("OriginalPosition") then
                            cav.OriginalPosition:Destroy()  
                        end
                    end
                end
                v:FindFirstChild("OriginalSize"):Destroy()
                if v:FindFirstChild("AvatarPartScaleType") then
                    v:FindFirstChild("AvatarPartScaleType"):Destroy()
                end
            end
        end
    end
end

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyProportionScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyHeightScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("HeadScale"):Destroy()
wait(1)
end)
ss:Button("E To Fly Script",function()
    repeat wait() 
    until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr      = game.Players.LocalPlayer 
local torso    = plr.Character.HumanoidRootPart 
local flying   = true
local deb      = true 
local ctrl     = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 500 
local speed    = 100 
 
function Fly() 
local bg = Instance.new("BodyGyro", torso) 
bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame 
local bv = Instance.new("BodyVelocity", torso) 
bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
repeat wait() 
plr.Character.Humanoid.PlatformStand = true 
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
speed = speed+.5+(speed/maxspeed) 
if speed > maxspeed then 
speed = maxspeed 
end 
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
speed = speed-1 
if speed < 0 then 
speed = 0 
end 
end 
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
else 
bv.velocity = Vector3.new(0,0.1,0) 
end 
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
until not flying 
ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 0 
bg:Destroy() 
bv:Destroy() 
plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
if key:lower() == "e" then 
if flying then flying = false 
else 
flying = true 
Fly() 
end 
elseif key:lower() == "w" then 
ctrl.f = 1 
elseif key:lower() == "s" then 
ctrl.b = -1 
elseif key:lower() == "a" then 
ctrl.l = -1 
elseif key:lower() == "d" then 
ctrl.r = 1 
end 
end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
ctrl.f = 0 
elseif key:lower() == "s" then 
ctrl.b = 0 
elseif key:lower() == "a" then 
ctrl.l = 0 
elseif key:lower() == "d" then 
ctrl.r = 0 
end 
end)
Fly()
    end)
    ss:Button("Make player invisible F key",function()
                    
        local ScriptStarted = false
        local Keybind = "F" --Set to whatever you want, has to be the name of a KeyCode Enum.
        local Transparency = true --Will make you slightly transparent when you are invisible. No reason to disable.
        local NoClip = false --Will make your fake character no clip.
        
        local Player = game:GetService("Players").LocalPlayer
        local RealCharacter = Player.Character or Player.CharacterAdded:Wait()
        
        local IsInvisible = false
        
        RealCharacter.Archivable = true
        local FakeCharacter = RealCharacter:Clone()
        local Part
        Part = Instance.new("Part", workspace)
        Part.Anchored = true
        Part.Size = Vector3.new(200, 1, 200)
        Part.CFrame = CFrame.new(0, -500, 0) --Set this to whatever you want, just far away from the map.
        Part.CanCollide = true
        FakeCharacter.Parent = workspace
        FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
        
        for i, v in pairs(RealCharacter:GetChildren()) do
          if v:IsA("LocalScript") then
              local clone = v:Clone()
              clone.Disabled = true
              clone.Parent = FakeCharacter
          end
        end
        if Transparency then
          for i, v in pairs(FakeCharacter:GetDescendants()) do
              if v:IsA("BasePart") then
                  v.Transparency = 0.7
              end
          end
        end
        local CanInvis = true
        function RealCharacterDied()
          CanInvis = false
          RealCharacter:Destroy()
          RealCharacter = Player.Character
          CanInvis = true
          isinvisible = false
          FakeCharacter:Destroy()
          workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid
        
          RealCharacter.Archivable = true
          FakeCharacter = RealCharacter:Clone()
          Part:Destroy()
          Part = Instance.new("Part", workspace)
          Part.Anchored = true
          Part.Size = Vector3.new(200, 1, 200)
          Part.CFrame = CFrame.new(9999, 9999, 9999) --Set this to whatever you want, just far away from the map.
          Part.CanCollide = true
          FakeCharacter.Parent = workspace
          FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
        
          for i, v in pairs(RealCharacter:GetChildren()) do
              if v:IsA("LocalScript") then
                  local clone = v:Clone()
                  clone.Disabled = true
                  clone.Parent = FakeCharacter
              end
          end
          if Transparency then
              for i, v in pairs(FakeCharacter:GetDescendants()) do
                  if v:IsA("BasePart") then
                      v.Transparency = 0.7
                  end
              end
          end
         RealCharacter.Humanoid.Died:Connect(function()
         RealCharacter:Destroy()
         FakeCharacter:Destroy()
         end)
         Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
        end
        RealCharacter.Humanoid.Died:Connect(function()
         RealCharacter:Destroy()
         FakeCharacter:Destroy()
         end)
        Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
        local PseudoAnchor
        game:GetService "RunService".RenderStepped:Connect(
          function()
              if PseudoAnchor ~= nil then
                  PseudoAnchor.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
              end
               if NoClip then
              FakeCharacter.Humanoid:ChangeState(11)
               end
          end
        )
        
        PseudoAnchor = FakeCharacter.HumanoidRootPart
        local function Invisible()
          if IsInvisible == false then
              local StoredCF = RealCharacter.HumanoidRootPart.CFrame
              RealCharacter.HumanoidRootPart.CFrame = FakeCharacter.HumanoidRootPart.CFrame
              FakeCharacter.HumanoidRootPart.CFrame = StoredCF
              RealCharacter.Humanoid:UnequipTools()
              Player.Character = FakeCharacter
              workspace.CurrentCamera.CameraSubject = FakeCharacter.Humanoid
              PseudoAnchor = RealCharacter.HumanoidRootPart
              for i, v in pairs(FakeCharacter:GetChildren()) do
                  if v:IsA("LocalScript") then
                      v.Disabled = false
                  end
              end
        
              IsInvisible = true
          else
              local StoredCF = FakeCharacter.HumanoidRootPart.CFrame
              FakeCharacter.HumanoidRootPart.CFrame = RealCharacter.HumanoidRootPart.CFrame
             
              RealCharacter.HumanoidRootPart.CFrame = StoredCF
             
              FakeCharacter.Humanoid:UnequipTools()
              Player.Character = RealCharacter
              workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid
              PseudoAnchor = FakeCharacter.HumanoidRootPart
              for i, v in pairs(FakeCharacter:GetChildren()) do
                  if v:IsA("LocalScript") then
                      v.Disabled = true
                  end
              end
              IsInvisible = false
          end
        end
        
        game:GetService("UserInputService").InputBegan:Connect(
          function(key, gamep)
              if gamep then
                  return
              end
              if key.KeyCode.Name:lower() == Keybind:lower() and CanInvis and RealCharacter and FakeCharacter then
                  if RealCharacter:FindFirstChild("HumanoidRootPart") and FakeCharacter:FindFirstChild("HumanoidRootPart") then
                      Invisible()
                  end
              end
          end
        )
        local Sound = Instance.new("Sound",game:GetService("SoundService"))
        Sound.SoundId = "rbxassetid://232127604"
        Sound:Play()
        game:GetService("StarterGui"):SetCore("SendNotification",{["Title"] = "Invisible Toggle Loaded",["Text"] = "Press "..Keybind.." to become change visibility.",["Duration"] = 20,["Button1"] = "Okay."})
            end)       
ss:Button("Left ctrl + click to tp",function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Click%20Teleport.txt"))()
    end)
    ss:Button("Fling Peoples Items",function()
            power = 500 -- change this to make it more or less powerful

game:GetService('RunService').Stepped:connect(function()
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
end)
wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
wait(0)
power = 500 -- change this to make it more or less powerful

game:GetService('RunService').Stepped:connect(function()
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.Torso.CanCollide = false
game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
end)

wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            end)
    ss:Textbox("Put Name here to tp to", true,function(txt)
        Tp=(txt)
        end)
        ss:Toggle("Loop the Tp",function(state)
          if state then
          _G.Loop = true 
          while _G.Loop == true do
          wait(0)
          targetUsername = Tp
        players = game:GetService("Players")
        targetPlayer = players:FindFirstChild(targetUsername)
        players.LocalPlayer.Character:MoveTo(targetPlayer.Character.HumanoidRootPart.Position)
        
          end
                   else
          
          _G.Loop = false
          
                  end
          end)
          
        ss:Button("Grow Really Tall",function()
            --Shit ass script made by failedmite57926

local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character:FindFirstChildOfClass("Humanoid")

function rm()
for i,v in pairs(Character:GetDescendants()) do
if v:IsA("BasePart") then
if v.Name == "Handle" or v.Name == "Head" then
    if Character.Head:FindFirstChild("OriginalSize") then
        Character.Head.OriginalSize:Destroy()
    end
else
    for i,cav in pairs(v:GetDescendants()) do
        if cav:IsA("Attachment") then
            if cav:FindFirstChild("OriginalPosition") then
                cav.OriginalPosition:Destroy()  
            end
        end
    end
    v:FindFirstChild("OriginalSize"):Destroy()
    if v:FindFirstChild("AvatarPartScaleType") then
        v:FindFirstChild("AvatarPartScaleType"):Destroy()
    end
end
end
end
end

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyProportionScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyHeightScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("HeadScale"):Destroy()
wait(1)
        end)
        ss:Button("Tp To The Player",function()
          targetUsername = Tp
      players = game:GetService("Players")
      targetPlayer = players:FindFirstChild(targetUsername)
      players.LocalPlayer.Character:MoveTo(targetPlayer.Character.HumanoidRootPart.Position)
      
      end)
local ss = s:Tab("Auto Dropper")
ss:Label("|Auto Drops Item That You Are Holding|")
ss:Textbox("Wait Time For Dropping Items", true,function(d)
    AutoDropping_Delay = d
    end)
ss:Toggle("Auto Drop Items",function(state)
    AutoDropping = state
    end)
local ss = s:Tab("Auto Upgrade")
ss:Label("|Auto Upgrade Stuff For Free|")

ss:Textbox("Wait Time For Upgrade", true,function(txt)
    upgradetimea = (txt)
    end)

ss:Toggle("Auto upgrade Items",function(state)
    AutoUpgrading = state
    end)
ss:Label("|Auto Upgrade but Its Weird|")
ss:Textbox("Wait Time For Broken Upgrade", true,function(txt)
    upgradetimes = (txt)
    end)
ss:Dropdown("Broken Upgarde Lower The Number The More Boken",{0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2, 0.1, 0},function(t)
faster = (t)
end)
ss:Toggle("Broken Auto Upgrade Items OP",function(state)
AutoUpgradings = state 
end)


local ss = s:Tab("Dupes")
ss:Label("|Dupe For Non Gold Or Rainbow Items(patched)|")
ss:Button("Manual Dupe (Need 6 Of The Item)" ,function()
    NormalDupe()
end)
ss:Textbox("Edit Wait Time", true,function(txt)
    normaltime = (txt)
    end)
ss:Toggle("Auto Dupe",function(state)
    AutoNormalDupee = state
end)
ss:Label("|Dupe For Gold Items Only|")
ss:Button("Manual Dupe (Need 6 Of The Item)" ,function()
    
end)
ss:Textbox("Edit Wait Time", true,function(txt)

    end)
ss:Toggle("Auto Dupe",function(state)
     
end)
ss:Label("|Dupe For Rainbow Items|")
ss:Button("Manual Dupe (Need 6 Of The Item)" ,function()
    ColoredDupe()
end)
ss:Textbox("Edit Wait Time", true,function(txt)
    coloredtime = (txt)
    end)
ss:Toggle("Auto Dupe",function(state)
     AutoColoredDupee = state
end)
local ss = s:Tab("buy out of game items")
ss:Label("click any out of game item you want to buy")
ss:Label("you need the money to buy it")
ss:Button("Buy halloween pumpkin",function()
local args = {
    [1] = "purchase",
    [2] = 10140,
    [3] = 1
}

game:GetService("ReplicatedStorage").Events.Coin.CoinMarketRE:FireServer(unpack(args))
    print("Pressed!") 
end)
ss:Button("buy snow man",function()
local args = {
    [1] = "purchase",
    [2] = 10189,
    [3] = 1
}

game:GetService("ReplicatedStorage").Events.Coin.CoinMarketRE:FireServer(unpack(args))
    print("Pressed!") 
end)
ss:Button("Buy candy",function()
local args = {
    [1] = "purchase",
    [2] = 10131,
    [3] = 1
}

game:GetService("ReplicatedStorage").Events.Coin.CoinMarketRE:FireServer(unpack(args))
    print("Pressed!") 
end)
ss:Button("trick or treat bucket",function()
local args = {
    [1] = "purchase",
    [2] = 10132,
    [3] = 1
}

game:GetService("ReplicatedStorage").Events.Coin.CoinMarketRE:FireServer(unpack(args))
    print("Pressed!") 
end)
ss:Button("buy diffrent snowman",function()
local args = {
    [1] = "purchase",
    [2] = 10188,
    [3] = 1
}
game:GetService("ReplicatedStorage").Events.Coin.CoinMarketRE:FireServer(unpack(args))
    print("Pressed!") 
end)
ss:Button("Gingerbread Man",function()
local args = {
    [1] = "purchase",
    [2] = 10191,
    [3] = 1
}

game:GetService("ReplicatedStorage").Events.Coin.CoinMarketRE:FireServer(unpack(args))
    print("Pressed!") 
end)
ss:Button("Buy turkey",function()
local args = {
    [1] = "purchase",
    [2] = 10164,
    [3] = 1
}

game:GetService("ReplicatedStorage").Events.Coin.CoinMarketRE:FireServer(unpack(args))
    print("Pressed!") 
end)
ss:Button("Buy rudolf",function()
local args = {
    [1] = "purchase",
    [2] = 10181,
    [3] = 1
}

game:GetService("ReplicatedStorage").Events.Coin.CoinMarketRE:FireServer(unpack(args))
    print("Pressed!") 
end)
ss:Button("Easter Dominus",function()
local args = {
    [1] = "purchase",
    [2] = 10231,
    [3] = 1
}

game:GetService("ReplicatedStorage").Events.Coin.CoinMarketRE:FireServer(unpack(args))
    print("Pressed!") 
end)
ss:Button("fire pumpkin",function()
local args = {
    [1] = "purchase",
    [2] = 10130,
    [3] = 1
}

game:GetService("ReplicatedStorage").Events.Coin.CoinMarketRE:FireServer(unpack(args))
    print("Pressed!") 
end)
ss:Button("Cursed Pumpkin",function()
local args = {
    [1] = "purchase",
    [2] = 10129,
    [3] = 1
}

game:GetService("ReplicatedStorage").Events.Coin.CoinMarketRE:FireServer(unpack(args))
    print("Pressed!") 
end)
local ss = s:Tab("Credits")
ss:Label("Credits To DIDAR#0001 For Whitelist System")
ss:Label("Credits To DIDAR#0001 For UI")
ss:Label("Credits To Both DIDAR GAMING For Features")
ss:Label("Credits To DIDAR GAMING For Dupes")
ss:Label("Make Sure You Are In The Discord")
ss:Label("https://discord.gg/5jQMMCq2")
end
if game.PlaceId == 2788229376 then

local dwEntities = game:GetService("Players")
local dwLocalPlayer = dwEntities.LocalPlayer 
local dwRunService = game:GetService("RunService")
local settings_tbl = {
    ESP_Enabled = false,
    ESP_TeamCheck = false,
    Chams = false,
    Chams_Color = Color3.fromRGB(0,0,255),
    Chams_Transparency = 0.1,
    Chams_Glow_Color = Color3.fromRGB(255,0,0)
}
local Aiming = loadstring(game:HttpGet("https://raw.githubusercontent.com/farthefarter/e/main/e"))()
Aiming.TeamCheck(false)
Aiming.VisibleCheck = false
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
 
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CurrentCamera = Workspace.CurrentCamera
 
local themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),  
    TextColor = Color3.fromRGB(255, 255, 255)
}
 
local DaHoodSettings = {
    SilentAim = false,
    AimLock = false,
    Prediction = 0.178
}
 
getgenv().DaHoodSettings = DaHoodSettings
local LocalPlayer = game.Players.LocalPlayer

local Mouse = LocalPlayer:GetMouse()

local RunService = game:GetService("RunService")

local workspace = game:GetService("Workspace")

local Light = game:GetService("Lighting")

local camera = workspace.CurrentCamera

local worldToViewportPoint = camera.worldToViewportPoint

-- Functions

local function fail(r) return LocalPlayer:Kick(r) end

local usedCache = shared.__urlcache and next(shared.__urlcache) ~= nil

shared.__urlcache = shared.__urlcache or {}
local function httpload(url)
    local success, result

    if shared.__urlcache[url] then
        success, result = true, shared.__urlcache[url]
    else
        success, result = pcall(game.HttpGet, game, url)
    end

    if (not success) then
        return fail(string.format('Failed to GET url %q for reason: %q', url, tostring(result)))
    end

    local fn, err = loadstring(result)
    if (type(fn) ~= 'function') then
        return fail(string.format('Failed to loadstring url %q for reason: %q', url, tostring(err)))
    end

    local results = { pcall(fn) }
    if (not results[1]) then
        return fail(string.format('Failed to initialize url %q for reason: %q', url, tostring(results[2])))
    end

    shared.__urlcache[url] = result
    return unpack(results, 2)
end

local prefix = "moongod: "

local function log(text)
    print(prefix..text)
end

local function warn(text)
    warn(prefix..text)
end

-- Anti Cheat Bypass


local ReplicatedStorage = game:GetService("ReplicatedStorage")

local MainEvent = ReplicatedStorage.MainEvent

local HB = RunService.Heartbeat

do 
   local oldFunc = nil

  oldFunc = hookfunction(MainEvent.FireServer, newcclosure(function(Event, ...)
     local args = {...}

     if args[1] == "CHECKER_1" or args[1] == "TeleportDetect" or args[1] == "OneMoreTime" then
        return nil
     end

     return oldFunc(Event, ...)
  end))

   HB:Connect(function()
       local root = LocalPlayer.Character and LocalPlayer.Character.PrimaryPart

       if root then
           for i,v in pairs(getconnections(root:GetPropertyChangedSignal("CFrame"))) do
               v:Disable()
           end
       end
   end)

  local function added(char)
     while true do
           if not char then return end
        HB:Wait()
        for i,v in pairs(char:GetChildren()) do
           if v:IsA("Script") and v:FindFirstChildOfClass("LocalScript") then
              v:FindFirstChildOfClass("LocalScript").Source = "Cleared by moongod"
              return
           end
        end
     end
  end

  if LocalPlayer.Character then
     added(LocalPlayer.Character)
  end

  LocalPlayer.CharacterAdded:Connect(added)

end

log("Bypassed Anti-Cheat")

-- Aiming 



local guimain = Instance.new("Folder", game.CoreGui)
local CC = game:GetService "Workspace".CurrentCamera
local LocalMouse = game.Players.LocalPlayer:GetMouse()
local Locking = false
local cc = game:GetService("Workspace").CurrentCamera
local gs = game:GetService("GuiService")
local ggi = gs.GetGuiInset
local lp = game:GetService("Players").LocalPlayer
local mouse = lp:GetMouse()

local Tracer = Drawing.new("Line")
Tracer.Visible = false
Tracer.Color = Color3.fromRGB(255, 20, 88)
Tracer.Thickness = 1
Tracer.Transparency = 1

local sound = Instance.new("Sound", game.Workspace)
sound.SoundId = "rbxassetid://8819783960"

if not sound.IsLoaded then
	sound.Loaded:wait()
end

local sound1 = Instance.new("Sound", game.Workspace)
sound1.SoundId = "rbxassetid://8819782435"

if not sound1.IsLoaded then
	sound1.Loaded:wait()
end


local StepTable = {}
local function BindToSteppedold(name, num, func)
	if StepTable[name] == nil then
		StepTable[name] = game:GetService("RunService").Stepped:connect(func)
	end
end

local function UnbindFromSteppedold(name)
	if StepTable[name] then
		StepTable[name]:Disconnect()
		StepTable[name] = nil
	end
end

function x(tt, tx, cc, tc)
    game.StarterGui:SetCore(
        "SendNotification",
        {
            Title = tt,
            Text = tx,
            Duration = cc,
            Icon = tc
        }
    )
end

local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(
    function(keygo, ok)
        if (not ok) then
            if (keygo.KeyCode == getgenv().Key) then
                if getgenv().loltoggle then
                    Locking = not Locking
                    if Locking then
                        Plr = getClosestPlayerToCursor()
                        getgenv().targetenabledV3 = true
                        if getgenv().Notificationmode then
                            StarterGui:SetCore(
                            "SendNotification",
                            {
                                Title = "yarn",
                                Text = "" ..Plr.DisplayName,
                                Duration = 3,
                                Icon = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. Plr .."&width=420&height=420&format=png"
                            })
                        end
                        if getgenv().ViewMode == true then
                            game.Workspace.CurrentCamera.CameraSubject = Plr.Character
                        end
                        if getgenv().ChatMode == true then
                            local A_3 = "yarn: "..Plr.DisplayName
                            local A_4 = "All"
                            local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
                            Event:FireServer(A_3, A_4)
                        end
                        if getgenv().TPToPlayer == true then
                            LocalPlayer.Character.HumanoidRootPart.CFrame = Plr.Character.HumanoidRootPart.CFrame
                        end
                        if getgenv().BenMode == true then
                            sound:Play()
                        end
                        if getgenv().TargetStrafeV3 == true then
                            getgenv().TSV3Multiplier = 5
                            getgenv().TSV3Distance = 5
                            local i = 0
                            BindToSteppedold("TargetStrafev3", nil, function(dt)
                            i = (i + dt/getgenv().TSV3Multiplier) % 1
                            local alpha = 2 * math.pi * i
                
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.Angles(0, alpha, 0)
                            * CFrame.new(0, 0, getgenv().TSV3Distance)
                            + Plr.Character.HumanoidRootPart.Position
                        end)
                        end
                    elseif not Locking then
                        UnbindFromSteppedold("TargetStrafev3")
                        if getgenv().Notificationmode then
                            x("yarn", "Unlocked", 3)
                        end
                        if getgenv().ViewMode == true then
                            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
                        end
                        
                        if getgenv().ChatMode == true then
                            local A_1 = "Unlocked"
                            local A_2 = "All"
                            local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
                            Event:FireServer(A_1, A_2)
                        end
                        if getgenv().BenMode == true then
                            sound1:Play()
                        end
                    end
                end
            end
        end
    end
)

RunService.Heartbeat:Connect(function()
    if getgenv().LookAt == true then
        local Char = game.Players.LocalPlayer.Character
        local PrimaryPartOfChar = game.Players.LocalPlayer.Character.PrimaryPart
        local NearestChar = Plr.Character
        local NearestRoot = Plr.Character.HumanoidRootPart
        local NearestPos = CFrame.new(PrimaryPartOfChar.Position, Vector3.new(NearestRoot.Position.X, NearestRoot.Position.Y, NearestRoot.Position.Z))
        Char:SetPrimaryPartCFrame(NearestPos)
    else
        local Char = game.Players.LocalPlayer.Character
        local PrimaryPartOfChar = game.Players.LocalPlayer.Character.PrimaryPart
        local NearestChar = LocalPlayer.Character
        local NearestRoot = LocalPlayer.Character.HumanoidRootPart
        local NearestPos = CFrame.new(PrimaryPartOfChar.Position, Vector3.new(NearestRoot.Position.X, NearestRoot.Position.Y, NearestRoot.Position.Z))
        Char:SetPrimaryPartCFrame(LocalPlayer)
    end
end)

function getClosestPlayerToCursor()
    local closestPlayer
    local shortestDistance = 137

    for i, v in pairs(game.Players:GetPlayers()) do
        if
            v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
                v.Character.Humanoid.Health ~= 0 and
                v.Character:FindFirstChild("LowerTorso")
         then
            local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
            if magnitude < shortestDistance then
                closestPlayer = v
                shortestDistance = magnitude
            end
        end
    end
    return closestPlayer
end




local rawmetatable = getrawmetatable(game)
local old = rawmetatable.__namecall
setreadonly(rawmetatable, false)
rawmetatable.__namecall =
    newcclosure(
    function(...)
        local args = {...}
        if Locking and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
            args[3] =
                Plr.Character[getgenv().Partz].Position + (Plr.Character[getgenv().Partz].Velocity * Prediction / 10)
            return old(unpack(args))
        end
        return old(...)
    end
)

local LocalPlayer = game.Players.LocalPlayer
local mouse = LocalPlayer:GetMouse()

_G.TracerVisible = false
_G.TracerColor = Color3.fromRGB(255, 255, 255)
_G.TracerThickness = 3
_G.TracerTransparency = 1

_G.CircleSides = 3604
_G.CircleColor = Color3.fromRGB(255, 20, 88)
_G.CircleTransparency = 0.5
_G.CircleRadius = 80
_G.CircleFilled = false
_G.CircleVisible = false
_G.CircleThickness = 0

circle = Drawing.new("Circle")
circle.Color = Color3.fromRGB(255, 20, 88)
circle.Thickness = 0.1
circle.Transparency = 0.5
circle.NumSides = 64
circle.Radius = 64
circle.Visible = false
circle.Filled = true
getgenv().autoclick = false
game:GetService("RunService").RenderStepped:Connect(
    function()
        if getgenv().autosetup == true then
            local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
            local split = string.split(pingvalue, " ")
            local ping = split[1]
            if tonumber(ping) < 30 then
                getgenv().Prediction = 1.14
            elseif tonumber(ping) <= 30 then
                if tonumber(ping) < 40 then
                    getgenv().Prediction = 1.16
                elseif tonumber(ping) <= 40 then
                    if tonumber(ping) < 50 then
                        getgenv().Prediction = 1.19
                    elseif tonumber(ping) <= 50 then
                        if tonumber(ping) < 70 then
                            getgenv().Prediction = 1.22
                        elseif tonumber(ping) <= 80 then
                            getgenv().Prediction = 1.38
                        elseif tonumber(ping) <= 80 then
                            getgenv().Prediction = 1.39
                        elseif tonumber(ping) <= 90 then
                            getgenv().Prediction = 1.42
                        elseif tonumber(ping) <= 150 then
                            getgenv().Prediction = 1.51
                        elseif tonumber(ping) >= 200 then
                            getgenv().Prediction = 1.69
                        end
                    end
                end
            end
        end

        circle.Position =
            Vector2.new(
            game:GetService("UserInputService"):GetMouseLocation().X,
            game:GetService("UserInputService"):GetMouseLocation().Y
        )
        circle.Radius = _G.CircleRadius
        circle.Filled = _G.CircleFilled
        circle.Color = _G.CircleColor
        circle.Visible = _G.CircleVisible
        circle.Radius = _G.CircleRadius
        circle.Transparency = _G.CircleTransparency
        circle.NumSides = _G.CircleSides
        circle.Thickness = _G.CircleThickness
        Tracer.Visible = _G.TracerVisible
        Tracer.Color = _G.TracerColor
        Tracer.Thickness = _G.TracerThickness
        Tracer.Transparency = _G.TracerTransparency
        if getgenv().AirshotFunccc == true then
            if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                getgenv().Partz = "RightFoot"
            else
                Plr.Character:WaitForChild("Humanoid").StateChanged:Connect(
                    function(old, new)
                        if new == Enum.HumanoidStateType.Freefall then
                            getgenv().Partz = "RightFoot"
                        else
                            getgenv().Partz = "LowerTorso"
                        end
                    end
                )
            end
        end

        if getgenv().Tracer == true and Locking then
            local Vector, OnScreen =
                cc:worldToViewportPoint(
                Plr.Character[getgenv().Partz].Position + (Plr.Character[getgenv().Partz].Velocity * Prediction / 10)
            )
            Tracer.Visible = true
            Tracer.From = Vector2.new(mouse.X, mouse.Y + ggi(gs).Y)
            Tracer.To = Vector2.new(Vector.X, Vector.Y)
        elseif getgenv().Tracer == false then
            Tracer.Visible = false
        end
    end)
game:GetService("RunService").Heartbeat:Connect(
    function()
        if cframespeedtoggle == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                game.Players.LocalPlayer.Character.Humanoid.MoveDirection * speedvalue
        end
        if Spinbot then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad((positive1)), 0)
        end
        if Jitter then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position) *
                CFrame.Angles(0, math.rad(Angle) + math.rad((math.random(1, 2) == 1 and Jit or -Jit)), 0)
        end

        if AntiAim1 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * -250
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(555), 0)
        end
        if AntiAim2 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1.333, 0)
            wait(0.2)
        end
        if getgenv().antilock then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                -game.Players.LocalPlayer.Character.Humanoid.MoveDirection * getgenv().antilockspeed
        end
        if getgenv().DesyncEnabled then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * getgenv().DesyncVelocity
                game:GetService("RunService").Heartbeat:Wait()
        end
        if getgenv().antistomplo then
            if game.Players.LocalPlayer.Character.Humanoid.Health <= 5 then
                for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v:Destroy()
                    end
                end
            end
        end
        if getgenv().antislow then
            local player = game.Players.LocalPlayer
            local DeletePart =
                player.Character.BodyEffects.Movement:FindFirstChild("NoJumping") or
                player.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk") or
                player.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed")
            if DeletePart then
                DeletePart:Destroy()
            end
            if player.Character.BodyEffects.Reload.Value == true then
                player.Character.BodyEffects.Reload.Value = false
            end
        end
        if getgenv().AutoReloadx then
            if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
                if
                    game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild(
                        "Ammo"
                    )
                 then
                    if
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild(
                            "Ammo"
                        ).Value <= 0
                     then
                        game:GetService("ReplicatedStorage").MainEvent:FireServer(
                            "Reload",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
                        )
                    end
                end
            end
        end
        if getgenv().autostomp then
            game.ReplicatedStorage.MainEvent:FireServer("Stomp")
        end
        if getgenv().antibag then
            game.Players.LocalPlayer.Character["Christmas_Sock"]:Destroy()
        end
    end)

-- Visuals --

local ESPSettings = {
    SkeletonESPEnabled = false,
    RainbowsESPEnabled = false,
    TextOutlineEnabled = false,
    TeamCheckEnabled = false,
    MouseFrom = false,
    CustomColor = true,
    BottomFrom = true,
    HeadFrom = false,
    RoundedCorner = 12,
    Length = 14,
    ESPColor = Color3.fromRGB(255,255,255),
    Thickness = 1,
    TextSize = 15,
    Transparency = 1,
    HeadOff = Vector3.new(0,0.5,0),
    LegOff = Vector3.new(0,3,0)
}

-- Drawings --

Circle = Drawing.new("Circle")
Circle.Color = Color3.fromRGB(101, 90, 173)
Circle.Thickness = 2
Circle.NumSides = 120
Circle.Radius = 70
Circle.Visible = false
Circle.Filled = false
Circle.Transparency = 1

RunService.RenderStepped:Connect(function()
	Circle.Position = Vector2.new(Mouse.X, Mouse.Y + 35)
end)

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/qvrwd/etarry/main/libraries/ui/splix"))()
getgenv().Key = Enum.KeyCode.Q
getgenv().Prediction = 1.35
getgenv().AirshotFunccc = false
getgenv().Tracer = false
getgenv().Partz = "UpperTorso"
getgenv().Notificationmode = false
getgenv().ViewMode = false
getgenv().Spinbot = false
getgenv().Jitter = false
getgenv().positive1 = 45
local Jit = math.random(30, 90)
getgenv().Angle = 60
getgenv().DesyncEnabled = false
getgenv().DesyncVelocity = 15
getgenv().BenMode = false
getgenv().TPToPlayer = false
getgenv().LookAt = false
getgenv().AntiAim1 = false
getgenv().AntiAim2 = false
getgenv().antistomplo = false
getgenv().autoreload = false
getgenv().autostomp = false
getgenv().antibag = false
getgenv().antislow = false

local window = library:new({textsize = 13.5,font = Enum.Font.RobotoMono,name = "Roblox Hub",color = Color3.fromRGB(225,58,81)})

local tab = window:page({name = "Silent Aim"})
local s = tab:section({name = "Silent Aim",side = "left",size = 180})
s:toggle({name = "Silent Aim",def = false, callback = function(bool)
DaHoodSettings.SilentAim = bool
end})
s:toggle({name = "Predict Lag",def = false, callback = function(bool)
    DaHoodSettings.Prediction.Lag = bool
end})
s:toggle({name = "Visibilty Check",def = false, callback = function(bool)
    Aiming.VisibleCheck = bool
end})
s:toggle({name = "Hit Air Shots",def = false, callback = function(bool)
    Aiming.Airshots = true
end})
s:toggle({name = "Show FOV",def = false, callback = function(bool)
    Aiming.ShowFOV = bool
end})
s:slider({name = "FOV Size",def = 5, max = 400,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
    Aiming.FOV = value
end})
s:slider({name = "Hitchance",def = 5, max = 400,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
    DaHoodSettings.Prediction = tonumer("0." .. value)
end})
local tab = window:page({name = "AimLock"})
local section1 = tab:section({name = "Strafe Around Target",side = "right",size = 80})

section1:toggle({name = "Enable",def = false, callback = function(bool)
    getgenv().TargetStrafeV3 = bool
end})


section1:slider({name = "Strafe Distance",def = 5, max = 100,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
    getgenv().TSV3Distance = value
end})
local a = tab:section({name = "AimLock Settings",side = "left",size = 200})
a:toggle({name = "Enable AimLock",def = false,callback = function(bool)
 getgenv().loltoggle = bool
end})
a:toggle({name = "Hit Air Shots",def = false,callback = function(bool)
 getgenv().AirshotFunccc = bool
end})
a:toggle({name = "Prediction For Ping",def = false,callback = function(bool)
getgenv().autosetup = bool
end})
a:toggle({name = "Teleport To Target",def = false,callback = function(bool)
    getgenv().TPToPlayer = bool
end})
a:toggle({name = "View The Target",def = false,callback = function(bool)
   getgenv().ViewMode = bool
end})
a:toggle({name = "Face The Target",def = false,callback = function(bool)
    getgenv().LookAt = bool
end})
a:toggle({name = "Tracers To Target",def = false,callback = function(bool)
    getgenv().Tracer = bool
end})
a:toggle({name = "Notification",def = false,callback = function(bool)
    getgenv().Notificationmode = bool
end})
local section1 = tab:section({name = "Settings",side = "left",size = 185})

section1:colorpicker({name = "Tracer Color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(color)
    _G.TracerColor = color
end})

section1:slider({name = "Thickness",def = 3, max = 5,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
    _G.TracerThickness = value
end})


section1:dropdown({name = "Target Part",def = "HumanoidRootPart",max = 10,options = {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso", "LeftUpperLeg", "RightUpperLeg", "LeftLowerLeg", "RightLowerLeg", "LeftFoot", "RightFoot"},callback = function(part)
    getgenv().Partz = part
end})

section1:dropdown({name = "Airshot Part",def = "RightFoot",max = 10,options = {"Head", "HumanoidRootPart", "LowerTorso", "LeftUpperLeg", "RightUpperLeg", "LeftLowerLeg", "RightLowerLeg", "LeftFoot", "RightFoot"},callback = function(part)
    getgenv().airshotpart = part
end})

section1:slider({name = "Prediction",def = 1.25, max = 6,min = 0.5,rounding = false,ticking = false,measuring = "",callback = function(value)
    getgenv().Prediction = value
end})


local section1 = tab:section({name = "Extra",side = "right",size = 75})
section1:button({name = "Trace Lock = X",callback = function()
    getgenv().OldAimPart = "UpperTorso"
    getgenv().AimPart = "UpperTorso" -- For R15 Games: {UpperTorso, LowerTorso, HumanoidRootPart, Head} | For R6 Games: {Head, Torso, HumanoidRootPart}  
        getgenv().AimlockKey = "x"
        getgenv().AimRadius = 30 -- How far away from someones character you want to lock on at
        getgenv().ThirdPerson = true 
        getgenv().FirstPerson = true
        getgenv().TeamCheck = false -- Check if Target is on your Team (True means it wont lock onto your teamates, false is vice versa) (Set it to false if there are no teams)
        getgenv().PredictMovement = true -- Predicts if they are moving in fast velocity (like jumping) so the aimbot will go a bit faster to match their speed 
        getgenv().PredictionVelocity = 6.612
        getgenv().CheckIfJumped = true
        getgenv().Smoothness = true
        getgenv().SmoothnessAmount = 0.0452
    
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
end})


section1:button({name = "No Recoil",callback = function()
    getgenv().NoRecoil = true
    if NoRecoil == true then
        local mt = getrawmetatable(game)
        local newindex = mt.newindex
        setreadonly(mt,false)
        function isframework(scriptInstance)
            if tostring(scriptInstance) == "Framework" then
                return true
            end
            return false
        end
        function checkArgs(instance,index)
            if tostring(instance):lower():find("camera") and tostring(index) == "CFrame" then
                return true
            end
            return false
        end
        mt.newindex = newcclosure(function(self,index,value)
            local callingScr = getcallingscript()
            if isframework(callingScr) and checkArgs(self,index) then
               return;
            end
            return newindex(self,index,value)
        end)
        setreadonly(mt,true)
    end   
    end})
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/trendyylol/roblox/main/Libraries/ESP/Pikahub"))()
local library = loadstring(game:HttpGet("https://pastebin.com/raw/U2HwmEyF"))()
local tab = window:page({name = "ESP"})
local e = tab:section({name = "Esp",side = "right",size = 100})
e:toggle({name = "Boxes", callback = function(bool)
    getgenv().PikaESPSettings.Box = bool
end})

e:toggle({name = "Name",callback = function(bool)
    getgenv().PikaESPSettings.Name = bool
end})


e:toggle({name = "Tracers", callback = function(bool)
    getgenv().PikaESPSettings.Tracers = bool
end})

e:toggle({name = "Mouse Tracers", callback = function(bool)
    getgenv().PikaESPSettings.UnlockTracers = bool
end})
local c = tab:section({name = "Chams",side = "left",size = 100})
c:toggle({name = "Must Enable For Chams", callback = function(t)
    settings_tbl.ESP_Enabled = t	
end})
c:toggle({name = "Enable Chams", callback = function(t)
    settings_tbl.Chams = t
end})
c:colorpicker({name = "Chams Color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(color)
    settings_tbl.Chams_Color = t
end})
c:colorpicker({name = "Glow Color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(color)
settings_tbl.Chams_Glow_Color = t
end})

local cs = tab:section({name = "Client Visuals",side = "left",size = 105})
	
cs:toggle({name = "Gun Cham",def = false, callback = function(callback)
    if callback then
        local Client = game.GetService(game, "Players").LocalPlayer
        Client.Character:FindFirstChildOfClass("Tool").Default.Material = Enum.Material.ForceField
        Client.Character:FindFirstChildOfClass("Tool").Default.BrickColor  = BrickColor.new(255, 255, 255)
    else
        local Client = game.GetService(game, "Players").LocalPlayer
        Client.Character:FindFirstChildOfClass("Tool").Default.Material = Enum.Material.Plastic
    end
end})

cs:colorpicker({name = "Gun Cham Color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(color)
    LocalPlayer.Character:FindFirstChildOfClass("Tool").Default.BrickColor = BrickColor.new(color)
end})


cs:toggle({name = "Body Cham",def = false, callback = function(callback)
    if callback then
        game.Players.LocalPlayer.Character.LeftHand.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightHand.Material = "ForceField"
        game.Players.LocalPlayer.Character.LeftLowerArm.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightLowerArm.Material = "ForceField"
        game.Players.LocalPlayer.Character.LeftUpperArm.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightUpperArm.Material = "ForceField"
        game.Players.LocalPlayer.Character.LeftFoot.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightFoot.Material = "ForceField"
        game.Players.LocalPlayer.Character.LeftLowerLeg.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightLowerLeg.Material = "ForceField"
        game.Players.LocalPlayer.Character.UpperTorso.Material = "ForceField"
        game.Players.LocalPlayer.Character.LowerTorso.Material = "ForceField"
        game.Players.LocalPlayer.Character.LeftUpperLeg.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightUpperLeg.Material = "ForceField"
        game.Players.LocalPlayer.Character.Head.Material = "ForceField"
    else
        game.Players.LocalPlayer.Character.LeftHand.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightHand.Material = "Plastic"
        game.Players.LocalPlayer.Character.LeftLowerArm.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightLowerArm.Material = "Plastic"
        game.Players.LocalPlayer.Character.LeftUpperArm.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightUpperArm.Material = "Plastic"
        game.Players.LocalPlayer.Character.LeftFoot.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightFoot.Material = "Plastic"
        game.Players.LocalPlayer.Character.LeftLowerLeg.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightLowerLeg.Material = "Plastic"
        game.Players.LocalPlayer.Character.UpperTorso.Material = "Plastic"
        game.Players.LocalPlayer.Character.LowerTorso.Material = "Plastic"
        game.Players.LocalPlayer.Character.LeftUpperLeg.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightUpperLeg.Material = "Plastic"
        game.Players.LocalPlayer.Character.Head.Material = "Plastic"
    end
end})

cs:colorpicker({name = "Body Color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(color)
    LocalPlayer.Character.LeftHand.Color = color
    LocalPlayer.Character.RightHand.Color = color
    LocalPlayer.Character.LeftLowerArm.Color = color
    LocalPlayer.Character.RightLowerArm.Color = color
    LocalPlayer.Character.LeftUpperArm.Color = color
    LocalPlayer.Character.RightUpperArm.Color = color
    LocalPlayer.Character.LeftFoot.Color = color
    LocalPlayer.Character.RightFoot.Color = color
    LocalPlayer.Character.LeftLowerLeg.Color = color
    LocalPlayer.Character.RightLowerLeg.Color = color
    LocalPlayer.Character.UpperTorso.Color = color
    LocalPlayer.Character.LowerTorso.Color = color
    LocalPlayer.Character.LeftUpperLeg.Color = color
    LocalPlayer.Character.RightUpperLeg.Color = color
    LocalPlayer.Character.Head.Color = color
end})
local tab = window:page({name = "Visuals"})
local w = tab:section({name = "World Visuals",side = "right",size = 165})
w:slider({name = "Saturation ",def = 0.1, max = 100,min = 0,rounding = false,ticking = false,measuring = "",callback = function(value)
    Light.ColorCorrection.Saturation = value
end})

w:slider({name = "Fog",def = 500, max = 2000,min = 0,rounding = false,ticking = false,measuring = "",callback = function(value)
    game.Lighting.FogEnd = value
end})


w:slider({name = "Brightness",def = 1, max = 100,min = 0,rounding = false,ticking = false,measuring = "",callback = function(value)
    Light.Brightness = value
end})

w:slider({name = "Stars",def = 500, max = 5000,min = 0,rounding = false,ticking = false,measuring = "",callback = function(value)
    Light.Sky.StarCount = value
end})

w:colorpicker({name = "World Color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(color)
    Light.Ambient = color
    Light.OutdoorAmbient = color
end})
    local an = tab:section({name = "Player Animations",side = "right",size = 225})

an:dropdown({name = "Idle",max = 10,options = {"Borock", "Zombie", "Werewolf", "Ninja", "Ud'zal", "Mage", "Toy"},callback = function(State)
        if State == "Borock" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=3293641938"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=3710131919"
        elseif State == "Zombie" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=616158929"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=616160636"
        elseif State == "Werewolf" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=1083195517"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=1083214717"
        elseif State == "Ninja" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=656117400"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=656118341"
        elseif State == "Udzal" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=3303162274"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=3303162274"
        elseif State == "Mage" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=707742142"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=707855907"
        elseif State == "Toy" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=782841498"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=782841498"
        end
    end
})

an:dropdown({name = "Walk",max = 10,options = {"Zombie", "Toy", "Ninja", "Mage", "Werewolf"},callback = function(State)
    if State == "Zombie" then
        game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
            "http://www.roblox.com/asset/?id=616168032"
        elseif State == "Toy" then
            game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
                "http://www.roblox.com/asset/?id=782843345"
    elseif State == "Ninja" then
        game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
            "http://www.roblox.com/asset/?id=656121766"
    elseif State == "Mage" then
        game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
            "http://www.roblox.com/asset/?id=707897309"
        elseif State == "Werewolf" then
            game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
                "http://www.roblox.com/asset/?id=1083178339"
    end
end
})

an:dropdown({name = "Run",max = 10,options = {"Zombie", "Toy", "Ninja", "Mage", "Werewolf"},callback = function(State)
    if State == "Zombie" then
        game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
            "http://www.roblox.com/asset/?id=616163682"
     elseif State == "Toy" then
            game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
                "http://www.roblox.com/asset/?id=782842708"
    elseif State == "Ninja" then
        game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
            "http://www.roblox.com/asset/?id=656118852"
    elseif State == "Mage" then
        game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
            "http://www.roblox.com/asset/?id=707861613"
        elseif State == "Werewolf" then
            game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
                "http://www.roblox.com/asset/?id=1083216690"
    end
end
})

an:dropdown({name = "Jump",max = 10,options = {"Zombie", "Werewolf", "Ninja", "Mage", "Toy", "OldSchool"},callback = function(State)
if State == "Zombie" then
    game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
        "http://www.roblox.com/asset/?id=616161997"
elseif State == "Werewolf" then
    game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
        "http://www.roblox.com/asset/?id=1083218792"
elseif State == "Ninja" then
    game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
        "http://www.roblox.com/asset/?id=656117878"
elseif State == "Mage" then
    game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
        "http://www.roblox.com/asset/?id=707853694"
elseif State == "Toy" then
    game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
        "http://www.roblox.com/asset/?id=782847020"
elseif State == "OldSchool" then
    game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
        "http://www.roblox.com/asset/?id=5319841935"
end
end
})

an:dropdown({name = "Fall",max = 10,options = {"Zombie", "Werewolf", "Ninja", "Mage", "Toy", "OldSchool"},callback = function(State)
if State == "Zombie" then
    game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
        "http://www.roblox.com/asset/?id=616157476"
elseif State == "Werewolf" then
    game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
        "http://www.roblox.com/asset/?id=1083189019"
elseif State == "Ninja" then
    game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
        "http://www.roblox.com/asset/?id=656115606"
elseif State == "Mage" then
    game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
        "http://www.roblox.com/asset/?id=707829716"
elseif State == "Toy" then
    game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
        "http://www.roblox.com/asset/?id=782846423"
elseif State == "OldSchool" then
    game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
        "http://www.roblox.com/asset/?id=5319839762"
end
end
})
local css = tab:section({name = "Client Sided Styles",side = "left",size = 125})

css:button({name = "Headless",callback = function()
        game.Players.LocalPlayer.Character.Head.Transparency = 1
        game.Players.LocalPlayer.Character.Head.Transparency = 1
        for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
        if (v:IsA("Decal")) then
        v.Transparency = 1
        end
        end
    end})
    
css:button({name = "Korblox",callback = function()
        local ply = game.Players.LocalPlayer
            local chr = ply.Character
            chr.RightLowerLeg.MeshId = "902942093"
            chr.RightLowerLeg.Transparency = "1"
            chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
            chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
            chr.RightFoot.MeshId = "902942089"
            chr.RightFoot.Transparency = "1"
        end})
            
       
css:button({name = "Beast Mode",callback = function()
local L_412_ = game.Players.LocalPlayer.Character
	local L_413_ = L_412_:WaitForChild("Head")
	local L_414_ = L_413_:WaitForChild("face")
	L_414_.Texture = "rbxassetid://127959433"
end})

css:button({name = "Playful Vampire",callback = function()
    local L_415_ = game.Players.LocalPlayer.Character
	local L_416_ = L_415_:WaitForChild("Head")
	local L_417_ = L_416_:WaitForChild("face")
	L_417_.Texture = "rbxassetid://2409281591"
end})


local we = tab:section({name = "FE Styles",side = "left",size = 75})

we:button({name = "Headless",callback = function()
	local L_418_ = game.Players.LocalPlayer
	L_418_.Character.Head:BreakJoints()
	L_418_.Character.Head.Position = Vector3.new(0, 999999999999, 0)
end})

we:button({name = "Korblox",callback = function()
	game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
end})
local tab = window:page({name = "Anti-Aim"})
local an = tab:section({name = "Movement",side = "left",size = 125})
an:toggle({name = "Spinbot",def = false, callback = function(bool)
    getgenv().Spinbot = bool
end})

if Spinbot then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad((positive1)), 0)
end

an:slider({name = "Spinbot Multiplier",def = 45, max = 165,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
    getgenv().positive1 = value
end})

an:toggle({name = " Enable Cframe",def = false, callback = function(bool)
    getgenv().cframespeedtoggle = bool
end})
an:slider({name = "Cframe Speed",def = 1, max = 20,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
    getgenv().speedvalue = value
end})
local at = tab:section({name = "Anti-Aim",side = "right",size = 200})
at:toggle({name = "Anti Lock",def = false, callback = function(bool)
    getgenv().antilock = bool
end})

at:slider({name = "Anti Lock Speed",def = 1, max = 5,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
    getgenv().antilockspeed = value
end})

    at:toggle({name = "Desync",def = false, callback = function(bool)
        getgenv().DesyncEnabled = bool
    end})

    at:slider({name = "Desync Speed",def = 1, max = 150,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
        getgenv().DesyncVelocity = value
end})

    at:toggle({name = "Anit-Aim",def = false, callback = function(bool)
        getgenv().Jitter = bool
    end})

    at:slider({name = "Anti-Aim Angle",def = 1, max = 150,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
        getgenv().Angle = value
    end})
    local tab = window:page({name = "Misc"})
    local au = tab:section({name = "Auto ",side = "left",size = 85})
    
    au:toggle({name = " Reload",def = false, callback = function(bool)
        getgenv().AutoReloadx = bool
    end})

    if getgenv().AutoReloadx then
        if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
            if
                game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild(
                    "Ammo"
                )
             then
                if
                    game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild(
                        "Ammo"
                    ).Value <= 0
                 then
                    game:GetService("ReplicatedStorage").MainEvent:FireServer(
                        "Reload",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
                    )
                end
            end
        end
    end

    au:toggle({name = " Medium Armor",def = false, callback = function(bool)
        if getgenv().AutoHighArmor == true then
            getgenv().AutoHighArmor = false
        else
            getgenv().AutoHighArmor = true
        end
        
        while getgenv().AutoHighArmor == true and game:GetService("RunService").Heartbeat:Wait() do
            pcall(function()
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("BodyEffects"):FindFirstChild("Armor").Value <= 0 then
                    local LS = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                    repeat
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[High-Medium Armor] - $2300"].Head.CFrame
                        fireclickdetector(game:GetService("Workspace").Ignored.Shop["[High-Medium Armor] - $2300"].ClickDetector)
                        game:GetService("RunService").Heartbeat:Wait()
                    until game:GetService("Players").LocalPlayer.Character:FindFirstChild("BodyEffects"):FindFirstChild("Armor").Value >= 50
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = LS
                end
            end)
        end
    end})

    au:toggle({name = " Stomp",def = false, callback = function(bool)
        getgenv().autostomp = bool
    end})
    
    if getgenv().autostomp then
        game.ReplicatedStorage.MainEvent:FireServer("Stomp")
    end
    local m = tab:section({name = "Movement",side = "left",size = 150})
    m:toggle({name = "B-Hop",def = false, callback = function(state)
        bhop = state
        spawn(function()
        while wait() and bhop do
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
        end
        end)
    end})
    
    
    m:button({name = "Speed = Z",callback = function()
    
    
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
            mouse.KeyDown:connect(function(q) if q:lower()=="z"then onButton1Down(mouse)end end)
            mouse.KeyUp:connect(function(q) if q:lower()=="z"then onButton1Up(mouse)end end)
        end
        onSelected(game.Players.LocalPlayer:GetMouse())
            
    end})
    
    m:button({name = "Fake Macro = X",callback = function()
        local Player = game:GetService("Players").LocalPlayer
        local Mouse = Player:GetMouse()
        local SpeedGlitch = false
        local Wallet = Player.Backpack:FindFirstChild("Wallet")
    
        local UniversalAnimation = Instance.new("Animation")
    
        function stopTracks()
            for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
                if (v.Animation.AnimationId:match("rbxassetid")) then
                    v:Stop()
                end
            end
        end
    
        function loadAnimation(id)
            if UniversalAnimation.AnimationId == id then
                stopTracks()
                UniversalAnimation.AnimationId = "1"
            else
                UniversalAnimation.AnimationId = id
                local animationTrack = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(UniversalAnimation)
                animationTrack:Play()
            end
        end
    
        Mouse.KeyDown:Connect(function(Key)
            if Key == "x" then
                SpeedGlitch = not SpeedGlitch
                if SpeedGlitch == true then
                    stopTracks()
                    loadAnimation("rbxassetid://3189777795")
                    wait(1.5)
                    Wallet.Parent = Player.Character
                    wait(0.15)
                    Player.Character:FindFirstChild("Wallet").Parent = Player.Backpack
                    wait(0.05)
                    repeat game:GetService("RunService").Heartbeat:wait()
                        keypress(0x49)
                        game:GetService("RunService").Heartbeat:wait()
                        keypress(0x4F)
                        game:GetService("RunService").Heartbeat:wait()
                        keyrelease(0x49)
                        game:GetService("RunService").Heartbeat:wait()
                        keyrelease(0x4F)
                        game:GetService("RunService").Heartbeat:wait()
                    until SpeedGlitch == false
                end
            end
        end)
    end})
    m:button({name = "Shazam Fly = X",callback = function()
        _G.ShazamFlySpeed = 3
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Raycodex/Exploiting/main/Roblox/DaHoodShazamFly"))()
    end})
    m:button({name = "Fly = V",callback = function()
    local L_152_
        local L_153_ = game.Players.LocalPlayer
        IYMouse = L_153_:GetMouse()
        IYMouse.KeyDown:connect(
                function(L_154_arg0)
            if L_154_arg0 == "v" then
                if L_152_ then
                    L_152_ = false
                    fly()
                else
                    L_152_ = true
                    NOFLY()
                end
            end
        end
            )
        for L_155_forvar0, L_156_forvar1 in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if L_156_forvar1:IsA("BasePart") and L_156_forvar1.CanCollide == true then
                L_156_forvar1.CanCollide = false
            end
        end
        FLYING = false
        QEfly = true
        iyflyspeed = 7
        vehicleflyspeed = 7
        function sFLY(L_157_arg0)
            repeat
                wait()
            until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
            repeat
                wait()
            until IYMouse
            local L_158_ = game.Players.LocalPlayer.Character.LowerTorso
            local L_159_ = {
                F = 0,
                B = 0,
                L = 0,
                R = 0,
                Q = 0,
                E = 0
            }
            local L_160_ = {
                F = 0,
                B = 0,
                L = 0,
                R = 0,
                Q = 0,
                E = 0
            }
            local L_161_ = 5
            local function L_162_func()
                FLYING = true
                local L_163_ = Instance.new("BodyGyro", L_158_)
                local L_164_ = Instance.new("BodyVelocity", L_158_)
                L_163_.P = 9e4
                L_163_.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                L_163_.cframe = L_158_.CFrame
                L_164_.velocity = Vector3.new(0, 0, 0)
                L_164_.maxForce = Vector3.new(9e9, 9e9, 9e9)
                spawn(
                        function()
                    repeat
                        wait()
                        if not L_157_arg0 and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand =
                                        true
                        end
                        if L_159_.L + L_159_.R ~= 0 or L_159_.F + L_159_.B ~= 0 or L_159_.Q + L_159_.E ~= 0 then
                            L_161_ = 50
                        elseif not (L_159_.L + L_159_.R ~= 0 or L_159_.F + L_159_.B ~= 0 or L_159_.Q + L_159_.E ~= 0) and L_161_ ~= 0 then
                            L_161_ = 0
                        end
                        if L_159_.L + L_159_.R ~= 0 or L_159_.F + L_159_.B ~= 0 or L_159_.Q + L_159_.E ~= 0 then
                            L_164_.velocity =
                                        (workspace.CurrentCamera.CoordinateFrame.lookVector * (L_159_.F + L_159_.B) +
                                        workspace.CurrentCamera.CoordinateFrame *
                                            CFrame.new(L_159_.L + L_159_.R, (L_159_.F + L_159_.B + L_159_.Q + L_159_.E) * 0.2, 0).p -
                                        workspace.CurrentCamera.CoordinateFrame.p) *
                                        L_161_
                            L_160_ = {
                                F = L_159_.F,
                                B = L_159_.B,
                                L = L_159_.L,
                                R = L_159_.R
                            }
                        elseif L_159_.L + L_159_.R == 0 and L_159_.F + L_159_.B == 0 and L_159_.Q + L_159_.E == 0 and L_161_ ~= 0 then
                            L_164_.velocity =
                                        (workspace.CurrentCamera.CoordinateFrame.lookVector * (L_160_.F + L_160_.B) +
                                        workspace.CurrentCamera.CoordinateFrame *
                                            CFrame.new(L_160_.L + L_160_.R, (L_160_.F + L_160_.B + L_159_.Q + L_159_.E) * 0.2, 0).p -
                                        workspace.CurrentCamera.CoordinateFrame.p) *
                                        L_161_
                        else
                            L_164_.velocity = Vector3.new(0, 0, 0)
                        end
                        L_163_.cframe = workspace.CurrentCamera.CoordinateFrame
                    until not FLYING
                    L_159_ = {
                        F = 0,
                        B = 0,
                        L = 0,
                        R = 0,
                        Q = 0,
                        E = 0
                    }
                    L_160_ = {
                        F = 0,
                        B = 0,
                        L = 0,
                        R = 0,
                        Q = 0,
                        E = 0
                    }
                    L_161_ = 0
                    L_163_:destroy()
                    L_164_:destroy()
                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
                    end
                end
                    )
            end
            IYMouse.KeyDown:connect(
                    function(L_165_arg0)
                if L_165_arg0:lower() == "w" then
                    if L_157_arg0 then
                        L_159_.F = vehicleflyspeed
                    else
                        L_159_.F = iyflyspeed
                    end
                elseif L_165_arg0:lower() == "s" then
                    if L_157_arg0 then
                        L_159_.B = -vehicleflyspeed
                    else
                        L_159_.B = -iyflyspeed
                    end
                elseif L_165_arg0:lower() == "a" then
                    if L_157_arg0 then
                        L_159_.L = -vehicleflyspeed
                    else
                        L_159_.L = -iyflyspeed
                    end
                elseif L_165_arg0:lower() == "d" then
                    if L_157_arg0 then
                        L_159_.R = vehicleflyspeed
                    else
                        L_159_.R = iyflyspeed
                    end
                elseif QEfly and L_165_arg0:lower() == "e" then
                    if L_157_arg0 then
                        L_159_.Q = vehicleflyspeed * 2
                    else
                        L_159_.Q = iyflyspeed * 2
                    end
                elseif QEfly and L_165_arg0:lower() == "q" then
                    if L_157_arg0 then
                        L_159_.E = -vehicleflyspeed * 2
                    else
                        L_159_.E = -iyflyspeed * 2
                    end
                end
            end
                )
            IYMouse.KeyUp:connect(
                    function(L_166_arg0)
                if L_166_arg0:lower() == "w" then
                    L_159_.F = 0
                elseif L_166_arg0:lower() == "s" then
                    L_159_.B = 0
                elseif L_166_arg0:lower() == "a" then
                    L_159_.L = 0
                elseif L_166_arg0:lower() == "d" then
                    L_159_.R = 0
                elseif L_166_arg0:lower() == "e" then
                    L_159_.Q = 0
                elseif L_166_arg0:lower() == "q" then
                    L_159_.E = 0
                end
            end
                )
            L_162_func()
        end
        function NOFLY()
            FLYING = false
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
        end
        function fly()
            NOFLY()
            wait()
            sFLY()
        end
    end})
    local ant = tab:section({name = "Anti ",side = "right",size = 150})
    ant:toggle({name = "Anti Lock",def = false, callback = function(bool)
        getgenv().antilock = bool
    end})
    
    ant:slider({name = "Anti Lock Speed",def = 1, max = 5,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
        getgenv().antilockspeed = value
    end})
    ant:toggle({name = "Anti Bag",def = false, callback = function(bool)
        getgenv().antibag = bool
    end})
    
    ant:toggle({name = "Anti Fling",def = false, callback = function(bool)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = bool
    end})

    ant:toggle({name = "Anti Slow",def = false, callback = function(bool)
        getgenv().antislow = bool
    end})

    ant:toggle({name = "Anti Stomp",def = false, callback = function(bool)
        getgenv().antistomplo = bool
    end})
    local ra = tab:section({name = "Random Stuff",side = "right",size = 250})
  ra:slider({name = "Player FOV",def = 1, max = 120,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
        workspace.CurrentCamera.FieldOfView = value
    end})
    ra:button({name = "Free animation Pack",callback = function()
        local Folder = Instance.new('Folder', game:GetService("Workspace"))
        local AnimationPack = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
        local ScrollingFrame = AnimationPack.ScrollingFrame
        local CloseButton = AnimationPack.CloseButton
    
        AnimationPack.Visible = true
    
        local LeanAnimation = Instance.new("Animation", Folder)
        LeanAnimation.Name = "LeanAnimation"
        LeanAnimation.AnimationId = "rbxassetid://3152375249"
        local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)
    
        local LayAnimation = Instance.new("Animation", Folder)
        LayAnimation.Name = "LayAnimation"
        LayAnimation.AnimationId = "rbxassetid://3152378852"
        local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)
    
        local Dance1Animation = Instance.new("Animation", Folder)
        Dance1Animation.Name = "Dance1Animation"
        Dance1Animation.AnimationId = "rbxassetid://3189773368"
        local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)
    
        local Dance2Animation = Instance.new("Animation", Folder)
        Dance2Animation.Name = "Dance2Animation"
        Dance2Animation.AnimationId = "rbxassetid://3189776546"
        local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)
    
        local GreetAnimation = Instance.new("Animation", Folder)
        GreetAnimation.Name = "GreetAnimation"
        GreetAnimation.AnimationId = "rbxassetid://3189777795"
        local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)
    
        local PrayingAnimation = Instance.new("Animation", Folder)
        PrayingAnimation.Name = "PrayingAnimation"
        PrayingAnimation.AnimationId = "rbxassetid://3487719500"
        local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)
    
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
                if v.Text == "Praying" then
                    v.Name = "PrayingButton"
                end
            end
        end
    
        function Stop()
            Lay:Stop()
            Lean:Stop()
            Dance1:Stop()
            Dance2:Stop()
            Greet:Stop()
            Praying:Stop()
        end
    
        local LeanTextButton = ScrollingFrame.LeanButton
        local LayTextButton = ScrollingFrame.LayButton
        local Dance1TextButton = ScrollingFrame.Dance1Button
        local Dance2TextButton = ScrollingFrame.Dance2Button
        local GreetTextButton = ScrollingFrame.GreetButton
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
        PrayingTextButton.MouseButton1Click:Connect(function()
            Stop()
            Praying:Play()
        end)
    
        game:GetService("Players").LocalPlayer.Character.Humanoid.Running:Connect(function()
            Stop()
        end)
        game:GetService("Players").LocalPlayer.Character.Humanoid.Died:Connect(function()
            Stop()
            repeat
                wait()
            until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 100
            wait(1)
            local AnimationPack = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
            local ScrollingFrame = AnimationPack.ScrollingFrame
            local CloseButton = AnimationPack.CloseButton
    
            AnimationPack.Visible = true
    
            local LeanAnimation = Instance.new("Animation", Folder)
            LeanAnimation.Name = "LeanAnimation"
            LeanAnimation.AnimationId = "rbxassetid://3152375249"
            local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)
    
            local LayAnimation = Instance.new("Animation", Folder)
            LayAnimation.Name = "LayAnimation"
            LayAnimation.AnimationId = "rbxassetid://3152378852"
            local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)
    
            local Dance1Animation = Instance.new("Animation", Folder)
            Dance1Animation.Name = "Dance1Animation"
            Dance1Animation.AnimationId = "rbxassetid://3189773368"
            local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)
    
            local Dance2Animation = Instance.new("Animation", Folder)
            Dance2Animation.Name = "Dance2Animation"
            Dance2Animation.AnimationId = "rbxassetid://3189776546"
            local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)
    
            local GreetAnimation = Instance.new("Animation", Folder)
            GreetAnimation.Name = "GreetAnimation"
            GreetAnimation.AnimationId = "rbxassetid://3189777795"
            local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)
    
            local PrayingAnimation = Instance.new("Animation", Folder)
            PrayingAnimation.Name = "PrayingAnimation"
            PrayingAnimation.AnimationId = "rbxassetid://3487719500"
            local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)
    
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
                    if v.Text == "Praying" then
                        v.Name = "PrayingButton"
                    end
                end
            end
    
            function Stop()
                Lay:Stop()
                Lean:Stop()
                Dance1:Stop()
                Dance2:Stop()
                Greet:Stop()
                Praying:Stop()
            end
    
            local LeanTextButton = ScrollingFrame.LeanButton
            local LayTextButton = ScrollingFrame.LayButton
            local Dance1TextButton = ScrollingFrame.Dance1Button
            local Dance2TextButton = ScrollingFrame.Dance2Button
            local GreetTextButton = ScrollingFrame.GreetButton
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
            PrayingTextButton.MouseButton1Click:Connect(function()
                Stop()
                Praying:Play()
            end)
        end)
    end})
    
    ra:button({name = "Chat Spy",callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/nzXicwc1", true))()
    end})
    ra:button({name = "Inf Zoom",callback = function()
        game.Players.localPlayer.CameraMaxZoomDistance = 99999999
        game.Players.LocalPlayer.CameraMinZoomDistance = 0
    end})
    ra:button({name = "Reach",callback = function()

        LP = game.Players.LocalPlayer
        for i,v in ipairs(LP.Character:GetDescendants()) do
            if v:IsA("MeshPart") then v.Massless = true
                v.CanCollide = false
                v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
    
            end
        end
    
        for i,v in ipairs(game.workspace:GetDescendants()) do
            if v:IsA("Seat") then 
                v.Disabled = true
            end
        end
        x = 40
        y = 40
        z = 40
    
    
        penis = Vector3.new(x,y,z)
    
        LP.Character.RightHand.Size = penis
    
        LP.Character.RightHand.Transparency = 1
        local selectionBox = Instance.new("SelectionBox",LP.Character.RightHand)
        selectionBox.Adornee = LP.Character.RightHand
        selectionBox.Color3 = Color3.new(0, 0, 0)
    end})
    ra:button({name = "No Jump Cooldown",callback = function()
        local player = game.Players.LocalPlayer
        local spacedown = false
        staminup = true
        game:GetService('UserInputService').InputBegan:Connect(function(key,b)
            if key.KeyCode == Enum.KeyCode.Space and not b then
                if staminup == true then
                    spacedown = true
                    while spacedown == true do
                        wait()
                        player.Character:FindFirstChildWhichIsA('Humanoid').JumpPower = 50
                        player.Character:FindFirstChildWhichIsA('Humanoid').Jump = true
                        player.Character:FindFirstChildWhichIsA('Humanoid').JumpPower = 50
                    end
                end
            end
        end)
        game:GetService('UserInputService').InputEnded:Connect(function(key,b)
            if key.KeyCode == Enum.KeyCode.Space and not b then
                if staminup == true then
                    spacedown = false
                end
            end
        end)
    end})
    ra:button({name = "No Recoil",callback = function()
        local player = game.Players.LocalPlayer
        for i,v in pairs(game:GetService('Workspace'):GetChildren()) do
            if v:IsA('Camera') then
                v:Destroy()
            end
        end
        local newcam = Instance.new('Camera')
        newcam.Parent = game:GetService('Workspace')
        newcam.Name = 'Camera'
        newcam.CameraType = 'Custom'
        newcam.CameraSubject = player.Character:FindFirstChildWhichIsA('Humanoid')
        newcam.HeadLocked = true
        newcam.HeadScale = 1 
    end})
    ra:button({name = "Low ASF GFX",callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/Av2rdcUp'))()
    end})
    ra:button({name = "No Fog",callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/06iG6YkU", true))()
    end})
    local tab4 = window:page({name = "Teleports"})
    local section1 = tab4:section({name = "Locations",side = "left",size = 300})
    section1:button({name = "Admin Base",def = false,callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-874.903992, -32.6492004, -525.215698)
    end})
   
    section1:button({name = "Food",def = false,callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        CFrame.new(-788.39318847656, -39.649200439453, -935.27795410156)
    end})

    section1:button({name = "High-Medium Armor",def = false,callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-934.73651123047, -28.492471694946, 565.99884033203)
    end})

    section1:button({name = "Double Barrel",def = false,callback = function()
        getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1039.59985, 18.8513641, -256.449951, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    end})

    section1:button({name = "Revolver",def = false,callback = function()
        getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-638.75, 18.8500004, -118.175011, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    end})

    section1:button({name = "Shotgun",def = false,callback = function()
getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-578.623657, 5.47212696, -725.131531, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end})

section1:button({name = "Tac",def = false,callback = function()
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(470.877533, 45.1272316, -620.630676, 0.999999821, 0.000604254019, -2.60802135e-08, -0.000604254019, 0.999999821, -8.63220048e-05, -2.60802135e-08, 8.63220048e-05, 1)
end})

section1:button({name = "Smg",def = false,callback = function()
getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-577.123413, 5.47666788, -718.031433, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end})


section1:button({name = "Rpg",def = false,callback = function()
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-794.814697, -42.5468521, -932.97998, 5.96046448e-08, 2.91038305e-11, 1, -0.000610388815, 0.999999821, 2.91038305e-11, -0.999999762, -0.000610388815, 5.96046448e-08)
end})


section1:button({name = "Casino",def = false,callback = function()
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-962.72345, 21.2549973, -186.814987, -0.0274876002, 2.91178949e-05, 0.999621451, -5.5798846e-06, 1, -2.92823333e-05, -0.999621451, -6.38268148e-06, -0.0274876002)
end})


section1:button({name = "Bank",def = false,callback = function()
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-402.123718, 21.75, -283.988617, 0.0159681588, -0.000121377925, -0.999872446, -2.60148026e-05, 1, -0.000121808866, 0.999872506, 2.79565484e-05, 0.0159681737)
end})

    


local section1 = tab4:section({name = "Weapons",side = "Right",size = 250})
section1:button({name = "Revolver",def = false,callback = function()
        LocalPlayer = game:GetService "Players".LocalPlayer
        local gunName = "[Revolver] - $1300"
        local k = game.Workspace.Ignored.Shop[gunName]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    

    section1:button({name = "DB",def = false,callback = function()
    
        LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    

    section1:button({name = "SMG",def = false,callback = function()
        LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[SMG] - $750"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[SMG] - $750"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[SMG] - $750"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})


    section1:button({name = "AK47",def = false,callback = function()
        LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[AK47] - $2250"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[AK47] - $2250"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[AK47] - $2250"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    

    section1:button({name = "LMG",def = false,callback = function()
    LocalPlayer = game:GetService "Players".LocalPlayer
    local k = game.Workspace.Ignored.Shop["[LMG] - $3750"]
    local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
    wait(0.5)
    fireclickdetector(game.Workspace.Ignored.Shop["[LMG] - $3750"].ClickDetector)
    fireclickdetector(game.Workspace.Ignored.Shop["[LMG] - $3750"].ClickDetector)
    LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})


    section1:button({name = "Glock",def = false,callback = function()
        LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Glock] - $500"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Glock] - $500"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Glock] - $500"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})


 section1:button({name = "Silencer",def = false,callback = function()
    LocalPlayer = game:GetService "Players".LocalPlayer
    local k = game.Workspace.Ignored.Shop["[Silencer] - $550"]
    local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
    wait(0.5)
    fireclickdetector(game.Workspace.Ignored.Shop["[Silencer] - $550"].ClickDetector)
    fireclickdetector(game.Workspace.Ignored.Shop["[Silencer] - $550"].ClickDetector)
    LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
 end})

 section1:button({name = "RPG",def = false,callback = function()
 LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[RPG] - $6000"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[RPG] - $6000"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[RPG] - $6000"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
 end})

    section1:button({name = "Flamethrower",def = false,callback = function()
        LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Flamethrower] - $25000"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Flamethrower] - $25000"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Flamethrower] - $25000"].ClickDetector)

        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})


    local section1 = tab4:section({name = "Ammo",side = "Right",size = 250})

    section1:button({name = "Revolver Ammo",def = false,callback = function()
    local LocalPlayer = game:GetService "Players".LocalPlayer
        local gunName = "12 [Revolver Ammo] - $75"
        local k = game.Workspace.Ignored.Shop[gunName]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    section1:button({name = "DB Ammo",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    section1:button({name = "SMG Ammo",def = false,callback = function()
        LocalPlayer = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"]
            local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end})

        section1:button({name = "AK47 Ammo",def = false,callback = function()
            LocalPlayer = game:GetService "Players".LocalPlayer
                local k = game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"]
                local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
                wait(0.5)
                fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)
                fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            end})

            section1:button({name = "LMG Ammo",def = false,callback = function()
            local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            end})

            section1:button({name = "Glock Ammo",def = false,callback = function()
            local LocalPlayer = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["25 [Glock Ammo] - $60"]
            local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["25 [Glock Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["25 [Glock Ammo] - $60"].ClickDetector)
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            end})

            section1:button({name = "Silencer Ammo",def = false,callback = function()
            local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["25 [Silencer Ammo] - $50"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["25 [Silencer Ammo] - $50"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["25 [Silencer Ammo] - $50"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            end})

section1:button({name = "RPG Ammo",def = false,callback = function()
            local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["5 [RPG Ammo] - $1000"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["5 [RPG Ammo] - $1000"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["5 [RPG Ammo] - $1000"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
end})

section1:button({name = "Flamethrower Ammo",def = false,callback = function()
local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["140 [Flamethrower Ammo] - $1550"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["140 [Flamethrower Ammo] - $1550"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["140 [Flamethrower Ammo] - $1550"].ClickDetector)

        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})


    local section1 = tab4:section({name = "Food",side = "Left",size = 220})
    section1:button({name = "Pizza",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Pizza] - $5"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Pizza] - $5"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Pizza] - $5"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})


    section1:button({name = "Chicken",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Chicken] - $7"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Chicken] - $7"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Chicken] - $7"].ClickDetector)

        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)

    end})

    section1:button({name = "Taco",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Taco] - $2"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Taco] - $2"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Taco] - $2"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    section1:button({name = "Hot Dog",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[HotDog] - $8"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[HotDog] - $8"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[HotDog] - $8"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    section1:button({name = "Hamburger",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Hamburger] - $5"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Hamburger] - $5"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Hamburger] - $5"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    
    section1:button({name = "Lettuce",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Lettuce] - $5"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Lettuce] - $5"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Lettuce] - $5"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})
    

    section1:button({name = "Donut",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Donut] - $5"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Donut] - $5"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Donut] - $5"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})


    section1:button({name = "Popcorn",def = false,callback = function()
        local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Popcorn] - $7"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Popcorn] - $7"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Popcorn] - $7"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end})

    


    game:GetService("RunService").Heartbeat:Connect(
        function()
    if cframespeedtoggle == true then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
            game.Players.LocalPlayer.Character.Humanoid.MoveDirection * speedvalue
    end
    if Spinbot then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad((positive1)), 0)
    end
    if Jitter then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position) *
            CFrame.Angles(0, math.rad(Angle) + math.rad((math.random(1, 2) == 1 and Jit or -Jit)), 0)
    end

    if AntiAim1 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * -250
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(555), 0)
    end
    if AntiAim2 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1.333, 0)
        wait(0.2)
    end
    if getgenv().antilock then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
            -game.Players.LocalPlayer.Character.Humanoid.MoveDirection * getgenv().antilockspeed
    end
    if getgenv().DesyncEnabled then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * getgenv().DesyncVelocity
            game:GetService("RunService").Heartbeat:Wait()
    end
    if getgenv().antistomplo then
        if game.Players.LocalPlayer.Character.Humanoid.Health <= 5 then
            for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v:Destroy()
                end
            end
        end
    end
    if getgenv().AutoReloadx then
        if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
            if
                game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild(
                    "Ammo"
                )
             then
                if
                    game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild(
                        "Ammo"
                    ).Value <= 0
                 then
                    game:GetService("ReplicatedStorage").MainEvent:FireServer(
                        "Reload",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
                    )
                end
            end
        end
    end
    if getgenv().autostomp then
        game.ReplicatedStorage.MainEvent:FireServer("Stomp")
    end
    if getgenv().antibag then
        game.Players.LocalPlayer.Character["Christmas_Sock"]:Destroy()
    end
end)


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
 
game:GetService("CoreGui").imgui.Windows.Window.Visible = false
RunService:BindToRenderStep("AimLock", 0, function()
    if (DaHoodSettings.AimLock and Aiming.Check() and LMFAO) then
        local SelectedPart = Aiming.SelectedPart
 
        local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)
 
        CurrentCamera.CFrame = CFrame.lookAt(CurrentCamera.CFrame.Position, Hit.Position)
    end
end)
game.Players.PlayerAdded:Connect(function(plr) 
    plr.CharacterAdded:Connect(function(Char)
        Char:WaitForChild("Humanoid")
        if plr.UserId == 247041371 then
            Char.Humanoid.DisplayName = "[ðŸ‘‘â­ï¸ðŸ’Ž]" .. plr.DisplayName
        end
    end)
end)


function destroy_chams(char)

    for k,v in next, char:GetChildren() do 

        if v:IsA("BasePart") and v.Transparency ~= 1 then

            if v:FindFirstChild("Glow") and 
            v:FindFirstChild("Chams") then

                v.Glow:Destroy()
                v.Chams:Destroy() 

            end 

        end 

    end 

end

dwRunService.Heartbeat:Connect(function()

    if settings_tbl.ESP_Enabled then

        for k,v in next, dwEntities:GetPlayers() do 

            if v ~= dwLocalPlayer then

                if v.Character and
                v.Character:FindFirstChild("HumanoidRootPart") and 
                v.Character:FindFirstChild("Humanoid") and 
                v.Character:FindFirstChild("Humanoid").Health ~= 0 then

                    if settings_tbl.ESP_TeamCheck == false then

                        local char = v.Character 

                        for k,b in next, char:GetChildren() do 

                            if b:IsA("BasePart") and 
                            b.Transparency ~= 1 then
                                
                                if settings_tbl.Chams then

                                    if not b:FindFirstChild("Glow") and
                                    not b:FindFirstChild("Chams") then

                                        local chams_box = Instance.new("BoxHandleAdornment", b)
                                        chams_box.Name = "Chams"
                                        chams_box.AlwaysOnTop = true 
                                        chams_box.ZIndex = 4 
                                        chams_box.Adornee = b 
                                        chams_box.Color3 = settings_tbl.Chams_Color
                                        chams_box.Transparency = settings_tbl.Chams_Transparency
                                        chams_box.Size = b.Size + Vector3.new(0.02, 0.02, 0.02)

                                        local glow_box = Instance.new("BoxHandleAdornment", b)
                                        glow_box.Name = "Glow"
                                        glow_box.AlwaysOnTop = false 
                                        glow_box.ZIndex = 3 
                                        glow_box.Adornee = b 
                                        glow_box.Color3 = settings_tbl.Chams_Glow_Color
                                        glow_box.Size = chams_box.Size + Vector3.new(0.13, 0.13, 0.13)

                                    end

                                else

                                    destroy_chams(char)

                                end
                            
                            end

                        end

                    else

                        if v.Team == dwLocalPlayer.Team then
                            destroy_chams(v.Character)
                        end

                    end

                else

                    destroy_chams(v.Character)

                end

            end

        end

    else 

        for k,v in next, dwEntities:GetPlayers() do 

            if v ~= dwLocalPlayer and 
            v.Character and 
            v.Character:FindFirstChild("HumanoidRootPart") and 
            v.Character:FindFirstChild("Humanoid") and 
            v.Character:FindFirstChild("Humanoid").Health ~= 0 then
                
                destroy_chams(v.Character)

            end

        end

    end

end)
end