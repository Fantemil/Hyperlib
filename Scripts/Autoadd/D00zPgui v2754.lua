-- Monstrum's Gui to Lua\n-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local _666 = Instance.new("TextButton")
local decal = Instance.new("TextButton")
local disco = Instance.new("TextButton")
local hint = Instance.new("TextButton")
local jump = Instance.new("TextButton")
local message = Instance.new("TextButton")
local parts = Instance.new("TextButton")
local theme = Instance.new("TextButton")
local shut = Instance.new("TextButton")
local sky = Instance.new("TextButton")
local eses = Instance.new("TextButton")
local unanchor = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(130, 22, 130)
Frame.BorderSizePixel = 5
Frame.Position = UDim2.new(0.358271539, 0, 0.266487002, 0)
Frame.Size = UDim2.new(0, 486, 0, 449)

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(130, 22, 130)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.Position = UDim2.new(0.0542240441, 0, 0.06919498, 0)
ScrollingFrame.Size = UDim2.new(0, 416, 0, 400)
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)

TextLabel.Parent = ScrollingFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.271820426, 0, 0.0183245987, 0)
TextLabel.Size = UDim2.new(0, 170, 0, 32)
TextLabel.Font = Enum.Font.Arial
TextLabel.Text = "D00zpgui v2"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = TextLabel
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(-0.00465016067, 0, 1.28959417, 0)
TextLabel_2.Size = UDim2.new(0, 170, 0, 32)
TextLabel_2.Font = Enum.Font.Arial
TextLabel_2.Text = "by D00zpk1dd"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = TextLabel_2
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.395349801, 0, 21.8208447, 0)
TextLabel_3.Size = UDim2.new(0, 170, 0, 14)
TextLabel_3.Font = Enum.Font.Arial
TextLabel_3.Text = "lol"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

_666.Name = "666"
_666.Parent = TextLabel_3
_666.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_666.BorderColor3 = Color3.fromRGB(130, 22, 130)
_666.Position = UDim2.new(-0.241176382, 0, -43, 0)
_666.Size = UDim2.new(0, 99, 0, 39)
_666.Font = Enum.Font.SourceSans
_666.Text = "666"
_666.TextColor3 = Color3.fromRGB(255, 255, 255)
_666.TextScaled = true
_666.TextSize = 14.000
_666.TextWrapped = true

decal.Name = "decal"
decal.Parent = TextLabel_3
decal.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
decal.BorderColor3 = Color3.fromRGB(130, 22, 130)
decal.Position = UDim2.new(-0.864705801, 0, -46.5, 0)
decal.Size = UDim2.new(0, 99, 0, 39)
decal.Font = Enum.Font.SourceSans
decal.Text = "Decal"
decal.TextColor3 = Color3.fromRGB(255, 255, 255)
decal.TextScaled = true
decal.TextSize = 14.000
decal.TextWrapped = true

disco.Name = "disco"
disco.Parent = TextLabel_3
disco.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
disco.BorderColor3 = Color3.fromRGB(130, 22, 130)
disco.Position = UDim2.new(0.394117653, 0, -39.5714302, 0)
disco.Size = UDim2.new(0, 99, 0, 39)
disco.Font = Enum.Font.SourceSans
disco.Text = "disco"
disco.TextColor3 = Color3.fromRGB(255, 255, 255)
disco.TextScaled = true
disco.TextSize = 14.000
disco.TextWrapped = true

hint.Name = "hint"
hint.Parent = TextLabel_3
hint.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
hint.BorderColor3 = Color3.fromRGB(130, 22, 130)
hint.Position = UDim2.new(0.394117713, 0, -46.5, 0)
hint.Size = UDim2.new(0, 99, 0, 39)
hint.Font = Enum.Font.SourceSans
hint.Text = "Hint"
hint.TextColor3 = Color3.fromRGB(255, 255, 255)
hint.TextScaled = true
hint.TextSize = 14.000
hint.TextWrapped = true

jump.Name = "jump"
jump.Parent = TextLabel_3
jump.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
jump.BorderColor3 = Color3.fromRGB(130, 22, 130)
jump.Position = UDim2.new(0.394117713, 0, -43, 0)
jump.Size = UDim2.new(0, 99, 0, 39)
jump.Font = Enum.Font.SourceSans
jump.Text = "JumpScare"
jump.TextColor3 = Color3.fromRGB(255, 255, 255)
jump.TextScaled = true
jump.TextSize = 14.000
jump.TextWrapped = true

message.Name = "message"
message.Parent = TextLabel_3
message.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
message.BorderColor3 = Color3.fromRGB(130, 22, 130)
message.Position = UDim2.new(-0.241176471, 0, -39.5714302, 0)
message.Size = UDim2.new(0, 99, 0, 39)
message.Font = Enum.Font.SourceSans
message.Text = "Message"
message.TextColor3 = Color3.fromRGB(255, 255, 255)
message.TextScaled = true
message.TextSize = 14.000
message.TextWrapped = true

parts.Name = "parts"
parts.Parent = TextLabel_3
parts.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
parts.BorderColor3 = Color3.fromRGB(130, 22, 130)
parts.Position = UDim2.new(-0.864705801, 0, -43, 0)
parts.Size = UDim2.new(0, 99, 0, 39)
parts.Font = Enum.Font.SourceSans
parts.Text = "Particles"
parts.TextColor3 = Color3.fromRGB(255, 255, 255)
parts.TextScaled = true
parts.TextSize = 14.000
parts.TextWrapped = true

theme.Name = "theme"
theme.Parent = TextLabel_3
theme.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
theme.BorderColor3 = Color3.fromRGB(130, 22, 130)
theme.Position = UDim2.new(-0.947058797, 0, -51.6428566, 0)
theme.Size = UDim2.new(0, 59, 0, 24)
theme.Font = Enum.Font.SourceSans
theme.Text = "theme"
theme.TextColor3 = Color3.fromRGB(255, 255, 255)
theme.TextScaled = true
theme.TextSize = 14.000
theme.TextWrapped = true

shut.Name = "shut"
shut.Parent = TextLabel_3
shut.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
shut.BorderColor3 = Color3.fromRGB(130, 22, 130)
shut.Position = UDim2.new(-0.241176471, 0, -36.0714302, 0)
shut.Size = UDim2.new(0, 99, 0, 39)
shut.Font = Enum.Font.SourceSans
shut.Text = "Shutdown"
shut.TextColor3 = Color3.fromRGB(255, 255, 255)
shut.TextScaled = true
shut.TextSize = 14.000
shut.TextWrapped = true

sky.Name = "sky"
sky.Parent = TextLabel_3
sky.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
sky.BorderColor3 = Color3.fromRGB(130, 22, 130)
sky.Position = UDim2.new(-0.241176382, 0, -46.5, 0)
sky.Size = UDim2.new(0, 99, 0, 39)
sky.Font = Enum.Font.SourceSans
sky.Text = "SkyBox"
sky.TextColor3 = Color3.fromRGB(255, 255, 255)
sky.TextScaled = true
sky.TextSize = 14.000
sky.TextWrapped = true

eses.Name = "eses"
eses.Parent = TextLabel_3
eses.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
eses.BorderColor3 = Color3.fromRGB(130, 22, 130)
eses.Position = UDim2.new(-0.870588183, 0, -39.5714302, 0)
eses.Size = UDim2.new(0, 99, 0, 39)
eses.Font = Enum.Font.SourceSans
eses.Text = "IS1S JumpScare"
eses.TextColor3 = Color3.fromRGB(255, 255, 255)
eses.TextScaled = true
eses.TextSize = 14.000
eses.TextWrapped = true

unanchor.Name = "unanchor"
unanchor.Parent = TextLabel_3
unanchor.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
unanchor.BorderColor3 = Color3.fromRGB(130, 22, 130)
unanchor.Position = UDim2.new(-0.241176292, 0, -32.3571434, 0)
unanchor.Size = UDim2.new(0, 99, 0, 39)
unanchor.Font = Enum.Font.SourceSans
unanchor.Text = "UnAnchor"
unanchor.TextColor3 = Color3.fromRGB(255, 255, 255)
unanchor.TextScaled = true
unanchor.TextSize = 14.000
unanchor.TextWrapped = true

-- Scripts:

local function WWAPPYW_script() -- Frame.Drag Gui Script 
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
coroutine.wrap(WWAPPYW_script)()
local function QFOW_script() -- _666.Script 
	local script = Instance.new('Script', _666)

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
coroutine.wrap(QFOW_script)()
local function MFPHNL_script() -- decal.Script 
	local script = Instance.new('Script', decal)

	function click()
		function exPro(root)
			for _, v in pairs(root:GetChildren()) do
				if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset/?id=119586579603859" then
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
					One.Texture = "http://www.roblox.com/asset/?id=119586579603859"
					Two.Texture = "http://www.roblox.com/asset/?id=119586579603859"
					Three.Texture = "http://www.roblox.com/asset/?id=119586579603859"
					Four.Texture = "http://www.roblox.com/asset/?id=119586579603859"
					Five.Texture = "http://www.roblox.com/asset/?id=119586579603859"
					Six.Texture = "http://www.roblox.com/asset/?id=119586579603859"
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
coroutine.wrap(MFPHNL_script)()
local function TEPUU_script() -- disco.Script 
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
coroutine.wrap(TEPUU_script)()
local function EHAN_script() -- hint.Script 
	local script = Instance.new('Script', hint)

	script.Parent.MouseButton1Click:Connect(function()
		local m = Instance.new("Hint", game.workspace)
		m.Text = "souhi14 on top"
	end)
end
coroutine.wrap(EHAN_script)()
local function GOKSKO_script() -- jump.Script 
	local script = Instance.new('Script', jump)

	script.Parent.MouseButton1Click:Connect(function()
		for i,v in pairs(game.Players:GetPlayers()) do
			if v.Name ~= me and not v.PlayerGui:FindFirstChild("Screamer") and v:FindFirstChild("PlayerGui") then
				spawn(function()
					local newgui = Instance.new("ScreenGui",v.PlayerGui)
					newgui.Name = "Screamer"
					local newimage = Instance.new("ImageLabel",newgui)
					newimage.Image = "http://www.roblox.com/asset/?id=107453991579564"
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
coroutine.wrap(GOKSKO_script)()
local function NETF_script() -- message.Script 
	local script = Instance.new('Script', message)

	script.Parent.MouseButton1Click:Connect(function()
		local o = Instance.new("Message",workspace)
		o.Text = "join team D00zpk1dd"
		wait(10)
		o:Destroy()
	end)
end
coroutine.wrap(NETF_script)()
local function VAFBWEQ_script() -- parts.Script 
	local script = Instance.new('Script', parts)

	script.Parent.MouseButton1Click:Connect(function()
		for i, v in pairs(game.Players:GetChildren()) do
			emit = Instance.new("ParticleEmitter")
			emit.Parent = v.Character.Head
			emit.Texture = "http://www.roblox.com/asset/?id=119586579603859"
			emit.VelocitySpread = 100000
		end
		end)
end
coroutine.wrap(VAFBWEQ_script)()
local function YRWDL_script() -- theme.Script 
	local script = Instance.new('Script', theme)

	function onClick()
		local tubers93		= Instance.new("Sound")
		tubers93.Parent		= game:GetService("Workspace")
		tubers93.SoundId		= "rbxassetid://1839246711"
		tubers93.Playing		= true
		tubers93.Looped		= false
		tubers93.Pitch      = 0.8
		tubers93.Volume		= 1
		tubers93.Distortion = 1999999999
	
	end
	
	script.Parent.MouseButton1Down:connect(onClick)
end
coroutine.wrap(YRWDL_script)()
local function AZTAN_script() -- shut.Script 
	local script = Instance.new('Script', shut)

	script.Parent.MouseButton1Down:connect(function()
		for i, players in pairs(game.Players:GetChildren()) do
			players:Kick("HAHAHA!!!!111")
		end
	end)
	
end
coroutine.wrap(AZTAN_script)()
local function VDIFZ_script() -- sky.Script 
	local script = Instance.new('Script', sky)

	function click()
		s = Instance.new("Sky")
		s.Name = "Sky"
		s.Parent = game.Lighting
		s.SkyboxBk = "http://www.roblox.com/asset/?id=119586579603859"
		s.SkyboxDn = "http://www.roblox.com/asset/?id=119586579603859"
		s.SkyboxFt = "http://www.roblox.com/asset/?id=119586579603859"
		s.SkyboxLf = "http://www.roblox.com/asset/?id=119586579603859"
		s.SkyboxRt = "http://www.roblox.com/asset/?id=119586579603859"
		s.SkyboxUp = "http://www.roblox.com/asset/?id=119586579603859"
		game.Lighting.TimeOfDay = 12
	end
	
	script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(VDIFZ_script)()
local function HZMY_script() -- eses.Script 
	local script = Instance.new('Script', eses)

	script.Parent.MouseButton1Click:Connect(function()
		for i,v in pairs(game.Players:GetPlayers()) do
			if v.Name ~= me and not v.PlayerGui:FindFirstChild("Screamer") and v:FindFirstChild("PlayerGui") then
				spawn(function()
					local newgui = Instance.new("ScreenGui",v.PlayerGui)
					newgui.Name = "Screamer"
					local newimage = Instance.new("ImageLabel",newgui)
					newimage.Image = "http://www.roblox.com/asset/?id=119586579603859"
					newimage.Size = UDim2.new(1,1,1,1)
					local s = Instance.new("Sound",newgui)
					s.SoundId = "rbxassetid://8696985260"
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
coroutine.wrap(HZMY_script)()
local function KJLB_script() -- unanchor.Script 
	local script = Instance.new('Script', unanchor)

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
coroutine.wrap(KJLB_script)()