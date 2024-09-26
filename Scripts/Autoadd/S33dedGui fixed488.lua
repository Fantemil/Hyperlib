--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- Made By S33dedL0rdz 
-- Version: 8.2
-- Created:April 4 2024

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local _1x = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Walk = Instance.new("TextButton")
local Tp = Instance.new("TextButton")
local Ear = Instance.new("TextButton")
local Prison = Instance.new("TextButton")
local Inf = Instance.new("TextButton")
local Fates = Instance.new("TextButton")
local Fling = Instance.new("TextButton")
local Replicate = Instance.new("TextButton")
local Son = Instance.new("TextButton")
local Fe = Instance.new("TextLabel")
local Among = Instance.new("TextButton")
local Neko = Instance.new("TextButton")
local Cursed = Instance.new("TextButton")
local Open = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(255, 0, 0)
Frame.BorderSizePixel = 3
Frame.Position = UDim2.new(0.347860962, 0, 0.115878113, 0)
Frame.Size = UDim2.new(0, 389, 0, 522)
Frame.Visible = false
Frame.Active = true
Frame.Draggable = true

_1x.Name = "1x"
_1x.Parent = Frame
_1x.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_1x.BorderColor3 = Color3.fromRGB(102, 0, 0)
_1x.BorderSizePixel = 3
_1x.Size = UDim2.new(0, 389, 0, 40)
_1x.Font = Enum.Font.SourceSans
_1x.Text = "S33dedGui v8.2 Revival"
_1x.TextColor3 = Color3.fromRGB(255, 0, 4)
_1x.TextSize = 43.000

Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderColor3 = Color3.fromRGB(102, 0, 0)
Close.BorderSizePixel = 3
Close.Position = UDim2.new(0, 0, 0.93798089, 0)
Close.Size = UDim2.new(0, 389, 0, 32)
Close.Font = Enum.Font.SourceSans
Close.Text = "Close Gui"
Close.TextColor3 = Color3.fromRGB(255, 0, 0)
Close.TextSize = 33.000

Walk.Name = "Walk"
Walk.Parent = Frame
Walk.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Walk.BorderColor3 = Color3.fromRGB(102, 0, 0)
Walk.BorderSizePixel = 3
Walk.Position = UDim2.new(0.0154241649, 0, 0.111111112, 0)
Walk.Size = UDim2.new(0, 170, 0, 32)
Walk.Font = Enum.Font.SourceSans
Walk.Text = "Walk On Walls"
Walk.TextColor3 = Color3.fromRGB(255, 0, 0)
Walk.TextSize = 25.000
Walk.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://pastebin.com/raw/RY9cBbdG'))()
end)

Tp.Name = "Tp"    
Tp.Parent = Frame
Tp.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Tp.BorderColor3 = Color3.fromRGB(102, 0, 0)
Tp.BorderSizePixel = 3
Tp.Position = UDim2.new(0.541080415, 0, 0.111111112, 0)
Tp.Size = UDim2.new(0, 170, 0, 32)
Tp.Font = Enum.Font.SourceSans
Tp.Text = "Tp Tool"
Tp.TextColor3 = Color3.fromRGB(255, 0, 0)
Tp.TextSize = 25.000
Tp.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/tyreltrijo/Click/main/Tp'))()
end)

Ear.Name = "Ear"
Ear.Parent = Frame
Ear.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Ear.BorderColor3 = Color3.fromRGB(102, 0, 0)
Ear.BorderSizePixel = 3
Ear.Position = UDim2.new(0.541080415, 0, 0.233716473, 0)
Ear.Size = UDim2.new(0, 170, 0, 32)
Ear.Font = Enum.Font.SourceSans
Ear.Text = "Earrape Gui Fe"
Ear.TextColor3 = Color3.fromRGB(255, 0, 0)
Ear.TextSize = 25.000
Ear.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://pastebin.com/raw/pkATeDp4'))()
end)

Prison.Name = "Prison"
Prison.Parent = Frame
Prison.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Prison.BorderColor3 = Color3.fromRGB(102, 0, 0)
Prison.BorderSizePixel = 3
Prison.Position = UDim2.new(0.0140881538, 0, 0.233716473, 0)
Prison.Size = UDim2.new(0, 170, 0, 32)
Prison.Font = Enum.Font.SourceSans
Prison.Text = "Prison Ruiner Admin"
Prison.TextColor3 = Color3.fromRGB(255, 0, 0)
Prison.TextSize = 19.000
Prison.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://pastebin.com/raw/1RvgFtcx'))()
end)

Inf.Name = "Inf"
Inf.Parent = Frame
Inf.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Inf.BorderColor3 = Color3.fromRGB(102, 0, 0)
Inf.BorderSizePixel = 3
Inf.Position = UDim2.new(0.541080415, 0, 0.356321841, 0)
Inf.Size = UDim2.new(0, 170, 0, 32)
Inf.Font = Enum.Font.SourceSans
Inf.Text = "Inf Yield Admin"
Inf.TextColor3 = Color3.fromRGB(255, 0, 0)
Inf.TextSize = 25.000
Inf.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

Fates.Name = "Fates"
Fates.Parent = Frame
Fates.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Fates.BorderColor3 = Color3.fromRGB(102, 0, 0)
Fates.BorderSizePixel = 3
Fates.Position = UDim2.new(0.0140881538, 0, 0.356321841, 0)
Fates.Size = UDim2.new(0, 170, 0, 32)
Fates.Font = Enum.Font.SourceSans
Fates.Text = "Fates Admin"
Fates.TextColor3 = Color3.fromRGB(255, 0, 0)
Fates.TextSize = 25.000
Fates.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
end)

Fling.Name = "Fling"
Fling.Parent = Frame
Fling.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Fling.BorderColor3 = Color3.fromRGB(102, 0, 0)
Fling.BorderSizePixel = 3
Fling.Position = UDim2.new(0.541080415, 0, 0.482758641, 0)
Fling.Size = UDim2.new(0, 170, 0, 32)
Fling.Font = Enum.Font.SourceSans
Fling.Text = "Fling Gui"
Fling.TextColor3 = Color3.fromRGB(255, 0, 0)
Fling.TextSize = 25.000
Fling.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/saMtiek2",true))()
end)

Replicate.Name = "Replicate"
Replicate.Parent = Frame
Replicate.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Replicate.BorderColor3 = Color3.fromRGB(102, 0, 0)
Replicate.BorderSizePixel = 3
Replicate.Position = UDim2.new(0.0140881538, 0, 0.482758641, 0)
Replicate.Size = UDim2.new(0, 170, 0, 32)
Replicate.Font = Enum.Font.SourceSans
Replicate.Text = "Replicate Gui"
Replicate.TextColor3 = Color3.fromRGB(255, 0, 0)
Replicate.TextSize = 25.000
Replicate.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://pastebin.com/raw/rM0LU2mJ'))()
end)

Son.Name = "Son"
Son.Parent = Frame
Son.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Son.BorderColor3 = Color3.fromRGB(102, 0, 0)
Son.BorderSizePixel = 3
Son.Position = UDim2.new(0.541080415, 0, 0.681992352, 0)
Son.Size = UDim2.new(0, 170, 0, 32)
Son.Font = Enum.Font.SourceSans
Son.Text = "Kill All"
Son.TextColor3 = Color3.fromRGB(255, 0, 0)
Son.TextSize = 25.000
Son.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/json/allkil/main/kill'))()
end)

Fe.Name = "Fe"
Fe.Parent = Frame
Fe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Fe.BorderColor3 = Color3.fromRGB(102, 0, 0)
Fe.BorderSizePixel = 3
Fe.Position = UDim2.new(0, 0, 0.586919904, 0)
Fe.Size = UDim2.new(0, 389, 0, 33)
Fe.Font = Enum.Font.SourceSans
Fe.Text = "-- Bypassed Scripts --"
Fe.TextColor3 = Color3.fromRGB(255, 0, 0)
Fe.TextSize = 31.000

Among.Name = "Among"
Among.Parent = Frame
Among.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Among.BorderColor3 = Color3.fromRGB(102, 0, 0)
Among.BorderSizePixel = 3
Among.Position = UDim2.new(0.0140881538, 0, 0.681992352, 0)
Among.Size = UDim2.new(0, 170, 0, 32)
Among.Font = Enum.Font.SourceSans
Among.Text = "S33dedGui v33"
Among.TextColor3 = Color3.fromRGB(255, 0, 0)
Among.TextSize = 25.000
Among.MouseButton1Down:connect(function()
Print('Yo cant')
end)
Neko.Name = "Neko"
Neko.Parent = Frame
Neko.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Neko.BorderColor3 = Color3.fromRGB(102, 0, 0)
Neko.BorderSizePixel = 3
Neko.Position = UDim2.new(0.541080415, 0, 0.798850596, 0)
Neko.Size = UDim2.new(0, 170, 0, 32)
Neko.Font = Enum.Font.SourceSans
Neko.Text = "Maid(Sus)"
Neko.TextColor3 = Color3.fromRGB(255, 0, 0)
Neko.TextSize = 25.000
Neko.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/tyreltrijo/nek/main/NekoMaid'))()
end)

Cursed.Name = "Cursed"
Cursed.Parent = Frame
Cursed.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Cursed.BorderColor3 = Color3.fromRGB(102, 0, 0)
Cursed.BorderSizePixel = 3
Cursed.Position = UDim2.new(0.0140881538, 0, 0.798850596, 0)
Cursed.Size = UDim2.new(0, 170, 0, 32)
Cursed.Font = Enum.Font.SourceSans
Cursed.Text = "CADmin"
Cursed.TextColor3 = Color3.fromRGB(255, 0, 0)
Cursed.TextSize = 25.000
Cursed.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/S33dedL0rdz/CADmin'))()
end)

Open.Name = "Open"
Open.Parent = ScreenGui
Open.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Open.BorderColor3 = Color3.fromRGB(102, 0, 0)
Open.BorderSizePixel = 3
Open.Position = UDim2.new(0.241171211, 0, 0.452777773, 0)
Open.Size = UDim2.new(0, 62, 0, 50)
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextColor3 = Color3.fromRGB(255, 0, 0)
Open.TextSize = 22.000
Open.Draggable = true

-- Scripts:

local function DKDOT_fake_script() -- Close.LocalScript 
	local script = Instance.new('LocalScript', Close)

	local Frame = script.Parent.Parent
	
	script.Parent.MouseButton1Click:Connect(function()
		Frame.Visible = false
	end)
	
end
coroutine.wrap(DKDOT_fake_script)()
local function AOKPLWW_fake_script() -- Open.LocalScript 
	local script = Instance.new('LocalScript', Open)

	local Frame = script.Parent.Parent.Frame
	
	script.Parent.MouseButton1Click:Connect(function()
		Frame.Visible = true
	end)
	
end
coroutine.wrap(AOKPLWW_fake_script)()