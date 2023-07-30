local Converted = {
	["_UI1"] = Instance.new("ScreenGui");
	["_Frame"] = Instance.new("Frame");
	["_UICorner"] = Instance.new("UICorner");
	["_UIScale"] = Instance.new("UIScale");
	["_cframe"] = Instance.new("TextButton");
	["_title"] = Instance.new("TextLabel");
	["_position"] = Instance.new("TextButton");
	["_textbox"] = Instance.new("TextBox");
}


Converted["_UI1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_UI1"].Name = "UI1"
Converted["_UI1"].Parent = game:GetService("CoreGui")
Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(69.00000348687172, 68.00000354647636, 69.00000348687172)
Converted["_Frame"].BorderSizePixel = 0
Converted["_Frame"].Position = UDim2.new(0.394079566, 0, 0.277511954, 0)
Converted["_Frame"].Size = UDim2.new(0, 230, 0, 185)
Converted["_Frame"].Parent = Converted["_UI1"]
Converted["_Frame"].Draggable = true
Converted["_Frame"].Active = true

Converted["_UICorner"].CornerRadius = UDim.new(0, 10)
Converted["_UICorner"].Parent = Converted["_Frame"]

Converted["_UIScale"].Parent = Converted["_Frame"]

Converted["_cframe"].Font = Enum.Font.GothamBlack
Converted["_cframe"].Text = "Copy CFrame"
Converted["_cframe"].TextColor3 = Color3.fromRGB(42.000001296401024, 0, 69.00000348687172)
Converted["_cframe"].TextScaled = true
Converted["_cframe"].TextSize = 14
Converted["_cframe"].TextWrapped = true
Converted["_cframe"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_cframe"].BackgroundTransparency = 1
Converted["_cframe"].Position = UDim2.new(-0.087378636, 0, 0.729729712, 0)
Converted["_cframe"].Size = UDim2.new(0, 136, 0, 50)
Converted["_cframe"].Name = "cframe"
Converted["_cframe"].Parent = Converted["_Frame"]

Converted["_title"].Font = Enum.Font.DenkOne
Converted["_title"].Text = "CFrame & Position Tools v1.0.0"
Converted["_title"].TextColor3 = Color3.fromRGB(255, 170.0000050663948, 0)
Converted["_title"].TextSize = 20
Converted["_title"].TextWrapped = true
Converted["_title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_title"].BackgroundTransparency = 1
Converted["_title"].Position = UDim2.new(0.0145631069, 0, 0, 0)
Converted["_title"].Size = UDim2.new(0, 200, 0, 50)
Converted["_title"].Name = "title"
Converted["_title"].Parent = Converted["_Frame"]

Converted["_position"].Font = Enum.Font.GothamBlack
Converted["_position"].Text = "Copy Position"
Converted["_position"].TextColor3 = Color3.fromRGB(42.000001296401024, 0, 69.00000348687172)
Converted["_position"].TextScaled = true
Converted["_position"].TextSize = 14
Converted["_position"].TextWrapped = true
Converted["_position"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_position"].BackgroundTransparency = 1
Converted["_position"].Position = UDim2.new(0.505728154, 0, 0.729729712, 0)
Converted["_position"].Size = UDim2.new(0, 106, 0, 50)
Converted["_position"].Name = "position"
Converted["_position"].Parent = Converted["_Frame"]

Converted["_textbox"].CursorPosition = -1
Converted["_textbox"].Font = Enum.Font.GothamBlack
Converted["_textbox"].PlaceholderColor3 = Color3.fromRGB(42.000001296401024, 0, 69.00000348687172)
Converted["_textbox"].PlaceholderText = "Enter in something's path EG: game.Workspace.Part.CFrame/Position or nothing to copy your cf/pos"
Converted["_textbox"].Text = ""
Converted["_textbox"].TextColor3 = Color3.fromRGB(42.000001296401024, 42.000001296401024, 42.000001296401024)
Converted["_textbox"].TextScaled = true
Converted["_textbox"].TextSize = 14
Converted["_textbox"].TextWrapped = true
Converted["_textbox"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_textbox"].BackgroundTransparency = 1
Converted["_textbox"].Position = UDim2.new(0.0331262139, 0, 0.362162173, 0)
Converted["_textbox"].Size = UDim2.new(0, 200, 0, 50)
Converted["_textbox"].Name = "textbox"
Converted["_textbox"].Parent = Converted["_Frame"]

local textbox = Converted["_textbox"]
Converted["_cframe"].MouseButton1Click:Connect(function()
	if textbox.Text ~= "" then
		if textbox.Text:find(".") then
			local success, result = pcall(function()
				return loadstring("return " .. textbox.Text)()
			end)
			if success and typeof(result) == "CFrame" then
				local cframeToCopy = result
				setclipboard(tostring(cframeToCopy))
			end
		end
	elseif textbox.Text == "" then
		setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
	end
end)

local textbox = Converted["_textbox"]
Converted["_position"].MouseButton1Click:Connect(function()
	if textbox.Text ~= "" then
		if textbox.Text:find(".") then
			local success, result = pcall(function()
				return loadstring("return " .. textbox.Text)()
			end)
			if success and typeof(result) == "Vector3" then
				local posToCopy = result
				setclipboard(tostring(posToCopy))
			end
		end
	elseif textbox.Text == "" then
		setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
	end
end)
