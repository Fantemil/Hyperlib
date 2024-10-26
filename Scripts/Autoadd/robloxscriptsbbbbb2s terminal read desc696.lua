-- Gui to Lua
-- Version: 3.2

-- Instances:

local Terminal = Instance.new("ScreenGui")
local TextLabel1 = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local TextLabel2 = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local TextBox_2 = Instance.new("TextBox")
local TextButton_2 = Instance.new("TextButton")

--Properties:

Terminal.Name = "Terminal"
Terminal.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Terminal.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Terminal.ResetOnSpawn = false

TextLabel1.Name = "TextLabel1"
TextLabel1.Parent = Terminal
TextLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel1.BackgroundTransparency = 0.300
TextLabel1.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel1.BorderSizePixel = 0
TextLabel1.Position = UDim2.new(0.060498219, 0, 0.111280486, 0)
TextLabel1.Size = UDim2.new(0, 417, 0, 25)
TextLabel1.Visible = false
TextLabel1.Font = Enum.Font.SourceSans
TextLabel1.Text = ""
TextLabel1.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel1.TextSize = 1.000
TextLabel1.TextXAlignment = Enum.TextXAlignment.Left

TextLabel.Parent = TextLabel1
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0341192745, 0, -0.00871948246, 0)
TextLabel.Size = UDim2.new(0, 402, 0, 25)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "IB306(ipban306)'s admin"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

Frame.Parent = TextLabel1
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 0.500
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(-0.00185191201, 0, 0.989390254, 0)
Frame.Size = UDim2.new(0, 417, 0, 141)

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 0.900
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.0359712243, 0, 0.102127656, 0)
TextBox.Size = UDim2.new(0, 378, 0, 50)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.fromRGB(63, 63, 63)
TextBox.PlaceholderText = "type here commands"
TextBox.Text = "fly random"
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 25.000
TextBox.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextStrokeTransparency = 0.000
TextBox.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 2
TextButton.Position = UDim2.new(0.0359712243, 0, 0.537234068, 0)
TextButton.Size = UDim2.new(0, 378, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Execute"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 25.000

TextLabel2.Name = "TextLabel2"
TextLabel2.Parent = Terminal
TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel2.BackgroundTransparency = 0.300
TextLabel2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel2.BorderSizePixel = 0
TextLabel2.Position = UDim2.new(0.060498219, 0, 0.111280486, 0)
TextLabel2.Size = UDim2.new(0, 417, 0, 25)
TextLabel2.Font = Enum.Font.SourceSans
TextLabel2.Text = ""
TextLabel2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel2.TextSize = 1.000
TextLabel2.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_2.Parent = TextLabel2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0341192745, 0, -0.00871948246, 0)
TextLabel_2.Size = UDim2.new(0, 402, 0, 25)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "IB306(ipban306)'s admin"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextSize = 14.000
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

Frame_2.Parent = TextLabel2
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BackgroundTransparency = 0.500
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(-0.00185191201, 0, 0.989390254, 0)
Frame_2.Size = UDim2.new(0, 417, 0, 141)

TextBox_2.Parent = Frame_2
TextBox_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox_2.BackgroundTransparency = 0.900
TextBox_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox_2.BorderSizePixel = 0
TextBox_2.Position = UDim2.new(0.0359712243, 0, 0.102127656, 0)
TextBox_2.Size = UDim2.new(0, 378, 0, 50)
TextBox_2.Font = Enum.Font.SourceSans
TextBox_2.PlaceholderColor3 = Color3.fromRGB(63, 63, 63)
TextBox_2.PlaceholderText = "whats ur prefix? (TYPE HERE, no text = ;)"
TextBox_2.Text = ""
TextBox_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox_2.TextSize = 25.000
TextBox_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextBox_2.TextStrokeTransparency = 0.000
TextBox_2.TextWrapped = true

TextButton_2.Parent = Frame_2
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 2
TextButton_2.Position = UDim2.new(0.0359712243, 0, 0.537234068, 0)
TextButton_2.Size = UDim2.new(0, 378, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Confirm"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 25.000

-- Scripts:

local function LQSAN_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	hider = [[
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	]]
	local UIS = game:GetService('UserInputService')
	local frame = script.Parent.Parent
	frame.Active = true
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
	
	local Players = game:GetService("Players")
	local plrname = Players.LocalPlayer.Name
	local LocalPlayer = Players.LocalPlayer
	function ClearTools()
		pcall(function()
			for _, g in pairs(LocalPlayer.Character:GetDescendants()) do
				if g:IsA("Tool") then
					g:Destroy()
				end
			end
			for _, g in pairs(LocalPlayer.Backpack:GetDescendants()) do
				if g:IsA("Tool") then
					g:Destroy()
				end
			end
		end)
	end
	
	function ActivateTools()
		pcall(function()
			for fuck, ax in pairs(LocalPlayer.Character:GetDescendants()) do
				if ax:IsA("Tool") then
					repeat wait() until ax ~= nil
					ax:Activate()
				end
			end
		end)
	end
	
	function EquipTools()
		pcall(function()
			for yessss, yipee in pairs(LocalPlayer.Backpack:GetDescendants()) do
				if yipee:IsA("Tool") then
					repeat wait() until yipee ~= nil
					yipee.Parent = LocalPlayer.Character
				end
			end
		end)
	end
	
	function UnequipTools()
		pcall(function()
			for yessss, yipee in pairs(LocalPlayer.Character:GetDescendants()) do
				if yipee:IsA("Tool") then
					repeat wait() until yipee ~= nil
					yipee.Parent = LocalPlayer.Backpack
				end
			end
		end)
	end
	local chaos = false
	script.Parent.TextButton.MouseButton1Click:Connect(function()
		spawn(function()
			local prefix = script.Parent:WaitForChild("Prefix").Value
			print("cmd "..prefix..script.Parent.TextBox.Text)
			if script.Parent.TextBox.Text == "zawarudo" then
				game.Players:Chat(hider..prefix.."music 5129686200")
				task.wait(4)
				for i, player in pairs(Players:GetPlayers()) do
					if player.Name ~= plrname then
						game.Players:Chat(hider..prefix.."freeze ".. player.Name)
					end
				end
				task.wait(1)
				game.Players:Chat(hider..prefix.."music 0")
			elseif script.Parent.TextBox.Text == "chaos" then
				chaos = true
				pcall(function()
					game.Players:Chat(hider..prefix.."gear "..plrname.." 169602103")
					task.wait(1.5)
					spawn(function()
						while wait() and chaos do
							LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(math.random(-200,200),math.random(0,200),math.random(-200,200)),Vector3.new(math.random(-200,200), math.random(0,50), math.random(-200,200))
							)
							if chaos == false then
								break
							end
						end
					end)
				end)
			elseif script.Parent.TextBox.Text == "unchaos" then
				chaos = false
			elseif script.Parent.TextBox.Text == "customcmds" then
				print([[
			zawarudo -freezes all players as from jojo
			chaos -spams rockets everywhere
			unchaos -stop spamming rockets
			turkeyraid -spawn farting white or black turkeys
			]])
				script.Parent.TextButton.Text = "the cmds are in console"
				wait(2)
				script.Parent.TextButton.Text = "inorder to open it, press f9"
				wait(3)
				script.Parent.TextButton.Text = "or just type /console in the chat"
				wait(2)
			elseif script.Parent.TextBox.Text == "turkeyraid" then
				spawn(function()
					local times = 0
					while wait() do
						times = times + 1
						game.Players:Chat(hider..prefix.."gear "..plrname.." 40504724")
						task.wait(1.5)
						EquipTools()
						task.wait(0.3)
						ActivateTools()
						ActivateTools()
						ActivateTools()
						ActivateTools()
						task.wait(0.3)
						ClearTools()
						if times == 50 then
							break;
						end
					end
				end)
			else
				game:GetService("Players"):Chat(hider..prefix..script.Parent.TextBox.Text)
			end
			script.Parent.TextBox.Text = ""
			script.Parent.TextButton.Text = "Executed"
			wait(2)
			script.Parent.TextButton.Text = "Execute"
		end)
	end)
end
coroutine.wrap(LQSAN_fake_script)()
local function BQIWAP_fake_script() -- Frame_2.LocalScript 
	local script = Instance.new('LocalScript', Frame_2)

	local bool = Instance.new("StringValue",script.Parent.Parent.Parent.TextLabel1.Frame)
	bool.Name = "Prefix"
	script.Parent.TextButton.MouseButton1Click:Connect(function()
		bool.Value = script.Parent.TextBox.Text
		if script.Parent.TextBox.Text == "" then
			bool.Value = ";"
		end
		if script.Parent.TextBox.Text == " " then
			bool.Value = ";"
		end
		script.Parent.Parent.Parent.TextLabel2.Visible = false
		script.Parent.Parent.Parent.TextLabel1.Visible = true
	end)
end
coroutine.wrap(BQIWAP_fake_script)()
