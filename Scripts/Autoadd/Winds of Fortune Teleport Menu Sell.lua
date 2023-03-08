local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.68409425, 0, 0.166666672, 0)
Frame.Size = UDim2.new(0, 135, 0, 164)
Frame.Visible = true
Frame.Active = true
Frame.Draggable = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
TextLabel.Size = UDim2.new(0, 135, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "SR Winds of Fortune"
TextLabel.TextColor3 = Color3.fromRGB(244, 18, 2)
TextLabel.TextSize = 14.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
TextButton.Position = UDim2.new(0, 0, 0.170731708, 0)
TextButton.Size = UDim2.new(0, 135, 0, 30)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Shipwreck lagoon"
TextButton.TextColor3 = Color3.fromRGB(19, 236, 52)
TextButton.TextSize = 14.000
TextButton.MouseButton1Down:connect(function()
 local oh1 = CFrame.new(1682.439453125, 141.14059448242188, 2276.848388671875)
 local oh2 = game:GetService("Players")
 local oh3 = oh2.LocalPlayer.Character.HumanoidRootPart


 oh3.CFrame = oh1
end)

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
TextButton_2.Position = UDim2.new(0, 0, 0.353658557, 0)
TextButton_2.Size = UDim2.new(0, 135, 0, 30)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Moonrise Cove"
TextButton_2.TextColor3 = Color3.fromRGB(19, 236, 52)
TextButton_2.TextSize = 14.000
TextButton_2.MouseButton1Down:connect(function()
 local oh1 = CFrame.new(-3906.735107421875, 23.600296020507812, 4391.38427734375)
 local oh2 = game:GetService("Players")
 local oh3 = oh2.LocalPlayer.Character.HumanoidRootPart


 oh3.CFrame = oh1
end)

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
TextButton_3.Position = UDim2.new(0, 0, 0.536585391, 0)
TextButton_3.Size = UDim2.new(0, 135, 0, 30)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "castaway cave"
TextButton_3.TextColor3 = Color3.fromRGB(19, 236, 52)
TextButton_3.TextSize = 14.000
TextButton_3.MouseButton1Down:connect(function()
 local oh1 = CFrame.new(268.74957275390625, 18.162860870361328, -209.33583068847656)
 local oh2 = game:GetService("Players")
 local oh3 = oh2.LocalPlayer.Character.HumanoidRootPart


 oh3.CFrame = oh1
end)

TextButton_4.Parent = Frame
TextButton_4.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
TextButton_4.Position = UDim2.new(0, 0, 0.719512224, 0)
TextButton_4.Size = UDim2.new(0, 135, 0, 46)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "SELL"
TextButton_4.TextColor3 = Color3.fromRGB(226, 236, 36)
TextButton_4.TextSize = 14.000
TextButton_4.MouseButton1Down:connect(function()
 local oh1 = CFrame.new(443.52935791015625, 10.957088470458984, 280.8420715332031)
 local oh2 = game:GetService("Players")
 local oh3 = oh2.LocalPlayer.Character.HumanoidRootPart


 oh3.CFrame = oh1
end)