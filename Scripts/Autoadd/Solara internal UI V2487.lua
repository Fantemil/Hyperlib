-- Gui to Lua
-- Version: 3.2

-- Instances:

local Hackerepik = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local TextBox = Instance.new("TextBox")
local Execute = Instance.new("ImageButton")
local CLEAR = Instance.new("ImageButton")

--Properties:

Hackerepik.Name = "Hacker epik"
Hackerepik.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Hackerepik.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = Hackerepik
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.327823907, 0, 0.302729517, 0)
Frame.Size = UDim2.new(0, 481, 0, 266)

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Size = UDim2.new(0, 189, 0, 48)
ImageLabel.Image = "http://www.roblox.com/asset/?id=18224528814"

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.103950106, 0, 0.229323313, 0)
TextBox.Size = UDim2.new(0, 365, 0, 154)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = "hi"
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000

Execute.Name = "Execute"
Execute.Parent = Frame
Execute.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
Execute.BorderSizePixel = 0
Execute.Position = UDim2.new(0, 0, 0.834586442, 0)
Execute.Size = UDim2.new(0, 55, 0, 44)
Execute.Image = "rbxassetid://18224532618"

CLEAR.Name = "CLEAR"
CLEAR.Parent = Frame
CLEAR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CLEAR.BorderColor3 = Color3.fromRGB(0, 0, 0)
CLEAR.BorderSizePixel = 0
CLEAR.Position = UDim2.new(0.114345111, 0, 0.857142866, 0)
CLEAR.Size = UDim2.new(0, 55, 0, 38)
CLEAR.Image = "rbxassetid://18224535693"

-- Scripts:

local function CRGSCLB_fake_script() -- Execute.LocalScript 
	local script = Instance.new('LocalScript', Execute)

	local button = script.Parent
	local textbox = script.Parent.Parent.TextBox
	button.MouseButton1Click:Connect(function()
		loadstring(textbox.Text)()
	end)
end
coroutine.wrap(CRGSCLB_fake_script)()
local function KSLNIKM_fake_script() -- CLEAR.LocalScript 
	local script = Instance.new('LocalScript', CLEAR)

	local button = script.Parent
	local textbox = script.Parent.Parent.TextBox
	button.MouseButton1Click:Connect(function()
		textbox.Text = ""
	end)
end
coroutine.wrap(KSLNIKM_fake_script)()
local function LPTAEJY_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	script.Parent.Draggable = true
	script.Parent.Active = true
end
coroutine.wrap(LPTAEJY_fake_script)()
