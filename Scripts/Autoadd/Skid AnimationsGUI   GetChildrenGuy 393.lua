local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Content = Instance.new("TextBox")
local CollectButton = Instance.new("TextButton")
local HiddenButton = Instance.new("TextButton")
local OverlayImage = Instance.new("ImageLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, -200, 0.5, -150)
Frame.Size = UDim2.new(0, 400, 0, 300)
Frame.Active = true
Frame.Draggable = true

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Frame

Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Collect Gears Animations"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 24

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Title

Content.Parent = Frame
Content.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Content.BorderSizePixel = 0
Content.Position = UDim2.new(0.05, 0, 0.15, 0)
Content.Size = UDim2.new(0.9, 0, 0.70, 0)
Content.Font = Enum.Font.SourceSans
Content.Text = "Search results below"
Content.TextColor3 = Color3.new(1, 1, 1)
Content.TextSize = 18
Content.TextWrapped = true
Content.ClearTextOnFocus = false
Content.TextXAlignment = Enum.TextXAlignment.Left
Content.TextYAlignment = Enum.TextYAlignment.Top
Content.MultiLine = true

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Content

CollectButton.Parent = Frame
CollectButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
CollectButton.BorderSizePixel = 0
CollectButton.Position = UDim2.new(0.5, -100, 0.92, -15)
CollectButton.Size = UDim2.new(0, 200, 0, 35)
CollectButton.Font = Enum.Font.SourceSansBold
CollectButton.Text = "Collect Animations"
CollectButton.TextColor3 = Color3.new(1, 1, 1)
CollectButton.TextSize = 18

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = CollectButton

HiddenButton.Parent = Frame
HiddenButton.BackgroundTransparency = 1
HiddenButton.Position = UDim2.new(1, -70, 1, -95)
HiddenButton.Size = UDim2.new(0, 50, 0, 50)
HiddenButton.Text = ""

OverlayImage.Parent = Frame
OverlayImage.BackgroundTransparency = 1
OverlayImage.Position = UDim2.new(1, -55, 1, -80)
OverlayImage.Size = UDim2.new(0, 30, 0, 30)
OverlayImage.Image = "rbxassetid://80635939281482"

local function ResetGuiOnDeath()
	local player = game.Players.LocalPlayer
	player.CharacterAdded:Connect(function()
		ScreenGui.Enabled = true
	end)
end

ResetGuiOnDeath()

local function collectAnimations()
	local animations = {}
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()

	for _, item in pairs(character:GetChildren()) do
		for _, anim in pairs(item:GetDescendants()) do
			if anim:IsA("Animation") and anim.AnimationId and anim.AnimationId ~= "" then
				table.insert(animations, anim.AnimationId)
			end
		end
	end

	for _, item in pairs(player.Backpack:GetChildren()) do
		for _, anim in pairs(item:GetDescendants()) do
			if anim:IsA("Animation") and anim.AnimationId and anim.AnimationId ~= "" then
				table.insert(animations, anim.AnimationId)
			end
		end
	end

	if #animations > 0 then
		Content.Text = table.concat(animations, "\n")
	else
		Content.Text = ""
	end
end

local function copyAnimations()
	local animations = Content.Text
	if animations and animations ~= "" then
		setclipboard(animations)
	end
end

CollectButton.MouseButton1Click:Connect(collectAnimations)
HiddenButton.MouseButton1Click:Connect(copyAnimations)