if _G.CanOpenAimbot == nil or _G.CanOpenAimbot == 'Y' then
	_G.CanOpenAimbot = 'N'

	_G.AimbotEnabled = true
	_G.TeamCheck = false
	_G.AimPart = "Head"
	_G.Sensitivity = 0

	local Aimbot = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local sensitivity = Instance.new("TextBox")
	local UICorner = Instance.new("UICorner")
	local UICorner_2 = Instance.new("UICorner")
	local close = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	local AimPart = Instance.new("TextBox")
	local UICorner_4 = Instance.new("UICorner")
	local teamheck = Instance.new("TextButton")
	local UICorner_5 = Instance.new("UICorner")
	local TextLabel = Instance.new("TextLabel")
	local enabled = Instance.new("TextButton")
	local UICorner_6 = Instance.new("UICorner")
	local TextLabel_2 = Instance.new("TextLabel")

	local parent = game.Players.LocalPlayer.PlayerGui

	Aimbot.Name = "Aimbot"
	if gethui then
		parent = gethui()
	end
	
	Aimbot.Parent = parent
	Aimbot.ResetOnSpawn = false
	Aimbot.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = Aimbot
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Active = true
	Frame.Draggable = true
	Frame.Position = UDim2.new(0.244433001, -176, 0.630891025, -31)
	Frame.Size = UDim2.new(0.293784112, 0, 0.214434564, 0)

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(65, 65, 65)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
	UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.15), NumberSequenceKeypoint.new(1.00, 0.15)}
	UIGradient.Parent = Frame

	sensitivity.Name = "sensitivity"
	sensitivity.Parent = Frame
	sensitivity.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	sensitivity.BackgroundTransparency = 0.500
	sensitivity.BorderColor3 = Color3.fromRGB(0, 0, 0)
	sensitivity.BorderSizePixel = 0
	sensitivity.Position = UDim2.new(0.0388350971, 0, 0.638080895, 0)
	sensitivity.Size = UDim2.new(0, 163, 0, 37)
	sensitivity.ClearTextOnFocus = false
	sensitivity.Font = Enum.Font.SourceSans
	sensitivity.MultiLine = true
	sensitivity.PlaceholderColor3 = Color3.fromRGB(200, 200, 200)
	sensitivity.PlaceholderText = "Sensitivity"
	sensitivity.Text = "0"
	sensitivity.TextColor3 = Color3.fromRGB(0, 0, 0)
	sensitivity.TextScaled = true
	sensitivity.TextSize = 14.000
	sensitivity.TextWrapped = true

	UICorner.Parent = sensitivity

	UICorner_2.Parent = Frame

	close.Name = "close"
	close.Parent = Frame
	close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	close.BorderColor3 = Color3.fromRGB(0, 0, 0)
	close.BorderSizePixel = 0
	close.Position = UDim2.new(0.901233792, 0, 0.0362865292, 0)
	close.Size = UDim2.new(0, 30, 0, 30)
	close.Font = Enum.Font.SourceSans
	close.Text = "X"
	close.TextColor3 = Color3.fromRGB(0, 0, 0)
	close.TextScaled = true
	close.TextSize = 14.000
	close.TextWrapped = true

	UICorner_3.Parent = close

	AimPart.Name = "AimPart"
	AimPart.Parent = Frame
	AimPart.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	AimPart.BackgroundTransparency = 0.500
	AimPart.BorderColor3 = Color3.fromRGB(0, 0, 0)
	AimPart.BorderSizePixel = 0
	AimPart.Position = UDim2.new(0.0388350785, 0, 0.262648642, 0)
	AimPart.Size = UDim2.new(0, 163, 0, 37)
	AimPart.ClearTextOnFocus = false
	AimPart.Font = Enum.Font.SourceSans
	AimPart.MultiLine = true
	AimPart.PlaceholderColor3 = Color3.fromRGB(200, 200, 200)
	AimPart.PlaceholderText = "Aim part"
	AimPart.Text = "Head"
	AimPart.TextColor3 = Color3.fromRGB(0, 0, 0)
	AimPart.TextScaled = true
	AimPart.TextSize = 14.000
	AimPart.TextWrapped = true

	UICorner_4.Parent = AimPart

	teamheck.Name = "teamCheck"
	teamheck.Parent = Frame
	teamheck.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	teamheck.BorderColor3 = Color3.fromRGB(0, 0, 0)
	teamheck.BorderSizePixel = 0
	teamheck.Position = UDim2.new(0.484128624, 0, 0.309890658, 0)
	teamheck.Size = UDim2.new(0, 30, 0, 30)
	teamheck.Font = Enum.Font.SourceSans
	teamheck.Text = ""
	teamheck.TextColor3 = Color3.fromRGB(0, 0, 0)
	teamheck.TextScaled = true
	teamheck.TextSize = 14.000
	teamheck.TextWrapped = true
	teamheck:SetAttribute("tick", false)

	UICorner_5.Parent = teamheck

	TextLabel.Parent = teamheck
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(1, 0, 0, 0)
	TextLabel.Size = UDim2.new(4.33333349, 0, 1, 0)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = "Team check"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true

	enabled.Name = "enabled"
	enabled.Parent = Frame
	enabled.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	enabled.BorderColor3 = Color3.fromRGB(0, 0, 0)
	enabled.BorderSizePixel = 0
	enabled.Position = UDim2.new(0.485423088, 0, 0.663451016, 0)
	enabled.Size = UDim2.new(0, 30, 0, 30)
	enabled.Font = Enum.Font.SourceSans
	enabled.Text = ""
	enabled.TextColor3 = Color3.fromRGB(0, 0, 0)
	enabled.TextScaled = true
	enabled.TextSize = 14.000
	enabled.TextWrapped = true
	enabled:SetAttribute("tick", true)

	UICorner_6.Parent = enabled

	TextLabel_2.Parent = enabled
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.BackgroundTransparency = 1.000
	TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_2.BorderSizePixel = 0
	TextLabel_2.Position = UDim2.new(1, 0, 0, 0)
	TextLabel_2.Size = UDim2.new(5.66666698, 0, 1, 0)
	TextLabel_2.Font = Enum.Font.SourceSans
	TextLabel_2.Text = "Aimbot enabled"
	TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.TextScaled = true
	TextLabel_2.TextSize = 14.000
	TextLabel_2.TextWrapped = true

	local function RTJX_fake_script()
		local script = Instance.new('LocalScript', UIGradient)

		script.Parent.Parent.Draggable = true
		
		local RunService = game:GetService("RunService")
		local ROTATE_SPEED = 22.5
		local uiGradient = script.Parent
		
		local function onRenderStep(deltaTime)
			local currentRotation = uiGradient.Rotation
			uiGradient.Rotation = (currentRotation + ROTATE_SPEED * deltaTime) % 360
		end
		
		RunService.RenderStepped:Connect(onRenderStep)
	end
	coroutine.wrap(RTJX_fake_script)()
	local function BMUXVWP_fake_script()
		local script = Instance.new('LocalScript', sensitivity)

		script.Parent.Changed:Connect(function()
			local sensitivity = tonumber(script.Parent.Text)
			if sensitivity~=nil then _G.Sensitivity = sensitivity end
		end)
	end
	coroutine.wrap(BMUXVWP_fake_script)()
	local function LJJK_fake_script() 
		local script = Instance.new('LocalScript', close)

		local button = script.Parent
		
		button.MouseButton1Click:Connect(function()
			_G.CanOpenAimbot = 'Y'
			_G.AimbotEnabled = 'N'
			script.Parent.Parent.Parent:Destroy()
		end)
	end
	coroutine.wrap(LJJK_fake_script)()
	local function DUJNNP_fake_script()
		local script = Instance.new('LocalScript', AimPart)

		script.Parent.Changed:Connect(function()
			local AimPart = script.Parent.Text
			_G.AimPart = AimPart
		end)
	end
	coroutine.wrap(DUJNNP_fake_script)()
	local function UYAQQ_fake_script()
		local script = Instance.new('LocalScript', teamheck)

		local button = script.Parent
		local TweenService = game:GetService("TweenService")
		
		local function changeButtonColor()
			local tickValue = button:GetAttribute("tick")
			local targetColor = tickValue and Color3.new(0, 1, 0) or Color3.new(1, 0, 0)
		
			local buttonColor = button.BackgroundColor3
			local colorTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
		
			local colorTween = TweenService:Create(button, colorTweenInfo, {BackgroundColor3 = targetColor})
			colorTween:Play()
			
			_G.TeamCheck = tickValue
		end
		
		button.MouseButton1Click:Connect(function()
			button:SetAttribute("tick", not button:GetAttribute("tick"))
			changeButtonColor()
		end)
		
	end
	coroutine.wrap(UYAQQ_fake_script)()
	local function JCEYZ_fake_script()
		local script = Instance.new('LocalScript', enabled)

		local button = script.Parent
		local TweenService = game:GetService("TweenService")
		
		local function changeButtonColor()
			local tickValue = button:GetAttribute("tick")
			local targetColor = tickValue and Color3.new(0, 1, 0) or Color3.new(1, 0, 0)
		
			local buttonColor = button.BackgroundColor3
			local colorTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
		
			local colorTween = TweenService:Create(button, colorTweenInfo, {BackgroundColor3 = targetColor})
			colorTween:Play()
			
			_G.AimbotEnabled = tickValue
		end
		
		button.MouseButton1Click:Connect(function()
			button:SetAttribute("tick", not button:GetAttribute("tick"))
			changeButtonColor()
		end)
		
	end
	coroutine.wrap(JCEYZ_fake_script)()
	local function HGVAUSM_fake_script()
		if _G.AimbotRan == nil then
			_G.AimbotRan = 'Y'
			local script = Instance.new('LocalScript', Frame)

			local Camera = workspace.CurrentCamera
			local Players = game:GetService("Players")
			local RunService = game:GetService("RunService")
			local UserInputService = game:GetService("UserInputService")
			local TweenService = game:GetService("TweenService")
			local LocalPlayer = Players.LocalPlayer
			local Holding = false
			
			local function GetClosestPlayer()
				local MaximumDistance = math.huge
				local Target = nil
			
				coroutine.wrap(function()
					wait(20); MaximumDistance = math.huge
				end)()
			
				for _, v in next, Players:GetPlayers() do
					if v.Name ~= LocalPlayer.Name then
						if _G.TeamCheck == true then
							if v.Team ~= LocalPlayer.Team then
								if v.Character ~= nil then
									if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
										if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
											local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
											local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
			
											if VectorDistance < MaximumDistance then
												Target = v
												MaximumDistance = VectorDistance
											end
										end
									end
								end
							end
						else
							if v.Character ~= nil then
								if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
									if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
										local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
										local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
			
										if VectorDistance < MaximumDistance then
											Target = v
											MaximumDistance = VectorDistance
										end
									end
								end
							end
						end
					end
				end
			
				return Target
			end
			
			UserInputService.InputBegan:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton2 then
					Holding = true
				end
			end)
			
			UserInputService.InputEnded:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton2 then
					Holding = false
				end
			end)
			
			RunService.RenderStepped:Connect(function()
				if Holding == true and _G.AimbotEnabled == true then
					TweenService:Create(Camera, TweenInfo.new(_G.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = CFrame.new(Camera.CFrame.Position, GetClosestPlayer().Character[_G.AimPart].Position)}):Play()
				end
			end)
		end
	end
	coroutine.wrap(HGVAUSM_fake_script)()
end