--[[

		Gui2Luaâ¢
		10zOfficial
		Version 1.0.0

]]


-- Instances

local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")

-- Properties

Frame.Parent = game.StarterGui.ScreenGui
Frame.BackgroundColor3 = Color3.new(0.4, 0, 0)
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.317120612, 0, 0.14389737, 0)
Frame.Size = UDim2.new(0, 246, 0, 149)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton.BorderColor3 = Color3.new(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.329268306, 0, 0.26845637, 0)
TextButton.Size = UDim2.new(0, 84, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Super Sword Rekt Da Kids"
TextButton.TextColor3 = Color3.new(0.333333, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextWrapped = true

-- Scripts

local function QURK_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local sword = script.Parent["Super Sword"]
	script.Parent.MouseButton1Click:Connect(function()
		sword.Parent = game.Players.LocalPlayer.Backpack
	end)
end
coroutine.wrap(QURK_fake_script)()
