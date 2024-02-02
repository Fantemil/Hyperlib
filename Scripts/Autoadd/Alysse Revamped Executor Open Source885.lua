--The following section was auto-generated because this script isn't verified. If you have full trust in this script, you may pay no attention to it and remove it. Otherwise, it's best to to keep it in for additional protection
if not game:IsLoaded() then game.Loaded:Wait() end
if identifyexecutor()~="Codex" then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/MainProd"))()
else
  loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/CodexTest"))()
end
-- END OF AUTO-GENERATED CONTENTS. THE SCRIPT BEGINS HERE:
-- END OF AUTO-GENERATED CONTENTS. THE SCRIPT BEGINS HERE:
-- END OF AUTO-GENERATED CONTENTS. THE SCRIPT BEGINS HERE:
-- END OF AUTO-GENERATED CONTENTS. THE SCRIPT BEGINS HERE:
local Alysse = Instance.new("ScreenGui")
local AlysseMain = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local EditorFrm = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local EditorBTN = Instance.new("TextButton")
local ScriptsFRM = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local ScriptsBTN = Instance.new("TextButton")
local ExecutorFrame = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local ExecutorBox = Instance.new("TextBox")
local _2 = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local Delete = Instance.new("ImageButton")
local Run = Instance.new("ImageButton")
local Tag = Instance.new("TextLabel")
local _2_2 = Instance.new("ImageButton")
local UICorner_6 = Instance.new("UICorner")
local ScriptTab = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local Fly = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local Inf = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Dex = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local ComingSoon = Instance.new("TextLabel")
local _1 = Instance.new("ImageButton")
local UICorner_11 = Instance.new("UICorner")

Alysse.Name = "Alysse"
Alysse.Parent = gethui()
Alysse.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

AlysseMain.Name = "AlysseMain"
AlysseMain.Parent = Alysse
AlysseMain.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
AlysseMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
AlysseMain.BorderSizePixel = 0
AlysseMain.Position = UDim2.new(0.195756361, 0, 0.172839507, 0)
AlysseMain.Size = UDim2.new(0, 544, 0, 341)

UICorner.Parent = AlysseMain

EditorFrm.Name = "EditorFrm"
EditorFrm.Parent = AlysseMain
EditorFrm.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
EditorFrm.BorderColor3 = Color3.fromRGB(0, 0, 0)
EditorFrm.BorderSizePixel = 0
EditorFrm.Position = UDim2.new(0.0226556547, 0, 0.111675002, 0)
EditorFrm.Size = UDim2.new(0, 119, 0, 30)

UICorner_2.Parent = EditorFrm

EditorBTN.Name = "EditorBTN"
EditorBTN.Parent = EditorFrm
EditorBTN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EditorBTN.BackgroundTransparency = 1.000
EditorBTN.BorderColor3 = Color3.fromRGB(0, 0, 0)
EditorBTN.BorderSizePixel = 0
EditorBTN.Position = UDim2.new(0, 0, -1.01725266e-06, 0)
EditorBTN.Size = UDim2.new(0, 119, 0, 30)
EditorBTN.Font = Enum.Font.Cartoon
EditorBTN.Text = "Editor"
EditorBTN.TextColor3 = Color3.fromRGB(255, 255, 255)
EditorBTN.TextSize = 20.000
EditorBTN.MouseButton1Down:connect(function()
	ScriptTab.Visible = false
	ExecutorFrame.Visible = true
end)

ScriptsFRM.Name = "ScriptsFRM"
ScriptsFRM.Parent = AlysseMain
ScriptsFRM.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
ScriptsFRM.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptsFRM.BorderSizePixel = 0
ScriptsFRM.Position = UDim2.new(0.306818187, 0, 0.111675128, 0)
ScriptsFRM.Size = UDim2.new(0, 119, 0, 30)

UICorner_3.Parent = ScriptsFRM

ScriptsBTN.Name = "ScriptsBTN"
ScriptsBTN.Parent = ScriptsFRM
ScriptsBTN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptsBTN.BackgroundTransparency = 1.000
ScriptsBTN.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptsBTN.BorderSizePixel = 0
ScriptsBTN.Size = UDim2.new(0, 119, 0, 30)
ScriptsBTN.Font = Enum.Font.Cartoon
ScriptsBTN.Text = "Scripts"
ScriptsBTN.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptsBTN.TextSize = 20.000
ScriptsBTN.MouseButton1Down:connect(function()
	ScriptTab.Visible = true
	ExecutorFrame.Visible = false
end)

ExecutorFrame.Name = "ExecutorFrame"
ExecutorFrame.Parent = AlysseMain
ExecutorFrame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
ExecutorFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExecutorFrame.BorderSizePixel = 0
ExecutorFrame.Position = UDim2.new(0.0113637587, 0, 0.236040577, 0)
ExecutorFrame.Size = UDim2.new(0, 535, 0, 246)

UICorner_4.Parent = ExecutorFrame

ExecutorBox.Name = "ExecutorBox"
ExecutorBox.Parent = ExecutorFrame
ExecutorBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExecutorBox.BackgroundTransparency = 1.000
ExecutorBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExecutorBox.BorderSizePixel = 0
ExecutorBox.Position = UDim2.new(0.0132890074, 0, 0.0317460336, 0)
ExecutorBox.Size = UDim2.new(0, 527, 0, 238)
ExecutorBox.Font = Enum.Font.SourceSans
ExecutorBox.MultiLine = true
ExecutorBox.Text = "print(\"Alysse REVAMPED\")"
ExecutorBox.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecutorBox.TextSize = 14.000
ExecutorBox.ClearTextOnFocus = false
ExecutorBox.TextWrapped = true
ExecutorBox.TextXAlignment = Enum.TextXAlignment.Left
ExecutorBox.TextYAlignment = Enum.TextYAlignment.Top

_2.Name = "2"
_2.Parent = ExecutorFrame
_2.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
_2.BorderSizePixel = 0
_2.Position = UDim2.new(0.62956816, 0, -0.202898532, 0)
_2.Size = UDim2.new(0, 118, 0, 37)

UICorner_5.Parent = _2

Delete.Name = "Delete"
Delete.Parent = _2
Delete.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Delete.BackgroundTransparency = 1.000
Delete.BorderColor3 = Color3.fromRGB(0, 0, 0)
Delete.BorderSizePixel = 0
Delete.Position = UDim2.new(0.573767722, 0, 0, 0)
Delete.Size = UDim2.new(0, 41, 0, 37)
Delete.Image = "rbxassetid://15734030445"
Delete.ImageColor3 = Color3.fromRGB(0, 0, 0)
Delete.MouseButton1Down:connect(function()
	ExecutorBox.Text = ""
end)

Run.Name = "Run"
Run.Parent = _2
Run.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Run.BackgroundTransparency = 1.000
Run.BorderColor3 = Color3.fromRGB(0, 0, 0)
Run.BorderSizePixel = 0
Run.Position = UDim2.new(0.118667863, 0, 0, 0)
Run.Size = UDim2.new(0, 40, 0, 37)
Run.Image = "rbxassetid://15734240277"
Run.ImageColor3 = Color3.fromRGB(0, 0, 0)
Run.MouseButton1Down:connect(function()
	schedulescript(ExecutorBox.Text)
end)

Tag.Name = "Tag"
Tag.Parent = AlysseMain
Tag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tag.BackgroundTransparency = 1.000
Tag.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tag.BorderSizePixel = 0
Tag.Position = UDim2.new(0.0227272734, 0, 0.017766498, 0)
Tag.Size = UDim2.new(0, 182, 0, 26)
Tag.Font = Enum.Font.SourceSansBold
Tag.Text = "Alysse REVAMPED"
Tag.TextColor3 = Color3.fromRGB(255, 255, 255)
Tag.TextSize = 30.000

_2_2.Name = "2"
_2_2.Parent = AlysseMain
_2_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_2_2.BackgroundTransparency = 1.000
_2_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
_2_2.BorderSizePixel = 0
_2_2.Position = UDim2.new(0.913865507, 0, 0.0177665111, 0)
_2_2.Size = UDim2.new(0, 34, 0, 31)
_2_2.Image = "rbxassetid://15421111228"
_2_2.MouseButton1Down:connect(function()
	AlysseMain.Visible = false
	_1.Visible = true
end)

UICorner_6.Parent = _2_2

ScriptTab.Name = "ScriptTab"
ScriptTab.Parent = AlysseMain
ScriptTab.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
ScriptTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptTab.BorderSizePixel = 0
ScriptTab.Position = UDim2.new(0.0113637587, 0, 0.236040577, 0)
ScriptTab.Size = UDim2.new(0, 535, 0, 246)
ScriptTab.Visible = false

UICorner_7.Parent = ScriptTab

Fly.Name = "Fly"
Fly.Parent = ScriptTab
Fly.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Fly.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fly.BorderSizePixel = 0
Fly.Position = UDim2.new(0.0261682235, 0, 0.0365853645, 0)
Fly.Size = UDim2.new(0, 146, 0, 43)
Fly.Font = Enum.Font.SourceSans
Fly.Text = "Infinite Yield"
Fly.TextColor3 = Color3.fromRGB(255, 255, 255)
Fly.TextSize = 25.000
Fly.MouseButton1Down:connect(function()
	local raw = "https://raw.githubusercontent.com/NathTheDev/AlysseAndroid/main/AlysseInfiniteYield.lua"
local source = game:HttpGet(raw)

loadstring(source)()
end)

UICorner_8.Parent = Fly

Inf.Name = "Inf"
Inf.Parent = ScriptTab
Inf.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Inf.BorderColor3 = Color3.fromRGB(0, 0, 0)
Inf.BorderSizePixel = 0
Inf.Position = UDim2.new(0.0261682235, 0, 0.243902445, 0)
Inf.Size = UDim2.new(0, 146, 0, 43)
Inf.Font = Enum.Font.SourceSans
Inf.Text = "UNC Checker"
Inf.TextColor3 = Color3.fromRGB(255, 255, 255)
Inf.TextSize = 20.000
Inf.TextWrapped = true
Inf.MouseButton1Down:connect(function()
local unc = "https://raw.githubusercontent.com/NathTheDev/AlysseAndroid/main/AlysseUI.lua"
local raw = game:HttpGet(unc)

loadstring(raw)()
end)

UICorner_9.Parent = Inf

Dex.Name = "Dex"
Dex.Parent = ScriptTab
Dex.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Dex.BorderColor3 = Color3.fromRGB(0, 0, 0)
Dex.BorderSizePixel = 0
Dex.Position = UDim2.new(0.0261682235, 0, 0.455284566, 0)
Dex.Size = UDim2.new(0, 146, 0, 43)
Dex.Font = Enum.Font.SourceSans
Dex.Text = "All Tycoons V3"
Dex.TextColor3 = Color3.fromRGB(255, 255, 255)
Dex.TextSize = 20.000
Dex.TextWrapped = true
Dex.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/XaZ6Ly0f"))()
end)

UICorner_10.Parent = Dex

ComingSoon.Name = "ComingSoon"
ComingSoon.Parent = ScriptTab
ComingSoon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ComingSoon.BackgroundTransparency = 1.000
ComingSoon.BorderColor3 = Color3.fromRGB(0, 0, 0)
ComingSoon.BorderSizePixel = 0
ComingSoon.Position = UDim2.new(0.351401865, 0, 0.203252032, 0)
ComingSoon.Size = UDim2.new(0, 323, 0, 146)
ComingSoon.Font = Enum.Font.SourceSansBold
ComingSoon.Text = "More Coming Soon!"
ComingSoon.TextColor3 = Color3.fromRGB(255, 255, 255)
ComingSoon.TextScaled = true
ComingSoon.TextSize = 14.000
ComingSoon.TextWrapped = true

_1.Name = "1"
_1.Parent = Alysse
_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
_1.BorderSizePixel = 0
_1.Position = UDim2.new(0.444900751, 0, 0.01728395, 0)
_1.Size = UDim2.new(0, 48, 0, 47)
_1.Visible = false
_1.Image = "rbxassetid://14334029762"
_1.MouseButton1Down:connect(function()
	AlysseMain.Visible = true
	_1.Visible = false
end)

UICorner_11.Parent = _1

local function ECSEFHB_fake_script()
	local script = Instance.new('LocalScript', Alysse)

	frame = script.Parent.AlysseMain
	frame.Draggable = true
	frame.Selectable = true
	frame.Active = true
end
coroutine.wrap(ECSEFHB_fake_script)() 