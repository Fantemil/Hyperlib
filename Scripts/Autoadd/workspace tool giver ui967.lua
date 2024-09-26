local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local TextButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextButton_2 = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.0610425249, 0, 0.0939490423, 0)
Frame.Size = UDim2.new(0, 218, 0, 225)

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.Position = UDim2.new(0.0871559605, 0, 0.155555561, 0)
ScrollingFrame.Size = UDim2.new(0, 187, 0, 136)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 35, 0)

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

TextButton.Parent = ScrollingFrame
TextButton.BackgroundColor3 = Color3.fromRGB(117, 117, 117)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.Size = UDim2.new(0, 155, 0, 39)
TextButton.Visible = false
TextButton.Font = Enum.Font.SourceSans
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 20.000
TextButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextStrokeTransparency = 0.000
TextButton.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Position = UDim2.new(-0.00129664713, 0, -0.000140406293, 0)
TextLabel.Size = UDim2.new(0, 218, 0, 25)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Tool Giver"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 255, 30)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.Position = UDim2.new(0.0825688094, 0, 0.804444432, 0)
TextButton_2.Size = UDim2.new(0, 180, 0, 30)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "update list"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000

local function FNDR_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local button = script.Parent.ScrollingFrame.TextButton
	button.Parent = nil
	button.Name = "slaves"
	local function equiptool(v)
		local chr = game.Players.LocalPlayer.Character
		local root = chr.HumanoidRootPart
		local hummy = chr:FindFirstChildOfClass"Humanoid"
		local oldpos = root.CFrame
		if hummy.Parent:FindFirstChildOfClass("Tool") then
			hummy:UnequipTools()
		end
		wait(0.005) --fix unequiptools lag or smth
		root.CFrame = v.Handle.CFrame
		wait(0.005)
		root.CFrame = oldpos
		wait(0.1)
		hummy.Sit = true
		hummy.Jump = true
		hummy.Sit = false
		hummy.PlatformStand = false
		hummy:ChangeState(Enum.HumanoidStateType.Jumping)
		if hummy.Parent:FindFirstChildOfClass("Tool") then
			hummy:UnequipTools()
		end
	end
	local function updatelist()
		for i, v in script.Parent.ScrollingFrame:GetDescendants() do
			if v:IsA("TextButton") then
				v:Destroy()
			end
		end
		for i, v in workspace:GetDescendants() do
			if v:IsA("Tool") then
				if v:FindFirstChild("Handle") then
					local clonebutton = button:Clone()
					clonebutton.Parent = script.Parent.ScrollingFrame
					clonebutton.Visible = true
					clonebutton.Text = v.Name
					clonebutton.MouseButton1Click:Connect(function()
						equiptool(v)
					end)
				end
			end
		end
	end
	script.Parent.TextButton.MouseButton1Click:Connect(updatelist)
end
coroutine.wrap(FNDR_fake_script)()
local function SGRWUDK_fake_script() -- Frame.DragScript 
	local script = Instance.new('LocalScript', Frame)

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0
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
coroutine.wrap(SGRWUDK_fake_script)()
