local player = game.Players.LocalPlayer

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "PasswordGui"
screenGui.Parent = player:WaitForChild("PlayerGui")

local passwordFrame = Instance.new("Frame")
passwordFrame.Size = UDim2.new(0, 300, 0, 250)
passwordFrame.Position = UDim2.new(0.5, -150, 0.5, -125)
passwordFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
passwordFrame.BorderSizePixel = 0
passwordFrame.Parent = screenGui

local passwordInput = Instance.new("TextBox")
passwordInput.Size = UDim2.new(1, 0, 0, 50)
passwordInput.Position = UDim2.new(0, 0, 0, 10)
passwordInput.PlaceholderText = "Enter Password"
passwordInput.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
passwordInput.TextColor3 = Color3.fromRGB(255, 255, 255)
passwordInput.Font = Enum.Font.SourceSans
passwordInput.TextSize = 18
passwordInput.Parent = passwordFrame

local submitButton = Instance.new("TextButton")
submitButton.Size = UDim2.new(1, 0, 0, 50)
submitButton.Position = UDim2.new(0, 0, 0, 70)
submitButton.Text = "Submit"
submitButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
submitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
submitButton.Font = Enum.Font.SourceSansBold
submitButton.TextSize = 18
submitButton.Parent = passwordFrame

local linkLabel = Instance.new("TextLabel")
linkLabel.Size = UDim2.new(1, 0, 0, 50)
linkLabel.Position = UDim2.new(0, 0, 0, 130)
linkLabel.Text = "Link: https://link-hub.net/1235817/opadminscript"
linkLabel.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
linkLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
linkLabel.Font = Enum.Font.SourceSans
linkLabel.TextSize = 14
linkLabel.TextWrapped = true
linkLabel.Parent = passwordFrame

submitButton.MouseButton1Click:Connect(function()
	if passwordInput.Text == "KEY_34521" then
		print("Correct password!")
		passwordFrame:Destroy()
		--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()

		-- Create ScreenGui
		local screenGui = Instance.new("ScreenGui")
		screenGui.Name = "AdminGui"
		screenGui.Parent = player:WaitForChild("PlayerGui")

		-- Create Frame for admin panel
		local adminFrame = Instance.new("Frame")
		adminFrame.Name = "AdminFrame"
		adminFrame.Size = UDim2.new(0, 350, 0, 400) -- Increased size
		adminFrame.Position = UDim2.new(0.5, -175, 0.5, -200) -- Center screen
		adminFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		adminFrame.BorderSizePixel = 0
		adminFrame.Visible = false
		adminFrame.Parent = screenGui

		-- Create Header for dragging
		local header = Instance.new("Frame")
		header.Name = "Header"
		header.Size = UDim2.new(1, 0, 0, 30)
		header.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		header.Parent = adminFrame

		-- Header text
		local headerText = Instance.new("TextLabel")
		headerText.Size = UDim2.new(1, 0, 1, 0)
		headerText.BackgroundTransparency = 1
		headerText.Text = "Admin Panel"
		headerText.TextColor3 = Color3.fromRGB(255, 255, 255)
		headerText.Font = Enum.Font.SourceSansBold
		headerText.TextSize = 18
		headerText.Parent = header

		-- Dragging the admin panel
		local dragging, dragInput, dragStart, startPos

		header.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				dragging = true
				dragStart = input.Position
				startPos = adminFrame.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		header.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				dragInput = input
			end
		end)

		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				local delta = input.Position - dragStart
				adminFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			end
		end)

		-- Create button to open admin panel
		local openButton = Instance.new("TextButton")
		openButton.Name = "OpenButton"
		openButton.Size = UDim2.new(0, 150, 0, 50)
		openButton.Position = UDim2.new(0, 10, 0, 10) -- Top left corner
		openButton.Text = "Open Admin Panel"
		openButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		openButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		openButton.Font = Enum.Font.SourceSansBold
		openButton.TextSize = 16
		openButton.Parent = screenGui

		-- Open/close admin panel
		openButton.MouseButton1Click:Connect(function()
			adminFrame.Visible = not adminFrame.Visible
		end)

		-- Create speed button
		local speedButton = Instance.new("TextButton")
		speedButton.Name = "SpeedButton"
		speedButton.Size = UDim2.new(0, 200, 0, 50)
		speedButton.Position = UDim2.new(0, 75, 0, 50) -- Inside frame
		speedButton.Text = "Speed: 100"
		speedButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
		speedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		speedButton.Font = Enum.Font.SourceSansBold
		speedButton.TextSize = 16
		speedButton.Parent = adminFrame

		local isSpeed100 = true

		speedButton.MouseButton1Click:Connect(function()
			if isSpeed100 then
				player.Character.Humanoid.WalkSpeed = 16
				speedButton.Text = "Speed: 16"
			else
				player.Character.Humanoid.WalkSpeed = 100
				speedButton.Text = "Speed: 100"
			end
			isSpeed100 = not isSpeed100
		end)

		-- Create NoClip button
		local noClipButton = Instance.new("TextButton")
		noClipButton.Name = "NoClipButton"
		noClipButton.Size = UDim2.new(0, 200, 0, 50)
		noClipButton.Position = UDim2.new(0, 75, 0, 110)
		noClipButton.Text = "NoClip: Off"
		noClipButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
		noClipButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		noClipButton.Font = Enum.Font.SourceSansBold
		noClipButton.TextSize = 16
		noClipButton.Parent = adminFrame

		local noClipEnabled = false

		local function toggleNoClip()
			noClipEnabled = not noClipEnabled
			noClipButton.Text = noClipEnabled and "NoClip: On" or "NoClip: Off"
		end

		noClipButton.MouseButton1Click:Connect(toggleNoClip)

		game:GetService("RunService").Stepped:Connect(function()
			for _, part in pairs(character:GetChildren()) do
				if part:IsA("BasePart") then
					part.CanCollide = not noClipEnabled
				end
			end
		end)

		-- Create ESP button
		local espButton = Instance.new("TextButton")
		espButton.Name = "EspButton"
		espButton.Size = UDim2.new(0, 200, 0, 50)
		espButton.Position = UDim2.new(0, 75, 0, 170)
		espButton.Text = "ESP: Off"
		espButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
		espButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		espButton.Font = Enum.Font.SourceSansBold
		espButton.TextSize = 16
		espButton.Parent = adminFrame

		local espEnabled = false

		local function toggleESP()
			espEnabled = not espEnabled
			espButton.Text = espEnabled and "ESP: On" or "ESP: Off"

			if espEnabled then
				local highlight = Instance.new("Highlight")
				highlight.Adornee = character
				highlight.FillColor = Color3.new(1, 0, 0)
				highlight.Parent = character
			else
				for _, v in pairs(character:GetChildren()) do
					if v:IsA("Highlight") then
						v:Destroy()
					end
				end
			end
		end

		espButton.MouseButton1Click:Connect(toggleESP)

		-- Create Auto Aim button
		local aimButton = Instance.new("TextButton")
		aimButton.Name = "AimButton"
		aimButton.Size = UDim2.new(0, 200, 0, 50)
		aimButton.Position = UDim2.new(0, 75, 0, 230)
		aimButton.Text = "Auto Aim: Off"
		aimButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
		aimButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		aimButton.Font = Enum.Font.SourceSansBold
		aimButton.TextSize = 16
		aimButton.Parent = adminFrame

		local aimEnabled = false

		local function toggleAim()
			aimEnabled = not aimEnabled
			aimButton.Text = aimEnabled and "Auto Aim: On" or "Auto Aim: Off"
		end

		aimButton.MouseButton1Click:Connect(toggleAim)

		-- Auto Aim function
		game:GetService("RunService").RenderStepped:Connect(function()
			if aimEnabled then
				local nearestPlayer = nil
				local shortestDistance = math.huge

				for _, otherPlayer in pairs(game.Players:GetPlayers()) do
					if otherPlayer ~= player and otherPlayer.Character then
						local distance = (otherPlayer.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude
						if distance < shortestDistance then
							shortestDistance = distance
							nearestPlayer = otherPlayer
						end
					end
				end

				if nearestPlayer then
					local targetPosition = nearestPlayer.Character.HumanoidRootPart.Position
					local camera = workspace.CurrentCamera
					camera.CFrame = CFrame.new(camera.CFrame.Position, targetPosition)
				end
			end
		end)

		-- Create Teleport to Low HP button
		local teleportLowHPButton = Instance.new("TextButton")
		teleportLowHPButton.Name = "TeleportLowHPButton"
		teleportLowHPButton.Size = UDim2.new(0, 200, 0, 50)
		teleportLowHPButton.Position = UDim2.new(0, 75, 0, 290)
		teleportLowHPButton.Text = "Teleport to Low HP: Off"
		teleportLowHPButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
		teleportLowHPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		teleportLowHPButton.Font = Enum.Font.SourceSansBold
		teleportLowHPButton.TextSize = 16
		teleportLowHPButton.Parent = adminFrame

		local teleportingToLowHP = false
		local lowHPThreshold = 20 -- Health threshold

		teleportLowHPButton.MouseButton1Click:Connect(function()
			teleportingToLowHP = not teleportingToLowHP
			teleportLowHPButton.Text = teleportingToLowHP and "Teleporting to Low HP: On" or "Teleporting to Low HP: Off"
		end)

		-- Teleport to Low HP function
		game:GetService("RunService").Stepped:Connect(function()
			if teleportingToLowHP then
				local lowHPPlayer = nil

				for _, otherPlayer in pairs(game.Players:GetPlayers()) do
					if otherPlayer ~= player and otherPlayer.Character and otherPlayer.Character:FindFirstChild("Humanoid") then
						local health = otherPlayer.Character.Humanoid.Health
						if health < lowHPThreshold then
							lowHPPlayer = otherPlayer
							break
						end
					end
				end

				if lowHPPlayer then
					local targetPosition = lowHPPlayer.Character.HumanoidRootPart.Position
					character:SetPrimaryPartCFrame(CFrame.new(targetPosition))

					-- Get the first item in the player's backpack
					if player.Backpack and #player.Backpack:GetChildren() > 0 then
						local firstItem = player.Backpack:GetChildren()[1]
						firstItem.Parent = character -- Give the item to the character
					end
				end
			end
		end)

		-- Teleport after killing the player
		game.Players.PlayerRemoving:Connect(function(removedPlayer)
			if teleportingToLowHP and removedPlayer.Character then
				wait(1) -- Wait before teleporting
				character:SetPrimaryPartCFrame(CFrame.new(0, 100, 0)) -- Teleport upwards
			end
		end)

		-- Create button to close admin panel
		local closeButton = Instance.new("TextButton")
		closeButton.Name = "CloseButton"
		closeButton.Size = UDim2.new(0, 200, 0, 50)
		closeButton.Position = UDim2.new(0, 75, 0, 350)
		closeButton.Text = "Close"
		closeButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
		closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		closeButton.Font = Enum.Font.SourceSansBold
		closeButton.TextSize = 16
		closeButton.Parent = adminFrame

		-- Close admin panel action
		closeButton.MouseButton1Click:Connect(function()
			adminFrame.Visible = false
		end)

		-- Key press to toggle teleportation
		game:GetService("UserInputService").InputBegan:Connect(function(input)
			if input.KeyCode == Enum.KeyCode.One then
				teleportingToLowHP = not teleportingToLowHP
				teleportLowHPButton.Text = teleportingToLowHP and "Teleporting to Low HP: On" or "Teleporting to Low HP: Off"
			end
		end)

	else
		print("Incorrect password!")
	end
end)
