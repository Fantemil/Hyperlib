-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local TheHorrorMansionGui = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TheHorrorMansionGui.Name = "The Horror Mansion Gui"
TheHorrorMansionGui.Parent = ScreenGui
TheHorrorMansionGui.BackgroundColor3 = Color3.fromRGB(30, 143, 203)
TheHorrorMansionGui.BorderColor3 = Color3.fromRGB(0, 0, 0)
TheHorrorMansionGui.BorderSizePixel = 0
TheHorrorMansionGui.Position = UDim2.new(0.144391403, 0, 0.307692319, 0)
TheHorrorMansionGui.Size = UDim2.new(0, 197, 0, 46)

TextLabel.Parent = TheHorrorMansionGui
TextLabel.BackgroundColor3 = Color3.fromRGB(30, 143, 203)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 197, 0, 46)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "The Horror Mansion"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

UICorner.Parent = TextLabel

UICorner_2.Parent = TheHorrorMansionGui

TextButton.Parent = ScreenGui
TextButton.BackgroundColor3 = Color3.fromRGB(30, 143, 203)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.34248209, 0, 0.331983805, 0)
TextButton.Size = UDim2.new(0, 23, 0, 22)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(26, 123, 172)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.144391403, 0, 0.388663977, 0)
Frame.Size = UDim2.new(0, 197, 0, 280)
Frame.Visible = false

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(23, 112, 157)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Size = UDim2.new(0, 197, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Walkspeed Gui"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000
TextButton_2.MouseButton1Down:connect(function()
	-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(5, 202, 189)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 0.62348181, 0)
Frame.Size = UDim2.new(0, 235, 0, 186)
Frame.Active = true
Frame.Draggable = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(4, 177, 165)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.230330393, 0, 0.263440847, 0)
TextLabel.Size = UDim2.new(0, 124, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(4, 152, 142)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.365957439, 0, 0.731182814, 0)
TextButton.Size = UDim2.new(0, 62, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "+"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 40.000

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(14, 147, 143)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(0, 234, 0, 49)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Walkspeed By DarrenQr"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 20.000

-- Scripts:

local function XIPFWB_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local label = script.Parent.Parent.TextLabel
	
	script.Parent.MouseButton1Click:Connect(function()
		-- Use camelCase for consistency (Walkspeed -> WalkSpeed)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed +5
	
		-- Update the text of the label with the updated walk speed
		label.Text = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
	end)
end
coroutine.wrap(XIPFWB_fake_script)()   
end)

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(23, 112, 157)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0, 0, 0.178571433, 0)
TextButton_3.Size = UDim2.new(0, 197, 0, 50)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Teleporter Gui"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 14.000
TextButton_3.MouseButton1Down:connect(function()
	-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local TeleportGui = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local Load = Instance.new("TextButton")
local Teleport = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TeleportGui.Name = "Teleport Gui"
TeleportGui.Parent = ScreenGui
TeleportGui.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
TeleportGui.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeleportGui.BorderSizePixel = 0
TeleportGui.Position = UDim2.new(0, 0, 0.544534385, 0)
TeleportGui.Size = UDim2.new(0, 253, 0, 225)
TeleportGui.Active = true
TeleportGui.Draggable = true

TextLabel.Parent = TeleportGui
TextLabel.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 253, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "The Mansion Horror Teleport Gui By DarrenQr"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

UICorner.Parent = TextLabel

Load.Name = "Load"
Load.Parent = TeleportGui
Load.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Load.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load.BorderSizePixel = 0
Load.Position = UDim2.new(0.0750988126, 0, 0.222222224, 0)
Load.Size = UDim2.new(0, 200, 0, 50)
Load.Font = Enum.Font.SourceSans
Load.Text = "Outside"
Load.TextColor3 = Color3.fromRGB(255, 255, 255)
Load.TextSize = 20.000

Teleport.Name = "Teleport"
Teleport.Parent = TeleportGui
Teleport.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Teleport.BorderColor3 = Color3.fromRGB(0, 0, 0)
Teleport.BorderSizePixel = 0
Teleport.Position = UDim2.new(0.0750988126, 0, 0.444444448, 0)
Teleport.Size = UDim2.new(0, 200, 0, 50)
Teleport.Font = Enum.Font.SourceSans
Teleport.Text = "Mansion"
Teleport.TextColor3 = Color3.fromRGB(255, 255, 255)
Teleport.TextSize = 20.000

UICorner_2.Parent = TeleportGui

-- Scripts:

local function QWCH_fake_script() -- Load.LocalScript 
	local script = Instance.new('LocalScript', Load)

	-- Script for loading the saved location when the Teleport is clicked
	
	local Teleport = script.Parent
	
	-- Define the saved location
	local savedLocation = Vector3.new(-434.530396, 230.671127, -158.090942, 0.102207184, 6.0475422e-08, -0.994763136, 1.69342176-08, 6.25337009e-08, 0.994163136, -2.3236927e-08, 0.102207184)  -- Replace with the actual saved location
	
	-- Function to teleport to the saved location
	local function teleportToSavedLocation()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedLocation)
	end
	
	-- Connect the 'Activated' event of the Teleport to the 'teleportToSavedLocation' function
	Teleport.Activated:Connect(teleportToSavedLocation)
	
end
coroutine.wrap(QWCH_fake_script)()
local function UBZA_fake_script() -- Teleport.LocalScript 
	local script = Instance.new('LocalScript', Teleport)

	-- Script for loading the saved location when the Teleport is clicked
	
	local Teleport = script.Parent
	
	-- Define the saved location
	local savedLocation = Vector3.new(-354.202728, 230.790024, -157.22464, -.120751366, 3.27984964e-08, 0.992682755, -8.86847786e-08 -2.22525127e-08, -0.992682755, -8.53488302e-08, 0.120751366)  -- Replace with the actual saved location
	
	-- Function to teleport to the saved location
	local function teleportToSavedLocation()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedLocation)
	end
	
	-- Connect the 'Activated' event of the Teleport to the 'teleportToSavedLocation' function
	Teleport.Activated:Connect(teleportToSavedLocation)
	
end
coroutine.wrap(UBZA_fake_script)()
end)

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(23, 112, 157)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 0, 0.821428597, 0)
TextLabel_2.Size = UDim2.new(0, 197, 0, 50)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Gui Made by DarrenQr"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 20.000

-- Scripts:

local function OKTCC_fake_script() -- ScreenGui.LocalScript 
	local script = Instance.new('LocalScript', ScreenGui)

	local SGui = script.Parent
	local Frame = SGui:WaitForChild("Frame")
	local Button = SGui:WaitForChild("TextButton")
	
	Button.MouseButton1Up:Connect(function()
		Frame.Visible = not Frame.Visible
	end)
end
coroutine.wrap(OKTCC_fake_script)()