-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local TOP = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local MAIN = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local Frame_3 = Instance.new("Frame")
local Frame_4 = Instance.new("Frame")
local SCRIPTS = Instance.new("ScrollingFrame")
local script = Instance.new("TextBox")
local BUTTONS = Instance.new("Frame")
local EXE = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UICorner_5 = Instance.new("UICorner")
local CLR = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local INJ = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local EXIT = Instance.new("TextButton")
local WINDOW = Instance.new("TextButton")
local MINI = Instance.new("TextButton")
local EXE_2 = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local UICorner_9 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

TOP.Name = "TOP"
TOP.Parent = ScreenGui
TOP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TOP.BorderColor3 = Color3.fromRGB(0, 0, 0)
TOP.BorderSizePixel = 0
TOP.Position = UDim2.new(0.127135053, 0, 0.119661435, 0)
TOP.Size = UDim2.new(0, 488, 0, 33)

UICorner.Parent = TOP

MAIN.Name = "MAIN"
MAIN.Parent = TOP
MAIN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MAIN.BorderColor3 = Color3.fromRGB(0, 0, 0)
MAIN.BorderSizePixel = 0
MAIN.Position = UDim2.new(-0.000884571986, 0, -0.00117353955, 0)
MAIN.Size = UDim2.new(0, 489, 0, 377)

UICorner_2.Parent = MAIN

Frame.Parent = MAIN
Frame.BackgroundColor3 = Color3.fromRGB(232, 232, 232)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(-0.00204498973, 0, 0.0928381979, 0)
Frame.Size = UDim2.new(0, 489, 0, 342)

UICorner_3.Parent = Frame

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(232, 232, 232)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.00551017048, 0, -0.00365300756, 0)
Frame_2.Size = UDim2.new(0, 487, 0, 7)

Frame_3.Parent = Frame
Frame_3.BackgroundColor3 = Color3.fromRGB(193, 193, 193)
Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.00292769051, 0, -0.00181204814, 0)
Frame_3.Size = UDim2.new(0, 422, 0, 5)

Frame_4.Parent = Frame
Frame_4.BackgroundColor3 = Color3.fromRGB(193, 193, 193)
Frame_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(0.00551017048, 0, 0.787661612, 0)
Frame_4.Size = UDim2.new(0, 421, 0, 5)

SCRIPTS.Name = "SCRIPTS"
SCRIPTS.Parent = MAIN
SCRIPTS.Active = true
SCRIPTS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SCRIPTS.BorderColor3 = Color3.fromRGB(0, 0, 0)
SCRIPTS.BorderSizePixel = 0
SCRIPTS.Position = UDim2.new(0.00346521172, 0, 0.107135803, 0)
SCRIPTS.Size = UDim2.new(0, 391, 0, 264)
SCRIPTS.ScrollBarThickness = 5

script.Name = "script"
script.Parent = SCRIPTS
script.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
script.BorderColor3 = Color3.fromRGB(0, 0, 0)
script.BorderSizePixel = 0
script.Position = UDim2.new(-0.00954989437, 0, -0.00595855713, 0)
script.Size = UDim2.new(0, 391, 0, 264)
script.Font = Enum.Font.SourceSans
script.MultiLine = true
script.Text = ""
script.TextColor3 = Color3.fromRGB(0, 0, 0)
script.TextSize = 14.000

BUTTONS.Name = "BUTTONS"
BUTTONS.Parent = MAIN
BUTTONS.BackgroundColor3 = Color3.fromRGB(103, 214, 255)
BUTTONS.BorderColor3 = Color3.fromRGB(0, 0, 0)
BUTTONS.BorderSizePixel = 0
BUTTONS.Position = UDim2.new(0.864403069, 0, 0.104456976, 0)
BUTTONS.Size = UDim2.new(0, 59, 0, 82)

EXE.Name = "EXE"
EXE.Parent = BUTTONS
EXE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EXE.BorderColor3 = Color3.fromRGB(0, 0, 0)
EXE.BorderSizePixel = 0
EXE.Position = UDim2.new(0.010842842, 0, -0.00951031968, 0)
EXE.Size = UDim2.new(0, 56, 0, 82)
EXE.Font = Enum.Font.SourceSans
EXE.Text = "EXE"
EXE.TextColor3 = Color3.fromRGB(0, 0, 0)
EXE.TextSize = 22.000
EXE.MouseButton1Down:connect(function()
		loadstring(script.Text)()
end)

UICorner_4.Parent = EXE

UICorner_5.Parent = BUTTONS

CLR.Name = "CLR"
CLR.Parent = BUTTONS
CLR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CLR.BorderColor3 = Color3.fromRGB(0, 0, 0)
CLR.BorderSizePixel = 0
CLR.Position = UDim2.new(-0.00732525345, 0, 1.11244094, 0)
CLR.Size = UDim2.new(0, 57, 0, 82)
CLR.Font = Enum.Font.SourceSans
CLR.Text = "CLEAR"
CLR.TextColor3 = Color3.fromRGB(0, 0, 0)
CLR.TextSize = 22.000
CLR.MouseButton1Down:connect(function()
	script.Text = " "
end)

UICorner_6.Parent = CLR

INJ.Name = "INJ"
INJ.Parent = BUTTONS
INJ.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
INJ.BorderColor3 = Color3.fromRGB(0, 0, 0)
INJ.BorderSizePixel = 0
INJ.Position = UDim2.new(-0.00731904618, 0, 2.22219706, 0)
INJ.Size = UDim2.new(0, 56, 0, 82)
INJ.Font = Enum.Font.SourceSans
INJ.Text = "INJECT"
INJ.TextColor3 = Color3.fromRGB(0, 0, 0)
INJ.TextSize = 22.000

UICorner_7.Parent = INJ

EXIT.Name = "EXIT"
EXIT.Parent = BUTTONS
EXIT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EXIT.BorderColor3 = Color3.fromRGB(255, 0, 0)
EXIT.BorderSizePixel = 0
EXIT.Position = UDim2.new(0.646409452, 0, -0.43389073, 0)
EXIT.Size = UDim2.new(0, 23, 0, 25)
EXIT.Font = Enum.Font.SourceSans
EXIT.Text = "X"
EXIT.TextColor3 = Color3.fromRGB(0, 0, 0)
EXIT.TextSize = 17.000
EXIT.MouseButton1Down:connect(function()
	TOP.Visible = false
end)

WINDOW.Name = "WINDOW"
WINDOW.Parent = BUTTONS
WINDOW.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WINDOW.BorderColor3 = Color3.fromRGB(255, 0, 0)
WINDOW.BorderSizePixel = 0
WINDOW.Position = UDim2.new(0.116106436, 0, -0.43389073, 0)
WINDOW.Size = UDim2.new(0, 23, 0, 25)
WINDOW.Font = Enum.Font.SourceSans
WINDOW.Text = "â¡"
WINDOW.TextColor3 = Color3.fromRGB(115, 115, 115)
WINDOW.TextSize = 17.000

MINI.Name = "MINI"
MINI.Parent = BUTTONS
MINI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MINI.BorderColor3 = Color3.fromRGB(255, 0, 0)
MINI.BorderSizePixel = 0
MINI.Position = UDim2.new(-0.383893549, 0, -0.423212737, 0)
MINI.Size = UDim2.new(0, 23, 0, 19)
MINI.Font = Enum.Font.SourceSans
MINI.Text = "-"
MINI.TextColor3 = Color3.fromRGB(0, 0, 0)
MINI.TextSize = 43.000

EXE_2.Name = "EXE"
EXE_2.Parent = BUTTONS
EXE_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EXE_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
EXE_2.BorderSizePixel = 0
EXE_2.Position = UDim2.new(-7.04019308, 0, 3.36853838, 0)
EXE_2.Size = UDim2.new(0, 75, 0, 19)
EXE_2.Font = Enum.Font.SourceSans
EXE_2.Text = "Ligma Output"
EXE_2.TextColor3 = Color3.fromRGB(0, 0, 0)
EXE_2.TextSize = 14.000

UICorner_8.Parent = EXE_2

ImageLabel.Parent = MAIN
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0159761086, 0, 0.0124053955, 0)
ImageLabel.Size = UDim2.new(0, 22, 0, 22)
ImageLabel.Image = "rbxassetid://15571612488"

UICorner_9.Parent = ImageLabel

TextLabel.Parent = MAIN
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0734798387, 0, -0.00265251985, 0)
TextLabel.Size = UDim2.new(0, 25, 0, 32)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Ligma"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

-- Scripts:

local function QOHG_fake_script() -- TOP.LocalScript 
	local script = Instance.new('LocalScript', TOP)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(QOHG_fake_script)()
