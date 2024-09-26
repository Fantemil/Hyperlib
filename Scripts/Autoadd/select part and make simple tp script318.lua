local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local SelectPart = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local SelectPartTextBOX = Instance.new("TextBox")
local HereScriptGenerated = Instance.new("TextBox")
local MakeTPScript = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local ClearScriptBOX = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local CopyScriptBOX = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")

-- Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0794357806, 0, 0.327543437, 0)
Frame.Size = UDim2.new(0, 491, 0, 337)

SelectPart.Name = "SelectPart"
SelectPart.Parent = Frame
SelectPart.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectPart.BorderColor3 = Color3.fromRGB(0, 0, 0)
SelectPart.BorderSizePixel = 0
SelectPart.Position = UDim2.new(0.0448065177, 0, 0.048780486, 0)
SelectPart.Size = UDim2.new(0, 123, 0, 47)
SelectPart.Font = Enum.Font.SourceSans
SelectPart.Text = "Select Part"
SelectPart.TextColor3 = Color3.fromRGB(0, 0, 0)
SelectPart.TextScaled = true
SelectPart.TextSize = 14.000
SelectPart.TextWrapped = true

UICorner.Parent = SelectPart

SelectPartTextBOX.Name = "SelectPartTextBOX"
SelectPartTextBOX.Parent = Frame
SelectPartTextBOX.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectPartTextBOX.BorderColor3 = Color3.fromRGB(0, 0, 0)
SelectPartTextBOX.BorderSizePixel = 0
SelectPartTextBOX.Position = UDim2.new(0.354378819, 0, 0.048780486, 0)
SelectPartTextBOX.Size = UDim2.new(0, 293, 0, 50)
SelectPartTextBOX.Font = Enum.Font.SourceSans
SelectPartTextBOX.Text = ""
SelectPartTextBOX.TextColor3 = Color3.fromRGB(0, 0, 0)
SelectPartTextBOX.TextSize = 14.000

HereScriptGenerated.Name = "HereScriptGenerated"
HereScriptGenerated.Parent = Frame
HereScriptGenerated.BackgroundColor3 = Color3.fromRGB(200, 192, 176)
HereScriptGenerated.BorderColor3 = Color3.fromRGB(0, 0, 0)
HereScriptGenerated.BorderSizePixel = 0
HereScriptGenerated.Position = UDim2.new(0.0468431786, 0, 0.429480314, 0)
HereScriptGenerated.Size = UDim2.new(0, 444, 0, 103)
HereScriptGenerated.Font = Enum.Font.SourceSans
HereScriptGenerated.Text = ""
HereScriptGenerated.TextColor3 = Color3.fromRGB(0, 0, 0)
HereScriptGenerated.TextSize = 14.000
HereScriptGenerated.TextXAlignment = Enum.TextXAlignment.Left
HereScriptGenerated.TextYAlignment = Enum.TextYAlignment.Top
HereScriptGenerated.TextWrapped = true
HereScriptGenerated.TextScaled = true

MakeTPScript.Name = "MakeTPScript"
MakeTPScript.Parent = Frame
MakeTPScript.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MakeTPScript.BorderColor3 = Color3.fromRGB(0, 0, 0)
MakeTPScript.BorderSizePixel = 0
MakeTPScript.Position = UDim2.new(0.0448065177, 0, 0.252604604, 0)
MakeTPScript.Size = UDim2.new(0, 445, 0, 47)
MakeTPScript.Font = Enum.Font.SourceSans
MakeTPScript.Text = "MakeTP Script"
MakeTPScript.TextColor3 = Color3.fromRGB(0, 0, 0)
MakeTPScript.TextScaled = true
MakeTPScript.TextSize = 14.000
MakeTPScript.TextWrapped = true

UICorner_2.Parent = MakeTPScript

ClearScriptBOX.Name = "ClearScriptBOX"
ClearScriptBOX.Parent = Frame
ClearScriptBOX.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClearScriptBOX.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClearScriptBOX.BorderSizePixel = 0
ClearScriptBOX.Position = UDim2.new(0.521384954, 0, 0.797248065, 0)
ClearScriptBOX.Size = UDim2.new(0, 211, 0, 47)
ClearScriptBOX.Font = Enum.Font.SourceSans
ClearScriptBOX.Text = "Clear"
ClearScriptBOX.TextColor3 = Color3.fromRGB(0, 0, 0)
ClearScriptBOX.TextScaled = true
ClearScriptBOX.TextSize = 14.000
ClearScriptBOX.TextWrapped = true

UICorner_3.Parent = ClearScriptBOX

CopyScriptBOX.Name = "CopyScriptBOX"
CopyScriptBOX.Parent = Frame
CopyScriptBOX.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CopyScriptBOX.BorderColor3 = Color3.fromRGB(0, 0, 0)
CopyScriptBOX.BorderSizePixel = 0
CopyScriptBOX.Position = UDim2.new(0.0468431786, 0, 0.797248065, 0)
CopyScriptBOX.Size = UDim2.new(0, 205, 0, 47)
CopyScriptBOX.Font = Enum.Font.SourceSans
CopyScriptBOX.Text = "Copy"
CopyScriptBOX.TextColor3 = Color3.fromRGB(0, 0, 0)
CopyScriptBOX.TextScaled = true
CopyScriptBOX.TextSize = 14.000
CopyScriptBOX.TextWrapped = true

UICorner_4.Parent = CopyScriptBOX

local selectedPart = nil

local function onPartClicked(part)
	if part and part:IsA("BasePart") then
		selectedPart = part
		SelectPartTextBOX.Text = part:GetFullName()
	end
end

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

mouse.Button1Down:Connect(function()
	local target = mouse.Target
	onPartClicked(target)
end)

local function generateTPScript(part)
	if not part then return "" end
	local position = part.Position
	return string.format([[
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(%f, %f, %f))
]], position.X, position.Y, position.Z)
end

MakeTPScript.MouseButton1Click:Connect(function()
	if selectedPart then
		local script = generateTPScript(selectedPart)
		HereScriptGenerated.Text = script
	end
end)

ClearScriptBOX.MouseButton1Click:Connect(function()
	HereScriptGenerated.Text = ""
end)

CopyScriptBOX.MouseButton1Click:Connect(function()
	if HereScriptGenerated.Text ~= "" then
		setclipboard(HereScriptGenerated.Text)
	end
end)
