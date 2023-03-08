local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("HomerWare Hub", "BloodTheme")

--Main
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")


MainSection:NewButton("Marine Hub", "OP Hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Hypious/Marine-Hub/main/Main"))()
end)

MainSection:NewButton("VG HUB", "Good For Simulator And fps GAMES 110+ Games", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
end)

MainSection:NewButton("Fnf Script", "Best Fnf Script Ever", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()
end)

MainSection:NewButton("Piano v7", "Auto Piano V7 Needs Key", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/JxcExploit/LOLKIDDO/main/AutoPlayPianoV7'))()
end)

MainSection:NewButton("Doors Script V1", "Best Needs Key", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
end)

MainSection:NewButton("Doors Script v2", "Worse than v1 but keyless", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/OminousVibes-Exploit/Scripts/main/doors/main.lua"))()
end)

MainSection:NewButton("Infinity Yeild", "Best Admin Commands", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

MainSection:NewButton("Ultra Hub", "Psx Strongman Simulator ETC", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZaRdoOx/Ultra-Hub/main/Main"))()
end)

MainSection:NewButton("Proxima HUB", "One Of The Best Hubs In The World", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()
end)

MainSection:NewButton("Rebirth Champions X ", "INSANELY OP", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KrystekYTpv/Scripts/main/RebirthChampionsX.lua", true))()
end)


local Bedwars = Window:NewTab("Bedwars")
local BedwarsSection = Bedwars:NewSection("Bedwars Scripts")


BedwarsSection:NewButton("RektSky", "Op With Vape v4", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/8pmX8/rektsky4roblox/main/mainscript.lua"))()
end)

BedwarsSection:NewButton("Ape V6", "Vape v4 remastered", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Fazedrab/ApeV6ForRoblox/main/NewMainScript.lua", true))()
end)

BedwarsSection:NewButton("Sape", "why u here get out", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vodxn/sape/main/Initiate.lua"))()
end)

BedwarsSection:NewButton("Engoware", "Idk what to say", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/joeengo/engoware/main/Main.lua"))()
end)

BedwarsSection:NewButton("vape v4", "Main vape v4", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
end)


local Misc  = Window:NewTab("Misc")
local MiscSection = Misc:NewSection("Misc Scripts")

MiscSection:NewSlider("Speed", "SuperIdolSonic", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

MiscSection:NewSlider("HighJump", "SuperIdolSonic", 5000, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)


local Universal  = Window:NewTab("Universal")
local UniversalSection = Universal:NewSection("Universal Scripts")

UniversalSection:NewButton("Animation Changer", "Changes ur animation Not FE", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/ShiroSeby/Seby-s-Lair/main/R15%20Animation%20Changer'), true))()
end)

UniversalSection:NewButton("FPS BOOSTER", "Boost FPS", function()
-- Made by RIP#6666
_G.Settings = {
    Players = {
        ["Ignore Me"] = true, -- Ignore your Character
        ["Ignore Others"] = true -- Ignore other Characters
    },
    Meshes = {
        Destroy = false, -- Destroy Meshes
        LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
    },
    Images = {
        Invisible = true, -- Invisible Images
        LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
        Destroy = false, -- Destroy Images
    },
    Other = {
        ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
        ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
        ["No Explosions"] = true, -- Makes Explosion's invisible
        ["No Clothes"] = true, -- Removes Clothing from the game
        ["Low Water Graphics"] = true, -- Removes Water Quality
        ["No Shadows"] = true, -- Remove Shadows
        ["Low Rendering"] = true, -- Lower Rendering
        ["Low Quality Parts"] = true -- Lower quality parts
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
end)

UniversalSection:NewButton("Auto Grammar", "Idk Why U Need This But Its Cool IG?", function()
    shared.CustomCorrections = {
        ["examplething12"] = "hello" -- if you say "examplething12" it will become hello
    }
    loadstring(game:HttpGet("https://raw.githubusercontent.com/eosuwu/boblox/main/autogremer.lua"))()
end)

UniversalSection:NewButton("Universal Hub", "One Of The Best UIS I Have ever Seen", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/orca/master/public/snapshot.lua"))()
end)


local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("Credits")

CreditsSection:NewTextBox("Not_zentical#4847", "No One Else Except the script owners", function(txt)
 print(txt)
end)


local Setting = Window:NewTab("Setting")
local SettingSection = Setting:NewSection("Setting")

SettingSection:NewKeybind("Toggle UI", "Close/Open UI", Enum.KeyCode.BackSlash, function()
 Library:ToggleUI()
end)

MainSection:NewButton("Smox Hub", "OP HUB!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SmoxHub/SmoxHub/main/Word%20Bomb"))()
end)

MainSection:NewButton("Murder Mystery 2", "OP", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ethanoj1/EclipseMM2/master/Script", true))()
end)

MainSection:NewButton("Kat OP GUI", "What To Say Uhm Hi", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/6rd91GZx", true))()
end)

MainSection:NewButton("Owl Hub", "Im a Owl", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
end)

MainSection:NewButton("Combat Warriors", "I Can combo in minecraft :(", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SpiritXmas/Project-Hook/main/required.lua"))()
end)