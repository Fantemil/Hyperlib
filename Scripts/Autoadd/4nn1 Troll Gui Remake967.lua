-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("ImageLabel")
local FedoraAdmin = Instance.new("TextButton")
local ChatLag = Instance.new("TextButton")
local Energize = Instance.new("TextButton")
local Nameless = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.461294413, 0, 0.152173907, 0)
main.Size = UDim2.new(0, 421, 0, 355)
main.Image = "http://www.roblox.com/asset/?id=18517014072"

FedoraAdmin.Name = "Fedora Admin"
FedoraAdmin.Parent = main
FedoraAdmin.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FedoraAdmin.BorderColor3 = Color3.fromRGB(0, 0, 0)
FedoraAdmin.BorderSizePixel = 2
FedoraAdmin.Position = UDim2.new(0.042755343, 0, 0.245070428, 0)
FedoraAdmin.Size = UDim2.new(0, 143, 0, 64)
FedoraAdmin.Font = Enum.Font.SourceSans
FedoraAdmin.Text = "Fedora Admin"
FedoraAdmin.TextColor3 = Color3.fromRGB(0, 0, 0)
FedoraAdmin.TextScaled = true
FedoraAdmin.TextSize = 30.000
FedoraAdmin.TextWrapped = true
FedoraAdmin.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/alexx1212/fedoratoomutch/main/toomucth'))()
end)

ChatLag.Name = "Chat Lag"
ChatLag.Parent = main
ChatLag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChatLag.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChatLag.BorderSizePixel = 2
ChatLag.Position = UDim2.new(0.617577195, 0, 0.245070428, 0)
ChatLag.Size = UDim2.new(0, 143, 0, 64)
ChatLag.Font = Enum.Font.SourceSans
ChatLag.Text = "Y00z Chat Lag"
ChatLag.TextColor3 = Color3.fromRGB(0, 0, 0)
ChatLag.TextScaled = true
ChatLag.TextSize = 30.000
ChatLag.TextWrapped = true
ChatLag.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://pastebin.com/raw/AmxURsvM'))()
end)

Energize.Name = "Energize"
Energize.Parent = main
Energize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Energize.BorderColor3 = Color3.fromRGB(0, 0, 0)
Energize.BorderSizePixel = 2
Energize.Position = UDim2.new(0.042755343, 0, 0.656338036, 0)
Energize.Size = UDim2.new(0, 143, 0, 64)
Energize.Font = Enum.Font.SourceSans
Energize.Text = "Energ*ze   Gui"
Energize.TextColor3 = Color3.fromRGB(0, 0, 0)
Energize.TextScaled = true
Energize.TextSize = 30.000
Energize.TextWrapped = true
Energize.MouseButton1Down:connect(function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/1p6xnBNf'),true))()
end)

Nameless.Name = "Nameless"
Nameless.Parent = main
Nameless.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Nameless.BorderColor3 = Color3.fromRGB(0, 0, 0)
Nameless.BorderSizePixel = 2
Nameless.Position = UDim2.new(0.617577195, 0, 0.656338036, 0)
Nameless.Size = UDim2.new(0, 143, 0, 64)
Nameless.Font = Enum.Font.SourceSans
Nameless.Text = "Nameless Admin"
Nameless.TextColor3 = Color3.fromRGB(0, 0, 0)
Nameless.TextScaled = true
Nameless.TextSize = 30.000
Nameless.TextWrapped = true
Nameless.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Nameless-Admin-no-byfron-ui-11288"))()
end)

TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.261282653, 0, 0.0225352105, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "4nn1 Troll Gui Remake"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 35.000

-- Scripts:

local function HMITF_fake_script() -- main.LocalScript 
	local script = Instance.new('LocalScript', main)

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
coroutine.wrap(HMITF_fake_script)()
