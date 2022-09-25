local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Limited Words By Pradaasv", "DarkTheme")


-- Stuff
local Main = Window:NewTab("Trolling")
local MainSection = Main:NewSection("Trolling")
local MiscSection = Window:NewTab("Misc")
local MiscSection = MiscSection:NewSection("Misc")

-- Scripts

MainSection:NewButton("Annoy Mods", "Call Mods To Server", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/mDNjZbCM"))();
end)

MainSection:NewButton("Waste Words", "Waste them all!", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/4Dqhffsm"))();
end)

MiscSection:NewButton("Get Joseph Badge", "Joseph Badge!", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/vXDybhEB"))();
end)