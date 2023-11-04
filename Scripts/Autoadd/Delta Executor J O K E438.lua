local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

wait(1)
Notification:Notify(
    {Title = "Note", Description = "This executor is a joke, its a level 4 please understand :)"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)

local ScreenGui = Instance.new("ScreenGui")
local Executor = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TopBar = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Down = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local EditorScroller = Instance.new("ScrollingFrame")
local Editor = Instance.new("TextBox")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local ScriptTab = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local Execute = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local Clear = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local Save = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Executor.Name = "Executor"
Executor.Parent = ScreenGui
Executor.BackgroundColor3 = Color3.fromRGB(12, 4, 20)
Executor.BackgroundTransparency = 0.120
Executor.BorderColor3 = Color3.fromRGB(27, 42, 53)
Executor.Position = UDim2.new(0.307999998, 0, 1.26199996, 0)
Executor.Size = UDim2.new(0, 481, 0, 287)

UICorner.Parent = Executor

TopBar.Name = "TopBar"
TopBar.Parent = Executor
TopBar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TopBar.BackgroundTransparency = 0.600
TopBar.Size = UDim2.new(0, 481, 0, 35)
TopBar.Font = Enum.Font.SourceSansItalic
TopBar.Text = "Delta"
TopBar.TextColor3 = Color3.fromRGB(255, 255, 255)
TopBar.TextSize = 25.000

UICorner_2.Parent = TopBar

UIAspectRatioConstraint.Parent = TopBar
UIAspectRatioConstraint.AspectRatio = 13.743

Down.Name = "Down"
Down.Parent = Executor
Down.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Down.BackgroundTransparency = 0.700
Down.Position = UDim2.new(0, 0, 0, 281)
Down.Size = UDim2.new(0, 480, 0, 6)

UICorner_3.Parent = Down

UIAspectRatioConstraint_2.Parent = Down
UIAspectRatioConstraint_2.AspectRatio = 80.000

EditorScroller.Name = "EditorScroller"
EditorScroller.Parent = Executor
EditorScroller.Active = true
EditorScroller.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EditorScroller.BackgroundTransparency = 0.600
EditorScroller.BorderSizePixel = 0
EditorScroller.Position = UDim2.new(0, 9, 0, 47)
EditorScroller.Size = UDim2.new(0, 367, 0, 191)
EditorScroller.ScrollBarThickness = 5
EditorScroller.AutomaticCanvasSize = "XY"

Editor.Name = "Editor"
Editor.Parent = EditorScroller
Editor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Editor.BackgroundTransparency = 1.000
Editor.Size = UDim2.new(0, 366, 0, 191)
Editor.ClearTextOnFocus = false
Editor.Font = Enum.Font.SourceSans
Editor.MultiLine = true
Editor.Text = ""
Editor.TextColor3 = Color3.fromRGB(255, 255, 255)
Editor.TextSize = 20.000
Editor.TextXAlignment = Enum.TextXAlignment.Left
Editor.TextYAlignment = Enum.TextYAlignment.Top
Editor.AutomaticSize = "XY"

UIAspectRatioConstraint_3.Parent = Editor
UIAspectRatioConstraint_3.AspectRatio = 1.916

UIAspectRatioConstraint_4.Parent = EditorScroller
UIAspectRatioConstraint_4.AspectRatio = 1.921

ScriptTab.Name = "ScriptTab"
ScriptTab.Parent = Executor
ScriptTab.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScriptTab.BackgroundTransparency = 0.600
ScriptTab.Position = UDim2.new(0, 386, 0, 46)
ScriptTab.Size = UDim2.new(0, 84, 0, 192)

UICorner_4.Parent = ScriptTab

UIAspectRatioConstraint_5.Parent = ScriptTab
UIAspectRatioConstraint_5.AspectRatio = 0.438

Execute.Name = "Execute"
Execute.Parent = Executor
Execute.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Execute.BackgroundTransparency = 0.600
Execute.Position = UDim2.new(0, 70, 0, 248)
Execute.Size = UDim2.new(0, 102, 0, 25)
Execute.Font = Enum.Font.SourceSans
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute.TextSize = 20.000

UICorner_5.Parent = Execute

UIAspectRatioConstraint_6.Parent = Execute
UIAspectRatioConstraint_6.AspectRatio = 4.080

Clear.Name = "Clear"
Clear.Parent = Executor
Clear.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Clear.BackgroundTransparency = 0.600
Clear.Position = UDim2.new(0, 182, 0, 248)
Clear.Size = UDim2.new(0, 102, 0, 25)
Clear.Font = Enum.Font.SourceSans
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
Clear.TextSize = 20.000

UICorner_6.Parent = Clear

UIAspectRatioConstraint_7.Parent = Clear
UIAspectRatioConstraint_7.AspectRatio = 4.080

Save.Name = "Save"
Save.Parent = Executor
Save.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Save.BackgroundTransparency = 0.600
Save.Position = UDim2.new(0, 294, 0, 248)
Save.Size = UDim2.new(0, 102, 0, 25)
Save.Font = Enum.Font.SourceSans
Save.Text = "Save"
Save.TextColor3 = Color3.fromRGB(255, 255, 255)
Save.TextSize = 20.000

UICorner_7.Parent = Save

UIAspectRatioConstraint_8.Parent = Save
UIAspectRatioConstraint_8.AspectRatio = 4.080

UIAspectRatioConstraint_9.Parent = Executor
UIAspectRatioConstraint_9.AspectRatio = 1.676

-- Scripts:

local function QDVHE_fake_script() -- Execute.LocalScript 
	local script = Instance.new('LocalScript', Execute)

	local execute = script.Parent
	Editor = script.Parent.Parent.EditorScroller.Editor

	execute.MouseButton1Click:Connect(
		function()
			assert(loadstring(Editor.Text))()
		end
	)

end
coroutine.wrap(QDVHE_fake_script)()
local function MLYQ_fake_script() -- Clear.LocalScript 
	local script = Instance.new('LocalScript', Clear)

	Clear = script.Parent
	Clear.MouseButton1Click:Connect(function()
		script.Parent.Parent.EditorScroller.Editor.Text = ""
	end)
end
coroutine.wrap(MLYQ_fake_script)()
local function ORCKN_fake_script() -- Executor.LocalScript 
	local script = Instance.new('LocalScript', Executor)

	script.Parent.Active = true
	script.Parent.Draggable = true
	script.Parent.Parent.ResetOnSpawn = false
end
coroutine.wrap(ORCKN_fake_script)()
local function JPWI_fake_script() -- Executor.LocalScript 
	local script = Instance.new('LocalScript', Executor)

	script.Parent:TweenPosition(UDim2.new(0.308, 0,0.262, 0), "Out", "Quint",1,true)
end
coroutine.wrap(JPWI_fake_script)()