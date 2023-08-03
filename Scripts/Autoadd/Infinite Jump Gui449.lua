-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(148, 245, 255)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.274980634, 0, 0.570232868, 0)
Frame.Size = UDim2.new(0, 233, 0, 122)
Frame.Style = Enum.FrameStyle.DropShadow

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0.0308252871, 0, 0.277133197, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "click button to turn off"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

-- Scripts:

local function GPWHU_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local disabled = false
	local player = game.Players.LocalPlayer
	local InfDisabled = Instance.new("BoolValue")
	InfDisabled.Name = "InfDisabled"
	InfDisabled.Parent = player
	
	script.Parent.MouseButton1Click:Connect(function()
		
		if disabled == false then
			
			disabled = true
			
			InfDisabled.Value = true
			
			script.Parent.Text = "Enable Infinite Jump"
			
			else
			
			disabled = false
			
			InfDisabled.Value = false
			
			script.Parent.Text = "Disable Infinite Jump"
			
		end
		
	
		
	end)
end
coroutine.wrap(GPWHU_fake_script)()
local function DSFSI_fake_script() -- Frame.PutInStarterPlayerScripts 
	local script = Instance.new('LocalScript', Frame)

	-- place this in StarterPlayer.StarterPlayerScripts.
	local p = game.Players.LocalPlayer
	while true do
		wait()
		
		if p.Character and p.InfDisabled.Value == false then
			local h = p.Character:FindFirstChild("Humanoid")
			if h and h.Jump then
				h:ChangeState(Enum.HumanoidStateType.Jumping)
			end
		end
	end
end
coroutine.wrap(DSFSI_fake_script)()
local function YORU_fake_script() -- Frame.Drag 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(YORU_fake_script)()