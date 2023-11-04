local SpoofMain = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local SpoofBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local SpoofBtn = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")

--Properties:

SpoofMain.Name = "SpoofMain"
SpoofMain.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
SpoofMain.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = SpoofMain
Main.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.395873308, 0, 0.377450973, 0)
Main.Size = UDim2.new(0, 260, 0, 119)
Main.Active = true
Main.Draggable = true

UICorner.CornerRadius = UDim.new(0, 22)
UICorner.Parent = Main

SpoofBox.Name = "SpoofBox"
SpoofBox.Parent = Main
SpoofBox.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
SpoofBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
SpoofBox.BorderSizePixel = 0
SpoofBox.Position = UDim2.new(0.0461538471, 0, 0.0586542711, 0)
SpoofBox.Size = UDim2.new(0, 235, 0, 50)
SpoofBox.Font = Enum.Font.PermanentMarker
SpoofBox.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
SpoofBox.PlaceholderText = "Enter Message Name"
SpoofBox.Text = ""
SpoofBox.TextColor3 = Color3.fromRGB(0, 0, 0)
SpoofBox.TextScaled = true
SpoofBox.TextSize = 14.000
SpoofBox.TextStrokeColor3 = Color3.fromRGB(0, 229, 255)
SpoofBox.TextStrokeTransparency = 0.000
SpoofBox.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 22)
UICorner_2.Parent = SpoofBox

SpoofBtn.Name = "SpoofBtn"
SpoofBtn.Parent = Main
SpoofBtn.BackgroundColor3 = Color3.fromRGB(107, 107, 107)
SpoofBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
SpoofBtn.BorderSizePixel = 0
SpoofBtn.Position = UDim2.new(0.0461538471, 0, 0.529411793, 0)
SpoofBtn.Size = UDim2.new(0, 234, 0, 50)
SpoofBtn.Font = Enum.Font.PermanentMarker
SpoofBtn.Text = "Spoof Message"
SpoofBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
SpoofBtn.TextSize = 41.000
SpoofBtn.TextStrokeColor3 = Color3.fromRGB(255, 148, 148)
SpoofBtn.TextStrokeTransparency = 0.000
SpoofBtn.TextWrapped = true
SpoofBtn.MouseButton1Down:Connect(function()
	local args = {
		[1] = SpoofBox.Text,
		[2] = "All"
	}

	game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
end)

UICorner_3.CornerRadius = UDim.new(0, 22)
UICorner_3.Parent = SpoofBtn