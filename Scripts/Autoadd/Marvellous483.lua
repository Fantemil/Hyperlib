local Activater = false

game:GetService("UserInputService").InputBegan:Connect(function(inp, typing)
	if typing == false then
		if inp.KeyCode == Enum.KeyCode.Z then
			if Activater == false then
				Activater = true
			elseif Activater == true then
				Activater = false
			end
		end
	end
end)

game:GetService("RunService").Heartbeat:Connect(function()
	if Activater == true then
		game:GetService("ReplicatedStorage").Characters.Pibby.Remotes.Glitch:FireServer()
		task.wait(0.1)

	else

	end
end)

local Notification = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Frame_3 = Instance.new("Frame")
local TextButton = Instance.new("TextButton")

Notification.Name = "Notification"
Notification.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Notification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Notification.IgnoreGuiInset = true
Notification.ResetOnSpawn = false

Frame.Parent = Notification
Frame.BackgroundColor3 = Color3.fromRGB(22, 24, 26)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.862713695, 0, 0.913538158, 0)
Frame.Size = UDim2.new(0.130341887, 0, 0.0728100091, 0)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.140638739, 0, 0.119329877, 0)
TextLabel.Size = UDim2.new(0.716335654, 0, 0.75802201, 0)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = "Be Miles morales and press B to start!"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UICorner.CornerRadius = UDim.new(0.200000003, 0)
UICorner.Parent = Frame

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(14, 16, 17)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.88524586, 0, 0, 0)
Frame_2.Size = UDim2.new(0.11491812, 0, 1.00000012, 0)

UICorner_2.CornerRadius = UDim.new(0.400000006, 0)
UICorner_2.Parent = Frame_2

Frame_3.Parent = Frame_2
Frame_3.BackgroundColor3 = Color3.fromRGB(14, 16, 17)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(-1.10771471e-05, 0, 0, 0)
Frame_3.Size = UDim2.new(0.407929778, 0, 1, 0)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.897540927, 0, 0.203125015, 0)
TextButton.Size = UDim2.new(0.086065568, 0, 0.59375006, 0)
TextButton.Font = Enum.Font.Gotham
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
local Activater = false

game:GetService("UserInputService").InputBegan:Connect(function(inp, typing)
	if typing == false then
		if inp.KeyCode == Enum.KeyCode.Z then
			if Activater == false then
				Activater = true
			elseif Activater == true then
				Activater = false
			end
		end
	end
end)

game:GetService("RunService").Heartbeat:Connect(function()
	if Activater == true then
		game:GetService("ReplicatedStorage").Characters:FindFirstChild("A-Train").Remotes.BellyPunch:FireServer()
		task.wait(0.1)

	else

	end
end)

local Notification = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Frame_3 = Instance.new("Frame")
local TextButton = Instance.new("TextButton")

Notification.Name = "Notification"
Notification.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Notification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Notification.IgnoreGuiInset = true
Notification.ResetOnSpawn = false

Frame.Parent = Notification
Frame.BackgroundColor3 = Color3.fromRGB(22, 24, 26)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.862713695, 0, 0.913538158, 0)
Frame.Size = UDim2.new(0.130341887, 0, 0.0728100091, 0)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.140638739, 0, 0.119329877, 0)
TextLabel.Size = UDim2.new(0.716335654, 0, 0.75802201, 0)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = "Be Miles morales and press B to start!"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UICorner.CornerRadius = UDim.new(0.200000003, 0)
UICorner.Parent = Frame

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(14, 16, 17)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.88524586, 0, 0, 0)
Frame_2.Size = UDim2.new(0.11491812, 0, 1.00000012, 0)

UICorner_2.CornerRadius = UDim.new(0.400000006, 0)
UICorner_2.Parent = Frame_2

Frame_3.Parent = Frame_2
Frame_3.BackgroundColor3 = Color3.fromRGB(14, 16, 17)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(-1.10771471e-05, 0, 0, 0)
Frame_3.Size = UDim2.new(0.407929778, 0, 1, 0)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.897540927, 0, 0.203125015, 0)
TextButton.Size = UDim2.new(0.086065568, 0, 0.59375006, 0)
TextButton.Font = Enum.Font.Gotham
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
local Activater = false

game:GetService("UserInputService").InputBegan:Connect(function(inp, typing)
	if typing == false then
		if inp.KeyCode == Enum.KeyCode.Z then
			if Activater == false then
				Activater = true
			elseif Activater == true then
				Activater = false
			end
		end
	end
end)

game:GetService("RunService").Heartbeat:Connect(function()
	if Activater == true then
		game:GetService("ReplicatedStorage").Characters.Joe.Remotes.Finisher:FireServer()
		task.wait(0.1)

	else

	end
end)

local Notification = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Frame_3 = Instance.new("Frame")
local TextButton = Instance.new("TextButton")

Notification.Name = "Notification"
Notification.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Notification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Notification.IgnoreGuiInset = true
Notification.ResetOnSpawn = false

Frame.Parent = Notification
Frame.BackgroundColor3 = Color3.fromRGB(22, 24, 26)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.862713695, 0, 0.913538158, 0)
Frame.Size = UDim2.new(0.130341887, 0, 0.0728100091, 0)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.140638739, 0, 0.119329877, 0)
TextLabel.Size = UDim2.new(0.716335654, 0, 0.75802201, 0)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = "Be Miles morales and press B to start!"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UICorner.CornerRadius = UDim.new(0.200000003, 0)
UICorner.Parent = Frame

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(14, 16, 17)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.88524586, 0, 0, 0)
Frame_2.Size = UDim2.new(0.11491812, 0, 1.00000012, 0)

UICorner_2.CornerRadius = UDim.new(0.400000006, 0)
UICorner_2.Parent = Frame_2

Frame_3.Parent = Frame_2
Frame_3.BackgroundColor3 = Color3.fromRGB(14, 16, 17)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(-1.10771471e-05, 0, 0, 0)
Frame_3.Size = UDim2.new(0.407929778, 0, 1, 0)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.897540927, 0, 0.203125015, 0)
TextButton.Size = UDim2.new(0.086065568, 0, 0.59375006, 0)
TextButton.Font = Enum.Font.Gotham
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true