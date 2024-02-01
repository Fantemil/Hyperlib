-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local TextButton_6 = Instance.new("TextButton")
local TextButton_7 = Instance.new("TextButton")
local TextButton_8 = Instance.new("TextButton")
local TextButton_9 = Instance.new("TextButton")
local TextButton_10 = Instance.new("TextButton")
local TextButton_11 = Instance.new("TextButton")
local TextButton_12 = Instance.new("TextButton")
local TextButton_13 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(57, 58, 58)
Frame.BorderColor3 = Color3.fromRGB(196, 189, 0)
Frame.BorderSizePixel = 3
Frame.Position = UDim2.new(0.223387092, 0, 0.262243301, 0)
Frame.Size = UDim2.new(0, 367, 0, 391)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(47, 47, 48)
TextButton.BorderColor3 = Color3.fromRGB(195, 191, 0)
TextButton.BorderSizePixel = 2
TextButton.Position = UDim2.new(0.0217983648, 0, 0.227621481, 0)
TextButton.Size = UDim2.new(0, 132, 0, 55)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "DecalSpam"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 29.000

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(47, 47, 48)
TextButton_2.BorderColor3 = Color3.fromRGB(195, 191, 0)
TextButton_2.BorderSizePixel = 2
TextButton_2.Position = UDim2.new(0.405994564, 0, 0.227621481, 0)
TextButton_2.Size = UDim2.new(0, 132, 0, 55)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "SkyBox"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 45.000

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(47, 47, 48)
TextButton_3.BorderColor3 = Color3.fromRGB(195, 191, 0)
TextButton_3.BorderSizePixel = 2
TextButton_3.Position = UDim2.new(0.792915523, 0, 0.227621481, 0)
TextButton_3.Size = UDim2.new(0, 66, 0, 55)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "666"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextSize = 41.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(56, 57, 57)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.155313358, 0, 0.0613810755, 0)
TextLabel.Size = UDim2.new(0, 250, 0, 38)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "g00bygui Pocket Edition"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 41.000

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(56, 57, 57)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0217983648, 0, 0.902813196, 0)
TextLabel_2.Size = UDim2.new(0, 349, 0, 27)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "by g00byd0la0n,packerr"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 25.000

TextButton_4.Parent = Frame
TextButton_4.BackgroundColor3 = Color3.fromRGB(47, 47, 48)
TextButton_4.BorderColor3 = Color3.fromRGB(195, 191, 0)
TextButton_4.BorderSizePixel = 2
TextButton_4.Position = UDim2.new(0.0217983648, 0, 0.398976982, 0)
TextButton_4.Size = UDim2.new(0, 349, 0, 25)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "Game TP"
TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.TextSize = 29.000

TextButton_5.Parent = Frame
TextButton_5.BackgroundColor3 = Color3.fromRGB(47, 47, 48)
TextButton_5.BorderColor3 = Color3.fromRGB(195, 191, 0)
TextButton_5.BorderSizePixel = 2
TextButton_5.Position = UDim2.new(0.0217983648, 0, 0.491048604, 0)
TextButton_5.Size = UDim2.new(0, 124, 0, 41)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = "LeaderStats"
TextButton_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_5.TextSize = 29.000

TextButton_6.Parent = Frame
TextButton_6.BackgroundColor3 = Color3.fromRGB(47, 47, 48)
TextButton_6.BorderColor3 = Color3.fromRGB(195, 191, 0)
TextButton_6.BorderSizePixel = 2
TextButton_6.Position = UDim2.new(0.381471395, 0, 0.491048604, 0)
TextButton_6.Size = UDim2.new(0, 133, 0, 41)
TextButton_6.Font = Enum.Font.SourceSans
TextButton_6.Text = "raining toads"
TextButton_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_6.TextSize = 29.000

TextButton_7.Parent = Frame
TextButton_7.BackgroundColor3 = Color3.fromRGB(47, 47, 48)
TextButton_7.BorderColor3 = Color3.fromRGB(195, 191, 0)
TextButton_7.BorderSizePixel = 2
TextButton_7.Position = UDim2.new(0.765667558, 0, 0.491048604, 0)
TextButton_7.Size = UDim2.new(0, 76, 0, 41)
TextButton_7.Font = Enum.Font.SourceSans
TextButton_7.Text = "Hint"
TextButton_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_7.TextSize = 29.000

TextButton_8.Parent = Frame
TextButton_8.BackgroundColor3 = Color3.fromRGB(47, 47, 48)
TextButton_8.BorderColor3 = Color3.fromRGB(195, 191, 0)
TextButton_8.BorderSizePixel = 2
TextButton_8.Position = UDim2.new(0.0217983648, 0, 0.629155993, 0)
TextButton_8.Size = UDim2.new(0, 124, 0, 41)
TextButton_8.Font = Enum.Font.SourceSans
TextButton_8.Text = "ShutDown"
TextButton_8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_8.TextSize = 29.000

TextButton_9.Parent = Frame
TextButton_9.BackgroundColor3 = Color3.fromRGB(47, 47, 48)
TextButton_9.BorderColor3 = Color3.fromRGB(195, 191, 0)
TextButton_9.BorderSizePixel = 2
TextButton_9.Position = UDim2.new(0.381471395, 0, 0.629155993, 0)
TextButton_9.Size = UDim2.new(0, 124, 0, 41)
TextButton_9.Font = Enum.Font.SourceSans
TextButton_9.Text = "Play Theme"
TextButton_9.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_9.TextSize = 29.000

TextButton_10.Parent = Frame
TextButton_10.BackgroundColor3 = Color3.fromRGB(47, 47, 48)
TextButton_10.BorderColor3 = Color3.fromRGB(195, 191, 0)
TextButton_10.BorderSizePixel = 2
TextButton_10.Position = UDim2.new(0.743869185, 0, 0.629155993, 0)
TextButton_10.Size = UDim2.new(0, 84, 0, 41)
TextButton_10.Font = Enum.Font.SourceSans
TextButton_10.Text = "Disco"
TextButton_10.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_10.TextSize = 29.000

TextButton_11.Parent = Frame
TextButton_11.BackgroundColor3 = Color3.fromRGB(47, 47, 48)
TextButton_11.BorderColor3 = Color3.fromRGB(195, 191, 0)
TextButton_11.BorderSizePixel = 2
TextButton_11.Position = UDim2.new(0.0217983648, 0, 0.757033229, 0)
TextButton_11.Size = UDim2.new(0, 97, 0, 41)
TextButton_11.Font = Enum.Font.SourceSans
TextButton_11.Text = "Unachor"
TextButton_11.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_11.TextSize = 29.000

TextButton_12.Parent = Frame
TextButton_12.BackgroundColor3 = Color3.fromRGB(47, 47, 48)
TextButton_12.BorderColor3 = Color3.fromRGB(195, 191, 0)
TextButton_12.BorderSizePixel = 2
TextButton_12.Position = UDim2.new(0.307901919, 0, 0.757033229, 0)
TextButton_12.Size = UDim2.new(0, 124, 0, 41)
TextButton_12.Font = Enum.Font.SourceSans
TextButton_12.Text = "Jumpscare"
TextButton_12.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_12.TextSize = 29.000

TextButton_13.Parent = Frame
TextButton_13.BackgroundColor3 = Color3.fromRGB(47, 47, 48)
TextButton_13.BorderColor3 = Color3.fromRGB(195, 191, 0)
TextButton_13.BorderSizePixel = 2
TextButton_13.Position = UDim2.new(0.670299709, 0, 0.757033229, 0)
TextButton_13.Size = UDim2.new(0, 111, 0, 41)
TextButton_13.Font = Enum.Font.SourceSans
TextButton_13.Text = "Particles"
TextButton_13.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_13.TextSize = 29.000

-- Scripts:

local function LSCICR_fake_script() -- Frame.Drag Gui Script 
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
coroutine.wrap(LSCICR_fake_script)()
local function WKBXAW_fake_script() -- TextButton.Script 
	local script = Instance.new('Script', TextButton)

	function click()
		local function exPro(root)
			for _, v in pairs(root:GetChildren()) do
				if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset/?id=16139546365" then
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
					One.Texture = "http://www.roblox.com/asset/?id=16139546365"
					Two.Texture = "http://www.roblox.com/asset/?id=16139546365"
					Three.Texture = "http://www.roblox.com/asset/?id=16139546365"
					Four.Texture = "http://www.roblox.com/asset/?id=16139546365"
					Five.Texture = "http://www.roblox.com/asset/?id=16139546365"
					Six.Texture = "http://www.roblox.com/asset/?id=16139546365"
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
		local function asdf(root)
			for _, v in pairs(root:GetChildren()) do
				asdf(v)
			end
		end
		exPro(workspace)
		asdf(workspace)
	end
	
	script.Parent.MouseButton1Down:connect(click)
	
end
coroutine.wrap(WKBXAW_fake_script)()
local function FYTN_fake_script() -- TextButton_2.Script 
	local script = Instance.new('Script', TextButton_2)

	function click()
		s = Instance.new("Sky")
		s.Name = "Sky"
		s.Parent = game.Lighting
		s.SkyboxBk = "http://www.roblox.com/asset/?id=16139546365"
		s.SkyboxDn = "http://www.roblox.com/asset/?id=16139546365"
		s.SkyboxFt = "http://www.roblox.com/asset/?id=16139546365"
		s.SkyboxLf = "http://www.roblox.com/asset/?id=16139546365"
		s.SkyboxRt = "http://www.roblox.com/asset/?id=16139546365"
		s.SkyboxUp = "http://www.roblox.com/asset/?id=16139546365"
		game.Lighting.TimeOfDay = 12
	end
	
	script.Parent.MouseButton1Down:connect(click)
	
end
coroutine.wrap(FYTN_fake_script)()
local function TWHXZU_fake_script() -- TextButton_3.Script 
	local script = Instance.new('Script', TextButton_3)

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
coroutine.wrap(TWHXZU_fake_script)()
local function KECZ_fake_script() -- TextButton_4.LocalScript 
	local script = Instance.new('LocalScript', TextButton_4)

	script.Parent.MouseButton1Click:Connect(function()
		game:GetService('TeleportService'):Teleport( 16113975381, game.Players.LocalPlayer)
	end)
end
coroutine.wrap(KECZ_fake_script)()
local function GQVQ_fake_script() -- TextButton_4.LocalScript 
	local script = Instance.new('LocalScript', TextButton_4)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.RemoteEvent:FireServer()
	end)
	
	
end
coroutine.wrap(GQVQ_fake_script)()
local function ZBHMNFY_fake_script() -- TextButton_5.Script 
	local script = Instance.new('Script', TextButton_5)

	script.Parent.MouseButton1Down:Connect(function()
		game.Players.PlayerAdded:Connect(function(player)
	
			local leaderstats = Instance.new("Folder") 
			leaderstats.Name = "leaderstats"
			leaderstats.Parent = player
	
			local money = Instance.new("IntValue")
			money.Name = "g00byd0la0n"
			money.Value = 0
			money.Parent = leaderstats
		end)
		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			local leaderstats = Instance.new("Folder") 
			leaderstats.Name = "leaderstats"
			leaderstats.Parent = v
	
			local money = Instance.new("IntValue")
			money.Name = "g00byd0la0n"
			money.Value = 0
			money.Parent = leaderstats
		end
	end)
end
coroutine.wrap(ZBHMNFY_fake_script)()
local function KSYLUW_fake_script() -- TextButton_6.Script 
	local script = Instance.new('Script', TextButton_6)

	script.Parent.MouseButton1Click:Connect(function()
		wait(1)
		math.randomseed(tick() % 1 * 1e6)
		sky = coroutine.create(function()
			while wait(0.3) do
				s = Instance.new("Sky",game.Lighting)
				s.SkyboxBk,s.SkyboxDn,s.SkyboxFt,s.SkyboxLf,s.SkyboxRt,s.SkyboxUp = "rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408"
				s.CelestialBodiesShown = true
			end
		end)
	
	
		local m = Instance.new("Hint", game.workspace)
		m.Text = " 	ITS RAINING MEN!"
	
		del = coroutine.create(function()
			while wait(0.3) do
				for i,v in pairs(workspace:GetChildren()) do
					if v:IsA("Model") then
						v:Destroy()
					end
				end
			end
		end)
	
	
	
		for i,v in pairs(game.Players:GetChildren()) do
			v.Character.Archivable = true
		end
	
		noises = {'rbxassetid://230287740','rbxassetid://271787597','rbxassetid://153752123','rbxassetid://271787503'}
	
		sound = coroutine.create(function()
			a = Instance.new("Sound",workspace)
			a.SoundId = "rbxassetid://"
			a.Name = "RAINING MEN"
			a.Volume = 58359
			a.Looped = true
			a:Play()
			while wait(0.2) do
				rainin = workspace:FindFirstChild("RAINING MEN")
				if not rainin then
					a = Instance.new("Sound",workspace)
					a.SoundId = "rbxassetid://"
					a.Name = "RAINING MEN"
					a.Volume = 58359
					a.Looped = true
					a:Play()
				end
			end
		end)
	
		msg = coroutine.create(function()
			while wait(0.4) do
				msg = Instance.new("Message",workspace)
				msg.Text = "Get toadroasted by g00byd0la0n"
				wait(0.4)
				msg:Destroy()
			end
		end) 
	
	
		rain = coroutine.create(function()
			while wait(10 % 1 * 1e2) do
				part = Instance.new("Part",workspace)
				part.Name = "Toad"
	
				mesh = Instance.new("SpecialMesh",part)
	
				sound = Instance.new("Sound",workspace)
	
				part.CanCollide = false
				part.Size = Vector3.new(440,530,380)
				part.Position = Vector3.new(math.random(-3000,1000),math.random(1,3000),math.random(-3000,3000))
	
				sound.SoundId = noises[math.random(1,#noises)]
				sound:Play()
				sound.Ended:connect(function()
					sound:Destroy()
				end)
	
	
				mesh.MeshType = "FileMesh"
				mesh.MeshId = "rbxassetid://7234998844"
				mesh.TextureId = "rbxassetid://1009824086"
			end
		end)
		coroutine.resume(sky)
		coroutine.resume(del)
		coroutine.resume(sound)
		coroutine.resume(msg)
		coroutine.resume(rain)
	end)
end
coroutine.wrap(KSYLUW_fake_script)()
local function JBSK_fake_script() -- TextButton_7.Script 
	local script = Instance.new('Script', TextButton_7)

	script.Parent.MouseButton1Click:Connect(function()
		local m = Instance.new("Hint", game.workspace)
		m.Text = "TEAM G00BYD0LA0N JOIN TODAY"
	end)
	
end
coroutine.wrap(JBSK_fake_script)()
local function BVSQF_fake_script() -- TextButton_8.Script 
	local script = Instance.new('Script', TextButton_8)

	script.Parent.MouseButton1Down:connect(function()
		for i, players in pairs(game.Players:GetChildren()) do
			players:Kick("Teh Gane Iz Fuked Up!!!111")
		end
	end)
	
end
coroutine.wrap(BVSQF_fake_script)()
local function FQHN_fake_script() -- TextButton_9.Script 
	local script = Instance.new('Script', TextButton_9)

	function onClick()
		local tubers93		= Instance.new("Sound")
		tubers93.Parent		= game:GetService("Workspace")
		tubers93.SoundId		= "rbxassetid://1847661821"
		tubers93.Playing		= true
		tubers93.Looped		= false
		tubers93.Pitch      = 0.8
		tubers93.Volume		= 3
		tubers93.Name = "tksound"
	end
	
	script.Parent.MouseButton1Down:connect(onClick)
end
coroutine.wrap(FQHN_fake_script)()
local function QHPK_fake_script() -- TextButton_10.Script 
	local script = Instance.new('Script', TextButton_10)

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
coroutine.wrap(QHPK_fake_script)()
local function OWXUKB_fake_script() -- TextButton_11.Script 
	local script = Instance.new('Script', TextButton_11)

	script.Parent.MouseButton1Down:Connect(function()
		for i,v in pairs(game.Workspace:GetDescendants()) do
			if v:IsA("BasePart") then	
				v.Anchored = false
			end
		end
	
	
		for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
			if v:IsA("BasePart") then
				v.Anchored = false
			end
		end
	
	
		for i,v in pairs(game.ReplicatedFirst:GetDescendants()) do
			if v:IsA("BasePart") then
				v.Anchored = false
			end
		end
	end)
end
coroutine.wrap(OWXUKB_fake_script)()
local function JMCHL_fake_script() -- TextButton_12.Script 
	local script = Instance.new('Script', TextButton_12)

	script.Parent.MouseButton1Click:Connect(function()
		for i,v in pairs(game.Players:GetPlayers()) do
			if v.Name ~= me and not v.PlayerGui:FindFirstChild("Screamer") and v:FindFirstChild("PlayerGui") then
				spawn(function()
					local newgui = Instance.new("ScreenGui",v.PlayerGui)
					newgui.Name = "Screamer"
					local newimage = Instance.new("ImageLabel",newgui)
					newimage.Image = "http://www.roblox.com/asset/?id=16140695699"
					newimage.Size = UDim2.new(1,1,1,1)
					local s = Instance.new("Sound",newgui)
					s.SoundId = "rbxassetid://9069609200"
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
coroutine.wrap(JMCHL_fake_script)()
local function SBVDUQH_fake_script() -- TextButton_13.Script 
	local script = Instance.new('Script', TextButton_13)

	script.Parent.MouseButton1Click:Connect(function()
		for i, v in pairs(game.Players:GetChildren()) do
			emit = Instance.new("ParticleEmitter")
			emit.Parent = v.Character.Head
			emit.Texture = "http://www.roblox.com/asset/?id=16139546365"
			emit.VelocitySpread = 100000
		end
	end)
end
coroutine.wrap(SBVDUQH_fake_script)()