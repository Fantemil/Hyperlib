--walkspeed
--key

if not LPH_OBFUSCATED then
	LPH_JIT_MAX = function(...) return(...) end;
	LPH_NO_VIRTUALIZE = function(...) return(...) end;
end

local utility = {}
local UIS = game:GetService("UserInputService");
local RS = game:GetService("RunService");
local TS = game:GetService("TweenService");
local mouse = game:GetService('Players').LocalPlayer:GetMouse()

local Library = {}
local mainKeybind = "LeftControl"
local canDrag = true

function utility:ToRGB(color)  
	return color.R*255,color.G*255,color.B*255
end

local function CreateDrag(gui)
	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		TS:Create(gui, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)}):Play();
	end

	local lastEnd = 0
	local lastMoved = 0
	local con
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			if not canDrag then return end
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

		end
	end)

	UIS.InputEnded:Connect(function(input)

		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = false
		end
	end)


	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
			lastMoved = os.clock()
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end

local tweenInfo = TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
local tweenInfo2 = TweenInfo.new(.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
function Library:tween(object, goal, callback)
	local tween = TS:Create(object, tweenInfo, goal)
	tween.Completed:Connect(callback or function() end)
	tween:Play()
end

function Library:tween2(object, goal, callback)
	local tween = TS:Create(object, tweenInfo2, goal)
	tween.Completed:Connect(callback or function() end)
	tween:Play()
end

local ScreenGui = Instance.new('ScreenGui', gethui())

function Library:CreateWindow(options)
	local GUI = {
		CurrentTab = nil
	}
	

	local Main = Instance.new('Frame', ScreenGui)
	local Title = Instance.new('TextLabel', Main)
	local Divider = Instance.new('Frame', Main)
	local TabBar = Instance.new('ScrollingFrame', Main)
	local TabLayout = Instance.new('UIListLayout', TabBar)
	local TabBarPad = Instance.new('UIPadding', TabBar)
	local MainCorner = Instance.new('UICorner', Main)
	local MainGradient = Instance.new('UIGradient', Main)
	local Divider2 = Instance.new('Frame', Main)
	
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Main.Name = "Main"
	Main.Position = UDim2.new(0.271,0,0.2845,0)
	Main.Size = UDim2.new(0,710,0,405)
	Main.BackgroundColor3 = Color3.new(1,1,1)
	Main.BorderSizePixel = 0
	Main.BorderColor3 = Color3.new(0,0,0)
	Main.ZIndex = 100
	Title.Name = "Title"
	Title.Position = UDim2.new(0.0254,0,0,0)
	Title.Size = UDim2.new(0,143,0,50)
	Title.BackgroundColor3 = Color3.new(1,1,1)
	Title.BackgroundTransparency = 1
	Title.BorderSizePixel = 0
	Title.BorderColor3 = Color3.new(0,0,0)
	Title.Text = options.Title
	Title.TextColor3 = Color3.new(0.7843,0.7843,0.7843)
	Title.Font = Enum.Font.Gotham
	Title.TextSize = 23
	Title.ZIndex = 101
	Title.TextXAlignment = Enum.TextXAlignment.Left
	Divider.Name = "Divider"
	Divider.Position = UDim2.new(0,0,0.121,0)
	Divider.Size = UDim2.new(0,710,0,1)
	Divider.BackgroundColor3 = Color3.new(0.7843,0.7843,0.7843)
	Divider.BorderSizePixel = 0
	Divider.BorderColor3 = Color3.new(0,0,0)
	Divider.ZIndex = 102
	TabBar.Name = "TabBar"
	TabBar.Position = UDim2.new(0,0,0.1235,0)
	TabBar.Size = UDim2.new(0,161,0,355)
	TabBar.BackgroundColor3 = Color3.new(1,1,1)
	TabBar.BackgroundTransparency = 1
	TabBar.BorderSizePixel = 0
	TabBar.BorderColor3 = Color3.new(0,0,0)
	TabBar.ZIndex = 103
	TabBar.ScrollingEnabled = false
	TabBar.ScrollBarThickness = 0
	TabBar.ScrollBarImageColor3 = Color3.new(0,0,0)
	TabLayout.Name = "TabLayout"
	TabLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	TabLayout.SortOrder = Enum.SortOrder.LayoutOrder
	TabBarPad.Name = "TabBarPad"
	TabBarPad.PaddingTop = UDim.new(0,5)
	Divider2.Name = "Divider2"
	Divider2.Position = UDim2.new(0.2246,0,0.121,0)
	Divider2.Size = UDim2.new(0,1,0,356)
	Divider2.BackgroundColor3 = Color3.new(0.6392,0.6392,0.6392)
	Divider2.BackgroundTransparency = 0.5
	Divider2.BorderSizePixel = 0
	Divider2.BorderColor3 = Color3.new(0,0,0)
	Divider2.ZIndex = 102
	MainCorner.CornerRadius = UDim.new(0,20)
	MainGradient.Name = "MainGradient"
	MainGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.04313725605607033, 0.019607843831181526, 0.15294118225574493)), ColorSequenceKeypoint.new(1.00,Color3.new(0.5098039507865906, 0.1882352977991104, 0.1568627506494522))}

	local MC = Instance.new('ScreenGui', gethui())
	local MobileCard = Instance.new('ImageButton', MC)
	local CardGradient = Instance.new('UIGradient', MobileCard)
	local CardText = Instance.new('TextLabel', MobileCard)
	local CardCorner = Instance.new('UICorner', MobileCard)

	MC.Name = "MC"
	MC.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	MobileCard.Name = "MobileCard"
	MobileCard.Position = UDim2.new(0.5, -20, 0, 10);
	MobileCard.Size = UDim2.new(0,40,0,40)
	MobileCard.BackgroundColor3 = Color3.new(1,1,1)
	MobileCard.BorderSizePixel = 0
	MobileCard.BorderColor3 = Color3.new(0,0,0)
	MobileCard.AutoButtonColor = false
	CardGradient.Name = "CardGradient"
	CardGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.04313725605607033, 0.019607843831181526, 0.15294118225574493)), ColorSequenceKeypoint.new(1.00,Color3.new(0.5098039507865906, 0.1882352977991104, 0.1568627506494522))}
	CardGradient.Rotation = -84
	CardText.Name = "CardText"
	CardText.Size = UDim2.new(0,40,0,40)
	CardText.BackgroundColor3 = Color3.new(1,1,1)
	CardText.BackgroundTransparency = 1
	CardText.BorderSizePixel = 0
	CardText.BorderColor3 = Color3.new(0,0,0)
	CardText.Text = "S"
	CardText.TextColor3 = Color3.new(0.7843,0.7843,0.7843)
	CardText.Font = Enum.Font.Gotham
	CardText.TextSize = 23
	CardText.ZIndex = 101

	MobileCard.MouseButton1Click:Connect(function()
		ScreenGui.Enabled = not ScreenGui.Enabled
	end)
	
	CreateDrag(MobileCard)
	CreateDrag(Main)

	function Library:Toggle()
		ScreenGui.Enabled = not ScreenGui.Enabled
	end

	UIS.InputBegan:Connect(function(key, gp)
		if gp then return end;

		if key.KeyCode == Enum.KeyCode[mainKeybind] then
			Library:Toggle()
		end
	end)

	function GUI:NewTab(options)
		
		local tab = {
			Active = false
		}
		
		local Canvas = Instance.new('ScrollingFrame', Main)
		local UIListLayout = Instance.new('UIListLayout', Canvas)
		local UIPadding = Instance.new('UIPadding', Canvas)
		local SelectedTab = Instance.new('Frame', TabBar)
		local Highlight = Instance.new('Frame', SelectedTab)
		local STCorner = Instance.new('UICorner', SelectedTab)
		local Tab = Instance.new('TextButton', SelectedTab)
		
		SelectedTab.Name = "SelectedTab"
		SelectedTab.Position = UDim2.new(88.03,0,0.6006,0)
		SelectedTab.Size = UDim2.new(0,118,0,34)
		SelectedTab.BackgroundColor3 = Color3.new(0,0,0)
		SelectedTab.BackgroundTransparency = 1
		SelectedTab.BorderSizePixel = 0
		SelectedTab.BorderColor3 = Color3.new(0,0,0)
		SelectedTab.ZIndex = 100
		Highlight.Name = "Highlight"
		Highlight.Position = UDim2.new(0.0508,0,0.2353,0)
		Highlight.Size = UDim2.new(0,2,0,18)
		Highlight.BackgroundColor3 = Color3.new(0.8353,0.8353,0.8353)
		Highlight.BorderSizePixel = 0
		Highlight.Transparency = 1
		Highlight.BorderColor3 = Color3.new(0,0,0)
		Highlight.ZIndex = 101
		STCorner.CornerRadius = UDim.new(0,6)
		Tab.Name = "Tab"
		Tab.Position = UDim2.new(0.0678,0,0,0)
		Tab.Size = UDim2.new(0,109,0,34)
		Tab.BackgroundColor3 = Color3.new(1,1,1)
		Tab.BackgroundTransparency = 1
		Tab.BorderSizePixel = 0
		Tab.BorderColor3 = Color3.new(0,0,0)
		Tab.Text = options.Name
		Tab.TextColor3 = Color3.new(0.5529,0.5529,0.5529)
		Tab.Font = Enum.Font.Gotham
		Tab.TextSize = 14
		Tab.ZIndex = 105
		Tab.AutoButtonColor = false		
		Canvas.Name = "Canvas"
		Canvas.Position = UDim2.new(0.2268,0,0.1235,0)
		Canvas.Size = UDim2.new(0,549,0,355)
		Canvas.BackgroundColor3 = Color3.new(1,1,1)
		Canvas.BackgroundTransparency = 1
		Canvas.BorderSizePixel = 0
		Canvas.BorderColor3 = Color3.new(0,0,0)
		Canvas.ZIndex = 107
		Canvas.Visible = false
		Canvas.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Canvas.ScrollBarThickness = 0
		Canvas.ScrollBarImageColor3 = Color3.new(0,0,0)
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0,5)
		UIPadding.PaddingTop = UDim.new(0,10)
		
		function tab:Activate()
			if not tab.Active then
				if GUI.CurrentTab ~= nil then
					GUI.CurrentTab:Deactivate()
				end
				tab.Active = true
				Library:tween(Tab, {TextColor3 = Color3.new(1,1,1)})
				Library:tween(SelectedTab, {BackgroundTransparency = 0.5})
				Library:tween(Highlight, {BackgroundTransparency = 0})
				Canvas.Visible = true
				GUI.CurrentTab = tab
			end
		end

		function tab:Deactivate()
			if tab.Active then
				tab.Active = false
				Library:tween(Tab, {TextColor3 =Color3.new(0.5529,0.5529,0.5529)})
				Library:tween(SelectedTab, {BackgroundTransparency = 1})
				Library:tween(Highlight, {BackgroundTransparency = 1})
				Canvas.Visible = false
			end
		end

		Tab.MouseButton1Click:Connect(function()
			tab:Activate()
		end)

		if GUI.CurrentTab == nil then
			tab.Activate()	
		end
		
		
		function tab:NewToggle(options)
			
			local toggle = {
				State = false
			}
			
			local Toggle = Instance.new('ImageButton', Canvas)
			local ToggleTitle = Instance.new('TextLabel', Toggle)
			local CheckBox = Instance.new('Frame', Toggle)
			local CheckBoxCorner = Instance.new('UICorner', CheckBox)
			local CheckMark = Instance.new('ImageButton', CheckBox)
			local ToggleCorner = Instance.new('UICorner', Toggle)
			


			Toggle.Name = "Toggle"
			Toggle.Position = UDim2.new(0.2606,0,0.5185,0)
			Toggle.Size = UDim2.new(0,499,0,34)
			Toggle.BackgroundColor3 = Color3.new(0,0,0)
			Toggle.BackgroundTransparency = 0.5
			Toggle.BorderSizePixel = 0
			Toggle.BorderColor3 = Color3.new(0,0,0)
			Toggle.ZIndex = 108
			Toggle.AutoButtonColor = false		
			ToggleTitle.Name = "ToggleTitle"
			ToggleTitle.Position = UDim2.new(0.0321,0,0,0)
			ToggleTitle.Size = UDim2.new(0,363,0,34)
			ToggleTitle.BackgroundColor3 = Color3.new(1,1,1)
			ToggleTitle.BackgroundTransparency = 1
			ToggleTitle.BorderSizePixel = 0
			ToggleTitle.BorderColor3 = Color3.new(0,0,0)
			ToggleTitle.Text = options.Name
			ToggleTitle.TextColor3 = Color3.new(0.851,0.851,0.851)
			ToggleTitle.Font = Enum.Font.Gotham
			ToggleTitle.TextSize = 14
			ToggleTitle.ZIndex = 109
			ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left
			CheckBox.Name = "CheckBox"
			CheckBox.Position = UDim2.new(0.9359,0,0.1471,0)
			CheckBox.Size = UDim2.new(0,24,0,24)
			CheckBox.BackgroundColor3 = Color3.new(0.0706,0.0706,0.0706)
			CheckBox.BorderSizePixel = 0
			CheckBox.BorderColor3 = Color3.new(0,0,0)
			CheckBox.ZIndex = 107
			CheckBoxCorner.CornerRadius = UDim.new(0,5)
			CheckMark.Name = "CheckMark"
			CheckMark.Position = UDim2.new(0.0464,0,0.0417,0)
			CheckMark.Size = UDim2.new(0,22,0,22)
			CheckMark.BackgroundColor3 = Color3.new(0,0,0)
			CheckMark.BackgroundTransparency = 1
			CheckMark.BorderSizePixel = 0
			CheckMark.BorderColor3 = Color3.new(0,0,0)
			CheckMark.Image = "rbxassetid://6031094667"
			CheckMark.Visible = true
			CheckMark.AutoButtonColor = false
			CheckMark.ZIndex = 107
			ToggleCorner.CornerRadius = UDim.new(0,6)
			
			toggle.State = options.default

			options.callback(toggle.State)

			if toggle.State then
				Library:tween(CheckMark, {ImageTransparency = 0})
			else
				Library:tween(CheckMark, {ImageTransparency = 1})
			end

			function toggle:Toggle(boolean)
				if boolean == nil then
					toggle.State = not toggle.State
				else
					toggle.State = boolean
				end

				if toggle.State then
					print("a")
					Library:tween(CheckMark, {ImageTransparency = 0})
				else
					Library:tween(CheckMark, {ImageTransparency = 1})
				end

				options.callback(toggle.State)
			end

			Toggle.MouseButton1Down:Connect(function()
				toggle:Toggle()
			end)
			
			return toggle
		end
		
		function tab:NewSlider(options)
			local slider = {
				hover = false,
				MouseDown = false,
				connections = {}
			}
			
			local Slider = Instance.new('ImageButton', Canvas)
			local SliderTitle = Instance.new('TextLabel', Slider)
			local SliderBack = Instance.new('Frame', Slider)
			local SliderBackCorner = Instance.new('UICorner', SliderBack)
			local SliderMain = Instance.new('Frame', SliderBack)
			local SliderMainCorner = Instance.new('UICorner', SliderMain)
			local SliderCorner = Instance.new('UICorner', Slider)
			local SliderAmt = Instance.new('TextBox', Slider)
			

			Slider.Name = "Slider"
			Slider.Position = UDim2.new(0.2606,0,0.5185,0)
			Slider.Size = UDim2.new(0,499,0,34)
			Slider.BackgroundColor3 = Color3.new(0,0,0)
			Slider.BackgroundTransparency = 0.5
			Slider.BorderSizePixel = 0
			Slider.BorderColor3 = Color3.new(0,0,0)
			Slider.ZIndex = 108
			Slider.AutoButtonColor = false
			SliderTitle.Name = "SliderTitle"
			SliderTitle.Position = UDim2.new(0.0321,0,0,0)
			SliderTitle.Size = UDim2.new(0,211,0,34)
			SliderTitle.BackgroundColor3 = Color3.new(1,1,1)
			SliderTitle.BackgroundTransparency = 1
			SliderTitle.BorderSizePixel = 0
			SliderTitle.BorderColor3 = Color3.new(0,0,0)
			SliderTitle.Text = options.Name
			SliderTitle.TextColor3 = Color3.new(0.851,0.851,0.851)
			SliderTitle.Font = Enum.Font.Gotham
			SliderTitle.TextSize = 14
			SliderTitle.ZIndex = 109
			SliderTitle.TextXAlignment = Enum.TextXAlignment.Left
			SliderBack.Name = "SliderBack"
			SliderBack.Position = UDim2.new(0.5251,0,0.4118,0)
			SliderBack.Size = UDim2.new(0,229,0,6)
			SliderBack.BackgroundColor3 = Color3.new(0.0706,0.0706,0.0706)
			SliderBack.BorderSizePixel = 0
			SliderBack.BorderColor3 = Color3.new(0,0,0)
			SliderBack.ZIndex = 109
			SliderBackCorner.CornerRadius = UDim.new(0,5)
			SliderMain.Name = "SliderMain"
			SliderMain.Position = UDim2.new(-0,0,0,0)
			SliderMain.Size = UDim2.new(0,118,0,6)
			SliderMain.BackgroundColor3 = Color3.new(1,1,1)
			SliderMain.BorderSizePixel = 0
			SliderMain.BorderColor3 = Color3.new(0,0,0)
			SliderMain.ZIndex = 109
			SliderMainCorner.CornerRadius = UDim.new(0,5)
			SliderCorner.CornerRadius = UDim.new(0,6)
			SliderAmt.Name = "SliderAmt"
			SliderAmt.Position = UDim2.new(0.4569,0,0,0)
			SliderAmt.Size = UDim2.new(0,34,0,34)
			SliderAmt.BackgroundColor3 = Color3.new(1,1,1)
			SliderAmt.BackgroundTransparency = 1
			SliderAmt.BorderSizePixel = 0
			SliderAmt.BorderColor3 = Color3.new(0,0,0)
			SliderAmt.Text = "33"
			SliderAmt.TextColor3 = Color3.new(0.851,0.851,0.851)
			SliderAmt.Font = Enum.Font.Gotham
			SliderAmt.TextSize = 11
			SliderAmt.ZIndex = 109
			

			function slider:SetValue(v)
				if v == nil then
					local percentage = math.clamp((mouse.X - SliderBack.AbsolutePosition.X) / (SliderBack.AbsoluteSize.X), 0, 1)
					local value = ((options.max - options.min) * percentage) + options.min
					if value % 1 == 0 then
						SliderAmt.Text = string.format("%.0f", value)
					else
						SliderAmt.Text = string.format("%.2f", value)
					end
					SliderMain.Size = UDim2.fromScale(percentage, 1)
				else
					if v % 1 == 0 then
						SliderAmt.Text = string.format("%.0f", v)
					else
						SliderAmt.Text = tostring(v)
					end
					SliderMain.Size = UDim2.fromScale(((v - options.min) / (options.max - options.min)), 1)
				end
				options.callback(slider:GetValue())
			end


			function slider:GetValue()
				return tonumber(SliderAmt.Text)
			end

			slider:SetValue(options.default)

			SliderAmt.FocusLost:Connect(function()
				local toNum
				pcall(function()
					toNum = tonumber(SliderAmt.Text)
				end)
				if toNum then
					toNum = math.clamp(toNum, options.min, options.max)
					slider:SetValue(toNum)
				else
					SliderAmt.Text = "only number :<"
				end
			end)

			local Connection;
			table.insert(slider.connections, UIS.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					pcall(function()
						Connection:Disconnect();
						Connection = nil;
					end)
				end
			end))

			--LPH_NO_VIRTUALIZE(function()
			table.insert(slider.connections, Slider.MouseButton1Down:Connect(function()
				if(Connection) then
					Connection:Disconnect();
				end;

				Connection = RS.Heartbeat:Connect(function()
					--options.callback()

						slider:SetValue()

				end)
			end))
			--end)()

			return slider
		end
		
		function tab:NewDropDown(options)
			local dropdown = {}
			
			local Dropdown = Instance.new('Frame', Canvas)
			local DropdownTitle = Instance.new('TextLabel', Dropdown)
			local DropdownSelected = Instance.new('Frame', Dropdown)
			local SelectedOptionCorner = Instance.new('UICorner', DropdownSelected)
			local SelectedText = Instance.new('TextButton', DropdownSelected)
			local DropdownCorner = Instance.new('UICorner', Dropdown)
			
			Dropdown.Name = "Dropdown"
			Dropdown.Position = UDim2.new(0.2606,0,0.5185,0)
			Dropdown.Size = UDim2.new(0,499,0,34)
			Dropdown.BackgroundColor3 = Color3.new(0,0,0)
			Dropdown.BackgroundTransparency = 0.5
			Dropdown.BorderSizePixel = 0
			Dropdown.BorderColor3 = Color3.new(0,0,0)
			Dropdown.ZIndex = 108
			DropdownTitle.Name = "DropdownTitle"
			DropdownTitle.Position = UDim2.new(0.0321,0,0,0)
			DropdownTitle.Size = UDim2.new(0,312,0,34)
			DropdownTitle.BackgroundColor3 = Color3.new(1,1,1)
			DropdownTitle.BackgroundTransparency = 1
			DropdownTitle.BorderSizePixel = 0
			DropdownTitle.BorderColor3 = Color3.new(0,0,0)
			DropdownTitle.Text = options.Name
			DropdownTitle.TextColor3 = Color3.new(0.851,0.851,0.851)
			DropdownTitle.Font = Enum.Font.Gotham
			DropdownTitle.TextSize = 14
			DropdownTitle.ZIndex = 109
			DropdownTitle.TextXAlignment = Enum.TextXAlignment.Left
			DropdownSelected.Name = "DropdownSelected"
			DropdownSelected.Position = UDim2.new(0.6794,0,0.1471,0)
			DropdownSelected.Size = UDim2.new(0,152,0,24)
			DropdownSelected.BackgroundColor3 = Color3.new(0.0706,0.0706,0.0706)
			DropdownSelected.BorderSizePixel = 0
			DropdownSelected.BorderColor3 = Color3.new(0,0,0)
			DropdownSelected.ZIndex = 109
			SelectedOptionCorner.CornerRadius = UDim.new(0,5)
			SelectedText.Name = "SelectedText"
			SelectedText.Position = UDim2.new(0.0321,0,0,0)
			SelectedText.Size = UDim2.new(0,147,0,24)
			SelectedText.BackgroundColor3 = Color3.new(1,1,1)
			SelectedText.BackgroundTransparency = 1
			SelectedText.BorderSizePixel = 0
			SelectedText.BorderColor3 = Color3.new(0,0,0)
			SelectedText.AutoButtonColor = false
			SelectedText.Text = options.default
			SelectedText.TextColor3 = Color3.new(0.851,0.851,0.851)
			SelectedText.Font = Enum.Font.Gotham
			SelectedText.TextSize = 13
			SelectedText.ZIndex = 109
			DropdownCorner.CornerRadius = UDim.new(0,6)
			

			local DropDownOptions = Instance.new('Frame', Main)
			local Frame = Instance.new('Frame', DropDownOptions)
			local UIListLayout = Instance.new('UIListLayout', Frame)

			--Properties

			DropDownOptions.Name = "DropDownOptions"
			DropDownOptions.Position = UDim2.new(1.0211,0,0.1358,0)
			DropDownOptions.Size = UDim2.new(0,100,0,49)
			DropDownOptions.BackgroundColor3 = Color3.new(0,0,0)
			DropDownOptions.BackgroundTransparency = 0.25
			DropDownOptions.BorderSizePixel = 0
			DropDownOptions.BorderColor3 = Color3.new(0,0,0)
			DropDownOptions.Visible = false
			DropDownOptions.AutomaticSize = Enum.AutomaticSize.XY
			DropDownOptions.ZIndex = 110
			Frame.Size = UDim2.new(0,100,0,49)
			Frame.BackgroundColor3 = Color3.new(1,1,1)
			Frame.BackgroundTransparency = 1
			Frame.BorderSizePixel = 0
			Frame.BorderColor3 = Color3.new(0,0,0)
			Frame.AutomaticSize = Enum.AutomaticSize.XY
			Frame.ZIndex = 110
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			
			for i, v in pairs(options.options) do
				local Option = Instance.new('TextButton', Frame)
				local Highlight = Instance.new('Frame', Option)
				Option.Name = "Option"
				Option.Position = UDim2.new(0.02,0,0,0)
				Option.Size = UDim2.new(0,98,0,27)
				Option.BackgroundColor3 = Color3.new(1,1,1)
				Option.BackgroundTransparency = 1
				Option.BorderSizePixel = 0
				Option.Text = v
				Option.BorderColor3 = Color3.new(0,0,0)
				Option.TextColor3 = Color3.new(0.8627,0.8627,0.8627)
				Option.Font = Enum.Font.SourceSans
				Option.TextSize = 14
				Option.ZIndex = 111
				Highlight.Name = "Highlight"
				Highlight.Position = UDim2.new(-0.0306,0,0,0)
				Highlight.Size = UDim2.new(0,2,0,27)
				Highlight.BackgroundColor3 = Color3.new(1,1,1)
				Highlight.BorderSizePixel = 0
				Highlight.BorderColor3 = Color3.new(0,0,0)
				Highlight.AutomaticSize = Enum.AutomaticSize.Y
				Highlight.ZIndex = 111
				
				Option.MouseButton1Down:Connect(function()
					SelectedText.Text = v
					DropDownOptions.Visible = false
					options.callback(v)
				end)
			end
			
			SelectedText.MouseButton1Down:Connect(function()
				DropDownOptions.Visible = not DropDownOptions.Visible
			end)
			
			options.callback(options.default)
			
			return dropdown
		end
		
		function tab:NewButton(options)
			local button = {}
			
			local Button = Instance.new('Frame', Canvas)
			local ButtonTitle = Instance.new('TextButton', Button)
			local ButtonCorner = Instance.new('UICorner', Button)

			--Properties

			Button.Name = "Button"
			Button.Position = UDim2.new(0.3338,0,0.6099,0)
			Button.Size = UDim2.new(0,499,0,34)
			Button.BackgroundColor3 = Color3.new(0,0,0)
			Button.BackgroundTransparency = 0.5
			Button.BorderSizePixel = 0
			Button.BorderColor3 = Color3.new(0,0,0)
			Button.ZIndex = 108
			ButtonTitle.Name = "ButtonTitle"
			ButtonTitle.Size = UDim2.new(0,498,0,34)
			ButtonTitle.BackgroundColor3 = Color3.new(1,1,1)
			ButtonTitle.AutoButtonColor = false
			ButtonTitle.BackgroundTransparency = 1
			ButtonTitle.BorderSizePixel = 0
			ButtonTitle.BorderColor3 = Color3.new(0,0,0)
			ButtonTitle.Text = options.Name
			ButtonTitle.TextColor3 = Color3.new(0.851,0.851,0.851)
			ButtonTitle.Font = Enum.Font.Gotham
			ButtonTitle.TextSize = 14
			ButtonTitle.ZIndex = 109
			ButtonCorner.CornerRadius = UDim.new(0,6)
			
			ButtonTitle.MouseButton1Down:Connect(function()
				Library:tween(Button, {BackgroundColor3 = Color3.new(0.756863, 0.756863, 0.756863)})
			end)
			
			ButtonTitle.MouseButton1Up:Connect(function()
				Library:tween(Button, {BackgroundColor3 = Color3.fromRGB(0, 0, 0)})
			end)
			
			ButtonTitle.MouseButton1Click:Connect(function()
				options.callback()
			end)
			
			return button
		end
		
		return tab
	end
	
	return GUI
end


--// services

local players = game:GetService("Players")
local userInputService = game:GetService("UserInputService")
local replicatedStorage = game:GetService("ReplicatedStorage")

--// variables

local pwr, at, natpwr = 0, Vector3.new(0, 0, 0), 0
local camera = workspace.CurrentCamera
local player = game:GetService("Players").LocalPlayer
local target = nil
local silent = false
local silentkey = ""
local typing = false
local locked = false
local attach0 = Instance.new("Attachment")
local attach1 = Instance.new("Attachment")
local beam = Instance.new("Beam")
local character = player.Character
local tf = Instance.new("Model")
local mouse = player:GetMouse()
local sphere = Instance.new("Part")
local mode = "Dime"
local modes = {
	["Dime"] = "Mag",
	["Mag"] = "Bullet",
	["Bullet"] = "Jump",
	["Jump"] = "AngleDive",
	["AngleDive"] = "Dime"
	
}
local oldHighlight = nil

--// gui init

local Finium = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Mode = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Value = Instance.new("TextLabel")
local Title = Instance.new("TextLabel")
local Power = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Value_2 = Instance.new("TextLabel")
local Title_2 = Instance.new("TextLabel")
local PassDuration = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Value_3 = Instance.new("TextLabel")
local Title_3 = Instance.new("TextLabel")
local Route = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local Value_4 = Instance.new("TextLabel")
local Title_4 = Instance.new("TextLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

Finium.Name = "Finium"
Finium.Parent = gethui()
Finium.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Finium
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BackgroundTransparency = 1.000
Main.Position = UDim2.new(0.4995583, 0, 0.15, 0)
Main.Size = UDim2.new(0.542698324, 0, 0.183452487, 0)

Mode.Name = "Mode"
Mode.Parent = Main
Mode.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Mode.Position = UDim2.new(0.153428286, 0, 0.0701754242, 0)
Mode.Size = UDim2.new(0.207070649, 0, 0.859649181, 0)

UICorner.Parent = Mode

Value.Name = "Value"
Value.Parent = Mode
Value.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Value.BackgroundTransparency = 1.000
Value.Position = UDim2.new(0.0916655064, 0, 0.0548526943, 0)
Value.Size = UDim2.new(0.810000002, 0, 0.50999999, 0)
Value.Font = Enum.Font.SourceSansBold
Value.Text = "Dime"
Value.TextColor3 = Color3.fromRGB(170, 170, 255)
Value.TextScaled = true
Value.TextSize = 14.000
Value.TextWrapped = true

Title.Name = "Title"
Title.Parent = Mode
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.278204948, 0, 0.493999988, 0)
Title.Size = UDim2.new(0.430771053, 0, 0.443999976, 0)
Title.Font = Enum.Font.SourceSans
Title.Text = "Mode"
Title.TextColor3 = Color3.fromRGB(95, 95, 95)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextStrokeTransparency = 0.000
Title.TextWrapped = true

Power.Name = "Power"
Power.Parent = Main
Power.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Power.Position = UDim2.new(0.390009284, 0, 0.0701754242, 0)
Power.Size = UDim2.new(0.128162444, 0, 0.859649181, 0)

UICorner_2.Parent = Power

Value_2.Name = "Value"
Value_2.Parent = Power
Value_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Value_2.BackgroundTransparency = 1.000
Value_2.Position = UDim2.new(0.091665484, 0, 0.0548526943, 0)
Value_2.Size = UDim2.new(0.809617341, 0, 0.51030314, 0)
Value_2.Font = Enum.Font.SourceSansBold
Value_2.Text = "60"
Value_2.TextColor3 = Color3.fromRGB(170, 170, 255)
Value_2.TextScaled = true
Value_2.TextSize = 14.000
Value_2.TextWrapped = true

Title_2.Name = "Title"
Title_2.Parent = Power
Title_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title_2.BackgroundTransparency = 1.000
Title_2.Position = UDim2.new(0.194000006, 0, 0.493999988, 0)
Title_2.Size = UDim2.new(0.600000024, 0, 0.444000006, 0)
Title_2.Font = Enum.Font.SourceSans
Title_2.Text = "Power"
Title_2.TextColor3 = Color3.fromRGB(95, 95, 95)
Title_2.TextScaled = true
Title_2.TextSize = 14.000
Title_2.TextStrokeTransparency = 0.000
Title_2.TextWrapped = true

PassDuration.Name = "PassDuration"
PassDuration.Parent = Main
PassDuration.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PassDuration.Position = UDim2.new(0.549907744, 0, 0.0701754242, 0)
PassDuration.Size = UDim2.new(0.128162444, 0, 0.859649181, 0)

UICorner_3.Parent = PassDuration

Value_3.Name = "Value"
Value_3.Parent = PassDuration
Value_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Value_3.BackgroundTransparency = 1.000
Value_3.Position = UDim2.new(0.0916655064, 0, 0.0548527762, 0)
Value_3.Size = UDim2.new(0.810000002, 0, 0.50999999, 0)
Value_3.Font = Enum.Font.SourceSansBold
Value_3.Text = "2.72s"
Value_3.TextColor3 = Color3.fromRGB(170, 170, 255)
Value_3.TextScaled = true
Value_3.TextSize = 14.000
Value_3.TextWrapped = true

Title_3.Name = "Title"
Title_3.Parent = PassDuration
Title_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title_3.BackgroundTransparency = 1.000
Title_3.Position = UDim2.new(0.194000006, 0, 0.493999988, 0)
Title_3.Size = UDim2.new(0.600000024, 0, 0.444000006, 0)
Title_3.Font = Enum.Font.SourceSans
Title_3.Text = "Airtime"
Title_3.TextColor3 = Color3.fromRGB(95, 95, 95)
Title_3.TextScaled = true
Title_3.TextSize = 14.000
Title_3.TextStrokeTransparency = 0.000
Title_3.TextWrapped = true



--// findz

local qbon = false

local function calculateLanding(power, direction)
	local origin = game:GetService("Players").LocalPlayer.Character.Head.Position + direction * 5
	local velocity = power * direction
	local peakvel = velocity * (velocity.Y / 28)
	local airtime = (velocity.Y / 28) * 2
	return origin + Vector3.new(peakvel.X * 2, 0, peakvel.Z * 2), airtime
end

local function findZDirection()
	local zDiff = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Z - at.Z
	local a = 0
	if zDiff < 0 then
		a = 1
	else
		a = -1
	end
	return a	
end

local function getMoveDirection(humanoid)
	local isPlayer = players:GetPlayerFromCharacter(humanoid.Parent)
	if isPlayer then
		return humanoid.MoveDirection
	else
		return (humanoid.WalkToPoint - game:GetService("Players").LocalPlayer.Character.Head.Position).Unit
	end
end

local function findPower(char)
	local powerTable = {
		[10] = 55,
		[20] = 60,
		[30] = 65,
		[35] = 70,
		[40] = 75,
		[50] = 80,
		[60] = 85,
		[70] = 90,
		[80] = 95,
	}
	local distance = (character.Head.Position - char.Head.Position).Magnitude
	local lDiff = math.huge
	local power = 0
	local pdistance = nil
	local reachedDis = 0
	local nextDis = 0
	local naturalPower = 0
	for dis, pwr in pairs(powerTable) do
		dis *= 3
		if distance > dis and dis > reachedDis then
			power = pwr
			naturalPower = pwr
			pdistance = dis
			reachedDis = dis
			if dis == 90 then nextDis = dis + 15 else nextDis = dis + 30 end
		end
	end
	local diff = math.clamp(nextDis - distance, 0, math.huge)
	local required = (nextDis - reachedDis)
	local nextPower = powerTable[nextDis / 3] or 75
	local percentage = diff / required
	--print(diff, required, nextPower, power, percentage, (nextPower - power) - ((nextPower - power) * percentage))
	power += math.clamp((nextPower - power) - ((nextPower - power) * percentage), 0, 100)
	return power, naturalPower
end
--local mouse
local function isPractice()
	return game.PlaceId == 8206123457
end

if isPractice() then
	local __namecall; __namecall = hookmetamethod(game, "__namecall", function(self, ...)
		local args = {...}
		if not checkcaller() and qbon and args[1] == "Clicked" then
			local direction = (at - character.Head.Position).Unit
			local nwArgs = {"Clicked", character.Head.CFrame.Position, character.Head.Position + direction * 10000, pwr}
			return __namecall(self, unpack(nwArgs))
		end
		return __namecall(self, ...)
	end)
else
	local __namecall; __namecall = hookmetamethod(game, "__namecall", function(self, ...)
		local args = {...}
		if not checkcaller() and qbon and args[1] == "Clicked" then
			local direction = (at - character.Head.Position).Unit
			local nwArgs = {"Clicked", character.Head.CFrame.Position, character.Head.Position + direction * 10000, 95, math.round(pwr)}
			return __namecall(self, unpack(nwArgs))
		end
		return __namecall(self, ...)
	end)
end

local function straightenMoveDirection(moveDirection, pos)
	-- wrs tend to turn and can mess up the dime, so let's straighten the movedirection.
	moveDirection = Vector3.new(moveDirection.X, 0, moveDirection.Z)
	local x = moveDirection.X
	local z = moveDirection.Z
	if math.abs(x) > 0.95 then
		if x ~= math.abs(x) then
			x = -1
		else
			x = 1
		end
	else
		x = 0
	end
	if math.abs(z) > 0.94 then
		if z ~= math.abs(z) then
			z = -1
		else
			z = 1
		end
	else
		z = 0
	end
	local md = Vector3.new(x, 0, z)
	if md.Magnitude <= 0 then
		md = Vector3.new(0, 0, findZDirection(pos))
	end
	return md
end

local function findtarget()
	local np = nil
	local nm = math.huge
	local s = {workspace}
	if workspace:FindFirstChild("npcwr") then
		table.insert(s, workspace.npcwr.a)
		table.insert(s, workspace.npcwr.b)
	end
	for i, p in pairs(s) do
		for i, c in pairs(p:GetChildren()) do
			if c:FindFirstChildWhichIsA("Humanoid") and c:FindFirstChild("HumanoidRootPart") then
				local plr = players:GetPlayerFromCharacter(c)
				if plr == player then continue end
				if (not isPractice() and game.PlaceId ~= 0) and not plr then continue end
				if plr and not isPractice() and plr.Team ~= player.Team then continue end
				local d = (c.HumanoidRootPart.Position - mouse.Hit.Position).Magnitude
				if d < nm then
					nm = d
					np = c
				end	
			end
		end
	end
	return np
end
 
local function beamProjectile(g, v0, x0, t1) -- easy egomoose copy!
	-- calculate the bezier points
	local c = 0.5*0.5*0.5;
	local p3 = 0.5*g*t1*t1 + v0*t1 + x0;
	local p2 = p3 - (g*t1*t1 + v0*t1)/3;
	local p1 = (c*g*t1*t1 + 0.5*v0*t1 + x0 - c*(x0+p3))/(3*c) - p2;

	-- the curve sizes
	local curve0 = (p1 - x0).magnitude;
	local curve1 = (p2 - p3).magnitude;

	-- build the world CFrames for the attachments
	local b = (x0 - p3).unit;
	local r1 = (p1 - x0).unit;
	local u1 = r1:Cross(b).unit;
	local r2 = (p2 - p3).unit;
	local u2 = r2:Cross(b).unit;
	b = u1:Cross(r1).unit;

	local cf1 = CFrame.new(
		x0.x, x0.y, x0.z,
		r1.x, u1.x, b.x,
		r1.y, u1.y, b.y,
		r1.z, u1.z, b.z
	)

	local cf2 = CFrame.new(
		p3.x, p3.y, p3.z,
		r2.x, u2.x, b.x,
		r2.y, u2.y, b.y,
		r2.z, u2.z, b.z
	)

	return curve0, -curve1, cf1, cf2;
end

--// beam

attach0.Parent = workspace.Terrain
attach1.Parent = workspace.Terrain
beam.Parent = workspace.Terrain
beam.Attachment0 = attach0
beam.Attachment1 = attach1
tf.Parent = workspace
mouse.TargetFilter = tf

if not isPractice() then
	if workspace:FindFirstChild("ScrambleWall") then
		workspace.ScrambleWall.Parent = tf
		workspace.LineDownWall.Parent = tf
		mouse.TargetFilter = tf
	end
end -- target using mouse doesnt rlly work well with the barrier, so we set it to the filter.

sphere.Parent = tf
sphere.Material = Enum.Material.Neon
sphere.Color = Color3.fromRGB(170, 170, 255)
sphere.CanCollide = false
sphere.Anchored = true
sphere.Size = Vector3.new(2, 2, 2)
sphere.Shape = Enum.PartType.Ball

--// main

userInputService.InputBegan:Connect(function(input, gp)
	typing = gp
	local a = ""
	pcall(function()
		a = string.char(input.KeyCode.Value)
	end) -- cos
	silentkey ..= a 
	if string.match(silentkey, "plm") then
		silentkey = ""
		silent = not silent
		print(silent)
	end
	if not typing then
		if input.KeyCode == Enum.KeyCode.Q then
			locked = not locked
		elseif input.KeyCode == Enum.KeyCode.Z then
			mode = modes[mode]
		end
	end
end)

task.spawn(function()
	while true do
		task.wait()
		if userInputService:IsKeyDown(Enum.KeyCode.T) and not typing and target then
			throw(pwr, at)
		end
	end	
end)

task.spawn(function()
	local function reDisplay(power)
		local gui = player.PlayerGui.BallGui
		for i,v in pairs(gui.Frame:GetChildren()) do
			if v.Name~="Disp" then
				v.BackgroundTransparency=tonumber(v.Name)<=power and 0 or 0.9
			end
		end
		gui.Frame.Disp.Text=power
	end -- stolen from cabbler!
	while true do
		task.wait((5/30) * (math.random(5, 14) / 10))
		if player.PlayerGui:FindFirstChild("BallGui") and silent then
			if natpwr ~= natpwr or natpwr < 55 then
				natpwr = 60
			end	
			if pwr > (natpwr + 2.5) then
				reDisplay(math.clamp(natpwr + 5, 0, 95))
			else
				reDisplay(natpwr)
			end
		end
	end
end)

local lib = Library:CreateWindow({Title = "Saturn"})


local Tab = lib:NewTab({Name ="QB stuff"})
local Tab1 = lib:NewTab({Name ="MAG stuff"})
local Tab6 = lib:NewTab({Name ="MAGV2 stuff"})
local Tab2 = lib:NewTab({Name ="MOVEMENT"})
local Tab3 = lib:NewTab({Name ="KICKER aimbot"})
local Tab4 = lib:NewTab({Name ="DEFENSIVE stuff"})
local Tab5 = lib:NewTab({Name ="OFFENSE stuff"})


Tab:NewToggle({
	Name = "QB Aimbot Z TO CHANGE MODE",
	default = false,
	callback = function(v)
		qbon = v
		if v then
			Finium.Enabled = true
			beam.Enabled = true
		else
			Finium.Enabled = false
			beam.Enabled = false
		end
	end,
})







local players = game:GetService("Players")
local userInputService = game:GetService("UserInputService")
local replicatedStorage = game:GetService("ReplicatedStorage")
local remotes = replicatedStorage:FindFirstChild("Remotes")
local characterSoundEvent = remotes:FindFirstChild("CharacterSoundEvent")
local player = game:GetService("Players").LocalPlayer
local runService = game:GetService("RunService")
--local human


local saturn = {

    Catching = {
        mags = false,
        range = 0
    }
}

Tab1:NewToggle({
    Name = "Mags",
    default = false,
    callback = function(v)
        saturn.Catching.mags = v
    end
})

local magToggle = Tab1:NewSlider({
    Name = "Mag range",
    min = 0,
    max = 30,
    default = 0,
    callback = function(v)
		saturn.Catching.range = v
    end
})
--rbxasset
Tab1:NewDropDown({
    Name = "mag type",
    options = {
        "Blatant",
        "Regular",
        "Legit",
		"League"
    },
	
    default = "Normal",
    callback = function(v)
        if v == "Blatant" then
            magToggle:SetValue(30)
        elseif v == "Regular" then
            magToggle:SetValue(13)
        elseif v == "Legit" then
            magToggle:SetValue(10)
		elseif v == "League" then
            magToggle:SetValue(6)
        end
    end,
})

local autokick = false 

task.spawn(function()

getgenv().Variables = {}

	Variables.Players = game:GetService("Players")
	Variables.ReplicatedStorage = game:GetService("ReplicatedStorage")
	Variables.UserInputService = game:GetService("UserInputService")
	Variables.Client = Variables.Players.LocalPlayer
	Variables.Character = Variables.Client.Character or Variables.Client.CharacterAdded:Wait()

	Variables.Client.CharacterAdded:Connect(function(Character)
		Variables.Character = Character 
	end)

	local Aimbot = {}

	function Aimbot:GetAccuracyArrow(Arrows)
		local Y = 0
		local Arrow1 = nil

		for _, Arrow in pairs(Arrows) do
			if Arrow.Position.Y.Scale > Y then
				Y = Arrow.Position.Y.Scale
				Arrow1 = Arrow 
			end
		end

		return Arrow1
	end

	Variables.Client.PlayerGui.ChildAdded:Connect(function(child)
		if child.Name == "KickerGui" and autokick == true then
			local KickerGui = child 
			local Meter = KickerGui:FindFirstChild("Meter")
			local Cursor = Meter:FindFirstChild("Cursor")
			local Arrows = {}

			for i,v in pairs(Meter:GetChildren()) do
				if string.find(v.Name:lower(), "arrow") then
					table.insert(Arrows, v)
				end
			end 

			repeat task.wait() until Cursor.Position.Y.Scale < 0.02
			mouse1click()
			repeat task.wait() until Cursor.Position.Y.Scale >= Aimbot:GetAccuracyArrow(Arrows).Position.Y.Scale + (.03 / (100 / 100))
			mouse1click()
		end
	end)
end)

Tab3:NewToggle({
	Name = "kicker aimbot PRESS ONCE AUTO DOES IT",
	default = false,
	callback = function(v)
	autokick = v
end})



local connection

Tab4:NewToggle({
	Name = "tp tackle",
	default = false,
	callback = function(v)
	if v then
		connection = game:GetService("Players").LocalPlayer:GetMouse().Button1Down:Connect(function()
			for i, v in pairs(game.workspace:GetDescendants()) do
				if v.Name == "Football" and v:IsA("Tool") then
					local toolPosition = v.Parent.HumanoidRootPart.Position
					local playerPosition = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
					if (toolPosition - playerPosition).Magnitude <= tprange then
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.HumanoidRootPart.CFrame + Vector3.new(1, 1, 1)
					end
				end
			end
		end)
	else
		if connection then
			connection:Disconnect() -- Disconnect the mouse click event only if it exists
		end
	end
end})
--game.player
Tab4:NewSlider({
	Name = "tp tackle range",
	min = 0,
	max = 15,
	default = 0,
	callback = function(v)
	tprange = v
end})
--lag






local swatreachmain = false
local player = game:GetService("Players").LocalPlayer
local swatDistance = math.huge
local swatted = false
local userInputService = game:GetService("UserInputService")

local function isFootball(fb)
	return fb and fb:FindFirstChildWhichIsA("RemoteEvent")
end

local function getNearestBall(checkFunc)
	local lowestDistance = math.huge
	local lowestFB = nil
	for index, part in pairs(workspace:GetChildren()) do
		if isFootball(part) and not part.Anchored then
			if checkFunc then
				if not checkFunc(part) then
					continue
				end
			end
			local distance = (player.Character.HumanoidRootPart.Position - part.Position).Magnitude
			if distance < lowestDistance then
				lowestFB = part
				lowestDistance = distance
			end
		end
	end
	return lowestFB, lowestDistance
end

local function getNearestPartToPartFromParts(parts, part)
	local lowestMagnitude = math.huge
	local lowestPart = nil
	for index, p in pairs(parts) do
		local dis = (part.Position - p.Position).Magnitude
		if dis < lowestMagnitude then
			lowestMagnitude = dis
			lowestPart = p
		end
	end
	return lowestPart
end

local function initCharacter(char)
	while swatreachmain do
		task.wait()
		local ball = getNearestBall()
		if ball and swatted then
			local distance = (player.Character.HumanoidRootPart.Position - ball.Position).Magnitude
			if distance < swatDistance then
				local catch = getNearestPartToPartFromParts({player.Character["CatchLeft"], player.Character["CatchRight"]}, ball)
				firetouchinterest(ball, catch, 0)
				firetouchinterest(ball, catch, 1)
			end
		end
	end
end

userInputService.InputBegan:Connect(function(input, gp)
	if not gp then
		if input.KeyCode == Enum.KeyCode.R and not swatted then
			swatted = true
			task.wait(1.5)
			swatted = false
		end
	end
end)

local function updateCharacter(character)
	if swatreachmain then
		initCharacter(character)
	end
end

player.CharacterAdded:Connect(updateCharacter)
--jump
Tab4:NewToggle({
	Name = "swat reach",
	default = false,
	callback = function(value)
	swatreachmain = value
	if value then
		updateCharacter(player.Character) 
	end
end})

if swatreachmain then
	initCharacter(player.Character)
end

-- Auto Swat

local autoswatv = 0

local enabledd = false
--slider
local function autoswatfunction()
	if enabledd then
        local player = game:GetService("Players").LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
		local RunService = game:GetService("RunService")

		local function checkDistance(part)
			local distance = (part.Position - humanoidRootPart.Position).Magnitude
			if distance <= autoswatv then
				keypress(0x52)
				keyrelease(0x52)
				task.wait()
			end
		end
		local function updateDistances()
			for _, v in pairs(game.Workspace:GetDescendants()) do
				if v.Name == "Football" and v:IsA("BasePart") then
					checkDistance(v)
				end
			end
		end
		connection = RunService.Heartbeat:Connect(updateDistances)
	else
		if connection then
			connection:Disconnect()
			connection = nil
		end
	end
end
--uni
Tab4:NewToggle({
	Name = "auto swat",
	default = false,
	callback = function(v)
	enabledd = v
	autoswatfunction()
end})
--lag
Tab4:NewSlider({
	Name = "swat reach range laggy",
	min = 1,
	max = 50,
	default = 0,
	callback = function(v)
	autoswatv = v
end})

Tab6:NewToggle({
	Name = "Jump predictions",
	default = false,
	callback = function(v)
	if v then
        local player = game:GetService("Players").LocalPlayer

		local function handleBall(ball)
			if ball.Name == "Football" and ball:IsA("BasePart") then
				local v0 = ball.Velocity
				local x0 = ball.Position
				local dt = 1/30
				local grav = Vector3.new(0, -28, 0)
				local points = {
					[1] = x0
				}
				local function check(p, v0)
					local raycastParams = RaycastParams.new()
					raycastParams.RespectCanCollide = true
					local ray = workspace:Raycast(p, Vector3.new(0, -1000, 0), raycastParams)
					local ray2 = workspace:Raycast(p, Vector3.new(0, -7.2 * 2, 0), raycastParams)
					return ray and not ray2
				end
				while true do
					if not check(points[#points], v0) then
						if v0.Y < 0 then
							break
						end
					end
					local currentPoint = points[#points]
					v0 += grav * dt
					points[#points + 1] = currentPoint + (v0 * dt)
				end
				local optimal = points[#points]
				local part = Instance.new("Part")
				part.Anchored = true
				part.CanCollide = false
				part.Position = Vector3.new(optimal.X, player.Character.HumanoidRootPart.Position.Y + 1.5, optimal.Z)
				part.Parent = workspace
				part.Material = Enum.Material.Neon
				part.Size = Vector3.new(1.5, 1.5, 1.5)
				repeat task.wait() until ball.Parent ~= workspace
				part:Destroy()
			end
		end
--slant
		local function handleChildAdded(ball)
			task.wait()
			handleBall(ball)
		end
		eventConnection = workspace.ChildAdded:Connect(handleChildAdded)
	else
		if eventConnection then
			eventConnection:Disconnect()
			eventConnection = nil
		end
	end
end})


--qb

--FindTarget
Tab:NewToggle({
	Name = "Football landing predictions",
	default = false,
	callback = function(v)
	if v and not toggleActive then
		toggleActive = true
		eventConnection = workspace.ChildAdded:Connect(function(b)
			if b.Name == "Football" and b:IsA("BasePart") then
				task.wait()
				local vel = b.Velocity
				local pos = b.Position
				local c0, c1, cf1, cf2 = beamProjectile(Vector3.new(0, -28, 0), vel, pos, 10)
				local beam = Instance.new("Beam")
				local a0 = Instance.new("Attachment")
				local a1 = Instance.new("Attachment")
				beam.Color = ColorSequence.new(predictioncolor)
				beam.Transparency = NumberSequence.new(0, 0)
				beam.CurveSize0 = c0
				beam.CurveSize1 = c1
				beam.Name = "Hitbox"
				beam.Parent = workspace.Terrain
				beam.Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 1),
					NumberSequenceKeypoint.new(0.01, 0),
					NumberSequenceKeypoint.new(1, 0),
					NumberSequenceKeypoint.new(1, 0.01),
				})
				beam.Segments = 1750
				a0.Parent = workspace.Terrain
				a1.Parent = workspace.Terrain
				a0.CFrame = a0.Parent.CFrame:Inverse() * cf1
				a1.CFrame = a1.Parent.CFrame:Inverse() * cf2
				beam.Attachment0 = a0
				beam.Attachment1 = a1
				beam.Width0 = 0.5
				beam.Width1 = 0.5
				repeat task.wait() until b.Parent ~= workspace
				a0:Destroy()
				a1:Destroy()
			end
		end)
	elseif not Value and toggleActive then
		toggleActive = false
		if eventConnection then
			eventConnection:Disconnect()
		end
	end
end})


Tab:NewDropDown({
	Name = "prediction color",
	options = {
		"White",
		"Blue",
        "Red",
        "Pink",
        "Green"
	},
	default = "White",
	callback = function(v)
	if v == "White" then
		predictioncolor = Color3.fromRGB(255, 255, 255)
	elseif v == "Blue" then
		predictioncolor = Color3.fromRGB(0, 212, 255)
	elseif v == "Pink" then
		predictioncolor = Color3.fromRGB(253, 137, 245)
	elseif v == "Red" then
		predictioncolor = Color3.fromRGB(255, 0, 0)
	elseif v == "Green" then
		predictioncolor = Color3.fromRGB(0, 255, 115)
	end
end})


local isAntiJamEnabled = false

local function updateCollisionState()
	while true do
		if isAntiJamEnabled then
			if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head") and game:GetService("Players").LocalPlayer.Character.Head.CanCollide then
				for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
					if player ~= game:GetService("Players").LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
						pcall(function()
							player.Character.Torso.CanCollide = false
							player.Character.Head.CanCollide = false
						end)
					end
				end
			end
		else
			if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head") and not game:GetService("Players").LocalPlayer.Character.Head.CanCollide then
				game:GetService("Players").LocalPlayer.Character.Torso.CanCollide = true
				game:GetService("Players").LocalPlayer.Character.Head.CanCollide = true
			end
		end
		task.wait()
	end
end

-- Define the GUI

Tab:NewToggle({
	Name = "Anti Jam",
	default = false,
	callback = function(enabled)
        isAntiJamEnabled = enabled
    end
})
--local player
-- Start the function to update collision state
spawn(updateCollisionState)


local AutoFollowQb = false
local followCarrierTask

local function FollowCarrier()
    while AutoFollowQb do
        local carrier = game:GetService("ReplicatedStorage").Values.Carrier.Value
        if carrier and carrier:IsDescendantOf(game:GetService("Players")) and carrier.Team ~= game:GetService("Players").LocalPlayer.Team then
            local humanoid = game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid")
            if humanoid then
                humanoid:MoveTo(carrier.Character.Torso.Position)
            end
        end
        wait()
    end
end

local function ToggleFollowCarrier(value)
    AutoFollowQb = value
    if value then
        followCarrierTask = task.spawn(FollowCarrier)
    else
        if followCarrierTask then
            followCarrierTask:cancel()
        end
    end
end

Tab4:NewToggle({
	Name = "auto follow qb",
	default = false,
	callback = ToggleFollowCarrier,
})



Tab4:NewSlider({
	Name = "follow qb distance",
	min = 1,
	max = 30,
	default = 0,
	callback = function(set)

end,
})


local player = game:GetService("Players").LocalPlayer
local userInputService = game:GetService("UserInputService")
local runService = game:GetService("RunService")

local jumpCooldown = 0.5  -- Adjust this value based on your game's mechanics
local lastJumpTime = 0
local antiAceEnabled = false  -- Initial state of the anti ace toggle

local function PerformJump()
    -- Perform the jump action
    -- You might want to adjust the code here to simulate jumping
end

local function PerformDive()
    -- Perform the dive action
    -- You might want to adjust the code here to simulate diving
end

userInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.Space then
        if antiAceEnabled then
            local currentTime = tick()
            if currentTime - lastJumpTime > jumpCooldown then
                PerformJump()
                lastJumpTime = currentTime
            else
                PerformDive()
            end
        else
            -- Perform the default jump or dive action
        end
    end
end)

runService.RenderStepped:Connect(function()
    if antiAceEnabled then
        -- Check for the appropriate condition to trigger the automatic dive
        -- For example, if you detect that the character is in mid-air and has jumped
        -- Implement the automatic dive action here
    end
end)

Tab5:NewToggle({
	Name = "anti ace",
	default = false,
	callback = function(state)
        antiAceEnabled = state
    end,
})

--game.player
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and JumpToggleEnabled and input.KeyCode == Enum.KeyCode.Space then
        OnJumpRequest()
    end
end)

Tab5:NewButton({
	Name = "FPS BOOST",
	callback = function(state)
        
local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    end
end
for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end

    end,
})



--game.player
local qbaimpred = false
Tab:NewToggle({
	Name = "qb aim pred",
	default = false,
	callback = function(v)
	qbaimpred = v -- Update the toggle state

	if qbaimpred then
		local beam = Instance.new("Beam")
		local a0 = Instance.new("Attachment")
		local a1 = Instance.new("Attachment")   
		local mouse = game:GetService("Players").LocalPlayer:GetMouse()
		beam.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0))
		beam.Transparency = NumberSequence.new(0, 0)
		beam.Segments = 10 * 300
		beam.Name = "Hitbox"
		beam.Parent = workspace.Terrain
		a0.Parent = workspace.Terrain
		a1.Parent = workspace.Terrain
		beam.Attachment0 = a0
		beam.Attachment1 = a1
		beam.Width0 = 0.5
		beam.Width1 = 0.5
		while qbaimpred do
			task.wait()
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Football") and game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("BallGui") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head") then
				local power = tonumber(game:GetService("Players").LocalPlayer.PlayerGui.BallGui.Frame.Disp.Text)
				local direction = (mouse.Hit.Position - workspace.CurrentCamera.CFrame.Position).Unit
				local vel = power * direction
				local origin = game:GetService("Players").LocalPlayer.Character.Head.Position + direction * 5
				local c0, c1, cf1, cf2 = beamProjectile(Vector3.new(0, -28, 0), power * direction, game:GetService("Players").LocalPlayer.Character.Head.Position + (direction * 5), 7)
				a0.CFrame = a0.Parent.CFrame:Inverse() * cf1
				a1.CFrame = a1.Parent.CFrame:Inverse() * cf2
				beam.CurveSize0 = c0
				beam.CurveSize1 = c1
			end
		end
		beam:Destroy() -- Clean up the beam when toggled off
	else
		-- Toggle turned off
		-- Add any additional code here to handle the toggle turning off
	end
end})

--hitbox
local autoCatchDistance = 10

local function autoCatch()
    while true do
        task.wait()
        local ball = getNearestBall()
        if ball then
            local distance = (ball.Position - player.Character.HumanoidRootPart.Position).Magnitude
            if distance < autoCatchDistance then
                keypress(0x43) 
                keyrelease(0x43) 
                task.wait(1.5)
            end
        end
    end
end

Tab6:NewToggle({
	Name = "auto catch",
	default = false,
	callback = function(value)
        if value then

            autoCatch()
        end
    end,
})

Tab6:NewSlider({
	Name = "auto catch distance",
	min = 1,
	max = 20,
	default = 0,
	callback = function(value)
    
        autoCatchDistance = value
    end,
})






--mag script

task.spawn(function()
    while true do
        task.wait()

        if not saturn.Catching.mags then
            continue
        end

        for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
            if v.Name == "Football" and v:IsA("BasePart") then
                if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude <= saturn.Catching.range then
                    pcall(function() -- So no error if catch right doesnt exist yet
                        firetouchinterest(game:GetService('Players').LocalPlayer.Character["CatchRight"], v, 0)
                        firetouchinterest(game:GetService('Players').LocalPlayer.Character["CatchRight"], v, 0)
                        firetouchinterest(game:GetService('Players').LocalPlayer.Character["CatchRight"], v, 1)
                        firetouchinterest(game:GetService('Players').LocalPlayer.Character["CatchRight"], v, 1)
                    end)
                end
            end
        end
    end
end)



local RunService = game:GetService("RunService")
local HitboxExpanderEnabled = false
local HitboxExpanderSize = 10

--angle
Tab6:NewToggle({
	Name = "hitbox extender",
	default = false,
	callback = function(toggleValue)
 HitboxExpanderEnabled = toggleValue
    end,
})
--mags type
Tab6:NewSlider({
	Name = "extender distance",
	min = 1,
	max = 30,
	default = 0,
	callback = function(sliderValue)
    HitboxExpanderSize = sliderValue
    end,
})

spawn(function()
    while true do
        wait()
        if HitboxExpanderEnabled then
            for _, v in ipairs(workspace:GetChildren()) do
                if v.Name == "Football" and v:IsA("BasePart") then
                    for _, vp in ipairs(getconnections(v:GetPropertyChangedSignal("Size"))) do
                        vp:Disable()
                    end
                    v.CanCollide = false
                    v.Size = Vector3.new(HitboxExpanderSize, HitboxExpanderSize, HitboxExpanderSize)
                end
            end
        end
    end
end)



--calculate
local function toggleState(v)
    local state = v
    local transparency = state and 0.5 or 0
    local model = game:GetService("Workspace").Models.Field.Grass
    
    for _, part in pairs(model:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = not state
            part.Transparency = transparency
        end
    end
    
    if state then
        local part = Instance.new("Part")
        part.Size = Vector3.new(500, 0.001, 500)
        part.CFrame = CFrame.new(Vector3.new(10.3562937, -1.51527438, 30.4708614))
        part.Anchored = true
        part.Parent = game.Workspace
    
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://"
        local track = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        track:Play(.1, 1, 1)
    else
        if track ~= nil then
            track:Stop()
        end
    end
end




local removeJumpCooldownConnection

Tab6:NewToggle({
	Name = "remove jump cooldown",
	default = false,
	callback = function(v)
        if v then
            removeJumpCooldownConnection = userInputService.JumpRequest:Connect(function()
                if v then
                    player.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
                end
            end)
        else
            if removeJumpCooldownConnection then
                removeJumpCooldownConnection:Disconnect()
            end
            
        end
    end,
})
--get

local infiniteJumpConnection

Tab5:NewToggle({
	Name = "inf jump",
	default = false,
	callback = function(v)
        if v then
            infiniteJumpConnection = userInputService.JumpRequest:Connect(function()
                if v then
                    player.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
                    player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end)
        else
            if infiniteJumpConnection then
                infiniteJumpConnection:Disconnect()
            end
            -- You can add additional logic here to reset the character's state if needed.
        end
    end,
})


--autocatch

while true do
	task.wait()
	if not qbon then 
		if oldHighlight then
			oldHighlight:Destroy()
			oldHighlight = nil
		end
		continue 
	end
	if not player.Character:FindFirstChild("Football") then
		if oldHighlight then
			oldHighlight:Destroy()
			oldHighlight = nil
		end
		Finium.Enabled = false
		sphere.Transparency = 1
	else
		Value.Text = mode
		if not silent then
			sphere.Transparency = 0
		else
			sphere.Transparency = 1
		end
		beam.Enabled = not silent
		Finium.Enabled = not silent
		if not locked then
			target = findtarget()
		end
		if not target then task.wait() continue end
		local highlight = Instance.new("Highlight")
		highlight.FillColor = Color3.fromRGB(0, 0, 0)
		highlight.Enabled = not silent
		highlight.Parent = target
		highlight.Adornee = target
		if oldHighlight then
			oldHighlight:Destroy()
			oldHighlight = nil
		end
		oldHighlight = highlight
		pwr, natpwr = findPower(target)
		local direction = Vector3.new(0, 0, 0)
		local moveDirection = getMoveDirection(target.Humanoid)
		local distance = (target.Head.Position - character.Head.Position).Magnitude
		if mode ~= "Bullet" then
			moveDirection = straightenMoveDirection(moveDirection)
			--local graph = visualization.new()
			local a = 0.985
			if mode == "Mag" then 
				a = 1.0009
			elseif mode == "Dime" then
				a = 1.0005	
			elseif mode == "Jump" then
				a = 0.98-- Same behavior as "Mag"
			elseif mode == "AngleDive" then
				a = 1.011	
			end
			if pwr > 80 then
				if character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall then
					a += 0.013
				else
					a += 0.013
				end
			end
			pwr *= a
			pwr = math.clamp(pwr, 0, 100)
			at = target.Head.Position + (moveDirection * pwr + Vector3.new(0, (distance + (pwr / 2)), 0))
		else
			local estimated = distance / 95
			pwr = 95
			at = target.Head.Position + (moveDirection * 25 * estimated) + Vector3.new(0, (distance / 125 * 15), 0)
		end
		
		direction = (at - character.Head.Position).Unit
		--graph:Graph(pwr, direction)
		local lPosition, airtime = calculateLanding(pwr, direction)
		Value_2.Text = math.round(pwr)
		Value_3.Text = (math.round(airtime * 100) / 100).."s"
		sphere.Position = lPosition
		local curve0, curve1, cf1, cf2 = beamProjectile(Vector3.new(0, -28, 0), pwr * direction, character.Head.Position + (direction * 5),airtime * 1.75, 7)
		beam.Segments = 10 * 300
		beam.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0))
		beam.CurveSize0 = curve0
		beam.CurveSize1 = curve1
		attach0.CFrame = attach0.Parent.CFrame:Inverse() * cf1
		attach1.CFrame = attach1.Parent.CFrame:Inverse() * cf2
		task.wait()	
	end
end 

