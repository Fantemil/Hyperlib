local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("BACON HUB", "Sentinel")

local Tab = Window:NewTab("Ragdoll Engine")
local RagdollEngineSection = Tab:NewSection("RagdollEngine")
RagdollEngineSection:NewButton("Cryptonic Hub", "Script Op Thanks for the creators!", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/martinelcrac/cryptonichub/main/Ragdollengine.lua'))()
end)
RagdollEngineSection:NewButton("Fly", "Coming soon!", function()
    loadstring(game:HttpGet(''))()
end)

local Tab = Window:NewTab("Arsenal")
local ArsenalSection = Tab:NewSection("Arsenal")
ArsenalSection:NewButton("Darkhub", "Script op credits to the creators!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init", true))()
end)

ArsenalSection:NewButton("DexHub v2", "Script op credits to the creators", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HonestlyDex/DexHub/main/Arsenal"))()
end)

local Tab = Window:NewTab("Piggy")
local PiggySection = Tab:NewSection("Piggy")
PiggySection:NewButton("Piggy script", "Piggy script credits to the creators!", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/lolpoppyus/Roblox-Lua/master/Piggy'),true))()
end)

PiggySection:NewButton("Vynixius", "Piggy op script credits to the creators!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Piggy/Piggy"))()
end)

local Tab = Window:NewTab("Bedwars")
local BedwarsSection = Tab:NewSection("Bedwars")
BedwarsSection:NewButton("Vape v4", "Bedwars op script credits to creators!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
end)

BedwarsSection:NewButton("Rise Script", "Bedwars op script credits to creators!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/RiseForRoblox/main/main.lua", true))()
end)

BedwarsSection:NewButton("Future Script", "Bedwars op script credits to creators!", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/joeengo/Future/main/loadstring.lua', true))()
end)






























local Tab = Window:NewTab("Credits")
local CreditsSection = Tab:NewSection("Credits")
CreditsSection:NewLabel("Thanks to all creators!")

CreditsSection:NewLabel("More Scripts Coming Soon!")