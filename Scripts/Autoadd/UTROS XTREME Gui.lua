





































































































































































































local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local titlee = Instance.new("TextLabel")
local Speed_Finish = Instance.new("TextButton")
local Speed_Finishh = Instance.new("TextButton")
local closetab = Instance.new("TextButton")
local closetabb = Instance.new("TextButton")
local hotbar = Instance.new("Frame")
local minitab = Instance.new("TextButton")
local openmenu = Instance.new("TextButton")
local openmenuu = Instance.new("TextButton")
local BSpeed_Finish = Instance.new("TextButton")
local BSpeed_Finishh = Instance.new("TextButton")
local CSpeed_Finish = Instance.new("TextButton")
local CSpeed_Finishh = Instance.new("TextButton")
local DSpeed_Finish = Instance.new("TextButton")
local ESpeed_Finish = Instance.new("TextButton")
local DSpeed_Finishh = Instance.new("TextButton")
local ESpeed_Finishh = Instance.new("TextButton")
local FSpeed_Finish = Instance.new("TextButton")
local FSpeed_Finishh = Instance.new("TextButton")
local GSpeed_Finish = Instance.new("TextButton")
local GGSpeed_Finish = Instance.new("TextButton")
local GGGSpeed_Finish = Instance.new("TextButton")
local gGSpeed_Finish = Instance.new("TextButton")
local GGGGSpeed_Finish = Instance.new("TextButton")
local GDGSpeed_Finish = Instance.new("TextButton")
local framee = Instance.new("Frame")
local minitabb = Instance.new("TextButton")
wait(0)
gui.Parent = game.Players.LocalPlayer.PlayerGui
gui.Name = ("CustomChars")
gui.ResetOnSpawn = false


framee.Parent = gui
framee.Name = ("MainFramee")
framee.Size = UDim2.new(0.4, 0, 0.5, 0)
framee.Active = true
framee.Draggable = true
framee.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
framee.BackgroundTransparency = 0.1
framee.BorderSizePixel = 5
framee.BorderColor3 = Color3.fromRGB(85, 255, 0)
framee.Position = UDim2.new(.5,0,0,0)
framee.Visible = false
frame.Parent = gui
frame.Name = ("MainFrame")
frame.Size = UDim2.new(0.4, 0, 0.5, 0)
frame.Active = true
frame.Draggable = true
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 0.1
frame.BorderSizePixel = 5
frame.BorderColor3 = Color3.fromRGB(85, 255, 0)
hotbar.Parent = gui
hotbar.Name = ("Hotbar")
hotbar.Size = UDim2.new(0.6, 0, 0.1, 0)
hotbar.Active = true
hotbar.Draggable = false
hotbar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
hotbar.BackgroundTransparency = 0.1
hotbar.BorderSizePixel = 5
hotbar.BorderColor3 = Color3.fromRGB(85, 255, 0)
hotbar.Position = UDim2.new(0.195, 0, 0.04, 0)
hotbar.Visible = false


title.Parent = gui.MainFrame
title.Name = ("GODOOOD")
title.Size = UDim2.new(0.5, 0, 0.2, 0)
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(85, 255, 0)
title.TextScaled = true
title.Text = ("UT : THE RISE OF SOULS XTREME GUI")
title.Font = ("Arcade")

titlee.Parent = gui.MainFramee
titlee.Name = ("GODOOOD")
titlee.Size = UDim2.new(0.5, 0, 0.2, 0)
titlee.BackgroundTransparency = 1
titlee.TextColor3 = Color3.fromRGB(85, 255, 0)
titlee.TextScaled = true
titlee.Text = ("Place Teleports")
titlee.Font = ("Arcade")

closetab.Parent = gui.MainFrame
closetab.Name = ("Colose")
closetab.Size = UDim2.new(0.1, 0, 0.05, 0)
closetab.BackgroundTransparency = 0.1
closetab.BorderSizePixel = 3
closetab.BorderColor3 = Color3.fromRGB(85, 255, 0)
closetab.Text = ("X")
closetab.TextColor3 = Color3.fromRGB(85, 255, 0)
closetab.BackgroundColor3 = Color3.fromRGB(0,0,0)
closetab.TextScaled = true
closetab.Position = UDim2.new(0.9, 0, 0, 0)
closetab.Font = ("Arcade")

closetabb.Parent = gui.MainFramee
closetabb.Name = ("Colose")
closetabb.Size = UDim2.new(0.1, 0, 0.05, 0)
closetabb.BackgroundTransparency = 0.1
closetabb.BorderSizePixel = 3
closetabb.BorderColor3 = Color3.fromRGB(85, 255, 0)
closetabb.Text = ("X")
closetabb.TextColor3 = Color3.fromRGB(85, 255, 0)
closetabb.BackgroundColor3 = Color3.fromRGB(0,0,0)
closetabb.TextScaled = true
closetabb.Position = UDim2.new(0.9, 0, 0, 0)
closetabb.Font = ("Arcade")


openmenu.Parent = gui.Hotbar
openmenu.Name = ("OpenDaMain")
openmenu.Size = UDim2.new(0.08, 0, 1, 0)
openmenu.BackgroundTransparency = 0.1
openmenu.BorderSizePixel = 3
openmenu.BorderColor3 = Color3.fromRGB(85, 255, 0)
openmenu.Text = ("Main Menu")
openmenu.TextColor3 = Color3.fromRGB(85, 255, 0)
openmenu.BackgroundColor3 = Color3.fromRGB(0,0,0)
openmenu.TextScaled = true
openmenu.Position = UDim2.new(0, 0, 0, 0)
openmenu.Visible = false
openmenu.Font = ("Arcade")

openmenuu.Parent = gui.Hotbar
openmenuu.Name = ("OpenDaMainn")
openmenuu.Size = UDim2.new(0.083, 0, 1, 0)
openmenuu.BackgroundTransparency = 0.1
openmenuu.BorderSizePixel = 3
openmenuu.BorderColor3 = Color3.fromRGB(85, 255, 0)
openmenuu.Text = ("Place TP Menu")
openmenuu.TextColor3 = Color3.fromRGB(85, 255, 0)
openmenuu.BackgroundColor3 = Color3.fromRGB(0,0,0)
openmenuu.TextScaled = true
openmenuu.Position = UDim2.new(0.085, 0, 0, 0)
openmenuu.Visible = false
openmenuu.Font = ("Arcade")


minitab.Parent = gui.MainFrame
minitab.Name = ("Minimizeizie")
minitab.Size = UDim2.new(0.1, 0, 0.05, 0)
minitab.BackgroundTransparency = 0.1
minitab.BorderSizePixel = 3
minitab.BorderColor3 = Color3.fromRGB(85, 255, 0)
minitab.Text = ("-")
minitab.TextColor3 = Color3.fromRGB(85, 255, 0)
minitab.BackgroundColor3 = Color3.fromRGB(0,0,0)
minitab.TextScaled = true
minitab.Position = UDim2.new(0.79, 0, 0, 0)
minitab.Font = ("Arcade")

minitabb.Parent = gui.MainFramee
minitabb.Name = ("Minimizeizie")
minitabb.Size = UDim2.new(0.1, 0, 0.05, 0)
minitabb.BackgroundTransparency = 0.1
minitabb.BorderSizePixel = 3
minitabb.BorderColor3 = Color3.fromRGB(85, 255, 0)
minitabb.Text = ("-")
minitabb.TextColor3 = Color3.fromRGB(85, 255, 0)
minitabb.BackgroundColor3 = Color3.fromRGB(0,0,0)
minitabb.TextScaled = true
minitabb.Position = UDim2.new(0.79, 0, 0, 0)
minitabb.Font = ("Arcade")


Speed_Finish.Parent = gui.MainFrame
Speed_Finish.Name = ("End Game")
Speed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
Speed_Finish.BackgroundTransparency = 0.1
Speed_Finish.BorderSizePixel = 3
Speed_Finish.BorderColor3 = Color3.fromRGB(85, 255, 0)
Speed_Finish.Text = ("Open Place Teleporters Menu")
Speed_Finish.TextColor3 = Color3.fromRGB(85, 255, 0)
Speed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
Speed_Finish.TextScaled = true
Speed_Finish.Position = UDim2.new(0, 8, 0.25, 0)
Speed_Finish.Visible = true
Speed_Finish.Font = ("Arcade")


Speed_Finishh.Parent = gui.MainFramee
Speed_Finishh.Name = ("End Game")
Speed_Finishh.Size = UDim2.new(0.25, 0, 0.15, 0)
Speed_Finishh.BackgroundTransparency = 0.1
Speed_Finishh.BorderSizePixel = 3
Speed_Finishh.BorderColor3 = Color3.fromRGB(35, 25, 0)
Speed_Finishh.Text = ("Free Gaster")
Speed_Finishh.TextColor3 = Color3.fromRGB(35, 55, 0)
Speed_Finishh.BackgroundColor3 = Color3.fromRGB(0,0,0)
Speed_Finishh.TextScaled = true
Speed_Finishh.Position = UDim2.new(0, 8, 0.25, 0)
Speed_Finishh.Visible = true
Speed_Finishh.Font = ("Arcade")


DSpeed_Finish.Parent = gui.MainFrame
DSpeed_Finish.Name = ("myas")
DSpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
DSpeed_Finish.BackgroundTransparency = 0.1
DSpeed_Finish.BorderSizePixel = 3
DSpeed_Finish.BorderColor3 = Color3.fromRGB(85, 255, 0)
DSpeed_Finish.Text = ("Kill People in void")
DSpeed_Finish.TextColor3 = Color3.fromRGB(85, 255, 0)
DSpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
DSpeed_Finish.TextScaled = true
DSpeed_Finish.Position = UDim2.new(0, 8, 0.45, 0)
DSpeed_Finish.Visible = true
DSpeed_Finish.Font = ("Arcade")	

DSpeed_Finishh.Parent = gui.MainFramee
DSpeed_Finishh.Name = ("myas")
DSpeed_Finishh.Size = UDim2.new(0.25, 0, 0.15, 0)
DSpeed_Finishh.BackgroundTransparency = 0.1
DSpeed_Finishh.BorderSizePixel = 3
DSpeed_Finishh.BorderColor3 = Color3.fromRGB(85, 255, 0)
DSpeed_Finishh.Text = ("Mission 3")
DSpeed_Finishh.TextColor3 = Color3.fromRGB(85, 255, 0)
DSpeed_Finishh.BackgroundColor3 = Color3.fromRGB(0,0,0)
DSpeed_Finishh.TextScaled = true
DSpeed_Finishh.Position = UDim2.new(0, 8, 0.45, 0)
DSpeed_Finishh.Visible = true
DSpeed_Finishh.Font = ("Arcade")	

BSpeed_Finish.Parent = gui.MainFrame
BSpeed_Finish.Name = ("THE BUFFEREDAXY")
BSpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
BSpeed_Finish.BackgroundTransparency = 0.1
BSpeed_Finish.BorderSizePixel = 3
BSpeed_Finish.BorderColor3 = Color3.fromRGB(255, 0, 0)
BSpeed_Finish.Text = ("Auto TP To Souls Farm")
BSpeed_Finish.TextColor3 = Color3.fromRGB(255, 0, 0)
BSpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
BSpeed_Finish.TextScaled = true
BSpeed_Finish.Position = UDim2.new(0, 155, 0.25, 0)
BSpeed_Finish.Visible = true
BSpeed_Finish.Font = ("Arcade")

BSpeed_Finishh.Parent = gui.MainFramee
BSpeed_Finishh.Name = ("THE BUFFEREDAXY")
BSpeed_Finishh.Size = UDim2.new(0.25, 0, 0.15, 0)
BSpeed_Finishh.BackgroundTransparency = 0.1
BSpeed_Finishh.BorderSizePixel = 3
BSpeed_Finishh.BorderColor3 = Color3.fromRGB(255, 0, 0)
BSpeed_Finishh.Text = ("Mission 1")
BSpeed_Finishh.TextColor3 = Color3.fromRGB(255, 0, 0)
BSpeed_Finishh.BackgroundColor3 = Color3.fromRGB(0,0,0)
BSpeed_Finishh.TextScaled = true
BSpeed_Finishh.Position = UDim2.new(0, 155, 0.25, 0)
BSpeed_Finishh.Visible = true
BSpeed_Finishh.Font = ("Arcade")

CSpeed_Finish.Parent = gui.MainFrame
CSpeed_Finish.Name = ("DUSTETETETETERORRRRRRER")
CSpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
CSpeed_Finish.BackgroundTransparency = 0.1
CSpeed_Finish.BorderSizePixel = 3
CSpeed_Finish.BorderColor3 = Color3.fromRGB(198, 150, 0)
CSpeed_Finish.Text = ("Kill any mission or boss")
CSpeed_Finish.TextColor3 = Color3.fromRGB(218, 218, 5)
CSpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
CSpeed_Finish.TextScaled = true
CSpeed_Finish.Position = UDim2.new(0, 305, 0.25, 0)
CSpeed_Finish.Visible = true
CSpeed_Finish.Font = ("Arcade")

CSpeed_Finishh.Parent = gui.MainFramee
CSpeed_Finishh.Name = ("DUSTETETETETERORRRRRRER")
CSpeed_Finishh.Size = UDim2.new(0.25, 0, 0.15, 0)
CSpeed_Finishh.BackgroundTransparency = 0.1
CSpeed_Finishh.BorderSizePixel = 3
CSpeed_Finishh.BorderColor3 = Color3.fromRGB(198, 0, 0)
CSpeed_Finishh.Text = ("Mission 2")
CSpeed_Finishh.TextColor3 = Color3.fromRGB(218, 218, 5)
CSpeed_Finishh.BackgroundColor3 = Color3.fromRGB(0,0,0)
CSpeed_Finishh.TextScaled = true
CSpeed_Finishh.Position = UDim2.new(0, 305, 0.25, 0)
CSpeed_Finishh.Visible = true
CSpeed_Finishh.Font = ("Arcade")



ESpeed_Finish.Parent = gui.MainFrame
ESpeed_Finish.Name = ("realreal")
ESpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
ESpeed_Finish.BackgroundTransparency = 0.1
ESpeed_Finish.BorderSizePixel = 3
ESpeed_Finish.BorderColor3 = Color3.fromRGB(85, 255, 0)
ESpeed_Finish.Text = ("Spam Blue Soul")
ESpeed_Finish.TextColor3 = Color3.fromRGB(85, 255, 0)
ESpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
ESpeed_Finish.TextScaled = true
ESpeed_Finish.Position = UDim2.new(0, 155, 0.45, 0)
ESpeed_Finish.Visible = true
ESpeed_Finish.Font = ("Arcade")

ESpeed_Finishh.Parent = gui.MainFramee
ESpeed_Finishh.Name = ("realreal")
ESpeed_Finishh.Size = UDim2.new(0.25, 0, 0.15, 0)
ESpeed_Finishh.BackgroundTransparency = 0.1
ESpeed_Finishh.BorderSizePixel = 3
ESpeed_Finishh.BorderColor3 = Color3.fromRGB(85, 255, 0)
ESpeed_Finishh.Text = ("TP To Boss for Disbelief badge")
ESpeed_Finishh.TextColor3 = Color3.fromRGB(85, 255, 0)
ESpeed_Finishh.BackgroundColor3 = Color3.fromRGB(0,0,0)
ESpeed_Finishh.TextScaled = true
ESpeed_Finishh.Position = UDim2.new(0, 155, 0.45, 0)
ESpeed_Finishh.Visible = true
ESpeed_Finishh.Font = ("Arcade")

FSpeed_Finish.Parent = gui.MainFrame
FSpeed_Finish.Name = ("Grealreal")
FSpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
FSpeed_Finish.BackgroundTransparency = 0.1
FSpeed_Finish.BorderSizePixel = 3
FSpeed_Finish.BorderColor3 = Color3.fromRGB(255, 255, 255)
FSpeed_Finish.Text = ("One Time Spam")
FSpeed_Finish.TextColor3 = Color3.fromRGB(0, 255, 255)
FSpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
FSpeed_Finish.TextScaled = true
FSpeed_Finish.Position = UDim2.new(0, 305, 0.45, 0)
FSpeed_Finish.Visible = false
FSpeed_Finish.Font = ("Arcade")

FSpeed_Finishh.Parent = gui.MainFramee
FSpeed_Finishh.Name = ("Grealreal")
FSpeed_Finishh.Size = UDim2.new(0.25, 0, 0.15, 0)
FSpeed_Finishh.BackgroundTransparency = 0.1
FSpeed_Finishh.BorderSizePixel = 3
FSpeed_Finishh.BorderColor3 = Color3.fromRGB(255, 255, 255)
FSpeed_Finishh.Text = ("TP To Testing Area")
FSpeed_Finishh.TextColor3 = Color3.fromRGB(0, 255, 255)
FSpeed_Finishh.BackgroundColor3 = Color3.fromRGB(0,0,0)
FSpeed_Finishh.TextScaled = true
FSpeed_Finishh.Position = UDim2.new(0, 305, 0.45, 0)
FSpeed_Finishh.Visible = true
FSpeed_Finishh.Font = ("Arcade")

GSpeed_Finish.Parent = gui.MainFrame
GSpeed_Finish.Name = ("Grealreal")
GSpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
GSpeed_Finish.BackgroundTransparency = 0.1
GSpeed_Finish.BorderSizePixel = 3
GSpeed_Finish.BorderColor3 = Color3.fromRGB(99,99,99)
GSpeed_Finish.Text = ("Buff Hp")
GSpeed_Finish.TextColor3 = Color3.fromRGB(99,99,99)
GSpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
GSpeed_Finish.TextScaled = true
GSpeed_Finish.Position = UDim2.new(0, 8, 0.65, 0)
GSpeed_Finish.Visible = false
GSpeed_Finish.Font = ("Arcade")

GGSpeed_Finish.Parent = gui.MainFrame
GGSpeed_Finish.Name = ("Grealreal")
GGSpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
GGSpeed_Finish.BackgroundTransparency = 0.5
GGSpeed_Finish.BorderSizePixel = 3
GGSpeed_Finish.BorderColor3 = Color3.fromRGB(0,199,0)
GGSpeed_Finish.Text = ("Get Spectate Gui")
GGSpeed_Finish.TextColor3 = Color3.fromRGB(0,99,0)
GGSpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
GGSpeed_Finish.TextScaled = true
GGSpeed_Finish.Position = UDim2.new(0, 527, .15, 0)
GGSpeed_Finish.Visible = false
GGSpeed_Finish.Font = ("Arcade")


GDGSpeed_Finish.Parent = gui.MainFrame
GDGSpeed_Finish.Name = ("FUCKalreal")
GDGSpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
GDGSpeed_Finish.BackgroundTransparency = 0.5
GDGSpeed_Finish.BorderSizePixel = 3
GDGSpeed_Finish.BorderColor3 = Color3.fromRGB(0,0,255)
GDGSpeed_Finish.Text = ("FW")
GDGSpeed_Finish.TextColor3 = Color3.fromRGB(255,0,0)
GDGSpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
GDGSpeed_Finish.TextScaled = true
GDGSpeed_Finish.Position = UDim2.new(0, 671, .15, 0)
GDGSpeed_Finish.Visible = false
GDGSpeed_Finish.Font = ("Arcade")

GGGSpeed_Finish.Parent = gui.MainFrame
GGGSpeed_Finish.Name = ("Grealreal")
GGGSpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
GGGSpeed_Finish.BackgroundTransparency = 0.5
GGGSpeed_Finish.BorderSizePixel = 3
GGGSpeed_Finish.BorderColor3 = Color3.fromRGB(0,0,250)
GGGSpeed_Finish.Text = ("Speed = Math.Random(50,100)")
GGGSpeed_Finish.TextColor3 = Color3.fromRGB(0,0,255)
GGGSpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
GGGSpeed_Finish.TextScaled = true
GGGSpeed_Finish.Position = UDim2.new(0, 527, .32, 0)
GGGSpeed_Finish.Visible = false
GGGSpeed_Finish.Font = ("Arcade")

GGGGSpeed_Finish.Parent = gui.MainFrame
GGGGSpeed_Finish.Name = ("Grealreal")
GGGGSpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
GGGGSpeed_Finish.BackgroundTransparency = 0.5
GGGGSpeed_Finish.BorderSizePixel = 3
GGGGSpeed_Finish.BorderColor3 = Color3.fromRGB(250,250,250)
GGGGSpeed_Finish.Text = ("GOD MODE")
GGGGSpeed_Finish.TextColor3 = Color3.fromRGB(250,255,255)
GGGGSpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
GGGGSpeed_Finish.TextScaled = true
GGGGSpeed_Finish.Position = UDim2.new(0, 527, .5,0)
GGGGSpeed_Finish.Visible = false
GGGGSpeed_Finish.Font = ("Arcade")

gGSpeed_Finish.Parent = gui.MainFrame
gGSpeed_Finish.Name = ("Grealreal")
gGSpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
gGSpeed_Finish.BackgroundTransparency = 0.1
gGSpeed_Finish.BorderSizePixel = 3
gGSpeed_Finish.BorderColor3 = Color3.fromRGB(255,99,99)
gGSpeed_Finish.Text = ("AutoFarm Coins")
gGSpeed_Finish.TextColor3 = Color3.fromRGB(99,255,99)
gGSpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
gGSpeed_Finish.TextScaled = true
gGSpeed_Finish.Position = UDim2.new(0, 155, 0.65, 0)
gGSpeed_Finish.Visible = false
gGSpeed_Finish.Font = ("Arcade")
closetab.MouseButton1Click:Connect(function()
	frame.Visible = false
end)

closetabb.MouseButton1Click:Connect(function()
	framee.Visible = false
end)





minitab.MouseButton1Click:Connect(function()
	hotbar.Visible = true
	frame.Visible = false
	openmenu.Visible = true
end)

minitabb.MouseButton1Click:Connect(function()
	hotbar.Visible = true
	framee.Visible = false
	openmenuu.Visible = true
end)




openmenu.MouseButton1Click:Connect(function()
	frame.Visible = true
	openmenu.Visible = false
end)


openmenuu.MouseButton1Click:Connect(function()
	framee.Visible = true
	openmenuu.Visible = false
end)

Speed_Finish.MouseButton1Click:Connect(function()























	framee.Visible = true
end)








Speed_Finishh.MouseButton1Click:Connect(function()

	local TeleportService = game:GetService("TeleportService")
	local level1Id = 7821904286 -- Change "0" to the place ID


	local player = game.Players.LocalPlayer
	if player then
		TeleportService:Teleport(level1Id, player)
	end

end)





FSpeed_Finish.MouseButton1Click:Connect(function()
	--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
	for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren())do
		if v.ClassName == "Tool" then
			v.Parent = game:GetService("Players").LocalPlayer.Character
		end
	end
	for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren())do
		if v.ClassName == "Tool" then
			v:Activate()
		end
	end
end)
CSpeed_Finish.MouseButton1Click:Connect(function()























	sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 112412400000)
	sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", 112412400000)
	for i,d in pairs(game:GetService("Workspace"):GetDescendants()) do
		if d.ClassName == 'Humanoid' and d.Parent.Name ~= game.Players.LocalPlayer.Name then
			d.Health = 0
		end
	end




end)

FSpeed_Finishh.MouseButton1Click:Connect(function()
local TeleportService = game:GetService("TeleportService")
	local level1Id = 11069408744 -- Change "0" to the place ID


	local player = game.Players.LocalPlayer
	if player then
		TeleportService:Teleport(level1Id, player)
	end

end)


CSpeed_Finishh.MouseButton1Click:Connect(function()
local TeleportService = game:GetService("TeleportService")
	local level1Id = 8065738280 -- Change "0" to the place ID


	local player = game.Players.LocalPlayer
	if player then
		TeleportService:Teleport(level1Id, player)
	end
end)
DSpeed_Finish.MouseButton1Click:Connect(function()























game.Players.LocalPlayer.Character.HumanoidRootPart. CFrame = CFrame.new(1370.45154, -60.0966835, 254.532532, 0, 0, 1, 0, 1, -0, -1, 0, 0)




	
end)
DSpeed_Finishh.MouseButton1Click:Connect(function()

local TeleportService = game:GetService("TeleportService")
	local level1Id = 8747878640 -- Change "0" to the place ID


	local player = game.Players.LocalPlayer
	if player then
		TeleportService:Teleport(level1Id, player)
	end
end)
ESpeed_Finish.MouseButton1Click:Connect(function()
















while true do
wait(0.1)

game.Players.LocalPlayer.Character.Heart.Soul.FireBlue:FireServer()
game.Players.LocalPlayer.Character.Heart.Soul.FireBlue2:FireServer()
end


end)

ESpeed_Finishh.MouseButton1Click:Connect(function()

local TeleportService = game:GetService("TeleportService")
	local level1Id = 8107164608 -- Change "0" to the place ID


	local player = game.Players.LocalPlayer
	if player then
		TeleportService:Teleport(level1Id, player)
	end

end)
GSpeed_Finish.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
		8200.71777, 772.642883, -5380.16162, -9.53674316e-06, -0.0191621184, -0.999816418, 0.999999464, -0.00103521347, 1.03712082e-05, -0.00103524327, -0.999815881, 0.019162178)
	wait(6)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50




end)

gGSpeed_Finish.MouseButton1Click:Connect(function()


end)


BSpeed_Finish.MouseButton1Click:Connect(function()


































	while true do
		wait(.1)
		for i,v in pairs(game.Workspace:GetChildren()) do
			if v.Name == "Soul" then
				game.Players.LocalPlayer.Character.HumanoidRootPart. CFrame = v.Heart.CFrame
			end
		end
	end
end)

BSpeed_Finishh.MouseButton1Click:Connect(function()

	local TeleportService = game:GetService("TeleportService")
	local level1Id = 8059900607 -- Change "0" to the place ID


	local player = game.Players.LocalPlayer
	if player then
		TeleportService:Teleport(level1Id, player)
	end
end)

GGSpeed_Finish.MouseButton1Click:Connect(function()

	local x = game.ReplicatedFirst.REF:Clone() x.Parent = game.Players.LocalPlayer.PlayerGui
end)
GGGSpeed_Finish.MouseButton1Click:Connect(function()

	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = math.random(50,100)

end)

GDGSpeed_Finish.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(412.874725, 772.434509, -27058.3164, 9.47713852e-06, 0.0191621184, 0.999816418, 0.999999464, -0.00103521347, 1.03712082e-05, 0.00103524327, 0.999815881, -0.019162178)
end)

GGGGSpeed_Finish.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart. CFrame = CFrame.new(206.424911, 867.730713, -5385.64209, 0, 0, -1, -1, 0, 0, 0, 1, 0)
	wait(1)
	local x = game.Players. LocalPlayer.Character. HumanoidRootPart. CFrame
	wait(1)
	game.Players.LocalPlayer.Character.HumanoidRootPart. CFrame = CFrame.new(130.147705, 771.247375, -5329.77686, -0.00100660324, -0.999815822, 0.0191653259, 0.999999523, -0.00100660324, 9.64663923e-06, 9.64663923e-06, 0.0191653259, 0.999816298)

	wait(2)
	game.Players.LocalPlayer.Character.HumanoidRootPart. CFrame = CFrame.new(-66.211853, 20, -66.9095764, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	game.Players.LocalPlayer.Character.Chesta:Remove()
end)

while true do
	if openmenu.Visible == false and frame.Visible == true and openmenuu.Visible == false and framee.Visible == true and hotbar.Visible == true then
		hotbar.Visible = false
		wait(0.01)
	end


	wait(0.01)
end



