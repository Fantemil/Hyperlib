
local ScreenGui = Instance.new("ScreenGui")
local JoeyHub = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Tabblad = Instance.new("ScrollingFrame")
local PlayerSettingsButton = Instance.new("ImageButton")
local GameButton = Instance.new("ImageButton")
local PlayerSettingsFrame = Instance.new("ScrollingFrame")
local Name = Instance.new("TextLabel")
local Xray = Instance.new("TextButton")
local Run = Instance.new("TextButton")
local DN = Instance.new("TextButton")
local DN_2 = Instance.new("TextButton")
local GameFrame = Instance.new("ScrollingFrame")
local Name_2 = Instance.new("TextLabel")
local WAAPP = Instance.new("ImageButton")
local UICorner_2 = Instance.new("UICorner")
local HotelButton = Instance.new("ImageButton")
local UICorner_3 = Instance.new("UICorner")
local WAAPPScript = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local Tabblad_2 = Instance.new("ScrollingFrame")
local TrollButton = Instance.new("ImageButton")
local Back = Instance.new("ImageButton")
local TeleportButton = Instance.new("ImageButton")
local TrollFrame = Instance.new("ScrollingFrame")
local JobSpam = Instance.new("TextButton")
local DAPPD = Instance.new("TextButton")
local TeleportFrame = Instance.new("ScrollingFrame")
local Cashier = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local Cook = Instance.new("TextButton")
local Delivery = Instance.new("TextButton")
local PizzaBoxer = Instance.new("TextButton")
local Supplier = Instance.new("TextButton")
local HotelFrame = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local Tabblad_3 = Instance.new("ScrollingFrame")
local PlayerSettingsButton_2 = Instance.new("ImageButton")
local Back_2 = Instance.new("ImageButton")
local TeleportFrame_2 = Instance.new("ScrollingFrame")
local TextLabel_2 = Instance.new("TextLabel")
local ttlfgh = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

JoeyHub.Name = "JoeyHub"
JoeyHub.Parent = ScreenGui
JoeyHub.BackgroundColor3 = Color3.fromRGB(88, 88, 88)
JoeyHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
JoeyHub.BorderSizePixel = 0
JoeyHub.Position = UDim2.new(0.0853658542, 0, 0.101511881, 0)
JoeyHub.Size = UDim2.new(0, 351, 0, 287)

UICorner.Parent = JoeyHub

Tabblad.Name = "Tabblad"
Tabblad.Parent = JoeyHub
Tabblad.Active = true
Tabblad.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Tabblad.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tabblad.BorderSizePixel = 0
Tabblad.Size = UDim2.new(0, 100, 0, 287)
Tabblad.ScrollBarThickness = 10

PlayerSettingsButton.Name = "PlayerSettingsButton"
PlayerSettingsButton.Parent = Tabblad
PlayerSettingsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerSettingsButton.BackgroundTransparency = 1.000
PlayerSettingsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayerSettingsButton.BorderSizePixel = 0
PlayerSettingsButton.Position = UDim2.new(0.170000002, 0, 0.024390243, 0)
PlayerSettingsButton.Size = UDim2.new(0, 52, 0, 56)
PlayerSettingsButton.Image = "rbxassetid://7992557358"

GameButton.Name = "GameButton"
GameButton.Parent = Tabblad
GameButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameButton.BackgroundTransparency = 1.000
GameButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
GameButton.BorderSizePixel = 0
GameButton.Position = UDim2.new(0.170000002, 0, 0.139372826, 0)
GameButton.Size = UDim2.new(0, 52, 0, 56)
GameButton.Image = "rbxassetid://1557343445"

PlayerSettingsFrame.Name = "PlayerSettingsFrame"
PlayerSettingsFrame.Parent = JoeyHub
PlayerSettingsFrame.Active = true
PlayerSettingsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerSettingsFrame.BackgroundTransparency = 1.000
PlayerSettingsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayerSettingsFrame.BorderSizePixel = 0
PlayerSettingsFrame.Position = UDim2.new(0.284900278, 0, 0, 0)
PlayerSettingsFrame.Size = UDim2.new(0, 251, 0, 287)

Name.Name = "Name"
Name.Parent = PlayerSettingsFrame
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name.BorderSizePixel = 0
Name.Size = UDim2.new(0, 200, 0, 48)
Name.Font = Enum.Font.FredokaOne
Name.Text = "Player Settings"
Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Name.TextScaled = true
Name.TextSize = 14.000
Name.TextWrapped = true

Xray.Name = "Xray"
Xray.Parent = PlayerSettingsFrame
Xray.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Xray.BackgroundTransparency = 1.000
Xray.BorderColor3 = Color3.fromRGB(0, 0, 0)
Xray.BorderSizePixel = 0
Xray.Position = UDim2.new(0, 0, 0.121951222, 0)
Xray.Size = UDim2.new(0, 239, 0, 50)
Xray.Font = Enum.Font.Unknown
Xray.Text = "Xray"
Xray.TextColor3 = Color3.fromRGB(255, 0, 0)
Xray.TextScaled = true
Xray.TextSize = 14.000
Xray.TextWrapped = true

Run.Name = "Run"
Run.Parent = PlayerSettingsFrame
Run.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Run.BackgroundTransparency = 1.000
Run.BorderColor3 = Color3.fromRGB(0, 0, 0)
Run.BorderSizePixel = 0
Run.Position = UDim2.new(0, 0, 0.219512194, 0)
Run.Size = UDim2.new(0, 239, 0, 50)
Run.Font = Enum.Font.Unknown
Run.Text = "Run"
Run.TextColor3 = Color3.fromRGB(255, 0, 0)
Run.TextScaled = true
Run.TextSize = 14.000
Run.TextWrapped = true

DN.Name = "D/N"
DN.Parent = PlayerSettingsFrame
DN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DN.BackgroundTransparency = 1.000
DN.BorderColor3 = Color3.fromRGB(0, 0, 0)
DN.BorderSizePixel = 0
DN.Position = UDim2.new(0, 0, 0.331010461, 0)
DN.Size = UDim2.new(0, 239, 0, 50)
DN.Font = Enum.Font.Unknown
DN.Text = "Day / Night"
DN.TextColor3 = Color3.fromRGB(111, 255, 0)
DN.TextScaled = true
DN.TextSize = 14.000
DN.TextWrapped = true

DN_2.Name = "D/N"
DN_2.Parent = PlayerSettingsFrame
DN_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DN_2.BackgroundTransparency = 1.000
DN_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
DN_2.BorderSizePixel = 0
DN_2.Position = UDim2.new(0, 0, 0.442508698, 0)
DN_2.Size = UDim2.new(0, 239, 0, 50)
DN_2.Font = Enum.Font.Unknown
DN_2.Text = ""
DN_2.TextColor3 = Color3.fromRGB(255, 0, 0)
DN_2.TextScaled = true
DN_2.TextSize = 14.000
DN_2.TextWrapped = true

GameFrame.Name = "GameFrame"
GameFrame.Parent = JoeyHub
GameFrame.Active = true
GameFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameFrame.BackgroundTransparency = 1.000
GameFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
GameFrame.BorderSizePixel = 0
GameFrame.Position = UDim2.new(0.284900278, 0, 0, 0)
GameFrame.Size = UDim2.new(0, 251, 0, 287)
GameFrame.Visible = false

Name_2.Name = "Name"
Name_2.Parent = GameFrame
Name_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name_2.BackgroundTransparency = 1.000
Name_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name_2.BorderSizePixel = 0
Name_2.Size = UDim2.new(0, 200, 0, 48)
Name_2.Font = Enum.Font.FredokaOne
Name_2.Text = "Game Scripts"
Name_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Name_2.TextScaled = true
Name_2.TextSize = 14.000
Name_2.TextWrapped = true

WAAPP.Name = "WAAPP"
WAAPP.Parent = GameFrame
WAAPP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WAAPP.BorderColor3 = Color3.fromRGB(0, 0, 0)
WAAPP.BorderSizePixel = 0
WAAPP.Position = UDim2.new(0.0398406386, 0, 0.087108016, 0)
WAAPP.Size = UDim2.new(0, 100, 0, 100)
WAAPP.Image = "rbxassetid://2749414700"

UICorner_2.Parent = WAAPP

HotelButton.Name = "HotelButton"
HotelButton.Parent = GameFrame
HotelButton.BackgroundColor3 = Color3.fromRGB(46, 39, 71)
HotelButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HotelButton.BorderSizePixel = 0
HotelButton.Position = UDim2.new(0.509960175, 0, 0.087108016, 0)
HotelButton.Size = UDim2.new(0, 100, 0, 100)
HotelButton.Image = "rbxassetid://8796738192"

UICorner_3.Parent = HotelButton

WAAPPScript.Name = "WAAPPScript"
WAAPPScript.Parent = ScreenGui
WAAPPScript.BackgroundColor3 = Color3.fromRGB(88, 88, 88)
WAAPPScript.BorderColor3 = Color3.fromRGB(0, 0, 0)
WAAPPScript.BorderSizePixel = 0
WAAPPScript.Position = UDim2.new(0.0853658542, 0, 0.101511881, 0)
WAAPPScript.Size = UDim2.new(0, 351, 0, 287)
WAAPPScript.Visible = false

UICorner_4.Parent = WAAPPScript

Tabblad_2.Name = "Tabblad"
Tabblad_2.Parent = WAAPPScript
Tabblad_2.Active = true
Tabblad_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Tabblad_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tabblad_2.BorderSizePixel = 0
Tabblad_2.Size = UDim2.new(0, 100, 0, 287)
Tabblad_2.ScrollBarThickness = 10

TrollButton.Name = "TrollButton"
TrollButton.Parent = Tabblad_2
TrollButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TrollButton.BackgroundTransparency = 1.000
TrollButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TrollButton.BorderSizePixel = 0
TrollButton.Position = UDim2.new(0.170000002, 0, 0.024390243, 0)
TrollButton.Size = UDim2.new(0, 52, 0, 56)
TrollButton.Image = "rbxassetid://7120897383"

Back.Name = "Back"
Back.Parent = Tabblad_2
Back.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Back.BackgroundTransparency = 1.000
Back.BorderColor3 = Color3.fromRGB(0, 0, 0)
Back.BorderSizePixel = 0
Back.Position = UDim2.new(0.170000002, 0, 0.372822315, 0)
Back.Size = UDim2.new(0, 52, 0, 56)
Back.Image = "rbxassetid://14945994307"

TeleportButton.Name = "TeleportButton"
TeleportButton.Parent = Tabblad_2
TeleportButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TeleportButton.BackgroundTransparency = 1.000
TeleportButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeleportButton.BorderSizePixel = 0
TeleportButton.Position = UDim2.new(0.170000002, 0, 0.132404178, 0)
TeleportButton.Size = UDim2.new(0, 52, 0, 56)
TeleportButton.Image = "rbxassetid://12941020168"

TrollFrame.Name = "TrollFrame"
TrollFrame.Parent = WAAPPScript
TrollFrame.Active = true
TrollFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TrollFrame.BackgroundTransparency = 1.000
TrollFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
TrollFrame.BorderSizePixel = 0
TrollFrame.Position = UDim2.new(0.284900278, 0, 0, 0)
TrollFrame.Size = UDim2.new(0, 251, 0, 287)

JobSpam.Name = "Job Spam"
JobSpam.Parent = TrollFrame
JobSpam.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JobSpam.BackgroundTransparency = 1.000
JobSpam.BorderColor3 = Color3.fromRGB(0, 0, 0)
JobSpam.BorderSizePixel = 0
JobSpam.Position = UDim2.new(0.0637450218, 0, 0.0209059231, 0)
JobSpam.Size = UDim2.new(0, 200, 0, 50)
JobSpam.Font = Enum.Font.FredokaOne
JobSpam.Text = "Job Spam"
JobSpam.TextColor3 = Color3.fromRGB(255, 0, 0)
JobSpam.TextScaled = true
JobSpam.TextSize = 14.000
JobSpam.TextWrapped = true

DAPPD.Name = "DAPPD"
DAPPD.Parent = TrollFrame
DAPPD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DAPPD.BackgroundTransparency = 1.000
DAPPD.BorderColor3 = Color3.fromRGB(0, 0, 0)
DAPPD.BorderSizePixel = 0
DAPPD.Position = UDim2.new(0.0637450218, 0, 0.146341458, 0)
DAPPD.Size = UDim2.new(0, 200, 0, 50)
DAPPD.Font = Enum.Font.FredokaOne
DAPPD.Text = "Delete All Pizza Place Doors"
DAPPD.TextColor3 = Color3.fromRGB(47, 255, 0)
DAPPD.TextScaled = true
DAPPD.TextSize = 14.000
DAPPD.TextWrapped = true

TeleportFrame.Name = "TeleportFrame"
TeleportFrame.Parent = WAAPPScript
TeleportFrame.Active = true
TeleportFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TeleportFrame.BackgroundTransparency = 1.000
TeleportFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeleportFrame.BorderSizePixel = 0
TeleportFrame.Position = UDim2.new(0.284900278, 0, 0, 0)
TeleportFrame.Size = UDim2.new(0, 251, 0, 287)
TeleportFrame.Visible = false

Cashier.Name = "Cashier"
Cashier.Parent = TeleportFrame
Cashier.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Cashier.BackgroundTransparency = 1.000
Cashier.BorderColor3 = Color3.fromRGB(0, 0, 0)
Cashier.BorderSizePixel = 0
Cashier.Position = UDim2.new(0.0478087664, 0, 0.048780486, 0)
Cashier.Size = UDim2.new(0, 71, 0, 50)
Cashier.Font = Enum.Font.FredokaOne
Cashier.Text = "Cashier"
Cashier.TextColor3 = Color3.fromRGB(255, 0, 0)
Cashier.TextScaled = true
Cashier.TextSize = 14.000
Cashier.TextWrapped = true

TextLabel.Parent = TeleportFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, 0.0209059231, 0)
TextLabel.Size = UDim2.new(0, 238, 0, 22)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "Job Teleport"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Cook.Name = "Cook"
Cook.Parent = TeleportFrame
Cook.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Cook.BackgroundTransparency = 1.000
Cook.BorderColor3 = Color3.fromRGB(0, 0, 0)
Cook.BorderSizePixel = 0
Cook.Position = UDim2.new(0.633466125, 0, 0.0592334494, 0)
Cook.Size = UDim2.new(0, 71, 0, 50)
Cook.Font = Enum.Font.FredokaOne
Cook.Text = "Chef"
Cook.TextColor3 = Color3.fromRGB(255, 255, 0)
Cook.TextScaled = true
Cook.TextSize = 14.000
Cook.TextWrapped = true

Delivery.Name = "Delivery"
Delivery.Parent = TeleportFrame
Delivery.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Delivery.BackgroundTransparency = 1.000
Delivery.BorderColor3 = Color3.fromRGB(0, 0, 0)
Delivery.BorderSizePixel = 0
Delivery.Position = UDim2.new(0.0478087664, 0, 0.195121944, 0)
Delivery.Size = UDim2.new(0, 71, 0, 50)
Delivery.Font = Enum.Font.FredokaOne
Delivery.Text = "Delivery"
Delivery.TextColor3 = Color3.fromRGB(0, 153, 255)
Delivery.TextScaled = true
Delivery.TextSize = 14.000
Delivery.TextWrapped = true

PizzaBoxer.Name = "Pizza Boxer"
PizzaBoxer.Parent = TeleportFrame
PizzaBoxer.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
PizzaBoxer.BackgroundTransparency = 1.000
PizzaBoxer.BorderColor3 = Color3.fromRGB(0, 0, 0)
PizzaBoxer.BorderSizePixel = 0
PizzaBoxer.Position = UDim2.new(0.665338635, 0, 0.216027871, 0)
PizzaBoxer.Size = UDim2.new(0, 71, 0, 50)
PizzaBoxer.Modal = true
PizzaBoxer.Font = Enum.Font.FredokaOne
PizzaBoxer.Text = "Pizza Boxer"
PizzaBoxer.TextColor3 = Color3.fromRGB(255, 157, 0)
PizzaBoxer.TextScaled = true
PizzaBoxer.TextSize = 14.000
PizzaBoxer.TextWrapped = true

Supplier.Name = "Supplier"
Supplier.Parent = TeleportFrame
Supplier.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Supplier.BackgroundTransparency = 1.000
Supplier.BorderColor3 = Color3.fromRGB(0, 0, 0)
Supplier.BorderSizePixel = 0
Supplier.Position = UDim2.new(0.35059762, 0, 0.118466899, 0)
Supplier.Size = UDim2.new(0, 71, 0, 50)
Supplier.Modal = true
Supplier.Font = Enum.Font.FredokaOne
Supplier.Text = "Supplier"
Supplier.TextColor3 = Color3.fromRGB(152, 152, 152)
Supplier.TextScaled = true
Supplier.TextSize = 14.000
Supplier.TextWrapped = true

HotelFrame.Name = "HotelFrame"
HotelFrame.Parent = ScreenGui
HotelFrame.BackgroundColor3 = Color3.fromRGB(88, 88, 88)
HotelFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
HotelFrame.BorderSizePixel = 0
HotelFrame.Position = UDim2.new(0.0853658542, 0, 0.101511881, 0)
HotelFrame.Size = UDim2.new(0, 351, 0, 287)
HotelFrame.Visible = false

UICorner_5.Parent = HotelFrame

Tabblad_3.Name = "Tabblad"
Tabblad_3.Parent = HotelFrame
Tabblad_3.Active = true
Tabblad_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Tabblad_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tabblad_3.BorderSizePixel = 0
Tabblad_3.Size = UDim2.new(0, 100, 0, 287)
Tabblad_3.ScrollBarThickness = 10

PlayerSettingsButton_2.Name = "PlayerSettingsButton"
PlayerSettingsButton_2.Parent = Tabblad_3
PlayerSettingsButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerSettingsButton_2.BackgroundTransparency = 1.000
PlayerSettingsButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayerSettingsButton_2.BorderSizePixel = 0
PlayerSettingsButton_2.Position = UDim2.new(0.170000002, 0, 0.024390243, 0)
PlayerSettingsButton_2.Size = UDim2.new(0, 52, 0, 56)
PlayerSettingsButton_2.Image = "rbxassetid://6723742952"

Back_2.Name = "Back"
Back_2.Parent = Tabblad_3
Back_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Back_2.BackgroundTransparency = 1.000
Back_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Back_2.BorderSizePixel = 0
Back_2.Position = UDim2.new(0.170000002, 0, 0.139372826, 0)
Back_2.Size = UDim2.new(0, 52, 0, 56)
Back_2.Image = "rbxassetid://14945994307"

TeleportFrame_2.Name = "TeleportFrame"
TeleportFrame_2.Parent = HotelFrame
TeleportFrame_2.Active = true
TeleportFrame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TeleportFrame_2.BackgroundTransparency = 1.000
TeleportFrame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeleportFrame_2.BorderSizePixel = 0
TeleportFrame_2.Position = UDim2.new(0.284900278, 0, 0, 0)
TeleportFrame_2.Size = UDim2.new(0, 251, 0, 287)

TextLabel_2.Parent = TeleportFrame_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.Unknown
TextLabel_2.Text = "Teleport System"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

ttlfgh.Name = "ttlfgh"
ttlfgh.Parent = TeleportFrame_2
ttlfgh.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ttlfgh.BackgroundTransparency = 1.000
ttlfgh.BorderColor3 = Color3.fromRGB(0, 0, 0)
ttlfgh.BorderSizePixel = 0
ttlfgh.Position = UDim2.new(0.0478087664, 0, 0.132404178, 0)
ttlfgh.Size = UDim2.new(0, 89, 0, 50)
ttlfgh.Font = Enum.Font.FredokaOne
ttlfgh.Text = "Lobby {From Gloomo hotel }"
ttlfgh.TextColor3 = Color3.fromRGB(255, 255, 255)
ttlfgh.TextScaled = true
ttlfgh.TextSize = 14.000
ttlfgh.TextWrapped = true

-- Scripts:

local function APKSUT_fake_script() -- PlayerSettingsButton.ToggleFramesScript 
	local script = Instance.new('LocalScript', PlayerSettingsButton)

	local button = script.Parent
	local targetFrameName = "JoeyHub"
	local gameFrameName = "GameFrame"
	local playerSettingsFrameName = "PlayerSettingsFrame"
	
	local function findParentFrame(instance, frameName)
	    local currentParent = instance.Parent
	    while currentParent do
	        if currentParent:IsA("Frame") and currentParent.Name == frameName then
	            return currentParent
	        end
	        currentParent = currentParent.Parent
	    end
	    return nil
	end
	
	local function toggleFrames()
	    local parentFrame = findParentFrame(button, targetFrameName)
	    if parentFrame then
	        local gameFrame = parentFrame:FindFirstChild(gameFrameName)
	        local playerSettingsFrame = parentFrame:FindFirstChild(playerSettingsFrameName)
	        
	        if gameFrame and gameFrame:IsA("ScrollingFrame") then
	            gameFrame.Visible = false
	        end
	        
	        if playerSettingsFrame and playerSettingsFrame:IsA("ScrollingFrame") then
	            playerSettingsFrame.Visible = true
	        end
	    end
	end
	
	button.MouseButton1Click:Connect(toggleFrames)
end
coroutine.wrap(APKSUT_fake_script)()
local function HGZL_fake_script() -- GameButton.ToggleFramesScript 
	local script = Instance.new('LocalScript', GameButton)

	local button = script.Parent
	local targetFrameName = "JoeyHub"
	local gameFrameName = "GameFrame"
	local playerSettingsFrameName = "PlayerSettingsFrame"
	
	local function findParentFrame(instance, frameName)
	    local currentParent = instance.Parent
	    while currentParent do
	        if currentParent:IsA("Frame") and currentParent.Name == frameName then
	            return currentParent
	        end
	        currentParent = currentParent.Parent
	    end
	    return nil
	end
	
	local function toggleFrames()
	    local parentFrame = findParentFrame(button, targetFrameName)
	    if parentFrame then
	        local gameFrame = parentFrame:FindFirstChild(gameFrameName)
	        local playerSettingsFrame = parentFrame:FindFirstChild(playerSettingsFrameName)
	        
	        if gameFrame and gameFrame:IsA("ScrollingFrame") then
	            gameFrame.Visible = true
	        end
	        
	        if playerSettingsFrame and playerSettingsFrame:IsA("ScrollingFrame") then
	            playerSettingsFrame.Visible = false
	        end
	    end
	end
	
	button.MouseButton1Click:Connect(toggleFrames)
end
coroutine.wrap(HGZL_fake_script)()
local function ZVOCJO_fake_script() -- Xray.TextButtonColorChangeScript 
	local script = Instance.new('LocalScript', Xray)

	local textButton = script.Parent
	local workspace = game:GetService("Workspace")
	
	-- Store the original transparency values of all parts in the workspace
	local originalTransparencies = {}
	
	for _, instance in workspace:GetDescendants() do
	    if instance:IsA("BasePart") then
	        originalTransparencies[instance] = instance.Transparency
	    end
	end
	
	local function changeTransparency(newTransparency)
	    for _, instance in workspace:GetDescendants() do
	        if instance:IsA("BasePart") then
	            instance.Transparency = newTransparency
	        end
	    end
	end
	
	textButton.MouseButton1Click:Connect(function()
	    if textButton.TextColor3 == Color3.fromRGB(0, 255, 0) then
	        -- Change text color to red and reset transparency
	        textButton.TextColor3 = Color3.fromRGB(255, 0, 0)
	        for instance, transparency in originalTransparencies do
	            if instance and instance:IsA("BasePart") then
	                instance.Transparency = transparency
	            end
	        end
	    else
	        -- Change text color to green and set transparency to 0.5
	        textButton.TextColor3 = Color3.fromRGB(0, 255, 0)
	        changeTransparency(0.5)
	    end
	end)
end
coroutine.wrap(ZVOCJO_fake_script)()
local function UUJSOIL_fake_script() -- Run.TextButtonColorChangeScript 
	local script = Instance.new('LocalScript', Run)

	local Players = game:GetService("Players")
	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
	    local player = Players.LocalPlayer
	    local character = player.Character or player.CharacterAdded:Wait()
	    local humanoid = character:FindFirstChildOfClass("Humanoid")
	
	    if button.TextColor3 == Color3.new(0, 1, 0) then
	        -- If the text color is green, change it to red and set walkspeed to 16
	        button.TextColor3 = Color3.new(1, 0, 0)
	        if humanoid then
	            humanoid.WalkSpeed = 16
	        end
	    else
	        -- If the text color is not green, change it to green and set walkspeed to 50
	        button.TextColor3 = Color3.new(0, 1, 0)
	        if humanoid then
	            humanoid.WalkSpeed = 50
	        end
	    end
	end)
end
coroutine.wrap(UUJSOIL_fake_script)()
local function TOBO_fake_script() -- DN.ToggleTimeScript 
	local script = Instance.new('LocalScript', DN)

	local button = script.Parent
	local Lighting = game:GetService("Lighting")
	
	local function toggleTime()
	    if Lighting.ClockTime == 0 then
	        Lighting.ClockTime = 14
	    else
	        Lighting.ClockTime = 0
	    end
	end
	
	button.MouseButton1Click:Connect(toggleTime)
end
coroutine.wrap(TOBO_fake_script)()
local function PAKHPT_fake_script() -- DN_2.ToggleTimeScript 
	local script = Instance.new('LocalScript', DN_2)

	local button = script.Parent
	local Lighting = game:GetService("Lighting")
	
	local function toggleTime()
	    if Lighting.ClockTime == 0 then
	        Lighting.ClockTime = 14
	    else
	        Lighting.ClockTime = 0
	    end
	end
	
	button.MouseButton1Click:Connect(toggleTime)
end
coroutine.wrap(PAKHPT_fake_script)()
local function UBTCAZS_fake_script() -- WAAPP.VisibilityToggleScript 
	local script = Instance.new('LocalScript', WAAPP)

	local button = script.Parent
	
	local function findScreenGui(instance)
	    while instance and not instance:IsA("ScreenGui") do
	        instance = instance.Parent
	    end
	    return instance
	end
	
	local function onButtonClick()
	    local screenGui = findScreenGui(button)
	    if screenGui then
	        local waappScriptFrame = screenGui:FindFirstChild("WAAPPScript")
	        local joeyHubFrame = screenGui:FindFirstChild("JoeyHub")
	        
	        if waappScriptFrame and waappScriptFrame:IsA("Frame") then
	            waappScriptFrame.Visible = true
	        end
	        
	        if joeyHubFrame and joeyHubFrame:IsA("Frame") then
	            joeyHubFrame.Visible = false
	        end
	    end
	end
	
	button.MouseButton1Click:Connect(onButtonClick)
end
coroutine.wrap(UBTCAZS_fake_script)()
local function ZSMLSF_fake_script() -- HotelButton.VisibilityToggleScript 
	local script = Instance.new('LocalScript', HotelButton)

	local button = script.Parent
	
	local function findScreenGui(instance)
	    while instance and not instance:IsA("ScreenGui") do
	        instance = instance.Parent
	    end
	    return instance
	end
	
	local function onButtonClick()
	    local screenGui = findScreenGui(button)
	    if screenGui then
	        local waappScriptFrame = screenGui:FindFirstChild("HotelFrame")
	        local joeyHubFrame = screenGui:FindFirstChild("JoeyHub")
	        
	        if waappScriptFrame and waappScriptFrame:IsA("Frame") then
	            waappScriptFrame.Visible = true
	        end
	        
	        if joeyHubFrame and joeyHubFrame:IsA("Frame") then
	            joeyHubFrame.Visible = false
	        end
	    end
	end
	
	button.MouseButton1Click:Connect(onButtonClick)
end
coroutine.wrap(ZSMLSF_fake_script)()
local function QUUOE_fake_script() -- JoeyHub.DraggableFrameScript 
	local script = Instance.new('LocalScript', JoeyHub)

	local UserInputService = game:GetService("UserInputService")
	
	local frame = script.Parent
	local dragging = false
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
	    local delta = input.Position - dragStart
	    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	frame.InputBegan:Connect(function(input)
	    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
	        dragging = true
	        dragStart = input.Position
	        startPos = frame.Position
	
	        input.Changed:Connect(function()
	            if input.UserInputState == Enum.UserInputState.End then
	                dragging = false
	            end
	        end)
	    end
	end)
	
	frame.InputChanged:Connect(function(input)
	    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	        dragInput = input
	    end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
	    if dragging and input == dragInput then
	        update(input)
	    end
	end)
end
coroutine.wrap(QUUOE_fake_script)()
local function ROAUJIW_fake_script() -- TrollButton.ToggleFramesScript 
	local script = Instance.new('LocalScript', TrollButton)

	local button = script.Parent
	local targetFrameName = "WAAPPScript"
	local gameFrameName = "TeleportFrame"
	local playerSettingsFrameName = "TrollFrame"
	
	local function findParentFrame(instance, frameName)
	    local currentParent = instance.Parent
	    while currentParent do
	        if currentParent:IsA("Frame") and currentParent.Name == frameName then
	            return currentParent
	        end
	        currentParent = currentParent.Parent
	    end
	    return nil
	end
	
	local function toggleFrames()
	    local parentFrame = findParentFrame(button, targetFrameName)
	    if parentFrame then
	        local gameFrame = parentFrame:FindFirstChild(gameFrameName)
	        local playerSettingsFrame = parentFrame:FindFirstChild(playerSettingsFrameName)
	        
	        if gameFrame and gameFrame:IsA("ScrollingFrame") then
	            gameFrame.Visible = false
	        end
	        
	        if playerSettingsFrame and playerSettingsFrame:IsA("ScrollingFrame") then
	            playerSettingsFrame.Visible = true
	        end
	    end
	end
	
	button.MouseButton1Click:Connect(toggleFrames)
end
coroutine.wrap(ROAUJIW_fake_script)()
local function EFUFSJN_fake_script() -- Back.VisibilityToggleScript 
	local script = Instance.new('LocalScript', Back)

	local button = script.Parent
	
	local function findScreenGui(instance)
	    while instance and not instance:IsA("ScreenGui") do
	        instance = instance.Parent
	    end
	    return instance
	end
	
	local function onButtonClick()
	    local screenGui = findScreenGui(button)
	    if screenGui then
	        local waappScriptFrame = screenGui:FindFirstChild("WAAPPScript")
	        local joeyHubFrame = screenGui:FindFirstChild("JoeyHub")
	        
	        if waappScriptFrame and waappScriptFrame:IsA("Frame") then
	            waappScriptFrame.Visible = false
	        end
	        
	        if joeyHubFrame and joeyHubFrame:IsA("Frame") then
	            joeyHubFrame.Visible = true
	        end
	    end
	end
	
	button.MouseButton1Click:Connect(onButtonClick)
end
coroutine.wrap(EFUFSJN_fake_script)()
local function KPMC_fake_script() -- TeleportButton.ToggleFramesScript 
	local script = Instance.new('LocalScript', TeleportButton)

	local button = script.Parent
	local targetFrameName = "WAAPPScript"
	local gameFrameName = "TeleportFrame"
	local playerSettingsFrameName = "TrollFrame"
	
	local function findParentFrame(instance, frameName)
	    local currentParent = instance.Parent
	    while currentParent do
	        if currentParent:IsA("Frame") and currentParent.Name == frameName then
	            return currentParent
	        end
	        currentParent = currentParent.Parent
	    end
	    return nil
	end
	
	local function toggleFrames()
	    local parentFrame = findParentFrame(button, targetFrameName)
	    if parentFrame then
	        local gameFrame = parentFrame:FindFirstChild(gameFrameName)
	        local playerSettingsFrame = parentFrame:FindFirstChild(playerSettingsFrameName)
	        
	        if gameFrame and gameFrame:IsA("ScrollingFrame") then
	            gameFrame.Visible = true
	        end
	        
	        if playerSettingsFrame and playerSettingsFrame:IsA("ScrollingFrame") then
	            playerSettingsFrame.Visible = false
	        end
	    end
	end
	
	button.MouseButton1Click:Connect(toggleFrames)
end
coroutine.wrap(KPMC_fake_script)()
local function FWDG_fake_script() -- JobSpam.TeleportPlayersScript 
	local script = Instance.new('LocalScript', JobSpam)

	local button = script.Parent
	local Workspace = game:GetService("Workspace")
	local Players = game:GetService("Players")
	
	local teleportParts = {"Cashier", "Cook", "Delivery", "Pizza Boxer", "Supplier"}
	local teleportInterval = 0.1
	local isTeleporting = false
	
	local function teleportPlayers()
	    local jobFolder = Workspace:FindFirstChild("JobButtons")
	    if not jobFolder then return end
	
	    while isTeleporting do
	        for i, partName in teleportParts do
	            local part = jobFolder:FindFirstChild(partName)
	            if part and part:IsA("BasePart") then
	                for _, player in Players:GetPlayers() do
	                    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
	                        player.Character:PivotTo(part.CFrame)
	                    end
	                end
	                task.wait(teleportInterval)
	            end
	        end
	    end
	end
	
	button.MouseButton1Click:Connect(function()
	    if isTeleporting then
	        isTeleporting = false
	        button.BackgroundColor3 = Color3.new(1, 0, 0) -- Red
	    else
	        isTeleporting = true
	        button.BackgroundColor3 = Color3.new(0, 1, 0) -- Green
	        teleportPlayers()
	    end
	end)
end
coroutine.wrap(FWDG_fake_script)()
local function FLGOUBQ_fake_script() -- DAPPD.DeletePizzaPlaceDoorsScript 
	local script = Instance.new('LocalScript', DAPPD)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
	    local workspace = game:GetService("Workspace")
	    local pizzaPlaceDoorsFolder = workspace:FindFirstChild("PizzaPlaceDoors")
	    
	    if pizzaPlaceDoorsFolder then
	        pizzaPlaceDoorsFolder:Destroy()
	    end
	end)
end
coroutine.wrap(FLGOUBQ_fake_script)()
local function XYIECUL_fake_script() -- WAAPPScript.DraggableFrameScript 
	local script = Instance.new('LocalScript', WAAPPScript)

	local UserInputService = game:GetService("UserInputService")
	
	local frame = script.Parent
	local dragging = false
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
	    local delta = input.Position - dragStart
	    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	frame.InputBegan:Connect(function(input)
	    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
	        dragging = true
	        dragStart = input.Position
	        startPos = frame.Position
	
	        input.Changed:Connect(function()
	            if input.UserInputState == Enum.UserInputState.End then
	                dragging = false
	            end
	        end)
	    end
	end)
	
	frame.InputChanged:Connect(function(input)
	    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	        dragInput = input
	    end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
	    if dragging and input == dragInput then
	        update(input)
	    end
	end)
end
coroutine.wrap(XYIECUL_fake_script)()
local function RUCW_fake_script() -- Cashier.LocalScript 
	local script = Instance.new('LocalScript', Cashier)

	local button = script.Parent
	local Players = game:GetService("Players")
	
	local function onTouch()
		local player = Players.LocalPlayer
		local jobButtonsFolder = game.Workspace.JobButtons
		if jobButtonsFolder then
			local cashierPart = jobButtonsFolder:FindFirstChild("Cashier")
			if cashierPart then
				player.Character.HumanoidRootPart.CFrame = cashierPart.CFrame
			end
		end
	end
	
	button.MouseButton1Click:Connect(onTouch)
	
end
coroutine.wrap(RUCW_fake_script)()
local function ANZJYV_fake_script() -- Cook.LocalScript 
	local script = Instance.new('LocalScript', Cook)

	local button = script.Parent
	local Players = game:GetService("Players")
	
	local function onTouch()
		local player = Players.LocalPlayer
		local jobButtonsFolder = game.Workspace.JobButtons
		if jobButtonsFolder then
			local cashierPart = jobButtonsFolder:FindFirstChild("Cook")
			if cashierPart then
				player.Character.HumanoidRootPart.CFrame = cashierPart.CFrame
			end
		end
	end
	
	button.MouseButton1Click:Connect(onTouch)
	
end
coroutine.wrap(ANZJYV_fake_script)()
local function CZCRDZY_fake_script() -- Delivery.LocalScript 
	local script = Instance.new('LocalScript', Delivery)

	local button = script.Parent
	local Players = game:GetService("Players")
	
	local function onTouch()
		local player = Players.LocalPlayer
		local jobButtonsFolder = game.Workspace.JobButtons
		if jobButtonsFolder then
			local cashierPart = jobButtonsFolder:FindFirstChild("Delivery")
			if cashierPart then
				player.Character.HumanoidRootPart.CFrame = cashierPart.CFrame
			end
		end
	end
	
	button.MouseButton1Click:Connect(onTouch)
	
end
coroutine.wrap(CZCRDZY_fake_script)()
local function UHCAUDC_fake_script() -- PizzaBoxer.LocalScript 
	local script = Instance.new('LocalScript', PizzaBoxer)

	local button = script.Parent
	local Players = game:GetService("Players")
	
	local function onTouch()
		local player = Players.LocalPlayer
		local jobButtonsFolder = game.Workspace.JobButtons
		if jobButtonsFolder then
			local cashierPart = jobButtonsFolder:FindFirstChild("Pizza Boxer")
			if cashierPart then
				player.Character.HumanoidRootPart.CFrame = cashierPart.CFrame
			end
		end
	end
	
	button.MouseButton1Click:Connect(onTouch)
	
end
coroutine.wrap(UHCAUDC_fake_script)()
local function OBHPCV_fake_script() -- Supplier.LocalScript 
	local script = Instance.new('LocalScript', Supplier)

	local button = script.Parent
	local Players = game:GetService("Players")
	
	local function onTouch()
		local player = Players.LocalPlayer
		local jobButtonsFolder = game.Workspace.JobButtons
		if jobButtonsFolder then
			local cashierPart = jobButtonsFolder:FindFirstChild("Pizza Boxer")
			if cashierPart then
				player.Character.HumanoidRootPart.CFrame = cashierPart.CFrame
			end
		end
	end
	
	button.MouseButton1Click:Connect(onTouch)
	
end
coroutine.wrap(OBHPCV_fake_script)()
local function YSUNP_fake_script() -- Back_2.VisibilityToggleScript 
	local script = Instance.new('LocalScript', Back_2)

	local button = script.Parent
	
	local function findScreenGui(instance)
	    while instance and not instance:IsA("ScreenGui") do
	        instance = instance.Parent
	    end
	    return instance
	end
	
	local function onButtonClick()
	    local screenGui = findScreenGui(button)
	    if screenGui then
	        local waappScriptFrame = screenGui:FindFirstChild("HotelFrame")
	        local joeyHubFrame = screenGui:FindFirstChild("JoeyHub")
	        
	        if waappScriptFrame and waappScriptFrame:IsA("Frame") then
	            waappScriptFrame.Visible = false
	        end
	        
	        if joeyHubFrame and joeyHubFrame:IsA("Frame") then
	            joeyHubFrame.Visible = true
	        end
	    end
	end
	
	button.MouseButton1Click:Connect(onButtonClick)
end
coroutine.wrap(YSUNP_fake_script)()
local function NZIJBC_fake_script() -- ttlfgh.TeleportButtonScript 
	local script = Instance.new('LocalScript', ttlfgh)

	local button = script.Parent
	local Players = game:GetService("Players")
	local Workspace = game:GetService("Workspace")
	
	button.MouseButton1Click:Connect(function()
	    local player = Players.LocalPlayer
	    local character = player.Character or player.CharacterAdded:Wait()
	
	    -- Find the "Floor1" model in the workspace
	    local floor1 = Workspace:FindFirstChild("Floor1")
	    if floor1 then
	        -- Find the "TableLobby" model within the "Floor1" model
	        local tableLobby = floor1:FindFirstChild("TableLobby")
	        if tableLobby then
	            -- Get the pivot CFrame of the "TableLobby" model
	            local targetCFrame = tableLobby:GetPivot()
	            -- Move the player's character to the "TableLobby" model
	            character:PivotTo(targetCFrame)
	        else
	            warn("TableLobby model not found within Floor1")
	        end
	    else
	        warn("Floor1 model not found in the workspace")
	    end
	end)
end
coroutine.wrap(NZIJBC_fake_script)()
local function KJJZ_fake_script() -- HotelFrame.DraggableFrameScript 
	local script = Instance.new('LocalScript', HotelFrame)

	local UserInputService = game:GetService("UserInputService")
	
	local frame = script.Parent
	local dragging = false
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
	    local delta = input.Position - dragStart
	    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	frame.InputBegan:Connect(function(input)
	    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
	        dragging = true
	        dragStart = input.Position
	        startPos = frame.Position
	
	        input.Changed:Connect(function()
	            if input.UserInputState == Enum.UserInputState.End then
	                dragging = false
	            end
	        end)
	    end
	end)
	
	frame.InputChanged:Connect(function(input)
	    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	        dragInput = input
	    end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
	    if dragging and input == dragInput then
	        update(input)
	    end
	end)
end
coroutine.wrap(KJJZ_fake_script)()
