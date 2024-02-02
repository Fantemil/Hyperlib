if _G.CanOpenSG == 'Y' or _G.CanOpenSG == nil then
	_G.CanOpenSG = 'N'
	local GarbageSpawner = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local Count = Instance.new("TextBox")
	local UICorner = Instance.new("UICorner")
	local UICorner_2 = Instance.new("UICorner")
	local Spawn = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	local ImageLabel = Instance.new("ImageLabel")
	local close = Instance.new("TextButton")
	local UICorner_4 = Instance.new("UICorner")
	local speed = Instance.new("TextBox")
	local UICorner_5 = Instance.new("UICorner")
	local freeze = Instance.new("TextButton")
	local UICorner_6 = Instance.new("UICorner")
	local TextLabel = Instance.new("TextLabel")
	local spin = Instance.new("TextButton")
	local UICorner_7 = Instance.new("UICorner")
	local TextLabel_2 = Instance.new("TextLabel")
	local epicSound = Instance.new("Sound")
	local autoStop = Instance.new("TextButton")
	local UICorner_8 = Instance.new("UICorner")
	local TextLabel_3 = Instance.new("TextLabel")

	GarbageSpawner.Name = "GarbageSpawner"
	GarbageSpawner.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	GarbageSpawner.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = GarbageSpawner
	Frame.Active = true
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Draggable = true
	Frame.Position = UDim2.new(0, 171, 0, 291)
	Frame.Size = UDim2.new(0.287237287, 0, 0.299999982, 0)

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(65, 65, 65)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
	UIGradient.Rotation = 142.91810607910156
	UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.15), NumberSequenceKeypoint.new(1.00, 0.15)}
	UIGradient.Parent = Frame

	Count.Name = "Count"
	Count.Parent = Frame
	Count.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Count.BackgroundTransparency = 0.500
	Count.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Count.BorderSizePixel = 0
	Count.Position = UDim2.new(0.0361125395, 0, 0.493975878, 0)
	Count.Size = UDim2.new(0.434423625, 0, 0.194267973, 0)
	Count.ClearTextOnFocus = false
	Count.Font = Enum.Font.SourceSans
	Count.MultiLine = true
	Count.PlaceholderColor3 = Color3.fromRGB(200, 200, 200)
	Count.PlaceholderText = "Count of garbage"
	Count.Text = ""
	Count.TextColor3 = Color3.fromRGB(0, 0, 0)
	Count.TextScaled = true
	Count.TextSize = 14.000
	Count.TextWrapped = true

	UICorner.Parent = Count

	UICorner_2.Parent = Frame

	Spawn.Name = "Spawn"
	Spawn.Parent = Frame
	Spawn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Spawn.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Spawn.BorderSizePixel = 0
	Spawn.Position = UDim2.new(0.0377729684, 0, 0.757192194, 0)
	Spawn.Size = UDim2.new(0.471660703, 0, 0.170433924, 0)
	Spawn.Font = Enum.Font.SourceSans
	Spawn.Text = "Spawn"
	Spawn.TextColor3 = Color3.fromRGB(0, 0, 0)
	Spawn.TextScaled = true
	Spawn.TextSize = 14.000
	Spawn.TextWrapped = true

	UICorner_3.Parent = Spawn

	ImageLabel.Parent = Spawn
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0.819263399, 0, 0, 0)
	ImageLabel.Size = UDim2.new(0.180000007, 0, 1, 0)
	ImageLabel.Image = "http://www.roblox.com/asset/?id=14033160714"

	close.Name = "close"
	close.Parent = Frame
	close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	close.BorderColor3 = Color3.fromRGB(0, 0, 0)
	close.BorderSizePixel = 0
	close.Position = UDim2.new(0.900929511, 0, 0.0383972973, 0)
	close.Size = UDim2.new(0.0799999982, 0, 0.0799999982, 0)
	close.SizeConstraint = Enum.SizeConstraint.RelativeXX
	close.Font = Enum.Font.SourceSans
	close.Text = "X"
	close.TextColor3 = Color3.fromRGB(0, 0, 0)
	close.TextScaled = true
	close.TextSize = 14.000
	close.TextWrapped = true

	UICorner_4.Parent = close

	speed.Name = "speed"
	speed.Parent = Frame
	speed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	speed.BackgroundTransparency = 0.500
	speed.BorderColor3 = Color3.fromRGB(0, 0, 0)
	speed.BorderSizePixel = 0
	speed.Position = UDim2.new(0.0388350636, 0, 0.245561421, 0)
	speed.Size = UDim2.new(0.431701154, 0, 0.193999991, 0)
	speed.ClearTextOnFocus = false
	speed.Font = Enum.Font.SourceSans
	speed.MultiLine = true
	speed.PlaceholderColor3 = Color3.fromRGB(200, 200, 200)
	speed.PlaceholderText = "Spin speed in Vector3. Ex: 12 34 56"
	speed.Text = ""
	speed.TextColor3 = Color3.fromRGB(0, 0, 0)
	speed.TextScaled = true
	speed.TextSize = 14.000
	speed.TextWrapped = true

	UICorner_5.Parent = speed

	freeze.Name = "freeze"
	freeze.Parent = Frame
	freeze.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	freeze.BorderColor3 = Color3.fromRGB(0, 0, 0)
	freeze.BorderSizePixel = 0
	freeze.Position = UDim2.new(0.492594689, 0, 0.256131947, 0)
	freeze.Size = UDim2.new(0.0820000023, 0, 0.0820000023, 0)
	freeze.SizeConstraint = Enum.SizeConstraint.RelativeXX
	freeze.Font = Enum.Font.SourceSans
	freeze.Text = ""
	freeze.TextColor3 = Color3.fromRGB(0, 0, 0)
	freeze.TextScaled = true
	freeze.TextSize = 14.000
	freeze.TextWrapped = true
	freeze:SetAttribute("tick", false)

	UICorner_6.Parent = freeze

	TextLabel.Parent = freeze
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.999999583, 0, 0, 0)
	TextLabel.Size = UDim2.new(10.6214323, 0, 1.00000012, 0)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = "Freeze player"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	spin.Name = "spin"
	spin.Parent = Frame
	spin.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	spin.BorderColor3 = Color3.fromRGB(0, 0, 0)
	spin.BorderSizePixel = 0
	spin.Position = UDim2.new(0.493427366, 0, 0.50184375, 0)
	spin.Size = UDim2.new(0.0820000023, 0, 0.0820000023, 0)
	spin.SizeConstraint = Enum.SizeConstraint.RelativeXX
	spin.Font = Enum.Font.SourceSans
	spin.Text = ""
	spin.TextColor3 = Color3.fromRGB(0, 0, 0)
	spin.TextScaled = true
	spin.TextSize = 14.000
	spin.TextWrapped = true
	spin:SetAttribute("tick", true)

	UICorner_7.Parent = spin

	TextLabel_2.Parent = spin
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.BackgroundTransparency = 1.000
	TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_2.BorderSizePixel = 0
	TextLabel_2.Position = UDim2.new(0.99999994, 0, 0.0661801919, 0)
	TextLabel_2.Size = UDim2.new(4.5666666, 0, 1, 0)
	TextLabel_2.Font = Enum.Font.SourceSans
	TextLabel_2.Text = "Spin garbage"
	TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.TextScaled = true
	TextLabel_2.TextSize = 14.000
	TextLabel_2.TextWrapped = true

	epicSound.Name = "epicSound"
	epicSound.Parent = spin
	epicSound.SoundId = "rbxassetid://9084006093"
	epicSound.RollOffMode = Enum.RollOffMode.InverseTapered
	epicSound.Volume = 10

	autoStop.Name = "autoStop"
	autoStop.Parent = Frame
	autoStop.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
	autoStop.BorderColor3 = Color3.fromRGB(0, 0, 0)
	autoStop.BorderSizePixel = 0
	autoStop.Position = UDim2.new(0.0431508571, 0, 0.0431260616, 0)
	autoStop.Size = UDim2.new(0.0820000023, 0, 0.0820000023, 0)
	autoStop.SizeConstraint = Enum.SizeConstraint.RelativeXX
	autoStop.Font = Enum.Font.SourceSans
	autoStop.Text = ""
	autoStop.TextColor3 = Color3.fromRGB(0, 0, 0)
	autoStop.TextScaled = true
	autoStop.TextSize = 14.000
	autoStop.TextWrapped = true

	UICorner_8.Parent = autoStop

	TextLabel_3.Parent = autoStop
	TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_3.BackgroundTransparency = 1.000
	TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_3.BorderSizePixel = 0
	TextLabel_3.Position = UDim2.new(1, 0, 0, 0)
	TextLabel_3.Size = UDim2.new(9.34213066, 0, 1, 0)
	TextLabel_3.Font = Enum.Font.SourceSans
	TextLabel_3.Text = "Start, then auto stop"
	TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_3.TextScaled = true
	TextLabel_3.TextSize = 14.000
	TextLabel_3.TextWrapped = true
	TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

	local function IZNE_fake_script()
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
	coroutine.wrap(IZNE_fake_script)()
	local function SPKET_fake_script()
		local script = Instance.new('LocalScript', close)

		local button = script.Parent
		
		button.MouseButton1Click:Connect(function()
			_G.CanOpenSG = 'Y'
			script.Parent.Parent.Parent:Destroy()
		end)
	end
	coroutine.wrap(SPKET_fake_script)()
	local function VNTOXIX_fake_script() 
		local script = Instance.new('LocalScript', freeze)

		local button = script.Parent
		local TweenService = game:GetService("TweenService")
		
		local function changeButtonColor()
			local tickValue = button:GetAttribute("tick")
			local targetColor = tickValue and Color3.new(0, 1, 0) or Color3.new(1, 0, 0)
		
			local buttonColor = button.BackgroundColor3
			local colorTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
		
			local colorTween = TweenService:Create(button, colorTweenInfo, {BackgroundColor3 = targetColor})
			colorTween:Play()
		end
		
		button.MouseButton1Click:Connect(function()
			button:SetAttribute("tick", not button:GetAttribute("tick"))
			changeButtonColor()
		end)
		
	end
	coroutine.wrap(VNTOXIX_fake_script)()
	local function RRILX_fake_script()
		local script = Instance.new('LocalScript', spin)

		local button = script.Parent
		local epicSound = button.epicSound
		local Frame = button.Parent
		local freeze = Frame.freeze
		local text = freeze.TextLabel
		local speed = Frame.speed
		local spawnButton = Frame.Spawn
		local Count = Frame.Count
		local close = Frame.close
		local autoStop = Frame.autoStop
		local TweenService = game:GetService("TweenService")
		
		local function changeButtonColor()
			local tickValue = button:GetAttribute("tick")
			local targetColor = tickValue and Color3.new(0, 1, 0) or Color3.new(1, 0, 0) -- tickValue and TRUE or FALSE
			local targetTransparency = tickValue and 0 or 1
			local targetTransparency2 = tickValue and 0.5 or 1
		
			local buttonColor = button.BackgroundColor3
			local colorTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
			local fadeOutTweenInfo = TweenInfo.new(2.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
		
			TweenService:Create(button, colorTweenInfo, {BackgroundColor3 = targetColor}):Play()
			TweenService:Create(freeze, fadeOutTweenInfo, {BackgroundTransparency = targetTransparency}):Play()
			TweenService:Create(speed, fadeOutTweenInfo, {TextTransparency = targetTransparency}):Play()
			TweenService:Create(text, fadeOutTweenInfo, {TextTransparency = targetTransparency}):Play()
		
			if tickValue then
				speed.Visible = true
			end
			local fadeOutTween = TweenService:Create(speed, fadeOutTweenInfo, {BackgroundTransparency = targetTransparency2})
			fadeOutTween:Play()
			fadeOutTween.Completed:Connect(function()
				speed.Visible = tickValue
			end)
			epicSound:Play()
		end
		
		button.MouseButton1Click:Connect(function()
			button:SetAttribute("tick", not button:GetAttribute("tick"))
			changeButtonColor()
		end)
		
	end
	coroutine.wrap(RRILX_fake_script)()
	local function YUPHDM_fake_script()
		local script = Instance.new('LocalScript', autoStop)

		local button = script.Parent
		local TweenService = game:GetService("TweenService")
		local clock = workspace.Elevator.Clock.Time.gui.Time
		
		local function changeButtonColor()
			local tickValue = button:GetAttribute("tick")
			local targetColor = tickValue and Color3.new(0, 1, 0) or Color3.new(1, 0, 0)
		
			local buttonColor = button.BackgroundColor3
			local colorTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
		
			local colorTween = TweenService:Create(button, colorTweenInfo, {BackgroundColor3 = targetColor})
			colorTween:Play()
		end
		
		button.MouseButton1Click:Connect(function()
			button:SetAttribute("tick", not button:GetAttribute("tick"))
			changeButtonColor()
			if button:GetAttribute("tick") then
				while clock.Text ~= '0:00' do wait() end
				button:SetAttribute("tick", false)
				changeButtonColor()
			end
		end)
		
	end
	coroutine.wrap(YUPHDM_fake_script)()
	local function CAASFS_fake_script()
		local script = Instance.new('LocalScript', Frame)

		local Frame = script.Parent
		local button = Frame.Spawn
		local Count = Frame.Count
		local speed = Frame.speed
		local spin = Frame.spin
		local freeze = Frame.freeze
		local autoStop = Frame.autoStop
		local GiveItem = game.ReplicatedStorage.GiveItem
		local plr = game.Players.LocalPlayer
		local codes = {"DiskCola", "MiniCosmo", "ANDRUSHA"} --More codes you can get from their discord
		local items = {"DiskCola", "MiniCosmo", "CandyBar"}
		local hugeVector = Vector3.new(math.huge,math.huge,math.huge)
		local numbers, speedVector = {}, {}
		local ended = false
		
		button.MouseButton1Click:Connect(function()
			local chr = plr.Character
			local hrp = chr:WaitForChild("HumanoidRootPart")
			local backpack = plr.Backpack
		
			if spin:GetAttribute("tick") then
				numbers = {}
				for num in speed.Text:gmatch("%S+") do
					table.insert(numbers, tonumber(num))
				end
			end
		
			if #numbers == 3 or not spin:GetAttribute("tick") then
				if spin:GetAttribute("tick") then
					speedVector = Vector3.new(numbers[1], numbers[2], numbers[3])
				end
		
				if freeze:GetAttribute("tick") and spin:GetAttribute("tick") then
					hrp.Anchored = true
				end
		
				local numberOfGarbage = tonumber(Count.Text)
				numberOfGarbage = math.floor(numberOfGarbage / #codes)
		
				for i = 0, numberOfGarbage do
					for i in pairs(codes) do
						GiveItem:FireServer(codes[i])
						local item = backpack:WaitForChild(items[i])
						item.Parent = chr
						item.Parent = workspace
		
						if spin:GetAttribute("tick") then
							local spin = Instance.new("BodyAngularVelocity", item:WaitForChild("Handle"))
							spin.AngularVelocity = speedVector
							spin.MaxTorque = hugeVector
						end
					end
				end
				hrp.Anchored = false
			else 
				warn('Pls give me correct vector. Example: 12 34 56. This example is same as Vector3.new(12, 34, 56). 12 is X, 34 - Y and 56 - Z.')
			end
		end)
		
		while wait() do
			if autoStop:GetAttribute("tick") then
				local chr = plr.Character
				local hrp = chr:WaitForChild("HumanoidRootPart")
				local backpack = plr.Backpack
		
				if spin:GetAttribute("tick") then
					numbers = {}
					for num in speed.Text:gmatch("%S+") do
						table.insert(numbers, tonumber(num))
					end
				end
		
				if #numbers == 3 or not spin:GetAttribute("tick") then
					if spin:GetAttribute("tick") then
						speedVector = Vector3.new(numbers[1], numbers[2], numbers[3])
					end
		
					if freeze:GetAttribute("tick") and spin:GetAttribute("tick") then
						hrp.Anchored = true
					end
		
					for i in pairs(codes) do
						GiveItem:FireServer(codes[i])
						local item = backpack:WaitForChild(items[i])
						item.Parent = chr
						item.Parent = workspace
						if spin:GetAttribute("tick") then
							local spin = Instance.new("BodyAngularVelocity", item:WaitForChild("Handle"))
							spin.AngularVelocity = speedVector
							spin.MaxTorque = hugeVector
						end
					end
				else 
					warn('Pls give me correct vector. Example: 12 34 56. This example is same as Vector3.new(12, 34, 56). 12 is X, 34 - Y and 56 - Z.')
				end
				ended = true
			else
				if ended then
					local chr = plr.Character
					local hrp = chr:WaitForChild("HumanoidRootPart")
					hrp.Anchored = false
					ended = false
				end
			end
		end
	end
	coroutine.wrap(CAASFS_fake_script)()
end