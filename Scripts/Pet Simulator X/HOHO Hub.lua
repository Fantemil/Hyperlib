if game.CoreGui:FindFirstChild("Hoho_Hub") then game.CoreGui:FindFirstChild("Hoho_Hub"):Destroy() end
--[[
local Drop = Instance.new("ScreenGui")
local Drop_2 = Instance.new("ImageLabel")
local Clound = Instance.new("ImageLabel")
local GG = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")

Drop.Name = "Drop"
Drop.Parent = game.CoreGui
Drop.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Drop_2.Name = "Drop"
Drop_2.Parent = Drop
Drop_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Drop_2.BackgroundTransparency = 1.000
Drop_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Drop_2.Position = UDim2.new(0.241050124, 0, 0.562204719, 0)
Drop_2.Size = UDim2.new(0.0509148762, 0, 0.100787401, 0)
Drop_2.Visible = false
Drop_2.Image = "rbxassetid://4987600247"
Drop_2.ImageColor3 = Color3.fromRGB(0, 255, 255)

Clound.Name = "Clound"
Clound.Parent = Drop
Clound.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Clound.BackgroundTransparency = 1.000
Clound.Position = UDim2.new(-0.0716600791, 0, -0.0929134041, 0)
Clound.Size = UDim2.new(1.07159901, 0, 0.278740168, 0)
Clound.Image = "rbxassetid://7574606641"
Clound.ImageColor3 = Color3.fromRGB(66, 66, 66)
Clound.ImageTransparency = 1
Clound.ZIndex = 2

GG.Name = "GG"
GG.Parent = Drop
GG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GG.BackgroundTransparency = 1.000
GG.Position = UDim2.new(0.174224347, 0, 0.236220479, 0)
GG.Size = UDim2.new(0.651551306, 0, 0.502362192, 0)
GG.ZIndex = 3
GG.Font = Enum.Font.LuckiestGuy
GG.Text = "HOHO HUB"
GG.TextColor3 = Color3.fromRGB(255, 255, 255)
GG.TextScaled = true
GG.TextSize = 100.000
GG.TextStrokeTransparency = 0.500
GG.TextTransparency = 1.000
GG.TextWrapped = true
GG.ZIndex = 3

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 170, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(170, 255, 255))}
UIGradient.Rotation = 80
UIGradient.Parent = GG

function make_drop()
	local rl = tonumber("0."..math.random(0, 95))
	local top = tonumber(0)
	local last = tonumber(1.2)
	local rain = Drop_2:Clone()
	rain.Parent = Drop
	rain.Position = UDim2.new(rl,0,top,0)
	rain.Visible = true
	local speed = math.random(3,8)
	game:GetService("TweenService"):Create(rain, TweenInfo.new(speed), {Position = UDim2.new(rl,0,last,0)}):Play()
	game.Debris:AddItem(rain, speed)
end

game:GetService("TweenService"):Create(Clound, TweenInfo.new(1), {ImageTransparency = 0}):Play()
wait(1)
for i = 1, math.random(60,80) do
	make_drop()
	wait(0.1)
end
game:GetService("TweenService"):Create(Clound, TweenInfo.new(1), {ImageTransparency = 1}):Play()
game:GetService("TweenService"):Create(GG, TweenInfo.new(1), {TextTransparency = 0}):Play()
wait(2)
game:GetService("TweenService"):Create(GG, TweenInfo.new(1), {TextTransparency = 1}):Play()
wait(1)
local LoadUI = Instance.new("ScreenGui")
local SUCCESS = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local IN = Instance.new("Frame")
local LOAD = Instance.new("Frame")
local LOGO = Instance.new("TextLabel")
local Drop = Instance.new("ImageLabel")
local TOTEXT = Instance.new("TextLabel")

LoadUI.Name = "LoadUI"
LoadUI.Parent = game.CoreGui
LoadUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

SUCCESS.Name = "SUCCESS"
SUCCESS.Parent = LoadUI
SUCCESS.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
SUCCESS.Position = UDim2.new(0.344470978, 0, 0.349606305, 0)
SUCCESS.Size = UDim2.new(0.311058074, 0, 0.299212605, 0)

UICorner.Parent = SUCCESS

IN.Name = "IN"
IN.Parent = SUCCESS
IN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
IN.BackgroundTransparency = 0.500
IN.BorderSizePixel = 0
IN.Position = UDim2.new(0, 0, 0.542105258, 0)
IN.Size = UDim2.new(1, 0, 0.147368416, 0)
IN.ZIndex = 2

LOAD.Name = "LOAD"
LOAD.Parent = SUCCESS
LOAD.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
LOAD.BorderSizePixel = 0
LOAD.Position = UDim2.new(0, 0, 0.542105258, 0)
LOAD.Size = UDim2.new(0.0639386177, 0, 0.147368416, 0)
LOAD.ZIndex = 3

LOGO.Name = "LOGO"
LOGO.Parent = SUCCESS
LOGO.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LOGO.BackgroundTransparency = 1.000
LOGO.Position = UDim2.new(0.414322257, 0, 0.231578946, 0)
LOGO.Size = UDim2.new(0.299232751, 0, 0.263157904, 0)
LOGO.Font = Enum.Font.LuckiestGuy
LOGO.Text = "Hoho"
LOGO.TextColor3 = Color3.fromRGB(255, 255, 255)
LOGO.TextScaled = true
LOGO.TextSize = 14.000
LOGO.TextWrapped = true

Drop.Name = "Drop"
Drop.Parent = SUCCESS
Drop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Drop.BackgroundTransparency = 1.000
Drop.BorderColor3 = Color3.fromRGB(27, 42, 53)
Drop.Position = UDim2.new(0.28187114, 0, 0.163157895, 0)
Drop.Size = UDim2.new(0.132856071, 0, 0.262992293, 0)
Drop.Image = "rbxassetid://4987600247"
Drop.ImageColor3 = Color3.fromRGB(0, 255, 255)

TOTEXT.Name = "TOTEXT"
TOTEXT.Parent = SUCCESS
TOTEXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TOTEXT.BackgroundTransparency = 1.000
TOTEXT.Position = UDim2.new(0.166240424, 0, 0.768421054, 0)
TOTEXT.Size = UDim2.new(0.667519152, 0, 0.157894731, 0)
TOTEXT.Font = Enum.Font.SourceSans
TOTEXT.Text = "Loading"
TOTEXT.TextColor3 = Color3.fromRGB(255, 255, 255)
TOTEXT.TextScaled = true
TOTEXT.TextSize = 14.000
TOTEXT.TextWrapped = true

TOTEXT.Text = "Check Game"
wait(1)
TOTEXT.Text = "Check Game ..."
game:GetService("TweenService"):Create(SUCCESS, TweenInfo.new(0.5), {Size = UDim2.new(0,0,0,0)}):Play()
wait(1)
game:GetService("TweenService"):Create(LOAD, TweenInfo.new(1), {Size = UDim2.new(0.629, 0,0.147, 0)}):Play()
if not game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled == false then
	TOTEXT.Text = "You Device is: PC"
else
	TOTEXT.Text = "You Device is: Mobile"
end
wait(2)
TOTEXT.Text = "Welcome "..game.Players.LocalPlayer.Name.."!"
wait(1)
TOTEXT.Text = "Complete"
game:GetService("TweenService"):Create(LOAD, TweenInfo.new(1), {Size = UDim2.new(1, 0,0.147, 0)}):Play()
wait(1)
game:GetService("TweenService"):Create(SUCCESS, TweenInfo.new(0.5), {Size = UDim2.new(0,0,0,0)}):Play()
wait(.5)
LoadUI:Destroy()
local Discord = Instance.new("ScreenGui")
local DIS = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local LOGODIS = Instance.new("TextLabel")
local Drop = Instance.new("ImageLabel")
local DISTEXT = Instance.new("TextLabel")
local CoppyDis = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Never = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")

--Properties:

Discord.Name = "Discord"
Discord.Parent = game.CoreGui
Discord.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

DIS.Name = "DIS"
DIS.Parent = Discord
DIS.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
DIS.Position = UDim2.new(-1, 0, 0.66299212, 0)
--DIS.Position = UDim2.new(0.031026274, 0, 0.66299212, 0)
DIS.Size = UDim2.new(0.311058074, 0, 0.299212605, 0)

UICorner.Parent = DIS

LOGODIS.Name = "LOGODIS"
LOGODIS.Parent = DIS
LOGODIS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LOGODIS.BackgroundTransparency = 1.000
LOGODIS.Position = UDim2.new(0.414322257, 0, 0.231578946, 0)
LOGODIS.Size = UDim2.new(0.299232751, 0, 0.263157904, 0)
LOGODIS.Font = Enum.Font.LuckiestGuy
LOGODIS.Text = "Hoho"
LOGODIS.TextColor3 = Color3.fromRGB(255, 255, 255)
LOGODIS.TextScaled = true
LOGODIS.TextSize = 14.000
LOGODIS.TextWrapped = true

Drop.Name = "Drop"
Drop.Parent = DIS
Drop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Drop.BackgroundTransparency = 1.000
Drop.BorderColor3 = Color3.fromRGB(27, 42, 53)
Drop.Position = UDim2.new(0.28187114, 0, 0.163157895, 0)
Drop.Size = UDim2.new(0.132856071, 0, 0.262992293, 0)
Drop.Image = "rbxassetid://4987600247"
Drop.ImageColor3 = Color3.fromRGB(0, 255, 255)

DISTEXT.Name = "DISTEXT"
DISTEXT.Parent = DIS
DISTEXT.BackgroundColor3 = Color3.fromRGB(117, 117, 117)
DISTEXT.BackgroundTransparency = 0.700
DISTEXT.Position = UDim2.new(0, 0, 0.49473685, 0)
DISTEXT.Size = UDim2.new(1, 0, 0.157894731, 0)
DISTEXT.Font = Enum.Font.SourceSans
DISTEXT.Text = "Discord: https://discord.gg/6GV2dDWXdn"
DISTEXT.TextColor3 = Color3.fromRGB(255, 255, 255)
DISTEXT.TextScaled = true
DISTEXT.TextSize = 14.000
DISTEXT.TextWrapped = true

CoppyDis.Name = "CoppyDis"
CoppyDis.Parent = DIS
CoppyDis.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
CoppyDis.Position = UDim2.new(0.0613810755, 0, 0.705263197, 0)
CoppyDis.Size = UDim2.new(0.432225078, 0, 0.221052632, 0)
CoppyDis.Font = Enum.Font.SourceSans
CoppyDis.Text = "Copy"
CoppyDis.TextColor3 = Color3.fromRGB(0, 0, 0)
CoppyDis.TextScaled = true
CoppyDis.TextSize = 14.000
CoppyDis.TextWrapped = true

UICorner_2.Parent = CoppyDis

Never.Name = "Never"
Never.Parent = DIS
Never.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Never.Position = UDim2.new(0.516624033, 0, 0.705263197, 0)
Never.Size = UDim2.new(0.432225078, 0, 0.221052632, 0)
Never.Font = Enum.Font.SourceSans
Never.Text = "Nevermind"
Never.TextColor3 = Color3.fromRGB(0, 0, 0)
Never.TextScaled = true
Never.TextSize = 14.000
Never.TextWrapped = true

UICorner_3.Parent = Never
game:GetService("TweenService"):Create(DIS, TweenInfo.new(0.5), {Position = UDim2.new(0.031026274, 0, 0.66299212, 0)}):Play()
wait(0.5)
local click = false
Never.MouseButton1Click:Connect(function()
	if click == false then
		click = true
		game:GetService("TweenService"):Create(DIS, TweenInfo.new(0.5), {Size = UDim2.new(0,0,0,0)}):Play()
		wait(0.5)
		Discord:Destroy()
    		Drop:Destroy()
	end
end)
CoppyDis.MouseButton1Click:Connect(function()
	if click == false then
		click = true
    		pcall(function()
		  setclipboard("https://discord.gg/6GV2dDWXdn")
	  	end)
		CoppyDis.Text = "Copied"
		wait(0.5)
		game:GetService("TweenService"):Create(DIS, TweenInfo.new(0.5), {Size = UDim2.new(0,0,0,0)}):Play()
		wait(0.5)
		Discord:Destroy()
    		Drop:Destroy()
	end
end)
]]































wait()
function pe_Button()
local ui = Instance.new("ScreenGui")
ui.Name = "Toggle HOHO"
ui.Parent = game.CoreGui
ui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local OPENCLOSE = Instance.new("TextButton")
OPENCLOSE.Name = "Button"
OPENCLOSE.Parent = ui
OPENCLOSE.BackgroundColor3 = Color3.fromRGB(0, 0, 102)
OPENCLOSE.BorderSizePixel = 0
OPENCLOSE.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
OPENCLOSE.Size = UDim2.new(0.0447916649, 0, 0.0845824406, 0)
OPENCLOSE.Text = "Toggle"
OPENCLOSE.TextColor3 = Color3.fromRGB(255, 255, 255)
OPENCLOSE.TextScaled = true
OPENCLOSE.TextSize = 14.000
OPENCLOSE.TextWrapped = true
Instance.new("UICorner",OPENCLOSE)
OPENCLOSE.MouseButton1Click:Connect(function()
	pcall(function()
		game.CoreGui:FindFirstChild("Hoho_Hub").Enabled = not game.CoreGui:FindFirstChild("Hoho_Hub").Enabled
	end)
end)
end
if game.PlaceId == 7449423635 or game.PlaceId == 2753915549 or game.PlaceId == 4442272183 then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/BloxFruitFree.lua"))()
end
if game.PlaceId == 4520749081 or game.PlaceId == 6381829480 or game.PlaceId == 5931540094 then
	loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/KingPiece.lua'))()
end
if game.PlaceId == 1240123653 or game.PlaceId == 1632210982 then
	loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/ZombieAtack.lua'))()
end
if game.PlaceId == 6284583030 then
if not game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled == false then
	loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/PetSim10.lua'))()
else
	loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/PetXfolder/PetSimXMobile.lua'))()
end
end
if game.PlaceId == 6299805723 then
	loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/anime%20fighters%20simulator.lua'))()
end
if game.PlaceId == 5303541547 then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AlongNgu/alonebruh/main/twoPiecehoho.lua"))()
end
if game.PlaceId == 7655489843 then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AlongNgu/alonebruh/main/ABXHohoTRASHVCL.lua"))()
end
if game.PlaceId == 198116126 then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/TradeLands.lua"))()
	pcall(function()
		repeat wait() until game.CoreGui:FindFirstChild("Hoho_Hub")
		game.CoreGui:FindFirstChild("Hoho_Hub").Button.Text = "HoHo Loaded"
	end)
end
if workspace:FindFirstChild('.Ignore') then
	loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/elementBattlegr.lua'))()
end
repeat wait() until game.CoreGui:FindFirstChild("Hoho_Hub")
wait(1)
pe_Button()
game:GetService("UserInputService").InputBegan:Connect(function(input, chat)
	if not chat and input.KeyCode == Enum.KeyCode.RightControl then
		pcall(function()
			game.CoreGui:FindFirstChild("Hoho_Hub").Enabled = not game.CoreGui:FindFirstChild("Hoho_Hub").Enabled
		end)
	end
end)