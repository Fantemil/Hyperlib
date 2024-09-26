local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.Name = "PasswordGui"

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 250)
frame.Position = UDim2.new(0.5, -150, 0.5, -125)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 2
frame.BorderColor3 = Color3.fromRGB(255, 0, 0)
frame.Parent = screenGui

local passwordLabel = Instance.new("TextLabel")
passwordLabel.Size = UDim2.new(1, 0, 0, 40)
passwordLabel.Position = UDim2.new(0, 0, 0, 10)
passwordLabel.Text = "Enter Password:"
passwordLabel.TextSize = 20
passwordLabel.Font = Enum.Font.GothamBold
passwordLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
passwordLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
passwordLabel.Parent = frame

local passwordBox = Instance.new("TextBox")
passwordBox.Size = UDim2.new(1, 0, 0, 40)
passwordBox.Position = UDim2.new(0, 0, 0, 60)
passwordBox.PlaceholderText = "Password"
passwordBox.TextSize = 20
passwordBox.Font = Enum.Font.GothamBold
passwordBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
passwordBox.TextColor3 = Color3.fromRGB(0, 0, 0)
passwordBox.Parent = frame

local confirmButton = Instance.new("TextButton")
confirmButton.Size = UDim2.new(1, 0, 0, 40)
confirmButton.Position = UDim2.new(0, 0, 0, 110)
confirmButton.Text = "Confirm"
confirmButton.TextSize = 20
confirmButton.Font = Enum.Font.GothamBold
confirmButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
confirmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
confirmButton.Parent = frame

local correctPassword = "KEY_34521"

local linkLabel = Instance.new("TextLabel")
linkLabel.Size = UDim2.new(1, 0, 0, 40)
linkLabel.Position = UDim2.new(0, 0, 0, 160)
linkLabel.Text = "Copy Link:"
linkLabel.TextSize = 20
linkLabel.Font = Enum.Font.GothamBold
linkLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
linkLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
linkLabel.Parent = frame

local linkBox = Instance.new("TextBox")
linkBox.Size = UDim2.new(1, 0, 0, 40)
linkBox.Position = UDim2.new(0, 0, 0, 200)
linkBox.Text = "https://link-hub.net/1235817/opadminscript"
linkBox.TextSize = 20
linkBox.Font = Enum.Font.GothamBold
linkBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
linkBox.TextColor3 = Color3.fromRGB(0, 0, 0)
linkBox.Parent = frame
linkBox.ClearTextOnFocus = false

local copyButton = Instance.new("TextButton")
copyButton.Size = UDim2.new(1, 0, 0, 40)
copyButton.Position = UDim2.new(0, 0, 0, 250)
copyButton.Text = "Copy Link"
copyButton.TextSize = 20
copyButton.Font = Enum.Font.GothamBold
copyButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
copyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
copyButton.Parent = frame
copyButton.Visible = false

local function checkPassword()
	if passwordBox.Text == correctPassword then
		frame.Visible = false
		linkBox.Visible = true
		copyButton.Visible = true
		local screenGui = Instance.new("ScreenGui")
		screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
		screenGui.Name = "AdminMenu"

		local frame = Instance.new("Frame")
		frame.Size = UDim2.new(0, 70, 0, 70)
		frame.Position = UDim2.new(0, 10, 0, 10)
		frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		frame.BorderSizePixel = 2
		frame.BorderColor3 = Color3.fromRGB(255, 0, 0)
		frame.Parent = screenGui

		local toggleButton = Instance.new("TextButton")
		toggleButton.Size = UDim2.new(1, 0, 1, 0)
		toggleButton.Text = "s"
		toggleButton.TextSize = 26
		toggleButton.Font = Enum.Font.GothamBold
		toggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		toggleButton.Parent = frame

		local hiddenFrame = Instance.new("Frame")
		hiddenFrame.Size = UDim2.new(0, 200, 0, 300)
		hiddenFrame.Position = UDim2.new(0, 0, 1, 5)
		hiddenFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		hiddenFrame.BorderSizePixel = 2
		hiddenFrame.BorderColor3 = Color3.fromRGB(255, 0, 0)
		hiddenFrame.Visible = false
		hiddenFrame.Parent = frame

		local function toggleMenu()
			hiddenFrame.Visible = not hiddenFrame.Visible
			toggleButton.Text = hiddenFrame.Visible and "Â§" or "s"
		end

		toggleButton.MouseButton1Click:Connect(toggleMenu)

		local clipButton = Instance.new("TextButton")
		clipButton.Size = UDim2.new(0, 180, 0, 40)
		clipButton.Position = UDim2.new(0, 10, 0, 10)
		clipButton.Text = "Toggle Clip"
		clipButton.TextSize = 20
		clipButton.Font = Enum.Font.GothamBold
		clipButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		clipButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		clipButton.Parent = hiddenFrame

		local jumpButton = Instance.new("TextButton")
		jumpButton.Size = UDim2.new(0, 180, 0, 40)
		jumpButton.Position = UDim2.new(0, 10, 0, 60)
		jumpButton.Text = "Toggle Super Jump"
		jumpButton.TextSize = 20
		jumpButton.Font = Enum.Font.GothamBold
		jumpButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		jumpButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		jumpButton.Parent = hiddenFrame

		local teleportToggleButton = Instance.new("TextButton")
		teleportToggleButton.Size = UDim2.new(0, 180, 0, 40)
		teleportToggleButton.Position = UDim2.new(0, 10, 0, 110)
		teleportToggleButton.Text = "Toggle Teleport"
		teleportToggleButton.TextSize = 20
		teleportToggleButton.Font = Enum.Font.GothamBold
		teleportToggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		teleportToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		teleportToggleButton.Parent = hiddenFrame

		local flingButton = Instance.new("TextButton")
		flingButton.Size = UDim2.new(0, 180, 0, 40)
		flingButton.Position = UDim2.new(0, 10, 0, 160)
		flingButton.Text = "Toggle Fling"
		flingButton.TextSize = 20
		flingButton.Font = Enum.Font.GothamBold
		flingButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		flingButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		flingButton.Parent = hiddenFrame

		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local humanoid = character:WaitForChild("Humanoid")
		local isClipped = false

		clipButton.MouseButton1Click:Connect(function()
			isClipped = not isClipped
			for _, part in ipairs(character:GetChildren()) do
				if part:IsA("BasePart") then
					part.CanCollide = not isClipped
				end
			end
		end)

		jumpButton.MouseButton1Click:Connect(function()
			humanoid.JumpPower = isClipped and 50 or 200
		end)

		teleportToggleButton.MouseButton1Click:Connect(function()
			player.Character:MoveTo(Vector3.new(0, 50, 0))
		end)

		flingButton.MouseButton1Click:Connect(function()
			local targetPlayer = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]
			if targetPlayer and targetPlayer.Character then
				local targetHumanoid = targetPlayer.Character:FindFirstChildOfClass("Humanoid")
				if targetHumanoid then
					targetHumanoid:TakeDamage(100)
				end
			end
		end)
	else
		passwordBox.Text = ""
		passwordLabel.Text = "Incorrect password, please try again."
	end
end

confirmButton.MouseButton1Click:Connect(checkPassword)

copyButton.MouseButton1Click:Connect(function()
	setclipboard(linkBox.Text)
end)
