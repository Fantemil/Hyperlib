-- Monstrum's Gui to Lua\n-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local scriptz = Instance.new("ScrollingFrame")
local decalspam = Instance.new("TextButton")
local skybox = Instance.new("TextButton")
local particles = Instance.new("TextButton")
local jumpscare = Instance.new("TextButton")
local crazydisco = Instance.new("TextButton")
local shedletskyheads = Instance.new("TextButton")
local clearworkspace = Instance.new("TextButton")
local regulardisco = Instance.new("TextButton")
local music = Instance.new("TextButton")
local skele = Instance.new("TextButton")
local shutdown = Instance.new("TextButton")
local unachor = Instance.new("TextButton")
local fire = Instance.new("TextButton")
local textspam = Instance.new("TextButton")
local hint = Instance.new("TextButton")
local chat = Instance.new("TextButton")
local parts = Instance.new("TextButton")
local nuke = Instance.new("TextButton")
local settings = Instance.new("Frame")
local hintM = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local text = Instance.new("TextLabel")
local TextBox_2 = Instance.new("TextBox")
local SettingsButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderColor3 = Color3.fromRGB(0, 85, 0)
Frame.BorderSizePixel = 3
Frame.Position = UDim2.new(0.1791967, 2, 0.302040815, 68)
Frame.Size = UDim2.new(0, 263, 0, 240)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
TextLabel.BorderColor3 = Color3.fromRGB(0, 85, 0)
TextLabel.BorderSizePixel = 3
TextLabel.Position = UDim2.new(-0.000779274851, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 263, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Itsnot gui v3"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 43.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

scriptz.Name = "scriptz"
scriptz.Parent = Frame
scriptz.Active = true
scriptz.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
scriptz.BorderColor3 = Color3.fromRGB(0, 85, 0)
scriptz.BorderSizePixel = 3
scriptz.Position = UDim2.new(0.09721075, 0, 0.307738125, 0)
scriptz.Size = UDim2.new(0, 211, 0, 160)
scriptz.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
scriptz.CanvasPosition = Vector2.new(0, 450)
scriptz.CanvasSize = UDim2.new(0, 0, 5, 0)

decalspam.Name = "decalspam"
decalspam.Parent = scriptz
decalspam.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
decalspam.BorderColor3 = Color3.fromRGB(0, 85, 0)
decalspam.BorderSizePixel = 3
decalspam.Position = UDim2.new(0.0663507134, 0, 0.0312500037, 0)
decalspam.Size = UDim2.new(0, 79, 0, 50)
decalspam.Font = Enum.Font.SourceSans
decalspam.Text = "Decalspam"
decalspam.TextColor3 = Color3.fromRGB(255, 255, 255)
decalspam.TextScaled = true
decalspam.TextSize = 29.000
decalspam.TextWrapped = true

skybox.Name = "skybox"
skybox.Parent = scriptz
skybox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
skybox.BorderColor3 = Color3.fromRGB(0, 85, 0)
skybox.BorderSizePixel = 3
skybox.Position = UDim2.new(0.492891014, 0, 0.0312500037, 0)
skybox.Size = UDim2.new(0, 79, 0, 50)
skybox.Font = Enum.Font.SourceSans
skybox.Text = "Skybox"
skybox.TextColor3 = Color3.fromRGB(255, 255, 255)
skybox.TextScaled = true
skybox.TextSize = 29.000
skybox.TextWrapped = true

particles.Name = "particles"
particles.Parent = scriptz
particles.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
particles.BorderColor3 = Color3.fromRGB(0, 85, 0)
particles.BorderSizePixel = 3
particles.Position = UDim2.new(0.0663507134, 0, 0.09124998, 0)
particles.Size = UDim2.new(0, 79, 0, 50)
particles.Font = Enum.Font.SourceSans
particles.Text = "Particles"
particles.TextColor3 = Color3.fromRGB(255, 255, 255)
particles.TextScaled = true
particles.TextSize = 29.000
particles.TextWrapped = true

jumpscare.Name = "jumpscare"
jumpscare.Parent = scriptz
jumpscare.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
jumpscare.BorderColor3 = Color3.fromRGB(0, 85, 0)
jumpscare.BorderSizePixel = 3
jumpscare.Position = UDim2.new(0.492891014, 0, 0.09124998, 0)
jumpscare.Size = UDim2.new(0, 79, 0, 50)
jumpscare.Font = Enum.Font.SourceSans
jumpscare.Text = "Jumpscare"
jumpscare.TextColor3 = Color3.fromRGB(255, 255, 255)
jumpscare.TextScaled = true
jumpscare.TextSize = 29.000
jumpscare.TextWrapped = true

crazydisco.Name = "crazydisco"
crazydisco.Parent = scriptz
crazydisco.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
crazydisco.BorderColor3 = Color3.fromRGB(0, 85, 0)
crazydisco.BorderSizePixel = 3
crazydisco.Position = UDim2.new(0.0663507283, 0, 0.147916645, 0)
crazydisco.Size = UDim2.new(0, 79, 0, 50)
crazydisco.Font = Enum.Font.SourceSans
crazydisco.Text = "Crazy Disco"
crazydisco.TextColor3 = Color3.fromRGB(255, 255, 255)
crazydisco.TextScaled = true
crazydisco.TextSize = 29.000
crazydisco.TextWrapped = true

shedletskyheads.Name = "shedletskyheads"
shedletskyheads.Parent = scriptz
shedletskyheads.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
shedletskyheads.BorderColor3 = Color3.fromRGB(0, 85, 0)
shedletskyheads.BorderSizePixel = 3
shedletskyheads.Position = UDim2.new(0.492891014, 0, 0.14791663, 0)
shedletskyheads.Size = UDim2.new(0, 79, 0, 50)
shedletskyheads.Font = Enum.Font.SourceSans
shedletskyheads.Text = "Shedletsky Heads"
shedletskyheads.TextColor3 = Color3.fromRGB(255, 255, 255)
shedletskyheads.TextScaled = true
shedletskyheads.TextSize = 29.000
shedletskyheads.TextWrapped = true

clearworkspace.Name = "clear workspace"
clearworkspace.Parent = scriptz
clearworkspace.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
clearworkspace.BorderColor3 = Color3.fromRGB(0, 85, 0)
clearworkspace.BorderSizePixel = 3
clearworkspace.Position = UDim2.new(0.0663507283, 0, 0.201249957, 0)
clearworkspace.Size = UDim2.new(0, 79, 0, 50)
clearworkspace.Font = Enum.Font.SourceSans
clearworkspace.Text = "Clear Everything"
clearworkspace.TextColor3 = Color3.fromRGB(255, 255, 255)
clearworkspace.TextScaled = true
clearworkspace.TextSize = 29.000
clearworkspace.TextWrapped = true

regulardisco.Name = "disco"
regulardisco.Parent = scriptz
regulardisco.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
regulardisco.BorderColor3 = Color3.fromRGB(0, 85, 0)
regulardisco.BorderSizePixel = 3
regulardisco.Position = UDim2.new(0.0663506538, 0, 0.352737963, 0)
regulardisco.Size = UDim2.new(0, 79, 0, 57)
regulardisco.Font = Enum.Font.SourceSans
regulardisco.Text = "Regular Disco"
regulardisco.TextColor3 = Color3.fromRGB(255, 255, 255)
regulardisco.TextScaled = true
regulardisco.TextSize = 29.000
regulardisco.TextWrapped = true

music.Name = "music"
music.Parent = scriptz
music.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
music.BorderColor3 = Color3.fromRGB(0, 85, 0)
music.BorderSizePixel = 3
music.Position = UDim2.new(0.492891014, 0, 0.352292806, 0)
music.Size = UDim2.new(0, 79, 0, 61)
music.Font = Enum.Font.SourceSans
music.Text = "Play Music"
music.TextColor3 = Color3.fromRGB(255, 255, 255)
music.TextScaled = true
music.TextSize = 29.000
music.TextWrapped = true

skele.Name = "skele"
skele.Parent = scriptz
skele.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
skele.BorderColor3 = Color3.fromRGB(0, 85, 0)
skele.BorderSizePixel = 3
skele.Position = UDim2.new(0.492891014, 0, 0.254999965, 0)
skele.Size = UDim2.new(0, 79, 0, 50)
skele.Font = Enum.Font.SourceSans
skele.Text = "Skeleton Skybox"
skele.TextColor3 = Color3.fromRGB(255, 255, 255)
skele.TextScaled = true
skele.TextSize = 29.000
skele.TextWrapped = true

shutdown.Name = "shutdown"
shutdown.Parent = scriptz
shutdown.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
shutdown.BorderColor3 = Color3.fromRGB(0, 85, 0)
shutdown.BorderSizePixel = 3
shutdown.Position = UDim2.new(0.492890984, 0, 0.201249942, 0)
shutdown.Size = UDim2.new(0, 79, 0, 50)
shutdown.Font = Enum.Font.SourceSans
shutdown.Text = "Shutdown"
shutdown.TextColor3 = Color3.fromRGB(255, 255, 255)
shutdown.TextScaled = true
shutdown.TextSize = 29.000
shutdown.TextWrapped = true

unachor.Name = "unachor"
unachor.Parent = scriptz
unachor.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
unachor.BorderColor3 = Color3.fromRGB(0, 85, 0)
unachor.BorderSizePixel = 3
unachor.Position = UDim2.new(0.0663507283, 0, 0.253333271, 0)
unachor.Size = UDim2.new(0, 79, 0, 50)
unachor.Font = Enum.Font.SourceSans
unachor.Text = "Unachor All"
unachor.TextColor3 = Color3.fromRGB(255, 255, 255)
unachor.TextScaled = true
unachor.TextSize = 29.000
unachor.TextWrapped = true

fire.Name = "fire"
fire.Parent = scriptz
fire.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
fire.BorderColor3 = Color3.fromRGB(0, 85, 0)
fire.BorderSizePixel = 3
fire.Position = UDim2.new(0.0663507134, 0, 0.30249995, 0)
fire.Size = UDim2.new(0, 79, 0, 50)
fire.Font = Enum.Font.SourceSans
fire.Text = "Fire"
fire.TextColor3 = Color3.fromRGB(255, 255, 255)
fire.TextScaled = true
fire.TextSize = 29.000
fire.TextWrapped = true

textspam.Name = "textspam"
textspam.Parent = scriptz
textspam.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
textspam.BorderColor3 = Color3.fromRGB(0, 85, 0)
textspam.BorderSizePixel = 3
textspam.Position = UDim2.new(0.0663507208, 0, 0.415626138, 0)
textspam.Size = UDim2.new(0, 79, 0, 61)
textspam.Font = Enum.Font.SourceSans
textspam.Text = "TextLabel Spam"
textspam.TextColor3 = Color3.fromRGB(255, 255, 255)
textspam.TextScaled = true
textspam.TextSize = 29.000
textspam.TextWrapped = true

hint.Name = "hint"
hint.Parent = scriptz
hint.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
hint.BorderColor3 = Color3.fromRGB(0, 85, 0)
hint.BorderSizePixel = 3
hint.Position = UDim2.new(0.492891014, 0, 0.415626138, 0)
hint.Size = UDim2.new(0, 79, 0, 61)
hint.Font = Enum.Font.SourceSans
hint.Text = "Hint"
hint.TextColor3 = Color3.fromRGB(255, 255, 255)
hint.TextScaled = true
hint.TextSize = 29.000
hint.TextWrapped = true

chat.Name = "chat"
chat.Parent = scriptz
chat.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
chat.BorderColor3 = Color3.fromRGB(0, 85, 0)
chat.BorderSizePixel = 3
chat.Position = UDim2.new(0.0663507283, 0, 0.480626136, 0)
chat.Size = UDim2.new(0, 79, 0, 61)
chat.Font = Enum.Font.SourceSans
chat.Text = "Chat All"
chat.TextColor3 = Color3.fromRGB(255, 255, 255)
chat.TextScaled = true
chat.TextSize = 29.000
chat.TextWrapped = true

parts.Name = "parts"
parts.Parent = scriptz
parts.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
parts.BorderColor3 = Color3.fromRGB(0, 85, 0)
parts.BorderSizePixel = 3
parts.Position = UDim2.new(0.492891014, 0, 0.480626136, 0)
parts.Size = UDim2.new(0, 79, 0, 61)
parts.Font = Enum.Font.SourceSans
parts.Text = "Raining Parts"
parts.TextColor3 = Color3.fromRGB(255, 255, 255)
parts.TextScaled = true
parts.TextSize = 29.000
parts.TextWrapped = true

nuke.Name = "nuke"
nuke.Parent = scriptz
nuke.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
nuke.BorderColor3 = Color3.fromRGB(0, 85, 0)
nuke.BorderSizePixel = 3
nuke.Position = UDim2.new(0.492891014, 0, 0.30249995, 0)
nuke.Size = UDim2.new(0, 79, 0, 50)
nuke.Font = Enum.Font.SourceSans
nuke.Text = "Nuke"
nuke.TextColor3 = Color3.fromRGB(255, 255, 255)
nuke.TextScaled = true
nuke.TextSize = 29.000
nuke.TextWrapped = true

settings.Name = "settings"
settings.Parent = Frame
settings.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
settings.BorderColor3 = Color3.fromRGB(0, 85, 0)
settings.BorderSizePixel = 3
settings.Position = UDim2.new(1, 3, 0, 0)
settings.Size = UDim2.new(0, 228, 0, 240)
settings.ZIndex = 0

hintM.Name = "hintM"
hintM.Parent = settings
hintM.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
hintM.BorderColor3 = Color3.fromRGB(0, 85, 0)
hintM.BorderSizePixel = 3
hintM.Position = UDim2.new(0, 0, 0.712499976, 0)
hintM.Size = UDim2.new(0, 228, 0, 37)
hintM.ZIndex = 0
hintM.Font = Enum.Font.SourceSans
hintM.Text = "Hint/Chat All Text"
hintM.TextColor3 = Color3.fromRGB(255, 255, 255)
hintM.TextScaled = true
hintM.TextSize = 43.000
hintM.TextWrapped = true

TextBox.Parent = hintM
TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderColor3 = Color3.fromRGB(0, 85, 0)
TextBox.BorderSizePixel = 3
TextBox.Position = UDim2.new(0, 0, 1, 0)
TextBox.Size = UDim2.new(0, 228, 0, 32)
TextBox.ZIndex = 0
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = "GET BEAMED BY TEAM ITSNOTSKELETON"
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 19.000
TextBox.TextWrapped = true

text.Name = "text"
text.Parent = settings
text.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
text.BorderColor3 = Color3.fromRGB(0, 85, 0)
text.BorderSizePixel = 3
text.Position = UDim2.new(0, 0, 0.420833319, 0)
text.Size = UDim2.new(0, 228, 0, 37)
text.ZIndex = 0
text.Font = Enum.Font.SourceSans
text.Text = "TextLabel Spam Text"
text.TextColor3 = Color3.fromRGB(255, 255, 255)
text.TextScaled = true
text.TextSize = 43.000
text.TextWrapped = true

TextBox_2.Parent = text
TextBox_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextBox_2.BorderColor3 = Color3.fromRGB(0, 85, 0)
TextBox_2.BorderSizePixel = 3
TextBox_2.Position = UDim2.new(0, 0, 1, 0)
TextBox_2.Size = UDim2.new(0, 228, 0, 32)
TextBox_2.ZIndex = 0
TextBox_2.Font = Enum.Font.SourceSans
TextBox_2.Text = "TEAM ITSNOTSKELETON JOIN TODAY!"
TextBox_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox_2.TextScaled = true
TextBox_2.TextSize = 19.000
TextBox_2.TextWrapped = true

SettingsButton.Name = "SettingsButton"
SettingsButton.Parent = settings
SettingsButton.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
SettingsButton.BorderColor3 = Color3.fromRGB(0, 85, 0)
SettingsButton.BorderSizePixel = 3
SettingsButton.Position = UDim2.new(1, 0, 0, 0)
SettingsButton.Size = UDim2.new(0, 40, 0, 240)
SettingsButton.Font = Enum.Font.SourceSans
SettingsButton.Text = "<"
SettingsButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SettingsButton.TextSize = 55.000

-- Scripts:

local function VQRFFXE_script() -- decalspam.Script 
	local script = Instance.new('Script', decalspam)

	function click()
		function exPro(root)
			for _, v in pairs(root:GetChildren()) do
				if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset/?id=17876338356" then
					v.Parent = nil
				elseif v:IsA("BasePart") then
					local One = Instance.new("Decal", v)
					local Two = Instance.new("Decal", v)
					local Three = Instance.new("Decal", v)
					local Four = Instance.new("Decal", v)
					local Five = Instance.new("Decal", v)
					local Six = Instance.new("Decal", v)
					One.Texture = "http://www.roblox.com/asset/?id=17876338356"
					Two.Texture = "http://www.roblox.com/asset/?id=17876338356"
					Three.Texture = "http://www.roblox.com/asset/?id=17876338356"
					Four.Texture = "http://www.roblox.com/asset/?id=17876338356"
					Five.Texture = "http://www.roblox.com/asset/?id=17876338356"
					Six.Texture = "http://www.roblox.com/asset/?id=17876338356"
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
coroutine.wrap(VQRFFXE_script)()
local function MIAJ_script() -- skybox.Script 
	local script = Instance.new('Script', skybox)

	function click()
		s = Instance.new("Sky")
		s.Name = "Sky"
		s.Parent = game.Lighting
		s.SkyboxBk = "http://www.roblox.com/asset/?id=17876338356"
		s.SkyboxDn = "http://www.roblox.com/asset/?id=17876338356"
		s.SkyboxFt = "http://www.roblox.com/asset/?id=17876338356"
		s.SkyboxLf = "http://www.roblox.com/asset/?id=17876338356"
		s.SkyboxRt = "http://www.roblox.com/asset/?id=17876338356"
		s.SkyboxUp = "http://www.roblox.com/asset/?id=17876338356"
		game.Lighting.TimeOfDay = 12
	end
	
	script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(MIAJ_script)()
local function BRWPE_script() -- particles.Script 
	local script = Instance.new('Script', particles)

	script.Parent.MouseButton1Click:Connect(function()
		for i, v in pairs(game.Workspace:GetDescendants()) do
			emit = Instance.new("ParticleEmitter")
			emit.Parent = v
			emit.Texture = "http://www.roblox.com/asset/?id=17876338356"
			emit.VelocitySpread = 5
		end
		end)
end
coroutine.wrap(BRWPE_script)()
local function VGRN_script() -- jumpscare.Script 
	local script = Instance.new('Script', jumpscare)

	script.Parent.MouseButton1Click:Connect(function()
		for i,v in pairs(game.Players:GetPlayers()) do
			if v.Name ~= me and not v.PlayerGui:FindFirstChild("Screamer") and v:FindFirstChild("PlayerGui") then
				spawn(function()
					local newgui = Instance.new("ScreenGui",v.PlayerGui)
					newgui.Name = "Screamer"
					local newimage = Instance.new("ImageLabel",newgui)
					newimage.Image = "http://www.roblox.com/asset/?id=17876956934"
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
coroutine.wrap(VGRN_script)()
local function MLKICL_script() -- crazydisco.Script 
	local script = Instance.new('Script', crazydisco)

	script.Parent.MouseButton1Click:Connect(function()
		l = game.Lighting
		while wait() do
			l.FogColor = Color3.new(255, 0, 0)
			l.FogEnd = math.random(50, 100)
			l.FogStart = l.FogEnd
			l.TimeOfDay = "0:00:00"
			l.Brightness = -1000000000000
			l.Ambient = Color3.new(255, 0, 0)
			l.OutdoorAmbient = Color3.new(math.random(), math.random(), math.random())
		end
	end)
end
coroutine.wrap(MLKICL_script)()
local function PRIX_script() -- shedletskyheads.Script 
	local script = Instance.new('Script', shedletskyheads)

	script.Parent.MouseButton1Click:Connect(function()
		_G.lol=true while _G.lol and wait(2.5)do for i,v in pairs(game:GetService'Players':GetPlayers())do pcall(function()local part=Instance.new("Part")part.Color=Color3.new(math.random(1,255),math.random(1,255),math.random(1,255))part.CanCollide=true part.Size=Vector3.new(2,1,1)local m=Instance.new("SpecialMesh",part)m.MeshType=Enum.MeshType.Head local j=Instance.new('Decal',part)j.Texture='rbxasset://textures/face.png'local s=Instance.new('Sound',part)s.SoundId='rbxassetid://130759239'local aj=math.random(0,9)*0.1 s.Pitch=math.random(0,2)+aj s.Volume=2.5 part.Parent=workspace part.CFrame=v.Character.HumanoidRootPart.CFrame*CFrame.Angles(math.random(0,360),math.random(0,360),math.random(0,360))+Vector3.new(math.random(-100,100),200,math.random(-100,100))s:Play()end)end end
	end)
end
coroutine.wrap(PRIX_script)()
local function WUYN_script() -- clearworkspace.Script 
	local script = Instance.new('Script', clearworkspace)

	script.Parent.MouseButton1Click:Connect(function()
		game.Workspace:ClearAllChildren()
		game.ReplicatedStorage:ClearAllChildren()
		game.ReplicatedFirst:ClearAllChildren()
	end)
end
coroutine.wrap(WUYN_script)()
local function ZWVHBP_script() -- regulardisco.Script 
	local script = Instance.new('Script', regulardisco)

	script.Parent.MouseButton1Click:Connect(function()
		local Lighting = game:GetService("Lighting")
		local ColorCorrection = Instance.new("ColorCorrectionEffect", Lighting)
	
		function zigzag(X) 
			return math.acos(math.cos(X*math.pi))/math.pi
		end
	
		Counter = 0
	
		Lighting.TimeOfDay = "12:00"
		Lighting.FogEnd = "70"
	
		while wait() do 
			ColorCorrection.TintColor = Color3.fromHSV(zigzag(Counter),1,1)
			Lighting.Ambient = Color3.fromHSV(zigzag(Counter),1,1)
			Counter += 0.01
		end
	end)
end
coroutine.wrap(ZWVHBP_script)()
local function DGPWXGD_script() -- music.Script 
	local script = Instance.new('Script', music)

	script.Parent.MouseButton1Click:Connect(function()
		Instance.new("Sound").Parent = game.Workspace  game.Workspace.Sound.SoundId ="rbxassetid://6070263388" game.Workspace.Sound.Looped=true  game.Workspace.Sound:Play()
	end)
end
coroutine.wrap(DGPWXGD_script)()
local function KQMJQ_script() -- skele.Script 
	local script = Instance.new('Script', skele)

	script.Parent.MouseButton1Click:Connect(function()
		imageOne="http://www.roblox.com/asset/?id=169585459"imageTwo="http://www.roblox.com/asset/?id=169585475"imageThree="http://www.roblox.com/asset/?id=169585485"imageFour="http://www.roblox.com/asset/?id=169585502"imageFive="http://www.roblox.com/asset/?id=169585515"imageSix="http://www.roblox.com/asset/?id=169585502"imageSeven="http://www.roblox.com/asset/?id=169585485"imageEight="http://www.roblox.com/asset/?id=169585475"Spooky=Instance.new("Sound",workspace)Spooky.Name="Spooky"Spooky.SoundId="rbxassetid://174270407"Spooky.Volume=15 Spooky.Looped=true Spooky:Play()Sky=Instance.new("Sky",game.Lighting)Sky.SkyboxBk=imageOne Sky.SkyboxDn=imageOne Sky.SkyboxFt=imageOne Sky.SkyboxLf=imageOne Sky.SkyboxRt=imageOne Sky.SkyboxUp=imageOne while true do Sky.SkyboxBk=imageOne Sky.SkyboxDn=imageOne Sky.SkyboxFt=imageOne Sky.SkyboxLf=imageOne Sky.SkyboxRt=imageOne Sky.SkyboxUp=imageOne wait(0.15)Sky.SkyboxBk=imageTwo Sky.SkyboxDn=imageTwo Sky.SkyboxFt=imageTwo Sky.SkyboxLf=imageTwo Sky.SkyboxRt=imageTwo Sky.SkyboxUp=imageTwo wait(0.15)Sky.SkyboxBk=imageThree Sky.SkyboxDn=imageThree Sky.SkyboxFt=imageThree Sky.SkyboxLf=imageThree Sky.SkyboxRt=imageThree Sky.SkyboxUp=imageThree wait(0.15)Sky.SkyboxBk=imageFour Sky.SkyboxDn=imageFour Sky.SkyboxFt=imageFour Sky.SkyboxLf=imageFour Sky.SkyboxRt=imageFour Sky.SkyboxUp=imageFour wait(0.15)Sky.SkyboxBk=imageFive Sky.SkyboxDn=imageFive Sky.SkyboxFt=imageFive Sky.SkyboxLf=imageFive Sky.SkyboxRt=imageFive Sky.SkyboxUp=imageFive wait(0.15)Sky.SkyboxBk=imageSix Sky.SkyboxDn=imageSix Sky.SkyboxFt=imageSix Sky.SkyboxLf=imageSix Sky.SkyboxRt=imageSix Sky.SkyboxUp=imageSix wait(0.15)Sky.SkyboxBk=imageSeven Sky.SkyboxDn=imageSeven Sky.SkyboxFt=imageSeven Sky.SkyboxLf=imageSeven Sky.SkyboxRt=imageSeven Sky.SkyboxUp=imageSeven wait(0.15)Sky.SkyboxBk=imageEight Sky.SkyboxDn=imageEight Sky.SkyboxFt=imageEight Sky.SkyboxLf=imageEight Sky.SkyboxRt=imageEight Sky.SkyboxUp=imageEight wait(0.15)end
	end)
end
coroutine.wrap(KQMJQ_script)()
local function MWJWUX_script() -- shutdown.Script 
	local script = Instance.new('Script', shutdown)

	script.Parent.MouseButton1Down:connect(function()
		for i, players in pairs(game.Players:GetChildren()) do
			players:Kick("TEAM K00PKIDD IS BACKDOORED THIS GAME LMFAOOOO")
		end
	end)
	
end
coroutine.wrap(MWJWUX_script)()
local function CFAA_script() -- unachor.Script 
	local script = Instance.new('Script', unachor)

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
coroutine.wrap(CFAA_script)()
local function PGPCM_script() -- fire.Script 
	local script = Instance.new('Script', fire)

	script.Parent.MouseButton1Down:Connect(function()
		local w = workspace:GetDescendants()
	
		for i= 1,#w do
			if w[i]:isA("BasePart") then
				local fire = Instance.new("Fire", w[i])
			end
		end
	end)
end
coroutine.wrap(PGPCM_script)()
local function NYIH_script() -- textspam.Script 
	local script = Instance.new('Script', textspam)

	script.Parent.MouseButton1Click:Connect(function()
		for i,v in next,workspace:GetDescendants''do
			if(v:IsA'BasePart')then
				me=v;
				bbg=Instance.new('BillboardGui',me);
				bbg.Name='stuf';
				bbg.Adornee=me;
				bbg.Size=UDim2.new(2.5,0,2.5,0)
				--bbg.StudsOffset=Vector3.new(0,2,0)
				tlb=Instance.new'TextLabel';
				tlb.Text=(script.Parent.Parent.Parent.settings.text.TextBox.Text);
				tlb.Font='SourceSansBold';
				tlb.FontSize='Size48';
				tlb.TextColor3=Color3.new(0, 0.333333, 0);
				tlb.Size=UDim2.new(1.25,0,1.25,0);
				tlb.Position=UDim2.new(-0.125,-22,-1.1,0);
				tlb.BackgroundTransparency=1;
				tlb.Parent=bbg;
			end;end;
	end)
end
coroutine.wrap(NYIH_script)()
local function DMWOYJX_script() -- hint.Script 
	local script = Instance.new('Script', hint)

	script.Parent.MouseButton1Click:Connect(function()
				local m = Instance.new("Hint", game.workspace)
		        m.Text = (script.Parent.Parent.Parent.settings.hintM.TextBox.Text)
	end)
end
coroutine.wrap(DMWOYJX_script)()
local function YVXRL_script() -- chat.Script 
	local script = Instance.new('Script', chat)

	script.Parent.MouseButton1Click:Connect(function()
		for i,v in pairs(game.Players:GetChildren()) do game:GetService("Chat"):Chat(v.Character.Head, script.Parent.Parent.Parent.settings.hintM.TextBox.Text) end
	end)
end
coroutine.wrap(YVXRL_script)()
local function YGDI_script() -- parts.Script 
	local script = Instance.new('Script', parts)

	script.Parent.MouseButton1Click:Connect(function()
		while true do
			communism=math.random(0,3)
			crex=math.random(3,100)
			obesity=math.random(-500, 500)
			positivity=math.random(100, 600)
			IEndorseThese=math.random(-500, 500)
			wait()
			doom=Instance.new("Part")
			local imnotfat = math.random(1, 3)
			if imnotfat == 1 then
				doom.Shape = "Ball"
			else if imnotfat == 2 then
					doom.Shape = "Cylinder"
				else 
				end end
			doom.Material = "Neon"
			doom.Size = Vector3.new(crex, crex, crex)
			doom.Position = Vector3.new(obesity, positivity, IEndorseThese)
			doom.Color = Color3.new(math.random(), math.random(), math.random())
			doom.Velocity=Vector3.new(communism, communism, communism)
			doom.Parent = game.Workspace
			yooka=math.random(-200, -50)
			doom=Instance.new("Part")
			doom.Shape = "Ball"
			doom.Size = Vector3.new(crex, crex, crex)
			doom.Position = Vector3.new(obesity, yooka, IEndorseThese)
			doom.Color = Color3.new(math.random(), math.random(), math.random())
			doom.Velocity=Vector3.new(communism, 800, communism)
			doom.Parent = game.Workspace
			communism=math.random(0,3)
			crex=math.random(3,100)
			obesity=math.random(-500, 500)
			positivity=math.random(100, 600)
			IEndorseThese=math.random(-500, 500)
			doom=Instance.new("Part")
			doom.Shape = "Ball"
			doom.Size = Vector3.new(crex, crex, crex)
			doom.Position = Vector3.new(obesity, positivity, IEndorseThese)
			doom.Color = Color3.new(math.random(), math.random(), math.random())
			doom.Velocity=Vector3.new(communism, communism, communism)
			doom.Parent = game.Workspace
			communism=math.random(0,3)
			crex=math.random(3,100)
			obesity=math.random(-500, 500)
			positivity=math.random(100, 600)
			IEndorseThese=math.random(-500, 500)
			doom=Instance.new("Part")
			doom.Shape = "Ball"
			doom.Size = Vector3.new(crex, crex, crex)
			doom.Position = Vector3.new(obesity, positivity, IEndorseThese)
			doom.Color = Color3.new(math.random(), math.random(), math.random())
			doom.Velocity=Vector3.new(communism, communism, communism)
			doom.Parent = game.Workspace
			communism=math.random(0,3)
			crex=math.random(3,100)
			obesity=math.random(-500, 500)
			positivity=math.random(100, 600)
			IEndorseThese=math.random(-500, 500)
			doom=Instance.new("Part")
			doom.Shape = "Ball"
			doom.Size = Vector3.new(crex, crex, crex)
			doom.Position = Vector3.new(obesity, positivity, IEndorseThese)
			doom.Color = Color3.new(math.random(), math.random(), math.random())
			doom.Velocity=Vector3.new(communism, communism, communism)
			doom.Parent = game.Workspace
		end
	end)
end
coroutine.wrap(YGDI_script)()
local function GBZF_script() -- nuke.Script 
	local script = Instance.new('Script', nuke)

	script.Parent.MouseButton1Down:Connect(function()
		local part = Instance.new("Part", game.Workspace)
		part.Transparency = 1
		local explode = Instance.new("Explosion", part)
		explode.BlastRadius = 999
		explode.BlastPressure = 999
		wait(1)
		part.Parent = nil
	end)
end
coroutine.wrap(GBZF_script)()
local function RUPNC_script() -- SettingsButton.LocalScript 
	local script = Instance.new('LocalScript', SettingsButton)

	cango = true
	function click()
		if cango == true then
			if script.Parent.Text == "<" then
				script.Parent.Text = ">"
				cango = false
				repeat
					wait()
					script.Parent.Parent.Position = UDim2.new(1,script.Parent.Parent.Position.X.Offset-10,0,0)
				until script.Parent.Parent.Position.X.Offset <= -250
				wait()
				script.Parent.Parent.Position = UDim2.new(1,-250,0,0)
				cango = true
			else
				script.Parent.Text = "<"
				cango = false
				repeat
					wait()
					script.Parent.Parent.Position = UDim2.new(1,script.Parent.Parent.Position.X.Offset+10,0,0)
				until script.Parent.Parent.Position.X.Offset >= -10
				wait()
				script.Parent.Parent.Position = UDim2.new(1,3,0,0)
				cango = true
			end	
		end
	end
	
	script.Parent.MouseButton1Down:connect(click)
	
end
coroutine.wrap(RUPNC_script)()
local function RQRG_script() -- Frame.Drag Gui Script 
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
coroutine.wrap(RQRG_script)()
