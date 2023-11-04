-- Gui to Lua
-- Version: 3.2

-- Instances:

local TeleportMenu = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Save = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Load = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local value = Instance.new("CFrameValue")
local pos = UDim2.new(0.648418069, 0, 0.287390023, 0)

--Properties:

TeleportMenu.Name = "TeleportMenu"
TeleportMenu.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
TeleportMenu.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = TeleportMenu
Frame.BackgroundColor3 = Color3.fromRGB(91, 15, 197)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.648418069, 0, 0.287390023, 0)
Frame.Size = UDim2.new(0, 306, 0, 251)

UICorner.Parent = Frame

Save.Name = "Save"
Save.Parent = Frame
Save.BackgroundColor3 = Color3.fromRGB(117, 19, 255)
Save.BorderColor3 = Color3.fromRGB(0, 0, 0)
Save.BorderSizePixel = 0
Save.Position = UDim2.new(0.173202619, 0, 0.398406386, 0)
Save.Size = UDim2.new(0, 200, 0, 50)
Save.Font = Enum.Font.SourceSans
Save.Text = "Save"
Save.TextColor3 = Color3.fromRGB(255, 255, 255)
Save.TextScaled = true
Save.TextSize = 14.000
Save.TextWrapped = true

UICorner_2.Parent = Save

Load.Name = "Load"
Load.Parent = Frame
Load.BackgroundColor3 = Color3.fromRGB(117, 19, 255)
Load.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load.BorderSizePixel = 0
Load.Position = UDim2.new(0.173202619, 0, 0.653386474, 0)
Load.Size = UDim2.new(0, 200, 0, 50)
Load.Font = Enum.Font.SourceSans
Load.Text = "Load"
Load.TextColor3 = Color3.fromRGB(255, 255, 255)
Load.TextScaled = true
Load.TextSize = 14.000
Load.TextWrapped = true

UICorner_3.Parent = Load

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0392156877, 0, 0.0478087664, 0)
TextLabel.Size = UDim2.new(0, 282, 0, 76)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "CFrame Loader"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true

TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

value.Parent = game.Players.LocalPlayer
value.Name = "Value"

-- Scripts:

local function YGEP_fake_script() -- Save.Save 
	local script = Instance.new('LocalScript', Save)

	script.Parent.Activated:Connect(function()
		local plr = game.Players.LocalPlayer
		if plr then
			local char = plr.Character
			if char then
				local hRP = char:FindFirstChild("HumanoidRootPart")
				if hRP then
					local value = game.Players.LocalPlayer:FindFirstChild("Value")
					value.Value = hRP.CFrame
				end
			end
		end
	end)
end
coroutine.wrap(YGEP_fake_script)()
local function RXLIHFF_fake_script() -- Load.Load 
	local script = Instance.new('LocalScript', Load)

	script.Parent.Activated:Connect(function()
		local plr = game.Players.LocalPlayer
		if plr then
			local char = plr.Character
			if char then
				local hRP = char:FindFirstChild("HumanoidRootPart")
				if hRP then
					local value = game.Players.LocalPlayer:FindFirstChild("Value")
					hRP.CFrame = value.Value
				end
			end
		end
	end)
end
coroutine.wrap(RXLIHFF_fake_script)()
local function EKFUEHM_fake_script() -- Frame.Move 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")

	local plr = game.Players.LocalPlayer
	local gui = plr.PlayerGui:FindFirstChild("TeleportMenu").Frame

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
					pos = Frame.Position
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(EKFUEHM_fake_script)()


game.Players.LocalPlayer.CharacterAdded:Connect(function()
	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local TeleportMenu = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Save = Instance.new("TextButton")
	local UICorner_2 = Instance.new("UICorner")
	local Load = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	local TextLabel = Instance.new("TextLabel")

	--Properties:

	TeleportMenu.Name = "TeleportMenu"
	TeleportMenu.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	TeleportMenu.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = TeleportMenu
	Frame.BackgroundColor3 = Color3.fromRGB(91, 15, 197)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = pos
	Frame.Size = UDim2.new(0, 306, 0, 251)

	UICorner.Parent = Frame

	Save.Name = "Save"
	Save.Parent = Frame
	Save.BackgroundColor3 = Color3.fromRGB(117, 19, 255)
	Save.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Save.BorderSizePixel = 0
	Save.Position = UDim2.new(0.173202619, 0, 0.398406386, 0)
	Save.Size = UDim2.new(0, 200, 0, 50)
	Save.Font = Enum.Font.SourceSans
	Save.Text = "Save"
	Save.TextColor3 = Color3.fromRGB(255, 255, 255)
	Save.TextScaled = true
	Save.TextSize = 14.000
	Save.TextWrapped = true

	UICorner_2.Parent = Save

	Load.Name = "Load"
	Load.Parent = Frame
	Load.BackgroundColor3 = Color3.fromRGB(117, 19, 255)
	Load.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Load.BorderSizePixel = 0
	Load.Position = UDim2.new(0.173202619, 0, 0.653386474, 0)
	Load.Size = UDim2.new(0, 200, 0, 50)
	Load.Font = Enum.Font.SourceSans
	Load.Text = "Load"
	Load.TextColor3 = Color3.fromRGB(255, 255, 255)
	Load.TextScaled = true
	Load.TextSize = 14.000
	Load.TextWrapped = true

	UICorner_3.Parent = Load

	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.0392156877, 0, 0.0478087664, 0)
	TextLabel.Size = UDim2.new(0, 282, 0, 76)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = "CFrame Loader"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true

	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true

	-- Scripts:

	local function YGEP_fake_script() -- Save.Save 
		local script = Instance.new('LocalScript', Save)

		script.Parent.Activated:Connect(function()
			local plr = game.Players.LocalPlayer
			if plr then
				local char = plr.Character
				if char then
					local hRP = char:FindFirstChild("HumanoidRootPart")
					if hRP then
						local value = game.Players.LocalPlayer:FindFirstChild("Value")
						value.Value = hRP.CFrame
					end
				end
			end
		end)
	end
	coroutine.wrap(YGEP_fake_script)()
	local function RXLIHFF_fake_script() -- Load.Load 
		local script = Instance.new('LocalScript', Load)

		script.Parent.Activated:Connect(function()
			local plr = game.Players.LocalPlayer
			if plr then
				local char = plr.Character
				if char then
					local hRP = char:FindFirstChild("HumanoidRootPart")
					if hRP then
						local value = game.Players.LocalPlayer:FindFirstChild("Value")
						hRP.CFrame = value.Value
					end
				end
			end
		end)
	end
	coroutine.wrap(RXLIHFF_fake_script)()
	local function EKFUEHM_fake_script() -- Frame.Move 
		local script = Instance.new('LocalScript', Frame)

		local UserInputService = game:GetService("UserInputService")

		local plr = game.Players.LocalPlayer
		local gui = plr.PlayerGui:FindFirstChild("TeleportMenu").Frame

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
						pos = Frame.Position
						print(pos)
					end
				end)
			end
		end)

		gui.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				update(input)
			end
		end)
	end
	coroutine.wrap(EKFUEHM_fake_script)()
end)