-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Frame.BorderColor3 = Color3.fromRGB(43, 43, 43)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.270029664, 0, 0.237442926, 0)
Frame.Size = UDim2.new(0, 293, 0, 176)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
TextLabel.BorderColor3 = Color3.fromRGB(43, 43, 43)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 293, 0, 36)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "AUTO FARM SCRIPT"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
TextLabel_2.BorderColor3 = Color3.fromRGB(43, 43, 43)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 0, 0.869318187, 0)
TextLabel_2.Size = UDim2.new(0, 293, 0, 23)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "(can't disable script and gui closes after enabled)"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.156996593, 0, 0.357954532, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "ENABLE"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

-- Scripts:

local function OOVOHZB_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local frame = script.Parent.Parent
	
	script.Parent.MouseButton1Click:Connect(function()
		frame.Visible = false
	end)
end
coroutine.wrap(OOVOHZB_fake_script)()
local function YCSNEDD_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	while wait(0.1) do
		Game.ReplicatedStorage.Remotes.AgeUp:FireServer()
	end
end
coroutine.wrap(YCSNEDD_fake_script)()
