 local MM2ESPGUI = Instance.new("ScreenGui")
local GUI = Instance.new("Frame")
local NAME = Instance.new("TextLabel")
local ESP = Instance.new("TextButton")
local OWNER = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local OPEN = Instance.new("TextButton")

MM2ESPGUI.Name = "MM2 ESP GUI"
MM2ESPGUI.Parent = game.CoreGui
MM2ESPGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

GUI.Active = true
GUI.Draggable = true

GUI.Name = "GUI"
GUI.Parent = MM2ESPGUI
GUI.BackgroundColor3 = Color3.new(0.0156863, 1, 0)
GUI.Position = UDim2.new(0.323499501, 0, 0.178929761, 0)
GUI.Size = UDim2.new(0, 350, 0, 365)
GUI.Visible = false

NAME.Name = "NAME"
NAME.Parent = GUI
NAME.BackgroundColor3 = Color3.new(0, 0.0980392, 1)
NAME.Size = UDim2.new(0, 350, 0, 50)
NAME.Font = Enum.Font.SourceSansBold
NAME.Text = "MM2 ESP GUI"
NAME.TextColor3 = Color3.new(0, 0, 0)
NAME.TextScaled = true
NAME.TextSize = 14
NAME.TextWrapped = true

ESP.Name = "ESP"
ESP.Parent = GUI
ESP.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
ESP.Position = UDim2.new(0, 0, 0.430136979, 0)
ESP.Size = UDim2.new(0, 350, 0, 81)
ESP.Font = Enum.Font.SourceSansBold
ESP.Text = "ESP"
ESP.TextColor3 = Color3.new(0, 0, 0)
ESP.TextScaled = true
ESP.TextSize = 14
ESP.TextWrapped = true
ESP.MouseButton1Click:connect(function()
 loadstring(game:HttpGet(('https://pastebin.com/raw/ypSsQRK6'),true))()
 
 print("Working")
end)

OWNER.Name = "OWNER"
OWNER.Parent = GUI
OWNER.BackgroundColor3 = Color3.new(0.0666667, 1, 0)
OWNER.Position = UDim2.new(0, 0, 0.863013685, 0)
OWNER.Size = UDim2.new(0, 350, 0, 50)
OWNER.Font = Enum.Font.SourceSansBold
OWNER.Text = "MADE BY DUCKSIE"
OWNER.TextColor3 = Color3.new(0, 0, 0)
OWNER.TextScaled = true
OWNER.TextSize = 14
OWNER.TextWrapped = true

TextButton.Parent = GUI
TextButton.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
TextButton.Position = UDim2.new(0.937142849, 0, 0, 0)
TextButton.Size = UDim2.new(0, 22, 0, 18)
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = "X"
TextButton.TextColor3 = Color3.new(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextWrapped = true
TextButton.MouseButton1Click:connect(function()
 GUI.Visible = false
 OPEN.Visible = true
end)

OPEN.Name = "OPEN"
OPEN.Parent = MM2ESPGUI
OPEN.BackgroundColor3 = Color3.new(1, 1, 1)
OPEN.Position = UDim2.new(0, 0, 0.916387975, 0)
OPEN.Size = UDim2.new(0, 90, 0, 50)
OPEN.Font = Enum.Font.SourceSansBold
OPEN.Text = "OPEN"
OPEN.TextColor3 = Color3.new(0, 0, 0)
OPEN.TextScaled = true
OPEN.TextSize = 14
OPEN.TextWrapped = true
OPEN.MouseButton1Click:connect(function()
 GUI.Visible = true
 OPEN.Visible = false
end)

print("Working")