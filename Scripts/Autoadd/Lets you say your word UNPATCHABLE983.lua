-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui",game.CoreGui)
local Frame = Instance.new("ImageLabel")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")

--Properties:

Frame.Name = "Frame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.683067977, 0, 0.604828477, 0)
Frame.Size = UDim2.new(0, 260, 0, 111)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(67, 67, 67)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.050

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
TextBox.Position = UDim2.new(0.084615387, 0, 0.107438013, 0)
TextBox.Size = UDim2.new(0, 216, 0, 45)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.PlaceholderText = "Message"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 14.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
TextButton.Position = UDim2.new(0.235384613, 0, 0.598064303, 0)
TextButton.Size = UDim2.new(0, 136, 0, 35)
TextButton.Font = Enum.Font.SciFi
TextButton.Text = "Bypass"
TextButton.TextColor3 = Color3.fromRGB(255, 143, 58)
TextButton.TextSize = 30.000
TextButton.TextWrapped = true

-- Scripts:

local function JXBX_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	script.Parent.Active = true
	script.Parent.Draggable = true
	script.Parent.TextButton.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(script.Parent.TextBox.Text, "All")
	end)
end
coroutine.wrap(JXBX_fake_script)()
