local PilferingPiratesGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("ScrollingFrame")
local ClassicRedShipButton = Instance.new("TextButton")
local MainLabel = Instance.new("TextLabel")
local ClassicModeLabel = Instance.new("TextLabel")
local ClassicBlueShipButton = Instance.new("TextButton")
local ClassicGreenShipButton = Instance.new("TextButton")
local ClassicYellowShipButton = Instance.new("TextButton")
local MegaShipLabel = Instance.new("TextLabel")
local MegaShipRedButton = Instance.new("TextButton")
local MegaShipBlueButton = Instance.new("TextButton")
local KOTHLabel = Instance.new("TextLabel")
local KOTHRedSpawnButton = Instance.new("TextButton")
local KOTHBlueSpawnButton = Instance.new("TextButton")
local KOTHGreenSpawnButton = Instance.new("TextButton")
local KOTHYellowSpawnButton = Instance.new("TextButton")
local KOTHMiddleAreaButton = Instance.new("TextButton")
local AbilitiesLabel = Instance.new("TextLabel")
local GhostSwordButton = Instance.new("TextButton")
local BoomBallButton = Instance.new("TextButton")
local TurboPaintballButton = Instance.new("TextButton")
local MiscLabel = Instance.new("TextLabel")
local DontDieToWaterButton = Instance.new("TextButton")
local TeleportToLobbyButton = Instance.new("TextButton")
 
--Properties:
 
PilferingPiratesGUI.Name = "PilferingPiratesGUI"
PilferingPiratesGUI.Parent = game.CoreGui
PilferingPiratesGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
MainFrame.Name = "MainFrame"
MainFrame.Parent = PilferingPiratesGUI
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.fromRGB(101, 150, 255)
MainFrame.Position = UDim2.new(0.787317753, 0, 0.718298674, 0)
MainFrame.Size = UDim2.new(0, 412, 0, 280)
 
ClassicRedShipButton.Name = "ClassicRedShipButton"
ClassicRedShipButton.Parent = MainFrame
ClassicRedShipButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClassicRedShipButton.Position = UDim2.new(0.0242718458, 0, 0.0652903318, 0)
ClassicRedShipButton.Size = UDim2.new(0, 69, 0, 30)
ClassicRedShipButton.Font = Enum.Font.SourceSans
ClassicRedShipButton.Text = "Red Ship"
ClassicRedShipButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ClassicRedShipButton.TextSize = 14.000
ClassicRedShipButton.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(game:GetService("Workspace").Map.Ships.Red.MegaBombDropPart.Position)		
end)
 
MainLabel.Name = "MainLabel"
MainLabel.Parent = MainFrame
MainLabel.BackgroundColor3 = Color3.fromRGB(101, 150, 255)
MainLabel.Size = UDim2.new(0, 412, 0, 49)
MainLabel.Font = Enum.Font.SourceSans
MainLabel.Text = "Pilfering Pirates GUI"
MainLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
MainLabel.TextSize = 14.000
 
ClassicModeLabel.Name = "ClassicModeLabel"
ClassicModeLabel.Parent = MainFrame
ClassicModeLabel.BackgroundColor3 = Color3.fromRGB(101, 150, 255)
ClassicModeLabel.BorderSizePixel = 0
ClassicModeLabel.Position = UDim2.new(0, 0, 0.0302921459, 0)
ClassicModeLabel.Size = UDim2.new(0, 398, 0, 39)
ClassicModeLabel.Font = Enum.Font.SourceSans
ClassicModeLabel.Text = "  Classic Mode"
ClassicModeLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
ClassicModeLabel.TextSize = 14.000
 
ClassicBlueShipButton.Name = "ClassicBlueShipButton"
ClassicBlueShipButton.Parent = MainFrame
ClassicBlueShipButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClassicBlueShipButton.Position = UDim2.new(0.266990304, 0, 0.0652903318, 0)
ClassicBlueShipButton.Size = UDim2.new(0, 69, 0, 30)
ClassicBlueShipButton.Font = Enum.Font.SourceSans
ClassicBlueShipButton.Text = "Blue Ship"
ClassicBlueShipButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ClassicBlueShipButton.TextSize = 14.000
ClassicBlueShipButton.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(game:GetService("Workspace").Map.Ships.Blue.MegaBombDropPart.Position)	
end)
 
ClassicGreenShipButton.Name = "ClassicGreenShipButton"
ClassicGreenShipButton.Parent = MainFrame
ClassicGreenShipButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClassicGreenShipButton.Position = UDim2.new(0.512135983, 0, 0.0652903318, 0)
ClassicGreenShipButton.Size = UDim2.new(0, 69, 0, 30)
ClassicGreenShipButton.Font = Enum.Font.SourceSans
ClassicGreenShipButton.Text = "Green Ship"
ClassicGreenShipButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ClassicGreenShipButton.TextSize = 14.000
ClassicGreenShipButton.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(game:GetService("Workspace").Map.Ships.Green.MegaBombDropPart.Position)	
end)
 
ClassicYellowShipButton.Name = "ClassicYellowShipButton"
ClassicYellowShipButton.Parent = MainFrame
ClassicYellowShipButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClassicYellowShipButton.Position = UDim2.new(0.75, 0, 0.0652903318, 0)
ClassicYellowShipButton.Size = UDim2.new(0, 69, 0, 30)
ClassicYellowShipButton.Font = Enum.Font.SourceSans
ClassicYellowShipButton.Text = "Yellow Ship"
ClassicYellowShipButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ClassicYellowShipButton.TextSize = 14.000
ClassicYellowShipButton.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(game:GetService("Workspace").Map.Ships.Yellow.MegaBombDropPart.Position)	
end)
 
MegaShipLabel.Name = "MegaShipLabel"
MegaShipLabel.Parent = MainFrame
MegaShipLabel.BackgroundColor3 = Color3.fromRGB(101, 150, 255)
MegaShipLabel.BorderSizePixel = 0
MegaShipLabel.Position = UDim2.new(0, 0, 0.0928695947, 0)
MegaShipLabel.Size = UDim2.new(0, 398, 0, 39)
MegaShipLabel.Font = Enum.Font.SourceSans
MegaShipLabel.Text = "Mega Ship"
MegaShipLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
MegaShipLabel.TextSize = 14.000
 
MegaShipRedButton.Name = "MegaShipRedButton"
MegaShipRedButton.Parent = MainFrame
MegaShipRedButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MegaShipRedButton.Position = UDim2.new(0.191747576, 0, 0.127867788, 0)
MegaShipRedButton.Size = UDim2.new(0, 69, 0, 30)
MegaShipRedButton.Font = Enum.Font.SourceSans
MegaShipRedButton.Text = "Red Ship"
MegaShipRedButton.TextColor3 = Color3.fromRGB(0, 0, 0)
MegaShipRedButton.TextSize = 14.000
MegaShipRedButton.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(game:GetService("Workspace").Map.Ships.Red.MegaBombDropPart.Position)	
end)
 
MegaShipBlueButton.Name = "MegaShipBlueButton"
MegaShipBlueButton.Parent = MainFrame
MegaShipBlueButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MegaShipBlueButton.Position = UDim2.new(0.599514604, 0, 0.127867788, 0)
MegaShipBlueButton.Size = UDim2.new(0, 69, 0, 30)
MegaShipBlueButton.Font = Enum.Font.SourceSans
MegaShipBlueButton.Text = "Blue Ship"
MegaShipBlueButton.TextColor3 = Color3.fromRGB(0, 0, 0)
MegaShipBlueButton.TextSize = 14.000
MegaShipBlueButton.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(game:GetService("Workspace").Map.Ships.Blue.MegaBombDropPart.Position)	
end)
 
 
KOTHLabel.Name = "KOTHLabel"
KOTHLabel.Parent = MainFrame
KOTHLabel.BackgroundColor3 = Color3.fromRGB(101, 150, 255)
KOTHLabel.BorderSizePixel = 0
KOTHLabel.Position = UDim2.new(0, 0, 0.152968735, 0)
KOTHLabel.Size = UDim2.new(0, 398, 0, 39)
KOTHLabel.Font = Enum.Font.SourceSans
KOTHLabel.Text = "King Of The Hill"
KOTHLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
KOTHLabel.TextSize = 14.000
 
KOTHRedSpawnButton.Name = "KOTHRedSpawnButton"
KOTHRedSpawnButton.Parent = MainFrame
KOTHRedSpawnButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KOTHRedSpawnButton.Position = UDim2.new(0.0242718458, 0, 0.191684395, 0)
KOTHRedSpawnButton.Size = UDim2.new(0, 69, 0, 30)
KOTHRedSpawnButton.Font = Enum.Font.SourceSans
KOTHRedSpawnButton.Text = "Red Spawn"
KOTHRedSpawnButton.TextColor3 = Color3.fromRGB(0, 0, 0)
KOTHRedSpawnButton.TextSize = 14.000
KOTHRedSpawnButton.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(-170, 263, -381)	
end)
 
KOTHBlueSpawnButton.Name = "KOTHBlueSpawnButton"
KOTHBlueSpawnButton.Parent = MainFrame
KOTHBlueSpawnButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KOTHBlueSpawnButton.Position = UDim2.new(0.266990304, 0, 0.191684395, 0)
KOTHBlueSpawnButton.Size = UDim2.new(0, 69, 0, 30)
KOTHBlueSpawnButton.Font = Enum.Font.SourceSans
KOTHBlueSpawnButton.Text = "Blue Spawn"
KOTHBlueSpawnButton.TextColor3 = Color3.fromRGB(0, 0, 0)
KOTHBlueSpawnButton.TextSize = 14.000
KOTHBlueSpawnButton.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(383, 255, 432)	
end)
 
 
KOTHGreenSpawnButton.Name = "KOTHGreenSpawnButton"
KOTHGreenSpawnButton.Parent = MainFrame
KOTHGreenSpawnButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KOTHGreenSpawnButton.Position = UDim2.new(0.512135923, 0, 0.191684395, 0)
KOTHGreenSpawnButton.Size = UDim2.new(0, 69, 0, 30)
KOTHGreenSpawnButton.Font = Enum.Font.SourceSans
KOTHGreenSpawnButton.Text = "Green Spawn"
KOTHGreenSpawnButton.TextColor3 = Color3.fromRGB(0, 0, 0)
KOTHGreenSpawnButton.TextSize = 14.000
KOTHGreenSpawnButton.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(-119, 265, 432)	
end)
 
KOTHYellowSpawnButton.Name = "KOTHYellowSpawnButton"
KOTHYellowSpawnButton.Parent = MainFrame
KOTHYellowSpawnButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KOTHYellowSpawnButton.Position = UDim2.new(0.75, 0, 0.191684395, 0)
KOTHYellowSpawnButton.Size = UDim2.new(0, 69, 0, 30)
KOTHYellowSpawnButton.Font = Enum.Font.SourceSans
KOTHYellowSpawnButton.Text = "Yellow Spawn"
KOTHYellowSpawnButton.TextColor3 = Color3.fromRGB(0, 0, 0)
KOTHYellowSpawnButton.TextSize = 14.000
KOTHYellowSpawnButton.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(609, 255, -146)	
end)
 
KOTHMiddleAreaButton.Name = "KOTHMiddleAreaButton"
KOTHMiddleAreaButton.Parent = MainFrame
KOTHMiddleAreaButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KOTHMiddleAreaButton.Position = UDim2.new(0.398058265, 0, 0.228239536, 0)
KOTHMiddleAreaButton.Size = UDim2.new(0, 69, 0, 30)
KOTHMiddleAreaButton.Font = Enum.Font.SourceSans
KOTHMiddleAreaButton.Text = "Middle Area"
KOTHMiddleAreaButton.TextColor3 = Color3.fromRGB(0, 0, 0)
KOTHMiddleAreaButton.TextSize = 14.000
KOTHMiddleAreaButton.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(107, 255, 4)	
end)
 
AbilitiesLabel.Name = "AbilitiesLabel"
AbilitiesLabel.Parent = MainFrame
AbilitiesLabel.BackgroundColor3 = Color3.fromRGB(101, 150, 255)
AbilitiesLabel.BorderSizePixel = 0
AbilitiesLabel.Position = UDim2.new(0, 0, 0.255199224, 0)
AbilitiesLabel.Size = UDim2.new(0, 398, 0, 39)
AbilitiesLabel.Font = Enum.Font.SourceSans
AbilitiesLabel.Text = "Abilities"
AbilitiesLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
AbilitiesLabel.TextSize = 14.000
 
GhostSwordButton.Name = "GhostSwordButton"
GhostSwordButton.Parent = MainFrame
GhostSwordButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GhostSwordButton.Position = UDim2.new(0.191747606, 0, 0.279044986, 0)
GhostSwordButton.Size = UDim2.new(0, 69, 0, 30)
GhostSwordButton.Font = Enum.Font.SourceSans
GhostSwordButton.Text = "Ghost Sword"
GhostSwordButton.TextColor3 = Color3.fromRGB(0, 0, 0)
GhostSwordButton.TextSize = 14.000
GhostSwordButton.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(-263, 278, -427)	
end)
 
BoomBallButton.Name = "BoomBallButton"
BoomBallButton.Parent = MainFrame
BoomBallButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BoomBallButton.Position = UDim2.new(0.599514604, 0, 0.279044986, 0)
BoomBallButton.Size = UDim2.new(0, 69, 0, 30)
BoomBallButton.Font = Enum.Font.SourceSans
BoomBallButton.Text = "Boom Ball"
BoomBallButton.TextColor3 = Color3.fromRGB(0, 0, 0)
BoomBallButton.TextSize = 14.000
BoomBallButton.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(657, 256, -124)	
end)
 
TurboPaintballButton.Name = "TurboPaintballButton"
TurboPaintballButton.Parent = MainFrame
TurboPaintballButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TurboPaintballButton.Position = UDim2.new(0.381067961, 0, 0.307627618, 0)
TurboPaintballButton.Size = UDim2.new(0, 83, 0, 30)
TurboPaintballButton.Font = Enum.Font.SourceSans
TurboPaintballButton.Text = "Turbo Paintball"
TurboPaintballButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TurboPaintballButton.TextSize = 14.000
TurboPaintballButton.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(-143, 267, 483)	
end)
 
 
MiscLabel.Name = "MiscLabel"
MiscLabel.Parent = MainFrame
MiscLabel.BackgroundColor3 = Color3.fromRGB(101, 150, 255)
MiscLabel.BorderSizePixel = 0
MiscLabel.Position = UDim2.new(0, 0, 0.338842332, 0)
MiscLabel.Size = UDim2.new(0, 398, 0, 39)
MiscLabel.Font = Enum.Font.SourceSans
MiscLabel.Text = "Misc."
MiscLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
MiscLabel.TextSize = 14.000
 
DontDieToWaterButton.Name = "DontDieToWaterButton"
DontDieToWaterButton.Parent = MainFrame
DontDieToWaterButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DontDieToWaterButton.Position = UDim2.new(0.157766998, 0, 0.362876564, 0)
DontDieToWaterButton.Size = UDim2.new(0, 92, 0, 30)
DontDieToWaterButton.Font = Enum.Font.SourceSans
DontDieToWaterButton.Text = "Dont Die To Water"
DontDieToWaterButton.TextColor3 = Color3.fromRGB(0, 0, 0)
DontDieToWaterButton.TextSize = 14.000
DontDieToWaterButton.MouseButton1Down:connect(function()
	game:GetService("Workspace").WaterParts:Destroy()
end)
 
TeleportToLobbyButton.Name = "TeleportToLobbyButton"
TeleportToLobbyButton.Parent = MainFrame
TeleportToLobbyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TeleportToLobbyButton.Position = UDim2.new(0.570388317, 0, 0.362876564, 0)
TeleportToLobbyButton.Size = UDim2.new(0, 92, 0, 30)
TeleportToLobbyButton.Font = Enum.Font.SourceSans
TeleportToLobbyButton.Text = "Teleport To Lobby"
TeleportToLobbyButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TeleportToLobbyButton.TextSize = 14.000
TeleportToLobbyButton.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(133, 702, -48)	
end)