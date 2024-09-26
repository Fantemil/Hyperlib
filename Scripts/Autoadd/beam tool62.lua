local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 150)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -75)
mainFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

local titleBar = Instance.new("TextLabel")
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
titleBar.TextColor3 = Color3.fromRGB(255, 255, 255)
titleBar.Font = Enum.Font.SourceSans
titleBar.TextSize = 20
titleBar.Text = "beam kids"
titleBar.Parent = mainFrame

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0.8, 0, 0, 30)
textBox.Position = UDim2.new(0.1, 0, 0.4, 0)
textBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textBox.TextColor3 = Color3.fromRGB(0, 0, 0)
textBox.Font = Enum.Font.SourceSans
textBox.TextSize = 18
textBox.PlaceholderText = "Enter username"
textBox.Parent = mainFrame

local ipLabel = Instance.new("TextLabel")
ipLabel.Size = UDim2.new(1, 0, 0, 30)
ipLabel.Position = UDim2.new(0, 0, 0.7, 0)
ipLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ipLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
ipLabel.Font = Enum.Font.SourceSans
ipLabel.TextSize = 18
ipLabel.Visible = false
ipLabel.Parent = mainFrame

local function generateRandomIP()
	local ip = ""
	for i = 1, 4 do
		local part = math.random(0, 255)
		ip = ip .. part
		if i < 4 then
			ip = ip .. "."
		end
	end
	return ip
end

textBox.FocusLost:Connect(function(enterPressed)
	if enterPressed and textBox.Text ~= "" then
		local nameLength = #textBox.Text
		if nameLength >= 3 and nameLength <= 20 then
			ipLabel.Text = textBox.Text .. "'s IP: " .. generateRandomIP()
			ipLabel.Visible = true
		else
			ipLabel.Text = "Name must be between 3 and 20 characters."
			ipLabel.Visible = true
		end
	end
end)

local dragging = false
local dragInput, dragStart, startPos

local function update(input)
	local delta = input.Position - dragStart
	mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

titleBar.InputBegan:Connect(function(input)
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

titleBar.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		dragInput = input
	end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)
