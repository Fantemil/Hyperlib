local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Rainbow friends", "BloodTheme")

local Tab = Window:NewTab("Teleport")

local Section = Tab:NewSection("Teleport")

Section:NewButton("Return items", "Teleport to the desk or idk", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(371.954956, 44.7499924, 131.384155, -0.65327853, -1.33609612e-08, -0.757117689, 4.64470702e-08, 1, -5.77239661e-08, 0.757117689, -7.28757215e-08, -0.65327853)
end)

Section:NewButton("Feed orange", "Teleport to the oranges cave", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(494.33493, 60.5000076, -89.3687592, 0.996172547, 3.03014822e-08, -0.0874088109, -3.11791339e-08, 1, -8.67550121e-09, 0.0874088109, 1.13676268e-08, 0.996172547)
end)

local bTab = Window:NewTab("Background")

local bSection = bTab:NewSection("Section Name")

bSection:NewButton("Fullbright", "light", function()
    local Light = game:GetService("Lighting")
 
function dofullbright()
Light.Ambient = Color3.new(1, 1, 1)
Light.ColorShift_Bottom = Color3.new(1, 1, 1)
Light.ColorShift_Top = Color3.new(1, 1, 1)
end
 
dofullbright()
 
Light.LightingChanged:Connect(dofullbright)
end)

local Tab = Window:NewTab("LocalPlayer")

local lSection = Tab:NewSection("LocalPlayer")

lSection:NewSlider("WalkSpeed", "sonic", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

lSection:NewSlider("HipHeight", "very high", 20, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = s
end)