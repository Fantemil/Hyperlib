--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- Ð¡Ð¾Ð·Ð´Ð°ÐµÐ¼ ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.Name = "PasswordGui"

-- Ð¡Ð¾Ð·Ð´Ð°ÐµÐ¼ Ð¾ÑÐ½Ð¾Ð²Ð½Ð¾Ð¹ ÑÑÐµÐ¹Ð¼ Ð´Ð»Ñ Ð²Ð²Ð¾Ð´Ð° Ð¿Ð°ÑÐ¾Ð»Ñ
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 250)  -- Ð Ð°Ð·Ð¼ÐµÑ ÑÑÐµÐ¹Ð¼Ð°
frame.Position = UDim2.new(0.5, -150, 0.5, -125)  -- Ð¦ÐµÐ½ÑÑÐ¸ÑÑÐµÐ¼ ÑÑÐµÐ¹Ð¼
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)  -- Ð¢ÐµÐ¼Ð½ÑÐ¹ ÑÐ¾Ð½
frame.BorderSizePixel = 2
frame.BorderColor3 = Color3.fromRGB(255, 0, 0)  -- ÐÑÐ°ÑÐ½Ð°Ñ ÑÐ°Ð¼ÐºÐ°
frame.Parent = screenGui

-- Ð¡Ð¾Ð·Ð´Ð°ÐµÐ¼ Ð¼ÐµÑÐºÑ Ð´Ð»Ñ Ð²Ð²Ð¾Ð´Ð° Ð¿Ð°ÑÐ¾Ð»Ñ
local passwordLabel = Instance.new("TextLabel")
passwordLabel.Size = UDim2.new(1, 0, 0, 40)
passwordLabel.Position = UDim2.new(0, 0, 0, 10)
passwordLabel.Text = "password here:"
passwordLabel.TextSize = 20
passwordLabel.Font = Enum.Font.GothamBold
passwordLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
passwordLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
passwordLabel.Parent = frame

-- Ð¡Ð¾Ð·Ð´Ð°ÐµÐ¼ Ð¿Ð¾Ð»Ðµ Ð´Ð»Ñ Ð²Ð²Ð¾Ð´Ð° Ð¿Ð°ÑÐ¾Ð»Ñ
local passwordBox = Instance.new("TextBox")
passwordBox.Size = UDim2.new(1, 0, 0, 40)
passwordBox.Position = UDim2.new(0, 0, 0, 60)
passwordBox.PlaceholderText = "password"
passwordBox.TextSize = 20
passwordBox.Font = Enum.Font.GothamBold
passwordBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  -- ÐÐµÐ»ÑÐ¹ ÑÐ¾Ð½
passwordBox.TextColor3 = Color3.fromRGB(0, 0, 0)  -- Ð§ÐµÑÐ½ÑÐ¹ ÑÐµÐºÑÑ
passwordBox.Parent = frame

-- Ð¡Ð¾Ð·Ð´Ð°ÐµÐ¼ ÐºÐ½Ð¾Ð¿ÐºÑ Ð´Ð»Ñ Ð¿Ð¾Ð´ÑÐ²ÐµÑÐ¶Ð´ÐµÐ½Ð¸Ñ
local confirmButton = Instance.new("TextButton")
confirmButton.Size = UDim2.new(1, 0, 0, 40)
confirmButton.Position = UDim2.new(0, 0, 0, 110)
confirmButton.Text = "confirm"
confirmButton.TextSize = 20
confirmButton.Font = Enum.Font.GothamBold
confirmButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- ÐÑÐ°ÑÐ½ÑÐ¹ ÑÐ²ÐµÑ ÐºÐ½Ð¾Ð¿ÐºÐ¸
confirmButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- ÐÐµÐ»ÑÐ¹ ÑÐµÐºÑÑ
confirmButton.Parent = frame

-- Ð£ÑÑÐ°Ð½Ð°Ð²Ð»Ð¸Ð²Ð°ÐµÐ¼ Ð¿ÑÐ°Ð²Ð¸Ð»ÑÐ½ÑÐ¹ Ð¿Ð°ÑÐ¾Ð»Ñ
local correctPassword = "KEY_34521"

-- Ð¡Ð¾Ð·Ð´Ð°ÐµÐ¼ Ð¼ÐµÑÐºÑ Ð´Ð»Ñ ÑÑÑÐ»ÐºÐ¸
local linkLabel = Instance.new("TextLabel")
linkLabel.Size = UDim2.new(1, 0, 0, 40)
linkLabel.Position = UDim2.new(0, 0, 0, 160)
linkLabel.Text = "link to get key:"
linkLabel.TextSize = 20
linkLabel.Font = Enum.Font.GothamBold
linkLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
linkLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
linkLabel.Parent = frame

-- Ð¡Ð¾Ð·Ð´Ð°ÐµÐ¼ ÑÐµÐºÑÑÐ¾Ð²Ð¾Ðµ Ð¿Ð¾Ð»Ðµ Ð´Ð»Ñ ÑÑÑÐ»ÐºÐ¸
local linkBox = Instance.new("TextBox")
linkBox.Size = UDim2.new(1, 0, 0, 40)
linkBox.Position = UDim2.new(0, 0, 0, 200)
linkBox.Text = "https://link-hub.net/1235817/opadminscript "
linkBox.TextSize = 20
linkBox.Font = Enum.Font.GothamBold
linkBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  -- ÐÐµÐ»ÑÐ¹ ÑÐ¾Ð½
linkBox.TextColor3 = Color3.fromRGB(0, 0, 0)  -- Ð§ÐµÑÐ½ÑÐ¹ ÑÐµÐºÑÑ
linkBox.Parent = frame
linkBox.ClearTextOnFocus = false  -- ÐÐµ Ð¾ÑÐ¸ÑÐ°ÑÑ ÑÐµÐºÑÑ Ð¿ÑÐ¸ ÑÐ¾ÐºÑÑÐµ

-- Ð¡Ð¾Ð·Ð´Ð°ÐµÐ¼ ÐºÐ½Ð¾Ð¿ÐºÑ Ð´Ð»Ñ ÐºÐ¾Ð¿Ð¸ÑÐ¾Ð²Ð°Ð½Ð¸Ñ ÑÑÑÐ»ÐºÐ¸
local copyButton = Instance.new("TextButton")
copyButton.Size = UDim2.new(1, 0, 0, 40)
copyButton.Position = UDim2.new(0, 0, 0, 250)
copyButton.Text = "copy link"
copyButton.TextSize = 20
copyButton.Font = Enum.Font.GothamBold
copyButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)  -- ÐÐµÐ»ÐµÐ½ÑÐ¹ ÑÐ²ÐµÑ ÐºÐ½Ð¾Ð¿ÐºÐ¸
copyButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- ÐÐµÐ»ÑÐ¹ ÑÐµÐºÑÑ
copyButton.Parent = frame
copyButton.Visible = false  -- Ð¡ÐºÑÑÐ²Ð°ÐµÐ¼ ÐºÐ½Ð¾Ð¿ÐºÑ Ð´Ð¾ Ð²Ð²Ð¾Ð´Ð° Ð¿ÑÐ°Ð²Ð¸Ð»ÑÐ½Ð¾Ð³Ð¾ Ð¿Ð°ÑÐ¾Ð»Ñ

-- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ Ð¿ÑÐ¾Ð²ÐµÑÐºÐ¸ Ð¿Ð°ÑÐ¾Ð»Ñ
local function checkPassword()
	if passwordBox.Text == correctPassword then
		frame.Visible = false  -- Ð¡ÐºÑÑÐ²Ð°ÐµÐ¼ GUI
		linkBox.Visible = true  -- ÐÐ¾ÐºÐ°Ð·ÑÐ²Ð°ÐµÐ¼ ÑÐµÐºÑÑÐ¾Ð²Ð¾Ðµ Ð¿Ð¾Ð»Ðµ Ñ ÑÑÑÐ»ÐºÐ¾Ð¹
		copyButton.Visible = true  -- ÐÐ¾ÐºÐ°Ð·ÑÐ²Ð°ÐµÐ¼ ÐºÐ½Ð¾Ð¿ÐºÑ Ð´Ð»Ñ ÐºÐ¾Ð¿Ð¸ÑÐ¾Ð²Ð°Ð½Ð¸Ñ ÑÑÑÐ»ÐºÐ¸
		-- Ð¡Ð¾Ð·Ð´Ð°ÐµÐ¼ ScreenGui
		local screenGui = Instance.new("ScreenGui")
		screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
		screenGui.Name = "AdminMenu"

		-- Ð¡Ð¾Ð·Ð´Ð°ÐµÐ¼ Ð¾ÑÐ½Ð¾Ð²Ð½Ð¾Ð¹ ÑÑÐµÐ¹Ð¼ Ð´Ð»Ñ Ð¼ÐµÐ½Ñ (ÐºÐ²Ð°Ð´ÑÐ°Ñ)
		local frame = Instance.new("Frame")
		frame.Size = UDim2.new(0, 70, 0, 70)  -- Ð Ð°Ð·Ð¼ÐµÑ ÐºÐ²Ð°Ð´ÑÐ°ÑÐ°
		frame.Position = UDim2.new(0, 10, 0, 10)
		frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)  -- Ð§ÐµÑÐ½ÑÐ¹ ÑÐ¾Ð½
		frame.BorderSizePixel = 2  -- Ð Ð°Ð¼ÐºÐ°
		frame.BorderColor3 = Color3.fromRGB(255, 0, 0)  -- ÐÑÐ°ÑÐ½Ð°Ñ ÑÐ°Ð¼ÐºÐ°
		frame.Parent = screenGui

		-- ÐÐµÑÐµÑÐ°ÑÐºÐ¸Ð²Ð°Ð½Ð¸Ðµ GUI
		local dragging = false
		local dragInput, startPos, startPosFrame

		frame.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				dragging = true
				dragInput = input
				startPos = input.Position
				startPosFrame = frame.Position
			end
		end)

		frame.InputChanged:Connect(function(input)
			if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
				local delta = input.Position - startPos
				frame.Position = UDim2.new(startPosFrame.X.Scale, startPosFrame.X.Offset + delta.X,
					startPosFrame.Y.Scale, startPosFrame.Y.Offset + delta.Y)
			end
		end)

		frame.InputEnded:Connect(function(input)
			if input == dragInput then
				dragging = false
			end
		end)

		-- Ð¡Ð¾Ð·Ð´Ð°ÐµÐ¼ ÐºÐ½Ð¾Ð¿ÐºÑ Ð´Ð»Ñ ÑÐ°ÑÐºÑÑÑÐ¸Ñ Ð¼ÐµÐ½Ñ
		local toggleButton = Instance.new("TextButton")
		toggleButton.Size = UDim2.new(1, 0, 1, 0)
		toggleButton.Text = "s"  -- ÐÐºÐ¾Ð½ÐºÐ° Ð¼ÐµÐ½Ñ
		toggleButton.TextSize = 26
		toggleButton.Font = Enum.Font.GothamBold
		toggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- ÐÑÐ°ÑÐ½ÑÐ¹ ÑÐ²ÐµÑ ÐºÐ½Ð¾Ð¿ÐºÐ¸
		toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- ÐÐµÐ»ÑÐ¹ ÑÐµÐºÑÑ
		toggleButton.Parent = frame

		-- Ð¡Ð¾Ð·Ð´Ð°ÐµÐ¼ ÑÑÐµÐ¹Ð¼ Ð´Ð»Ñ ÑÐºÑÑÑÐ¾Ð³Ð¾ Ð¼ÐµÐ½Ñ
		local hiddenFrame = Instance.new("Frame")
		hiddenFrame.Size = UDim2.new(0, 200, 0, 300)
		hiddenFrame.Position = UDim2.new(0, 0, 1, 5)
		hiddenFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)  -- Ð¢ÐµÐ¼Ð½ÑÐ¹ ÑÐ¾Ð½
		hiddenFrame.BorderSizePixel = 2  -- Ð Ð°Ð¼ÐºÐ° Ð´Ð»Ñ ÑÐºÑÑÑÐ¾Ð³Ð¾ Ð¼ÐµÐ½Ñ
		hiddenFrame.BorderColor3 = Color3.fromRGB(255, 0, 0)  -- ÐÑÐ°ÑÐ½Ð°Ñ ÑÐ°Ð¼ÐºÐ°
		hiddenFrame.Visible = false  -- ÐÐµÐ½Ñ ÑÐºÑÑÑÐ¾ Ð¿Ð¾ ÑÐ¼Ð¾Ð»ÑÐ°Ð½Ð¸Ñ
		hiddenFrame.Parent = frame

		-- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ Ð¾ÑÐºÑÑÑÐ¸Ñ/Ð·Ð°ÐºÑÑÑÐ¸Ñ ÑÐºÑÑÑÐ¾Ð³Ð¾ Ð¼ÐµÐ½Ñ
		local function toggleMenu()
			hiddenFrame.Visible = not hiddenFrame.Visible
			toggleButton.Text = hiddenFrame.Visible and "Â§" or "s"  -- ÐÐµÐ½ÑÐµÐ¼ Ð¸ÐºÐ¾Ð½ÐºÑ Ð½Ð° Ð·Ð°ÐºÑÑÑÐ¸Ðµ Ð¸Ð»Ð¸ Ð¾ÑÐºÑÑÑÐ¸Ðµ
		end

		toggleButton.MouseButton1Click:Connect(toggleMenu)

		-- Ð¡Ð¾Ð·Ð´Ð°ÐµÐ¼ ÐºÐ½Ð¾Ð¿ÐºÑ Ð´Ð»Ñ Ð²ÐºÐ»ÑÑÐµÐ½Ð¸Ñ/Ð²ÑÐºÐ»ÑÑÐµÐ½Ð¸Ñ ÐºÐ»Ð¸Ð¿Ð°
		local clipButton = Instance.new("TextButton")
		clipButton.Size = UDim2.new(0, 180, 0, 40)
		clipButton.Position = UDim2.new(0, 10, 0, 10)
		clipButton.Text = "Toggle Clip"
		clipButton.TextSize = 20
		clipButton.Font = Enum.Font.GothamBold
		clipButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- ÐÑÐ°ÑÐ½ÑÐ¹ ÑÐ²ÐµÑ ÐºÐ½Ð¾Ð¿ÐºÐ¸
		clipButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- ÐÐµÐ»ÑÐ¹ ÑÐµÐºÑÑ
		clipButton.Parent = hiddenFrame

		-- Ð¡Ð¾Ð·Ð´Ð°ÐµÐ¼ ÐºÐ½Ð¾Ð¿ÐºÑ Ð´Ð»Ñ ÑÑÐ¿ÐµÑÑÐºÐ¾ÑÐ¾ÑÑÐ¸
		local speedButton = Instance.new("TextButton")
		speedButton.Size = UDim2.new(0, 180, 0, 40)
		speedButton.Position = UDim2.new(0, 10, 0, 60)
		speedButton.Text = "Toggle Speed"
		speedButton.TextSize = 20
		speedButton.Font = Enum.Font.GothamBold
		speedButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- ÐÑÐ°ÑÐ½ÑÐ¹ ÑÐ²ÐµÑ ÐºÐ½Ð¾Ð¿ÐºÐ¸
		speedButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- ÐÐµÐ»ÑÐ¹ ÑÐµÐºÑÑ
		speedButton.Parent = hiddenFrame

		-- Ð¡Ð¾Ð·Ð´Ð°ÐµÐ¼ ÑÐµÐºÑÑÐ¾Ð²Ð¾Ðµ Ð¿Ð¾Ð»Ðµ Ð´Ð»Ñ Ð²Ð²Ð¾Ð´Ð° Ð½Ð¸ÐºÐ°
		local textBox = Instance.new("TextBox")
		textBox.Size = UDim2.new(0, 180, 0, 40)
		textBox.Position = UDim2.new(0, 10, 0, 110)
		textBox.PlaceholderText = "Enter Player Name"
		textBox.TextSize = 20
		textBox.Font = Enum.Font.GothamBold
		textBox.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- ÐÑÐ°ÑÐ½ÑÐ¹ ÑÐ²ÐµÑ Ð¿Ð¾Ð»Ñ
		textBox.TextColor3 = Color3.fromRGB(255, 255, 255)  -- ÐÐµÐ»ÑÐ¹ ÑÐµÐºÑÑ
		textBox.Parent = hiddenFrame

		-- Ð¡Ð¾Ð·Ð´Ð°ÐµÐ¼ ÐºÐ½Ð¾Ð¿ÐºÑ Ð´Ð»Ñ ÑÐµÐ»ÐµÐ¿Ð¾ÑÑÐ°ÑÐ¸Ð¸ Ðº Ð¸Ð³ÑÐ¾ÐºÑ
		local tpButton = Instance.new("TextButton")
		tpButton.Size = UDim2.new(0, 180, 0, 40)
		tpButton.Position = UDim2.new(0, 10, 0, 160)
		tpButton.Text = "TP to Player"
		tpButton.TextSize = 20
		tpButton.Font = Enum.Font.GothamBold
		tpButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- ÐÑÐ°ÑÐ½ÑÐ¹ ÑÐ²ÐµÑ ÐºÐ½Ð¾Ð¿ÐºÐ¸
		tpButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- ÐÐµÐ»ÑÐ¹ ÑÐµÐºÑÑ
		tpButton.Parent = hiddenFrame

		-- Ð¡Ð¾Ð·Ð´Ð°ÐµÐ¼ ÐºÐ½Ð¾Ð¿ÐºÑ Ð´Ð»Ñ ÑÐµÐ»ÐµÐ¿Ð¾ÑÑÐ°ÑÐ¸Ð¸ Ð¸Ð³ÑÐ¾ÐºÐ° Ðº ÑÐµÐ±Ðµ
		local tpToMeButton = Instance.new("TextButton")
		tpToMeButton.Size = UDim2.new(0, 180, 0, 40)
		tpToMeButton.Position = UDim2.new(0, 10, 0, 210)
		tpToMeButton.Text = "TP Player to Me"
		tpToMeButton.TextSize = 20
		tpToMeButton.Font = Enum.Font.GothamBold
		tpToMeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- ÐÑÐ°ÑÐ½ÑÐ¹ ÑÐ²ÐµÑ ÐºÐ½Ð¾Ð¿ÐºÐ¸
		tpToMeButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- ÐÐµÐ»ÑÐ¹ ÑÐµÐºÑÑ
		tpToMeButton.Parent = hiddenFrame

		-- Ð¡Ð¾Ð·Ð´Ð°ÐµÐ¼ ÐºÐ½Ð¾Ð¿ÐºÑ Ð´Ð»Ñ ÑÑÐµÐºÐ¸Ð½Ð³Ð° Ð¸Ð³ÑÐ¾ÐºÐ°
		local trackPlayerButton = Instance.new("TextButton")
		trackPlayerButton.Size = UDim2.new(0, 180, 0, 40)
		trackPlayerButton.Position = UDim2.new(0, 10, 0, 260)
		trackPlayerButton.Text = "Track Player"
		trackPlayerButton.TextSize = 20
		trackPlayerButton.Font = Enum.Font.GothamBold
		trackPlayerButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- ÐÑÐ°ÑÐ½ÑÐ¹ ÑÐ²ÐµÑ ÐºÐ½Ð¾Ð¿ÐºÐ¸
		trackPlayerButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- ÐÐµÐ»ÑÐ¹ ÑÐµÐºÑÑ
		trackPlayerButton.Parent = hiddenFrame

		-- ÐÐ¾Ð³Ð¸ÐºÐ° Ð´Ð»Ñ ÑÐµÐ»ÐµÐ¿Ð¾ÑÑÐ°ÑÐ¸Ð¸ Ðº Ð¸Ð³ÑÐ¾ÐºÑ Ð¿Ð¾ Ð½Ð¸ÐºÑ
		tpButton.MouseButton1Click:Connect(function()
			local playerName = textBox.Text
			local targetPlayer = game.Players:FindFirstChild(playerName)

			if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
				local humanoidRootPart = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
				local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
				character:SetPrimaryPartCFrame(humanoidRootPart.CFrame)
			else
				print("Player not found or has no HumanoidRootPart")
			end
		end)

		-- ÐÐ¾Ð³Ð¸ÐºÐ° Ð´Ð»Ñ ÑÐµÐ»ÐµÐ¿Ð¾ÑÑÐ°ÑÐ¸Ð¸ Ð¸Ð³ÑÐ¾ÐºÐ° Ðº ÑÐµÐ±Ðµ
		tpToMeButton.MouseButton1Click:Connect(function()
			local playerName = textBox.Text
			local targetPlayer = game.Players:FindFirstChild(playerName)
			local localPlayer = game.Players.LocalPlayer
			local localCharacter = localPlayer.Character or localPlayer.CharacterAdded:Wait()

			if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") and localCharacter and localCharacter:FindFirstChild("HumanoidRootPart") then
				local targetHRP = targetPlayer.Character.HumanoidRootPart
				local localHRP = localCharacter.HumanoidRootPart
				targetHRP.CFrame = localHRP.CFrame + Vector3.new(3, 0, 0)  -- Ð¢ÐµÐ»ÐµÐ¿Ð¾ÑÑÐ¸ÑÑÐµÐ¼ Ð¸Ð³ÑÐ¾ÐºÐ° ÑÑÐ´Ð¾Ð¼ Ñ ÑÐ¾Ð±Ð¾Ð¹
			else
				print("Player not found or has no HumanoidRootPart")
			end
		end)

		-- ÐÐ¾Ð³Ð¸ÐºÐ° Ð´Ð»Ñ ÑÑÐµÐºÐ¸Ð½Ð³Ð° Ð¸Ð³ÑÐ¾ÐºÐ°
		local tracking = false
		trackPlayerButton.MouseButton1Click:Connect(function()
			local playerName = textBox.Text
			local targetPlayer = game.Players:FindFirstChild(playerName)
			local localPlayer = game.Players.LocalPlayer
			local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()

			if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
				tracking = not tracking
				trackPlayerButton.Text = tracking and "Stop Tracking" or "Track Player"

				while tracking do
					local targetHRP = targetPlayer.Character.HumanoidRootPart
					character:SetPrimaryPartCFrame(targetHRP.CFrame)
					wait(0.1)  -- ÐÐ½ÑÐµÑÐ²Ð°Ð» Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ñ
				end
			else
				print("Player not found or has no HumanoidRootPart")
			end
		end)

		-- ÐÐ¾Ð³Ð¸ÐºÐ° Ð´Ð»Ñ ÐºÐ»Ð¸Ð¿Ð°
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local humanoid = character:WaitForChild("Humanoid")
		local isClipped = false

		clipButton.MouseButton1Click:Connect(function()
			isClipped = not isClipped
			for _, part in ipairs(character:GetChildren()) do
				if part:IsA("BasePart") then
					part.CanCollide = not isClipped  -- ÐÐºÐ»ÑÑÐ°ÐµÐ¼ Ð¸Ð»Ð¸ Ð²ÑÐºÐ»ÑÑÐ°ÐµÐ¼ ÐºÐ»Ð¸Ð¿
				end
			end
			clipButton.Text = isClipped and "Clip: On" or "Clip: Off"
		end)

		-- ÐÐ¾Ð³Ð¸ÐºÐ° Ð´Ð»Ñ ÑÑÐ¿ÐµÑÑÐºÐ¾ÑÐ¾ÑÑÐ¸
		local speedActive = false
		local normalWalkSpeed = 16
		local superSpeed = 100

		speedButton.MouseButton1Click:Connect(function()
			speedActive = not speedActive
			humanoid.WalkSpeed = speedActive and superSpeed or normalWalkSpeed
			speedButton.Text = speedActive and "Speed: On" or "Speed: Off"
		end)  -- ÐÐ°Ð¼ÐµÐ½Ð¸ÑÐµ ÑÑÑ ÑÑÑÐ¾ÐºÑ Ð½Ð° ÑÐ²Ð¾Ð¹ ÐºÐ¾Ð´
	else
		passwordBox.Text = ""  -- ÐÑÐ¸ÑÐ°ÐµÐ¼ Ð¿Ð¾Ð»Ðµ Ð²Ð²Ð¾Ð´Ð°
		local errorMessage = Instance.new("TextLabel")
		errorMessage.Size = UDim2.new(1, 0, 0, 40)
		errorMessage.Position = UDim2.new(0, 0, 0, 160)
		errorMessage.Text = "ÐÐµÐ²ÐµÑÐ½ÑÐ¹ Ð¿Ð°ÑÐ¾Ð»Ñ!"
		errorMessage.TextSize = 20
		errorMessage.Font = Enum.Font.GothamBold
		errorMessage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		errorMessage.TextColor3 = Color3.fromRGB(255, 0, 0)  -- ÐÑÐ°ÑÐ½ÑÐ¹ ÑÐµÐºÑÑ
		errorMessage.Parent = frame

		wait(2)  -- ÐÐ´ÐµÐ¼ 2 ÑÐµÐºÑÐ½Ð´Ñ
		errorMessage:Destroy()  -- Ð£Ð´Ð°Ð»ÑÐµÐ¼ ÑÐ¾Ð¾Ð±ÑÐµÐ½Ð¸Ðµ Ð¾Ð± Ð¾ÑÐ¸Ð±ÐºÐµ
	end
end

confirmButton.MouseButton1Click:Connect(checkPassword)

-- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ Ð¾ÑÐ½Ð¾Ð²Ð½Ð¾Ð³Ð¾ ÐºÐ¾Ð´Ð°
local function runMainCode()
	-- ÐÐ´ÐµÑÑ ÑÐ°Ð·Ð¼ÐµÑÑÐ¸ÑÐµ ÑÐ²Ð¾Ð¹ ÐºÐ¾Ð´, ÐºÐ¾ÑÐ¾ÑÑÐ¹ Ð²Ñ ÑÐ¾ÑÐ¸ÑÐµ Ð·Ð°Ð¿ÑÑÑÐ¸ÑÑ Ð¿Ð¾ÑÐ»Ðµ Ð²Ð²Ð¾Ð´Ð° Ð¿ÑÐ°Ð²Ð¸Ð»ÑÐ½Ð¾Ð³Ð¾ Ð¿Ð°ÑÐ¾Ð»Ñ
	print("ÐÐ°ÑÐ¾Ð»Ñ Ð¿ÑÐ°Ð²Ð¸Ð»ÑÐ½ÑÐ¹! ÐÑÐ½Ð¾Ð²Ð½Ð¾Ð¹ ÐºÐ¾Ð´ Ð·Ð°Ð¿ÑÑÐµÐ½.")
	-- ÐÐ°Ð¿ÑÐ¸Ð¼ÐµÑ, Ð¼Ð¾Ð¶Ð½Ð¾ Ð´Ð¾Ð±Ð°Ð²Ð¸ÑÑ ÑÑÐ½ÐºÑÐ¸Ð¾Ð½Ð°Ð» Ð¸Ð· Ð¿ÑÐµÐ´ÑÐ´ÑÑÐµÐ³Ð¾ ÐºÐ¾Ð´Ð°
	-- (Ð¡ÐºÐ¾Ð¿Ð¸ÑÑÐ¹ÑÐµ Ð²Ð°Ñ ÑÐºÑÐ¸Ð¿Ñ, ÐºÐ¾ÑÐ¾ÑÑÐ¹ Ð½ÑÐ¶Ð½Ð¾ Ð²ÑÐ¿Ð¾Ð»Ð½Ð¸ÑÑ)
end

-- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ ÐºÐ¾Ð¿Ð¸ÑÐ¾Ð²Ð°Ð½Ð¸Ñ ÑÑÑÐ»ÐºÐ¸
local function copyLink()
	setclipboard(linkBox.Text)  -- ÐÐ¾Ð¿Ð¸ÑÑÐµÐ¼ ÑÐµÐºÑÑ ÑÑÑÐ»ÐºÐ¸ Ð² Ð±ÑÑÐµÑ Ð¾Ð±Ð¼ÐµÐ½Ð°
	print("Ð¡ÑÑÐ»ÐºÐ° ÑÐºÐ¾Ð¿Ð¸ÑÐ¾Ð²Ð°Ð½Ð°!")
end

copyButton.MouseButton1Click:Connect(copyLink)
