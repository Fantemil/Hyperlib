-- Gui to Lua
-- Version: 3.2

-- Instances:

local c078kiddguiv40 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local music = Instance.new("TextButton")
local decalspamskybox = Instance.new("TextButton")
local c00lgui = Instance.new("TextButton")
local g00byd0languinotfe = Instance.new("TextButton")
local _1x3x5x6gui = Instance.new("TextButton")
local team8x8x8x8gui = Instance.new("TextButton")
local rc7crackednotfe = Instance.new("TextButton")

--Properties:

c078kiddguiv40.Name = "c078kidd gui v4.0"
c078kiddguiv40.Parent = game.Workspace.ScreenGui
c078kiddguiv40.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
c078kiddguiv40.BorderColor3 = Color3.fromRGB(0, 0, 0)
c078kiddguiv40.BorderSizePixel = 0
c078kiddguiv40.Position = UDim2.new(0.128122315, 0, 0.0658807233, 0)
c078kiddguiv40.Size = UDim2.new(0, 474, 0, 279)

TextLabel.Parent = c078kiddguiv40
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
TextLabel.BorderColor3 = Color3.fromRGB(255, 170, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(3.21915365e-08, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 473, 0, 37)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "c078kidd gui v4.0"
TextLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 100.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 255)
TextLabel.TextStrokeTransparency = 0.000
TextLabel.TextWrapped = true

music.Name = "music"
music.Parent = TextLabel
music.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
music.BorderColor3 = Color3.fromRGB(0, 0, 0)
music.BorderSizePixel = 0
music.Position = UDim2.new(0, 0, 1.83783782, 0)
music.Size = UDim2.new(0, 94, 0, 48)
music.Font = Enum.Font.SourceSans
music.Text = "music"
music.TextColor3 = Color3.fromRGB(255, 170, 0)
music.TextScaled = true
music.TextSize = 100.000
music.TextStrokeTransparency = 0.000
music.TextWrapped = true

decalspamskybox.Name = "decal spam + skybox"
decalspamskybox.Parent = music
decalspamskybox.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
decalspamskybox.BorderColor3 = Color3.fromRGB(0, 0, 0)
decalspamskybox.BorderSizePixel = 0
decalspamskybox.Position = UDim2.new(4.18085098, 0, 0, 0)
decalspamskybox.Size = UDim2.new(0, 80, 0, 48)
decalspamskybox.Font = Enum.Font.SourceSans
decalspamskybox.Text = "decal spam + skybox"
decalspamskybox.TextColor3 = Color3.fromRGB(255, 255, 0)
decalspamskybox.TextScaled = true
decalspamskybox.TextSize = 14.000
decalspamskybox.TextStrokeTransparency = 0.000
decalspamskybox.TextWrapped = true
Main.Active = true
Main.Draggble = true
decalspamskybox.MouseButton1Click:Connect(function)()
	--MADE BY OneLegend (NOT THE SCRIPT) REGULAR SCRIPT: JUST RUN!

	c = script:Clone()
	c.Parent = game.Lighting
	s = Instance.new("Sky")
	s.Name = "loltroll"
	s.SkyboxBk = "http://www.roblox.com/asset/?id=178993745"
	s.SkyboxDn = "http://www.roblox.com/asset/?id=178993745"
	s.SkyboxFt = "http://www.roblox.com/asset/?id=178993745"
	s.SkyboxLf = "http://www.roblox.com/asset/?id=178993745"
	s.SkyboxRt = "http://www.roblox.com/asset/?id=178993745"
	s.SkyboxUp = "http://www.roblox.com/asset/?id=178993745"
	s.Parent = game.Lighting

	while true do
		wait(0.225555)
		t = game.Teams:GetChildren()
		for i = 1, #t do
			if t[i] == true then
				t[i].Name = math.random()
			end
		end
		p = game.Players:GetChildren()
		for i = 1, #p do
			o = p[i].Character:GetChildren()
			for i = 1, #o do
				if o[i].ClassName == "Part" then
					q = Instance.new("SpecialMesh", o[i])
					q.MeshType = math.random(1,11)
				end
			end
		end
		w = game.Workspace:GetChildren()
		for i = 1, #w do
			if w[i].ClassName == "Part" then
				m = Instance.new("SpecialMesh", w[i])
				m.MeshType = math.random(1,11)
			elseif w[i].ClassName == "Model" then
				mo = w[i]:GetChildren()
				for i = 1, #mo do
					if mo[i].ClassName == "Part" then
						m = Instance.new("SpecialMesh", w[i])
						m.MeshType = math.random(1,11)
					end
				end
			end
		end
	end
end
c00lgui.Name = "c00lgui"
c00lgui.Parent = decalspamskybox
c00lgui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
c00lgui.BorderColor3 = Color3.fromRGB(0, 0, 0)
c00lgui.BorderSizePixel = 0
c00lgui.Position = UDim2.new(0, 0, 2.52083325, 0)
c00lgui.Size = UDim2.new(0, 81, 0, 49)
c00lgui.Font = Enum.Font.SourceSans
c00lgui.Text = "c00lgui"
c00lgui.TextColor3 = Color3.fromRGB(170, 85, 255)
c00lgui.TextScaled = true
c00lgui.TextSize = 14.000
c00lgui.TextStrokeColor3 = Color3.fromRGB(85, 255, 0)
c00lgui.TextStrokeTransparency = 0.000
c00lgui.TextWrapped = true
Main.Active = true
Main.Draggable = true
c00lgui.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://scriptblox.com/raw/ScriptBlox-Direct-Execute-Feature_645", true))()
end)

g00byd0languinotfe.Name = "g00byd0lan gui not fe"
g00byd0languinotfe.Parent = c00lgui
g00byd0languinotfe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
g00byd0languinotfe.BorderColor3 = Color3.fromRGB(0, 0, 0)
g00byd0languinotfe.BorderSizePixel = 0
g00byd0languinotfe.Position = UDim2.new(-4.85185194, 0, -1.22448981, 0)
g00byd0languinotfe.Size = UDim2.new(0, 94, 0, 47)
g00byd0languinotfe.Font = Enum.Font.SourceSans
g00byd0languinotfe.Text = "g00byd0lan gui not fe"
g00byd0languinotfe.TextColor3 = Color3.fromRGB(255, 0, 0)
g00byd0languinotfe.TextScaled = true
g00byd0languinotfe.TextSize = 14.000
g00byd0languinotfe.TextStrokeColor3 = Color3.fromRGB(255, 170, 0)
g00byd0languinotfe.TextStrokeTransparency = 0.000
g00byd0languinotfe.TextWrapped = true
Main.Active = true
Main.Draggable = true
g00byd0languinotfe.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://scriptblox.com/raw/ScriptBlox-Direct-Execute-Feature_645", true))()	
end)
_1x3x5x6gui.Name = "1x3x5x6 gui"
_1x3x5x6gui.Parent = c00lgui
_1x3x5x6gui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_1x3x5x6gui.BorderColor3 = Color3.fromRGB(0, 0, 0)
_1x3x5x6gui.BorderSizePixel = 0
_1x3x5x6gui.Position = UDim2.new(-4.85185194, 0, 0.183673471, 0)
_1x3x5x6gui.Size = UDim2.new(0, 94, 0, 40)
_1x3x5x6gui.Font = Enum.Font.SourceSans
_1x3x5x6gui.Text = "1x3x5x6 gui"
_1x3x5x6gui.TextColor3 = Color3.fromRGB(85, 255, 0)
_1x3x5x6gui.TextScaled = true
_1x3x5x6gui.TextSize = 14.000
_1x3x5x6gui.TextStrokeTransparency = 0.000
_1x3x5x6gui.TextWrapped = true
Main.Active = true
Main.Draggable = true
_1x3x5x6gui.MouseButton1Click:Connect(function()
	--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local ImageLabel = Instance.new("ImageLabel")
	local TextLabel_2 = Instance.new("TextLabel")
	local TextButton = Instance.new("TextButton")
	local TextButton_2 = Instance.new("TextButton")
	local TextButton_3 = Instance.new("TextButton")
	local TextButton_4 = Instance.new("TextButton")
	local TextButton_5 = Instance.new("TextButton")
	local TextButton_6 = Instance.new("TextButton")
	local TextButton_7 = Instance.new("TextButton")

	--Properties:

	ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame.Position = UDim2.new(0.0439642332, 0, 0.121330701, 0)
	Frame.Size = UDim2.new(0, 627, 0, 395)

	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.117895, 0, 0.0317309424, 0)
	TextLabel.Size = UDim2.new(0, 480, 0, 50)
	TextLabel.Font = Enum.Font.Ubuntu
	TextLabel.Text = "1X3X5X6 GUI V2 BY TEAM 1X3X5X6"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true

	ImageLabel.Parent = Frame
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0.881977677, 0, 0.0303797461, 0)
	ImageLabel.Size = UDim2.new(0, 60, 0, 44)
	ImageLabel.Image = "http://www.roblox.com/asset/?id=891352111"

	TextLabel_2.Parent = Frame
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_2.Position = UDim2.new(0.232854873, 0, 0.140379742, 0)
	TextLabel_2.Size = UDim2.new(0, 349, 0, 24)
	TextLabel_2.Font = Enum.Font.SourceSans
	TextLabel_2.Text = "ENJOY THE SCRIPT MADE BY TEAM 1X3X5X6"
	TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.TextScaled = true
	TextLabel_2.TextSize = 14.000
	TextLabel_2.TextWrapped = true

	TextButton.Parent = Frame
	TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.Position = UDim2.new(0.00956937857, 0, 0.240506336, 0)
	TextButton.Size = UDim2.new(0, 200, 0, 50)
	TextButton.Font = Enum.Font.SourceSans
	TextButton.Text = "Music Play"
	TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.TextScaled = true
	TextButton.TextSize = 14.000
	TextButton.TextWrapped = true

	TextButton_2.Parent = Frame
	TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_2.Position = UDim2.new(0.339712918, 0, 0.240506336, 0)
	TextButton_2.Size = UDim2.new(0, 200, 0, 50)
	TextButton_2.Font = Enum.Font.SourceSans
	TextButton_2.Text = "Set Skybox"
	TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_2.TextScaled = true
	TextButton_2.TextSize = 14.000
	TextButton_2.TextWrapped = true

	TextButton_3.Parent = Frame
	TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_3.Position = UDim2.new(0.669856489, 0, 0.240506336, 0)
	TextButton_3.Size = UDim2.new(0, 200, 0, 50)
	TextButton_3.Font = Enum.Font.SourceSans
	TextButton_3.Text = "Decal Spam"
	TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_3.TextScaled = true
	TextButton_3.TextSize = 14.000
	TextButton_3.TextWrapped = true

	TextButton_4.Parent = Frame
	TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_4.Position = UDim2.new(0.00797450542, 0, 0.400000006, 0)
	TextButton_4.Size = UDim2.new(0, 200, 0, 50)
	TextButton_4.Font = Enum.Font.SourceSans
	TextButton_4.Text = "Scary mario spam"
	TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_4.TextScaled = true
	TextButton_4.TextSize = 14.000
	TextButton_4.TextWrapped = true

	TextButton_5.Parent = Frame
	TextButton_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_5.Position = UDim2.new(0.339712948, 0, 0.400000006, 0)
	TextButton_5.Size = UDim2.new(0, 200, 0, 50)
	TextButton_5.Font = Enum.Font.SourceSans
	TextButton_5.Text = "Disco"
	TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_5.TextScaled = true
	TextButton_5.TextSize = 14.000
	TextButton_5.TextWrapped = true

	TextButton_6.Parent = Frame
	TextButton_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_6.Position = UDim2.new(0.669856489, 0, 0.400000006, 0)
	TextButton_6.Size = UDim2.new(0, 200, 0, 50)
	TextButton_6.Font = Enum.Font.SourceSans
	TextButton_6.Text = "666"
	TextButton_6.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_6.TextScaled = true
	TextButton_6.TextSize = 14.000
	TextButton_6.TextWrapped = true

	TextButton_7.Parent = Frame
	TextButton_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_7.Position = UDim2.new(0.0095693972, 0, 0.564556956, 0)
	TextButton_7.Size = UDim2.new(0, 200, 0, 50)
	TextButton_7.Font = Enum.Font.SourceSans
	TextButton_7.Text = "Particles"
	TextButton_7.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_7.TextScaled = true
	TextButton_7.TextSize = 14.000
	TextButton_7.TextWrapped = true

	-- Scripts:

	local function ZRAI_fake_script() -- Frame.Dragify v2 
		local script = Instance.new('LocalScript', Frame)

		local UIS = game:GetService("UserInputService")
		function dragify(Frame)
			dragToggle = nil
			local dragSpeed = 0
			dragInput = nil
			dragStart = nil
			local dragPos = nil
			function updateInput(input)
				local Delta = input.Position - dragStart
				local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
				game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
			end
			Frame.InputBegan:Connect(function(input)
				if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
					dragToggle = true
					dragStart = input.Position
					startPos = Frame.Position
					input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							dragToggle = false
						end
					end)
				end
			end)
			Frame.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					dragInput = input
				end
			end)
			game:GetService("UserInputService").InputChanged:Connect(function(input)
				if input == dragInput and dragToggle then
					updateInput(input)
				end
			end)
		end

		dragify(script.Parent)
	end
	coroutine.wrap(ZRAI_fake_script)()
	local function GLDR_fake_script() -- TextButton.Script 
		local script = Instance.new('Script', TextButton)

		function onClick()
			Instance.new("Sound").Parent = game.Workspace  game.Workspace.Sound.SoundId ="rbxassetid://9071698640" game.Workspace.Sound.Looped=true  game.Workspace.Sound:Play()
		end

		script.Parent.MouseButton1Down:connect(onClick)
	end
	coroutine.wrap(GLDR_fake_script)()
	local function WCZJZRH_fake_script() -- TextButton_2.Script 
		local script = Instance.new('Script', TextButton_2)

		function click()
			s = Instance.new("Sky")
			s.Name = "Sky"
			s.Parent = game.Lighting
			s.SkyboxBk = "http://www.roblox.com/asset/?id=3342499434"
			s.SkyboxDn = "http://www.roblox.com/asset/?id=3342499434"
			s.SkyboxFt = "http://www.roblox.com/asset/?id=3342499434"
			s.SkyboxLf = "http://www.roblox.com/asset/?id=3342499434"
			s.SkyboxRt = "http://www.roblox.com/asset/?id=3342499434"
			s.SkyboxUp = "http://www.roblox.com/asset/?id=3342499434"
			game.Lighting.TimeOfDay = 12
		end

		script.Parent.MouseButton1Down:connect(click)
	end
	coroutine.wrap(WCZJZRH_fake_script)()
	local function CSQAG_fake_script() -- TextButton_3.Script 
		local script = Instance.new('Script', TextButton_3)

		function click()
			function exPro(root)
				for _, v in pairs(root:GetChildren()) do
					if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset/?id=3342499434" then -- I updated the id, so you want have to trollolol!!11
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
						One.Texture = "http://www.roblox.com/asset/?id=3342499434"
						Two.Texture = "http://www.roblox.com/asset/?id=3342499434"
						Three.Texture = "http://www.roblox.com/asset/?id=3342499434"
						Four.Texture = "http://www.roblox.com/asset/?id=3342499434"
						Five.Texture = "http://www.roblox.com/asset/?id=3342499434"
						Six.Texture = "http://www.roblox.com/asset/?id=3342499434"
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
	coroutine.wrap(CSQAG_fake_script)()
	local function LUVDRTO_fake_script() -- TextButton_4.Script 
		local script = Instance.new('Script', TextButton_4)

		function click()
			function exPro(root)
				for _, v in pairs(root:GetChildren()) do
					if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset/?id=9838261815" then -- I updated the id, so you want have to trollolol!!11 -(k00ps)
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
						One.Texture = "http://www.roblox.com/asset/?id=9838261815"
						Two.Texture = "http://www.roblox.com/asset/?id=9838261815"
						Three.Texture = "http://www.roblox.com/asset/?id=9838261815"
						Four.Texture = "http://www.roblox.com/asset/?id=9838261815"
						Five.Texture = "http://www.roblox.com/asset/?id=9838261815"
						Six.Texture = "http://www.roblox.com/asset/?id=9838261815"
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
	coroutine.wrap(LUVDRTO_fake_script)()
	local function XHYIW_fake_script() -- TextButton_4.Script 
		local script = Instance.new('Script', TextButton_4)

		function onClick()
			Instance.new("Sound").Parent 
				= game.Workspace  
			game.Workspace.Sound.SoundId ="rbxassetid://7337298420" 
			game.Workspace.Sound.Looped=true  
			game.Workspace.Sound:Play()
		end

		script.Parent.MouseButton1Down:connect(onClick)
	end
	coroutine.wrap(XHYIW_fake_script)()
	local function XLXYV_fake_script() -- TextButton_5.Script 
		local script = Instance.new('Script', TextButton_5)

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
	coroutine.wrap(XLXYV_fake_script)()
	local function HIAT_fake_script() -- TextButton_6.Script 
		local script = Instance.new('Script', TextButton_6)

		script.Parent.MouseButton1Click:Connect(function()
			for i,v in next,workspace:children''do
				if(v:IsA'BasePart')then
					me=v;
					bbg=Instance.new('BillboardGui',me);
					bbg.Name='stuf';
					bbg.Adornee=me;
					bbg.Size=UDim2.new(2.5,0,2.5,0)
					--bbg.StudsOffset=Vector3.new(0,2,0)
					tlb=Instance.new'TextLabel';
					tlb.Text='1x3x5x6 1444';
					tlb.Font='SourceSansBold';
					tlb.FontSize='Size48';
					tlb.TextColor3=Color3.new(1,0,0);
					tlb.Size=UDim2.new(1.25,0,1.25,0);
					tlb.Position=UDim2.new(-0.125,-22,-1.1,0);
					tlb.BackgroundTransparency=1;
					tlb.Parent=bbg;
				end;end;
			function xds(dd)
				for i,v in next,dd:children''do
					if(v:IsA'BasePart')then
						v.BrickColor=BrickColor.new'Really black';
						v.TopSurface='Smooth';
						v.BottomSurface='Smooth';
						s=Instance.new('SelectionBox',v);
						s.Adornee=v;
						s.Color=BrickColor.new'Really red';
						a=Instance.new('PointLight',v);
						a.Color=Color3.new(1,0,0);
						a.Range=15;
						a.Brightness=5;
						f=Instance.new('Fire',v);
						f.Size=19;
						f.Heat=22;
					end;

					local dec = 'http://www.roblox.com/asset/?id=19399245';
					local fac = {'Front', 'Back', 'Left', 'Right', 'Top', 'Bottom'}
					--coroutine.wrap(function()
					--for ,_ in pairs(fac) do
					--local ddec = Instance.new("Decal", v)
					--ddec.Face = 
					--ddec.Texture = dec
					--end end)()
					if #(v:GetChildren())>0 then
						xds(v) 
					end
				end
			end
			xds(game.Workspace)
		end)

	end
	coroutine.wrap(HIAT_fake_script)()
	local function BIII_fake_script() -- TextButton_7.Script 
		local script = Instance.new('Script', TextButton_7)

		script.Parent.MouseButton1Down:connect(function()
			tex1 = "rbxassetid://891352111"
			tex2 = "rbxassetid://891352111"
			tex3 = "rbxassetid://891352111"
			tex4 = "rbxassetid://891352111"

			local w = workspace:GetDescendants()

			for i= 1,#w do
				if w[i]:isA("BasePart") then
					pe = Instance.new("ParticleEmitter", w[i])
					pe.Texture = tex4
					pe.VelocitySpread = 5
				end
			end

			local playerLeaderstats = {}

			for i, v in pairs(playerLeaderstats) do
				pe = Instance.new("ParticleEmitter",v.Character.HumanoidRootPart)
				pe.Texture = "http://www.roblox.com/asset/?id=891352111"
				pe.VelocitySpread = 50
			end

		end)

	end
	coroutine.wrap(BIII_fake_script)()

end)
team8x8x8x8gui.Name = "team8x8x8x8 gui"
team8x8x8x8gui.Parent = _1x3x5x6gui
team8x8x8x8gui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
team8x8x8x8gui.BorderColor3 = Color3.fromRGB(0, 0, 0)
team8x8x8x8gui.BorderSizePixel = 0
team8x8x8x8gui.Position = UDim2.new(1.8191489, 0, -0.224999994, 0)
team8x8x8x8gui.Size = UDim2.new(0, 160, 0, 48)
team8x8x8x8gui.Font = Enum.Font.SourceSans
team8x8x8x8gui.Text = "team8x8x8x8 gui"
team8x8x8x8gui.TextColor3 = Color3.fromRGB(255, 170, 0)
team8x8x8x8gui.TextScaled = true
team8x8x8x8gui.TextSize = 14.000
team8x8x8x8gui.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
team8x8x8x8gui.TextStrokeTransparency = 0.000
team8x8x8x8gui.TextWrapped = true
Main.Active
Main.Draggable = true
team8x8x8x8gui.MouseButton1Click(function()
	--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
	local gui = Instance.new("ScreenGui")
	gui.Name = "Teamx8x8x8x8 Gui - Client Side"
	gui.Parent = game.CoreGui

	--screengui = gui






	local Frame = Instance.new("Frame")
	Frame.Size = UDim2.new(0.35, 0, 0.8, 0)
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.BackgroundColor3 = Color3.new(1, 1, 1)
	Frame.BorderColor3 = Color3.fromRGB(213, 115, 61) -- Orange
	Frame.BorderSizePixel = 3
	Frame.Active = true
	Frame.Draggable = true
	Frame.Parent = gui


	local ImageLabel = Instance.new("ImageLabel")
	ImageLabel.Parent = Frame
	ImageLabel.BackgroundColor3 = Color3.fromRGB(0, 0 ,0)
	ImageLabel.BorderColor3 = Color3.fromRGB(27, 27, 27)
	ImageLabel.BackgroundTransparency = 0
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0.0001, 0, 0.0001, 0)
	ImageLabel.Size = UDim2.new(0.885, 35, 0.83, 54)
	ImageLabel.Image = "rbxassetid://16000894791"
	ImageLabel.Active = false

	local TextLabel = Instance.new("TextLabel")
	TextLabel.Size = UDim2.new(0.33, 0, 0.1, 0)
	TextLabel.Position = UDim2.new(0.33, 0, 0.00001, 0)
	TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
	TextLabel.BorderColor3 = Color3.new(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.BackgroundTransparency = 1
	TextLabel.Text = "Team 8x8x8x8 Gui"
	TextLabel.TextSize = 29
	TextLabel.TextColor3 = Color3.new(255, 255, 255)
	TextLabel.Font = Enum.Font.Code
	TextLabel.Parent = Frame

	local TextButton = Instance.new("TextButton")
	TextButton.Size = UDim2.new(0.3, 0, 0.2, 0)
	TextButton.Position = UDim2.new(0.00001, 0, 0.2, 0)
	TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
	TextButton.BorderColor3 = Color3.fromRGB(213, 115, 61) -- Orange
	TextButton.BorderSizePixel = 2
	TextButton.BackgroundTransparency = 0.66
	TextButton.Text = "Sky"
	TextButton.TextSize = 23
	TextButton.TextWrapped = true
	TextButton.TextColor3 = Color3.new(255, 255, 255)
	TextButton.Font = Enum.Font.Code
	TextButton.Parent = Frame
	TextButton.MouseButton1Click:Connect(function()
		local ID = 16000892050
		local Skybox = true

		if Skybox == true then
			local sky = Instance.new("Sky")
			sky.Parent = game.Lighting
			sky.SkyboxBk = "http://www.roblox.com/asset/?id=" ..ID
			sky.SkyboxDn = "http://www.roblox.com/asset/?id=" ..ID
			sky.SkyboxFt = "http://www.roblox.com/asset/?id=" ..ID
			sky.SkyboxLf = "http://www.roblox.com/asset/?id=" ..ID
			sky.SkyboxRt = "http://www.roblox.com/asset/?id=" ..ID
			sky.SkyboxUp = "http://www.roblox.com/asset/?id=" ..ID
		end
	end)

	local TextButton = Instance.new("TextButton")
	TextButton.Size = UDim2.new(0.3, 0, 0.2, 0)
	TextButton.Position = UDim2.new(0.35, 0, 0.2, 0)
	TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
	TextButton.BorderColor3 = Color3.fromRGB(213, 115, 61) -- Orange
	TextButton.BorderSizePixel = 2
	TextButton.BackgroundTransparency = 0.66
	TextButton.Text = "Decal Spam"
	TextButton.TextSize = 23
	TextButton.TextWrapped = true
	TextButton.TextColor3 = Color3.new(255, 255, 255)
	TextButton.Font = Enum.Font.Code
	TextButton.Parent = Frame
	TextButton.MouseButton1Click:Connect(function()
		local ID = 16000894791

		for i,v in pairs (game.Workspace:GetChildren()) do
			if v:IsA("Part") then
				local decal1 =Instance.new("Decal")
				local decal2 =Instance.new("Decal")
				local decal3 =Instance.new("Decal")
				local decal4 =Instance.new("Decal")
				local decal5 =Instance.new("Decal")
				local decal6 =Instance.new("Decal")
				decal1.Texture = "http://www.roblox.com/asset/?id=" ..ID
				decal2.Texture = "http://www.roblox.com/asset/?id=" ..ID
				decal3.Texture = "http://www.roblox.com/asset/?id=" ..ID
				decal4.Texture = "http://www.roblox.com/asset/?id=" ..ID
				decal5.Texture = "http://www.roblox.com/asset/?id=" ..ID
				decal6.Texture = "http://www.roblox.com/asset/?id=" ..ID
				decal1.Parent = v
				decal2.Parent = v
				decal3.Parent = v
				decal4.Parent = v
				decal5.Parent = v
				decal6.Parent = v
				decal1.Face = "Front"
				decal2.Face = "Top"
				decal3.Face = "Left"
				decal4.Face = "Right"
				decal5.Face = "Bottom"
				decal6.Face = "Back"
			end
		end
		for i,v in pairs (game.Workspace:GetChildren()) do
			if v:IsA("Model") then
				for i,z in pairs (v:GetChildren()) do
					if z:IsA("Part") then
						local decal7 =Instance.new("Decal")
						local decal8 =Instance.new("Decal")
						local decal9 =Instance.new("Decal")
						local decal10 =Instance.new("Decal")
						local decal11 =Instance.new("Decal")
						local decal12 =Instance.new("Decal")
						decal7.Texture = "http://www.roblox.com/asset/?id=" ..ID
						decal8.Texture = "http://www.roblox.com/asset/?id=" ..ID
						decal9.Texture = "http://www.roblox.com/asset/?id=" ..ID
						decal10.Texture = "http://www.roblox.com/asset/?id=" ..ID
						decal11.Texture = "http://www.roblox.com/asset/?id=" ..ID
						decal12.Texture = "http://www.roblox.com/asset/?id=" ..ID
						decal7.Parent = z
						decal8.Parent = z
						decal9.Parent = z
						decal10.Parent = z
						decal11.Parent = z
						decal12.Parent = z
						decal7.Face = "Front"
						decal8.Face = "Top"
						decal9.Face = "Left"
						decal10.Face = "Right"
						decal11.Face = "Bottom"
						decal12.Face = "Back"
					end
				end
			end
		end
	end)

	local TextButton = Instance.new("TextButton")
	TextButton.Size = UDim2.new(0.3, 0, 0.2, 0)
	TextButton.Position = UDim2.new(0.7, 0, 0.2, 0)
	TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
	TextButton.BorderColor3 = Color3.fromRGB(213, 115, 61) -- Orange
	TextButton.BorderSizePixel = 2
	TextButton.BackgroundTransparency = 0.66
	TextButton.Text = "Particle"
	TextButton.TextSize = 23
	TextButton.TextWrapped = true
	TextButton.TextColor3 = Color3.new(255, 255, 255)
	TextButton.Font = Enum.Font.Code
	TextButton.Parent = Frame
	TextButton.MouseButton1Click:Connect(function()
		local ID = 16000894791
		local particle = true

		if particle == true then
			for i,v in pairs (game.Workspace:GetChildren()) do
				if v:IsA("Part") then
					local particle = Instance.new("ParticleEmitter")
					particle.Texture = "http://www.roblox.com/asset/?id=" ..ID
					particle.Parent = v
					particle.Rate = 200
					for i,x in pairs (game.Workspace:GetChildren()) do
						if x:IsA("Model") then
							for i,z in pairs (x:GetChildren()) do
								if z:IsA("Part") then
									local particle2 = Instance.new("ParticleEmitter")
									particle2.Texture = "http://www.roblox.com/asset/?id=" ..ID
									particle2.Parent = z
									particle2.Rate = 200
								end
							end
						end
					end
				end
			end
		end

		for Get,Players in ipairs(game.Players:GetPlayers()) do

			for Get,Players in ipairs(game.Players:GetPlayers()) do

				for Get,Workspace in ipairs(game.Workspace:GetChildren()) do

					if (Workspace.Name == Players.Name) then

						ParticleEmitter = Instance.new("ParticleEmitter");

						ParticleEmitter.Texture = ("rbxassetid://16000894791");

						ParticleEmitter.Parent = Workspace.Head;

						ParticleEmitter.Rate = 200

					end

				end

			end



			for Get,Workspace in ipairs(game.Workspace:GetChildren()) do

				ParticleEmitter = Instance.new("ParticleEmitter");

				ParticleEmitter.Texture = ("rbxassetid://16000894791");

				ParticleEmitter.Parent = Workspace;

				ParticleEmitter.Rate = 200

			end
		end

		for Get,Workspace in ipairs(game.Workspace:GetChildren()) do

			ParticleEmitter = Instance.new("ParticleEmitter");

			ParticleEmitter.Texture = ("rbxassetid://16000894791");

			ParticleEmitter.Parent = Workspace.Torso;

			ParticleEmitter.Rate = 200

		end

	end)

	local TextButton = Instance.new("TextButton")
	TextButton.Size = UDim2.new(0.3, 0, 0.2, 0)
	TextButton.Position = UDim2.new(0.00001, 0, 0.45, 0)
	TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
	TextButton.BorderColor3 = Color3.fromRGB(213, 115, 61) -- Orange
	TextButton.BorderSizePixel = 2
	TextButton.BackgroundTransparency = 0.66
	TextButton.Text = "666"
	TextButton.TextSize = 23
	TextButton.TextWrapped = true
	TextButton.TextColor3 = Color3.new(255, 255, 255)
	TextButton.Font = Enum.Font.Code
	TextButton.Parent = Frame
	TextButton.MouseButton1Click:Connect(function()
		for i,v in next,workspace:children''do
			if(v:IsA'BasePart')then
				me=v;
				bbg=Instance.new('BillboardGui',me);
				bbg.Name='stuf';
				bbg.Adornee=me;
				bbg.Size=UDim2.new(2.5,0,2.5,0)
				--bbg.StudsOffset=Vector3.new(0,2,0)
				tlb=Instance.new'TextLabel';
				tlb.Text='666 666 666 666 666 666';
				tlb.Font='SourceSansBold';
				tlb.FontSize='Size48';
				tlb.TextColor3=Color3.new(1,0,0);
				tlb.Size=UDim2.new(1.25,0,1.25,0);
				tlb.Position=UDim2.new(-0.125,-22,-1.1,0);
				tlb.BackgroundTransparency=1;
				tlb.Parent=bbg;
			end;end;
		function xds(dd)
			for i,v in next,dd:children''do
				if(v:IsA'BasePart')then
					v.BrickColor=BrickColor.new'Really black';
					v.TopSurface='Smooth';
					v.BottomSurface='Smooth';
					s=Instance.new('SelectionBox',v);
					s.Adornee=v;
					s.Color=BrickColor.new'Really red';
					a=Instance.new('PointLight',v);
					a.Color=Color3.new(1,0,0);
					a.Range=15;
					a.Brightness=5;
					f=Instance.new('Fire',v);
					f.Size=11;
					f.Heat=12;
				end;
				game.Lighting.TimeOfDay=0;
				game.Lighting.Brightness=0;
				game.Lighting.ShadowColor=Color3.new(0,0,0);
				game.Lighting.Ambient=Color3.new(1,0,0);
				game.Lighting.FogEnd=200;
				game.Lighting.FogColor=Color3.new(0,0,0);
				local dec = 'http://www.roblox.com/asset/?id=19399245';
				local fac = {'Front', 'Back', 'Left', 'Right', 'Top', 'Bottom'}
				--coroutine.wrap(function()
				--for _,__ in pairs(fac) do
				--local ddec = Instance.new("Decal", v)
				--ddec.Face = __
				--ddec.Texture = dec
				--end end)()
				if #(v:GetChildren())>0 then
					xds(v)
				end
			end
		end
		xds(game.Workspace)
	end)

	local TextButton = Instance.new("TextButton")
	TextButton.Size = UDim2.new(0.3, 0, 0.2, 0)
	TextButton.Position = UDim2.new(0.35, 0, 0.45, 0)
	TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
	TextButton.BorderColor3 = Color3.fromRGB(213, 115, 61) -- Orange
	TextButton.BorderSizePixel = 2
	TextButton.BackgroundTransparency = 0.66
	TextButton.Text = "Music"
	TextButton.TextSize = 23
	TextButton.TextWrapped = true
	TextButton.TextColor3 = Color3.new(255, 255, 255)
	TextButton.Font = Enum.Font.Code
	TextButton.Parent = Frame
	TextButton.MouseButton1Click:Connect(function()
		local tubers93		= Instance.new("Sound")
		tubers93.Parent		= game:GetService("Workspace")
		tubers93.SoundId		= "rbxassetid://1847661821"
		tubers93.Playing		= true
		tubers93.Looped		= true
		tubers93.Pitch      = 1
		tubers93.Volume		= 100000000000000000000000
	end)

	local TextButton = Instance.new("TextButton")
	TextButton.Size = UDim2.new(0.3, 0, 0.2, 0)
	TextButton.Position = UDim2.new(0.7, 0, 0.45, 0)
	TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
	TextButton.BorderColor3 = Color3.fromRGB(213, 115, 61) -- Orange
	TextButton.BorderSizePixel = 2
	TextButton.BackgroundTransparency = 0.66
	TextButton.Text = "Disco Fog"
	TextButton.TextSize = 23
	TextButton.TextWrapped = true
	TextButton.TextColor3 = Color3.new(255, 255, 255)
	TextButton.Font = Enum.Font.Code
	TextButton.Parent = Frame
	TextButton.MouseButton1Click:Connect(function()
		while true do
			game.Lighting.Ambient = Color3.new(math.random() , math.random() , math.random())
			wait(0.2)
			game.Lighting.ShadowColor = Color3.new(math.random() , math.random() , math.random())
			wait(0.2) 
		end
	end)

	local TextButton = Instance.new("TextButton")
	TextButton.Size = UDim2.new(0.3, 0, 0.2, 0)
	TextButton.Position = UDim2.new(0.00001, 0, 0.7, 0)
	TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
	TextButton.BorderColor3 = Color3.fromRGB(213, 115, 61) -- Orange
	TextButton.BorderSizePixel = 2
	TextButton.BackgroundTransparency = 0.66
	TextButton.Text = "Shedletskyify"
	TextButton.TextSize = 23
	TextButton.TextWrapped = true
	TextButton.TextColor3 = Color3.new(255, 255, 255)
	TextButton.Font = Enum.Font.Code
	TextButton.Parent = Frame
	TextButton.MouseButton1Click:Connect(function()
		for Get,Players in ipairs(game.Players:GetPlayers()) do

			for Get,Workspace in ipairs(game.Workspace:GetChildren()) do

				if (Workspace.Name == Players.Name) then

					ParticleEmitter = Instance.new("ParticleEmitter");

					ParticleEmitter.Texture = ("rbxassetid://187109143");

					ParticleEmitter.Parent = Workspace.Head;

				end

			end

		end



		for Get,Workspace in ipairs(game.Workspace:GetChildren()) do

			ParticleEmitter = Instance.new("ParticleEmitter");

			ParticleEmitter.Texture = ("rbxassetid://11741345802");

			ParticleEmitter.Parent = Workspace;

		end



		a=Instance.new("Sky",game.Lighting)

		b={"Bk","Dn","Ft","Lf","Rt","Up"}

		for i,v in pairs(b) do

			a["Skybox"..v]="rbxassetid://172423468 "

		end



		print("Music executed!")

		s = Instance.new("Sound")

		s.Name = "Music"

		s.SoundId = "http://www.roblox.com/asset/?id=130759239" --Put the id into there.

		s.Looped = true

		s.Pitch = 1 --You can edit these settings.

		s.Volume = 2000 --You can edit these settings.

		s.archivable = false



		s.Parent = game.Workspace



		wait(1)


		s:play()



		for i,v in pairs(game.Players:GetChildren()) do
			isis = Instance.new("Message",workspace)
			isis.Text = "OH FUCK, SHEDLETSKY'S RAP IS STARTING!"
			wait(1)
			isis:Destroy()
			bomb = Instance.new("Explosion")
			bomb.Parent = v.Character.Torso
			bomb.Position = v.Character.Torso.Position
			bomb.BlastPressure = 1000
			bomb.BlastRadius = 1000
		end
		print("Music executed!")

		s = Instance.new("Sound")

		s.Name = "Music"

		s.SoundId = "http://www.roblox.com/asset/?id=1839527331" --Put the id into there.

		s.Looped = true

		s.Pitch = 1 --You can edit these settings.

		s.Volume = 4 --You can edit these settings.

		s.archivable = false



		s.Parent = game.Workspace



		wait(1
		)


		s:play()



		for i,v in pairs(game.Players:GetChildren()) do
			isis = Instance.new("Message",workspace)
			isis.Text = "OH FUCK, SHEDLETSKY'S RAP IS STARTING! LEL"
			wait(1)
			isis:Destroy()
			bomb = Instance.new("Explosion")
			bomb.Parent = v.Character.Torso
			bomb.Position = v.Character.Torso.Position
			bomb.BlastPressure = 1000
			bomb.BlastRadius = 1000
		end
	end)

	local TextButton = Instance.new("TextButton")
	TextButton.Size = UDim2.new(0.3, 0, 0.2, 0)
	TextButton.Position = UDim2.new(0.35, 0, 0.7, 0)
	TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
	TextButton.BorderColor3 = Color3.fromRGB(213, 115, 61) -- Orange
	TextButton.BorderSizePixel = 2
	TextButton.BackgroundTransparency = 0.66
	TextButton.Text = "Unanchor All"
	TextButton.TextSize = 23
	TextButton.TextWrapped = true
	TextButton.TextColor3 = Color3.new(255, 255, 255)
	TextButton.Font = Enum.Font.Code
	TextButton.Parent = Frame
	TextButton.MouseButton1Click:Connect(function()

	end)

	local TextButton = Instance.new("TextButton")
	TextButton.Size = UDim2.new(0.3, 0, 0.2, 0)
	TextButton.Position = UDim2.new(0.7, 0, 0.7, 0)
	TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
	TextButton.BorderColor3 = Color3.fromRGB(213, 115, 61) -- Orange
	TextButton.BorderSizePixel = 2
	TextButton.BackgroundTransparency = 0.66
	TextButton.Text = "Hint"
	TextButton.TextSize = 23
	TextButton.TextWrapped = true
	TextButton.TextColor3 = Color3.new(255, 255, 255)
	TextButton.Font = Enum.Font.Code
	TextButton.Parent = Frame
	TextButton.MouseButton1Click:Connect(function()

		local msg = Instance.new("Hint")
		msg.Parent = Workspace

		while true do
			msg.Text = "This Game Get Fucked By Team8x8x8x8 LeL"
			wait(1.5)
			msg.Text = "Get Fucked Mafaka1!1!!1!1"
			wait(1.5)
			msg.Text = "Team8x8x8x8 Was Here LeL1!1!!1!1"
			wait(1.5)
		end
	end)

	local TextLabel = Instance.new("TextLabel")
	TextLabel.Size = UDim2.new(0.3, 0, 0.2, 0)
	TextLabel.Position = UDim2.new(0.35, 0, 0.85, 0)
	TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
	TextLabel.BorderColor3 = Color3.new(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Text = "Cerdits To : KingHax And Team8x8x8x8"
	TextLabel.TextSize = 15
	TextLabel.BackgroundTransparency = 1
	TextLabel.TextColor3 = Color3.new(255, 255, 255)
	TextLabel.Font = Enum.Font.Code
	TextLabel.Parent = Frame

	local TextLabel = Instance.new("TextLabel")
	TextLabel.Size = UDim2.new(0.3, 0, 0.2, 0)
	TextLabel.Position = UDim2.new(0.35, 0, 0.05, 0)
	TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
	TextLabel.BorderColor3 = Color3.new(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Text = "Made By KingHax"
	TextLabel.TextSize = 28
	TextLabel.BackgroundTransparency = 1
	TextLabel.TextColor3 = Color3.new(255, 255, 255)
	TextLabel.Font = Enum.Font.Code
	TextLabel.Parent = Frame
end)
rc7crackednotfe.Name = "rc7 cracked not fe"
rc7crackednotfe.Parent = c00lgui
rc7crackednotfe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rc7crackednotfe.BorderColor3 = Color3.fromRGB(0, 0, 0)
rc7crackednotfe.BorderSizePixel = 0
rc7crackednotfe.Position = UDim2.new(-2.65432096, 0, -1.48979592, 0)
rc7crackednotfe.Size = UDim2.new(0, 132, 0, 47)
rc7crackednotfe.Font = Enum.Font.SourceSans
rc7crackednotfe.Text = "rc7 cracked not fe"
rc7crackednotfe.TextColor3 = Color3.fromRGB(0, 0, 0)
rc7crackednotfe.TextScaled = true
rc7crackednotfe.TextSize = 14.000
rc7crackednotfe.TextStrokeColor3 = Color3.fromRGB(85, 255, 0)
rc7crackednotfe.TextStrokeTransparency = 0.000
rc7crackednotfe.TextWrapped = true
Main.Active = true
Main.Draggable
rc7crackednotfe.MouseButton1Click(function()
	--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CoreGui/Scripts/main/RC7"))()
end)