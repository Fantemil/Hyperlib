local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local DragText = Instance.new("TextLabel")
local FlyButton = Instance.new("TextButton")
local SpeedInput = Instance.new("TextBox")
local SpeedButton = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.5, -100, 0.5, -75)
Frame.Size = UDim2.new(0, 200, 0, 150)

TopBar.Parent = Frame
TopBar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TopBar.Size = UDim2.new(1, 0, 0.2, 0)

DragText.Parent = TopBar
DragText.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DragText.BackgroundTransparency = 1
DragText.Size = UDim2.new(1, 0, 1, 0)
DragText.Font = Enum.Font.SourceSans
DragText.Text = "Drag the black spot"
DragText.TextColor3 = Color3.fromRGB(255, 255, 255)
DragText.TextSize = 14

FlyButton.Parent = Frame
FlyButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
FlyButton.Position = UDim2.new(0.1, 0, 0.25, 0)
FlyButton.Size = UDim2.new(0.8, 0, 0.2, 0)
FlyButton.Font = Enum.Font.SourceSans
FlyButton.Text = "Infinite Jump"
FlyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FlyButton.TextSize = 24

SpeedInput.Parent = Frame
SpeedInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpeedInput.Position = UDim2.new(0.1, 0, 0.5, 0)
SpeedInput.Size = UDim2.new(0.8, 0, 0.1, 0)
SpeedInput.Font = Enum.Font.SourceSans
SpeedInput.PlaceholderText = "Enter Speed"
SpeedInput.Text = ""
SpeedInput.TextColor3 = Color3.fromRGB(0, 0, 0)
SpeedInput.TextSize = 18

SpeedButton.Parent = Frame
SpeedButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
SpeedButton.Position = UDim2.new(0.1, 0, 0.65, 0)
SpeedButton.Size = UDim2.new(0.8, 0, 0.2, 0)
SpeedButton.Font = Enum.Font.SourceSans
SpeedButton.Text = "Set Super Speed"
SpeedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedButton.TextSize = 24

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

TopBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = Frame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

TopBar.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)

FlyButton.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local mouse = player:GetMouse()

	mouse.KeyDown:Connect(function(key)
		if key == " " then
			player.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
		end
	end)
end)

SpeedButton.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local speed = tonumber(SpeedInput.Text)