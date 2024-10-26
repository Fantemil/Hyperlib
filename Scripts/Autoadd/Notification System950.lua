local NotifUI = Instance.new("ScreenGui")
local Holder = Instance.new("ScrollingFrame")
local Buttons = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextButton_2 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local TextButton_3 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Sorter = Instance.new("UIListLayout")

NotifUI.Name = "NotifUI"
NotifUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
NotifUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Holder.Name = "Holder"
Holder.Parent = NotifUI
Holder.Active = true
Holder.AnchorPoint = Vector2.new(1, 0)
Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Holder.BackgroundTransparency = 1.000
Holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
Holder.BorderSizePixel = 0
Holder.Position = UDim2.new(1, 0, 0, 0)
Holder.Size = UDim2.new(0.25, 0, 1, 0)
Holder.CanvasSize = UDim2.new(0, 0, 0, 0)

Sorter.Name = "Sorter"
Sorter.Parent = Holder
Sorter.HorizontalAlignment = Enum.HorizontalAlignment.Center
Sorter.SortOrder = Enum.SortOrder.LayoutOrder
Sorter.VerticalAlignment = Enum.VerticalAlignment.Bottom
Sorter.Padding = UDim.new(0, 10)

local function SetDefault(v1, v2)
	v1 = v1 or {}
	local v3 = {}
	for i, v in next, v2 do
		v3[i] = v1[i] or v2[i]
	end
	return v3
end

function CreateNotification(Options)
	local Default = {
		Buttons = {
			[1] = {
				Title = 'Dismiss',
				ClosesUI = true,
				Callback = function() end
			}
		},
		Title = 'Notification Title',
		Content = 'Placeholder notification content',
		Length = 5,
		NeverExpire = false
	}
	Options = SetDefault(Options, Default)
	
	local Dismiss = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local TextLabel = Instance.new("TextLabel")
	local TextLabel_2 = Instance.new("TextLabel")
	local TextButton = Instance.new("TextButton")
	local UICorner_2 = Instance.new("UICorner")

	Dismiss.Name = "Notification"
	Dismiss.Parent = Holder
	Dismiss.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Dismiss.BackgroundTransparency = 0.300
	Dismiss.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Dismiss.Position = UDim2.new(0.0996219441, 0, 0.646335304, 0)
	Dismiss.Size = UDim2.new(0, 262, 0, 132)
	Dismiss.Visible = false

	UICorner.Parent = Dismiss

	TextLabel.Parent = Dismiss
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
	TextLabel.Position = UDim2.new(0.0572519079, 0, 0.0530303046, 0)
	TextLabel.Size = UDim2.new(0, 194, 0, 29)
	TextLabel.Font = Enum.Font.GothamMedium
	TextLabel.Text = Options.Title
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 16.000
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	TextLabel_2.Parent = Dismiss
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.BackgroundTransparency = 1.000
	TextLabel_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
	TextLabel_2.Position = UDim2.new(0.0572519079, 0, 0.303030312, 0)
	TextLabel_2.Size = UDim2.new(0, 233, 0, 52)
	TextLabel_2.Font = Enum.Font.Gotham
	TextLabel_2.Text = Options.Content
	TextLabel_2.TextColor3 = Color3.fromRGB(234, 234, 234)
	TextLabel_2.TextSize = 14.000
	TextLabel_2.TextWrapped = true
	TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel_2.TextYAlignment = Enum.TextYAlignment.Top

	if Options.Buttons[1] then
		TextButton.Parent = Dismiss
		TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
		TextButton.Position = UDim2.new(0.0572519079, 0, 0.696969688, 0)
		TextButton.Size = UDim2.new(0, 233, 0, 29)
		TextButton.Font = Enum.Font.GothamMedium
		TextButton.Text = Options.Buttons[1].Title or "Dismiss"
		TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.TextSize = 16.000
		TextButton.TextStrokeColor3 = Color3.fromRGB(31, 33, 35)
		UICorner_2.CornerRadius = UDim.new(0, 6)
		UICorner_2.Parent = TextButton
		TextButton.MouseButton1Click:Connect(function()
			if Options.Buttons[1].Callback then
				task.spawn(Options.Buttons[1].Callback)
			end
			if Options.Buttons[1].ClosesUI then
				Dismiss:Destroy()
			end
		end)
	end
	Dismiss.Visible = true
	if not Options.NeverExpire then
		task.delay(Options.Length, function()
			if not Dismiss then return end
			local c = {'Frame', 'ScrollingFrame'}
			for i, v in next, Dismiss:GetDescendants() do
				if v.ClassName:find("Text") then
					game:GetService("TweenService"):Create(v, TweenInfo.new(.4), {TextTransparency = 1}):Play()
				else
					if table.find(c, v.ClassName) then
						game:GetService("TweenService"):Create(v, TweenInfo.new(.4), {Transparency = 1}):Play()
					end
				end
			end
			task.wait(.4)
			Dismiss:Destroy()
		end)
	end
end

return CreateNotification

--[[ Example:
 CreateNotification({Title = 'Notification Title', Content = 'Hey there! Thank you for using this script!', Length = 5, Buttons = {
	[1] = {
		Title = 'Dismiss', -- < the button text
		ClosesUI = true, -- < if when clicked, the button closes the ui
		Callback = function() --[[ What happens when the button is clicked]] end
	}
    Length: How long the notification stays on the screen for without the user closing it
    NeverExpire: If set to true, This notification won't disappear until a button that has ClosesUI is clicked.
}})
]]