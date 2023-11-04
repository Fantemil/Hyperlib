-- This Script Hub was made by CantankerousStrategy

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local SideBar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local ScriptsButton = Instance.new("TextButton")
local bar = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local CreditsButton = Instance.new("TextButton")
local bar_2 = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local ExtrasButton = Instance.new("TextButton")
local bar_3 = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local TopBar = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local TITLE = Instance.new("TextLabel")
local ExtrasFrame = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local CreditsFrame = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local TextLabel_3 = Instance.new("TextLabel")
local ScriptsFrame = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local ControlGUI = Instance.new("TextButton")
local FERevengeHands = Instance.new("TextButton")
local TheGlitch = Instance.new("TextButton")
local ChaosDeusSword = Instance.new("TextButton")
local Vereus = Instance.new("TextButton")
local RoadRollerDance = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.0892388448, 0, 0.233672038, 0)
main.Size = UDim2.new(0, 570, 0, 437)
main.Active = true
main.Draggable = true

UICorner.Parent = main

SideBar.Name = "SideBar"
SideBar.Parent = main
SideBar.BackgroundColor3 = Color3.fromRGB(62, 180, 137)
SideBar.Position = UDim2.new(0, 0, 0.00228832942, 0)
SideBar.Size = UDim2.new(0, 100, 0, 436)

UICorner_2.Parent = SideBar

ScriptsButton.Name = "ScriptsButton"
ScriptsButton.Parent = SideBar
ScriptsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptsButton.BackgroundTransparency = 1.000
ScriptsButton.Position = UDim2.new(0, 0, 0.167431191, 0)
ScriptsButton.Size = UDim2.new(0, 100, 0, 64)
ScriptsButton.Font = Enum.Font.Jura
ScriptsButton.Text = "Scripts"
ScriptsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptsButton.TextSize = 20.000

bar.Name = "bar"
bar.Parent = ScriptsButton
bar.AnchorPoint = Vector2.new(0.5, 0.5)
bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bar.BorderSizePixel = 0
bar.Position = UDim2.new(0.490000427, 0, 0.734375, 0)
bar.Size = UDim2.new(0, 91, 0, 4)
bar.ZIndex = 2

UICorner_3.Parent = bar

CreditsButton.Name = "CreditsButton"
CreditsButton.Parent = SideBar
CreditsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CreditsButton.BackgroundTransparency = 1.000
CreditsButton.Position = UDim2.new(0, 0, 0.31422019, 0)
CreditsButton.Size = UDim2.new(0, 100, 0, 64)
CreditsButton.Font = Enum.Font.Jura
CreditsButton.Text = "Credits"
CreditsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CreditsButton.TextSize = 20.000

bar_2.Name = "bar"
bar_2.Parent = CreditsButton
bar_2.AnchorPoint = Vector2.new(0.5, 0.5)
bar_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bar_2.BorderSizePixel = 0
bar_2.Position = UDim2.new(0.490000427, 0, 0.734375, 0)
bar_2.Size = UDim2.new(0, 91, 0, 4)
bar_2.ZIndex = 2

UICorner_4.Parent = bar_2

ExtrasButton.Name = "ExtrasButton"
ExtrasButton.Parent = SideBar
ExtrasButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExtrasButton.BackgroundTransparency = 1.000
ExtrasButton.Position = UDim2.new(0, 0, 0.461009175, 0)
ExtrasButton.Size = UDim2.new(0, 100, 0, 64)
ExtrasButton.Font = Enum.Font.Jura
ExtrasButton.Text = "Extras"
ExtrasButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ExtrasButton.TextSize = 20.000

bar_3.Name = "bar"
bar_3.Parent = ExtrasButton
bar_3.AnchorPoint = Vector2.new(0.5, 0.5)
bar_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bar_3.BorderSizePixel = 0
bar_3.Position = UDim2.new(0.490000427, 0, 0.734375, 0)
bar_3.Size = UDim2.new(0, 91, 0, 4)
bar_3.ZIndex = 2

UICorner_5.Parent = bar_3

TopBar.Name = "TopBar"
TopBar.Parent = main
TopBar.BackgroundColor3 = Color3.fromRGB(62, 180, 137)
TopBar.Position = UDim2.new(0, 0, -0.00686497986, 0)
TopBar.Size = UDim2.new(0, 570, 0, 54)

UICorner_6.Parent = TopBar

TITLE.Name = "TITLE"
TITLE.Parent = TopBar
TITLE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TITLE.BackgroundTransparency = 1.000
TITLE.BorderColor3 = Color3.fromRGB(0, 0, 0)
TITLE.Position = UDim2.new(0, 0, 0.0370370373, 0)
TITLE.Size = UDim2.new(0, 100, 0, 50)
TITLE.Font = Enum.Font.Jura
TITLE.Text = "MINT HUB"
TITLE.TextColor3 = Color3.fromRGB(255, 255, 255)
TITLE.TextSize = 20.000

ExtrasFrame.Name = "ExtrasFrame"
ExtrasFrame.Parent = main
ExtrasFrame.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
ExtrasFrame.Position = UDim2.new(0.174153894, 0, 0.115472652, 0)
ExtrasFrame.Size = UDim2.new(0, 470, 0, 386)
ExtrasFrame.Visible = false

UICorner_7.Parent = ExtrasFrame

TextLabel.Parent = ExtrasFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.012765957, 0, 0.152849734, 0)
TextLabel.Size = UDim2.new(0, 464, 0, 50)
TextLabel.Font = Enum.Font.Jura
TextLabel.Text = "Have any suggestions?"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 19.000

TextLabel_2.Parent = ExtrasFrame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0, 0, 0.331606209, 0)
TextLabel_2.Size = UDim2.new(0, 470, 0, 50)
TextLabel_2.Font = Enum.Font.Jura
TextLabel_2.Text = "Join the Discord Server: https://discord.gg/EUN5waqZ"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 19.000

CreditsFrame.Name = "CreditsFrame"
CreditsFrame.Parent = main
CreditsFrame.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
CreditsFrame.Position = UDim2.new(0.174153879, 0, 0.115472637, 0)
CreditsFrame.Size = UDim2.new(0, 470, 0, 386)
CreditsFrame.Visible = false

UICorner_8.Parent = CreditsFrame

TextLabel_3.Parent = CreditsFrame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.100000001, 0, 0.0958549231, 0)
TextLabel_3.Size = UDim2.new(0, 359, 0, 50)
TextLabel_3.Font = Enum.Font.Jura
TextLabel_3.Text = "Made By CantankerousStrategy"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 19.000

ScriptsFrame.Name = "ScriptsFrame"
ScriptsFrame.Parent = main
ScriptsFrame.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
ScriptsFrame.Position = UDim2.new(0.174153879, 0, 0.110895976, 0)
ScriptsFrame.Size = UDim2.new(0, 470, 0, 386)
ScriptsFrame.Visible = false

UICorner_9.Parent = ScriptsFrame

ControlGUI.Name = "ControlGUI"
ControlGUI.Parent = ScriptsFrame
ControlGUI.BackgroundColor3 = Color3.fromRGB(62, 180, 137)
ControlGUI.BorderSizePixel = 0
ControlGUI.Position = UDim2.new(0.0957446843, 0, 0.07772021, 0)
ControlGUI.Size = UDim2.new(0, 166, 0, 50)
ControlGUI.Font = Enum.Font.Jura
ControlGUI.Text = "FE CONTROL GUI"
ControlGUI.TextColor3 = Color3.fromRGB(255, 255, 255)
ControlGUI.TextSize = 17.000
ControlGUI.MouseButton1Down:Connect (function()
	loadstring(game:HttpGet(("https://raw.githubusercontent.com/KRNL2/asdasdas/main/control"), true))()
end)

FERevengeHands.Name = "FERevengeHands"
FERevengeHands.Parent = ScriptsFrame
FERevengeHands.BackgroundColor3 = Color3.fromRGB(62, 180, 137)
FERevengeHands.BorderSizePixel = 0
FERevengeHands.Position = UDim2.new(0.551063836, 0, 0.07772021, 0)
FERevengeHands.Size = UDim2.new(0, 166, 0, 50)
FERevengeHands.Font = Enum.Font.Jura
FERevengeHands.Text = "FE REVENGE HANDS"
FERevengeHands.TextColor3 = Color3.fromRGB(255, 255, 255)
FERevengeHands.TextSize = 17.000
FERevengeHands.MouseButton1Down:connect (function()
	loadstring(game:HttpGet(("https://raw.githubusercontent.com/KRNL2/asdasdasd/main/Revenge%20Hands"), true))()
end)

TheGlitch.Name = "TheGlitch"
TheGlitch.Parent = ScriptsFrame
TheGlitch.BackgroundColor3 = Color3.fromRGB(62, 180, 137)
TheGlitch.BorderSizePixel = 0
TheGlitch.Position = UDim2.new(0.0957446843, 0, 0.370466322, 0)
TheGlitch.Size = UDim2.new(0, 166, 0, 50)
TheGlitch.Font = Enum.Font.Jura
TheGlitch.Text = "THE GLITCH"
TheGlitch.TextColor3 = Color3.fromRGB(255, 255, 255)
TheGlitch.TextSize = 17.000
TheGlitch.MouseButton1Down:connect (function()
	loadstring(game:HttpGet(("https://raw.githubusercontent.com/KRNL2/haker/main/The%20Glitch"), true))()
end)

ChaosDeusSword.Name = "ChaosDeusSword"
ChaosDeusSword.Parent = ScriptsFrame
ChaosDeusSword.BackgroundColor3 = Color3.fromRGB(62, 180, 137)
ChaosDeusSword.BorderSizePixel = 0
ChaosDeusSword.Position = UDim2.new(0.0957446843, 0, 0.658031106, 0)
ChaosDeusSword.Size = UDim2.new(0, 166, 0, 50)
ChaosDeusSword.Font = Enum.Font.Jura
ChaosDeusSword.Text = "CHAOS DEUS SWORD"
ChaosDeusSword.TextColor3 = Color3.fromRGB(255, 255, 255)
ChaosDeusSword.TextSize = 17.000
ChaosDeusSword.MouseButton1Down:connect (function()
	loadstring(game:HttpGet(("https://raw.githubusercontent.com/KRNL2/sword/main/Chaos%20Deus%20Sword"), true))()
end)

Vereus.Name = "Vereus"
Vereus.Parent = ScriptsFrame
Vereus.BackgroundColor3 = Color3.fromRGB(62, 180, 137)
Vereus.BorderSizePixel = 0
Vereus.Position = UDim2.new(0.551063836, 0, 0.658031166, 0)
Vereus.Size = UDim2.new(0, 166, 0, 50)
Vereus.Font = Enum.Font.Jura
Vereus.Text = "FE VEREUS (R6)"
Vereus.TextColor3 = Color3.fromRGB(255, 255, 255)
Vereus.TextSize = 17.000
Vereus.MouseButton1Down:connect (function()
	loadstring(game:HttpGet(("https://raw.githubusercontent.com/KRNL2/3dx/main/VEREUS"), true))()
end)

RoadRollerDance.Name = "RoadRollerDance"
RoadRollerDance.Parent = ScriptsFrame
RoadRollerDance.BackgroundColor3 = Color3.fromRGB(62, 180, 137)
RoadRollerDance.BorderSizePixel = 0
RoadRollerDance.Position = UDim2.new(0.551063836, 0, 0.367875636, 0)
RoadRollerDance.Size = UDim2.new(0, 166, 0, 50)
RoadRollerDance.Font = Enum.Font.Jura
RoadRollerDance.Text = "ROAD ROLLER DANCE"
RoadRollerDance.TextColor3 = Color3.fromRGB(255, 255, 255)
RoadRollerDance.TextSize = 17.000
RoadRollerDance.MouseButton1Down:connect (function()
	loadstring(game:HttpGet(("https://raw.githubusercontent.com/KRNL2/rm/main/Road%20Roller%20Dance"), true))()
end)

-- Scripts:

local function DTUMP_fake_script() -- bar.LocalScript 
	local script = Instance.new('LocalScript', bar)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
		script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	
		counter = counter + 0.01
	end
end
coroutine.wrap(DTUMP_fake_script)()
local function DQZLQDA_fake_script() -- ScriptsButton.LocalScript 
	local script = Instance.new('LocalScript', ScriptsButton)

	script.Parent.MouseButton1Click:Connect (function()
		script.Parent.Parent.Parent.ExtrasFrame.Visible = false
		script.Parent.Parent.Parent.CreditsFrame.Visible = false
		script.Parent.Parent.Parent.ScriptsFrame.Visible = true
	end)
end
coroutine.wrap(DQZLQDA_fake_script)()
local function SOKM_fake_script() -- bar_2.LocalScript 
	local script = Instance.new('LocalScript', bar_2)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
		script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	
		counter = counter + 0.01
	end
end
coroutine.wrap(SOKM_fake_script)()
local function QQXH_fake_script() -- CreditsButton.LocalScript 
	local script = Instance.new('LocalScript', CreditsButton)

	script.Parent.MouseButton1Click:Connect (function()
		script.Parent.Parent.Parent.ExtrasFrame.Visible = false
		script.Parent.Parent.Parent.CreditsFrame.Visible = true
		script.Parent.Parent.Parent.ScriptsFrame.Visible = false
	end)
end
coroutine.wrap(QQXH_fake_script)()
local function KNUFX_fake_script() -- bar_3.LocalScript 
	local script = Instance.new('LocalScript', bar_3)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
		script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	
		counter = counter + 0.01
	end
end
coroutine.wrap(KNUFX_fake_script)()
local function OTBCOV_fake_script() -- ExtrasButton.LocalScript 
	local script = Instance.new('LocalScript', ExtrasButton)

	script.Parent.MouseButton1Click:Connect (function()
		script.Parent.Parent.Parent.ExtrasFrame.Visible = true
		script.Parent.Parent.Parent.CreditsFrame.Visible = false
		script.Parent.Parent.Parent.ScriptsFrame.Visible = false
	end)
end
coroutine.wrap(OTBCOV_fake_script)()