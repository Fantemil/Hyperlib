-- Instances:
 
local ScreenGui = Instance.new("ScreenGui")
local R6 = Instance.new("TextButton")
local TextButton = Instance.new("TextButton")
 
--Properties:
 
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
R6.Name = "R6"
R6.Parent = ScreenGui
R6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
R6.Position = UDim2.new(-0.000343383319, 0, 0.32815966, 0)
R6.Size = UDim2.new(0, 29, 0, 29)
R6.Font = Enum.Font.SourceSans
R6.Text = "R6"
R6.TextColor3 = Color3.fromRGB(0, 0, 0)
R6.TextSize = 14.000
R6.MouseButton1Down:connect(function()
 loadstring(game:HttpGet(('https://pastebin.com/raw/jHGVauVX'),true))()
end)
 
TextButton.Parent = ScreenGui
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0, 0, 0.414634138, 0)
TextButton.Size = UDim2.new(0, 72, 0, 27)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "CK"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000
TextButton.MouseButton1Down:connect(function()
 loadstring(game:HttpGet(('https://pastebin.com/raw/ukFZuXbb'),true))()
end)