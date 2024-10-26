--krampussy

local krampussy = Instance.new("ScreenGui")
local layout = Instance.new("Frame")
local guiResizer = Instance.new("Folder")
local resizer = Instance.new("Frame")
local dragger = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local krampussy_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Clear = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local fluency_icon = Instance.new("ImageLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local OpenFile = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local fluency_icon_2 = Instance.new("ImageLabel")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local ImageButton = Instance.new("ImageButton")
local UICorner_5 = Instance.new("UICorner")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local fluency_icon_3 = Instance.new("ImageLabel")
local Scroll = Instance.new("ScrollingFrame")
local CodeBox = Instance.new("TextBox")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")

--Properties:

krampussy.Name = "krampussy"
krampussy.Parent = (game:GetService("CoreGui") or gethui())
krampussy.ResetOnSpawn = false

layout.Name = "layout"
layout.Parent = krampussy
layout.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
layout.BackgroundTransparency = 0.560
layout.BorderColor3 = Color3.fromRGB(0, 0, 0)
layout.BorderSizePixel = 0
layout.Position = UDim2.new(-0.294252872, 0, -0.575539589, 0)
layout.Size = UDim2.new(0, 2147483647, 0, 2147483647)

guiResizer.Name = "guiResizer"
guiResizer.Parent = krampussy

resizer.Name = "resizer"
resizer.Parent = guiResizer
resizer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
resizer.BackgroundTransparency = 1.000
resizer.ClipsDescendants = true
resizer.Position = UDim2.new(1, -30, 1, -30)
resizer.Size = UDim2.new(0, 30, 0, 30)
resizer.SizeConstraint = Enum.SizeConstraint.RelativeXX

dragger.Name = "dragger"
dragger.Parent = resizer
dragger.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
dragger.BackgroundTransparency = 1.000
dragger.BorderSizePixel = 0
dragger.Size = UDim2.new(2, 0, 2, 0)
dragger.ZIndex = 2
dragger.ImageTransparency = 1.000

UICorner.CornerRadius = UDim.new(0.5, 0)
UICorner.Parent = dragger

krampussy_2.Name = "krampussy"
krampussy_2.Parent = krampussy
krampussy_2.BackgroundColor3 = Color3.fromRGB(0, 0, 33)
krampussy_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
krampussy_2.BorderSizePixel = 0
krampussy_2.Position = UDim2.new(0.0380577482, 0, 0.0581395365, 0)
krampussy_2.Size = UDim2.new(0, 652, 0, 359)

UICorner_2.CornerRadius = UDim.new(0, 12)
UICorner_2.Parent = krampussy_2

TextLabel.Parent = krampussy_2
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.277126938, 0, 0.0223325025, 0)
TextLabel.Size = UDim2.new(0, 261, 0, 15)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "krampus <font color=\"#ff0000\">[DECTECED AND RAPED]</font>"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.RichText = true

UITextSizeConstraint.Parent = TextLabel
UITextSizeConstraint.MaxTextSize = 15

UIAspectRatioConstraint.Parent = TextLabel
UIAspectRatioConstraint.AspectRatio = 17.400

Clear.Name = "Clear"
Clear.Parent = krampussy_2
Clear.BackgroundColor3 = Color3.fromRGB(76, 76, 76)
Clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clear.BorderSizePixel = 0
Clear.Position = UDim2.new(0.324471891, 0, 0.929109812, 0)
Clear.Size = UDim2.new(0, 119, 0, 20)
Clear.Font = Enum.Font.Unknown
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
Clear.TextScaled = true
Clear.TextSize = 14.000
Clear.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(2, 12)
UICorner_3.Parent = Clear

fluency_icon.Name = "fluency_icon"
fluency_icon.Parent = Clear
fluency_icon.AnchorPoint = Vector2.new(0.5, 0.5)
fluency_icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fluency_icon.BackgroundTransparency = 1.000
fluency_icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
fluency_icon.BorderSizePixel = 0
fluency_icon.Position = UDim2.new(0.878151238, 0, 0.550000012, 0)
fluency_icon.Size = UDim2.new(0, 28, 0, 22)
fluency_icon.Image = "rbxassetid://11293981586"
fluency_icon.ScaleType = Enum.ScaleType.Fit

UITextSizeConstraint_2.Parent = Clear
UITextSizeConstraint_2.MaxTextSize = 20

UIAspectRatioConstraint_2.Parent = Clear
UIAspectRatioConstraint_2.AspectRatio = 5.950

OpenFile.Name = "OpenFile"
OpenFile.Parent = krampussy_2
OpenFile.BackgroundColor3 = Color3.fromRGB(76, 76, 76)
OpenFile.BorderColor3 = Color3.fromRGB(0, 0, 0)
OpenFile.BorderSizePixel = 0
OpenFile.Position = UDim2.new(0.112815388, 0, 0.926324248, 0)
OpenFile.Size = UDim2.new(0, 128, 0, 20)
OpenFile.Font = Enum.Font.Unknown
OpenFile.Text = "Open File"
OpenFile.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenFile.TextScaled = true
OpenFile.TextSize = 14.000
OpenFile.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(2, 12)
UICorner_4.Parent = OpenFile

fluency_icon_2.Name = "fluency_icon"
fluency_icon_2.Parent = OpenFile
fluency_icon_2.AnchorPoint = Vector2.new(0.5, 0.5)
fluency_icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fluency_icon_2.BackgroundTransparency = 1.000
fluency_icon_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
fluency_icon_2.BorderSizePixel = 0
fluency_icon_2.Position = UDim2.new(0.886554599, 0, 0.524999976, 0)
fluency_icon_2.Size = UDim2.new(0, 26, 0, 21)
fluency_icon_2.Image = "rbxassetid://11295287370"
fluency_icon_2.ScaleType = Enum.ScaleType.Fit

UITextSizeConstraint_3.Parent = OpenFile
UITextSizeConstraint_3.MaxTextSize = 14

UIAspectRatioConstraint_3.Parent = OpenFile
UIAspectRatioConstraint_3.AspectRatio = 6.400

ImageButton.Parent = krampussy_2
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.0153374234, 0, 0.899721205, 0)
ImageButton.Size = UDim2.new(0, 35, 0, 29)
ImageButton.Image = "rbxassetid://16884178261"
ImageButton.ImageRectOffset = Vector2.new(304, 0)
ImageButton.ImageRectSize = Vector2.new(36, 36)

UICorner_5.CornerRadius = UDim.new(2, 12)
UICorner_5.Parent = ImageButton

UIAspectRatioConstraint_4.Parent = ImageButton
UIAspectRatioConstraint_4.AspectRatio = 1.207

fluency_icon_3.Name = "fluency_icon"
fluency_icon_3.Parent = krampussy_2
fluency_icon_3.AnchorPoint = Vector2.new(0.5, 0.5)
fluency_icon_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fluency_icon_3.BackgroundTransparency = 1.000
fluency_icon_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
fluency_icon_3.BorderSizePixel = 0
fluency_icon_3.Position = UDim2.new(0.033742331, 0, 0.0578236282, 0)
fluency_icon_3.Size = UDim2.new(0, 24, 0, 26)
fluency_icon_3.Image = "rbxassetid://13068738330"
fluency_icon_3.ScaleType = Enum.ScaleType.Fit

Scroll.Name = "Scroll"
Scroll.Parent = krampussy_2
Scroll.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Scroll.BorderColor3 = Color3.fromRGB(66, 66, 66)
Scroll.BorderSizePixel = 3
Scroll.Position = UDim2.new(0.016846545, 0, 0.120983839, 0)
Scroll.Size = UDim2.new(0, 630, 0, 267)
Scroll.ScrollBarThickness = 7

CodeBox.Name = "CodeBox"
CodeBox.Parent = Scroll
CodeBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CodeBox.BackgroundTransparency = 0.999
CodeBox.Position = UDim2.new(0, 0, -0.00181025243, 0)
CodeBox.Size = UDim2.new(1, 0, 662.278198, 0)
CodeBox.ZIndex = 2
CodeBox.ClearTextOnFocus = false
CodeBox.Font = Enum.Font.GothamBold
CodeBox.MultiLine = true
CodeBox.PlaceholderText = "-- i use krampussy i must be so cool!"
CodeBox.Text = ""
CodeBox.TextColor3 = Color3.fromRGB(255, 255, 255)
CodeBox.TextSize = 18.000
CodeBox.TextWrapped = true
CodeBox.TextXAlignment = Enum.TextXAlignment.Left
CodeBox.TextYAlignment = Enum.TextYAlignment.Top

UIAspectRatioConstraint_5.Parent = CodeBox
UIAspectRatioConstraint_5.AspectRatio = 0.001

UIAspectRatioConstraint_6.Parent = Scroll
UIAspectRatioConstraint_6.AspectRatio = 2.360

UIAspectRatioConstraint_7.Parent = krampussy_2
UIAspectRatioConstraint_7.AspectRatio = 1.816

-- Module Scripts:

local fake_module_scripts = {}

do -- guiResizer.handler
	local script = Instance.new('ModuleScript', guiResizer)
	script.Name = "handler"
	local function module_script()
		local module = {}
		
		local mouse = game.Players.LocalPlayer:GetMouse()
		
		local DRAGGER_SIZE = 30
		local DRAGGER_TRANSPARENCY = .5
		
		local dragging = false
		
		function module.makeResizable(obj:GuiObject, minSize)
			
			local resizer = script.Parent.resizer:Clone()
			local dragger = resizer.dragger
			
			resizer.Size = UDim2.fromOffset(DRAGGER_SIZE, DRAGGER_SIZE)
			resizer.Position = UDim2.new(1, -DRAGGER_SIZE, 1, -DRAGGER_SIZE)
			
			local duic = dragger.UICorner
			minSize = minSize or Vector2.new(160, 90)
			
			local startDrag, startSize
			local gui = obj:FindFirstAncestorWhichIsA("ScreenGui")
			resizer.Parent = obj
		
			local function finishResize(tr)
				dragger.Position = UDim2.new(0,0,0,0)
				dragger.Size = UDim2.new(2,0,2,0)
				dragger.Parent = resizer
				dragger.BackgroundTransparency = tr
				duic.Parent = dragger
				startDrag = nil
			end
			dragger.MouseButton1Down:Connect(function()
				if not startDrag then
					startSize = obj.AbsoluteSize			
					startDrag = Vector2.new(mouse.X, mouse.Y)
					dragger.BackgroundTransparency = 1
					dragger.Size = UDim2.fromOffset(gui.AbsoluteSize.X, gui.AbsoluteSize.Y)
					dragger.Position = UDim2.new(0,0,0,0)
					duic.Parent = nil
					dragger.Parent = gui
				end
			end)	
			dragger.MouseMoved:Connect(function()
				if startDrag then		
					local m = Vector2.new(mouse.X, mouse.Y)
					local mouseMoved = Vector2.new(m.X - startDrag.X, m.Y - startDrag.Y)
					
					local s = startSize + mouseMoved
					local sx = math.max(minSize.X, s.X) 
					local sy = math.max(minSize.Y, s.Y)
					
					obj.Size = UDim2.fromOffset(sx, sy)
					
				end
			end)
			dragger.MouseEnter:Connect(function()
				finishResize(DRAGGER_TRANSPARENCY)				
			end)
			dragger.MouseLeave:Connect(function()
				finishResize(1)
			end)		
			dragger.MouseButton1Up:Connect(function()
				finishResize(DRAGGER_TRANSPARENCY)
			end)	
		end
		
		function module.makeDraggable(obj)
			local UIS = game:GetService("UserInputService")
			local dragInput, dragStart
			local startPos = obj.Position 
			local dragger = obj	
			local function updateInput(input)
				local offset = input.Position - dragStart
				local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + offset.X, startPos.Y.Scale, startPos.Y.Offset + offset.Y)
				game:GetService("TweenService"):Create(obj, TweenInfo.new(0.25), {Position = Position}):Play()
			end
			dragger.InputBegan:Connect(function(input)
				if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and not UIS:GetFocusedTextBox() then
					dragging = true
					dragStart = input.Position
					startPos = obj.Position
					module.dragged = obj
					input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							dragging = false
						end
					end)
				end
			end)
			dragger.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					dragInput = input
				end
			end)
			UIS.InputChanged:Connect(function(input)
				if input == dragInput and dragging then
					updateInput(input)
				end
			end)
		end
		
		return module
		
	end
	fake_module_scripts[script] = module_script
end


-- Scripts:

local function FKIEI_fake_script() -- krampussy.LocalScript 
	local script = Instance.new('LocalScript', krampussy)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local UIS = game:GetService("UserInputService")
	game:GetService("UserInputService").InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Keyboard then
			if input.KeyCode == Enum.KeyCode.Insert then
				if not script.Parent.krampussy.Visible then
					script.Parent.krampussy.Visible = true
					script.Parent.layout.Visible = true
					UIS.MouseBehaviour = Enum.MouseBehavior.Default
				else
					script.Parent.krampussy.Visible = false
					script.Parent.layout.Visible = false
					UIS.MouseBehaviour = Enum.MouseBehavior.LockCenter
				end
			end
		end
	end)
	
end
coroutine.wrap(FKIEI_fake_script)()
local function QHGFD_fake_script() -- krampussy.demo 
	local script = Instance.new('LocalScript', krampussy)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	resizer = require(script.Parent.guiResizer.handler)
	
	ftr = script.Parent.krampussy
	
	minimumSize = Vector2.new(240, 160)
	
	resizer.makeResizable(ftr, minimumSize)
	resizer.makeDraggable(ftr)
	
end
coroutine.wrap(QHGFD_fake_script)()
local function ASSTA_fake_script() -- Clear.LocalScript 
	local script = Instance.new('LocalScript', Clear)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Scroll.CodeBox.Text = ""
	end)
end
coroutine.wrap(ASSTA_fake_script)()
local function NOYU_fake_script() -- OpenFile.LocalScript 
	local script = Instance.new('LocalScript', OpenFile)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.MouseButton1Click:Connect(function()
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://5914602124"
		sound.Parent = script.Parent
		sound:Play()
		wait(sound.TimeLength + 2)
		sound:Destroy()
	end)
end
coroutine.wrap(NOYU_fake_script)()
local function JOZOEDH_fake_script() -- ImageButton.LocalScript 
	local script = Instance.new('LocalScript', ImageButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local button = script.Parent
	button.MouseButton1Click:Connect(function()
		local Source = script.Parent.Parent.Scroll.CodeBox
		loadstring(Source.Text)()
	end)
end
coroutine.wrap(JOZOEDH_fake_script)()
local function JZXCD_fake_script() -- fluency_icon_3.LocalScript 
	local script = Instance.new('LocalScript', fluency_icon_3)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local image = script.Parent
		local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, true)
		local rotateTween = game:GetService("TweenService"):Create(image, tweenInfo, {Rotation = image.Rotation + 360})
		rotateTween:Play()
	
end
coroutine.wrap(JZXCD_fake_script)()
