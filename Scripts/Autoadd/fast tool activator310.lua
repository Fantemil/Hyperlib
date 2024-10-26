local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local TextBox = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.247456059, 0, 0.518250704, 0)
Frame.Size = UDim2.new(0, 242, 0, 109)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(65, 65, 65)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.15), NumberSequenceKeypoint.new(1.00, 0.15)}
UIGradient.Parent = Frame

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 0.500
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.161157027, 0, 0.0733944923, 0)
TextBox.Size = UDim2.new(0, 163, 0, 37)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.SourceSans
TextBox.MultiLine = true
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

UICorner.Parent = TextBox

UICorner_2.Parent = Frame

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0991735533, 0, 0.550458729, 0)
TextButton.Size = UDim2.new(0, 195, 0, 33)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Activate"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UICorner_3.Parent = TextButton

ImageLabel.Parent = TextButton
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.830769241, 0, 0, 0)
ImageLabel.Size = UDim2.new(0, 33, 0, 33)
ImageLabel.Image = "http://www.roblox.com/asset/?id=14033160714"

local function OQTYIS_fake_script() -- UIGradient.LocalScript 
	local script = Instance.new('LocalScript', UIGradient)

	script.Parent.Parent.Draggable = true
	
	local RunService = game:GetService("RunService")
	local ROTATE_SPEED = 22.5
	local uiGradient = script.Parent
	
	local function onRenderStep(deltaTime)
		local currentRotation = uiGradient.Rotation
		uiGradient.Rotation = (currentRotation + ROTATE_SPEED * deltaTime) % 360
	end
	
	RunService.RenderStepped:Connect(onRenderStep)
end
coroutine.wrap(OQTYIS_fake_script)()
local function EBGEJIH_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local button = script.Parent
	local TextBox = script.Parent.Parent.TextBox
	local lp = game.Players.LocalPlayer
	local tool

	local function findItem(str)
		local pt = nil
		for i, v in pairs(lp.Backpack:GetChildren()) do
            		if v.Name:lower():find(str:lower()) then
                		pt = v
                		break
            		end
        	end
		return pt
	end
	
	button.MouseButton1Click:Connect(function()
		tool = findItem(TextBox.Text)
		tool.Parent = lp.Character
		tool:Activate()
		tool.Parent = lp.Backpack
	end)
end
coroutine.wrap(EBGEJIH_fake_script)()