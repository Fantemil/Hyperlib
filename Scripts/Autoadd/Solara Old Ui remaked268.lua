-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local ImageButton = Instance.new("ImageButton")
local ImageButton_2 = Instance.new("ImageButton")
local ImageLabel = Instance.new("ImageLabel")
local ImageButton_3 = Instance.new("ImageButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(4, 6, 7)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.275600851, 0, 0.206984282, 0)
Frame.Size = UDim2.new(0, 656, 0, 417)

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Frame

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
TextBox.BorderColor3 = Color3.fromRGB(44, 24, 54)
TextBox.BorderSizePixel = 2
TextBox.Position = UDim2.new(0.0506511778, 0, 0.158509031, 0)
TextBox.Size = UDim2.new(0, 588, 0, 291)
TextBox.Font = Enum.Font.Roboto
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(101, 35, 118)
TextBox.TextSize = 20.000
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

ImageButton.Parent = Frame
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BackgroundTransparency = 10.000
ImageButton.BorderColor3 = Color3.fromRGB(17735578440, 17735578440, 17735578440)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.0491268337, 0, 0.880658388, 0)
ImageButton.Size = UDim2.new(0, 47, 0, 47)
ImageButton.Image = "http://www.roblox.com/asset/?id=17735583313"

ImageButton_2.Parent = Frame
ImageButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton_2.BackgroundTransparency = 10.000
ImageButton_2.BorderColor3 = Color3.fromRGB(17735578440, 17735578440, 17735578440)
ImageButton_2.BorderSizePixel = 0
ImageButton_2.Position = UDim2.new(0.127351671, 0, 0.880658448, 0)
ImageButton_2.Size = UDim2.new(0, 47, 0, 47)
ImageButton_2.Image = "http://www.roblox.com/asset/?id=17735600356"

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.363627732, 0, 0.00982800964, 0)
ImageLabel.Size = UDim2.new(0, 177, 0, 55)
ImageLabel.Image = "http://www.roblox.com/asset/?id=17735478175"

ImageButton_3.Parent = Frame
ImageButton_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton_3.BackgroundTransparency = 10.000
ImageButton_3.BorderColor3 = Color3.fromRGB(17735578440, 17735578440, 17735578440)
ImageButton_3.BorderSizePixel = 0
ImageButton_3.Position = UDim2.new(0.946992636, 0, 0.00842255168, 0)
ImageButton_3.Size = UDim2.new(0, 26, 0, 27)
ImageButton_3.Image = "http://www.roblox.com/asset/?id=17737230355"

-- Scripts:

local function IUKNLDW_fake_script() -- ImageButton.LocalScript 
	local script = Instance.new('LocalScript', ImageButton)

	local button = script.Parent
	local textbox = script.Parent.Parent.TextBox
	button.MouseButton1Click:Connect(function()
		loadstring(textbox.Text)()
	end)
end
coroutine.wrap(IUKNLDW_fake_script)()
local function NBXE_fake_script() -- ImageButton_2.LocalScript 
	local script = Instance.new('LocalScript', ImageButton_2)

	local button = script.Parent
	local textbox = script.Parent.Parent.TextBox
	button.MouseButton1Click:Connect(function()
		textbox.Text = ""
	end)
end
coroutine.wrap(NBXE_fake_script)()
local function QUCWRVX_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	script.Parent.Draggable = true
	script.Parent.Active = true
end
coroutine.wrap(QUCWRVX_fake_script)()
local function HTVQ_fake_script() -- ImageButton_3.LocalScript 
	local script = Instance.new('LocalScript', ImageButton_3)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.Visible = false
	end)
end
coroutine.wrap(HTVQ_fake_script)()
