local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Goku Hub", "DarkTheme")

-- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")


MainSection:NewButton("Ultra instinct", "you,ll have to find out", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
end)


MainSection:NewToggle("Ultra Instinct Activated", "super fast reaction time and speed and reflexses", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 70
   end
end)

MainSection:NewButton("Infinit Yield", "you,ll have to find out", function()
    loadstring(game:HttpGet("loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()", true))()
end)


--LOCAL PLAYER
local Player = Window:NewTab(Player")
local PlayerSection = Tab:NewSection("Player")

PlayerSection:NewSlider("WalkSpeed", "what ever speed you like", 1000000, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)