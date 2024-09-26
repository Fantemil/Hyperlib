-- Gui to Lua
-- Version: 3.2

-- Instances:

local uwu = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local top = Instance.new("TextLabel")
local Box = Instance.new("TextBox")
local skib = Instance.new("TextButton")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

--Properties:

uwu.Name = "uwu"
uwu.Parent = game.CoreGui
uwu.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = uwu
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Frame.BackgroundTransparency = 0.300
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 293, 0, 234)

top.Name = "top"
top.Parent = Frame
top.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
top.BackgroundTransparency = 0.700
top.BorderColor3 = Color3.fromRGB(0, 0, 0)
top.Size = UDim2.new(0, 292, 0, 45)
top.Font = Enum.Font.SourceSansBold
top.Text = "Harked(Brain Rot)"
top.TextColor3 = Color3.fromRGB(0, 0, 0)
top.TextScaled = true
top.TextSize = 45.000
top.TextWrapped = true

Box.Name = "Box"
Box.Parent = Frame
Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Box.BackgroundTransparency = 0.500
Box.BorderColor3 = Color3.fromRGB(0, 0, 0)
Box.BorderSizePixel = 0
Box.Position = UDim2.new(0.0273037534, 0, 0.805373251, 0)
Box.Size = UDim2.new(0, 276, 0, 35)
Box.Font = Enum.Font.SourceSansBold
Box.Text = "Random Box"
Box.TextColor3 = Color3.fromRGB(0, 0, 0)
Box.TextScaled = true
Box.TextSize = 20.000
Box.TextWrapped = true

skib.Name = "skib"
skib.Parent = Frame
skib.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
skib.BackgroundTransparency = 0.500
skib.BorderColor3 = Color3.fromRGB(0, 0, 0)
skib.BorderSizePixel = 0
skib.Position = UDim2.new(0.156996608, 0, 0.391554207, 0)
skib.Size = UDim2.new(0, 200, 0, 50)
skib.Font = Enum.Font.SourceSansBold
skib.Text = "Skibdify"
skib.TextColor3 = Color3.fromRGB(0, 0, 0)
skib.TextScaled = true
skib.TextSize = 40.000
skib.TextWrapped = true
skib.MouseButton1Down:Connect(function()
	local lp = game.Players.LocalPlayer.Character:GetDescendants()
	local hed = game.Players.LocalPlayer.Character.Head

	for i, v in pairs(lp) do
		if v:IsA("BasePart") then
			v.Transparency = 1
			wait(0.1)
			hed.Transparency = 0
			hed.Size = Vector3.new(3.5, 3.5, 3.5)
		end
	end

	-- Example usage: makeLocalPlayerInvisible(1) to make the LocalPlayer fully transparent

	local modelId = "rbxassetid://8368540521"

	-- Function to load the model
	local function loadModel(modelId)
		-- Use GetObjects to load the model
		local model = game:GetObjects(modelId)[1]

		-- Make sure the model is loaded correctly
		if model then
			local player = game.Players.LocalPlayer
			local character = player.Character
			local torso = character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")

			if torso then
				-- Set the parent of the model to the character
				model.Parent = character

				-- Set initial position
				model.CFrame = torso.CFrame

				-- Create a Weld to attach the model to the torso
				local weld = Instance.new("Weld")
				weld.Part0 = torso
				weld.Part1 = model
				weld.C0 = CFrame.new(0, 0, 1.5)  -- Adjust the offset as needed
				weld.C1 = CFrame.new()
				weld.Parent = model

				-- Set model properties
				model.Name = "Toilet"
				model.Size = Vector3.new(8, 8, 8)
				model.CanCollide = false

				print("Model attached successfully!")
			else
				warn("Torso not found.")
			end
		else
			warn("Failed to load model.")
		end
	end

	loadModel(modelId)
end)

UIAspectRatioConstraint.Parent = Frame
UIAspectRatioConstraint.AspectRatio = 1.252

-- Scripts:

local function WWSAP_fake_script() -- Frame.AntiAnti-Cheat 
	local script = Instance.new('LocalScript', Frame)

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
coroutine.wrap(WWSAP_fake_script)()
local function COYV_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	-- Ensure this script is a LocalScript placed inside a GUI element, such as a ScreenGui
	
	local TweenService = game:GetService("TweenService")
	
	-- Replace 'Frame' with the actual name of your frame
	local frame = script.Parent
	
	if not frame then
		warn("Frame not found. Make sure the frame exists and the script is correctly placed.")
		return
	end
	
	-- Set the initial position of the frame to be centered horizontally but above the screen
	frame.Position = UDim2.new(0.5, -frame.Size.X.Offset / 2, 0, -frame.Size.Y.Offset)
	
	-- Define the target position
	local targetPosition = UDim2.new(0.393, 0,0.364, 0)
	
	-- Define tweening information
	local tweenInfo = TweenInfo.new(
		3, -- Duration (in seconds)
		Enum.EasingStyle.Back, -- Easing style
		Enum.EasingDirection.Out, -- Easing direction
		0, -- Number of times to repeat (0 = no repeat)
		false, -- Reverse (true = back and forth tween)
		0 -- Delay before tween starts
	)
	-- Create the tween
	local tween = TweenService:Create(frame, tweenInfo, {Position = targetPosition})
	
	-- Play the tween
	tween:Play()
end
coroutine.wrap(COYV_fake_script)()
local function GTDJA_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local ACS = {"Anti", "anti", "Ac", "Anti-Cheat", "Anti Cheat", "AC", "ANTI Cheat", "AntiFly", "AntiSpeed", "AntiTP", "AntiTeleport", "AntiDex", "AntiDEX", "AntiFlight"}
	
	while true do
		local work = game.Workspace:GetDescendants()
		for _, v in pairs(work) do
			if v:IsA("LocalScript") then
				for _, acsName in pairs(ACS) do
					if string.find(v.Name, acsName) then
						-- Destroy the LocalScript
						v:Destroy()
	
						-- Print the directory (parent hierarchy)
						local directory = ""
						local parent = v.Parent
						while parent ~= nil do
							directory = parent.Name .. "/" .. directory
							parent = parent.Parent
						end
						directory = directory .. v.Name
						print("AC Detected and Destroyed: " .. v.Name .. " | AC Type = LocalScript" .. " | Searching For Other AC's...")
	
						break
					end
				end
			end
		end
		wait(1)
	end
end
coroutine.wrap(GTDJA_fake_script)()