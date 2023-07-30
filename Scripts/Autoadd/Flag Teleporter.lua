local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Pearls Teleporter", "DarkTheme")
--Main
local Main = Window:NewTab("Teleports")
local MainSection = Main:NewSection("Flags")

MainSection:NewButton("Flag Spawn (Spawn)", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-49.1223, 12.7246, 1.79768)
end)

MainSection:NewButton("Flag 1 (100 meters)", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(999.428, 515.724, -81.5524)
end)

MainSection:NewButton("Flag 2 (200 meters)", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2328.73, 1017.12, -5.85241)
end)

MainSection:NewButton("Flag 3 (300 meters)", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3693.41, 1512.72, 158.448)
end)