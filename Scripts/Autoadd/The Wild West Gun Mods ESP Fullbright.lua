-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton1 = Instance.new("TextButton")
local TextButton2 = Instance.new("TextButton")
local TextButton3 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextButton4 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
Frame.Position = UDim2.new(0.2314578, 0, 0.318359375, 0)
Frame.Size = UDim2.new(0, 429, 0, 283)
Frame.Active = true
Frame.Draggable = true

TextButton1.Name = "TextButton1"
TextButton1.Parent = Frame
TextButton1.BackgroundColor3 = Color3.fromRGB(158, 46, 46)
TextButton1.BorderColor3 = Color3.fromRGB(48, 143, 132)
TextButton1.Size = UDim2.new(0, 200, 0, 50)
TextButton1.Font = Enum.Font.SourceSans
TextButton1.Text = "Infinite Yeild"
TextButton1.TextColor3 = Color3.fromRGB(57, 143, 11)
TextButton1.TextSize = 32.000
TextButton1.MouseButton1Down:connect(function()
 loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)


TextButton2.Name = "TextButton2"
TextButton2.Parent = Frame
TextButton2.BackgroundColor3 = Color3.fromRGB(158, 46, 46)
TextButton2.BorderColor3 = Color3.fromRGB(48, 143, 132)
TextButton2.Position = UDim2.new(0.533799529, 0, 0, 0)
TextButton2.Size = UDim2.new(0, 200, 0, 50)
TextButton2.Font = Enum.Font.SourceSans
TextButton2.Text = "Arsenal Op Gui"
TextButton2.TextColor3 = Color3.fromRGB(57, 143, 11)
TextButton2.TextSize = 32.000
TextButton2.MouseButton1Down:connect(function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/Slrrs/Rivalbob/main/Byrival"))()
end)

TextButton3.Name = "TextButton3"
TextButton3.Parent = Frame
TextButton3.BackgroundColor3 = Color3.fromRGB(158, 46, 46)
TextButton3.BorderColor3 = Color3.fromRGB(48, 143, 132)
TextButton3.Position = UDim2.new(0, 0, 0.201413423, 0)
TextButton3.Size = UDim2.new(0, 200, 0, 50)
TextButton3.Font = Enum.Font.SourceSans
TextButton3.Text = "No-Scope Arcade Op Gui"
TextButton3.TextColor3 = Color3.fromRGB(57, 143, 11)
TextButton3.TextSize = 22.000
TextButton3.MouseButton1Down:connect(function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/Kitzoon/Rogue-Hub/main/Main.lua", true))()
end)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
TextLabel.Position = UDim2.new(0, 0, 0.922261477, 0)
TextLabel.Size = UDim2.new(0, 429, 0, 22)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Universal Hub J"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 31.000

TextButton4.Name = "TextButton4"
TextButton4.Parent = Frame
TextButton4.BackgroundColor3 = Color3.fromRGB(158, 46, 46)
TextButton4.BorderColor3 = Color3.fromRGB(48, 143, 132)
TextButton4.Position = UDim2.new(0.533799529, 0, 0.201413423, 0)
TextButton4.Size = UDim2.new(0, 200, 0, 50)
TextButton4.Font = Enum.Font.SourceSans
TextButton4.Text = "The Wild West"
TextButton4.TextColor3 = Color3.fromRGB(57, 143, 11)
TextButton4.TextSize = 32.000
TextButton4.MouseButton1Down:connect(function()
 loadstring(game:HttpGet(("https://raw.githubusercontent.com/KeoneGithub/KeoneGithub/main/WildWestLean"),true))()                         
end)