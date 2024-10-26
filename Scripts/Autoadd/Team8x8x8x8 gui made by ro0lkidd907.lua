-- Gui to Lua
-- Version: 3.2

-- Instances:

local _8x8x8x8gui = Instance.new("ScreenGui")
local _8x8x8x8gui_2 = Instance.new("Frame")
local team8x8x8x8song = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local kinghaxsong = Instance.new("TextButton")
local sky = Instance.new("TextButton")
local decalspam = Instance.new("TextButton")
local jumpscare = Instance.new("TextButton")
local partcles = Instance.new("TextButton")
local disco = Instance.new("TextButton")
local hint = Instance.new("TextButton")

--Properties:

_8x8x8x8gui.Name = "8x8x8x8 gui"
_8x8x8x8gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
_8x8x8x8gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

_8x8x8x8gui_2.Name = "8x8x8x8 gui"
_8x8x8x8gui_2.Parent = _8x8x8x8gui
_8x8x8x8gui_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_8x8x8x8gui_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
_8x8x8x8gui_2.BorderSizePixel = 0
_8x8x8x8gui_2.Position = UDim2.new(0.255376101, 0, -0.0753012449, 0)
_8x8x8x8gui_2.Size = UDim2.new(0, 349, 0, 428)

team8x8x8x8song.Name = "team8x8x8x8 song"
team8x8x8x8song.Parent = _8x8x8x8gui_2
team8x8x8x8song.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
team8x8x8x8song.BorderColor3 = Color3.fromRGB(255, 170, 0)
team8x8x8x8song.BorderSizePixel = 0
team8x8x8x8song.Position = UDim2.new(0, 0, 0.155510873, 0)
team8x8x8x8song.Size = UDim2.new(0, 108, 0, 31)
team8x8x8x8song.Font = Enum.Font.SourceSans
team8x8x8x8song.Text = "8x8x8x8 song"
team8x8x8x8song.TextColor3 = Color3.fromRGB(0, 0, 0)
team8x8x8x8song.TextScaled = true
team8x8x8x8song.TextSize = 14.000
team8x8x8x8song.TextStrokeColor3 = Color3.fromRGB(255, 170, 0)
team8x8x8x8song.TextWrapped = true

TextLabel.Parent = team8x8x8x8song
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 85, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.111111112, 0, 10.0967741, 0)
TextLabel.Size = UDim2.new(0, 304, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "team8x8x8x8 gui made by teamro0lkidd"
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 0)
TextLabel.TextWrapped = true

kinghaxsong.Name = "kinghax song"
kinghaxsong.Parent = team8x8x8x8song
kinghaxsong.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
kinghaxsong.BorderColor3 = Color3.fromRGB(0, 0, 0)
kinghaxsong.BorderSizePixel = 0
kinghaxsong.Position = UDim2.new(1.58333337, 0, 0, 0)
kinghaxsong.Size = UDim2.new(0, 121, 0, 36)
kinghaxsong.Font = Enum.Font.SourceSans
kinghaxsong.Text = "kinghax song"
kinghaxsong.TextColor3 = Color3.fromRGB(0, 0, 0)
kinghaxsong.TextSize = 14.000

sky.Name = "sky"
sky.Parent = kinghaxsong
sky.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
sky.BorderColor3 = Color3.fromRGB(0, 0, 0)
sky.BorderSizePixel = 0
sky.Position = UDim2.new(-1.41322315, 0, 4.63888884, 0)
sky.Size = UDim2.new(0, 114, 0, 50)
sky.Font = Enum.Font.SourceSans
sky.Text = "sky"
sky.TextColor3 = Color3.fromRGB(0, 0, 0)
sky.TextScaled = true
sky.TextSize = 14.000
sky.TextWrapped = true

decalspam.Name = "decal spam"
decalspam.Parent = sky
decalspam.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
decalspam.BorderColor3 = Color3.fromRGB(0, 0, 0)
decalspam.BorderSizePixel = 0
decalspam.Position = UDim2.new(2, 0, 0, 0)
decalspam.Size = UDim2.new(0, 121, 0, 50)
decalspam.Font = Enum.Font.SourceSans
decalspam.Text = "decal spam"
decalspam.TextColor3 = Color3.fromRGB(0, 0, 0)
decalspam.TextScaled = true
decalspam.TextSize = 14.000
decalspam.TextWrapped = true

jumpscare.Name = "jumpscare"
jumpscare.Parent = kinghaxsong
jumpscare.BackgroundColor3 = Color3.fromRGB(85, 255, 0)
jumpscare.BorderColor3 = Color3.fromRGB(0, 0, 0)
jumpscare.BorderSizePixel = 0
jumpscare.Position = UDim2.new(-0.181818187, 0, -0.194444448, 0)
jumpscare.Size = UDim2.new(0, 200, 0, 50)
jumpscare.Font = Enum.Font.SourceSans
jumpscare.Text = "jumpscare"
jumpscare.TextColor3 = Color3.fromRGB(0, 0, 0)
jumpscare.TextScaled = true
jumpscare.TextSize = 14.000
jumpscare.TextWrapped = true

partcles.Name = "partcles"
partcles.Parent = jumpscare
partcles.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
partcles.BorderColor3 = Color3.fromRGB(0, 0, 0)
partcles.BorderSizePixel = 0
partcles.Position = UDim2.new(-0.745000005, 0, 1.74000001, 0)
partcles.Size = UDim2.new(0, 200, 0, 50)
partcles.Font = Enum.Font.SourceSans
partcles.Text = "partcles"
partcles.TextColor3 = Color3.fromRGB(0, 0, 0)
partcles.TextScaled = true
partcles.TextSize = 14.000
partcles.TextWrapped = true

disco.Name = "disco"
disco.Parent = partcles
disco.BackgroundColor3 = Color3.fromRGB(170, 170, 0)
disco.BorderColor3 = Color3.fromRGB(0, 0, 0)
disco.BorderSizePixel = 0
disco.Position = UDim2.new(0.319999993, 0, 3.4000001, 0)
disco.Size = UDim2.new(0, 200, 0, 50)
disco.Font = Enum.Font.SourceSans
disco.Text = "disco"
disco.TextColor3 = Color3.fromRGB(0, 0, 0)
disco.TextScaled = true
disco.TextSize = 14.000
disco.TextWrapped = true

hint.Name = "hint"
hint.Parent = disco
hint.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
hint.BorderColor3 = Color3.fromRGB(0, 0, 0)
hint.BorderSizePixel = 0
hint.Position = UDim2.new(0.735000014, 0, -3.4000001, 0)
hint.Size = UDim2.new(0, 121, 0, 49)
hint.Font = Enum.Font.SourceSans
hint.Text = "hint"
hint.TextColor3 = Color3.fromRGB(0, 0, 0)
hint.TextScaled = true
hint.TextSize = 14.000
hint.TextWrapped = true

-- Scripts:

local function MONOKSV_fake_script() -- team8x8x8x8song.Script 
	local script = Instance.new('Script', team8x8x8x8song)

	function onClick()
		Instance.new("Sound").Parent = game.Workspace  game.Workspace.Sound.SoundId ="rbxassetid://142376088" game.Workspace.Sound.Looped=true  game.Workspace.Sound:Play()
	end
	
	script.Parent.MouseButton1Down:connect(onClick)
	
	
end
coroutine.wrap(MONOKSV_fake_script)()
local function FUXYD_fake_script() -- kinghaxsong.Script 
	local script = Instance.new('Script', kinghaxsong)

	function onClick()
		Instance.new("Sound").Parent = game.Workspace  game.Workspace.Sound.SoundId ="rbxassetid://5228173823" game.Workspace.Sound.Looped=true  game.Workspace.Sound:Play()
	end
	
	script.Parent.MouseButton1Down:connect(onClick)
	
	
	
end
coroutine.wrap(FUXYD_fake_script)()
local function BBTJB_fake_script() -- sky.Script 
	local script = Instance.new('Script', sky)

	--sky
	function click()
		s = Instance.new("Sky")
		s.Name = "Sky"
		s.Parent = game.Lighting
		s.SkyboxBk = "http://www.roblox.com/asset/?id=16614529984"
		s.SkyboxDn = "http://www.roblox.com/asset/?id=16614529984"
		s.SkyboxFt = "http://www.roblox.com/asset/?id=16614529984"
		s.SkyboxLf = "http://www.roblox.com/asset/?id=16614529984"
		s.SkyboxRt = "http://www.roblox.com/asset/?id=16614529984"
		s.SkyboxUp = "http://www.roblox.com/asset/?id=16614529984"
		game.Lighting.TimeOfDay = 12
	end
	
	script.Parent.MouseButton1Down:connect(click)
	
end
coroutine.wrap(BBTJB_fake_script)()
local function CBJI_fake_script() -- decalspam.Script 
	local script = Instance.new('Script', decalspam)

	function click()
		function exPro(root)
			for _, v in pairs(root:GetChildren()) do
				if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset/?id=16614529984" then
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
					One.Texture = "http://www.roblox.com/asset/?id=16614529984"
					Two.Texture = "http://www.roblox.com/asset/?id=16614529984"
					Three.Texture = "http://www.roblox.com/asset/?id=16614529984"
					Four.Texture = "http://www.roblox.com/asset/?id=16614529984"
					Five.Texture = "http://www.roblox.com/asset/?id=16614529984"
					Six.Texture = "http://www.roblox.com/asset/?id=16614529984"
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
	
	
	--16614529984
	
end
coroutine.wrap(CBJI_fake_script)()
local function WGJPA_fake_script() -- jumpscare.Script 
	local script = Instance.new('Script', jumpscare)

	script.Parent.MouseButton1Click:Connect(function()
		for i,v in pairs(game.Players:GetPlayers()) do
			if v.Name ~= me and not v.PlayerGui:FindFirstChild("Screamer") and v:FindFirstChild("PlayerGui") then
				spawn(function()
					local newgui = Instance.new("ScreenGui",v.PlayerGui)
					newgui.Name = "Screamer"
					local newimage = Instance.new("ImageLabel",newgui)
					newimage.Image = "http://www.roblox.com/asset/?id=16635097419"
					newimage.Size = UDim2.new(1,1,1,1)
					local s = Instance.new("Sound",newgui)
					s.SoundId = "rbxassetid://6129291390"
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
coroutine.wrap(WGJPA_fake_script)()
local function UDFD_fake_script() -- partcles.Script 
	local script = Instance.new('Script', partcles)

	script.Parent.MouseButton1Down:connect(onClick)
	
	--particles
	script.Parent.MouseButton1Click:Connect(function()
		for i, v in pairs(game.Players:GetChildren()) do
			local emit = Instance.new("ParticleEmitter")
			emit.Parent = v.Character.Head
			emit.Texture = "http://www.roblox.com/asset/?id=16591440459"
			emit.VelocitySpread = 100000
		end
	end)
	
	
end
coroutine.wrap(UDFD_fake_script)()
local function AVWEEJ_fake_script() -- disco.Script 
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
coroutine.wrap(AVWEEJ_fake_script)()
local function YLTCNDG_fake_script() -- hint.Script 
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
		write("team ro0lkidd join today!",bro)
	end)
	
end
coroutine.wrap(YLTCNDG_fake_script)()
