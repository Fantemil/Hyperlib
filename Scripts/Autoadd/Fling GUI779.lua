-- Variables
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")  -- Added UserInputService

-- Function to find players
local function findPlayers(searchString)
	local foundPlayers = {}
	for _, player in pairs(Players:GetPlayers()) do
		if player.Name:lower():sub(1, #searchString) == searchString:lower() then
			table.insert(foundPlayers, player)
		end
	end
	return foundPlayers
end

-- Create draggable GUI
local flingGui = Instance.new("ScreenGui")
flingGui.Name = "FlingGui"
flingGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
flingGui.ResetOnSpawn = false

local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Parent = flingGui
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
mainFrame.Size = UDim2.new(0, 300, 0, 250)
mainFrame.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
mainFrame.BorderSizePixel = 0
mainFrame.ZIndex = 2
mainFrame.Draggable = true  -- Make the frame draggable

local title = Instance.new("TextLabel")
title.Parent = mainFrame
title.Size = UDim2.new(1, 0, 0.1, 0)
title.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
title.BorderSizePixel = 0
title.Font = Enum.Font.SourceSansBold
title.TextSize = 20
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Text = "Fling GUI"
title.ZIndex = 2

local targetTextBox = Instance.new("TextBox")
targetTextBox.Parent = mainFrame
targetTextBox.Position = UDim2.new(0.1, 0, 0.15, 0)
targetTextBox.Size = UDim2.new(0.8, 0, 0.15, 0)
targetTextBox.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
targetTextBox.BorderSizePixel = 0
targetTextBox.Font = Enum.Font.SourceSans
targetTextBox.TextSize = 18
targetTextBox.PlaceholderText = "Enter player name..."
targetTextBox.Text = ""
targetTextBox.ZIndex = 2

local flingButton = Instance.new("TextButton")
flingButton.Parent = mainFrame
flingButton.Position = UDim2.new(0.1, 0, 0.35, 0)
flingButton.Size = UDim2.new(0.8, 0, 0.15, 0)
flingButton.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
flingButton.BorderSizePixel = 0
flingButton.Font = Enum.Font.SourceSansBold
flingButton.TextSize = 18
flingButton.Text = "Fling!"
flingButton.TextColor3 = Color3.fromRGB(255, 255, 255)
flingButton.ZIndex = 2

local notification = Instance.new("TextLabel")
notification.Parent = mainFrame
notification.Position = UDim2.new(0.1, 0, 0.55, 0)
notification.Size = UDim2.new(0.8, 0, 0.2, 0)
notification.BackgroundTransparency = 1
notification.Font = Enum.Font.SourceSans
notification.TextSize = 16
notification.TextColor3 = Color3.fromRGB(255, 0, 0)
notification.TextWrapped = true
notification.ZIndex = 2

-- Make the UI draggable
local dragging
local dragStart

title.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position - mainFrame.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging then
		mainFrame.Position = UDim2.new(0, input.Position.X - dragStart.X, 0, input.Position.Y - dragStart.Y)
	end
end)

-- Function to perform the fling
local function flingPlayer(targetPlayer)
	if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
		local Thrust = Instance.new('BodyThrust', targetPlayer.Character.HumanoidRootPart)
		Thrust.Force = Vector3.new(0, 10000, 0)
		wait(0.1)
		Thrust:Destroy()
	end
end

-- Connect button click event
flingButton.MouseButton1Click:Connect(function()
	local targetName = targetTextBox.Text
	local targetPlayers = findPlayers(targetName)

	if #targetPlayers > 0 then
		for _, player in pairs(targetPlayers) do
			flingPlayer(player)
		end
		notification.Text = "Fling successful!"
	else
		notification.Text = "Invalid player"
	end
end)

-- Notification for successful load
StarterGui:SetCore("SendNotification", {
	Title = "Fling GUI",
	Text = "Loaded successfully! Created by Innovation",
	Icon = "rbxassetid://2005276185",
	Duration = 5
})
