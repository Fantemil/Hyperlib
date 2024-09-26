-- MADE BY ballsman3761 ON DISCORD OR libary.hello
-- JOIN THE DISCORD: https://discord.gg/gYhqMRBeZV

local randomstr = Instance.new("ScreenGui")
local Holder = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Clearer = Instance.new("TextButton")
local Splitter = Instance.new("Frame")
local Info = Instance.new("TextLabel")
local MAX = Instance.new("UITextSizeConstraint")
local Clearer2 = Instance.new("TextButton")
local Splitterrandomstr2 = Instance.new("Frame")

randomstr.Name = 'RobloxGui' -- silly method :3
randomstr.Parent = game:GetService("CoreGui")
randomstr.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Holder.Name = "Holder"
Holder.Parent = randomstr
Holder.BackgroundColor3 = Color3.fromRGB(66, 66, 212)
Holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
Holder.BorderSizePixel = 0
Holder.Position = UDim2.new(0.279100537, 0, 0.258639902, 0)
Holder.Size = UDim2.new(0, 202, 0, 206)

UICorner.Parent = Holder

Clearer.Name = "Clearer"
Clearer.Parent = Holder
Clearer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Clearer.BackgroundTransparency = 1.000
Clearer.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clearer.BorderSizePixel = 0
Clearer.Size = UDim2.new(0, 200, 0, 50)
Clearer.Font = Enum.Font.GothamBold
Clearer.Text = "Basic Clear"
Clearer.TextColor3 = Color3.fromRGB(255, 255, 255)
Clearer.TextScaled = true
Clearer.TextSize = 14.000
Clearer.TextWrapped = true

Splitter.Name = "Splitter"
Splitter.Parent = Holder
Splitter.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Splitter.BorderColor3 = Color3.fromRGB(0, 0, 0)
Splitter.BorderSizePixel = 0
Splitter.Position = UDim2.new(0, 0, 0.242718443, 0)
Splitter.Size = UDim2.new(1, 0, 0, 1)

Info.Name = "Info"
Info.Parent = Holder
Info.Active = true
Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info.BackgroundTransparency = 1.000
Info.BorderColor3 = Color3.fromRGB(0, 0, 0)
Info.BorderSizePixel = 0
Info.Position = UDim2.new(0.00990098994, 0, 0.524271846, 0)
Info.Selectable = true
Info.Size = UDim2.new(0, 198, 0, 98)
Info.Font = Enum.Font.GothamBold
Info.Text = "This will add a chat cooldown whenever you clear your logs, It might not let you chat for a little after you clear depending on which clear you used."
Info.TextColor3 = Color3.fromRGB(255, 255, 255)
Info.TextScaled = true
Info.TextSize = 14.000
Info.TextWrapped = true
Info.TextXAlignment = Enum.TextXAlignment.Left
Info.TextYAlignment = Enum.TextYAlignment.Top

MAX.Name = "MAX"
MAX.Parent = Info
MAX.MaxTextSize = 16
MAX.MinTextSize = 14

Clearer2.Name = "Clearer2"
Clearer2.Parent = Holder
Clearer2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Clearer2.BackgroundTransparency = 1.000
Clearer2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clearer2.BorderSizePixel = 0
Clearer2.Position = UDim2.new(0, 0, 0, 51)
Clearer2.Size = UDim2.new(0, 200, 0, 50)
Clearer2.Font = Enum.Font.GothamBold
Clearer2.Text = "Advanced Clear"
Clearer2.TextColor3 = Color3.fromRGB(255, 255, 255)
Clearer2.TextScaled = true
Clearer2.TextSize = 14.000
Clearer2.TextWrapped = true

Splitterrandomstr2.Name = "Splitter"
Splitterrandomstr2.Parent = Holder
Splitterrandomstr2.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Splitterrandomstr2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Splitterrandomstr2.BorderSizePixel = 0
Splitterrandomstr2.Position = UDim2.new(0, 0, 0, 101)
Splitterrandomstr2.Size = UDim2.new(1, 0, 0, 1)
local UserInputService = game:GetService('UserInputService');
local TextChatService = game:GetService('TextChatService');
Clearer.MouseButton1Click:Connect(function()
	if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
		local chatBox = TextChatService:FindFirstChildOfClass("ChatInputBarConfiguration")
		for i = 1, 10 do
			chatBox.TargetTextChannel:SendAsync('')
		end
		Clearer.Text = 'Cleared!'
		task.wait(2)
		Clearer.Text = 'Basic Clear'
	else
	 local Path1 = game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents")
	 if not Path1 then return error("DefaultChatSystemChatEvents is missing!\nChat logs will not be cleared.") end
	 local Path2 = Path1:FindFirstChild('SayMessageRequest')
	 if not Path2 then return error("SayMessageRequest is missing!\nChat logs will not be cleared.") end
	 for i = 1, 10 do
	  Path2:FireServer('', 'All')
	 end
	 Clearer.Text = 'Cleared!'
	 task.wait(2)
	 Clearer.Text = 'Basic Clear'
	end
end)
Clearer2.MouseButton1Click:Connect(function()
	if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
		local chatBox = TextChatService:FindFirstChildOfClass("ChatInputBarConfiguration")
		for i = 1, 20 do
			chatBox.TargetTextChannel:SendAsync('')
		end
		Clearer2.Text = 'Cleared!'
		task.wait(2)
		Clearer2.Text = 'Advanced Clear'
	else
		local Path1 = game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents")
		if not Path1 then return error("DefaultChatSystemChatEvents is missing!\nChat logs will not be cleared.") end
		local Path2 = Path1:FindFirstChild('SayMessageRequest')
		if not Path2 then return error("SayMessageRequest is missing!\nChat logs will not be cleared.") end
		for i = 1, 20 do
			Path2:FireServer('', 'All')
		end
		Clearer2.Text = 'Cleared!'
		task.wait(2)
		Clearer2.Text = 'Advanced Clear'
	end
end)

local isDragging = false
local dragStartPos = nil
local frameStartPos = nil

local function handleInput(input)
	if isDragging then
		local delta = input.Position - dragStartPos
		Holder.Position = UDim2.new(
			frameStartPos.X.Scale, 
			frameStartPos.X.Offset + delta.X, 
			frameStartPos.Y.Scale, 
			frameStartPos.Y.Offset + delta.Y
		)
	end
end

local function startDrag(input)
	isDragging = true
	dragStartPos = input.Position
	frameStartPos = Holder.Position
	input.UserInputState = Enum.UserInputState.Begin
end

local function stopDrag(input)
	isDragging = false
	input.UserInputState = Enum.UserInputState.End
end

Holder.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		startDrag(input)
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if isDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		handleInput(input)
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		stopDrag(input)
	end
end)