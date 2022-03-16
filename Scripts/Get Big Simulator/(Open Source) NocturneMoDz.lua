
local InsertedObjects = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local Button1 = Instance.new("ImageButton")
local BtnText = Instance.new("TextLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UIGradient = Instance.new("UIGradient")
local Button2 = Instance.new("ImageButton")
local BtnText_2 = Instance.new("TextLabel")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local UIGradient_2 = Instance.new("UIGradient")
local Button3 = Instance.new("ImageButton")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local BtnText_3 = Instance.new("TextLabel")
local UIGradient_3 = Instance.new("UIGradient")
local CloseButton = Instance.new("ImageButton")
local UIGradient_4 = Instance.new("UIGradient")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local ImageButton = Instance.new("ImageButton")

--Properties:

InsertedObjects.Name = "InsertedObjects"
InsertedObjects.Parent = game.CoreGui
InsertedObjects.ResetOnSpawn = false

ImageLabel.Parent = InsertedObjects
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.0394712277, 0, 0.104501605, 0)
ImageLabel.Size = UDim2.new(0, 755, 0, 492)
ImageLabel.Image = "http://www.roblox.com/asset/?id=7402946493"

ScrollingFrame.Parent = ImageLabel
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.36953643, 0, 0.380081296, 0)
ScrollingFrame.Size = UDim2.new(0, 195, 0, 243)

Button1.Name = "Button 1 "
Button1.Parent = ScrollingFrame
Button1.AnchorPoint = Vector2.new(1, 1)
Button1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button1.BackgroundTransparency = 1.000
Button1.BorderSizePixel = 5
Button1.Position = UDim2.new(0.945403278, 0, 0.193170965, 0)
Button1.Size = UDim2.new(0.882225692, 0, 0.0763209537, 0)
Button1.Image = "rbxassetid://2790382281"
Button1.ImageColor3 = Color3.fromRGB(26, 190, 190)
Button1.ScaleType = Enum.ScaleType.Slice
Button1.SliceCenter = Rect.new(4, 4, 252, 252)

BtnText.Name = "BtnText"
BtnText.Parent = Button1
BtnText.AnchorPoint = Vector2.new(0.5, 0.5)
BtnText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BtnText.BackgroundTransparency = 1.000
BtnText.BorderSizePixel = 0
BtnText.Position = UDim2.new(0.498592883, 0, 0.488144726, 0)
BtnText.Size = UDim2.new(0.891457498, -5, 0.468874484, -5)
BtnText.Font = Enum.Font.GothamBlack
BtnText.Text = "AUTO BUY CRYSTAL"
BtnText.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnText.TextScaled = true
BtnText.TextSize = 14.000
BtnText.TextWrapped = true

UIAspectRatioConstraint.Parent = Button1
UIAspectRatioConstraint.AspectRatio = 3.042

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(0.98, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient.Offset = Vector2.new(-0.349999994, 0)
UIGradient.Rotation = -135
UIGradient.Parent = Button1

Button2.Name = "Button 2"
Button2.Parent = ScrollingFrame
Button2.AnchorPoint = Vector2.new(1, 1)
Button2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button2.BackgroundTransparency = 1.000
Button2.Position = UDim2.new(0.945403278, 0, 0.0641059503, 0)
Button2.Size = UDim2.new(0.882225692, 0, 0.0763209537, 0)
Button2.Image = "rbxassetid://2790382281"
Button2.ImageColor3 = Color3.fromRGB(26, 190, 190)
Button2.ScaleType = Enum.ScaleType.Slice
Button2.SliceCenter = Rect.new(4, 4, 252, 252)

BtnText_2.Name = "BtnText"
BtnText_2.Parent = Button2
BtnText_2.AnchorPoint = Vector2.new(0.5, 0.5)
BtnText_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BtnText_2.BackgroundTransparency = 1.000
BtnText_2.BorderSizePixel = 0
BtnText_2.Position = UDim2.new(0.498592883, 0, 0.550041258, 0)
BtnText_2.Size = UDim2.new(0.891457498, -5, 0.59266752, -5)
BtnText_2.Font = Enum.Font.GothamBlack
BtnText_2.Text = "AUTO WEIGTH"
BtnText_2.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnText_2.TextScaled = true
BtnText_2.TextSize = 5.000
BtnText_2.TextWrapped = true

UIAspectRatioConstraint_2.Parent = Button2
UIAspectRatioConstraint_2.AspectRatio = 3.042

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(0.98, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_2.Offset = Vector2.new(-0.349999994, 0)
UIGradient_2.Rotation = -135
UIGradient_2.Parent = Button2

Button3.Name = "Button 3"
Button3.Parent = ScrollingFrame
Button3.AnchorPoint = Vector2.new(1, 1)
Button3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button3.BackgroundTransparency = 1.000
Button3.Position = UDim2.new(0.945403278, 0, 0.129146606, 0)
Button3.Size = UDim2.new(0.882225692, 0, 0.0763209537, 0)
Button3.Image = "rbxassetid://2790382281"
Button3.ImageColor3 = Color3.fromRGB(26, 190, 190)
Button3.ScaleType = Enum.ScaleType.Slice
Button3.SliceCenter = Rect.new(4, 4, 252, 252)

UIAspectRatioConstraint_3.Parent = Button3
UIAspectRatioConstraint_3.AspectRatio = 3.042

BtnText_3.Name = "BtnText"
BtnText_3.Parent = Button3
BtnText_3.AnchorPoint = Vector2.new(0.5, 0.5)
BtnText_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BtnText_3.BackgroundTransparency = 1.000
BtnText_3.BorderSizePixel = 0
BtnText_3.Position = UDim2.new(0.498592883, 0, 0.488144726, 0)
BtnText_3.Size = UDim2.new(0.891457498, -5, 0.468874484, -5)
BtnText_3.Font = Enum.Font.GothamBlack
BtnText_3.Text = "AUTO REBIRTH"
BtnText_3.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnText_3.TextScaled = true
BtnText_3.TextSize = 14.000
BtnText_3.TextWrapped = true

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(0.98, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_3.Offset = Vector2.new(-0.349999994, 0)
UIGradient_3.Rotation = -135
UIGradient_3.Parent = Button3

CloseButton.Name = "CloseButton"
CloseButton.Parent = ImageLabel
CloseButton.AnchorPoint = Vector2.new(0.5, 0.5)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.BackgroundTransparency = 1.000
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0.628071308, 0, 0.122769609, 0)
CloseButton.Size = UDim2.new(0.0927402824, 0, 0.0778043792, 0)
CloseButton.Image = "http://www.roblox.com/asset/?id=7400386959"

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 136, 255))}
UIGradient_4.Offset = Vector2.new(-0.349999994, 0)
UIGradient_4.Rotation = -135
UIGradient_4.Parent = CloseButton

UIAspectRatioConstraint_4.Parent = CloseButton
UIAspectRatioConstraint_4.AspectRatio = 2.000

ImageButton.Parent = InsertedObjects
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.Position = UDim2.new(0.416326493, 0, 0, 0)
ImageButton.Size = UDim2.new(0, 123, 0, 60)
ImageButton.Image = "http://www.roblox.com/asset/?id=7529900564"

-- Scripts:

local function ZOCZ_fake_script() -- ImageLabel.LocalScript 
	local script = Instance.new('LocalScript', ImageLabel)

	
	local UIS = game:GetService('UserInputService')
	
	local frame = script.Parent
	
	
	
	local dragToggle = nil
	
	local dragSpeed = 0.25
	
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
coroutine.wrap(ZOCZ_fake_script)()
local function ITRPNFE_fake_script() -- ImageLabel.LocalScript 
	local script = Instance.new('LocalScript', ImageLabel)

	while true do
		script.Parent.BackgroundColor3 = Color3.new (255, 176, 0)
		wait(.7)
		script.Parent.BackgroundColor3 = Color3.new (0, 255, 0)
		wait(.7)
		script.Parent.BackgroundColor3 = Color3.new (255, 0, 0)
		wait(.7)
		script.Parent.BackgroundColor3 = Color3.new (170, 85, 0)
		wait(.7)
		script.Parent.BackgroundColor3 = Color3.new (106, 57, 9)
		wait(.7)
		script.Parent.BackgroundColor3 = Color3.new (0, 16, 176)
		wait(.7)
	end
end
coroutine.wrap(ITRPNFE_fake_script)()
local function JQEBQAR_fake_script() -- Button1.ANIME 
	local script = Instance.new('LocalScript', Button1)

	local btn = script.Parent
	local uiGradient = btn:WaitForChild("UIGradient")
	
	local isHovering = false
	
	local tweenService = game:GetService("TweenService")
	local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
	
	local gradientRestoreTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-0.35, 0)})
	local gradientAddTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(1, 0)})
	
	
	btn.MouseEnter:Connect(function()
		
		isHovering = true
		
		gradientAddTween:Play()
	end)
	
	btn.MouseLeave:Connect(function()
		
		isHovering = false
		
		gradientRestoreTween:Play()
	end)
	
	btn.MouseButton1Down:Connect(function()
		
		gradientRestoreTween:Play()
	end)
	
	btn.MouseButton1Up:Connect(function()
		
		if not isHovering then
			gradientRestoreTween:Play()
		else
			gradientAddTween:Play()
		end
	end)
end
coroutine.wrap(JQEBQAR_fake_script)()
local function YLSNCDI_fake_script() -- Button1.METAB SCRIPT 
	local script = Instance.new('LocalScript', Button1)

	
	script.Parent.MouseButton1Down:connect(function()
	
		game:GetService("ReplicatedStorage").rEvents.openCrystal:InvokeServer(7)
		end)
	
	
	
	
	
end
coroutine.wrap(YLSNCDI_fake_script)()
local function MHGKNB_fake_script() -- Button2.Button7Script 
	local script = Instance.new('LocalScript', Button2)

	local btn = script.Parent
	local uiGradient = btn:WaitForChild("UIGradient")
	
	local isHovering = false
	
	local tweenService = game:GetService("TweenService")
	local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
	
	local gradientRestoreTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-0.35, 0)})
	local gradientAddTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(1, 0)})
	
	
	btn.MouseEnter:Connect(function()
		
		isHovering = true
		
		gradientAddTween:Play()
	end)
	
	btn.MouseLeave:Connect(function()
		
		isHovering = false
		
		gradientRestoreTween:Play()
	end)
	
	btn.MouseButton1Down:Connect(function()
		
		gradientRestoreTween:Play()
	end)
	
	btn.MouseButton1Up:Connect(function()
		
		if not isHovering then
			gradientRestoreTween:Play()
		else
			gradientAddTween:Play()
		end
	end)
end
coroutine.wrap(MHGKNB_fake_script)()
local function PFZCJKX_fake_script() -- Button2.METAB SCRIPT 
	local script = Instance.new('LocalScript', Button2)

	script.Parent.MouseButton1Down:connect(function()
	
	
		game:GetService"RunService".RenderStepped:Connect(function()
			local tool = "Weight"
	
			for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") and v.Name == tool then
					v.Parent = game:GetService("Players").LocalPlayer.Character
				end
			end
			end)
	
	
	_G.Lift = true --change to false if you wanna stop then rexecute
	while wait(1) do
		if _G.Lift == true then
			local LocalPlayer = game.Players.LocalPlayer
			local Punch = LocalPlayer.Backpack:FindFirstChild("Weight")
			local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()
			local Humanoid = Character:FindFirstChild("Humanoid")
	
			local function Click()
				game:GetService("VirtualUser"):Button1Down(Vector2.new(0.5, 0.5), workspace.CurrentCamera.CFrame)
				wait()
				game:GetService("VirtualUser"):Button1Up(Vector2.new(0.5, 0.5), workspace.CurrentCamera.CFrame)
			end
	
			if (not Character:FindFirstChild("Weight")) and (Punch ~= nil) then
				Humanoid:EquipTool(Weight)
			end
	
			Click()
		end
			end
		end)
	
	
	
	
end
coroutine.wrap(PFZCJKX_fake_script)()
local function PXCZZCQ_fake_script() -- Button3.ANIME 
	local script = Instance.new('LocalScript', Button3)

	local btn = script.Parent
	local uiGradient = btn:WaitForChild("UIGradient")
	
	local isHovering = false
	
	local tweenService = game:GetService("TweenService")
	local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
	
	local gradientRestoreTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-0.35, 0)})
	local gradientAddTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(1, 0)})
	
	
	btn.MouseEnter:Connect(function()
		
		isHovering = true
		
		gradientAddTween:Play()
	end)
	
	btn.MouseLeave:Connect(function()
		
		isHovering = false
		
		gradientRestoreTween:Play()
	end)
	
	btn.MouseButton1Down:Connect(function()
		
		gradientRestoreTween:Play()
	end)
	
	btn.MouseButton1Up:Connect(function()
		
		if not isHovering then
			gradientRestoreTween:Play()
		else
			gradientAddTween:Play()
		end
	end)
end
coroutine.wrap(PXCZZCQ_fake_script)()
local function RUIURVU_fake_script() -- Button3.METAB SCRIPT 
	local script = Instance.new('LocalScript', Button3)

	
	script.Parent.MouseButton1Down:connect(function()
	
		while wait() do
			game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer()
		end
	end)
	
	
	
	
	
	
end
coroutine.wrap(RUIURVU_fake_script)()
local function JZUE_fake_script() -- CloseButton.LocalScript 
	local script = Instance.new('LocalScript', CloseButton)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
end
coroutine.wrap(JZUE_fake_script)()
local function ERJSB_fake_script() -- CloseButton.ANIME 
	local script = Instance.new('LocalScript', CloseButton)

	local btn = script.Parent
	local uiGradient = btn:WaitForChild("UIGradient")
	
	local isHovering = false
	
	local tweenService = game:GetService("TweenService")
	local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
	
	local gradientRestoreTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-0.35, 0)})
	local gradientAddTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(1, 0)})
	
	
	btn.MouseEnter:Connect(function()
		
		isHovering = true
		
		gradientAddTween:Play()
	end)
	
	btn.MouseLeave:Connect(function()
		
		isHovering = false
		
		gradientRestoreTween:Play()
	end)
	
	btn.MouseButton1Down:Connect(function()
		
		gradientRestoreTween:Play()
	end)
	
	btn.MouseButton1Up:Connect(function()
		
		if not isHovering then
			gradientRestoreTween:Play()
		else
			gradientAddTween:Play()
		end
	end)
end
coroutine.wrap(ERJSB_fake_script)()
local function ELCURDE_fake_script() -- ImageButton.LocalScript 
	local script = Instance.new('LocalScript', ImageButton)

	script.Parent.MouseButton1Click:connect(function()
		script.Parent.Parent.ImageLabel.Visible = not script.Parent.Parent.ImageLabel.Visible
	end)
	
end
coroutine.wrap(ELCURDE_fake_script)()