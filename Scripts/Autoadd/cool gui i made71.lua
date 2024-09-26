local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "'' ur hacking'' gui"
screenGui.Parent = playerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.3, 0, 0.6, 0)
frame.Position = UDim2.new(0.35, 0, 0.2, 0)
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frame.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0.2, 0)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
title.Text = "''UR HAKINGGGGGGG'' gui"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 24
title.Parent = frame

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

title.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
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

title.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)

local function createButton(name, position)
	local button = Instance.new("TextButton")
	button.Size = UDim2.new(0.8, 0, 0.2, 0)
	button.Position = UDim2.new(0.1, 0, position, 0)
	button.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
	button.Text = name
	button.TextColor3 = Color3.fromRGB(255, 255, 255)
	button.Font = Enum.Font.SourceSansBold
	button.TextSize = 20
	button.Parent = frame
	return button
end

local speedButton = createButton("Super Speed", 0.2)
local jumpButton = createButton("Infinite Jump", 0.4)
local noclipButton = createButton("Noclip (very buggy)", 0.6)
local explosionButton = createButton("explode", 0.8)
local printButton = createButton("potentially crash people", 1.0)

local function giveSuperSpeed()
	local character = player.Character
	if character and character:FindFirstChildOfClass("Humanoid") then
		character:FindFirstChildOfClass("Humanoid").WalkSpeed = 100
	end
end

local function enableInfiniteJump()
	local UIS = game:GetService("UserInputService")
	UIS.JumpRequest:Connect(function()
		if player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
			player.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
		end
	end)
end

local function enableNoclip()
	local character = player.Character
	if character then
		for _, part in pairs(character:GetDescendants()) do
			if part:IsA("BasePart") then
				part.CanCollide = false
			end
		end
	end
end

local function createExplosion() 
	local character = player.Character
	if character and character.PrimaryPart then
		local explosion = Instance.new("Explosion")
		explosion.Position = character.PrimaryPart.Position
		explosion.BlastPressure = 5000
		explosion.Parent = workspace
	else
		print("Character or PrimaryPart not found")
	end
end

local function printE()
	while true do
		print("e")
		end
end

speedButton.MouseButton1Click:Connect(giveSuperSpeed)
jumpButton.MouseButton1Click:Connect(enableInfiniteJump)
noclipButton.MouseButton1Click:Connect(enableNoclip)
explosionButton.MouseButton1Click:Connect(createExplosion)
printButton.MouseButton1Click:Connect(printE)

player.CharacterAdded:Connect(function(character)
	character:WaitForChild("Humanoid").WalkSpeed = 16
end)
