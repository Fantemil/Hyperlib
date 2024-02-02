-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel2 = Instance.new("TextLabel")
local TextLabel1 = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel3 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.374365479, 0, 0.160485029, 0)
Frame.Size = UDim2.new(0, 474, 0, 298)
Frame.Active = true
Frame.Draggable = true

TextLabel2.Name = "TextLabel2"
TextLabel2.Parent = Frame
TextLabel2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextLabel2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel2.BorderSizePixel = 0
TextLabel2.Position = UDim2.new(-0.00059283938, 0, -0.00122070312, 0)
TextLabel2.Size = UDim2.new(0, 474, 0, 50)
TextLabel2.Font = Enum.Font.SourceSans
TextLabel2.Text = "GRANDMASTER.OLO RADGOLL - - KEY"
TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel2.TextSize = 30.000

TextLabel1.Name = "TextLabel1"
TextLabel1.Parent = Frame
TextLabel1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextLabel1.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel1.BorderSizePixel = 0
TextLabel1.Position = UDim2.new(0.138647661, 0, 0.247101441, 0)
TextLabel1.Size = UDim2.new(0, 342, 0, 50)
TextLabel1.Font = Enum.Font.SourceSans
TextLabel1.Text = "This key leads access to the script."
TextLabel1.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel1.TextSize = 30.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.138647661, 0, 0.367906809, 0)
TextLabel.Size = UDim2.new(0, 342, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "The key is permanent"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 30.000

TextLabel3.Name = "TextLabel3"
TextLabel3.Parent = Frame
TextLabel3.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextLabel3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel3.BorderSizePixel = 0
TextLabel3.Position = UDim2.new(0.138647661, 0, 0.512202144, 0)
TextLabel3.Size = UDim2.new(0, 342, 0, 50)
TextLabel3.Font = Enum.Font.SourceSans
TextLabel3.Text = "One Step Key - Work Ink"
TextLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel3.TextSize = 30.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0485232063, 0, 0.755033553, 0)
TextButton.Size = UDim2.new(0, 435, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "GET SCRIPT"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 30.000

-- Scripts:

local function HIPBMHR_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	setclipboard("https://work.ink/1Toe/RADGOLLENGINE")
end
coroutine.wrap(HIPBMHR_fake_script)()