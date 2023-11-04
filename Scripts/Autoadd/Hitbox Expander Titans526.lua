-- Gui to Lua
-- Version: 3.2

-- Instances:

local ZaWaurdo = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local Freeze = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local UnFreeze = Instance.new("TextBox")
local UICorner_4 = Instance.new("UICorner")
local HumanoidRoottPart = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")

--Properties:

ZaWaurdo.Name = "Za Waurdo"
ZaWaurdo.Parent = game:GetService("CoreGui")
ZaWaurdo.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ZaWaurdo
Frame.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.184659094, 0, 0.582294285, 0)
Frame.Size = UDim2.new(0, 193, 0, 255)

UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.00186932029, 0, -0.000179993876, 0)
TextLabel.Size = UDim2.new(0, 193, 0, 37)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Downfall[SANDBOX]"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 10)
UICorner_2.Parent = TextLabel

Freeze.Name = "Freeze"
Freeze.Parent = Frame
Freeze.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
Freeze.BorderColor3 = Color3.fromRGB(0, 0, 0)
Freeze.BorderSizePixel = 0
Freeze.Position = UDim2.new(0.0786917135, 0, 0.195233032, 0)
Freeze.Size = UDim2.new(0, 162, 0, 50)
Freeze.Font = Enum.Font.SourceSansBold
Freeze.Text = "Size"
Freeze.TextColor3 = Color3.fromRGB(0, 0, 0)
Freeze.TextScaled = true
Freeze.TextSize = 14.000
Freeze.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 10)
UICorner_3.Parent = Freeze

UnFreeze.Name = "UnFreeze"
UnFreeze.Parent = Frame
UnFreeze.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
UnFreeze.BorderColor3 = Color3.fromRGB(0, 0, 0)
UnFreeze.BorderSizePixel = 0
UnFreeze.Position = UDim2.new(0.0786917135, 0, 0.450134993, 0)
UnFreeze.Size = UDim2.new(0, 162, 0, 50)
UnFreeze.Font = Enum.Font.SourceSansBold
UnFreeze.Text = "Transparency"
UnFreeze.TextColor3 = Color3.fromRGB(0, 0, 0)
UnFreeze.TextScaled = true
UnFreeze.TextSize = 14.000
UnFreeze.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 10)
UICorner_4.Parent = UnFreeze

HumanoidRoottPart.Name = "HumanoidRoottPart"
HumanoidRoottPart.Parent = Frame
HumanoidRoottPart.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
HumanoidRoottPart.BorderColor3 = Color3.fromRGB(0, 0, 0)
HumanoidRoottPart.BorderSizePixel = 0
HumanoidRoottPart.Position = UDim2.new(0.262245625, 0, 0.741176248, 0)
HumanoidRoottPart.Size = UDim2.new(0, 90, 0, 35)
HumanoidRoottPart.Font = Enum.Font.SourceSansBold
HumanoidRoottPart.Text = "Set"
HumanoidRoottPart.TextColor3 = Color3.fromRGB(0, 0, 0)
HumanoidRoottPart.TextScaled = true
HumanoidRoottPart.TextSize = 14.000
HumanoidRoottPart.TextWrapped = true
HumanoidRoottPart.MouseButton1Down:connect(function()
	while wait() do
		-- Find the 'Titans' group within the path workspace.map.titans
		local titansGroup = workspace.map.titans

		-- Check if the 'Titans' group exists
		if titansGroup then
			-- Iterate through the children of the 'Titans' group
			for _, titan in pairs(titansGroup:GetChildren()) do
				-- Check if the child is a 'Titan' NPC
				if titan:IsA("Model") and titan.Name == "Titan" then
					-- Access the 'Nape' child within the 'Titan' NPC
					local nape = titan:FindFirstChild("Nape")

					-- Check if the 'Nape' child exists
					if nape then
						-- Modify the 'Size' and 'Transparency' properties of 'Nape'
						nape.Size = Vector3.new(Freeze.Text, Freeze.Text, Freeze.Text)
						nape.Transparency = UnFreeze.Text
					end
				end
			end
		end
	end
end)

UICorner_5.CornerRadius = UDim.new(0, 10)
UICorner_5.Parent = HumanoidRoottPart

-- Scripts:

local function YFOBFRV_fake_script() -- Frame.Drag 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	
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
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(YFOBFRV_fake_script)()
