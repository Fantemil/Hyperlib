local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("new york:the hood", "DarkTheme")

-- MAIN
local Main = Window:NewTab("Main")
local teleports = Main:NewSection("teleports")


teleports:NewButton("bank", "teleports you to bank", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3147.36865234375, -71.03009796142578, -292.4690246582031)
end)


teleports:NewButton("golddrop", "teleports you to gold drop off", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3119.484619140625, -74.8802490234375, 66.48092651367188)
end)

teleports:NewButton("dealer", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2783.23193359375, -74.8802490234375, -353.4296875)
end)

teleports:NewButton("crate", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3023.132568359375, -68.00517272949219, 129.90171813964844)
end)

teleports:NewButton("crate drop-off", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2790.180419921875, -72.427001953125, 17.753944396972656)
end)

teleports:NewButton("gun-store", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2959.51025390625, -74.58024597167969, -236.65025329589844)
end)

-- FUN STUFF
local FUN STUFF = Window:NewTab("FUN STUFF")
local powerr = FUN STUFF:NewSection("powerr")

teleports:NewToggle("speed-power", "have the speed like flash", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.Walkspeed = 120
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
    else
       game.Players.LocalPlayer.Character.Humanoid.Walkspeed = 16
       game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50 
    end
end)