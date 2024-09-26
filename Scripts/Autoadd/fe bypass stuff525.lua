--[[

		Gui2Luaâ¢
		10zOfficial
		Version 1.0.0

]]


-- Instances

local ScreenGui = Instance.new("ScreenGui")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

-- Properties

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextButton.Parent = ScreenGui
TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton.BorderColor3 = Color3.new(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0252721608, 0, 0.403333336, 0)
TextButton.Size = UDim2.new(0, 52, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Admin GUI"
TextButton.TextColor3 = Color3.new(0, 0, 0)
TextButton.TextSize = 14
TextButton.MouseButton1Click:Connect(function()
	--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
	--no plugin use
	--fixed

	local modmenu = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local TextButton = Instance.new("TextButton")
	local TextButton_2 = Instance.new("TextButton")
	local page = Instance.new("Frame")
	local pbs = Instance.new("ScrollingFrame")
	local UIGridLayout = Instance.new("UIGridLayout")
	local TextButton_3 = Instance.new("TextButton")
	local TextButton_4 = Instance.new("TextButton")
	local TextButton_5 = Instance.new("TextButton")
	local TextButton_6 = Instance.new("TextButton")
	local TextButton_7 = Instance.new("TextButton")
	local UIGradient = Instance.new("UIGradient")
	local others = Instance.new("ScrollingFrame")
	local UIGridLayout_2 = Instance.new("UIGridLayout")
	local TextButton_8 = Instance.new("TextButton")
	local TextButton_9 = Instance.new("TextButton")
	local TextButton_10 = Instance.new("TextButton")
	local TextButton_11 = Instance.new("TextButton")
	local TextButton_12 = Instance.new("TextButton")
	local executor = Instance.new("Frame")
	local TextBox = Instance.new("TextBox")
	local TextButton_13 = Instance.new("TextButton")
	local TextButton1 = Instance.new("TextButton")
	local TextButton2 = Instance.new("TextButton")
	local TextLabel = Instance.new("TextLabel")
	local TextButton_14 = Instance.new("TextButton")
	local TextButton_15 = Instance.new("TextButton")
	local TextButton_16 = Instance.new("TextButton")
	local ImageButton = Instance.new("ImageButton")

	--Properties:

	modmenu.Name = "mod menu"
	modmenu.Parent = game.CoreGui or game.Players.LocalPlayer:WaitForChild("PlayerGui")
	modmenu.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	modmenu.ResetOnSpawn = false

	Frame.Parent = modmenu
	Frame.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
	Frame.Position = UDim2.new(0.286340415, 0, 0.0863309354, 0)
	Frame.Size = UDim2.new(0.398100793, 0, 0.762589931, 0)
	Frame.Visible = false

	TextButton.Parent = Frame
	TextButton.Active = false
	TextButton.BackgroundColor3 = Color3.fromRGB(186, 186, 186)
	TextButton.Position = UDim2.new(3.7252903e-09, 0, -0.00149159133, 0)
	TextButton.Size = UDim2.new(0.466200471, 0, 0.202429146, 0)
	TextButton.AutoButtonColor = false
	TextButton.Font = Enum.Font.Cartoon
	TextButton.Text = "Private admin Gui"
	TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.TextScaled = true
	TextButton.TextSize = 14.000
	TextButton.TextWrapped = true

	TextButton_2.Parent = Frame
	TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_2.Position = UDim2.new(3.7252903e-09, 0, 0.795653045, 0)
	TextButton_2.Size = UDim2.new(0.466200471, 0, 0.202429146, 0)
	TextButton_2.AutoButtonColor = false
	TextButton_2.Font = Enum.Font.SourceSans
	TextButton_2.Text = "made by vazy ðð"
	TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_2.TextScaled = true
	TextButton_2.TextSize = 14.000
	TextButton_2.TextWrapped = true

	page.Name = "page"
	page.Parent = Frame
	page.BackgroundColor3 = Color3.fromRGB(156, 156, 156)
	page.Position = UDim2.new(0, 0, 0.199445978, 0)
	page.Size = UDim2.new(1, 0, 0.562326849, 0)

	pbs.Name = "pbs"
	pbs.Parent = page
	pbs.Active = true
	pbs.BackgroundColor3 = Color3.fromRGB(139, 139, 139)
	pbs.Position = UDim2.new(0.0372960381, 0, 0.108374387, 0)
	pbs.Size = UDim2.new(0.918414891, 0, 0.738916337, 0)
	pbs.Visible = false
	pbs.CanvasPosition = Vector2.new(0, 52.9496307)

	UIGridLayout.Parent = pbs
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder

	TextButton_3.Parent = pbs
	TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_3.Position = UDim2.new(3.7252903e-09, 0, 0.261027038, 0)
	TextButton_3.Size = UDim2.new(0.466200471, 0, 0.202429146, 0)
	TextButton_3.Font = Enum.Font.SourceSans
	TextButton_3.Text = "Get Cheese (known)"
	TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_3.TextScaled = true
	TextButton_3.TextSize = 14.000
	TextButton_3.TextWrapped = true

	TextButton_4.Parent = pbs
	TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_4.Position = UDim2.new(3.7252903e-09, 0, 0.557425916, 0)
	TextButton_4.Size = UDim2.new(0.466200471, 0, 0.202429146, 0)
	TextButton_4.Font = Enum.Font.SourceSans
	TextButton_4.Text = "Spawn OOF (dah) sound"
	TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_4.TextScaled = true
	TextButton_4.TextSize = 14.000
	TextButton_4.TextWrapped = true

	TextButton_5.Parent = pbs
	TextButton_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_5.Position = UDim2.new(0.533799589, 0, -0.000213131309, 0)
	TextButton_5.Size = UDim2.new(0.466200471, 0, 0.202429146, 0)
	TextButton_5.Font = Enum.Font.SourceSans
	TextButton_5.Text = "Get trashy cola"
	TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_5.TextScaled = true
	TextButton_5.TextSize = 14.000
	TextButton_5.TextWrapped = true

	TextButton_6.Parent = pbs
	TextButton_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_6.Position = UDim2.new(0.533799589, 0, 0.261027038, 0)
	TextButton_6.Size = UDim2.new(0.466200471, 0, 0.202429146, 0)
	TextButton_6.Font = Enum.Font.SourceSans
	TextButton_6.Text = "Tp to easter egg"
	TextButton_6.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_6.TextScaled = true
	TextButton_6.TextSize = 14.000
	TextButton_6.TextWrapped = true

	TextButton_7.Parent = pbs
	TextButton_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_7.Position = UDim2.new(0.533799589, 0, 0.560195923, 0)
	TextButton_7.Size = UDim2.new(0.466200471, 0, 0.202429146, 0)
	TextButton_7.Font = Enum.Font.SourceSans
	TextButton_7.Text = "Chirtmas giver, 275+ coins needed"
	TextButton_7.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_7.TextScaled = true
	TextButton_7.TextSize = 14.000
	TextButton_7.TextWrapped = true

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 115, 255)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(81, 36, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(119, 0, 255))}
	UIGradient.Parent = page

	others.Name = "others"
	others.Parent = page
	others.Active = true
	others.BackgroundColor3 = Color3.fromRGB(139, 139, 139)
	others.Position = UDim2.new(0.0372960381, 0, 0.108374387, 0)
	others.Size = UDim2.new(0.918414891, 0, 0.738916337, 0)
	others.Visible = false
	others.CanvasPosition = Vector2.new(0, 52.9496307)

	UIGridLayout_2.Parent = others
	UIGridLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

	TextButton_8.Parent = others
	TextButton_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_8.Position = UDim2.new(3.7252903e-09, 0, 0.261027038, 0)
	TextButton_8.Size = UDim2.new(0.466200471, 0, 0.202429146, 0)
	TextButton_8.Font = Enum.Font.SourceSans
	TextButton_8.Text = "1x1x1x1 gui (remember only works on fd (filtering disabled) games.)"
	TextButton_8.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_8.TextScaled = true
	TextButton_8.TextSize = 14.000
	TextButton_8.TextWrapped = true

	TextButton_9.Parent = others
	TextButton_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_9.Position = UDim2.new(3.7252903e-09, 0, 0.557425916, 0)
	TextButton_9.Size = UDim2.new(0.466200471, 0, 0.202429146, 0)
	TextButton_9.Font = Enum.Font.SourceSans
	TextButton_9.Text = "fanmader exsed gui (how it works?: there must be a unknown RemoteEvent is replicatedstorage if dont then doesnt work.)"
	TextButton_9.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_9.TextScaled = true
	TextButton_9.TextSize = 14.000
	TextButton_9.TextWrapped = true

	TextButton_10.Parent = others
	TextButton_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_10.Position = UDim2.new(0.533799589, 0, -0.000213131309, 0)
	TextButton_10.Size = UDim2.new(0.466200471, 0, 0.202429146, 0)
	TextButton_10.Font = Enum.Font.SourceSans
	TextButton_10.Text = "admin breaker (uhh yes lucky blocks game only)"
	TextButton_10.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_10.TextScaled = true
	TextButton_10.TextSize = 14.000
	TextButton_10.TextWrapped = true

	TextButton_11.Parent = others
	TextButton_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_11.Position = UDim2.new(0.533799589, 0, 0.261027038, 0)
	TextButton_11.Size = UDim2.new(0.466200471, 0, 0.202429146, 0)
	TextButton_11.Font = Enum.Font.SourceSans
	TextButton_11.Text = "nds game gui (key needed just execute then u need a key)"
	TextButton_11.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_11.TextScaled = true
	TextButton_11.TextSize = 14.000
	TextButton_11.TextWrapped = true

	TextButton_12.Parent = others
	TextButton_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_12.Position = UDim2.new(0.533799589, 0, 0.560195923, 0)
	TextButton_12.Size = UDim2.new(0.466200471, 0, 0.202429146, 0)
	TextButton_12.Font = Enum.Font.SourceSans
	TextButton_12.Text = "vhub fanmade hub (melon hub ye)"
	TextButton_12.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_12.TextScaled = true
	TextButton_12.TextSize = 14.000
	TextButton_12.TextWrapped = true

	executor.Name = "executor"
	executor.Parent = page
	executor.BackgroundColor3 = Color3.fromRGB(0, 128, 154)
	executor.Position = UDim2.new(0.0372960381, 0, 0.108374387, 0)
	executor.Size = UDim2.new(0.918414891, 0, 0.738916337, 0)
	executor.Visible = false

	TextBox.Parent = executor
	TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.Position = UDim2.new(0.0482233502, 0, 0.0799999982, 0)
	TextBox.Size = UDim2.new(0.898477137, 0, 0.633333325, 0)
	TextBox.ClearTextOnFocus = false
	TextBox.Font = Enum.Font.SourceSans
	TextBox.MultiLine = true
	TextBox.PlaceholderColor3 = Color3.fromRGB(130, 130, 130)
	TextBox.PlaceholderText = "script"
	TextBox.Text = ""
	TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.TextSize = 14.000
	TextBox.TextWrapped = true
	TextBox.TextXAlignment = Enum.TextXAlignment.Left
	TextBox.TextYAlignment = Enum.TextYAlignment.Top

	TextButton_13.Parent = executor
	TextButton_13.BackgroundColor3 = Color3.fromRGB(0, 255, 119)
	TextButton_13.Position = UDim2.new(0.0482233502, 0, 0.813333333, 0)
	TextButton_13.Size = UDim2.new(0.152284265, 0, 0.119999997, 0)
	TextButton_13.Font = Enum.Font.SourceSans
	TextButton_13.Text = "exec"
	TextButton_13.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_13.TextScaled = true
	TextButton_13.TextSize = 14.000
	TextButton_13.TextWrapped = true

	TextButton1.Name = "TextButton1"
	TextButton1.Parent = executor
	TextButton1.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
	TextButton1.Position = UDim2.new(0.236040607, 0, 0.813333333, 0)
	TextButton1.Size = UDim2.new(0.152284265, 0, 0.119999997, 0)
	TextButton1.Font = Enum.Font.SourceSans
	TextButton1.Text = "clear"
	TextButton1.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton1.TextScaled = true
	TextButton1.TextSize = 14.000
	TextButton1.TextWrapped = true

	TextButton2.Name = "TextButton2"
	TextButton2.Parent = executor
	TextButton2.BackgroundColor3 = Color3.fromRGB(255, 247, 0)
	TextButton2.Position = UDim2.new(0.421319783, 0, 0.813333333, 0)
	TextButton2.Size = UDim2.new(0.152284265, 0, 0.119999997, 0)
	TextButton2.Font = Enum.Font.SourceSans
	TextButton2.Text = "inject"
	TextButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton2.TextScaled = true
	TextButton2.TextSize = 14.000
	TextButton2.TextWrapped = true

	TextLabel.Parent = executor
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.Position = UDim2.new(0.609137058, 0, 0.813333333, 0)
	TextLabel.Size = UDim2.new(0.286802024, 0, 0.119999997, 0)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = "injecting handles 60 sec!"
	TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true

	TextButton_14.Parent = Frame
	TextButton_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_14.Position = UDim2.new(0.4825688, 0, 0.795653045, 0)
	TextButton_14.Size = UDim2.new(0.161613271, 0, 0.202429146, 0)
	TextButton_14.Font = Enum.Font.SourceSans
	TextButton_14.Text = "public bathroom simulator"
	TextButton_14.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_14.TextScaled = true
	TextButton_14.TextSize = 14.000
	TextButton_14.TextWrapped = true

	TextButton_15.Parent = Frame
	TextButton_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_15.Position = UDim2.new(0.662385285, 0, 0.809804022, 0)
	TextButton_15.Size = UDim2.new(0.161613271, 0, 0.188278198, 0)
	TextButton_15.Font = Enum.Font.SourceSans
	TextButton_15.Text = "others"
	TextButton_15.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_15.TextScaled = true
	TextButton_15.TextSize = 14.000
	TextButton_15.TextWrapped = true

	TextButton_16.Parent = Frame
	TextButton_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_16.Position = UDim2.new(0.836697221, 0, 0.882917225, 0)
	TextButton_16.Size = UDim2.new(0.134090334, 0, 0.108089522, 0)
	TextButton_16.Font = Enum.Font.SourceSans
	TextButton_16.Text = "executor"
	TextButton_16.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_16.TextScaled = true
	TextButton_16.TextSize = 14.000
	TextButton_16.TextWrapped = true

	ImageButton.Parent = modmenu
	ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageButton.Position = UDim2.new(0.816654503, 0, 0.0719424486, 0)
	ImageButton.Size = UDim2.new(0.0730460212, 0, 0.179856122, 0)
	ImageButton.Image = "rbxassetid://9676276904"

	-- Module Scripts:

	local fake_module_scripts = {}

	do -- nil.scriptexecutes
		local script = Instance.new('ModuleScript', nil)
		script.Name = "scriptexecutes"
		local function module_script()
			local module = {}
			function module:execute(E)
				print("injected button")
			end

			return module

		end
		fake_module_scripts[script] = module_script
	end


	-- Scripts:

	local function EWQUEXR_fake_script() -- TextButton_2.LocalScript 
		local script = Instance.new('LocalScript', TextButton_2)
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end


	end
	coroutine.wrap(EWQUEXR_fake_script)()
	local function EUXZHRF_fake_script() -- TextButton_3.LocalScript 
		local script = Instance.new('LocalScript', TextButton_3)
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		script.Parent.MouseButton1Click:Connect(function()
			FIREFIREIIDEIIFFGJDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDG = workspace:WaitForChild(workspace:FindFirstChild("CheeseGiver").Name).ClickDetector
			e = FIREFIREIIDEIIFFGJDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDG
			fireclickdetector(e)
		end)
	end
	coroutine.wrap(EUXZHRF_fake_script)()
	local function GYPTV_fake_script() -- TextButton_4.LocalScript 
		local script = Instance.new('LocalScript', TextButton_4)
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		script.Parent.MouseButton1Click:Connect(function()
			FIREFIREIIDEIIFFGJDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDG = workspace:WaitForChild(workspace:FindFirstChild("MrOof").Name).Bighead.ClickDetector
			e = FIREFIREIIDEIIFFGJDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDG
			fireclickdetector(e)
		end)
	end
	coroutine.wrap(GYPTV_fake_script)()
	local function DMKSXB_fake_script() -- TextButton_5.LocalScript 
		local script = Instance.new('LocalScript', TextButton_5)
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		script.Parent.MouseButton1Click:Connect(function()
			FIREFIREIIDEIIFFGJDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDG = workspace:WaitForChild(workspace:FindFirstChild("Trash can").Name).Trash.Can.ClickDetector
			e = FIREFIREIIDEIIFFGJDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDGDG
			fireclickdetector(e)
		end)
	end
	coroutine.wrap(DMKSXB_fake_script)()
	local function UHJOVM_fake_script() -- TextButton_6.LocalScript 
		local script = Instance.new('LocalScript', TextButton_6)
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		script.Parent.MouseButton1Click:Connect(function()
			local h = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			h.CFrame = CFrame.new(-6.6085043, 2.99999928, -137.178055, 0.997518539, 2.39494522e-08, 0.0704042464, -2.01394794e-08, 1, -5.48254917e-08, -0.0704042464, 5.32715383e-08, 0.997518539)
		end)
	end
	coroutine.wrap(UHJOVM_fake_script)()
	local function JGNT_fake_script() -- TextButton_7.LocalScript 
		local script = Instance.new('LocalScript', TextButton_7)
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		script.Parent.MouseButton1Click:Connect(function()
			local rip = game.ReplicatedStorage.ToolEvents
			rip.SnowGlobeEvent:FireServer()
		end)
	end
	coroutine.wrap(JGNT_fake_script)()
	local function PULJYWG_fake_script() -- TextButton_8.LocalScript 
		local script = Instance.new('LocalScript', TextButton_8)
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		script.Parent.MouseButton1Click:Connect(function()
			local raw = "http://pastebin.com/raw/CYye6uA4#"
			loadstring(game:HttpGet((raw), true))()
		end)
	end
	coroutine.wrap(PULJYWG_fake_script)()
	local function PFTLLYV_fake_script() -- TextButton_9.LocalScript 
		local script = Instance.new('LocalScript', TextButton_9)
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		script.Parent.MouseButton1Click:Connect(function()
			local s = 'require(10868847330):pls("' ..game.Players.LocalPlayer.Name.. '")'
			game.ReplicatedStorage:WaitForChild("RemoteEvent"):FireServer(s)
		end)
	end
	coroutine.wrap(PFTLLYV_fake_script)()
	local function GGQKYMS_fake_script() -- TextButton_10.LocalScript 
		local script = Instance.new('LocalScript', TextButton_10)
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		script.Parent.MouseButton1Click:Connect(function()
			local raw = "http://pastebin.com/raw/yskeVYYW#"
			loadstring(game:HttpGetAsync((raw)))()
		end)
	end
	coroutine.wrap(GGQKYMS_fake_script)()
	local function VOUW_fake_script() -- TextButton_11.LocalScript 
		local script = Instance.new('LocalScript', TextButton_11)
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		script.Parent.MouseButton1Click:Connect(function()
			loadstring(game:HttpGet('https://raw.githubusercontent.com/ViribusOwner/Viribus/main/Loader', true))()
		end)
	end
	coroutine.wrap(VOUW_fake_script)()
	local function BHXWQ_fake_script() -- TextButton_12.LocalScript 
		local script = Instance.new('LocalScript', TextButton_12)
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		script.Parent.MouseButton1Click:Connect(function()
			-- Gui to Lua
			-- Version: 3.2

			-- Instances:
			game:GetService("StarterGui"):SetCore("SendNotification", { 
				Title = "Melon Hub Version 2";
				Text = "Inspired by vhub, gui from psy hub (edited), This is not vhub and animations are fe only";
				Icon = "rbxthumb://type=Asset&id=7969699183&w=150&h=150"})
			Duration = 16;
			local ScreenGui = Instance.new("ScreenGui")
			local OpenFrame = Instance.new("Frame")
			local GUI = Instance.new("ScreenGui")
			local OpenButton = Instance.new("TextButton")
			local OpenBeautyFrame = Instance.new("Frame")
			local MainFrame = Instance.new("Frame")
			local MainFrameBeautyA = Instance.new("Frame")
			local CloseButton = Instance.new("TextButton")
			local EXPLOIT1 = Instance.new("TextButton")
			local MainFrameCenterBeautyA = Instance.new("Frame")
			local MainFrameCenterBeautyA_2 = Instance.new("Frame")
			local EXPLOIT5 = Instance.new("TextButton")
			local EXPLOIT9 = Instance.new("TextButton")
			local EXPLOIT6 = Instance.new("TextButton")
			local EXPLOIT7 = Instance.new("TextButton")
			local EXPLOIT8 = Instance.new("TextButton")
			local EXPLOIT10 = Instance.new("TextButton")
			local EXPLOIT11 = Instance.new("TextButton")
			local EXPLOIT12 = Instance.new("TextButton")
			local EXPLOIT2 = Instance.new("TextButton")
			local EXPLOIT3 = Instance.new("TextButton")
			local EXPLOIT4 = Instance.new("TextButton")
			local MainFrameBeautyB = Instance.new("Frame")


			--Properties:
			GUI.Name = "GUI"
			GUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

			OpenFrame.Name = "OpenFrame"
			OpenFrame.Parent = GUI
			OpenFrame.Active = true
			OpenFrame.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
			OpenFrame.BorderSizePixel = 0
			OpenFrame.Position = UDim2.new(0, 0, 0.629155695, 0)
			OpenFrame.Size = UDim2.new(0, 72, 0, 27)

			OpenButton.Name = "OpenButton"
			OpenButton.Parent = OpenFrame
			OpenButton.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
			OpenButton.BackgroundTransparency = 1.000
			OpenButton.BorderSizePixel = 0
			OpenButton.Position = UDim2.new(0.0305736773, 0, 0.116329789, 0)
			OpenButton.Size = UDim2.new(0, 66, 0, 20)
			OpenButton.Font = Enum.Font.Cartoon
			OpenButton.Text = "Melon Hub"
			OpenButton.TextColor3 = Color3.fromRGB(255, 0, 0)
			OpenButton.TextScaled = true
			OpenButton.TextSize = 14.000
			OpenButton.TextWrapped = true
			OpenButton.MouseButton1Down:connect(function()
				MainFrame.Visible = true
				OpenFrame.Visible = false
				MainFrameBeautyA.Visible = true
				MainFrameBeautyB.Visible = true
				MainFrameCenterBeautyA_2.Visible = true
				MainFrameCenterBeautyA.Visible = true
			end)

			OpenBeautyFrame.Name = "OpenBeautyFrame"
			OpenBeautyFrame.Parent = OpenFrame
			OpenBeautyFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			OpenBeautyFrame.BorderSizePixel = 0
			OpenBeautyFrame.Position = UDim2.new(0.988907099, 0, -0.148148149, 0)
			OpenBeautyFrame.Size = UDim2.new(0, 3, 0, 33)

			MainFrame.Name = "MainFrame"
			MainFrame.Parent = GUI
			MainFrame.Active = true
			MainFrame.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
			MainFrame.BorderSizePixel = 0
			MainFrame.Position = UDim2.new(0.30754894, 0, 0.235294133, 0)
			MainFrame.Size = UDim2.new(0, 412, 0, 263)
			MainFrame.Visible = false
			MainFrame.Draggable = true

			MainFrameBeautyA.Name = "MainFrameBeautyA"
			MainFrameBeautyA.Parent = MainFrame
			MainFrameBeautyA.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			MainFrameBeautyA.BorderSizePixel = 0
			MainFrameBeautyA.Size = UDim2.new(0, 412, 0, 22)
			MainFrameBeautyA.Visible = false

			CloseButton.Name = "CloseButton"
			CloseButton.Parent = MainFrameBeautyA
			CloseButton.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
			CloseButton.BackgroundTransparency = 1.000
			CloseButton.BorderSizePixel = 0
			CloseButton.Position = UDim2.new(0.905339777, 0, 0, 0)
			CloseButton.Size = UDim2.new(0, 39, 0, 22)
			CloseButton.Font = Enum.Font.Cartoon
			CloseButton.Text = "Close"
			CloseButton.TextColor3 = Color3.fromRGB(255, 0, 0)
			CloseButton.TextScaled = true
			CloseButton.TextSize = 14.000
			CloseButton.TextWrapped = true
			CloseButton.MouseButton1Down:connect(function()
				OpenFrame.Visible = true
				MainFrame.Visible = false
				MainFrameBeautyA.Visible = false
				MainFrameBeautyB.Visible = false
				MainFrameCenterBeautyA_2.Visible = false
				MainFrameCenterBeautyA.Visible = false
			end)

			EXPLOIT1.Name = "EXPLOIT1"
			EXPLOIT1.Parent = MainFrame
			EXPLOIT1.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
			EXPLOIT1.BorderSizePixel = 0
			EXPLOIT1.Position = UDim2.new(0.024271844, 0, 0.129277572, 0)
			EXPLOIT1.Size = UDim2.new(0, 92, 0, 32)
			EXPLOIT1.Font = Enum.Font.Cartoon
			EXPLOIT1.Text = "FE Voodoo Child"
			EXPLOIT1.TextColor3 = Color3.fromRGB(255, 0, 0)
			EXPLOIT1.TextScaled = true
			EXPLOIT1.TextSize = 14.000
			EXPLOIT1.TextWrapped = true
			EXPLOIT1.MouseButton1Down:connect(function()
				loadstring(game:HttpGet(('https://pastebin.com/raw/RTSMznAk'),true))()
			end)

			MainFrameCenterBeautyA.Name = "MainFrameCenterBeautyA"
			MainFrameCenterBeautyA.Parent = MainFrame
			MainFrameCenterBeautyA.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			MainFrameCenterBeautyA.BorderSizePixel = 0
			MainFrameCenterBeautyA.Position = UDim2.new(0.288834959, 0, 0.129277572, 0)
			MainFrameCenterBeautyA.Size = UDim2.new(0, 8, 0, 185)
			MainFrameCenterBeautyA.Visible = false

			MainFrameCenterBeautyA_2.Name = "MainFrameCenterBeautyA"
			MainFrameCenterBeautyA_2.Parent = MainFrame
			MainFrameCenterBeautyA_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			MainFrameCenterBeautyA_2.BorderSizePixel = 0
			MainFrameCenterBeautyA_2.Position = UDim2.new(0.699029148, 0, 0.129277557, 0)
			MainFrameCenterBeautyA_2.Size = UDim2.new(0, 8, 0, 185)
			MainFrameCenterBeautyA_2.Visible = false

			EXPLOIT5.Name = "EXPLOIT5"
			EXPLOIT5.Parent = MainFrame
			EXPLOIT5.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
			EXPLOIT5.BorderSizePixel = 0
			EXPLOIT5.Position = UDim2.new(0.388349503, 0, 0.129277572, 0)
			EXPLOIT5.Size = UDim2.new(0, 92, 0, 32)
			EXPLOIT5.Font = Enum.Font.Cartoon
			EXPLOIT5.Text = "FE Galacta"
			EXPLOIT5.TextColor3 = Color3.fromRGB(255, 0, 0)
			EXPLOIT5.TextScaled = true
			EXPLOIT5.TextSize = 14.000
			EXPLOIT5.TextWrapped = true
			EXPLOIT5.MouseButton1Down:connect(function()
				loadstring(game:HttpGet(('https://pastebin.com/raw/YqgUQ5Zj'),true))()
			end)

			EXPLOIT9.Name = "EXPLOIT9"
			EXPLOIT9.Parent = MainFrame
			EXPLOIT9.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
			EXPLOIT9.BorderSizePixel = 0
			EXPLOIT9.Position = UDim2.new(0.75242722, 0, 0.129277572, 0)
			EXPLOIT9.Size = UDim2.new(0, 92, 0, 32)
			EXPLOIT9.Font = Enum.Font.Cartoon
			EXPLOIT9.Text = "Netless V5 (wait 10 seconds)"
			EXPLOIT9.TextColor3 = Color3.fromRGB(255, 0, 0)
			EXPLOIT9.TextScaled = true
			EXPLOIT9.TextSize = 14.000
			EXPLOIT9.TextWrapped = true
			EXPLOIT9.MouseButton1Down:connect(function()
				loadstring(game:HttpGet(('https://pastebin.com/raw/bDz8RLNC'),true))()
			end)

			EXPLOIT6.Name = "EXPLOIT6"
			EXPLOIT6.Parent = MainFrame
			EXPLOIT6.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
			EXPLOIT6.BorderSizePixel = 0
			EXPLOIT6.Position = UDim2.new(0.388349503, 0, 0.323193908, 0)
			EXPLOIT6.Size = UDim2.new(0, 92, 0, 32)
			EXPLOIT6.Font = Enum.Font.Cartoon
			EXPLOIT6.Text = "FE Jump In The Caac"
			EXPLOIT6.TextColor3 = Color3.fromRGB(255, 0, 0)
			EXPLOIT6.TextScaled = true
			EXPLOIT6.TextSize = 14.000
			EXPLOIT6.TextWrapped = true
			EXPLOIT6.MouseButton1Down:connect(function()
				loadstring(game:HttpGet(('https://pastebin.com/raw/JBCfFnwW'),true))()
			end)

			EXPLOIT7.Name = "EXPLOIT7"
			EXPLOIT7.Parent = MainFrame
			EXPLOIT7.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
			EXPLOIT7.BorderSizePixel = 0
			EXPLOIT7.Position = UDim2.new(0.388349503, 0, 0.520912528, 0)
			EXPLOIT7.Size = UDim2.new(0, 92, 0, 32)
			EXPLOIT7.Font = Enum.Font.Cartoon
			EXPLOIT7.Text = "FE Sin Dragon"
			EXPLOIT7.TextColor3 = Color3.fromRGB(255, 0, 0)
			EXPLOIT7.TextScaled = true
			EXPLOIT7.TextSize = 14.000
			EXPLOIT7.TextWrapped = true
			EXPLOIT7.MouseButton1Down:connect(function()
				loadstring(game:HttpGet(('https://pastebin.com/raw/AC7at7uJ'),true))()
			end)

			EXPLOIT8.Name = "EXPLOIT8"
			EXPLOIT8.Parent = MainFrame
			EXPLOIT8.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
			EXPLOIT8.BorderSizePixel = 0
			EXPLOIT8.Position = UDim2.new(0.388349503, 0, 0.711026609, 0)
			EXPLOIT8.Size = UDim2.new(0, 92, 0, 32)
			EXPLOIT8.Font = Enum.Font.Cartoon
			EXPLOIT8.Text = "Reaper Hub"
			EXPLOIT8.TextColor3 = Color3.fromRGB(255, 0, 0)
			EXPLOIT8.TextScaled = true
			EXPLOIT8.TextSize = 14.000
			EXPLOIT8.TextWrapped = true
			EXPLOIT8.MouseButton1Down:connect(function()
				loadstring(game:HttpGet(('https://pastebin.com/raw/C0PX7S1T'),true))()
			end)

			EXPLOIT10.Name = "EXPLOIT10"
			EXPLOIT10.Parent = MainFrame
			EXPLOIT10.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
			EXPLOIT10.BorderSizePixel = 0
			EXPLOIT10.Position = UDim2.new(0.75242722, 0, 0.323193908, 0)
			EXPLOIT10.Size = UDim2.new(0, 92, 0, 32)
			EXPLOIT10.Font = Enum.Font.Cartoon
			EXPLOIT10.Text = "FE Fling Gui (Auto Updates)"
			EXPLOIT10.TextColor3 = Color3.fromRGB(255, 0, 0)
			EXPLOIT10.TextScaled = true
			EXPLOIT10.TextSize = 14.000
			EXPLOIT10.TextWrapped = true
			EXPLOIT10.MouseButton1Down:connect(function()
				loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
			end)

			EXPLOIT11.Name = "EXPLOIT11"
			EXPLOIT11.Parent = MainFrame
			EXPLOIT11.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
			EXPLOIT11.BorderSizePixel = 0
			EXPLOIT11.Position = UDim2.new(0.75242722, 0, 0.520912528, 0)
			EXPLOIT11.Size = UDim2.new(0, 92, 0, 32)
			EXPLOIT11.Font = Enum.Font.Cartoon
			EXPLOIT11.Text = "FE Gauntlet"
			EXPLOIT11.TextColor3 = Color3.fromRGB(255, 0, 0)
			EXPLOIT11.TextScaled = true
			EXPLOIT11.TextSize = 14.000
			EXPLOIT11.TextWrapped = true
			EXPLOIT11.MouseButton1Down:connect(function()
				loadstring(game:HttpGet(('https://pastebin.com/raw/hQPjzRw1'),true))()
			end)

			EXPLOIT12.Name = "EXPLOIT12"
			EXPLOIT12.Parent = MainFrame
			EXPLOIT12.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
			EXPLOIT12.BorderSizePixel = 0
			EXPLOIT12.Position = UDim2.new(0.75242722, 0, 0.711026609, 0)
			EXPLOIT12.Size = UDim2.new(0, 92, 0, 32)
			EXPLOIT12.Font = Enum.Font.Cartoon
			EXPLOIT12.Text = "FE Cyber Sword"
			EXPLOIT12.TextColor3 = Color3.fromRGB(255, 0, 0)
			EXPLOIT12.TextScaled = true
			EXPLOIT12.TextSize = 14.000
			EXPLOIT12.TextWrapped = true
			EXPLOIT12.MouseButton1Down:connect(function()
				loadstring(game:HttpGet('https://pastebin.com/raw/9QvXVnnp', true))()
			end)

			EXPLOIT2.Name = "EXPLOIT2"
			EXPLOIT2.Parent = MainFrame
			EXPLOIT2.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
			EXPLOIT2.BorderSizePixel = 0
			EXPLOIT2.Position = UDim2.new(0.024271844, 0, 0.323193908, 0)
			EXPLOIT2.Size = UDim2.new(0, 92, 0, 32)
			EXPLOIT2.Font = Enum.Font.Cartoon
			EXPLOIT2.Text = "FE Pog Dance"
			EXPLOIT2.TextColor3 = Color3.fromRGB(255, 0, 0)
			EXPLOIT2.TextScaled = true
			EXPLOIT2.TextSize = 14.000
			EXPLOIT2.TextWrapped = true
			EXPLOIT2.MouseButton1Down:connect(function()
				loadstring(game:HttpGet("https://pastebin.com/raw/JT5yZbDs",true))()
			end)

			EXPLOIT3.Name = "EXPLOIT3"
			EXPLOIT3.Parent = MainFrame
			EXPLOIT3.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
			EXPLOIT3.BorderSizePixel = 0
			EXPLOIT3.Position = UDim2.new(0.024271844, 0, 0.520912528, 0)
			EXPLOIT3.Size = UDim2.new(0, 92, 0, 32)
			EXPLOIT3.Font = Enum.Font.Cartoon
			EXPLOIT3.Text = "FE World Eater"
			EXPLOIT3.TextColor3 = Color3.fromRGB(255, 0, 0)
			EXPLOIT3.TextScaled = true
			EXPLOIT3.TextSize = 14.000
			EXPLOIT3.TextWrapped = true
			EXPLOIT3.MouseButton1Down:connect(function()
				loadstring(game:HttpGet("https://pastebin.com/raw/hdPJ28NL"))()
			end)

			EXPLOIT4.Name = "EXPLOIT4"
			EXPLOIT4.Parent = MainFrame
			EXPLOIT4.BackgroundColor3 = Color3.fromRGB(1, 0, 0)
			EXPLOIT4.BorderSizePixel = 0
			EXPLOIT4.Position = UDim2.new(0.024271844, 0, 0.711026609, 0)
			EXPLOIT4.Size = UDim2.new(0, 92, 0, 32)
			EXPLOIT4.Font = Enum.Font.Cartoon
			EXPLOIT4.Text = "FE 2007/2014 Animations"
			EXPLOIT4.TextColor3 = Color3.fromRGB(255, 0, 0)
			EXPLOIT4.TextScaled = true
			EXPLOIT4.TextSize = 14.000
			EXPLOIT4.TextWrapped = true
			EXPLOIT4.MouseButton1Down:connect(function()
				loadstring(game:HttpGet("https://pastebin.com/raw/pYjkmxUe", true))()
			end)

			MainFrameBeautyB.Name = "MainFrameBeautyB"
			MainFrameBeautyB.Parent = MainFrame
			MainFrameBeautyB.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			MainFrameBeautyB.BorderSizePixel = 0
			MainFrameBeautyB.Position = UDim2.new(0, 0, 0.916349828, 0)
			MainFrameBeautyB.Size = UDim2.new(0, 412, 0, 22)
			MainFrameBeautyB.Visible = false
		end)
	end
	coroutine.wrap(BHXWQ_fake_script)()
	local function ECMR_fake_script() -- executor.api 
		local script = Instance.new('LocalScript', executor)
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		local APIExecute
		injected = false

		script.Parent.TextButton.MouseButton1Click:Connect(function()
			if injected == false then return end
			assert(loadstring(tostring(script.Parent.TextBox.Text)))()
		end)

		script.Parent.TextButton1.MouseButton1Click:Connect(function()
			script.Parent.TextBox.Text = ""
		end)
		script.Parent.TextButton2.MouseButton1Click:Connect(function()
			if injected == true then
				return;
			end
			script.Parent.TextButton2.Text = "injecting (dont click fast)"
			wait(2)
			injected = true
			script.Parent.TextButton2.Text = "injected"
			game.StarterGui:SetCore("SendNotification", {
				Title = "Injected by WeAreDevs API!"; -- the title 
				Text = ("Id for place is " ..game.PlaceId.. "!"); -- what the text says 
				Duration = 5; -- how long the notification should in secounds
			})
			wait(60)
			script.Parent.TextButton2.Text = "inject cancelled now!"
			wait(5)
			injected = false
			script.Parent.TextButton2.Text = "inject"
		end)
	end
	coroutine.wrap(ECMR_fake_script)()
	local function RJEG_fake_script() -- TextButton_14.LocalScript 
		local script = Instance.new('LocalScript', TextButton_14)
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		script.Parent.MouseButton1Click:Connect(function()
			local p = script.Parent.Parent.page
			for i, v in pairs(p:GetChildren()) do
				spawn(function()
					if v:IsA("UIGradient") or string.match(v.Name, "UI") then return end
					v.Visible = false
				end)
			end
			wait(0.03)
			p["pbs"].Visible = true
		end)
	end
	coroutine.wrap(RJEG_fake_script)()
	local function QWIKW_fake_script() -- TextButton_15.LocalScript 
		local script = Instance.new('LocalScript', TextButton_15)
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		script.Parent.MouseButton1Click:Connect(function()
			local p = script.Parent.Parent.page
			for i, v in pairs(p:GetChildren()) do
				spawn(function()
					if v:IsA("UIGradient") or string.match(v.Name, "UI") then return end
					v.Visible = false
				end)
			end
			wait(0.03)
			p["others"].Visible = true
		end)
	end
	coroutine.wrap(QWIKW_fake_script)()
	local function HUNL_fake_script() -- TextButton_16.LocalScript 
		local script = Instance.new('LocalScript', TextButton_16)
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		script.Parent.MouseButton1Click:Connect(function()
			local p = script.Parent.Parent.page
			for i, v in pairs(p:GetChildren()) do
				spawn(function()
					if v:IsA("UIGradient") or string.match(v.Name, "UI") then return end
					v.Visible = false
				end)
			end
			wait(0.03)
			p["executor"].Visible = true
		end)
	end
	coroutine.wrap(HUNL_fake_script)()
	local function DKSNCG_fake_script() -- ImageButton.LocalScript 
		local script = Instance.new('LocalScript', ImageButton)
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		game.StarterGui:SetCore("SendNotification", {
			Title = "Game Place"; -- the title 
			Text = ("Id for place is " ..game.PlaceId); -- what the text says 
			Duration = 5; -- how long the notification should in secounds
		})
		wait(1.3)
		game.StarterGui:SetCore("SendNotification", {
			Title = "Script loaded"; -- the title 
			Text = "click dog image to open/close admin!"; -- what the text says 
			Duration = 5; -- how long the notification should in secounds
		})
		game.StarterGui:SetCore("SendNotification", {
			Title = "Thank u for executing script"; -- the title 
			Text = "We support u!"; -- what the text says 
			Duration = 5; -- how long the notification should in secounds
		})

		script.Parent.MouseButton1Click:Connect(
			function()
				script.Parent.Parent.Frame.Visible = not script.Parent.Parent.Frame.Visible
			end
		)
	end
	coroutine.wrap(DKSNCG_fake_script)()
	end)

TextButton_2.Parent = ScreenGui
TextButton_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_2.BorderColor3 = Color3.new(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.0252721608, 0, 0.826666653, 0)
TextButton_2.Size = UDim2.new(0, 52, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Trigon SS might be patched idk"
TextButton_2.TextColor3 = Color3.new(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14
TextButton_2.TextWrapped = true
TextButton_2.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/S33dedL0rdzOfficial/Trigon-SS/main/Script.lua.txt"))()
end)


TextButton_3.Parent = ScreenGui
TextButton_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_3.BorderColor3 = Color3.new(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.0252721608, 0, 0.688333333, 0)
TextButton_3.Size = UDim2.new(0, 52, 0, 50)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Sapple X"
TextButton_3.TextColor3 = Color3.new(0, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14
TextButton_3.TextWrapped = true
TextButton_3.MouseButton1Click:Connect(function()
	--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
	local SappleX = Instance.new("ScreenGui")
	local Executor = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local ImageLabel = Instance.new("ImageLabel")
	local TextButton = Instance.new("TextButton")
	local TextBox = Instance.new("TextBox")
	local UICorner = Instance.new("UICorner")
	local TextButton_2 = Instance.new("TextButton")
	local UICorner_2 = Instance.new("UICorner")
	local TextButton_3 = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	local TextButton_4 = Instance.new("TextButton")
	local UICorner_4 = Instance.new("UICorner")
	local TextButton_5 = Instance.new("TextButton")
	local UICorner_5 = Instance.new("UICorner")
	local TextButton_6 = Instance.new("TextButton")
	local UICorner_6 = Instance.new("UICorner")
	local TextButton_7 = Instance.new("TextButton")
	local UICorner_7 = Instance.new("UICorner")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local InfiniteYield = Instance.new("TextButton")
	local UICorner_8 = Instance.new("UICorner")
	local Synapsex = Instance.new("TextButton")
	local UICorner_9 = Instance.new("UICorner")
	local UTG = Instance.new("TextButton")
	local UICorner_10 = Instance.new("UICorner")
	local NOOTNOOT = Instance.new("TextButton")
	local UICorner_11 = Instance.new("UICorner")
	local Toadroast = Instance.new("TextButton")
	local UICorner_12 = Instance.new("UICorner")
	local Message = Instance.new("TextLabel")
	local UICorner_13 = Instance.new("UICorner")
	local Remotes = Instance.new("Folder")
	local UICorner_14 = Instance.new("UICorner")
	local plr = game.Players.LocalPlayer

	--Properties:

	SappleX.Name = "SappleX"
	SappleX.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	SappleX.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Executor.Name = "Executor"
	Executor.Parent = SappleX
	Executor.BackgroundColor3 = Color3.fromRGB(109, 11, 255)
	Executor.BorderColor3 = Color3.fromRGB(21, 21, 21)
	Executor.BorderSizePixel = 0
	Executor.Position = UDim2.new(0, 177, 0, 115)
	Executor.Size = UDim2.new(0, 1000, 0, 426)

	TextLabel.Parent = Executor
	TextLabel.BackgroundColor3 = Color3.fromRGB(109, 11, 255)
	TextLabel.BorderColor3 = Color3.fromRGB(21, 21, 21)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0, 26, 0, 0)
	TextLabel.Size = UDim2.new(0, 952, 0, 24)
	TextLabel.Font = Enum.Font.Unknown
	TextLabel.Text = "SappleX Exploit"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true

	ImageLabel.Parent = Executor
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BorderColor3 = Color3.fromRGB(21, 21, 21)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Size = UDim2.new(0, 26, 0, 24)
	ImageLabel.Image = "http://www.roblox.com/asset/?id=16946226100"

	TextButton.Parent = Executor
	TextButton.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
	TextButton.BorderColor3 = Color3.fromRGB(21, 21, 21)
	TextButton.BorderSizePixel = 0
	TextButton.Position = UDim2.new(0, 978, 0, 0)
	TextButton.Size = UDim2.new(0, 22, 0, 18)
	TextButton.Font = Enum.Font.Unknown
	TextButton.Text = "X"
	TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.TextScaled = true
	TextButton.TextSize = 14.000
	TextButton.TextWrapped = true

	TextBox.Parent = Executor
	TextBox.BackgroundColor3 = Color3.fromRGB(79, 8, 185)
	TextBox.BorderColor3 = Color3.fromRGB(21, 21, 21)
	TextBox.BorderSizePixel = 0
	TextBox.Position = UDim2.new(0, 16, 0, 38)
	TextBox.Size = UDim2.new(0, 805, 0, 323)
	TextBox.Font = Enum.Font.Unknown
	TextBox.Text = "Welcome To SappleX"
	TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.TextScaled = true
	TextBox.TextSize = 14.000
	TextBox.TextWrapped = true

	UICorner.Parent = TextBox

	TextButton_2.Parent = Executor
	TextButton_2.BackgroundColor3 = Color3.fromRGB(79, 8, 185)
	TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_2.BorderSizePixel = 0
	TextButton_2.Position = UDim2.new(0, 16, 0, 386)
	TextButton_2.Size = UDim2.new(0, 131, 0, 34)
	TextButton_2.Font = Enum.Font.Unknown
	TextButton_2.Text = "Execute"
	TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_2.TextSize = 14.000
	TextButton_2.TextWrapped = true

	UICorner_2.Parent = TextButton_2

	TextButton_3.Parent = Executor
	TextButton_3.BackgroundColor3 = Color3.fromRGB(79, 8, 185)
	TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_3.BorderSizePixel = 0
	TextButton_3.Position = UDim2.new(0, 165, 0, 386)
	TextButton_3.Size = UDim2.new(0, 131, 0, 34)
	TextButton_3.Font = Enum.Font.Unknown
	TextButton_3.Text = "Clear"
	TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_3.TextSize = 14.000
	TextButton_3.TextWrapped = true

	UICorner_3.Parent = TextButton_3

	TextButton_4.Parent = Executor
	TextButton_4.BackgroundColor3 = Color3.fromRGB(79, 8, 185)
	TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_4.BorderSizePixel = 0
	TextButton_4.Position = UDim2.new(0, 311, 0, 386)
	TextButton_4.Size = UDim2.new(0, 131, 0, 34)
	TextButton_4.Font = Enum.Font.Unknown
	TextButton_4.Text = "Open File"
	TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_4.TextSize = 14.000
	TextButton_4.TextWrapped = true

	UICorner_4.Parent = TextButton_4

	TextButton_5.Parent = Executor
	TextButton_5.BackgroundColor3 = Color3.fromRGB(79, 8, 185)
	TextButton_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_5.BorderSizePixel = 0
	TextButton_5.Position = UDim2.new(0, 453, 0, 386)
	TextButton_5.Size = UDim2.new(0, 131, 0, 34)
	TextButton_5.Font = Enum.Font.Unknown
	TextButton_5.Text = "Save File"
	TextButton_5.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_5.TextSize = 14.000
	TextButton_5.TextWrapped = true

	UICorner_5.Parent = TextButton_5

	TextButton_6.Parent = Executor
	TextButton_6.BackgroundColor3 = Color3.fromRGB(79, 8, 185)
	TextButton_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_6.BorderSizePixel = 0
	TextButton_6.Position = UDim2.new(0, 606, 0, 386)
	TextButton_6.Size = UDim2.new(0, 131, 0, 34)
	TextButton_6.Font = Enum.Font.Unknown
	TextButton_6.Text = "Inject"
	TextButton_6.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_6.TextSize = 14.000
	TextButton_6.TextWrapped = true

	UICorner_6.Parent = TextButton_6

	TextButton_7.Parent = Executor
	TextButton_7.BackgroundColor3 = Color3.fromRGB(79, 8, 185)
	TextButton_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_7.BorderSizePixel = 0
	TextButton_7.Position = UDim2.new(0, 847, 0, 386)
	TextButton_7.Size = UDim2.new(0, 131, 0, 34)
	TextButton_7.Font = Enum.Font.Unknown
	TextButton_7.Text = "Options"
	TextButton_7.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_7.TextSize = 14.000
	TextButton_7.TextWrapped = true

	UICorner_7.Parent = TextButton_7

	ScrollingFrame.Parent = Executor
	ScrollingFrame.Active = true
	ScrollingFrame.BackgroundColor3 = Color3.fromRGB(79, 8, 185)
	ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.Position = UDim2.new(0, 830, 0, 38)
	ScrollingFrame.Size = UDim2.new(0, 161, 0, 323)

	InfiniteYield.Name = "InfiniteYield"
	InfiniteYield.Parent = ScrollingFrame
	InfiniteYield.BackgroundColor3 = Color3.fromRGB(109, 11, 255)
	InfiniteYield.BorderColor3 = Color3.fromRGB(21, 21, 21)
	InfiniteYield.Position = UDim2.new(0, 8, 0, 21)
	InfiniteYield.Size = UDim2.new(0, 140, 0, 22)
	InfiniteYield.Visible = false
	InfiniteYield.Font = Enum.Font.SourceSansLight
	InfiniteYield.Text = "Infinite Yield"
	InfiniteYield.TextColor3 = Color3.fromRGB(255, 255, 255)
	InfiniteYield.TextSize = 14.000

	UICorner_8.Parent = InfiniteYield

	Synapsex.Name = "Synapsex"
	Synapsex.Parent = ScrollingFrame
	Synapsex.BackgroundColor3 = Color3.fromRGB(109, 11, 255)
	Synapsex.BorderColor3 = Color3.fromRGB(21, 21, 21)
	Synapsex.Position = UDim2.new(0, 8, 0, 71)
	Synapsex.Size = UDim2.new(0, 140, 0, 22)
	Synapsex.Visible = false
	Synapsex.Font = Enum.Font.SourceSansLight
	Synapsex.Text = "Synapse x"
	Synapsex.TextColor3 = Color3.fromRGB(255, 255, 255)
	Synapsex.TextSize = 14.000

	UICorner_9.Parent = Synapsex

	UTG.Name = "UTG"
	UTG.Parent = ScrollingFrame
	UTG.BackgroundColor3 = Color3.fromRGB(109, 11, 255)
	UTG.BorderColor3 = Color3.fromRGB(21, 21, 21)
	UTG.Position = UDim2.new(0, 8, 0, 124)
	UTG.Size = UDim2.new(0, 140, 0, 22)
	UTG.Visible = false
	UTG.Font = Enum.Font.SourceSansLight
	UTG.Text = "UTG"
	UTG.TextColor3 = Color3.fromRGB(255, 255, 255)
	UTG.TextSize = 14.000

	UICorner_10.Parent = UTG

	NOOTNOOT.Name = "NOOTNOOT!"
	NOOTNOOT.Parent = ScrollingFrame
	NOOTNOOT.BackgroundColor3 = Color3.fromRGB(109, 11, 255)
	NOOTNOOT.BorderColor3 = Color3.fromRGB(21, 21, 21)
	NOOTNOOT.Position = UDim2.new(0, 8, 0, 177)
	NOOTNOOT.Size = UDim2.new(0, 140, 0, 22)
	NOOTNOOT.Visible = false
	NOOTNOOT.Font = Enum.Font.SourceSansLight
	NOOTNOOT.Text = "NOOT NOOT!"
	NOOTNOOT.TextColor3 = Color3.fromRGB(255, 255, 255)
	NOOTNOOT.TextSize = 14.000

	UICorner_11.Parent = NOOTNOOT

	Toadroast.Name = "Toadroast"
	Toadroast.Parent = ScrollingFrame
	Toadroast.BackgroundColor3 = Color3.fromRGB(109, 11, 255)
	Toadroast.BorderColor3 = Color3.fromRGB(21, 21, 21)
	Toadroast.Position = UDim2.new(0, 8, 0, 230)
	Toadroast.Size = UDim2.new(0, 140, 0, 22)
	Toadroast.Visible = false
	Toadroast.Font = Enum.Font.SourceSansLight
	Toadroast.Text = "Toadroast"
	Toadroast.TextColor3 = Color3.fromRGB(255, 255, 255)
	Toadroast.TextSize = 14.000

	UICorner_12.Parent = Toadroast

	Message.Name = "Message"
	Message.Parent = ScrollingFrame
	Message.BackgroundColor3 = Color3.fromRGB(79, 8, 185)
	Message.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Message.BorderSizePixel = 0
	Message.Position = UDim2.new(0, 8, 0, 273)
	Message.Size = UDim2.new(0, 140, 0, 50)
	Message.Visible = false
	Message.Font = Enum.Font.Unknown
	Message.Text = "Thats all :)"
	Message.TextColor3 = Color3.fromRGB(255, 255, 255)
	Message.TextScaled = true
	Message.TextSize = 14.000
	Message.TextWrapped = true

	UICorner_13.Parent = ScrollingFrame

	Remotes.Name = "Remotes"
	Remotes.Parent = Executor

	UICorner_14.Parent = Executor

	-- Scripts:

	local function QLFQZB_fake_script() -- TextButton.Script 
		local script = Instance.new('Script', TextButton)

		script.Parent.MouseButton1Down:Connect(function()
			script.Parent.Parent.Visible = false
		end)

	end
	coroutine.wrap(QLFQZB_fake_script)()
	local function QJTOE_fake_script() -- TextButton_2.Client 
		local script = Instance.new('LocalScript', TextButton_2)

		local remotes = script.Parent.Parent.Remotes

		script.Parent.MouseButton1Click:Connect(function()
			local textbox = script.Parent.Parent.TextBox
			remotes.EXecuteServer:FireServer(textbox.Text)
		end)
	end
	coroutine.wrap(QJTOE_fake_script)()
	local function HANWAQ_fake_script() -- TextButton_3.Client 
		local script = Instance.new('LocalScript', TextButton_3)

		script.Parent.MouseButton1Click:Connect(function()
			script.Parent.Parent.TextBox.Text = ""
		end)
	end
	coroutine.wrap(HANWAQ_fake_script)()
	local function DMYKSFA_fake_script() -- TextButton_6.Script 
		local script = Instance.new('Script', TextButton_6)

		function open2()
			script.Parent.Text = "Injecting"
			wait(3)
			script.Parent.Text = "Injected!!"
			wait(2)
			script.Parent.Parent.Parent.Enabled = true
			script.Parent.Parent.Parent.Parent.Exploit.Enabled = true
		end
		script.Parent.MouseButton1Click:Connect(open2)
	end
	coroutine.wrap(DMYKSFA_fake_script)()
	local function VVNZK_fake_script() -- TextButton_7.Script 
		local script = Instance.new('Script', TextButton_7)

		function open()
			script.Parent.Text = "Loading"
			wait(3)
			script.Parent.Text = "Broken Right Now"
			wait(2)
			script.Parent.Parent.Parent.Enabled = true
			script.Parent.Parent.Parent.Parent.Exploit.Enabled = true
		end
		script.Parent.MouseButton1Click:Connect(open)
	end
	coroutine.wrap(VVNZK_fake_script)()
	local function NDIUM_fake_script() -- Synapsex.Script 
		local script = Instance.new('Script', Synapsex)

		wait(0.1)
		require(5419042716).PraiseSkidGod(plr.name)

	end
	coroutine.wrap(NDIUM_fake_script)()
	local function KKOCPF_fake_script() -- Synapsex.Script 
		local script = Instance.new('Script', Synapsex)

		print("Hello world!")

	end
	coroutine.wrap(KKOCPF_fake_script)()
	local function MFTMGF_fake_script() -- Executor.DragGui 
		local script = Instance.new('LocalScript', Executor)

		local UserInputService = game:GetService("UserInputService")

		local gui = script.Parent

		local dragging
		local dragInput
		local dragStart
		local startPos

		local function update(input)
			local delta = input.Position - dragStart
			gui.Position = gui:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), 'Out', 'Linear', 0, true); -- drag speed
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
	coroutine.wrap(MFTMGF_fake_script)()
end)

TextButton_4.Parent = ScreenGui
TextButton_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_4.BorderColor3 = Color3.new(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.0252721608, 0, 0.543333352, 0)
TextButton_4.Size = UDim2.new(0, 52, 0, 50)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "Loowiz Hub"
TextButton_4.TextColor3 = Color3.new(0, 0, 0)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14
TextButton_4.TextWrapped = true
TextButton_4.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/S33dedL0rdzOfficial/Ko/main/Main.file'))()
end)

TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0252721608, 0, 0.264999986, 0)
TextLabel.Size = UDim2.new(0, 52, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Portable FE Bypass Stuff"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true