--by qjbnbalivemobile1#0946

--Objects
local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local Headless = Instance.new("TextButton")
local OneLeg = Instance.new("TextButton")
local close = Instance.new("TextButton")
local openmain = Instance.new("Frame")
local open = Instance.new("TextButton")

--Properties:
ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.new(0, 0, 0)
main.Position = UDim2.new(0.0203577988, 0, 0.641277611, 0)
main.Size = UDim2.new(0, 332, 0, 211)
main.Visible = false
main.Active = true
main.Draggable = true

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.new(1, 0, 1)
title.Size = UDim2.new(0, 332, 0, 31)
title.Font = Enum.Font.GothamBold
title.Text = "qjbnbalivemobile1#0946"
title.TextColor3 = Color3.new(0, 0, 0)
title.TextSize = 17

Headless.Name = "Headless"
Headless.Parent = main
Headless.BackgroundColor3 = Color3.new(0.333333, 1, 0)
Headless.Position = UDim2.new(0.036144577, 0, 0.379146934, 0)
Headless.Size = UDim2.new(0, 110, 0, 50)
Headless.Font = Enum.Font.GothamBold
Headless.Text = "Headless"
Headless.TextColor3 = Color3.new(0, 0, 0)
Headless.TextScaled = true
Headless.TextSize = 10
Headless.TextWrapped = true
Headless.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.Head.Transparency = 1
for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
if (v:IsA("Decal")) then
v:Destroy()
end
end
end)

OneLeg.Name = "One Leg"
OneLeg.Parent = main
OneLeg.BackgroundColor3 = Color3.new(0.333333, 1, 0)
OneLeg.Position = UDim2.new(0.614457846, 0, 0.379146934, 0)
OneLeg.Size = UDim2.new(0, 110, 0, 50)
OneLeg.Font = Enum.Font.GothamBold
OneLeg.Text = "One Leg"
OneLeg.TextColor3 = Color3.new(0, 0, 0)
OneLeg.TextScaled = true
OneLeg.TextSize = 14
OneLeg.TextWrapped = true
OneLeg.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character['Right Leg']:remove()
end)

close.Name = "close"
close.Parent = main
close.BackgroundColor3 = Color3.new(1, 0, 0)
close.Position = UDim2.new(0.879518092, 0, 0, 0)
close.Size = UDim2.new(0, 40, 0, 31)
close.Font = Enum.Font.GothamBlack
close.Text = "X"
close.TextColor3 = Color3.new(0, 0, 0)
close.TextScaled = true
close.TextSize = 14
close.TextWrapped = true
close.MouseButton1Down:connect(function()
main.Visible = false
openmain.Visible = true
end)

openmain.Name = "openmain"
openmain.Parent = ScreenGui
openmain.BackgroundColor3 = Color3.new(1, 1, 1)
openmain.Position = UDim2.new(.001, 0, .79, 0)
openmain.Size = UDim2.new(0, 100, 0, 28)
openmain.Active = true
openmain.Draggable = true

open.Name = "open"
open.Parent = openmain
open.BackgroundColor3 = Color3.new(1, 0, 0)
open.Size = UDim2.new(0, 100, 0, 28)
open.Font = Enum.Font.GothamBold
open.Text = "OPEN"
open.TextColor3 = Color3.new(0, 0, 0)
open.TextSize = 18
open.TextWrapped = true
open.MouseButton1Down:connect(function()
openmain.Visible = false
main.Visible = true
end)