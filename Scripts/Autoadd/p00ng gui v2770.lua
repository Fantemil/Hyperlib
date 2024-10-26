--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- Monstrum's Gui to Lua\n-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local disco = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local skybox = Instance.new("TextButton")
local music2 = Instance.new("TextButton")
local particlesspam = Instance.new("TextButton")
local musicstop = Instance.new("TextButton")
local jumpscare2 = Instance.new("TextButton")
local decalspam = Instance.new("TextButton")
local jumpscare1 = Instance.new("TextButton")
local hint = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(179, 0, 0)
Frame.BorderSizePixel = 5
Frame.Position = UDim2.new(0.219354838, 0, 0.366818875, 0)
Frame.Size = UDim2.new(0, 222, 0, 258)

disco.Name = "disco"
disco.Parent = Frame
disco.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
disco.BorderColor3 = Color3.fromRGB(165, 3, 2)
disco.BorderSizePixel = 3
disco.Position = UDim2.new(0.0432040915, 0, 0.627848744, 0)
disco.Size = UDim2.new(0, 89, 0, 24)
disco.Font = Enum.Font.SourceSans
disco.Text = "disco"
disco.TextColor3 = Color3.fromRGB(255, 255, 255)
disco.TextScaled = true
disco.TextSize = 14.000
disco.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0468465462, 0, 0.0581395365, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 30)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "p00ngui v2 reborn 1.4.0"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 33.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(-0.0872503072, 0, 0.151090518, 0)
TextLabel_2.Size = UDim2.new(0, 259, 0, 35)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "by k00pkid and bossjklo,packerr"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 22.000
TextLabel_2.TextWrapped = true

skybox.Name = "skybox"
skybox.Parent = Frame
skybox.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
skybox.BorderColor3 = Color3.fromRGB(165, 3, 2)
skybox.BorderSizePixel = 3
skybox.Position = UDim2.new(0.497776628, 0, 0.342052966, 0)
skybox.Size = UDim2.new(0, 99, 0, 24)
skybox.Font = Enum.Font.SourceSans
skybox.Text = "skybox"
skybox.TextColor3 = Color3.fromRGB(255, 255, 255)
skybox.TextScaled = true
skybox.TextSize = 14.000
skybox.TextWrapped = true

music2.Name = "music 2"
music2.Parent = Frame
music2.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
music2.BorderColor3 = Color3.fromRGB(165, 3, 2)
music2.BorderSizePixel = 3
music2.Position = UDim2.new(0.0432040915, 0, 0.751909435, 0)
music2.Size = UDim2.new(0, 89, 0, 22)
music2.Font = Enum.Font.SourceSans
music2.Text = "theme"
music2.TextColor3 = Color3.fromRGB(255, 255, 255)
music2.TextScaled = true
music2.TextSize = 14.000
music2.TextWrapped = true

particlesspam.Name = "particles spam"
particlesspam.Parent = Frame
particlesspam.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
particlesspam.BorderColor3 = Color3.fromRGB(165, 3, 2)
particlesspam.BorderSizePixel = 3
particlesspam.Position = UDim2.new(0.0432040915, 0, 0.863798976, 0)
particlesspam.Size = UDim2.new(0, 200, 0, 28)
particlesspam.Font = Enum.Font.SourceSans
particlesspam.Text = "particles spam"
particlesspam.TextColor3 = Color3.fromRGB(255, 255, 255)
particlesspam.TextScaled = true
particlesspam.TextSize = 14.000
particlesspam.TextWrapped = true

musicstop.Name = "music stop"
musicstop.Parent = Frame
musicstop.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
musicstop.BorderColor3 = Color3.fromRGB(165, 3, 2)
musicstop.BorderSizePixel = 3
musicstop.Position = UDim2.new(0.503015995, 0, 0.751909375, 0)
musicstop.Size = UDim2.new(0, 98, 0, 22)
musicstop.Font = Enum.Font.SourceSans
musicstop.Text = "stop music"
musicstop.TextColor3 = Color3.fromRGB(255, 255, 255)
musicstop.TextScaled = true
musicstop.TextSize = 14.000
musicstop.TextWrapped = true

jumpscare2.Name = "jumpscare 2"
jumpscare2.Parent = Frame
jumpscare2.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
jumpscare2.BorderColor3 = Color3.fromRGB(165, 3, 2)
jumpscare2.BorderSizePixel = 3
jumpscare2.Position = UDim2.new(0.502149999, 0, 0.627207756, 0)
jumpscare2.Size = UDim2.new(0, 98, 0, 25)
jumpscare2.Font = Enum.Font.SourceSans
jumpscare2.Text = "skeleton jumpscareð¤ð»ð³â"
jumpscare2.TextColor3 = Color3.fromRGB(255, 255, 255)
jumpscare2.TextScaled = true
jumpscare2.TextSize = 14.000
jumpscare2.TextWrapped = true

decalspam.Name = "decal spam"
decalspam.Parent = Frame
decalspam.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
decalspam.BorderColor3 = Color3.fromRGB(165, 3, 2)
decalspam.BorderSizePixel = 3
decalspam.Position = UDim2.new(0.0423839688, 0, 0.342052966, 0)
decalspam.Size = UDim2.new(0, 88, 0, 24)
decalspam.Font = Enum.Font.SourceSans
decalspam.Text = "decal spam"
decalspam.TextColor3 = Color3.fromRGB(255, 255, 255)
decalspam.TextScaled = true
decalspam.TextSize = 14.000
decalspam.TextWrapped = true

jumpscare1.Name = "p00ngjumð¤"
jumpscare1.Parent = Frame
jumpscare1.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
jumpscare1.BorderColor3 = Color3.fromRGB(165, 3, 2)
jumpscare1.BorderSizePixel = 3
jumpscare1.Position = UDim2.new(0.497776628, 0, 0.478623748, 0)
jumpscare1.Size = UDim2.new(0, 99, 0, 28)
jumpscare1.Font = Enum.Font.SourceSans
jumpscare1.Text = "funni jumpscare"
jumpscare1.TextColor3 = Color3.fromRGB(255, 255, 255)
jumpscare1.TextScaled = true
jumpscare1.TextSize = 14.000
jumpscare1.TextWrapped = true

hint.Name = "hint"
hint.Parent = Frame
hint.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
hint.BorderColor3 = Color3.fromRGB(165, 3, 2)
hint.BorderSizePixel = 3
hint.Position = UDim2.new(0.039653331, 0, 0.477504045, 0)
hint.Size = UDim2.new(0, 89, 0, 29)
hint.Font = Enum.Font.SourceSans
hint.Text = "hint"
hint.TextColor3 = Color3.fromRGB(255, 255, 255)
hint.TextScaled = true
hint.TextSize = 14.000
hint.TextWrapped = true

-- Scripts:

local function CIORJCJ_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	function dragify(Main)
		dragToggle = nil
		dragSpeed = 0.95 -- You can edit this.
		dragInput = nil
		dragStart = nil
		dragPos = nil
	
		function updateInput(input)
			Delta = input.Position - dragStart
			Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Main, TweenInfo.new(.25), {Position = Position}):Play()
		end
	
		Main.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
				dragToggle = true
				dragStart = input.Position
				startPos = Main.Position
				input.Changed:Connect(function()
					if (input.UserInputState == Enum.UserInputState.End) then
						dragToggle = false
					end
				end)
			end
		end)
	
		Main.InputChanged:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
				dragInput = input
			end
		end)
	
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if (input == dragInput and dragToggle) then
				updateInput(input)
			end
		end)
	end
	
	dragify(script.Parent)
	
	
end
coroutine.wrap(CIORJCJ_script)()
local function JJLB_script() -- disco.Script 
	local script = Instance.new('Script', disco)

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
coroutine.wrap(JJLB_script)()
local function HDTLA_script() -- skybox.Script 
	local script = Instance.new('Script', skybox)

	function click()
		s = Instance.new("Sky")
		s.Name = "Sky"
		s.Parent = game.Lighting
		s.SkyboxBk = "http://www.roblox.com/asset/?id=12725691281"
		s.SkyboxDn = "http://www.roblox.com/asset/?id=12725691281"
		s.SkyboxFt = "http://www.roblox.com/asset/?id=12725691281"
		s.SkyboxLf = "http://www.roblox.com/asset/?id=12725691281"
		s.SkyboxRt = "http://www.roblox.com/asset/?id=12725691281"
		s.SkyboxUp = "http://www.roblox.com/asset/?id=12725691281"
		game.Lighting.TimeOfDay = 12
	end
	
	script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(HDTLA_script)()
local function HDSMI_script() -- music2.Script 
	local script = Instance.new('Script', music2)

	function onClick()
		local tubers93		= Instance.new("Sound")
		tubers93.Parent		= game:GetService("Workspace")
		tubers93.SoundId		= "rbxassetid://6070263388"
		tubers93.Playing		= true
		tubers93.Looped		= true
		tubers93.Pitch      = 1
		tubers93.Volume		= 10
	
	end
	
	script.Parent.MouseButton1Down:connect(onClick)
	
end
coroutine.wrap(HDSMI_script)()
local function HNSKCE_script() -- particlesspam.Script 
	local script = Instance.new('Script', particlesspam)

	script.Parent.MouseButton1Click:Connect(function()
		for i, v in pairs(game.Players:GetChildren()) do
			emit = Instance.new("ParticleEmitter")
			emit.Parent = v.Character.Head
			emit.Texture = "http://www.roblox.com/asset/?id=12725691281"
			emit.VelocitySpread = 10000000000
		end
	end)
end
coroutine.wrap(HNSKCE_script)()
local function WDHSJUS_script() -- musicstop.Script 
	local script = Instance.new('Script', musicstop)

	script.Parent.MouseButton1Click:Connect(function()
		for i, b in pairs(game.Workspace:GetChildren()) do
			if b:IsA("Sound") and b.IsPlaying then
				b:Stop()
			end
		end
	end)
end
coroutine.wrap(WDHSJUS_script)()
local function VCVR_script() -- jumpscare2.Script 
	local script = Instance.new('Script', jumpscare2)

	script.Parent.MouseButton1Click:Connect(function()
		for i,v in pairs(game.Players:GetPlayers()) do
			if v.Name ~= me and not v.PlayerGui:FindFirstChild("Screamer") and v:FindFirstChild("PlayerGui") then
				spawn(function()
					local newgui = Instance.new("ScreenGui",v.PlayerGui)
					newgui.Name = "Screamer"
					local newimage = Instance.new("ImageLabel",newgui)
					newimage.Image = "http://www.roblox.com/asset/?id=169585502"
					newimage.Size = UDim2.new(1,1,1,1)
					local s = Instance.new("Sound",newgui)
					s.SoundId = "rbxassetid://613960902"
					s.Volume = 9999999999999999999999999999999999999
					s.Looped = true
					s:Play()
					print("Screamed "..v.Name)
					while wait(9) do
	
						newimage.Parent:Destroy()
	
					end
				end)
			end
		end
	end)
end
coroutine.wrap(VCVR_script)()
local function WCKQGOP_script() -- decalspam.Script 
	local script = Instance.new('Script', decalspam)

	function click()
		function exPro(root)
			for _, v in pairs(root:GetChildren()) do
				if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset/?id=12725691281" then
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
					One.Texture = "http://www.roblox.com/asset/?id=12725691281"
					Two.Texture = "http://www.roblox.com/asset/?id=12725691281"
					Three.Texture = "http://www.roblox.com/asset/?id=12725691281"
					Four.Texture = "http://www.roblox.com/asset/?id=12725691281"
					Five.Texture = "http://www.roblox.com/asset/?id=12725691281"
					Six.Texture = "http://www.roblox.com/asset/?id=12725691281"
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
	
	
	
end
coroutine.wrap(WCKQGOP_script)()
local function QLJU_script() -- jumpscare1.Script 
	local script = Instance.new('Script', jumpscare1)

	script.Parent.MouseButton1Click:Connect(function()
		for i,v in pairs(game.Players:GetPlayers()) do
			if v.Name ~= me and not v.PlayerGui:FindFirstChild("Screamer") and v:FindFirstChild("PlayerGui") then
				spawn(function()
					local newgui = Instance.new("ScreenGui",v.PlayerGui)
					newgui.Name = "Screamer"
					local newimage = Instance.new("ImageLabel",newgui)
					newimage.Image = "http://www.roblox.com/asset/?id=7828216192"
					newimage.Size = UDim2.new(1,1,1,1)
					local s = Instance.new("Sound",newgui)
					s.SoundId = "rbxassetid://8280196339"
					s.Volume = 9999999999999999999999999999999999999
					s.Looped = true
					s:Play()
					print("Screamed "..v.Name)
					while wait(9) do
	
						newimage.Parent:Destroy()
	
					end
				end)
			end
		end
	end)
end
coroutine.wrap(QLJU_script)()
local function KFEZLAS_script() -- hint.Script 
	local script = Instance.new('Script', hint)

	script.Parent.MouseButton1Click:Connect(function()
		local m = Instance.new("Hint", game.workspace)
		m.Text = "team p00ngkid join today!"
	end)
end
coroutine.wrap(KFEZLAS_script)()