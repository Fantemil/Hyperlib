local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("TITLE", "DarkTheme")

local Tab = Window:NewTab("TabName")

local Section = Tab:NewSection("Section Name")

Section:NewButton("Tp To Vip Room", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1881.45361328125, -396.8499755859375, 911.4960327148438)
end)

Section:NewButton("Tp To Lobby", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1916.3992919921875, -396.74810791015625, 919.82666015625)
end)