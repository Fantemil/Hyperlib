
--[[
Made by AXD
Keys:
K = Charge
Z = Fast Warp
X = Smooth Warp
]]


local TF2Warp = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local bar = Instance.new("Frame")
local percent = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local name = Instance.new("TextLabel")
local status = Instance.new("TextLabel")

--Properties:

TF2Warp.Name = "TF2Warp"
TF2Warp.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
TF2Warp.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TF2Warp.ResetOnSpawn = false

Frame.Parent = TF2Warp
Frame.BackgroundColor3 = Color3.fromRGB(255, 121, 94)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.418181777, 0, 0.846518993, 0)
Frame.Size = UDim2.new(0.162382454, 0, 0.12183544, 0)
Frame.ZIndex = 69420

bar.Name = "bar"
bar.Parent = Frame
bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
bar.BorderColor3 = Color3.fromRGB(0, 89, 255)
bar.BorderSizePixel = 2
bar.Position = UDim2.new(0, 0, 0.519480526, 0)
bar.Size = UDim2.new(0.992149115, 0, 0.480519474, 0)
bar.ZIndex = 69420

percent.Name = "percent"
percent.Parent = bar
percent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
percent.BorderColor3 = Color3.fromRGB(0, 0, 0)
percent.BorderSizePixel = 0
percent.Position = UDim2.new(2.31286413e-05, 0, 0, 0)
percent.Size = UDim2.new(-2.31286358e-05, 0, 1, 0)
percent.ZIndex = 69420

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(19, 161, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(20, 55, 255))}
UIGradient.Parent = percent

name.Name = "name"
name.Parent = Frame
name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
name.BackgroundTransparency = 1.000
name.BorderColor3 = Color3.fromRGB(0, 0, 0)
name.BorderSizePixel = 0
name.Position = UDim2.new(0, 0, 0.220779225, 0)
name.Size = UDim2.new(0.403060585, 0, 0.259740263, 0)
name.ZIndex = 69420
name.Font = Enum.Font.SourceSansLight
name.Text = "CHARGE"
name.TextColor3 = Color3.fromRGB(255, 255, 255)
name.TextScaled = true
name.TextSize = 17.000
name.TextStrokeTransparency = 0.000
name.TextWrapped = true
name.TextXAlignment = Enum.TextXAlignment.Left

status.Name = "status"
status.Parent = Frame
status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
status.BackgroundTransparency = 1.000
status.BorderColor3 = Color3.fromRGB(0, 0, 0)
status.BorderSizePixel = 0
status.Position = UDim2.new(0.586968362, 0, 0.220779225, 0)
status.Size = UDim2.new(0.403060585, 0, 0.259740263, 0)
status.ZIndex = 69420
status.Font = Enum.Font.SourceSansLight
status.Text = "NO CHARGE"
status.TextColor3 = Color3.fromRGB(255, 0, 0)
status.TextScaled = true
status.TextSize = 14.000
status.TextStrokeTransparency = 0.000
status.TextWrapped = true
status.TextXAlignment = Enum.TextXAlignment.Right

-- Scripts:

local plr = game:GetService("Players").LocalPlayer
local humanoid = plr.Character:FindFirstChildWhichIsA("Humanoid")
function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end
local cframepos
local dt_tick = 0
local statust = true
local charging = false
local warping = false
local function chargeing()
	for i=1,24 do
		getRoot(plr.Character).CFrame = cframepos
		dt_tick = i
		status.Text = "CHARGING"
		status.TextColor3 = Color3.fromRGB(255, 150, 0)
		wait(0.05)
	end
	statust = true
	charging = false
end
local function warpfast()
	if dt_tick >= 1 then
		local chr = plr.Character
		local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
		if hum.MoveDirection.Magnitude > 0 then
			chr:TranslateBy(hum.MoveDirection * dt_tick)
		end
		dt_tick = 0
		percent:TweenSizeAndPosition(UDim2.new(-0, 0,1, 0),UDim2.new(0,0,0,0),Enum.EasingDirection.InOut,Enum.EasingStyle.Sine,0.4,true)
	end
end
local function warpsmooth()
	if dt_tick >= 1 then
		local chr = plr.Character
		local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
		warping = true
		for i=24,0,-1 do
			dt_tick = i
			local totalmovespeed = 0.07 * dt_tick
			if hum.MoveDirection.Magnitude > 0 then
				chr:TranslateBy(hum.MoveDirection * totalmovespeed)
			end
			wait(0.01)
		end
		warping = false
	end
end
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
	if input.KeyCode == Enum.KeyCode.K then
		if dt_tick <= 23 then
			if charging == false then
				cframepos = getRoot(plr.Character).CFrame
				statust = false
				charging = true
				percent:TweenSizeAndPosition(UDim2.new(1.002, 0,1, 0),UDim2.new(0,0,0,0),Enum.EasingDirection.InOut,Enum.EasingStyle.Sine,1.8,true)
				chargeing()
			end
		elseif dt_tick >= 23 then
			print("No")
		end
	end
	if input.KeyCode == Enum.KeyCode.Z then
		if charging == false then
			warpfast()
		end
	end
	if input.KeyCode == Enum.KeyCode.X then
		if charging == false then
			if warping == false then
				percent:TweenSizeAndPosition(UDim2.new(-0, 0,1, 0),UDim2.new(0,0,0,0),Enum.EasingDirection.InOut,Enum.EasingStyle.Sine,1.8,true)
				warpsmooth()
			elseif warping == true then
				print("No")
			end
		end
	end
end)
while true do
	if statust == true then
		if dt_tick <= 1 then
			status.Text = "NO CHARGE"
			status.TextColor3 = Color3.fromRGB(255,0,0)
		elseif dt_tick >= 1 then
			status.Text = "READY"
			status.TextColor3 = Color3.fromRGB(0,255,0)
		end
	end
	wait()
end