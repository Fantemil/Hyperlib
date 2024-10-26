-- Gui to Lua
-- Version: 3.2

-- Instances:

local x = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local _1 = Instance.new("TextButton")
local _2 = Instance.new("TextButton")
local _3 = Instance.new("TextButton")
local _4 = Instance.new("TextButton")

--Properties:

x.Name = "x"
x.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
x.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = x
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 0.500
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.34523809, 0, 0.0685976073, 0)
Frame.Size = UDim2.new(0, 405, 0, 66)

_1.Name = "1"
_1.Parent = Frame
_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
_1.BorderSizePixel = 0
_1.Position = UDim2.new(0.071078442, 0, 0.1004567, 0)
_1.Size = UDim2.new(0, 85, 0, 33)
_1.Font = Enum.Font.SourceSans
_1.Text = "bring merge"
_1.TextColor3 = Color3.fromRGB(0, 0, 0)
_1.TextSize = 14.000

_2.Name = "2"
_2.Parent = Frame
_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
_2.BorderSizePixel = 0
_2.Position = UDim2.new(0.317422301, 0, 0.100456931, 0)
_2.Size = UDim2.new(0, 85, 0, 33)
_2.Font = Enum.Font.SourceSans
_2.Text = "bring dropoff"
_2.TextColor3 = Color3.fromRGB(0, 0, 0)
_2.TextSize = 14.000

_3.Name = "3"
_3.Parent = Frame
_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
_3.BorderSizePixel = 0
_3.Position = UDim2.new(0.565095603, 0, 0.100456931, 0)
_3.Size = UDim2.new(0, 85, 0, 33)
_3.Font = Enum.Font.SourceSans
_3.Text = "bring b0rg0r"
_3.TextColor3 = Color3.fromRGB(0, 0, 0)
_3.TextSize = 14.000

_4.Name = "4"
_4.Parent = Frame
_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
_4.BorderSizePixel = 0
_4.Position = UDim2.new(0.789786935, 0, 0.0853054151, 0)
_4.Size = UDim2.new(0, 85, 0, 33)
_4.Font = Enum.Font.SourceSans
_4.Text = "buy br1ng"
_4.TextColor3 = Color3.fromRGB(0, 0, 0)
_4.TextSize = 14.000

-- Scripts:

local function DYQCCIR_fake_script() -- _1.LocalScript 
	local script = Instance.new('LocalScript', _1)

	script.Parent.MouseButton1Click:Connect(function()
		local userPos = game.Workspace.WhiteHatGav.HumanoidRootPart.Position
		local times = game:GetService("Workspace").PlayerTycoons.WhiteHatGav.Buttons["Merge Buttons"]["Merge Button"].Detector
		times.CanCollide = false
		times.Position = userPos
	
	end)
end
coroutine.wrap(DYQCCIR_fake_script)()
local function TERG_fake_script() -- _2.LocalScript 
	local script = Instance.new('LocalScript', _2)

	script.Parent.MouseButton1Click:Connect(function()
		local userPos = game.Workspace.WhiteHatGav.HumanoidRootPart.Position
		local times = game:GetService("Workspace").PlayerTycoons.WhiteHatGav.Buttons["Deposit Buttons"]["Deposit Button"].Detector
		times.CanCollide = false
		times.Position = userPos
	
	end)
end
coroutine.wrap(TERG_fake_script)()
local function KBEBUWV_fake_script() -- _3.LocalScript 
	local script = Instance.new('LocalScript', _3)

	script.Parent.MouseButton1Click:Connect(function()
		local droppedObjectsFolder = game.Workspace.PlayerTycoons.WhiteHatGav.DroppedObjects
		local userPos = game.Workspace.WhiteHatGav.HumanoidRootPart.Position
	
		for _, droppedObject in pairs(droppedObjectsFolder:GetChildren()) do
			-- Get the children of the dropped object
			local parts = droppedObject:GetChildren()
	
			-- Iterate through each part and teleport it to userPos
			for _, part in pairs(parts) do
				part.Position = userPos
			end
		end
	
	end)
end
coroutine.wrap(KBEBUWV_fake_script)()
local function RDMOMA_fake_script() -- _4.LocalScript 
	local script = Instance.new('LocalScript', _4)

	script.Parent.MouseButton1Click:Connect(function()
		local userPos = game.Workspace.WhiteHatGav.HumanoidRootPart.Position
		local times = game:GetService("Workspace").PlayerTycoons.WhiteHatGav.Buttons["Oven Buttons"]["+25 Oven"].Detector
		times.CanCollide = false
		times.Position = userPos
	
	end)
end
coroutine.wrap(RDMOMA_fake_script)()
local function GMSBMX_fake_script() -- x.LocalScript 
	local script = Instance.new('LocalScript', x)

	script.Parent.Draggable = true
	script.Parent.Active = true
end
coroutine.wrap(GMSBMX_fake_script)()