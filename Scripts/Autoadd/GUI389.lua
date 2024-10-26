-- Gui to Lua
-- Version: 3.2

-- Instances:

local BlockRacingSim = Instance.new("ScreenGui")
local DraggableFrame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local CopyToolsButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local TeleportButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local TeleportButton_2 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local RemoveFolderButton = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
local TeleportButton_3 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local UITextSizeConstraint_6 = Instance.new("UITextSizeConstraint")
local UICorner_7 = Instance.new("UICorner")
local TeleportButton_4 = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local UITextSizeConstraint_7 = Instance.new("UITextSizeConstraint")
local DestroyGui = Instance.new("TextButton")
local UITextSizeConstraint_8 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

--Properties:

BlockRacingSim.Name = "BlockRacingSim"
BlockRacingSim.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
BlockRacingSim.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BlockRacingSim.ResetOnSpawn = false

DraggableFrame.Name = "DraggableFrame"
DraggableFrame.Parent = BlockRacingSim
DraggableFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DraggableFrame.BackgroundTransparency = 0.750
DraggableFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
DraggableFrame.BorderSizePixel = 0
DraggableFrame.Position = UDim2.new(0.288135588, 0, 0.234496117, 0)
DraggableFrame.Size = UDim2.new(0.423728824, 0, 0.529069781, 0)

TextLabel.Parent = DraggableFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BackgroundTransparency = 0.850
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(1, 0, 0.109890111, 0)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "Block Racing Simulator"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = TextLabel

UITextSizeConstraint.Parent = TextLabel
UITextSizeConstraint.MaxTextSize = 30

CopyToolsButton.Name = "CopyToolsButton"
CopyToolsButton.Parent = DraggableFrame
CopyToolsButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CopyToolsButton.BackgroundTransparency = 0.900
CopyToolsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CopyToolsButton.BorderSizePixel = 0
CopyToolsButton.Position = UDim2.new(0.0177852958, 0, 0.134384722, 0)
CopyToolsButton.Size = UDim2.new(0.962857127, 0, 0.109890111, 0)
CopyToolsButton.Font = Enum.Font.FredokaOne
CopyToolsButton.Text = "Copy Tools"
CopyToolsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyToolsButton.TextScaled = true
CopyToolsButton.TextSize = 14.000
CopyToolsButton.TextWrapped = true

UICorner_2.Parent = CopyToolsButton

UITextSizeConstraint_2.Parent = CopyToolsButton
UITextSizeConstraint_2.MaxTextSize = 30

TeleportButton.Name = "TeleportButton"
TeleportButton.Parent = DraggableFrame
TeleportButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportButton.BackgroundTransparency = 0.900
TeleportButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeleportButton.BorderSizePixel = 0
TeleportButton.Position = UDim2.new(0.0177852958, 0, 0.533417761, 0)
TeleportButton.Size = UDim2.new(0.962857127, 0, 0.109890111, 0)
TeleportButton.Font = Enum.Font.FredokaOne
TeleportButton.Text = "Island Of Hell +2 Wins"
TeleportButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportButton.TextScaled = true
TeleportButton.TextSize = 14.000
TeleportButton.TextWrapped = true

UICorner_3.Parent = TeleportButton

UITextSizeConstraint_3.Parent = TeleportButton
UITextSizeConstraint_3.MaxTextSize = 30

TeleportButton_2.Name = "TeleportButton_2"
TeleportButton_2.Parent = DraggableFrame
TeleportButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportButton_2.BackgroundTransparency = 0.900
TeleportButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeleportButton_2.BorderSizePixel = 0
TeleportButton_2.Position = UDim2.new(0.0177852958, 0, 0.400696039, 0)
TeleportButton_2.Size = UDim2.new(0.962857127, 0, 0.109890111, 0)
TeleportButton_2.Font = Enum.Font.FredokaOne
TeleportButton_2.Text = "Taffy Town +5 Wins"
TeleportButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportButton_2.TextScaled = true
TeleportButton_2.TextSize = 14.000
TeleportButton_2.TextWrapped = true

UICorner_4.Parent = TeleportButton_2

UITextSizeConstraint_4.Parent = TeleportButton_2
UITextSizeConstraint_4.MaxTextSize = 30

RemoveFolderButton.Name = "RemoveFolderButton"
RemoveFolderButton.Parent = DraggableFrame
RemoveFolderButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
RemoveFolderButton.BackgroundTransparency = 0.900
RemoveFolderButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
RemoveFolderButton.BorderSizePixel = 0
RemoveFolderButton.Position = UDim2.new(0.0177852958, 0, 0.267395794, 0)
RemoveFolderButton.Size = UDim2.new(0.962857127, 0, 0.109890111, 0)
RemoveFolderButton.Font = Enum.Font.FredokaOne
RemoveFolderButton.Text = "Remove World Walls"
RemoveFolderButton.TextColor3 = Color3.fromRGB(255, 255, 255)
RemoveFolderButton.TextScaled = true
RemoveFolderButton.TextSize = 14.000
RemoveFolderButton.TextWrapped = true

UICorner_5.Parent = RemoveFolderButton

UITextSizeConstraint_5.Parent = RemoveFolderButton
UITextSizeConstraint_5.MaxTextSize = 30

TeleportButton_3.Name = "TeleportButton_3"
TeleportButton_3.Parent = DraggableFrame
TeleportButton_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportButton_3.BackgroundTransparency = 0.900
TeleportButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeleportButton_3.BorderSizePixel = 0
TeleportButton_3.Position = UDim2.new(0.0177852958, 0, 0.666428804, 0)
TeleportButton_3.Size = UDim2.new(0.962857127, 0, 0.109890111, 0)
TeleportButton_3.Font = Enum.Font.FredokaOne
TeleportButton_3.Text = "Paradise Perch +1 Win"
TeleportButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportButton_3.TextScaled = true
TeleportButton_3.TextSize = 14.000
TeleportButton_3.TextWrapped = true

UICorner_6.Parent = TeleportButton_3

UITextSizeConstraint_6.Parent = TeleportButton_3
UITextSizeConstraint_6.MaxTextSize = 30

UICorner_7.CornerRadius = UDim.new(0, 10)
UICorner_7.Parent = DraggableFrame

TeleportButton_4.Name = "TeleportButton_4"
TeleportButton_4.Parent = DraggableFrame
TeleportButton_4.Name = "TeleportButton_4"
TeleportButton_4.Parent = DraggableFrame
TeleportButton_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportButton_4.BackgroundTransparency = 0.900
TeleportButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeleportButton_4.BorderSizePixel = 0
TeleportButton_4.Position = UDim2.new(0.0177852958, 0, 0.801080823, 0)
TeleportButton_4.Size = UDim2.new(0.962857127, 0, 0.109890111, 0)
TeleportButton_4.Font = Enum.Font.FredokaOne
TeleportButton_4.Text = "Mining Area"
TeleportButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportButton_4.TextScaled = true
TeleportButton_4.TextSize = 14.000
TeleportButton_4.TextWrapped = true

UICorner_8.Parent = TeleportButton_4

UITextSizeConstraint_7.Parent = TeleportButton_4
UITextSizeConstraint_7.MaxTextSize = 30

DestroyGui.Name = "DestroyGui"
DestroyGui.Parent = DraggableFrame
DestroyGui.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
DestroyGui.BorderColor3 = Color3.fromRGB(0, 0, 0)
DestroyGui.BorderSizePixel = 0
DestroyGui.Position = UDim2.new(0, 0, 0.934065938, 0)
DestroyGui.Size = UDim2.new(1, 0, 0.0659340695, 0)
DestroyGui.Font = Enum.Font.FredokaOne
DestroyGui.Text = "Destroy Gui"
DestroyGui.TextColor3 = Color3.fromRGB(255, 255, 255)
DestroyGui.TextScaled = true
DestroyGui.TextSize = 14.000
DestroyGui.TextWrapped = true

UITextSizeConstraint_8.Parent = DestroyGui
UITextSizeConstraint_8.MaxTextSize = 18

UIAspectRatioConstraint.Parent = DraggableFrame
UIAspectRatioConstraint.AspectRatio = 1.282

-- Scripts:

local function ZVAQ_fake_script() -- DestroyGui.DestroyGuiScript 
	local script = Instance.new('LocalScript', DestroyGui)

	local button = script.Parent
	
	local function destroyGui()
	    local screenGui = button.Parent.Parent
	    if screenGui and screenGui:IsA("ScreenGui") then
	        screenGui:Destroy()
	    end
	end
	
	button.Activated:Connect(destroyGui)
end
coroutine.wrap(ZVAQ_fake_script)()

local function Dragify(frame)
	local UIS = game:GetService("UserInputService")
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragInput = nil
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		local delta = input.Position - dragStart
		frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if input == dragInput and dragToggle then
			updateInput(input)
		end
	end)
end

Dragify(DraggableFrame)

local function CopyTools()
	local services = {
	    game:GetService("Workspace"),
	    game:GetService("Lighting"),
	    game:GetService("ReplicatedStorage"),
	    game:GetService("StarterPack"),
	    game:GetService("ServerStorage")
	}

	local player = game.Players.LocalPlayer
	local backpack = player:WaitForChild("Backpack")
	local starterGear = player:WaitForChild("StarterGear")

	local function copyTools(service)
	    for _, item in ipairs(service:GetChildren()) do
	        if item:IsA("Tool") or item:IsA("HopperBin") then
	            local clone = item:Clone()
	            clone.Parent = backpack
	            local starterClone = item:Clone()
	            starterClone.Parent = starterGear
	        end
	    end
	end

	for _, service in ipairs(services) do
	    copyTools(service)
	end
end

CopyToolsButton.MouseButton1Click:Connect(CopyTools)

local function RemoveFolder(folderName)
	local workspace = game:GetService("Workspace")
	local folder = workspace:FindFirstChild(folderName)

	if folder and folder:IsA("Folder") then
	    folder:Destroy()
	end
end

RemoveFolderButton.MouseButton1Click:Connect(function()
	RemoveFolder("WorldWalls")
end)

TeleportButton.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2079, -5, 118)
end)

TeleportButton_2.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3114, -3, 245)
end)

TeleportButton_3.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1049, -6, -9)
end)

TeleportButton_4.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(22790, 9, 70)
end)