-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel3 = Instance.new("TextLabel")
local TextLabel2 = Instance.new("TextLabel")
local R6 = Instance.new("TextButton")
local Stop = Instance.new("TextButton")
local ADMIN = Instance.new("TextButton")
local Decal1 = Instance.new("TextButton")
local Music = Instance.new("TextButton")
local ADMIN2 = Instance.new("TextButton")
local Decal2 = Instance.new("TextButton")
local Music2 = Instance.new("TextButton")
local ADMIN3 = Instance.new("TextButton")
local Decal3 = Instance.new("TextButton")
local Music3 = Instance.new("TextButton")
local ADMIN4 = Instance.new("TextButton")
local Decal4 = Instance.new("TextButton")
local Music4 = Instance.new("TextButton")
local TOADROAD = Instance.new("TextButton")
local JUMPSCARE = Instance.new("TextButton")
local SKYSPAMMING = Instance.new("TextButton")
local MESSAGE = Instance.new("TextButton")
local SKYK00P = Instance.new("TextButton")
local ANTILEAVE = Instance.new("TextButton")
local SKYC00L = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.BorderColor3 = Color3.fromRGB(255, 0, 0)
Frame.BorderSizePixel = 5
Frame.Position = UDim2.new(0, 0, 0, 0)
Frame.Size = UDim2.new(0, 400, 0, 500)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(200,0,0)      
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 2
TextLabel.Position = UDim2.new(0.30, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 150, 0, 40)
TextLabel.Font = Enum.Font.Cartoon
TextLabel.Text = "S33dedGui v12"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 500
TextLabel.TextWrapped = true

TextLabel3.Parent = Frame
TextLabel3.BackgroundColor3 = Color3.fromRGB(200,0,0)
TextLabel3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel3.BorderSizePixel = 2
TextLabel3.BackgroundTransparency = 1
TextLabel3.Position = UDim2.new(0.30, 0, 0.133, 0)
TextLabel3.Size = UDim2.new(0, 150, 0, 30)
TextLabel3.Font = Enum.Font.Cartoon
TextLabel3.Text = "(Made by Where_are300 and Me)"
TextLabel3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel3.TextScaled = true
TextLabel3.TextSize = 500
TextLabel3.TextWrapped = true

TextLabel2.Parent = Frame
TextLabel2.BackgroundColor3 = Color3.fromRGB(0,250,0)
TextLabel2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel2.BorderSizePixel = 2
TextLabel2.Position = UDim2.new(0, 0, 0.9, 0)
TextLabel2.Size = UDim2.new(0, 400, 0, 60)
TextLabel2.Font = Enum.Font.Cartoon
TextLabel2.Text = "[Warning if you dont own this gui delete it now or else]"
TextLabel2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel2.TextScaled = true
TextLabel2.TextSize = 100
TextLabel2.TextWrapped = true

R6.Parent = Frame
R6.BackgroundColor3 = Color3.fromRGB(200,0,0)
R6.BorderColor3 = Color3.fromRGB(0, 0, 0)
R6.BorderSizePixel = 2
R6.Position = UDim2.new(0.02, 0, 0.07, 0)
R6.Size = UDim2.new(0, 80, 0, 37)
R6.Font = Enum.Font.Cartoon
R6.Text = "R6"
R6.TextColor3 = Color3.fromRGB(0, 0, 0)
R6.TextScaled = true
R6.TextSize = 500
R6.TextWrapped = true
R6.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/e2GzxYjD"))()
end)
Stop.Parent = Frame
Stop.BackgroundColor3 = Color3.fromRGB(200,0,0)
Stop.BorderColor3 = Color3.fromRGB(0, 0, 0)
Stop.BorderSizePixel = 2
Stop.Position = UDim2.new(0.76, 0, 0.07, 0)
Stop.Size = UDim2.new(0, 76, 0, 37)
Stop.Font = Enum.Font.Cartoon
Stop.Text = "Stop All Sound"
Stop.TextColor3 = Color3.fromRGB(0, 0, 0)
Stop.TextScaled = true
Stop.TextSize = 500
Stop.TextWrapped = true
Stop.MouseButton1Down:connect(function()
for i,v in pairs(workspace:GetDescendants()) do
        if v:IsA("Sound") then
            v.Playing = false
        end
    end
end)
ADMIN.Parent = Frame
ADMIN.BackgroundColor3 = Color3.fromRGB(200,0,0)
ADMIN.BorderColor3 = Color3.fromRGB(0, 0, 0)
ADMIN.BorderSizePixel = 2
ADMIN.Position = UDim2.new(0, 0, 0.25, 0)
ADMIN.Size = UDim2.new(0, 110, 0, 40)
ADMIN.Font = Enum.Font.Cartoon
ADMIN.Text = "Decal 1"
ADMIN.TextColor3 = Color3.fromRGB(0, 0, 0)
ADMIN.TextScaled = true
ADMIN.TextSize = 500
ADMIN.TextWrapped = true
ADMIN.MouseButton1Down:connect(function()
s = Instance.new("Sky")
s.Name = "Skybox"
s.SkyboxBk = "http://www.roblox.com/asset/?id=160456772"
s.SkyboxDn = "http://www.roblox.com/asset/?id=160456772"
s.SkyboxFt = "http://www.roblox.com/asset/?id=160456772"
s.SkyboxLf = "http://www.roblox.com/asset/?id=160456772"
s.SkyboxRt = "http://www.roblox.com/asset/?id=160456772"
s.SkyboxUp = "http://www.roblox.com/asset/?id=160456772"
        s.Parent = game.Lighting
		local ID = 160456772
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
Decal1.Parent = Frame
Decal1.BackgroundColor3 = Color3.fromRGB(200,0,0)
Decal1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Decal1.BorderSizePixel = 2
Decal1.Position = UDim2.new(0.34, 0, 0.25, 0)
Decal1.Size = UDim2.new(0, 110, 0, 40)
Decal1.Font = Enum.Font.Cartoon
Decal1.Text = "Particles 1"
Decal1.TextColor3 = Color3.fromRGB(0, 0, 0)
Decal1.TextScaled = true
Decal1.TextSize = 500
Decal1.TextWrapped = true
Decal1.MouseButton1Down:connect(function()
local playerLeaderstats = {}
for i, v in pairs(game.Players:GetChildren()) do
table.insert(playerLeaderstats, v)
end
for i, v in pairs(playerLeaderstats) do
pe = Instance.new("ParticleEmitter",v.Character.Torso)
pe.Texture = "http://www.roblox.com/asset/?id=160456772"
pe.VelocitySpread = 66
end
end)
Music.Parent = Frame
Music.BackgroundColor3 = Color3.fromRGB(200,0,0)
Music.BorderColor3 = Color3.fromRGB(0, 0, 0)
Music.BorderSizePixel = 2
Music.Position = UDim2.new(0.67, 0, 0.25, 0)
Music.Size = UDim2.new(0, 110, 0, 40)
Music.Font = Enum.Font.Cartoon
Music.Text = "Music"
Music.TextColor3 = Color3.fromRGB(0, 0, 0)
Music.TextScaled = true
Music.TextSize = 500
Music.TextWrapped = true
Music.MouseButton1Down:connect(function()
Spooky = Instance.new("Sound", game.Workspace)
		Spooky.Name = "Spooky"
		Spooky.SoundId = "rbxassetid://6942391979"
		Spooky.Volume = 6e9
		Spooky.Looped = true
		Spooky:Play()
end)
ADMIN2.Parent = Frame
ADMIN2.BackgroundColor3 = Color3.fromRGB(200,0,0)
ADMIN2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ADMIN2.BorderSizePixel = 2
ADMIN2.Position = UDim2.new(0, 0, 0.40, 0)
ADMIN2.Size = UDim2.new(0, 110, 0, 40)
ADMIN2.Font = Enum.Font.Cartoon
ADMIN2.Text = "Decal 2"
ADMIN2.TextColor3 = Color3.fromRGB(0, 0, 0)
ADMIN2.TextScaled = true
ADMIN2.TextSize = 500
ADMIN2.TextWrapped = true
ADMIN2.MouseButton1Down:connect(function()
s.Name = "Skybox"
s.SkyboxBk = "http://www.roblox.com/asset/?id=160456772"
s.SkyboxDn = "http://www.roblox.com/asset/?id=160456772"
s.SkyboxFt = "http://www.roblox.com/asset/?id=160456772"
s.SkyboxLf = "http://www.roblox.com/asset/?id=160456772"
s.SkyboxRt = "http://www.roblox.com/asset/?id=160456772"
s.SkyboxUp = "http://www.roblox.com/asset/?id=160456772"
        s.Parent = game.Lighting
		local ID = 160456772
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
Decal2.Parent = Frame
Decal2.BackgroundColor3 = Color3.fromRGB(200,0,0)
Decal2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Decal2.BorderSizePixel = 2
Decal2.Position = UDim2.new(0.34, 0, 0.40, 0)
Decal2.Size = UDim2.new(0, 110, 0, 40)
Decal2.Font = Enum.Font.Cartoon
Decal2.Text = "Particles 2"
Decal2.TextColor3 = Color3.fromRGB(0, 0, 0)
Decal2.TextScaled = true
Decal2.TextSize = 500
Decal2.TextWrapped = true
Decal2.MouseButton1Down:connect(function()
local playerLeaderstats = {}
for i, v in pairs(game.Players:GetChildren()) do
table.insert(playerLeaderstats, v)
end
for i, v in pairs(playerLeaderstats) do
pe = Instance.new("ParticleEmitter",v.Character.Torso)
pe.Texture = "http://www.roblox.com/asset/?id=160456772"
pe.VelocitySpread = 2437565764426765344562347564245762445765754247562444576244765442545372467557643754637564365347563475643765435764377653475643
end
end)
Music2.Parent = Frame
Music2.BackgroundColor3 = Color3.fromRGB(200,0,0)
Music2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Music2.BorderSizePixel = 2
Music2.Position = UDim2.new(0.67, 0, 0.40, 0)
Music2.Size = UDim2.new(0, 110, 0, 40)
Music2.Font = Enum.Font.Cartoon
Music2.Text = "Shutdown"
Music2.TextColor3 = Color3.fromRGB(0, 0, 0)
Music2.TextScaled = true
Music2.TextSize = 500
Music2.TextWrapped = true
Music2.MouseButton1Down:connect(function()
Music2.Text = "ERROR"
wait(0.8)
Music2.Text = "Cannot bypass the [byfron]"
wait(0.6)
Music2.Text = "Try Again Later"
wait(0.6)
Music2.Text = "Shutdown"
end)
ADMIN3.Parent = Frame
ADMIN3.BackgroundColor3 = Color3.fromRGB(200,0,0)
ADMIN3.BorderColor3 = Color3.fromRGB(0, 0, 0)
ADMIN3.BorderSizePixel = 2
ADMIN3.Position = UDim2.new(0, 0, 0.57, 0)
ADMIN3.Size = UDim2.new(0, 110, 0, 40)
ADMIN3.Font = Enum.Font.Cartoon
ADMIN3.Text = "Kick All"
ADMIN3.TextColor3 = Color3.fromRGB(0, 0, 0)
ADMIN3.TextScaled = true
ADMIN3.TextSize = 500
ADMIN3.TextWrapped = true
ADMIN3.MouseButton1Down:connect(function()
ADMIN3.Text = "ERROR"
wait(0.2)
ADMIN3.Text = "Click AGAIN"
wait(0.5)
ADMIN3.Text = "Teams"
end)
Decal3.Parent = Frame
Decal3.BackgroundColor3 = Color3.fromRGB(200,0,0)
Decal3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Decal3.BorderSizePixel = 2
Decal3.Position = UDim2.new(0.34, 0, 0.57, 0)
Decal3.Size = UDim2.new(0, 110, 0, 40)
Decal3.Font = Enum.Font.Cartoon
Decal3.Text = "Steal HD Admin"
Decal3.TextColor3 = Color3.fromRGB(0, 0, 0)
Decal3.TextScaled = true
Decal3.TextSize = 500
Decal3.TextWrapped = true
Decal3.MouseButton1Down:connect(function()
Decal3.Text = "ERROR"
wait(0.2)
Decal3.Text = "Click AGAIN"
wait(0.5)
Decal3.Text = "HD Admin GUI"
end)
Music3.Parent = Frame
Music3.BackgroundColor3 = Color3.fromRGB(200,0,0)
Music3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Music3.BorderSizePixel = 2
Music3.Position = UDim2.new(0.67, 0, 0.57, 0)
Music3.Size = UDim2.new(0, 110, 0, 40)
Music3.Font = Enum.Font.Cartoon
Music3.Text = "Server Destroyer"
Music3.TextColor3 = Color3.fromRGB(0, 0, 0)
Music3.TextScaled = true
Music3.TextSize = 500
Music3.TextWrapped = true
Music3.MouseButton1Down:connect(function()
Music3.Text = "ERROR"
wait(0.2)
Music3.Text = "Click AGAIN"
wait(0.5)
Music3.Text = "Server Destroyer Old"
end)
ADMIN4.Parent = Frame
ADMIN4.BackgroundColor3 = Color3.fromRGB(200,0,0)
ADMIN4.BorderColor3 = Color3.fromRGB(0, 0, 0)
ADMIN4.BorderSizePixel = 2
ADMIN4.Position = UDim2.new(0, 0, 0.73, 0)
ADMIN4.Size = UDim2.new(0, 110, 0, 40)
ADMIN4.Font = Enum.Font.Cartoon
ADMIN4.Text = "Map 1"
ADMIN4.TextColor3 = Color3.fromRGB(0, 0, 0)
ADMIN4.TextScaled = true
ADMIN4.TextSize = 500
ADMIN4.TextWrapped = true
ADMIN4.MouseButton1Down:connect(function()
game:GetService("TeleportService"):Teleport(15152109142)
end)
Decal4.Parent = Frame
Decal4.BackgroundColor3 = Color3.fromRGB(200,0,0)
Decal4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Decal4.BorderSizePixel = 2
Decal4.Position = UDim2.new(0.34, 0, 0.73, 0)
Decal4.Size = UDim2.new(0, 110, 0, 40)
Decal4.Font = Enum.Font.Cartoon
Decal4.Text = "Map 2"
Decal4.TextColor3 = Color3.fromRGB(0, 0, 0)
Decal4.TextScaled = true
Decal4.TextSize = 500
Decal4.TextWrapped = true
Decal4.MouseButton1Down:connect(function()
game:GetService("TeleportService"):Teleport(12476784915)
end)
Music4.Parent = Frame
Music4.BackgroundColor3 = Color3.fromRGB(200,0,0)
Music4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Music4.BorderSizePixel = 2
Music4.Position = UDim2.new(0.67, 0, 0.73, 0)
Music4.Size = UDim2.new(0, 110, 0, 40)
Music4.Font = Enum.Font.Cartoon
Music4.Text = "Disc01!1!"
Music4.TextColor3 = Color3.fromRGB(0, 0, 0)
Music4.TextScaled = true
Music4.TextSize = 500
Music4.TextWrapped = true
Music4.MouseButton1Down:connect(function()
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
TOADROAD.Parent = Frame
TOADROAD.BackgroundColor3 = Color3.fromRGB(200,0,0)
TOADROAD.BorderColor3 = Color3.fromRGB(0, 0, 0)
TOADROAD.BorderSizePixel = 2
TOADROAD.Position = UDim2.new(1, 0, 0, 0)
TOADROAD.Size = UDim2.new(0, 170, 0, 35)
TOADROAD.Font = Enum.Font.Cartoon
TOADROAD.Text = "Toadroast v7"
TOADROAD.TextColor3 = Color3.fromRGB(0, 0, 0)
TOADROAD.TextScaled = true
TOADROAD.TextSize = 500
TOADROAD.TextWrapped = true
TOADROAD.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/DXMLqYme"))()
end)
JUMPSCARE.Parent = Frame
JUMPSCARE.BackgroundColor3 = Color3.fromRGB(200,0,0)
JUMPSCARE.BorderColor3 = Color3.fromRGB(0, 0, 0)
JUMPSCARE.BorderSizePixel = 2
JUMPSCARE.Position = UDim2.new(1, 0, 0.15, 0)
JUMPSCARE.Size = UDim2.new(0, 170, 0, 35)
JUMPSCARE.Font = Enum.Font.Cartoon
JUMPSCARE.Text = "Jumpscare"
JUMPSCARE.TextColor3 = Color3.fromRGB(0, 0, 0)
JUMPSCARE.TextScaled = true
JUMPSCARE.TextSize = 500
JUMPSCARE.TextWrapped = true
JUMPSCARE.MouseButton1Down:connect(function()
for i,v in pairs(game.Players:GetPlayers()) do
		if v.Name ~= me and not v.PlayerGui:FindFirstChild("k00pkidd's Jumpscare") and v:FindFirstChild("PlayerGui") then
			spawn(function()
				local newgui = Instance.new("ScreenGui",v.PlayerGui)
				newgui.Name = "k00p's Jumpscare"
				local newimage = Instance.new("ImageLabel",newgui)
				newimage.Image = "rbxassetid://15777105027"
				newimage.Size = UDim2.new(0,800,0,345)
                               
                                newimage.BackgroundTransparency = 1
                                local m = Instance.new("Hint", game.workspace)
		                m.Text = "TEAM JO1TAR0 JOINED TODAY HAHAHA!11!2!"
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
SKYSPAMMING.Parent = Frame
SKYSPAMMING.BackgroundColor3 = Color3.fromRGB(200,0,0)
SKYSPAMMING.BorderColor3 = Color3.fromRGB(0, 0, 0)
SKYSPAMMING.BorderSizePixel = 2
SKYSPAMMING.Position = UDim2.new(-0.43, 0, 0, 0)
SKYSPAMMING.Size = UDim2.new(0, 170, 0, 35)
SKYSPAMMING.Font = Enum.Font.Cartoon
SKYSPAMMING.Text = "Skybox Spam"
SKYSPAMMING.TextColor3 = Color3.fromRGB(0, 0, 0)
SKYSPAMMING.TextScaled = true
SKYSPAMMING.TextSize = 500
SKYSPAMMING.TextWrapped = true
SKYSPAMMING.MouseButton1Down:connect(function()
s = Instance.new("Sky")
		s.Name = "SKY"
		s.SkyboxBk = "rbxassetid://160456772"
		s.SkyboxDn = "rbxassetid://160456772"
		s.SkyboxFt = "rbxassetid://160456772"
		s.SkyboxLf = "rbxassetid://160456772"
		s.SkyboxRt = "rbxassetid://160456772"
                s.SkyboxUp = "rbxassetid://160456772"
                s.Parent = game.Lighting
wait()
end)
MESSAGE.Parent = Frame
MESSAGE.BackgroundColor3 = Color3.fromRGB(200,0,0)
MESSAGE.BorderColor3 = Color3.fromRGB(0, 0, 0)
MESSAGE.BorderSizePixel = 2
MESSAGE.Position = UDim2.new(-0.43, 0, 0.20, 0)
MESSAGE.Size = UDim2.new(0, 170, 0, 35)
MESSAGE.Font = Enum.Font.Cartoon
MESSAGE.Text = "Message Spam"
MESSAGE.TextColor3 = Color3.fromRGB(0, 0, 0)
MESSAGE.TextScaled = true
MESSAGE.TextSize = 500
MESSAGE.TextWrapped = true
MESSAGE.MouseButton1Down:connect(function()
while wait(0.4) do
       msg = Instance.new("Message",workspace)
       msg.Text = "GET TOASTED BY S33DEDL0RDZ IDIOTS"
       wait(0.4)
       msg:Destroy()
   end
end)
SKYK00P.Parent = Frame
SKYK00P.BackgroundColor3 = Color3.fromRGB(200,0,0)
SKYK00P.BorderColor3 = Color3.fromRGB(0, 0, 0)
SKYK00P.BorderSizePixel = 2
SKYK00P.Position = UDim2.new(-0.43, 0, 0.35, 0)
SKYK00P.Size = UDim2.new(0, 170, 0, 35)
SKYK00P.Font = Enum.Font.Cartoon
SKYK00P.Text = "k00pkidd sky"
SKYK00P.TextColor3 = Color3.fromRGB(0, 0, 0)
SKYK00P.TextScaled = true
SKYK00P.TextSize = 500
SKYK00P.TextWrapped = true
SKYK00P.MouseButton1Down:connect(function()
s = Instance.new("Sky")
		s.Name = "SKY"
		s.SkyboxBk = "rbxassetid://15777427232"
		s.SkyboxDn = "rbxassetid://15777427232"
		s.SkyboxFt = "rbxassetid://15777427232"
		s.SkyboxLf = "rbxassetid://15777427232"
		s.SkyboxRt = "rbxassetid://15777427232"
                s.SkyboxUp = "rbxassetid://15777427232"
                s.Parent = game.Lighting
wait()
end)
ANTILEAVE.Parent = Frame
ANTILEAVE.BackgroundColor3 = Color3.fromRGB(200,0,0)
ANTILEAVE.BorderColor3 = Color3.fromRGB(0, 0, 0)
ANTILEAVE.BorderSizePixel = 2
ANTILEAVE.Position = UDim2.new(-0.43, 0, 0.50, 0)
ANTILEAVE.Size = UDim2.new(0, 170, 0, 35)
ANTILEAVE.Font = Enum.Font.Cartoon
ANTILEAVE.Text = "Anti-Leave"
ANTILEAVE.TextColor3 = Color3.fromRGB(0, 0, 0)
ANTILEAVE.TextScaled = true
ANTILEAVE.TextSize = 500
ANTILEAVE.TextWrapped = true
ANTILEAVE.MouseButton1Down:connect(function()
ANTILEAVE.Text = "ERORR"
wait(0.5)
ANTILEAVE.Text = "Anti-Leave"
end)
SKYC00L.Parent = Frame
SKYC00L.BackgroundColor3 = Color3.fromRGB(200,0,0)
SKYC00L.BorderColor3 = Color3.fromRGB(0, 0, 0)
SKYC00L.BorderSizePixel = 2
SKYC00L.Position = UDim2.new(-0.43, 0, 0.65, 0)
SKYC00L.Size = UDim2.new(0, 170, 0, 35)
SKYC00L.Font = Enum.Font.Cartoon
SKYC00L.Text = "c00lkidd sky"
SKYC00L.TextColor3 = Color3.fromRGB(0, 0, 0)
SKYC00L.TextScaled = true
SKYC00L.TextSize = 500
SKYC00L.TextWrapped = true
SKYC00L.MouseButton1Down:connect(function()
s = Instance.new("Sky")
		s.Name = "SKY"
		s.SkyboxBk = "rbxassetid://15777503043"
		s.SkyboxDn = "rbxassetid://15777503043"
		s.SkyboxFt = "rbxassetid://15777503043"
		s.SkyboxLf = "rbxassetid://15777503043"
		s.SkyboxRt = "rbxassetid://15777503043"
                s.SkyboxUp = "rbxassetid://15777503043"
                s.Parent = game.Lighting
wait()
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
local function PKIPWI_fake_script() -- TOADROAD.LocalScript 
	local script = Instance.new('LocalScript', TOADROAD)

	while wait() do
		for i = 0,255,5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(255,i,0) -- change backgroundcolor3 to textcolor3 to make text color rainbow
			wait(0.01)
		end
		for i = 255,0,-5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(i,255,0)
			wait(0.01)
		end
		for i = 0,255,5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(0,255,i)
			wait(0.01)
		end
		for i = 255,0,-5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(0,i,255)
			wait(0.01)
		end
		for i = 0,255,5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(i,0,255)
			wait(0.01)
		end
		for i = 255,0,-5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(255,0,i)
			wait(0.01)
		end
	end
end
coroutine.wrap(PKIPWI_fake_script)()
local function PKIPWI_fake_script() -- JUMPSCARE.LocalScript 
	local script = Instance.new('LocalScript', JUMPSCARE)

	while wait() do
		for i = 0,255,5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(255,i,0) -- change backgroundcolor3 to textcolor3 to make text color rainbow
			wait(0.01)
		end
		for i = 255,0,-5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(i,255,0)
			wait(0.01)
		end
		for i = 0,255,5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(0,255,i)
			wait(0.01)
		end
		for i = 255,0,-5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(0,i,255)
			wait(0.01)
		end
		for i = 0,255,5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(i,0,255)
			wait(0.01)
		end
		for i = 255,0,-5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(255,0,i)
			wait(0.01)
		end
	end
end
coroutine.wrap(PKIPWI_fake_script)()
local function PKIPWI_fake_script() -- SKYSPAMMING.LocalScript 
	local script = Instance.new('LocalScript', SKYSPAMMING)

	while wait() do
		for i = 0,255,5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(255,i,0) -- change backgroundcolor3 to textcolor3 to make text color rainbow
			wait(0.01)
		end
		for i = 255,0,-5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(i,255,0)
			wait(0.01)
		end
		for i = 0,255,5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(0,255,i)
			wait(0.01)
		end
		for i = 255,0,-5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(0,i,255)
			wait(0.01)
		end
		for i = 0,255,5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(i,0,255)
			wait(0.01)
		end
		for i = 255,0,-5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(255,0,i)
			wait(0.01)
		end
	end
end
coroutine.wrap(PKIPWI_fake_script)()
local function PKIPWI_fake_script() -- MESSAGE.LocalScript 
	local script = Instance.new('LocalScript', MESSAGE)

	while wait() do
		for i = 0,255,5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(255,i,0) -- change backgroundcolor3 to textcolor3 to make text color rainbow
			wait(0.01)
		end
		for i = 255,0,-5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(i,255,0)
			wait(0.01)
		end
		for i = 0,255,5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(0,255,i)
			wait(0.01)
		end
		for i = 255,0,-5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(0,i,255)
			wait(0.01)
		end
		for i = 0,255,5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(i,0,255)
			wait(0.01)
		end
		for i = 255,0,-5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(255,0,i)
			wait(0.01)
		end
	end
end
coroutine.wrap(PKIPWI_fake_script)()
local function PKIPWI_fake_script() -- SKYK00P.LocalScript 
	local script = Instance.new('LocalScript', SKYK00P)

	while wait() do
		for i = 0,255,5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(255,i,0) -- change backgroundcolor3 to textcolor3 to make text color rainbow
			wait(0.01)
		end
		for i = 255,0,-5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(i,255,0)
			wait(0.01)
		end
		for i = 0,255,5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(0,255,i)
			wait(0.01)
		end
		for i = 255,0,-5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(0,i,255)
			wait(0.01)
		end
		for i = 0,255,5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(i,0,255)
			wait(0.01)
		end
		for i = 255,0,-5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(255,0,i)
			wait(0.01)
		end
	end
end
coroutine.wrap(PKIPWI_fake_script)()
local function PKIPWI_fake_script() -- ANTILEAVE.LocalScript 
	local script = Instance.new('LocalScript', ANTILEAVE)

	while wait() do
		for i = 0,255,5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(255,i,0) -- change backgroundcolor3 to textcolor3 to make text color rainbow
			wait(0.01)
		end
		for i = 255,0,-5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(i,255,0)
			wait(0.01)
		end
		for i = 0,255,5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(0,255,i)
			wait(0.01)
		end
		for i = 255,0,-5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(0,i,255)
			wait(0.01)
		end
		for i = 0,255,5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(i,0,255)
			wait(0.01)
		end
		for i = 255,0,-5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(255,0,i)
			wait(0.01)
		end
	end
end
coroutine.wrap(PKIPWI_fake_script)()
local function PKIPWI_fake_script() -- SKYK00P.LocalScript 
	local script = Instance.new('LocalScript', SKYC00L)

	while wait() do
		for i = 0,255,5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(255,i,0) -- change backgroundcolor3 to textcolor3 to make text color rainbow
			wait(0.01)
		end
		for i = 255,0,-5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(i,255,0)
			wait(0.01)
		end
		for i = 0,255,5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(0,255,i)
			wait(0.01)
		end
		for i = 255,0,-5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(0,i,255)
			wait(0.01)
		end
		for i = 0,255,5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(i,0,255)
			wait(0.01)
		end
		for i = 255,0,-5 do
			script.Parent.BackgroundColor3 = Color3.fromRGB(255,0,i)
			wait(0.01)
		end
	end
end
coroutine.wrap(PKIPWI_fake_script)()