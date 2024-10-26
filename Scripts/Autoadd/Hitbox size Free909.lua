--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
_G.Transparency = 0.7 --Transparency Rest is from the gui--

local HACKEDBYG00BKIDh8DY8H9y9dfy87sdayo9YH8dbfd87Yh8yhfds78dyf78WESY90y7vSY9FY0D4Q39R7hdfgh7 = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")

--Properties:

HACKEDBYG00BKIDh8DY8H9y9dfy87sdayo9YH8dbfd87Yh8yhfds78dyf78WESY90y7vSY9FY0D4Q39R7hdfgh7.Name = "HACKED BY G00BKID h8DY8H9y9dfy 87sdayo9YH8dbfd87Yh8yhf ds78dyf78WESY 90y 7v SY9FY0D4 Q39R7 `h dfgh 7"
HACKEDBYG00BKIDh8DY8H9y9dfy87sdayo9YH8dbfd87Yh8yhfds78dyf78WESY90y7vSY9FY0D4Q39R7hdfgh7.Parent = game:GetService("CoreGui")
HACKEDBYG00BKIDh8DY8H9y9dfy87sdayo9YH8dbfd87Yh8yhfds78dyf78WESY90y7vSY9FY0D4Q39R7hdfgh7.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = HACKEDBYG00BKIDh8DY8H9y9dfy87sdayo9YH8dbfd87Yh8yhfds78dyf78WESY90y7vSY9FY0D4Q39R7hdfgh7
Frame.BackgroundColor3 = Color3.fromRGB(105, 0, 113)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 5
Frame.Position = UDim2.new(0.33098945, 0, 0.397435904, 0)
Frame.Size = UDim2.new(0, 235, 0, 173)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 5
TextLabel.Position = UDim2.new(-0.106382981, 0, -0.0809248537, 0)
TextLabel.Size = UDim2.new(0, 285, 0, 35)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "Hitbox Expander"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 5
TextLabel_2.Position = UDim2.new(-0.106382981, 0, 0.947976887, 0)
TextLabel_2.Size = UDim2.new(0, 285, 0, 35)
TextLabel_2.Font = Enum.Font.SciFi
TextLabel_2.Text = "By David da KOOL Fish"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 5
TextButton.Position = UDim2.new(0.0723404288, 0, 0.549132943, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SciFi
TextButton.Text = "Expand"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.MouseButton1Down:connect(function()
	while wait(1.5) do
		local Players = game:GetService("Players")
		local allPlayers = Players:GetPlayers()
		local LocalPlayer = Players.LocalPlayer

		for _, player in pairs(allPlayers) do
			if LocalPlayer ~= player then
				local char = player.Character
				if char then
					local Ht = char:FindFirstChild('HumanoidRootPart')
					Ht.Size = Vector3.new(TextBox.Text, TextBox.Text, TextBox.Text)
					Ht.Transparency = _G.Transparency
				end
			end
		end
	end
end)

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 5
TextBox.Position = UDim2.new(0.314893603, 0, 0.213872835, 0)
TextBox.Size = UDim2.new(0, 85, 0, 37)
TextBox.Font = Enum.Font.SciFi
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

-- Scripts:

local function ATGNSBN_fake_script() -- Frame.LocalScript 
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
			if gui.Visible then
				update(input)
			end
		end
	end)
end
coroutine.wrap(ATGNSBN_fake_script)()