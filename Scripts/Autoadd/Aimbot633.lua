local Players = game:GetService("Players")
		local UserInputService = game:GetService("UserInputService")
		local RunService = game:GetService("RunService")
		local localPlayer = Players.LocalPlayer
		local camera = game.Workspace.CurrentCamera
		local lockOnActive = false
		local teamCheckActive = false
		local currentTouch = nil
		local fovRadius = 125
		local screenGui = Instance.new("ScreenGui")
		screenGui.Parent = game:GetService("CoreGui")
		local toggleButton = Instance.new("TextButton")
		toggleButton.Parent = screenGui
		toggleButton.Size = UDim2.new(0, 150, 0, 50)
		toggleButton.Position = UDim2.new(0, 100, 0, 100)
		toggleButton.Text = "Toggle Lock-On"
		toggleButton.Draggable = true
		local toggleTeamButton = Instance.new("TextButton")
		toggleTeamButton.Parent = screenGui
		toggleTeamButton.Size = UDim2.new(0, 150, 0, 50)
		toggleTeamButton.Position = UDim2.new(0, 100, 0, 160)
		toggleTeamButton.Text = "Toggle Team Check"
		toggleTeamButton.Draggable = true
		local fovCircleGui = Instance.new("ImageLabel")
		fovCircleGui.Parent = screenGui
		fovCircleGui.AnchorPoint = Vector2.new(0.5, 0.5)
		fovCircleGui.Size = UDim2.new(0, fovRadius * 2, 0, fovRadius * 2)
		fovCircleGui.Image = "rbxassetid://432312433"
		fovCircleGui.ImageTransparency = 0.5
		fovCircleGui.ImageColor3 = Color3.new(1, 1, 1)
		fovCircleGui.BackgroundTransparency = 1
		fovCircleGui.Visible = false
		fovCircleGui.ZIndex = 0 -- Ensure it's behind other GUI elements

-- Function to check if a player is within the FOV and not obstructed by walls
		local function isPlayerVisible(targetPlayer)
			if not targetPlayer or not targetPlayer:FindFirstChild("Head") then
				return false
			end
			if teamCheckActive and targetPlayer.Team == localPlayer.Team then
				return false -- Player is on the same team
			end
			local targetHeadPosition = targetPlayer.Head.Position
			local vectorToTarget = (targetHeadPosition - camera.CFrame.Position).unit
			local ray = Ray.new(camera.CFrame.Position, vectorToTarget * fovRadius)
			local part, position = game.Workspace:FindPartOnRay(ray, localPlayer.Character, false, true)
			if part and part:IsDescendantOf(targetPlayer) then
				local dotProduct = camera.CFrame.LookVector:Dot(vectorToTarget)
				local angle = math.deg(math.acos(dotProduct))
				return angle <= (fovRadius / 2) -- Player is within FOV
			end
			return false -- Player is obstructed by walls
		end

-- Toggle button functionality
		toggleButton.MouseButton1Click:Connect(function()
			lockOnActive = not lockOnActive
			toggleButton.Text = lockOnActive and "Lock-On Active" or "Toggle Lock-On"
			fovCircleGui.Visible = lockOnActive
		end)
		toggleTeamButton.MouseButton1Click:Connect(function()
			teamCheckActive = not teamCheckActive
			toggleTeamButton.Text = teamCheckActive and "Team Check Active" or "Toggle Team Check"
		end)

-- Function to handle touch input
		local function onTouchStarted(touch)
			currentTouch = touch.Position
			fovCircleGui.Position = UDim2.new(0, touch.Position.X - fovRadius, 0, touch.Position.Y - fovRadius)
			fovCircleGui.Visible = true
		end

-- Function to handle touch ended
		local function onTouchEnded(touch)
			if currentTouch and currentTouch == touch.Position then
				currentTouch = nil
				fovCircleGui.Visible = false
			end
		end

-- Connect the touch event handlers
		UserInputService.TouchStarted:Connect(onTouchStarted)
		UserInputService.TouchEnded:Connect(onTouchEnded)
		RunService.RenderStepped:Connect(function()
			if lockOnActive then
				for _, player in ipairs(workspace.Zombies:GetDescendants()) do
					if isPlayerVisible(player) then
						local head = player.Head
						local direction = (head.Position - camera.CFrame.Position).unit
						camera.CFrame = CFrame.new(camera.CFrame.Position, camera.CFrame.Position + direction * 10)
						break
					end
				end
			end
		end)