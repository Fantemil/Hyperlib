-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local ImageLabel_2 = Instance.new("ImageLabel")
local UICorner_3 = Instance.new("UICorner")
local ImageLabel_3 = Instance.new("ImageLabel")
local ImageLabel_4 = Instance.new("ImageLabel")
local TextBox = Instance.new("TextBox")
local ImageLabel_5 = Instance.new("ImageLabel")
local ImageButton = Instance.new("ImageButton")
local ImageButton_2 = Instance.new("ImageButton")
local ImageButton_3 = Instance.new("ImageButton")
local ImageButton_4 = Instance.new("ImageButton")
local ImageLabel_6 = Instance.new("ImageLabel")
local ImageButton_5 = Instance.new("ImageButton")
local ImageLabel_7 = Instance.new("ImageLabel")
local ImageLabel_8 = Instance.new("ImageLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(14, 15, 17)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.278866261, 0, 0.283302516, 0)
Frame.Size = UDim2.new(0, 699, 0, 386)

UICorner.Parent = Frame

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(14, 15, 17)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.00858369097, 0, 0, 0)
ImageLabel.Size = UDim2.new(0, 171, 0, 42)
ImageLabel.Image = "http://www.roblox.com/asset/?id=17759881034"

UICorner_2.Parent = ImageLabel

ImageLabel_2.Parent = Frame
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(0, 0, 1.03217149, 0)
ImageLabel_2.Size = UDim2.new(0, 697, 0, 94)
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=17759895453"

UICorner_3.Parent = ImageLabel_2

ImageLabel_3.Parent = Frame
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_3.BorderSizePixel = 0
ImageLabel_3.Position = UDim2.new(0.0611620806, 0, 0.111111112, 0)
ImageLabel_3.Size = UDim2.new(0, 183, 0, 335)
ImageLabel_3.Image = "http://www.roblox.com/asset/?id=17759907127"

ImageLabel_4.Parent = Frame
ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_4.BorderSizePixel = 0
ImageLabel_4.Position = UDim2.new(0, 0, 0.134048253, 0)
ImageLabel_4.Size = UDim2.new(0, 36, 0, 115)
ImageLabel_4.Image = "http://www.roblox.com/asset/?id=17759916680"

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(14, 15, 17)
TextBox.BorderColor3 = Color3.fromRGB(25, 25, 26)
TextBox.BorderSizePixel = 2
TextBox.Position = UDim2.new(0.337643683, 0, 0.191043049, 0)
TextBox.Size = UDim2.new(0, 390, 0, 265)
TextBox.Font = Enum.Font.FredokaOne
TextBox.PlaceholderText = "-- Wave  --"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(50, 122, 173)
TextBox.TextSize = 14.000
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

ImageLabel_5.Parent = Frame
ImageLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_5.BorderColor3 = Color3.fromRGB(25, 25, 26)
ImageLabel_5.BorderSizePixel = 2
ImageLabel_5.Position = UDim2.new(0.900440216, 0, 0.191043049, 0)
ImageLabel_5.Size = UDim2.new(0, 68, 0, 265)
ImageLabel_5.Image = "http://www.roblox.com/asset/?id=17759984921"

ImageButton.Parent = Frame
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.93561846, 0, 0.899831653, 0)
ImageButton.Size = UDim2.new(0, 29, 0, 30)
ImageButton.Image = "http://www.roblox.com/asset/?id=17759926866"

ImageButton_2.Parent = Frame
ImageButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton_2.BorderSizePixel = 0
ImageButton_2.Position = UDim2.new(0.882973671, 0, 0.899831653, 0)
ImageButton_2.Size = UDim2.new(0, 29, 0, 30)
ImageButton_2.Image = "http://www.roblox.com/asset/?id=17759927910"

ImageButton_3.Parent = Frame
ImageButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton_3.BorderSizePixel = 0
ImageButton_3.Position = UDim2.new(0.78278482, 0, 0.900270462, 0)
ImageButton_3.Size = UDim2.new(0, 29, 0, 30)
ImageButton_3.Image = "http://www.roblox.com/asset/?id=17759929952"

ImageButton_4.Parent = Frame
ImageButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton_4.BorderSizePixel = 0
ImageButton_4.Position = UDim2.new(0.833725154, 0, 0.899557471, 0)
ImageButton_4.Size = UDim2.new(0, 29, 0, 30)
ImageButton_4.Image = "http://www.roblox.com/asset/?id=17759954103"

ImageLabel_6.Parent = Frame
ImageLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_6.BorderSizePixel = 0
ImageLabel_6.Position = UDim2.new(0.323275864, 0, 0.422279805, 0)
ImageLabel_6.Size = UDim2.new(0, 10, 0, 60)
ImageLabel_6.Image = "http://www.roblox.com/asset/?id=17760000296"

ImageButton_5.Parent = Frame
ImageButton_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton_5.BorderSizePixel = 0
ImageButton_5.Position = UDim2.new(0.936781585, 0, 0.0155440411, 0)
ImageButton_5.Size = UDim2.new(0, 30, 0, 30)
ImageButton_5.Image = "http://www.roblox.com/asset/?id=17760037435"

ImageLabel_7.Parent = Frame
ImageLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_7.BorderSizePixel = 0
ImageLabel_7.Position = UDim2.new(0.801724136, 0, 0.0155440411, 0)
ImageLabel_7.Size = UDim2.new(0, 86, 0, 36)
ImageLabel_7.Image = "http://www.roblox.com/asset/?id=17760046403"

ImageLabel_8.Parent = Frame
ImageLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_8.BorderSizePixel = 0
ImageLabel_8.Position = UDim2.new(0.336194575, 0, 0.165136307, 0)
ImageLabel_8.Size = UDim2.new(0, 81, 0, -21)
ImageLabel_8.Image = "http://www.roblox.com/asset/?id=17760086503"

-- Scripts:

local function QTWHE_fake_script() -- ImageButton.LocalScript 
	local script = Instance.new('LocalScript', ImageButton)

	local button = script.Parent
	local textbox = script.Parent.Parent.TextBox
	button.MouseButton1Click:Connect(function()
		loadstring(textbox.Text)()
	end)
end
coroutine.wrap(QTWHE_fake_script)()
local function HAHIIIF_fake_script() -- ImageButton_2.LocalScript 
	local script = Instance.new('LocalScript', ImageButton_2)

	local button = script.Parent
	local textbox = script.Parent.Parent.TextBox
	button.MouseButton1Click:Connect(function()
		textbox.Text = ""
	end)
end
coroutine.wrap(HAHIIIF_fake_script)()
local function ROQWEMO_fake_script() -- ImageButton_5.LocalScript 
	local script = Instance.new('LocalScript', ImageButton_5)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.Visible = false
	end)
end
coroutine.wrap(ROQWEMO_fake_script)()
local function QUZRZKI_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	script.Parent.Draggable = true
	script.Parent.Active = true
end
coroutine.wrap(QUZRZKI_fake_script)()
