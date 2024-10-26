-- Gui to Lua
-- Version: 3.2

-- Instances:

local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")

--Properties:

Frame.Parent = game.StarterGui.ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0789766386, 0, 0.084710747, 0)
Frame.Size = UDim2.new(0, 290, 0, 223)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0216948409, 0, 0.0622998737, 0)
TextButton.Size = UDim2.new(0, 272, 0, 50)
TextButton.Font = Enum.Font.GothamBold
TextButton.Text = "c00lkidd sky"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.0188082997, 0, 0.289358228, 0)
TextButton_2.Size = UDim2.new(0, 272, 0, 50)
TextButton_2.Font = Enum.Font.GothamBold
TextButton_2.Text = "666"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.0212734882, 0, 0.510695636, 0)
TextButton_3.Size = UDim2.new(0, 272, 0, 50)
TextButton_3.Font = Enum.Font.GothamBold
TextButton_3.Text = "spin all"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

TextButton_4.Parent = Frame
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.0212734882, 0, 0.774865091, 0)
TextButton_4.Size = UDim2.new(0, 272, 0, 50)
TextButton_4.Font = Enum.Font.GothamBold
TextButton_4.Text = "shedletsky"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14.000
TextButton_4.TextWrapped = true

-- Module Scripts:

local fake_module_scripts = {}

do -- nil.FakeMouse
	local script = Instance.new('ModuleScript', nil)
	script.Name = "FakeMouse"
	local function module_script()
		local Converter = {}
		script.Client.Disabled = false -- enables the client
		
		
		Converter.LocalPlayer = nil
		local Plr = nil -- temp
		
		
		script.GetPlr.OnServerEvent:Connect(function(Plrr)
			Plr = Plrr
		end)
		
		
		
		-- A LIST OF ALL FUNCTIONS / EVENTS / PROPERTIES --
		
		repeat wait() until Plr
		
		function Converter:GetPlr()
			return script.GetPlrE:InvokeClient(Plr)
		end
		
		
		Converter.LocalPlayer = Plr
		
		return Converter
	end
	fake_module_scripts[script] = module_script
end


-- Scripts:

local function IJQVLUL_fake_script() -- TextButton.Script 
	local script = Instance.new('Script', TextButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	function click()
		s = Instance.new("Sky")
		s.Name = "Sky"
		s.Parent = game.Lighting
		s.SkyboxBk = "http://www.roblox.com/asset/?id=158118263"
		s.SkyboxDn = "http://www.roblox.com/asset/?id=158118263"
		s.SkyboxFt = "http://www.roblox.com/asset/?id=158118263"
		s.SkyboxLf = "http://www.roblox.com/asset/?id=158118263"
		s.SkyboxRt = "http://www.roblox.com/asset/?id=158118263"
		s.SkyboxUp = "http://www.roblox.com/asset/?id=158118263"
		game.Lighting.TimeOfDay = 12
	end
	
	script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(IJQVLUL_fake_script)()
local function ETIALCO_fake_script() -- TextButton_2.Script 
	local script = Instance.new('Script', TextButton_2)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

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
coroutine.wrap(ETIALCO_fake_script)()
local function YJEQC_fake_script() -- TextButton_3.Script 
	local script = Instance.new('Script', TextButton_3)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	function click()
	for i,v in pairs(game.Players:GetChildren()) do
	local plr = v
	number = 15
	local head = v.Character.Head
	if head then
	local spin1 = head:FindFirstChild("Spin1")
	local spin2 = head:FindFirstChild("Spin2")
	if not spin1 then
	spin1 = Instance.new("BodyAngularVelocity")
	spin1.MaxTorque = Vector3.new(300000, 300000, 300000)
	spin1.P = 300
	spin1.Name = "Spin1"
	spin1.Parent = head
	spin2 = Instance.new("BodyGyro")
	spin2.MaxTorque = Vector3.new(400000, 0, 400000)
	spin2.D = 500
	spin2.P = 300
	spin2.Name = "Spin2"
	spin2.Parent = head
	end
	spin1.AngularVelocity = Vector3.new(0,number,0)
	end
	end
	end
	
	script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(YJEQC_fake_script)()
local function LRBZ_fake_script() -- TextButton_4.Script 
	local script = Instance.new('Script', TextButton_4)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.MouseButton1Click:Connect(function()
		local p = require(script.FakeMouse):GetPlr()
		game.Lighting:ClearAllChildren()
		wait(.2)
		local s = Instance.new("Sky")
		s.Name = "Sky"
		s.Parent = game.Lighting
		s.SkyboxBk = "http://www.roblox.com/asset/?id=172423468"
		s.SkyboxDn = "http://www.roblox.com/asset/?id=172423468"
		s.SkyboxFt = "http://www.roblox.com/asset/?id=172423468"
		s.SkyboxLf = "http://www.roblox.com/asset/?id=172423468"
		s.SkyboxRt = "http://www.roblox.com/asset/?id=172423468"
		s.SkyboxUp = "http://www.roblox.com/asset/?id=172423468"
		s.SunAngularSize = 0
		s.MoonAngularSize = 0
		for i, v in pairs(game.Players:GetChildren()) do
			local emit = Instance.new("ParticleEmitter")
			emit.Parent = v.Character.Head
			emit.Texture = "http://www.roblox.com/asset/?id=11664604903"
			emit.VelocitySpread = 100000
			emit.SpreadAngle =  Vector2.new(0, 0)
			emit.Speed = NumberRange.new(9, 9)
		end
		for i, v in pairs(game.Players:GetChildren()) do
			local emit = Instance.new("ParticleEmitter")
			emit.Parent = v.Character.Head
			emit.Texture = "http://www.roblox.com/asset/?id=11664604903"
			emit.VelocitySpread = 100000
			emit.SpreadAngle =  Vector2.new(0, 0)
			emit.Speed = NumberRange.new(9, 9)
		end
		for i, v in pairs(game.Players:GetChildren()) do
			local emit = Instance.new("ParticleEmitter")
			emit.Parent = v.Character.Head
			emit.Texture = "http://www.roblox.com/asset/?id=11664604903"
			emit.VelocitySpread = 100000
			emit.SpreadAngle =  Vector2.new(0, 0)
			emit.Speed = NumberRange.new(9, 9)
		end
		for i, v in pairs(game.Players:GetChildren()) do
			local emit = Instance.new("ParticleEmitter")
			emit.Parent = v.Character.Head
			emit.Texture = "http://www.roblox.com/asset/?id=11664604903"
			emit.VelocitySpread = 100000
			emit.SpreadAngle =  Vector2.new(0, 0)
			emit.Speed = NumberRange.new(9, 9)
		end
		local Sound0 = Instance.new("Sound")
		Sound0.Parent = workspace
		Sound0.Looped = true
		Sound0.Playing = true
		Sound0.SoundId = "rbxassetid://130759239"
	end)
end
coroutine.wrap(LRBZ_fake_script)()