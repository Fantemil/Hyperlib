-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local TextLabel = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.31266883, 0, 0.284458846, 0)
Frame.Size = UDim2.new(0, 545, 0, 308)

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(0, 1, 10)
TextBox.BorderColor3 = Color3.fromRGB(246, 79, 78)
TextBox.BorderSizePixel = 3
TextBox.Position = UDim2.new(0.0477064215, 0, 0.191558436, 0)
TextBox.Size = UDim2.new(0, 505, 0, 204)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.357798159, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 155, 0, 52)
TextLabel.Font = Enum.Font.Bangers
TextLabel.Text = "TIKTOK RIZZ EXECUTOR"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 46.000

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0165137611, 0, 0, 0)
ImageLabel.Size = UDim2.new(0, 64, 0, 52)
ImageLabel.Image = "http://www.roblox.com/asset/?id=17688243392"

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Frame

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(17, 24, 51)
TextButton.BorderColor3 = Color3.fromRGB(232, 41, 83)
TextButton.BorderSizePixel = 3
TextButton.Position = UDim2.new(0.0477064215, 0, 0.883116901, 0)
TextButton.Size = UDim2.new(0, 77, 0, 25)
TextButton.Font = Enum.Font.Bangers
TextButton.Text = "HACK"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 20.000

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(17, 24, 51)
TextButton_2.BorderColor3 = Color3.fromRGB(32, 234, 231)
TextButton_2.BorderSizePixel = 3
TextButton_2.Position = UDim2.new(0.216513768, 0, 0.883116901, 0)
TextButton_2.Size = UDim2.new(0, 77, 0, 25)
TextButton_2.Font = Enum.Font.Bangers
TextButton_2.Text = "CLEAR"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 20.000

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(0, 1, 10)
TextButton_3.BorderColor3 = Color3.fromRGB(232, 41, 83)
TextButton_3.BorderSizePixel = 3
TextButton_3.Position = UDim2.new(0.897247732, 0, 0.0259740259, 0)
TextButton_3.Size = UDim2.new(0, 36, 0, 36)
TextButton_3.Font = Enum.Font.Bangers
TextButton_3.Text = "X"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextSize = 20.000

-- Scripts:

local function XFNSM_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local button = script.Parent
	local textbox = script.Parent.Parent.TextBox
	button.MouseButton1Click:Connect(function()
		loadstring(textbox.Text)()
	end)
end
coroutine.wrap(XFNSM_fake_script)()
local function LBNPFX_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	local button = script.Parent
	local textbox = script.Parent.Parent.TextBox
	button.MouseButton1Click:Connect(function()
		textbox.Text = ""
	end)
end
coroutine.wrap(LBNPFX_fake_script)()
local function GQGW_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	script.Parent.Draggable = true
	script.Parent.Active = true
end
coroutine.wrap(GQGW_fake_script)()
local function OLFMJBN_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextButton_3)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.Visible = false
	end)
end
coroutine.wrap(OLFMJBN_fake_script)()
