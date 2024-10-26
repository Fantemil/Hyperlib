local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 260, 0, 160)
mainFrame.Position = UDim2.new(0.5, -130, 0.4, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
mainFrame.BorderSizePixel = 0
mainFrame.BackgroundTransparency = 0.1
mainFrame.Parent = screenGui

local mainUICorner = Instance.new("UICorner")
mainUICorner.CornerRadius = UDim.new(0, 10)
mainUICorner.Parent = mainFrame

local mainUIStroke = Instance.new("UIStroke")
mainUIStroke.Color = Color3.fromRGB(70, 70, 70)
mainUIStroke.Thickness = 1.5
mainUIStroke.Parent = mainFrame

local topBar = Instance.new("Frame")
topBar.Size = UDim2.new(1, 0, 0, 30)
topBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
topBar.BorderSizePixel = 0
topBar.Parent = mainFrame

local topBarUICorner = Instance.new("UICorner")
topBarUICorner.CornerRadius = UDim.new(0, 10)
topBarUICorner.Parent = topBar

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 1, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Spin Speed Controller"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 18
titleLabel.Parent = topBar

local dragging, dragInput, dragStart, startPos

local function updateInput(input)
	local delta = input.Position - dragStart
	mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

topBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = mainFrame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

topBar.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		dragInput = input
	end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		updateInput(input)
	end
end)

local speedInput = Instance.new("TextBox")
speedInput.Size = UDim2.new(0, 220, 0, 40)
speedInput.Position = UDim2.new(0.5, -110, 0.4, 0)
speedInput.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
speedInput.TextColor3 = Color3.fromRGB(255, 255, 255)
speedInput.PlaceholderText = "Enter Spin Speed"
speedInput.Font = Enum.Font.Gotham
speedInput.TextSize = 18
speedInput.Parent = mainFrame

local speedInputUICorner = Instance.new("UICorner")
speedInputUICorner.CornerRadius = UDim.new(0, 8)
speedInputUICorner.Parent = speedInput

local submitButton = Instance.new("TextButton")
submitButton.Size = UDim2.new(0, 220, 0, 40)
submitButton.Position = UDim2.new(0.5, -110, 0.7, 0)
submitButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
submitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
submitButton.Text = "Submit"
submitButton.Font = Enum.Font.GothamBold
submitButton.TextSize = 18
submitButton.Parent = mainFrame

local submitButtonUICorner = Instance.new("UICorner")
submitButtonUICorner.CornerRadius = UDim.new(0, 8)
submitButtonUICorner.Parent = submitButton

local spinning = false
local spinSpeed = 0

submitButton.MouseButton1Click:Connect(function()
	spinSpeed = tonumber(speedInput.Text) or 0
	if spinSpeed > 0 then
		spinning = true
	end
end)

game:GetService("RunService").RenderStepped:Connect(function()
	if spinning and character and character:FindFirstChild("HumanoidRootPart") then
		character.HumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(spinSpeed), 0)
	end
end)
