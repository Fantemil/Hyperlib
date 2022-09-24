-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local ULShack = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local bar = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local close = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local reb = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local speed = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local UICorner_6 = Instance.new("UICorner")
local openmain = Instance.new("Frame")
local open = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local UICorner_8 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
main.Position = UDim2.new(0.146997929, 0, 0.0784641057, 0)
main.Size = UDim2.new(0, 344, 0, 246)
main.Visible = false
main.Active = true
main.Draggable = true

ULShack.Name = "ULS hack"
ULShack.Parent = main
ULShack.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
ULShack.Size = UDim2.new(0, 342, 0, 31)
ULShack.Font = Enum.Font.GothamBold
ULShack.Text = "ULS HACK!"
ULShack.TextColor3 = Color3.fromRGB(255, 255, 0)
ULShack.TextScaled = true
ULShack.TextSize = 14.000
ULShack.TextWrapped = true

UICorner.Parent = ULShack

bar.Name = "bar"
bar.Parent = main
bar.BackgroundColor3 = Color3.fromRGB(0, 255, 127)
bar.Position = UDim2.new(0, 0, 0.167011172, 0)
bar.Size = UDim2.new(0, 342, 0, 48)
bar.Font = Enum.Font.GothamBold
bar.Text = "Strenght script (clicks for more!)"
bar.TextColor3 = Color3.fromRGB(0, 170, 255)
bar.TextScaled = true
bar.TextSize = 14.000
bar.TextWrapped = true

UICorner_2.Parent = bar
bar.MouseButton1Down:connect(function()
 local player = game.Players.LocalPlayer
 while (1) do
  wait()
  game:GetService("ReplicatedStorage").Events.bar:InvokeServer()
 end
end)

close.Name = "close"
close.Parent = main
close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
close.Position = UDim2.new(0.891812861, 0, 0, 0)
close.Size = UDim2.new(0, 37, 0, 31)
close.Font = Enum.Font.GothamBold
close.Text = "x"
close.TextColor3 = Color3.fromRGB(0, 170, 255)
close.TextScaled = true
close.TextSize = 14.000
close.TextWrapped = true

UICorner_3.Parent = close
close.MouseButton1Down:connect(function()
main.Visible = false
openmain.Visible = true
end)

reb.Name = "reb"
reb.Parent = main
reb.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
reb.Position = UDim2.new(4.47034836e-08, 0, 0.440264553, 0)
reb.Size = UDim2.new(0, 343, 0, 48)
reb.Font = Enum.Font.GothamBold
reb.Text = "Auto Reb!"
reb.TextColor3 = Color3.fromRGB(0, 170, 255)
reb.TextScaled = true
reb.TextSize = 14.000
reb.TextWrapped = true

UICorner_4.Parent = reb
reb.MouseButton1Down:connect(function()
 local player = game.Players.LocalPlayer
 while (1) do
  wait()
  game:GetService("ReplicatedStorage").Events.Rebirth:InvokeServer()
 end
end)

speed.Name = "speed"
speed.Parent = main
speed.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
speed.Position = UDim2.new(-0.00292397663, 0, 0.725988746, 0)
speed.Size = UDim2.new(0, 343, 0, 48)
speed.Font = Enum.Font.GothamBold
speed.Text = "AutoSpeed (must equip flash pet)"
speed.TextColor3 = Color3.fromRGB(0, 170, 255)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true

UICorner_5.Parent = speed

UICorner_6.Parent = main
speed.MouseButton1Down:connect(function()
 local player = game.Players.LocalPlayer
 while (1) do
  wait()
  game:GetService("ReplicatedStorage").Events.train:InvokeServer()
 end
end)

openmain.Name = "openmain"
openmain.Parent = ScreenGui
openmain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
openmain.Position = UDim2.new(0, 0, 0.529215395, 0)
openmain.Size = UDim2.new(0, 80, 0, 27)
openmain.Active = true
openmain.Draggable = true

open.Name = "open"
open.Parent = openmain
open.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
open.Size = UDim2.new(0, 80, 0, 27)
open.Font = Enum.Font.GothamBold
open.Text = "Open Gui"
open.TextColor3 = Color3.fromRGB(255, 255, 255)
open.TextScaled = true
open.TextSize = 14.000
open.TextWrapped = true

UICorner_7.Parent = open

UICorner_8.Parent = openmain
open.MouseButton1Down:connect(function()
openmain.Visible = false
main.Visible = true
end)