local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
getgenv().Theme = "DarkTheme"
--[[
    LightTheme
    DarkTheme
    GrapeTheme
    BloodTheme
    Ocean
    Midnight
    Sentinel
    Synapse
]]
local Window = Library.CreateLib("Test", getgenv().Theme)
local Tab = Window:NewTab("LocalPlayer")
local Section = Tab:NewSection("Speed")
Section:NewTextBox("Character speed", "Type in a number to make the speed u want", function(txt)
 game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = txt
end)
Section:NewButton("Infinite yield", "alot of better", function()
 loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
Section:NewKeybind("Toggle ui", "makes the gui invisible, press again to make it visible", Enum.KeyCode.RightAlt, function()
 Library:ToggleUI()
end)