-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 4
Frame.Position = UDim2.new(0.237839773, 0, 0.14736478, 0)
Frame.Size = UDim2.new(0, 344, 0, 237)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 4
TextButton.Position = UDim2.new(0, 0, 0.379746825, 0)
TextButton.Size = UDim2.new(0, 344, 0, 47)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "jumpscare"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 344, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "teamcameron jumpscare gui"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

-- Scripts:

local function SXEFR_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local jumpscareSound = Instance.new("Sound", workspace)
	jumpscareSound.Name = "JumpscareSound"
	jumpscareSound.Volume = 9999999999999999
	jumpscareSound.Pitch = 0.75
	jumpscareSound.SoundId = "rbxassetid://7006487793"
	 
	local jumpscareGUI = Instance.new("ScreenGui", nil)
	jumpscareGUI.Name = "Jumpscare"
	local image = Instance.new("ImageLabel", jumpscareGUI)
	image.Name = "JumpscareImage"
	image.BackgroundColor3 = Color3.new(0, 0, 0)
	image.BorderColor3 = Color3.new(255, 255, 255)
	image.BorderSizePixel = 0
	image.Size = UDim2.new(1, 0, 1, 0)
	image.Image = "http://www.roblox.com/asset/?id=16614529984"
	image.Active = true
	 
	for i, c in pairs(game.Players:GetChildren()) do
		    local jumpscareClone = jumpscareGUI:Clone()
		    jumpscareClone.Parent = c.PlayerGui
	end
	jumpscareSound:Play()
	wait(10)
	jumpscareSound:Destroy()
	for i, c in pairs(game.Players:GetChildren()) do
		    c.PlayerGui.Jumpscare:Destroy()
	end
	
end
coroutine.wrap(SXEFR_fake_script)()
local function ZSXC_fake_script() -- Frame.Script 
	local script = Instance.new('Script', Frame)

	script.Parent.Active = true
	script.Parent.Draggable = true
end
coroutine.wrap(ZSXC_fake_script)()
