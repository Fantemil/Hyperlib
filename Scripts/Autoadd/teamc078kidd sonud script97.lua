-- Gui to Lua
-- Version: 3.2

-- Instances:

local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local music5 = Instance.new("TextButton")
local music = Instance.new("TextButton")
local music6 = Instance.new("TextButton")
local music4 = Instance.new("TextButton")
local music3 = Instance.new("TextButton")
local music2 = Instance.new("TextButton")

--Properties:

Frame.Parent = game.Workspace.ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0342627577, 0, 0.225381419, 0)
Frame.Size = UDim2.new(0, 471, 0, 402)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 85, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 471, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "sonud gui v1"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = TextLabel
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 0, 7.03999996, 0)
TextLabel_2.Size = UDim2.new(0, 471, 0, 50)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "made by teamc078kidd"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 85, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

music5.Name = "music 5"
music5.Parent = TextLabel_2
music5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
music5.BorderColor3 = Color3.fromRGB(0, 0, 0)
music5.BorderSizePixel = 0
music5.Position = UDim2.new(0, 0, -5.5999999, 0)
music5.Size = UDim2.new(0, 135, 0, 50)
music5.Font = Enum.Font.SourceSans
music5.Text = "music 5"
music5.TextColor3 = Color3.fromRGB(0, 0, 0)
music5.TextScaled = true
music5.TextSize = 14.000
music5.TextWrapped = true

music.Name = "music"
music.Parent = music5
music.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
music.BorderColor3 = Color3.fromRGB(0, 0, 0)
music.BorderSizePixel = 0
music.Position = UDim2.new(2.51851845, 0, 0, 0)
music.Size = UDim2.new(0, 131, 0, 50)
music.Font = Enum.Font.SourceSans
music.Text = "music"
music.TextColor3 = Color3.fromRGB(0, 0, 0)
music.TextScaled = true
music.TextSize = 14.000
music.TextWrapped = true

music6.Name = "music 6"
music6.Parent = music
music6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
music6.BorderColor3 = Color3.fromRGB(0, 0, 0)
music6.BorderSizePixel = 0
music6.Position = UDim2.new(-2.59541988, 0, 1.55999994, 0)
music6.Size = UDim2.new(0, 135, 0, 50)
music6.Font = Enum.Font.SourceSans
music6.Text = "music 6"
music6.TextColor3 = Color3.fromRGB(0, 0, 0)
music6.TextScaled = true
music6.TextSize = 14.000
music6.TextWrapped = true

music4.Name = "music 4"
music4.Parent = music6
music4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
music4.BorderColor3 = Color3.fromRGB(0, 0, 0)
music4.BorderSizePixel = 0
music4.Position = UDim2.new(2.51851845, 0, 0, 0)
music4.Size = UDim2.new(0, 131, 0, 50)
music4.Font = Enum.Font.SourceSans
music4.Text = "music 4"
music4.TextColor3 = Color3.fromRGB(0, 0, 0)
music4.TextScaled = true
music4.TextSize = 14.000
music4.TextWrapped = true

music3.Name = "music 3"
music3.Parent = music4
music3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
music3.BorderColor3 = Color3.fromRGB(0, 0, 0)
music3.BorderSizePixel = 0
music3.Position = UDim2.new(0, 0, 1.75999999, 0)
music3.Size = UDim2.new(0, 131, 0, 50)
music3.Font = Enum.Font.SourceSans
music3.Text = "music 3"
music3.TextColor3 = Color3.fromRGB(0, 0, 0)
music3.TextScaled = true
music3.TextSize = 14.000
music3.TextWrapped = true

music2.Name = "music 2"
music2.Parent = music3
music2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
music2.BorderColor3 = Color3.fromRGB(0, 0, 0)
music2.BorderSizePixel = 0
music2.Position = UDim2.new(-2.59541988, 0, 0, 0)
music2.Size = UDim2.new(0, 135, 0, 50)
music2.Font = Enum.Font.SourceSans
music2.Text = "music 2"
music2.TextColor3 = Color3.fromRGB(0, 0, 0)
music2.TextScaled = true
music2.TextSize = 14.000
music2.TextWrapped = true

-- Scripts:

local function RGGN_fake_script() -- music3.LocalScript 
	local script = Instance.new('LocalScript', music3)

	local Sound = script.Parent.Sound -- Change Sound to whatever your sound is called.
	
	script.Parent.MouseButton1Click:Connect(function()
		Sound:Play()
	end)
	
end
coroutine.wrap(RGGN_fake_script)()
local function RXUJF_fake_script() -- music4.LocalScript 
	local script = Instance.new('LocalScript', music4)

	local Sound = script.Parent.Sound -- Change Sound to whatever your sound is called.
	
	script.Parent.MouseButton1Click:Connect(function()
		Sound:Play()
	end)
	
end
coroutine.wrap(RXUJF_fake_script)()
local function XVBHFF_fake_script() -- music6.LocalScript 
	local script = Instance.new('LocalScript', music6)

	local Sound = script.Parent.Sound -- Change Sound to whatever your sound is called.
	
	script.Parent.MouseButton1Click:Connect(function()
		Sound:Play()
	end)
end
coroutine.wrap(XVBHFF_fake_script)()
local function KGUKY_fake_script() -- music.LocalScript 
	local script = Instance.new('LocalScript', music)

	local Sound = script.Parent.Sound -- Change Sound to whatever your sound is called.
	
	script.Parent.MouseButton1Click:Connect(function()
		Sound:Play()
	end)
	
	
end
coroutine.wrap(KGUKY_fake_script)()
local function CYRJS_fake_script() -- music5.LocalScript 
	local script = Instance.new('LocalScript', music5)

	local lighting = game:GetService("Lighting")
	
	local function skyArctic()
		script.Skyboxes.ArcticSky.Parent = lighting
		lighting.DesertSky.Parent = script.Skyboxes
	end
	
	skyArctic(Roblox k00pkidd)
	
end
coroutine.wrap(CYRJS_fake_script)()
