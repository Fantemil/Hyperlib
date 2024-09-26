if _G.CanOpenCD == 'Y' or _G.CanOpenCD == nil then
	_G.CanOpenCD = 'N'
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local chat = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	local UIGradient = Instance.new("UIGradient")
	local UICorner_2 = Instance.new("UICorner")
	local close = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")

	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = ScreenGui
	Frame.Active = true
	Frame.Draggable = true
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.105488181, 0, 0.147911012, 0)
	Frame.Size = UDim2.new(0.250783861, 0, 0.366124362, 0)
	Frame.SizeConstraint = Enum.SizeConstraint.RelativeXX

	chat.Name = "chat"
	chat.Parent = Frame
	chat.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	chat.BorderColor3 = Color3.fromRGB(0, 0, 0)
	chat.BorderSizePixel = 0
	chat.Position = UDim2.new(0.338757247, 0, 0.890470445, 0)
	chat.Size = UDim2.new(0, 79, 0, 39)
	chat.Font = Enum.Font.SourceSans
	chat.Text = "Chat"
	chat.TextColor3 = Color3.fromRGB(0, 0, 0)
	chat.TextScaled = true
	chat.TextSize = 14.000
	chat.TextWrapped = true

	UICorner.Parent = chat

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(65, 65, 65)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
	UIGradient.Rotation = 142.91810607910156
	UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.15), NumberSequenceKeypoint.new(1.00, 0.15)}
	UIGradient.Parent = Frame

	UICorner_2.Parent = Frame

	close.Name = "close"
	close.Parent = Frame
	close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	close.BorderColor3 = Color3.fromRGB(0, 0, 0)
	close.BorderSizePixel = 0
	close.Position = UDim2.new(0.896839917, 0, 0, 0)
	close.Size = UDim2.new(0.100000001, 0, 0.100000001, 0)
	close.SizeConstraint = Enum.SizeConstraint.RelativeXX
	close.Font = Enum.Font.SourceSans
	close.Text = "X"
	close.TextColor3 = Color3.fromRGB(0, 0, 0)
	close.TextScaled = true
	close.TextSize = 14.000
	close.TextWrapped = true

	UICorner_3.Parent = close

	local function PFKZKTS_fake_script()
		local script = Instance.new('LocalScript', Frame)

		local scrGui = script.Parent
		local buttonSize = 0.141
		local startY = 0.073
		
		local function createButton(position, color , i, j)
			local button = Instance.new("TextButton")
			button.Name = i.."_"..j
			button.SizeConstraint = Enum.SizeConstraint.RelativeXX
			button.Size = UDim2.new(buttonSize, 0, buttonSize, 0)
			button.Position = position
			button.BackgroundColor3 = color
			button.Text = ''
			button.Parent = scrGui
		
			button.MouseButton1Click:Connect(function()
				if button.BackgroundColor3 == Color3.new(1, 1, 1) then
					button.BackgroundColor3 = Color3.new(0, 0, 0)
				else
					button.BackgroundColor3 = Color3.new(1, 1, 1)
				end
			end)
		
			return button
		end
		
		for i = 1, 7 do
			for j = 1, 7 do
				local position = UDim2.new((j - 1) * 0.143, 0, (i - 1) * 0.1 + startY, 0)
				createButton(position, Color3.new(1, 1, 1), i, j)
			end
		end
	end
	coroutine.wrap(PFKZKTS_fake_script)()
	local function ALHDNAM_fake_script() 
		local script = Instance.new('LocalScript', chat)

		local function message(message)
			if game:GetService('TextChatService').ChatVersion == Enum.ChatVersion.LegacyChatService then
				game:GetService('ReplicatedStorage'):WaitForChild('DefaultChatSystemChatEvents'):WaitForChild('SayMessageRequest'):FireServer(message, 'All')
			else
				game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(message)
			end
		end

		local scrGui = script.Parent.Parent 
		local status = ""
		script.Parent.MouseButton1Click:Connect(function()
			for i = 1, 7 do
				status = ''
				for j = 1, 7 do
					local button = scrGui:FindFirstChild(i.."_"..j)
					if button then
						if button.BackgroundColor3 == Color3.new(1, 1, 1) then
							status = status.."âª"
						else
							status = status.."â«"
						end
					end
				end
				message(status)
				wait(0.1)
			end
		end)
		
	end
	coroutine.wrap(ALHDNAM_fake_script)()
	local function CVXH_fake_script()
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
	coroutine.wrap(CVXH_fake_script)()
	local function RHVGF_fake_script() 
		local script = Instance.new('LocalScript', close)

		local button = script.Parent
		
		button.MouseButton1Click:Connect(function()
			_G.CanOpenCD = 'Y'
			script.Parent.Parent.Parent:Destroy()
		end)
	end
	coroutine.wrap(RHVGF_fake_script)()
end