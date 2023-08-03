
FTS = "Zen X is cracked bozo"
ver = "1"
player = game.Players.LocalPlayer
local ZenLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Empire4946/uilib/main/library.lua"))()
local window = ZenLib:New({
    Name = FTS,
    FolderToSave = FTS
})


defaultConfig = {
    autobuy = false;
    autocollect = false;
    version = "1";
}

if not isfile(FTS .. "/configs/config.json") then
    repeat wait(0.1)
        writefile(FTS .. "/configs/config.json",game:GetService("HttpService"):JSONEncode(defaultConfig))
    until isfile(FTS .. "/configs/config.json")
end

Settings = game:GetService("HttpService"):JSONDecode(readfile(FTS .. "/configs/config.json"))
if Settings.version ~= ver then
    logError('Wrong file detected, redoing the config file.',true)
    delfile(FTS .. "/configs/config.json")
    writefile(FTS .. "/configs/config.json",game:GetService("HttpService"):JSONEncode(defaultConfig))
end
function save()
    writefile(FTS .. "/configs/config.json",game:GetService("HttpService"):JSONEncode(Settings))
end

-- reset all features to default settings
for _,v in pairs(defaultConfig) do
    getgenv()[_] = v
end

function getTycoon()
    for _,v in pairs(game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons:GetChildren()) do
        if tostring(v.Owner.Value) == game.Players.LocalPlayer.Name then
            return v.Name
        end
    end
end

coroutine.resume(coroutine.create(function(v)
    while task.wait(0.1) do
        if getgenv().autobuy then
            pcall(function()
                game.Players.LocalPlayer.PlayerGui.UI.Store:Destroy()
            end)
            for _,v in pairs(game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons[getTycoon()].Buttons:GetChildren()) do
                if v.Price.Value <= game.Players.LocalPlayer.leaderstats.Cash.Value then
                    firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Head, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Head, 1)
                end
            end
        end
    end
end))

coroutine.resume(coroutine.create(function(v)
    while task.wait() do
        if getgenv().autocollect then
            local giver = game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons[getTycoon()].Essentials.Giver
            firetouchinterest(game.Players.LocalPlayer.Character.Head, giver, 0)
            task.wait()
            firetouchinterest(game.Players.LocalPlayer.Character.Head, giver, 1)
        end
    end
end))

-- Loading Tabs
local autotab = window:Tab("Autofarm")
local misctab = window:Tab("Misc")
local configtab = window:Tab("Configuration")

-- Loading Sections
local autofarm = autotab:Section("Autofarm")
local misc = misctab:Section("Misc")
local config = configtab:Section("Config")

autofarm:Toggle("Auto Buy",Settings.autobuy,"Toggle",function(v)
    getgenv().autobuy = v
    Settings.autobuy = v
    save()
end)

autofarm:Toggle("Auto Collect",Settings.autocollect,"Toggle",function(v)
    getgenv().autocollect = v
    Settings.autocollect = v
    save()
end)


misc:Button("Anti Lag",function(v)
    local decalsyeeted = true
    local g = game
    local w = g.Workspace
    local l = g.Lighting
    local t = w.Terrain
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    for i, v in pairs(g:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
            v.Enabled = false
        elseif v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        end
    end
    for i, e in pairs(l:GetChildren()) do
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
            e.Enabled = false
        end
    end
end)

misc:Button('Self Destruct',function()
    -- disable all features 
    for _,v in pairs(defaultSettings) do
        if type(getgenv()[v]) == "boolean" then
            getgenv()[v] = false
        end
        if type(getgenv()[v]) == "string" then
            getgenv()[v] = ""
        end
    end
    -- reset camera
    local Camera = game.Workspace:FindFirstChildWhichIsA('Camera')
    Camera.CameraSubject = player.Character:FindFirstChildWhichIsA('Humanoid')
    spectate = false
    -- destroy gui
    for i,v in pairs(game.CoreGui:GetChildren()) do
        if string.find(v.Name, '0.') then
            v:Destroy()
        end
    end
    -- if u got free korblox on then reset
    if not player.Character:FindFirstChild('RightFoot') then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(100, 100, 100)
        pcall(function()
            player.Character:BreakJoints()
        end)
    end
end)

misc:Button('Rejoin',function(v)
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
end)

misc:Button('Free Korblox',function(v)
    local Leg = 'Right' 
    local plr = game.Players.LocalPlayer
    local char = plr.Character
    if char.Humanoid.RigType == Enum.HumanoidRigType.R15 then
        char[Leg..'UpperLeg']:Destroy()
        char[Leg..'LowerLeg']:Destroy()
        char[Leg..'Foot']:Destroy()
        else
            char[Leg..' Leg']:Destroy()
    end
end)

misc:Button('Free Headless (Client sided)',function(v)
    game.Workspace[game.Players.LocalPlayer.Name].Head.MeshId = 134082579
end)
FLYSPEED = 20
misc:Button('Fly (X to toggle)',function(v)
    local plr = game.Players.LocalPlayer
    local Humanoid = plr.Character:FindFirstChildWhichIsA('Humanoid')
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
    local speed=FLYSPEED
    local keys={a=false,d=false,w=false,s=false}
    local e1
    local e2
    local function start()
        local pos = Instance.new("BodyPosition",torso)
        local gyro = Instance.new("BodyGyro",torso)
        pos.Name="EPIXPOS"
        pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        pos.position = torso.Position
        gyro.maxTorque = Vector3.new(15e15, 15e15, 15e15)
        gyro.cframe = torso.CFrame
        repeat
            wait()
            Humanoid.PlatformStand=true
            local new=gyro.cframe - gyro.cframe.p + pos.position
            if not keys.w and not keys.s and not keys.a and not keys.d then
                speed=FLYSPEED
            end
            if keys.w then
                new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                speed=speed
            end
            if keys.s then
                new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                speed=speed
                end
            if keys.d then
                new = new * CFrame.new(speed,0,0)
                speed=speed
            end
            if keys.a then
                new = new * CFrame.new(-speed,0,0)
                speed=speed
            end
            if speed>FLYSPEED then
                speed=FLYSPEED
            end
            pos.position=new.p
            if keys.w then
                gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed),0,0)
            elseif keys.s then
                gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed),0,0)
            else
                gyro.cframe = workspace.CurrentCamera.CoordinateFrame
            end
            until flying == false
            if gyro then gyro:Destroy() end
            if pos then pos:Destroy() end
            flying=false
                Humanoid.PlatformStand=false
                speed=FLYSPEED
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

config:Button("Save Settings",function()
    save()
end)

-- load all features
for _,v in pairs(Settings) do
    getgenv()[_] = v
end

wait(3)
local VirtualUser=game:service'VirtualUser'
game:service('Players').LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end) -- anti afk