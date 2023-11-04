__ = 

	"Discord: dari#0513, Server: .gg/3bmGDemSbt"

-- Credits to Elegant and Fulcrum, the original script coders

-- If ur gonna put in vault / showcase, pls don't put the source code directly or loadstring, put the discord

-- DO NOT EDIT BELOW IF YOU DON'T KNOW WHAT YOU'RE DOING!!

repeat wait() until game:IsLoaded()

Drawing = Drawing
Actyrn7104 = Actyrn7104
setfpscap = setfpscap
syn = syn
mousemoverel = mousemoverel
hookmetamethod = hookmetamethod
newcclosure = newcclosure
getnamecallmethod = getnamecallmethod

-- Variables

local UiLib = loadstring(game:HttpGet("https://pastebin.com/raw/JFzC7iXS"))()

local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local StarterGui = game:GetService("StarterGui")
local Stats = game:GetService("Stats")

local TargetPlr, CamlockPlr
local LocalPlr = Players.LocalPlayer

local TargBindEnabled, CamBindEnabled = false, false

local AntiCheatNamecall, TargNamecall

local StrafeSpeed = 0

local TargDotCircle = Drawing.new("Circle")
TargDotCircle.Filled = true
TargDotCircle.Thickness = 1
TargDotCircle.Radius = 7

local TargFovCircle = Drawing.new("Circle")
TargFovCircle.Thickness = 1.5

local TargTracerLine = Drawing.new("Line")
TargTracerLine.Thickness = 2

local SelfDotCircle = Drawing.new("Circle")
SelfDotCircle.Filled = true
SelfDotCircle.Thickness = 1
SelfDotCircle.Radius = 7

local SelfTracerLine = Drawing.new("Line")
SelfTracerLine.Thickness = 2

local CamFovCircle = Drawing.new("Circle")
CamFovCircle.Thickness = 1.5

local CamTracerLine = Drawing.new("Line")
CamTracerLine.Thickness = 2

local TargStats = Instance.new("ScreenGui", CoreGui)
TargStats.Name = "Actyrn#7104"
TargStats.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local StatsFrame = Instance.new("Frame", TargStats)
StatsFrame.Name = "Actyrn#7104"
StatsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StatsFrame.BorderSizePixel = 0
StatsFrame.Position = UDim2.new(0.388957828, 0, 0.700122297, 0)
StatsFrame.Size = UDim2.new(0, 360, 0, 70)

local StatsTop = Instance.new("Frame", StatsFrame)
StatsTop.Name = "Actyrn#7104"
StatsTop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StatsTop.BorderSizePixel = 0
StatsTop.Position = UDim2.new(0, 0, -0.101449274, 0)
StatsTop.Size = UDim2.new(0, 360, 0, 7.5)

local StatsName = Instance.new("TextLabel", StatsFrame)
StatsName.Name = "Actyrn#7104"
StatsName.BackgroundTransparency = 1
StatsName.Position = UDim2.new(0.220670387, 0, 0.0704225376, 0)
StatsName.Size = UDim2.new(0, 270, 0, 20)
StatsName.Font = Enum.Font.Code
StatsName.TextColor3 = Color3.fromRGB(255, 255, 255)
StatsName.TextScaled = true
StatsName.TextSize = 15
StatsName.TextStrokeTransparency = 0
StatsName.TextWrapped = true

local StatsPicture = Instance.new("ImageLabel", StatsFrame)
StatsPicture.Name = "Actyrn#7104"
StatsPicture.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StatsPicture.BorderSizePixel = 0
StatsPicture.Position = UDim2.new(0.0279329624, 0, 0.0704225376, 0)
StatsPicture.Size = UDim2.new(0, 60, 0, 60)
StatsPicture.Transparency = 1
StatsPicture.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

local StatsHealthBackground = Instance.new("Frame", StatsFrame)
StatsHealthBackground.Name = "Actyrn#7104"
StatsHealthBackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StatsHealthBackground.BorderSizePixel = 0
StatsHealthBackground.Position = UDim2.new(0.215083793, 0, 0.348234326, 0)
StatsHealthBackground.Size = UDim2.new(0, 270, 0, 20)
StatsHealthBackground.Transparency = 1

local StatsHealthBar = Instance.new("Frame", StatsHealthBackground)
StatsHealthBar.Name = "Actyrn#7104"
StatsHealthBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StatsHealthBar.BorderSizePixel = 0
StatsHealthBar.Position = UDim2.new(-0.00336122862, 0, 0.164894029, 0)
StatsHealthBar.Size = UDim2.new(0, 130, 0, 20)

local StatsGradient1 = Instance.new("UIGradient", StatsTop)
StatsGradient1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(185, 160, 230)), ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 90, 155))}
StatsGradient1.Rotation = 90

local StatsGradient2 = Instance.new("UIGradient", StatsFrame)
StatsGradient2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(50, 50, 50)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))}
StatsGradient2.Rotation = 90

local StatsGradient3 = Instance.new("UIGradient", StatsHealthBackground)
StatsGradient3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 60, 60)), ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 30, 30))}
StatsGradient3.Rotation = 90

local StatsGradient4 = Instance.new("UIGradient", StatsHealthBar)
StatsGradient4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(185, 160, 230)), ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 90, 155))}
StatsGradient4.Rotation = 90

local TargHighlight = Instance.new("Highlight", CoreGui)

local CamHighlight = Instance.new("Highlight", CoreGui)

local TargetAimbot = {
	Enabled = false, 
	Keybind = nil, 

	Prediction = nil, 
	RealPrediction = nil, 

	Resolver = false, 

	JumpOffset = 0, 
	RealJumpOffset = nil, 

	HitParts = {"HumanoidRootPart"}, 
	RealHitPart = nil, 

	AutoPred = false, 
	Notify = false, 

	KoCheck = false, 

	LookAt = false, 
	ViewAt = false, 

	Dot = false, 
	DotOnCursor = false, 

	Tracer = false, 

	Highlight = false, 
	Stats = false, 

	UseFov = false
}

local TargetStrafe = {
	Enabled = false, 

	Speed = 1, 
	Distance = 1, 
	Height = 1
}

local CameraAimbot = {
	Enabled = false, 
	Keybind = nil, 

	Prediction = nil, 
	RealPrediction = nil, 

	Resolver = false, 

	JumpOffset = 0, 
	RealJumpOffset = nil, 

	HitPart = "HumanoidRootPart", 
	RealHitPart = nil, 

	UseAirPart = false, 
	AirPart = "LowerTorso", 
	AirCheckType = "Once in Air", 

	AutoPred = false, 
	Notify = false, 

	KoCheck = false, 
	Tracer = false, 

	Highlight = false, 

	AimMethod = "Camera", 

	Smoothing = false, 
	Smoothness = nil, 

	UseFov = false
}

local Utilities = {
	NoJumpCooldown = false, 
	NoSlowdown = false, 

	AutoStomp = false, 
	AutoReload = false
}

local Movement = {
	SpeedEnabled = false, 
	SpeedAmount = 1, 

	AutoJump = false, 

	BunnyHop = false, 
	HopAmount = 1, 

	FlightEnabled = false, 
	FlightAmount = 1
}

local SelfDot = {
	Enabled = false, 
	Tracer = false, 

	RandomHitPart = false, 
	Prediction = 1, 

	HitPart = "HumanoidRootPart", 
	RealHitPart = nil
}

local AntiLock = {
	Enabled = false, 
	Mode = "Custom", 

	CustomX = 10000, 
	CustomY = 10000, 
	CustomZ = 10000, 

	PredReverseAmt = 3.5, 
	LookVecAmt = 500, 
	PredChangeAmt = 5, 

	DesyncVel = Vector3.new(9e9, 9e9, 9e9), 
	DesyncAngles = 0.5
}

-- Functions

function ClosestPlr(Part, UseFov, FovCircle)
	local Distance, Closest = math.huge, nil

	for I, Target in pairs(Players:GetPlayers()) do
		if Target ~= LocalPlr then
			local Position = Workspace.CurrentCamera:WorldToViewportPoint(Target.Character[Part].Position)
			local Magnitude = (Vector2.new(Position.X, Position.Y) - UserInputService:GetMouseLocation()).Magnitude

			if UseFov then
				if Magnitude < Distance and Magnitude < FovCircle.Radius then
					Closest = Target
					Distance = Magnitude
				end
			else
				if Magnitude < Distance then
					Closest = Target
					Distance = Magnitude
				end
			end
		end
	end

	return Closest
end

-- GUI

-- Check for errors

UiLib:CheckErrors(true, true, LocalPlr, __, Actyrn7104)

-- Window

local Actyrn_7104 = UiLib:CreateWindow("Azure Modded | Actyrn#7104 | .gg/wDngb2mv4H", Vector2.new(500, 600), Enum.KeyCode.V)

-- Tabs

local MainTab = Actyrn_7104:CreateTab("Main")
local MiscTab = Actyrn_7104:CreateTab("Misc")

-- Sectors

-- MAIN

local TargetAimbotSec = MainTab:CreateSector("Target Aimbot", "left")
local TargetStrafeSec = MainTab:CreateSector("Target Strafe", "left")

local CameraAimbotSec = MainTab:CreateSector("Camera Aimbot", "right")

-- MISC

local UtilitiesSec = MiscTab:CreateSector("Utilities", "left")
local MovementSec = MiscTab:CreateSector("Movement", "left")
local SelfDotSec = MiscTab:CreateSector("Self Dot", "left")

local AntiLockSec = MiscTab:CreateSector("Anti Lock", "right")

-- Toggles

-- MAIN

-- Target Aimbot

TargetAimbotSec:AddToggle("Enabled", false, function(Value)
	TargetAimbot.Enabled = Value
end, "TargetEnabled")

TargetAimbotSec:AddKeybind("Keybind", nil, function(Value)
	TargetAimbot.Keybind = Value
end, "TargetKeybind")

TargetAimbotSec:AddTextbox("Prediction", nil, function(Value)
	TargetAimbot.Prediction = Value
	TargetAimbot.RealPrediction = Value
end, "TargetPrediction")

local TargResolverTog = TargetAimbotSec:AddToggle("Antilock Resolver", false, function(Value)
	TargetAimbot.Resolver = Value
end, "TargetAntilockResolver")

TargResolverTog:AddKeybind(nil, "TargetAntilockResolverKeybind")

TargetAimbotSec:AddSlider("Jump Offset", -2, 0, 2, 100, function(Value)
	TargetAimbot.JumpOffset = Value
	TargetAimbot.RealJumpOffset = Value
end, "TargetJumpOffset")

TargetAimbotSec:AddDropdown("Hit Part(s)", {"Head", "HumanoidRootPart", "UpperTorso", "LowerTorso", "RightUpperArm", "LeftUpperArm", "RightLowerArm", "LeftLowerArm", "RightUpperLeg", "LeftUpperLeg", "RightLowerLeg", "LeftLowerLeg"}, {"HumanoidRootPart"}, true, function(Value)
	TargetAimbot.HitParts = Value
end, "TargetHitPart(s)")

TargetAimbotSec:AddToggle("Auto Pred", false, function(Value)
	TargetAimbot.AutoPred = Value
end, "TargetAutoPred")

TargetAimbotSec:AddToggle("Notify", false, function(Value)
	TargetAimbot.Notify = Value
end, "TargetNotify")

TargetAimbotSec:AddToggle("KO Check", false, function(Value)
	TargetAimbot.KoCheck = Value
end, "TargetKOCheck")

TargetAimbotSec:AddToggle("Look At", false, function(Value)
	TargetAimbot.LookAt = Value
end, "TargetLookAt")

local ViewAtTog = TargetAimbotSec:AddToggle("View At", false, function(Value)
	TargetAimbot.ViewAt = Value
end, "TargetViewAt")

ViewAtTog:AddKeybind(nil, "TargetViewAtKeybind")

local TargDotTog = TargetAimbotSec:AddToggle("Dot", false, function(Value)
	TargetAimbot.Dot = Value
end, "TargetDot")

TargDotTog:AddColorpicker(Color3.fromRGB(170, 120, 210), function(Value)
	TargDotCircle.Color = Value
	TargTracerLine.Color = Value
end, "TargetDotTracerColor")

TargetAimbotSec:AddToggle("Dot on Cursor", false, function(Value)
	TargetAimbot.DotOnCursor = Value
end, "TargetDotOnCursor")

TargetAimbotSec:AddToggle("Tracer", false, function(Value)
	TargetAimbot.Tracer = Value
end, "TargetTracer")

local TargHighlightTog = TargetAimbotSec:AddToggle("Highlight", false, function(Value)
	TargetAimbot.Highlight = Value
end, "TargetHighlight")

TargHighlightTog:AddColorpicker(Color3.fromRGB(170, 120, 210), function(Value)
	TargHighlight.FillColor = Value
end, "TargetHighlightFillColor")

TargHighlightTog:AddColorpicker(Color3.fromRGB(90, 65, 110), function(Value)
	TargHighlight.OutlineColor = Value
end, "TargetHighlightOutlineColor")

TargetAimbotSec:AddToggle("Stats", false, function(Value)
	TargetAimbot.Stats = Value
end, "TargetStats")

TargetAimbotSec:AddToggle("Use FOV", false, function(Value)
	TargetAimbot.UseFov = Value
end, "TargetUseFOV")

local TargFovTog = TargetAimbotSec:AddToggle("FOV Visible", false, function(Value)
	TargFovCircle.Visible = Value
end, "TargetFOVVisible")

TargFovTog:AddColorpicker(Color3.fromRGB(80, 15, 180), function(Value)
	TargFovCircle.Color = Value
end, "TargetFOVColor")

TargetAimbotSec:AddToggle("FOV Filled", false, function(Value)
	TargFovCircle.Filled = Value
end, "TargetFOVFilled")

TargetAimbotSec:AddSlider("FOV Transparency", 0, 0.75, 1, 100, function(Value)
	TargFovCircle.Transparency = Value
end, "TargetFOVTransparency")

TargetAimbotSec:AddSlider("FOV Size", 5, 80, 500, 1, function(Value)
	TargFovCircle.Radius = Value * 2
end, "TargetFOVSize")

-- Target Strafe

local TargStrafeTog = TargetStrafeSec:AddToggle("Target Strafe", false, function(Value)
	TargetStrafe.Enabled = Value
end, "TargetStrafe")

TargStrafeTog:AddKeybind(nil, "TargetStrafeKeybind")

TargetStrafeSec:AddSlider("Speed", 0.5, 0.5, 10, 2, function(Value)
	TargetStrafe.Speed = Value
end, "TargetStrafeSpeed")

TargetStrafeSec:AddSlider("Distance", 1, 1, 20, 2, function(Value)
	TargetStrafe.Distance = Value
end, "TargetStrafeDistance")

TargetStrafeSec:AddSlider("Height", 1, 1, 20, 2, function(Value)
	TargetStrafe.Height = Value
end, "TargetStrafeHeight")

-- Camera Aimbot

CameraAimbotSec:AddToggle("Enabled", false, function(Value)
	CameraAimbot.Enabled = Value
end, "CameraEnabled")

CameraAimbotSec:AddKeybind("Keybind", nil, function(Value)
	CameraAimbot.Keybind = Value
end, "CameraKeybind")

CameraAimbotSec:AddTextbox("Prediction", nil, function(Value)
	CameraAimbot.Prediction = Value
	CameraAimbot.RealPrediction = Value
end, "CameraPrediction")

local CamResolverTog = CameraAimbotSec:AddToggle("Antilock Resolver", false, function(Value)
	CameraAimbot.Resolver = Value
end, "CameraAntilockResolver")

CamResolverTog:AddKeybind(nil, "CameraAntilockResolverKeybind")

CameraAimbotSec:AddSlider("Jump Offset", -2, 0, 2, 100, function(Value)
	CameraAimbot.JumpOffset = Value
	CameraAimbot.RealJumpOffset = Value
end, "CameraJumpOffset")

CameraAimbotSec:AddDropdown("Hit Part", {"Head", "HumanoidRootPart", "UpperTorso", "LowerTorso"}, "HumanoidRootPart", false, function(Value)
	CameraAimbot.HitPart = Value
	CameraAimbot.RealHitPart = Value
end, "CameraHitPart")

CameraAimbotSec:AddToggle("Use Air Part", false, function(Value)
	CameraAimbot.UseAirPart = Value
end, "CameraUseAirPart")

CameraAimbotSec:AddDropdown("Air Part", {"Head", "HumanoidRootPart", "UpperTorso", "LowerTorso", "RightHand", "LeftHand", "RightFoot", "LeftFoot"}, "LowerTorso", false, function(Value)
	CameraAimbot.AirPart = Value
end, "CameraAirPart")

CameraAimbotSec:AddDropdown("Air Check Type", {"Once in Air", "Once Freefalling"}, "Once in Air", false, function(Value)
	CameraAimbot.AirCheckType = Value
end, "CameraAirCheckType")

CameraAimbotSec:AddToggle("Auto Pred", false, function(Value)
	CameraAimbot.AutoPred = Value
end, "CameraAutoPred")

CameraAimbotSec:AddToggle("Notify", false, function(Value)
	CameraAimbot.Notify = Value
end, "CameraNotify")

CameraAimbotSec:AddToggle("KO Check", false, function(Value)
	CameraAimbot.KoCheck = Value
end, "CameraKOCheck")

local CamTracerTog = CameraAimbotSec:AddToggle("Tracer", false, function(Value)
	CameraAimbot.Tracer = Value
end, "CameraTracer")

CamTracerTog:AddColorpicker(Color3.fromRGB(170, 120, 210), function(Value)
	CamTracerLine.Color = Value
end, "CameraTracerColor")

local CamHighlightTog = CameraAimbotSec:AddToggle("Highlight", false, function(Value)
	CameraAimbot.Highlight = Value
end, "CameraHighlight")

CamHighlightTog:AddColorpicker(Color3.fromRGB(170, 120, 210), function(Value)
	CamHighlight.FillColor = Value
end, "CameraHighlightFillColor")

CamHighlightTog:AddColorpicker(Color3.fromRGB(90, 65, 110), function(Value)
	CamHighlight.OutlineColor = Value
end, "CameraHighlightOutlineColor")

if game["PlaceId"] == 9825515356 then
	CameraAimbotSec:AddDropdown("Aim Method", {"Camera", "Mouse"}, "Mouse", false, function(Value)
		CameraAimbot.AimMethod = Value
	end, "CameraAimMethod")
else
	CameraAimbotSec:AddDropdown("Aim Method", {"Camera", "Mouse"}, "Camera", false, function(Value)
		CameraAimbot.AimMethod = Value
	end, "CameraAimMethod")
end

CameraAimbotSec:AddToggle("Smoothing", false, function(Value)
	CameraAimbot.Smoothing = Value
end, "CameraSmoothing")

CameraAimbotSec:AddTextbox("Smoothness", nil, function(Value)
	CameraAimbot.Smoothness = Value
end, "CameraSmoothness")

CameraAimbotSec:AddToggle("Use FOV", false, function(Value)
	CameraAimbot.UseFov = Value
end, "CameraUseFOV")

local CamFovTog = CameraAimbotSec:AddToggle("FOV Visible", false, function(Value)
	CamFovCircle.Visible = Value
end, "CameraFOVVisible")

CamFovTog:AddColorpicker(Color3.fromRGB(80, 15, 180), function(Value)
	CamFovCircle.Color = Value
end, "CameraFOVColor")

CameraAimbotSec:AddToggle("FOV Filled", false, function(Value)
	CamFovCircle.Filled = Value
end, "CameraFOVFilled")

CameraAimbotSec:AddSlider("FOV Transparency", 0, 0.75, 1, 100, function(Value)
	CamFovCircle.Transparency = Value
end, "CameraFOVTransparency")

CameraAimbotSec:AddSlider("FOV Size", 5, 80, 500, 1, function(Value)
	CamFovCircle.Radius = Value * 2
end, "CameraFOVSize")

-- MISC

-- Utilities

UtilitiesSec:AddToggle("No Jump Cooldown", false, function(Value)
	Utilities.NoJumpCooldown = Value
end, "NoJumpCooldown")

UtilitiesSec:AddToggle("No Slowdown", false, function(Value)
	Utilities.NoSlowdown = Value
end, "NoSlowdown")

UtilitiesSec:AddToggle("Auto Stomp", false, function(Value)
	Utilities.AutoStomp = Value
end, "AutoStomp")

UtilitiesSec:AddToggle("Auto Reload", false, function(Value)
	Utilities.AutoReload = Value
end, "AutoReload")

local TrashTalkTog = UtilitiesSec:AddToggle("Trash Talk", false, function(Value)
	if Value then
		local TrashTalkWords = {".gg/wDngb2mv4H", "How to aim pls help", "my lil brother was playing AND HE BEAT U LOLOL :rofl:", "Mobile player beat u lol", "420 ping and u got SLAMMED", "ur bad", "seed", "im not locking ur just bad", "clown", "sonned", "LOLL UR BAD", "dont even try..", "ez", "gg = get good", "my grandmas better than u :skull:", "hop off kid", "bro cannot aim", "u got absolutely DOGGED on", "i run this server son", "what is bro doing :skull:", "no way", "my cat walked across my keyboard and beat u LOLL"}

		ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(TrashTalkWords[math.random(#TrashTalkWords)], "All")
	end
end, "TrashTalk")

TrashTalkTog:AddKeybind(nil, "TrashTalkKeybind")

-- Movement

local SpeedTog = MovementSec:AddToggle("Speed", false, function(Value)
	Movement.SpeedEnabled = Value
end, "Speed")

SpeedTog:AddKeybind(nil, "SpeedKeybind")

MovementSec:AddSlider("Speed Amount", 1, 1, 5000, 1, function(Value)
	Movement.SpeedAmount = Value / 1000
end, "SpeedAmount")

MovementSec:AddToggle("Auto Jump", false, function(Value)
	Movement.AutoJump = Value
end, "AutoJump")

MovementSec:AddToggle("Bunny Hop", false, function(Value)
	Movement.BunnyHop = Value
end, "BunnyHop")

MovementSec:AddSlider("Hop Amount", 1, 1, 50, 1, function(Value)
	Movement.HopAmount = Value / 100
end, "HopAmount")

local FlightTog = MovementSec:AddToggle("Flight", false, function(Value)
	Movement.FlightEnabled = Value
end, "Flight")

FlightTog:AddKeybind(nil, "FlightKeybind")

MovementSec:AddSlider("Flight Amount", 1, 1, 5000, 1, function(Value)
	Movement.FlightAmount = Value / 20
end, "FlightAmount")

-- Self Dot

local SelfDotTog = SelfDotSec:AddToggle("Enabled", false, function(Value)
	SelfDot.Enabled = Value
end, "SelfDotEnabled")

SelfDotTog:AddColorpicker(Color3.fromRGB(170, 120, 210), function(Value)
	SelfDotCircle.Color = Value
	SelfTracerLine.Color = Value
end, "SelfDotCircleLineColor")

SelfDotSec:AddToggle("Tracer", false, function(Value)
	SelfDot.Tracer = Value
end, "SelfDotTracer")

SelfDotSec:AddToggle("Random Hit Part", false, function(Value)
	SelfDot.RandomHitPart = Value
end, "SelfDotRandomHitPart")

SelfDotSec:AddSlider("Prediction", 1, 1, 5, 2, function(Value)
	SelfDot.Prediction = Value / 20
end, "SelfDotPrediction")

SelfDotSec:AddDropdown("Hit Part", {"Head", "Torso"}, "Torso", false, function(Value)
	if Value == "Head" then
		SelfDot.HitPart = "Head"
		SelfDot.RealHitPart = "Head"
	else
		SelfDot.HitPart = "HumanoidRootPart"
		SelfDot.RealHitPart = "HumanoidRootPart"
	end
end, "SelfDotHitPart")

-- Anti Lock

local AntiLockTog = AntiLockSec:AddToggle("Enabled", false, function(Value)
	AntiLock.Enabled = Value
end, "AntiLockEnabled")

AntiLockTog:AddKeybind(nil, "AntiLockKeybind")

AntiLockSec:AddDropdown("Mode", {"Custom", "Prediction Changer", "Prediction Disabler", "Up", "Down", "Prediction Tripler", "Prediction Reverser", "LookVector", "AirOrthodox", "Prediction Multiplier", "Spinbot Desync"}, "Custom", false, function(Value)
	AntiLock.Mode = Value
end, "AntiLockMode")

AntiLockSec:AddLabel("Custom")

AntiLockSec:AddSlider("Custom X", -10000, 10000, 10000, 1, function(Value)
	AntiLock.CustomX = Value
end, "AntiLockCustomX")

AntiLockSec:AddSlider("Custom Y", -10000, 10000, 10000, 1, function(Value)
	AntiLock.CustomY = Value
end, "AntiLockCustomY")

AntiLockSec:AddSlider("Custom Z", -10000, 10000, 10000, 1, function(Value)
	AntiLock.CustomZ = Value
end, "AntiLockCustomZ")

AntiLockSec:AddLabel("Prediction Reverser")

AntiLockSec:AddSlider("Reverse Amount", 0.5, 3.5, 10, 2, function(Value)
	AntiLock.PredReverseAmt = Value
end, "AntiLockReverseAmount")

AntiLockSec:AddLabel("LookVector")

AntiLockSec:AddSlider("LookVector Amount", -10000, 10000, 10000, 1, function(Value)
	AntiLock.LookVecAmt = Value
end, "AntiLockLookVectorAmount")

AntiLockSec:AddLabel("Prediction Changer")

AntiLockSec:AddSlider("Prediction Amount", -20, 5, 20, 2, function(Value)
	AntiLock.PredChangeAmt = Value
end, "AntiLockPredictionAmount")

AntiLockSec:AddLabel("Spinbot Desync")

AntiLockSec:AddDropdown("Desync Velocity", {"Default", "Sky", "Underground"}, "Default", false, function(Value)
	if Value == "Default" then
		AntiLock.DesyncVel = Vector3.new(9e9, 9e9, 9e9)
	elseif Value == "Sky" then
		AntiLock.DesyncVel = Vector3.new(15, 9e9, 15)
	elseif Value == "Underground" then
		AntiLock.DesyncVel = Vector3.new(15, -9e9, 15)
	end
end, "AntiLockDesyncVelocity")

AntiLockSec:AddSlider("Desync Angles", -50, 0.5, 50, 2, function(Value)
	AntiLock.DesyncAngles = Value
end, "AntiLockDesyncAngles")

-- Code

if setfpscap then
	setfpscap(0)
end

if CorePackages.Packages then
	CorePackages.Packages:Destroy()
end

if syn then
	syn.protect_gui(TargStats)
end

-- Heartbeat Functions

RunService.Heartbeat:Connect(function()
	if Movement.FlightEnabled and not AntiLock.Enabled then
		local FlyVelocity = Vector3.new(0, 0.9, 0)

		if not UserInputService:GetFocusedTextBox() then
			if UserInputService:IsKeyDown(Enum.KeyCode.W) then
				FlyVelocity = FlyVelocity + (Workspace.CurrentCamera.CoordinateFrame.lookVector * Movement.FlightAmount)
			end

			if UserInputService:IsKeyDown(Enum.KeyCode.A) then
				FlyVelocity = FlyVelocity + (Workspace.CurrentCamera.CoordinateFrame.rightVector * -Movement.FlightAmount)
			end

			if UserInputService:IsKeyDown(Enum.KeyCode.S) then
				FlyVelocity = FlyVelocity + (Workspace.CurrentCamera.CoordinateFrame.lookVector * -Movement.FlightAmount)
			end

			if UserInputService:IsKeyDown(Enum.KeyCode.D) then
				FlyVelocity = FlyVelocity + (Workspace.CurrentCamera.CoordinateFrame.rightVector * Movement.FlightAmount)
			end
		end

		LocalPlr.Character.HumanoidRootPart.Velocity = FlyVelocity
		LocalPlr.Character.Humanoid:ChangeState("Freefall")
	end
end)

RunService.Heartbeat:Connect(function()
	local Position, OnScreen = Workspace.CurrentCamera:WorldToViewportPoint(LocalPlr.Character[SelfDot.RealHitPart].Position + (LocalPlr.Character[SelfDot.RealHitPart].AssemblyLinearVelocity * SelfDot.Prediction))

	if SelfDot.Enabled and OnScreen then
		SelfDotCircle.Visible = true
		SelfDotCircle.Position = Vector2.new(Position.X, Position.Y)
	else
		SelfDotCircle.Visible = false
	end
end)

RunService.Heartbeat:Connect(function()
	local Position, OnScreen = Workspace.CurrentCamera:WorldToViewportPoint(LocalPlr.Character[SelfDot.RealHitPart].Position + (LocalPlr.Character[SelfDot.RealHitPart].AssemblyLinearVelocity * SelfDot.Prediction))

	if SelfDot.Tracer and OnScreen then
		SelfTracerLine.Visible = true
		SelfTracerLine.From = UserInputService:GetMouseLocation()
		SelfTracerLine.To = Vector2.new(Position.X, Position.Y)
	else
		SelfTracerLine.Visible = false
	end
end)

RunService.Heartbeat:Connect(function()
	if AntiLock.Enabled then
		local RootPart = LocalPlr.Character.HumanoidRootPart
		local Velocity, AssemblyVelocity, Cframe = RootPart.Velocity, RootPart.AssemblyLinearVelocity, RootPart.CFrame

		if AntiLock.Mode == "Custom" then
			RootPart.Velocity = Vector3.new(AntiLock.CustomX, AntiLock.CustomY, AntiLock.CustomZ)
			RunService.RenderStepped:Wait()
			RootPart.Velocity = Velocity

		elseif AntiLock.Mode == "Prediction Changer" then
			RootPart.Velocity = Velocity * AntiLock.PredChangeAmt
			RunService.RenderStepped:Wait()
			RootPart.Velocity = Velocity

		elseif AntiLock.Mode == "Prediction Disabler" then
			RootPart.Velocity = Velocity * 0
			RunService.RenderStepped:Wait()
			RootPart.Velocity = Velocity

		elseif AntiLock.Mode == "Up" then
			RootPart.Velocity = Vector3.new(Velocity.X, 9e9, Velocity.Z)
			RunService.RenderStepped:Wait()
			RootPart.Velocity = Velocity

		elseif AntiLock.Mode == "Down" then
			RootPart.Velocity = Vector3.new(Velocity.X, -9e9, Velocity.Z)
			RunService.RenderStepped:Wait()
			RootPart.Velocity = Velocity

		elseif AntiLock.Mode == "Prediction Tripler" then
			RootPart.Velocity = Velocity * 3
			RunService.RenderStepped:Wait()
			RootPart.Velocity = Velocity

		elseif AntiLock.Mode == "Prediction Reverser" then
			RootPart.CFrame = Cframe - LocalPlr.Character.Humanoid.MoveDirection * AntiLock.PredReverseAmt / 10

		elseif AntiLock.Mode == "LookVector" then
			RootPart.Velocity = Cframe.lookVector * AntiLock.LookVecAmt
			RunService.RenderStepped:Wait()
			RootPart.Velocity = Velocity

		elseif AntiLock.Mode == "AirOrthodox" then
			RootPart.Velocity = Vector3.new(777, 777, 777)
			RunService.RenderStepped:Wait()
			RootPart.Velocity = Velocity

		elseif AntiLock.Mode == "Prediction Multiplier" then
			RootPart.Velocity = Velocity * 7
			RunService.RenderStepped:Wait()
			RootPart.Velocity = Velocity

		elseif AntiLock.Mode == "Spinbot Desync" then
			RootPart.AssemblyLinearVelocity = AntiLock.DesyncVel
			RootPart.CFrame = Cframe * CFrame.Angles(0, math.rad(AntiLock.DesyncAngles), 0)
			RunService.RenderStepped:Wait()
			RootPart.AssemblyLinearVelocity = AssemblyVelocity
		end
	end
end)

-- Stepped Functions

RunService.Stepped:Connect(function()
	if TargetAimbot.Enabled and TargBindEnabled and TargetPlr.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
		TargetAimbot.RealJumpOffset = TargetAimbot.JumpOffset
	else
		TargetAimbot.RealJumpOffset = 0
	end
end)

RunService.Stepped:Connect(function()
	if TargetAimbot.Enabled then
		TargetAimbot.RealHitPart = TargetAimbot.HitParts[math.random(#TargetAimbot.HitParts)]
		wait(0.6)
	end
end)

RunService.Stepped:Connect(function()
	if TargetAimbot.Enabled and TargBindEnabled and TargetAimbot.AutoPred then
		local Ping = math.round(Stats.Network.ServerStatsItem["Data Ping"]:GetValue())

		if Ping < 10 then
			TargetAimbot.RealPrediction = 0.097

		elseif Ping < 20 then
			TargetAimbot.RealPrediction = 0.112

		elseif Ping < 30 then
			TargetAimbot.RealPrediction = 0.115

		elseif Ping < 40 then
			TargetAimbot.RealPrediction = 0.125

		elseif Ping < 50 then
			TargetAimbot.RealPrediction = 0.122

		elseif Ping < 60 then
			TargetAimbot.RealPrediction = 0.123

		elseif Ping < 70 then
			TargetAimbot.RealPrediction = 0.132

		elseif Ping < 80 then
			TargetAimbot.RealPrediction = 0.134

		elseif Ping < 90 then
			TargetAimbot.RealPrediction = 0.137

		elseif Ping < 100 then
			TargetAimbot.RealPrediction = 0.146

		elseif Ping < 110 then
			TargetAimbot.RealPrediction = 0.148

		elseif Ping < 120 then
			TargetAimbot.RealPrediction = 0.144

		elseif Ping < 130 then
			TargetAimbot.RealPrediction = 0.157

		elseif Ping < 140 then
			TargetAimbot.RealPrediction = 0.122

		elseif Ping < 150 then
			TargetAimbot.RealPrediction = 0.152

		elseif Ping < 160 then
			TargetAimbot.RealPrediction = 0.163

		elseif Ping < 170 then
			TargetAimbot.RealPrediction = 0.192

		elseif Ping < 180 then
			TargetAimbot.RealPrediction = 0.193

		elseif Ping < 190 then
			TargetAimbot.RealPrediction = 0.167

		elseif Ping < 200 then
			TargetAimbot.RealPrediction = 0.166

		elseif Ping < 210 then
			TargetAimbot.RealPrediction = 0.168

		elseif Ping < 220 then
			TargetAimbot.RealPrediction = 0.166

		elseif Ping < 230 then
			TargetAimbot.RealPrediction = 0.157

		elseif Ping < 240 then
			TargetAimbot.RealPrediction = 0.168

		elseif Ping < 250 then
			TargetAimbot.RealPrediction = 0.165

		elseif Ping < 260 then
			TargetAimbot.RealPrediction = 0.176

		elseif Ping < 270 then
			TargetAimbot.RealPrediction = 0.177

		elseif Ping < 280 then
			TargetAimbot.RealPrediction = 0.181

		elseif Ping < 290 then
			TargetAimbot.RealPrediction = 0.182

		elseif Ping < 300 then
			TargetAimbot.RealPrediction = 0.185
		end
	else
		TargetAimbot.RealPrediction = TargetAimbot.Prediction
	end
end)

RunService.Stepped:Connect(function()
	if TargetAimbot.Enabled and TargBindEnabled and TargetAimbot.LookAt then
		LocalPlr.Character.HumanoidRootPart.CFrame = CFrame.new(LocalPlr.Character.HumanoidRootPart.Position, Vector3.new(TargetPlr.Character.HumanoidRootPart.Position.X, LocalPlr.Character.HumanoidRootPart.Position.Y, TargetPlr.Character.HumanoidRootPart.Position.Z))
	end
end)

RunService.Stepped:Connect(function()
	if TargetAimbot.Enabled and TargBindEnabled and TargetStrafe.Enabled then
		StrafeSpeed = StrafeSpeed + TargetStrafe.Speed

		LocalPlr.Character.HumanoidRootPart.CFrame = TargetPlr.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(StrafeSpeed), 0) * CFrame.new(0, TargetStrafe.Height, TargetStrafe.Distance)
	end
end)

RunService.Stepped:Connect(function()
	if CameraAimbot.Enabled and CamBindEnabled and CamlockPlr.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
		CameraAimbot.RealJumpOffset = CameraAimbot.JumpOffset
	else
		CameraAimbot.RealJumpOffset = 0
	end
end)

RunService.Stepped:Connect(function()
	local AirCheckType

	if CameraAimbot.AirCheckType == "Once in Air" then
		AirCheckType = CamlockPlr.Character.Humanoid.FloorMaterial == Enum.Material.Air
	else
		AirCheckType = CamlockPlr.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall
	end

	if CameraAimbot.Enabled and CamBindEnabled and CameraAimbot.UseAirPart and AirCheckType then
		CameraAimbot.RealHitPart = CameraAimbot.AirPart
	else
		CameraAimbot.RealHitPart = CameraAimbot.HitPart
	end
end)

RunService.Stepped:Connect(function()
	if CameraAimbot.Enabled and CamBindEnabled and CameraAimbot.AutoPred then
		local Ping = math.round(Stats.Network.ServerStatsItem["Data Ping"]:GetValue())

		if Ping < 10 then
			CameraAimbot.RealPrediction = 0.097

		elseif Ping < 20 then
			CameraAimbot.RealPrediction = 0.112

		elseif Ping < 30 then
			CameraAimbot.RealPrediction = 0.115

		elseif Ping < 40 then
			CameraAimbot.RealPrediction = 0.125

		elseif Ping < 50 then
			CameraAimbot.RealPrediction = 0.122

		elseif Ping < 60 then
			CameraAimbot.RealPrediction = 0.123

		elseif Ping < 70 then
			CameraAimbot.RealPrediction = 0.132

		elseif Ping < 80 then
			CameraAimbot.RealPrediction = 0.134

		elseif Ping < 90 then
			CameraAimbot.RealPrediction = 0.137

		elseif Ping < 100 then
			CameraAimbot.RealPrediction = 0.146

		elseif Ping < 110 then
			CameraAimbot.RealPrediction = 0.148

		elseif Ping < 120 then
			CameraAimbot.RealPrediction = 0.144

		elseif Ping < 130 then
			CameraAimbot.RealPrediction = 0.157

		elseif Ping < 140 then
			CameraAimbot.RealPrediction = 0.122

		elseif Ping < 150 then
			CameraAimbot.RealPrediction = 0.152

		elseif Ping < 160 then
			CameraAimbot.RealPrediction = 0.163

		elseif Ping < 170 then
			CameraAimbot.RealPrediction = 0.192

		elseif Ping < 180 then
			CameraAimbot.RealPrediction = 0.193

		elseif Ping < 190 then
			CameraAimbot.RealPrediction = 0.167

		elseif Ping < 200 then
			CameraAimbot.RealPrediction = 0.166

		elseif Ping < 210 then
			CameraAimbot.RealPrediction = 0.168

		elseif Ping < 220 then
			CameraAimbot.RealPrediction = 0.166

		elseif Ping < 230 then
			CameraAimbot.RealPrediction = 0.157

		elseif Ping < 240 then
			CameraAimbot.RealPrediction = 0.168

		elseif Ping < 250 then
			CameraAimbot.RealPrediction = 0.165

		elseif Ping < 260 then
			CameraAimbot.RealPrediction = 0.176

		elseif Ping < 270 then
			CameraAimbot.RealPrediction = 0.177

		elseif Ping < 280 then
			CameraAimbot.RealPrediction = 0.181

		elseif Ping < 290 then
			CameraAimbot.RealPrediction = 0.182

		elseif Ping < 300 then
			CameraAimbot.RealPrediction = 0.185
		end
	else
		CameraAimbot.RealPrediction = CameraAimbot.Prediction
	end
end)

RunService.Stepped:Connect(function()
	LocalPlr.Character.Humanoid.UseJumpPower = not Utilities.NoJumpCooldown
end)

RunService.Stepped:Connect(function()
	if Utilities.NoSlowdown then
		local Slowdowns = LocalPlr.Character.BodyEffects.Movement:FindFirstChild("NoJumping") or LocalPlr.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk") or LocalPlr.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed")

		if Slowdowns then
			Slowdowns:Destroy()
		end

		if LocalPlr.Character.BodyEffects.Reload.Value then
			LocalPlr.Character.BodyEffects.Reload.Value = false
		end

		if LocalPlr.Character.BodyEffects.Reloading.Value then
			LocalPlr.Character.BodyEffects.Reloading.Value = false
		end
	end
end)

RunService.Stepped:Connect(function()
	if Utilities.AutoStomp then
		ReplicatedStorage.MainEvent:FireServer("Stomp")
	end
end)

RunService.Stepped:Connect(function()
	if Utilities.AutoReload and LocalPlr.Character:FindFirstChildWhichIsA("Tool").Ammo.Value <= 0 then
		ReplicatedStorage.MainEvent:FireServer("Reload", LocalPlr.Character:FindFirstChildWhichIsA("Tool"))
	end
end)

RunService.Stepped:Connect(function()
	if Movement.SpeedEnabled then
		LocalPlr.Character.HumanoidRootPart.CFrame = LocalPlr.Character.HumanoidRootPart.CFrame + LocalPlr.Character.Humanoid.MoveDirection * Movement.SpeedAmount
	end
end)

RunService.Stepped:Connect(function()
	if Movement.AutoJump and LocalPlr.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall and LocalPlr.Character.Humanoid.MoveDirection.Magnitude > 0 then
		LocalPlr.Character.Humanoid:ChangeState("Jumping")
	end
end)

RunService.Stepped:Connect(function()
	if Movement.BunnyHop and LocalPlr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
		LocalPlr.Character.HumanoidRootPart.CFrame = LocalPlr.Character.HumanoidRootPart.CFrame + LocalPlr.Character.Humanoid.MoveDirection * Movement.HopAmount
	end
end)

-- RenderStepped Functions

RunService.RenderStepped:Connect(function()
	if TargetAimbot.Enabled and TargBindEnabled and TargetAimbot.KoCheck and (TargetPlr.Character.Humanoid.Health <= 2.25 or LocalPlr.Character.Humanoid.Health <= 2.25) then
		TargBindEnabled = false
	end
end)

RunService.RenderStepped:Connect(function()
	if TargetAimbot.Enabled and TargBindEnabled and TargetAimbot.ViewAt then
		Workspace.CurrentCamera.CameraSubject = TargetPlr.Character.Humanoid
	else
		Workspace.CurrentCamera.CameraSubject = LocalPlr.Character.Humanoid
	end
end)

RunService.RenderStepped:Connect(function()
	local Position, OnScreen

	if TargetAimbot.Resolver then
		Position, OnScreen = Workspace.CurrentCamera:WorldToViewportPoint(TargetPlr.Character[TargetAimbot.RealHitPart].Position + Vector3.new(0, TargetAimbot.RealJumpOffset, 0) + (TargetPlr.Character.Humanoid.MoveDirection * TargetAimbot.RealPrediction * TargetPlr.Character.Humanoid.WalkSpeed))
	else
		Position, OnScreen = Workspace.CurrentCamera:WorldToViewportPoint(TargetPlr.Character[TargetAimbot.RealHitPart].Position + Vector3.new(0, TargetAimbot.RealJumpOffset, 0) + (TargetPlr.Character[TargetAimbot.RealHitPart].Velocity * TargetAimbot.RealPrediction))
	end

	if TargetAimbot.Enabled and TargBindEnabled and TargetAimbot.Dot then
		if OnScreen then
			TargDotCircle.Visible = true
			TargDotCircle.Position = Vector2.new(Position.X, Position.Y)
		else
			TargDotCircle.Visible = false
		end
	else
		if TargetAimbot.Enabled and not TargBindEnabled and TargetAimbot.Dot and TargetAimbot.DotOnCursor then
			TargDotCircle.Visible = true
			TargDotCircle.Position = UserInputService:GetMouseLocation()
		else
			TargDotCircle.Visible = false
		end
	end
end)

RunService.RenderStepped:Connect(function()
	local Position, OnScreen

	if TargetAimbot.Resolver then
		Position, OnScreen = Workspace.CurrentCamera:WorldToViewportPoint(TargetPlr.Character[TargetAimbot.RealHitPart].Position + Vector3.new(0, TargetAimbot.RealJumpOffset, 0) + (TargetPlr.Character.Humanoid.MoveDirection * TargetAimbot.RealPrediction * TargetPlr.Character.Humanoid.WalkSpeed))
	else
		Position, OnScreen = Workspace.CurrentCamera:WorldToViewportPoint(TargetPlr.Character[TargetAimbot.RealHitPart].Position + Vector3.new(0, TargetAimbot.RealJumpOffset, 0) + (TargetPlr.Character[TargetAimbot.RealHitPart].Velocity * TargetAimbot.RealPrediction))
	end

	if TargetAimbot.Enabled and TargBindEnabled and TargetAimbot.Tracer and OnScreen then
		TargTracerLine.Visible = true
		TargTracerLine.From = UserInputService:GetMouseLocation()
		TargTracerLine.To = Vector2.new(Position.X, Position.Y)
	else
		TargTracerLine.Visible = false
	end
end)

RunService.RenderStepped:Connect(function()
	if TargetAimbot.Enabled and TargBindEnabled and TargetAimbot.Highlight then
		TargHighlight.Parent = TargetPlr.Character
	else
		TargHighlight.Parent = CoreGui
	end
end)

RunService.RenderStepped:Connect(function()
	if TargetAimbot.Enabled and TargBindEnabled and TargetAimbot.Stats then
		StatsFrame.Visible = true
		StatsName.Text = TargetPlr.DisplayName .. " [" .. TargetPlr.Name .. "]"
		StatsPicture.Image = "rbxthumb://type=AvatarHeadShot&id=" .. TargetPlr.UserId .. "&w=420&h=420"
		StatsHealthBar:TweenSize(UDim2.new(TargetPlr.Character.Humanoid.Health / TargetPlr.Character.Humanoid.MaxHealth, 0, 1, 0), "In", "Linear", 0.25)
	else
		StatsFrame.Visible = false
	end
end)

RunService.RenderStepped:Connect(function()
	TargFovCircle.Position = UserInputService:GetMouseLocation()
end)

RunService.RenderStepped:Connect(function()
	if CameraAimbot.Enabled and CamBindEnabled then
		if CameraAimbot.AimMethod == "Camera" then
			if CameraAimbot.Resolver then
				if CameraAimbot.Smoothing then
					Workspace.CurrentCamera.CFrame = Workspace.CurrentCamera.CFrame:Lerp(CFrame.new(Workspace.CurrentCamera.CFrame.p, CamlockPlr.Character[CameraAimbot.RealHitPart].Position + Vector3.new(0, CameraAimbot.RealJumpOffset, 0) + (CamlockPlr.Character.Humanoid.MoveDirection * CameraAimbot.RealPrediction * CamlockPlr.Character.Humanoid.WalkSpeed)), CameraAimbot.Smoothness, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
				else
					Workspace.CurrentCamera.CFrame = CFrame.new(Workspace.CurrentCamera.CFrame.p, CamlockPlr.Character[CameraAimbot.RealHitPart].Position + Vector3.new(0, CameraAimbot.RealJumpOffset, 0) + (CamlockPlr.Character.Humanoid.MoveDirection * CameraAimbot.RealPrediction * CamlockPlr.Character.Humanoid.WalkSpeed))
				end
			else
				if CameraAimbot.Smoothing then
					Workspace.CurrentCamera.CFrame = Workspace.CurrentCamera.CFrame:Lerp(CFrame.new(Workspace.CurrentCamera.CFrame.p, CamlockPlr.Character[CameraAimbot.RealHitPart].Position + Vector3.new(0, CameraAimbot.RealJumpOffset, 0) + (CamlockPlr.Character[CameraAimbot.RealHitPart].Velocity * CameraAimbot.RealPrediction)), CameraAimbot.Smoothness, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
				else
					Workspace.CurrentCamera.CFrame = CFrame.new(Workspace.CurrentCamera.CFrame.p, CamlockPlr.Character[CameraAimbot.RealHitPart].Position + Vector3.new(0, CameraAimbot.RealJumpOffset, 0) + (CamlockPlr.Character[CameraAimbot.RealHitPart].Velocity * CameraAimbot.RealPrediction))
				end
			end
		else
			local Position

			if CameraAimbot.Resolver then
				Position = Workspace.CurrentCamera:WorldToViewportPoint(CamlockPlr.Character[CameraAimbot.RealHitPart].Position + Vector3.new(0, CameraAimbot.RealJumpOffset, 0) + (CamlockPlr.Character.Humanoid.MoveDirection * CameraAimbot.RealPrediction * CamlockPlr.Character.Humanoid.WalkSpeed))
			else
				Position = Workspace.CurrentCamera:WorldToViewportPoint(CamlockPlr.Character[CameraAimbot.RealHitPart].Position + Vector3.new(0, CameraAimbot.RealJumpOffset, 0) + (CamlockPlr.Character[CameraAimbot.RealHitPart].Velocity * CameraAimbot.RealPrediction))
			end

			if CameraAimbot.Smoothing then
				mousemoverel((Position.X - UserInputService:GetMouseLocation().X) * CameraAimbot.Smoothness, (Position.Y - UserInputService:GetMouseLocation().Y) * CameraAimbot.Smoothness)
			else
				mousemoverel(Position.X - UserInputService:GetMouseLocation().X, Position.Y - UserInputService:GetMouseLocation().Y)
			end
		end
	end
end)

RunService.RenderStepped:Connect(function()
	if CameraAimbot.Enabled and CamBindEnabled and CameraAimbot.KoCheck and (CamlockPlr.Character.Humanoid.Health <= 2.25 or LocalPlr.Character.Humanoid.Health <= 2.25) then
		CamBindEnabled = false
	end
end)

RunService.RenderStepped:Connect(function()
	local Position, OnScreen

	if CameraAimbot.Resolver then
		Position, OnScreen = Workspace.CurrentCamera:WorldToViewportPoint(CamlockPlr.Character[CameraAimbot.RealHitPart].Position + Vector3.new(0, CameraAimbot.RealJumpOffset, 0) + (CamlockPlr.Character.Humanoid.MoveDirection * CameraAimbot.RealPrediction * CamlockPlr.Character.Humanoid.WalkSpeed))
	else
		Position, OnScreen = Workspace.CurrentCamera:WorldToViewportPoint(CamlockPlr.Character[CameraAimbot.RealHitPart].Position + Vector3.new(0, CameraAimbot.RealJumpOffset, 0) + (CamlockPlr.Character[CameraAimbot.RealHitPart].Velocity * CameraAimbot.RealPrediction))
	end

	if CameraAimbot.Enabled and CamBindEnabled and CameraAimbot.Tracer and OnScreen then
		CamTracerLine.Visible = true
		CamTracerLine.From = UserInputService:GetMouseLocation()
		CamTracerLine.To = Vector2.new(Position.X, Position.Y)
	else
		CamTracerLine.Visible = false
	end
end)

RunService.RenderStepped:Connect(function()
	if CameraAimbot.Enabled and CamBindEnabled and CameraAimbot.Highlight then
		CamHighlight.Parent = CamlockPlr.Character
	else
		CamHighlight.Parent = CoreGui
	end
end)

RunService.RenderStepped:Connect(function()
	CamFovCircle.Position = UserInputService:GetMouseLocation()
end)

RunService.RenderStepped:Connect(function()
	if (SelfDot.Enabled or SelfDot.Tracer) and SelfDot.RandomHitPart then
		local RandomHitParts = {"Head", "HumanoidRootPart", "UpperTorso", "LowerTorso", "RightUpperArm", "LeftUpperArm", "RightLowerArm", "LeftLowerArm", "RightUpperLeg", "LeftUpperLeg", "RightLowerLeg", "LeftLowerLeg"}

		SelfDot.RealHitPart = RandomHitParts[math.random(#RandomHitParts)]
		wait(0.6)
	else
		SelfDot.RealHitPart = SelfDot.HitPart
	end
end)

-- InputBegan Functions

UserInputService.InputBegan:Connect(function(Key)
	if TargetAimbot.Enabled and Key.KeyCode == TargetAimbot.Keybind and not UserInputService:GetFocusedTextBox() then
		local Position, OnScreen = Workspace.CurrentCamera:WorldToViewportPoint(ClosestPlr(TargetAimbot.RealHitPart, TargetAimbot.UseFov, TargFovCircle).Character[TargetAimbot.RealHitPart].Position)

		if TargBindEnabled then
			TargBindEnabled = false

			if TargetAimbot.Notify then
				StarterGui:SetCore("SendNotification", {
					Title = "Azure Modded [Actyrn#7104]", 
					Text = "Untargeting: " .. TargetPlr.DisplayName, 
					Duration = 3
				})
			end
		else
			if OnScreen then
				TargBindEnabled = true
				TargetPlr = ClosestPlr(TargetAimbot.RealHitPart, TargetAimbot.UseFov, TargFovCircle)

				if TargetAimbot.Notify then
					StarterGui:SetCore("SendNotification", {
						Title = "Azure Modded [Actyrn#7104]", 
						Text = "Targeting: " .. TargetPlr.DisplayName, 
						Duration = 3
					})
				end
			end
		end
	end
end)

UserInputService.InputBegan:Connect(function(Key)
	if CameraAimbot.Enabled and Key.KeyCode == CameraAimbot.Keybind and not UserInputService:GetFocusedTextBox() then
		local Position, OnScreen = Workspace.CurrentCamera:WorldToViewportPoint(ClosestPlr(CameraAimbot.RealHitPart, CameraAimbot.UseFov, CamFovCircle).Character[CameraAimbot.RealHitPart].Position)

		if CamBindEnabled then
			CamBindEnabled = false

			if CameraAimbot.Notify then
				StarterGui:SetCore("SendNotification", {
					Title = "Azure Modded [Actyrn#7104]", 
					Text = "Untargeting: " .. CamlockPlr.DisplayName, 
					Duration = 3
				})
			end
		else
			if OnScreen then
				CamBindEnabled = true
				CamlockPlr = ClosestPlr(CameraAimbot.RealHitPart, CameraAimbot.UseFov, CamFovCircle)

				if CameraAimbot.Notify then
					StarterGui:SetCore("SendNotification", {
						Title = "Azure Modded [Actyrn#7104]", 
						Text = "Targeting: " .. CamlockPlr.DisplayName, 
						Duration = 3
					})
				end
			end
		end
	end
end)

-- Hookmetamethod functions

AntiCheatNamecall = hookmetamethod(game, "__namecall", newcclosure(function(Self, ...)
	local Arguments = {...}
	local AntiCheats = {"BreathingHAMON", "TeleportDetect", "JJARC", "TakePoisonDamage", "CHECKER_1", "CHECKER", "GUI_CHECK", "OneMoreTime", "checkingSPEED", "BANREMOTE", "PERMAIDBAN", "KICKREMOTE", "BR_KICKPC", "FORCEFIELD", "Christmas_Sock", "VirusCough", "Symbiote", "Symbioted", "RequestAFKDisplay"}

	if table.find(AntiCheats, Arguments[1]) and getnamecallmethod() == "FireServer" then
		return
	end

	return AntiCheatNamecall(Self, ...)
end))

TargNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
	local Arguments = {...}
	local MousePositions = {"UpdateMousePos", "GetMousePos", "MousePos"}

	if TargetAimbot.Enabled and TargBindEnabled and table.find(MousePositions, Arguments[2]) and getnamecallmethod() == "FireServer" then
		if TargetAimbot.Resolver then
			Arguments[3] = TargetPlr.Character[TargetAimbot.RealHitPart].Position + Vector3.new(0, TargetAimbot.RealJumpOffset, 0) + (TargetPlr.Character.Humanoid.MoveDirection * TargetAimbot.RealPrediction * TargetPlr.Character.Humanoid.WalkSpeed)
		else
			Arguments[3] = TargetPlr.Character[TargetAimbot.RealHitPart].Position + Vector3.new(0, TargetAimbot.RealJumpOffset, 0) + (TargetPlr.Character[TargetAimbot.RealHitPart].Velocity * TargetAimbot.RealPrediction)
		end

		return TargNamecall(unpack(Arguments))
	end

	return TargNamecall(...)
end))