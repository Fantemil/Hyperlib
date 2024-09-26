-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local Dude09123skybox = Instance.new("TextButton")
local Dude09123theme = Instance.new("TextButton")
local decalspam = Instance.new("TextButton")
local teamcamerontheme = Instance.new("TextButton")
local disco = Instance.new("TextButton")
local hint = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.132681563, 0, 0.168169215, 0)
Frame.Size = UDim2.new(0, 375, 0, 267)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 375, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "TEAMDude09123 GUI V1"
TextLabel.TextColor3 = Color3.fromRGB(255, 85, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

ImageLabel.Parent = TextLabel
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0, 0, 1, 0)
ImageLabel.Size = UDim2.new(0, 375, 0, 217)
ImageLabel.Image = "rbxassetid://16891921733"

Dude09123skybox.Name = "Dude09123 skybox"
Dude09123skybox.Parent = TextLabel
Dude09123skybox.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
Dude09123skybox.BorderColor3 = Color3.fromRGB(0, 0, 0)
Dude09123skybox.BorderSizePixel = 0
Dude09123skybox.Position = UDim2.new(0, 0, 1.36000001, 0)
Dude09123skybox.Size = UDim2.new(0, 109, 0, 50)
Dude09123skybox.Font = Enum.Font.SourceSans
Dude09123skybox.Text = "Dude09123 skybox"
Dude09123skybox.TextColor3 = Color3.fromRGB(255, 255, 0)
Dude09123skybox.TextScaled = true
Dude09123skybox.TextSize = 14.000
Dude09123skybox.TextWrapped = true

Dude09123theme.Name = "Dude09123 theme"
Dude09123theme.Parent = Dude09123skybox
Dude09123theme.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
Dude09123theme.BorderColor3 = Color3.fromRGB(0, 0, 0)
Dude09123theme.BorderSizePixel = 0
Dude09123theme.Position = UDim2.new(0, 0, 1.51999998, 0)
Dude09123theme.Size = UDim2.new(0, 109, 0, 50)
Dude09123theme.Font = Enum.Font.SourceSans
Dude09123theme.Text = "Dude09123 theme"
Dude09123theme.TextColor3 = Color3.fromRGB(255, 255, 0)
Dude09123theme.TextScaled = true
Dude09123theme.TextSize = 14.000
Dude09123theme.TextWrapped = true

decalspam.Name = "decal spam"
decalspam.Parent = Dude09123theme
decalspam.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
decalspam.BorderColor3 = Color3.fromRGB(0, 0, 0)
decalspam.BorderSizePixel = 0
decalspam.Position = UDim2.new(0, 0, 1.46000004, 0)
decalspam.Size = UDim2.new(0, 109, 0, 50)
decalspam.Font = Enum.Font.SourceSans
decalspam.Text = "decal spam"
decalspam.TextColor3 = Color3.fromRGB(255, 255, 0)
decalspam.TextScaled = true
decalspam.TextSize = 14.000
decalspam.TextWrapped = true

teamcamerontheme.Name = "teamcameron theme"
teamcamerontheme.Parent = decalspam
teamcamerontheme.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
teamcamerontheme.BorderColor3 = Color3.fromRGB(0, 0, 0)
teamcamerontheme.BorderSizePixel = 0
teamcamerontheme.Position = UDim2.new(2.22018337, 0, 0, 0)
teamcamerontheme.Size = UDim2.new(0, 133, 0, 50)
teamcamerontheme.Font = Enum.Font.SourceSans
teamcamerontheme.Text = "teamcameron theme"
teamcamerontheme.TextColor3 = Color3.fromRGB(255, 255, 0)
teamcamerontheme.TextScaled = true
teamcamerontheme.TextSize = 14.000
teamcamerontheme.TextWrapped = true

disco.Name = "disco"
disco.Parent = teamcamerontheme
disco.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
disco.BorderColor3 = Color3.fromRGB(0, 0, 0)
disco.BorderSizePixel = 0
disco.Position = UDim2.new(0, 0, -1.46000004, 0)
disco.Size = UDim2.new(0, 133, 0, 50)
disco.Font = Enum.Font.SourceSans
disco.Text = "disco"
disco.TextColor3 = Color3.fromRGB(255, 255, 0)
disco.TextScaled = true
disco.TextSize = 14.000
disco.TextWrapped = true

hint.Name = "hint"
hint.Parent = disco
hint.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
hint.BorderColor3 = Color3.fromRGB(0, 0, 0)
hint.BorderSizePixel = 0
hint.Position = UDim2.new(0, 0, -1.51999998, 0)
hint.Size = UDim2.new(0, 133, 0, 50)
hint.Font = Enum.Font.SourceSans
hint.Text = "hint"
hint.TextColor3 = Color3.fromRGB(255, 255, 0)
hint.TextScaled = true
hint.TextSize = 14.000
hint.TextWrapped = true

TextLabel_2.Parent = hint
TextLabel_2.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(-0.939849615, 0, 3.68000007, 0)
TextLabel_2.Size = UDim2.new(0, 119, 0, 15)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "made by teamcameron"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 85, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

-- Scripts:

local function FRORXO_fake_script() -- hint.Script 
	local script = Instance.new('Script', hint)

	script.Parent.MouseButton1Down:Connect(function()
		local function write(text,object)
			if object:IsA("Hint") == true then
				local count = object:FindFirstChild("Count")
				if count == nil then
					count = Instance.new("NumberValue")
					count.Parent = object
					count.Name = "Count"
					count.Value = count.Value + 1
				else
					count.Value = count.Value + 1
				end
				local startcount = count.Value
				for i = 1,#text do
					if count.Value == startcount then
						local letter = string.sub(text,i,i)
						object.Text = string.sub(text,1,i)
						wait(0.001)
					else
						break
					end
				end
			end
		end
		local bro = Instance.new("Hint",workspace)
		write("TEAMDude09123 join today!",bro)
	end)
	
end
coroutine.wrap(FRORXO_fake_script)()
local function CQWNL_fake_script() -- disco.Script 
	local script = Instance.new('Script', disco)

	
	--disco
	script.Parent.MouseButton1Click:Connect(function()
		local Lighting = game:GetService("Lighting")
		local ColorCorrection = Instance.new("ColorCorrectionEffect", Lighting)
	
		function zigzag(X) 
			return math.acos(math.cos(X*math.pi))/math.pi
		end
	
		Counter = 0
	
		Lighting.TimeOfDay = "12:00"
	
		while wait(0.1) do 
			ColorCorrection.TintColor = Color3.fromHSV(zigzag(Counter),1,1)
			Lighting.Ambient = Color3.fromHSV(zigzag(Counter),1,1)
			Counter += 0.01
		end
	end)
	
	
	
end
coroutine.wrap(CQWNL_fake_script)()
local function WOLSD_fake_script() -- teamcamerontheme.Script 
	local script = Instance.new('Script', teamcamerontheme)

	function onClick()
		Instance.new("Sound").Parent = game.Workspace  game.Workspace.Sound.SoundId ="rbxassetid://1839246711" game.Workspace.Sound.Looped=true  game.Workspace.Sound:Play()
	end
	
	script.Parent.MouseButton1Down:connect(onClick)
	
	
	
	
end
coroutine.wrap(WOLSD_fake_script)()
local function VHMV_fake_script() -- decalspam.Script 
	local script = Instance.new('Script', decalspam)

	function click()
		function exPro(root)
			for _, v in pairs(root:GetChildren()) do
				if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset/?id=16891921733" then
					v.Parent = nil
				elseif v:IsA("BasePart") then
					v.Material = "Plastic"
					v.Transparency = 0
					local One = Instance.new("Decal", v)
					local Two = Instance.new("Decal", v)
					local Three = Instance.new("Decal", v)
					local Four = Instance.new("Decal", v)
					local Five = Instance.new("Decal", v)
					local Six = Instance.new("Decal", v)
					One.Texture = "http://www.roblox.com/asset/?id=16891921733"
					Two.Texture = "http://www.roblox.com/asset/?id=16891921733"
					Three.Texture = "http://www.roblox.com/asset/?id=16891921733"
					Four.Texture = "http://www.roblox.com/asset/?id=16891921733"
					Five.Texture = "http://www.roblox.com/asset/?id=16891921733"
					Six.Texture = "http://www.roblox.com/asset/?id=16891921733"
					One.Face = "Front"
					Two.Face = "Back"
					Three.Face = "Right"
					Four.Face = "Left"
					Five.Face = "Top"
					Six.Face = "Bottom"
				end
				exPro(v)
			end
		end
		function asdf(root)
			for _, v in pairs(root:GetChildren()) do
				asdf(v)
			end
		end
		exPro(game.Workspace)
		asdf(game.Workspace)
	end
	
	script.Parent.MouseButton1Down:connect(click)
	
	
	--16891921733
	
end
coroutine.wrap(VHMV_fake_script)()
local function EOFECBS_fake_script() -- Dude09123theme.Script 
	local script = Instance.new('Script', Dude09123theme)

	function onClick()
		Instance.new("Sound").Parent = game.Workspace  game.Workspace.Sound.SoundId ="rbxassetid://142376088" game.Workspace.Sound.Looped=true  game.Workspace.Sound:Play()
	end
	
	script.Parent.MouseButton1Down:connect(onClick)
	
	
	
end
coroutine.wrap(EOFECBS_fake_script)()
local function IFDVSFS_fake_script() -- Dude09123skybox.Script 
	local script = Instance.new('Script', Dude09123skybox)

	--sky
	function click()
		s = Instance.new("Sky")
		s.Name = "Sky"
		s.Parent = game.Lighting
		s.SkyboxBk = "http://www.roblox.com/asset/?id=16891921733"
		s.SkyboxDn = "http://www.roblox.com/asset/?id=16891921733"
		s.SkyboxFt = "http://www.roblox.com/asset/?id=16891921733"
		s.SkyboxLf = "http://www.roblox.com/asset/?id=16891921733"
		s.SkyboxRt = "http://www.roblox.com/asset/?id=16891921733"
		s.SkyboxUp = "http://www.roblox.com/asset/?id=16891921733"
		game.Lighting.TimeOfDay = 12
	end
	
	script.Parent.MouseButton1Down:connect(click)
	
	
	
end
coroutine.wrap(IFDVSFS_fake_script)()
local function QRNC_fake_script() -- Frame.Script 
	local script = Instance.new('Script', Frame)

	script.Parent.Active = true
	script.Parent.Draggable = true
	
end
coroutine.wrap(QRNC_fake_script)()
