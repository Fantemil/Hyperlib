-->> Made by NG

-->> Aki Remake >>

local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/sdhhf1245/ui-library/main/lib.lua'))()
local Window = Library:NewWindow()

local CatchingSection = Window:TabSection({Name = "Catching"})
local Magnets = CatchingSection:NewTab({Name = "Magnets", Image = "6034754445"})
local Automatics = CatchingSection:NewTab({Name = "Automatics", Image = "6034684949"})

local ThrowingSection = Window:TabSection({Name = "Throwing"})
local QB_Aimbot = ThrowingSection:NewTab({Name = "QB Aimbot", Image = "6034684949"})

local PhysicsSection = Window:TabSection({Name = "Physics"})
local PlayerTab = PhysicsSection:NewTab({Name = "Player", Image = "6034754445"})
local Hitboxes = PhysicsSection:NewTab({Name = "Hitboxes", Image = "6034754445"})
local Defending = PhysicsSection:NewTab({Name = "Defending", Image = "6035078889"})
local Graphics = PhysicsSection:NewTab({Name = "Graphics", Image = "6034407078"})

local MiscellaneousSection = Window:TabSection({Name = "Miscellaneous"})
local Main = MiscellaneousSection:NewTab({Name = "Main", Image = "6034684949"})
local Trolling = MiscellaneousSection:NewTab({Name = "Trolling", Image = "6034754445"})

-->> Callbacks >>
local Settings = {
    AutoHands = true,
    AutoJump = false,
    AutoSwat = false,
    AutoCatchEnabled = false,
    AutoCatchYards = 0,
    FollowBallCarrier = false,
    AutoHitStick = false,
    AutoCover = false,
    WinCaptainRace = false,
    BallTracer = false,
    Walkspeed = {
        Enabled = false,
        Value = 20
    },
    JumpPower = {
        Enabled = false,
        Value = 50
    },
    Fly = false,
    Mags = {
        Enabled = false,
        Mode = nil,
        Distance = 10,
        ShowMagsRange = false,
        EnabledWhenSwatting = false
    },
    BigFootball = false,
    BigHands = {
        Enabled = false,
        SizeX = 0,
        SizeY = 0,
        SizeZ = 0,
    },
    NoBallCollision = false,
    JumpCooldown = false,
    AntiBlock = false,
    Bounds = false,
    IllegalFoward = false,
    QB_Bounds = false,
    BallCarrierLock = false,
    AutoBlock = {
        Enabled = false,
        Yards = 0
    },
    AutoScore = false,
    AntiJam = false,
    HitboxExtender = {
        Enabled = false,
        SizeX = 0,
        SizeY = 0,
        SizeZ = 0
    },
    AutoGetUpFast = {
        Enabled = false,
        Delay = 1
    },
    TackleAimbot = {
        Enabled = false,
        Distance = 15
    },
    QBAimbot = {
        Enabled = true,
        ToggleKeybind = 'Q',
        AngleBased = false,
        DesiredAngle = 30,
        YOffset = 1.25,
        XZOffset = 0, -- 
        PowerBased = true,
        DesiredPower = 95,
        BoundsTolerance = 15,
        maxAirTime = 20,
        JumpPassKeybind = 'LeftControl',
        JumpPassHeight = 6.36 + 1.65,
        MaxYOffset = 12
    },    
    KickerAimbot = false
}

Magnets:NewDropdown({
    Name = "Magnets Mode",
    options = {"Normal", "League", "Blatant"},
    default = "Normal",

    callback = function(Value)
        Settings.Mags.Mode = Value
    end,
})  

Magnets:NewSlider({
    Name = "Legit Mags Minimum Yards",
    min = 0,
    max = 30,
    default = 0,

    callback = function(Value)
        Settings.Mags.Distance = Value
    end,
})

Magnets:NewToggle({
    Name = "Magnets Enabled",
    default = false,

    callback = function(Value)
        Settings.Mags.Enabled = Value
    end,
})

Magnets:NewToggle({
    Name = "Show Mags Range",
    default = false,

    callback = function(Value)
        Settings.Mags.ShowMagsRange = Value
    end,
})

Automatics:NewToggle({
    Name = "Auto Catch Enabled",
    default = false,
    callback = function(Value)
        Settings.AutoCatchEnabled = Value
    end,
})

Automatics:NewSlider({
	Name = "Auto Catch Minimum Yards",
	min = 15,
	max = 30,
	default = 15,
	callback = function(Value)
        Settings.AutoCatchYards = Value
	end,
})

Automatics:NewToggle({
    Name = "Follow Ball Carrier Enabled",
    default = false,
    callback = function(Value)
        Settings.FollowBallCarrier = Value
    end,
})

Automatics:NewToggle({
    Name = "Auto Jump Enabled",
    default = false,
    callback = function(Value)
        Settings.AutoJump = Value
    end,
})

Automatics:NewToggle({
    Name = "Auto Block Enabled",
    default = false,
    callback = function(Value)
        Settings.AutoBlock.Enabled = Value
    end,
})

Automatics:NewSlider({
    Name = "Auto Block Minimum Yards",
    min = 10,
    max = 40,
    default = 20,
    callback = function(Value)
        Settings.AutoBlock.Distance = Value
    end,
})

Automatics:NewToggle({
    Name = "Auto Score Enabled",
    default = false,
    callback = function(Value)
        Settings.AutoScore = Value
    end,
})

Automatics:NewToggle({
    Name = "Auto Getup Enabled",
    default = false,
    callback = function(Value) 
        Settings.AutoGetUpFast.Enabled = Value
    end,
})

Automatics:NewSlider({
    Name = "Auto Getup Delay",
    min = 0,
    max = 5,
    default = 1,
    callback = function(Value) 
        Settings.AutoGetUpFast.Delay = Value
    end,
})

QB_Aimbot:NewToggle({
    Name = "QB Aimbot Enabled",
    default = false,
    callback = function(Value)
        Settings.QBAimbot.Enabled = Value
    end,
})

QB_Aimbot:NewToggle({
    Name = "QB Aimbot Toggle Keybind",
    default = false,
    callback = function(Value)
        Settings.QBAimbot.ToggleKeybind = Value
    end,
})

QB_Aimbot:NewToggle({
    Name = "Angle Based",
    default = false,
    callback = function(Value)
        Settings.QBAimbot.AngleBased = Value
    end,
})

QB_Aimbot:NewToggle({
    Name = "Power Based",
    default = false,
    callback = function(Value)
        Settings.QBAimbot.PowerBased = Value
    end,
})

QB_Aimbot:NewSlider({
    Name = "Desired Angle",
    min = 5,
    max = 45,
    default = 30,
    callback = function(Value)
        Settings.QBAimbot.DesiredAngle = Value
    end,
})

QB_Aimbot:NewSlider({
    Name = "Desired Power",
    min = 55,
    max = 95,
    default = 94,
    callback = function(Value)
        Settings.QBAimbot.DesiredPower = Value
    end,
})

QB_Aimbot:NewSlider({
    Name = "Max Air Time",
    min = 10,
    max = 20,
    default = 20,

    callback = function(Value)
        Settings.QBAimbot.maxAirTime = Value
    end,
})

QB_Aimbot:NewSlider({
    Name = "Y Offset Value",
    min = 1.25,
    max = 3.25,
    default = 1.25,

    callback = function(Value)
        Settings.QBAimbot.YOffset = Value
    end,
})

PlayerTab:NewToggle({
    Name = "Walkspeed Enabled",
    default = false,
    callback = function(Value)
        Settings.Walkspeed.Enabled = Value
    end,
})

PlayerTab:NewSlider({
    Name = "Custom Walkspeed Amount",
    min = 20,
    max = 45,
    default = 20,
    callback = function(Value)
        Settings.Walkspeed.Value = Value
    end,
})

PlayerTab:NewToggle({
    Name = "JumpPower Enabled",
    default = false,
    callback = function(Value)
        Settings.JumpPower.Enabled = Value
    end,
})

PlayerTab:NewSlider({
    Name = "Custom JumpPower Amount",
    min = 50,
    max = 80,
    default = 50,
    callback = function(Value)
        Settings.JumpPower.Value = Value
    end,
})

PlayerTab:NewToggle({
    Name = "Fly",
    default = false,
    callback = function(Value)
        Settings.Fly = Value
    end,
})

PlayerTab:NewToggle({
    Name = "Big Hands Enabled",
    default = false,
    callback = function(Value)
        Settings.BigHands = Value
    end,
})

Hitboxes:NewToggle({
    Name = "Hitbox Extender Enabled",
    default = false,
    callback = function(Value)
        Settings.HitboxExtender.Enabled = Value
    end,
})

Hitboxes:NewSlider({
    Name = "Size X",
    min = 0,
    max = 30,
    default = 0,
    callback = function(Value)
        Settings.HitboxExtender.SizeX = 0
    end,
})

Hitboxes:NewSlider({
    Name = "Size Y",
    min = 0,
    max = 30,
    default = 0,
    callback = function(Value)
        Settings.HitboxExtender.SizeY = 0
    end,
})

Hitboxes:NewSlider({
    Name = "Size Z",
    min = 0,
    max = 30,
    default = 0,
    callback = function(Value)
        Settings.HitboxExtender.SizeZ = 0
    end,
})

-->> Main Code

-->> Services >>
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-->> Variables >>
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

task.spawn(function()
    RunService.Heartbeat:Connect(function()
        for Index, Value in next, workspace:GetChildren() do
            if Value.Name == "Football" and Value:IsA("BasePart") then
                local Distance = (Value.Position - Character:FindFirstChild("HumanoidRootPart").Position).Magnitude

                if Settings.Mags.Mode == "Normal" then
                    Settings.Mags.Distance = 15
                elseif Settings.Mags.Mode == "Blatant" then
                    Settings.Mags.Distance = 30
                elseif Settings.Mags.Mode == "League" then
                    Settings.Mags.Distance = 5
                end

                if Settings.Mags.Enabled and Distance <= Settings.Mags.Distance then
                    firetouchinterest(Character:WaitForChild("CatchLeft"), Value, 0)
                    firetouchinterest(Character:WaitForChild("CatchLeft"), Value, 0)
                    task.wait()
                    firetouchinterest(Character:WaitForChild("CatchLeft"), Value, 1)
                    firetouchinterest(Character:WaitForChild("CatchLeft"), Value, 1)
                end
            end
        end
    end)
end)