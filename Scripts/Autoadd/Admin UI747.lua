-- Gui to Lua
-- Version: 3.2

-- Instances:

local HackerReal = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local AdminShop = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local MobSpawn = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UICorner_3 = Instance.new("UICorner")
local UIGridLayout = Instance.new("UIGridLayout")

--Properties:

HackerReal.Name = "HackerReal"
HackerReal.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
HackerReal.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
HackerReal.ResetOnSpawn = false

Frame.Parent = HackerReal
Frame.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.398868561, 0, 0.201587304, 0)
Frame.Size = UDim2.new(0, 332, 0, 203)

AdminShop.Name = "AdminShop"
AdminShop.Parent = Frame
AdminShop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AdminShop.BorderColor3 = Color3.fromRGB(0, 0, 0)
AdminShop.BorderSizePixel = 0
AdminShop.Position = UDim2.new(0.198795184, 0, 0.0985221639, 0)
AdminShop.Size = UDim2.new(0, 200, 0, 50)
AdminShop.Font = Enum.Font.SourceSans
AdminShop.Text = "Admin Shop (LOBBY ONLY)"
AdminShop.TextColor3 = Color3.fromRGB(0, 0, 0)
AdminShop.TextScaled = true
AdminShop.TextSize = 14.000
AdminShop.TextWrapped = true

UICorner.Parent = AdminShop

MobSpawn.Name = "MobSpawn"
MobSpawn.Parent = Frame
MobSpawn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MobSpawn.BorderColor3 = Color3.fromRGB(0, 0, 0)
MobSpawn.BorderSizePixel = 0
MobSpawn.Position = UDim2.new(0.198795184, 0, 0.374384224, 0)
MobSpawn.Size = UDim2.new(0, 200, 0, 50)
MobSpawn.Font = Enum.Font.SourceSans
MobSpawn.Text = "MobSpawn (INGAME)"
MobSpawn.TextColor3 = Color3.fromRGB(0, 0, 0)
MobSpawn.TextScaled = true
MobSpawn.TextSize = 14.000
MobSpawn.TextWrapped = true

UICorner_2.Parent = MobSpawn

UICorner_3.Parent = Frame

UIGridLayout.Parent = Frame
UIGridLayout.FillDirection = Enum.FillDirection.Vertical
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIGridLayout.CellPadding = UDim2.new(0, 6, 0, 40)
UIGridLayout.CellSize = UDim2.new(0, 250, 0, 50)

-- Scripts:

local function NCZCBOA_fake_script() -- AdminShop.LocalScript 
	local script = Instance.new('LocalScript', AdminShop)

	script.Parent.MouseButton1Click:Connect(function()
		game:GetService("Players").LocalPlayer.PlayerGui.adminSecrets.OpenAdminShop.Visible = true
	end)
end
coroutine.wrap(NCZCBOA_fake_script)()
local function ZKRNSS_fake_script() -- MobSpawn.LocalScript 
	local script = Instance.new('LocalScript', MobSpawn)

	script.Parent.MouseButton1Click:Connect(function()
		game:GetService("Players").LocalPlayer.PlayerGui.GameGui.buttons.Open.Visible = true
	end)
end
coroutine.wrap(ZKRNSS_fake_script)()
local function TSSDN_fake_script() -- Frame.Smooth GUI Dragging 
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
coroutine.wrap(TSSDN_fake_script)()