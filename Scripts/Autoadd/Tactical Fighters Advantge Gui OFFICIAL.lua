local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Tactical Fighters Advantge Gui", "Synapse")
 
-- MAIN --
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")
 
 
MainSection:NewButton("Back/Front Flips", "Go BRRRRRR BRRRRRRRRRRR BRRRRRRRRRRRRR Bye bye!", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/7wDcPtLk'))()
end)
 
 
 
-- Local Player --
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")
 
 
 
PlayerSection:NewToggle("Super Speed", "Go fast liek flawsh", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end)
 
 
PlayerSection:NewSlider("WalkSpeed", "Slide The Slider for FLASH Speed", 350, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
 
 
-- Game Scripts --
local Scripts = Window:NewTab("Game Scripts")
local ScriptsSection = Scripts:NewSection("Games And Their Scripts")
 
 
ScriptsSection:NewButton("Prison Life", "Destroy Their Fun and then you have fun :DDD", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Prison%20Life/Script.lua"))()
end)
 
 
ScriptsSection:NewButton("Arsenal", "Destroy Their Fun and then you have fun :DDD", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
end)