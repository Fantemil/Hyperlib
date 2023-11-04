--Created By DariuZzZ--




local Hacks = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local Walkspeedlb = Instance.new("TextLabel")
local jumppowerlb = Instance.new("TextLabel")
local speed = Instance.new("TextLabel")
local jump = Instance.new("TextLabel")
local WalkBox = Instance.new("TextBox")
local JumpBox = Instance.new("TextBox")
local WalkSumbit = Instance.new("TextButton")
local JumpSumbit = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local Open = Instance.new("TextButton")
--Properties:
Hacks.Name = "Hacks"
Hacks.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Hacks.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Background.Name = "Background"
Background.Parent = Hacks
Background.BackgroundColor3 = Color3.new(0, 0, 0)
Background.BackgroundTransparency = 0.40000000596046
Background.Position = UDim2.new(0.109510086, 0, 0.381112367, 0)
Background.Size = UDim2.new(0.222958699, 0, 0.476163864, 0)
Background.Visible = false

Walkspeedlb.Name = "Walkspeedlb"
Walkspeedlb.Parent = Background
Walkspeedlb.BackgroundColor3 = Color3.new(1, 1, 1)
Walkspeedlb.BackgroundTransparency = 1
Walkspeedlb.Position = UDim2.new(0, 0, 0.122436516, 0)
Walkspeedlb.Size = UDim2.new(0.999999762, 0, 0.100000001, 0)
Walkspeedlb.Visible = false
Walkspeedlb.Font = Enum.Font.SourceSans
Walkspeedlb.Text = "WalkSpeed:"
Walkspeedlb.TextColor3 = Color3.new(1, 1, 1)
Walkspeedlb.TextScaled = true
Walkspeedlb.TextSize = 14
Walkspeedlb.TextWrapped = true
Walkspeedlb.TextXAlignment = Enum.TextXAlignment.Left

jumppowerlb.Name = "jumppowerlb"
jumppowerlb.Parent = Background
jumppowerlb.BackgroundColor3 = Color3.new(1, 1, 1)
jumppowerlb.BackgroundTransparency = 1
jumppowerlb.Position = UDim2.new(0, 0, 0.2203857, 0)
jumppowerlb.Size = UDim2.new(0.999999762, 0, 0.100000001, 0)
jumppowerlb.Visible = false
jumppowerlb.Font = Enum.Font.SourceSans
jumppowerlb.Text = "Jump Power:"
jumppowerlb.TextColor3 = Color3.new(1, 1, 1)
jumppowerlb.TextScaled = true
jumppowerlb.TextSize = 14
jumppowerlb.TextWrapped = true
jumppowerlb.TextXAlignment = Enum.TextXAlignment.Left

speed.Name = "speed"
speed.Parent = Background
speed.BackgroundColor3 = Color3.new(1, 1, 1)
speed.BackgroundTransparency = 1
speed.Position = UDim2.new(0.577337444, 0, 0.122436516, 0)
speed.Size = UDim2.new(0.422662586, 0, 0.100000001, 0)
speed.Visible = false
speed.Font = Enum.Font.SourceSans
speed.Text = "Default"
speed.TextColor3 = Color3.new(1, 1, 1)
speed.TextScaled = true
speed.TextSize = 14
speed.TextWrapped = true

jump.Name = "jump"
jump.Parent = Background
jump.BackgroundColor3 = Color3.new(1, 1, 1)
jump.BackgroundTransparency = 1
jump.Position = UDim2.new(0.659198582, 0, 0.22038573, 0)
jump.Size = UDim2.new(0.340801179, 0, 0.100000001, 0)
jump.Visible = false
jump.Font = Enum.Font.SourceSans
jump.Text = "Default"
jump.TextColor3 = Color3.new(1, 1, 1)
jump.TextScaled = true
jump.TextSize = 14
jump.TextWrapped = true

WalkBox.Name = "WalkBox"
WalkBox.Parent = Background
WalkBox.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
WalkBox.BackgroundTransparency = 0.5
WalkBox.BorderSizePixel = 0
WalkBox.Position = UDim2.new(0, 0, 0.174571082, 0)
WalkBox.Size = UDim2.new(0.999999881, 0, 0.187969327, 0)
WalkBox.Font = Enum.Font.SourceSans
WalkBox.PlaceholderColor3 = Color3.new(1, 1, 1)
WalkBox.PlaceholderText = "Insert a number for walk speed"
WalkBox.Text = ""
WalkBox.TextColor3 = Color3.new(1, 1, 1)
WalkBox.TextScaled = true
WalkBox.TextSize = 14
WalkBox.TextWrapped = true

JumpBox.Name = "JumpBox"
JumpBox.Parent = Background
JumpBox.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
JumpBox.BackgroundTransparency = 0.5
JumpBox.BorderSizePixel = 0
JumpBox.Position = UDim2.new(0.00430848775, 0, 0.6280002, 0)
JumpBox.Size = UDim2.new(0.999999881, 0, 0.190235019, 0)
JumpBox.Font = Enum.Font.SourceSans
JumpBox.PlaceholderColor3 = Color3.new(1, 1, 1)
JumpBox.PlaceholderText = "Insert a number for jump power"
JumpBox.Text = ""
JumpBox.TextColor3 = Color3.new(1, 1, 1)
JumpBox.TextScaled = true
JumpBox.TextSize = 14
JumpBox.TextWrapped = true

WalkSumbit.Name = "WalkSumbit"
WalkSumbit.Parent = Background
WalkSumbit.BackgroundColor3 = Color3.new(0.0980392, 1, 0)
WalkSumbit.Position = UDim2.new(0.00430848775, 0, 0.402936816, 0)
WalkSumbit.Size = UDim2.new(0.995691121, 0, 0.155913889, 0)
WalkSumbit.Font = Enum.Font.SourceSans
WalkSumbit.Text = "Sumbit"
WalkSumbit.TextColor3 = Color3.new(0, 0, 0)
WalkSumbit.TextScaled = true
WalkSumbit.TextSize = 14
WalkSumbit.TextWrapped = true

JumpSumbit.Name = "JumpSumbit"
JumpSumbit.Parent = Background
JumpSumbit.BackgroundColor3 = Color3.new(0.0980392, 1, 0)
JumpSumbit.Position = UDim2.new(0, 0, 0.84706986, 0)
JumpSumbit.Size = UDim2.new(0.995691121, 0, 0.151039571, 0)
JumpSumbit.Font = Enum.Font.SourceSans
JumpSumbit.Text = "Sumbit"
JumpSumbit.TextColor3 = Color3.new(0, 0, 0)
JumpSumbit.TextScaled = true
JumpSumbit.TextSize = 14
JumpSumbit.TextWrapped = true

TextLabel.Parent = Background
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0.995690882, 0, 0.135462731, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Created By DariuZzZ"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

Open.Name = "Open"
Open.Parent = Hacks
Open.BackgroundColor3 = Color3.new(0, 0, 0)
Open.BackgroundTransparency = 0.44999998807907
Open.Position = UDim2.new(0, 0, 0.756052136, 0)
Open.Size = UDim2.new(0.100000001, 0, 0.0553072728, 0)
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextColor3 = Color3.new(1, 1, 1)
Open.TextScaled = true
Open.TextSize = 14
Open.TextWrapped = true
-- Scripts:

local playername = game.Players.LocalPlayer.Name
local player = game.Players.LocalPlayer
local character = game.Workspace[playername]
local Background = player.PlayerGui.Hacks.Background

Open.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.PlayerGui.Hacks.Background.Visible == true then
		game.Players.LocalPlayer.PlayerGui.Hacks.Open.Text = "Open"
		game.Players.LocalPlayer.PlayerGui.Hacks.Background.Visible = false
	else
		game.Players.LocalPlayer.PlayerGui.Hacks.Open.Text = "Close"
		game.Players.LocalPlayer.PlayerGui.Hacks.Background.Visible = true
	end
end)

WalkSumbit.MouseButton1Click:connect(function()
	character.Humanoid.WalkSpeed = tostring(Background.WalkBox.Text)
end)

JumpSumbit.MouseButton1Click:connect(function()
	character.Humanoid.JumpPower = tostring(Background.JumpBox.Text)
end)