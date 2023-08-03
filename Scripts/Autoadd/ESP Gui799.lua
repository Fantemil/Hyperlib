--by danielgamer9799 - on ScriptBlox.com
local ESPGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local TItle = Instance.new("TextLabel")
local CreateESP = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local RemoveESP = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local CustomizeESP = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local UIGradient_2 = Instance.new("UIGradient")
local TItle_2 = Instance.new("TextLabel")
local FillColor = Instance.new("TextLabel")
local OutlineColor = Instance.new("TextLabel")
local FILL_R = Instance.new("TextBox")
local UICorner_5 = Instance.new("UICorner")
local FILL_G = Instance.new("TextBox")
local UICorner_6 = Instance.new("UICorner")
local FILL_B = Instance.new("TextBox")
local UICorner_7 = Instance.new("UICorner")
local OUT_B = Instance.new("TextBox")
local UICorner_8 = Instance.new("UICorner")
local OUT_R = Instance.new("TextBox")
local UICorner_9 = Instance.new("UICorner")
local OUT_G = Instance.new("TextBox")
local UICorner_10 = Instance.new("UICorner")
local FILL_PREVIEW = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local out_PREVIEW = Instance.new("Frame")
local UICorner_12 = Instance.new("UICorner")
local RunService = game:GetService("RunService")
--Properties:

ESPGUI.Name = "ESPGUI"
ESPGUI.Parent = game.CoreGui
ESPGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ESPGUI.ResetOnSpawn = false
ESPGUI.IgnoreGuiInset = true

MainFrame.Name = "MainFrame"
MainFrame.Parent = ESPGUI
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.Position = UDim2.new(0.365747452, 0, 0.03125, 0)
MainFrame.Size = UDim2.new(0, 187, 0, 103)
MainFrame.Active = true
MainFrame.Draggable = true

UICorner.Parent = MainFrame

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(51, 143, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(14, 90, 255))}
UIGradient.Parent = MainFrame

TItle.Name = "TItle"
TItle.Parent = MainFrame
TItle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TItle.BackgroundTransparency = 1.000
TItle.Size = UDim2.new(0, 187, 0, 32)
TItle.Font = Enum.Font.GothamBlack
TItle.Text = "ESP GUI"
TItle.TextColor3 = Color3.fromRGB(255, 255, 255)
TItle.TextSize = 14.000

CreateESP.Name = "CreateESP"
CreateESP.Parent = MainFrame
CreateESP.BackgroundColor3 = Color3.fromRGB(90, 255, 19)
CreateESP.Position = UDim2.new(0.155080214, 0, 0.242718458, 0)
CreateESP.Size = UDim2.new(0, 128, 0, 23)
CreateESP.Font = Enum.Font.GothamBlack
CreateESP.Text = "Create ESP"
CreateESP.TextColor3 = Color3.fromRGB(255, 255, 255)
CreateESP.TextSize = 14.000

UICorner_2.Parent = CreateESP

RemoveESP.Name = "RemoveESP"
RemoveESP.Parent = MainFrame
RemoveESP.BackgroundColor3 = Color3.fromRGB(255, 92, 11)
RemoveESP.Position = UDim2.new(0.155080214, 0, 0.524271846, 0)
RemoveESP.Size = UDim2.new(0, 128, 0, 23)
RemoveESP.Font = Enum.Font.GothamBlack
RemoveESP.Text = "Remove ESP"
RemoveESP.TextColor3 = Color3.fromRGB(255, 255, 255)
RemoveESP.TextSize = 14.000

UICorner_3.Parent = RemoveESP

CustomizeESP.Name = "CustomizeESP"
CustomizeESP.Parent = ESPGUI
CustomizeESP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CustomizeESP.Position = UDim2.new(0.517416537, 0, 0.03125, 0)
CustomizeESP.Size = UDim2.new(0, 426, 0, 84)
CustomizeESP.Active = true
CustomizeESP.Draggable = true

UICorner_4.Parent = CustomizeESP

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(51, 143, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(14, 90, 255))}
UIGradient_2.Parent = CustomizeESP

TItle_2.Name = "TItle"
TItle_2.Parent = CustomizeESP
TItle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TItle_2.BackgroundTransparency = 1.000
TItle_2.Size = UDim2.new(0, 321, 0, 32)
TItle_2.Font = Enum.Font.GothamBlack
TItle_2.Text = "Customize ESP"
TItle_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TItle_2.TextSize = 14.000

FillColor.Name = "FillColor"
FillColor.Parent = CustomizeESP
FillColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FillColor.BackgroundTransparency = 1.000
FillColor.Position = UDim2.new(0, 0, 0.195121944, 0)
FillColor.Size = UDim2.new(0, 81, 0, 32)
FillColor.Font = Enum.Font.GothamBlack
FillColor.Text = "Fill Color"
FillColor.TextColor3 = Color3.fromRGB(255, 255, 255)
FillColor.TextSize = 14.000

OutlineColor.Name = "OutlineColor"
OutlineColor.Parent = CustomizeESP
OutlineColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OutlineColor.BackgroundTransparency = 1.000
OutlineColor.Position = UDim2.new(0.0267573483, 0, 0.589157462, 0)
OutlineColor.Size = UDim2.new(0, 81, 0, 32)
OutlineColor.Font = Enum.Font.GothamBlack
OutlineColor.Text = "Outline Color"
OutlineColor.TextColor3 = Color3.fromRGB(255, 255, 255)
OutlineColor.TextSize = 14.000

FILL_R.Name = "FILL_R"
FILL_R.Parent = CustomizeESP
FILL_R.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FILL_R.Position = UDim2.new(0.252336442, 0, 0.333333343, 0)
FILL_R.Size = UDim2.new(0, 79, 0, 16)
FILL_R.Font = Enum.Font.GothamBlack
FILL_R.PlaceholderText = "R"
FILL_R.Text = ""
FILL_R.TextColor3 = Color3.fromRGB(255, 255, 255)
FILL_R.TextSize = 14.000

UICorner_5.Parent = FILL_R

FILL_G.Name = "FILL_G"
FILL_G.Parent = CustomizeESP
FILL_G.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FILL_G.Position = UDim2.new(0.467428356, 0, 0.333333343, 0)
FILL_G.Size = UDim2.new(0, 79, 0, 16)
FILL_G.Font = Enum.Font.GothamBlack
FILL_G.PlaceholderText = "G"
FILL_G.Text = ""
FILL_G.TextColor3 = Color3.fromRGB(255, 255, 255)
FILL_G.TextSize = 14.000

UICorner_6.Parent = FILL_G

FILL_B.Name = "FILL_B"
FILL_B.Parent = CustomizeESP
FILL_B.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FILL_B.Position = UDim2.new(0.705080032, 0, 0.333333343, 0)
FILL_B.Size = UDim2.new(0, 79, 0, 16)
FILL_B.Font = Enum.Font.GothamBlack
FILL_B.PlaceholderText = "B"
FILL_B.Text = ""
FILL_B.TextColor3 = Color3.fromRGB(255, 255, 255)
FILL_B.TextSize = 14.000

UICorner_7.Parent = FILL_B

OUT_B.Name = "OUT_B"
OUT_B.Parent = CustomizeESP
OUT_B.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OUT_B.Position = UDim2.new(0.705080032, 0, 0.678571463, 0)
OUT_B.Size = UDim2.new(0, 79, 0, 16)
OUT_B.Font = Enum.Font.GothamBlack
OUT_B.PlaceholderText = "B"
OUT_B.Text = ""
OUT_B.TextColor3 = Color3.fromRGB(255, 255, 255)
OUT_B.TextSize = 14.000

UICorner_8.Parent = OUT_B

OUT_R.Name = "OUT_R"
OUT_R.Parent = CustomizeESP
OUT_R.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OUT_R.Position = UDim2.new(0.252336442, 0, 0.678571463, 0)
OUT_R.Size = UDim2.new(0, 79, 0, 16)
OUT_R.Font = Enum.Font.GothamBlack
OUT_R.PlaceholderText = "R"
OUT_R.Text = ""
OUT_R.TextColor3 = Color3.fromRGB(255, 255, 255)
OUT_R.TextSize = 14.000

UICorner_9.Parent = OUT_R

OUT_G.Name = "OUT_G"
OUT_G.Parent = CustomizeESP
OUT_G.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OUT_G.Position = UDim2.new(0.467428356, 0, 0.678571463, 0)
OUT_G.Size = UDim2.new(0, 79, 0, 16)
OUT_G.Font = Enum.Font.GothamBlack
OUT_G.PlaceholderText = "G"
OUT_G.Text = ""
OUT_G.TextColor3 = Color3.fromRGB(255, 255, 255)
OUT_G.TextSize = 14.000

UICorner_10.Parent = OUT_G

FILL_PREVIEW.Name = "FILL_PREVIEW"
FILL_PREVIEW.Parent = CustomizeESP
FILL_PREVIEW.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FILL_PREVIEW.Position = UDim2.new(0.917840362, 0, 0.261904776, 0)
FILL_PREVIEW.Size = UDim2.new(0, 27, 0, 27)

UICorner_11.Parent = FILL_PREVIEW

out_PREVIEW.Name = "out_PREVIEW"
out_PREVIEW.Parent = CustomizeESP
out_PREVIEW.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
out_PREVIEW.Position = UDim2.new(0.917840362, 0, 0.642857134, 0)
out_PREVIEW.Size = UDim2.new(0, 27, 0, 25)

UICorner_12.Parent = out_PREVIEW

-- Scripts:

local function CSGPST_fake_script() -- CreateESP.LocalScript 
	local script = Instance.new('LocalScript', CreateESP)

	script.Parent.MouseButton1Click:Connect(function()
		local players = game.Players:GetPlayers()
		for _, v in pairs(players) do
			local FILL_R = tonumber(script.Parent.Parent.Parent.CustomizeESP.FILL_R.Text)
			local FILL_G = tonumber(script.Parent.Parent.Parent.CustomizeESP.FILL_G.Text)
			local FILL_B = tonumber(script.Parent.Parent.Parent.CustomizeESP.FILL_B.Text)
			local OUT_R = tonumber(script.Parent.Parent.Parent.CustomizeESP.OUT_R.Text)
			local OUT_G = tonumber(script.Parent.Parent.Parent.CustomizeESP.OUT_G.Text)
			local OUT_B = tonumber(script.Parent.Parent.Parent.CustomizeESP.OUT_B.Text)	
			local esp = Instance.new("Highlight")
			esp.Name = v.Name
			esp.FillTransparency = 0.3
			esp.FillColor = Color3.fromRGB(FILL_R, FILL_G, FILL_B)
			esp.OutlineColor = Color3.fromRGB(OUT_R, OUT_G, OUT_B)
			esp.OutlineTransparency = 0
			esp.Parent = v.Character
		end
	end)
end
coroutine.wrap(CSGPST_fake_script)()
local function BELCX_fake_script() -- RemoveESP.LocalScript 
	local script = Instance.new('LocalScript', RemoveESP)

	script.Parent.MouseButton1Click:Connect(function()
		local players = game.Players:GetPlayers()
		for _, v in pairs(players) do
			local esp = v.Character:FindFirstChild(v.Name)
			if esp then
				esp:Destroy()
			else
				warn("No ESP Found - Couldn't find Any ESP In the Character!")
			end
		end
	end)
end
coroutine.wrap(BELCX_fake_script)()
local function PBDY_fake_script() -- FILL_PREVIEW.LocalScript 
	local script = Instance.new('LocalScript', FILL_PREVIEW)

	while wait() do
		local FILL_R = tonumber(script.Parent.Parent.FILL_R.Text)
		local FILL_G = tonumber(script.Parent.Parent.FILL_G.Text)
		local FILL_B = tonumber(script.Parent.Parent.FILL_B.Text)
		local OUT_R = tonumber(script.Parent.Parent.OUT_R.Text)
		local OUT_G = tonumber(script.Parent.Parent.OUT_G.Text)
		local OUT_B = tonumber(script.Parent.Parent.OUT_B.Text)	
		
		script.Parent.BackgroundColor3 = Color3.fromRGB(FILL_R, FILL_G, FILL_B)
		
	end
end
coroutine.wrap(PBDY_fake_script)()
local function JPUFZ_fake_script() -- out_PREVIEW.LocalScript 
	local script = Instance.new('LocalScript', out_PREVIEW)

	while wait() do
		local FILL_R = tonumber(script.Parent.Parent.FILL_R.Text)
		local FILL_G = tonumber(script.Parent.Parent.FILL_G.Text)
		local FILL_B = tonumber(script.Parent.Parent.FILL_B.Text)
		local OUT_R = tonumber(script.Parent.Parent.OUT_R.Text)
		local OUT_G = tonumber(script.Parent.Parent.OUT_G.Text)
		local OUT_B = tonumber(script.Parent.Parent.OUT_B.Text)	
		
		script.Parent.BackgroundColor3 = Color3.fromRGB(OUT_R, OUT_G, OUT_B)
		
	end
end
coroutine.wrap(JPUFZ_fake_script)()
