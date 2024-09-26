local playerService = game:GetService("Players")
local localPlayer = playerService.LocalPlayer
local marketplaceService = game:GetService("MarketplaceService")
local placeId = game.PlaceId
local productInfo = marketplaceService:GetProductInfo(placeId)

local creatorName = productInfo.Creator.Name
local gameName = productInfo.Name
local createdTime = string.sub(productInfo.Created, 1, 10)
local updatedTime = string.sub(productInfo.Updated, 1, 10)

local screenGui = Instance.new("ScreenGui", localPlayer:WaitForChild("PlayerGui"))
screenGui.Name = "CreatorInfoGUI"

local frame = Instance.new("Frame", screenGui)
frame.Position = UDim2.new(0.5, -100, 0.5, -100)
frame.Size = UDim2.new(0, 200, 0, 150)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
frame.BorderSizePixel = 0
frame.BackgroundTransparency = 0.2

local UICorner = Instance.new("UICorner", frame)
UICorner.CornerRadius = UDim.new(0, 15)

local function createLabel(text, position)
    local label = Instance.new("TextLabel", frame)
    label.Size = UDim2.new(1, 0, 0, 20)
    label.Position = position
    label.Text = text
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.BackgroundTransparency = 1
    label.Font = Enum.Font.Gotham
    label.TextSize = 16
    return label
end

createLabel("Game: " .. gameName, UDim2.new(0, 0, 0, 10))
createLabel("Creator: " .. creatorName, UDim2.new(0, 0, 0, 40))
createLabel("Created: " .. createdTime, UDim2.new(0, 0, 0, 70))
createLabel("Updated: " .. updatedTime, UDim2.new(0, 0, 0, 100))

local placeIdLabel = Instance.new("TextLabel", frame)
placeIdLabel.Size = UDim2.new(0.7, 0, 0, 20)
placeIdLabel.Position = UDim2.new(0, 0, 0, 130)
placeIdLabel.Text = "Place ID: " .. tostring(placeId)
placeIdLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
placeIdLabel.BackgroundTransparency = 1
placeIdLabel.Font = Enum.Font.Gotham
placeIdLabel.TextSize = 16

local copyButton = Instance.new("TextButton", frame)
copyButton.Size = UDim2.new(0.3, 0, 0, 20)
copyButton.Position = UDim2.new(0.7, 0, 0, 130)
copyButton.Text = "Copy"
copyButton.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
copyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
copyButton.Font = Enum.Font.Gotham
copyButton.TextSize = 16

local buttonCorner = Instance.new("UICorner", copyButton)
buttonCorner.CornerRadius = UDim.new(0, 10)

copyButton.MouseButton1Click:Connect(function()
	setclipboard(tostring(placeId))
	copyButton.Text = "Copied!"
	wait(2)
	copyButton.Text = "Copy"
end)

local UIS = game:GetService("UserInputService")
local dragging, dragInput, dragStart, startPos

local function update(input)
	local delta = input.Position - dragStart
	frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

frame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = frame.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then dragging = false end
		end)
	end
end)

frame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UIS.InputChanged:Connect(function(input)
	if input == dragInput and dragging then update(input) end
end)