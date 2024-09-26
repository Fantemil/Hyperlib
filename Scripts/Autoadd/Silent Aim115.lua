-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local SA = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local SAText = Instance.new("TextLabel")
local SilentAim = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local MadeBy = Instance.new("TextLabel")
local PlayerCount = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

SA.Name = "SA"
SA.Parent = ScreenGui
SA.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
SA.BorderColor3 = Color3.fromRGB(0, 0, 0)
SA.BorderSizePixel = 0
SA.Position = UDim2.new(0.390139997, 0, 0.307328612, 0)
SA.Size = UDim2.new(0, 360, 0, 326)

UICorner.Parent = SA

SAText.Name = "SA Text"
SAText.Parent = SA
SAText.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
SAText.BorderColor3 = Color3.fromRGB(170, 0, 0)
SAText.BorderSizePixel = 0
SAText.Size = UDim2.new(0, 360, 0, 44)
SAText.Font = Enum.Font.Bangers
SAText.Text = "Arsenal SA Made By .bluuu."
SAText.TextColor3 = Color3.fromRGB(170, 0, 0)
SAText.TextSize = 35.000

SilentAim.Name = "Silent Aim"
SilentAim.Parent = SA
SilentAim.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SilentAim.BorderColor3 = Color3.fromRGB(0, 0, 0)
SilentAim.BorderSizePixel = 0
SilentAim.Position = UDim2.new(0.222222224, 0, 0.205521479, 0)
SilentAim.Size = UDim2.new(0, 213, 0, 79)
SilentAim.Font = Enum.Font.Bangers
SilentAim.Text = "Enable Silent Aim"
SilentAim.TextColor3 = Color3.fromRGB(170, 0, 0)
SilentAim.TextSize = 30.000
SilentAim.TextStrokeTransparency = 0.000

UICorner_2.Parent = SilentAim

MadeBy.Name = "Made By"
MadeBy.Parent = SA
MadeBy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MadeBy.BackgroundTransparency = 1.000
MadeBy.BorderColor3 = Color3.fromRGB(0, 0, 0)
MadeBy.BorderSizePixel = 0
MadeBy.Position = UDim2.new(0, 0, 0.846625745, 0)
MadeBy.Size = UDim2.new(0, 360, 0, 50)
MadeBy.Font = Enum.Font.Bangers
MadeBy.Text = "B To Toggle On/Off"
MadeBy.TextColor3 = Color3.fromRGB(170, 0, 0)
MadeBy.TextSize = 30.000

PlayerCount.Name = "Player Count"
PlayerCount.Parent = SA
PlayerCount.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PlayerCount.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayerCount.BorderSizePixel = 0
PlayerCount.Position = UDim2.new(0.222222224, 0, 0.604294479, 0)
PlayerCount.Size = UDim2.new(0, 213, 0, 79)
PlayerCount.Font = Enum.Font.Bangers
PlayerCount.Text = "Player Count:"
PlayerCount.TextColor3 = Color3.fromRGB(170, 0, 0)
PlayerCount.TextSize = 27.000

UICorner_3.Parent = PlayerCount

-- Scripts:

local function MCITIJ_fake_script() -- SA.Draggable 
	local script = Instance.new('LocalScript', SA)

	
	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(MCITIJ_fake_script)()
local function TGYL_fake_script() -- PlayerCount.LocalScript 
	local script = Instance.new('LocalScript', PlayerCount)

	local playerCountLabel = script.Parent -- Assumes the script is a child of a TextLabel
	
	-- Function to update the player count
	local function updatePlayerCount()
		local players = game.Players:GetPlayers()
		playerCountLabel.Text = "Player Count: " .. #players
	end
	
	-- Initially update the player count
	updatePlayerCount()
	
	-- Connect a function to fire whenever a player joins or leaves
	game.Players.PlayerAdded:Connect(updatePlayerCount)
	game.Players.PlayerRemoving:Connect(updatePlayerCount)
	
end
coroutine.wrap(TGYL_fake_script)()
local function BNQNGFT_fake_script() -- ScreenGui.Toggle 
	local script = Instance.new('LocalScript', ScreenGui)

	local Player = game:GetService("Players").LocalPlayer
	local Mouse = Player:GetMouse()
	local MainFrame = script.Parent.SA
	local keybind = "b"
	
	Mouse.KeyDown:Connect(function(key)
		if key == keybind then
			if MainFrame.Visible == false then
				MainFrame.Visible = true
			else
				MainFrame.Visible = false
			end
		end
	end)
end
coroutine.wrap(BNQNGFT_fake_script)()
SilentAim.MouseButton1Down:connect(function()
	function getplrsname()
		for i,v in pairs(game:GetChildren()) do
			if v.ClassName == "Players" then
				return v.Name
			end
		end
	end
	local players = getplrsname()
	local plr = game[players].LocalPlayer
	coroutine.resume(coroutine.create(function()
		while  wait(1) do
			coroutine.resume(coroutine.create(function()
				for _,v in pairs(game[players]:GetPlayers()) do
					if v.Name ~= plr.Name and v.Character then
						v.Character.RightUpperLeg.CanCollide = false
						v.Character.RightUpperLeg.Transparency = 10
						v.Character.RightUpperLeg.Size = Vector3.new(13,13,13)

						v.Character.LeftUpperLeg.CanCollide = false
						v.Character.LeftUpperLeg.Transparency = 10
						v.Character.LeftUpperLeg.Size = Vector3.new(13,13,13)

						v.Character.HeadHB.CanCollide = false
						v.Character.HeadHB.Transparency = 10
						v.Character.HeadHB.Size = Vector3.new(20,20,20)

						v.Character.HumanoidRootPart.CanCollide = false
						v.Character.HumanoidRootPart.Transparency = 10
						v.Character.HumanoidRootPart.Size = Vector3.new(13,13,13)

					end
				end
			end))
		end
	end))
end)