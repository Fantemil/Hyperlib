_G.ButtonText = "Leave"
_G.Message = "You can put here anything you want, and also change the error below!"
_G.EnableError = true
_G.Error = "999"
_G.BlurSize = 24

-- Project created by scriptblox.com/u/silex
-- Please do not claim this as ur script! :)

local Blur = Instance.new("BlurEffect")
Blur.Name = "KickBlur"
Blur.Size = _G.BlurSize
Blur.Parent = game:GetService("Lighting")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KickMessage"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local BackgroundFrame = Instance.new("Frame")
BackgroundFrame.BackgroundColor3 = Color3.fromRGB(57, 59, 61)
BackgroundFrame.Size = UDim2.new(0.21, 0, 0.22, 0)
BackgroundFrame.Position = UDim2.new(0.39, 0, 0.38, 0)
BackgroundFrame.BorderColor3 = Color3.fromRGB(57, 59, 61)
BackgroundFrame.Parent = ScreenGui

local Bar = Instance.new("Frame")
Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bar.BorderSizePixel = 0
Bar.Size = UDim2.new(0.883, 0, 0, -1)
Bar.Position = UDim2.new(0.056, 0, 0.213, 0)
Bar.Parent = BackgroundFrame

local Button = Instance.new("TextButton")
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.Size = UDim2.new(0.883, 0, 0.136, 0)
Button.Position = UDim2.new(0.056, 0, 0.797, 0)
Button.Text = _G.ButtonText
Button.TextSize = 19
Button.Font = Enum.Font.SourceSans
Button.Parent = BackgroundFrame

local ButtonUICorner = Instance.new("UICorner")
ButtonUICorner.CornerRadius = UDim.new(0, 8)
ButtonUICorner.Parent = Button

local Title = Instance.new("TextLabel")
Title.BackgroundTransparency = 1
Title.TextScaled = true
Title.Text = "Disconnected"
Title.Parent = BackgroundFrame
Title.Position = UDim2.new(0.295, 0, 0.032, 0)
Title.Size = UDim2.new(0.41, 0, 0.141, 0)
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.FontFace = Font.new("rbxassetid://12187365559", Enum.FontWeight.Bold)

local Message = Instance.new("TextLabel")
if _G.EnableError == false then
	Message.BackgroundTransparency = 1
	Message.TextSize = 19
	Message.Text = _G.Message
	Message.TextWrapped = true
	Message.Position = UDim2.new(0.104, 0, 0.269, 0)
	Message.Size = UDim2.new(0.786, 0, 0.485, 0)
	Message.TextColor3 = Color3.fromRGB(179, 181, 181)
	Message.Font = Enum.Font.SourceSans
	Message.Parent = BackgroundFrame
else
	Message.BackgroundTransparency = 1
	Message.TextScaled = true
	Message.Text = _G.Message
	Message.Position = UDim2.new(0.099, 0, 0.378, 0)
	Message.Size = UDim2.new(0.796, 0, 0.171, 0)
	Message.TextColor3 = Color3.fromRGB(179, 181, 181)
	Message.Font = Enum.Font.SourceSans
	Message.Parent = BackgroundFrame
end

if _G.EnableError then
	local ErrorCode = Instance.new("TextLabel")
	ErrorCode.BackgroundTransparency = 1
	ErrorCode.TextScaled = true
	ErrorCode.Text = "(Error Code: " .. _G.Error .. ")"
	ErrorCode.Position = UDim2.new(0.24, 0, 1, 0)
	ErrorCode.Size = UDim2.new(0.523, 0, 0.476, 0)
	ErrorCode.TextColor3 = Color3.fromRGB(179, 181, 181)
	ErrorCode.Font = Enum.Font.SourceSans
	ErrorCode.Parent = Message
end

game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true -- this was requested by someone in the comments