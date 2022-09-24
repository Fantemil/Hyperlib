local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local Library =
    Material.Load(
    {
        Title = "Swordburst 2  ―  Bleus | Beta",
        Style = 1,
        SizeX = 400,
        SizeY = 400,
        Theme = "Aqua",
        ColorOverrides = {
            MainFrame = Color3.fromRGB(35,35,35)
        }
    }
)

-- Variables

local s =
    setmetatable(
    {},
    {
        __index = function(self, service)
            return game:GetService(service)
        end,
        __newindex = function(self, key)
            self[key] = nil
        end
    }
)

local Ser;

for i, v in next, getreg() do
    if typeof(v) == "table" then
        if rawget(v, "Services") then
            Ser = v.Services
            break
        end
    end
end

local key = getupvalue(Ser.Combat.Init, 2)

local user = s["Players"].LocalPlayer
local ReplicatedStorage = s["ReplicatedStorage"]

getgenv().TweenSpeed = 50
getgenv().Studs = 5000

-- etc

local BossNames = {
    "Dire Wolf",
    "Rahjin the Thief King",
    "Borik the BeeKeeper",
    "Gorrock the Grove Protector",
    "Ra'thae the Ice King",
    "Qerach The Forgotten Golem",
    "Irath the Lion",
    "Rotling",
    "Fire Scorpion",
    "Sa'jun the Centurian Chieftain",
    "Frogazoid",
    "Smashroom",
    "Hippogriff",
    "Formaug the Jungle Giant",
    "Gargoyle Reaper",
    "Mortis the Flaming Sear",
    "Polyserpant",
    "Baal",
    "Grim the Overseer",
    "Da",
    "Ra",
    "Ka",
    "Egg Mimic" -- easter event
}

-- Functions

local function Damage(Enemy)
    --if (not getgenv().MultiplyDamage) then
        --ReplicatedStorage.Event:FireServer("Combat", key, {"Attack", nil, "1", Enemy})
        --return
    --end
    -- above coming soon
    
    ReplicatedStorage.Event:FireServer("Skills", {"UseSkill", "Summon Pistol"})
    ReplicatedStorage.Event:FireServer("Combat", key, {"Attack", "Summon Pistol", "1", Enemy})
end

local function UserWalkSpeed(person, speed)
    if person and person.Character then
        if person.Character:FindFirstChildWhichIsA("Humanoid") then
            person.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed = speed
        end
    end
end

local function GoInvisible()
    if(user.Character and user.Character:FindFirstChild("LowerTorso") or user.Character:FindFirstChildWhichIsA("LowerTorso")) then
        user.character.LowerTorso.Root:Destroy()
    end
end

local function Nearest()
    local d = getgenv().Studs
    local t = nil

    for i, v in pairs(game.Workspace.Mobs:GetChildren()) do
        if
            (v.PrimaryPart ~= nil and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Nameplate") and
                v.Parent and
                v:FindFirstChild("Entity") and
                v.Entity.Health.Value > 0)
         then
            if getgenv().TargetBosses then
                for _, i in next, BossNames do
                    if (i == v.Name) then
                        return v
                    end
                end
            end
            local Magnitude = (v.PrimaryPart.CFrame.p - Workspace.CurrentCamera.CFrame.p).Magnitude
            if (Magnitude < d and Magnitude > 0) then
                d = Magnitude
                t = v
            end
        end
    end
    
    return t
end


--[[
soon

local function NearestPlayer()
    local Root = user and user:FindFirstChild("HumanoidRootPart")
    if not (user or Root) then return end
    
    local d = getgenv().Studs
    local t = nil

    for i, v in pairs(game.Players:GetChildren()) do
        if (v ~= user and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character.Humanoid.Health > 0)
         then
            local Magnitude = (user.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
            if (Magnitude < d) then
                d = Magnitude
                t = v
            end
        end
    end
    
    return t
end
--]]

-- Sections --

local Main =
    Library.New(
    {
        Title = "Swordburst 2"
    }
)

local Misc =
    Library.New(
    {
        Title = "Misc"
    }
)

local Settings =
    Library.New(
    {
        Title = "Settings"
    }
)

-- Auto --

local AutoFarm =
    Main.Toggle(
    {
        Text = "AutoFarm",
        Callback = function(Value)
            getgenv().autofarm = Value
            while getgenv().autofarm do        
                local Enemy = Nearest()

                if (Enemy ~= nil) then
                    tweenService, tweenInfo = s["TweenService"], TweenInfo.new((user.Character.HumanoidRootPart.Position - Enemy.HumanoidRootPart.Position).Magnitude / getgenv().TweenSpeed, Enum.EasingStyle.Linear)
                    T = tweenService:Create(user.Character.HumanoidRootPart, tweenInfo, {CFrame = Enemy.PrimaryPart.CFrame * CFrame.new(0, 15, 0)})
                    T:Play()
                end
                wait()
            end
        end,
        Enabled = false
    }
)

local Killaura =
    Main.Toggle(
    {
        Text = "KillAura",
        Callback = function(Value)
            getgenv().killaura = Value
            while getgenv().killaura and wait() do
                local Enemy = Nearest()

                if (Enemy ~= nil) then
                    wait(.3)
                    Damage(Enemy.Entity.Parent)
                end
            end
        end,
        Enabled = false
    }
)

local TargetBosses =
    Main.Toggle(
    {
        Text = "Prioritize Bosses",
        Callback = function(Value)
            getgenv().TargetBosses = Value
        end,
        Enabled = false
    }
)

-- Misc --

local TweenSpeed =
    Misc.Slider(
    {
        Text = "WalkSpeed",
        Callback = function(Value)
            UserWalkSpeed(user, Value)
        end,
        Min = 16,
        Max = 100,
        Def = 0
    }
)

local Invisiblity =
    Misc.Button(
    {
        Text = "Invisibility",
        Callback = function()
            GoInvisible()
        end
    }
)

-- Settings --

local EntityDistance =
    Settings.Slider(
    {
        Text = "Max Entity Distance",
        Callback = function(Value)
            getgenv().Studs = Value
        end,
        Min = 150,
        Max = 10000,
        Def = 5000
    }
)

local TweenSpeed =
    Settings.Slider(
    {
        Text = "Tweening Speed",
        Callback = function(Value)
            getgenv().TweenSpeed = Value
        end,
        Min = 10,
        Max = 125,
        Def = 50
    }
)

spawn(function()
    while true do
        if (user.Character ~= nil and getgenv().autofarm) then
            local function NoClipping()
                if user.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
                    for _, Parts in next, (user.Character:GetDescendants()) do
                        if (Parts:IsA("BasePart") and Parts.CanCollide == true) then
                            Parts.CanCollide = false
                        end
                    end
                else
                    user.Character.Humanoid:ChangeState(11)
                end
            end
            
            spawn(NoClipping)
        end
        wait()
    end
end)