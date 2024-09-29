-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local SIMPLE = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local DARK = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.153082699, 0, 0.0330319889, 0)
Frame.Size = UDim2.new(0, 272, 0, 521)

UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 267, 0, 50)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "GRANDMASTER PHONE"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

SIMPLE.Name = "SIMPLE"
SIMPLE.Parent = Frame
SIMPLE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SIMPLE.BorderColor3 = Color3.fromRGB(0, 0, 0)
SIMPLE.BorderSizePixel = 0
SIMPLE.Position = UDim2.new(0.0452239104, 0, 0.652591169, 0)
SIMPLE.Size = UDim2.new(0, 246, 0, 151)
SIMPLE.Font = Enum.Font.Unknown
SIMPLE.Text = "SIMPLESPY"
SIMPLE.TextColor3 = Color3.fromRGB(0, 0, 0)
SIMPLE.TextScaled = true
SIMPLE.TextSize = 14.000
SIMPLE.TextWrapped = true

UICorner_2.Parent = SIMPLE

DARK.Name = "DARK"
DARK.Parent = Frame
DARK.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DARK.BorderColor3 = Color3.fromRGB(0, 0, 0)
DARK.BorderSizePixel = 0
DARK.Position = UDim2.new(0.0489003807, 0, 0.107485607, 0)
DARK.Size = UDim2.new(0, 245, 0, 151)
DARK.Font = Enum.Font.Unknown
DARK.Text = "DARK DEX [KEY]"
DARK.TextColor3 = Color3.fromRGB(0, 0, 0)
DARK.TextScaled = true
DARK.TextSize = 14.000
DARK.TextWrapped = true

UICorner_3.Parent = DARK

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0477941185, 0, 0.429942429, 0)
TextLabel_2.Size = UDim2.new(0, 245, 0, 103)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "This script is only used if you wanna create scripts or have more access to client side."
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

-- Scripts:

local function YXVI_fake_script() -- SIMPLE.LocalScript 
	local script = Instance.new('LocalScript', SIMPLE)

	script.Parent.MouseButton1Down:connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
	end)
end
coroutine.wrap(YXVI_fake_script)()
local function LVUKZDX_fake_script() -- DARK.LocalScript 
	local script = Instance.new('LocalScript', DARK)

	script.Parent.MouseButton1Down:connect(function()
		local __function = 
			loadstring(game:HttpGet("https://github.com/Hosvile/DEX-Explorer/releases/latest/download/main.lua", true))
		__function(__function)
	end)
end
coroutine.wrap(LVUKZDX_fake_script)()
