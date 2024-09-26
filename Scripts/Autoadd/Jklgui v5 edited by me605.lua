-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local IMAGE = Instance.new("ImageLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel2 = Instance.new("TextLabel")
local CLOSE = Instance.new("TextButton")
local OPENGUI = Instance.new("TextButton")
local RESETAVATAR = Instance.new("TextButton")
local K00PGUI = Instance.new("TextButton")
local AVATAR = Instance.new("TextButton")
local NOGRAVITY = Instance.new("TextButton")
local UNANCHORED = Instance.new("TextButton")
local CONSOLEDES = Instance.new("TextButton")
local FIREOUTSIDE = Instance.new("TextButton")
local JUMPSTLYE = Instance.new("TextButton")
local CREDIT = Instance.new("TextLabel")
local DISCO = Instance.new("TextButton")
local HINTGAME = Instance.new("TextButton")
local BALLRAINING = Instance.new("TextButton")
local PARTICLES = Instance.new("TextButton")
local NOOTNOOT = Instance.new("TextButton")
local SKYBOX = Instance.new("TextButton")
local JUMPSCARE = Instance.new("TextButton")
local C00ZBDDKIDDGUI = Instance.new("TextButton")
local BYPASS1 = Instance.new("TextButton")
local DAY = Instance.new("TextButton")
local NIGHT = Instance.new("TextButton")
local STOPMUSIC = Instance.new("TextButton")
local SKYBOX2 = Instance.new("TextButton")
local DREAMYBULLXXX = Instance.new("TextButton")
local DECALSPAM1 = Instance.new("TextButton")
local JO1TAR0GUI = Instance.new("TextButton")
local ARABGUI = Instance.new("TextButton")
local TOADKAAX = Instance.new("TextButton")
local FASTHINT = Instance.new("TextButton")
local MESSAGESPAM = Instance.new("TextButton")
local KAAXPARTICLES = Instance.new("TextButton")
local DECALSPAM2 = Instance.new("TextButton")
local B0SSJKIDDCK = Instance.new("TextButton")
local MESHDISCO = Instance.new("TextButton")
local CHICKENARMS = Instance.new("TextButton")
local DECALSPAM3 = Instance.new("TextButton")
local NEWFACE = Instance.new("TextButton")

--Properties :

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.Visible = false
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(196, 40, 28)
Frame.BorderSizePixel = 3
Frame.Position = UDim2.new(0.536656916, 0, 0.220883533, 0)
Frame.Size = UDim2.new(0, 356, 0, 356)

IMAGE.Parent = Frame
IMAGE.BackgroundColor3 = Color3.fromRGB(174, 167, 255)
IMAGE.BackgroundTransparency = 1
IMAGE.BorderColor3 = Color3.fromRGB(0, 0, 0)
IMAGE.BorderSizePixel = 3
IMAGE.Size = UDim2.new(0, 356, 0, 356)
IMAGE.Image = "rbxassetid://15866619293"

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
ScrollingFrame.Position = UDim2.new(0.02, 0, 0.08, 0)
ScrollingFrame.Size = UDim2.new(0, 343, 0, 341)

TextLabel_3.Parent = ScrollingFrame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0, 0, 0, 0)
TextLabel_3.Size = UDim2.new(0, 356, 0, 354)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = ""
TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.TextSize = 14.000

TextLabel2.Parent = Frame
TextLabel2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel2.BorderColor3 = Color3.fromRGB(255, 255, 0)
TextLabel2.BorderSizePixel = 3
TextLabel2.Position = UDim2.new(0.15, 0, 0, 0)
TextLabel2.Size = UDim2.new(0, 241, 0, 30)
TextLabel2.Font = Enum.Font.SourceSans
TextLabel2.Text = "JKLGUI V5 UPD"
TextLabel2.TextColor3 = Color3.fromRGB(242, 243, 243)
TextLabel2.TextScaled = true
TextLabel2.TextSize = 14.000
TextLabel2.TextWrapped = true

-- BUTTON UP :

CLOSE.Parent = Frame
CLOSE.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CLOSE.BorderColor3 = Color3.fromRGB(255, 255, 0)
CLOSE.BorderSizePixel = 3
CLOSE.Position = UDim2.new(0.82, 0, 0, 0)
CLOSE.Size = UDim2.new(0, 64, 0, 35)
CLOSE.Font = Enum.Font.SourceSans
CLOSE.Text = "X"
CLOSE.TextColor3 = Color3.fromRGB(242, 243, 243)
CLOSE.TextScaled = true
CLOSE.TextSize = 14.000
CLOSE.TextWrapped = true
CLOSE.MouseButton1Down:connect(function()
Frame.Visible = false
OPENGUI.Visible = true
end)
OPENGUI.Parent = ScreenGui
OPENGUI.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OPENGUI.BorderColor3 = Color3.fromRGB(255, 255, 0)
OPENGUI.BorderSizePixel = 3
OPENGUI.Position = UDim2.new(1,-150,0.5,-90)
OPENGUI.Size = UDim2.new(0,150,0,45)
OPENGUI.Font = Enum.Font.SourceSans
OPENGUI.Text = "OPEN JKLGUI"
OPENGUI.TextColor3 = Color3.fromRGB(242, 243, 243)
OPENGUI.TextScaled = true
OPENGUI.TextSize = 14.000
OPENGUI.TextWrapped = true
OPENGUI.MouseButton1Down:connect(function()
Frame.Visible = true
OPENGUI.Visible = false
end)
RESETAVATAR.Parent = Frame
RESETAVATAR.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
RESETAVATAR.BorderColor3 = Color3.fromRGB(255, 255, 0)
RESETAVATAR.BorderSizePixel = 3
RESETAVATAR.Position = UDim2.new(0, 0, 0, 0)
RESETAVATAR.Size = UDim2.new(0, 64, 0, 35)
RESETAVATAR.Font = Enum.Font.SourceSans
RESETAVATAR.Text = "RE"
RESETAVATAR.TextColor3 = Color3.fromRGB(242, 243, 243)
RESETAVATAR.TextScaled = true
RESETAVATAR.TextSize = 14.000
RESETAVATAR.TextWrapped = true
RESETAVATAR.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

-- OUTSIDEBUTTON :

K00PGUI.Parent = Frame
K00PGUI.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
K00PGUI.BorderColor3 = Color3.fromRGB(242, 243, 243)
K00PGUI.BorderSizePixel = 3
K00PGUI.Position = UDim2.new(1, 0, 0.15, 0)
K00PGUI.Rotation = 25
K00PGUI.Size = UDim2.new(0, 92, 0, 30)
K00PGUI.Font = Enum.Font.SourceSans
K00PGUI.Text = "SCRIPT HUB"
K00PGUI.TextColor3 = Color3.fromRGB(242, 243, 243)
K00PGUI.TextScaled = true
K00PGUI.TextSize = 14.000
K00PGUI.TextWrapped = true
K00PGUI.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Script-hub-simple-gui-10381"))()
end)
AVATAR.Parent = Frame
AVATAR.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AVATAR.BorderColor3 = Color3.fromRGB(242, 243, 243)
AVATAR.BorderSizePixel = 3
AVATAR.Position = UDim2.new(-0.25, 0, 0.15, 0)
AVATAR.Rotation = -25
AVATAR.Size = UDim2.new(0, 92, 0, 30)
AVATAR.Font = Enum.Font.SourceSans
AVATAR.Text = "RANDOM COLOUR"
AVATAR.TextColor3 = Color3.fromRGB(242, 243, 243)
AVATAR.TextScaled = true
AVATAR.TextSize = 14.000
AVATAR.TextWrapped = true
AVATAR.MouseButton1Down:connect(function()
while true do
wait(0.5)
ye = game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()
for i,v in pairs(ye) do
if v.className == "Part" then
v.BrickColor = BrickColor.Random()
end
end
end
end)
NOGRAVITY.Parent = Frame
NOGRAVITY.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NOGRAVITY.BorderColor3 = Color3.fromRGB(242, 243, 243)
NOGRAVITY.BorderSizePixel = 3
NOGRAVITY.Position = UDim2.new(-0.25, 0, 0.75, 0)
NOGRAVITY.Rotation = -50
NOGRAVITY.Size = UDim2.new(0, 92, 0, 30)
NOGRAVITY.Font = Enum.Font.SourceSans
NOGRAVITY.Text = "Y00NKIDD V2"
NOGRAVITY.TextColor3 = Color3.fromRGB(242, 243, 243)
NOGRAVITY.TextScaled = true
NOGRAVITY.TextSize = 14.000
NOGRAVITY.TextWrapped = true
NOGRAVITY.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/PIKACHU4833/JKLALT-GUI/main/V2"))()
end)
UNANCHORED.Parent = Frame
UNANCHORED.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
UNANCHORED.BorderColor3 = Color3.fromRGB(242, 243, 243)
UNANCHORED.BorderSizePixel = 3
UNANCHORED.Position = UDim2.new(1, 0, 0.75, 0)
UNANCHORED.Rotation = 50
UNANCHORED.Size = UDim2.new(0, 92, 0, 30)
UNANCHORED.Font = Enum.Font.SourceSans
UNANCHORED.Text = "UNANCHORED"
UNANCHORED.TextColor3 = Color3.fromRGB(242, 243, 243)
UNANCHORED.TextScaled = true
UNANCHORED.TextSize = 14.000
UNANCHORED.TextWrapped = true
UNANCHORED.MouseButton1Down:connect(function()
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
CONSOLEDES.Parent = Frame
CONSOLEDES.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CONSOLEDES.BorderColor3 = Color3.fromRGB(242, 243, 243)
CONSOLEDES.BorderSizePixel = 3
CONSOLEDES.Position = UDim2.new(1, 0, 0.35, 0)
CONSOLEDES.Rotation = 10
CONSOLEDES.Size = UDim2.new(0, 92, 0, 30)
CONSOLEDES.Font = Enum.Font.SourceSans
CONSOLEDES.Text = "CONSOLE DESTROYED"
CONSOLEDES.TextColor3 = Color3.fromRGB(242, 243, 243)
CONSOLEDES.TextScaled = true
CONSOLEDES.TextSize = 14.000
CONSOLEDES.TextWrapped = true
CONSOLEDES.MouseButton1Down:connect(function()
game.StarterGui:SetCore("DevConsoleVisible", true)
wait(0)
while wait(0) do
warn("BossJKLO HAS DESTROYED YOUR Account HAHAHAHA!$!$!$")
print("BossJKLO HAS DESTROYED YOUR Account HAHAHAHA!$!$!$")
end
end)
FIREOUTSIDE.Parent = Frame
FIREOUTSIDE.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FIREOUTSIDE.BorderColor3 = Color3.fromRGB(242, 243, 243)
FIREOUTSIDE.BorderSizePixel = 3
FIREOUTSIDE.Position = UDim2.new(-0.25, 0, 0.35, 0)
FIREOUTSIDE.Rotation = -10
FIREOUTSIDE.Size = UDim2.new(0, 92, 0, 30)
FIREOUTSIDE.Font = Enum.Font.SourceSans
FIREOUTSIDE.Text = "FIRE ALL"
FIREOUTSIDE.TextColor3 = Color3.fromRGB(242, 243, 243)
FIREOUTSIDE.TextScaled = true
FIREOUTSIDE.TextSize = 14.000
FIREOUTSIDE.TextWrapped = true
FIREOUTSIDE.MouseButton1Down:connect(function()
	function xds(dd)
		for i,v in next,dd:children''do
			if(v:IsA'BasePart')then
				f=Instance.new('Fire',v);
				f.Size=19;
				f.Heat=22;
			end;
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
JUMPSTLYE.Parent = Frame
JUMPSTLYE.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
JUMPSTLYE.BorderColor3 = Color3.fromRGB(242, 243, 243)
JUMPSTLYE.BorderSizePixel = 3
JUMPSTLYE.Position = UDim2.new(-0.25, 0, 0.45, 0)
JUMPSTLYE.Rotation = -10
JUMPSTLYE.Size = UDim2.new(0, 92, 0, 30)
JUMPSTLYE.Font = Enum.Font.SourceSans
JUMPSTLYE.Text = "JUMPSTLYE LOUD"
JUMPSTLYE.TextColor3 = Color3.fromRGB(242, 243, 243)
JUMPSTLYE.TextScaled = true
JUMPSTLYE.TextSize = 14.000
JUMPSTLYE.TextWrapped = true
JUMPSTLYE.MouseButton1Down:connect(function()
sound = Instance.new("Sound",workspace)
sound.Name = "Noooooooooooooooot noooooooooooooooooooooooot"
sound.SoundId = "rbxassetid://1839246711"
sound.Volume = 9e9
sound:Play()
sound.Looped = true
repeat
wait(0.01)
until sound.IsLoaded == true
wait(13)
de = Instance.new("DistortionSoundEffect",sound)
de.Level = 0.8
end)
CREDIT.Parent = Frame
CREDIT.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CREDIT.BorderColor3 = Color3.fromRGB(245, 205, 48)
CREDIT.BorderSizePixel = 3
CREDIT.Position = UDim2.new(1, 0, 0.45, 0)
CREDIT.Size = UDim2.new(0, 92, 0, 30)
CREDIT.Font = Enum.Font.SourceSans
CREDIT.Text = "EDITED BY VALYS3 BUT CREDITS TO BOSSJKLO"
CREDIT.TextColor3 = Color3.fromRGB(242, 243, 243)
CREDIT.TextScaled = true
CREDIT.TextSize = 14.000
CREDIT.TextWrapped = true

-- PAGE1 :

DISCO.Parent = TextLabel_3
DISCO.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DISCO.BorderColor3 = Color3.fromRGB(255, 255, 0)
DISCO.BorderSizePixel = 3
DISCO.Position = UDim2.new(0.08, 0, 0.15, 0)
DISCO.Size = UDim2.new(0, 92, 0, 30)
DISCO.Font = Enum.Font.SourceSans
DISCO.Text = "DISCO"
DISCO.TextColor3 = Color3.fromRGB(242, 243, 243)
DISCO.TextScaled = true
DISCO.TextSize = 14.000
DISCO.TextWrapped = true
DISCO.MouseButton1Down:connect(function()
local Lighting = game:GetService("Lighting")
		local ColorCorrection = Instance.new("ColorCorrectionEffect", Lighting)
	
		function zigzag(X) 
			return math.acos(math.cos(X*math.pi))/math.pi
		end
	
		Counter = 0
	
		while wait(0.1) do 
			ColorCorrection.TintColor = Color3.fromHSV(zigzag(Counter),1,1)
			Lighting.Ambient = Color3.fromHSV(zigzag(Counter),1,1)
			Counter += 0.01
		end
end)
HINTGAME.Parent = TextLabel_3
HINTGAME.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HINTGAME.BorderColor3 = Color3.fromRGB(255, 255, 0)
HINTGAME.BorderSizePixel = 3
HINTGAME.Position = UDim2.new(0.38, 0, 0.15, 0)
HINTGAME.Size = UDim2.new(0, 92, 0, 30)
HINTGAME.Font = Enum.Font.SourceSans
HINTGAME.Text = "HINT"
HINTGAME.TextColor3 = Color3.fromRGB(242, 243, 243)
HINTGAME.TextScaled = true
HINTGAME.TextSize = 14.000
HINTGAME.TextWrapped = true
HINTGAME.MouseButton1Down:connect(function()
local m = Instance.new("Hint", game.workspace)
m.Text = "TEAM JKLO JOINED TO DAY!11!2!â£ï¸ð¥"
end)
BALLRAINING.Parent = TextLabel_3
BALLRAINING.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BALLRAINING.BorderColor3 = Color3.fromRGB(255, 255, 0)
BALLRAINING.BorderSizePixel = 3
BALLRAINING.Position = UDim2.new(0.68, 0, 0.15, 0)
BALLRAINING.Size = UDim2.new(0, 92, 0, 30)
BALLRAINING.Font = Enum.Font.SourceSans
BALLRAINING.Text = "BALL RAIN"
BALLRAINING.TextColor3 = Color3.fromRGB(242, 243, 243)
BALLRAINING.TextScaled = true
BALLRAINING.TextSize = 14.000
BALLRAINING.TextWrapped = true
BALLRAINING.MouseButton1Down:connect(function()
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
PARTICLES.Parent = TextLabel_3
PARTICLES.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PARTICLES.BorderColor3 = Color3.fromRGB(196, 40, 28)
PARTICLES.BorderSizePixel = 3
PARTICLES.Position = UDim2.new(0.08, 0, 0.25, 0)
PARTICLES.Size = UDim2.new(0, 92, 0, 30)
PARTICLES.Font = Enum.Font.SourceSans
PARTICLES.Text = "DREAMYBULLXXX PARTICLES"
PARTICLES.TextColor3 = Color3.fromRGB(242, 243, 243)
PARTICLES.TextScaled = true
PARTICLES.TextSize = 14.000
PARTICLES.TextWrapped = true
PARTICLES.MouseButton1Down:connect(function()
local ID = 15681662754 -- Change your ID here fellas cXz (Image ID)
 local particle = true

-- Donât change anything down below if you donât know what are you doing [This script made by cXyzkidd]

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
end)
NOOTNOOT.Parent = TextLabel_3
NOOTNOOT.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NOOTNOOT.BorderColor3 = Color3.fromRGB(203, 132, 66)
NOOTNOOT.BorderSizePixel = 3
NOOTNOOT.Position = UDim2.new(0.38, 0, 0.25, 0)
NOOTNOOT.Size = UDim2.new(0, 92, 0, 30)
NOOTNOOT.Font = Enum.Font.SourceSans
NOOTNOOT.Text = "NOOTNOOT!"
NOOTNOOT.TextColor3 = Color3.fromRGB(242, 243, 243)
NOOTNOOT.TextScaled = true
NOOTNOOT.TextSize = 14.000
NOOTNOOT.TextWrapped = true
NOOTNOOT.MouseButton1Down:connect(function()
local ID = 15801595664
local particle = true

-- Donât change anything down below if you donât know what are you doing [This script made by cXyzkidd]

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
wait()
sky = Instance.new("Sky",game:GetService("Lighting"))
sky.SkyboxBk = "http://www.roblox.com/asset/?id="..ID
sky.SkyboxFt = "http://www.roblox.com/asset/?id="..ID
sky.SkyboxLf = "http://www.roblox.com/asset/?id="..ID
sky.SkyboxRt = "http://www.roblox.com/asset/?id="..ID
sky.SkyboxUp = "http://www.roblox.com/asset/?id="..ID
wait()
local ID = 11379488396 --id here
function spamDecal(v)
	if v:IsA("Part") then
		for i = 0, 5 do
			D = Instance.new("Decal")
			D.Name = "k00pz_decal_1"
			D.Face = i
			D.Parent = v
			D.Texture = ("http://www.roblox.com/asset/?id="..Id)
		end
	else
		if v:IsA("Model") then
			for a,b in pairs(v:GetChildren()) do
				spamDecal(b)
			end
		end
	end
end
function decalspam(id) --use this function, not the one on top
	Id = id
	for i,v in pairs(game.Workspace:GetChildren()) do
		if v:IsA("Part") then
			for i= 0, 5 do
				D = Instance.new("Decal")
				D.Name = "k00pz_decal_2"
				D.Face = i
				D.Parent = v
				D.Texture = ("http://www.roblox.com/asset/?id="..id)
			end
		else
			if v:IsA("Model") then
				for a,b in pairs(v:GetChildren()) do
					spamDecal(b)
				end
			end
		end
	end
end
end)
SKYBOX.Parent = TextLabel_3
SKYBOX.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SKYBOX.BorderColor3 = Color3.fromRGB(196, 40, 28)
SKYBOX.BorderSizePixel = 3
SKYBOX.Position = UDim2.new(0.68, 0, 0.25, 0)
SKYBOX.Size = UDim2.new(0, 92, 0, 30)
SKYBOX.Font = Enum.Font.SourceSans
SKYBOX.Text = "SKYBOX1"
SKYBOX.TextColor3 = Color3.fromRGB(242, 243, 243)
SKYBOX.TextScaled = true
SKYBOX.TextSize = 14.000
SKYBOX.TextWrapped = true
SKYBOX.MouseButton1Down:connect(function()
s = Instance.new("Sky")
		s.Name = "SKY"
		s.SkyboxBk = "http://www.roblox.com/Asset/?id=15767625666"
		s.SkyboxDn = "http://www.roblox.com/Asset/?id=15767625666"
		s.SkyboxFt = "http://www.roblox.com/Asset/?id=15767625666"
		s.SkyboxLf = "http://www.roblox.com/Asset/?id=15767625666"
		s.SkyboxRt = "http://www.roblox.com/Asset/?id=15767625666"
                s.SkyboxUp = "http://www.roblox.com/Asset/?id=15767625666"
                s.Parent = game.Lighting
wait()
end)
JUMPSCARE.Parent = TextLabel_3
JUMPSCARE.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
JUMPSCARE.BorderColor3 = Color3.fromRGB(196, 40, 28)
JUMPSCARE.BorderSizePixel = 3
JUMPSCARE.Position = UDim2.new(0.68, 0, 0.35, 0)
JUMPSCARE.Size = UDim2.new(0, 92, 0, 30)
JUMPSCARE.Font = Enum.Font.SourceSans
JUMPSCARE.Text = "JUMPSCARE"
JUMPSCARE.TextColor3 = Color3.fromRGB(242, 243, 243)
JUMPSCARE.TextScaled = true
JUMPSCARE.TextSize = 14.000
JUMPSCARE.TextWrapped = true
JUMPSCARE.MouseButton1Down:connect(function()
for i,v in pairs(game.Players:GetPlayers()) do
		if v.Name ~= me and not v.PlayerGui:FindFirstChild("k00pkidd's Jumpscare") and v:FindFirstChild("PlayerGui") then
			spawn(function()
				local newgui = Instance.new("ScreenGui",v.PlayerGui)
				newgui.Name = "k00p's Jumpscare"
				local newimage = Instance.new("ImageLabel",newgui)
				newimage.Image = "rbxassetid://15767625666"
				newimage.Size = UDim2.new(0,900,0,400)
                                newimage.Position = UDim2.new(0, 0, -0.1, 0)
                                
                                newimage.BackgroundTransparency = 1
                                
       s = Instance.new("Sound",newgui)
				s.SoundId = "rbxassetid://8683380188"
				s.Volume = 9e9
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
C00ZBDDKIDDGUI.Parent = TextLabel_3
C00ZBDDKIDDGUI.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
C00ZBDDKIDDGUI.BorderColor3 = Color3.fromRGB(196, 40, 28)
C00ZBDDKIDDGUI.BorderSizePixel = 3
C00ZBDDKIDDGUI.Position = UDim2.new(0.38, 0, 0.35, 0)
C00ZBDDKIDDGUI.Size = UDim2.new(0, 92, 0, 30)
C00ZBDDKIDDGUI.Font = Enum.Font.SourceSans
C00ZBDDKIDDGUI.Text = "C00ZBDDKIDD GUI"
C00ZBDDKIDDGUI.TextColor3 = Color3.fromRGB(242, 243, 243)
C00ZBDDKIDDGUI.TextScaled = true
C00ZBDDKIDDGUI.TextSize = 14.000
C00ZBDDKIDDGUI.TextWrapped = true
C00ZBDDKIDDGUI.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/tZDLSLra"))()
wait()
setclipboard("You ain't getting it")
end)
BYPASS1.Parent = TextLabel_3
BYPASS1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BYPASS1.BorderColor3 = Color3.fromRGB(196, 40, 28)
BYPASS1.BorderSizePixel = 3
BYPASS1.Position = UDim2.new(0.08, 0, 0.35, 0)
BYPASS1.Size = UDim2.new(0, 92, 0, 30)
BYPASS1.Font = Enum.Font.SourceSans
BYPASS1.Text = "gangsta's paradise remix funny"
BYPASS1.TextColor3 = Color3.fromRGB(242, 243, 243)
BYPASS1.TextScaled = true
BYPASS1.TextSize = 14.000
BYPASS1.TextWrapped = true
BYPASS1.MouseButton1Down:connect(function()
local tubers93		= Instance.new("Sound")
		tubers93.Parent		= game:GetService("Workspace")
		tubers93.SoundId		= "rbxassetid://5228173823 "
		tubers93.Playing		= true
		tubers93.Looped		= true
		tubers93.Volume		= 100000000000000000000000
end)
DAY.Parent = TextLabel_3
DAY.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DAY.BorderColor3 = Color3.fromRGB(75, 151, 75)
DAY.BorderSizePixel = 3
DAY.Position = UDim2.new(0.08, 0, 0.45, 0)
DAY.Size = UDim2.new(0, 92, 0, 30)
DAY.Font = Enum.Font.SourceSans
DAY.Text = "DAY"
DAY.TextColor3 = Color3.fromRGB(242, 243, 243)
DAY.TextScaled = true
DAY.TextSize = 14.000
DAY.TextWrapped = true
DAY.MouseButton1Down:connect(function()
while true do
		print ("Loop cycle start")
		game.Lighting.TimeOfDay = "12:00:00"
		wait(0.5)
	end
end)
NIGHT.Parent = TextLabel_3
NIGHT.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NIGHT.BorderColor3 = Color3.fromRGB(196, 40, 28)
NIGHT.BorderSizePixel = 3
NIGHT.Position = UDim2.new(0.38, 0, 0.45, 0)
NIGHT.Size = UDim2.new(0, 92, 0, 30)
NIGHT.Font = Enum.Font.SourceSans
NIGHT.Text = "NIGHT"
NIGHT.TextColor3 = Color3.fromRGB(242, 243, 243)
NIGHT.TextScaled = true
NIGHT.TextSize = 14.000
NIGHT.TextWrapped = true
NIGHT.MouseButton1Down:connect(function()
while true do
		print ("Loop cycle start")
		game.Lighting.TimeOfDay = "18:00:00"
		wait(0.5)
	end
end)
STOPMUSIC.Parent = TextLabel_3
STOPMUSIC.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
STOPMUSIC.BorderColor3 = Color3.fromRGB(75, 151, 75)
STOPMUSIC.BorderSizePixel = 3
STOPMUSIC.Position = UDim2.new(0.68, 0, 0.45, 0)
STOPMUSIC.Size = UDim2.new(0, 92, 0, 30)
STOPMUSIC.Font = Enum.Font.SourceSans
STOPMUSIC.Text = "STOP MUSIC"
STOPMUSIC.TextColor3 = Color3.fromRGB(242, 243, 243)
STOPMUSIC.TextScaled = true
STOPMUSIC.TextSize = 14.000
STOPMUSIC.TextWrapped = true
STOPMUSIC.MouseButton1Down:connect(function()
for i,v in pairs(workspace:GetDescendants()) do
        if v:IsA("Sound") then
            v.Playing = false
        end
    end
end)
SKYBOX2.Parent = TextLabel_3
SKYBOX2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SKYBOX2.BorderColor3 = Color3.fromRGB(75, 151, 75)
SKYBOX2.BorderSizePixel = 3
SKYBOX2.Position = UDim2.new(0.38, 0, 0.55, 0)
SKYBOX2.Size = UDim2.new(0, 92, 0, 30)
SKYBOX2.Font = Enum.Font.SourceSans
SKYBOX2.Text = "SKYBOX2"
SKYBOX2.TextColor3 = Color3.fromRGB(242, 243, 243)
SKYBOX2.TextScaled = true
SKYBOX2.TextSize = 14.000
SKYBOX2.TextWrapped = true
SKYBOX2.MouseButton1Down:connect(function()
s = Instance.new("Sky")
		s.Name = "SKY"
		s.SkyboxBk = "rbxassetid://15790326222"
		s.SkyboxDn = "rbxassetid://15790326222"
		s.SkyboxFt = "rbxassetid://15790326222"
		s.SkyboxLf = "rbxassetid://15790326222"
		s.SkyboxRt = "rbxassetid://15790326222"
                s.SkyboxUp = "rbxassetid://15790326222"
                s.Parent = game.Lighting
wait()
end)
DREAMYBULLXXX.Parent = TextLabel_3
DREAMYBULLXXX.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DREAMYBULLXXX.BorderColor3 = Color3.fromRGB(196, 40, 28)
DREAMYBULLXXX.BorderSizePixel = 3
DREAMYBULLXXX.Position = UDim2.new(0.08, 0, 0.55, 0)
DREAMYBULLXXX.Size = UDim2.new(0, 92, 0, 30)
DREAMYBULLXXX.Font = Enum.Font.SourceSans
DREAMYBULLXXX.Text = "DREAMYBULLXXX NEXTBOT"
DREAMYBULLXXX.TextColor3 = Color3.fromRGB(242, 243, 243)
DREAMYBULLXXX.TextScaled = true
DREAMYBULLXXX.TextSize = 14.000
DREAMYBULLXXX.TextWrapped = true
DREAMYBULLXXX.MouseButton1Down:connect(function()
local player = game:GetService("Players").LocalPlayer
gui1 = Instance.new("BillboardGui", player.Character.Head)
gui1.Size = UDim2.new(10,0,10,0)
gui1.StudsOffset = Vector3.new(0,0,0)
gui1.AlwaysOnTop = true
text1 = Instance.new("ImageLabel")
text1.Image = "http://www.roblox.com/asset/?id=15681662754"
text1.Size = UDim2.new(1,0,1,0)
text1.Position = UDim2.new(0,0,0.2,0)
text1.BackgroundTransparency = 1
text1.Parent = gui1
wait()
end)
DECALSPAM1.Parent = TextLabel_3
DECALSPAM1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DECALSPAM1.BorderColor3 = Color3.fromRGB(196, 40, 28)
DECALSPAM1.BorderSizePixel = 3
DECALSPAM1.Position = UDim2.new(0.68, 0, 0.55, 0)
DECALSPAM1.Size = UDim2.new(0, 92, 0, 30)
DECALSPAM1.Font = Enum.Font.SourceSans
DECALSPAM1.Text = "DECAL 1"
DECALSPAM1.TextColor3 = Color3.fromRGB(242, 243, 243)
DECALSPAM1.TextScaled = true
DECALSPAM1.TextSize = 14.000
DECALSPAM1.TextWrapped = true
DECALSPAM1.MouseButton1Down:connect(function()
s = Instance.new("Sky")
s.Name = "Skybox"
s.SkyboxBk = "http://www.roblox.com/asset/?id=15767625666"
s.SkyboxDn = "http://www.roblox.com/asset/?id=15767625666"
s.SkyboxFt = "http://www.roblox.com/asset/?id=15767625666"
s.SkyboxLf = "http://www.roblox.com/asset/?id=15767625666"
s.SkyboxRt = "http://www.roblox.com/asset/?id=15767625666"
s.SkyboxUp = "http://www.roblox.com/asset/?id=15767625666"
        s.Parent = game.Lighting
		local ID = 15767625666
		function spamDecal(v)
			if v:IsA("Part") then
				for i = 0, 5 do
					D = Instance.new("Decal")
					D.Name = "k00pz"
					D.Face = i
					D.Parent = v
					D.Texture = ("http://www.roblox.com/asset/?id="..Id)
				end
			else
				if v:IsA("Model") then
					for a,b in pairs(v:GetChildren()) do
						spamDecal(b)
					end
				end
			end
		end
		function decalspam(id)
			Id = id
			for i,v in pairs(game.Workspace:GetChildren()) do
				if v:IsA("Part") then
					for i = 0, 5 do
						D = Instance.new("Decal")
						D.Name = "k00pz"
						D.Face = i
						D.Parent = v
						D.Texture = ("http://www.roblox.com/asset/?id="..id)
					end
				else
					if v:IsA("Model") then
						for a,b in pairs(v:GetChildren()) do
							spamDecal(b)
						end
					end
				end
			end
		end	
decalspam(ID)
end)
JO1TAR0GUI.Parent = TextLabel_3
JO1TAR0GUI.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
JO1TAR0GUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
JO1TAR0GUI.BorderSizePixel = 3
JO1TAR0GUI.Position = UDim2.new(0.08, 0, 0.65, 0)
JO1TAR0GUI.Size = UDim2.new(0, 92, 0, 30)
JO1TAR0GUI.Font = Enum.Font.SourceSans
JO1TAR0GUI.Text = "JO1TAR0 GUI"
JO1TAR0GUI.TextColor3 = Color3.fromRGB(242, 243, 243)
JO1TAR0GUI.TextScaled = true
JO1TAR0GUI.TextSize = 14.000
JO1TAR0GUI.TextWrapped = true
JO1TAR0GUI.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/BOSSJKL2/JOTAR0GUI/main/JO1TAR0GUI"))()
end)
ARABGUI.Parent = TextLabel_3
ARABGUI.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ARABGUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
ARABGUI.BorderSizePixel = 3
ARABGUI.Position = UDim2.new(0.38, 0, 0.65, 0)
ARABGUI.Size = UDim2.new(0, 92, 0, 30)
ARABGUI.Font = Enum.Font.SourceSans
ARABGUI.Text = "BOSS SCURITY "
ARABGUI.TextColor3 = Color3.fromRGB(242, 243, 243)
ARABGUI.TextScaled = true
ARABGUI.TextSize = 14.000
ARABGUI.TextWrapped = true
ARABGUI.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/BOSSJKL2/BossJKLO-SECURITY-/main/BossSCURITY"))()
end)
TOADKAAX.Parent = TextLabel_3
TOADKAAX.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TOADKAAX.BorderColor3 = Color3.fromRGB(0, 0, 0)
TOADKAAX.BorderSizePixel = 3
TOADKAAX.Position = UDim2.new(0.68, 0, 0.65, 0)
TOADKAAX.Size = UDim2.new(0, 92, 0, 30)
TOADKAAX.Font = Enum.Font.SourceSans
TOADKAAX.Text = "TOADROAST"
TOADKAAX.TextColor3 = Color3.fromRGB(242, 243, 243)
TOADKAAX.TextScaled = true
TOADKAAX.TextSize = 14.000
TOADKAAX.TextWrapped = true
TOADKAAX.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/KuDUPYkT"))()
end)
FASTHINT.Parent = TextLabel_3
FASTHINT.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FASTHINT.BorderColor3 = Color3.fromRGB(242, 243, 243)
FASTHINT.BorderSizePixel = 3
FASTHINT.Position = UDim2.new(0.08, 0, 0.75, 0)
FASTHINT.Size = UDim2.new(0, 92, 0, 30)
FASTHINT.Font = Enum.Font.SourceSans
FASTHINT.Text = "SUPER FAST HINT"
FASTHINT.TextColor3 = Color3.fromRGB(242, 243, 243)
FASTHINT.TextScaled = true
FASTHINT.TextSize = 14.000
FASTHINT.TextWrapped = true
FASTHINT.MouseButton1Down:connect(function()
while wait(0.08) do
local h = Instance.new("Hint")
h.Text = "30$$Â£KLO â-AS De$TRo9 y0Ur GaMe!$!$!$"
h.Parent = workspace
wait(0.08)
local h = Instance.new("Hint")
h.Text = "Te4M J4l0 J01n T0d4y!$!$!$"
h.Parent = workspace
end
end)
MESSAGESPAM.Parent = TextLabel_3
MESSAGESPAM.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MESSAGESPAM.BorderColor3 = Color3.fromRGB(242, 243, 243)
MESSAGESPAM.BorderSizePixel = 3
MESSAGESPAM.Position = UDim2.new(0.38, 0, 0.75, 0)
MESSAGESPAM.Size = UDim2.new(0, 92, 0, 30)
MESSAGESPAM.Font = Enum.Font.SourceSans
MESSAGESPAM.Text = "MESSAGE SPAM"
MESSAGESPAM.TextColor3 = Color3.fromRGB(242, 243, 243)
MESSAGESPAM.TextScaled = true
MESSAGESPAM.TextSize = 14.000
MESSAGESPAM.TextWrapped = true
MESSAGESPAM.MouseButton1Down:connect(function()
while wait(0.4) do
       msg = Instance.new("Message",workspace)
       msg.Text = "G3T H4cK By Jkl0 LmF4OOOOOOOOO!$?$!$"
       wait(0.4)
       msg:Destroy()
   end
end)
KAAXPARTICLES.Parent = TextLabel_3
KAAXPARTICLES.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
KAAXPARTICLES.BorderColor3 = Color3.fromRGB(242, 243, 243)
KAAXPARTICLES.BorderSizePixel = 3
KAAXPARTICLES.Position = UDim2.new(0.68, 0, 0.75, 0)
KAAXPARTICLES.Size = UDim2.new(0, 92, 0, 30)
KAAXPARTICLES.Font = Enum.Font.SourceSans
KAAXPARTICLES.Text = "KAAX PARTICLES"
KAAXPARTICLES.TextColor3 = Color3.fromRGB(242, 243, 243)
KAAXPARTICLES.TextScaled = true
KAAXPARTICLES.TextSize = 14.000
KAAXPARTICLES.TextWrapped = true
KAAXPARTICLES.MouseButton1Down:connect(function()
local ID = 15790326222 -- Change your ID here fellas cXz (Image ID)
 local particle = true

-- Donât change anything down below if you donât know what are you doing [This script made by cXyzkidd]

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
end)
DECALSPAM2.Parent = TextLabel_3
DECALSPAM2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DECALSPAM2.BorderColor3 = Color3.fromRGB(0, 0, 0)
DECALSPAM2.BorderSizePixel = 3
DECALSPAM2.Position = UDim2.new(0.08, 0, 0.85, 0)
DECALSPAM2.Size = UDim2.new(0, 92, 0, 30)
DECALSPAM2.Font = Enum.Font.SourceSans
DECALSPAM2.Text = "DECAL 2"
DECALSPAM2.TextColor3 = Color3.fromRGB(242, 243, 243)
DECALSPAM2.TextScaled = true
DECALSPAM2.TextSize = 14.000
DECALSPAM2.TextWrapped = true
DECALSPAM2.MouseButton1Down:connect(function()
s = Instance.new("Sky")
s.Name = "Skybox"
s.SkyboxBk = "http://www.roblox.com/asset/?id=15790326222"
s.SkyboxDn = "http://www.roblox.com/asset/?id=15790326222"
s.SkyboxFt = "http://www.roblox.com/asset/?id=15790326222"
s.SkyboxLf = "http://www.roblox.com/asset/?id=15790326222"
s.SkyboxRt = "http://www.roblox.com/asset/?id=15790326222"
s.SkyboxUp = "http://www.roblox.com/asset/?id=15790326222"
        s.Parent = game.Lighting
		local ID = 15790326222
		function spamDecal(v)
			if v:IsA("Part") then
				for i = 0, 5 do
					D = Instance.new("Decal")
					D.Name = "k00pz"
					D.Face = i
					D.Parent = v
					D.Texture = ("http://www.roblox.com/asset/?id="..Id)
				end
			else
				if v:IsA("Model") then
					for a,b in pairs(v:GetChildren()) do
						spamDecal(b)
					end
				end
			end
		end
		function decalspam(id)
			Id = id
			for i,v in pairs(game.Workspace:GetChildren()) do
				if v:IsA("Part") then
					for i = 0, 5 do
						D = Instance.new("Decal")
						D.Name = "k00pz"
						D.Face = i
						D.Parent = v
						D.Texture = ("http://www.roblox.com/asset/?id="..id)
					end
				else
					if v:IsA("Model") then
						for a,b in pairs(v:GetChildren()) do
							spamDecal(b)
						end
					end
				end
			end
		end	
decalspam(ID)
end)
B0SSJKIDDCK.Parent = TextLabel_3
B0SSJKIDDCK.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
B0SSJKIDDCK.BorderColor3 = Color3.fromRGB(0, 0, 0)
B0SSJKIDDCK.BorderSizePixel = 3
B0SSJKIDDCK.Position = UDim2.new(0.38, 0, 0.85, 0)
B0SSJKIDDCK.Size = UDim2.new(0, 92, 0, 30)
B0SSJKIDDCK.Font = Enum.Font.SourceSans
B0SSJKIDDCK.Text = "Y00NKIDD V1"
B0SSJKIDDCK.TextColor3 = Color3.fromRGB(242, 243, 243)
B0SSJKIDDCK.TextScaled = true
B0SSJKIDDCK.TextSize = 14.000
B0SSJKIDDCK.TextWrapped = true
B0SSJKIDDCK.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/t9nvD8Uu"))()
end)
MESHDISCO.Parent = TextLabel_3
MESHDISCO.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MESHDISCO.BorderColor3 = Color3.fromRGB(0, 0, 0)
MESHDISCO.BorderSizePixel = 3
MESHDISCO.Position = UDim2.new(0.68, 0, 0.85, 0)
MESHDISCO.Size = UDim2.new(0, 92, 0, 30)
MESHDISCO.Font = Enum.Font.SourceSans
MESHDISCO.Text = "MESH DISCO"
MESHDISCO.TextColor3 = Color3.fromRGB(242, 243, 243)
MESHDISCO.TextScaled = true
MESHDISCO.TextSize = 14.000
MESHDISCO.TextWrapped = true
MESHDISCO.MouseButton1Down:connect(function()
plr = game.Players.LocalPlayer.Name
meshes = {"Brick","Cylinder","Head","Sphere","Torso","Wedge"}
h = game.Workspace[plr].Head.Mesh
t = Instance.new("SpecialMesh",game.Workspace[plr].Torso)
la = Instance.new("SpecialMesh",game.Workspace[plr]["Left Arm"])
ra = Instance.new("SpecialMesh",game.Workspace[plr]["Right Arm"])
ll = Instance.new("SpecialMesh",game.Workspace[plr]["Left Leg"])
rl = Instance.new("SpecialMesh",game.Workspace[plr]["Right Leg"])
while true do
wait(0.1)
h.MeshType = meshes[math.random(1,#meshes)]
h.Parent.BrickColor = BrickColor.Random()
t.MeshType = meshes[math.random(1,#meshes)]
t.Parent.BrickColor = BrickColor.Random()
la.MeshType = meshes[math.random(1,#meshes)]
la.Parent.BrickColor = BrickColor.Random()
ra.MeshType = meshes[math.random(1,#meshes)]
ra.Parent.BrickColor = BrickColor.Random()
ll.MeshType = meshes[math.random(1,#meshes)]
ll.Parent.BrickColor = BrickColor.Random()
rl.MeshType = meshes[math.random(1,#meshes)]
rl.Parent.BrickColor = BrickColor.Random()
end
end)
CHICKENARMS.Parent = TextLabel_3
CHICKENARMS.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CHICKENARMS.BorderColor3 = Color3.fromRGB(242, 243, 243)
CHICKENARMS.BorderSizePixel = 3
CHICKENARMS.Position = UDim2.new(0.08, 0, 0.95, 0)
CHICKENARMS.Size = UDim2.new(0, 92, 0, 30)
CHICKENARMS.Font = Enum.Font.SourceSans
CHICKENARMS.Text = "CHICKEN ARMS"
CHICKENARMS.TextColor3 = Color3.fromRGB(242, 243, 243)
CHICKENARMS.TextScaled = true
CHICKENARMS.TextSize = 14.000
CHICKENARMS.TextWrapped = true
CHICKENARMS.MouseButton1Down:connect(function()
CHICKEN = game.Players.LocalPlayer.Name
game.Workspace[CHICKEN].Torso["Left Shoulder"].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,math.pi/2,0) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) * CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0)
game.Workspace[CHICKEN].Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, 0)
game.Workspace[CHICKEN].Torso["Right Shoulder"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) * CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0)
game.Workspace[CHICKEN].Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, 0)
end)
DECALSPAM3.Parent = TextLabel_3
DECALSPAM3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DECALSPAM3.BorderColor3 = Color3.fromRGB(242, 243, 243)
DECALSPAM3.BorderSizePixel = 3
DECALSPAM3.Position = UDim2.new(0.38, 0, 0.95, 0)
DECALSPAM3.Size = UDim2.new(0, 92, 0, 30)
DECALSPAM3.Font = Enum.Font.SourceSans
DECALSPAM3.Text = "DECAL 3"
DECALSPAM3.TextColor3 = Color3.fromRGB(242, 243, 243)
DECALSPAM3.TextScaled = true
DECALSPAM3.TextSize = 14.000
DECALSPAM3.TextWrapped = true
DECALSPAM3.MouseButton1Down:connect(function()
s = Instance.new("Sky")
s.Name = "Skybox"
s.SkyboxBk = "http://www.roblox.com/asset/?id=15866619293"
s.SkyboxDn = "http://www.roblox.com/asset/?id=15866619293"
s.SkyboxFt = "http://www.roblox.com/asset/?id=15866619293"
s.SkyboxLf = "http://www.roblox.com/asset/?id=15866619293"
s.SkyboxRt = "http://www.roblox.com/asset/?id=15866619293"
s.SkyboxUp = "http://www.roblox.com/asset/?id=15866619293"
        s.Parent = game.Lighting
		local ID = 15866619293
		function spamDecal(v)
			if v:IsA("Part") then
				for i = 0, 5 do
					D = Instance.new("Decal")
					D.Name = "k00pz"
					D.Face = i
					D.Parent = v
					D.Texture = ("http://www.roblox.com/asset/?id="..Id)
				end
			else
				if v:IsA("Model") then
					for a,b in pairs(v:GetChildren()) do
						spamDecal(b)
					end
				end
			end
		end
		function decalspam(id)
			Id = id
			for i,v in pairs(game.Workspace:GetChildren()) do
				if v:IsA("Part") then
					for i = 0, 5 do
						D = Instance.new("Decal")
						D.Name = "k00pz"
						D.Face = i
						D.Parent = v
						D.Texture = ("http://www.roblox.com/asset/?id="..id)
					end
				else
					if v:IsA("Model") then
						for a,b in pairs(v:GetChildren()) do
							spamDecal(b)
						end
					end
				end
			end
		end	
decalspam(ID)
end)
NEWFACE.Parent = TextLabel_3
NEWFACE.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NEWFACE.BorderColor3 = Color3.fromRGB(242, 243, 243)
NEWFACE.BorderSizePixel = 3
NEWFACE.Position = UDim2.new(0.68, 0, 0.95, 0)
NEWFACE.Size = UDim2.new(0, 92, 0, 30)
NEWFACE.Font = Enum.Font.SourceSans
NEWFACE.Text = "NEW FACE"
NEWFACE.TextColor3 = Color3.fromRGB(242, 243, 243)
NEWFACE.TextScaled = true
NEWFACE.TextSize = 14.000
NEWFACE.TextWrapped = true
NEWFACE.MouseButton1Down:connect(function()
local player = game:GetService("Players").LocalPlayer
gui1 = Instance.new("BillboardGui", player.Character.Head)
gui1.Size=UDim2.new(2.5,0,2.5,0)
gui1.StudsOffset=Vector3.new(0,0,0)
gui1.AlwaysOnTop = true
text1=Instance.new("ImageLabel")
text1.Image = "http://www.roblox.com/asset/?id=15877893828"
text1.Size=UDim2.new(1,0,1,0)
text1.Position=UDim2.new(0,0,0,0)
text1.BackgroundTransparency = 1
text1.Parent=gui1
end)

-- Scripts :

local function QFCS_fake_script() -- Frame.Dragify 
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
coroutine.wrap(QFCS_fake_script)()