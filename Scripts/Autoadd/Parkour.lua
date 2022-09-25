-- Script Made By Hitman Discord Hitman#4967
-- Recorded by GrowPh Hacks 
-- Parkour Script v1
local dual = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local duality = Instance.new("TextButton")
local info = Instance.new("TextLabel")
--Properties:
dual.Name = "dual"
dual.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = dual
Main.BackgroundColor3 = Color3.new(0, 0, 0)
Main.BorderColor3 = Color3.new(0, 0, 1)
Main.Position = UDim2.new(0.426280081, 0, 0.458181828, 0)
Main.Size = UDim2.new(0, 258, 0, 155)
Main.Active = true
Main.Draggable = true

title.Name = "title"
title.Parent = Main
title.BackgroundColor3 = Color3.new(0, 1, 0)
title.Position = UDim2.new(0, 0, 0.00757544721, 0)
title.Size = UDim2.new(0, 258, 0, 31)
title.Font = Enum.Font.SourceSans
title.Text = "Made by HitMan"
title.TextColor3 = Color3.new(0.333333, 0, 1)
title.TextScaled = true
title.TextSize = 14
title.TextWrapped = true

duality.Name = "duality"
duality.Parent = Main
duality.BackgroundColor3 = Color3.new(0, 0, 1)
duality.Position = UDim2.new(0.112403095, 0, 0.270967752, 0)
duality.Size = UDim2.new(0, 200, 0, 50)
duality.Font = Enum.Font.SourceSans
duality.Text = "Duality Gloves"
duality.TextColor3 = Color3.new(1, 1, 1)
duality.TextSize = 14
duality.MouseButton1Down:connect(function()
game.ReplicatedStorage.Gear.Glove.Wallclimb.Value = 30
end)

info.Name = "info"
info.Parent = Main
info.BackgroundColor3 = Color3.new(0, 0, 0)
info.Position = UDim2.new(0, 0, 0.845161319, 0)
info.Size = UDim2.new(0, 258, 0, 24)
info.Font = Enum.Font.SourceSans
info.Text = "Use the Lvl.5 Gloves to Active"
info.TextColor3 = Color3.new(1, 1, 1)
info.TextScaled = true
info.TextSize = 14
info.TextWrapped = true
-- Scripts: