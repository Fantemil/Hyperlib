local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local aimlockEnabled = false
local toggleMouseButton = Enum.UserInputType.MouseButton2 -- Right mouse button
local lockFOV = math.rad(8) -- The smaller lock FOV angle in radians

local function Aimlock()
	local localPlayer = Players.LocalPlayer
	local mouse = localPlayer:GetMouse()
	local camera = game.Workspace.CurrentCamera

	
	local closestPlayer = nil
	local closestAngle = lockFOV -- Start with the lock FOV angle
	for _, player in ipairs(Players:GetPlayers()) do
		if player ~= localPlayer and player.Character and player.Character:FindFirstChild("Head") and player.Team ~= localPlayer.Team and player.Character.Humanoid.Health > 0 then
			local head = player.Character.Head
			local direction = (head.Position - camera.CFrame.Position).Unit
			local angle = math.acos(direction:Dot(camera.CFrame.LookVector))
			if angle < closestAngle then
				closestAngle = angle
				closestPlayer = head
			end
		end
	end

	-- Lock the camera onto the head of the closest player
	if closestPlayer then
		camera.CFrame = CFrame.new(camera.CFrame.Position, closestPlayer.Position)
	end
end

UserInputService.InputBegan:Connect(function(input)
	if input.UserInputType == toggleMouseButton then
		aimlockEnabled = not aimlockEnabled
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == toggleMouseButton then
		aimlockEnabled = false
	end
end)

RunService.RenderStepped:Connect(function()
	if aimlockEnabled then
		Aimlock()
	end
end)


local GuiService = game:GetService("GuiService")

local popup = Instance.new("ScreenGui")
popup.Name = "AimlockPopup"
popup.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 100)
frame.Position = UDim2.new(0, 20, 1, -120)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BackgroundTransparency = 1 -- Set the background transparency to 100%
frame.Parent = popup

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.Text = "ScriptingMadeEasy"
textLabel.TextColor3 = Color3.new(0, 0, 0)
textLabel.BackgroundTransparency = 1
textLabel.Parent = frame


local duration = 999999999999999 -- in seconds
spawn(function()
	wait(duration)
	popup:Destroy()
end)
