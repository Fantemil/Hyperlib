local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Climb 2000 Stairs to VIP Obby", "DarkTheme")

local home = Window:NewTab("Teleports")
local homeSection = home:NewSection("Obbys")

homeSection:NewButton("The Stairs Win","", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12, 2053, -6)
end)

homeSection:NewButton("Easy Obby Win","", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(902, -4, 102)
end)

homeSection:NewButton("Medium Obby Win","", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(952, -4, 198)
end)

homeSection:NewButton("Hard Obby Win","", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(958, -4, 273)
end)

homeSection:NewButton("Glass Bridge Win","", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(905, -4, 381)
end)

homeSection:NewButton("Guess The Path Win","", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(996, -4, 561)
end)

homeSection:NewButton("Disappearing Stairs Win","", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1061, 265, 871)
end)

homeSection:NewButton("The Maze Win","", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1134, 15, -84)
end)