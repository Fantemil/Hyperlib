local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Maxin Hub v1", "BloodTheme")

-- Tabs
local Tab1 = Window:NewTab("LocalPlayer")
local Tab2 = Window:NewTab("Scripts")
local Tab3 = Window:NewTab("Credits")

-- Sections
local Section1 = Tab1:NewSection("Player Customization")
local Section2 = Tab2:NewSection("Universal Scripts")
local Section3 = Tab3:NewSection("Creator and Script Owner")

-- Sliders
Section1:NewSlider("WalkSpeed", "Changes your speed", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section1:NewSlider("JumpPower", "Changes your speed", 500, 30, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
Section1:NewSlider("Gravity", "Changes your Gravity (193 Normal)", 1000, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Workspace.Gravity = s
end)
-- buttons
Section2:NewButton("Infinite Yield", "Gives Admin Cmds", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
Section2:NewButton("NameLess Admin", "Same admin cmds", function()
    loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Nameless-Admin-10833"))()
end)
-- Labels
Section3:NewLabel("Creator: NightMare Hackers")
Section3:NewLabel("Idea: MaxinGamesXd")
for theme, color in pairs(themes) do
    Section3:NewColorPicker(theme, "Change your "..theme, color, function(color3)
        Library:ChangeColor(theme, color3)
    end)
end
