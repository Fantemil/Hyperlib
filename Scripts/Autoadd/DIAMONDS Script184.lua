local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local Gems = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local EnterGems = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local AutoRain = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0931305513, 0, 0.156882584, 0)
Frame.Size = UDim2.new(0.176896796, 0, 0.541497946, 0)

UICorner.Parent = Frame

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0.224299058, 0)
ScrollingFrame.Size = UDim2.new(0.999999881, 0, 0.716822565, 0)

Gems.Name = "Gems"
Gems.Parent = ScrollingFrame
Gems.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Gems.BorderColor3 = Color3.fromRGB(0, 0, 0)
Gems.BorderSizePixel = 0
Gems.Size = UDim2.new(0.921097636, 0, 0.102998793, 0)
Gems.Font = Enum.Font.SourceSans
Gems.Text = "Get Gems (Free)"
Gems.TextColor3 = Color3.fromRGB(0, 0, 0)
Gems.TextSize = 14.000

UICorner_2.CornerRadius = UDim.new(1, 0)
UICorner_2.Parent = Gems

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

EnterGems.Name = "EnterGems"
EnterGems.Parent = ScrollingFrame
EnterGems.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EnterGems.BorderColor3 = Color3.fromRGB(0, 0, 0)
EnterGems.BorderSizePixel = 0
EnterGems.Size = UDim2.new(0.921000004, 0, 0.103, 0)
EnterGems.Font = Enum.Font.SourceSans
EnterGems.Text = "Enter Number Gems"
EnterGems.TextColor3 = Color3.fromRGB(0, 0, 0)
EnterGems.TextSize = 14.000

UICorner_3.CornerRadius = UDim.new(1, 0)
UICorner_3.Parent = EnterGems

AutoRain.Name = "AutoRain"
AutoRain.Parent = ScrollingFrame
AutoRain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoRain.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoRain.BorderSizePixel = 0
AutoRain.Size = UDim2.new(0.921097636, 0, 0.102998793, 0)
AutoRain.Font = Enum.Font.SourceSans
AutoRain.Text = "Auto Free Block Rain (OFF)"
AutoRain.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoRain.TextSize = 14.000

UICorner_4.CornerRadius = UDim.new(1, 0)
UICorner_4.Parent = AutoRain

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-1.84249288e-07, 0, -3.56513752e-08, 0)
TextLabel.Size = UDim2.new(1.00000024, 0, 0.170093477, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Merge for DIAMONDS! | SCRIPT"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 17.000

-- Scripts:
local AutoRainHacks = false

Gems.MouseButton1Click:Connect(function()
	local args = {
		[1] = EnterGems.Text
	}

	game:GetService("ReplicatedStorage").Remotes.GemEvent:FireServer(unpack(args))
end)

AutoRain.MouseButton1Click:Connect(function()
	if AutoRainHacks == false then
		AutoRainHacks = true
		AutoRain.Text = "Auto Free Block Rain (ON)"
		repeat
			game:GetService("ReplicatedStorage").Remotes.RainEvent:FireServer()
			wait(0.1)
		until AutoRainHacks == false
	else
		AutoRainHacks = false
		AutoRain.Text = "Auto Free Block Rain (OFF)"
	end
end)