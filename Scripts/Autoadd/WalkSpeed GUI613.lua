-- WalkSpeed GUI
-- Key: https://discord.gg/Mb8MHNkzkP
-- Version: 1.0

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local TextButton_2 = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local TextBox_2 = Instance.new("TextBox")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.36311239, 0, 0.230314955, 0)
Frame.Size = UDim2.new(0, 284, 0, 274)

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Position = UDim2.new(0.146415949, 0, 0.374145061, 0)
TextBox.Size = UDim2.new(0, 200, 0, 50)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 14.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0.146415949, 0, 0.788579822, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Inject"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Position = UDim2.new(0.146415949, 0, 0.0878211409, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Key"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Frame_2.Parent = ScreenGui
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.Position = UDim2.new(0.0144092217, 0, 0.175196856, 0)
Frame_2.Selectable = true
Frame_2.Size = UDim2.new(0, 248, 0, 255)
Frame_2.Visible = false

TextButton_2.Parent = Frame_2
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.Position = UDim2.new(0.0927419364, 0, 0.70588237, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Execute"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

TextLabel_2.Parent = Frame_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.Position = UDim2.new(-0.00171981007, 0, -0.00127373636, 0)
TextLabel_2.Size = UDim2.new(0, 248, 0, 52)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "WalkSpeed"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextBox_2.Parent = Frame_2
TextBox_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox_2.Position = UDim2.new(0.0927419364, 0, 0.400000006, 0)
TextBox_2.Size = UDim2.new(0, 200, 0, 50)
TextBox_2.Font = Enum.Font.SourceSans
TextBox_2.Text = ""
TextBox_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox_2.TextSize = 14.000

-- Scripts:

local function UMKVYN_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	
	_G.Key = (tostring([[mRs@q+TS$v64Io}L]`c0x+!+@E.myOU.Vu:XUAEP"scYlRoo{U//DI(`gH=mCH0]]))
	script.Parent.InputBegan:Connect(function(EB_inp)
		if EB_inp.UserInputType == Enum.UserInputType.MouseButton1 then
			local EB_MSG_V = Instance.new("IntValue")
			EB_MSG_V.Name = "EB_MSG_"..tostring((tostring([[Key]])))
			EB_MSG_V.Parent = game.ReplicatedStorage
		end
	end)
	_G.Actived = false
	
	
	
	
		game.ReplicatedStorage.ChildAdded:Connect(function(EB_c)
		if EB_c.Name == "EB_MSG_"..tostring((tostring([[Key]]))) then
			spawn(function()
				task.wait(0.1)
				EB_c:Destroy()
			end)
			if ((script.Parent.Parent:FindFirstChild('TextBox')[tostring((tostring([[Text]])))] == _G.Key)) then
	print((tostring([[Key exata]])))
	game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = tostring((tostring([[Right key ]]))), Color = Color3.fromRGB( 255,255,255 ), Font = Enum.Font.SourceSansBold, FontSize = Enum.FontSize.Size18 } )
	task.wait(tonumber((tonumber(2))))
	script.Parent.Parent.Visible = false
	_G.Actived = true
	else
	print((tostring([[Key errada]])))
	if script.Parent then
		script.Parent[(tostring([[Text]]))] = (tostring([[The key is wrong ]]))
	end
	task.wait(tonumber((tonumber(2))))
	if script.Parent then
		script.Parent[(tostring([[Text]]))] = (tostring([[Inject]]))
	end
	
	end
	
		end
	end)
	
end
coroutine.wrap(UMKVYN_fake_script)()
local function AAHQA_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	
	script.Parent.InputBegan:Connect(function(EB_inp)
		if EB_inp.UserInputType == Enum.UserInputType.MouseButton1 then
			local EB_MSG_V = Instance.new("IntValue")
			EB_MSG_V.Name = "EB_MSG_"..tostring((tostring([[Speed]])))
			EB_MSG_V.Parent = game.ReplicatedStorage
		end
	end)
	
	
		game.ReplicatedStorage.ChildAdded:Connect(function(EB_c)
		if EB_c.Name == "EB_MSG_"..tostring((tostring([[Speed]]))) then
			spawn(function()
				task.wait(0.1)
				EB_c:Destroy()
			end)
			if game.Players.LocalPlayer.Character then
	if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(script.Parent.Parent:FindFirstChild('TextBox')[tostring((tostring([[Text]])))])
	end
	end
	
		end
	end)
	
	
end
coroutine.wrap(AAHQA_fake_script)()
local function VURXWL_fake_script() -- Frame_2.LocalScript 
	local script = Instance.new('LocalScript', Frame_2)

	
	
	
	
	while true do
		if ((_G.Actived == true)) then
			break
		end
		task.wait(0.05)
	end
	script.Parent.Visible = true
	
end
coroutine.wrap(VURXWL_fake_script)()
