--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]


-- Instances:

local Reborrn = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local Size = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local Execute = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local CanCollide = Instance.new("TextBox")
local UICorner_5 = Instance.new("UICorner")
local Transparency = Instance.new("TextBox")
local UICorner_6 = Instance.new("UICorner")

--Properties:

Reborrn.Name = "Reborrn"
Reborrn.Parent = game:GetService("CoreGui")
Reborrn.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = Reborrn
Frame.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.659, 0,0.131, 0)
Frame.Size = UDim2.new(0, 320, 0, 358)

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 320, 0, 50)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Devin's Hitbox Expander"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 10)
UICorner_2.Parent = TextLabel

Size.Name = "Size"
Size.Parent = Frame
Size.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
Size.BorderColor3 = Color3.fromRGB(0, 0, 0)
Size.BorderSizePixel = 0
Size.Position = UDim2.new(0.1875, 0, 0.194897011, 0)
Size.Size = UDim2.new(0, 200, 0, 50)
Size.Font = Enum.Font.SourceSansBold
Size.Text = "Size"
Size.TextColor3 = Color3.fromRGB(0, 0, 0)
Size.TextScaled = true
Size.TextSize = 14.000
Size.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 10)
UICorner_3.Parent = Size

Execute.Name = "Execute"
Execute.Parent = Frame
Execute.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
Execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
Execute.BorderSizePixel = 0
Execute.Position = UDim2.new(0.28125, 0, 0.733486772, 0)
Execute.Size = UDim2.new(0, 140, 0, 50)
Execute.Font = Enum.Font.SourceSansBold
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(0, 0, 0)
Execute.TextScaled = true
Execute.TextSize = 14.000
Execute.TextWrapped = true
Execute.MouseButton1Down:connect(function()
--Hitbox Expander Script
while wait(0.2) do
    local Players = game:GetService("Players")
    local all = Players:GetPlayers()
    local Lp = Players.LocalPlayer
    
    for _, player in ipairs(all) do
       if Lp ~= player and player.Character then
          local ht  = player.Character:FindFirstChild("HumanoidRootPart")
          if ht then
             ht.Size = Vector3.new(Size.Text, Size.Text, Size.Text)
             ht.Transparency = Transparency.Text
             game.Workspace.Camera.FieldOfView = CanCollide.Text
          end
         end
       end
    end
end)

UICorner_4.CornerRadius = UDim.new(0, 10)
UICorner_4.Parent = Execute

CanCollide.Name = "Fov"
CanCollide.Parent = Frame
CanCollide.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
CanCollide.BorderColor3 = Color3.fromRGB(0, 0, 0)
CanCollide.BorderSizePixel = 0
CanCollide.Position = UDim2.new(0.1875, 0, 0.365288079, 0)
CanCollide.Size = UDim2.new(0, 200, 0, 50)
CanCollide.Font = Enum.Font.SourceSansBold
CanCollide.Text = "Fov Size(1-120)"
CanCollide.TextColor3 = Color3.fromRGB(0, 0, 0)
CanCollide.TextScaled = true
CanCollide.TextSize = 14.000
CanCollide.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 10)
UICorner_5.Parent = CanCollide

Transparency.Name = "Transparency"
Transparency.Parent = Frame
Transparency.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
Transparency.BorderColor3 = Color3.fromRGB(0, 0, 0)
Transparency.BorderSizePixel = 0
Transparency.Position = UDim2.new(0.1875, 0, 0.544059038, 0)
Transparency.Size = UDim2.new(0, 200, 0, 50)
Transparency.Font = Enum.Font.SourceSansBold
Transparency.Text = "Transparency"
Transparency.TextColor3 = Color3.fromRGB(0, 0, 0)
Transparency.TextScaled = true
Transparency.TextSize = 14.000
Transparency.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0, 10)
UICorner_6.Parent = Transparency

-- Scripts:

local function BFXSZMB_fake_script() -- Frame.Drag 
	local script = Instance.new('LocalScript', Frame)

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
coroutine.wrap(BFXSZMB_fake_script)()