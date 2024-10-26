local Executor = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local CodeBox = Instance.new("TextBox")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")
local TextButton_4 = Instance.new("TextButton")
local ImageLabel_2 = Instance.new("ImageLabel")
local TextButton_5 = Instance.new("TextButton")
local ImageLabel_3 = Instance.new("ImageLabel")
local TextButton_6 = Instance.new("TextButton")
local ImageLabel_4 = Instance.new("ImageLabel")

--Properties:

Executor.Name = "Executor"
Executor.Parent = game.CoreGui
Executor.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Executor
Main.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.199156329, 0, 0.268467844, 0)
Main.Size = UDim2.new(0, 578, 0, 334)

Frame.Parent = Main
Frame.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.800894439, 0, 0.158397019, 0)
Frame.Size = UDim2.new(0, 101, 0, 229)

UICorner.Parent = Main

CodeBox.Name = "CodeBox"
CodeBox.Parent = Main
CodeBox.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
CodeBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
CodeBox.BorderSizePixel = 0
CodeBox.Position = UDim2.new(0.0224913489, 0, 0.155688629, 0)
CodeBox.Size = UDim2.new(0, 440, 0, 229)
CodeBox.Font = Enum.Font.Code
CodeBox.PlaceholderText = "-- Electron"
CodeBox.Text = ""
CodeBox.TextColor3 = Color3.fromRGB(255, 101, 62)
CodeBox.TextSize = 14.000
CodeBox.TextWrapped = true
CodeBox.TextXAlignment = Enum.TextXAlignment.Left
CodeBox.TextYAlignment = Enum.TextYAlignment.Top

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.0380622819, 0, 0.0179640725, 0)
TextLabel.Size = UDim2.new(0, 229, 0, 38)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "ELECTRON"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton.Parent = Main
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.910034597, 0, 0.00898203626, 0)
TextButton.Size = UDim2.new(0, 52, 0, 44)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton_2.Parent = Main
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BackgroundTransparency = 1.000
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.832179904, 0, 0.00898203626, 0)
TextButton_2.Size = UDim2.new(0, 52, 0, 44)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "_"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

TextButton_3.Parent = Main
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.BackgroundTransparency = 1.000
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.0380622819, 0, 0.886227548, 0)
TextButton_3.Size = UDim2.new(0, 103, 0, 24)
TextButton_3.Font = Enum.Font.Code
TextButton_3.Text = "Execute"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

ImageLabel.Parent = TextButton_3
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(-0.155339807, 0, 0, 0)
ImageLabel.Size = UDim2.new(0, 27, 0, 24)
ImageLabel.Image = "rbxassetid://3173271667"

TextButton_4.Parent = Main
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.BackgroundTransparency = 1.000
TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.231833905, 0, 0.886227548, 0)
TextButton_4.Size = UDim2.new(0, 103, 0, 24)
TextButton_4.Font = Enum.Font.Code
TextButton_4.Text = "Clear"
TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14.000
TextButton_4.TextWrapped = true

ImageLabel_2.Parent = TextButton_4
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(-0.0873786435, 0, 0, 0)
ImageLabel_2.Size = UDim2.new(0, 27, 0, 24)
ImageLabel_2.Image = "rbxassetid://9348208337"

TextButton_5.Parent = Main
TextButton_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_5.BackgroundTransparency = 1.000
TextButton_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.BorderSizePixel = 0
TextButton_5.Position = UDim2.new(0.39100346, 0, 0.886227548, 0)
TextButton_5.Size = UDim2.new(0, 103, 0, 24)
TextButton_5.Font = Enum.Font.Code
TextButton_5.Text = "Open"
TextButton_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_5.TextScaled = true
TextButton_5.TextSize = 14.000
TextButton_5.TextWrapped = true

ImageLabel_3.Parent = TextButton_5
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.BackgroundTransparency = 1.000
ImageLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_3.BorderSizePixel = 0
ImageLabel_3.Position = UDim2.new(-0.00970873795, 0, 0, 0)
ImageLabel_3.Size = UDim2.new(0, 27, 0, 24)
ImageLabel_3.Image = "rbxassetid://13579395178"

TextButton_6.Parent = Main
TextButton_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_6.BackgroundTransparency = 1.000
TextButton_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.BorderSizePixel = 0
TextButton_6.Position = UDim2.new(0.558823586, 0, 0.886227548, 0)
TextButton_6.Size = UDim2.new(0, 103, 0, 24)
TextButton_6.Font = Enum.Font.Code
TextButton_6.Text = "Attach"
TextButton_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_6.TextScaled = true
TextButton_6.TextSize = 14.000
TextButton_6.TextWrapped = true

ImageLabel_4.Parent = TextButton_6
ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_4.BackgroundTransparency = 1.000
ImageLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_4.BorderSizePixel = 0
ImageLabel_4.Position = UDim2.new(-0.126213595, 0, 0, 0)
ImageLabel_4.Rotation = 90.000
ImageLabel_4.Size = UDim2.new(0, 27, 0, 24)
ImageLabel_4.Image = "rbxassetid://846181795"

-- Scripts:

local function PYWLHG_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local screenGui = script.Parent.Parent.Parent
	
	local function destroyGui()
		screenGui:Destroy()
	end
	
	script.Parent.MouseButton1Click:Connect(destroyGui)
end
coroutine.wrap(PYWLHG_fake_script)()
local function JEPKG_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextButton_3)

	local textBox = script.Parent.Parent:WaitForChild("CodeBox")
	
	local function executeScript()
		local scriptText = textBox.Text
		if scriptText and scriptText ~= "" then
			local success, result = pcall(function() return loadstring(scriptText)() end)
			if not success then
				warn("Error executing script: " .. result)
			end
		end
	end
	
	script.Parent.MouseButton1Click:Connect(executeScript)
end
coroutine.wrap(JEPKG_fake_script)()
local function UCANVE_fake_script() -- TextButton_4.LocalScript 
	local script = Instance.new('LocalScript', TextButton_4)

	local textBox = script.Parent.Parent:WaitForChild("CodeBox")
	
	local function clearTextBox()
		textBox.Text = ""
	end
	
	script.Parent.MouseButton1Click:Connect(clearTextBox)
end
coroutine.wrap(UCANVE_fake_script)()
local function IHTT_fake_script() -- Main.DraggableGUI 
	local script = Instance.new('LocalScript', Main)

	-- LocalScript for draggable GUI element
	
	local userInputService = game:GetService("UserInputService")
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
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
	
	userInputService.InputChanged:Connect(function(input)
		if dragging and input == dragInput then
			update(input)
		end
	end)
end
coroutine.wrap(IHTT_fake_script)()