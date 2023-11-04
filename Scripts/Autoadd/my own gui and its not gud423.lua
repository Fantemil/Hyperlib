-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Background = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local UserIcon = Instance.new("ImageLabel")
local User = Instance.new("TextLabel")
local ScriptTab = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TextButton3 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UpdateTab = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Background.Name = "Background"
Background.Parent = ScreenGui
Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Background.BorderColor3 = Color3.fromRGB(0, 0, 0)
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0.20551756, 0, 0.249660328, 0)
Background.Size = UDim2.new(0, 605, 0, 293)
Background.Image = "http://www.roblox.com/asset/?id=10527571475"

UICorner.Parent = Background

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 85, 88)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(159, 114, 255))}
UIGradient.Parent = Background

UserIcon.Name = "UserIcon"
UserIcon.Parent = Background
UserIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UserIcon.BackgroundTransparency = 2.000
UserIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
UserIcon.BorderSizePixel = 0
UserIcon.Position = UDim2.new(0.0663716793, 0, 0.129692838, 0)
UserIcon.Size = UDim2.new(0, 79, 0, 80)
UserIcon.Image = "http://www.roblox.com/asset/?id=11713336301"

User.Name = "User"
User.Parent = UserIcon
User.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
User.BackgroundTransparency = 1.000
User.BorderColor3 = Color3.fromRGB(0, 0, 0)
User.BorderSizePixel = 0
User.Position = UDim2.new(1, 0, 0.275000006, 0)
User.Size = UDim2.new(0, 254, 0, 35)
User.Font = Enum.Font.Gotham
User.Text = "Username"
User.TextColor3 = Color3.fromRGB(255, 255, 255)
User.TextScaled = true
User.TextSize = 14.000
User.TextWrapped = true

ScriptTab.Name = "ScriptTab"
ScriptTab.Parent = Background
ScriptTab.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScriptTab.BackgroundTransparency = 0.500
ScriptTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptTab.BorderSizePixel = 0
ScriptTab.Position = UDim2.new(0.0297520906, 0, 0.436860055, 0)
ScriptTab.Size = UDim2.new(0, 363, 0, 153)

UICorner_2.Parent = ScriptTab

TextButton.Parent = ScriptTab
TextButton.BackgroundColor3 = Color3.fromRGB(174, 167, 255)
TextButton.BackgroundTransparency = 0.900
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0413223132, 0, 0.071895428, 0)
TextButton.Size = UDim2.new(0, 130, 0, 23)
TextButton.Font = Enum.Font.Gotham
TextButton.Text = "Faster Speed"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UICorner_3.Parent = TextButton

TextButton3.Name = "TextButton3"
TextButton3.Parent = ScriptTab
TextButton3.BackgroundColor3 = Color3.fromRGB(174, 167, 255)
TextButton3.BackgroundTransparency = 0.900
TextButton3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton3.BorderSizePixel = 0
TextButton3.Position = UDim2.new(0.0413223132, 0, 0.287581712, 0)
TextButton3.Size = UDim2.new(0, 130, 0, 23)
TextButton3.Font = Enum.Font.Gotham
TextButton3.Text = "Revert Speed"
TextButton3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton3.TextScaled = true
TextButton3.TextSize = 14.000
TextButton3.TextWrapped = true

UICorner_4.Parent = TextButton3

TextLabel.Parent = ScriptTab
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.454545468, 0, 0.071895428, 0)
TextLabel.Size = UDim2.new(0, 190, 0, 123)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = "*to lazy to add more lol*"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

UpdateTab.Name = "Update Tab"
UpdateTab.Parent = Background
UpdateTab.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
UpdateTab.BackgroundTransparency = 0.500
UpdateTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
UpdateTab.BorderSizePixel = 0
UpdateTab.Position = UDim2.new(0.685950398, 0, 0.0375426635, 0)
UpdateTab.Size = UDim2.new(0, 160, 0, 270)

UICorner_5.Parent = UpdateTab

TextLabel_2.Parent = UpdateTab
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(0, 160, 0, 17)
TextLabel_2.Font = Enum.Font.Code
TextLabel_2.Text = "Updates:"
TextLabel_2.TextColor3 = Color3.fromRGB(253, 253, 253)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = UpdateTab
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.162499994, 0, 0.15925926, 0)
TextLabel_3.Size = UDim2.new(0, 107, 0, 186)
TextLabel_3.Font = Enum.Font.Gotham
TextLabel_3.Text = "Deleted the X button since it doesnt work and you just have to reset to remove the gui"
TextLabel_3.TextColor3 = Color3.fromRGB(253, 253, 253)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

-- Scripts:

local function ZWQHC_fake_script() -- Background.Script 
	local script = Instance.new('Script', Background)

	script.Parent.BackgroundTransparency = 1
	script.Parent.BackgroundTransparency = 0.9
	script.Parent.BackgroundTransparency = 0.8
	script.Parent.BackgroundTransparency = 0.7
	script.Parent.BackgroundTransparency = 0.6
	script.Parent.BackgroundTransparency = 0.5
	script.Parent.BackgroundTransparency = 0.4
	script.Parent.BackgroundTransparency = 0.3
	script.Parent.BackgroundTransparency = 0.2
	script.Parent.BackgroundTransparency = 0.1
	script.Parent.BackgroundTransparency = 0
	script.Parent.Active = true
	script.Parent.Draggable = true
end
coroutine.wrap(ZWQHC_fake_script)()
local function MQPYJV_fake_script() -- User.LocalScript 
	local script = Instance.new('LocalScript', User)

	local player = game.Players.LocalPlayer
	
	if player then
		script.Parent.Text = "Welcome "..player.Name.. ""
	end
	
	
end
coroutine.wrap(MQPYJV_fake_script)()
local function HRFVSBP_fake_script() -- TextButton.Script 
	local script = Instance.new('Script', TextButton)

	TextButton.MouseButton1Down:Connect(function()
		local player = game.Players.LocalPlayer.Character.Humanoid
		player.WalkSpeed = 50
	end)
end
coroutine.wrap(HRFVSBP_fake_script)()
local function ZYRZEWS_fake_script() -- TextButton3.Script 
	local script = Instance.new('Script', TextButton3)

	TextButton3.MouseButton1Down:Connect(function()
		local player = game.Players.LocalPlayer.Character.Humanoid
		player.WalkSpeed = 16
	end)
end
coroutine.wrap(ZYRZEWS_fake_script)()
