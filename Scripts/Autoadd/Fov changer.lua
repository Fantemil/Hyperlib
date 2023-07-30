-- Instances:
 
local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local emotes = Instance.new("TextButton")
local vynixu = Instance.new("TextButton")
local ludicity = Instance.new("TextButton")
local eclipse = Instance.new("TextButton")
local god = Instance.new("TextButton")
local troll = Instance.new("TextButton")
 
--Properties:
 
ScreenGui.Parent = game.CoreGui
 
main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
main.BackgroundTransparency = 0.300
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.Position = UDim2.new(0.0163098853, 0, 0.319767386, 0)
main.Size = UDim2.new(0, 212, 0, 251)
main.Active = true
main.Draggable = true
 
title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Position = UDim2.new(-1.1920929e-07, 0, 0, 0)
title.Size = UDim2.new(0, 212, 0, 22)
title.Font = Enum.Font.Cartoon
title.Text = "Made.by.Kaido#0257"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 14.000
 
emotes.Name = "emotes"
emotes.Parent = main
emotes.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
emotes.BackgroundTransparency = 0.300
emotes.BorderColor3 = Color3.fromRGB(255, 255, 255)
emotes.Position = UDim2.new(0.0566037744, 0, 0.843250215, 0)
emotes.Size = UDim2.new(0, 187, 0, 22)
emotes.Font = Enum.Font.Cartoon
emotes.Text = "Fov.20"
emotes.TextColor3 = Color3.fromRGB(255, 255, 255)
emotes.TextSize = 14.000
emotes.TextWrapped = true
emotes.MouseButton1Down:connect(function()
  workspace.CurrentCamera.FieldOfView = 20 
end)
 
vynixu.Name = "vynixu"
vynixu.Parent = main
vynixu.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
vynixu.BackgroundTransparency = 0.300
vynixu.BorderColor3 = Color3.fromRGB(255, 255, 255)
vynixu.Position = UDim2.new(0.0566037744, 0, 0.13348788, 0)
vynixu.Size = UDim2.new(0, 187, 0, 22)
vynixu.Font = Enum.Font.Cartoon
vynixu.Text = "Fov.120"
vynixu.TextColor3 = Color3.fromRGB(255, 255, 255)
vynixu.TextSize = 14.000
vynixu.TextWrapped = true
vynixu.MouseButton1Down:connect(function()
    workspace.CurrentCamera.FieldOfView = 120
end)
 
ludicity.Name = "ludicity"
ludicity.Parent = main
ludicity.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ludicity.BackgroundTransparency = 0.300
ludicity.BorderColor3 = Color3.fromRGB(255, 255, 255)
ludicity.Position = UDim2.new(0.0566037744, 0, 0.280969203, 0)
ludicity.Size = UDim2.new(0, 187, 0, 22)
ludicity.Font = Enum.Font.Cartoon
ludicity.Text = "Fov.100"
ludicity.TextColor3 = Color3.fromRGB(255, 255, 255)
ludicity.TextSize = 14.000
ludicity.TextWrapped = true
ludicity.MouseButton1Down:connect(function()
   workspace.CurrentCamera.FieldOfView = 100
end)
 
eclipse.Name = "eclipse"
eclipse.Parent = main
eclipse.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
eclipse.BackgroundTransparency = 0.300
eclipse.BorderColor3 = Color3.fromRGB(255, 255, 255)
eclipse.Position = UDim2.new(0.0566037744, 0, 0.428859621, 0)
eclipse.Size = UDim2.new(0, 187, 0, 22)
eclipse.Font = Enum.Font.Cartoon
eclipse.Text = "Fov.80"
eclipse.TextColor3 = Color3.fromRGB(255, 255, 255)
eclipse.TextSize = 14.000
eclipse.TextWrapped = true
eclipse.MouseButton1Down:connect(function()
 workspace.CurrentCamera.FieldOfView = 80
end)
 
god.Name                   = "god"
god.Parent                 = main
god.BackgroundColor3       = Color3.fromRGB(0, 0, 0)
god.BackgroundTransparency = 0.300
god.BorderColor3           = Color3.fromRGB(255, 255, 255)
god.Position               = UDim2.new(0.0566037744, 0, 0.566901684, 0)
god.Size                   = UDim2.new(0, 187, 0, 22)
god.Font                   = Enum.Font.Cartoon
god.Text                   = "Fov.60"
god.TextColor3             = Color3.fromRGB(255, 255, 255)
god.TextSize               = 14.000
god.TextWrapped            = true
god.MouseButton1Down:connect(function()
   workspace.CurrentCamera.FieldOfView = 60
end)
 
troll.Name = "troll"
troll.Parent = main
troll.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
troll.BackgroundTransparency = 0.300
troll.BorderColor3 = Color3.fromRGB(255, 255, 255)
troll.Position = UDim2.new(0.0566037744, 0, 0.708927751, 0)
troll.Size = UDim2.new(0, 187, 0, 22)
troll.Font = Enum.Font.Cartoon
troll.Text = "Fov.40"
troll.TextColor3 = Color3.fromRGB(255, 255, 255)
troll.TextSize = 14.000
troll.TextWrapped = true
troll.MouseButton1Down:connect(function()
   workspace.CurrentCamera.FieldOfView = 40
end)