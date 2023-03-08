local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Nactical Z", "BloodTheme")

--MAIN
local Main = Window:NewTab("Main")
local ScriptsSection = Main:NewSection("Scripts")


ScriptsSection:NewButton("Infinite Yield", "Admin script", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",true))()
end)


ScriptsSection:NewToggle("Superhuman", "Not really a script but fun", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

ScriptsSection:NewButton("Neva Hub", "This Hub works on blox fruits and idk", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/VEZ2/NEVAHUB/main/2'))()
end)

ScriptsSection:NewButton("Prison life GUI", "A script for a old game", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))();
end)

ScriptsSection:NewButton("BlackTrap", "Works only on ninja legends and PSX", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/BdvUGb2q"))()
end)

ScriptsSection:NewButton("Dex", "A arsenal script", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/HonestlyDex/DexHub/main/V3.lua"))()
end)

ScriptsSection:NewButton("Arsenal Lean", "A arsenal script", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/KeoneGithub/KeoneGithub/main/Arsenal",true))()
end)

--HUBS
local Hubs = Window:NewTab("Hubs")
local HubsSection = Hubs:NewSection("Hubs")

HubsSection:NewButton("Zen Hub", "Has Key", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Loader'))()
end)

HubsSection:NewButton("Space Hub", "Idk about this", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/SpaceHubLoader"))()
end)

HubsSection:NewButton("Ice Hub", "Why it keeps getting cold when you press this", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
end)

HubsSection:NewButton("Ace Hub", "Why it keeps getting hot when you press this", function()
    loadstring(game:HttpGet('http://acehub.pro/api/whitelist'))()
end)

HubsSection:NewButton("Eternity Hub", "This hub cannot be disappearing why..", function()
    local a="https://eternityhub.xyz/Script"local b=a.."/Eternity.lua"loadstring(game:HttpGet(b))()
end)

HubsSection:NewButton("Strike Hub", "Idk", function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/DEV-TK02/StrikeHubV2/main/Loader', true))()
end)


--LOCAL PLAYER
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("Walkspeed", "Omg FLASH!?", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewButton("FE Flip", "Z for Front, X for back", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/xi23b40Y"))()
end)