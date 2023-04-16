-- DeckHub made by BeansVR

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("DeckHub", "Synapse")
    -- Player
    local Main = Window:NewTab("Player")
    local MainSection = Main:NewSection("Player")


    MainSection:NewButton("Infinite Jump [R] [On By Default]", "Makes you jump infinitely", function()
        loadstring(game:HttpGet('https://pastebin.com/raw/HQsQysa8'))()
    end)

    MainSection:NewToggle("Superhuman Speed", "Makes you go super fast", function(state)
        if state then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
    end)

MainSection:NewSlider("Walkspeed", "Makes you faster/slower", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

MainSection:NewSlider("Jump Power", "Makes you jump Higher/Lower", 500, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
-- OP
local OP = Window:NewTab("OP")
local OPSection = OP:NewSection("Admin")

OPSection:NewButton("Infinite Yield", "Opens Infinite Yield", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

OPSection:NewButton("CMD-X", "Opens CMD-X", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()        
end)

local OPSection = OP:NewSection("Menus")

OPSection:NewButton("Ragdoll Engine", "Opens OP Ragdoll Engine menu", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/max2007killer/GUI-/main/GUI%26.txt"))()
end)