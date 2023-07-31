-- Local Player:

local Player = game.Players.LocalPlayer

-- Instances:

local ByArteesSo = Instance.new("ScreenGui")
local General = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ByArteesSoText = Instance.new("TextLabel")
local HitboxButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local TypeSpeedBox = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local SetSpeedButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local Open = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")

--Properties:

ByArteesSo.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ByArteesSo.ResetOnSpawn = false

ByArteesSo.Name = "ByArteesSo"
ByArteesSo.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ByArteesSo.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

General.Name = "General"
General.Parent = ByArteesSo
General.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
General.BorderColor3 = Color3.fromRGB(29, 29, 29)
General.Position = UDim2.new(0.762981594, 0, 0.107537687, 0)
General.Size = UDim2.new(0, 230, 0, 736)
General.Active = true
General.Draggable = true

UICorner.Parent = General

ByArteesSoText.Name = "ByArteesSoText"
ByArteesSoText.Parent = General
ByArteesSoText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ByArteesSoText.BackgroundTransparency = 1.000
ByArteesSoText.Position = UDim2.new(0.0260869861, 0, 0.967391312, 0)
ByArteesSoText.Size = UDim2.new(0, 85, 0, 17)
ByArteesSoText.Font = Enum.Font.SourceSansBold
ByArteesSoText.Text = "By ArteesSo"
ByArteesSoText.TextColor3 = Color3.fromRGB(0, 255, 30)
ByArteesSoText.TextScaled = true
ByArteesSoText.TextSize = 14.000
ByArteesSoText.TextTransparency = 0.020
ByArteesSoText.TextWrapped = true

HitboxButton.Name = "HitboxButton"
HitboxButton.Parent = General
HitboxButton.BackgroundColor3 = Color3.fromRGB(130, 130, 130)
HitboxButton.Position = UDim2.new(0.0652173907, 0, 0.0529891327, 0)
HitboxButton.Size = UDim2.new(0, 200, 0, 28)
HitboxButton.Font = Enum.Font.SourceSansBold
HitboxButton.Text = "Big Hitboxes"
HitboxButton.TextColor3 = Color3.fromRGB(255, 255, 255)
HitboxButton.TextScaled = true
HitboxButton.TextSize = 14.000
HitboxButton.TextWrapped = true

UICorner_2.Parent = HitboxButton

TypeSpeedBox.Name = "TypeSpeedBox"
TypeSpeedBox.Parent = General
TypeSpeedBox.BackgroundColor3 = Color3.fromRGB(130, 130, 130)
TypeSpeedBox.Position = UDim2.new(0.0652173907, 0, 0.108695649, 0)
TypeSpeedBox.Size = UDim2.new(0, 200, 0, 31)
TypeSpeedBox.Font = Enum.Font.SourceSansBold
TypeSpeedBox.PlaceholderText = "17-50 type"
TypeSpeedBox.Text = ""
TypeSpeedBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TypeSpeedBox.TextScaled = true
TypeSpeedBox.TextSize = 14.000
TypeSpeedBox.TextWrapped = true

UICorner_3.Parent = TypeSpeedBox

SetSpeedButton.Name = "SetSpeedButton"
SetSpeedButton.Parent = General
SetSpeedButton.BackgroundColor3 = Color3.fromRGB(0, 3, 172)
SetSpeedButton.Position = UDim2.new(0.0652173907, 0, 0.164402172, 0)
SetSpeedButton.Size = UDim2.new(0, 200, 0, 29)
SetSpeedButton.Font = Enum.Font.SourceSans
SetSpeedButton.Text = "Set!"
SetSpeedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SetSpeedButton.TextScaled = true
SetSpeedButton.TextSize = 14.000
SetSpeedButton.TextStrokeTransparency = 0.200
SetSpeedButton.TextWrapped = true

UICorner_4.Parent = SetSpeedButton

TextLabel.Parent = General
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.100000001, 0, 0.495923936, 0)
TextLabel.Size = UDim2.new(0, 183, 0, 37)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Coming Soon!!"
TextLabel.TextColor3 = Color3.fromRGB(127, 127, 127)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextStrokeTransparency = 0.400
TextLabel.TextWrapped = true

Open.Name = "Open"
Open.Parent = ByArteesSo
Open.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
Open.BorderColor3 = Color3.fromRGB(0, 0, 0)
Open.Position = UDim2.new(0.764095843, 0, 0.106948763, 0)
Open.Size = UDim2.new(0, 228, 0, 30)
Open.Font = Enum.Font.FredokaOne
Open.Text = "Killstreak Remake (Beta)"
Open.TextColor3 = Color3.fromRGB(255, 0, 4)
Open.TextSize = 20.000
Open.TextWrapped = true

UICorner_5.Parent = Open

HitboxButton.MouseButton1Click:Connect(function()
	if HitboxButton.Text == "Big Hitboxes" then
		HitboxButton.Text = "Back"
		Player.Backpack.Killstreak.Hand.Size = Vector3.new(42, 46, 36)
	else HitboxButton.Text = "Big Hitboxes"
		Player.Backpack.Killstreak.Hand.Size = Vector3.new(2.469702959060669, 2.844676971435547, 1.1790461540222168)
	end 
end)

Open.MouseButton1Click:Connect(function()
	if General.Visible == true then
		General.Visible = false
		else General.Visible = true
	end
end)

SetSpeedButton.MouseButton1Click:Connect(function()
	Player.Character.Humanoid.WalkSpeed = TypeSpeedBox.Text
end)