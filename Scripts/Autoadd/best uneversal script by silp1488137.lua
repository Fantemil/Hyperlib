 
local screenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local scrollFrame = Instance.new("ScrollingFrame")
local closeButton = Instance.new("TextButton")
local speedButton = Instance.new("TextButton")
local speed16Button = Instance.new("TextButton")
local toggleCameraButton = Instance.new("TextButton")
local noClipButton = Instance.new("TextButton")
local teleportButton = Instance.new("TextButton")
local teleportForwardButton = Instance.new("TextButton")
local changeAnimationButton = Instance.new("TextButton") -- ÐÐ½Ð¾Ð¿ÐºÐ° Ð´Ð»Ñ Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ñ Ð°Ð½Ð¸Ð¼Ð°ÑÐ¸Ð¸
local speedLabel = Instance.new("TextLabel")

-- ID Ð½Ð¾Ð²Ð¾Ð¹ Ð°Ð½Ð¸Ð¼Ð°ÑÐ¸Ð¸
local animationId = "132764074255160"

screenGui.Name = "CustomScreenGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- ÐÐµÑÐµÐ¼ÐµÑÐµÐ½Ð¸Ðµ GUI Ð² Ð±Ð¾Ðº (Ð½Ð°Ð¿ÑÐ¸Ð¼ÐµÑ, Ð½Ð° 12 ÑÐ¼ Ð² ÑÑÐ¾ÑÐ¾Ð½Ñ)
frame.Name = "MainFrame"
frame.Size = UDim2.new(0, 350, 0, 350)
frame.Position = UDim2.new(0.5, 120, 0.5, -175) -- Ð¡Ð¼ÐµÑÐ°ÐµÐ¼ Ð¿Ð¾ X
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
frame.BorderSizePixel = 3
frame.BorderColor3 = Color3.fromRGB(70, 130, 180)
frame.Parent = screenGui

scrollFrame.Size = UDim2.new(1, 0, 1, 0)
scrollFrame.CanvasSize = UDim2.new(0, 0, 2, 0)
scrollFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
scrollFrame.Parent = frame

closeButton.Size = UDim2.new(0, 140, 0, 50)
closeButton.Position = UDim2.new(0.5, -70, 0, 20)
closeButton.Text = "Close"
closeButton.BackgroundColor3 = Color3.fromRGB(100, 149, 237)
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Parent = scrollFrame

speedButton.Size = UDim2.new(0, 140, 0, 50)
speedButton.Position = UDim2.new(0.5, -70, 0, 80)
speedButton.Text = "Speed 100"
speedButton.BackgroundColor3 = Color3.fromRGB(100, 149, 237)
speedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
speedButton.Parent = scrollFrame

speed16Button.Size = UDim2.new(0, 140, 0, 50)
speed16Button.Position = UDim2.new(0.5, -70, 0, 140)
speed16Button.Text = "Speed 16"
speed16Button.BackgroundColor3 = Color3.fromRGB(100, 149, 237)
speed16Button.TextColor3 = Color3.fromRGB(255, 255, 255)
speed16Button.Parent = scrollFrame

toggleCameraButton.Size = UDim2.new(0, 140, 0, 50)
toggleCameraButton.Position = UDim2.new(0.5, -70, 0, 200)
toggleCameraButton.Text = "Free Camera"
toggleCameraButton.BackgroundColor3 = Color3.fromRGB(100, 149, 237)
toggleCameraButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleCameraButton.Parent = scrollFrame

noClipButton.Size = UDim2.new(0, 140, 0, 50)
noClipButton.Position = UDim2.new(0.5, -70, 0, 260)
noClipButton.Text = "No Clip"
noClipButton.BackgroundColor3 = Color3.fromRGB(100, 149, 237)
noClipButton.TextColor3 = Color3.fromRGB(255, 255, 255)
noClipButton.Parent = scrollFrame

teleportButton.Size = UDim2.new(0, 140, 0, 50)
teleportButton.Position = UDim2.new(0.5, -70, 0, 320)
teleportButton.Text = "Teleport Up"
teleportButton.BackgroundColor3 = Color3.fromRGB(100, 149, 237)
teleportButton.TextColor3 = Color3.fromRGB(255, 255, 255)
teleportButton.Parent = scrollFrame

teleportForwardButton.Size = UDim2.new(0, 140, 0, 50)
teleportForwardButton.Position = UDim2.new(0.5, -70, 0, 380)
teleportForwardButton.Text = "Teleport Forward"
teleportForwardButton.BackgroundColor3 = Color3.fromRGB(100, 149, 237)
teleportForwardButton.TextColor3 = Color3.fromRGB(255, 255, 255)
teleportForwardButton.Parent = scrollFrame

-- ÐÐ¾Ð±Ð°Ð²Ð»ÑÐµÐ¼ ÐºÐ½Ð¾Ð¿ÐºÑ Ð´Ð»Ñ ÑÐ¼ÐµÐ½Ñ Ð°Ð½Ð¸Ð¼Ð°ÑÐ¸Ð¸
changeAnimationButton.Size = UDim2.new(0, 140, 0, 50)
changeAnimationButton.Position = UDim2.new(0.5, -70, 0, 440)
changeAnimationButton.Text = "Change Animation"
changeAnimationButton.BackgroundColor3 = Color3.fromRGB(100, 149, 237)
changeAnimationButton.TextColor3 = Color3.fromRGB(255, 255, 255)
changeAnimationButton.Parent = scrollFrame

speedLabel.Size = UDim2.new(0, 200, 0, 50)
speedLabel.Position = UDim2.new(0.5, -100, 0, 500)
speedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
speedLabel.BackgroundTransparency = 1
speedLabel.Text = "Speed: 0"
speedLabel.Parent = scrollFrame

local camera = workspace.CurrentCamera
local defaultCameraSubject = camera.CameraSubject
local freeCameraEnabled = false
local noClipEnabled = false
local freeCameraPart = Instance.new("Part")
freeCameraPart.Size = Vector3.new(1, 1, 1)
freeCameraPart.Anchored = true
freeCameraPart.CanCollide = false
freeCameraPart.Transparency = 1
freeCameraPart.Parent = workspace

-- ÐÐ½Ð¸Ð¼Ð°ÑÐ¸Ñ
local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://" .. animationId
local animTrack

-- ÐÐ¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿ÐµÑÐµÐ¼ÐµÑÐµÐ½Ð¸Ñ GUI
local dragging
local dragInput, dragStart, startPos

local function updateInput(input)
	local delta = input.Position - dragStart
	frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

local function onDragBegin(input)
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
end

local function onDrag(input)
	if dragging then
		updateInput(input)
	end
end

frame.InputBegan:Connect(onDragBegin)
frame.InputChanged:Connect(onDrag)

closeButton.MouseButton1Click:Connect(function()
	frame.Visible = false
end)

speedButton.MouseButton1Click:Connect(function()
	local character = game.Players.LocalPlayer.Character
	if character then
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid.WalkSpeed = 100
			speedLabel.Text = "Speed: 100"
		end
	end
end)

speed16Button.MouseButton1Click:Connect(function()
	local character = game.Players.LocalPlayer.Character
	if character then
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid.WalkSpeed = 16
			speedLabel.Text = "Speed: 16"
		end
	end
end)

toggleCameraButton.MouseButton1Click:Connect(function()
	freeCameraEnabled = not freeCameraEnabled
	if freeCameraEnabled then
		camera.CameraSubject = freeCameraPart
		camera.CameraType = Enum.CameraType.Scriptable
		toggleCameraButton.Text = "Normal Camera"
	else
		camera.CameraSubject = defaultCameraSubject
		camera.CameraType = Enum.CameraType.Custom
		toggleCameraButton.Text = "Free Camera"
	end
end)

noClipButton.MouseButton1Click:Connect(function()
	noClipEnabled = not noClipEnabled
	local character = game.Players.LocalPlayer.Character
	if character then
		for _, part in ipairs(character:GetChildren()) do
			if part:IsA("BasePart") then
				part.CanCollide = not noClipEnabled
			end
		end
	end
	noClipButton.Text = noClipEnabled and "No Clip: On" or "No Clip: Off"
end)

teleportButton.MouseButton1Click:Connect(function()
	local character = game.Players.LocalPlayer.Character
	if character then
		local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
		if humanoidRootPart then
			humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 100, 0)
		end
	end
end)

teleportForwardButton.MouseButton1Click:Connect(function()
	local character = game.Players.LocalPlayer.Character
	if character then
		local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
		if humanoidRootPart then
			humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 0, -100)
		end
	end
end)

-- ÐÐ¾Ð³Ð¸ÐºÐ° Ð´Ð»Ñ Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ñ Ð°Ð½Ð¸Ð¼Ð°ÑÐ¸Ð¸
changeAnimationButton.MouseButton1Click:Connect(function()
	local character = game.Players.LocalPlayer.Character
	if character then
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			if animTrack then
				animTrack:Stop()
			end
			animTrack = humanoid:LoadAnimation(animation)
			animTrack:Play()
		end
	end
end)

local function updateSpeedLabel()
	local character = game.Players.LocalPlayer.Character
	if character then
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			speedLabel.Text = "Speed: " .. humanoid.WalkSpeed
		end
	end
end

game:GetService("RunService").RenderStepped:Connect(updateSpeedLabel)