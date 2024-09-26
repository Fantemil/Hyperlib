-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 4
Frame.Position = UDim2.new(0.264546633, 0, 0.0977891162, 0)
Frame.Size = UDim2.new(0, 353, 0, 268)

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0508474559, 0, 0, 0)
ImageLabel.Size = UDim2.new(0, 335, 0, 264)
ImageLabel.Image = "rbxassetid://16000894791"

TextLabel.Parent = ImageLabel
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.0535797104, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 352, 0, 26)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "team8x8x8x8 fe bypass gui"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = TextLabel
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 4
TextLabel_2.Position = UDim2.new(0, 0, 8.19515991, 0)
TextLabel_2.Size = UDim2.new(0, 352, 0, 50)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "made by team8x8x8x8 on youtube"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextButton.Parent = ImageLabel
TextButton.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 3
TextButton.Position = UDim2.new(-0.0295544975, 0, 0.549201369, 0)
TextButton.Size = UDim2.new(0, 335, 0, 44)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "speed"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

-- Scripts:

local function TRJFCAF_fake_script() -- TextButton.Script 
	local script = Instance.new('Script', TextButton)

	script.Parent.MouseButton1Down:Connect(function()
		for i,p in pairs(game:GetService("Players"):GetChildren()) do
			if p.ClassName == "Player" then
				p.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 100
			end
	
		end
	end)
end
coroutine.wrap(TRJFCAF_fake_script)()
local function GELU_fake_script() -- Frame.Script 
	local script = Instance.new('Script', Frame)

	script.Parent.Active = true
	script.Parent.Draggable = true
	
end
coroutine.wrap(GELU_fake_script)()
