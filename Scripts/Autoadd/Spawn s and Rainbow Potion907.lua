-- Gui to Lua
-- Version: 3.6

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local FrameUI = Instance.new("Folder")
local Frame = Instance.new("Frame")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UIGradient = Instance.new("UIGradient")
local UICorner = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TextButton_3 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UIGradient_2 = Instance.new("UIGradient")
local shadow = Instance.new("Frame")
local umbraShadow = Instance.new("ImageLabel")
local penumbraShadow = Instance.new("ImageLabel")
local ambientShadow = Instance.new("ImageLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local Notification = Instance.new("Folder")
local Frame_2 = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local UIGradient_3 = Instance.new("UIGradient")
local TextLabel_4 = Instance.new("TextLabel")
local Sound = Instance.new("Folder")
local click2down = Instance.new("Sound")

-- Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

FrameUI.Name = "Frame-UI"
FrameUI.Parent = ScreenGui

Frame.Parent = FrameUI
Frame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0946142673, 0, 0.343181819, 0)
Frame.Size = UDim2.new(0, 278, 0, 183)

UIAspectRatioConstraint.Parent = Frame
UIAspectRatioConstraint.AspectRatio = 1.519

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.04, Color3.fromRGB(122, 122, 122)), ColorSequenceKeypoint.new(0.06, Color3.fromRGB(44, 44, 44)), ColorSequenceKeypoint.new(0.73, Color3.fromRGB(33, 33, 33)), ColorSequenceKeypoint.new(0.92, Color3.fromRGB(27, 27, 27)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
UIGradient.Parent = Frame

UICorner.Parent = Frame

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.920863271, 0, 0.879781425, 0)
TextButton.Size = UDim2.new(0, 22, 0, 22)
TextButton.Font = Enum.Font.GothamBold
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = TextButton

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.550359726, 0, 0.371584713, 0)
TextButton_2.Size = UDim2.new(0, 109, 0, 47)
TextButton_2.Font = Enum.Font.GothamBold
TextButton_2.Text = "Give Rainbow Potion"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

UICorner_3.Parent = TextButton_2

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.0539568327, 0, 0.371584713, 0)
TextButton_3.Size = UDim2.new(0, 109, 0, 47)
TextButton_3.Font = Enum.Font.GothamBold
TextButton_3.Text = "Spawn Zombies"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

UICorner_4.Parent = TextButton_3

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0539568327, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 247, 0, 35)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Zombie Game"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.01, Color3.fromRGB(122, 122, 122)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(122, 122, 122))}
UIGradient_2.Parent = TextLabel

shadow.Name = "shadow"
shadow.Parent = Frame
shadow.BackgroundTransparency = 1.000
shadow.Position = UDim2.new(0.0946142673, 0, 0.343181819, 0)
shadow.Size = UDim2.new(0, 278, 0, 183)
shadow.ZIndex = -999999999

umbraShadow.Name = "umbraShadow"
umbraShadow.Parent = shadow
umbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
umbraShadow.BackgroundTransparency = 1.000
umbraShadow.Position = UDim2.new(0.428057551, 0, 0.133879781, 10)
umbraShadow.Size = UDim2.new(1, 13, 1, 13)
umbraShadow.Image = "rbxassetid://1316045217"
umbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
umbraShadow.ImageTransparency = 0.860
umbraShadow.ScaleType = Enum.ScaleType.Slice
umbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)

penumbraShadow.Name = "penumbraShadow"
penumbraShadow.Parent = shadow
penumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
penumbraShadow.BackgroundTransparency = 1.000
penumbraShadow.Position = UDim2.new(0.428057551, 0, 0.133879781, 10)
penumbraShadow.Size = UDim2.new(1, 13, 1, 13)
penumbraShadow.Image = "rbxassetid://1316045217"
penumbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
penumbraShadow.ImageTransparency = 0.880
penumbraShadow.ScaleType = Enum.ScaleType.Slice
penumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)

ambientShadow.Name = "ambientShadow"
ambientShadow.Parent = shadow
ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
ambientShadow.BackgroundTransparency = 1.000
ambientShadow.Position = UDim2.new(0.428057551, 0, 0.133879781, 10)
ambientShadow.Size = UDim2.new(1, 13, 1, 13)
ambientShadow.Image = "rbxassetid://1316045217"
ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
ambientShadow.ImageTransparency = 0.880
ambientShadow.ScaleType = Enum.ScaleType.Slice
ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0539568327, 0, 0.879781425, 0)
TextLabel_2.Size = UDim2.new(0, 76, 0, 16)
TextLabel_2.Font = Enum.Font.GothamBold
TextLabel_2.Text = "made by nbamwyd"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.0539568327, 0, 0.792349756, 0)
TextLabel_3.Size = UDim2.new(0, 76, 0, 16)
TextLabel_3.Font = Enum.Font.GothamBold
TextLabel_3.Text = "using remoteevent, fireclick"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

Notification.Name = "Notification"
Notification.Parent = ScreenGui

Frame_2.Parent = Notification
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.98407644, 0, 0.818181813, 0)
Frame_2.Size = UDim2.new(0, 190, 0, 98)

UICorner_5.Parent = Frame_2

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.02, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.04, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.15, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.49, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.84, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.99, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_3.Parent = Frame_2

TextLabel_4.Parent = Frame_2
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.0644833222, 0, 0.316326529, 0)
TextLabel_4.Size = UDim2.new(0, 165, 0, 36)
TextLabel_4.Font = Enum.Font.GothamBold
TextLabel_4.Text = "Made by nbamwyd and fully open source!"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true

Sound.Name = "Sound"
Sound.Parent = ScreenGui

click2down.Name = "click2down"
click2down.Parent = Sound
click2down.SoundId = "rbxassetid://6052548458"

-- Scripts:

local function NNISP_fake_script() -- Frame.bruhhhhhhhhhhh 
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
coroutine.wrap(NNISP_fake_script)()
local function MLNDVWS_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local button = script.Parent
	local frame = button.Parent
	local folder = frame.Parent
	local sfol = folder.Parent.Sound.click2down
	button.MouseButton1Click:Connect(function()
		sfol:Play()
		script.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(MLNDVWS_fake_script)()
local function LRGHW_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	local button = script.Parent
	local button = script.Parent
	local frame = button.Parent
	local folder = frame.Parent
	local sfol = folder.Parent.Sound.click2down
	button.MouseButton1Click:Connect(function()
	sfol:Play()
	fireclickdetector(workspace:WaitForChild("Interaction"):WaitForChild("ToolGivers"):WaitForChild("Rainbow Potion"):WaitForChild("ClickDetector"))
	end)
	--dont mind the shit script
end
coroutine.wrap(LRGHW_fake_script)()
local function WBBY_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextButton_3)

	local button = script.Parent
	local remoteEvent = game.ReplicatedStorage.Remotes.ZombieRelated.Necro.AbilityPlayer
	local button = script.Parent
	local frame = button.Parent
	local folder = frame.Parent
	local sfol = folder.Parent.Sound.click2down
	button.MouseButton1Click:Connect(function()
		remoteEvent:FireServer()
		sfol:Play()
	end)
end
coroutine.wrap(WBBY_fake_script)()
local function FCFS_fake_script() -- Frame_2.bruh 
	local script = Instance.new('LocalScript', Frame_2)

	local frame = script.Parent
	local TweenService = game:GetService("TweenService")
	
	
	local bruh = frame.Position - UDim2.new(0.18, 0, 0, 0)
	local bruh2 = frame.Position - UDim2.new(-0.9, 0, 0, 0)
	local tweenInfo = TweenInfo.new(
	    1,
	    Enum.EasingStyle.Quad,
	    Enum.EasingDirection.Out,
	    0,
	    false,
	    1
	)
	
	local bruhz = TweenInfo.new(
		1,
		Enum.EasingStyle.Quad,
		Enum.EasingDirection.Out,
		0,
		false,
		1
	)
	
	local tween = TweenService:Create(frame, tweenInfo, {Position = bruh})
	tween:Play()
	wait(3)
	local left = TweenService:Create(frame, bruhz, {Position = bruh2})
	left:Play()
	wait(2)
	frame:Destroy()
	
end
coroutine.wrap(FCFS_fake_script)()
