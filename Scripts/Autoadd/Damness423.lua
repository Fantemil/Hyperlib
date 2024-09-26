local ligma = Instance.new("ScreenGui")
local Frame1 = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local Frame2 = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local close = Instance.new("TextButton")
local open = Instance.new("TextButton")
local ImageLabel_2 = Instance.new("ImageLabel")
local ImageLabellogo = Instance.new("ImageLabel")

--Properties:

ligma.Name = "ligma"
ligma.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ligma.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame1.Name = "Frame1"
Frame1.Parent = ligma
Frame1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame1.Position = UDim2.new(0.30743438, 0, 0.282051295, 0)
Frame1.Size = UDim2.new(0, 500, 0, 362)

ImageLabel.Parent = Frame1
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Size = UDim2.new(0, 34, 0, 19)
ImageLabel.Image = "http://www.roblox.com/asset/?id=11433745796"



TextLabel.Parent = Frame1
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0340000018, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 19)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "ligma"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton.Parent = Frame1
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0, 0, 0.795518219, 0)
TextButton.Size = UDim2.new(0, 500, 0, 73)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "click here to enable output"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.TextXAlignment = Enum.TextXAlignment.Left
TextButton.TextYAlignment = Enum.TextYAlignment.Top

Frame2.Name = "Frame2"
Frame2.Parent = Frame1
Frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame2.BorderSizePixel = 0
Frame2.ClipsDescendants = true
Frame2.Position = UDim2.new(0, 9, 0, 19)
Frame2.Size = UDim2.new(0, 429, 0, 252)

TextBox.Parent = Frame2
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BorderSizePixel = 0
TextBox.Size = UDim2.new(0, 417, 0, 259)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.Code
TextBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.PlaceholderText = "--scripts in here"
TextBox.Text = "yes"
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 14.000
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

TextLabel_2.Parent = Frame1
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.Position = UDim2.new(0, 0, 0.0532212928, 0)
TextLabel_2.Size = UDim2.new(0, 448, 0, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = ""
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextSize = 14.000

TextButton_2.Parent = Frame1
TextButton_2.BackgroundColor3 = Color3.fromRGB(227, 227, 227)
TextButton_2.BorderColor3 = Color3.fromRGB(171, 171, 171)
TextButton_2.Position = UDim2.new(0.895128608, 0, 0.309394538, 0)
TextButton_2.Size = UDim2.new(0, 44, 0, 93)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Clear"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 19.000
TextButton_2.TextWrapped = true

TextButton_3.Parent = Frame1
TextButton_3.BackgroundColor3 = Color3.fromRGB(227, 227, 227)
TextButton_3.BorderColor3 = Color3.fromRGB(171, 171, 171)
TextButton_3.Position = UDim2.new(0.895128608, 0, 0.0501077287, 0)
TextButton_3.Size = UDim2.new(0, 44, 0, 93)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Exe"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 19.000
TextButton_3.TextWrapped = true
TextButton_3.MouseButton1Down:connect(function()
loadstring(Frame2.TextBox.Text)()
TextButton_4.Parent = Frame1
TextButton_4.BackgroundColor3 = Color3.fromRGB(227, 227, 227)
TextButton_4.BorderColor3 = Color3.fromRGB(171, 171, 171)
TextButton_4.Position = UDim2.new(0.895128548, 0, 0.5686813, 0)
TextButton_4.Size = UDim2.new(0, 44, 0, 80)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "Inject"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextSize = 19.000
TextButton_4.TextWrapped = true

close.Name = "close"
close.Parent = Frame1
close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close.BackgroundTransparency = 1.000
close.BorderColor3 = Color3.fromRGB(255, 255, 255)
close.Position = UDim2.new(0.924000025, 0, 0, 0)
close.Size = UDim2.new(0, 38, 0, 19)
close.Font = Enum.Font.SourceSans
close.Text = "X"
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextScaled = true
close.TextSize = 14.000
close.TextWrapped = true
close.MouseButton1Down:connect(function()
	Frame1.Visible = false
	open.Visible = true
end)

open.Name = "open"
open.Parent = ligma
open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
open.BackgroundTransparency = 1.000
open.Position = UDim2.new(0.0101485094, 0, 0.863715291, 0)
open.Size = UDim2.new(0, 104, 0, 102)
open.Font = Enum.Font.SourceSans
open.TextColor3 = Color3.fromRGB(0, 0, 0)
open.TextSize = 14.000
open.MouseButton1Down:connect(function()
	Frame1.Visible = true
	open.Visible = true
end)

ImageLabel_2.Parent = open
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.Position = UDim2.new(-0.0626758412, 0, -0.0868973061, 0)
ImageLabel_2.Size = UDim2.new(0, 121, 0, 125)
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=11434894130"

ImageLabellogo.Name = "ImageLabel.logo"
ImageLabellogo.Parent = ligma
ImageLabellogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabellogo.BackgroundTransparency = 1.000
ImageLabellogo.Position = UDim2.new(0.00626395131, 0, 0.852351785, 0)
ImageLabellogo.Size = UDim2.new(0, 121, 0, 125)
ImageLabellogo.Image = "http://www.roblox.com/asset/?id=11434840574"

-- Scripts:

local function MVSYJA_fake_script() -- Frame1.LocalScript 
	local script = Instance.new('LocalScript', Frame1)

	frame = script.Parent.DraggableFrame
	frame.Draggable = true
	frame.Selectable = true
	frame.Active = true
end
coroutine.wrap(MVSYJA_fake_script)()
local function OFSGJ_fake_script() -- open.LocalScript 
	local script = Instance.new('LocalScript', open)

	local Frame = script.Parent

	while true do
		wait(0.01)
		Frame.Rotation = Frame.Rotation + 1
	end
end
coroutine.wrap(OFSGJ_fake_script)()