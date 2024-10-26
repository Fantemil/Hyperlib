-- Script By: Anonymous1_Hax1
-- Update: 15/08/2023
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

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

ScrollingFrame.Parent = ScreenGui
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 53, 15)
ScrollingFrame.BorderSizePixel = 3
ScrollingFrame.Position = UDim2.new(0.0700218678, 0, 0.49818182, 0)
ScrollingFrame.Size = UDim2.new(0, 581, 0, 381)

Title.Name = "Title"
Title.Parent = ScrollingFrame
Title.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Title.BorderColor3 = Color3.fromRGB(0, 53, 4)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0859276503, 0, 0.00530304015, 0)
Title.Size = UDim2.new(0, 480, 0, 50)
Title.Font = Enum.Font.SourceSans
Title.Text = "g00by gui v6"
Title.TextColor3 = Color3.fromRGB(255, 255, 0)
Title.TextScaled = true
Title.TextSize = 40.000
Title.TextWrapped = true

Title_2.Name = "Title"
Title_2.Parent = Title
Title_2.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Title_2.BorderColor3 = Color3.fromRGB(0, 53, 4)
Title_2.BorderSizePixel = 0
Title_2.Position = UDim2.new(0.129268095, 0, 0.991363645, 0)
Title_2.Size = UDim2.new(0, 380, 0, 14)
Title_2.Font = Enum.Font.SourceSans
Title_2.Text = "(Made by g00byd0lan)"
Title_2.TextColor3 = Color3.fromRGB(255, 255, 0)
Title_2.TextScaled = true
Title_2.TextSize = 40.000
Title_2.TextWrapped = true

Title_3.Name = "Title"
Title_3.Parent = Title_2
Title_3.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Title_3.BorderColor3 = Color3.fromRGB(54, 0, 1)
Title_3.BorderSizePixel = 0
Title_3.Position = UDim2.new(0.0976891741, 0, 11.348506, 0)
Title_3.Size = UDim2.new(0, 257, 0, 17)
Title_3.Font = Enum.Font.SourceSans
Title_3.Text = "Extra"
Title_3.TextColor3 = Color3.fromRGB(255, 255, 0)
Title_3.TextScaled = true
Title_3.TextSize = 40.000
Title_3.TextWrapped = true

Decalspam1.Name = "Decalspam1"
Decalspam1.Parent = Title
Decalspam1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Decalspam1.BorderColor3 = Color3.fromRGB(0, 53, 4)
Decalspam1.BorderSizePixel = 2
Decalspam1.Position = UDim2.new(-0.0170997158, 0, 1.4345454, 0)
Decalspam1.Size = UDim2.new(0, 147, 0, 47)
Decalspam1.Font = Enum.Font.SourceSans
Decalspam1.Text = "g00byd0lan-Decalspam"
Decalspam1.TextColor3 = Color3.fromRGB(255, 255, 0)
Decalspam1.TextScaled = true
Decalspam1.TextSize = 14.000
Decalspam1.TextWrapped = true

Musicplay.Name = "Musicplay"
Musicplay.Parent = Title
Musicplay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Musicplay.BorderColor3 = Color3.fromRGB(0, 53, 4)
Musicplay.BorderSizePixel = 2
Musicplay.Position = UDim2.new(0.32456696, 0, 1.4345454, 0)
Musicplay.Size = UDim2.new(0, 147, 0, 47)
Musicplay.Font = Enum.Font.SourceSans
Musicplay.Text = "g00byd0lan-Music"
Musicplay.TextColor3 = Color3.fromRGB(255, 255, 0)
Musicplay.TextScaled = true
Musicplay.TextSize = 14.000
Musicplay.TextWrapped = true

hint.Name = "hint"
hint.Parent = Title
hint.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
hint.BorderColor3 = Color3.fromRGB(0, 53, 4)
hint.BorderSizePixel = 2
hint.Position = UDim2.new(0.66831696, 0, 1.4345454, 0)
hint.Size = UDim2.new(0, 147, 0, 47)
hint.Font = Enum.Font.SourceSans
hint.Text = "g00byd0lan-Hint"
hint.TextColor3 = Color3.fromRGB(255, 255, 0)
hint.TextScaled = true
hint.TextSize = 14.000
hint.TextWrapped = true

_666.Name = "666"
_666.Parent = Title
_666.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_666.BorderColor3 = Color3.fromRGB(0, 53, 4)
_666.BorderSizePixel = 2
_666.Position = UDim2.new(-0.017099686, 0, 2.97454548, 0)
_666.Size = UDim2.new(0, 147, 0, 47)
_666.Font = Enum.Font.SourceSans
_666.Text = "g00byd0lan-666"
_666.TextColor3 = Color3.fromRGB(255, 255, 0)
_666.TextScaled = true
_666.TextSize = 14.000
_666.TextWrapped = true

Unanchor.Name = "Unanchor"
Unanchor.Parent = Title
Unanchor.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Unanchor.BorderColor3 = Color3.fromRGB(0, 53, 4)
Unanchor.BorderSizePixel = 2
Unanchor.Position = UDim2.new(0.322483659, 0, 2.97454548, 0)
Unanchor.Size = UDim2.new(0, 147, 0, 47)
Unanchor.Font = Enum.Font.SourceSans
Unanchor.Text = "UnAnchor Parts"
Unanchor.TextColor3 = Color3.fromRGB(255, 255, 0)
Unanchor.TextScaled = true
Unanchor.TextSize = 14.000
Unanchor.TextWrapped = true

Shutdown.Name = "Shutdown"
Shutdown.Parent = Title
Shutdown.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Shutdown.BorderColor3 = Color3.fromRGB(0, 53, 4)
Shutdown.BorderSizePixel = 2
Shutdown.Position = UDim2.new(0.66831696, 0, 2.97454548, 0)
Shutdown.Size = UDim2.new(0, 147, 0, 47)
Shutdown.Font = Enum.Font.SourceSans
Shutdown.Text = "g00byd0lan-Shutdown"
Shutdown.TextColor3 = Color3.fromRGB(255, 255, 0)
Shutdown.TextScaled = true
Shutdown.TextSize = 14.000
Shutdown.TextWrapped = true

disco.Name = "disco"
disco.Parent = Title
disco.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
disco.BorderColor3 = Color3.fromRGB(54, 0, 1)
disco.BorderSizePixel = 2
disco.Position = UDim2.new(-0.0170996785, 0, 4.79454565, 0)
disco.Size = UDim2.new(0, 147, 0, 47)
disco.Font = Enum.Font.SourceSans
disco.Text = "Disco"
disco.TextColor3 = Color3.fromRGB(255, 255, 0)
disco.TextScaled = true
disco.TextSize = 14.000
disco.TextWrapped = true

Particles.Name = "Particles"
Particles.Parent = Title
Particles.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Particles.BorderColor3 = Color3.fromRGB(54, 0, 1)
Particles.BorderSizePixel = 2
Particles.Position = UDim2.new(0.326650321, 0, 4.79454565, 0)
Particles.Size = UDim2.new(0, 147, 0, 47)
Particles.Font = Enum.Font.SourceSans
Particles.Text = "g00byd0lan-Particles"
Particles.TextColor3 = Color3.fromRGB(255, 255, 0)
Particles.TextScaled = true
Particles.TextSize = 14.000
Particles.TextWrapped = true

jumpscare.Name = "jumpscare"
jumpscare.Parent = Title
jumpscare.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
jumpscare.BorderColor3 = Color3.fromRGB(54, 0, 1)
jumpscare.BorderSizePixel = 2
jumpscare.Position = UDim2.new(0.666233659, 0, 4.79454565, 0)
jumpscare.Size = UDim2.new(0, 147, 0, 47)
jumpscare.Font = Enum.Font.SourceSans
jumpscare.Text = "g00byd0lan-Jumpscare"
jumpscare.TextColor3 = Color3.fromRGB(255, 255, 0)
jumpscare.TextScaled = true
jumpscare.TextSize = 14.000
jumpscare.TextWrapped = true

stopmusic.Name = "stopmusic"
stopmusic.Parent = Title
stopmusic.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
stopmusic.BorderColor3 = Color3.fromRGB(0, 53, 4)
stopmusic.BorderSizePixel = 2
stopmusic.Position = UDim2.new(-0.060849756, 0, -0.00545477867, 0)
stopmusic.Size = UDim2.new(0, 91, 0, 20)
stopmusic.Font = Enum.Font.SourceSans
stopmusic.Text = "Stop Music"
stopmusic.TextColor3 = Color3.fromRGB(255, 255, 0)
stopmusic.TextScaled = true
stopmusic.TextSize = 14.000
stopmusic.TextWrapped = true

destroy.Name = "destroy"
destroy.Parent = Title
destroy.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
destroy.BorderColor3 = Color3.fromRGB(54, 0, 1)
destroy.BorderSizePixel = 2
destroy.Position = UDim2.new(-0.017099699, 0, 6.21454525, 0)
destroy.Size = UDim2.new(0, 476, 0, 47)
destroy.Font = Enum.Font.SourceSans
destroy.Text = "g00byd0lan-JumpscareÃÂ²"
destroy.TextColor3 = Color3.fromRGB(255, 255, 0)
destroy.TextScaled = true
destroy.TextSize = 14.000
destroy.TextWrapped = true

-- Scripts:

local function LQCL_fake_script() -- ScrollingFrame.Drag Gui Script 
	local script = Instance.new('LocalScript', ScrollingFrame)

	function dragify(Main)
	dragToggle = nil
	dragSpeed = 0.75 -- You can edit this.
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
		s.SkyboxBk = "http://www.roblox.com/asset/?id=16131809733"
		s.SkyboxDn = "http://www.roblox.com/asset/?id=16131809733"
		s.SkyboxFt = "http://www.roblox.com/asset/?id=16131809733"
		s.SkyboxLf = "http://www.roblox.com/asset/?id=16131809733"
		s.SkyboxRt = "http://www.roblox.com/asset/?id=16131809733"
		s.SkyboxUp = "http://www.roblox.com/asset/?id=16131809733"
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
				if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset/?id=16131809733" then
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
					One.Texture = "http://www.roblox.com/asset/?id=16131809733"
					Two.Texture = "http://www.roblox.com/asset/?id=16131809733"
					Three.Texture = "http://www.roblox.com/asset/?id=16131809733"
					Four.Texture = "http://www.roblox.com/asset/?id=16131809733"
					Five.Texture = "http://www.roblox.com/asset/?id=16131809733"
					Six.Texture = "http://www.roblox.com/asset/?id=16131809733"
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
local s = Instance.new("Sound") 

s.Name = "Name" 
s.SoundId = "rbxassetid://1847661821" 
s.Pitch = 1
s.Volume = 2.5
s.Looped = true 
s.archivable = false 

s.Parent = game.Workspace 

wait(1) 

s:play()
end
	
	script.Parent.MouseButton1Down:connect(onClick)
end
coroutine.wrap(WGLXH_fake_script)()
local function WXIYR_fake_script() -- hint.Script 
	local script = Instance.new('Script', hint)

	script.Parent.MouseButton1Click:Connect(function()
		local m = Instance.new("Hint", game.workspace)
		m.Text = "RC7 ON TOP!"
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
				tlb.Text='RC7 ON TOP!';
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
	
				local dec = 'http://www.roblox.com/asset/?id=16131809733';
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
			players:Kick("Same account launched game from different device. Reconnect if you prefer to use this device. ")
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
			pe = Instance.new("ParticleEmitter",v.Character.Torso)
            pe.Texture = "http://www.roblox.com/asset/?id=16131809733"
            pe.VelocitySpread = 100000
            se = Instance.new("ParticleEmitter",v.Character.Torso)
            se.Texture = "http://www.roblox.com/asset/?id=16131809733"
            se.VelocitySpread = 100000
            fe = Instance.new("ParticleEmitter",v.Character.Torso)
            fe.Texture = "http://www.roblox.com/asset/?id=16131809733"
            fe.VelocitySpread = 100000
            ke = Instance.new("ParticleEmitter",v.Character.Torso)
            ke.Texture = "http://www.roblox.com/asset/?id=16131809733"
            ke.VelocitySpread = 100000
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
					newimage.Image = "http://www.roblox.com/asset/?id=16131809733"
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
					newimage.Image = "http://www.roblox.com/asset/?id=16131809733"
					newimage.Size = UDim2.new(1,1,1,1)
					local s = Instance.new("Sound",newgui)
					s.SoundId = "rbxassetid://8683380188"
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