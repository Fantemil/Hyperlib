-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Blink = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Running = Instance.new("ImageButton")
local UICorner_2 = Instance.new("UICorner")
local God = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Godding = Instance.new("ImageButton")
local UICorner_4 = Instance.new("UICorner")
local Fly = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local Flying = Instance.new("ImageButton")
local UICorner_6 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Blink.Name = "Blink"
Blink.Parent = ScreenGui
Blink.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Blink.BackgroundTransparency = 0.600
Blink.BorderColor3 = Color3.fromRGB(0, 0, 0)
Blink.BorderSizePixel = 0
Blink.Position = UDim2.new(0.907360435, 0, 0.803140104, 0)
Blink.Size = UDim2.new(0, 94, 0, 92)

UICorner.CornerRadius = UDim.new(0, 100)
UICorner.Parent = Blink

Running.Name = "Running"
Running.Parent = Blink
Running.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Running.BackgroundTransparency = 1.000
Running.BorderColor3 = Color3.fromRGB(0, 0, 0)
Running.BorderSizePixel = 0
Running.Position = UDim2.new(0.0319148935, 0, 0.0326086953, 0)
Running.Size = UDim2.new(0, 88, 0, 85)
Running.Image = "http://www.roblox.com/asset/?id=18489229368"
Running.ScaleType = Enum.ScaleType.Crop
Running.MouseButton1Down:connect(function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/g00bysmasher/Lua/main/Lua'),true))()
end)

UICorner_2.CornerRadius = UDim.new(0, 100)
UICorner_2.Parent = Running

God.Name = "God"
God.Parent = ScreenGui
God.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
God.BackgroundTransparency = 0.600
God.BorderColor3 = Color3.fromRGB(0, 0, 0)
God.BorderSizePixel = 0
God.Position = UDim2.new(0.907360435, 0, 0.66183573, 0)
God.Size = UDim2.new(0, 94, 0, 92)

UICorner_3.CornerRadius = UDim.new(0, 100)
UICorner_3.Parent = God

Godding.Name = "Godding"
Godding.Parent = God
Godding.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Godding.BackgroundTransparency = 1.000
Godding.BorderColor3 = Color3.fromRGB(0, 0, 0)
Godding.BorderSizePixel = 0
Godding.Position = UDim2.new(-0.0425531901, 0, 0, 0)
Godding.Size = UDim2.new(0, 101, 0, 92)
Godding.Image = "http://www.roblox.com/asset/?id=18489404512"
Godding.ScaleType = Enum.ScaleType.Crop
Godding.MouseButton1Down:connect(function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/g00bysmasher/Lua2/main/ggg'),true))()
end)

UICorner_4.CornerRadius = UDim.new(0, 100)
UICorner_4.Parent = Godding

Fly.Name = "Fly"
Fly.Parent = ScreenGui
Fly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Fly.BackgroundTransparency = 0.600
Fly.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fly.BorderSizePixel = 0
Fly.Position = UDim2.new(0.82487309, 0, 0.803140104, 0)
Fly.Size = UDim2.new(0, 94, 0, 92)

UICorner_5.CornerRadius = UDim.new(0, 100)
UICorner_5.Parent = Fly

Flying.Name = "Flying"
Flying.Parent = Fly
Flying.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Flying.BackgroundTransparency = 1.000
Flying.BorderColor3 = Color3.fromRGB(0, 0, 0)
Flying.BorderSizePixel = 0
Flying.Position = UDim2.new(-0.0425531901, 0, 0, 0)
Flying.Size = UDim2.new(0, 101, 0, 92)
Flying.Image = "http://www.roblox.com/asset/?id=18493303130"
Flying.ScaleType = Enum.ScaleType.Crop
Flying.MouseButton1Down:connect(function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/g00bysmasher/fly/main/Fly'),true))()
	spawn(function()
		local message = Instance.new("Message",workspace)
		message.Text = "Click Left-Alt to Fly!"
		wait(2)
		message:Destroy()
	end)
end)

UICorner_6.CornerRadius = UDim.new(0, 100)
UICorner_6.Parent = Flying