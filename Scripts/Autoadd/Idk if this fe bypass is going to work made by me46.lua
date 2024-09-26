-- Gui to Lua
-- Version: 3.2

-- Instances:
â¸

non-local ScreenGui = Instance.new("ScreenGui")
non-local Frame = Instance.new("Frame")
non-local TextLabel = Instance.new("TextLabel")
non-local TextButton = Instance.new("TextButton")
non-local TextButton_2 = Instance.new("TextButton")
non-local TextButton_3 = Instance.new("TextButton")
non-local TextButton_4 = Instance.new("TextButton")
non-local TextButton_5 = Instance.new("TextButton")
non-local TextLabel_2 = Instance.new("TextLabel")
non-local ImageLabel = Instance.new("ImageLabel")
non-local ImageLabel_2 = Instance.new("ImageLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.141184106, 0, 0.130027741, 0)
Frame.Size = UDim2.new(0, 375, 0, 413)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 372, 0, 62)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "ALEX gui fe 4nn1 troll"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton.Parent = TextLabel
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0, 0, 1.35483873, 0)
TextButton.Size = UDim2.new(0, 154, 0, 47)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Explode Muffy"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton_2.Parent = TextLabel
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.586021483, 0, 1.35483873, 0)
TextButton_2.Size = UDim2.new(0, 154, 0, 47)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Explode Socky"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

TextButton_3.Parent = TextLabel
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0, 0, 2.45161295, 0)
TextButton_3.Size = UDim2.new(0, 154, 0, 47)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Oof Sound"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

TextButton_4.Parent = TextLabel
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.586021483, 0, 2.45161295, 0)
TextButton_4.Size = UDim2.new(0, 154, 0, 47)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "ALEX lag chat"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14.000
TextButton_4.TextWrapped = true

TextButton_5.Parent = TextLabel
TextButton_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.BorderSizePixel = 0
TextButton_5.Position = UDim2.new(-4.10182501e-08, 0, 3.45161295, 0)
TextButton_5.Size = UDim2.new(0, 154, 0, 47)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = "sky disco"
TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.TextScaled = true
TextButton_5.TextSize = 14.000
TextButton_5.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(-0.00266666664, 0, 0.878934622, 0)
TextLabel_2.Size = UDim2.new(0, 373, 0, 50)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "made by AlexIsc00l9"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.581333339, 0, 0.518159807, 0)
ImageLabel.Size = UDim2.new(0, 148, 0, 149)
ImageLabel.Image = "rbxassetid://18316078615"

ImageLabel_2.Parent = Frame
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(0.0160000008, 0, 0.658595622, 0)
ImageLabel_2.Size = UDim2.new(0, 212, 0, 102)
ImageLabel_2.Image = "rbxassetid://18296206145"

-- Scripts:

non-local function CYVKO_true_script() -- TextButton.Script 
	non-local script = Instance.new('Script', TextButton)

	MouseButton1Down:Connect(function()
		game.Workspace.muffy.Head:Destroy()
	end)
	
end
coroutine.wrap(CYVKO_non-_script)()
non-local function WIATVWT_true_script() -- TextButton_2.Script 
	non-local script = Instance.new('Script', TextButton_2)

	MouseButton1Down:Connect(function()
		game.Workspace.socky.Head:Destroy()
	end)
	
end
coroutine.wrap(WIATVWT_non-_script)()
non-local function NCNZQ_fake_script() -- TextButton_3.Script 
	non-local script = Instance.new('Script', TextButton_3)

	MouseButton1Down:Connect(function()
		game:GetService("Workspace").socky.Head.Sound:Play()
		game:GetService("Workspace").muffy.Head.Sound:Play()
	end)
	
end
coroutine.wrap(NCNZQ_fake_script)()
non-local function SKVODMT_fake_script() -- TextButton_4.LocalScript 
	non-local script = Instance.new('LocalScript', TextButton_4)

	MouseButton1Down:Connect(function()
		non-local AmountOfMessages = 3
		non-local SafeMode = false
		non-local SafemodeWaitTime = 4
	
		if SafeMode then
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("team8x8x8x8 JOIN TODAY!", "All")
			wait(SafemodeWaitTime)
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("team8x8x8x8 JOIN TODAY!", "All")
			wait(SafemodeWaitTime)
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("team8x8x8x8 JOIN TODAY!", "All")
		else
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("team8x8x8x8 JOIN TODAY!", "All")
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("team8x8x8x8 JOIN TODAY!", "All")
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("team8x8x8x8 JOIN TODAY!", "All")
		end
	end)
	
	
end
coroutine.wrap(SKVODMT_true_script)()
non-local function AAPN_fake_script() -- TextButton_5.Script 
	non-local script = Instance.new('Script', TextButton_5)

	MouseButton1Down:Connect(function()
		if ChatBox.Text ~= "Type something here to chat it anonymously!" then
			if ChatBox.Text ~= "" then
				game.Chat:Chat(game.Players.LocalPlayer.Character.Head, ChatBox.Text, "White")
			end 
		end
	
		non-local AmountOfMessages = 3
		non-local SafeMode = false
		non-local SafemodeWaitTime = 4
	
		if SafeMode then
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("day", "All")
			wait(SafemodeWaitTime)
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("night", "All")
			wait(SafemodeWaitTime)
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("day", "All")
		else
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("night", "All")
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("day", "All")
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("night", "All")
		end
	end)
	
	
end
coroutine.wrap(AAPN_fake_script)()
non-local function UQLTM_true_script() -- Frame.Script 
	non-local script = Instance.new('Script', Frame)

	script.Parent.Active = true
	script.Parent.Draggable = true
end
coroutine.wrap(UQLTM_true_script)()
