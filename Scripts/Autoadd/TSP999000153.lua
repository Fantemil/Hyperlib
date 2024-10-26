-- Gui to Lua
-- Version: 3.6

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local Frame2 = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")

-- Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(89, 89, 89)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.367818326, 0, 0.299930662, 0)
Frame.Size = UDim2.new(0, 368, 0, 236)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 368, 0, 26)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "GETREKT UI REQUIRE FE BYPASS"
TextLabel.TextColor3 = Color3.fromRGB(177, 33, 4)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.888586938, 0, 0.347457618, 0)
TextButton.Size = UDim2.new(0, 41, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Credits"
TextButton.TextColor3 = Color3.fromRGB(0, 219, 223)
TextButton.TextScaled = true
TextButton.TextSize = 9.000
TextButton.TextWrapped = true
TextButton.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://github.com/tfoeofficial/e/blob/main/e2",true))()
end)


TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.201086953, 0, 0.347457618, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 82)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "serious x SS"
TextButton_2.TextColor3 = Color3.fromRGB(188, 29, 1)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true
TextButton_2.MouseButton1Down:connect(function()
	loadstring("game:HttpGet("https://pastebin.com/raw/6fEPTRXQ"))()
end)


TextButton_3.Parent = ScreenGui
TextButton_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.00582298124, 0, 0.455963939, 0)
TextButton_3.Size = UDim2.new(0, 58, 0, 50)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Toggle UI"
TextButton_3.TextColor3 = Color3.fromRGB(182, 5, 5)
TextButton_3.TextSize = 14.000
TextButton_3.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://github.com/tfoeofficial/e/blob/main/e",true))()
end)


Frame2.Name = "Frame2"
Frame2.Parent = ScreenGui
Frame2.BackgroundColor3 = Color3.fromRGB(89, 89, 89)
Frame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BorderSizePixel = 0
Frame2.Position = UDim2.new(0.13684006, 0, 0.324202508, 0)
Frame2.Size = UDim2.new(0, 217, 0, 222)

TextLabel_2.Parent = Frame2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(0, 217, 0, 50)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Credits to S33dedL0rdz for the ss executor"
TextLabel_2.TextColor3 = Color3.fromRGB(173, 29, 3)
TextLabel_2.TextSize = 25.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = Frame2
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0, 0, 0.225225225, 0)
TextLabel_3.Size = UDim2.new(0, 217, 0, 50)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Credits to me for making this lol"
TextLabel_3.TextColor3 = Color3.fromRGB(149, 0, 0)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 29.000
TextLabel_3.TextWrapped = true