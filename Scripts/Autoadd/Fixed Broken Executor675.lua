--[[

		Gui2Luaâ¢
		10zOfficial
		Version 1.0.0

]]


-- Instances

local InGameScriptExecutor = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextBox = Instance.new("TextBox")
local ExecuteButton = Instance.new("TextButton")
local ClearButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local x = Instance.new("TextButton")

-- Properties

InGameScriptExecutor.Name = "In-Game Script Executor"
InGameScriptExecutor.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Background.Name = "Background"
Background.Parent = InGameScriptExecutor
Background.Active = true
Background.BackgroundColor3 = Color3.new(0.666667, 0.333333, 1)
Background.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Background.ClipsDescendants = true
Background.Draggable = true
Background.Position = UDim2.new(0, 720, 0, 50)
Background.Size = UDim2.new(0, 320, 0, 320)

ScrollingFrame.Parent = Background
ScrollingFrame.BackgroundColor3 = Color3.new(0.666667, 0.666667, 1)
ScrollingFrame.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
ScrollingFrame.Position = UDim2.new(0, 13, 0, 35)
ScrollingFrame.Size = UDim2.new(0, 294, 0, 245)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 1000, 0)

TextBox.Parent = ScrollingFrame
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TextBox.Size = UDim2.new(0, 281, 1500, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = "Paste Code here"
TextBox.TextColor3 = Color3.new(0.533333, 0.533333, 0.262745)
TextBox.TextSize = 14
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

ExecuteButton.Name = "ExecuteButton"
ExecuteButton.Parent = Background
ExecuteButton.BackgroundColor3 = Color3.new(0.666667, 0.666667, 1)
ExecuteButton.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
ExecuteButton.Position = UDim2.new(0, 12, 0, 282)
ExecuteButton.Size = UDim2.new(0, 150, 0, 35)
ExecuteButton.Style = Enum.ButtonStyle.RobloxRoundButton
ExecuteButton.Font = Enum.Font.Cartoon
ExecuteButton.Text = "Execute"
ExecuteButton.TextSize = 18

ClearButton.Name = "ClearButton"
ClearButton.Parent = Background
ClearButton.BackgroundColor3 = Color3.new(0.666667, 0.666667, 1)
ClearButton.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
ClearButton.Position = UDim2.new(0, 159, 0, 282)
ClearButton.Size = UDim2.new(0, 150, 0, 35)
ClearButton.Style = Enum.ButtonStyle.RobloxRoundButton
ClearButton.Font = Enum.Font.Cartoon
ClearButton.Text = "Clear"
ClearButton.TextSize = 18

TextLabel.Parent = Background
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 100
TextLabel.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TextLabel.Position = UDim2.new(0, 26, 0, -6)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.Fantasy
TextLabel.Text = "In-Game Script Executor for billie"
TextLabel.TextSize = 17

x.Name = "x"
x.Parent = Background
x.BackgroundColor3 = Color3.new(0.666667, 0.333333, 1)
x.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
x.BorderSizePixel = 0
x.Position = UDim2.new(0, 299, 0, 0)
x.Size = UDim2.new(0, 20, 0, 15)
x.Font = Enum.Font.Arcade
x.Text = "x"
x.TextColor3 = Color3.new(0.603922, 0.0156863, 0.0156863)
x.TextSize = 32
x.TextYAlignment = Enum.TextYAlignment.Bottom

-- Scripts

local function QASX_fake_script() -- ExecuteButton.LocalScript 
	local script = Instance.new('LocalScript', ExecuteButton)

	local ScriptEditor = script.Parent.Parent.ScrollingFrame.TextBox
	
	script.Parent.MouseButton1Click:Connect(function()
		loadstring(ScriptEditor.Text)()
	end)
end
coroutine.wrap(QASX_fake_script)()
local function LVIW_fake_script() -- ClearButton.LocalScript 
	local script = Instance.new('LocalScript', ClearButton)

	local ScriptEditor = script.Parent.Parent.ScrollingFrame.TextBox
	
	script.Parent.MouseButton1Click:Connect(function()
		ScriptEditor.Text = ""
	end)
end
coroutine.wrap(LVIW_fake_script)()
