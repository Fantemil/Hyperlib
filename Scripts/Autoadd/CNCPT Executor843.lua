local UI = {}

-- // StarterGui.ScreenGui \\ --
UI["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
UI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling

-- // StarterGui.ScreenGui.Frame \\ --
UI["2"] = Instance.new("Frame", UI["1"])
UI["2"]["BorderSizePixel"] = 0
UI["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["2"]["Size"] = UDim2.new(0, 449, 0, 354)
UI["2"]["Position"] = UDim2.new(0.33172, 0, 0.26738, 0)
UI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)

-- // StarterGui.ScreenGui.Frame.TextLabel \\ --
UI["3"] = Instance.new("TextLabel", UI["2"])
UI["3"]["BorderSizePixel"] = 0
UI["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["3"]["TextSize"] = 14
UI["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["3"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["3"]["BackgroundTransparency"] = 1
UI["3"]["Size"] = UDim2.new(0, 82, 0, 27)
UI["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["3"]["Text"] = [[UNC: 83%]]
UI["3"]["Position"] = UDim2.new(0, 0, 0.92373, 0)

-- // StarterGui.ScreenGui.Frame.TextLabel \\ --
UI["4"] = Instance.new("TextLabel", UI["2"])
UI["4"]["TextWrapped"] = true
UI["4"]["BorderSizePixel"] = 0
UI["4"]["TextScaled"] = true
UI["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["4"]["TextSize"] = 14
UI["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["4"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["4"]["BackgroundTransparency"] = 1
UI["4"]["Size"] = UDim2.new(0, 74, 0, 27)
UI["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["4"]["Text"] = [[Executor UI Portable]]
UI["4"]["Position"] = UDim2.new(0.83519, 0, 0.92373, 0)

-- // StarterGui.ScreenGui.Frame.TextBox \\ --
UI["5"] = Instance.new("TextBox", UI["2"])
UI["5"]["CursorPosition"] = -1
UI["5"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["5"]["BorderSizePixel"] = 0
UI["5"]["TextSize"] = 14
UI["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["5"]["Size"] = UDim2.new(0, 448, 0, 319)
UI["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["5"]["Text"] = [[]]
UI["5"]["BackgroundTransparency"] = 1

-- // StarterGui.ScreenGui.Frame.TextButton \\ --
UI["6"] = Instance.new("TextButton", UI["2"])
UI["6"]["TextWrapped"] = true
UI["6"]["BorderSizePixel"] = 0
UI["6"]["TextSize"] = 14
UI["6"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["6"]["TextScaled"] = true
UI["6"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0)
UI["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["6"]["Size"] = UDim2.new(0, 200, 0, 35)
UI["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["6"]["Text"] = [[Execute]]
UI["6"]["Position"] = UDim2.new(0.29399, 0, 0.90113, 0)

-- // StarterGui.ScreenGui.Frame.TextButton.LocalScript \\ --
UI["7"] = Instance.new("LocalScript", UI["6"])


-- // StarterGui.ScreenGui.Frame.TextButton.LocalScript \\ --
UI["8"] = Instance.new("LocalScript", UI["6"])


-- // StarterGui.ScreenGui.Frame.TextButton.UICorner \\ --
UI["9"] = Instance.new("UICorner", UI["6"])
UI["9"]["CornerRadius"] = UDim.new(0.2, 8)

-- // StarterGui.ScreenGui.Frame.TextLabel \\ --
UI["a"] = Instance.new("TextLabel", UI["2"])
UI["a"]["TextWrapped"] = true
UI["a"]["BorderSizePixel"] = 0
UI["a"]["TextScaled"] = true
UI["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["a"]["TextSize"] = 14
UI["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["a"]["TextColor3"] = Color3.fromRGB(10, 219, 17)
UI["a"]["BackgroundTransparency"] = 0.5
UI["a"]["Size"] = UDim2.new(0, 448, 0, 65)
UI["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["a"]["Text"] = [[CNCPT Executor]]
UI["a"]["Position"] = UDim2.new(-0.00155, 0, -0.18588, 0)

-- // StarterGui.ScreenGui.Frame.TextLabel.UIStroke \\ --
UI["b"] = Instance.new("UIStroke", UI["a"])
UI["b"]["Thickness"] = 3

-- // StarterGui.ScreenGui.Frame.TextLabel.UIToolsGradient \\ --
UI["c"] = Instance.new("UIGradient", UI["a"])
UI["c"]["Name"] = [[UIToolsGradient]]
UI["c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(52, 157, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(128, 187, 219))}

-- // StarterGui.ScreenGui.Frame.TextLabel.UICorner \\ --
UI["d"] = Instance.new("UICorner", UI["a"])
UI["d"]["CornerRadius"] = UDim.new(0.2, 8)

-- // StarterGui.ScreenGui.Frame.UIToolsGradient \\ --
UI["e"] = Instance.new("UIGradient", UI["2"])
UI["e"]["Name"] = [[UIToolsGradient]]
UI["e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(63, 148, 253)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(240, 184, 193))}

-- // StarterGui.ScreenGui.ImageButton \\ --
UI["f"] = Instance.new("ImageButton", UI["1"])
UI["f"]["BorderSizePixel"] = 0
UI["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["f"]["Image"] = [[rbxassetid://93375183938212]]
UI["f"]["Size"] = UDim2.new(0, 50, 0, 50)
UI["f"]["BackgroundTransparency"] = 1
UI["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["f"]["Position"] = UDim2.new(1, -123, 1, -123)

-- // StarterGui.ScreenGui.ImageButton.AspectRatio \\ --
UI["10"] = Instance.new("UIAspectRatioConstraint", UI["f"])
UI["10"]["Name"] = [[AspectRatio]]

-- // StarterGui.ScreenGui.ImageButton.LocalScript \\ --
UI["11"] = Instance.new("LocalScript", UI["f"])


-- // StarterGui.ScreenGui.ImageButton.UICorner \\ --
UI["12"] = Instance.new("UICorner", UI["f"])
UI["12"]["CornerRadius"] = UDim.new(0.2, 8)

-- // StarterGui.ScreenGui.Frame.TextButton.LocalScript \\ --
local function SCRIPT_7()
local script = UI["7"]
	local frame = script.Parent -- Reference to the Frame
	local tweenService = game:GetService("TweenService")
	
	-- Function to create a tween for color change
	local function changeColor(color)
		local tween = tweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, true), {BackgroundColor3 = color})
		tween:Play()
	end
	
	-- Function to cycle through colors
	local function rainbowCycle()
		while true do
			for i = 0, 1, 0.01 do
				local r = math.sin(i * 2 * math.pi + 0) * 0.5 + 0.5
				local g = math.sin(i * 2 * math.pi + 2/3 * math.pi) * 0.5 + 0.5
				local b = math.sin(i * 2 * math.pi + 4/3 * math.pi) * 0.5 + 0.5
				changeColor(Color3.new(r, g, b))
				wait(0.1) -- Adjust the speed of the color change
			end
		end
	end
	
	-- Start the rainbow cycle
	rainbowCycle()
end
task.spawn(SCRIPT_7)
-- // StarterGui.ScreenGui.Frame.TextButton.LocalScript \\ --
local function SCRIPT_8()
local script = UI["8"]
	local textButton = script.Parent -- Reference to the TextButton
	local textBox = textButton.Parent.TextBox -- Reference to the TextBox
	
	-- Function to execute when the button is clicked
	local function onButtonClick()
		if textBox and textBox:IsA("TextBox") then
			local inputText = textBox.Text -- Get the text from the TextBox
	
			-- Execute the command from the TextBox
			local success, result = pcall(function()
				return loadstring(inputText)() -- Execute the input as a Lua command
			end)
	
			if not success then
				warn("Error executing command: " .. tostring(result)) -- Print error if command fails
			end
		else
			warn("TextBox not found!")
		end
	end
	
	-- Connect the button click event to the function
	textButton.MouseButton1Click:Connect(onButtonClick)
end
task.spawn(SCRIPT_8)
-- // StarterGui.ScreenGui.ImageButton.LocalScript \\ --
local function SCRIPT_11()
local script = UI["11"]
	local imageButton = script.Parent -- Reference to the ImageButton
	local frame = imageButton.Parent.Frame -- Reference to the Frame
	
	-- Function to toggle the Frame visibility
	local function toggleFrame()
		frame.Visible = not frame.Visible -- Toggle the visibility
	end
	
	-- Connect the function to the ImageButton's MouseButton1Click event
	imageButton.MouseButton1Click:Connect(toggleFrame)
end
task.spawn(SCRIPT_11)

return UI["1"], require;