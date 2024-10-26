local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local List = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local TextButton_3 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local TextButton_4 = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local TextButton_5 = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local Remotes = Instance.new("Folder")
local ScriptTab = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local ImageButton = Instance.new("ImageButton")
local UICorner_10 = Instance.new("UICorner")
local ImageButton_2 = Instance.new("ImageButton")
local UICorner_11 = Instance.new("UICorner")
local ImageButton_3 = Instance.new("ImageButton")
local UICorner_12 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
Main.BackgroundTransparency = 0.070
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.135135129, 0, 0.0814535543, 0)
Main.Size = UDim2.new(0, 1026, 0, 539)

UICorner.Parent = Main

TextBox.Parent = Main
TextBox.BackgroundColor3 = Color3.fromRGB(31, 58, 138)
TextBox.BackgroundTransparency = 0.650
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.0263157897, 0, 0.119995542, 0)
TextBox.Size = UDim2.new(0, 748, 0, 377)
TextBox.Font = Enum.Font.SourceSansLight
TextBox.Text = "Welcome To Lunar Executor"
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 45.000

UICorner_2.Parent = TextBox

List.Name = "List"
List.Parent = Main
List.BackgroundColor3 = Color3.fromRGB(31, 58, 138)
List.BackgroundTransparency = 0.650
List.BorderColor3 = Color3.fromRGB(0, 0, 0)
List.BorderSizePixel = 0
List.Position = UDim2.new(0.776803136, 0, 0.119995542, 0)
List.Size = UDim2.new(0, 209, 0, 376)

UICorner_3.Parent = List

TextButton.Parent = List
TextButton.BackgroundColor3 = Color3.fromRGB(31, 58, 138)
TextButton.BackgroundTransparency = 0.250
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.1291866, 0, 0.0428015254, 0)
TextButton.Size = UDim2.new(0, 155, 0, 37)
TextButton.Font = Enum.Font.SourceSansLight
TextButton.Text = "Infinite Yield"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 21.000
TextButton.TextWrapped = true

UICorner_4.Parent = TextButton

TextButton_2.Parent = List
TextButton_2.BackgroundColor3 = Color3.fromRGB(31, 58, 138)
TextButton_2.BackgroundTransparency = 0.250
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.1291866, 0, 0.399035573, 0)
TextButton_2.Size = UDim2.new(0, 155, 0, 37)
TextButton_2.Font = Enum.Font.SourceSansLight
TextButton_2.Text = "Ice Hub"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 21.000
TextButton_2.TextWrapped = true

UICorner_5.Parent = TextButton_2

TextButton_3.Parent = List
TextButton_3.BackgroundColor3 = Color3.fromRGB(31, 58, 138)
TextButton_3.BackgroundTransparency = 0.250
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.1291866, 0, 0.220918566, 0)
TextButton_3.Size = UDim2.new(0, 155, 0, 37)
TextButton_3.Font = Enum.Font.SourceSansLight
TextButton_3.Text = "Dex"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextSize = 21.000
TextButton_3.TextWrapped = true

UICorner_6.Parent = TextButton_3

TextButton_4.Parent = List
TextButton_4.BackgroundColor3 = Color3.fromRGB(31, 58, 138)
TextButton_4.BackgroundTransparency = 0.250
TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.1291866, 0, 0.74763608, 0)
TextButton_4.Size = UDim2.new(0, 155, 0, 37)
TextButton_4.Font = Enum.Font.SourceSansLight
TextButton_4.Text = "Tiger Admin"
TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.TextSize = 21.000
TextButton_4.TextWrapped = true

UICorner_7.Parent = TextButton_4

TextButton_5.Parent = List
TextButton_5.BackgroundColor3 = Color3.fromRGB(31, 58, 138)
TextButton_5.BackgroundTransparency = 0.250
TextButton_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.BorderSizePixel = 0
TextButton_5.Position = UDim2.new(0.1291866, 0, 0.582241714, 0)
TextButton_5.Size = UDim2.new(0, 155, 0, 37)
TextButton_5.Font = Enum.Font.SourceSansLight
TextButton_5.Text = "ESP"
TextButton_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_5.TextSize = 21.000
TextButton_5.TextWrapped = true

UICorner_8.Parent = TextButton_5

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, 0.0145719489, 0)
TextLabel.Size = UDim2.new(0, 171, 0, 18)
TextLabel.Font = Enum.Font.SourceSansLight
TextLabel.Text = "Lunar Executor"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 17.000

ImageLabel.Parent = Main
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0106685702, 0, 0.00782008749, 0)
ImageLabel.Size = UDim2.new(0, 27, 0, 27)
ImageLabel.Image = "rbxassetid://17523113449"

Remotes.Name = "Remotes"
Remotes.Parent = Main

ScriptTab.Name = "Script Tab"
ScriptTab.Parent = Main
ScriptTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptTab.BackgroundTransparency = 1.000
ScriptTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptTab.BorderSizePixel = 0
ScriptTab.Position = UDim2.new(0.0263157897, 0, 0.0743700042, 0)
ScriptTab.Size = UDim2.new(0, 101, 0, 20)
ScriptTab.Font = Enum.Font.SourceSansLight
ScriptTab.Text = "Script #1   +"
ScriptTab.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptTab.TextScaled = true
ScriptTab.TextSize = 14.000
ScriptTab.TextWrapped = true

UICorner_9.Parent = ScriptTab

ImageButton.Parent = Main
ImageButton.BackgroundColor3 = Color3.fromRGB(31, 58, 138)
ImageButton.BackgroundTransparency = 0.650
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.115409866, 0, 0.85464108, 0)
ImageButton.Size = UDim2.new(0, 66, 0, 63)
ImageButton.Image = "http://www.roblox.com/asset/?id=17523697366"

UICorner_10.Parent = ImageButton

ImageButton_2.Parent = Main
ImageButton_2.BackgroundColor3 = Color3.fromRGB(31, 58, 138)
ImageButton_2.BackgroundTransparency = 0.650
ImageButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton_2.BorderSizePixel = 0
ImageButton_2.Position = UDim2.new(0.0263157897, 0, 0.85464108, 0)
ImageButton_2.Size = UDim2.new(0, 66, 0, 63)
ImageButton_2.Image = "http://www.roblox.com/asset/?id=17523772701"

UICorner_11.Parent = ImageButton_2

ImageButton_3.Parent = Main
ImageButton_3.BackgroundColor3 = Color3.fromRGB(31, 58, 138)
ImageButton_3.BackgroundTransparency = 0.650
ImageButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton_3.BorderSizePixel = 0
ImageButton_3.Position = UDim2.new(0.205160573, 0, 0.85464108, 0)
ImageButton_3.Size = UDim2.new(0, 66, 0, 63)
ImageButton_3.Image = "http://www.roblox.com/asset/?id=17523785077"

UICorner_12.Parent = ImageButton_3

-- Scripts:

local function EZLFKQZ_fake_script() -- TextButton.Script 
	local script = Instance.new('Script', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		wait(0.1)
		require(7634392335)(plr.name)
	end)
	
end
coroutine.wrap(EZLFKQZ_fake_script)()
local function QQQXHY_fake_script() -- Main.Script 
	local script = Instance.new('Script', Main)

	script.Parent.Active = true
	script.Parent.Draggable = true
end
coroutine.wrap(QQQXHY_fake_script)()
local function CVPJUW_fake_script() -- ImageButton.Client 
	local script = Instance.new('LocalScript', ImageButton)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.TextBox.Text = ""
	end)
end
coroutine.wrap(CVPJUW_fake_script)()
local function XSEVT_fake_script() -- ImageButton_2.Client 
	local script = Instance.new('LocalScript', ImageButton_2)

	local remotes = script.Parent.Parent.Remotes
	
	script.Parent.MouseButton1Click:Connect(function()
		local textbox = script.Parent.Parent.TextBox
		remotes.EXecuteServer:FireServer(textbox.Text)
	end)
end
coroutine.wrap(XSEVT_fake_script)()