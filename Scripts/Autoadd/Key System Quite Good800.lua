-- Instances:

local Converted = {
	["_ScreenGui"] = Instance.new("ScreenGui");
	["_Frame"] = Instance.new("Frame");
	["_UICorner"] = Instance.new("UICorner");
	["_ShadowHolder"] = Instance.new("Frame");
	["_Shadow"] = Instance.new("ImageLabel");
	["_clear"] = Instance.new("ImageButton");
	["_LocalScript"] = Instance.new("LocalScript");
	["_KeyInput"] = Instance.new("TextBox");
	["_UICorner1"] = Instance.new("UICorner");
	["_UIStroke"] = Instance.new("UIStroke");
	["_UIGradient"] = Instance.new("UIGradient");
	["_TextLabel"] = Instance.new("TextLabel");
	["_UIGradient1"] = Instance.new("UIGradient");
	["_LocalScript1"] = Instance.new("LocalScript");
	["_LocalScript2"] = Instance.new("LocalScript");
	["_TextLabel1"] = Instance.new("TextLabel");
	["_Valid"] = Instance.new("Frame");
	["_UIGradient2"] = Instance.new("UIGradient");
	["_UICorner2"] = Instance.new("UICorner");
	["_UIStroke1"] = Instance.new("UIStroke");
	["_TextLabel2"] = Instance.new("TextLabel");
	["_check"] = Instance.new("ImageButton");
	["_UICorner3"] = Instance.new("UICorner");
	["_InValid"] = Instance.new("Frame");
	["_UIGradient3"] = Instance.new("UIGradient");
	["_UICorner4"] = Instance.new("UICorner");
	["_UIStroke2"] = Instance.new("UIStroke");
	["_TextLabel3"] = Instance.new("TextLabel");
	["_clear1"] = Instance.new("ImageButton");
	["_UICorner5"] = Instance.new("UICorner");
	["_LocalScript3"] = Instance.new("LocalScript");
}

-- Properties:

Converted["_ScreenGui"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_ScreenGui"].Parent = game:GetService("CoreGui")

Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(31.000000052154064, 31.000000052154064, 31.000000052154064)
Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame"].BorderSizePixel = 0
Converted["_Frame"].Position = UDim2.new(0.40354535, 0, 0.375, 0)
Converted["_Frame"].Size = UDim2.new(0, 369, 0, 256)
Converted["_Frame"].Parent = Converted["_ScreenGui"]

Converted["_UICorner"].Parent = Converted["_Frame"]

Converted["_ShadowHolder"].BackgroundTransparency = 1
Converted["_ShadowHolder"].Size = UDim2.new(1, 0, 1, 0)
Converted["_ShadowHolder"].Name = "ShadowHolder"
Converted["_ShadowHolder"].Parent = Converted["_Frame"]

Converted["_Shadow"].Image = "rbxassetid://12817494724"
Converted["_Shadow"].ImageTransparency = 0.699999988079071
Converted["_Shadow"].ScaleType = Enum.ScaleType.Slice
Converted["_Shadow"].SliceCenter = Rect.new(85, 85, 427, 427)
Converted["_Shadow"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Shadow"].BackgroundTransparency = 1
Converted["_Shadow"].Position = UDim2.new(0.5, 0, 0.5, 3)
Converted["_Shadow"].Size = UDim2.new(1, 145, 1, 145)
Converted["_Shadow"].ZIndex = -5
Converted["_Shadow"].Name = "Shadow"
Converted["_Shadow"].Parent = Converted["_ShadowHolder"]

Converted["_clear"].Image = "rbxassetid://3926305904"
Converted["_clear"].ImageRectOffset = Vector2.new(924, 724)
Converted["_clear"].ImageRectSize = Vector2.new(36, 36)
Converted["_clear"].BackgroundTransparency = 1
Converted["_clear"].LayoutOrder = 5
Converted["_clear"].Position = UDim2.new(0.890243888, 0, 0.0390625, 0)
Converted["_clear"].Size = UDim2.new(0, 30, 0, 30)
Converted["_clear"].ZIndex = 2
Converted["_clear"].Name = "clear"
Converted["_clear"].Parent = Converted["_Frame"]

Converted["_KeyInput"].CursorPosition = -1
Converted["_KeyInput"].Font = Enum.Font.SourceSansBold
Converted["_KeyInput"].Text = ""
Converted["_KeyInput"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_KeyInput"].TextScaled = true
Converted["_KeyInput"].TextSize = 14
Converted["_KeyInput"].TextWrapped = true
Converted["_KeyInput"].BackgroundColor3 = Color3.fromRGB(39.00000147521496, 39.00000147521496, 39.00000147521496)
Converted["_KeyInput"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_KeyInput"].BorderSizePixel = 0
Converted["_KeyInput"].Position = UDim2.new(0.173441738, 0, 0.8515625, 0)
Converted["_KeyInput"].Size = UDim2.new(0, 241, 0, 30)
Converted["_KeyInput"].Name = "KeyInput"
Converted["_KeyInput"].Parent = Converted["_Frame"]

Converted["_UICorner1"].Parent = Converted["_KeyInput"]

Converted["_UIStroke"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke"].Thickness = 1.7000000476837158
Converted["_UIStroke"].Parent = Converted["_KeyInput"]

Converted["_UIGradient"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(59.00000028312206, 59.00000028312206, 59.00000028312206)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(190.0000038743019, 190.0000038743019, 190.0000038743019))
}
Converted["_UIGradient"].Parent = Converted["_UIStroke"]

Converted["_TextLabel"].Font = Enum.Font.SourceSansBold
Converted["_TextLabel"].Text = "Script Key"
Converted["_TextLabel"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel"].TextScaled = true
Converted["_TextLabel"].TextSize = 14
Converted["_TextLabel"].TextWrapped = true
Converted["_TextLabel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel"].BackgroundTransparency = 1
Converted["_TextLabel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel"].BorderSizePixel = 0
Converted["_TextLabel"].Position = UDim2.new(-0.00145061873, 0, -0.00223600864, 0)
Converted["_TextLabel"].Size = UDim2.new(0, 260, 0, 39)
Converted["_TextLabel"].Parent = Converted["_Frame"]

Converted["_UIGradient1"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(58.00000034272671, 58.00000034272671, 58.00000034272671)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(225.00000178813934, 225.00000178813934, 225.00000178813934))
}
Converted["_UIGradient1"].Parent = Converted["_TextLabel"]

Converted["_TextLabel1"].Font = Enum.Font.SourceSansBold
Converted["_TextLabel1"].Text = "Key is in Discord (example)"
Converted["_TextLabel1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel1"].TextScaled = true
Converted["_TextLabel1"].TextSize = 14
Converted["_TextLabel1"].TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel1"].TextWrapped = true
Converted["_TextLabel1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel1"].BackgroundTransparency = 1
Converted["_TextLabel1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel1"].BorderSizePixel = 0
Converted["_TextLabel1"].Position = UDim2.new(0.184281841, 0, 0.36328125, 0)
Converted["_TextLabel1"].Size = UDim2.new(0, 233, 0, 75)
Converted["_TextLabel1"].Parent = Converted["_Frame"]

Converted["_Valid"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Valid"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Valid"].BorderSizePixel = 0
Converted["_Valid"].Position = UDim2.new(0.846715331, 0, 0.0303398054, 0)
Converted["_Valid"].Size = UDim2.new(0, 294, 0, 58)
Converted["_Valid"].Visible = false
Converted["_Valid"].Name = "Valid"
Converted["_Valid"].Parent = Converted["_ScreenGui"]

Converted["_UIGradient2"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(99.00000169873238, 255, 88.00000235438347)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(4.000000236555934, 4.000000236555934, 4.000000236555934))
}
Converted["_UIGradient2"].Parent = Converted["_Valid"]

Converted["_UICorner2"].Parent = Converted["_Valid"]

Converted["_UIStroke1"].Parent = Converted["_Valid"]

Converted["_TextLabel2"].Font = Enum.Font.SourceSansBold
Converted["_TextLabel2"].Text = "Valid Key!"
Converted["_TextLabel2"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel2"].TextSize = 36
Converted["_TextLabel2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel2"].BackgroundTransparency = 1
Converted["_TextLabel2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel2"].BorderSizePixel = 0
Converted["_TextLabel2"].Position = UDim2.new(0.0753721893, 0, 0.068965517, 0)
Converted["_TextLabel2"].Size = UDim2.new(0, 248, 0, 50)
Converted["_TextLabel2"].Parent = Converted["_Valid"]

Converted["_check"].Image = "rbxassetid://3926305904"
Converted["_check"].ImageColor3 = Color3.fromRGB(13.00000112503767, 255, 0)
Converted["_check"].ImageRectOffset = Vector2.new(312, 4)
Converted["_check"].ImageRectSize = Vector2.new(24, 24)
Converted["_check"].BackgroundColor3 = Color3.fromRGB(252.00001537799835, 250.00001549720764, 255)
Converted["_check"].Position = UDim2.new(0.0748299286, 0, 0.18965517, 0)
Converted["_check"].Size = UDim2.new(0, 35, 0, 35)
Converted["_check"].ZIndex = 2
Converted["_check"].Name = "check"
Converted["_check"].Parent = Converted["_Valid"]

Converted["_UICorner3"].CornerRadius = UDim.new(1, 8)
Converted["_UICorner3"].Parent = Converted["_check"]

Converted["_InValid"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_InValid"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_InValid"].BorderSizePixel = 0
Converted["_InValid"].Position = UDim2.new(0.846715331, 0, 0.0303398054, 0)
Converted["_InValid"].Size = UDim2.new(0, 294, 0, 58)
Converted["_InValid"].Visible = false
Converted["_InValid"].Name = "InValid"
Converted["_InValid"].Parent = Converted["_ScreenGui"]

Converted["_UIGradient3"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 19.0000007674098, 23.000000528991222)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(4.000000236555934, 4.000000236555934, 4.000000236555934))
}
Converted["_UIGradient3"].Parent = Converted["_InValid"]

Converted["_UICorner4"].Parent = Converted["_InValid"]

Converted["_UIStroke2"].Parent = Converted["_InValid"]

Converted["_TextLabel3"].Font = Enum.Font.SourceSansBold
Converted["_TextLabel3"].Text = "InValid Key!"
Converted["_TextLabel3"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel3"].TextSize = 36
Converted["_TextLabel3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel3"].BackgroundTransparency = 1
Converted["_TextLabel3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel3"].BorderSizePixel = 0
Converted["_TextLabel3"].Position = UDim2.new(0.0753721893, 0, 0.068965517, 0)
Converted["_TextLabel3"].Size = UDim2.new(0, 248, 0, 50)
Converted["_TextLabel3"].Parent = Converted["_InValid"]

Converted["_clear1"].Image = "rbxassetid://3926305904"
Converted["_clear1"].ImageColor3 = Color3.fromRGB(255, 5.000000176951289, 9.000000413507223)
Converted["_clear1"].ImageRectOffset = Vector2.new(924, 724)
Converted["_clear1"].ImageRectSize = Vector2.new(36, 36)
Converted["_clear1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_clear1"].LayoutOrder = 5
Converted["_clear1"].Position = UDim2.new(0.0510204099, 0, 0.18965517, 0)
Converted["_clear1"].Size = UDim2.new(0, 35, 0, 35)
Converted["_clear1"].ZIndex = 2
Converted["_clear1"].Name = "clear"
Converted["_clear1"].Parent = Converted["_InValid"]

Converted["_UICorner5"].CornerRadius = UDim.new(1, 8)
Converted["_UICorner5"].Parent = Converted["_clear1"]

-- Fake Module Scripts:

local fake_module_scripts = {}


-- Fake Local Scripts:

local function IFXLNG_fake_script() -- Fake Script: StarterGui.ScreenGui.Frame.clear.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_clear"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local TweenService = game:GetService("TweenService")
	
	local imageButton = script.Parent  -- The script is a direct child of the image button
	
	local function slideDownAndRemoveGui()
		-- Create a new TweenInfo
		local tweenInfo = TweenInfo.new(
			1,  -- Time in seconds that the animation should take
			Enum.EasingStyle.Back,  -- Easing style
			Enum.EasingDirection.In,  -- Easing direction
			0,  -- Number of times to repeat
			false,  -- Should the animation repeat?
			0  -- Delay before repeating
		)
	
		-- Calculate the new position off the bottom of the screen
		local offScreenPosition = UDim2.new(
			imageButton.Parent.Position.X.Scale,
			imageButton.Parent.Position.X.Offset,
			1,
			imageButton.Parent.AbsoluteSize.Y
		)
	
		-- Create the Tween
		local tween = TweenService:Create(imageButton.Parent, tweenInfo, {Position = offScreenPosition})
	
		-- Define what should happen when the Tween finishes
		local function tweenFinished()
			imageButton.Parent:Destroy()  -- Remove the GUI from the game
		end
	
		tween.Completed:Connect(tweenFinished)  -- Connect the tweenFinished function to the Tween's Completed event
	
		tween:Play()  -- Start the Tween
	end
	
	imageButton.MouseButton1Click:Connect(slideDownAndRemoveGui)  -- Connect the slideDownAndRemoveGui function to the button's MouseButton1Click event
	
end
local function WAAOYPU_fake_script() -- Fake Script: StarterGui.ScreenGui.Frame.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_Frame"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local TweenService = game:GetService("TweenService")
	
	local frame = script.Parent  -- The script is a direct child of the frame
	local finalPosition = frame.Position  -- Save the frame's final position
	
	frame.Position = UDim2.new(frame.Position.X.Scale, frame.Position.X.Offset, 0, -frame.AbsoluteSize.Y) -- Move the frame off the top of the screen
	
	local tweenInfo = TweenInfo.new(
		1,  -- Time in seconds that the animation should take
		Enum.EasingStyle.Back,  -- Easing style
		Enum.EasingDirection.Out,  -- Easing direction
		0,  -- Number of times to repeat
		false,  -- Should the animation repeat?
		0  -- Delay before repeating
	)
	
	local tween = TweenService:Create(frame, tweenInfo, {Position = finalPosition})
	
	tween:Play()
	
end
local function KMPPKX_fake_script() -- Fake Script: StarterGui.ScreenGui.Frame.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_Frame"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	
	local frame = script.Parent -- The script is a direct child of the frame
	
	-- Function to create the click effect
	local function createClickEffect(x, y)
		-- Create the effect GUI
		local effect = Instance.new("Frame")
		effect.Size = UDim2.new(0, 0, 0, 0)
		effect.Position = UDim2.new(0, x, 0, y)
		effect.AnchorPoint = Vector2.new(0.5, 0.5)
		effect.BackgroundColor3 = Color3.new(1, 1, 1)
		effect.BorderSizePixel = 0
		effect.Parent = frame
	
		-- Animate the effect
		local tween = TweenService:Create(effect, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 50, 0, 50), BackgroundTransparency = 1})
		tween:Play()
	
		-- Remove the effect when the animation is done
		tween.Completed:Connect(function()
			effect:Destroy()
		end)
	end
	
	-- Function to handle mouse clicks
	local function onMouseClick(input)
		local pos = input.Position
		local frameCorner1 = frame.AbsolutePosition
		local frameCorner2 = frameCorner1 + frame.AbsoluteSize
	
		-- Check if the clicked position is within the frame
		if pos.X >= frameCorner1.X and pos.Y >= frameCorner1.Y and pos.X <= frameCorner2.X and pos.Y <= frameCorner2.Y then
			createClickEffect(pos.X - frameCorner1.X, pos.Y - frameCorner1.Y)
		end
	end
	
	-- Connect the mouse click event
	UserInputService.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			onMouseClick(input)
		end
	end)
	
end
local function IIST_fake_script() -- Fake Script: StarterGui.ScreenGui.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_ScreenGui"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local TweenService = game:GetService("TweenService")
	
	local screenGui = script.Parent
	local keySystemFrame = screenGui:FindFirstChild("Frame") -- Replace with your frame's name
	local correctKey = "YourCorrectKey" -- Replace with your actual key
	
	local keyInput = keySystemFrame:FindFirstChild("KeyInput")
	local validFrame = screenGui:FindFirstChild("Valid")
	local invalidFrame = screenGui:FindFirstChild("InValid")
	
	-- Store final positions from Studio
	local validFinalPosition = validFrame.Position
	local invalidFinalPosition = invalidFrame.Position
	
	-- Set frames to initial positions off the right side of the screen
	validFrame.Position = UDim2.new(1, 0, validFinalPosition.Y.Scale, validFinalPosition.Y.Offset)
	invalidFrame.Position = UDim2.new(1, 0, invalidFinalPosition.Y.Scale, invalidFinalPosition.Y.Offset)
	
	local tweenInfo = TweenInfo.new(
		1,  -- Duration
		Enum.EasingStyle.Back,  -- Easing style
		Enum.EasingDirection.Out  -- Easing direction
	)
	
	local function slideInFromRight(frame, finalPosition)
		frame.Visible = true
		local tween = TweenService:Create(frame, tweenInfo, {Position = finalPosition})
		tween:Play()
		tween.Completed:Wait()
	end
	
	local function slideDownAndDestroy(frame)
		wait(4) -- Wait for 4 seconds
		local targetPos = UDim2.new(frame.Position.X.Scale, frame.Position.X.Offset, 1, 0) -- Move the frame off the bottom
		local tween = TweenService:Create(frame, tweenInfo, {Position = targetPos})
		tween:Play()
		tween.Completed:Wait() -- Wait for animation to complete
		frame:Destroy() -- Destroy the frame
	end
	
	local function notifyValid()
		slideInFromRight(validFrame, validFinalPosition)
		slideDownAndDestroy(validFrame)
	end
	
	local function notifyInvalid()
		slideInFromRight(invalidFrame, invalidFinalPosition)
		slideDownAndDestroy(invalidFrame)
	end
	
	local function checkKey(enterPressed)
		if enterPressed and keyInput.Text == correctKey then
			notifyValid()
			keySystemFrame:Destroy() -- Delete key system immediately after correct key is entered
			loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() -- Run the script from the URL or any open source script for example i used infinite yield you can use any just remove inf yield loadstring and add your own
		elseif enterPressed then
			notifyInvalid()
		end
	end
	
	keyInput.FocusLost:Connect(checkKey)
	
end

coroutine.wrap(IFXLNG_fake_script)()
coroutine.wrap(WAAOYPU_fake_script)()
coroutine.wrap(KMPPKX_fake_script)()
coroutine.wrap(IIST_fake_script)()