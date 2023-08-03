if game.CoreGui:FindFirstChild("TPUi") then
	game.CoreGui["TPUi"]:Destroy()
end





local TPUi = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local UICorner = Instance.new("UICorner")
local Label = Instance.new("TextLabel")
local Username = Instance.new("TextBox")
local TPBtn = Instance.new("TextButton")



TPUi.Name = "TPUi"
TPUi.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Main.Name = "Main"
Main.Parent = TPUi
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BorderColor3 = Color3.fromRGB(27, 42, 53)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.321721375, 0, 0.310954064, 0)
Main.Size = UDim2.new(0, 233, 0, 214)
Main.Active = true
Main.Draggable = true

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(116, 137, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(237, 102, 109))}
UIGradient.Parent = Main

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Main

Label.Name = "Label"
Label.Parent = Main
Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1.000
Label.Size = UDim2.new(0, 233, 0, 41)
Label.Font = Enum.Font.GothamMedium
Label.Text = "TP to Player"
Label.TextColor3 = Color3.fromRGB(0, 0, 0)
Label.TextScaled = true
Label.TextSize = 14.000
Label.TextWrapped = true

Username.Name = "Username"
Username.Parent = Main
Username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Username.BackgroundTransparency = 0.750
Username.BorderSizePixel = 0
Username.Position = UDim2.new(0.0987124443, 0, 0.233644858, 0)
Username.Size = UDim2.new(0, 196, 0, 50)
Username.Font = Enum.Font.GothamMedium
Username.Text = "Put Username Here!"
Username.TextColor3 = Color3.fromRGB(0, 0, 0)
Username.TextScaled = true
Username.TextSize = 14.000
Username.TextWrapped = true
Username.ClearTextOnFocus = false

TPBtn.Name = "TPBtn"
TPBtn.Parent = Main
TPBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TPBtn.BackgroundTransparency = 0.750
TPBtn.BorderSizePixel = 0
TPBtn.Position = UDim2.new(0.0987124443, 0, 0.532710314, 0)
TPBtn.Size = UDim2.new(0, 196, 0, 50)
TPBtn.Font = Enum.Font.GothamMedium
TPBtn.Text = "Teleport!"
TPBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
TPBtn.TextScaled = true
TPBtn.TextSize = 14.000
TPBtn.TextWrapped = true

TPBtn.MouseButton1Click:Connect(function()
	local username = string.lower(Username.Text)
	local foundChild = false
	local child
	for i,v in pairs(game.Players:GetChildren()) do
		if string.lower(v.Name) == username then
			foundChild = true
			child = v
		end
	end
	if foundChild == true then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = child.Character.HumanoidRootPart.CFrame
	end
end)