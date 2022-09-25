
function addscript(Place,Gamename,title,author,scriptlink)
    if game.PlaceId == Place then
        Window = _G.Window
        _G.main = Window:NewTab(Gamename)
        main = _G.main
        _G.script = main:NewSection("---Scripts---")
        _G.script:NewButton(title, author, function()
            loadstring(game:HttpGet(scriptlink))()
        end)
    end
end

function addscriptexist(Place,title,author,scriptlink)
    if game.PlaceId == Place then
        _G.script:NewButton(title, author, function()
            loadstring(game:HttpGet(scriptlink))()
            end)
    end
        
end
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Library/kavo-ui.lua"))()
_G.Window = Library.CreateLib("Hyperlib", "BloodTheme")
Window = _G.Window
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)

local generalscripts = Window:NewTab("General")
local generalscriptssection = generalscripts:NewSection("---General Scripts---")

generalscriptssection:NewButton("Infinite Yield", "Made by EdgeIY and more", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

local gamehubs = Window:NewTab("Game Hubs")
local gamehubsection = gamehubs:NewSection("---Game Hubs---")
gamehubsection:NewButton("Owl Hub", "Made by Google Chrome and CriShoux", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
end)

gamehubsection:NewButton("Zephyr X", "Made by ZEPHYR", function()
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ECLIPSEXHUB/ECLIPSE-X/main/ECLIPSE%20X.txt", true))()
        end)
end)

gamehubsection:NewButton("V.G-Hub", "Made by 1201for", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub"))()
end)

gamehubsection:NewButton("Nex Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CopyReal/NexHub/main/NexHubLoader"))()
end)

gamehubsection:NewButton("Uzu Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/uzu01/lua/main/loader.lua"))()
end)
local Keybinds = Window:NewTab("Keybinds")
local KeybindsSection = Keybinds:NewSection("---Keybinds---")
KeybindsSection:NewKeybind("Toggle UI", "Press F To toggle the Hyperlib UI (Click to change Keybind)", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("---Credits---")
local CreditsSection2 = Credits:NewSection("Made by Fantemil#2549")
local CreditsSection3 = Credits:NewSection("Powered by a python selenium bot")
--Work at a Pizza Place

if game.PlaceId == 192800 then 
    local main = Window:NewTab("Work at a Pizza Place")
    _G.script = main:NewSection("---Scripts---")
    
    _G.script:NewButton("FE Gui with Autofarm", "Made by ameicaa, distributed through TurkOyuncu99", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Work%20at%20a%20Pizza%20Place/TurkOyuncu99.lua"))()
    end)

    _G.script:NewButton("Normal Autofarm", "Made by unknown", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Work%20at%20a%20Pizza%20Place/Work%20at%20a%20Pizza%20Place%20Autofarm.lua"))()     
    end)
end

-- Da Hood

if game.PlaceId == 2788229376 then
    local main = Window:NewTab("Da Hood")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("TrustBoy GUI", "Made by GS21", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Da%20Hood/TrustBoy.lua"))()
        end)

    _G.script:NewButton("Lates GUI", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Da%20Hood/Lates%20GUI.lua"))()
        end)
end

-- Build a Boat

if game.PlaceId == 537413528 then
    local main = Window:NewTab("Build A Boat")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Krypton Alpha", "Distributed by Defaultpfpuser#4282", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Build%20A%20Boat%20For%20Treasure/Krypton.lua"))()
        end)

    _G.script:NewButton("Vynixius BABFT", "Made by Vynixu", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Build%20A%20Boat%20For%20Treasure/Vynixius%20BABFT.lua"))()
        end)
    
        
    _G.script:NewButton("BABFT GUI", "Made by Unknown", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Build%20A%20Boat%20For%20Treasure/(Open%20Source)%20BABFT%20GUI.lua"))()
        end)
end

-- Madcity

if game.PlaceId == 1224212277 then

    local main = Window:NewTab("Madcity")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("TurkOyuncu99 Gui", "Made by TurkOyuncu99", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Mad%20City/(Open%20Source)%20TurkOyuncu99.lua"))()
        end)

    _G.script:NewButton("BLACKGAMER1221 Gui", "Made by BLACKGAMER1221", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Mad%20City/BLACKGAMER1221.lua"))()
        end)

    _G.script:NewButton("Mad-lads V7", "Made by ???", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Mad%20City/Mad-lads%20V7.lua"))()
        end)

    _G.script:NewButton("XP Farm Script", "Made by Unknown", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Mad%20City/Infinite%20XP.lua"))()
        end)
end

--Bloxfruits

if game.PlaceId == 2753915549 then

    local main = Window:NewTab("Blox Fruits")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Astro Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/BloxFruits/Astro%20Hub.lua"))()
        end)

    _G.script:NewButton("Fusion Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/BloxFruits/Fusion%20Hub.lua"))()
        end)
    
    _G.script:NewButton("Maru Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/BloxFruits/Maru%20Hub.lua"))()
        end)

    _G.script:NewButton("Netna Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/BloxFruits/Netna%20Hub.lua"))()
        end)

    _G.script:NewButton("Power X", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/BloxFruits/Power%20X.lua"))()
        end)

    _G.script:NewButton("Smz Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/BloxFruits/Smz%20Hub.lua"))()
        end)

    _G.script:NewButton("Evo X Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/BloxFruits/EVO%20X%20Hub.lua"))()
        end)

    _G.script:NewButton("Ripper Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/BloxFruits/Ripper%20Hub.lua"))()
        end)
end

-- Pet sim X

if game.PlaceId == 6284583030 then

    local main = Window:NewTab("Pet simulator X")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("BK pet", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Pet%20Simulator%20X/BK%20pet.lua"))()
        end)

    _G.script:NewButton("Black Trap", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Pet%20Simulator%20X/Black%20Trap.lua"))()
        end)
    
    _G.script:NewButton("Dino Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Pet%20Simulator%20X/Dino%20Hub.lua"))()
        end)

    _G.script:NewButton("HOHO Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Pet%20Simulator%20X/HOHO%20Hub.lua"))()
        end)

    _G.script:NewButton("Project Meow", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Pet%20Simulator%20X/Project%20Meow%20loader.lua"))()
        end)

    _G.script:NewButton("Saza Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Pet%20Simulator%20X/Saza%20Hub.lua"))()
        end)

    _G.script:NewButton("Shiny Tool", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Pet%20Simulator%20X/Shiny%20Tool.lua"))()
        end)

    _G.script:NewButton("Wisteria GUI", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Pet%20Simulator%20X/Wisteria%20GUI.lua"))()
        end)

    _G.script:NewButton("(KEY) EzPets", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Pet%20Simulator%20X/Ez%20Pet.lua"))()
        end)

    _G.script:NewButton("Floppa Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Pet%20Simulator%20X/Floppa%20Hub.lua"))()
        end)
end

-- Anime Fighters

if game.PlaceId == 6299805723 then
    local main = Window:NewTab("Anime Fighters")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("KJHub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Anime%20Fighters/KJHub.lua"))()
        end)
end

--Anime Punching Simulator

if game.PlaceId == 8357510970 then
    local main = Window:NewTab("Anime Punching Simulator")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("insanedude59", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Anime%20Punching%20Simulator/(Open%20Source)%20insanedude59.lua"))()
        end)

    _G.script:NewButton("Uzu Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Anime%20Punching%20Simulator/Uzu%20Hub.lua"))()
        end)
end

--Bedwars

if game.PlaceId == 6872265039 then
    local main = Window:NewTab("Bedwars")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Vape V4", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Bedwars/(Open%20Source)%20Vape%20V4.lua"))()
        end)
end

--Bee Swarm Simulator

if game.PlaceId == 1537690962 then
    local main = Window:NewTab("Bee Swarm Simulator")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Get all Promocodes", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Bee%20Swarm%20Simulator/Get%20all%20Codes.lua"))()
        end)
end

--Big Paintball

if game.PlaceId == 3527629287 then
    local main = Window:NewTab("Big Paintball")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Kill all", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Big%20Paintball/(Open%20Source)%20Kill%20all.lua"))()
        end)
end

--Brookhaven

if game.PlaceId == 4924922222 then
    local main = Window:NewTab("Brookhaven")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("NocturneMoDz GUI", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Brookhaven/NocturneMoDz%20GUI.lua"))()
        end)
end

--DBZ Final-stand

if game.PlaceId == 536102540 then
    local main = Window:NewTab("DBZ Final-stand")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Auto Farm GUI", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/DBZ%20Final-stand/Autofarm%20gui.lua"))()
        end)
end

--Demonfall

if game.PlaceId == 4855457388 then
    local main = Window:NewTab("Demonfall")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Furiousfall", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Demonfall/Furiousfall.lua"))()
        end)
end

--Dungeon Quest

if game.PlaceId == 2414851778 then
    local main = Window:NewTab("Dungeon Quest")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("DR 2.0", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Dungeon%20Quest/DR%202.0.lua"))()
        end)
end

--Dunking Simulator

if game.PlaceId == 7655745946 then
    local main = Window:NewTab("Dunking Simulator")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Dunking Sim GUI", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Dunking%20Simulator/Dunking%20Simulator%20GUI.lua"))()
        end)
end

--Eternal Nightmare

if game.PlaceId == 4276247088 then
    local main = Window:NewTab("Eternal Nightmare")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("10x00", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Eternal%20Nightmare/(Open%20Source)%2010x00.lua"))()
        end)

    _G.script:NewButton("Eternal Z", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Eternal%20Nightmare/Eternal%20Z.lua"))()
        end)

    _G.script:NewButton("Tobias020108Back", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Eternal%20Nightmare/Tobias020108Back.lua"))()
        end)
end

--funky-friday

if game.PlaceId == 6447798030 then
    local main = Window:NewTab("funky-friday")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("wally-rblx local loader", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/funky-friday/(Open%20Source)%20wally-rblx%20autoplay.lua"))()
        end)

    _G.script:NewButton("wally-rblx github loader (ORIGINAL SOURCE)", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/funky-friday/wally-rblx%20autoplay%20loader.lua"))()
        end)
end

--Hide and seek extreme

if game.PlaceId == 205224386 then
    local main = Window:NewTab("Hide and seek extreme")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Bebo GUI", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Hide%20and%20seek%20extreme/Bebo%20GUI.lua"))()
        end)
end

--Islands

if game.PlaceId == 4872321990 then
    local main = Window:NewTab("Islands")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Void Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Islands/Void%20Hub.lua"))()
        end)
end

--Jailbreak

if game.PlaceId == 606849621 then
    local main = Window:NewTab("Jailbreak")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Evo V2", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Jailbreak/Evo%20V2.lua"))()
        end)
end

--Last Pirates

if game.PlaceId == 6329844902 then
    local main = Window:NewTab("Last Pirates")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("x2SPETER", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Last%20Pirates/x2SPETER.lua"))()
        end)
end

--Prison Life

if game.PlaceId == 155615604 then
    local main = Window:NewTab("Prison Life")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("SenpaiIsBest", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Prison%20Life/SenpaiIsBest.lua"))()
        end)
end

--Reaper 2

if game.PlaceId == 7056922815 then
    local main = Window:NewTab("Reaper 2")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("XTheMasterX", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Reaper%202/XTheMasterX.lua"))()
        end)
end

--Sword Factory

if game.PlaceId == 8917641854 then
    local main = Window:NewTab("Sword Factory")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Autoclicker", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Sword%20Factory/Autoclicker.lua"))()
        end)
end

--The Wild West

if game.PlaceId == 2317712696 then
    local main = Window:NewTab("The Wild West")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("V.G Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/The%20Wild%20West/V.G%20Hub.lua"))()
        end)
end

--Twopiece

if game.PlaceId == 5303541547 then
    local main = Window:NewTab("Twopiece")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Joshy#1060", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/twopiece/(Open%20Source)%20Joshy%231060.lua"))()
        end)
end

--Your Bizzare Adventure

if game.PlaceId == 2809202155 then
    local main = Window:NewTab("Your Bizzare Adventure")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("YBAHopper", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Your%20Bizzare%20Adventure/YBAHopper.lua"))()
        end)
end

--Meep City

if game.PlaceId == 370731277 then
    local main = Window:NewTab("Meep City")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Synolope", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Meep%20City/Synolope%20GUI/Loader.lua"))()
        end)
end


      
    
addscript(142823291,"Murder Mystery 2", "MurderMystery2FlyEspNoclip", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2FlyEspNoclip.lua")
                    
                    
addscriptexist(2753915549, "BloxFruitsGUIAutoFarmFastAttackMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsGUIAutoFarmFastAttackMore.lua")
    
addscript(189707,"Natural Disaster Survival", "NaturalDisasterSurvivalSpeedChangerGravityJumppower", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NaturalDisasterSurvivalSpeedChangerGravityJumppower.lua")
                    
    
addscript(10631181587,"Stone Miner Simulator 2", "StoneMinerSimulator2InfiniteRebirthTokensGems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StoneMinerSimulator2InfiniteRebirthTokensGems.lua")
                    
                    
addscriptexist(2788229376, "DaHoodTitan", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodTitan.lua")
    
addscript(8447393333,"Chocolate Factory Simulator", "ChocolateFactorySimulatorInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ChocolateFactorySimulatorInfiniteMoney.lua")
                    
    
addscript(7133467811,"Spin The Bottle", "SpinTheBottleInvincibility", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpinTheBottleInvincibility.lua")
                    
    
addscript(2533391464,"Snowman Simulator", "SnowmanSimulatorAutoFarmSnowAutoFarmPresentsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SnowmanSimulatorAutoFarmSnowAutoFarmPresentsMore.lua")
                    
    
addscript(17541193,"Pinewood Computer Core", "PinewoodComputerCoreTeleportToAreas", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PinewoodComputerCoreTeleportToAreas.lua")
                    
    
addscript(7991339063,"Rainbow Friends", "RainbowFriendsReturnItemsFullbrightPlayerModifications", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RainbowFriendsReturnItemsFullbrightPlayerModifications.lua")
                    
    
addscript(9662949425,"Punch a brick wall simulator", "PunchabrickwallsimulatorAutoSellAutoFarmAutoBuyRebriths", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PunchabrickwallsimulatorAutoSellAutoFarmAutoBuyRebriths.lua")
                    
    
addscript(8203181639,"Syrian Shenanigans", "SyrianShenanigansFastFirerate", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SyrianShenanigansFastFirerate.lua")
                    
    
addscript(5108997584,"Reason 2 Die", "Reason2DieTeleportsBuyanyitemFly", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Reason2DieTeleportsBuyanyitemFly.lua")
                    
    
addscript(7419509075,"cart ride around used car batter", "cartridearoundusedcarbatterTeleportsAutoCoinsGettools", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/cartridearoundusedcarbatterTeleportsAutoCoinsGettools.lua")
                    
    
addscript(3177438863,"Dragon Blox", "DragonBloxAutoQuestAutoFarmAutoRebirth", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBloxAutoQuestAutoFarmAutoRebirth.lua")
                    
    
addscript(5783581,"TPS", "TPSUltimateSoccerCatchBallReleaseBallAutoRun", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TPSUltimateSoccerCatchBallReleaseBallAutoRun.lua")
                    
                    
addscriptexist(2753915549, "BloxFruitsAutoFarmTeleportsAutoStats", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsAutoFarmTeleportsAutoStats.lua")
                    
addscriptexist(2788229376, "DaHoodSilentAim", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodSilentAim.lua")
    
addscript(6516141723,"DOORS", "DOORSWalkspeedFullBrightFOV", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORSWalkspeedFullBrightFOV.lua")
                    
    
addscript(6403373529,"Slap Battles", "SlapBattlesAutoFarmSlapplesTrapAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlapBattlesAutoFarmSlapplesTrapAutoFarm.lua")
                    
    
addscript(185655149,"Bloxburg", "BloxburgAutomaticPizzaDelivery", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxburgAutomaticPizzaDelivery.lua")
                    
                    
addscriptexist(1224212277, "MadCityChapter2LoopKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityChapter2LoopKillAll.lua")
                    
addscriptexist(2788229376, "DaHoodGUIAutoFarmFlyGodModeMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodGUIAutoFarmFlyGodModeMore.lua")
                    
addscriptexist(2533391464, "SnowmanSimulatorGUIAutoFarmKillAllMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SnowmanSimulatorGUIAutoFarmKillAllMore.lua")
    
addscript(2580982329,"Texting Simulator", "TextingSimulatorAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TextingSimulatorAutoFarm.lua")
                    
    
addscript(3351674303,"Driving Empire", "DrivingEmpireAutoFarmJumppowerAntiafk", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DrivingEmpireAutoFarmJumppowerAntiafk.lua")
                    
                    
addscriptexist(2753915549, "BloxFruitsGUIAutoSaberAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsGUIAutoSaberAutoFarmMore.lua")
                    
addscriptexist(2753915549, "BloxFruitsGUIAutoFarmLevelAutoNewWorldMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsGUIAutoFarmLevelAutoNewWorldMore.lua")
    
addscript(621129760,"Knife Ability Test ", "KnifeAbilityTestFreeRadio", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KnifeAbilityTestFreeRadio.lua")
                    
    
addscript(10320240572,"Easy Race Clicker ", "EasyRaceClickerAutoWinFarmAutoClickAutoRebirth", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EasyRaceClickerAutoWinFarmAutoClickAutoRebirth.lua")
                    
    
addscript(10192063645,"Thy hood ", "ThyhoodPrintPeoplescoins", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThyhoodPrintPeoplescoins.lua")
                    
    
addscript(662417684,"LUCKY BLOCKS Battlegrounds ", "LUCKYBLOCKSBattlegroundsWalkspeedJumpPowerGiveAnyBlock", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LUCKYBLOCKSBattlegroundsWalkspeedJumpPowerGiveAnyBlock.lua")
                    
    
addscript(8737602449,"PLS DONATE ", "PLSDONATEClaimAnyStand", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PLSDONATEClaimAnyStand.lua")
                    
    
addscript(488667523,"Those Who Remain ", "ThoseWhoRemainItemsEsp", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThoseWhoRemainItemsEsp.lua")
                    
    
addscript(2512643572,"Bubble Gum Simulator ", "BubbleGumSimulatorRedeemAllCodes", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BubbleGumSimulatorRedeemAllCodes.lua")
                    
    
addscript(10903978962,"Sheep Tycoon ", "SheepTycoonAutoFarmAutoSell", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SheepTycoonAutoFarmAutoSell.lua")
                    
    
addscript(4639625707,"Oil Warfare Tycoon ", "OilWarfareTycoonGunMod", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OilWarfareTycoonGunMod.lua")
                    
    
addscript(9919640604,"Gem Mining Incremental ", "GemMiningIncrementalInfiniteGems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GemMiningIncrementalInfiniteGems.lua")
                    
    
addscript(9304358188,"Find The Memes ", "FindTheMemesGetAllMemes", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FindTheMemesGetAllMemes.lua")
                    
    
addscript(9585537847,"SHADOVIS RPG ", "SHADOVISRPGGUIMultiFarmKillAuraMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SHADOVISRPGGUIMultiFarmKillAuraMore.lua")
                    
    
addscript(5796917097,"Road to Grambys ", "RoadtoGrambysGodModeFlyMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoadtoGrambysGodModeFlyMore.lua")
                    
    
addscript(10675066724,"Slime Tower Tycoon ", "SlimeTowerTycoonAutoBuySlimeAutoFarmWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlimeTowerTycoonAutoBuySlimeAutoFarmWalkspeed.lua")
                    
                    
addscriptexist(621129760, "KnifeAbilityTestWalkspeedInfYieldAutoThrow", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KnifeAbilityTestWalkspeedInfYieldAutoThrow.lua")
                    
addscriptexist(8203181639, "SyrianShenanigansInfAmmo", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SyrianShenanigansInfAmmo.lua")
    
addscript(5610197459,"gang up on people simulator", "ganguponpeoplesimulator", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ganguponpeoplesimulator.lua")
                    
    
addscript(10484095306,"CLIMB 100.000 STAIRS TO VIP! ", "CLIMB100000STAIRSTOVIPTeleportToMysteryHouse", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CLIMB100000STAIRSTOVIPTeleportToMysteryHouse.lua")
                    
                    
addscriptexist(9585537847, "SHADOVISRPGFastItemSkillsAutoCollectMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SHADOVISRPGFastItemSkillsAutoCollectMore.lua")
    
addscript(10531659515,"Shovel Battles ", "ShovelBattlesAutoFarmAutoKillAllBreakAllPlayers", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShovelBattlesAutoFarmAutoKillAllBreakAllPlayers.lua")
                    
                    
addscriptexist(662417684, "LuckyBlockBattlegroundsBlockGiver", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LuckyBlockBattlegroundsBlockGiver.lua")
    
addscript(180364455,"Survive The Disasters 2 ", "SurviveTheDisasters2Anticheatbypass", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurviveTheDisasters2Anticheatbypass.lua")
                    
                    
addscriptexist(142823291, "MurderMystery2Fly", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2Fly.lua")
    
addscript(8302406789,"Anime Lifting Simulator ", "AnimeLiftingSimulatorAutoBuyEggsAutoLiftAutoSell", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeLiftingSimulatorAutoBuyEggsAutoLiftAutoSell.lua")
                    
                    
addscriptexist(8737602449, "PLSDONATEAutoThankYouServerHopAutoSpam", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PLSDONATEAutoThankYouServerHopAutoSpam.lua")
                    
addscriptexist(2753915549, "BloxFruitsGUIAutoFarmRedeemAllCodesMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsGUIAutoFarmRedeemAllCodesMore.lua")
    
addscript(9524757503,"iHeartLand", "iHeartLandMusicTycoonInstantlycomplete", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/iHeartLandMusicTycoonInstantlycomplete.lua")
                    
                    
addscriptexist(2753915549, "BloxFruitsGUIAutoLevelFarmStackMobsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsGUIAutoLevelFarmStackMobsMore.lua")
                    
addscriptexist(2753915549, "BloxFruitsGUIFastAttackModeAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsGUIFastAttackModeAutoFarmMore.lua")
                    
addscriptexist(2753915549, "RobloxLibrary28pieces", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxLibrary28pieces.lua")
    
addscript(9133513813,"Hunted Hood ", "HuntedHoodAutoPickUp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HuntedHoodAutoPickUp.lua")
                    
    
addscript(8750997647,"Tapping Legends X ", "TappingLegendsXAutoRebirthAutoTapAutoEggs", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegendsXAutoRebirthAutoTapAutoEggs.lua")
                    
    
addscript(10148047155,"Car Mechanic Tycoon ", "CarMechanicTycoonMoneyAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarMechanicTycoonMoneyAutoFarm.lua")
                    
    
addscript(9648883891,"Festival Tycoon ", "FestivalTycoonAdd10M", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FestivalTycoonAdd10M.lua")
                    
    
addscript(7169897329,"Nanny [HORROR] ", "NannyHORRORInfiniteScreams", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NannyHORRORInfiniteScreams.lua")
                    
    
addscript(10377670005,"Kidnap Simulator ", "KidnapSimulatorAutoKidnap", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KidnapSimulatorAutoKidnap.lua")
                    
                    
addscriptexist(10377670005, "KidnapSimulator100kKidnapEverySecond", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KidnapSimulator100kKidnapEverySecond.lua")
                    
addscriptexist(2788229376, "DaHoodAimLockAntiLagSilentMode", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodAimLockAntiLagSilentMode.lua")
    
addscript(5993942214,"Rush Point ", "RushPointSkinChanger", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RushPointSkinChanger.lua")
                    
    
addscript(1344307396,"Destroy the Noob ", "DestroytheNoobGiveAllItems", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DestroytheNoobGiveAllItems.lua")
                    
    
addscript(4522347649,"[FREE ADMIN] ", "FREEADMINServerLagger", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FREEADMINServerLagger.lua")
                    
    
addscript(4997792989,"Homeless Simulator In Russia ", "HomelessSimulatorInRussiaInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HomelessSimulatorInRussiaInfiniteMoney.lua")
                    
    
addscript(2906554815,"S.W.A.T Simulator ", "SWATSimulatorInfiniteXpGetAnyGun", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SWATSimulatorInfiniteXpGetAnyGun.lua")
                    
                    
addscriptexist(192800, "WorkataPizzaPlaceAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorkataPizzaPlaceAutoFarm.lua")
    
addscript(85697719,"Kingdom Life 2 ", "KingdomLife2NameChangeForEveryPlayer", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KingdomLife2NameChangeForEveryPlayer.lua")
                    
                    
addscriptexist(2753915549, "BloxFruitsGUIAutoFarmAutoLevelMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsGUIAutoFarmAutoLevelMore.lua")
                    
addscriptexist(2788229376, "DaHoodFlyPickupKnifeAutoBuy", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodFlyPickupKnifeAutoBuy.lua")
    
addscript(9431770682,"Lost Rooms [ESP, Fly, Farm and More]", "LostRoomsESPFlyFarmandMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LostRoomsESPFlyFarmandMore.lua")
                    
    
addscript(21532277,"Notoriety ", "NotorietyWalkspeedFlyTpBypass", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NotorietyWalkspeedFlyTpBypass.lua")
                    
    
addscript(9072679513,"Anime Impact Simulator! ", "AnimeImpactSimulatorAutoTrainAutoRankAutoEnergy", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeImpactSimulatorAutoTrainAutoRankAutoEnergy.lua")
                    
    
addscript(6461766546,"A Hero's Destiny ", "AHerosDestinyAutoFarmAutoTrainAutoPunch", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AHerosDestinyAutoFarmAutoTrainAutoPunch.lua")
                    
    
addscript(961409234,"Blood Moon Tycoon ", "BloodMoonTycoonInstantServerLagger", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloodMoonTycoonInstantServerLagger.lua")
                    
                    
addscriptexist(185655149, "BloxburgPizzaDeliveryJobAutoFarmWithTpBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxburgPizzaDeliveryJobAutoFarmWithTpBypass.lua")
    
addscript(9955279341,"Infinity Sea 2 ", "InfinitySea2AutoFarmNpcAutoChestFarmKillaura", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/InfinitySea2AutoFarmNpcAutoChestFarmKillaura.lua")
                    
    
addscript(2569453732,"Rise of Nations ", "RiseofNationsUnitEspAutoDevelopCitiesMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RiseofNationsUnitEspAutoDevelopCitiesMore.lua")
                    
    
addscript(3823781113,"Saber Simulator ", "SaberSimulatorGUIAutoFarmingAutoUpgradeMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SaberSimulatorGUIAutoFarmingAutoUpgradeMore.lua")
                    
                    
addscriptexist(155615604, "PrisonLifeGetAllGunsAutoGetKeyCardSuperPunch", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLifeGetAllGunsAutoGetKeyCardSuperPunch.lua")
                    
addscriptexist(2753915549, "BloxFruitsAutoFarmLevelAutoSaberAutoStartDungeon", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsAutoFarmLevelAutoSaberAutoStartDungeon.lua")
    
addscript(2066381781,"Deadly Sins Retribution ", "DeadlySinsRetributionFastAutoSpinForMagic", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeadlySinsRetributionFastAutoSpinForMagic.lua")
                    
                    
addscriptexist(2788229376, "DaHoodAntiLockSectionTeleportsFly", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodAntiLockSectionTeleportsFly.lua")
                    
addscriptexist(2788229376, "DaHoodAnotherAimlock", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodAnotherAimlock.lua")
                    
addscriptexist(155615604, "PrisonLifeTeleportsGunModesArest", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLifeTeleportsGunModesArest.lua")
                    
addscriptexist(2753915549, "BloxFruitsAutoFarmAutoStatsTeleports", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsAutoFarmAutoStatsTeleports.lua")
                    
addscriptexist(7991339063, "RainbowFriendsAutoCollectItemsFinishAreaTeleportWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RainbowFriendsAutoCollectItemsFinishAreaTeleportWalkspeed.lua")
                    
addscriptexist(4997792989, "HomelessSimulatorInRussiaPetAutofarmInfMoney", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HomelessSimulatorInRussiaPetAutofarmInfMoney.lua")
    
addscript(9993529229,"Counter Blox", "CounterBloxRemasteredSilentAimEspAimbot", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CounterBloxRemasteredSilentAimEspAimbot.lua")
                    
    
addscript(9872472334,"Evade ", "EvadeGUIAutoFarmGodModeMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EvadeGUIAutoFarmGodModeMore.lua")
                    
                    
addscriptexist(10192063645, "ThyHoodToolCollector", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThyHoodToolCollector.lua")
    
addscript(5956785391,"Project Slayers ", "ProjectSlayersStunEffectServerBreaker", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersStunEffectServerBreaker.lua")
                    
                    
addscriptexist(488667523, "ThoseWhoRemainItemESP", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThoseWhoRemainItemESP.lua")
    
addscript(5732301513,"TRENCHES ", "TRENCHESKillAllEnemies", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TRENCHESKillAllEnemies.lua")
                    
                    
addscriptexist(3177438863, "DragonBloxGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBloxGUI.lua")
    
addscript(7502726087,"Be a Hero ", "BeaHeroAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeaHeroAutoFarm.lua")
                    
    
addscript(2248408710,"Destruction Simulator ", "DestructionSimulatorGUIModBombModGunMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DestructionSimulatorGUIModBombModGunMore.lua")
                    
    
addscript(2534724415,"Emergency Response", "EmergencyResponseLibertyCountyGUIUnlockCarsAutoATMMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EmergencyResponseLibertyCountyGUIUnlockCarsAutoATMMore.lua")
                    
                    
addscriptexist(10192063645, "ThyhoodGetExcalibur", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThyhoodGetExcalibur.lua")
                    
addscriptexist(9872472334, "EvadeTpTomapTPTosafezoneAutoJump", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EvadeTpTomapTPTosafezoneAutoJump.lua")
    
addscript(5780309044,"stands awakening ", "standsawakeningInstantlyChangeStandWalkspeedNoclip", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/standsawakeningInstantlyChangeStandWalkspeedNoclip.lua")
                    
    
addscript(3956818381,"Ninja Legends ", "NinjaLegendsDupePets", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsDupePets.lua")
                    
                    
addscriptexist(2788229376, "DaHoodAutoFarmKorbloxAutoFarmWeight", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodAutoFarmKorbloxAutoFarmWeight.lua")
    
addscript(6677985923,"Millionaire Empire Tycoon ", "MillionaireEmpireTycoonCashGiverWalkspeedJumppower", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MillionaireEmpireTycoonCashGiverWalkspeedJumppower.lua")
                    
    
addscript(1962086868,"Tower Of Hell ", "TowerOfHellGetAllGearsNOTFE", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerOfHellGetAllGearsNOTFE.lua")
                    
                    
addscriptexist(2788229376, "DaHoodAimlockTargetAimbotAntiAim", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodAimlockTargetAimbotAntiAim.lua")
    
addscript(5063021080,"My Modded Day ", "MyModdedDayTeleportsGrabAllItemsInfinityTimeStop", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyModdedDayTeleportsGrabAllItemsInfinityTimeStop.lua")
                    
    
addscript(10108131074,"Mow The Lawn! ", "MowTheLawnAutoRefilGasAutoMowAutoHatchEggs", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MowTheLawnAutoRefilGasAutoMowAutoHatchEggs.lua")
                    
    
addscript(10676523834,"Racing Rocket ", "RacingRocketAutoClickPowerAutoHatchAutoUpgradeRocket", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RacingRocketAutoClickPowerAutoHatchAutoUpgradeRocket.lua")
                    
                    
addscriptexist(2788229376, "DaHoodAimLock", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodAimLock.lua")
                    
addscriptexist(10320240572, "EasyRaceClickerFastWinAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EasyRaceClickerFastWinAutoFarm.lua")
                    
addscriptexist(621129760, "KnifeAbilityTestWalkspeedJumppowerEsp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KnifeAbilityTestWalkspeedJumppowerEsp.lua")
                    
addscriptexist(10675066724, "SlimeTowerTycoonAntiAfkAutoCollectWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlimeTowerTycoonAntiAfkAutoCollectWalkspeed.lua")
                    
addscriptexist(85697719, "KingdomLifeIINameChangeForEveryPlayer", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KingdomLifeIINameChangeForEveryPlayer.lua")
    
addscript(7415160483,"Visual Command UI Library ", "VisualCommandUILibraryCleanestCommandBarUILibrary", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VisualCommandUILibraryCleanestCommandBarUILibrary.lua")
                    
    
addscript(9414511685,"Drive Cars Down A Hill! ", "DriveCarsDownAHillCrashServer", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DriveCarsDownAHillCrashServer.lua")
                    
    
addscript(4042427666,"Anime Fighting Simulator ", "AnimeFightingSimulatorFlyAutoFarmAutoQuests", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightingSimulatorFlyAutoFarmAutoQuests.lua")
                    
    
addscript(2474168535,"Westbound ", "WestboundAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WestboundAutoFarm.lua")
                    
    
addscript(2622527242,"SCP rBreach ", "SCPrBreachInfinityCapacityEspWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SCPrBreachInfinityCapacityEspWalkspeed.lua")
                    
    
addscript(6229116934,"Hoopz ", "HoopzAimbotReachWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HoopzAimbotReachWalkspeed.lua")
                    
                    
addscriptexist(10192063645, "ThyhoodAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThyhoodAutoFarm.lua")
    
addscript(2472820296,"Ultimate Lifting Simulator ", "UltimateLiftingSimulatorGetStrenghtAutoRebrithGetSpeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UltimateLiftingSimulatorGetStrenghtAutoRebrithGetSpeed.lua")
                    
    
addscript(7180042682,"Military Tycoon ", "MilitaryTycoonAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MilitaryTycoonAutoFarm.lua")
                    
    
addscript(7952502098,"Impossible Glass Bridge Obby! ", "ImpossibleGlassBridgeObbyAutoWinInfiniteCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ImpossibleGlassBridgeObbyAutoWinInfiniteCash.lua")
                    
                    
addscriptexist(9524757503, "iHeartLandMusicTycoonGetFreeItem", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/iHeartLandMusicTycoonGetFreeItem.lua")
    
addscript(2185497593,"Arcade Island X", "ArcadeIslandXWorkingArcadeAutoFarmmoney", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArcadeIslandXWorkingArcadeAutoFarmmoney.lua")
                    
    
addscript(6289365295,"Sky's Difficulty Chart Obby ", "SkysDifficultyChartObbyAutoComplete", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SkysDifficultyChartObbyAutoComplete.lua")
                    
                    
addscriptexist(155615604, "PrisonLifeGunModeGiveGunWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLifeGunModeGiveGunWalkspeed.lua")
    
addscript(8508303900,"Tower of Flood Escape 2 ", "TowerofFloodEscape2FreeOpenCase", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofFloodEscape2FreeOpenCase.lua")
                    
                    
addscriptexist(8750997647, "TappinglegendsXAutoClickAutoRebirthAutoHatch", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappinglegendsXAutoClickAutoRebirthAutoHatch.lua")
                    
addscriptexist(8737602449, "PlsDonateAutoThankAutoBegAntiAfk", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PlsDonateAutoThankAutoBegAntiAfk.lua")
                    
addscriptexist(537413528, "BuildaboatfortreasureAutoFarmAutoBuyTeleports", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildaboatfortreasureAutoFarmAutoBuyTeleports.lua")
    
addscript(2551991523,"Broken Bones 4 ", "BrokenBones4AutoBreakBones", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrokenBones4AutoBreakBones.lua")
                    
    
addscript(648362523,"Breaking Point ", "BreakingPointAutoWin", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BreakingPointAutoWin.lua")
                    
    
addscript(102131021,"Flood Survival Waves ", "FloodSurvivalWavesChooseMapsInfinityJumpTeleports", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FloodSurvivalWavesChooseMapsInfinityJumpTeleports.lua")
                    
    
addscript(10753832846,"Axe Gui Factory ", "AxeGuiFactoryDamageLoop", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AxeGuiFactoryDamageLoop.lua")
                    
                    
addscriptexist(8737602449, "PLSDONATEAnimationsEmotesDances", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PLSDONATEAnimationsEmotesDances.lua")
                    
addscriptexist(7169897329, "NannyRedeemCodesInfStaminaBuyAnyItem", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NannyRedeemCodesInfStaminaBuyAnyItem.lua")
    
addscript(3411100258,"prtty much evry bordr gam evr ", "prttymuchevrybordrgamevrAutofarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/prttymuchevrybordrgamevrAutofarm.lua")
                    
                    
addscriptexist(7991339063, "RainbowFriendsAutoWin", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RainbowFriendsAutoWin.lua")
                    
addscriptexist(10192063645, "ThyHoodGetExcaliburSword", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThyHoodGetExcaliburSword.lua")
    
addscript(6979242564,"Noob's High Jump Per Difficulty Chart Obby ", "NoobsHighJumpPerDifficultyChartObbyAutoCompleteGame", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NoobsHighJumpPerDifficultyChartObbyAutoCompleteGame.lua")
                    
                    
addscriptexist(9872472334, "EvadeAutoFarmXpAutoTeleportReviveMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EvadeAutoFarmXpAutoTeleportReviveMore.lua")
    
addscript(9498006165,"Tapping Simulator! ", "TappingSimulatorRemoveEggHatchandClickDelay", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingSimulatorRemoveEggHatchandClickDelay.lua")
                    
                    
addscriptexist(2248408710, "DestructionSimulatorAddCoinsResetRemoveCooldown", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DestructionSimulatorAddCoinsResetRemoveCooldown.lua")
                    
addscriptexist(2788229376, "DaHoodSmoothAimLock", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodSmoothAimLock.lua")
                    
addscriptexist(2753915549, "BloxFruitsAutoFarmAutoEliteAutoSuperhuman", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsAutoFarmAutoEliteAutoSuperhuman.lua")
    
addscript(6755746130,"Fruit Juice Tycoon", "FruitJuiceTycoonRefreshedAutoFarmAutoSellAutoBuy", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FruitJuiceTycoonRefreshedAutoFarmAutoSellAutoBuy.lua")
                    
    
addscript(286090429,"Arsenal (Bolts Hub Upd) ", "ArsenalBoltsHubUpdSilentAimKillAllInstantEquip", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalBoltsHubUpdSilentAimKillAllInstantEquip.lua")
                    
                    
addscriptexist(185655149, "WelcometoBloxburgAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WelcometoBloxburgAutoFarm.lua")
    
addscript(9284097280,"Apartment Tycoon ", "ApartmentTycoonAutoBuyAutoCollectFly", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ApartmentTycoonAutoBuyAutoCollectFly.lua")
                    
    
addscript(10447882390,"Zombie Research Tycoon ", "ZombieResearchTycoonAutoCollectAutoBuyAutoMine", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieResearchTycoonAutoCollectAutoBuyAutoMine.lua")
                    
                    
addscriptexist(10631181587, "StoneMinerSimulator2ClaimAllCodesClaimsAllloginRewards", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StoneMinerSimulator2ClaimAllCodesClaimsAllloginRewards.lua")
                    
addscriptexist(2788229376, "DaHoodCashCollectFlyNoclip", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodCashCollectFlyNoclip.lua")
                    
addscriptexist(10631181587, "StoneMinerSimulator2AutoRebirth", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StoneMinerSimulator2AutoRebirth.lua")
    
addscript(9829869210,"Karate Kick Simulator ", "KarateKickSimulatorKillAll", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KarateKickSimulatorKillAll.lua")
                    
    
addscript(8146731988,"Ultra Power Tycoon ", "UltraPowerTycoonInfJumpPlayerModificationsEsp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UltraPowerTycoonInfJumpPlayerModificationsEsp.lua")
                    
                    
addscriptexist(7952502098, "ImpossibleGlassBridgeObbyAutoFarmMoneyShowBreakingGlass", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ImpossibleGlassBridgeObbyAutoFarmMoneyShowBreakingGlass.lua")
                    
addscriptexist(10675066724, "SlimeTowerTycoonAutoObbyAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlimeTowerTycoonAutoObbyAutoFarm.lua")
    
addscript(9992339729,"Longest Answer Wins ", "LongestAnswerWinsInfiniteBlocks", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LongestAnswerWinsInfiniteBlocks.lua")
                    
                    
addscriptexist(2753915549, "BloxFruitsAutoFarmAutoQuestAutoSetSpawnPoint", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsAutoFarmAutoQuestAutoSetSpawnPoint.lua")
    
addscript(893973440,"Flee The Facility ", "FleeTheFacilityESPTptocompWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FleeTheFacilityESPTptocompWalkspeed.lua")
                    
    
addscript(9264596435,"Idle Heroes Simulator! ", "IdleHeroesSimulatorAutoFarmAutoHireAutoUpgr", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/IdleHeroesSimulatorAutoFarmAutoHireAutoUpgr.lua")
                    
    
addscript(2686040248,"Math Obby ", "MathObbyShowCorrectDoors", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MathObbyShowCorrectDoors.lua")
                    
    
addscript(8540168650,"Stand Upright", "StandUprightRebootedAutoFarmItemsFarmAutoBuy", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StandUprightRebootedAutoFarmItemsFarmAutoBuy.lua")
                    
                    
addscriptexist(5063021080, "MyModdedDayWalkspeedGraballItemsTeleports", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyModdedDayWalkspeedGraballItemsTeleports.lua")
    
addscript(10652184030,"Jump Clicker ", "JumpClickerInfiniteStatsAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JumpClickerInfiniteStatsAutoFarm.lua")
                    
    
addscript(183364845,"Speed Run 4 ", "SpeedRun4AutoFarmGems", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedRun4AutoFarmGems.lua")
                    
                    
addscriptexist(1962086868, "TowerOfHellRemoveAnticheatRemoveFogGiveallitems", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerOfHellRemoveAnticheatRemoveFogGiveallitems.lua")
    
addscript(8884433153,"Collect All Pets! ", "CollectAllPetsAutoFarmAutoCollectAutoClaimRewards", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CollectAllPetsAutoFarmAutoCollectAutoClaimRewards.lua")
                    
                    
addscriptexist(9992339729, "LongestAnswerWinsUnlimitedBlocks", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LongestAnswerWinsUnlimitedBlocks.lua")
                    
addscriptexist(10320240572, "EasyRaceClickerFastAutoWinAutoRebirthAutoSpeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EasyRaceClickerFastAutoWinAutoRebirthAutoSpeed.lua")
                    
addscriptexist(9992339729, "LongestAnswerWinsBlocksChanger", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LongestAnswerWinsBlocksChanger.lua")
                    
addscriptexist(537413528, "BuildABoatForTreasureAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureAutoFarm.lua")
    
addscript(4616652839,"Shindo Life ", "ShindoLifeAutofarmMobsAutoKeyPressInfiniteJump", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoLifeAutofarmMobsAutoKeyPressInfiniteJump.lua")
                    
    
addscript(9630689264,"Hood Genesis ", "HoodGenesisDeleteAllDoorsInstantKillGotoRandom", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HoodGenesisDeleteAllDoorsInstantKillGotoRandom.lua")
                    
                    
addscriptexist(2788229376, "DaHoodTeleportsEspAimlock", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodTeleportsEspAimlock.lua")
                    
addscriptexist(142823291, "MurderMystery2SilentAimSpeedHaxKillAll", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2SilentAimSpeedHaxKillAll.lua")
                    
addscriptexist(4924922222, "BrookhavenRPTeleports", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrookhavenRPTeleports.lua")
                    
addscriptexist(3956818381, "NinjaLegendsAutoSwingAutoSellUnlockAllElements", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsAutoSwingAutoSellUnlockAllElements.lua")
                    
addscriptexist(286090429, "ArsenalHitboxExpanderESP", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalHitboxExpanderESP.lua")
                    
addscriptexist(155615604, "PrisonLifeBtoolsFlyWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLifeBtoolsFlyWalkspeed.lua")
                    
addscriptexist(142823291, "MurderMystery2KillAllKillSheriffGodModeSilentAim", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2KillAllKillSheriffGodModeSilentAim.lua")
    
addscript(335760407,"TPS", "TPSUltimateSoccerInfStaminaAutoGKReach", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TPSUltimateSoccerInfStaminaAutoGKReach.lua")
                    
                    
addscriptexist(9585537847, "SHADOVISRPGAutoCollectCubitsAutoRebirthKillAura", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SHADOVISRPGAutoCollectCubitsAutoRebirthKillAura.lua")
    
addscript(9049840490,"Sonic Speed Simulator ", "SonicSpeedSimulatorAutoWinRaceAutoRunAutoRebirth", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulatorAutoWinRaceAutoRunAutoRebirth.lua")
                    
                    
addscriptexist(9264596435, "IdleHeroesSimulatorAutoHitAutoBuyHeroes", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/IdleHeroesSimulatorAutoHitAutoBuyHeroes.lua")
                    
addscriptexist(2753915549, "BloxFruitsChestFarmTeleportsVisuals", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsChestFarmTeleportsVisuals.lua")
                    
addscriptexist(8540168650, "StandUprightRebootedStandFarmItemFarmQuestFarming", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StandUprightRebootedStandFarmItemFarmQuestFarming.lua")
                    
addscriptexist(142823291, "MurderMystery2XRayChamsEspAutoFarms", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2XRayChamsEspAutoFarms.lua")
                    
addscriptexist(3177438863, "DragonBloxAutoMultiplierZoneAutoAttackAutoRebirth", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBloxAutoMultiplierZoneAutoAttackAutoRebirth.lua")
                    
addscriptexist(3177438863, "DragonBloxAutoAttackAutoRebirth", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBloxAutoAttackAutoRebirth.lua")
                    
addscriptexist(10192063645, "ThyHoodAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThyHoodAutoFarm.lua")
    
addscript(1242235469,"ball and axe ", "ballandaxeUnlockYourAxeRemoveLimits", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ballandaxeUnlockYourAxeRemoveLimits.lua")
                    
    
addscript(9417197334,"Anime Story ", "AnimeStoryAutoFarmAutoQuest", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeStoryAutoFarmAutoQuest.lua")
                    
                    
addscriptexist(6229116934, "HoopzGUIAimbotSilentAim", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HoopzGUIAimbotSilentAim.lua")
                    
addscriptexist(2788229376, "DaHoodGUIAimLockSilentAimMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodGUIAimLockSilentAimMore.lua")
    
addscript(8482451541,"Brick Defense ", "BrickDefenseAutoAddsTowersWhenReleased", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrickDefenseAutoAddsTowersWhenReleased.lua")
                    
    
addscript(6874129651,"Vynixus Teleport Tool ", "VynixusTeleportToolWorksForJailbreakMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VynixusTeleportToolWorksForJailbreakMore.lua")
                    
                    
addscriptexist(537413528, "BuildABoatForTreasureGUIAutoFarmUtilitesMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureGUIAutoFarmUtilitesMore.lua")
                    
addscriptexist(142823291, "MurderMystery2GUIGodModeKillAuraMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2GUIGodModeKillAuraMore.lua")
                    
addscriptexist(8750997647, "TappingLegendsXGUIAutoClickAutoRebirthMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegendsXGUIAutoClickAutoRebirthMore.lua")
                    
addscriptexist(8884433153, "CollectAllPetsAutoClaimDailyEggAutoFarmTPEgg", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CollectAllPetsAutoClaimDailyEggAutoFarmTPEgg.lua")
                    
addscriptexist(2788229376, "DaHoodSimpleAimLock", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodSimpleAimLock.lua")
                    
addscriptexist(9264596435, "IdleHeroesSimulatorAutoFarmAutoUpgrade", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/IdleHeroesSimulatorAutoFarmAutoUpgrade.lua")
                    
addscriptexist(10320240572, "EasyRaceClickerFastAutoWin", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EasyRaceClickerFastAutoWin.lua")
    
addscript(10508296878,"Murder Mystery 7 ", "MurderMystery7RedeemAllCodes", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery7RedeemAllCodes.lua")
                    
                    
addscriptexist(1224212277, "MadCityAutoFarmEXP", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityAutoFarmEXP.lua")
                    
addscriptexist(3527629287, "BIGPaintballUnlockAll", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BIGPaintballUnlockAll.lua")
                    
addscriptexist(621129760, "KnifeAbilityTestSilentAimAimTorsoFov", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KnifeAbilityTestSilentAimAimTorsoFov.lua")
                    
addscriptexist(286090429, "ArsenalAimlockEspAimKey", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalAimlockEspAimKey.lua")
                    
addscriptexist(2788229376, "DaHoodSilentAimanotherversion", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodSilentAimanotherversion.lua")
    
addscript(10275942471,"Color Race! ", "ColorRaceGetalotofWinsSpeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ColorRaceGetalotofWinsSpeed.lua")
                    
    
addscript(8227619186,"Murder Mystery A ", "MurderMysteryAGemsAutoFarmWalkspeedInfJump", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMysteryAGemsAutoFarmWalkspeedInfJump.lua")
                    
    
addscript(5490351219,"Clicker Madness! ", "ClickerMadnessAutoFarmBossFarmClaimFlags", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerMadnessAutoFarmBossFarmClaimFlags.lua")
                    
                    
addscriptexist(9648883891, "FestivalTycoonAutoEndTycoon", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FestivalTycoonAutoEndTycoon.lua")
    
addscript(10714365287,"Anime Race Clicker ", "AnimeRaceClickerAutoFarmAutoHatchUnlockWorlds", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeRaceClickerAutoFarmAutoHatchUnlockWorlds.lua")
                    
    
addscript(9030362964,"Field Goal Simulator ", "FieldGoalSimulatorAutoFarmGoals", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FieldGoalSimulatorAutoFarmGoals.lua")
                    
                    
addscriptexist(10320240572, "EasyRaceClickerAutoRebirthAutoWinRacesAutoSpeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EasyRaceClickerAutoRebirthAutoWinRacesAutoSpeed.lua")
                    
addscriptexist(7952502098, "ImpossibleGlassBridgeObbyAutoWinInfinityCash", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ImpossibleGlassBridgeObbyAutoWinInfinityCash.lua")
    
addscript(10439295403,"Anime Champions ", "AnimeChampionsGUIKillAuraAutoQuestMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeChampionsGUIKillAuraAutoQuestMore.lua")
                    
                    
addscriptexist(6447798030, "FunkyFridayAutoPlayerHitchancesUnlockables", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FunkyFridayAutoPlayerHitchancesUnlockables.lua")
    
addscript(920587237,"Adopt Me! ", "AdoptMeAutoFarmFunFunctionsFly", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMeAutoFarmFunFunctionsFly.lua")
                    
    
addscript(10524502174,"One Punch Fighters Simulator ", "OnePunchFightersSimulatorAutoFarmAutoDeleteAutoBuy", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OnePunchFightersSimulatorAutoFarmAutoDeleteAutoBuy.lua")
                    
                    
addscriptexist(10484095306, "CLIMB100000STAIRSTOVIPTeleportToEnd", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CLIMB100000STAIRSTOVIPTeleportToEnd.lua")
                    
addscriptexist(10484095306, "CLIMB100000STAIRSTOVIPTeleporttoMysteryHouse", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CLIMB100000STAIRSTOVIPTeleporttoMysteryHouse.lua")
                    
addscriptexist(9498006165, "TappingSimulatorAutoClickAutoRebirth", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingSimulatorAutoClickAutoRebirth.lua")
                    
addscriptexist(286090429, "ArsenalSilentAimEsp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalSilentAimEsp.lua")
    
addscript(318978013,"Kick Off ", "KickOffInstantGoalsFOVGravity", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KickOffInstantGoalsFOVGravity.lua")
                    
                    
addscriptexist(9662949425, "PunchabrickwallsimulatorInfBonesAutoUpAutoRebirth", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PunchabrickwallsimulatorInfBonesAutoUpAutoRebirth.lua")
    
addscript(277751860,"Epic Minigames ", "EpicMinigamesWalkspeedInfinityJumpClickTP", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EpicMinigamesWalkspeedInfinityJumpClickTP.lua")
                    
    
addscript(6804602922,"BOXING BETA! ", "BOXINGBETAWalkspeedRagdollInfDodgeStamina", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BOXINGBETAWalkspeedRagdollInfDodgeStamina.lua")
                    
                    
addscriptexist(8146731988, "UltraPowerTycoonAutoCollectAutoBuyWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UltraPowerTycoonAutoCollectAutoBuyWalkspeed.lua")
    
addscript(6608498361,"cursed tank simulator ", "cursedtanksimulatorKillAllTanks", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/cursedtanksimulatorKillAllTanks.lua")
                    
    
addscript(8894888083,"Pinata Legends ", "PinataLegendsInfinityGemsandCoins", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PinataLegendsInfinityGemsandCoins.lua")
                    
                    
addscriptexist(9992339729, "LongestAnswerWinsInfinityBlocks", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LongestAnswerWinsInfinityBlocks.lua")
    
addscript(5498056786,"Handball Association ", "HandballAssociationInfinityStamina", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HandballAssociationInfinityStamina.lua")
                    
                    
addscriptexist(2066381781, "DeadlySinsRetributionAutoSpinRace", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeadlySinsRetributionAutoSpinRace.lua")
                    
addscriptexist(2066381781, "DeadlySinsRetributionAutoSpinMagic", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeadlySinsRetributionAutoSpinMagic.lua")
    
addscript(1554960397,"Car Dealership Tycoon ", "CarDealershipTycoonAutoFarmAutoDrive", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarDealershipTycoonAutoFarmAutoDrive.lua")
                    
    
addscript(2537430692,"Jenga ", "JengaWinGameFly", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JengaWinGameFly.lua")
                    
    
addscript(3214114884,"Flag Wars! ", "FlagWarsHitboxChams", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FlagWarsHitboxChams.lua")
                    
                    
addscriptexist(6516141723, "DOORSAutoSkipLvlInstantInteract", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORSAutoSkipLvlInstantInteract.lua")
                    
addscriptexist(8737602449, "PLSDONATEFlyWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PLSDONATEFlyWalkspeed.lua")
    
addscript(4913581664,"Cart Ride Into Rdite! ", "CartRideIntoRditeAutoClick", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CartRideIntoRditeAutoClick.lua")
                    
    
addscript(6610021055,"Noob Army Tycoon ", "NoobArmyTycoonInfiniteGems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NoobArmyTycoonInfiniteGems.lua")
                    
                    
addscriptexist(9648883891, "FestivalTycoonInfiniteCashGetFreeItems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FestivalTycoonInfiniteCashGetFreeItems.lua")
    
addscript(7138009149,"PHIGHTING! ", "PHIGHTINGInfiniteCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PHIGHTINGInfiniteCash.lua")
                    
    
addscript(9742783208,"Raise a Yippee ", "RaiseaYippeeAutoClickAutoFood", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaiseaYippeeAutoClickAutoFood.lua")
                    
    
addscript(8891045283,"Find The Bacons ", "FindTheBaconsGetAllBacons", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FindTheBaconsGetAllBacons.lua")
                    
                    
addscriptexist(2753915549, "RobloxGPUSaver", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxGPUSaver.lua")
    
addscript(298400657,"Dragon Ball Final Remastered ", "DragonBallFinalRemasteredGUIInfiniteKiInfiniteStamina", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBallFinalRemasteredGUIInfiniteKiInfiniteStamina.lua")
                    
    
addscript(7560156054,"Clicker Simulator ", "ClickerSimulatorAutoRebirthAutoClick", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerSimulatorAutoRebirthAutoClick.lua")
                    
    
addscript(5505830188,"Arcane Oblivion RPG ", "ArcaneOblivionRPGAutoBossAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArcaneOblivionRPGAutoBossAutoFarm.lua")
                    
                    
addscriptexist(2753915549, "RobloxFEChainsaw", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxFEChainsaw.lua")
                    
addscriptexist(621129760, "KnifeAbilityTestGodmodeSeverBreak", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KnifeAbilityTestGodmodeSeverBreak.lua")
    
addscript(4779613061,"Roadman", "RoadmanAshuraAutoTool", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoadmanAshuraAutoTool.lua")
                    
    
addscript(6067244110,"Flood Escape 2 Ultimate ", "FloodEscape2UltimateAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FloodEscape2UltimateAutoFarm.lua")
                    
    
addscript(10647156264,"Become a Nextbot ", "BecomeaNextbotTeleportsWalkspeedGetRareNextbots", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BecomeaNextbotTeleportsWalkspeedGetRareNextbots.lua")
                    
                    
addscriptexist(9417197334, "AnimeStoryAutoFarmSemiInstantKill", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeStoryAutoFarmSemiInstantKill.lua")
                    
addscriptexist(9662949425, "PunchabrickwallsimulatorInfiniteBonesAutoRebirth", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PunchabrickwallsimulatorInfiniteBonesAutoRebirth.lua")
                    
addscriptexist(5498056786, "HandballAssociationInfiniteStaminaNoDiveCooldown", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HandballAssociationInfiniteStaminaNoDiveCooldown.lua")
                    
addscriptexist(8146731988, "UltraPowerTycoonGUIAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UltraPowerTycoonGUIAutoFarm.lua")
                    
addscriptexist(10524502174, "OnePunchFightersGUIAutoPunchAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OnePunchFightersGUIAutoPunchAutoFarmMore.lua")
                    
addscriptexist(2580982329, "TextingSimulatorGUIFastAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TextingSimulatorGUIFastAutoFarm.lua")
                    
addscriptexist(2809202155, "YourBizarreAdventureItemFarmServerHop", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YourBizarreAdventureItemFarmServerHop.lua")
                    
addscriptexist(2753915549, "BloxFruitsBuyItemAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsBuyItemAutoFarm.lua")
                    
addscriptexist(10439295403, "AnimeChampionsAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeChampionsAutoFarm.lua")
    
addscript(10558210932,"The Test ", "TheTestWinMinigamePersonToKillChooseCorrectNumber", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheTestWinMinigamePersonToKillChooseCorrectNumber.lua")
                    
    
addscript(9551640993,"Mining Simulator 2 ", "MiningSimulator2AutoMineAutoEggsSmartSell", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2AutoMineAutoEggsSmartSell.lua")
                    
                    
addscriptexist(8884433153, "CollectAllPetsAutoEggsAutoFarmAutoCollect", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CollectAllPetsAutoEggsAutoFarmAutoCollect.lua")
                    
addscriptexist(286090429, "ArsenalInstantRespawn", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalInstantRespawn.lua")
                    
addscriptexist(9417197334, "AnimeStorySemiInfiniteGemsInfiniteCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeStorySemiInfiniteGemsInfiniteCoins.lua")
                    
addscriptexist(9417197334, "AnimeStoryAutoSummon", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeStoryAutoSummon.lua")
                    
addscriptexist(8482451541, "BrickDefenseAutoFarmGrindInfiniteTix", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrickDefenseAutoFarmGrindInfiniteTix.lua")
    
addscript(9814637986,"Slap Battles", "SlapBattlesAverageFanMadeKillGivePanelKickBan", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlapBattlesAverageFanMadeKillGivePanelKickBan.lua")
                    
                    
addscriptexist(6403373529, "SlapBattlesKillAuraAntiChaseAntiRagdollNoTimeStop", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlapBattlesKillAuraAntiChaseAntiRagdollNoTimeStop.lua")
    
addscript(9112775301,"Da Hood Fights l Auto Steal", "DaHoodFightslAutoSteal", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodFightslAutoSteal.lua")
                    
                    
addscriptexist(286090429, "ArsenalESP", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalESP.lua")
    
addscript(1343871267,"Fredbear's Mega Roleplay ", "FredbearsMegaRoleplayTransformAllMutatePlayerorallAnimatronic", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FredbearsMegaRoleplayTransformAllMutatePlayerorallAnimatronic.lua")
                    
                    
addscriptexist(2537430692, "JengaWinGameRemoveObjectsandKillBricksForceDeath", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JengaWinGameRemoveObjectsandKillBricksForceDeath.lua")
    
addscript(10604409263,"Moscow, Soviet Union ", "MoscowSovietUnion100KEverySecond", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MoscowSovietUnion100KEverySecond.lua")
                    
                    
addscriptexist(9498006165, "TappingSimulatorAutoTapAutoRebirthBetterGtx", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingSimulatorAutoTapAutoRebirthBetterGtx.lua")
                    
addscriptexist(6284583030, "PetSimulatorXAutoFarmAutoCollect", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmAutoCollect.lua")
                    
addscriptexist(920587237, "AdoptMeGUIAutoFarmFunFunctions", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMeGUIAutoFarmFunFunctions.lua")
                    
addscriptexist(1962086868, "TowerofHellAutoWinInfJumpsFinish", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofHellAutoWinInfJumpsFinish.lua")
    
addscript(4556951723,"Ragdoll Physics ", "RagdollPhysicsFreeBadge", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RagdollPhysicsFreeBadge.lua")
                    
                    
addscriptexist(9133513813, "HuntedHoodAutoSteal", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HuntedHoodAutoSteal.lua")
    
addscript(6753004901,"Swing City ", "SwingCityUnlockAllSkillsFarmMoneyInstantQuests", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwingCityUnlockAllSkillsFarmMoneyInstantQuests.lua")
                    
    
addscript(5343994291,"Outlaster ", "OutlasterAutoFishEspInfJump", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OutlasterAutoFishEspInfJump.lua")
                    
                    
addscriptexist(10439295403, "AnimeChampionsKillAuraResetSkillPointsAutoQuest", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeChampionsKillAuraResetSkillPointsAutoQuest.lua")
                    
addscriptexist(2788229376, "DaHoodInfStaminaFlyEsp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodInfStaminaFlyEsp.lua")
                    
addscriptexist(155615604, "PrisonLife500Ammo", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLife500Ammo.lua")
    
addscript(7026828578,"Roblox [Lines maker]", "RobloxLinesmaker", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxLinesmaker.lua")
                    
    
addscript(9807416796,"De Hood [Server Crash]", "DeHoodServerCrash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeHoodServerCrash.lua")
                    
    
addscript(3237168,"One Piece", "OnePieceLegendaryAutoStealFruitAutoStore", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OnePieceLegendaryAutoStealFruitAutoStore.lua")
                    
    
addscript(8534845015,"Sakura Stand [Item Esp, Dummy Farm, DummyGod & More!]", "SakuraStandItemEspDummyFarmDummyGodMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SakuraStandItemEspDummyFarmDummyGodMore.lua")
                    
    
addscript(8962384769,"Firework Simulator [AutoFarm, KillAura]", "FireworkSimulatorAutoFarmKillAura", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FireworkSimulatorAutoFarmKillAura.lua")
                    
    
addscript(7075737729,"Hoop Central 6 ", "HoopCentral6AntiCheatBypasssBypassItemBypass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HoopCentral6AntiCheatBypasssBypassItemBypass.lua")
                    
                    
addscriptexist(6753004901, "SwingCityUnlockAllSkillsFarmMoneyExpFAST", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwingCityUnlockAllSkillsFarmMoneyExpFAST.lua")
                    
addscriptexist(4639625707, "WarfareTycoonKillPlayersKillitemKillAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WarfareTycoonKillPlayersKillitemKillAll.lua")
                    
addscriptexist(2788229376, "DaHoodNoClipAutoFarmFly", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodNoClipAutoFarmFly.lua")
    
addscript(8754200736,"Roblox [Anti Afk]", "RobloxAntiAfk", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxAntiAfk.lua")
                    
                    
addscriptexist(9648883891, "FestivalTycoonTpToChainmokers", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FestivalTycoonTpToChainmokers.lua")
                    
addscriptexist(2753915549, "BloxFruitsAutoFarmAutoBoss", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsAutoFarmAutoBoss.lua")
    
addscript(4588604953,"Criminality [Auto Block, Esp]", "CriminalityAutoBlockEsp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriminalityAutoBlockEsp.lua")
                    
                    
addscriptexist(8482451541, "BrickDefenseUnlockAllTowersInfiniteTix", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrickDefenseUnlockAllTowersInfiniteTix.lua")
    
addscript(5602055394,"Hood Modded ", "HoodModdedSpinEspTp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HoodModdedSpinEspTp.lua")
                    
    
addscript(5987922834,"Transfur Outbreak! ", "TransfurOutbreakAimbotVisualsAutoRejoin", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TransfurOutbreakAimbotVisualsAutoRejoin.lua")
                    
    
addscript(9361614975,"My City Tycoon ", "MyCityTycoonAutoClickAutoObyClicker", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyCityTycoonAutoClickAutoObyClicker.lua")
                    
                    
addscriptexist(9361614975, "MyCityTycoonAutoObbyAutoClick", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyCityTycoonAutoObbyAutoClick.lua")
    
addscript(5924471692,"Bloxford DarkRP ", "BloxfordDarkRPServerLagger", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxfordDarkRPServerLagger.lua")
                    
    
addscript(7369208341,"SuperHero", "SuperHeroUniverseInfinityTokens", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperHeroUniverseInfinityTokens.lua")
                    
                    
addscriptexist(5987922834, "TransfurOutbreakAimBotEspGetAllemotegamepass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TransfurOutbreakAimBotEspGetAllemotegamepass.lua")
                    
addscriptexist(2753915549, "BloxFruitsRedeemCodesAutoFarmChestAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsRedeemCodesAutoFarmChestAutoFarm.lua")
                    
addscriptexist(9431770682, "LostRoomsEspMaterialESPFullBright", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LostRoomsEspMaterialESPFullBright.lua")
                    
addscriptexist(2788229376, "DaHoodCashAuraNoclipAutoStomp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodCashAuraNoclipAutoStomp.lua")
    
addscript(5712833750,"Animal Simulator ", "AnimalSimulatorUnlockCharacters", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimalSimulatorUnlockCharacters.lua")
                    
                    
addscriptexist(5993942214, "RushPointEsp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RushPointEsp.lua")
    
addscript(10207722290,"Lifting Legends Simulator [Auto Farm]", "LiftingLegendsSimulatorAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LiftingLegendsSimulatorAutoFarm.lua")
                    
                    
addscriptexist(9585537847, "SHADOVISRPGAutoCollectKillAura", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SHADOVISRPGAutoCollectKillAura.lua")
    
addscript(10710676163,"SPTS ", "SPTSOriginSpeedAndJumpFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SPTSOriginSpeedAndJumpFarm.lua")
                    
                    
addscriptexist(1962086868, "TowerofHellFlyWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofHellFlyWalkspeed.lua")
                    
addscriptexist(9049840490, "SonicSpeedSimulatorAutoRaceAutoStep", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulatorAutoRaceAutoStep.lua")
                    
addscriptexist(7369208341, "SuperHeroUniverseInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperHeroUniverseInfMoney.lua")
                    
addscriptexist(10484095306, "CLIMB100000STAIRSTOVIPTeleporttoEnd", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CLIMB100000STAIRSTOVIPTeleporttoEnd.lua")
    
addscript(8884334497,"Mining Clicker Simulator [Auto Click, Auto Rebirth, Better GTX ]", "MiningClickerSimulatorAutoClickAutoRebirthBetterGTX", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningClickerSimulatorAutoClickAutoRebirthBetterGTX.lua")
                    
                    
addscriptexist(9431770682, "LostRoomsInfWhistlesFullbright", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LostRoomsInfWhistlesFullbright.lua")
                    
addscriptexist(6753004901, "SwingCityUnlockAllSkinsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwingCityUnlockAllSkinsMore.lua")
                    
addscriptexist(7369208341, "SuperHeroUniverse17InfiniteCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperHeroUniverse17InfiniteCoins.lua")
                    
addscriptexist(2066381781, "DeadlySinsRetributionTeleportToIstar", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeadlySinsRetributionTeleportToIstar.lua")
    
addscript(8704181738,"Tien Tien Piece [Auto Farm Gems In Second Sea]", "TienTienPieceAutoFarmGemsInSecondSea", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TienTienPieceAutoFarmGemsInSecondSea.lua")
                    
    
addscript(5076734934,"Rooms [Hunting Status Check GUI]", "RoomsHuntingStatusCheckGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoomsHuntingStatusCheckGUI.lua")
                    
    
addscript(6884476776,"Friend Hangout [Crash - Get All Tools & More!]", "FriendHangoutCrashGetAllToolsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FriendHangoutCrashGetAllToolsMore.lua")
                    
                    
addscriptexist(10676523834, "RacingRocketInfiniteSpeed", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RacingRocketInfiniteSpeed.lua")
    
addscript(113690124,"Noob Onslaught [Inf Money]", "NoobOnslaughtInfMoney", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NoobOnslaughtInfMoney.lua")
                    
                    
addscriptexist(6284583030, "PetSimulatorXGUIAutoFarmChestFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXGUIAutoFarmChestFarmMore.lua")
    
addscript(8540346411,"Rebirth Champions X [Auto Click, Auto Rebirth, Auto Open Egg]", "RebirthChampionsXAutoClickAutoRebirthAutoOpenEgg", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RebirthChampionsXAutoClickAutoRebirthAutoOpenEgg.lua")
                    
                    
addscriptexist(9498006165, "SlimeTowerTycoonAutoCollectAutobuySlimesAutoMerge", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlimeTowerTycoonAutoCollectAutobuySlimesAutoMerge.lua")
    
addscript(10429088113,"Jump Race [Auto Win]", "JumpRaceAutoWin", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JumpRaceAutoWin.lua")
                    
                    
addscriptexist(9872472334, "EvadeAutoFarmFastReviveMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EvadeAutoFarmFastReviveMore.lua")
    
addscript(8130299583,"Trident Survival [GUI - Esp, Aimbot & More!]", "TridentSurvivalGUIEspAimbotMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TridentSurvivalGUIEspAimbotMore.lua")
                    
    
addscript(10106105124,"Wheat Farming Simulator [Spawn Any Mythical Pet]", "WheatFarmingSimulatorSpawnAnyMythicalPet", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WheatFarmingSimulatorSpawnAnyMythicalPet.lua")
                    
    
addscript(9744954014,"THA HOOD!!! [Walkspeed, Godmode]", "THAHOODWalkspeedGodmode", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/THAHOODWalkspeedGodmode.lua")
                    
    
addscript(445664957,"Parkour [Inf Levels]", "ParkourInfLevels", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ParkourInfLevels.lua")
                    
    
addscript(4954752502,"Tower of Misery [Auto Farm - God Mode - Kill Player & More!]", "TowerofMiseryAutoFarmGodModeKillPlayerMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofMiseryAutoFarmGodModeKillPlayerMore.lua")
                    
                    
addscriptexist(7138009149, "PHIGHTINGNPCEsp", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PHIGHTINGNPCEsp.lua")
                    
addscriptexist(7138009149, "PHIGHTINGSemiGodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PHIGHTINGSemiGodMode.lua")
                    
addscriptexist(5076734934, "RoomsHuntingstatuscheck", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoomsHuntingstatuscheck.lua")
                    
addscriptexist(9872472334, "EvadeAntiKickAntiLag", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EvadeAntiKickAntiLag.lua")
                    
addscriptexist(2788229376, "DaHoodAutoFarmNoclip", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodAutoFarmNoclip.lua")
    
addscript(4809447488,"Venture Tale [AutoRetry, AutoReplay]", "VentureTaleAutoRetryAutoReplay", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VentureTaleAutoRetryAutoReplay.lua")
                    
                    
addscriptexist(10676523834, "RacingRocketFarmPoints", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RacingRocketFarmPoints.lua")
                    
addscriptexist(10676523834, "RacingRocketAutobuyEgg", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RacingRocketAutobuyEgg.lua")
    
addscript(3017870574,"2 Player Evolution Tycoon [Auto Farm]", "2PlayerEvolutionTycoonAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/2PlayerEvolutionTycoonAutoFarm.lua")
                    
                    
addscriptexist(10676523834, "RacingRocketFarmStarFast", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RacingRocketFarmStarFast.lua")
                    
addscriptexist(183364845, "SpeedRun4InfGemsAutoStars", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedRun4InfGemsAutoStars.lua")
    
addscript(8260276694,"Ability Wars [Combat Bot]", "AbilityWarsCombatBot", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AbilityWarsCombatBot.lua")
                    
    
addscript(7986132460,"Cannon Simulator [Gives the alt a pet]", "CannonSimulatorGivesthealtapet", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CannonSimulatorGivesthealtapet.lua")
                    
    
addscript(10819593230,"SLICE PVP [Inf Healt, Spam Balls]", "SLICEPVPInfHealtSpamBalls", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SLICEPVPInfHealtSpamBalls.lua")
                    
                    
addscriptexist(2809202155, "YourBizarreAdventureClickTpSuperSpeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YourBizarreAdventureClickTpSuperSpeed.lua")
                    
addscriptexist(286090429, "ArsenalFlyAimbot", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalFlyAimbot.lua")
    
addscript(2727067538,"World // Zero [AutoFarm, Walkspeed]", "WorldZeroAutoFarmWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorldZeroAutoFarmWalkspeed.lua")
                    
                    
addscriptexist(7180042682, "MilitaryTycoonAutoFarmEvent", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MilitaryTycoonAutoFarmEvent.lua")
                    
addscriptexist(662417684, "LUCKYBLOCKSBattlegroundsInfJumpWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LUCKYBLOCKSBattlegroundsInfJumpWalkspeed.lua")
    
addscript(8458333139,"1 LIFE [Fast Farm Lvl]", "1LIFEFastFarmLvl", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/1LIFEFastFarmLvl.lua")
                    
                    
addscriptexist(10676523834, "RacingRocketClickPower", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RacingRocketClickPower.lua")
                    
addscriptexist(9807416796, "DeHoodFastBuyAutoStomp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeHoodFastBuyAutoStomp.lua")
                    
addscriptexist(4779613061, "RoadmanAshuraMoneyFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoadmanAshuraMoneyFarm.lua")
                    
addscriptexist(9431770682, "LostRoomsCollectMaterials", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LostRoomsCollectMaterials.lua")
                    
addscriptexist(5505830188, "ArcaneOblivionRPG30QnDDamageWeapon", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArcaneOblivionRPG30QnDDamageWeapon.lua")
                    
addscriptexist(298400657, "DragonBallFinalRemasteredGUIHitAuraUnlockQuests", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBallFinalRemasteredGUIHitAuraUnlockQuests.lua")
                    
addscriptexist(6229116934, "HoopzBallEspAimbot", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HoopzBallEspAimbot.lua")
    
addscript(3851622790,"Break In (Story) [Godmode]", "BreakInStoryGodmode", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BreakInStoryGodmode.lua")
                    
                    
addscriptexist(7138009149, "PHIGHTINGInfCash", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PHIGHTINGInfCash.lua")
    
addscript(9845705613,"Blood Hood [Godmode, KillAll]", "BloodHoodGodmodeKillAll", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloodHoodGodmodeKillAll.lua")
                    
                    
addscriptexist(7138009149, "PHIGHTINGNPCesp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PHIGHTINGNPCesp.lua")
                    
addscriptexist(9744954014, "THAHOODGodmodeInfAmmo", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/THAHOODGodmodeInfAmmo.lua")
                    
addscriptexist(10676523834, "RacingRocketInfiniteStar", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RacingRocketInfiniteStar.lua")
                    
addscriptexist(9648883891, "FestivalTycoonAutoBuyAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FestivalTycoonAutoBuyAll.lua")
    
addscript(8293257677,"Surreal RPG [100 damage]", "SurrealRPG100damage", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurrealRPG100damage.lua")
                    
    
addscript(2653064683,"Word Bomb [Auto type, Anti-kik, Auto Join]", "WordBombAutotypeAntikikAutoJoin", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WordBombAutotypeAntikikAutoJoin.lua")
                    
                    
addscriptexist(5505830188, "ArcaneOblivionRPGSwordPIG", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArcaneOblivionRPGSwordPIG.lua")
                    
addscriptexist(9845705613, "BloodHoodKillAllGodmodeAutoArmor", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloodHoodKillAllGodmodeAutoArmor.lua")
                    
addscriptexist(3851622790, "BreakInStory", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BreakInStory.lua")
                    
addscriptexist(10524502174, "OnePunchFightersAutoFarmAutoSummon", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OnePunchFightersAutoFarmAutoSummon.lua")
                    
addscriptexist(893973440, "FleetheFacilityHidebeastlight", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FleetheFacilityHidebeastlight.lua")
    
addscript(4529536977,"Pembroke Pines [Inf Money]", "PembrokePinesInfMoney", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PembrokePinesInfMoney.lua")
                    
                    
addscriptexist(10675066724, "SlimeTowerTycoonAutoCollectAutoSellAutoBuy", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlimeTowerTycoonAutoCollectAutoSellAutoBuy.lua")
                    
addscriptexist(10675066724, "SlimeTowerTycoonAutoDepositAutoMergeAutoBuy", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlimeTowerTycoonAutoDepositAutoMergeAutoBuy.lua")
    
addscript(7952526341,"Draw Drawings and turn it 3D and play around [Crash Server]", "DrawDrawingsandturnit3DandplayaroundCrashServer", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DrawDrawingsandturnit3DandplayaroundCrashServer.lua")
                    
    
addscript(10956882556,"Roblox [Chat Spam]", "RobloxChatSpam", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxChatSpam.lua")
                    
    
addscript(292439477,"Phantom Forces [Esp]", "PhantomForcesEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesEsp.lua")
                    
                    
addscriptexist(6516141723, "DOORSSkiplvlsAntiscreechAlwayswingames", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORSSkiplvlsAntiscreechAlwayswingames.lua")
    
addscript(7899881670,"RB World 4 [AimBot]", "RBWorld4AimBot", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RBWorld4AimBot.lua")
                    
    
addscript(815405518,"The Floor Is LAVA [Survival Farm, Points Farm]", "TheFloorIsLAVASurvivalFarmPointsFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheFloorIsLAVASurvivalFarmPointsFarm.lua")
                    
                    
addscriptexist(8884334497, "MiningClickerSimulatorAutoMineAutoBiyEggAutobuyPickaxe", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningClickerSimulatorAutoMineAutoBiyEggAutobuyPickaxe.lua")
                    
addscriptexist(8458333139, "1LIFEKillTpeveryone", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/1LIFEKillTpeveryone.lua")
                    
addscriptexist(10676523834, "RacingRocketUpgradeRocket", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RacingRocketUpgradeRocket.lua")
                    
addscriptexist(8750997647, "TappingLegendsXAutoClickAutoUpgrade", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegendsXAutoClickAutoUpgrade.lua")
    
addscript(9772878203,"raise a floppa 2 [Automatic Crystal Farm]", "raiseafloppa2AutomaticCrystalFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/raiseafloppa2AutomaticCrystalFarm.lua")
                    
    
addscript(6428174188,"Lost RPG [Get All Items]", "LostRPGGetAllItems", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LostRPGGetAllItems.lua")
                    
    
addscript(9658251985,"The Rake Kill Test [Kick paleyrs]", "TheRakeKillTestKickpaleyrs", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheRakeKillTestKickpaleyrs.lua")
                    
                    
addscriptexist(9658251985, "TheRakeKillTestKillpeople", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheRakeKillTestKillpeople.lua")
    
addscript(8328351891,"Mega Mansion Tycoon [Auto Buy, Auto Collect, Money Make Day]", "MegaMansionTycoonAutoBuyAutoCollectMoneyMakeDay", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MegaMansionTycoonAutoBuyAutoCollectMoneyMakeDay.lua")
                    
    
addscript(8425637426,"Write a Letter [Auto Give Notes]", "WriteaLetterAutoGiveNotes", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WriteaLetterAutoGiveNotes.lua")
                    
                    
addscriptexist(8737602449, "PLSDONATERandomFoureneCookie", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PLSDONATERandomFoureneCookie.lua")
                    
addscriptexist(9304358188, "FindTheMemesGetAll", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FindTheMemesGetAll.lua")
    
addscript(8054462345,"Michael's Zombies [Kill Aura]", "MichaelsZombiesKillAura", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MichaelsZombiesKillAura.lua")
                    
                    
addscriptexist(8130299583, "TridentSurvivalEspHeadHbeXray", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TridentSurvivalEspHeadHbeXray.lua")
    
addscript(9737855826,"Trade Simulator [AntiAFK]", "TradeSimulatorAntiAFK", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TradeSimulatorAntiAFK.lua")
                    
                    
addscriptexist(1962086868, "TowerofHellGodmode", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofHellGodmode.lua")
                    
addscriptexist(7180042682, "MilitaryTycoonTargetseventsfarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MilitaryTycoonTargetseventsfarm.lua")
                    
addscriptexist(286090429, "ArsenalInfAmmo", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalInfAmmo.lua")
    
addscript(4893679160,"Big Brain Simulator [AutoSell, Collect Coins]", "BigBrainSimulatorAutoSellCollectCoins", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BigBrainSimulatorAutoSellCollectCoins.lua")
                    
    
addscript(6245984328,"NERF Strike [AutoFarm, Hitboxes]", "NERFStrikeAutoFarmHitboxes", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NERFStrikeAutoFarmHitboxes.lua")
                    
    
addscript(9203864304,"raise a floppa [AutoClick, AutoCollectMoney]", "raiseafloppaAutoClickAutoCollectMoney", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/raiseafloppaAutoClickAutoCollectMoney.lua")
                    
    
addscript(7047488135,"Speed Run Simulator [AutoClick, Win Race]", "SpeedRunSimulatorAutoClickWinRace", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedRunSimulatorAutoClickWinRace.lua")
                    
                    
addscriptexist(2788229376, "DaHoodAimlockSilentAim", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodAimlockSilentAim.lua")
                    
addscriptexist(8540346411, "RebirthChampionsXAutoSpinAutoCraft", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RebirthChampionsXAutoSpinAutoCraft.lua")
                    
addscriptexist(8750997647, "TappingLegendsXAutoEggsAutoRebirth", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegendsXAutoEggsAutoRebirth.lua")
    
addscript(7453798168,"YouTube Simulator X [AutoCandy, AutoClick]", "YouTubeSimulatorXAutoCandyAutoClick", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YouTubeSimulatorXAutoCandyAutoClick.lua")
                    
                    
addscriptexist(3823781113, "SaberSimulatorAutoSwingAutoBuy", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SaberSimulatorAutoSwingAutoBuy.lua")
                    
addscriptexist(2788229376, "DaHoodSilentAimFlyWalkSpeed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodSilentAimFlyWalkSpeed.lua")
    
addscript(4520749081,"King Legacy [Inf Dash, AutoFarm]", "KingLegacyInfDashAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KingLegacyInfDashAutoFarm.lua")
                    
                    
addscriptexist(9498006165, "TappingSimulatorAutoRebirthInfJump", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingSimulatorAutoRebirthInfJump.lua")
                    
addscriptexist(9872472334, "EvadeQuickReviveShowChatAutofarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EvadeQuickReviveShowChatAutofarm.lua")
    
addscript(6609611538,"Mechanica [Lag Server]", "MechanicaLagServer", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MechanicaLagServer.lua")
                    
                    
addscriptexist(286090429, "ArsenalKillAuraAimBotTeamCheck", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalKillAuraAimBotTeamCheck.lua")
    
addscript(10053187005,"Counter Blox", "CounterBloxReimaginedKillAllAimbotEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CounterBloxReimaginedKillAllAimbotEsp.lua")
                    
    
addscript(2124720684,"Dragon Ball", "DragonBallXenoMultiverseKillAuraAutoFarmWalkSpeed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBallXenoMultiverseKillAuraAutoFarmWalkSpeed.lua")
                    
    
addscript(3260590327,"Tower Defense Simulator [Auto Farm]", "TowerDefenseSimulatorAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerDefenseSimulatorAutoFarm.lua")
                    
                    
addscriptexist(4042427666, "AnimeFightingSimulatorInfYenInfChikara", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightingSimulatorInfYenInfChikara.lua")
                    
addscriptexist(6299805723, "AnimeFightersSimulatorAutoFarmAutoClick", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightersSimulatorAutoFarmAutoClick.lua")
                    
addscriptexist(8737602449, "PLSDONATEServerHopAutoBeg", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PLSDONATEServerHopAutoBeg.lua")
    
addscript(3101667897,"Legends Of Speed [Auto Hoops, AutoRace]", "LegendsOfSpeedAutoHoopsAutoRace", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendsOfSpeedAutoHoopsAutoRace.lua")
                    
                    
addscriptexist(5602055394, "HoodModdedSilentAimEsp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HoodModdedSilentAimEsp.lua")
    
addscript(10347946161,"Rat Washing Tycoon [Auto Farm]", "RatWashingTycoonAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RatWashingTycoonAutoFarm.lua")
                    
    
addscript(10705886260,"Strucid [Anti-Cheat Bypass]", "StrucidAntiCheatBypass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrucidAntiCheatBypass.lua")
                    
    
addscript(6778844213,"Euphoria ragdoll testing [Donation Gui]", "EuphoriaragdolltestingDonationGui", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EuphoriaragdolltestingDonationGui.lua")
                    
                    
addscriptexist(3351674303, "DrivingEmpire", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DrivingEmpire.lua")
                    
addscriptexist(662417684, "LUCKYBLOCKSBattlegroundsFlyGetAllItems", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LUCKYBLOCKSBattlegroundsFlyGetAllItems.lua")
    
addscript(10087074695,"Knife Strife! [Insta Kill]", "KnifeStrifeInstaKill", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KnifeStrifeInstaKill.lua")
                    
                    
addscriptexist(3351674303, "DrivingEmpireAutoFarmAutoRace", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DrivingEmpireAutoFarmAutoRace.lua")
                    
addscriptexist(9658251985, "TheRakeKillTestKillRakeOnOfPowerShadowHour", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheRakeKillTestKillRakeOnOfPowerShadowHour.lua")
                    
addscriptexist(6428174188, "LOSTRPGGetallitems", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LOSTRPGGetallitems.lua")
                    
addscriptexist(292439477, "PhantomForcesNoRecoil", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesNoRecoil.lua")
                    
addscriptexist(1537690962, "BeeSwarmSimulatorAutofarmAutodigAutoconvert", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeeSwarmSimulatorAutofarmAutodigAutoconvert.lua")
    
addscript(7714627632,"Winds of Fortune [AutoFarm, Esp]", "WindsofFortuneAutoFarmEsp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WindsofFortuneAutoFarmEsp.lua")
                    
    
addscript(6278885452,"Roblox [WalkSpeed GUI]", "RobloxWalkSpeedGUI", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxWalkSpeedGUI.lua")
                    
                    
addscriptexist(2537430692, "JengaNoKillBrickFLy", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JengaNoKillBrickFLy.lua")
                    
addscriptexist(2537430692, "JengaEndGameMoai", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JengaEndGameMoai.lua")
                    
addscriptexist(8737602449, "PLSDONATEAutoBegWebhook", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PLSDONATEAutoBegWebhook.lua")
    
addscript(9386846196,"Brawling Grounds [AddHeal, KillAura]", "BrawlingGroundsAddHealKillAura", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrawlingGroundsAddHealKillAura.lua")
                    
                    
addscriptexist(6403373529, "SlapBattlesAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlapBattlesAutoFarm.lua")
                    
addscriptexist(6461766546, "AHerosDestinyAutoSpinAutoQuestAutoSkills", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AHerosDestinyAutoSpinAutoQuestAutoSkills.lua")
    
addscript(7055501563,"Public Bathroom Simulator [Crash Server]", "PublicBathroomSimulatorCrashServer", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PublicBathroomSimulatorCrashServer.lua")
                    
                    
addscriptexist(5490351219, "ClickerMadnessAutoOpenEggAutoClickerTp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerMadnessAutoOpenEggAutoClickerTp.lua")
    
addscript(9598746251,"Home Run Simulator [Auto home Run Auto Upgrade, Auto rebirth]", "HomeRunSimulatorAutohomeRunAutoUpgradeAutorebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HomeRunSimulatorAutohomeRunAutoUpgradeAutorebirth.lua")
                    
                    
addscriptexist(3101667897, "LegendsOfSpeedAutoGraborbsAutoGrabRingsAutoRebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendsOfSpeedAutoGraborbsAutoGrabRingsAutoRebirth.lua")
    
addscript(7050008107,"Hospital Tycoon [Collect Cash, Buy Buttons]", "HospitalTycoonCollectCashBuyButtons", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HospitalTycoonCollectCashBuyButtons.lua")
                    
                    
addscriptexist(8146731988, "UltraPowerTycoonPowerGrabAllitems", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UltraPowerTycoonPowerGrabAllitems.lua")
    
addscript(7860844204,"Life Sentence [KillAura, ItemFarm]", "LifeSentenceKillAuraItemFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LifeSentenceKillAuraItemFarm.lua")
                    
    
addscript(10117551326,"UTBM (Dustpreme Hall drip) [God Mode]", "UTBMDustpremeHalldripGodMode", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UTBMDustpremeHalldripGodMode.lua")
                    
    
addscript(9949781550,"Digging Simulator [Inf Money]", "DiggingSimulatorInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DiggingSimulatorInfMoney.lua")
                    
    
addscript(10204162989,"Pickaxe Simulator [Auto Mine, Equip Best Pets, Redeem Code]", "PickaxeSimulatorAutoMineEquipBestPetsRedeemCode", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PickaxeSimulatorAutoMineEquipBestPetsRedeemCode.lua")
                    
                    
addscriptexist(6516141723, "DOORSFullbrightEsp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORSFullbrightEsp.lua")
                    
addscriptexist(4042427666, "AnimeFightingSimulatorAutoFarmMobFarmChikaraShards", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightingSimulatorAutoFarmMobFarmChikaraShards.lua")
                    
addscriptexist(6447798030, "FunkyFridayAutoPlayAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FunkyFridayAutoPlayAutoFarm.lua")
                    
addscriptexist(5956785391, "ProjectSlayersInfStaminaAutofarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersInfStaminaAutofarm.lua")
    
addscript(9285238704,"Race Clicker [Auto Farm Wins]", "RaceClickerAutoFarmWins", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaceClickerAutoFarmWins.lua")
                    
                    
addscriptexist(10087074695, "KnifeStrifeDupeKnifesnotfixed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KnifeStrifeDupeKnifesnotfixed.lua")
    
addscript(4951858512,"Victory Race [AutoFarm]", "VictoryRaceAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VictoryRaceAutoFarm.lua")
                    
    
addscript(3587619225,"Mega Easy Obby [Claim All Badges, Walkspeed]", "MegaEasyObbyClaimAllBadgesWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MegaEasyObbyClaimAllBadgesWalkspeed.lua")
                    
                    
addscriptexist(7560156054, "ClickerSimulatorAutoRebirthAutoEggs", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerSimulatorAutoRebirthAutoEggs.lua")
                    
addscriptexist(537413528, "BuildABoatForTreasureAutoFarmAutoChests", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureAutoFarmAutoChests.lua")
    
addscript(9291030453,"The Chainsmokers Concert Experience [GetAllLetters, Walkspeed]", "TheChainsmokersConcertExperienceGetAllLettersWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheChainsmokersConcertExperienceGetAllLettersWalkspeed.lua")
                    
                    
addscriptexist(9872472334, "EvadeAutoRespawnEsp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EvadeAutoRespawnEsp.lua")
                    
addscriptexist(7655745946, "DunkingSimulatorFreeGamepass", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DunkingSimulatorFreeGamepass.lua")
                    
addscriptexist(286090429, "ArsenalRainbowGunAimbot", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalRainbowGunAimbot.lua")
    
addscript(5130598377,"Tapping Legends X [Auto Farms, Auto Hatch, Auto Rebirth]", "TappingLegendsXAutoFarmsAutoHatchAutoRebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegendsXAutoFarmsAutoHatchAutoRebirth.lua")
                    
                    
addscriptexist(2753915549, "BloxFruitsAutoFarmMobsEspChest", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsAutoFarmMobsEspChest.lua")
    
addscript(9718523719,"Roblox [ReJoin Server]", "RobloxReJoinServer", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxReJoinServer.lua")
                    
    
addscript(9862161924,"glass game [Show Fake Glass]", "glassgameShowFakeGlass", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/glassgameShowFakeGlass.lua")
                    
    
addscript(5326405001,"Base Battles (Fixed) [Silent Aim, Esp]", "BaseBattlesFixedSilentAimEsp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BaseBattlesFixedSilentAimEsp.lua")
                    
    
addscript(6452292184,"Speed Runner! [AutoFarm]", "SpeedRunnerAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedRunnerAutoFarm.lua")
                    
                    
addscriptexist(3956818381, "NinjaLegendsAutoClicker", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsAutoClicker.lua")
                    
addscriptexist(286090429, "ArsenalNonFEDevSkins", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalNonFEDevSkins.lua")
                    
addscriptexist(2788229376, "EvadeOptimizeutillities", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EvadeOptimizeutillities.lua")
                    
addscriptexist(9845705613, "BloodHoodAutoPunchKillAll", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloodHoodAutoPunchKillAll.lua")
    
addscript(10184360875,"Pet&Fishing Simulator [Auto Sell, Auto Fish]", "PetFishingSimulatorAutoSellAutoFish", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetFishingSimulatorAutoSellAutoFish.lua")
                    
                    
addscriptexist(9285238704, "RaceClickerAutoFarmAutoClick", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaceClickerAutoFarmAutoClick.lua")
                    
addscriptexist(9872472334, "EvadeAutoRespawnBotEsp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EvadeAutoRespawnBotEsp.lua")
                    
addscriptexist(3956818381, "NinjaLegendsAutoFarmAutoCrystals", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsAutoFarmAutoCrystals.lua")
                    
addscriptexist(4951858512, "VictoryRaceAntiLagAutoWin", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VictoryRaceAntiLagAutoWin.lua")
                    
addscriptexist(4042427666, "AnimeFightingSimulatorInfYenandChikara", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightingSimulatorInfYenandChikara.lua")
                    
addscriptexist(537413528, "BuildABoatForTreasureAutoFarmAutoOpenChest", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureAutoFarmAutoOpenChest.lua")
    
addscript(7280118908,"School Simulator [Free Gamepass]", "SchoolSimulatorFreeGamepass", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SchoolSimulatorFreeGamepass.lua")
                    
    
addscript(1240644540,"Vampire Hunters 3 [Spam Screen Text]", "VampireHunters3SpamScreenText", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VampireHunters3SpamScreenText.lua")
                    
    
addscript(10001513103,"Limited Words [Annoy Mods, Waste Words, Get Joseph Badge]", "LimitedWordsAnnoyModsWasteWordsGetJosephBadge", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LimitedWordsAnnoyModsWasteWordsGetJosephBadge.lua")
                    
                    
addscriptexist(286090429, "ArsenalNoSpreadAimbot", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalNoSpreadAimbot.lua")
                    
addscriptexist(2537430692, "JengaStopGame", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JengaStopGame.lua")
    
addscript(4282985734,"Combat Warriors [Esp, KillAura]", "CombatWarriorsEspKillAura", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CombatWarriorsEspKillAura.lua")
                    
    
addscript(5154858502,"Murderers vs. Sheriffs [KillAura]", "MurderersvsSheriffsKillAura", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderersvsSheriffsKillAura.lua")
                    
                    
addscriptexist(10524502174, "OnePunchFightersAutoPunchRemoveBarriers", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OnePunchFightersAutoPunchRemoveBarriers.lua")
                    
addscriptexist(6284583030, "PetSimulatorXAutoFarmAutoopenEggAutoFarmChest", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmAutoopenEggAutoFarmChest.lua")
    
addscript(9103090927,"Stumble Buddies [Kick All]", "StumbleBuddiesKickAll", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StumbleBuddiesKickAll.lua")
                    
                    
addscriptexist(2653064683, "WordBombAutoTypeAutoJoin", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WordBombAutoTypeAutoJoin.lua")
                    
addscriptexist(9993529229, "CounterBloxRemasteredHeadshotsonly", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CounterBloxRemasteredHeadshotsonly.lua")
    
addscript(340227283,"RoBowling [Hitbox, Aimbot]", "RoBowlingHitboxAimbot", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoBowlingHitboxAimbot.lua")
                    
    
addscript(7664413141,"Creeper Chaos [Beta] [Auto Farm, Esp]", "CreeperChaosBetaAutoFarmEsp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CreeperChaosBetaAutoFarmEsp.lua")
                    
    
addscript(10201298018,"Vampire Hunters 2 Remake [Gun grab, Outfit saver, Role esp]", "VampireHunters2RemakeGungrabOutfitsaverRoleesp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VampireHunters2RemakeGungrabOutfitsaverRoleesp.lua")
                    
                    
addscriptexist(2537430692, "JengaWinRemoveJengasRemoveKillBrick", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JengaWinRemoveJengasRemoveKillBrick.lua")
    
addscript(6973274562,"Melee Mash Revenge! [Godmode, KillAll]", "MeleeMashRevengeGodmodeKillAll", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MeleeMashRevengeGodmodeKillAll.lua")
                    
                    
addscriptexist(4616652839, "ShindoLifeAutoKeyAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoLifeAutoKeyAutoFarm.lua")
    
addscript(9983979661,"Dragon Farm Simulator [AutoCollect]", "DragonFarmSimulatorAutoCollect", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonFarmSimulatorAutoCollect.lua")
                    
    
addscript(5777099015,"Cheese Escape [AutoCollectCheese, Godmode]", "CheeseEscapeAutoCollectCheeseGodmode", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CheeseEscapeAutoCollectCheeseGodmode.lua")
                    
                    
addscriptexist(1962086868, "TowerofHellAutoWin", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofHellAutoWin.lua")
                    
addscriptexist(6516141723, "DOORSAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORSAutoFarm.lua")
    
addscript(6678877691,"ZO ぞ SAMURAI [RageBot, Godmode]", "ZOぞSAMURAIRageBotGodmode", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZOぞSAMURAIRageBotGodmode.lua")
                    
    
addscript(10157366004,"Strongest Tapper Simulator [AutoUpgrade, AutoClick]", "StrongestTapperSimulatorAutoUpgradeAutoClick", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrongestTapperSimulatorAutoUpgradeAutoClick.lua")
                    
                    
addscriptexist(142823291, "MurderMystery2EspGodmode", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2EspGodmode.lua")
                    
addscriptexist(5326405001, "BaseBattlesNoSpreadEsp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BaseBattlesNoSpreadEsp.lua")
    
addscript(5901548022,"Try To Die [Give All Tools]", "TryToDieGiveAllTools", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TryToDieGiveAllTools.lua")
                    
    
addscript(7165194252,"Ranger Piece [Get Spawned Items]", "RangerPieceGetSpawnedItems", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RangerPieceGetSpawnedItems.lua")
                    
                    
addscriptexist(662417684, "LUCKYBLOCKSBattlegroundsOpenLuckyBlockSpeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LUCKYBLOCKSBattlegroundsOpenLuckyBlockSpeed.lua")
    
addscript(8554378337,"WEAPON FIGHTING SIMULATOR [AutoFarm, Collect Rewards]", "WEAPONFIGHTINGSIMULATORAutoFarmCollectRewards", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WEAPONFIGHTINGSIMULATORAutoFarmCollectRewards.lua")
                    
                    
addscriptexist(6284583030, "PetSimulatorXAutoHatchAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoHatchAutoFarm.lua")
    
addscript(10476933477,"Strong Ninja Simulator [Auto Hatch, Auto Click]", "StrongNinjaSimulatorAutoHatchAutoClick", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrongNinjaSimulatorAutoHatchAutoClick.lua")
                    
                    
addscriptexist(8704181738, "TiếnTiếnPieceFreeYoru", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TiếnTiếnPieceFreeYoru.lua")
                    
addscriptexist(9718523719, "RobloxJoinsmallestserver", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxJoinsmallestserver.lua")
                    
addscriptexist(8704181738, "TiếnTiếnPieceDebttoallplayers", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TiếnTiếnPieceDebttoallplayers.lua")
                    
addscriptexist(10524502174, "OnePunchFightersAutoFarmMobAutoCollectCoinsAutoSummon", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OnePunchFightersAutoFarmMobAutoCollectCoinsAutoSummon.lua")
    
addscript(218377574,"Admin Simulator [Auto Farm]", "AdminSimulatorAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdminSimulatorAutoFarm.lua")
                    
                    
addscriptexist(9648883891, "FestivalTycoonInfMoney", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FestivalTycoonInfMoney.lua")
    
addscript(10188345824,"Festival Tycoon (Another Script) [Inf Cash]", "FestivalTycoonAnotherScriptInfCash", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FestivalTycoonAnotherScriptInfCash.lua")
                    
                    
addscriptexist(9648883891, "FestivalTycoonGetFreeItems", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FestivalTycoonGetFreeItems.lua")
                    
addscriptexist(286090429, "ArsenalAnticheatDisabler", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalAnticheatDisabler.lua")
                    
addscriptexist(9648883891, "FestivalTycoonSwordPackInfCash", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FestivalTycoonSwordPackInfCash.lua")
    
addscript(10243982775,"RedBox 2 [Quickswap weapons]", "RedBox2Quickswapweapons", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RedBox2Quickswapweapons.lua")
                    
                    
addscriptexist(2788229376, "DaHoodAutoFarmAutoCollect", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodAutoFarmAutoCollect.lua")
    
addscript(7305309231,"Taxi Boss [AutoFarm, AntiAfk]", "TaxiBossAutoFarmAntiAfk", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TaxiBossAutoFarmAntiAfk.lua")
                    
    
addscript(2866967438,"Fishing Simulator [Auto Farm, Auto Fish]", "FishingSimulatorAutoFarmAutoFish", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FishingSimulatorAutoFarmAutoFish.lua")
                    
                    
addscriptexist(5602055394, "HoodModdedInfJumpEsp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HoodModdedInfJumpEsp.lua")
                    
addscriptexist(8962384769, "FireworkSimulatorAutoHatchAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FireworkSimulatorAutoHatchAutoFarm.lua")
                    
addscriptexist(286090429, "ArsenalGodmode", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalGodmode.lua")
    
addscript(9757510382,"Trade Simulator [AutoFarm]", "TradeSimulatorAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TradeSimulatorAutoFarm.lua")
                    
                    
addscriptexist(7952502098, "ImpossibleGlassBridgeObbyAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ImpossibleGlassBridgeObbyAutoFarm.lua")
    
addscript(14745996,"Gun Testing [Walkspeed, FreeDoors]", "GunTestingWalkspeedFreeDoors", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GunTestingWalkspeedFreeDoors.lua")
                    
    
addscript(2665326799,"Find The Button [Button Esp, Inf Jump]", "FindTheButtonButtonEspInfJump", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FindTheButtonButtonEspInfJump.lua")
                    
    
addscript(5256165620,"3-2-1 Blast Off Simulator [AutoBuy, Gem Shop]", "321BlastOffSimulatorAutoBuyGemShop", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/321BlastOffSimulatorAutoBuyGemShop.lua")
                    
                    
addscriptexist(9285238704, "RaceClickerServerHopAutoWin", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaceClickerServerHopAutoWin.lua")
    
addscript(7128635125,"Old A Bizarry Day Modded [Adm Cmds]", "OldABizarryDayModdedAdmCmds", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OldABizarryDayModdedAdmCmds.lua")
                    
                    
addscriptexist(370731277, "MeepCityFishingSilentAimAvatarEditor", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MeepCityFishingSilentAimAvatarEditor.lua")
                    
addscriptexist(370731277, "MeepCityFreeGamepassesSpamBalloons", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MeepCityFreeGamepassesSpamBalloons.lua")
                    
addscriptexist(370731277, "MeepCityGoKartZzzanimation", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MeepCityGoKartZzzanimation.lua")
    
addscript(5872075530,"Anarchy [Esp, Hitboxes]", "AnarchyEspHitboxes", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnarchyEspHitboxes.lua")
                    
                    
addscriptexist(3351674303, "DrivingEmpireAutoFarmAutoDragRace", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DrivingEmpireAutoFarmAutoDragRace.lua")
    
addscript(6708206173,"Rate My Avatar [Animations, WalkSpeed, Swears]", "RateMyAvatarAnimationsWalkSpeedSwears", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RateMyAvatarAnimationsWalkSpeedSwears.lua")
                    
    
addscript(6542731310,"Dogecoin Mining Tycoon [Clear gpu's, Tp, WalkSPeed]", "DogecoinMiningTycoonCleargpusTpWalkSPeed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DogecoinMiningTycoonCleargpusTpWalkSPeed.lua")
                    
    
addscript(8436975214,"Dangerous Speeds [Unlock All Cars]", "DangerousSpeedsUnlockAllCars", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DangerousSpeedsUnlockAllCars.lua")
                    
                    
addscriptexist(10320240572, "EasyRaceClickerAutoWins", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EasyRaceClickerAutoWins.lua")
                    
addscriptexist(6608498361, "cursedtanksimulatorIncreaseAmmunitionhitbox", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/cursedtanksimulatorIncreaseAmmunitionhitbox.lua")
                    
addscriptexist(8328351891, "MegaMansionTycoonCollectCashMakeDay", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MegaMansionTycoonCollectCashMakeDay.lua")
                    
addscriptexist(2622527242, "SCPrBreachWaklspeedGetAmmo", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SCPrBreachWaklspeedGetAmmo.lua")
    
addscript(4036494886,"Gun Simulator [Inf Money, Inf medals]", "GunSimulatorInfMoneyInfmedals", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GunSimulatorInfMoneyInfmedals.lua")
                    
    
addscript(10150367093,"Baking Tycoon [Claim Codes, Claim Plot, X2 5 min]", "BakingTycoonClaimCodesClaimPlotX25min", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BakingTycoonClaimCodesClaimPlotX25min.lua")
                    
                    
addscriptexist(155615604, "PrisonLifeInfStaminaInstRespawn", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLifeInfStaminaInstRespawn.lua")
    
addscript(8963721566,"The Backrooms [Third Person]", "TheBackroomsThirdPerson", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheBackroomsThirdPerson.lua")
                    
                    
addscriptexist(6284583030, "PetSimulatorXAutoFarmAutoEggs", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmAutoEggs.lua")
    
addscript(10325366821,"OOF Tycoon! [AutoCollect OOFs]", "OOFTycoonAutoCollectOOFs", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OOFTycoonAutoCollectOOFs.lua")
                    
                    
addscriptexist(7714627632, "WindsofFortuneAutoFarmFoodStoreEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WindsofFortuneAutoFarmFoodStoreEsp.lua")
                    
addscriptexist(9551640993, "MiningSimulator2BloxAuraAutoHatch", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2BloxAuraAutoHatch.lua")
                    
addscriptexist(2537430692, "JengaInstantWinWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JengaInstantWinWalkspeed.lua")
                    
addscriptexist(8963721566, "TheBackroomsInfStamina", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheBackroomsInfStamina.lua")
                    
addscriptexist(9872472334, "EvadeFreeGamepasses", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EvadeFreeGamepasses.lua")
                    
addscriptexist(142823291, "MurderMystery2AutoFarmGodmode", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2AutoFarmGodmode.lua")
                    
addscriptexist(2622527242, "SCPrBreachInfCapacityFastEscape", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SCPrBreachInfCapacityFastEscape.lua")
                    
addscriptexist(2665326799, "FindTheButtonEspInfJump", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FindTheButtonEspInfJump.lua")
                    
addscriptexist(8540346411, "RebirthChampionsXAutoRebrithAutoEquipBestPets", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RebirthChampionsXAutoRebrithAutoEquipBestPets.lua")
                    
addscriptexist(6608498361, "cursedtanksimulatorBigCrew", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/cursedtanksimulatorBigCrew.lua")
                    
addscriptexist(8737602449, "PLSDONATETextBypass", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PLSDONATETextBypass.lua")
                    
addscriptexist(9658251985, "TheRakeKillTest10Kills", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheRakeKillTest10Kills.lua")
                    
addscriptexist(9658251985, "TheRakeKillTest10kills", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheRakeKillTest10kills.lua")
                    
addscriptexist(9658251985, "TheRakeKillTestInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheRakeKillTestInfMoney.lua")
                    
addscriptexist(8963721566, "TheBackroomsKV31InfStamina", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheBackroomsKV31InfStamina.lua")
    
addscript(10627835972,"Death Sandbox [Kill All]", "DeathSandboxKillAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeathSandboxKillAll.lua")
                    
    
addscript(9796315265,"Streetz War [Auto Farm]", "StreetzWarAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StreetzWarAutoFarm.lua")
                    
                    
addscriptexist(9285238704, "RaceClickerAutoClickAutoWin", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaceClickerAutoClickAutoWin.lua")
                    
addscriptexist(286090429, "ArsenalKillAllInvisible", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalKillAllInvisible.lua")
    
addscript(6766156863,"Strongman Simulator [Anti Afk, AutoRebirth]", "StrongmanSimulatorAntiAfkAutoRebirth", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrongmanSimulatorAntiAfkAutoRebirth.lua")
                    
                    
addscriptexist(5956785391, "ProjectSlayersAutoFarmFishFarmInfstamina", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersAutoFarmFishFarmInfstamina.lua")
                    
addscriptexist(6284583030, "PetSimulatorXAutoFarmAutoHatch", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmAutoHatch.lua")
                    
addscriptexist(9585537847, "SHADOVISRPGCollectAllCubits", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SHADOVISRPGCollectAllCubits.lua")
                    
addscriptexist(8963721566, "TheBackroomsKV31WalkSpeed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheBackroomsKV31WalkSpeed.lua")
                    
addscriptexist(537413528, "BuildABoatForTreasureAutoFarmWalkSpeedGodmodeWater", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureAutoFarmWalkSpeedGodmodeWater.lua")
    
addscript(4962588958,"Teamwork Obby [2 Player Obby] [AutoFarm]", "TeamworkObby2PlayerObbyAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TeamworkObby2PlayerObbyAutoFarm.lua")
                    
    
addscript(10218821851,"Client Replication [Fe Becoming a monster]", "ClientReplicationFeBecomingamonster", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClientReplicationFeBecomingamonster.lua")
                    
    
addscript(8204899140,"Football Fusion 2 [Auto Catch, FootballLock, Auto Captain]", "FootballFusion2AutoCatchFootballLockAutoCaptain", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FootballFusion2AutoCatchFootballLockAutoCaptain.lua")
                    
                    
addscriptexist(2788229376, "DaHoodLegitAimlock", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodLegitAimlock.lua")
                    
addscriptexist(2248408710, "DestructionSimulatorSpinplayerWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DestructionSimulatorSpinplayerWalkspeed.lua")
    
addscript(5293755937,"Speed Run Simulator [AutoRebirth, AutoOrbs]", "SpeedRunSimulatorAutoRebirthAutoOrbs", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedRunSimulatorAutoRebirthAutoOrbs.lua")
                    
    
addscript(10047913840,"Training Simulator [AutoLift, AutoRebirth]", "TrainingSimulatorAutoLiftAutoRebirth", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TrainingSimulatorAutoLiftAutoRebirth.lua")
                    
    
addscript(3458435516,"Limited Simulator 2 [AutoBuy]", "LimitedSimulator2AutoBuy", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LimitedSimulator2AutoBuy.lua")
                    
                    
addscriptexist(142823291, "MurderMystery2KillAuraGodmode", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2KillAuraGodmode.lua")
    
addscript(4490140733,"My Restaurant! [Auto Farm, Money Farm]", "MyRestaurantAutoFarmMoneyFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyRestaurantAutoFarmMoneyFarm.lua")
                    
    
addscript(6677573193,"Axe Champions Simulator [AutoSell, AutoHatch]", "AxeChampionsSimulatorAutoSellAutoHatch", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AxeChampionsSimulatorAutoSellAutoHatch.lua")
                    
                    
addscriptexist(9414511685, "DriveCarsDownAHillAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DriveCarsDownAHillAutoFarm.lua")
    
addscript(5023820864,"Trade Tower [Auto Click, Auto Upgrade]", "TradeTowerAutoClickAutoUpgrade", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TradeTowerAutoClickAutoUpgrade.lua")
                    
    
addscript(8876384197,"steal time from others & flex your sword [Reach Script]", "stealtimefromothersflexyourswordReachScript", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/stealtimefromothersflexyourswordReachScript.lua")
                    
                    
addscriptexist(4036494886, "GunSimulatorInfEverything", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GunSimulatorInfEverything.lua")
                    
addscriptexist(9049840490, "SonicSpeedSimulatorAutoRunAutoRebrith", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulatorAutoRunAutoRebrith.lua")
    
addscript(394846350,"Jump Simulator [Auto Farm]", "JumpSimulatorAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JumpSimulatorAutoFarm.lua")
                    
                    
addscriptexist(7655745946, "DunkingSimulatorInfSpinsBustCash", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DunkingSimulatorInfSpinsBustCash.lua")
                    
addscriptexist(10204162989, "PickaxeSimulatorAutoMineAutoOpen", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PickaxeSimulatorAutoMineAutoOpen.lua")
    
addscript(10141430483,"Slaying Legends [AutoBuy, AutoPrestige]", "SlayingLegendsAutoBuyAutoPrestige", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlayingLegendsAutoBuyAutoPrestige.lua")
                    
                    
addscriptexist(6872265039, "BedWarsAutoFarmPirateCoins", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BedWarsAutoFarmPirateCoins.lua")
    
addscript(7285447838,"Tokyo Saga [Auto Farm Strenght, Money]", "TokyoSagaAutoFarmStrenghtMoney", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TokyoSagaAutoFarmStrenghtMoney.lua")
                    
    
addscript(3233893879,"Bad Business [Silent Aim]", "BadBusinessSilentAim", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BadBusinessSilentAim.lua")
                    
                    
addscriptexist(2788229376, "DaHoodLegitSilentAim", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodLegitSilentAim.lua")
                    
addscriptexist(7952502098, "ImpossibleGlassBridgeObbyCorrectPath", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ImpossibleGlassBridgeObbyCorrectPath.lua")
                    
addscriptexist(7952502098, "ImpossibleGlassBridgeObbyInfMoney", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ImpossibleGlassBridgeObbyInfMoney.lua")
                    
addscriptexist(6516141723, "DOORSAutoSkipRooms", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORSAutoSkipRooms.lua")
                    
addscriptexist(1554960397, "CarDealershipTycoonAutoFarmAutoDragRace", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarDealershipTycoonAutoFarmAutoDragRace.lua")
                    
addscriptexist(2551991523, "BrokenBones4InfJumAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrokenBones4InfJumAutoFarm.lua")
                    
addscriptexist(537413528, "BuildABoatForTreasureInfJumpGodMode", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureInfJumpGodMode.lua")
    
addscript(7009799230,"Pressure Wash Simulator [Inf Money, Auto Clean]", "PressureWashSimulatorInfMoneyAutoClean", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PressureWashSimulatorInfMoneyAutoClean.lua")
                    
                    
addscriptexist(286090429, "ArsenalAimbotKillAura", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalAimbotKillAura.lua")
                    
addscriptexist(8750997647, "TappingLegendsXAutoClickAutoRebirth", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegendsXAutoClickAutoRebirth.lua")
    
addscript(3467049496,"MARVEL", "MARVELBattlegroundsFreeGamepasses", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MARVELBattlegroundsFreeGamepasses.lua")
                    
    
addscript(7177496972,"Anime Warriors [Auto Farm, Better Gfx]", "AnimeWarriorsAutoFarmBetterGfx", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeWarriorsAutoFarmBetterGfx.lua")
                    
                    
addscriptexist(9049840490, "SonicSpeedSimulatorAutoWinRaceCollectAllObbysAutoRun", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulatorAutoWinRaceCollectAllObbysAutoRun.lua")
                    
addscriptexist(9551640993, "MiningSimulator2AutoMineAutoSellAutoFactory", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2AutoMineAutoSellAutoFactory.lua")
                    
addscriptexist(8737602449, "PLSDONATETpAutoThanksServerHoppper", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PLSDONATETpAutoThanksServerHoppper.lua")
                    
addscriptexist(8750997647, "TappingLegendsXAutoClickerAutorebirthAutoEgg", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegendsXAutoClickerAutorebirthAutoEgg.lua")
                    
addscriptexist(8704181738, "TiếnTiếnPieceGamepassSword", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TiếnTiếnPieceGamepassSword.lua")
                    
addscriptexist(6284583030, "PetSimulatorXAutoFarmAutoEggWalkSpeed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmAutoEggWalkSpeed.lua")
                    
addscriptexist(142823291, "MurderMystery2AutofarmEspKillAura", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2AutofarmEspKillAura.lua")
                    
addscriptexist(277751860, "EpicAntiCheatBypass", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EpicAntiCheatBypass.lua")
                    
addscriptexist(6516141723, "DOORSWardrobeEspEventNotifiers", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORSWardrobeEspEventNotifiers.lua")
                    
addscriptexist(9872472334, "EvadeFreeRespawn", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EvadeFreeRespawn.lua")
    
addscript(5766084948,"SCP", "SCPTheRedLakeEspSilentAim", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SCPTheRedLakeEspSilentAim.lua")
                    
                    
addscriptexist(7991339063, "RainbowFriendsEspCollectItems", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RainbowFriendsEspCollectItems.lua")
                    
addscriptexist(9585537847, "SHADOVISRPGKillAuraAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SHADOVISRPGKillAuraAutoFarm.lua")
                    
addscriptexist(6428174188, "LOSTRPGKillAllMobs", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LOSTRPGKillAllMobs.lua")
                    
addscriptexist(6609611538, "MechanicaCrashPlayer", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MechanicaCrashPlayer.lua")
    
addscript(2686500207,"A Bizarre Day [Auto Farm, Teleports]", "ABizarreDayAutoFarmTeleports", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ABizarreDayAutoFarmTeleports.lua")
                    
                    
addscriptexist(8737602449, "PLSDONATEFlyEsp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PLSDONATEFlyEsp.lua")
                    
addscriptexist(920587237, "AdoptMeAutoFarmBuyanyegg", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMeAutoFarmBuyanyegg.lua")
                    
addscriptexist(1962086868, "TowerofHellGodmodeWin", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofHellGodmodeWin.lua")
                    
addscriptexist(537413528, "BuildABoatForTreasureAutoFarmMorhps", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureAutoFarmMorhps.lua")
                    
addscriptexist(537413528, "BuildABoatForTreasureWalkspeedTeleports", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureWalkspeedTeleports.lua")
                    
addscriptexist(9585537847, "SHADOVISRPGAutoFarmKillAura", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SHADOVISRPGAutoFarmKillAura.lua")
                    
addscriptexist(537413528, "BuildABoatForTreasureAutoFarmClickTPTool", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureAutoFarmClickTPTool.lua")
    
addscript(1730877806,"Grand Piece Online [No Fall Damage, Auto Farm Beli]", "GrandPieceOnlineNoFallDamageAutoFarmBeli", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GrandPieceOnlineNoFallDamageAutoFarmBeli.lua")
                    
                    
addscriptexist(10087074695, "KnifeStrifeDupeKnife", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KnifeStrifeDupeKnife.lua")
                    
addscriptexist(621129760, "KnifeAbilityTestAimbot", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KnifeAbilityTestAimbot.lua")
                    
addscriptexist(10087074695, "KnifeStrifeAllKnives", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KnifeStrifeAllKnives.lua")
    
addscript(147848991,"Be A Parkour Ninja [Silent Aim, Esp]", "BeAParkourNinjaSilentAimEsp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeAParkourNinjaSilentAimEsp.lua")
                    
    
addscript(9863691914,"Backrooms Morphs [Kill All Players, NPCs", "BackroomsMorphsKillAllPlayersNPCs", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BackroomsMorphsKillAllPlayersNPCs.lua")
                    
    
addscript(9970551995,"Touch The Grass Simulator! [AutoHatch, KillAura]", "TouchTheGrassSimulatorAutoHatchKillAura", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TouchTheGrassSimulatorAutoHatchKillAura.lua")
                    
                    
addscriptexist(10087074695, "KnifeStrifeKillAllInstantKills", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KnifeStrifeKillAllInstantKills.lua")
    
addscript(9980179145,"Speed Race Clicker [AutoFarm, AutoChest]", "SpeedRaceClickerAutoFarmAutoChest", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedRaceClickerAutoFarmAutoChest.lua")
                    
                    
addscriptexist(4951858512, "VictoryRaceWalkSpeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VictoryRaceWalkSpeed.lua")
                    
addscriptexist(8425637426, "RobloxChangestheletters", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxChangestheletters.lua")
                    
addscriptexist(10087074695, "KnifeStrifeKillAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KnifeStrifeKillAll.lua")
                    
addscriptexist(662417684, "LUCKYBLOCKSBattlegroundsGetallluckyblocks", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LUCKYBLOCKSBattlegroundsGetallluckyblocks.lua")
                    
addscriptexist(6766156863, "StrongmanSimulatorVeryOPAutofarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrongmanSimulatorVeryOPAutofarm.lua")
    
addscript(9961650006,"Shockwave Racing [Auto Win]", "ShockwaveRacingAutoWin", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShockwaveRacingAutoWin.lua")
                    
                    
addscriptexist(5780309044, "StandsAwakeningAutofarmstandsInstantlychangestands", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StandsAwakeningAutofarmstandsInstantlychangestands.lua")
    
addscript(3432786397,"Pet Mining Simulator [Btools, Kill]", "PetMiningSimulatorBtoolsKill", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetMiningSimulatorBtoolsKill.lua")
                    
                    
addscriptexist(9551640993, "MiningSimulator2AutoMineAutoRebirthRedeemAllCodes", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2AutoMineAutoRebirthRedeemAllCodes.lua")
                    
addscriptexist(7664413141, "CreeperChaosAnticheatbypassWalkspeedchanger", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CreeperChaosAnticheatbypassWalkspeedchanger.lua")
    
addscript(5893909218,"Roblox [Animations]", "RobloxAnimations", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxAnimations.lua")
                    
    
addscript(70005410,"Blox Hunt Tokens [Autofarm]", "BloxHuntTokensAutofarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxHuntTokensAutofarm.lua")
                    
                    
addscriptexist(537413528, "BuildABoatForTreasureQuestsAutoFarmManyFunctions", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureQuestsAutoFarmManyFunctions.lua")
    
addscript(3376769145,"Dragon Ball Warriors [Use the best form]", "DragonBallWarriorsUsethebestform", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBallWarriorsUsethebestform.lua")
                    
                    
addscriptexist(10243982775, "RedBox2QuickswapweaponsMartyrdom", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RedBox2QuickswapweaponsMartyrdom.lua")
                    
addscriptexist(8750997647, "TappingLegendsXAutoTapAutoRebirthAutoclicker", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegendsXAutoTapAutoRebirthAutoclicker.lua")
    
addscript(10321372166,"Pet Simulator X [Auto Farm, Auto open Pets, Auto Golden pets]", "PetSimulatorXAutoFarmAutoopenPetsAutoGoldenpets", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmAutoopenPetsAutoGoldenpets.lua")
                    
                    
addscriptexist(445664957, "ParkourEspTypes", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ParkourEspTypes.lua")
    
addscript(9840387028,"Era of Althea [Auto Mobs, Walkspeed]", "EraofAltheaAutoMobsWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EraofAltheaAutoMobsWalkspeed.lua")
                    
    
addscript(428114181,"Azure Mines [TP To ore, Auto Farm]", "AzureMinesTPTooreAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AzureMinesTPTooreAutoFarm.lua")
                    
    
addscript(7993293100,"Tsunami Game [Auto Farm, Teleport]", "TsunamiGameAutoFarmTeleport", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TsunamiGameAutoFarmTeleport.lua")
                    
                    
addscriptexist(4282985734, "CombatWarriorsKillAuraNoparry", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CombatWarriorsKillAuraNoparry.lua")
                    
addscriptexist(2788229376, "DaHoodTrashTalk", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodTrashTalk.lua")
                    
addscriptexist(9840387028, "EraofAltheaRedeemcodes", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EraofAltheaRedeemcodes.lua")
    
addscript(6407649031,"NO-SCOPE ARCADE [Aimbot, KillAll]", "NOSCOPEARCADEAimbotKillAll", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NOSCOPEARCADEAimbotKillAll.lua")
                    
                    
addscriptexist(8540346411, "RebirthChampionsXAutoClickAutoHatch", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RebirthChampionsXAutoClickAutoHatch.lua")
                    
addscriptexist(9872472334, "EvadeGodModeAutoFarmXP", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EvadeGodModeAutoFarmXP.lua")
                    
addscriptexist(9585537847, "SHADOVISRPGAutoHeal", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SHADOVISRPGAutoHeal.lua")
    
addscript(9243187709,"Pedagondia Faunas [Inf Stamina, Auto Eat]", "PedagondiaFaunasInfStaminaAutoEat", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PedagondiaFaunasInfStaminaAutoEat.lua")
                    
    
addscript(863266079,"Apocalypse Rising 2 [Inf Jump, Aimbot]", "ApocalypseRising2InfJumpAimbot", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ApocalypseRising2InfJumpAimbot.lua")
                    
                    
addscriptexist(10047913840, "TrainingSimulatorRemoteSpy", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TrainingSimulatorRemoteSpy.lua")
                    
addscriptexist(3823781113, "SaberSimulatorAutoClicker", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SaberSimulatorAutoClicker.lua")
    
addscript(9976239895,"Gumball Factory Tycoon [Auto Farm]", "GumballFactoryTycoonAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GumballFactoryTycoonAutoFarm.lua")
                    
                    
addscriptexist(2788229376, "DaHoodSilentModeTriggerBot", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodSilentModeTriggerBot.lua")
    
addscript(2413927524,"The Rake REMASTERED [Notifications, Esp]", "TheRakeREMASTEREDNotificationsEsp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheRakeREMASTEREDNotificationsEsp.lua")
                    
    
addscript(10386774046,"Legend Magician [Insane Reach]", "LegendMagicianInsaneReach", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendMagicianInsaneReach.lua")
                    
    
addscript(9531918774,"mid eastern conflict sim [Inf Ammo]", "mideasternconflictsimInfAmmo", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/mideasternconflictsimInfAmmo.lua")
                    
                    
addscriptexist(286090429, "ArsenalNoRecoil", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalNoRecoil.lua")
    
addscript(8705534359,"Shopping Cart Simulator! [Inf Money]", "ShoppingCartSimulatorInfMoney", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShoppingCartSimulatorInfMoney.lua")
                    
    
addscript(8508161757,"Raise An Albert [Inf Money]", "RaiseAnAlbertInfMoney", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaiseAnAlbertInfMoney.lua")
                    
    
addscript(3199109640,"Camping 2 [TP, Walkspeed]", "Camping2TPWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Camping2TPWalkspeed.lua")
                    
    
addscript(4003872968,"Giant Survival! [Inf Money, Best Gun]", "GiantSurvivalInfMoneyBestGun", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GiantSurvivalInfMoneyBestGun.lua")
                    
    
addscript(8531522502,"Facility Of Redemption [WalkSpeed]", "FacilityOfRedemptionWalkSpeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FacilityOfRedemptionWalkSpeed.lua")
                    
    
addscript(391104146,"Let's Party∞ +Gear Testing Edition [Ban All, Fly]", "LetsParty∞GearTestingEditionBanAllFly", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LetsParty∞GearTestingEditionBanAllFly.lua")
                    
                    
addscriptexist(3260590327, "TowerDefenseSimulator", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerDefenseSimulator.lua")
    
addscript(891852901,"Greenville [Car Stealer]", "GreenvilleCarStealer", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GreenvilleCarStealer.lua")
                    
                    
addscriptexist(2534724415, "EmergencyResponseLibertyCountyUndetectedTeleport", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EmergencyResponseLibertyCountyUndetectedTeleport.lua")
    
addscript(10351639671,"Anime Legends Simulator [Auto Complete Event]", "AnimeLegendsSimulatorAutoCompleteEvent", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeLegendsSimulatorAutoCompleteEvent.lua")
                    
                    
addscriptexist(9585537847, "SHADOVISRPGProjectiveSpam", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SHADOVISRPGProjectiveSpam.lua")
                    
addscriptexist(7009799230, "PressureWashSimulatorInfEvrthInfMoney", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PressureWashSimulatorInfEvrthInfMoney.lua")
                    
addscriptexist(10524502174, "OnePunchFightersAutoFarmAutoClick", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OnePunchFightersAutoFarmAutoClick.lua")
                    
addscriptexist(9203864304, "raiseafloppaAutoCollectAutoFill", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/raiseafloppaAutoCollectAutoFill.lua")
                    
addscriptexist(155615604, "PrisonLifeInfStaminaRemovedoors", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLifeInfStaminaRemovedoors.lua")
                    
addscriptexist(3101667897, "LegendsOfSpeed⚡AutoFarmAutoRebirth", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendsOfSpeed⚡AutoFarmAutoRebirth.lua")
                    
addscriptexist(189707, "NaturalDisasterSurvival", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NaturalDisasterSurvival.lua")
    
addscript(9940051005,"Blox Legends [AutoCollect]", "BloxLegendsAutoCollect", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxLegendsAutoCollect.lua")
                    
                    
addscriptexist(9498006165, "TappingSimulatorAutoClicker", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingSimulatorAutoClicker.lua")
    
addscript(2817130270,"Digging Simulator [Inf Bag, Inf Money]", "DiggingSimulatorInfBagInfMoney", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DiggingSimulatorInfBagInfMoney.lua")
                    
    
addscript(9120036461,"Simple Basketball [Inf Money]", "SimpleBasketballInfMoney", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SimpleBasketballInfMoney.lua")
                    
    
addscript(6681032961,"Museum Tycoon [Inf Cash]", "MuseumTycoonInfCash", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MuseumTycoonInfCash.lua")
                    
    
addscript(6357903043,"Aniverse [Auto Farm, Auto Replay]", "AniverseAutoFarmAutoReplay", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AniverseAutoFarmAutoReplay.lua")
                    
    
addscript(2306562216,"Camping [Get Items, Walkspeed]", "CampingGetItemsWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CampingGetItemsWalkspeed.lua")
                    
    
addscript(8304191830,"Anime Adventures [Auto Challenge, Auto Inf Mode]", "AnimeAdventuresAutoChallengeAutoInfMode", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeAdventuresAutoChallengeAutoInfMode.lua")
                    
    
addscript(1923555882,"East Brickton [Auto Farm]", "EastBricktonAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EastBricktonAutoFarm.lua")
                    
                    
addscriptexist(1554960397, "CarDealershipTycoonAutoRaceDuneAutoRaceRally", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarDealershipTycoonAutoRaceDuneAutoRaceRally.lua")
    
addscript(417267366,"Dollhouse Roleplay [Adm Cmds]", "DollhouseRoleplayAdmCmds", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DollhouseRoleplayAdmCmds.lua")
                    
                    
addscriptexist(286090429, "ArsenalSilentAimKillAll", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalSilentAimKillAll.lua")
    
addscript(13822889,"Lumber Tycoon 2 [Walkspeed, AutoBuy]", "LumberTycoon2WalkspeedAutoBuy", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LumberTycoon2WalkspeedAutoBuy.lua")
                    
                    
addscriptexist(391104146, "LetsParty∞GearTestingEditionNoclipFly", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LetsParty∞GearTestingEditionNoclipFly.lua")
                    
addscriptexist(10184360875, "PetFishingSimulatorInfMoney", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetFishingSimulatorInfMoney.lua")
    
addscript(2039118386,"Neighborhood war [Anti Ragdoll, No fall dmg]", "NeighborhoodwarAntiRagdollNofalldmg", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NeighborhoodwarAntiRagdollNofalldmg.lua")
                    
                    
addscriptexist(10524502174, "OnePunchFightersAutoFarmAutoRank", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OnePunchFightersAutoFarmAutoRank.lua")
                    
addscriptexist(2753915549, "BloxFruitsAutoFarmBeli", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsAutoFarmBeli.lua")
                    
addscriptexist(4809447488, "VentureTaleAutoRetryAutoCollect", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VentureTaleAutoRetryAutoCollect.lua")
    
addscript(6468323505,"Spellbound ✨ Magic RPG [Auto Raid Tower, Inf Coins]", "Spellbound✨MagicRPGAutoRaidTowerInfCoins", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Spellbound✨MagicRPGAutoRaidTowerInfCoins.lua")
                    
                    
addscriptexist(9386846196, "BrawlingGroundsKillAura", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrawlingGroundsKillAura.lua")
    
addscript(534701013,"The Labyrinth [X-Ray, Auto attack]", "TheLabyrinthXRayAutoattack", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheLabyrinthXRayAutoattack.lua")
                    
    
addscript(10151870864,"Ice Factory Tycoon [Auto Farm]", "IceFactoryTycoonAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/IceFactoryTycoonAutoFarm.lua")
                    
    
addscript(7606302010,"YoYo Simulator [Auto YoYo, Auto Hatch]", "YoYoSimulatorAutoYoYoAutoHatch", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YoYoSimulatorAutoYoYoAutoHatch.lua")
                    
    
addscript(8811271345,"Balanced Craftwars Overhaul [Godmode, Autofarm]", "BalancedCraftwarsOverhaulGodmodeAutofarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BalancedCraftwarsOverhaulGodmodeAutofarm.lua")
                    
                    
addscriptexist(10347946161, "RatWashingTycoonAutoObbyAutoWash", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RatWashingTycoonAutoObbyAutoWash.lua")
    
addscript(9611809130,"Crazy Party RPG [AutoFarm]", "CrazyPartyRPGAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CrazyPartyRPGAutoFarm.lua")
                    
                    
addscriptexist(6407649031, "NOSCOPEARCADEAimbotEsp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NOSCOPEARCADEAimbotEsp.lua")
                    
addscriptexist(6542731310, "DogecoinMiningTycoonUnlockAll", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DogecoinMiningTycoonUnlockAll.lua")
                    
addscriptexist(10184360875, "PetFishingSimulatorAutoFarmRebirth", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetFishingSimulatorAutoFarmRebirth.lua")
                    
addscriptexist(2537430692, "JengaSoundVineBoom", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JengaSoundVineBoom.lua")
                    
addscriptexist(2039118386, "NeighborhoodwarBypasser", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NeighborhoodwarBypasser.lua")
    
addscript(2772610559,"Farming and Friends [Auto Farm]", "FarmingandFriendsAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FarmingandFriendsAutoFarm.lua")
                    
                    
addscriptexist(9284097280, "ApartmentTycoonAutocollectcash", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ApartmentTycoonAutocollectcash.lua")
                    
addscriptexist(9243187709, "PedagondiaFaunasKillAura", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PedagondiaFaunasKillAura.lua")
    
addscript(9704893711,"Dha Hood [Inf Money]", "DhaHoodInfMoney", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DhaHoodInfMoney.lua")
                    
    
addscript(5024793931,"Zeppelin Wars [Anti Cheat Bypass]", "ZeppelinWarsAntiCheatBypass", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZeppelinWarsAntiCheatBypass.lua")
                    
    
addscript(9579974235,"Find The Floppa Morphs [Collect Floppas]", "FindTheFloppaMorphsCollectFloppas", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FindTheFloppaMorphsCollectFloppas.lua")
                    
                    
addscriptexist(8737602449, "PLSDONATEEmotesAnimation", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PLSDONATEEmotesAnimation.lua")
                    
addscriptexist(4490140733, "MyRestaurantAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyRestaurantAutoFarm.lua")
    
addscript(8303902695,"Pet Posse Simulator [Auto Egg,AutoFarm]", "PetPosseSimulatorAutoEggAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetPosseSimulatorAutoEggAutoFarm.lua")
                    
    
addscript(5379581123,"Sword Fight and Flex Your Time [Auto Fight]", "SwordFightandFlexYourTimeAutoFight", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwordFightandFlexYourTimeAutoFight.lua")
                    
                    
addscriptexist(2753915549, "BloxFruitsAutoFarmandmore", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsAutoFarmandmore.lua")
    
addscript(2396588044,"Adopt and Raise [Inf Money]", "AdoptandRaiseInfMoney", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptandRaiseInfMoney.lua")
                    
                    
addscriptexist(7952502098, "ImpossibleGlassBridgeObbyHighlightsallincorrectones", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ImpossibleGlassBridgeObbyHighlightsallincorrectones.lua")
                    
addscriptexist(2537430692, "JengaEndGameFly", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JengaEndGameFly.lua")
                    
addscriptexist(286090429, "ArsenalKillAllSilentAim", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalKillAllSilentAim.lua")
                    
addscriptexist(1962086868, "TowerofHellGodModeInfJump", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofHellGodModeInfJump.lua")
    
addscript(4410049285,"Driving Simulator [Walkspeed, Rainbow Car]", "DrivingSimulatorWalkspeedRainbowCar", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DrivingSimulatorWalkspeedRainbowCar.lua")
                    
                    
addscriptexist(10524502174, "OnePunchFightersAutoRankUpAutoClick", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OnePunchFightersAutoRankUpAutoClick.lua")
    
addscript(5890116343,"Age Simulator [AutoFarm, AutoAge]", "AgeSimulatorAutoFarmAutoAge", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AgeSimulatorAutoFarmAutoAge.lua")
                    
                    
addscriptexist(648362523, "BreakingPointDupe", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BreakingPointDupe.lua")
                    
addscriptexist(6516141723, "DOORSGuiwithcoolfunctions", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORSGuiwithcoolfunctions.lua")
                    
addscriptexist(8458333139, "1LIGEAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/1LIGEAutoFarm.lua")
                    
addscriptexist(7415160483, "RobloxAdminCommandsFE", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxAdminCommandsFE.lua")
    
addscript(2768379856,"SCP 3008 [Water Compatible, Give Items]", "SCP3008WaterCompatibleGiveItems", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SCP3008WaterCompatibleGiveItems.lua")
                    
                    
addscriptexist(9585537847, "SHADOVISRPGAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SHADOVISRPGAutoFarm.lua")
    
addscript(6456351776,"Kaiju Paradise [No CD Grab, Walkspeed]", "KaijuParadiseNoCDGrabWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KaijuParadiseNoCDGrabWalkspeed.lua")
                    
    
addscript(6802248248,"SAITAMANIA [Auto Spin, Rebirth]", "SAITAMANIAAutoSpinRebirth", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SAITAMANIAAutoSpinRebirth.lua")
                    
    
addscript(260606376,"Realistic Roleplay 2 [Auto Farm]", "RealisticRoleplay2AutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RealisticRoleplay2AutoFarm.lua")
                    
    
addscript(7941853407,"Squishmallow [Auto Farm]", "SquishmallowAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SquishmallowAutoFarm.lua")
                    
    
addscript(10315830663,"Cant Say The Letter [Inf Time]", "CantSayTheLetterInfTime", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CantSayTheLetterInfTime.lua")
                    
                    
addscriptexist(10315830663, "CantSayTheLetterGiveTools", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CantSayTheLetterGiveTools.lua")
                    
addscriptexist(10315830663, "CantSayTheLetterCansaysLetter", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CantSayTheLetterCansaysLetter.lua")
    
addscript(10011532704,"Anime Brawl Simulator [Inf Stars]", "AnimeBrawlSimulatorInfStars", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeBrawlSimulatorInfStars.lua")
                    
                    
addscriptexist(4282985734, "CombatWarriorsKillAuraAutoEquip", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CombatWarriorsKillAuraAutoEquip.lua")
                    
addscriptexist(2788229376, "DaHoodJojoStand", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodJojoStand.lua")
                    
addscriptexist(1554960397, "CarDealershipTycoonAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarDealershipTycoonAutoFarm.lua")
                    
addscriptexist(7026828578, "SpeedSimulatorAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedSimulatorAutoFarm.lua")
                    
addscriptexist(6516141723, "DOORSEsp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORSEsp.lua")
    
addscript(6716188523,"Business Tycoon [Inf cash]", "BusinessTycoonInfcash", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BusinessTycoonInfcash.lua")
                    
    
addscript(6679274937,"Vans World [Pencil cases]", "VansWorldPencilcases", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VansWorldPencilcases.lua")
                    
                    
addscriptexist(7899881670, "RBWorld4Shootassist", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RBWorld4Shootassist.lua")
    
addscript(9845465117,"AU:Reborn [Auto Farm]", "AURebornAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AURebornAutoFarm.lua")
                    
                    
addscriptexist(9845465117, "AURebornAutoFarmTp", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AURebornAutoFarmTp.lua")
    
addscript(4863541388,"Scythe Masters [Redeem codes]", "ScytheMastersRedeemcodes", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ScytheMastersRedeemcodes.lua")
                    
    
addscript(7428716219,"BREAKING BAD", "BREAKINGBADTHETYCOONKillAll", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BREAKINGBADTHETYCOONKillAll.lua")
                    
                    
addscriptexist(1554960397, "CarDealershipTycoonAutoRallyRace", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarDealershipTycoonAutoRallyRace.lua")
    
addscript(4172461739,"Windsier Hotel [Crash Server]", "WindsierHotelCrashServer", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WindsierHotelCrashServer.lua")
                    
                    
addscriptexist(292439477, "PhantomForcesNorecoil", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesNorecoil.lua")
                    
addscriptexist(286090429, "ArsenalESPAimbot", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalESPAimbot.lua")
                    
addscriptexist(9872472334, "EvadeWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EvadeWalkspeed.lua")
    
addscript(10070062081,"Minion Simulator [Auto Farm, Walkspeed]", "MinionSimulatorAutoFarmWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MinionSimulatorAutoFarmWalkspeed.lua")
                    
    
addscript(8573962925,"Alternate Battlegrounds [Auto Click, PlayerSnipe]", "AlternateBattlegroundsAutoClickPlayerSnipe", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AlternateBattlegroundsAutoClickPlayerSnipe.lua")
                    
                    
addscriptexist(3527629287, "BigPaintballAimbotFov", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BigPaintballAimbotFov.lua")
                    
addscriptexist(286090429, "ArsenalAimbotWallcheck", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalAimbotWallcheck.lua")
                    
addscriptexist(8737602449, "PLSDONATEAutoBeg", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PLSDONATEAutoBeg.lua")
    
addscript(5041144419,"SCP", "SCPRoleplayAutoFarmTeleports", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SCPRoleplayAutoFarmTeleports.lua")
                    
                    
addscriptexist(6403373529, "SlapBattlesAutoSlapples", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlapBattlesAutoSlapples.lua")
                    
addscriptexist(9585537847, "SHADOVISRPGKillAura", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SHADOVISRPGKillAura.lua")
                    
addscriptexist(537413528, "BuildABoatForTreasureAutoFarmTeleport", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureAutoFarmTeleport.lua")
                    
addscriptexist(189707, "NaturalDisasterSurvivalNoFallGravity", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NaturalDisasterSurvivalNoFallGravity.lua")
    
addscript(7167319176,"Chicago Remastered [Speed, Jump Power]", "ChicagoRemasteredSpeedJumpPower", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ChicagoRemasteredSpeedJumpPower.lua")
                    
                    
addscriptexist(2537430692, "JengaAutoWin", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JengaAutoWin.lua")
                    
addscriptexist(8811271345, "BalancedCraftwarsOverhaulAutoEquipTeleport", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BalancedCraftwarsOverhaulAutoEquipTeleport.lua")
                    
addscriptexist(4863541388, "ScytheMastersAutoclick", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ScytheMastersAutoclick.lua")
                    
addscriptexist(10447882390, "ZombieResearchTycoonAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieResearchTycoonAutoFarm.lua")
                    
addscriptexist(260606376, "RealisticRoleplay2CashAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RealisticRoleplay2CashAutoFarm.lua")
    
addscript(6512923934,"Ultra Clicker Simulator [Auto Click]", "UltraClickerSimulatorAutoClick", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UltraClickerSimulatorAutoClick.lua")
                    
                    
addscriptexist(9970551995, "TouchTheGrassSimulatorKillauraautohatch", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TouchTheGrassSimulatorKillauraautohatch.lua")
                    
addscriptexist(10325366821, "OOFTycoonAutoFarmAutoDeposit", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OOFTycoonAutoFarmAutoDeposit.lua")
    
addscript(10118559731,"Nico's Nextbots [God Mode]", "NicosNextbotsGodMode", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NicosNextbotsGodMode.lua")
                    
                    
addscriptexist(5108997584, "Reason2DieValueIncreaser", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Reason2DieValueIncreaser.lua")
    
addscript(3522803956,"De Pride Isle Sanatorium [Anticheat bypass]", "DePrideIsleSanatoriumAnticheatbypass", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DePrideIsleSanatoriumAnticheatbypass.lua")
                    
                    
addscriptexist(5901548022, "TryToDieChangeStat", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TryToDieChangeStat.lua")
                    
addscriptexist(4490140733, "MyRestaurantManyCash", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyRestaurantManyCash.lua")
                    
addscriptexist(5041144419, "SCPRoleplaySabotageTransformerAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SCPRoleplaySabotageTransformerAutoFarm.lua")
    
addscript(9666226803,"Motel Simulator [Auto Farm, Walkspeed]", "MotelSimulatorAutoFarmWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MotelSimulatorAutoFarmWalkspeed.lua")
                    
    
addscript(8818978508,"Space Simulator Reborn [Auto Sell, Auto Farm]", "SpaceSimulatorRebornAutoSellAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpaceSimulatorRebornAutoSellAutoFarm.lua")
                    
    
addscript(8657766101,"Marvellous Playground [Gamepass]", "MarvellousPlaygroundGamepass", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MarvellousPlaygroundGamepass.lua")
                    
                    
addscriptexist(3956818381, "NinjaLegendsAutoSwingAutoSell", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsAutoSwingAutoSell.lua")
    
addscript(6068693809,"enceladus, but he's real [Break Bot]", "enceladusbuthesrealBreakBot", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/enceladusbuthesrealBreakBot.lua")
                    
                    
addscriptexist(3522803956, "DeprideislesanatoriumInfEnergyKillaura", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeprideislesanatoriumInfEnergyKillaura.lua")
    
addscript(294790062,"Roblox Titanic [Auto Farm, Walkspeed]", "RobloxTitanicAutoFarmWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxTitanicAutoFarmWalkspeed.lua")
                    
                    
addscriptexist(8204899140, "FootballFusion2InfJump", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FootballFusion2InfJump.lua")
                    
addscriptexist(9970551995, "TouchTheGrassSimulatorInfcoins", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TouchTheGrassSimulatorInfcoins.lua")
                    
addscriptexist(10524502174, "OnePunchFightersAutoClick", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OnePunchFightersAutoClick.lua")
                    
addscriptexist(9872472334, "EvadeGodModeFullbright", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EvadeGodModeFullbright.lua")
    
addscript(6114972958,"Initial D", "InitialDTougeLegendsUnlockcarsWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/InitialDTougeLegendsUnlockcarsWalkspeed.lua")
                    
    
addscript(3095204897,"Isle, 9 [ESP, Noclip]", "Isle9ESPNoclip", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Isle9ESPNoclip.lua")
                    
                    
addscriptexist(8328351891, "MegaMansionTycoonAutoCollect", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MegaMansionTycoonAutoCollect.lua")
    
addscript(9733390246,"Stair Tappers! [Auto Climb]", "StairTappersAutoClimb", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StairTappersAutoClimb.lua")
                    
    
addscript(9943374061,"Planet Oof [Auto Collect]", "PlanetOofAutoCollect", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PlanetOofAutoCollect.lua")
                    
                    
addscriptexist(5602055394, "HoodModdedSilentAimInfJump", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HoodModdedSilentAimInfJump.lua")
                    
addscriptexist(10192063645, "ThyhoodNojumpCDTeleports", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThyhoodNojumpCDTeleports.lua")
    
addscript(9157870347,"Swarm Simulator! [Gamepasses, Auto Farm]", "SwarmSimulatorGamepassesAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwarmSimulatorGamepassesAutoFarm.lua")
                    
                    
addscriptexist(4282985734, "CombatWarriorsSilentaim", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CombatWarriorsSilentaim.lua")
    
addscript(4390380541,"Rumble Quest [WalkSpeed, Kill-Aura]", "RumbleQuestWalkSpeedKillAura", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RumbleQuestWalkSpeedKillAura.lua")
                    
                    
addscriptexist(192800, "WorkataPizzaPlaceBecomemanager", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorkataPizzaPlaceBecomemanager.lua")
                    
addscriptexist(2809202155, "YourBizarreAdventureItemFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YourBizarreAdventureItemFarm.lua")
                    
addscriptexist(185655149, "Bloxburg", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Bloxburg.lua")
                    
addscriptexist(9285238704, "RaceClickerAutoWin", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaceClickerAutoWin.lua")
    
addscript(10378234820,"Mining Simulator 2 Fan-Made [Tool enchants]", "MiningSimulator2FanMadeToolenchants", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2FanMadeToolenchants.lua")
                    
                    
addscriptexist(10378234820, "MiningSimulator2FanMadeResetPass", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2FanMadeResetPass.lua")
                    
addscriptexist(10378234820, "MiningSimulator2FanMadePrimeBenefits", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2FanMadePrimeBenefits.lua")
    
addscript(8585657145,"Anime Hero Simulator [Kill Aura - Grab Coins & More!]", "AnimeHeroSimulatorKillAuraGrabCoinsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeHeroSimulatorKillAuraGrabCoinsMore.lua")
                    
    
addscript(7127407851,"Attack on Titan Evolution [Kill Aura - Max Damage]", "AttackonTitanEvolutionKillAuraMaxDamage", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AttackonTitanEvolutionKillAuraMaxDamage.lua")
                    
    
addscript(2732246600,"Bloody Battle [Respawns You Until You Get The Loot You Want]", "BloodyBattleRespawnsYouUntilYouGetTheLootYouWant", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloodyBattleRespawnsYouUntilYouGetTheLootYouWant.lua")
                    
                    
addscriptexist(8884334497, "MiningClickerSimulatorAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningClickerSimulatorAutoFarm.lua")
                    
addscriptexist(7860844204, "LifeSentenceAutoWorkout", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LifeSentenceAutoWorkout.lua")
                    
addscriptexist(8884334497, "MiningClickerSimulatorGUIAutoFarming", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningClickerSimulatorGUIAutoFarming.lua")
                    
addscriptexist(9666226803, "MotelSimulatorInfiniteKitchenSupplies", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MotelSimulatorInfiniteKitchenSupplies.lua")
                    
addscriptexist(6766156863, "StrongmanSimulatorAutoFarmEnergyMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrongmanSimulatorAutoFarmEnergyMore.lua")
    
addscript(5939428933,"Crewmates! (Among Us) [Remove Backpack & More!]", "CrewmatesAmongUsRemoveBackpackMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CrewmatesAmongUsRemoveBackpackMore.lua")
                    
                    
addscriptexist(4872321990, "IslandsAutoCoollectNearbyItems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/IslandsAutoCoollectNearbyItems.lua")
                    
addscriptexist(9285238704, "RaceClickerAutoclick", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaceClickerAutoclick.lua")
    
addscript(510444657,"Criminal Vs Swat [Inf Health]", "CriminalVsSwatInfHealth", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriminalVsSwatInfHealth.lua")
                    
                    
addscriptexist(7991339063, "RainbowFriends", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RainbowFriends.lua")
                    
addscriptexist(4951858512, "VictoryRaceAutoWinFly", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VictoryRaceAutoWinFly.lua")
                    
addscriptexist(621129760, "KATInfAmmo", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KATInfAmmo.lua")
                    
addscriptexist(10157366004, "PetTappingSimulatorAutoFarmAutoHatch", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetTappingSimulatorAutoFarmAutoHatch.lua")
                    
addscriptexist(2622527242, "SCPrBreachESPMisc", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SCPrBreachESPMisc.lua")
                    
addscriptexist(7026828578, "SpeedSimulatorInfScore", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedSimulatorInfScore.lua")
                    
addscriptexist(7991339063, "RainbowFriendsGodModeAutoWin", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RainbowFriendsGodModeAutoWin.lua")
    
addscript(5201688943,"Da hood [ESP]", "DahoodESP", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DahoodESP.lua")
                    
    
addscript(6939849554,"Cart Ride Tycoon thru a Cave 2 [Auto farm cash]", "CartRideTycoonthruaCave2Autofarmcash", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CartRideTycoonthruaCave2Autofarmcash.lua")
                    
    
addscript(3234050617,"Left 2 Die [Infinite Ammo]", "Left2DieInfiniteAmmo", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Left2DieInfiniteAmmo.lua")
                    
                    
addscriptexist(621129760, "KnifeAbilityTestGodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KnifeAbilityTestGodMode.lua")
                    
addscriptexist(340227283, "RoBowlingAimbotHitboxExtender", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoBowlingAimbotHitboxExtender.lua")
    
addscript(6950767274,"Fighter's Era [Roadwork Load]", "FightersEraRoadworkLoad", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FightersEraRoadworkLoad.lua")
                    
                    
addscriptexist(7305309231, "TaxiBossAutoFarmTrophies", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TaxiBossAutoFarmTrophies.lua")
                    
addscriptexist(10524502174, "OnePunchFightersAutoFarmautoeggs", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OnePunchFightersAutoFarmautoeggs.lua")
                    
addscriptexist(286090429, "ArsenalAutofarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalAutofarm.lua")
    
addscript(2685347741,"Ghost Simulator [Auto Farm, Auto Sell]", "GhostSimulatorAutoFarmAutoSell", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GhostSimulatorAutoFarmAutoSell.lua")
                    
                    
addscriptexist(292439477, "PhantomForcesESPAimbot", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesESPAimbot.lua")
    
addscript(5201039691,"Tatakai V.2 [ESP, Autofarm]", "TatakaiV2ESPAutofarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TatakaiV2ESPAutofarm.lua")
                    
                    
addscriptexist(192800, "WorkataPizzaPlaceAutoFarmWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorkataPizzaPlaceAutoFarmWalkspeed.lua")
                    
addscriptexist(10351639671, "AnimeLegendsSimulatorAutoClickAutoEgg", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeLegendsSimulatorAutoClickAutoEgg.lua")
                    
addscriptexist(10106105124, "WheatFarmingSimulatorAutoFarmAutoSell", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WheatFarmingSimulatorAutoFarmAutoSell.lua")
    
addscript(9792312812,"Vampire Fighters [Kill All, Inf Stam]", "VampireFightersKillAllInfStam", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VampireFightersKillAllInfStam.lua")
                    
                    
addscriptexist(8737602449, "PLSDONATEAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PLSDONATEAutoFarm.lua")
                    
addscriptexist(6299805723, "FightersEraInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FightersEraInfMoney.lua")
                    
addscriptexist(4036494886, "GunSimulatorInfiniteEverythingCustomStats", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GunSimulatorInfiniteEverythingCustomStats.lua")
    
addscript(8689257920,"Life in Prison [GUI - Kill All & More!]", "LifeinPrisonGUIKillAllMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LifeinPrisonGUIKillAllMore.lua")
                    
                    
addscriptexist(9498006165, "TappingSimulatorAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingSimulatorAutoFarmGUI.lua")
                    
addscriptexist(7991339063, "RainbowFriendsCoinFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RainbowFriendsCoinFarm.lua")
                    
addscriptexist(10118559731, "nicosnextbotsblackoutsBotsPowerboxsEspInstantPowerbox", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/nicosnextbotsblackoutsBotsPowerboxsEspInstantPowerbox.lua")
                    
addscriptexist(6516141723, "DOORSLegitCheat–EspAndMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORSLegitCheat–EspAndMore.lua")
                    
addscriptexist(9845465117, "AURebornInstantInfiniteAwakening", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AURebornInstantInfiniteAwakening.lua")
    
addscript(8278412720,"CS Prison Life [BETA] [Casino Auto Farm]", "CSPrisonLifeBETACasinoAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CSPrisonLifeBETACasinoAutoFarm.lua")
                    
                    
addscriptexist(4809447488, "VentureTalesAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VentureTalesAutoFarm.lua")
                    
addscriptexist(5956785391, "ProjectSlayersKillAuraTeleportsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersKillAuraTeleportsMore.lua")
                    
addscriptexist(9829869210, "KarateKickSimulatorInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KarateKickSimulatorInfiniteMoney.lua")
                    
addscriptexist(9386846196, "BrawlingGroundsInstaKill", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrawlingGroundsInstaKill.lua")
                    
addscriptexist(9733390246, "StairTappersAutoPlay", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StairTappersAutoPlay.lua")
    
addscript(8123652942,"Legend Piece [Instant Kill Mobs]", "LegendPieceInstantKillMobs", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendPieceInstantKillMobs.lua")
                    
    
addscript(7183242684,"Strength Training Simulator [Auto Farm - GUI]", "StrengthTrainingSimulatorAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrengthTrainingSimulatorAutoFarmGUI.lua")
                    
    
addscript(147536429,"Field Of Battle [Kill General]", "FieldOfBattleKillGeneral", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FieldOfBattleKillGeneral.lua")
                    
    
addscript(6720959312,"LootQuest [BETA] [Anti Afk & Auto Fuse]", "LootQuestBETAAntiAfkAutoFuse", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LootQuestBETAAntiAfkAutoFuse.lua")
                    
                    
addscriptexist(9285238704, "RaceClickerAutoRaceGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaceClickerAutoRaceGUI.lua")
                    
addscriptexist(10386774046, "LegendMagician1Shot", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendMagician1Shot.lua")
    
addscript(109814071,"Medieval Warfare Reforged [Auto Farm - GUI]", "MedievalWarfareReforgedAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MedievalWarfareReforgedAutoFarmGUI.lua")
                    
                    
addscriptexist(6874129651, "ShinyTools12Games", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShinyTools12Games.lua")
                    
addscriptexist(1224212277, "MadCityChapter2AutoArrest", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityChapter2AutoArrest.lua")
                    
addscriptexist(10118559731, "nicosnextbotsblackoutsOpenAllDoors", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/nicosnextbotsblackoutsOpenAllDoors.lua")
    
addscript(8500690972,"NO STOP Obby [Skip Stage]", "NOSTOPObbySkipStage", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NOSTOPObbySkipStage.lua")
                    
                    
addscriptexist(292439477, "PhantomForcesFreeChams", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesFreeChams.lua")
    
addscript(3346617530,"Freeze Tag Extreme [Anti Admin & More!]", "FreezeTagExtremeAntiAdminMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FreezeTagExtremeAntiAdminMore.lua")
                    
                    
addscriptexist(7009799230, "PressureWashSimulatorInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PressureWashSimulatorInfiniteMoney.lua")
    
addscript(6298464951,"Roblox Is Unbreakable [Auto Collect Items]", "RobloxIsUnbreakableAutoCollectItems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxIsUnbreakableAutoCollectItems.lua")
                    
    
addscript(10319501620,"School of Sport [GUI - Collect All Coins]", "SchoolofSportGUICollectAllCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SchoolofSportGUICollectAllCoins.lua")
                    
                    
addscriptexist(9285238704, "RaceClickerAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaceClickerAutoFarm.lua")
    
addscript(6983932919,"osu!RoVer [Auto Click Circles - Time Warp & More!]", "osuRoVerAutoClickCirclesTimeWarpMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/osuRoVerAutoClickCirclesTimeWarpMore.lua")
                    
    
addscript(9605515605,"Sword Lands Simulator - Alpha [Inf Money]", "SwordLandsSimulatorAlphaInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwordLandsSimulatorAlphaInfMoney.lua")
                    
                    
addscriptexist(7952502098, "ImpossibleGlassBridgeObbyAUTOFARMER", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ImpossibleGlassBridgeObbyAUTOFARMER.lua")
                    
addscriptexist(9285238704, "RaceClickerspeedAntiCheatbypass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaceClickerspeedAntiCheatbypass.lua")
                    
addscriptexist(189707, "NaturalDisastersSurvivalAutoDisasterDetectFreeBallonremovefallDamage", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NaturalDisastersSurvivalAutoDisasterDetectFreeBallonremovefallDamage.lua")
                    
addscriptexist(9498006165, "TappingSimulatorAutoFarmSkipShinyStage", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingSimulatorAutoFarmSkipShinyStage.lua")
    
addscript(23578803,"Hotel Elephant [Infinite Money]", "HotelElephantInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HotelElephantInfiniteMoney.lua")
                    
                    
addscriptexist(2534724415, "EmergencyResponseLibertyCountyNoRecoil", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EmergencyResponseLibertyCountyNoRecoil.lua")
    
addscript(6902912928,"GET TO THE TOP! [Unlimited Points]", "GETTOTHETOPUnlimitedPoints", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GETTOTHETOPUnlimitedPoints.lua")
                    
    
addscript(2506738224,"Fallen [Esp]", "FallenEsp", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FallenEsp.lua")
                    
                    
addscriptexist(445664957, "ParkourBagEsp", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ParkourBagEsp.lua")
    
addscript(7378050129,"Kill R63 with DOOM music [Changes the Numbers at All]", "KillR63withDOOMmusicChangestheNumbersatAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KillR63withDOOMmusicChangestheNumbersatAll.lua")
                    
    
addscript(8772496234,"Roblox [Admin Cmd]", "RobloxAdminCmd", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxAdminCmd.lua")
                    
    
addscript(8317588085,"Block Tycoon [Cheaper shop]", "BlockTycoonCheapershop", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BlockTycoonCheapershop.lua")
                    
                    
addscriptexist(537413528, "BestBuildABoatForTreasureAutoFarmTp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BestBuildABoatForTreasureAutoFarmTp.lua")
    
addscript(155382109,"Survive and Kill the Killers in Area 51 [Infinite ammo (legit and not), Nerf Killers, Restore Ammo]", "SurviveandKilltheKillersinArea51InfiniteammolegitandnotNerfKillersRestoreAmmo", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurviveandKilltheKillersinArea51InfiniteammolegitandnotNerfKillersRestoreAmmo.lua")
                    
                    
addscriptexist(9285238704, "RaceClickerInfiniteSpeed", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaceClickerInfiniteSpeed.lua")
                    
addscriptexist(10192063645, "ThyHoodServerCrash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThyHoodServerCrash.lua")
    
addscript(137885680,"Zombie Rush [GUI - God Mode - Rage Mode]", "ZombieRushGUIGodModeRageMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieRushGUIGodModeRageMode.lua")
                    
                    
addscriptexist(2727067538, "WorldZeroV18WarlordClass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorldZeroV18WarlordClass.lua")
    
addscript(7715234692,"cart ride around a 75 KW Diesel Generator [Anti Cheat Bypass]", "cartridearounda75KWDieselGeneratorAntiCheatBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/cartridearounda75KWDieselGeneratorAntiCheatBypass.lua")
                    
                    
addscriptexist(7560156054, "ClickingSimulatorUnlockShinyKingTophat", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickingSimulatorUnlockShinyKingTophat.lua")
                    
addscriptexist(2788229376, "DaHoodTeleportGUIExtras", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodTeleportGUIExtras.lua")
    
addscript(7940932746,"Roblox [Settings saver]", "RobloxSettingssaver", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxSettingssaver.lua")
                    
    
addscript(10322949476,"Limited Jumps [Unlimited Jumps]", "LimitedJumpsUnlimitedJumps", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LimitedJumpsUnlimitedJumps.lua")
                    
    
addscript(151670365,"The Quarry [Infinite Cash]", "TheQuarryInfiniteCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheQuarryInfiniteCash.lua")
                    
    
addscript(8141566932,"Roblox [Hoho Gui Premuim Paid]", "RobloxHohoGuiPremuimPaid", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxHohoGuiPremuimPaid.lua")
                    
                    
addscriptexist(6902912928, "GETTOTHETOPInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GETTOTHETOPInfMoney.lua")
    
addscript(9871062639,"Flappy Duo [Infinite Score]", "FlappyDuoInfiniteScore", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FlappyDuoInfiniteScore.lua")
                    
    
addscript(5895971007,"Allusions [Anti Ragdoll]", "AllusionsAntiRagdoll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AllusionsAntiRagdoll.lua")
                    
                    
addscriptexist(9845465117, "AUReborn1V1AutoFarmOpenSource", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AUReborn1V1AutoFarmOpenSource.lua")
                    
addscriptexist(9796315265, "StreetzWarAntiCheatBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StreetzWarAntiCheatBypass.lua")
    
addscript(7120576005,"Stack Ball [Auto Win - Open Source]", "StackBallAutoWinOpenSource", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StackBallAutoWinOpenSource.lua")
                    
                    
addscriptexist(7655745946, "DunkingSimulatorUnlimitedBoost", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DunkingSimulatorUnlimitedBoost.lua")
    
addscript(7076813495,"Basketball Stars! [Silent Aim]", "BasketballStarsSilentAim", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BasketballStarsSilentAim.lua")
                    
    
addscript(10086890480,"Clicking Simulator [Shiny King Tophat Giver]", "ClickingSimulatorShinyKingTophatGiver", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickingSimulatorShinyKingTophatGiver.lua")
                    
                    
addscriptexist(9845465117, "AURebornInvisible", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AURebornInvisible.lua")
                    
addscriptexist(7127407851, "AttackOnTitanEvolutionInfiniteGasMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AttackOnTitanEvolutionInfiniteGasMORE.lua")
                    
addscriptexist(9579974235, "FindTheFloppaMorphsGetAllFloppas", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FindTheFloppaMorphsGetAllFloppas.lua")
    
addscript(1299054666,"Fallen 2018 [GUI - The best]", "Fallen2018GUIThebest", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Fallen2018GUIThebest.lua")
                    
    
addscript(9157605735,"MiscGunTest:X [Infinite Money & More GUI!]", "MiscGunTestXInfiniteMoneyMoreGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiscGunTestXInfiniteMoneyMoreGUI.lua")
                    
                    
addscriptexist(2534724415, "EmergencyResponseLibertyCountyAutoLockpick", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EmergencyResponseLibertyCountyAutoLockpick.lua")
    
addscript(9985159673,"Wizardry 101 [Alpha] [God Mode]", "Wizardry101AlphaGodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Wizardry101AlphaGodMode.lua")
                    
                    
addscriptexist(8123652942, "LegendPieceGUIAutoFarming", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendPieceGUIAutoFarming.lua")
    
addscript(7664045612,"Tiny Bread Factory [Auto Farm]", "TinyBreadFactoryAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TinyBreadFactoryAutoFarm.lua")
                    
                    
addscriptexist(2753915549, "BloxfruitFastAttack", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxfruitFastAttack.lua")
                    
addscriptexist(4282985734, "CombatWarriorsSilentAimOpenSource", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CombatWarriorsSilentAimOpenSource.lua")
    
addscript(9677457651,"Fall Experimental [Teleport To The End]", "FallExperimentalTeleportToTheEnd", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FallExperimentalTeleportToTheEnd.lua")
                    
                    
addscriptexist(4520749081, "KingLegacyGUIAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KingLegacyGUIAutoFarm.lua")
                    
addscriptexist(2534724415, "EmergencyResponseLibertyCountySilentAim", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EmergencyResponseLibertyCountySilentAim.lua")
                    
addscriptexist(142823291, "MurderMystery2LagCrash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2LagCrash.lua")
                    
addscriptexist(180364455, "SurviveTheDisasters2V4175FullAntiCheatBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurviveTheDisasters2V4175FullAntiCheatBypass.lua")
                    
addscriptexist(10386774046, "LegendMagicianAutoFarmAutoPickup", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendMagicianAutoFarmAutoPickup.lua")
                    
addscriptexist(445664957, "ParkourGUISetFlowSetCombo", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ParkourGUISetFlowSetCombo.lua")
                    
addscriptexist(7127407851, "AttackOnTitanEvolutionInstantSpins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AttackOnTitanEvolutionInstantSpins.lua")
                    
addscriptexist(4951858512, "VictoryRaceFreeWins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VictoryRaceFreeWins.lua")
                    
addscriptexist(10001513103, "LimitedWordsAutoDailySpin", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LimitedWordsAutoDailySpin.lua")
                    
addscriptexist(2727067538, "WorldZeroGUIAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorldZeroGUIAutoFarm.lua")
    
addscript(9573979853,"Revengers Dispute [ALPHA] [Infinite Money]", "RevengersDisputeALPHAInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RevengersDisputeALPHAInfiniteMoney.lua")
                    
    
addscript(5714258552,"Bizarre Heritage [Free Money And Xp]", "BizarreHeritageFreeMoneyAndXp", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BizarreHeritageFreeMoneyAndXp.lua")
                    
                    
addscriptexist(10184360875, "PetFishingSimulatorInfMoneyInfFish", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetFishingSimulatorInfMoneyInfFish.lua")
                    
addscriptexist(9157870347, "PetAdventuresSimulatorAutoCollectAutoFarmAutoHatch", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetAdventuresSimulatorAutoCollectAutoFarmAutoHatch.lua")
                    
addscriptexist(6114972958, "InitialDTougeLegendsUnlockkAllCarsWalkSpeedJumpPower", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/InitialDTougeLegendsUnlockkAllCarsWalkSpeedJumpPower.lua")
                    
addscriptexist(445664957, "ParkourGodmodeInfiniteWalkBoostInfiniteAdrenaline", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ParkourGodmodeInfiniteWalkBoostInfiniteAdrenaline.lua")
                    
addscriptexist(7655745946, "DunkingSimulatorGamepass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DunkingSimulatorGamepass.lua")
    
addscript(9938879862,"Firefly Garden [Auto Collect]", "FireflyGardenAutoCollect", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FireflyGardenAutoCollect.lua")
                    
    
addscript(9894044804,"Blade Simulator [GUI - Auto Farm]", "BladeSimulatorGUIAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BladeSimulatorGUIAutoFarm.lua")
                    
                    
addscriptexist(10319501620, "SchoolofSportInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SchoolofSportInfiniteMoney.lua")
                    
addscriptexist(10319501620, "SchoolofSportUnlockTheBackpack", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SchoolofSportUnlockTheBackpack.lua")
                    
addscriptexist(7180042682, "MilitaryTycoonSpifireAutoUnlocker", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MilitaryTycoonSpifireAutoUnlocker.lua")
                    
addscriptexist(7952502098, "ImpossibleGlassBridgeObbyChangeGlassColour", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ImpossibleGlassBridgeObbyChangeGlassColour.lua")
    
addscript(10118428339,"FLOP [Auto Farm v2]", "FLOPAutoFarmv2", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FLOPAutoFarmv2.lua")
                    
    
addscript(35397735,"Scuba Diving at Quill Lake [GUI - Infinite Cash, Infinite Artifacts & More!]", "ScubaDivingatQuillLakeGUIInfiniteCashInfiniteArtifactsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ScubaDivingatQuillLakeGUIInfiniteCashInfiniteArtifactsMore.lua")
                    
                    
addscriptexist(109814071, "MedievalWarfareAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MedievalWarfareAutoFarm.lua")
    
addscript(98831904,"Adonis [Auto Bypass]", "AdonisAutoBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdonisAutoBypass.lua")
                    
                    
addscriptexist(3851622790, "BreakInStoryTheBestGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BreakInStoryTheBestGUI.lua")
                    
addscriptexist(8500690972, "NOSTOPObbyInfiniteStages", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NOSTOPObbyInfiniteStages.lua")
                    
addscriptexist(4951858512, "VictoryRaceAutoClear", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VictoryRaceAutoClear.lua")
                    
addscriptexist(10184360875, "PetFishingSimulatorInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetFishingSimulatorInfiniteMoney.lua")
                    
addscriptexist(648362523, "BreakingPointAutoFarmAutoFarmAimBot", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BreakingPointAutoFarmAutoFarmAimBot.lua")
    
addscript(9744597824,"Sea Piece [Distance From NPC Slider, Auto Farm Toggle]", "SeaPieceDistanceFromNPCSliderAutoFarmToggle", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SeaPieceDistanceFromNPCSliderAutoFarmToggle.lua")
                    
                    
addscriptexist(10184360875, "PetFishingSimulatorFastAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetFishingSimulatorFastAutoFarm.lua")
    
addscript(7026949294,"Sword Simulator [Auto Mobs, Auto Eggs, Mob Farm]", "SwordSimulatorAutoMobsAutoEggsMobFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwordSimulatorAutoMobsAutoEggsMobFarm.lua")
                    
                    
addscriptexist(9157605735, "MiscGunTestXInfMoneyTpStickAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiscGunTestXInfMoneyTpStickAll.lua")
                    
addscriptexist(10322949476, "LimitedJumpsAutoFarmJumps", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LimitedJumpsAutoFarmJumps.lua")
                    
addscriptexist(180364455, "SurviveTheDisasters2Fullanticheatbypass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurviveTheDisasters2Fullanticheatbypass.lua")
    
addscript(5571328985,"Bloodlines [Auto Farm, Auto Sell, Drop All]", "BloodlinesAutoFarmAutoSellDropAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloodlinesAutoFarmAutoSellDropAll.lua")
                    
                    
addscriptexist(7127407851, "AttackonTitanEvolutionInfGasInfJumpSpeedBypass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AttackonTitanEvolutionInfGasInfJumpSpeedBypass.lua")
                    
addscriptexist(10184360875, "PetFishingSimulatorinfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetFishingSimulatorinfMoney.lua")
                    
addscriptexist(10108131074, "MowTheLawnAutoNowAutoFillTankAutoopenEgg", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MowTheLawnAutoNowAutoFillTankAutoopenEgg.lua")
                    
addscriptexist(9976239895, "GumballFactoryTycoonAutoobby", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GumballFactoryTycoonAutoobby.lua")
                    
addscriptexist(9976239895, "GumballFactoryTycoonAutoObby", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GumballFactoryTycoonAutoObby.lua")
                    
addscriptexist(4951858512, "VictoryRace", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VictoryRace.lua")
                    
addscriptexist(8425637426, "WriteaLetterAetterfreeanimations", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WriteaLetterAetterfreeanimations.lua")
                    
addscriptexist(10386774046, "LegendMagicianAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendMagicianAutoFarm.lua")
                    
addscriptexist(6902912928, "GETTOTHETOPFinishInfmoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GETTOTHETOPFinishInfmoney.lua")
                    
addscriptexist(286090429, "ArsenalSoundChanger", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalSoundChanger.lua")
                    
addscriptexist(9498006165, "TappingSimulatorSkipshinystage", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingSimulatorSkipshinystage.lua")
    
addscript(659222129,"Swordburst 2 [WalkSpeed, Invisibility, INF Sprint]", "Swordburst2WalkSpeedInvisibilityINFSprint", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Swordburst2WalkSpeedInvisibilityINFSprint.lua")
                    
                    
addscriptexist(606849621, "JailbreakFERESIZEWITHNOLIMIT", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakFERESIZEWITHNOLIMIT.lua")
    
addscript(9677464361,"Basketball Pro Simulator [Auto Farm, uto Upgrade]", "BasketballProSimulatorAutoFarmutoUpgrade", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BasketballProSimulatorAutoFarmutoUpgrade.lua")
                    
                    
addscriptexist(9744597824, "SeaPieceAutoFarmAutoStatsTeleport", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SeaPieceAutoFarmAutoStatsTeleport.lua")
                    
addscriptexist(292439477, "PhantomForcesSilentAimEspNoRecoil", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesSilentAimEspNoRecoil.lua")
    
addscript(1324061305,"Flicker [Invisible]", "FlickerInvisible", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FlickerInvisible.lua")
                    
                    
addscriptexist(10322949476, "LimitedJumpsInfJumps", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LimitedJumpsInfJumps.lua")
                    
addscriptexist(7655745946, "DunkingSimulatorUnlimitedboost", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DunkingSimulatorUnlimitedboost.lua")
                    
addscriptexist(7655745946, "DunkingSimulatorFreeAvatarItems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DunkingSimulatorFreeAvatarItems.lua")
    
addscript(9817495903,"Impossible Red Light, Green Light! [Teleport To The Finish Line]", "ImpossibleRedLightGreenLightTeleportToTheFinishLine", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ImpossibleRedLightGreenLightTeleportToTheFinishLine.lua")
                    
                    
addscriptexist(292439477, "PhantomForcesGranadeAimbot", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesGranadeAimbot.lua")
    
addscript(7115420363,"The Booth Plaza [Bypassed Images]", "TheBoothPlazaBypassedImages", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheBoothPlazaBypassedImages.lua")
                    
                    
addscriptexist(9845465117, "AUReborn1v1AutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AUReborn1v1AutoFarm.lua")
    
addscript(6584731191,"Ragdoll Engine [FE Fling All Players]", "RagdollEngineFEFlingAllPlayers", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RagdollEngineFEFlingAllPlayers.lua")
                    
                    
addscriptexist(10192063645, "ThyHoodFly", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThyHoodFly.lua")
    
addscript(8916037983,"Starving Artist [Steal Art]", "StarvingArtistStealArt", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StarvingArtistStealArt.lua")
                    
                    
addscriptexist(2788229376, "DahoodSpeedMacro", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DahoodSpeedMacro.lua")
    
addscript(5670218884,"Cryptik [Item Esp]", "CryptikItemEsp", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CryptikItemEsp.lua")
                    
                    
addscriptexist(2474168535, "WestboundAimBot", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WestboundAimBot.lua")
                    
addscriptexist(4639625707, "OilWarfareTycoonEspAimbot", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OilWarfareTycoonEspAimbot.lua")
                    
addscriptexist(4855457388, "Demonfall40GodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Demonfall40GodMode.lua")
                    
addscriptexist(6512923934, "RobloxCtrlclicktp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxCtrlclicktp.lua")
    
addscript(4556148591,"Blackout [GUI - Get Any Weapon Free]", "BlackoutGUIGetAnyWeaponFree", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BlackoutGUIGetAnyWeaponFree.lua")
                    
    
addscript(9290611413,"Roblox [Smooth Blocks]", "RobloxSmoothBlocks", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxSmoothBlocks.lua")
                    
    
addscript(10370253487,"You Can't Say That Again [Spam Chat]", "YouCantSayThatAgainSpamChat", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YouCantSayThatAgainSpamChat.lua")
                    
                    
addscriptexist(142823291, "MurderMystery2UnlockAllSkinsClientside", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2UnlockAllSkinsClientside.lua")
                    
addscriptexist(5956785391, "ProjectSlayersKillAuraAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersKillAuraAutoFarmMore.lua")
                    
addscriptexist(537413528, "BuildaBoatForTreasureAutoFarmingGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildaBoatForTreasureAutoFarmingGUI.lua")
                    
addscriptexist(3956818381, "NinjaLegendsGUIAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsGUIAutoFarm.lua")
    
addscript(9705460681,"The Ants Undergrounnd Kingdom [Free Cash]", "TheAntsUndergrounndKingdomFreeCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheAntsUndergrounndKingdomFreeCash.lua")
                    
                    
addscriptexist(9894044804, "BladeSimulatorGUIAutoSwingAutoSellMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BladeSimulatorGUIAutoSwingAutoSellMore.lua")
                    
addscriptexist(10370253487, "YouCantSayThatAgainWordFarmer", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YouCantSayThatAgainWordFarmer.lua")
    
addscript(8267733039,"Specter 2 [GUI - Item Esp, Ghost Esp & More!]", "Specter2GUIItemEspGhostEspMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Specter2GUIItemEspGhostEspMore.lua")
                    
    
addscript(8433116262,"Lost Adrift [EA] [Steal Boat]", "LostAdriftEAStealBoat", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LostAdriftEAStealBoat.lua")
                    
                    
addscriptexist(3851622790, "BreakInStoryGUIAutoHitKillAllMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BreakInStoryGUIAutoHitKillAllMore.lua")
                    
addscriptexist(7305309231, "TaxiBossAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TaxiBossAutoFarm.lua")
                    
addscriptexist(6468323505, "SpellboundMagicRPGInfinteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpellboundMagicRPGInfinteMoney.lua")
                    
addscriptexist(9845465117, "AURebornSimmitBadge", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AURebornSimmitBadge.lua")
                    
addscriptexist(8267733039, "Specter2GUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Specter2GUI.lua")
    
addscript(10065077975,"Robloxian's Obby [Auto finish]", "RobloxiansObbyAutofinish", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxiansObbyAutofinish.lua")
                    
                    
addscriptexist(6284583030, "PetSimulatorXMasteryAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXMasteryAutoFarm.lua")
    
addscript(9377039667,"Roblox Innovation Awards Voting Hub [All Hats & Badges]", "RobloxInnovationAwardsVotingHubAllHatsBadges", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxInnovationAwardsVotingHubAllHatsBadges.lua")
                    
                    
addscriptexist(7127407851, "AttackonTitanEvolutionFlyToggleWalkspeedInstaKill", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AttackonTitanEvolutionFlyToggleWalkspeedInstaKill.lua")
    
addscript(9926433554,"Blast Mining Simulator [Auto Give Money, Anti Idlem Auto Farm]", "BlastMiningSimulatorAutoGiveMoneyAntiIdlemAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BlastMiningSimulatorAutoGiveMoneyAntiIdlemAutoFarm.lua")
                    
                    
addscriptexist(7177496972, "AnimeWarriorsAutoFarmGodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeWarriorsAutoFarmGodMode.lua")
                    
addscriptexist(1554960397, "CarDealershipTycoonTownHallEvent", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarDealershipTycoonTownHallEvent.lua")
                    
addscriptexist(8267733039, "Specter2DetectFingerprintsFullBrightUnlockThirdPerson", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Specter2DetectFingerprintsFullBrightUnlockThirdPerson.lua")
    
addscript(4581966615,"Anomic [Auto Farm]", "AnomicAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnomicAutoFarm.lua")
                    
                    
addscriptexist(292439477, "PhantomForcesESP", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesESP.lua")
                    
addscriptexist(5777099015, "CheeseEscapeAutoCollectCheeseGetAllKeysPressAllbuttons", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CheeseEscapeAutoCollectCheeseGetAllKeysPressAllbuttons.lua")
    
addscript(6242296404,"Happy Runner [Auto Finish]", "HappyRunnerAutoFinish", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HappyRunnerAutoFinish.lua")
                    
    
addscript(7503115095,"Pop It Trading [Scam script]", "PopItTradingScamscript", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PopItTradingScamscript.lua")
                    
    
addscript(333164326,"Admin House [CMD AutoCrasher]", "AdminHouseCMDAutoCrasher", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdminHouseCMDAutoCrasher.lua")
                    
                    
addscriptexist(9926433554, "BlastMiningSimulatorInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BlastMiningSimulatorInfMoney.lua")
                    
addscriptexist(8304191830, "AnimeAdventureAutoFarmAutoMerchant", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeAdventureAutoFarmAutoMerchant.lua")
                    
addscriptexist(8585657145, "AnimeHeroSimulatorAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeHeroSimulatorAutoFarmGUI.lua")
    
addscript(6266940721,"StockRise Stock Simulator [Infinite Money]", "StockRiseStockSimulatorInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StockRiseStockSimulatorInfiniteMoney.lua")
                    
                    
addscriptexist(9926433554, "BlastMiningSimulatorInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BlastMiningSimulatorInfiniteMoney.lua")
                    
addscriptexist(2124720684, "DragonBallXenoMultiverseZenAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBallXenoMultiverseZenAutoFarm.lua")
                    
addscriptexist(6468323505, "SpellboundMagicRPGGetAllItems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpellboundMagicRPGGetAllItems.lua")
                    
addscriptexist(6468323505, "SpellboundMagicRPGInfinteCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpellboundMagicRPGInfinteCoins.lua")
                    
addscriptexist(10118559731, "nicosnextbotsAutoBhop", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/nicosnextbotsAutoBhop.lua")
                    
addscriptexist(4282985734, "CombatWarriorsFullclientacbypass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CombatWarriorsFullclientacbypass.lua")
                    
addscriptexist(815405518, "TheFloorIsLAVAAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheFloorIsLAVAAutoFarm.lua")
    
addscript(263761432,"Horrific Housing [More Money]", "HorrificHousingMoreMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HorrificHousingMoreMoney.lua")
                    
                    
addscriptexist(9551640993, "MiningSimulator2BlockAuraAutoSell", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2BlockAuraAutoSell.lua")
    
addscript(8222131500,"Desert island survival [Auto redeem codes]", "DesertislandsurvivalAutoredeemcodes", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DesertislandsurvivalAutoredeemcodes.lua")
                    
                    
addscriptexist(8222131500, "IslandSurvivalInfAirDrop", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/IslandSurvivalInfAirDrop.lua")
    
addscript(10119617028,"Airsoft Center [Esp, Silent Aim]", "AirsoftCenterEspSilentAim", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AirsoftCenterEspSilentAim.lua")
                    
                    
addscriptexist(6403373529, "SlapBattlesKillAuraKillRandomplayerGetAllItems", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlapBattlesKillAuraKillRandomplayerGetAllItems.lua")
    
addscript(4459593483,"FORCE [PRE-ALPHA] [GUI - Anti Ragdoll, Anti Damage & More!]", "FORCEPREALPHAGUIAntiRagdollAntiDamageMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FORCEPREALPHAGUIAntiRagdollAntiDamageMore.lua")
                    
                    
addscriptexist(8585657145, "AnimeHeroSimulatorAutoFarmNoKey", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeHeroSimulatorAutoFarmNoKey.lua")
    
addscript(7074772062,"Roblox [Drawing Lib Player Radar]", "RobloxDrawingLibPlayerRadar", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxDrawingLibPlayerRadar.lua")
                    
                    
addscriptexist(3956818381, "NinjaLegendsAutoFarmAutoSellAutoCollectCh", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsAutoFarmAutoSellAutoCollectCh.lua")
    
addscript(9898710720,"Money Tycoon [Auto Farm]", "MoneyTycoonAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MoneyTycoonAutoFarm.lua")
                    
    
addscript(654732683,"Car Crushers 2 [Auto Farm, GamePass, No Ragdoll]", "CarCrushers2AutoFarmGamePassNoRagdoll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarCrushers2AutoFarmGamePassNoRagdoll.lua")
                    
    
addscript(1629847577,"Dragon Ball N [No CoolDown ]", "DragonBallNNoCoolDown", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBallNNoCoolDown.lua")
                    
                    
addscriptexist(6284583030, "PetSimulatorXBanBypass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXBanBypass.lua")
                    
addscriptexist(8540168650, "StandUprightRebootedGUIItemFarmAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StandUprightRebootedGUIItemFarmAutoFarmMore.lua")
    
addscript(9103460924,"Sword Factory X [Auto Reroll Enchants]", "SwordFactoryXAutoRerollEnchants", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwordFactoryXAutoRerollEnchants.lua")
                    
    
addscript(5683833663,"Ragdoll Engine [Loop Push All]", "RagdollEngineLoopPushAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RagdollEngineLoopPushAll.lua")
                    
                    
addscriptexist(5956785391, "ProjectSlayersKillAuraFarmsInvisible", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersKillAuraFarmsInvisible.lua")
                    
addscriptexist(6468323505, "SpellboundMagicRPGInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpellboundMagicRPGInfMoney.lua")
                    
addscriptexist(5956785391, "ProjectSlayersSeminocooldownforskills", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersSeminocooldownforskills.lua")
    
addscript(21083417,"Homestead [Log Spam]", "HomesteadLogSpam", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HomesteadLogSpam.lua")
                    
    
addscript(6055959032,"Jailbird [Silent Aim – Ragebot – Visuals And More!]", "JailbirdSilentAim–Ragebot–VisualsAndMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbirdSilentAim–Ragebot–VisualsAndMore.lua")
                    
                    
addscriptexist(6298464951, "UnbreakableGet100KCashItems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UnbreakableGet100KCashItems.lua")
                    
addscriptexist(10192063645, "ThyhoodGUIV2AutoFarmTrashKillPlayersAndTeleports", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThyhoodGUIV2AutoFarmTrashKillPlayersAndTeleports.lua")
                    
addscriptexist(1537690962, "BeeSwarmSimulatorChocmocSmartAutofarmFarminboostedfields", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeeSwarmSimulatorChocmocSmartAutofarmFarminboostedfields.lua")
    
addscript(10198661638,"Farm Factory Tycoon [Free Diamonds Remote]", "FarmFactoryTycoonFreeDiamondsRemote", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FarmFactoryTycoonFreeDiamondsRemote.lua")
                    
                    
addscriptexist(6284583030, "PetSimulatorXAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarm.lua")
    
addscript(9129288160,"Tommy Play [Collect All Tokens]", "TommyPlayCollectAllTokens", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TommyPlayCollectAllTokens.lua")
                    
    
addscript(9702206679,"Heroes Daydream [Auto Farm V2]", "HeroesDaydreamAutoFarmV2", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HeroesDaydreamAutoFarmV2.lua")
                    
                    
addscriptexist(5571328985, "BloodlinesInfiniteCashMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloodlinesInfiniteCashMore.lua")
                    
addscriptexist(9702206679, "HeroesDaydreamAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HeroesDaydreamAutoFarm.lua")
    
addscript(10204556059,"NARS Color Quest [Auto Collect All Shades - Complete All]", "NARSColorQuestAutoCollectAllShadesCompleteAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NARSColorQuestAutoCollectAllShadesCompleteAll.lua")
                    
                    
addscriptexist(10118559731, "nicosnextbotsBHOP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/nicosnextbotsBHOP.lua")
                    
addscriptexist(3346617530, "FreezeTagExtremev25OverpoweredGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FreezeTagExtremev25OverpoweredGUI.lua")
                    
addscriptexist(4616652839, "ShindoLifeEquipAnyBloodlineMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoLifeEquipAnyBloodlineMode.lua")
                    
addscriptexist(6299805723, "AnimeWarriorsSimpleAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeWarriorsSimpleAutoFarm.lua")
                    
addscriptexist(3177438863, "DragonBloxAutoFarmAutoQuestGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBloxAutoFarmAutoQuestGUI.lua")
                    
addscriptexist(7991339063, "RainbowFriendsESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RainbowFriendsESP.lua")
    
addscript(10057963710,"George Ezra’s Gold Rush Kid Experience [Collect All Puzzle Pieces]", "GeorgeEzra’sGoldRushKidExperienceCollectAllPuzzlePieces", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GeorgeEzra’sGoldRushKidExperienceCollectAllPuzzlePieces.lua")
                    
    
addscript(30869879,"Stop it, Slender! [Free Premium Lootboxes]", "StopitSlenderFreePremiumLootboxes", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StopitSlenderFreePremiumLootboxes.lua")
                    
                    
addscriptexist(10192063645, "ThyHoodSemiGodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThyHoodSemiGodMode.lua")
                    
addscriptexist(3346617530, "FreezeTagExtremev24AntiAdminTagAllPlayersMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FreezeTagExtremev24AntiAdminTagAllPlayersMore.lua")
    
addscript(2629642516,"Bitcoin Miner [Anti Card Lag]", "BitcoinMinerAntiCardLag", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BitcoinMinerAntiCardLag.lua")
                    
                    
addscriptexist(5571328985, "BloodlinesAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloodlinesAutoFarm.lua")
    
addscript(3686253681,"Planet Simulator [Change Planet Mass]", "PlanetSimulatorChangePlanetMass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PlanetSimulatorChangePlanetMass.lua")
                    
    
addscript(6711562581,"Eight Driver Car Racing [Infinite Drift]", "EightDriverCarRacingInfiniteDrift", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EightDriverCarRacingInfiniteDrift.lua")
                    
                    
addscriptexist(6711562581, "EightDriverCarRacingInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EightDriverCarRacingInfiniteMoney.lua")
                    
addscriptexist(6677985923, "MillionaireEmpireTycoonInfiniteCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MillionaireEmpireTycoonInfiniteCash.lua")
                    
addscriptexist(5993942214, "RushPointSilentAimNoRecoil", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RushPointSilentAimNoRecoil.lua")
    
addscript(7214610985,"Stealth 2 [Kill Aura - Auto Retaliate - Auto Block]", "Stealth2KillAuraAutoRetaliateAutoBlock", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Stealth2KillAuraAutoRetaliateAutoBlock.lua")
                    
                    
addscriptexist(5571328985, "BloodlinesNoFire", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloodlinesNoFire.lua")
                    
addscriptexist(8278412720, "CSPrisonLifeBETAAntiCheatBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CSPrisonLifeBETAAntiCheatBypass.lua")
                    
addscriptexist(4581966615, "AnomicCombatreadyautohealBonfire’sbackpackspySilentaim", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnomicCombatreadyautohealBonfire’sbackpackspySilentaim.lua")
    
addscript(6716378218,"Da Hood [Auto Arrest]", "DaHoodAutoArrest", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodAutoArrest.lua")
                    
                    
addscriptexist(7009799230, "PressureWashSimulatorGUIInfMoneyMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PressureWashSimulatorGUIInfMoneyMore.lua")
    
addscript(9397663086,"Ninja Training Simulator [Auto Farm & More!]", "NinjaTrainingSimulatorAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaTrainingSimulatorAutoFarmMore.lua")
                    
    
addscript(9167501050,"Lightsaber Arena [Kill Aura - Auto Block & Infinite Stamina]", "LightsaberArenaKillAuraAutoBlockInfiniteStamina", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LightsaberArenaKillAuraAutoBlockInfiniteStamina.lua")
                    
    
addscript(596894229,"Elemental Adventure [Level Farm]", "ElementalAdventureLevelFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ElementalAdventureLevelFarm.lua")
                    
                    
addscriptexist(8278412720, "CSPrisonLifeBETAAutoArrest", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CSPrisonLifeBETAAutoArrest.lua")
                    
addscriptexist(7952502098, "ImpossibleGlassBridgeObbyAutoFarmCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ImpossibleGlassBridgeObbyAutoFarmCash.lua")
    
addscript(8240600306,"Pet Simulator X! [GUI - Auto Farm]", "PetSimulatorXGUIAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXGUIAutoFarm.lua")
                    
                    
addscriptexist(9983979661, "DragonFarmSimulatorInfiniteCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonFarmSimulatorInfiniteCash.lua")
                    
addscriptexist(5571328985, "BloodlinesNoFallDamage", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloodlinesNoFallDamage.lua")
                    
addscriptexist(3686253681, "PlanetSimulatorAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PlanetSimulatorAutoFarm.lua")
                    
addscriptexist(6298464951, "RobloxIsUnbreakableInfiniteArrows", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxIsUnbreakableInfiniteArrows.lua")
                    
addscriptexist(6298464951, "RobloxIsUnbreakableInfiniteCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxIsUnbreakableInfiniteCash.lua")
                    
addscriptexist(6298464951, "RobloxIsUnbreakableInfiniteStats", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxIsUnbreakableInfiniteStats.lua")
                    
addscriptexist(9551640993, "MiningSimualtor2AutoFarmAutoMine", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimualtor2AutoFarmAutoMine.lua")
                    
addscriptexist(5201039691, "TatakaiV2MoneyFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TatakaiV2MoneyFarm.lua")
                    
addscriptexist(8054462345, "MichaelsZombiesAntiKnockdown", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MichaelsZombiesAntiKnockdown.lua")
                    
addscriptexist(8054462345, "MichaelsZombiesAlwaysHeadshotInstantReload", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MichaelsZombiesAlwaysHeadshotInstantReload.lua")
    
addscript(6606507295,"Turbo's Murder Mystery 2 [Get Free Paid Weapons]", "TurbosMurderMystery2GetFreePaidWeapons", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TurbosMurderMystery2GetFreePaidWeapons.lua")
                    
                    
addscriptexist(5956785391, "ProjectSlayersFishFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersFishFarm.lua")
    
addscript(4787629450,"BOOGA BOOGA - Classic [Invisible Armor & Tools]", "BOOGABOOGAClassicInvisibleArmorTools", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BOOGABOOGAClassicInvisibleArmorTools.lua")
                    
    
addscript(29812337,"Framed! [ESP]", "FramedESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FramedESP.lua")
                    
                    
addscriptexist(4282985734, "CombatWarriorsNoFallDamageautofarminfinitestamina", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CombatWarriorsNoFallDamageautofarminfinitestamina.lua")
                    
addscriptexist(5956785391, "ProjectSlayersTpMuzan", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersTpMuzan.lua")
    
addscript(3623096087,"Muscle Legends [Kill Player, Safe Farm, Auto Equip]", "MuscleLegendsKillPlayerSafeFarmAutoEquip", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MuscleLegendsKillPlayerSafeFarmAutoEquip.lua")
                    
                    
addscriptexist(6711562581, "EightDriverCarRacingInfmoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EightDriverCarRacingInfmoney.lua")
                    
addscriptexist(2768379856, "SCP3008AutoCollect", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SCP3008AutoCollect.lua")
                    
addscriptexist(7180042682, "MilitaryTycoonCollectallbatteries", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MilitaryTycoonCollectallbatteries.lua")
                    
addscriptexist(1224212277, "MadCityChapter2SilentAimWallBangEasyXpMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityChapter2SilentAimWallBangEasyXpMoney.lua")
                    
addscriptexist(893973440, "FleetheFacilityAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FleetheFacilityAutoFarm.lua")
    
addscript(9800759618,"Amanda [Story] [Auto Revive]", "AmandaStoryAutoRevive", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AmandaStoryAutoRevive.lua")
                    
                    
addscriptexist(7180042682, "MilitaryTycoonCollectAllBatteries", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MilitaryTycoonCollectAllBatteries.lua")
    
addscript(6356806222,"Lag Test 2021 [No lag]", "LagTest2021Nolag", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LagTest2021Nolag.lua")
                    
                    
addscriptexist(9167501050, "LightsaberArenaKillauraautoblockinfstamina", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LightsaberArenaKillauraautoblockinfstamina.lua")
                    
addscriptexist(9377039667, "RobloxInnovationAwardsVotingHubTeleporttosecretawardbadge", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxInnovationAwardsVotingHubTeleporttosecretawardbadge.lua")
                    
addscriptexist(5956785391, "ProjectSlayersSpeedhack", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersSpeedhack.lua")
    
addscript(10041417653,"Turbo's Murder Mystery [Esp, AutoUnBox, Sped Hack]", "TurbosMurderMysteryEspAutoUnBoxSpedHack", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TurbosMurderMysteryEspAutoUnBoxSpedHack.lua")
                    
                    
addscriptexist(1224212277, "MadCitySilentAim", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCitySilentAim.lua")
                    
addscriptexist(5201039691, "TatakaiV2AutoClanSpinner", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TatakaiV2AutoClanSpinner.lua")
                    
addscriptexist(10001513103, "LimitedWordsUnlimitedspinsunlimitedwords", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LimitedWordsUnlimitedspinsunlimitedwords.lua")
    
addscript(6273865312,"Supernatural Simulator [Auto Sell, Auto Lvl Up]", "SupernaturalSimulatorAutoSellAutoLvlUp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SupernaturalSimulatorAutoSellAutoLvlUp.lua")
                    
    
addscript(1899149341,"Vehicle Tycoon [Collect All Gifts]", "VehicleTycoonCollectAllGifts", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VehicleTycoonCollectAllGifts.lua")
                    
    
addscript(10191372093,"Guillotine Tycoon [Auto Farm]", "GuillotineTycoonAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GuillotineTycoonAutoFarm.lua")
                    
                    
addscriptexist(1224212277, "MadCityExpFarmEspSilentAIm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityExpFarmEspSilentAIm.lua")
                    
addscriptexist(1224212277, "MadCityAutoFarmServerHop", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityAutoFarmServerHop.lua")
                    
addscriptexist(863266079, "ApocalypseRising2ZombieEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ApocalypseRising2ZombieEsp.lua")
    
addscript(8528736393,"Beatland [Free UGC Items GUI]", "BeatlandFreeUGCItemsGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeatlandFreeUGCItemsGUI.lua")
                    
    
addscript(9603033881,"Bid Battles [Auto Queue Auction, Auto Bid, Auto Sell]", "BidBattlesAutoQueueAuctionAutoBidAutoSell", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BidBattlesAutoQueueAuctionAutoBidAutoSell.lua")
                    
                    
addscriptexist(9940051005, "BloxLegendsInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxLegendsInfiniteMoney.lua")
                    
addscriptexist(9940051005, "BloxLegendsInfiniteTokens", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxLegendsInfiniteTokens.lua")
                    
addscriptexist(606849621, "JailbreakNoFallDamage", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakNoFallDamage.lua")
                    
addscriptexist(8054462345, "MichaelsZombiesHeadshotinstareload", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MichaelsZombiesHeadshotinstareload.lua")
                    
addscriptexist(863266079, "APOCRISER2InfJumpPlayerEspShowHealth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/APOCRISER2InfJumpPlayerEspShowHealth.lua")
                    
addscriptexist(1962086868, "TowerofHellAutoWinGodModeGetAllItems", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofHellAutoWinGodModeGetAllItems.lua")
                    
addscriptexist(5956785391, "ProjectSlayersAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersAutoFarm.lua")
                    
addscriptexist(8278412720, "CSPrisonLifeAntiCheatBypass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CSPrisonLifeAntiCheatBypass.lua")
                    
addscriptexist(6512923934, "UltraClickerSimulatorAutoTapUnlimtedGemsUnlimtedFloppa", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UltraClickerSimulatorAutoTapUnlimtedGemsUnlimtedFloppa.lua")
                    
addscriptexist(192800, "WorkataPizzaPlaceServBomber", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorkataPizzaPlaceServBomber.lua")
    
addscript(6570234816,"Mano County Roleplay [Anticheat bypass]", "ManoCountyRoleplayAnticheatbypass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ManoCountyRoleplayAnticheatbypass.lua")
                    
                    
addscriptexist(2413927524, "THERAKEKillEditionPointGiver", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/THERAKEKillEditionPointGiver.lua")
                    
addscriptexist(5993942214, "RushPointSilentAim", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RushPointSilentAim.lua")
                    
addscriptexist(205224386, "HideAndSeekExtremeCollectallcoinsSpeedHacketc", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HideAndSeekExtremeCollectallcoinsSpeedHacketc.lua")
    
addscript(443406476,"Project Lazarus [Auto Farm, Bring Heads, Gun Mod]", "ProjectLazarusAutoFarmBringHeadsGunMod", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectLazarusAutoFarmBringHeadsGunMod.lua")
                    
    
addscript(6835256242,"Pick A Door [AutoWin]", "PickADoorAutoWin", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PickADoorAutoWin.lua")
                    
                    
addscriptexist(6284583030, "PetSimulatorXAutofarmOpenEggsAutouseboosts", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutofarmOpenEggsAutouseboosts.lua")
                    
addscriptexist(9397663086, "NinjaTrainingSimulatorAutoFarmAutoRebirthAutoupgrades", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaTrainingSimulatorAutoFarmAutoRebirthAutoupgrades.lua")
                    
addscriptexist(4036494886, "GunSimulatorInfammoInfstarsNoreload", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GunSimulatorInfammoInfstarsNoreload.lua")
                    
addscriptexist(286090429, "ZeusHub4Games", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZeusHub4Games.lua")
                    
addscriptexist(2629642516, "BitcoinMinerAnticardlag", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BitcoinMinerAnticardlag.lua")
                    
addscriptexist(8278412720, "CSPrisonLifeEscapeFromPrison", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CSPrisonLifeEscapeFromPrison.lua")
                    
addscriptexist(8278412720, "CSPrisonLifeSilentAim", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CSPrisonLifeSilentAim.lua")
    
addscript(92604236,"High School Life [Fe body resizer]", "HighSchoolLifeFebodyresizer", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HighSchoolLifeFebodyresizer.lua")
                    
    
addscript(5320510816,"Farm Life Tycoon [Auto Farm]", "FarmLifeTycoonAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FarmLifeTycoonAutoFarm.lua")
                    
                    
addscriptexist(2686500207, "ABizarreDayLoopKill", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ABizarreDayLoopKill.lua")
                    
addscriptexist(5956785391, "ProjectSlayersGUIAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersGUIAutoFarm.lua")
    
addscript(3074287646,"Roblox [Audio Music]", "RobloxAudioMusic", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxAudioMusic.lua")
                    
    
addscript(7480222488,"Roblox [Good Esp]", "RobloxGoodEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxGoodEsp.lua")
                    
                    
addscriptexist(7480222488, "RobloxEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxEsp.lua")
                    
addscriptexist(2768379856, "3008Autocollectfoodmedkits", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/3008Autocollectfoodmedkits.lua")
                    
addscriptexist(4863541388, "ScytheMastersFastStrengthAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ScytheMastersFastStrengthAutoFarm.lua")
                    
addscriptexist(7419509075, "cartridearoundusedcarbatteryGetAllTheTrollItems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/cartridearoundusedcarbatteryGetAllTheTrollItems.lua")
                    
addscriptexist(9677464361, "BasketballProSimulatorAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BasketballProSimulatorAutoFarm.lua")
                    
addscriptexist(8203181639, "SyrianShenanigansFullautotank", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SyrianShenanigansFullautotank.lua")
                    
addscriptexist(8203181639, "SyrianShenanigansKeybinds", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SyrianShenanigansKeybinds.lua")
                    
addscriptexist(8203181639, "SyrianShenanigansBypasstheanticheat", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SyrianShenanigansBypasstheanticheat.lua")
    
addscript(623694595,"Phenom [Drop Ball]", "PhenomDropBall", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhenomDropBall.lua")
                    
                    
addscriptexist(6678877691, "ZOKillAuraEspEquipWeapon", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZOKillAuraEspEquipWeapon.lua")
                    
addscriptexist(6403373529, "SlapbattlesUltraspeedflyadmin", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlapbattlesUltraspeedflyadmin.lua")
                    
addscriptexist(5956785391, "ProjectSlayersGUILevelFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersGUILevelFarmMore.lua")
    
addscript(5278850819,"Stay alive and flex your time on others [Bypass Anti Cheat]", "StayaliveandflexyourtimeonothersBypassAntiCheat", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StayaliveandflexyourtimeonothersBypassAntiCheat.lua")
                    
    
addscript(4856393583,"Build a Spaceship Tycoon [Infinite Cash]", "BuildaSpaceshipTycoonInfiniteCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildaSpaceshipTycoonInfiniteCash.lua")
                    
                    
addscriptexist(4856393583, "BuildaSpaceshipTycoonInstaRebirth", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildaSpaceshipTycoonInstaRebirth.lua")
                    
addscriptexist(6403373529, "SlapBattlesKillAuraNoCooldown", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlapBattlesKillAuraNoCooldown.lua")
                    
addscriptexist(8203181639, "SyrianShenanigansgiveyourselftonsoffraggrenades", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SyrianShenanigansgiveyourselftonsoffraggrenades.lua")
                    
addscriptexist(8203181639, "SyrianShenanigansSlowdownthesniperscope", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SyrianShenanigansSlowdownthesniperscope.lua")
                    
addscriptexist(8203181639, "SyrianShenanigansFixingcarstanks", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SyrianShenanigansFixingcarstanks.lua")
                    
addscriptexist(7305309231, "TaxiBossRemoveNPCcars", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TaxiBossRemoveNPCcars.lua")
    
addscript(9903808883,"Build a Market Tycoon [Money Booster]", "BuildaMarketTycoonMoneyBooster", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildaMarketTycoonMoneyBooster.lua")
                    
                    
addscriptexist(10041417653, "TurbosMurderMystery2InfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TurbosMurderMystery2InfMoney.lua")
    
addscript(8588872272,"Project Slayers [Auto Farm, Invisible, Teleports]", "ProjectSlayersAutoFarmInvisibleTeleports", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersAutoFarmInvisibleTeleports.lua")
                    
                    
addscriptexist(10041417653, "TurbosMurderMystery2InfiniteCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TurbosMurderMystery2InfiniteCoins.lua")
                    
addscriptexist(5956785391, "ProjectSlayersGUIAutoFarmRiceFishMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersGUIAutoFarmRiceFishMore.lua")
                    
addscriptexist(1730877806, "GrandPieceOnlineyoucantattackandyoucantdie", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GrandPieceOnlineyoucantattackandyoucantdie.lua")
                    
addscriptexist(10118559731, "nicosnextbotsServlagger", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/nicosnextbotsServlagger.lua")
                    
addscriptexist(4616652839, "ShindolifeAutoFarmAutoFarmBossAutoRank", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindolifeAutoFarmAutoFarmBossAutoRank.lua")
    
addscript(4838460619,"War Simulator 2 [Auto Farm]", "WarSimulator2AutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WarSimulator2AutoFarm.lua")
                    
                    
addscriptexist(6678877691, "ZOぞSAMURAIAntiCheatBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZOぞSAMURAIAntiCheatBypass.lua")
    
addscript(679737281,"Moon City [GUI - Aimbot, Teleports & More!]", "MoonCityGUIAimbotTeleportsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MoonCityGUIAimbotTeleportsMore.lua")
                    
                    
addscriptexist(443406476, "ProjectLazarusGUIWeaponsModeVisualsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectLazarusGUIWeaponsModeVisualsMore.lua")
                    
addscriptexist(3234050617, "Left2DieOverhaulGUIWeaponsModeVusials", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Left2DieOverhaulGUIWeaponsModeVusials.lua")
    
addscript(8977044503,"LEGACY ENGINE [7 Games]", "LEGACYENGINE7Games", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LEGACYENGINE7Games.lua")
                    
                    
addscriptexist(5956785391, "ProjectSlayersGUIAutoQuestInvisibleMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersGUIAutoQuestInvisibleMore.lua")
                    
addscriptexist(5956785391, "ProjectSlayersTeleporttoPlayer", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersTeleporttoPlayer.lua")
                    
addscriptexist(5956785391, "ProjectSlayersTeleporttoBosses", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersTeleporttoBosses.lua")
                    
addscriptexist(5956785391, "ProjectSlayersLagServer", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersLagServer.lua")
    
addscript(8473958692,"The Trials [PHASE 2] [Overpowered GUI]", "TheTrialsPHASE2OverpoweredGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheTrialsPHASE2OverpoweredGUI.lua")
                    
                    
addscriptexist(7419509075, "cartridearoundusedcarbattery", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/cartridearoundusedcarbattery.lua")
    
addscript(7336302630,"Project Delta [Teleport Bypass]", "ProjectDeltaTeleportBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectDeltaTeleportBypass.lua")
                    
    
addscript(4169490976,"Mortem Metallum [Kill All]", "MortemMetallumKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MortemMetallumKillAll.lua")
                    
                    
addscriptexist(9049840490, "SonicSpeedSimulatorGUIAutoRunAutoRebirthMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulatorGUIAutoRunAutoRebirthMore.lua")
                    
addscriptexist(6716188523, "BusinessTycoonInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BusinessTycoonInfiniteMoney.lua")
                    
addscriptexist(8123652942, "LegendPieceNoCooldown", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendPieceNoCooldown.lua")
                    
addscriptexist(2788229376, "DaHoodAutoFarmAntiAfk", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodAutoFarmAntiAfk.lua")
                    
addscriptexist(920587237, "AdoptMeAutoFarmAutoCashoutMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMeAutoFarmAutoCashoutMore.lua")
    
addscript(7196856665,"Wave Sword Bots Game [Collect All Orbs]", "WaveSwordBotsGameCollectAllOrbs", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WaveSwordBotsGameCollectAllOrbs.lua")
                    
                    
addscriptexist(537413528, "SPAKhubAdminflyaimandESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SPAKhubAdminflyaimandESP.lua")
                    
addscriptexist(9940051005, "BloxLegendsCollectAllPads", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxLegendsCollectAllPads.lua")
                    
addscriptexist(4951858512, "VictoryRaceIncreaseSpeedMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VictoryRaceIncreaseSpeedMore.lua")
    
addscript(4783966408,"Plates of Fate Remastered [Auto Complete Obby]", "PlatesofFateRemasteredAutoCompleteObby", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PlatesofFateRemasteredAutoCompleteObby.lua")
                    
    
addscript(6961824067,"Fling Things and People [Anti Grab & More!]", "FlingThingsandPeopleAntiGrabMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FlingThingsandPeopleAntiGrabMore.lua")
                    
                    
addscriptexist(8473958692, "TheTrialsAutoPressButtonsOpenAllCrates", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheTrialsAutoPressButtonsOpenAllCrates.lua")
    
addscript(8323912766,"Roblox [Chat Translator]", "RobloxChatTranslator", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxChatTranslator.lua")
                    
    
addscript(3840352284,"Volleyball 4.2 [No Line-Fault]", "Volleyball42NoLineFault", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Volleyball42NoLineFault.lua")
                    
    
addscript(9601849832,"Jetpack Battle [Insta-kill]", "JetpackBattleInstakill", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JetpackBattleInstakill.lua")
                    
                    
addscriptexist(1962086868, "TowerofhellGUIUltraJumpUltraspeedAdmin", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofhellGUIUltraJumpUltraspeedAdmin.lua")
                    
addscriptexist(9103460924, "SwordFactoryXAntiCheatBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwordFactoryXAntiCheatBypass.lua")
                    
addscriptexist(9603033881, "BidBattlesAutoBidMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BidBattlesAutoBidMore.lua")
                    
addscriptexist(9551640993, "MiningSimulator2PetGuesser", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2PetGuesser.lua")
    
addscript(2043040358,"Vyyrahk City [Auto Farm GUI - Inf Stamina & More!]", "VyyrahkCityAutoFarmGUIInfStaminaMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VyyrahkCityAutoFarmGUIInfStaminaMore.lua")
                    
                    
addscriptexist(4036494886, "GunSimulatorInfiniteAmmoInfiniteStarsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GunSimulatorInfiniteAmmoInfiniteStarsMore.lua")
    
addscript(9571238478,"Raise a Peter [Auto Farm GUI]", "RaiseaPeterAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaiseaPeterAutoFarmGUI.lua")
                    
                    
addscriptexist(5956785391, "ProjectSlayersMuzanESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersMuzanESP.lua")
                    
addscriptexist(5956785391, "ProjectSlayersGUIAutoFarmAutoSkillMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersGUIAutoFarmAutoSkillMore.lua")
    
addscript(6604417568,"Minerscave [Ore ESP - GUI]", "MinerscaveOreESPGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MinerscaveOreESPGUI.lua")
                    
    
addscript(8739839954,"Jujutsu Tycoon [Use All Abilities]", "JujutsuTycoonUseAllAbilities", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JujutsuTycoonUseAllAbilities.lua")
                    
                    
addscriptexist(863266079, "ApocalypseRising2GUIInfJumpEspMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ApocalypseRising2GUIInfJumpEspMore.lua")
                    
addscriptexist(5320510816, "FarmLifeTycoonAutoMoneyCollector", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FarmLifeTycoonAutoMoneyCollector.lua")
                    
addscriptexist(5956785391, "ProjectSlayersInfiniteStamina", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersInfiniteStamina.lua")
                    
addscriptexist(920587237, "AdoptMeSpamVehiclesToPeopleMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMeSpamVehiclesToPeopleMore.lua")
    
addscript(5310653431,"Synapse X Stream Sniper", "SynapseXStreamSniper", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SynapseXStreamSniper.lua")
                    
    
addscript(9530846958,"EPSILON LINEAGE 2 [Infinite Mana & More!]", "EPSILONLINEAGE2InfiniteManaMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EPSILONLINEAGE2InfiniteManaMore.lua")
                    
                    
addscriptexist(537413528, "BuildABoatForTreasureAutoFarmTptoclosedplacesAntiafk", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureAutoFarmTptoclosedplacesAntiafk.lua")
                    
addscriptexist(5956785391, "ProjectSlayerAutoSpin", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayerAutoSpin.lua")
                    
addscriptexist(5956785391, "ProjectSlayerClaimSpin", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayerClaimSpin.lua")
                    
addscriptexist(5956785391, "ProjectSlayersAutoFastSpin", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersAutoFastSpin.lua")
                    
addscriptexist(10118559731, "nicosnextbotsBotESPPlayerESPMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/nicosnextbotsBotESPPlayerESPMore.lua")
                    
addscriptexist(2413927524, "THERAKEKillEditionInfiniteStamina", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/THERAKEKillEditionInfiniteStamina.lua")
                    
addscriptexist(3346617530, "FreezeTagExtremeTagAllPlayersMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FreezeTagExtremeTagAllPlayersMore.lua")
    
addscript(679715583,"Starscape [Auto Pilot]", "StarscapeAutoPilot", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StarscapeAutoPilot.lua")
                    
                    
addscriptexist(8123652942, "LegendPieceAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendPieceAutoFarmMore.lua")
    
addscript(6249640453,"Classic Retro Craftwars [Infinite Cash]", "ClassicRetroCraftwarsInfiniteCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClassicRetroCraftwarsInfiniteCash.lua")
                    
                    
addscriptexist(6570234816, "ManoCountyRoleplayKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ManoCountyRoleplayKillAll.lua")
    
addscript(9945521676,"Roblox [Hide VoiceChat Microphone on top of your head]", "RobloxHideVoiceChatMicrophoneontopofyourhead", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxHideVoiceChatMicrophoneontopofyourhead.lua")
                    
                    
addscriptexist(863266079, "ApocalypseRising2InfJumpEspSnowHealth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ApocalypseRising2InfJumpEspSnowHealth.lua")
                    
addscriptexist(9903808883, "BuildaMarketTycoonFastNPCS", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildaMarketTycoonFastNPCS.lua")
    
addscript(4598019433,"generic roleplay gaem [GUI - Auto Farm]", "genericroleplaygaemGUIAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/genericroleplaygaemGUIAutoFarm.lua")
                    
                    
addscriptexist(863266079, "ApocalypseRising2AntiZombieFreeze", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ApocalypseRising2AntiZombieFreeze.lua")
                    
addscriptexist(863266079, "ApocalypseRising2TeleportToPosition", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ApocalypseRising2TeleportToPosition.lua")
                    
addscriptexist(185655149, "BloxburgGUIAutoBuild", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxburgGUIAutoBuild.lua")
                    
addscriptexist(185655149, "BloxburgGUIAutoFarmWaypointMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxburgGUIAutoFarmWaypointMore.lua")
                    
addscriptexist(5956785391, "ProjectSlayersAutoSpin", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersAutoSpin.lua")
                    
addscriptexist(4036494886, "GunSimulatorGUIGetInfiniteMoneySetMaxWeaponDamageMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GunSimulatorGUIGetInfiniteMoneySetMaxWeaponDamageMore.lua")
                    
addscriptexist(8554378337, "WeaponFightingSimulatorGUIStartFarmSelectAreaToFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeaponFightingSimulatorGUIStartFarmSelectAreaToFarmMore.lua")
                    
addscriptexist(7026949294, "SwordSimulatorInfiniteCoinsAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwordSimulatorInfiniteCoinsAutoFarmMore.lua")
    
addscript(8069117419,"Demon Soul Simulator [GUI - Auto Farm, Auto Punch & More!]", "DemonSoulSimulatorGUIAutoFarmAutoPunchMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DemonSoulSimulatorGUIAutoFarmAutoPunchMore.lua")
                    
                    
addscriptexist(8069117419, "DemonSoulSimulatorBreathingDupe", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DemonSoulSimulatorBreathingDupe.lua")
                    
addscriptexist(5956785391, "ProjectSlayersMuzanTP", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersMuzanTP.lua")
                    
addscriptexist(5956785391, "ProjectSlayersDatawipeagain", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersDatawipeagain.lua")
    
addscript(7140186081,"GunGame [Kill All]", "GunGameKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GunGameKillAll.lua")
                    
    
addscript(5357899168,"Dinosaur Arcade [BETA] [Fossil Finder]", "DinosaurArcadeBETAFossilFinder", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DinosaurArcadeBETAFossilFinder.lua")
                    
    
addscript(5104202731,"Southwest Florida Beta [Click Teleport To Cars]", "SouthwestFloridaBetaClickTeleportToCars", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SouthwestFloridaBetaClickTeleportToCars.lua")
                    
                    
addscriptexist(263761432, "HorrificHousingGodmodeDestroyMeteorKillAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HorrificHousingGodmodeDestroyMeteorKillAll.lua")
                    
addscriptexist(8304191830, "AnimeAdventuresGUIFullAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeAdventuresGUIFullAutoFarmMore.lua")
    
addscript(9508087919,"Apeirophobia [Teleport]", "ApeirophobiaTeleport", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ApeirophobiaTeleport.lua")
                    
                    
addscriptexist(8328351891, "MegaMansionTycoonAutoBuy", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MegaMansionTycoonAutoBuy.lua")
    
addscript(698448212,"RoBeats! [Free Ugc Item]", "RoBeatsFreeUgcItem", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoBeatsFreeUgcItem.lua")
                    
    
addscript(4850718823,"Skate Park [Free Ugc Items]", "SkateParkFreeUgcItems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SkateParkFreeUgcItems.lua")
                    
    
addscript(4746041618,"Steel Titans [ESP, Deleting objects]", "SteelTitansESPDeletingobjects", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SteelTitansESPDeletingobjects.lua")
                    
                    
addscriptexist(7940932746, "RobloxPingGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxPingGUI.lua")
                    
addscriptexist(8304191830, "AnimeAdventuresAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeAdventuresAutoFarm.lua")
                    
addscriptexist(7664413141, "CreeperChaosAutoFarmWins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CreeperChaosAutoFarmWins.lua")
                    
addscriptexist(2727067538, "WorldZeroKillAura", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorldZeroKillAura.lua")
                    
addscriptexist(4588604953, "CriminalityBasedAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriminalityBasedAutoFarm.lua")
    
addscript(8876694280,"Strong Simulator X [Auto Farm GUI]", "StrongSimulatorXAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrongSimulatorXAutoFarmGUI.lua")
                    
    
addscript(9359379224,"Chaotic Bean Simulator Early Beta [Slow Auto Farm]", "ChaoticBeanSimulatorEarlyBetaSlowAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ChaoticBeanSimulatorEarlyBetaSlowAutoFarm.lua")
                    
    
addscript(9190926538,"Toy Fighters [Auto Farm]", "ToyFightersAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ToyFightersAutoFarm.lua")
                    
                    
addscriptexist(9976239895, "GumballFactoryTycoonFullAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GumballFactoryTycoonFullAutoFarm.lua")
    
addscript(7663817366,"Prison Roleplay Escape Plan [Auto Farm]", "PrisonRoleplayEscapePlanAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonRoleplayEscapePlanAutoFarm.lua")
                    
                    
addscriptexist(9377039667, "RobloxInnovationAwardsVotingHubGetAllPuzzlePieces", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxInnovationAwardsVotingHubGetAllPuzzlePieces.lua")
                    
addscriptexist(679715583, "StarscapeAutoMarket", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StarscapeAutoMarket.lua")
    
addscript(9616411936,"Man City Blue Moon [Free Ugc Item]", "ManCityBlueMoonFreeUgcItem", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ManCityBlueMoonFreeUgcItem.lua")
                    
    
addscript(6737970321,"Livetopia [Free Ugc Item]", "LivetopiaFreeUgcItem", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LivetopiaFreeUgcItem.lua")
                    
                    
addscriptexist(7075737729, "HoopCentral6AutoDunk", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HoopCentral6AutoDunk.lua")
    
addscript(9974958703,"Fruit Piece [Infinite Stats]", "FruitPieceInfiniteStats", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FruitPieceInfiniteStats.lua")
                    
    
addscript(7182546997,"Attack on Titan Vengeance [Auto Farm Titan]", "AttackonTitanVengeanceAutoFarmTitan", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AttackonTitanVengeanceAutoFarmTitan.lua")
                    
                    
addscriptexist(7182546997, "AttackonTitanVengeanceBerserkerAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AttackonTitanVengeanceBerserkerAutoFarm.lua")
    
addscript(198116126,"Tradelands [Auto Farm & More!]", "TradelandsAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TradelandsAutoFarmMore.lua")
                    
                    
addscriptexist(5104202731, "SouthwestFloridaBetaJobAntiAfk", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SouthwestFloridaBetaJobAntiAfk.lua")
    
addscript(1858299821,"Robloxica [Money Dupe]", "RobloxicaMoneyDupe", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxicaMoneyDupe.lua")
                    
                    
addscriptexist(8540168650, "StandUprightRebootedGUISortToolsItemsFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StandUprightRebootedGUISortToolsItemsFarmMore.lua")
                    
addscriptexist(4459593483, "FORCEPREALPHAAutoParryMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FORCEPREALPHAAutoParryMore.lua")
    
addscript(2098516465,"Roblox High School 2 [Free Ugc Item]", "RobloxHighSchool2FreeUgcItem", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxHighSchool2FreeUgcItem.lua")
                    
                    
addscriptexist(8123652942, "LegendPieceGUITeleportsEspMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendPieceGUITeleportsEspMore.lua")
                    
addscriptexist(7167319176, "ChicagoRemasteredGUIMoneyTeleportsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ChicagoRemasteredGUIMoneyTeleportsMore.lua")
    
addscript(5910449407,"Project Menacing [GUI - Mob Farm, Stand Farm & More!]", "ProjectMenacingGUIMobFarmStandFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectMenacingGUIMobFarmStandFarmMore.lua")
                    
                    
addscriptexist(7899881670, "RBWorld4AutoArcadeBot", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RBWorld4AutoArcadeBot.lua")
    
addscript(7491927311,"Undertale Test Place Reborn [Alt Detection Bypass]", "UndertaleTestPlaceRebornAltDetectionBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UndertaleTestPlaceRebornAltDetectionBypass.lua")
                    
    
addscript(6938803436,"Anime Dimensions Simulator [Auto Farm]", "AnimeDimensionsSimulatorAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeDimensionsSimulatorAutoFarm.lua")
                    
                    
addscriptexist(2809202155, "YourBizarreAdventureGodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YourBizarreAdventureGodMode.lua")
                    
addscriptexist(2753915549, "BloxFruitsUnlockAbilyti", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsUnlockAbilyti.lua")
                    
addscriptexist(863266079, "ApocalypseRising2AntiZombieTeleport", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ApocalypseRising2AntiZombieTeleport.lua")
                    
addscriptexist(9359379224, "ChaoticBeanSimulatorAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ChaoticBeanSimulatorAutoFarm.lua")
                    
addscriptexist(1537690962, "BeeSwarmSimulatorGUIAutoDigAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeeSwarmSimulatorGUIAutoDigAutoFarmMore.lua")
                    
addscriptexist(2506738224, "FallenMagicBullet", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FallenMagicBullet.lua")
                    
addscriptexist(8884334497, "MiningClickerSimulatorGUIAutoClicksAutoRebirthMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningClickerSimulatorGUIAutoClicksAutoRebirthMore.lua")
                    
addscriptexist(10118559731, "Nico’sNextbotsBotsEspTeleportToSafezone", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Nico’sNextbotsBotsEspTeleportToSafezone.lua")
    
addscript(9597319358,"Actors Tycoon [AutoFarm Buttons, Auto Upgrade Workers, Working on mobile]", "ActorsTycoonAutoFarmButtonsAutoUpgradeWorkersWorkingonmobile", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ActorsTycoonAutoFarmButtonsAutoUpgradeWorkersWorkingonmobile.lua")
                    
    
addscript(9845529187,"Tidewater [Annoy All]", "TidewaterAnnoyAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TidewaterAnnoyAll.lua")
                    
                    
addscriptexist(4850718823, "SkateParkInstantlygetbothitems", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SkateParkInstantlygetbothitems.lua")
                    
addscriptexist(6716188523, "BusinessTycoonInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BusinessTycoonInfMoney.lua")
    
addscript(6058150350,"Destruction Physics [Physics Lag players]", "DestructionPhysicsPhysicsLagplayers", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DestructionPhysicsPhysicsLagplayers.lua")
                    
    
addscript(9281034297,"Goal Kick Simulator [Faster Auto Kick]", "GoalKickSimulatorFasterAutoKick", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GoalKickSimulatorFasterAutoKick.lua")
                    
                    
addscriptexist(10118559731, "nicosnextbotsEsptpSafeZone", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/nicosnextbotsEsptpSafeZone.lua")
    
addscript(568350650,"Fashion Famous [Get Klossette x Reverse_Polarity Backpack]", "FashionFamousGetKlossettexReversePolarityBackpack", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FashionFamousGetKlossettexReversePolarityBackpack.lua")
                    
                    
addscriptexist(2098516465, "RobloxHighSchool2GetKlossettexLovespunPurse", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxHighSchool2GetKlossettexLovespunPurse.lua")
    
addscript(3722916,"2 Player Company Tycoon [Inf Money]", "2PlayerCompanyTycoonInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/2PlayerCompanyTycoonInfMoney.lua")
                    
                    
addscriptexist(537413528, "BuildABoatForTreasureInfBlockWORKING", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureInfBlockWORKING.lua")
                    
addscriptexist(2753915549, "BloxFruitsSilentAim", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsSilentAim.lua")
                    
addscriptexist(7940932746, "RobloxCloVRFE", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxCloVRFE.lua")
                    
addscriptexist(6678877691, "ZOぞTpAura", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZOぞTpAura.lua")
    
addscript(9344944754,"Hunter x Athena [Auto Pushup, Auto Climb, Auto Run]", "HunterxAthenaAutoPushupAutoClimbAutoRun", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HunterxAthenaAutoPushupAutoClimbAutoRun.lua")
                    
    
addscript(413424176,"Clone Tycoon 2 [Infinite Cash]", "CloneTycoon2InfiniteCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CloneTycoon2InfiniteCash.lua")
                    
                    
addscriptexist(3101667897, "LegendsOfSpeedAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendsOfSpeedAutoFarm.lua")
                    
addscriptexist(263761432, "HorrificHousingGUIDestroyMeteorMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HorrificHousingGUIDestroyMeteorMore.lua")
    
addscript(9601565001,"Car Crash System [Spawn Any Paid Car]", "CarCrashSystemSpawnAnyPaidCar", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarCrashSystemSpawnAnyPaidCar.lua")
                    
    
addscript(9578901194,"Woman Repellant [Women will not run away from you]", "WomanRepellantWomenwillnotrunawayfromyou", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WomanRepellantWomenwillnotrunawayfromyou.lua")
                    
                    
addscriptexist(1224212277, "MadCityGetWeeklyRewards", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityGetWeeklyRewards.lua")
    
addscript(10105990977,"Samsung Space Tycoon [Destroy Everyones FPS]", "SamsungSpaceTycoonDestroyEveryonesFPS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SamsungSpaceTycoonDestroyEveryonesFPS.lua")
                    
                    
addscriptexist(8304191830, "AnimeAdventuresFullAutoFarmAutoUpgradeSelectWorld", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeAdventuresFullAutoFarmAutoUpgradeSelectWorld.lua")
                    
addscriptexist(10105990977, "SamsungSpaceTycoonGetAllItems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SamsungSpaceTycoonGetAllItems.lua")
                    
addscriptexist(4036494886, "GunSimulatorInfiniteMoneyMaxSkillPerShot", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GunSimulatorInfiniteMoneyMaxSkillPerShot.lua")
                    
addscriptexist(3214114884, "FlagWarsKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FlagWarsKillAll.lua")
    
addscript(3144213556,"Troll Obby [Auto Win]", "TrollObbyAutoWin", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TrollObbyAutoWin.lua")
                    
                    
addscriptexist(8123652942, "LegendPieceSeabeastGemsFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendPieceSeabeastGemsFarm.lua")
                    
addscriptexist(10001513103, "LimitedWordsGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LimitedWordsGUI.lua")
    
addscript(7056117669,"get chased by a rocket [Kick Player]", "getchasedbyarocketKickPlayer", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/getchasedbyarocketKickPlayer.lua")
                    
                    
addscriptexist(7056117669, "getchasedbyarocketKickAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/getchasedbyarocketKickAll.lua")
                    
addscriptexist(4459593483, "FORCEPvpMode", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FORCEPvpMode.lua")
    
addscript(6875747014,"Ronopoly [Spam dice]", "RonopolySpamdice", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RonopolySpamdice.lua")
                    
    
addscript(653205701,"Fort Martin, Military Base [jumping]", "FortMartinMilitaryBasejumping", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FortMartinMilitaryBasejumping.lua")
                    
    
addscript(9936860371,"Egg Packing Tycoon [Semi Autofarm]", "EggPackingTycoonSemiAutofarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EggPackingTycoonSemiAutofarm.lua")
                    
                    
addscriptexist(1730877806, "GrandPieceOnlineBountyEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GrandPieceOnlineBountyEsp.lua")
    
addscript(9396463375,"Mining Empire [Infinite Vouchers]", "MiningEmpireInfiniteVouchers", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningEmpireInfiniteVouchers.lua")
                    
                    
addscriptexist(9396463375, "MiningEmpireInfCoins", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningEmpireInfCoins.lua")
                    
addscriptexist(8303902695, "PetPosseAutorebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetPosseAutorebirth.lua")
                    
addscriptexist(9508087919, "ApeirophobiaAll10LvlEspExitInfStamina", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ApeirophobiaAll10LvlEspExitInfStamina.lua")
    
addscript(8619263259,"Critical Legends [Collect all chests, Tp to every statue]", "CriticalLegendsCollectallchestsTptoeverystatue", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriticalLegendsCollectallchestsTptoeverystatue.lua")
                    
                    
addscriptexist(2788229376, "DaHoodAutoFarmGodmodeKllBot", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodAutoFarmGodmodeKllBot.lua")
                    
addscriptexist(8750997647, "TappingLegendsXUPDATEDAUTOFARMGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegendsXUPDATEDAUTOFARMGUI.lua")
                    
addscriptexist(8123652942, "LegendPieceGiveDevilFruit", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendPieceGiveDevilFruit.lua")
                    
addscriptexist(7560156054, "ClickerSimulatorFreeGamepasses", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerSimulatorFreeGamepasses.lua")
                    
addscriptexist(2753915549, "BloxFruitsGUIAutofarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsGUIAutofarm.lua")
    
addscript(8151832473,"TheGhettoGame [Inf Money]", "TheGhettoGameInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheGhettoGameInfMoney.lua")
                    
                    
addscriptexist(2788229376, "DaHoodAutoFarmCashGodmodeInfiniteStamina", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodAutoFarmCashGodmodeInfiniteStamina.lua")
    
addscript(6206893534,"Cobra Kai Karate [Auto Farm Pushups, Auto Farm Situps, No Stun]", "CobraKaiKarateAutoFarmPushupsAutoFarmSitupsNoStun", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CobraKaiKarateAutoFarmPushupsAutoFarmSitupsNoStun.lua")
                    
    
addscript(2551184308,"Roblox [Re-enter after a kick]", "RobloxReenterafterakick", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxReenterafterakick.lua")
                    
                    
addscriptexist(2809202155, "YourBizarreAdventureNoCooldown", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YourBizarreAdventureNoCooldown.lua")
                    
addscriptexist(9551640993, "MiningSimulator2AutoFishAllAreas", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2AutoFishAllAreas.lua")
                    
addscriptexist(8554378337, "WeaponFightingSimulatorAutoFarmAllAreasMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeaponFightingSimulatorAutoFarmAllAreasMore.lua")
    
addscript(9884452497,"Bloodlust [Infinite Money]", "BloodlustInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloodlustInfiniteMoney.lua")
                    
                    
addscriptexist(185655149, "BloxburgAutoBuild", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxburgAutoBuild.lua")
                    
addscriptexist(6677985923, "MillionaireEmpireTycoonAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MillionaireEmpireTycoonAutoFarm.lua")
                    
addscriptexist(7560156054, "ClickerSimulatorFreeGamepass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerSimulatorFreeGamepass.lua")
                    
addscriptexist(8876694280, "StrongSimulatorXAutoFarmAutoRebirthHideNameTag", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrongSimulatorXAutoFarmAutoRebirthHideNameTag.lua")
                    
addscriptexist(8303902695, "PetPosseSpamCoin", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetPosseSpamCoin.lua")
                    
addscriptexist(35397735, "ScubaDivingatQuillLakeInfGold", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ScubaDivingatQuillLakeInfGold.lua")
                    
addscriptexist(35397735, "ScubaDivingatQuillLakeGodmode", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ScubaDivingatQuillLakeGodmode.lua")
                    
addscriptexist(863266079, "ApocalypseRising2TeleportToPlayer", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ApocalypseRising2TeleportToPlayer.lua")
                    
addscriptexist(7026949294, "SwordSimulatorAutoFarmInfiniteCoinsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwordSimulatorAutoFarmInfiniteCoinsMore.lua")
                    
addscriptexist(9598746251, "HomeRunSimulatorAutoTime", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HomeRunSimulatorAutoTime.lua")
                    
addscriptexist(4588604953, "CriminalityGUIAimbotEspMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriminalityGUIAimbotEspMore.lua")
    
addscript(7947609996,"Roblox - Sword Reach", "RobloxSwordReach", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxSwordReach.lua")
                    
    
addscript(7240922896,"Roblox - Player Avatars ESP", "RobloxPlayerAvatarsESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxPlayerAvatarsESP.lua")
                    
                    
addscriptexist(8554378337, "SwordSimulatorAutoHit", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwordSimulatorAutoHit.lua")
                    
addscriptexist(6766156863, "ImmigrantESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ImmigrantESP.lua")
    
addscript(2688038742,"Area - Omega [Kill All]", "AreaOmegaKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AreaOmegaKillAll.lua")
                    
                    
addscriptexist(6872265039, "BedWarsInstaKill", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BedWarsInstaKill.lua")
    
addscript(4237861040,"Treacherous Tower [GUI - Auto Farm]", "TreacherousTowerGUIAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TreacherousTowerGUIAutoFarm.lua")
                    
                    
addscriptexist(9551640993, "MiningSimulator2RemoveEggAnimations", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2RemoveEggAnimations.lua")
    
addscript(7540727946,"Hoops Life [Auto Time - Semi Aimbot - Open Source]", "HoopsLifeAutoTimeSemiAimbotOpenSource", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HoopsLifeAutoTimeSemiAimbotOpenSource.lua")
                    
    
addscript(9103898828,"Rogue Demon [No Fall Damage]", "RogueDemonNoFallDamage", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RogueDemonNoFallDamage.lua")
                    
                    
addscriptexist(9976239895, "GumballFactoryTycoonAutoConvertGumballs", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GumballFactoryTycoonAutoConvertGumballs.lua")
                    
addscriptexist(5939428933, "CrewmatesKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CrewmatesKillAll.lua")
                    
addscriptexist(4746041618, "SteelTitansESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SteelTitansESP.lua")
                    
addscriptexist(3722916, "2PlayerCompanyTycoonInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/2PlayerCompanyTycoonInfiniteMoney.lua")
    
addscript(9875254583,"Juice Pirates [Max Level]", "JuicePiratesMaxLevel", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JuicePiratesMaxLevel.lua")
                    
                    
addscriptexist(9875254583, "JuicePiratesInfiniteGems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JuicePiratesInfiniteGems.lua")
    
addscript(9568982793,"Da Hood Battlegrounds [Rapid Fire Mod]", "DaHoodBattlegroundsRapidFireMod", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodBattlegroundsRapidFireMod.lua")
                    
                    
addscriptexist(8750997647, "TappingLegendsXGUIAutoTapAutoRebirthMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegendsXGUIAutoTapAutoRebirthMore.lua")
                    
addscriptexist(8303902695, "PetPosseGUIAutoFarmSelectedZoneUnlockAllGamepassesMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetPosseGUIAutoFarmSelectedZoneUnlockAllGamepassesMore.lua")
                    
addscriptexist(8123652942, "LegendPieceInfiniteLevel", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendPieceInfiniteLevel.lua")
                    
addscriptexist(9662949425, "PunchabrickwallsimulatorInfiniteMoneyMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PunchabrickwallsimulatorInfiniteMoneyMore.lua")
                    
addscriptexist(9936860371, "EggPackingTycoonSemiAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EggPackingTycoonSemiAutoFarm.lua")
                    
addscriptexist(8303902695, "PetPosseAutoRebirth", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetPosseAutoRebirth.lua")
                    
addscriptexist(537413528, "BuildABoatForTreasureInfiniteBlocks", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureInfiniteBlocks.lua")
    
addscript(133815151,"The Final Stand 2 [Silent Aim]", "TheFinalStand2SilentAim", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheFinalStand2SilentAim.lua")
                    
                    
addscriptexist(9976239895, "GumballFactoryTycoonObbyMultiplier", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GumballFactoryTycoonObbyMultiplier.lua")
                    
addscriptexist(8304191830, "AnimeAdventuresAutoAbilytiAutoUpgrade", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeAdventuresAutoAbilytiAutoUpgrade.lua")
    
addscript(2546155523,"RoVille [Taxi Auto Farm]", "RoVilleTaxiAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoVilleTaxiAutoFarm.lua")
                    
                    
addscriptexist(9568982793, "DaHoodBattlegroundsAntiCheatBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodBattlegroundsAntiCheatBypass.lua")
                    
addscriptexist(8303902695, "PetPosseSpamCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetPosseSpamCoins.lua")
                    
addscriptexist(8303902695, "PetPosseRemoveEggAnimations", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetPosseRemoveEggAnimations.lua")
                    
addscriptexist(9281034297, "GoalKickSimulatorAutoTime", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GoalKickSimulatorAutoTime.lua")
    
addscript(4616247820,"Journey to the Sun [Collect All Coins]", "JourneytotheSunCollectAllCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JourneytotheSunCollectAllCoins.lua")
                    
                    
addscriptexist(9344944754, "HunterxAthenaAutoPushupClimbMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HunterxAthenaAutoPushupClimbMore.lua")
                    
addscriptexist(70005410, "BloxHuntAFKAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxHuntAFKAutoFarm.lua")
                    
addscriptexist(8739839954, "JujutsuTycoonKillStudents", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JujutsuTycoonKillStudents.lua")
                    
addscriptexist(8739839954, "JujutsuTycoonKillAllPlayers", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JujutsuTycoonKillAllPlayers.lua")
                    
addscriptexist(9936860371, "EggPackingTycoonGUIAutoCollectEggsAutoPlaceEggs", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EggPackingTycoonGUIAutoCollectEggsAutoPlaceEggs.lua")
                    
addscriptexist(6284583030, "PetSimulatorXGUIAutoFarmAutoCollectAllMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXGUIAutoFarmAutoCollectAllMore.lua")
                    
addscriptexist(70005410, "BloxHuntGodModeInfiniteEnergy", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxHuntGodModeInfiniteEnergy.lua")
                    
addscriptexist(4588604953, "CriminalityAutoBlock", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriminalityAutoBlock.lua")
                    
addscriptexist(2753915549, "BloxFruitSilentAim", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitSilentAim.lua")
                    
addscriptexist(8739839954, "JujutsuTycoonKillBoss", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JujutsuTycoonKillBoss.lua")
                    
addscriptexist(8739839954, "JujutsuTycoonCollectLoot", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JujutsuTycoonCollectLoot.lua")
                    
addscriptexist(1730877806, "GrandPieceOnlineBountyESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GrandPieceOnlineBountyESP.lua")
                    
addscriptexist(6678877691, "ZOぞSAMURAITeleportAura", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZOぞSAMURAITeleportAura.lua")
    
addscript(447452406,"Robloxian High School [Trash Bag Spam]", "RobloxianHighSchoolTrashBagSpam", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxianHighSchoolTrashBagSpam.lua")
                    
                    
addscriptexist(606849621, "JailbreakGUIVehiclesSettingsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakGUIVehiclesSettingsMore.lua")
                    
addscriptexist(7952502098, "ImpossibleGlassBridgeObbyShowingtheway", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ImpossibleGlassBridgeObbyShowingtheway.lua")
                    
addscriptexist(9961650006, "ShockwaveRacingAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShockwaveRacingAutoFarm.lua")
                    
addscriptexist(9508087919, "ApeirophobiaInfiniteStaminaTeleportsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ApeirophobiaInfiniteStaminaTeleportsMore.lua")
    
addscript(9734866408,"Basketball Simulator [Infinite Coins]", "BasketballSimulatorInfiniteCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BasketballSimulatorInfiniteCoins.lua")
                    
                    
addscriptexist(9396463375, "MiningEmpireInfiniteCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningEmpireInfiniteCoins.lua")
                    
addscriptexist(8884334497, "MiningClickerSimulatorAutoClicksMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningClickerSimulatorAutoClicksMore.lua")
    
addscript(8232438881,"Thief Simulator [Npc Rob]", "ThiefSimulatorNpcRob", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThiefSimulatorNpcRob.lua")
                    
                    
addscriptexist(1730877806, "GrandPieceOnlineFullyinvisible", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GrandPieceOnlineFullyinvisible.lua")
                    
addscriptexist(606849621, "JailbreakGetWeaponsUnlockDoorsTelepots", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakGetWeaponsUnlockDoorsTelepots.lua")
                    
addscriptexist(9662949425, "PunchabrickwallsimulatorGUIInfiniteMoneyInfiniteBonesMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PunchabrickwallsimulatorGUIInfiniteMoneyInfiniteBonesMore.lua")
                    
addscriptexist(2043040358, "VyyrahkCityAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VyyrahkCityAutoFarm.lua")
                    
addscriptexist(7480222488, "RobloxESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxESP.lua")
    
addscript(9711302332,"Clkicker Heroes [Auto Tap - Auto Evolve And More!]", "ClkickerHeroesAutoTapAutoEvolveAndMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClkickerHeroesAutoTapAutoEvolveAndMore.lua")
                    
                    
addscriptexist(2043040358, "VyyrahkCityMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VyyrahkCityMoney.lua")
                    
addscriptexist(9281034297, "GoalKickSimulatorGUIAutoKickAutoRebirthMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GoalKickSimulatorGUIAutoKickAutoRebirthMore.lua")
    
addscript(8592863835,"Magnet Simulator 2 [GUI - Sell x18, Auto Egg]", "MagnetSimulator2GUISellx18AutoEgg", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MagnetSimulator2GUISellx18AutoEgg.lua")
                    
                    
addscriptexist(8232438881, "ThiefSimulatorFastAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThiefSimulatorFastAutoFarm.lua")
                    
addscriptexist(9103898828, "RogueDemonNormalRunSpeedBreath", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RogueDemonNormalRunSpeedBreath.lua")
    
addscript(5315066937,"surf [SuperB Surf]", "surfSuperBSurf", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/surfSuperBSurf.lua")
                    
    
addscript(3311740703,"Counter Blox", "CounterBloxModdedKillAllAimbotEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CounterBloxModdedKillAllAimbotEsp.lua")
                    
                    
addscriptexist(6755746130, "FruitJuiceTycoonAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FruitJuiceTycoonAutoFarm.lua")
    
addscript(9266432096,"Anime Journey [Auto Farm, Auto Spin, Auto Stats]", "AnimeJourneyAutoFarmAutoSpinAutoStats", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeJourneyAutoFarmAutoSpinAutoStats.lua")
                    
                    
addscriptexist(920587237, "AdoptMeGetAllPetsRideableFlyable", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMeGetAllPetsRideableFlyable.lua")
                    
addscriptexist(7860844204, "LifeSentenceAutoFarmAutoCollectPointsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LifeSentenceAutoFarmAutoCollectPointsMore.lua")
    
addscript(9463737803,"WimbleWorld [Xp Farm - Badges & Get UGC Item]", "WimbleWorldXpFarmBadgesGetUGCItem", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WimbleWorldXpFarmBadgesGetUGCItem.lua")
                    
    
addscript(740581508,"Entry Point [Npc Esp]", "EntryPointNpcEsp", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EntryPointNpcEsp.lua")
                    
    
addscript(2639416308,"Ace Attorney Spam [Spam Custom Massages]", "AceAttorneySpamSpamCustomMassages", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AceAttorneySpamSpamCustomMassages.lua")
                    
    
addscript(8603729161,"walk 50000 studs for nothing [Max studs in under 1 minute]", "walk50000studsfornothingMaxstudsinunder1minute", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/walk50000studsfornothingMaxstudsinunder1minute.lua")
                    
                    
addscriptexist(9498006165, "TappingSimulatorGUIAutoRebirthAutoUpgradesMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingSimulatorGUIAutoRebirthAutoUpgradesMore.lua")
                    
addscriptexist(6938803436, "AnimeDimensionsSimulatorGUIAutoLevelFarmRaidMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeDimensionsSimulatorGUIAutoLevelFarmRaidMore.lua")
    
addscript(8635207352,"Anime Merge Simulator [Fast Auto Farm]", "AnimeMergeSimulatorFastAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeMergeSimulatorFastAutoFarm.lua")
                    
                    
addscriptexist(6206893534, "CobraKaiKarateGUIAutoFarmBagsHideNameMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CobraKaiKarateGUIAutoFarmBagsHideNameMore.lua")
    
addscript(9726345231,"Duolingo Game Hub [Inf Money]", "DuolingoGameHubInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DuolingoGameHubInfMoney.lua")
                    
    
addscript(8798268679,"Crossroad Combat", "CrossroadCombat", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CrossroadCombat.lua")
                    
    
addscript(180037022,"Sonic Ultimate RPG [Loop Collect All Rings, Collect All Chaos Emeralds, No ring drain]", "SonicUltimateRPGLoopCollectAllRingsCollectAllChaosEmeraldsNoringdrain", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicUltimateRPGLoopCollectAllRingsCollectAllChaosEmeraldsNoringdrain.lua")
                    
    
addscript(7791873535,"REALISTIC HOOD [Invis Kill Method]", "REALISTICHOODInvisKillMethod", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/REALISTICHOODInvisKillMethod.lua")
                    
    
addscript(6763893674,"Ballista [Inf arrows, Fast arrow, No roll cooldown]", "BallistaInfarrowsFastarrowNorollcooldown", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BallistaInfarrowsFastarrowNorollcooldown.lua")
                    
    
addscript(6937208251,"Star Wars", "StarWarsBattlegroundSilentAim", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StarWarsBattlegroundSilentAim.lua")
                    
                    
addscriptexist(9551640993, "MiningSimulator2AutoFarmGUI", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2AutoFarmGUI.lua")
    
addscript(632642533,"DeadMist 2 Beta [God Mode, Teleport Bypass]", "DeadMist2BetaGodModeTeleportBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeadMist2BetaGodModeTeleportBypass.lua")
                    
                    
addscriptexist(180037022, "SonicUltimateRPGFarmRings", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicUltimateRPGFarmRings.lua")
    
addscript(8596411742,"Barb Blox Lane [Fast Farm]", "BarbBloxLaneFastFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BarbBloxLaneFastFarm.lua")
                    
    
addscript(1467230998,"TROOP LIFE [Auto Farm]", "TROOPLIFEAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TROOPLIFEAutoFarm.lua")
                    
                    
addscriptexist(2248408710, "DestructionSimulatorMaxLvlGetAllWeaponsBombNoCooldownDonotUSE100M", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DestructionSimulatorMaxLvlGetAllWeaponsBombNoCooldownDonotUSE100M.lua")
                    
addscriptexist(4598019433, "genericroleplaygaemAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/genericroleplaygaemAutoFarm.lua")
                    
addscriptexist(6677985923, "MillionaireEmpireTycoonInfiniteMoneyRemote", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MillionaireEmpireTycoonInfiniteMoneyRemote.lua")
                    
addscriptexist(6206893534, "CobraKaiKarateGUIAutoFarming", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CobraKaiKarateGUIAutoFarming.lua")
                    
addscriptexist(180037022, "SonicUltimateRPGGetAllRings", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicUltimateRPGGetAllRings.lua")
                    
addscriptexist(180037022, "SonicUltimateRPGGetAllEmeralds", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicUltimateRPGGetAllEmeralds.lua")
                    
addscriptexist(2906554815, "SWATSimulatorAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SWATSimulatorAutoFarm.lua")
    
addscript(8110845141,"POOP WITH FRIENDS [GUI - Auto Farming]", "POOPWITHFRIENDSGUIAutoFarming", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/POOPWITHFRIENDSGUIAutoFarming.lua")
                    
                    
addscriptexist(537413528, "BuildABoatForTreasureGUIAutoQuestAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureGUIAutoQuestAutoFarm.lua")
    
addscript(9359839118,"Gas Station Simulator [Break The Whole Game]", "GasStationSimulatorBreakTheWholeGame", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GasStationSimulatorBreakTheWholeGame.lua")
                    
                    
addscriptexist(8151832473, "TheGhettoGameGUISuperOPInfiniteMoneyMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheGhettoGameGUISuperOPInfiniteMoneyMore.lua")
                    
addscriptexist(8596411742, "BarbBloxLaneAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BarbBloxLaneAutoFarm.lua")
                    
addscriptexist(4282985734, "CombatWarriorsAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CombatWarriorsAutoFarm.lua")
    
addscript(6558526079,"Anime World Tower Defence [Mess Up Servers]", "AnimeWorldTowerDefenceMessUpServers", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeWorldTowerDefenceMessUpServers.lua")
                    
                    
addscriptexist(9601565001, "CarCrashSystemDeleteAnything", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarCrashSystemDeleteAnything.lua")
    
addscript(6915291292,"Bakery Simulator [Delete Anything]", "BakerySimulatorDeleteAnything", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BakerySimulatorDeleteAnything.lua")
                    
    
addscript(4443032907,"Sword Simulator [GUI - Auto Mobs & More!]", "SwordSimulatorGUIAutoMobsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwordSimulatorGUIAutoMobsMore.lua")
                    
                    
addscriptexist(6755746130, "FruitJuiceTycoonRefreshedSimpleAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FruitJuiceTycoonRefreshedSimpleAutoFarm.lua")
    
addscript(9611595239,"Rift Royale [Esp + Aimbot]", "RiftRoyaleEspAimbot", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RiftRoyaleEspAimbot.lua")
                    
    
addscript(6269446951,"Smooth Slicing [Kill All]", "SmoothSlicingKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SmoothSlicingKillAll.lua")
                    
                    
addscriptexist(9344944754, "HunterxAthenaAutoPushups", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HunterxAthenaAutoPushups.lua")
    
addscript(504090542,"Battleship Battle [Kill All]", "BattleshipBattleKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BattleshipBattleKillAll.lua")
                    
    
addscript(6155643742,"Fall Block [Click To Activate Tiles Tool]", "FallBlockClickToActivateTilesTool", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FallBlockClickToActivateTilesTool.lua")
                    
                    
addscriptexist(6155643742, "FallBlockRuinGame", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FallBlockRuinGame.lua")
                    
addscriptexist(8554378337, "SwordSimulatorAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwordSimulatorAutoFarm.lua")
                    
addscriptexist(4459593483, "FORCEPREALPHAGUITeleports", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FORCEPREALPHAGUITeleports.lua")
                    
addscriptexist(286090429, "ArsenalGUIXrayAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalGUIXrayAutoFarmMore.lua")
                    
addscriptexist(2039118386, "NeighborhoodwarSilentAIM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NeighborhoodwarSilentAIM.lua")
                    
addscriptexist(2546155523, "RoVilleAutoRestockBusiness", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoVilleAutoRestockBusiness.lua")
    
addscript(5944009947,"FORCE [TESTING-ZONE] [Trinket Auto Farm & More!]", "FORCETESTINGZONETrinketAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FORCETESTINGZONETrinketAutoFarmMore.lua")
                    
    
addscript(9845369668,"Goofy Ahh Spider-Man [GUI - Give All Skins]", "GoofyAhhSpiderManGUIGiveAllSkins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GoofyAhhSpiderManGUIGiveAllSkins.lua")
                    
                    
addscriptexist(8123652942, "LegendPieceFruitChanger", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendPieceFruitChanger.lua")
                    
addscriptexist(6269446951, "SmoothSlicingKillAura", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SmoothSlicingKillAura.lua")
                    
addscriptexist(6766156863, "StrongmanWimbledonEventAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrongmanWimbledonEventAutoFarm.lua")
    
addscript(5136715979,"Cave Simulator [Inf ores]", "CaveSimulatorInfores", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CaveSimulatorInfores.lua")
                    
                    
addscriptexist(4459593483, "FORCEPREALPHAGodModeAntiBad", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FORCEPREALPHAGodModeAntiBad.lua")
                    
addscriptexist(2809202155, "YourBizarreAdventureAntiTeleportBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YourBizarreAdventureAntiTeleportBypass.lua")
    
addscript(5617626326,"Blood Samurai 2 [Auto Farm Cash]", "BloodSamurai2AutoFarmCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloodSamurai2AutoFarmCash.lua")
                    
    
addscript(8592703594,"Undertale Unexplained Anomalies [Stardust Auto Farm]", "UndertaleUnexplainedAnomaliesStardustAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UndertaleUnexplainedAnomaliesStardustAutoFarm.lua")
                    
                    
addscriptexist(8123652942, "LegendPieceGodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendPieceGodMode.lua")
                    
addscriptexist(8123652942, "LegendPieceInfiniteDamageToEnemies", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendPieceInfiniteDamageToEnemies.lua")
                    
addscriptexist(9726345231, "DuolingoGameHubAutoMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DuolingoGameHubAutoMoney.lua")
    
addscript(9017974931,"Valoblox [Auto Open Cases]", "ValobloxAutoOpenCases", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ValobloxAutoOpenCases.lua")
                    
                    
addscriptexist(8596411742, "BarbBloxLaneKillAllMoneyFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BarbBloxLaneKillAllMoneyFarm.lua")
    
addscript(7261261021,"Raging Seas [Inf Stamina, Fruit Spawner, Auto Stats]", "RagingSeasInfStaminaFruitSpawnerAutoStats", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RagingSeasInfStaminaFruitSpawnerAutoStats.lua")
                    
    
addscript(6644653750,"Paper.IO [Semi Auto Win]", "PaperIOSemiAutoWin", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PaperIOSemiAutoWin.lua")
                    
                    
addscriptexist(9017974931, "ValobloxATOMICVALOBLOXGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ValobloxATOMICVALOBLOXGUI.lua")
    
addscript(4996049426,"All Star Tower Defense [Star Pass Farm V3]", "AllStarTowerDefenseStarPassFarmV3", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AllStarTowerDefenseStarPassFarmV3.lua")
                    
                    
addscriptexist(654732683, "CarCrusher2GUIAIAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarCrusher2GUIAIAutoFarm.lua")
                    
addscriptexist(9611595239, "RiftRoyaleESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RiftRoyaleESP.lua")
                    
addscriptexist(1730877806, "GrandPieceOnlineAutoOsu", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GrandPieceOnlineAutoOsu.lua")
    
addscript(5970745461,"Minerblocks [Kill Aura]", "MinerblocksKillAura", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MinerblocksKillAura.lua")
                    
    
addscript(8656044807,"Swinging Simulator [Unlock Every Badge]", "SwingingSimulatorUnlockEveryBadge", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwingingSimulatorUnlockEveryBadge.lua")
                    
                    
addscriptexist(8123652942, "LegendPieceKillAura", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendPieceKillAura.lua")
    
addscript(9534337535,"Shrek in the Backrooms [GUI - ESP, Loot Stuff]", "ShrekintheBackroomsGUIESPLootStuff", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShrekintheBackroomsGUIESPLootStuff.lua")
                    
    
addscript(301549746,"Counter Blox [Best Custom Skins Changer & More!]", "CounterBloxBestCustomSkinsChangerMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CounterBloxBestCustomSkinsChangerMore.lua")
                    
                    
addscriptexist(8619263259, "CriticalLegendsAutoOrbsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriticalLegendsAutoOrbsMore.lua")
    
addscript(9492038800,"STUMBLOX STRANGER THINGS [Auto Farm]", "STUMBLOXSTRANGERTHINGSAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/STUMBLOXSTRANGERTHINGSAutoFarm.lua")
                    
    
addscript(7089072882,"HE-MAN SIM [Instant Max Out Character]", "HEMANSIMInstantMaxOutCharacter", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HEMANSIMInstantMaxOutCharacter.lua")
                    
                    
addscriptexist(7336302630, "ProjectDeltaAntiDrownAndSeeUnderwater", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectDeltaAntiDrownAndSeeUnderwater.lua")
                    
addscriptexist(9017974931, "ValobloxKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ValobloxKillAll.lua")
    
addscript(5991163185,"Spray Paint [Falseban Players Method]", "SprayPaintFalsebanPlayersMethod", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SprayPaintFalsebanPlayersMethod.lua")
                    
                    
addscriptexist(2753915549, "BloxFruitsNewAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsNewAutoFarm.lua")
    
addscript(9292879820,"Grass Cutting Simulator [Free Stats and Currency]", "GrassCuttingSimulatorFreeStatsandCurrency", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GrassCuttingSimulatorFreeStatsandCurrency.lua")
                    
    
addscript(7211666966,"Tower Of Jump [Auto Farm - Server Hop]", "TowerOfJumpAutoFarmServerHop", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerOfJumpAutoFarmServerHop.lua")
                    
                    
addscriptexist(4459593483, "FORCEAutoCollectTrinkets", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FORCEAutoCollectTrinkets.lua")
                    
addscriptexist(4459593483, "FORCENoFall", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FORCENoFall.lua")
                    
addscriptexist(7211666966, "TowerOfJumpAutoFarmNonServerHop", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerOfJumpAutoFarmNonServerHop.lua")
                    
addscriptexist(621129760, "KATGUIAutoFarmBtoolsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KATGUIAutoFarmBtoolsMore.lua")
                    
addscriptexist(9568982793, "DaHoodBattlegroundsSilentAimbot", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodBattlegroundsSilentAimbot.lua")
                    
addscriptexist(4459593483, "FORCETeleportToTrinkets", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FORCETeleportToTrinkets.lua")
                    
addscriptexist(4459593483, "FORCESellTrinkets", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FORCESellTrinkets.lua")
                    
addscriptexist(9772878203, "RaiseAFloppa2GUIAutoClickFloppaAutoCollectMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaiseAFloppa2GUIAutoClickFloppaAutoCollectMore.lua")
                    
addscriptexist(9568982793, "DaHoodBattlegroundsInstantKill", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodBattlegroundsInstantKill.lua")
                    
addscriptexist(606849621, "JailbreakKeycardUnlockDoors", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakKeycardUnlockDoors.lua")
                    
addscriptexist(8123652942, "LegendPieceMaxStats", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendPieceMaxStats.lua")
    
addscript(4580204640,"Crimson Craftwars [Insta Kill All, God Mode & More!]", "CrimsonCraftwarsInstaKillAllGodModeMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CrimsonCraftwarsInstaKillAllGodModeMore.lua")
                    
                    
addscriptexist(180037022, "SonicUltimateRPGCollectAllChaosEmeraldsAllRings", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicUltimateRPGCollectAllChaosEmeraldsAllRings.lua")
                    
addscriptexist(286090429, "ArsenalAFKArsenalAIBot", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalAFKArsenalAIBot.lua")
    
addscript(9559194006,"social experiment [Infinite Stamina & More!]", "socialexperimentInfiniteStaminaMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/socialexperimentInfiniteStaminaMore.lua")
                    
    
addscript(6441847031,"CHAOS [Kill Player]", "CHAOSKillPlayer", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CHAOSKillPlayer.lua")
                    
    
addscript(455366377,"The Streets [Large Decals]", "TheStreetsLargeDecals", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheStreetsLargeDecals.lua")
                    
                    
addscriptexist(2753915549, "BloxFruitsAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsAutoFarm.lua")
                    
addscriptexist(35397735, "ScubaDivingatQuillLakeInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ScubaDivingatQuillLakeInfMoney.lua")
    
addscript(3044285976,"BloxRP [Fist, Melee Kill Aura]", "BloxRPFistMeleeKillAura", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxRPFistMeleeKillAura.lua")
                    
                    
addscriptexist(7261261021, "RagingSeasInfiniteStamina", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RagingSeasInfiniteStamina.lua")
                    
addscriptexist(9551640993, "MiningSimulator2FakeHatcherGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2FakeHatcherGUI.lua")
                    
addscriptexist(6644653750, "PaperIOAutoWIn", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PaperIOAutoWIn.lua")
                    
addscriptexist(35397735, "ScubaDivingatQuillLakeGiveallgamepass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ScubaDivingatQuillLakeGiveallgamepass.lua")
                    
addscriptexist(9017974931, "ValobloxAutoOpenCrates", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ValobloxAutoOpenCrates.lua")
                    
addscriptexist(142823291, "MurderMystery2Visualskins", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2Visualskins.lua")
    
addscript(7261493042,"Impossible Glass Bridge Obby [Path revealing]", "ImpossibleGlassBridgeObbyPathrevealing", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ImpossibleGlassBridgeObbyPathrevealing.lua")
                    
                    
addscriptexist(9103898828, "RogueDemonPunchDistance", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RogueDemonPunchDistance.lua")
                    
addscriptexist(9559194006, "socialexperimentAutobloodrainChatpredictor", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/socialexperimentAutobloodrainChatpredictor.lua")
                    
addscriptexist(443406476, "ProjectLazarusInfAmmoInstaKillEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectLazarusInfAmmoInstaKillEsp.lua")
                    
addscriptexist(142823291, "MurderMystery2GUIESPFakeKnifeMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2GUIESPFakeKnifeMore.lua")
                    
addscriptexist(1224212277, "MadCityGUIAutoRobTeleportsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityGUIAutoRobTeleportsMore.lua")
    
addscript(9751569460,"ARCH PIECE [Auto Farm]", "ARCHPIECEAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ARCHPIECEAutoFarm.lua")
                    
                    
addscriptexist(9559194006, "socialexperimentGuessthenextgame", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/socialexperimentGuessthenextgame.lua")
    
addscript(9786213478,"Treat Simulator [Auto Sell]", "TreatSimulatorAutoSell", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TreatSimulatorAutoSell.lua")
                    
                    
addscriptexist(3234050617, "Left2DieOverhaulinfiniteammoNorecollNoSpreed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Left2DieOverhaulinfiniteammoNorecollNoSpreed.lua")
                    
addscriptexist(8540346411, "RebirthChampionsXAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RebirthChampionsXAutoFarmGUI.lua")
    
addscript(9609300403,"Jackpot [Auto Martingale]", "JackpotAutoMartingale", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JackpotAutoMartingale.lua")
                    
                    
addscriptexist(9017974931, "ValobloxAutoInstantlyDefuseBomb", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ValobloxAutoInstantlyDefuseBomb.lua")
    
addscript(9571406871,"Roblox - UI Jan Lib", "RobloxUIJanLib", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxUIJanLib.lua")
                    
    
addscript(8185222973,"Stanton County, Westlake [Spawn Any Item]", "StantonCountyWestlakeSpawnAnyItem", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StantonCountyWestlakeSpawnAnyItem.lua")
                    
                    
addscriptexist(6441847031, "CHAOSKillPLayer", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CHAOSKillPLayer.lua")
                    
addscriptexist(6284583030, "PetSimulatorXCrashServer", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXCrashServer.lua")
    
addscript(7839440834,"Sea Cleaning Simulator [Modify Boat Speed & More!]", "SeaCleaningSimulatorModifyBoatSpeedMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SeaCleaningSimulatorModifyBoatSpeedMore.lua")
                    
                    
addscriptexist(9609300403, "JackpotAutoCaseSell", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JackpotAutoCaseSell.lua")
                    
addscriptexist(6755746130, "FruitJuiceTycoonRefreshedAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FruitJuiceTycoonRefreshedAutoFarm.lua")
    
addscript(4195834406,"Dragon Ball Online Generations [Auto Teleport, Kill PLayer Aura, Esp]", "DragonBallOnlineGenerationsAutoTeleportKillPLayerAuraEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBallOnlineGenerationsAutoTeleportKillPLayerAuraEsp.lua")
                    
                    
addscriptexist(606849621, "JailbreakKeycardUnlockdoors", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakKeycardUnlockdoors.lua")
                    
addscriptexist(9786213478, "TreatSimulatorIsntantbite", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TreatSimulatorIsntantbite.lua")
                    
addscriptexist(9017974931, "ValobloxSilentAimKillAllInfiniteAmmo", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ValobloxSilentAimKillAllInfiniteAmmo.lua")
    
addscript(5646604884,"Crimson Craftwars [Insta Kill All, God Mode, Fastest Auto-Mine]", "CrimsonCraftwarsInstaKillAllGodModeFastestAutoMine", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CrimsonCraftwarsInstaKillAllGodModeFastestAutoMine.lua")
                    
                    
addscriptexist(9551640993, "MiningSimulator2NameEggNamePetAutoDeleteseffect", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2NameEggNamePetAutoDeleteseffect.lua")
    
addscript(6263325292,"Bloxburg [Remote Bypass]", "BloxburgRemoteBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxburgRemoteBypass.lua")
                    
    
addscript(4540286603,"NORTHWIND [Lag Bomb]", "NORTHWINDLagBomb", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NORTHWINDLagBomb.lua")
                    
    
addscript(2602644507,"Clone Wars Enrage [Kill All]", "CloneWarsEnrageKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CloneWarsEnrageKillAll.lua")
                    
                    
addscriptexist(9726345231, "DuolingoGameHubAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DuolingoGameHubAutoFarm.lua")
                    
addscriptexist(9726345231, "DuolingoGameHubInfiniteCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DuolingoGameHubInfiniteCoins.lua")
    
addscript(4733278992,"Sword Blox Online Reibirth [GUI Auto Craft, Auto Stats & More!]", "SwordBloxOnlineReibirthGUIAutoCraftAutoStatsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwordBloxOnlineReibirthGUIAutoCraftAutoStatsMore.lua")
                    
                    
addscriptexist(654732683, "CarCrushers2AutoFarmSpeedBoostGodmode", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarCrushers2AutoFarmSpeedBoostGodmode.lua")
                    
addscriptexist(8540168650, "StandUprightRebootedGUIItemsFarmQuestFarmsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StandUprightRebootedGUIItemsFarmQuestFarmsMore.lua")
                    
addscriptexist(9726345231, "DuolingoGameHubDevBadgeRobloxEvent", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DuolingoGameHubDevBadgeRobloxEvent.lua")
                    
addscriptexist(2788229376, "DaHoodGUIAimlockKillBotMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodGUIAimlockKillBotMore.lua")
                    
addscriptexist(893973440, "FleetheFacilityGUIEspTeleports", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FleetheFacilityGUIEspTeleports.lua")
    
addscript(8743251051,"Avalanche [God Mode]", "AvalancheGodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AvalancheGodMode.lua")
                    
    
addscript(5620664339,"RoStreets [Auto Collect]", "RoStreetsAutoCollect", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoStreetsAutoCollect.lua")
                    
                    
addscriptexist(292439477, "PhantomForcesHinglightEspChams", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesHinglightEspChams.lua")
                    
addscriptexist(2809202155, "YourBizarreAdventureAutoFarmItemsAutoQuestAndMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YourBizarreAdventureAutoFarmItemsAutoQuestAndMore.lua")
    
addscript(4991214437,"town [Kill All - ESP - Chams & More!]", "townKillAllESPChamsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/townKillAllESPChamsMore.lua")
                    
                    
addscriptexist(1962086868, "TowerofHellTPToEndMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofHellTPToEndMore.lua")
    
addscript(9566535167,"Diamond Reborn [Infinite Pokebooster Time]", "DiamondRebornInfinitePokeboosterTime", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DiamondRebornInfinitePokeboosterTime.lua")
                    
    
addscript(9808430159,"Scan_Test.DEMO [Reveal All Parts]", "ScanTestDEMORevealAllParts", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ScanTestDEMORevealAllParts.lua")
                    
    
addscript(4618049391,"Tang County, Hebei [Auto Farm]", "TangCountyHebeiAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TangCountyHebeiAutoFarm.lua")
                    
    
addscript(9297410766,"Crossbar Challenge Simulator [Fast Auto Shoot]", "CrossbarChallengeSimulatorFastAutoShoot", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CrossbarChallengeSimulatorFastAutoShoot.lua")
                    
                    
addscriptexist(7336302630, "ProjectDetlaSilentAimInstantBulletsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectDetlaSilentAimInstantBulletsMore.lua")
                    
addscriptexist(2685347741, "GhostSimulatorAutoPickupDrops", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GhostSimulatorAutoPickupDrops.lua")
    
addscript(6728870912,"World of Stands Demo [AutoFarm, Webhook, Item Farm]", "WorldofStandsDemoAutoFarmWebhookItemFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorldofStandsDemoAutoFarmWebhookItemFarm.lua")
                    
    
addscript(9966192771,"Adventure Simulator [Reveal whats behind rocks during mining]", "AdventureSimulatorRevealwhatsbehindrocksduringmining", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdventureSimulatorRevealwhatsbehindrocksduringmining.lua")
                    
                    
addscriptexist(8884433153, "CollectAllPetsGUIAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CollectAllPetsGUIAutoFarm.lua")
                    
addscriptexist(1554960397, "CarDealershipTycoonAutoFarmInfinitySpeedWalkonwater", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarDealershipTycoonAutoFarmInfinitySpeedWalkonwater.lua")
                    
addscriptexist(7056922815, "Rapeer2AutoFarmAutoQuestAutoEquip", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rapeer2AutoFarmAutoQuestAutoEquip.lua")
                    
addscriptexist(1962086868, "TowerOfHellAutoWinGodModeSpeedHack", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerOfHellAutoWinGodModeSpeedHack.lua")
                    
addscriptexist(142823291, "MurderMystery2", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2.lua")
                    
addscriptexist(443406476, "ProjectLazarusZOMBIESSilentAimGunMods", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectLazarusZOMBIESSilentAimGunMods.lua")
                    
addscriptexist(301549746, "CounterBloxGodModeCrashServer", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CounterBloxGodModeCrashServer.lua")
    
addscript(8448735476,"Anime Rifts [GUI - Auto Farm, Insta Kill]", "AnimeRiftsGUIAutoFarmInstaKill", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeRiftsGUIAutoFarmInstaKill.lua")
                    
    
addscript(5951002734,"Project Baki 2 [GUI - Auto Farm, Auto Punch & More!]", "ProjectBaki2GUIAutoFarmAutoPunchMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectBaki2GUIAutoFarmAutoPunchMore.lua")
                    
                    
addscriptexist(8798268679, "CrossroadCombatGodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CrossroadCombatGodMode.lua")
    
addscript(6924952561,"Clover City [Fly]", "CloverCityFly", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CloverCityFly.lua")
                    
                    
addscriptexist(7839440834, "SeaCleaningSimulatorModifyBoatSpeedNoslowdowneffectAutoSellTrash", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SeaCleaningSimulatorModifyBoatSpeedNoslowdowneffectAutoSellTrash.lua")
                    
addscriptexist(4540286603, "NORTHWINDCrashServer", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NORTHWINDCrashServer.lua")
                    
addscriptexist(2788229376, "DaHoodinvisJumpscareScaryMusic", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodinvisJumpscareScaryMusic.lua")
                    
addscriptexist(6915291292, "BakerySimulatorBuyOvens", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BakerySimulatorBuyOvens.lua")
                    
addscriptexist(4855457388, "DemonfallGUIAutoFarmAutoCollect", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DemonfallGUIAutoFarmAutoCollect.lua")
    
addscript(6808416928,"Aimblox BETA [Kill All]", "AimbloxBETAKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AimbloxBETAKillAll.lua")
                    
                    
addscriptexist(9726345231, "DuolingoGameHubFreeItems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DuolingoGameHubFreeItems.lua")
                    
addscriptexist(9772878203, "raiseafloppa2AutoCollectMoneyAutoCollectRentAutoRaiseRent", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/raiseafloppa2AutoCollectMoneyAutoCollectRentAutoRaiseRent.lua")
                    
addscriptexist(4598019433, "GenericRoleplayGaemAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GenericRoleplayGaemAutoFarm.lua")
                    
addscriptexist(301549746, "CounterbloxCrashServerGodmode", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CounterbloxCrashServerGodmode.lua")
                    
addscriptexist(292439477, "PhantomForcesHighlightESPChams", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesHighlightESPChams.lua")
                    
addscriptexist(4733278992, "SwordBloxOnlineRebirthKillAuraInfiniteStaminaCollectMaterials", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwordBloxOnlineRebirthKillAuraInfiniteStaminaCollectMaterials.lua")
                    
addscriptexist(606849621, "JailbreakFullAutoGetWeaponsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakFullAutoGetWeaponsMore.lua")
    
addscript(28382335,"Zombie Tycoon [Silent Aim - GUI]", "ZombieTycoonSilentAimGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieTycoonSilentAimGUI.lua")
                    
                    
addscriptexist(9751569460, "ARCHPIECEAutoFarmAutoPunchAutoBoss", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ARCHPIECEAutoFarmAutoPunchAutoBoss.lua")
                    
addscriptexist(9726345231, "DuolingoGameHubCollectAllCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DuolingoGameHubCollectAllCoins.lua")
    
addscript(9565394231,"click the sphere [Auto Click]", "clickthesphereAutoClick", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/clickthesphereAutoClick.lua")
                    
    
addscript(1345139196,"Treasure Hunt Simulator [Auto Farm]", "TreasureHuntSimulatorAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TreasureHuntSimulatorAutoFarm.lua")
                    
    
addscript(9306912037,"Hole In One Simulator [Auto Swing]", "HoleInOneSimulatorAutoSwing", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HoleInOneSimulatorAutoSwing.lua")
                    
                    
addscriptexist(198116126, "TradelandsAutoFarmTeleportWalkOnWaterMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TradelandsAutoFarmTeleportWalkOnWaterMore.lua")
                    
addscriptexist(5315066937, "SuperBSurfRevisedChangeYourSurfingBhopSpeed", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperBSurfRevisedChangeYourSurfingBhopSpeed.lua")
                    
addscriptexist(443406476, "ProjectLazarusESPOneShotKillChams", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectLazarusESPOneShotKillChams.lua")
                    
addscriptexist(7947609996, "RobloxFakeBlueScreen", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxFakeBlueScreen.lua")
                    
addscriptexist(9203864304, "raiseafloppa2AutoCookInfMaxRent", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/raiseafloppa2AutoCookInfMaxRent.lua")
    
addscript(2166944189,"Firefighters [Infinite Levels]", "FirefightersInfiniteLevels", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FirefightersInfiniteLevels.lua")
                    
                    
addscriptexist(8798268679, "CrossroadCombatInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CrossroadCombatInfiniteMoney.lua")
                    
addscriptexist(8750997647, "TappingLegendsAutoFarmAutoEgg", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegendsAutoFarmAutoEgg.lua")
    
addscript(6590798593,"Waterloo at home [Kill All]", "WaterlooathomeKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WaterlooathomeKillAll.lua")
                    
    
addscript(8605603204,"Mecha Simulator [Infinite Levels, Coins & Gems]", "MechaSimulatorInfiniteLevelsCoinsGems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MechaSimulatorInfiniteLevelsCoinsGems.lua")
                    
    
addscript(9555732501,"Nen Fighting Simulator [Auto Strength - Auto Durability]", "NenFightingSimulatorAutoStrengthAutoDurability", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NenFightingSimulatorAutoStrengthAutoDurability.lua")
                    
    
addscript(7733392089,"LuoBu Transformation Night [Auto Dance]", "LuoBuTransformationNightAutoDance", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LuoBuTransformationNightAutoDance.lua")
                    
                    
addscriptexist(4733278992, "SwordBloxOnlineRebirthKillAuraAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwordBloxOnlineRebirthKillAuraAutoFarm.lua")
    
addscript(1458767429,"Anime Battle Arena [Kira Show Where Bomb Is]", "AnimeBattleArenaKiraShowWhereBombIs", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeBattleArenaKiraShowWhereBombIs.lua")
                    
    
addscript(8992150289,"Anime Sword Simulator [Auto Rank - Auto Sword & More!]", "AnimeSwordSimulatorAutoRankAutoSwordMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeSwordSimulatorAutoRankAutoSwordMore.lua")
                    
                    
addscriptexist(3233893879, "BadBusiness307SilentAimOpenSource", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BadBusiness307SilentAimOpenSource.lua")
                    
addscriptexist(9551640993, "MiningSimulator2AutoForge", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2AutoForge.lua")
    
addscript(3271747724,"MEGA Boss Survival [Wins Auto Farm]", "MEGABossSurvivalWinsAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MEGABossSurvivalWinsAutoFarm.lua")
                    
                    
addscriptexist(413424176, "CloneTycoon2InfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CloneTycoon2InfMoney.lua")
                    
addscriptexist(9555732501, "NenFightingSimulatorStrengthFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NenFightingSimulatorStrengthFarm.lua")
    
addscript(6172932937,"Energy Assault [Aim Bot]", "EnergyAssaultAimBot", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EnergyAssaultAimBot.lua")
                    
    
addscript(4954096313,"Field Trip Z [God Mode, Remove GodMode Get Donut]", "FieldTripZGodModeRemoveGodModeGetDonut", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FieldTripZGodModeRemoveGodModeGetDonut.lua")
                    
    
addscript(6788434697,"AniPhobia [Infinite Ammo, Fullbright, Kill All]", "AniPhobiaInfiniteAmmoFullbrightKillAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AniPhobiaInfiniteAmmoFullbrightKillAll.lua")
                    
                    
addscriptexist(4954096313, "FieldTripZDonutBandageGodMode", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FieldTripZDonutBandageGodMode.lua")
                    
addscriptexist(155382109, "SurviveandKilltheKillersinArea51GiveAllGunsWalkSpeedAntiAfk", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurviveandKilltheKillersinArea51GiveAllGunsWalkSpeedAntiAfk.lua")
                    
addscriptexist(6242296404, "HappyLandInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HappyLandInfMoney.lua")
                    
addscriptexist(5766084948, "SCPTheRedLakeHitboxExpand", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SCPTheRedLakeHitboxExpand.lua")
    
addscript(6494523288,"Blade Quest [Auto Farm Kill Aura, Auto Upgrade Sword]", "BladeQuestAutoFarmKillAuraAutoUpgradeSword", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BladeQuestAutoFarmKillAuraAutoUpgradeSword.lua")
                    
                    
addscriptexist(2551991523, "BrokenBonesIVAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrokenBonesIVAutoFarm.lua")
                    
addscriptexist(4580204640, "SurvivetheKillerLootAutoFarmTPtoDoorAutoEscape", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurvivetheKillerLootAutoFarmTPtoDoorAutoEscape.lua")
    
addscript(5963376918,"Anime Tycoon [Teleports, Collect Cash, Give all Weapons]", "AnimeTycoonTeleportsCollectCashGiveallWeapons", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeTycoonTeleportsCollectCashGiveallWeapons.lua")
                    
                    
addscriptexist(9551640993, "MiningSimulatorChangeAutoSelltoSliderAutoMiningAutoRebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulatorChangeAutoSelltoSliderAutoMiningAutoRebirth.lua")
    
addscript(3652625463,"Lifting Simulator [Auto Muscle, WalkSpeed, TP Safe Zone]", "LiftingSimulatorAutoMuscleWalkSpeedTPSafeZone", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LiftingSimulatorAutoMuscleWalkSpeedTPSafeZone.lua")
                    
    
addscript(5827078246,"Coins Hero Simulator [Auto Coin, Auto Sell, AutoEgg]", "CoinsHeroSimulatorAutoCoinAutoSellAutoEgg", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CoinsHeroSimulatorAutoCoinAutoSellAutoEgg.lua")
                    
    
addscript(574407221,"Super Hero Tycoon [Crate Farm, Auto Cash, Auto Click]", "SuperHeroTycoonCrateFarmAutoCashAutoClick", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperHeroTycoonCrateFarmAutoCashAutoClick.lua")
                    
                    
addscriptexist(4522347649, "FreeAdminUnlockGamepass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FreeAdminUnlockGamepass.lua")
                    
addscriptexist(8069117419, "DemonSoulSimulatorAutoFarmTeleportsAutoChest", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DemonSoulSimulatorAutoFarmTeleportsAutoChest.lua")
                    
addscriptexist(9551640993, "MiningSimulator2AutoFarmGems", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2AutoFarmGems.lua")
                    
addscriptexist(3851622790, "BreakinGamePassRoles", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BreakinGamePassRoles.lua")
                    
addscriptexist(8146731988, "UltraPowerTycoonGiveAllWeapons", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UltraPowerTycoonGiveAllWeapons.lua")
                    
addscriptexist(1962086868, "TowerofHellAutotptotopWalkspeedInfjump", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofHellAutotptotopWalkspeedInfjump.lua")
                    
addscriptexist(2809202155, "YourBizarreAdventureAutoFarmItems", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YourBizarreAdventureAutoFarmItems.lua")
                    
addscriptexist(6938803436, "AnimeDimensionsSimulatorAutoAttackSpeedAutoSkill", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeDimensionsSimulatorAutoAttackSpeedAutoSkill.lua")
                    
addscriptexist(6403373529, "SlapBattlesAutoSwingAutoSellAutoRebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlapBattlesAutoSwingAutoSellAutoRebirth.lua")
                    
addscriptexist(8750997647, "TappingLegendsXAutoTapAutoUpgradeAutoRebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegendsXAutoTapAutoUpgradeAutoRebirth.lua")
                    
addscriptexist(537413528, "BuildABoatForTreasureSafeMode", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureSafeMode.lua")
                    
addscriptexist(7560156054, "ClickerSimulatorOnClickToggleeggGamePass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerSimulatorOnClickToggleeggGamePass.lua")
                    
addscriptexist(3101667897, "LegendsOfSpeedAutoFarmOrbsAutoFarmHoopsAutoRebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendsOfSpeedAutoFarmOrbsAutoFarmHoopsAutoRebirth.lua")
                    
addscriptexist(8737602449, "PLSDONATETheinscriptiononthepoleshows", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PLSDONATETheinscriptiononthepoleshows.lua")
                    
addscriptexist(5490351219, "ClickerMadnessAutoTapDeclineTradesGetAllGamepasses", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerMadnessAutoTapDeclineTradesGetAllGamepasses.lua")
                    
addscriptexist(8603729161, "Walk50kstudsfornothingGetBadges", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Walk50kstudsfornothingGetBadges.lua")
                    
addscriptexist(6788434697, "AniPhobiaInfiniteAmmoMuchMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AniPhobiaInfiniteAmmoMuchMore.lua")
    
addscript(7842028704,"Anime Sword Simulator [Auto Sword, Start Auto Rebirths, Redeem all Codes]", "AnimeSwordSimulatorAutoSwordStartAutoRebirthsRedeemallCodes", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeSwordSimulatorAutoSwordStartAutoRebirthsRedeemallCodes.lua")
                    
                    
addscriptexist(3101667897, "LegendsOfSpeedStepsFarmGemsFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendsOfSpeedStepsFarmGemsFarm.lua")
    
addscript(8613864463,"Muscle Legends [Auto Lifting, Claim All chests, Teleport]", "MuscleLegendsAutoLiftingClaimAllchestsTeleport", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MuscleLegendsAutoLiftingClaimAllchestsTeleport.lua")
                    
    
addscript(969669348,"Black Magic II Phantoms Causatum [Kill All]", "BlackMagicIIPhantomsCausatumKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BlackMagicIIPhantomsCausatumKillAll.lua")
                    
                    
addscriptexist(5766084948, "SCPTheRedLakeInfiniteAmmo", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SCPTheRedLakeInfiniteAmmo.lua")
                    
addscriptexist(537413528, "BuildABoatForTreasureAutoFarmRedeemallcode", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureAutoFarmRedeemallcode.lua")
                    
addscriptexist(3956818381, "NinjaLegendsAutoSwingAutoSellTeleportToCoins", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsAutoSwingAutoSellTeleportToCoins.lua")
                    
addscriptexist(8992150289, "AnimeSwordSimulatorFullAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeSwordSimulatorFullAutoFarmGUI.lua")
    
addscript(6717367660,"Happy Land [Infinite Money]", "HappyLandInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HappyLandInfiniteMoney.lua")
                    
                    
addscriptexist(6728870912, "WorldofStandsDemoAutoFarmAutoSkillAutoQuest", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorldofStandsDemoAutoFarmAutoSkillAutoQuest.lua")
    
addscript(112420803,"Kohls Admin House [GUI - Commands]", "KohlsAdminHouseGUICommands", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KohlsAdminHouseGUICommands.lua")
                    
    
addscript(9249776514,"Givenchy Beauty House [Finish The Event Quest]", "GivenchyBeautyHouseFinishTheEventQuest", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GivenchyBeautyHouseFinishTheEventQuest.lua")
                    
    
addscript(1382113806,"Silent Assassin [Assassin ESP]", "SilentAssassinAssassinESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SilentAssassinAssassinESP.lua")
                    
    
addscript(9456941655,"PUBG [Kill All]", "PUBGKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PUBGKillAll.lua")
                    
    
addscript(9293082713,"Prank Weapon Battles [Kill All]", "PrankWeaponBattlesKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrankWeaponBattlesKillAll.lua")
                    
                    
addscriptexist(443406476, "ProjectLazarusZombiesKillAllInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectLazarusZombiesKillAllInfiniteMoney.lua")
                    
addscriptexist(7791873535, "REALISTICHOODInfinitiCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/REALISTICHOODInfinitiCash.lua")
                    
addscriptexist(8592863835, "MagnetSimulator2AutoMoneyAutoSellAutoRebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MagnetSimulator2AutoMoneyAutoSellAutoRebirth.lua")
                    
addscriptexist(8737602449, "PLSDONATEESP", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PLSDONATEESP.lua")
                    
addscriptexist(1224212277, "MadCityCrazyAutoRobServerCrasherTeleports", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityCrazyAutoRobServerCrasherTeleports.lua")
                    
addscriptexist(606849621, "JailbreakAutoFarmTeleportInfDonut", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakAutoFarmTeleportInfDonut.lua")
                    
addscriptexist(5490351219, "ClickerMadnessSickAutoClickAutoBossTeleport", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerMadnessSickAutoClickAutoBossTeleport.lua")
    
addscript(9760849472,"UFO Universe [Auto Farm Chests, Auto Open Egg, Teleport]", "UFOUniverseAutoFarmChestsAutoOpenEggTeleport", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UFOUniverseAutoFarmChestsAutoOpenEggTeleport.lua")
                    
                    
addscriptexist(9555732501, "NenFightingSimulatorDurabilityFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NenFightingSimulatorDurabilityFarm.lua")
                    
addscriptexist(6937208251, "StarWarsBattlegroundsGunModsPressV", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StarWarsBattlegroundsGunModsPressV.lua")
                    
addscriptexist(4540286603, "NORTHWINDBirdESP", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NORTHWINDBirdESP.lua")
                    
addscriptexist(1537690962, "BeeSwarmSimulatorAutoFarmAutoDigFarmFlames", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeeSwarmSimulatorAutoFarmAutoDigFarmFlames.lua")
                    
addscriptexist(2753915549, "BloxFruitsAutoFarmLevelFastAttackAutoNewWorld", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsAutoFarmLevelFastAttackAutoNewWorld.lua")
                    
addscriptexist(7791873535, "REALISTICHOODCreatesahugeblockinthemap", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/REALISTICHOODCreatesahugeblockinthemap.lua")
    
addscript(9547440060,"Space Noob Tycoon [Inf source of gold]", "SpaceNoobTycoonInfsourceofgold", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpaceNoobTycoonInfsourceofgold.lua")
                    
                    
addscriptexist(9249776514, "GivenchyBeautyHouseAuroGrab3UGC", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GivenchyBeautyHouseAuroGrab3UGC.lua")
                    
addscriptexist(112420803, "KohlsAdminHouseNBCAdminCMD", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KohlsAdminHouseNBCAdminCMD.lua")
                    
addscriptexist(8448735476, "AnimeRiftsAutoAttackAutoSkillsAutoMob", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeRiftsAutoAttackAutoSkillsAutoMob.lua")
                    
addscriptexist(4540286603, "NORTHWINDPlayerEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NORTHWINDPlayerEsp.lua")
    
addscript(8288794825,"Natural Disaster Survival [Remove Bad Kids]", "NaturalDisasterSurvivalRemoveBadKids", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NaturalDisasterSurvivalRemoveBadKids.lua")
                    
                    
addscriptexist(9598746251, "HomeRunSimulatorSemiInfMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HomeRunSimulatorSemiInfMoney.lua")
    
addscript(7799826347,"Sandbox Tycoon [SANDBOX SCHEMATICS OVERPOWERED GUI]", "SandboxTycoonSANDBOXSCHEMATICSOVERPOWEREDGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SandboxTycoonSANDBOXSCHEMATICSOVERPOWEREDGUI.lua")
                    
                    
addscriptexist(3271747724, "MEGABossSurvivalInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MEGABossSurvivalInfiniteMoney.lua")
                    
addscriptexist(9049840490, "SonicSpeedSimulatorInstantlyget75kChiliDogs", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulatorInstantlyget75kChiliDogs.lua")
                    
addscriptexist(292439477, "PhantomForcesOpenSourceESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesOpenSourceESP.lua")
    
addscript(6143963763,"Untitled Combat Arena [Auto Farm Money]", "UntitledCombatArenaAutoFarmMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UntitledCombatArenaAutoFarmMoney.lua")
                    
                    
addscriptexist(2768379856, "300827AdminSpoofer", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/300827AdminSpoofer.lua")
                    
addscriptexist(9049840490, "SonicSpeedSimulatorUnlockAllPrizes", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulatorUnlockAllPrizes.lua")
                    
addscriptexist(8508161757, "RaiseanAlbertInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaiseanAlbertInfiniteMoney.lua")
    
addscript(7368681149,"UnExceptional [Capture All Flags]", "UnExceptionalCaptureAllFlags", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UnExceptionalCaptureAllFlags.lua")
                    
                    
addscriptexist(9551640993, "MiningSimulator2HatchWebhookSender", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2HatchWebhookSender.lua")
    
addscript(2000062521,"State of Anarchy 0.15.83.0 [Kill All]", "StateofAnarchy015830KillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StateofAnarchy015830KillAll.lua")
                    
                    
addscriptexist(70005410, "BloxHuntPropChams", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxHuntPropChams.lua")
                    
addscriptexist(370731277, "MeepCitySnowballAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MeepCitySnowballAll.lua")
    
addscript(5233268561,"A Bizarre Journey [Auto Pickup All Items]", "ABizarreJourneyAutoPickupAllItems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ABizarreJourneyAutoPickupAllItems.lua")
                    
                    
addscriptexist(192800, "WorkataPizzaPlaceAutoFarmBecomeManagerTeleports", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorkataPizzaPlaceAutoFarmBecomeManagerTeleports.lua")
    
addscript(5272267802,"Be a Toy! [Auto Code Farm]", "BeaToyAutoCodeFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeaToyAutoCodeFarm.lua")
                    
                    
addscriptexist(6938803436, "AnimeDimensionsSimulatorAutoAttackAutoSkills", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeDimensionsSimulatorAutoAttackAutoSkills.lua")
                    
addscriptexist(9598746251, "HomeRunSimulatorAutoHomeRun", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HomeRunSimulatorAutoHomeRun.lua")
                    
addscriptexist(8508161757, "RaiseanAlbertInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaiseanAlbertInfMoney.lua")
                    
addscriptexist(6299805723, "AnimeFightersSimulatorUnlockGamepass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightersSimulatorUnlockGamepass.lua")
                    
addscriptexist(3101667897, "LegendsOfSpeedAutoFarmAutoRebirthAutoStep", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendsOfSpeedAutoFarmAutoRebirthAutoStep.lua")
                    
addscriptexist(9551640993, "MiningSimulator2ChestsServerhop", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2ChestsServerhop.lua")
                    
addscriptexist(7799826347, "SandboxTycoonSaveBaseBuildFloorUpdateBuildCost", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SandboxTycoonSaveBaseBuildFloorUpdateBuildCost.lua")
                    
addscriptexist(2788229376, "DaHoodAutoMoneyDropCollect", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodAutoMoneyDropCollect.lua")
    
addscript(4360666523,"Checkpoint Racing Unleashed [Coin ESP]", "CheckpointRacingUnleashedCoinESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CheckpointRacingUnleashedCoinESP.lua")
                    
                    
addscriptexist(2185497593, "ArcadeIslandXChipCollector", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArcadeIslandXChipCollector.lua")
                    
addscriptexist(7791873535, "REALISTICHOODCashCollector", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/REALISTICHOODCashCollector.lua")
                    
addscriptexist(2809202155, "YourBizarreAdventureItemDupe", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YourBizarreAdventureItemDupe.lua")
    
addscript(4753520418,"The Hood [Auto Money Drop Collect]", "TheHoodAutoMoneyDropCollect", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheHoodAutoMoneyDropCollect.lua")
                    
    
addscript(8762785110,"Survival Games Ultimate [Inf Stamina]", "SurvivalGamesUltimateInfStamina", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurvivalGamesUltimateInfStamina.lua")
                    
                    
addscriptexist(3095204897, "IsleAutoHack", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/IsleAutoHack.lua")
                    
addscriptexist(9598746251, "HomeRunSimulatorInfMoneyInfGems", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HomeRunSimulatorInfMoneyInfGems.lua")
                    
addscriptexist(6808416928, "AimbloxBETASilentAIM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AimbloxBETASilentAIM.lua")
                    
addscriptexist(9737855826, "TradeSimulatorAutoBuyerItemSniper", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TradeSimulatorAutoBuyerItemSniper.lua")
    
addscript(5927697884,"Orange Colored Skies [Gun Mod]", "OrangeColoredSkiesGunMod", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OrangeColoredSkiesGunMod.lua")
                    
                    
addscriptexist(8992150289, "AnimeSwordSimulatorGetAllGamepasses", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeSwordSimulatorGetAllGamepasses.lua")
                    
addscriptexist(4459593483, "FORCEPREALPHAAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FORCEPREALPHAAutoFarm.lua")
                    
addscriptexist(7791873535, "REALISTICHOODInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/REALISTICHOODInfiniteMoney.lua")
                    
addscriptexist(292439477, "PhantomForcesUnlockAllGunsAdminGunsAttachments", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesUnlockAllGunsAdminGunsAttachments.lua")
                    
addscriptexist(9551640993, "MiningSimulator2AutoMineAutoRebirthMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2AutoMineAutoRebirthMore.lua")
    
addscript(1365404657,"Feather Family [Change your name into Anything]", "FeatherFamilyChangeyournameintoAnything", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FeatherFamilyChangeyournameintoAnything.lua")
                    
                    
addscriptexist(659222129, "Swordburst2AutoFarmKillAura", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Swordburst2AutoFarmKillAura.lua")
    
addscript(2202352383,"Super Power Training Simulator [Auto Farm]", "SuperPowerTrainingSimulatorAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperPowerTrainingSimulatorAutoFarm.lua")
                    
                    
addscriptexist(292439477, "PhantomForcesUnlockAllGunsAdminGuns", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesUnlockAllGunsAdminGuns.lua")
                    
addscriptexist(6728870912, "WorldofStandsInfGoldMasksGodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorldofStandsInfGoldMasksGodMode.lua")
    
addscript(1927139201,"Day of Dusk - The Border [Auto Mine Ores]", "DayofDuskTheBorderAutoMineOres", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DayofDuskTheBorderAutoMineOres.lua")
                    
                    
addscriptexist(4616652839, "ShindoLifeAutoFarmInfinityspinsWarfarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoLifeAutoFarmInfinityspinsWarfarm.lua")
                    
addscriptexist(4588604953, "CriminalityInstantTeleportBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriminalityInstantTeleportBypass.lua")
    
addscript(9402532903,"Diamond Hood, Ruby hood [Auto Shoot & More!]", "DiamondHoodRubyhoodAutoShootMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DiamondHoodRubyhoodAutoShootMore.lua")
                    
                    
addscriptexist(5620664339, "RoStreetsGUIInfCashTrollMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoStreetsGUIInfCashTrollMore.lua")
                    
addscriptexist(4540286603, "NORTHWINDAnimalEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NORTHWINDAnimalEsp.lua")
                    
addscriptexist(142823291, "MurderMystery2FreeKnifeVISUALLY", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2FreeKnifeVISUALLY.lua")
                    
addscriptexist(6728870912, "WorldofStandsDemoinfiniteGold", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorldofStandsDemoinfiniteGold.lua")
                    
addscriptexist(3095204897, "Isle8AutoHackAutoGuess", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Isle8AutoHackAutoGuess.lua")
    
addscript(9388793159,"Coruscant Roleplay [Silent AIM]", "CoruscantRoleplaySilentAIM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CoruscantRoleplaySilentAIM.lua")
                    
                    
addscriptexist(1365404657, "FeatherFamilyUnlockAllBirdVIBGamepass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FeatherFamilyUnlockAllBirdVIBGamepass.lua")
    
addscript(1758401491,"Public Bathroom Simulator [Spam Sounds - FE Trolling]", "PublicBathroomSimulatorSpamSoundsFETrolling", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PublicBathroomSimulatorSpamSoundsFETrolling.lua")
                    
                    
addscriptexist(340227283, "RoBowlingBallHBE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoBowlingBallHBE.lua")
    
addscript(9561878567,"Forest Of Beginnings RPG [Kill All]", "ForestOfBeginningsRPGKillAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ForestOfBeginningsRPGKillAll.lua")
                    
                    
addscriptexist(7799826347, "SandboxTycoonSandboxSchematics", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SandboxTycoonSandboxSchematics.lua")
                    
addscriptexist(9388793159, "CoruscantRoleplaySilentAimHitChanceHitPartFOVCircle", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CoruscantRoleplaySilentAimHitChanceHitPartFOVCircle.lua")
    
addscript(5965591336,"Soul War [Infinite Boost]", "SoulWarInfiniteBoost", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SoulWarInfiniteBoost.lua")
                    
                    
addscriptexist(263761432, "HorrificHousingSemiGodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HorrificHousingSemiGodMode.lua")
                    
addscriptexist(1927139201, "TheBorderGetAllScraps", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheBorderGetAllScraps.lua")
    
addscript(8730246074,"Galaxy Uranium ESP", "GalaxyUraniumESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GalaxyUraniumESP.lua")
                    
    
addscript(6953291455,"Eating Simulator [AutoEat, AutoFarm, AutoSell]", "EatingSimulatorAutoEatAutoFarmAutoSell", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EatingSimulatorAutoEatAutoFarmAutoSell.lua")
                    
                    
addscriptexist(8592863835, "MagnetSimulator2AutoCollectCoinsGetAllGamepasses", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MagnetSimulator2AutoCollectCoinsGetAllGamepasses.lua")
                    
addscriptexist(6804602922, "BoxingLegendsAimBotTriggerbotESP", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BoxingLegendsAimBotTriggerbotESP.lua")
    
addscript(5543622168,"Critical Tower Defense [Equip Hot Rash]", "CriticalTowerDefenseEquipHotRash", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriticalTowerDefenseEquipHotRash.lua")
                    
    
addscript(9461798258,"Raise a Granny [INF Money]", "RaiseaGrannyINFMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaiseaGrannyINFMoney.lua")
                    
                    
addscriptexist(9551640993, "MiningSimulator2AutoFarmESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2AutoFarmESP.lua")
                    
addscriptexist(340227283, "RoBowlingAimBot", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoBowlingAimBot.lua")
                    
addscriptexist(5326405001, "BaseBattlesDogtagsXPAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BaseBattlesDogtagsXPAutoFarm.lua")
    
addscript(5678279798,"Fight Club [Kill Aura GUI]", "FightClubKillAuraGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FightClubKillAuraGUI.lua")
                    
    
addscript(9438506890,"raise a sogga [Infinite Money]", "raiseasoggaInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/raiseasoggaInfiniteMoney.lua")
                    
    
addscript(5853243164,"Grand Piece Online [No Dodge Cooldown And No Stamina Drain]", "GrandPieceOnlineNoDodgeCooldownAndNoStaminaDrain", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GrandPieceOnlineNoDodgeCooldownAndNoStaminaDrain.lua")
                    
    
addscript(3403279477,"Creeper Aw man [God Mode - Crash Server - Invisible]", "CreeperAwmanGodModeCrashServerInvisible", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CreeperAwmanGodModeCrashServerInvisible.lua")
                    
                    
addscriptexist(6728870912, "WorldofStandsDemoInfiniteGold", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorldofStandsDemoInfiniteGold.lua")
                    
addscriptexist(659222129, "Swordburst2AutoFarmTpKillAura", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Swordburst2AutoFarmTpKillAura.lua")
                    
addscriptexist(5678279798, "FightClubKillAuraMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FightClubKillAuraMore.lua")
                    
addscriptexist(9551640993, "MiningSimulator2BlockAuraMultiModeMoreGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2BlockAuraMultiModeMoreGUI.lua")
                    
addscriptexist(8534845015, "SakuraStandAutoKillBoxAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SakuraStandAutoKillBoxAutoFarm.lua")
                    
addscriptexist(2317712696, "TheWildWestInfiniteStamina", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheWildWestInfiniteStamina.lua")
                    
addscriptexist(2546155523, "RoVilleAutoRestockBusinessOpenSource", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoVilleAutoRestockBusinessOpenSource.lua")
                    
addscriptexist(9461798258, "RaiseaGrannyInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaiseaGrannyInfiniteMoney.lua")
                    
addscriptexist(3956818381, "NinjaLegendsGUIAutoFarmAutoSellMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsGUIAutoFarmAutoSellMore.lua")
    
addscript(7791106063,"Furry Infection [Kill All, Kill Aura, AutoGerBat]", "FurryInfectionKillAllKillAuraAutoGerBat", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FurryInfectionKillAllKillAuraAutoGerBat.lua")
                    
    
addscript(7488014850,"RAINBOWN PIECE [Free Legendary fruits]", "RAINBOWNPIECEFreeLegendaryfruits", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RAINBOWNPIECEFreeLegendaryfruits.lua")
                    
                    
addscriptexist(7488014850, "RAINBOWNPIECESpamLegengfruits", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RAINBOWNPIECESpamLegengfruits.lua")
                    
addscriptexist(9551640993, "MiningSimulator2OreEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2OreEsp.lua")
                    
addscriptexist(9551640993, "MiningSimulator2AutoMineAutoRebirthingAutoSell", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2AutoMineAutoRebirthingAutoSell.lua")
    
addscript(6028157264,"My Hospital [INf Money]", "MyHospitalINfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyHospitalINfMoney.lua")
                    
    
addscript(8363125306,"Outdoor Brawling [Get Advance, No Stun, No Carry]", "OutdoorBrawlingGetAdvanceNoStunNoCarry", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OutdoorBrawlingGetAdvanceNoStunNoCarry.lua")
                    
                    
addscriptexist(9049840490, "SonicSpeedSimulatorAutoRunAutoRebirthAutoWinRace", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulatorAutoRunAutoRebirthAutoWinRace.lua")
    
addscript(2965881766,"Brawl-Blox [Inf gold, Inf gems, Inf exp]", "BrawlBloxInfgoldInfgemsInfexp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrawlBloxInfgoldInfgemsInfexp.lua")
                    
    
addscript(6339160453,"Anime Ninja War Tycoon [Infinite Diamonds]", "AnimeNinjaWarTycoonInfiniteDiamonds", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeNinjaWarTycoonInfiniteDiamonds.lua")
                    
                    
addscriptexist(9359839118, "GasStationSimulatorKillAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GasStationSimulatorKillAll.lua")
                    
addscriptexist(9551640993, "MiningSimulator2The1FreeAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2The1FreeAutoFarmGUI.lua")
    
addscript(4058282580,"Boxing Simulator [GUI - Auto Farm, Teleports & More!]", "BoxingSimulatorGUIAutoFarmTeleportsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BoxingSimulatorGUIAutoFarmTeleportsMore.lua")
                    
                    
addscriptexist(9281034297, "GoalKickSimulatorAutokickKickingAimBotAutoUpgrade", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GoalKickSimulatorAutokickKickingAimBotAutoUpgrade.lua")
                    
addscriptexist(9551640993, "MiningSimulator2AutoMineMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2AutoMineMore.lua")
                    
addscriptexist(9551640993, "MiningSimulator2ChestESPOpenSource", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2ChestESPOpenSource.lua")
                    
addscriptexist(8540346411, "RebirthChampionsXAutoFarmAutoBuyEggs", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RebirthChampionsXAutoFarmAutoBuyEggs.lua")
    
addscript(70501379,"Trade Hangout [AFK Auto Walk]", "TradeHangoutAFKAutoWalk", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TradeHangoutAFKAutoWalk.lua")
                    
                    
addscriptexist(142823291, "MurderMystery2ChamsReachSilentAimMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2ChamsReachSilentAimMore.lua")
                    
addscriptexist(4042427666, "AnimeFightingSimulatorFullSpinFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightingSimulatorFullSpinFarm.lua")
    
addscript(9285737032,"HELL RUN [Auto Win]", "HELLRUNAutoWin", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HELLRUNAutoWin.lua")
                    
                    
addscriptexist(9129288160, "TommyPlayAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TommyPlayAutoFarm.lua")
                    
addscriptexist(8750997647, "TappinglegendsXAUTOFARMAUTOBUYEGGSMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappinglegendsXAUTOFARMAUTOBUYEGGSMORE.lua")
    
addscript(2423436897,"Witching Hour [Even Better Nail Farm]", "WitchingHourEvenBetterNailFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WitchingHourEvenBetterNailFarm.lua")
                    
                    
addscriptexist(2788229376, "DaHoodCashCatFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodCashCatFarm.lua")
    
addscript(8549934015,"REx Reincarnated [Auto Farm]", "RExReincarnatedAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RExReincarnatedAutoFarm.lua")
                    
                    
addscriptexist(3956818381, "NinjaLegendsAutoFarmAutoBuyAllGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsAutoFarmAutoBuyAllGUI.lua")
                    
addscriptexist(23578803, "HotelElephantGUIGiverCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HotelElephantGUIGiverCash.lua")
                    
addscriptexist(740581508, "EntryPointNPCCameraESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EntryPointNPCCameraESP.lua")
    
addscript(5063122755,"Overlook RP [Auto Farm]", "OverlookRPAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OverlookRPAutoFarm.lua")
                    
                    
addscriptexist(9551640993, "MiningSimulator2ChestsFarmServerHop", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2ChestsFarmServerHop.lua")
    
addscript(8581609150,"Bloxhub Mine Mania [Auto mine]", "BloxhubMineManiaAutomine", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxhubMineManiaAutomine.lua")
                    
                    
addscriptexist(286090429, "ArsenalEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalEsp.lua")
    
addscript(45146873,"Tower Battles [Get Free Credits]", "TowerBattlesGetFreeCredits", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerBattlesGetFreeCredits.lua")
                    
                    
addscriptexist(8581609150, "BloxhubMineManiaAutoMine", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxhubMineManiaAutoMine.lua")
    
addscript(5630129588,"Smash Legends [Auto Farm GUI]", "SmashLegendsAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SmashLegendsAutoFarmGUI.lua")
                    
                    
addscriptexist(7211666966, "TowerofJumpAutoWin", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofJumpAutoWin.lua")
                    
addscriptexist(413424176, "CloneTycoon2InfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CloneTycoon2InfiniteMoney.lua")
                    
addscriptexist(7791106063, "FurryInfectionGUIKillAuraKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FurryInfectionGUIKillAuraKillAll.lua")
    
addscript(6969185078,"Elemental Awakening [Spin Farm + Auto Roll]", "ElementalAwakeningSpinFarmAutoRoll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ElementalAwakeningSpinFarmAutoRoll.lua")
                    
                    
addscriptexist(6938803436, "BirdHub7Games", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BirdHub7Games.lua")
                    
addscriptexist(5543622168, "CriticalTowerDefenseGUIChangeTowerColors", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriticalTowerDefenseGUIChangeTowerColors.lua")
                    
addscriptexist(2809202155, "YourBizarreAdventureFlyBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YourBizarreAdventureFlyBypass.lua")
                    
addscriptexist(5154858502, "MurderersvsSheriffsInstaKill", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderersvsSheriffsInstaKill.lua")
                    
addscriptexist(8581609150, "BloxhubMineManiaAutoSell", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxhubMineManiaAutoSell.lua")
                    
addscriptexist(1537690962, "BeeSwarmSimulatorRedeemCodesAutoFarmRoyalYellyESP", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeeSwarmSimulatorRedeemCodesAutoFarmRoyalYellyESP.lua")
    
addscript(306964494,"Loomian Legacy [Heal + Key Grabber]", "LoomianLegacyHealKeyGrabber", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LoomianLegacyHealKeyGrabber.lua")
                    
                    
addscriptexist(2788229376, "DaHoodCashAutoFarmOpenSource", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodCashAutoFarmOpenSource.lua")
    
addscript(7346416636,"Pop It Trading [Dupe Script]", "PopItTradingDupeScript", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PopItTradingDupeScript.lua")
                    
    
addscript(7622046644,"Monster Ghoul [100 Billion Focus Points]", "MonsterGhoul100BillionFocusPoints", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MonsterGhoul100BillionFocusPoints.lua")
                    
    
addscript(7110163297,"Super Sabers [Redeem All Codes]", "SuperSabersRedeemAllCodes", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperSabersRedeemAllCodes.lua")
                    
                    
addscriptexist(4733278992, "SwordBloxOnlineRebirthKillAura", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwordBloxOnlineRebirthKillAura.lua")
                    
addscriptexist(2653064683, "WordBombAutoTypeAndMoreOpenSource", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WordBombAutoTypeAndMoreOpenSource.lua")
    
addscript(6897226634,"Timber [Tree Aura]", "TimberTreeAura", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TimberTreeAura.lua")
                    
                    
addscriptexist(488667523, "ThoseWhoRemainKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThoseWhoRemainKillAll.lua")
    
addscript(5918187182,"Build A Gamiing PC Store [Infinite Cash]", "BuildAGamiingPCStoreInfiniteCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildAGamiingPCStoreInfiniteCash.lua")
                    
    
addscript(7830918930,"Gucci Town [Collect All Letters & More!]", "GucciTownCollectAllLettersMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GucciTownCollectAllLettersMore.lua")
                    
                    
addscriptexist(9551640993, "MiningSimulator2GUIAutoMineAutoOpenEgg", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2GUIAutoMineAutoOpenEgg.lua")
    
addscript(7065731541,"Speedman Simulator [GUI - Auto Upgrade, Auto Farm & More!]", "SpeedmanSimulatorGUIAutoUpgradeAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedmanSimulatorGUIAutoUpgradeAutoFarmMore.lua")
                    
    
addscript(6949542776,"Pixel Gun Tower Defense [Equip Any Gun]", "PixelGunTowerDefenseEquipAnyGun", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PixelGunTowerDefenseEquipAnyGun.lua")
                    
                    
addscriptexist(9551640993, "MiningSimulator2ChestFinder", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2ChestFinder.lua")
                    
addscriptexist(9551640993, "MiningSimulator2OreESPViewAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2OreESPViewAll.lua")
                    
addscriptexist(9551640993, "MiningSimulator2AutoMineBelowPlayer", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator2AutoMineBelowPlayer.lua")
                    
addscriptexist(7830918930, "GucciTownAutoFarmAutoCollectGemsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GucciTownAutoFarmAutoCollectGemsMore.lua")
    
addscript(2619187362,"Super Power Fighting Simulator [GUI - Auto Train, Auto Quest & More!]", "SuperPowerFightingSimulatorGUIAutoTrainAutoQuestMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperPowerFightingSimulatorGUIAutoTrainAutoQuestMore.lua")
                    
                    
addscriptexist(8540346411, "RebirthChampionsXGUIAutoFarmAutoRebirthMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RebirthChampionsXGUIAutoFarmAutoRebirthMore.lua")
                    
addscriptexist(45146873, "TowerBattlesInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerBattlesInfMoney.lua")
                    
addscriptexist(7488014850, "RAINBOWNPIECEServerCrusher", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RAINBOWNPIECEServerCrusher.lua")
                    
addscriptexist(5965591336, "SoulWarAntiCombatTagNoCombatTag", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SoulWarAntiCombatTagNoCombatTag.lua")
    
addscript(4087265156,"VERTIGO [No raggdol, No Fall damage, WalkSpeed]", "VERTIGONoraggdolNoFalldamageWalkSpeed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VERTIGONoraggdolNoFalldamageWalkSpeed.lua")
                    
    
addscript(5134682719,"Death Note [Find Kira Easily]", "DeathNoteFindKiraEasily", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeathNoteFindKiraEasily.lua")
                    
                    
addscriptexist(8357510970, "AnimePunchingSimulatorGUIAutoClickAutoBuyMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimePunchingSimulatorGUIAutoClickAutoBuyMore.lua")
                    
addscriptexist(3101667897, "LegendsOfSpeedGUIAutoStepsFarmGems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendsOfSpeedGUIAutoStepsFarmGems.lua")
                    
addscriptexist(5543622168, "CriticalTowerDefenseUnlockHotRash", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriticalTowerDefenseUnlockHotRash.lua")
                    
addscriptexist(2533391464, "SnowmanSimulatorGUIAutoFarmAutoFarmGiftMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SnowmanSimulatorGUIAutoFarmAutoFarmGiftMore.lua")
    
addscript(6875469709,"Strongest Punch Simulator [GUI - Auto Punch, Auto Orbs & More!]", "StrongestPunchSimulatorGUIAutoPunchAutoOrbsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrongestPunchSimulatorGUIAutoPunchAutoOrbsMore.lua")
                    
    
addscript(5062619730,"War Simulator [Kill All - Open Source]", "WarSimulatorKillAllOpenSource", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WarSimulatorKillAllOpenSource.lua")
                    
    
addscript(6717117731,"Subway Surfers [Steal All Coins]", "SubwaySurfersStealAllCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SubwaySurfersStealAllCoins.lua")
                    
    
addscript(7681451450,"Anime Simulator X [GUI - Farm, Auto Open Egg & More!]", "AnimeSimulatorXGUIFarmAutoOpenEggMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeSimulatorXGUIFarmAutoOpenEggMore.lua")
                    
    
addscript(5264342538,"Endless Mining Simulator [GUI - Auto Farm, Auto Gems & More!]", "EndlessMiningSimulatorGUIAutoFarmAutoGemsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EndlessMiningSimulatorGUIAutoFarmAutoGemsMore.lua")
                    
                    
addscriptexist(3823781113, "SaberSimulatorGUIAutoFarmAutoOpenEggMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SaberSimulatorGUIAutoFarmAutoOpenEggMore.lua")
                    
addscriptexist(7560156054, "ClickerSimulatorGUIAutoClickUnlockGamepasses", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerSimulatorGUIAutoClickUnlockGamepasses.lua")
                    
addscriptexist(6284583030, "PetSimulatorXGUIAutoFarmTeleportsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXGUIAutoFarmTeleportsMore.lua")
    
addscript(7114796110,"Anime Training Simulator [GUI - Auto Farm, Teleports]", "AnimeTrainingSimulatorGUIAutoFarmTeleports", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeTrainingSimulatorGUIAutoFarmTeleports.lua")
                    
    
addscript(7244314500,"Fightman Simulator [GUI - Auto Farm, Teleports]", "FightmanSimulatorGUIAutoFarmTeleports", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FightmanSimulatorGUIAutoFarmTeleports.lua")
                    
                    
addscriptexist(142823291, "MurderMystery2ESPFakeKnifeInvisible", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2ESPFakeKnifeInvisible.lua")
    
addscript(7277614831,"Candy Eating Simulator [GUI - Auto Farm, Teleports & More!]", "CandyEatingSimulatorGUIAutoFarmTeleportsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CandyEatingSimulatorGUIAutoFarmTeleportsMore.lua")
                    
                    
addscriptexist(6677985923, "MillionaireEmpireTycoonGUIGetCashAutoRebirth", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MillionaireEmpireTycoonGUIGetCashAutoRebirth.lua")
    
addscript(7429434108,"Anime Tappers [GUI - Auto Farm, Auto Upgrade]", "AnimeTappersGUIAutoFarmAutoUpgrade", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeTappersGUIAutoFarmAutoUpgrade.lua")
                    
    
addscript(7444263453,"Jetpack Jumpers [GUI - Auto Farm, Reedem Codes]", "JetpackJumpersGUIAutoFarmReedemCodes", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JetpackJumpersGUIAutoFarmReedemCodes.lua")
                    
    
addscript(680750021,"Case Clicker [GUI - Auto Farm, Auto Upgrade]", "CaseClickerGUIAutoFarmAutoUpgrade", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CaseClickerGUIAutoFarmAutoUpgrade.lua")
                    
    
addscript(8524876576,"Glider Simulator [Auto Collect Coins]", "GliderSimulatorAutoCollectCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GliderSimulatorAutoCollectCoins.lua")
                    
    
addscript(9488143445,"Raise A Bloppa [Auto Farm GUI]", "RaiseABloppaAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaiseABloppaAutoFarmGUI.lua")
                    
                    
addscriptexist(189707, "NaturalDisasterSurvivalPartFlinger", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NaturalDisasterSurvivalPartFlinger.lua")
    
addscript(9107946567,"Warriors Army Simulator [GUI - Auto Farm, Auto Revice & More!]", "WarriorsArmySimulatorGUIAutoFarmAutoReviceMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WarriorsArmySimulatorGUIAutoFarmAutoReviceMore.lua")
                    
    
addscript(6769764667,"Factory Simulator [GUI - Auto Farm]", "FactorySimulatorGUIAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FactorySimulatorGUIAutoFarm.lua")
                    
    
addscript(9573746878,"Bleach - Senko [Hollow Eat]", "BleachSenkoHollowEat", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BleachSenkoHollowEat.lua")
                    
                    
addscriptexist(1224212277, "MadCitySpawnCarDriveAndWalkOnWater", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCitySpawnCarDriveAndWalkOnWater.lua")
                    
addscriptexist(6299805723, "AnimeFightersSimulatorGUIAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightersSimulatorGUIAutoFarm.lua")
                    
addscriptexist(4787629450, "BOOGABOOGAGUIKillAuraAutoHealMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BOOGABOOGAGUIKillAuraAutoHealMore.lua")
                    
addscriptexist(9573746878, "BleachSenkoShinigami", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BleachSenkoShinigami.lua")
                    
addscriptexist(5987922834, "TransfurOutbreakAutoGrab", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TransfurOutbreakAutoGrab.lua")
    
addscript(6342469457,"Heavens Arena [GUI - Auto Click, Auto Skill & More!]", "HeavensArenaGUIAutoClickAutoSkillMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HeavensArenaGUIAutoClickAutoSkillMore.lua")
                    
                    
addscriptexist(537413528, "BuildABoatForTreasureGUIAutoFarmAutoBuy", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureGUIAutoFarmAutoBuy.lua")
                    
addscriptexist(28382335, "SurvivalZombieTycoonGUIAutoClickAutoCollectMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurvivalZombieTycoonGUIAutoClickAutoCollectMore.lua")
                    
addscriptexist(6769764667, "FactorySimulatorGUIAutoBuyAutoCollect", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FactorySimulatorGUIAutoBuyAutoCollect.lua")
                    
addscriptexist(7214610985, "Stealth2FastAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Stealth2FastAutoFarm.lua")
                    
addscriptexist(7622046644, "MonsterGhoulInstantKill", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MonsterGhoulInstantKill.lua")
                    
addscriptexist(9488143445, "RaiseABloppaAutoCollectMoneyAddMoneyInfiniteMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaiseABloppaAutoCollectMoneyAddMoneyInfiniteMoney.lua")
                    
addscriptexist(9508087919, "ApeirophobiaESPExit", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ApeirophobiaESPExit.lua")
                    
addscriptexist(9030362964, "FieldGoalSimulatorAimbot", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FieldGoalSimulatorAimbot.lua")
    
addscript(8549047195,"Anime Warriors Simulator [Auto Farm]", "AnimeWarriorsSimulatorAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeWarriorsSimulatorAutoFarm.lua")
                    
    
addscript(6753141554,"Collect Simulator [Auto Weights - Auto Sell]", "CollectSimulatorAutoWeightsAutoSell", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CollectSimulatorAutoWeightsAutoSell.lua")
                    
                    
addscriptexist(4003872968, "GiantSurvivalInstaKill", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GiantSurvivalInstaKill.lua")
    
addscript(3056526277,"Build and Survive [Kill all bots]", "BuildandSurviveKillallbots", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildandSurviveKillallbots.lua")
                    
                    
addscriptexist(6717117731, "SubwaySurfersColllectAllCoins", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SubwaySurfersColllectAllCoins.lua")
                    
addscriptexist(9508087919, "ApeirophobiaESPforexits", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ApeirophobiaESPforexits.lua")
                    
addscriptexist(9508087919, "ApeirophobiaSimulationCoresESP", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ApeirophobiaSimulationCoresESP.lua")
    
addscript(9065768804,"War Simulator [Kill All]", "WarSimulatorKillAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WarSimulatorKillAll.lua")
                    
                    
addscriptexist(9438506890, "raiseasoggaMoneyGiver", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/raiseasoggaMoneyGiver.lua")
                    
addscriptexist(9508087919, "ApeirophobiaEntityESP", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ApeirophobiaEntityESP.lua")
                    
addscriptexist(2788229376, "DaHoodInfiniteCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodInfiniteCash.lua")
    
addscript(7462526249,"NIKELAND [Collect All Coins & More!]", "NIKELANDCollectAllCoinsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NIKELANDCollectAllCoinsMore.lua")
                    
                    
addscriptexist(2965881766, "BrawlBloxOneShot", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrawlBloxOneShot.lua")
                    
addscriptexist(2965881766, "BrawlBloxInfGolgInfGemsInfExp", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrawlBloxInfGolgInfGemsInfExp.lua")
    
addscript(8005620792,"Roblox Casino [Infinite Money]", "RobloxCasinoInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxCasinoInfiniteMoney.lua")
                    
                    
addscriptexist(4087265156, "VERTIGOMiniGUINoFallDamage", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VERTIGOMiniGUINoFallDamage.lua")
    
addscript(7665856814,"Insomniac World Party [Auto Mine]", "InsomniacWorldPartyAutoMine", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/InsomniacWorldPartyAutoMine.lua")
                    
    
addscript(2262441883,"Electric State DarkRP [God Mode - Open Source]", "ElectricStateDarkRPGodModeOpenSource", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ElectricStateDarkRPGodModeOpenSource.lua")
                    
                    
addscriptexist(7622046644, "MonsterGhoulInstakillAutoKill", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MonsterGhoulInstakillAutoKill.lua")
    
addscript(9495079370,"Collecting Simulator [Auto Weights, Sell, Open Source]", "CollectingSimulatorAutoWeightsSellOpenSource", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CollectingSimulatorAutoWeightsSellOpenSource.lua")
                    
                    
addscriptexist(7622046644, "MonsterGhoulChangetokagunesquinquesyouwant", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MonsterGhoulChangetokagunesquinquesyouwant.lua")
    
addscript(6085581583,"Project Hero [Kill Aura, Equip All Quirks, Mob Farm]", "ProjectHeroKillAuraEquipAllQuirksMobFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectHeroKillAuraEquipAllQuirksMobFarm.lua")
                    
                    
addscriptexist(7560156054, "ClickerSimulatorAutoClickAutoRebirthsAutoSpinDaily", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerSimulatorAutoClickAutoRebirthsAutoSpinDaily.lua")
                    
addscriptexist(8278412720, "PrisonLifeRemasteredAutoFarmGUITeleportsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLifeRemasteredAutoFarmGUITeleportsMore.lua")
                    
addscriptexist(8540168650, "StandUprightRebootedAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StandUprightRebootedAutoFarm.lua")
                    
addscriptexist(7214610985, "Stealth2LevelAndCoinsAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Stealth2LevelAndCoinsAutoFarm.lua")
    
addscript(444319338,"Cannoneers! [Auto Farm]", "CannoneersAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CannoneersAutoFarm.lua")
                    
    
addscript(8370411487,"The New Frontier [Inf Stamina & Much More!]", "TheNewFrontierInfStaminaMuchMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheNewFrontierInfStaminaMuchMore.lua")
                    
                    
addscriptexist(5965591336, "SoulWarIntantKillHollows", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SoulWarIntantKillHollows.lua")
                    
addscriptexist(6610021055, "NoobArmyTycoonAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NoobArmyTycoonAutoFarm.lua")
                    
addscriptexist(5965591336, "SoulWarIntsKill", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SoulWarIntsKill.lua")
                    
addscriptexist(185655149, "BloxburgAutoRob", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxburgAutoRob.lua")
                    
addscriptexist(9292879820, "GrassCuttingIncrementalStatChanger", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GrassCuttingIncrementalStatChanger.lua")
    
addscript(8006400183,"Roblox [UIBlox Toast onto your screen]", "RobloxUIBloxToastontoyourscreen", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxUIBloxToastontoyourscreen.lua")
                    
                    
addscriptexist(534701013, "TheLabyrinthAntigrassAntinameXray", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheLabyrinthAntigrassAntinameXray.lua")
                    
addscriptexist(7940932746, "RobloxFullBright", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxFullBright.lua")
                    
addscriptexist(659222129, "SwordBurst2KillAuraTeleportWalkspeed", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwordBurst2KillAuraTeleportWalkspeed.lua")
                    
addscriptexist(2965881766, "BrawlBloxInfiniteTrophies", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrawlBloxInfiniteTrophies.lua")
    
addscript(9336657396,"A Beatdown Neighborhood [Auto Farm Power]", "ABeatdownNeighborhoodAutoFarmPower", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ABeatdownNeighborhoodAutoFarmPower.lua")
                    
    
addscript(7797478022,"Broken Bones Simulator [Infinite Money]", "BrokenBonesSimulatorInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrokenBonesSimulatorInfiniteMoney.lua")
                    
                    
addscriptexist(3823781113, "SaberSimulatorNewAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SaberSimulatorNewAutoFarmGUI.lua")
                    
addscriptexist(6403373529, "SlapBattlesAutoCollectAllKillOpenSource", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlapBattlesAutoCollectAllKillOpenSource.lua")
                    
addscriptexist(7167319176, "ChicagoRemasteredJewelryStoreAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ChicagoRemasteredJewelryStoreAutoFarm.lua")
                    
addscriptexist(4855457388, "DemonfallTeleportToPlayer", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DemonfallTeleportToPlayer.lua")
                    
addscriptexist(8278412720, "PrisonLifeRemasteredNoragdollNofalldamageNoEscape", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLifeRemasteredNoragdollNofalldamageNoEscape.lua")
                    
addscriptexist(9072679513, "AnimeImpactSimulatorAutoUpgradeTeleportAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeImpactSimulatorAutoUpgradeTeleportAutoFarm.lua")
                    
addscriptexist(9049840490, "SonicSpeedSimulatorCollectAllHoopsAutoRebirthAutoStep", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulatorCollectAllHoopsAutoRebirthAutoStep.lua")
                    
addscriptexist(9049840490, "SonicSpeedSimulatorAutoCollect", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulatorAutoCollect.lua")
                    
addscriptexist(4855457388, "DemonfallTpPlayer", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DemonfallTpPlayer.lua")
                    
addscriptexist(5154858502, "MurderersvsSheriffsKillAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderersvsSheriffsKillAll.lua")
                    
addscriptexist(9103460924, "SwordFactoryXAutoSpawnAutoUpgradeAutoUpgradeMultiplier", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwordFactoryXAutoSpawnAutoUpgradeAutoUpgradeMultiplier.lua")
                    
addscriptexist(5023820864, "TradeTowerAutoBuyAutoSellAutoClick", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TradeTowerAutoBuyAutoSellAutoClick.lua")
    
addscript(8657806289,"Dummies vs Noobs [Damage Multiplier]", "DummiesvsNoobsDamageMultiplier", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DummiesvsNoobsDamageMultiplier.lua")
                    
                    
addscriptexist(8657806289, "DummiesvsNoobsAntiAmmoLoss", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DummiesvsNoobsAntiAmmoLoss.lua")
                    
addscriptexist(8554378337, "WeaponFightingSimulatorFreeGamePassesAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeaponFightingSimulatorFreeGamePassesAutoFarmMore.lua")
                    
addscriptexist(9281034297, "GoalKickSimulatorInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GoalKickSimulatorInfMoney.lua")
                    
addscriptexist(6969185078, "ElementalAwakeningAutospin", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ElementalAwakeningAutospin.lua")
                    
addscriptexist(8302406789, "AnimeLiftingSimulatorAutoliftAutoselllAutobuy", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeLiftingSimulatorAutoliftAutoselllAutobuy.lua")
                    
addscriptexist(2202352383, "SuperPowerTrainingSimulatorAutoFarmStats", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperPowerTrainingSimulatorAutoFarmStats.lua")
                    
addscriptexist(9167501050, "LightsaberArenaKillAura", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LightsaberArenaKillAura.lua")
                    
addscriptexist(9167501050, "LightsaberArenaAutoBlockInfStamina", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LightsaberArenaAutoBlockInfStamina.lua")
                    
addscriptexist(9167501050, "LightsaberArenaGrabAllSabers", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LightsaberArenaGrabAllSabers.lua")
                    
addscriptexist(142823291, "MurderMystery2ESPFakeKnifeXboxKnife", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2ESPFakeKnifeXboxKnife.lua")
                    
addscriptexist(9359839118, "GasStationSimulatorAutoCelanAutoRestock", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GasStationSimulatorAutoCelanAutoRestock.lua")
                    
addscriptexist(7346416636, "PopItTradingDupeMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PopItTradingDupeMoney.lua")
    
addscript(6429245608,"Blood Surge [Bypassed RP Name]", "BloodSurgeBypassedRPName", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloodSurgeBypassedRPName.lua")
                    
    
addscript(9664185826,"Tate McRae Concert Experience [Collect All Coins - Infiniti Score & More!]", "TateMcRaeConcertExperienceCollectAllCoinsInfinitiScoreMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TateMcRaeConcertExperienceCollectAllCoinsInfinitiScoreMore.lua")
                    
                    
addscriptexist(9359839118, "GasStationSimulatorAutorefuelAutocashierAutoclean", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GasStationSimulatorAutorefuelAutocashierAutoclean.lua")
                    
addscriptexist(1224212277, "MadCityGUIXPFarmAutoRobTeleportsServerCrasher", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityGUIXPFarmAutoRobTeleportsServerCrasher.lua")
                    
addscriptexist(4783966408, "PlatesofFateRemasteredFreeEmotes", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PlatesofFateRemasteredFreeEmotes.lua")
    
addscript(5802642341,"City Life [Auto Steal - Auto Fire GUI]", "CityLifeAutoStealAutoFireGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CityLifeAutoStealAutoFireGUI.lua")
                    
                    
addscriptexist(5490351219, "ClickerMadnessAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerMadnessAutoFarmGUI.lua")
    
addscript(9557222597,"Clarks CICAVERSE [Auto Collect And Complete Event]", "ClarksCICAVERSEAutoCollectAndCompleteEvent", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClarksCICAVERSEAutoCollectAndCompleteEvent.lua")
                    
                    
addscriptexist(9557222597, "ClarksCICAVERSEAutoFarmTeleports", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClarksCICAVERSEAutoFarmTeleports.lua")
    
addscript(8137333410,"Color by number [Fast Auto Paint]", "ColorbynumberFastAutoPaint", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ColorbynumberFastAutoPaint.lua")
                    
                    
addscriptexist(2788229376, "DaHoodKittenhookCrypteder", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodKittenhookCrypteder.lua")
                    
addscriptexist(9292879820, "GrassCuttingIncrementalAutoRecollect", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GrassCuttingIncrementalAutoRecollect.lua")
                    
addscriptexist(6969185078, "ElementalAwakeningInstantCast", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ElementalAwakeningInstantCast.lua")
                    
addscriptexist(6263325292, "BloxburgAntiTeleportBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxburgAntiTeleportBypass.lua")
                    
addscriptexist(1224212277, "MadCityInstantVillain", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityInstantVillain.lua")
                    
addscriptexist(9344944754, "HunterxAthenaAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HunterxAthenaAutoFarmGUI.lua")
                    
addscriptexist(9344944754, "HunterxAthenaAutoFarmGUINew", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HunterxAthenaAutoFarmGUINew.lua")
    
addscript(4585085581,"Shinobi Storm [Unlock All Charecters]", "ShinobiStormUnlockAllCharecters", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShinobiStormUnlockAllCharecters.lua")
                    
                    
addscriptexist(5620664339, "RoStreetsNoFaliLockpick", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoStreetsNoFaliLockpick.lua")
    
addscript(7014716500,"Pro Border [Get Any Rank , Rank Changer]", "ProBorderGetAnyRankRankChanger", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProBorderGetAnyRankRankChanger.lua")
                    
                    
addscriptexist(6969185078, "ElementalAwakeningInstantCastAttemptsToChangeMaxRangeMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ElementalAwakeningInstantCastAttemptsToChangeMaxRangeMore.lua")
                    
addscriptexist(6969185078, "ElementalAwakeningAutoSpinEasySetup", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ElementalAwakeningAutoSpinEasySetup.lua")
                    
addscriptexist(1224212277, "MadCityAntiScreenShake", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityAntiScreenShake.lua")
                    
addscriptexist(9344944754, "HunterxAthenaAutoBuyApples", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HunterxAthenaAutoBuyApples.lua")
    
addscript(705844193,"One Piece Online Rebirth [Grab All Chests}", "OnePieceOnlineRebirthGrabAllChests", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OnePieceOnlineRebirthGrabAllChests.lua")
                    
                    
addscriptexist(534701013, "TheLabyrinthGUIReallyOverpowered", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheLabyrinthGUIReallyOverpowered.lua")
    
addscript(8533682846,"Goofy Ahh [Collection GUI V2 - Fun Scripts]", "GoofyAhhCollectionGUIV2FunScripts", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GoofyAhhCollectionGUIV2FunScripts.lua")
                    
    
addscript(9604473769,"Tate McRae Concert Experience [Get All Coins, Infinite Score]", "TateMcRaeConcertExperienceGetAllCoinsInfiniteScore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TateMcRaeConcertExperienceGetAllCoinsInfiniteScore.lua")
                    
                    
addscriptexist(9508087919, "ApeirophobiaMonsterESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ApeirophobiaMonsterESP.lua")
                    
addscriptexist(5620664339, "RoStreetsAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoStreetsAutoFarm.lua")
                    
addscriptexist(7952502098, "ImpossibleGlassBridgeObbyRemoveAllBadGlass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ImpossibleGlassBridgeObbyRemoveAllBadGlass.lua")
                    
addscriptexist(9508087919, "ApeirophobiaFreeESP–NoKeySystem", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ApeirophobiaFreeESP–NoKeySystem.lua")
    
addscript(8589310348,"Glory Kill Testing [Gamepass Tools]", "GloryKillTestingGamepassTools", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GloryKillTestingGamepassTools.lua")
                    
                    
addscriptexist(6284583030, "PetSimulatorXDeltaHUBCreckedGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXDeltaHUBCreckedGUI.lua")
                    
addscriptexist(4058282580, "BoxingSimulatorAutoFarmAutoSellMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BoxingSimulatorAutoFarmAutoSellMore.lua")
                    
addscriptexist(9359839118, "GasStationSimulatorAutoFarmCashier", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GasStationSimulatorAutoFarmCashier.lua")
                    
addscriptexist(9359839118, "GasStationSimulatorAutoFarmRefueler", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GasStationSimulatorAutoFarmRefueler.lua")
                    
addscriptexist(9203864304, "raiseafloppaAutoCookers", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/raiseafloppaAutoCookers.lua")
                    
addscriptexist(5620664339, "RoStreetsAutoStomp", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoStreetsAutoStomp.lua")
    
addscript(9426082120,"shoppingmode Samsung Superstar Galaxy [Auto Collect All Stars]", "shoppingmodeSamsungSuperstarGalaxyAutoCollectAllStars", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/shoppingmodeSamsungSuperstarGalaxyAutoCollectAllStars.lua")
                    
                    
addscriptexist(6284583030, "PetSimulatorXNewGUILKHUB", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXNewGUILKHUB.lua")
                    
addscriptexist(4282985734, "CombatWarriorsCombatSpyModifiedRemoteSpy", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CombatWarriorsCombatSpyModifiedRemoteSpy.lua")
                    
addscriptexist(8278412720, "PrisonLifeRemasteredLocationTeleportationGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLifeRemasteredLocationTeleportationGUI.lua")
                    
addscriptexist(1923555882, "EastBricktonAutoFishing", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EastBricktonAutoFishing.lua")
                    
addscriptexist(8260276694, "AbilityWarsStandAttackTimeFreezeTimeReset", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AbilityWarsStandAttackTimeFreezeTimeReset.lua")
    
addscript(6878438976,"Developer Inc. [Infinite Money]", "DeveloperIncInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeveloperIncInfiniteMoney.lua")
                    
                    
addscriptexist(8540346411, "RebirthChampionsXUnlimitedClicksFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RebirthChampionsXUnlimitedClicksFarm.lua")
    
addscript(6622795055,"Berkeley County, Concord [Client Anti Cheat Bypass]", "BerkeleyCountyConcordClientAntiCheatBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BerkeleyCountyConcordClientAntiCheatBypass.lua")
                    
    
addscript(8377686524,"Undertale", "UndertaleLastResetAutofarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UndertaleLastResetAutofarm.lua")
                    
                    
addscriptexist(6679274937, "VansWorldMaxLevelOpenSourse", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VansWorldMaxLevelOpenSourse.lua")
                    
addscriptexist(9292879820, "GrassCuttingIncrementalModStats", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GrassCuttingIncrementalModStats.lua")
                    
addscriptexist(9281034297, "GoalKickSimulatorAimBotAutoKickMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GoalKickSimulatorAimBotAutoKickMore.lua")
    
addscript(5864786637,"In Another Time [Kill All]", "InAnotherTimeKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/InAnotherTimeKillAll.lua")
                    
    
addscript(8394872314,"Garden Tower Defense [Unlock All Towers]", "GardenTowerDefenseUnlockAllTowers", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GardenTowerDefenseUnlockAllTowers.lua")
                    
    
addscript(8781849572,"Star Simulator Beta [Infinite Planks & Iron - Auto Farm - Unlock All Land]", "StarSimulatorBetaInfinitePlanksIronAutoFarmUnlockAllLand", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StarSimulatorBetaInfinitePlanksIronAutoFarmUnlockAllLand.lua")
                    
    
addscript(4836735146,"Street Shootout Beta [Infinite Money]", "StreetShootoutBetaInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StreetShootoutBetaInfiniteMoney.lua")
                    
                    
addscriptexist(8204899140, "FootballFusion2NoJumpCooldown", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FootballFusion2NoJumpCooldown.lua")
                    
addscriptexist(7940932746, "AltLauncher–UnlimitedRobloxAccountsForever", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AltLauncher–UnlimitedRobloxAccountsForever.lua")
                    
addscriptexist(1554960397, "CarDealershipTycoonAutoFarmSpeedChanger", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarDealershipTycoonAutoFarmSpeedChanger.lua")
                    
addscriptexist(6461766546, "AHeroDestinyGUIAutoFarmBossFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AHeroDestinyGUIAutoFarmBossFarmMore.lua")
                    
addscriptexist(7940932746, "FovforRoblox", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FovforRoblox.lua")
                    
addscriptexist(6284583030, "PetSimulatorXNewFarmingGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXNewFarmingGUI.lua")
                    
addscriptexist(2248408710, "DestructionSimulatorInfiniteMoneyMaxLevelMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DestructionSimulatorInfiniteMoneyMaxLevelMore.lua")
                    
addscriptexist(920587237, "AdoptMeAutoFarmAutoBabyMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMeAutoFarmAutoBabyMore.lua")
                    
addscriptexist(286090429, "ArsenalGUIAimbotAntiAimESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalGUIAimbotAntiAimESP.lua")
    
addscript(8209480473,"Spotify Island [GUI - Auto Farm XP, Auto Farm Hearts]", "SpotifyIslandGUIAutoFarmXPAutoFarmHearts", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpotifyIslandGUIAutoFarmXPAutoFarmHearts.lua")
                    
                    
addscriptexist(183364845, "ShiftRunforRoblox", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShiftRunforRoblox.lua")
                    
addscriptexist(7947609996, "CtrlDeleteforRoblox", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CtrlDeleteforRoblox.lua")
    
addscript(7083634873,"FPS Boost for Roblox", "FPSBoostforRoblox", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FPSBoostforRoblox.lua")
                    
                    
addscriptexist(5712833750, "AnimalSimulatorMorphsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimalSimulatorMorphsMore.lua")
    
addscript(4860819035,"Plants vs Zombies Garden Problem [Infinite Money]", "PlantsvsZombiesGardenProblemInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PlantsvsZombiesGardenProblemInfiniteMoney.lua")
                    
                    
addscriptexist(9292879820, "GrassCuttingIncrementalAutoCollect", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GrassCuttingIncrementalAutoCollect.lua")
                    
addscriptexist(3522803956, "DePrideIsleSanatoriumGUINoStaminaMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DePrideIsleSanatoriumGUINoStaminaMore.lua")
    
addscript(3339374541,"Midnight Racing Tokyo [Demo FE Sound Player]", "MidnightRacingTokyoDemoFESoundPlayer", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MidnightRacingTokyoDemoFESoundPlayer.lua")
                    
    
addscript(7337161346,"Infinite Jump for Roblox", "InfiniteJumpforRoblox", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/InfiniteJumpforRoblox.lua")
                    
    
addscript(8571871474,"Gun Fighting Tycoon [Kill All - Auto Collect - More!]", "GunFightingTycoonKillAllAutoCollectMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GunFightingTycoonKillAllAutoCollectMore.lua")
                    
    
addscript(3597632410,"Plants vs Zombies Garden Problem [Unlock All]", "PlantsvsZombiesGardenProblemUnlockAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PlantsvsZombiesGardenProblemUnlockAll.lua")
                    
                    
addscriptexist(4588604953, "CriminalityAutoLockpick", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriminalityAutoLockpick.lua")
                    
addscriptexist(4588604953, "CriminalityHitboxExtender", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriminalityHitboxExtender.lua")
                    
addscriptexist(9426082120, "SamsungSuperstarGalaxyAutoFarmClaimRewardsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SamsungSuperstarGalaxyAutoFarmClaimRewardsMore.lua")
                    
addscriptexist(6284583030, "PetSimulatorXAutoFarmAutoEggOpeningMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmAutoEggOpeningMore.lua")
                    
addscriptexist(370731277, "MeepCityGameDestroyer", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MeepCityGameDestroyer.lua")
                    
addscriptexist(4996049426, "AllStarTowerDefenseGUIAutoJoinAutoEvolveMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AllStarTowerDefenseGUIAutoJoinAutoEvolveMore.lua")
                    
addscriptexist(1224212277, "MadCityKillAura", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityKillAura.lua")
                    
addscriptexist(4588604953, "CriminalityGunModsPlayersESPMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriminalityGunModsPlayersESPMore.lua")
    
addscript(3064296930,"God Mode", "GodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GodMode.lua")
                    
                    
addscriptexist(7940932746, "NoclipforRoblox", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NoclipforRoblox.lua")
                    
addscriptexist(7480222488, "ESPforRoblox", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ESPforRoblox.lua")
                    
addscriptexist(9049840490, "SonicSpeedSimulatorServerHopCollectAll–AutoRebirth", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulatorServerHopCollectAll–AutoRebirth.lua")
                    
addscriptexist(35397735, "ScubaDivingAtQuillLakeInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ScubaDivingAtQuillLakeInfiniteMoney.lua")
                    
addscriptexist(35397735, "ScubaDivingAtQuillLakeAutoSell", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ScubaDivingAtQuillLakeAutoSell.lua")
    
addscript(5108587039,"Palm Ridge Beta [Auto Farm – Open Sourse]", "PalmRidgeBetaAutoFarm–OpenSourse", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PalmRidgeBetaAutoFarm–OpenSourse.lua")
                    
                    
addscriptexist(5783581, "TPSUltimateSoccerShootAutoGoalKeepMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TPSUltimateSoccerShootAutoGoalKeepMore.lua")
                    
addscriptexist(9344944754, "HunterxOmenAutoClimbTraining", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HunterxOmenAutoClimbTraining.lua")
    
addscript(8090572921,"Multiverse Fighters Simulator [Auto Click - Auto Attack Npcs]", "MultiverseFightersSimulatorAutoClickAutoAttackNpcs", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MultiverseFightersSimulatorAutoClickAutoAttackNpcs.lua")
                    
                    
addscriptexist(142823291, "MurderMystery2The1FreeGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2The1FreeGUI.lua")
                    
addscriptexist(9030362964, "FieldGoalSimulatorAlwaysPerfectAccuracy", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FieldGoalSimulatorAlwaysPerfectAccuracy.lua")
    
addscript(2693739238,"THEIF LIFE Simulator [Get Best Loot]", "THEIFLIFESimulatorGetBestLoot", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/THEIFLIFESimulatorGetBestLoot.lua")
                    
                    
addscriptexist(5154858502, "MurderersevsSheriffsKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderersevsSheriffsKillAll.lua")
    
addscript(9487450292,"Weak Piece [Kill Everything]", "WeakPieceKillEverything", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeakPieceKillEverything.lua")
                    
    
addscript(9225577563,"Roblox – Aimbot & ESP V3 [Phantom Forces Supported]", "Roblox–AimbotESPV3PhantomForcesSupported", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Roblox–AimbotESPV3PhantomForcesSupported.lua")
                    
                    
addscriptexist(292439477, "PhantomForces22HubFreeToUseAimbotMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForces22HubFreeToUseAimbotMore.lua")
                    
addscriptexist(9344944754, "HunterxOmenAutoSpeedTrain", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HunterxOmenAutoSpeedTrain.lua")
    
addscript(10106296680,"Anti AFK GUI", "AntiAFKGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AntiAFKGUI.lua")
                    
                    
addscriptexist(9203864304, "RaiseaFloppaInstaFinish", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaiseaFloppaInstaFinish.lua")
                    
addscriptexist(6937208251, "StarWarsBattlefieldPVPGodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StarWarsBattlefieldPVPGodMode.lua")
    
addscript(5135889792,"Dystovia [Collect All]", "DystoviaCollectAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DystoviaCollectAll.lua")
                    
                    
addscriptexist(9203864304, "RaiseaFloppaAutoFarmInstaFinish", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaiseaFloppaAutoFarmInstaFinish.lua")
    
addscript(8854753304,"Interactive Intimate [Farm Points]", "InteractiveIntimateFarmPoints", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/InteractiveIntimateFarmPoints.lua")
                    
                    
addscriptexist(9049840490, "SonicSpeedSimulatorNewFasterAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulatorNewFasterAutoFarm.lua")
                    
addscriptexist(9049840490, "SonicSpeedSimulatorAutoOpenChests", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulatorAutoOpenChests.lua")
                    
addscriptexist(9530846958, "Epsilon2GUIV1AutoTrinketMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Epsilon2GUIV1AutoTrinketMore.lua")
                    
addscriptexist(155382109, "SurviveandkillthekillersinArea51GUIGiveAllGuns", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurviveandkillthekillersinArea51GUIGiveAllGuns.lua")
                    
addscriptexist(2753915549, "BloxfruitsHOHOHUB", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxfruitsHOHOHUB.lua")
    
addscript(6297822481,"Titan Warfare [The #1 Free GUI]", "TitanWarfareThe1FreeGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TitanWarfareThe1FreeGUI.lua")
                    
                    
addscriptexist(9049840490, "SonicSpeedSimulatorAutoRunAutorebirthsUnlokAllWorlds", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulatorAutoRunAutorebirthsUnlokAllWorlds.lua")
                    
addscriptexist(5802642341, "CityLifeArrestAllCriminals", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CityLifeArrestAllCriminals.lua")
                    
addscriptexist(5802642341, "CityLifeAutoTicketCars", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CityLifeAutoTicketCars.lua")
    
addscript(6193049807,"Tha Hood [Money Farm]", "ThaHoodMoneyFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThaHoodMoneyFarm.lua")
                    
    
addscript(2996067865,"th3ltgrounds [Kill All]", "th3ltgroundsKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/th3ltgroundsKillAll.lua")
                    
    
addscript(6904735821,"Shoe Simulator [Auto Shoe - Auto Sell & More!]", "ShoeSimulatorAutoShoeAutoSellMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShoeSimulatorAutoShoeAutoSellMore.lua")
                    
                    
addscriptexist(9461798258, "RaiseaGrannyInfiniteCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaiseaGrannyInfiniteCash.lua")
    
addscript(9474050899,"Jackpot Party [Fast Case Opener]", "JackpotPartyFastCaseOpener", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JackpotPartyFastCaseOpener.lua")
                    
    
addscript(5029300380,"BOXING CLUB [Kick Player]", "BOXINGCLUBKickPlayer", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BOXINGCLUBKickPlayer.lua")
                    
                    
addscriptexist(7089072882, "HEMANSIMBATTLEARENAInfiniteKirbinite", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HEMANSIMBATTLEARENAInfiniteKirbinite.lua")
                    
addscriptexist(7089072882, "HEMANSIMBATTLEARENAMaxLevelRebirth", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HEMANSIMBATTLEARENAMaxLevelRebirth.lua")
                    
addscriptexist(632642533, "DeadMist2BetaGrabCarePackage", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeadMist2BetaGrabCarePackage.lua")
                    
addscriptexist(632642533, "DeadMist2BetaGrabItemOnlyStorageCrates", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeadMist2BetaGrabItemOnlyStorageCrates.lua")
                    
addscriptexist(2788229376, "DaHoodGodmodeV3FullSkinnyGodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodGodmodeV3FullSkinnyGodMode.lua")
                    
addscriptexist(9203864304, "raiseafloppaAutoClickFloppaAutoCollectMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/raiseafloppaAutoClickFloppaAutoCollectMoney.lua")
                    
addscriptexist(6778844213, "EuphoriaRagdollTestingAnnonyServerMassRagdollToggle", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EuphoriaRagdollTestingAnnonyServerMassRagdollToggle.lua")
    
addscript(6905769625,"Rooftop Basketball [Silent AIM]", "RooftopBasketballSilentAIM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RooftopBasketballSilentAIM.lua")
                    
                    
addscriptexist(9461798258, "RaiseaGrannyInfcookies", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaiseaGrannyInfcookies.lua")
                    
addscriptexist(9461798258, "RaiseaGrannyInfCash", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaiseaGrannyInfCash.lua")
                    
addscriptexist(9461798258, "RaiseaGrannyDropcookies", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaiseaGrannyDropcookies.lua")
                    
addscriptexist(9344944754, "HunterxOmenAutoPushupFast", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HunterxOmenAutoPushupFast.lua")
    
addscript(6840498537,"Strucid [Legit, Semi Rage]", "StrucidLegitSemiRage", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrucidLegitSemiRage.lua")
                    
                    
addscriptexist(8916037983, "StarvingArtistsGETEASTERBOOTHSCRIPT", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StarvingArtistsGETEASTERBOOTHSCRIPT.lua")
                    
addscriptexist(9461798258, "RaiseaGrannySpawnamaid", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaiseaGrannySpawnamaid.lua")
                    
addscriptexist(2248408710, "DestructionSimulatorINFmoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DestructionSimulatorINFmoney.lua")
                    
addscriptexist(632642533, "DeadMist2Collectdrop", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeadMist2Collectdrop.lua")
                    
addscriptexist(632642533, "DeadMist2BetaGetBox", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeadMist2BetaGetBox.lua")
                    
addscriptexist(7305309231, "TaxiBossServerHopAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TaxiBossServerHopAutoFarm.lua")
    
addscript(8523408215,"Alo Sanctuary [Collect All Event Orbs]", "AloSanctuaryCollectAllEventOrbs", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AloSanctuaryCollectAllEventOrbs.lua")
                    
                    
addscriptexist(8523408215, "AloSanctuaryGetAllMatsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AloSanctuaryGetAllMatsMore.lua")
    
addscript(6673614635,"unConventional [Auto Questing]", "unConventionalAutoQuesting", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/unConventionalAutoQuesting.lua")
                    
                    
addscriptexist(8209480473, "SpotifyIslandHeartfarmserverhopGetalotofhearts", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpotifyIslandHeartfarmserverhopGetalotofhearts.lua")
                    
addscriptexist(8209480473, "SpotifyIslandInstantLevel50", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpotifyIslandInstantLevel50.lua")
                    
addscriptexist(9297410766, "CrossbarChallengeSimulatorAutoRebirth", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CrossbarChallengeSimulatorAutoRebirth.lua")
                    
addscriptexist(5154858502, "MurderervsSheriffsKillAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderervsSheriffsKillAll.lua")
                    
addscriptexist(155382109, "SurviveandKilltheKillersinArea51GiveallginsClaimallrewardsAllammo", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurviveandKilltheKillersinArea51GiveallginsClaimallrewardsAllammo.lua")
    
addscript(9181315895,"Bingus' Basement [Teleport generator, bingus bowl, food room]", "BingusBasementTeleportgeneratorbingusbowlfoodroom", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BingusBasementTeleportgeneratorbingusbowlfoodroom.lua")
                    
                    
addscriptexist(9297410766, "CrossbarChallengeSimulatorGoodgoal", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CrossbarChallengeSimulatorGoodgoal.lua")
                    
addscriptexist(6604417568, "Minerscave15KillAuraHukerinfjump", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Minerscave15KillAuraHukerinfjump.lua")
    
addscript(8492553855,"Project Upright [Item Farm]", "ProjectUprightItemFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectUprightItemFarm.lua")
                    
                    
addscriptexist(133815151, "TheFinalStand2MeleeAura", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheFinalStand2MeleeAura.lua")
    
addscript(255236425,"Traitor Town [Esp]", "TraitorTownEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TraitorTownEsp.lua")
                    
                    
addscriptexist(4855457388, "DemonfallAutofarmAutoGripInfinitejump", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DemonfallAutofarmAutoGripInfinitejump.lua")
                    
addscriptexist(6673614635, "unConventionalAutoQuestNoAttackCooldownRollFast", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/unConventionalAutoQuestNoAttackCooldownRollFast.lua")
                    
addscriptexist(2788229376, "DaHoodGodmode", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodGodmode.lua")
                    
addscriptexist(8540168650, "StandUprightRebootedSortToolsItemsFarmAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StandUprightRebootedSortToolsItemsFarmAutoFarm.lua")
                    
addscriptexist(9344944754, "HunterxOmenAutoSpeedTraining", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HunterxOmenAutoSpeedTraining.lua")
                    
addscriptexist(9344944754, "HunterxOmenAutospeed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HunterxOmenAutospeed.lua")
                    
addscriptexist(2248408710, "DestructionSimulatorInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DestructionSimulatorInfMoney.lua")
                    
addscriptexist(9530846958, "Epsilon2NoFallAutoTrinketPickupModDetector", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Epsilon2NoFallAutoTrinketPickupModDetector.lua")
                    
addscriptexist(9297410766, "CrossbarChallengeSimulatorInfniteCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CrossbarChallengeSimulatorInfniteCoins.lua")
                    
addscriptexist(9297410766, "CrossbarChallengeSimulatorGetTheBestItems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CrossbarChallengeSimulatorGetTheBestItems.lua")
                    
addscriptexist(5135889792, "DystoviaGodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DystoviaGodMode.lua")
                    
addscriptexist(205224386, "HideandSeekExtremeCoinGrabber", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HideandSeekExtremeCoinGrabber.lua")
                    
addscriptexist(1730877806, "GrandPieceOnlineWalkOnWater", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GrandPieceOnlineWalkOnWater.lua")
                    
addscriptexist(4996049426, "AllStarTowerDefenseStarPassXP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AllStarTowerDefenseStarPassXP.lua")
                    
addscriptexist(6878438976, "DeveloperInc10rCashin30sec", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeveloperInc10rCashin30sec.lua")
                    
addscriptexist(1458767429, "ABAAutomaticblackflashItadori", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ABAAutomaticblackflashItadori.lua")
                    
addscriptexist(2569453732, "RiseofNationsTradeGUIOpenSource", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RiseofNationsTradeGUIOpenSource.lua")
    
addscript(6667701234,"Fate Xero [Item Notifier]", "FateXeroItemNotifier", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FateXeroItemNotifier.lua")
                    
    
addscript(8403541179,"Blood Engine 2 Slash Mania [Kill All]", "BloodEngine2SlashManiaKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloodEngine2SlashManiaKillAll.lua")
                    
    
addscript(8396586868,"A 0ne Piece Game [Fruit Farm]", "A0nePieceGameFruitFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/A0nePieceGameFruitFarm.lua")
                    
                    
addscriptexist(7952526341, "Roblox–SimpleDrawingBoxEsp", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Roblox–SimpleDrawingBoxEsp.lua")
    
addscript(8689522513,"The Streets Prison [Anti Cheat Bypass]", "TheStreetsPrisonAntiCheatBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheStreetsPrisonAntiCheatBypass.lua")
                    
    
addscript(9398326379,"Raise a Bingus [Auto Farm Money]", "RaiseaBingusAutoFarmMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaiseaBingusAutoFarmMoney.lua")
                    
                    
addscriptexist(8209480473, "SpotifyIslandHeartsFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpotifyIslandHeartsFarm.lua")
    
addscript(9283132959,"Block Breaker Simulator [Auto Get Blocks & More!]", "BlockBreakerSimulatorAutoGetBlocksMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BlockBreakerSimulatorAutoGetBlocksMore.lua")
                    
                    
addscriptexist(4996049426, "AllStarTowerDefenseFarmexp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AllStarTowerDefenseFarmexp.lua")
                    
addscriptexist(9049840490, "SonicSpeedSimulatorAutoRunAutorebirthsAutoWinRace", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulatorAutoRunAutorebirthsAutoWinRace.lua")
                    
addscriptexist(4616652839, "ShindoLifeInfiniteSpinsGetAnyBloodline", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoLifeInfiniteSpinsGetAnyBloodline.lua")
                    
addscriptexist(1224212277, "MadCityAutoXpEasyLevel100", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityAutoXpEasyLevel100.lua")
    
addscript(9136292138,"Grand Pirates [Mob Farm, Auto Quest, Farm Chests]", "GrandPiratesMobFarmAutoQuestFarmChests", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GrandPiratesMobFarmAutoQuestFarmChests.lua")
                    
                    
addscriptexist(8209480473, "SpotifyIslandLevelFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpotifyIslandLevelFarm.lua")
                    
addscriptexist(8209480473, "SpotifyIslandHeartFarmServerhop", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpotifyIslandHeartFarmServerhop.lua")
                    
addscriptexist(8209480473, "SpotifyIslandAutoCollectAllCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpotifyIslandAutoCollectAllCoins.lua")
    
addscript(583507031,"Papers, Please [Auto Farm]", "PapersPleaseAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PapersPleaseAutoFarm.lua")
                    
    
addscript(166986752,"Plane Crazy [Copy Build]", "PlaneCrazyCopyBuild", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PlaneCrazyCopyBuild.lua")
                    
                    
addscriptexist(6299805723, "AnimeFightersSimulatorAutoFarmAutoFuse", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightersSimulatorAutoFarmAutoFuse.lua")
                    
addscriptexist(2629642516, "BitcoinMinerAutoSellAutoSkipAutoClaimcrates", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BitcoinMinerAutoSellAutoSkipAutoClaimcrates.lua")
                    
addscriptexist(1962086868, "TowerofHellGodModeMoreFreeGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofHellGodModeMoreFreeGUI.lua")
                    
addscriptexist(8209480473, "SpotifyIslandLvlfarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpotifyIslandLvlfarm.lua")
    
addscript(3678761576,"ENTRENCHED ALPHA [AimBot]", "ENTRENCHEDALPHAAimBot", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ENTRENCHEDALPHAAimBot.lua")
                    
                    
addscriptexist(8209480473, "SpotifyIslandFarmMusic", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpotifyIslandFarmMusic.lua")
    
addscript(8875171205,"Telos [RE-RELEASE!] [Balanced Craftwars OP tools]", "TelosRERELEASEBalancedCraftwarsOPtools", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TelosRERELEASEBalancedCraftwarsOPtools.lua")
                    
    
addscript(9041110505,"Unlimited Upgrade Simulator [Inf Gem]", "UnlimitedUpgradeSimulatorInfGem", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UnlimitedUpgradeSimulatorInfGem.lua")
                    
                    
addscriptexist(9041110505, "UnlimitedUpgradeSimulatorInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UnlimitedUpgradeSimulatorInfMoney.lua")
                    
addscriptexist(8403541179, "BloodEngineIISlashManiaKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloodEngineIISlashManiaKillAll.lua")
    
addscript(2631794742,"City of Ottawa [Kill All - Get Gun]", "CityofOttawaKillAllGetGun", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CityofOttawaKillAllGetGun.lua")
                    
                    
addscriptexist(9103460924, "SwordFactoryXAutoSpawnAutoKillBoss", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwordFactoryXAutoSpawnAutoKillBoss.lua")
    
addscript(5233782396,"Creatures Of Sonaria [GUI Auto Farm]", "CreaturesOfSonariaGUIAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CreaturesOfSonariaGUIAutoFarm.lua")
                    
                    
addscriptexist(4996049426, "AllStarTowerDefenseStarPassFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AllStarTowerDefenseStarPassFarm.lua")
                    
addscriptexist(3233893879, "BadBusiness303ClientAntiCheatBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BadBusiness303ClientAntiCheatBypass.lua")
    
addscript(1696916806,"Base Raiders [Auto Farm - Auto Crate - Anti AFK]", "BaseRaidersAutoFarmAutoCrateAntiAFK", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BaseRaidersAutoFarmAutoCrateAntiAFK.lua")
                    
                    
addscriptexist(2512643572, "BubbleGumSimulatorAutoPotionsAutoLabGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BubbleGumSimulatorAutoPotionsAutoLabGUI.lua")
                    
addscriptexist(740581508, "EntryPointKillNPCsNPCChams", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EntryPointKillNPCsNPCChams.lua")
                    
addscriptexist(7560156054, "ClickerSimulatorAutoClickAutoCollectGiftsOpenEgg", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerSimulatorAutoClickAutoCollectGiftsOpenEgg.lua")
                    
addscriptexist(8357510970, "AnimePunchingSimulatorAutoTapAutoRebirthAutoOpenEgg", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimePunchingSimulatorAutoTapAutoRebirthAutoOpenEgg.lua")
                    
addscriptexist(8540168650, "StandUprightRebootedItemServerHopFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StandUprightRebootedItemServerHopFarm.lua")
    
addscript(3501626887,"Diceboy [Bring dicecoins]", "DiceboyBringdicecoins", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DiceboyBringdicecoins.lua")
                    
                    
addscriptexist(8549047195, "AnimeWarriorsSimulatorTpfinalworld", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeWarriorsSimulatorTpfinalworld.lua")
    
addscript(6772424226,"2 Player Millionaire Tycoon [Auto Buy & More!]", "2PlayerMillionaireTycoonAutoBuyMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/2PlayerMillionaireTycoonAutoBuyMore.lua")
                    
                    
addscriptexist(6938803436, "AnimeDimensionsSimulatorAutoFarmAutoSkillsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeDimensionsSimulatorAutoFarmAutoSkillsMore.lua")
                    
addscriptexist(8069117419, "DemonSoulSimulatorAutoFarmFreeGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DemonSoulSimulatorAutoFarmFreeGUI.lua")
                    
addscriptexist(3260590327, "TowerDefenseSimulatorAutofarmgem", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerDefenseSimulatorAutofarmgem.lua")
    
addscript(6704278765,"Dolo Tonight Concert Experience [Collect All eyes]", "DoloTonightConcertExperienceCollectAlleyes", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DoloTonightConcertExperienceCollectAlleyes.lua")
                    
                    
addscriptexist(1240644540, "VampireHunters3VampireEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VampireHunters3VampireEsp.lua")
    
addscript(10472623094,"Logitech Song Breaker Awards [Collect All Coins – And More GUI!]", "LogitechSongBreakerAwardsCollectAllCoins–AndMoreGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LogitechSongBreakerAwardsCollectAllCoins–AndMoreGUI.lua")
                    
    
addscript(8395560237,"Kick Off [Free GUI – OP Features]", "KickOffFreeGUI–OPFeatures", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KickOffFreeGUI–OPFeatures.lua")
                    
                    
addscriptexist(8069117419, "DemonSoulSimulatorAutoAttackCollectSoursAutoPower", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DemonSoulSimulatorAutoAttackCollectSoursAutoPower.lua")
                    
addscriptexist(6677985923, "MillionaireEmpireTycoonInfiniteCashAutoBuyAutoRebirth", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MillionaireEmpireTycoonInfiniteCashAutoBuyAutoRebirth.lua")
    
addscript(5803957966,"MeloBlox RPG [Auto Loot]", "MeloBloxRPGAutoLoot", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MeloBloxRPGAutoLoot.lua")
                    
                    
addscriptexist(5712833750, "AnimalSimulatorFarmDragonSkinsXP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimalSimulatorFarmDragonSkinsXP.lua")
    
addscript(6381640185,"Linkvertise Bypass [GUI - Open Source]", "LinkvertiseBypassGUIOpenSource", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LinkvertiseBypassGUIOpenSource.lua")
                    
    
addscript(8649501395,"NFL Tycoon [Auto Collect Money - Auto Buy]", "NFLTycoonAutoCollectMoneyAutoBuy", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NFLTycoonAutoCollectMoneyAutoBuy.lua")
                    
                    
addscriptexist(8705534359, "ShoppingCartSimulatorInfiniteCoffee", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShoppingCartSimulatorInfiniteCoffee.lua")
                    
addscriptexist(8705534359, "ShoppingCartSimulatorInfiniteCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShoppingCartSimulatorInfiniteCoins.lua")
    
addscript(8519700776,"SKYWARS PvP [Kill All Instantly]", "SKYWARSPvPKillAllInstantly", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SKYWARSPvPKillAllInstantly.lua")
                    
    
addscript(8874040270,"SKYWARS PRO 2 [Kill All]", "SKYWARSPRO2KillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SKYWARSPRO2KillAll.lua")
                    
                    
addscriptexist(4588604953, "CriminalityEliteV3DevBuildLeak", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriminalityEliteV3DevBuildLeak.lua")
    
addscript(8713127334,"Redbox 2 [Kill All]", "Redbox2KillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Redbox2KillAll.lua")
                    
                    
addscriptexist(8874040270, "SKYWARSPRO2AutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SKYWARSPRO2AutoFarm.lua")
                    
addscriptexist(255236425, "TraitorTownNofallDamage", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TraitorTownNofallDamage.lua")
                    
addscriptexist(7797478022, "BrokenBonesSimulatorAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrokenBonesSimulatorAutoFarm.lua")
    
addscript(8747402506,"Prop Hunt [Kill All]", "PropHuntKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PropHuntKillAll.lua")
                    
    
addscript(6847090259,"Bulked Up [Auto Collect Eggs]", "BulkedUpAutoCollectEggs", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BulkedUpAutoCollectEggs.lua")
                    
    
addscript(5049335549,"Dawn of Aurora RP [Auto Farm Free]", "DawnofAuroraRPAutoFarmFree", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DawnofAuroraRPAutoFarmFree.lua")
                    
                    
addscriptexist(6847090259, "BulkedUpAutoCollectTrophies", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BulkedUpAutoCollectTrophies.lua")
    
addscript(386329050,"The Black Mesλ Incident [All guns]", "TheBlackMesλIncidentAllguns", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheBlackMesλIncidentAllguns.lua")
                    
                    
addscriptexist(5233782396, "CreaturesofSonariaSpamBiteEasterBoss", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CreaturesofSonariaSpamBiteEasterBoss.lua")
                    
addscriptexist(5543622168, "CriticalTowerDefenseEquipSecretUnit", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriticalTowerDefenseEquipSecretUnit.lua")
                    
addscriptexist(5543622168, "CriticalTowerDefenseGetSecretUnit", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriticalTowerDefenseGetSecretUnit.lua")
                    
addscriptexist(4459593483, "FORCEPREALPHAIngredidntESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FORCEPREALPHAIngredidntESP.lua")
    
addscript(5410923773,"Coords Finder V2", "CoordsFinderV2", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CoordsFinderV2.lua")
                    
    
addscript(4825966600,"Roblox Audio Bypass", "RobloxAudioBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxAudioBypass.lua")
                    
    
addscript(7665621058,"Destroyerman Simulator [Get All Gamepasses]", "DestroyermanSimulatorGetAllGamepasses", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DestroyermanSimulatorGetAllGamepasses.lua")
                    
                    
addscriptexist(5712833750, "AnimalSimulatorInfiniteXPLevels", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimalSimulatorInfiniteXPLevels.lua")
                    
addscriptexist(5712833750, "AnimalSimulatorPlayerKillAuraNPCKillAura", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimalSimulatorPlayerKillAuraNPCKillAura.lua")
    
addscript(9346039031,"My Hello Kitty Cafe [Roblox Event Auto Farm]", "MyHelloKittyCafeRobloxEventAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyHelloKittyCafeRobloxEventAutoFarm.lua")
                    
                    
addscriptexist(9346039031, "MyHelloKittyCafeAutoServeCoffeeAutoCleanSeatsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyHelloKittyCafeAutoServeCoffeeAutoCleanSeatsMore.lua")
                    
addscriptexist(3467049496, "MARVELBattlegroundsGetAllGamepasses", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MARVELBattlegroundsGetAllGamepasses.lua")
    
addscript(171391948,"Vehicle Simulator [Auto Farm GUI]", "VehicleSimulatorAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VehicleSimulatorAutoFarmGUI.lua")
                    
    
addscript(3272915504,"World of Magic [New ESP]", "WorldofMagicNewESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorldofMagicNewESP.lua")
                    
    
addscript(9230434873,"Logitech Song Breaker Awards [Collect All Coins - Unhide All NPCS & More!]", "LogitechSongBreakerAwardsCollectAllCoinsUnhideAllNPCSMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LogitechSongBreakerAwardsCollectAllCoinsUnhideAllNPCSMore.lua")
                    
                    
addscriptexist(9225577563, "AmnestyESPSilentAimAimlockGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AmnestyESPSilentAimAimlockGUI.lua")
                    
addscriptexist(5712833750, "AnimalSimulatorFreeRadio", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimalSimulatorFreeRadio.lua")
                    
addscriptexist(7167319176, "ChicagoRemasteredAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ChicagoRemasteredAutoFarmGUI.lua")
                    
addscriptexist(8137333410, "ColorbynumberNearInstantAutoPainter", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ColorbynumberNearInstantAutoPainter.lua")
                    
addscriptexist(4410049285, "DrivingSimulatorAutoFarmDiscoverAllAreas", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DrivingSimulatorAutoFarmDiscoverAllAreas.lua")
                    
addscriptexist(9203864304, "RaiseaFloppaAutoClickAutoCollectFloppaCashMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaiseaFloppaAutoClickAutoCollectFloppaCashMore.lua")
    
addscript(4637668954,"Rensselaer County Beta [RGB Car]", "RensselaerCountyBetaRGBCar", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RensselaerCountyBetaRGBCar.lua")
                    
    
addscript(5584024582,"The Rake Hour Test [Level Multiplier]", "TheRakeHourTestLevelMultiplier", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheRakeHourTestLevelMultiplier.lua")
                    
    
addscript(2927931172,"Shinobi Battlegrounds [Infiniti Yen,Ryo]", "ShinobiBattlegroundsInfinitiYenRyo", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShinobiBattlegroundsInfinitiYenRyo.lua")
                    
    
addscript(4801349733,"Orion UI Library - Premium Bypass", "OrionUILibraryPremiumBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OrionUILibraryPremiumBypass.lua")
                    
    
addscript(8677679014,"Spirit Defenders [Multiplier Stats & Spirit Giver]", "SpiritDefendersMultiplierStatsSpiritGiver", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpiritDefendersMultiplierStatsSpiritGiver.lua")
                    
                    
addscriptexist(2569453732, "RiseofNationsGUI–AutoTrade–AutoDevelopCities", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RiseofNationsGUI–AutoTrade–AutoDevelopCities.lua")
                    
addscriptexist(7075737729, "HoopCentral6AutoTimeOpenSource", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HoopCentral6AutoTimeOpenSource.lua")
    
addscript(6793421427,"get a snack at 5am [Get All Tools]", "getasnackat5amGetAllTools", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/getasnackat5amGetAllTools.lua")
                    
                    
addscriptexist(185655149, "BloxburgJobAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxburgJobAutoFarm.lua")
                    
addscriptexist(5584024582, "TheRakeHourTestInfiniteLevels", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheRakeHourTestInfiniteLevels.lua")
                    
addscriptexist(70005410, "BloxHuntV2725AutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxHuntV2725AutoFarmGUI.lua")
                    
addscriptexist(3522803956, "DePrideIsleSanatoriumGUINoRagdollNoFallDamage", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DePrideIsleSanatoriumGUINoRagdollNoFallDamage.lua")
    
addscript(9278437733,"Elemental Pet Battles [Infinite Coins]", "ElementalPetBattlesInfiniteCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ElementalPetBattlesInfiniteCoins.lua")
                    
                    
addscriptexist(8540168650, "StandUprightRebootedItemFarmAutoFarmInvisibleMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StandUprightRebootedItemFarmAutoFarmInvisibleMore.lua")
    
addscript(6589412525,"Rail Frenzy [Auto Send Items To Wagon]", "RailFrenzyAutoSendItemsToWagon", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RailFrenzyAutoSendItemsToWagon.lua")
                    
                    
addscriptexist(6589412525, "RailFrenzyBreakEverythingGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RailFrenzyBreakEverythingGUI.lua")
    
addscript(9423668629,"Find the Teddies [Find All Teddies]", "FindtheTeddiesFindAllTeddies", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FindtheTeddiesFindAllTeddies.lua")
                    
                    
addscriptexist(185655149, "BloxburgGUIFarmAnyJob", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxburgGUIFarmAnyJob.lua")
                    
addscriptexist(301549746, "CounterBloxGodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CounterBloxGodMode.lua")
                    
addscriptexist(1240644540, "VampireHunters3VampireESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VampireHunters3VampireESP.lua")
                    
addscriptexist(8492553855, "ProjectUprightInvisible", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectUprightInvisible.lua")
                    
addscriptexist(1458767429, "ABAItadoriAutoBlockFlash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ABAItadoriAutoBlockFlash.lua")
                    
addscriptexist(1458767429, "ABANEXHUB–AutoPlayInArena–AutoTargetPlayers", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ABANEXHUB–AutoPlayInArena–AutoTargetPlayers.lua")
                    
addscriptexist(4588604953, "CriminalityWallbang", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriminalityWallbang.lua")
                    
addscriptexist(189707, "NaturalDisasterSurvivalAutoWinMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NaturalDisasterSurvivalAutoWinMore.lua")
                    
addscriptexist(7009799230, "PressureWashSimulatorLooksAwesome", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PressureWashSimulatorLooksAwesome.lua")
    
addscript(7800644383,"Untitled Hood [Set players cash to negative]", "UntitledHoodSetplayerscashtonegative", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UntitledHoodSetplayerscashtonegative.lua")
                    
    
addscript(6783611814,"Build a Boat to Survive! [GUI - Auto-Farm]", "BuildaBoattoSurviveGUIAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildaBoattoSurviveGUIAutoFarm.lua")
                    
                    
addscriptexist(6938803436, "AnimeDimensionsSimulatorGUIAutoLvlAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeDimensionsSimulatorGUIAutoLvlAutoFarmMore.lua")
                    
addscriptexist(2629642516, "BitcoinMinerAutoFarmGUIMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BitcoinMinerAutoFarmGUIMore.lua")
                    
addscriptexist(70005410, "BloxHuntTokenFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxHuntTokenFarm.lua")
                    
addscriptexist(7305309231, "TaxiBossSimpleGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TaxiBossSimpleGUI.lua")
                    
addscriptexist(9049840490, "SonicSpeedSimulatorFarmingGUIUnlockAllWorldsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulatorFarmingGUIUnlockAllWorldsMore.lua")
                    
addscriptexist(9049840490, "SonicSpeedSimulatorAutoCollectGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulatorAutoCollectGUI.lua")
    
addscript(7236421113,"Downhill Rush [Instant 10K Cash]", "DownhillRushInstant10KCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DownhillRushInstant10KCash.lua")
                    
                    
addscriptexist(5610197459, "ganguponpeoplesimulatorATM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ganguponpeoplesimulatorATM.lua")
    
addscript(6401440818,"MONOLlTH DEFENSE [Use Any Towers]", "MONOLlTHDEFENSEUseAnyTowers", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MONOLlTHDEFENSEUseAnyTowers.lua")
                    
    
addscript(6442957604,"Custom PC Tycoon [Collect all eggs]", "CustomPCTycoonCollectalleggs", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CustomPCTycoonCollectalleggs.lua")
                    
                    
addscriptexist(7167319176, "ChicagoRemasteredNorecoil", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ChicagoRemasteredNorecoil.lua")
                    
addscriptexist(6297822481, "TitanWarfareInfGas", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TitanWarfareInfGas.lua")
                    
addscriptexist(9203864304, "raiseafloppaAutoClickFloppaAutoCollectmoneyAutoBuy", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/raiseafloppaAutoClickFloppaAutoCollectmoneyAutoBuy.lua")
    
addscript(4566572536,"Vehicle Legends [Speed Boost, Rainbow color]", "VehicleLegendsSpeedBoostRainbowcolor", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VehicleLegendsSpeedBoostRainbowcolor.lua")
                    
                    
addscriptexist(8540346411, "RebirthChampionsXAutoOpenEggsUnlockAllAreasTeleportToAnyArea", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RebirthChampionsXAutoOpenEggsUnlockAllAreasTeleportToAnyArea.lua")
                    
addscriptexist(5783581, "TPSUltimateSoccerInfStaminaAutogoalShootfast", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TPSUltimateSoccerInfStaminaAutogoalShootfast.lua")
                    
addscriptexist(7083634873, "RobloxNewFPSBooster", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxNewFPSBooster.lua")
                    
addscriptexist(6193049807, "ThaHoodGetBillionsOfCashWithinSeconds", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThaHoodGetBillionsOfCashWithinSeconds.lua")
                    
addscriptexist(8540168650, "StandUprightRebootedAutoFarmStandsFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StandUprightRebootedAutoFarmStandsFarmMore.lua")
                    
addscriptexist(8916037983, "StarvingArtistsGetEasterBoost", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StarvingArtistsGetEasterBoost.lua")
                    
addscriptexist(9030362964, "FieldGoalSimulatorPerfecthit", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FieldGoalSimulatorPerfecthit.lua")
                    
addscriptexist(9049840490, "SonicSpeedSimulator15kmoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulator15kmoney.lua")
                    
addscriptexist(2693739238, "THIEFLIFESimulatorGetbestloot", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/THIEFLIFESimulatorGetbestloot.lua")
                    
addscriptexist(6778844213, "EuphoriaragdolltestingRagdollall", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EuphoriaragdolltestingRagdollall.lua")
    
addscript(3025990139,"Unboxing Simulator [Auto Farm - Auto Quest]", "UnboxingSimulatorAutoFarmAutoQuest", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UnboxingSimulatorAutoFarmAutoQuest.lua")
                    
    
addscript(5787425661,"A Lucky Day [Kill All & Give Everyone Seizures]", "ALuckyDayKillAllGiveEveryoneSeizures", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ALuckyDayKillAllGiveEveryoneSeizures.lua")
                    
                    
addscriptexist(9049840490, "SonicSpeedSimulatorLvlfarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulatorLvlfarm.lua")
                    
addscriptexist(606849621, "JailbreakInstanttpbase", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakInstanttpbase.lua")
                    
addscriptexist(5780309044, "StandsAwakeningStandFarmNpcTeleportPlaceTeleport", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StandsAwakeningStandFarmNpcTeleportPlaceTeleport.lua")
                    
addscriptexist(6679274937, "VansWorldAutoCollectCoinsAutoXpGainCompleteAllguests", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VansWorldAutoCollectCoinsAutoXpGainCompleteAllguests.lua")
    
addscript(5045567407,"Nations Roleplay [Coloring of the World]", "NationsRoleplayColoringoftheWorld", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NationsRoleplayColoringoftheWorld.lua")
                    
    
addscript(4505214429,"Soul Eater", "SoulEaterResonanceAutoFarmAutoQuestClicktp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SoulEaterResonanceAutoFarmAutoQuestClicktp.lua")
                    
    
addscript(9123917180,"Teleporter Simulator [Basic Farm]", "TeleporterSimulatorBasicFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TeleporterSimulatorBasicFarm.lua")
                    
    
addscript(9300407930,"Bot Clash [Complete All Quests]", "BotClashCompleteAllQuests", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BotClashCompleteAllQuests.lua")
                    
                    
addscriptexist(6329844902, "PiratesNewGenerationMaxLevelStats", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PiratesNewGenerationMaxLevelStats.lua")
                    
addscriptexist(5951002734, "ProjectBaki2AutoFarmFree", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectBaki2AutoFarmFree.lua")
                    
addscriptexist(9049840490, "SonicSpeedSimulatorThe1FreeAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulatorThe1FreeAutoFarmGUI.lua")
                    
addscriptexist(35397735, "ScubaDivingatQuillLakeAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ScubaDivingatQuillLakeAutoFarmGUI.lua")
                    
addscriptexist(8540168650, "StandUprightRebootedItemGrabber", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StandUprightRebootedItemGrabber.lua")
                    
addscriptexist(4522347649, "OrionFreeLIibrary–CleanestUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OrionFreeLIibrary–CleanestUI.lua")
                    
addscriptexist(5787425661, "ALuckyDayDestroyGame", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ALuckyDayDestroyGame.lua")
    
addscript(7603178367,"Chipotle Burrito Builder [Auto Farm]", "ChipotleBurritoBuilderAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ChipotleBurritoBuilderAutoFarm.lua")
                    
                    
addscriptexist(537413528, "BuildABoatForTreasureAutoBuyAutoFarmGetAllItemsFree", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureAutoBuyAutoFarmGetAllItemsFree.lua")
    
addscript(5116869569,"Doodle World [Auto Find]", "DoodleWorldAutoFind", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DoodleWorldAutoFind.lua")
                    
                    
addscriptexist(2639416308, "AceAttorneyAnnoyServer", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AceAttorneyAnnoyServer.lua")
                    
addscriptexist(8492553855, "ProjectUprightNpcFarmItemFarmStandFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectUprightNpcFarmItemFarmStandFarm.lua")
    
addscript(7186363515,"A Legacy Time [Kill Aura]", "ALegacyTimeKillAura", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ALegacyTimeKillAura.lua")
                    
                    
addscriptexist(9300407930, "BotClashGet4MillionCoinsForFree", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BotClashGet4MillionCoinsForFree.lua")
                    
addscriptexist(1224212277, "MadCityDiamondHUBAutoRob", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityDiamondHUBAutoRob.lua")
                    
addscriptexist(4042427666, "AnimeFightingSimulatorChikaraYenGenerator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightingSimulatorChikaraYenGenerator.lua")
                    
addscriptexist(5712833750, "AnimalSimulatorCollectTreasuers", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimalSimulatorCollectTreasuers.lua")
                    
addscriptexist(6677985923, "MillionaireEmpireTycoonAutoCollectMoneyAutoRebirth", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MillionaireEmpireTycoonAutoCollectMoneyAutoRebirth.lua")
    
addscript(2249346496,"Blood Moon The Tycoon [Melee Instant Kill]", "BloodMoonTheTycoonMeleeInstantKill", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloodMoonTheTycoonMeleeInstantKill.lua")
                    
                    
addscriptexist(6284583030, "PetSimulatorXAntiSteal", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAntiSteal.lua")
                    
addscriptexist(5610197459, "ganguponpeoplesimulatorMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ganguponpeoplesimulatorMoney.lua")
                    
addscriptexist(6401440818, "MONOLITHDEFENSEStatUpgradeEverything", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MONOLITHDEFENSEStatUpgradeEverything.lua")
                    
addscriptexist(623694595, "NBAPhenomSilentAIMAutoChangingPower", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NBAPhenomSilentAIMAutoChangingPower.lua")
                    
addscriptexist(5712833750, "AnimalSimulatorCollectEggs", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimalSimulatorCollectEggs.lua")
                    
addscriptexist(8146731988, "UltraPowerTycoonKillClosestPlayerOpenSource", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UltraPowerTycoonKillClosestPlayerOpenSource.lua")
    
addscript(6955924345,"Titan Clash Online [Kill Aura - Infinite Gas - God Mode & More!]", "TitanClashOnlineKillAuraInfiniteGasGodModeMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TitanClashOnlineKillAuraInfiniteGasGodModeMore.lua")
                    
                    
addscriptexist(8781849572, "StarSimulatorBetaToolReachOpenSource", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StarSimulatorBetaToolReachOpenSource.lua")
                    
addscriptexist(6403373529, "SlapBattlesTrollingGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlapBattlesTrollingGUI.lua")
                    
addscriptexist(6401440818, "MONOLITHDEFENSEUnlimitedVotes", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MONOLITHDEFENSEUnlimitedVotes.lua")
                    
addscriptexist(6847090259, "BulkedUpCollectAllTrophiesEggs", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BulkedUpCollectAllTrophiesEggs.lua")
                    
addscriptexist(3351674303, "DrivingEmpireArrestAllMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DrivingEmpireArrestAllMore.lua")
    
addscript(334218733,"Warships [GUI - Give Coins - Give Ships - Kill All & Instant Reload]", "WarshipsGUIGiveCoinsGiveShipsKillAllInstantReload", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WarshipsGUIGiveCoinsGiveShipsKillAllInstantReload.lua")
                    
                    
addscriptexist(4753520418, "TheHoodEggESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheHoodEggESP.lua")
    
addscript(8982709021,"YouTube Life [Collect All Eggs]", "YouTubeLifeCollectAllEggs", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YouTubeLifeCollectAllEggs.lua")
                    
    
addscript(6788787407,"Warrior Champions [Auto Farm GUI]", "WarriorChampionsAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WarriorChampionsAutoFarmGUI.lua")
                    
    
addscript(6125809531,"Untitled AoT [Auto Farm]", "UntitledAoTAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UntitledAoTAutoFarm.lua")
                    
                    
addscriptexist(4588604953, "CriminalityNoRecoil", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriminalityNoRecoil.lua")
    
addscript(7371240697,"Giant Dancing Simulator [Collect All Eggs]", "GiantDancingSimulatorCollectAllEggs", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GiantDancingSimulatorCollectAllEggs.lua")
                    
    
addscript(6808589067,"Shinden [Auto Meditate]", "ShindenAutoMeditate", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindenAutoMeditate.lua")
                    
                    
addscriptexist(8781849572, "StarSimulatorBetaLoopFarms–LoopConversions–UpgradeToolsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StarSimulatorBetaLoopFarms–LoopConversions–UpgradeToolsMore.lua")
                    
addscriptexist(6897226634, "TimberExpandHitboxCollectLogsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TimberExpandHitboxCollectLogsMore.lua")
                    
addscriptexist(8528736393, "BeatlandAutoFarmRobloxEvent", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeatlandAutoFarmRobloxEvent.lua")
                    
addscriptexist(6808589067, "ShindenAutoHandsing", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindenAutoHandsing.lua")
                    
addscriptexist(8146731988, "UltraPowerTycoonGetAllGearMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UltraPowerTycoonGetAllGearMore.lua")
                    
addscriptexist(8540168650, "StandUprightRebootedAntiCheatBypassOpenSource", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StandUprightRebootedAntiCheatBypassOpenSource.lua")
                    
addscriptexist(6679274937, "VansWorldAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VansWorldAutoFarm.lua")
                    
addscriptexist(7453798168, "YouTubeSimulatorXEditorAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YouTubeSimulatorXEditorAutoFarm.lua")
                    
addscriptexist(8005620792, "RobloxCasinoInfiniteChips", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxCasinoInfiniteChips.lua")
                    
addscriptexist(3101667897, "LegendsOfSpeedAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendsOfSpeedAutoFarmGUI.lua")
                    
addscriptexist(7371240697, "GiantDancingSimulatorCollectGems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GiantDancingSimulatorCollectGems.lua")
                    
addscriptexist(4588604953, "CriminalityNoSpread", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriminalityNoSpread.lua")
    
addscript(6960816467,"Untitled Door Game 2 [Get All Badges]", "UntitledDoorGame2GetAllBadges", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UntitledDoorGame2GetAllBadges.lua")
                    
                    
addscriptexist(606849621, "JailbreakInstantTeleportToCriminalBase", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakInstantTeleportToCriminalBase.lua")
                    
addscriptexist(4588604953, "CriminalityFreeESPGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriminalityFreeESPGUI.lua")
                    
addscriptexist(292439477, "PhantomForcesRageLegitInvisibleGunMods", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesRageLegitInvisibleGunMods.lua")
                    
addscriptexist(8492553855, "ProjectUprightNoPunchCooldown", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectUprightNoPunchCooldown.lua")
                    
addscriptexist(8492553855, "ProjectUprightUseAnyMove", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectUprightUseAnyMove.lua")
                    
addscriptexist(6778844213, "EuphoriaragdolltestingRagdollAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EuphoriaragdolltestingRagdollAll.lua")
    
addscript(7817016260,"Bloxston Mystery [Discover Everyones Roles]", "BloxstonMysteryDiscoverEveryonesRoles", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxstonMysteryDiscoverEveryonesRoles.lua")
                    
    
addscript(4111023553,"Deepwoken [Chest ESP, No Fog, And More]", "DeepwokenChestESPNoFogAndMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeepwokenChestESPNoFogAndMore.lua")
                    
                    
addscriptexist(3501626887, "DiceboyBringDicecoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DiceboyBringDicecoins.lua")
                    
addscriptexist(632642533, "DeadMist2BetaGrabDeadBodies", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeadMist2BetaGrabDeadBodies.lua")
    
addscript(7871169780,"bLockerman666`s Minesweeper [Find Safe Tiles And Bombs]", "bLockerman666sMinesweeperFindSafeTilesAndBombs", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/bLockerman666sMinesweeperFindSafeTilesAndBombs.lua")
                    
    
addscript(6843988672,"County Jail Roleplay [AC Bypass]", "CountyJailRoleplayACBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CountyJailRoleplayACBypass.lua")
                    
                    
addscriptexist(5045567407, "NationsRoleplayPaintEntireWorldInstantly", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NationsRoleplayPaintEntireWorldInstantly.lua")
                    
addscriptexist(5780309044, "StandsAwakeningStandFarmAutoCollectItemsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StandsAwakeningStandFarmAutoCollectItemsMore.lua")
                    
addscriptexist(6704278765, "DoloTonightConcertExperienceCollectAllEyes", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DoloTonightConcertExperienceCollectAllEyes.lua")
                    
addscriptexist(9041110505, "UnlimitedUpgradeSimulatorInfinityGems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UnlimitedUpgradeSimulatorInfinityGems.lua")
                    
addscriptexist(6297822481, "TitanWarfareInfiniteSlots", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TitanWarfareInfiniteSlots.lua")
                    
addscriptexist(2202352383, "SuperPowerTrainingSImulatorGUIAllAutoFarms", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperPowerTrainingSImulatorGUIAllAutoFarms.lua")
                    
addscriptexist(7940932746, "RobloxNotificationUILib", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxNotificationUILib.lua")
                    
addscriptexist(8302406789, "AnimeLiftingSimulatorAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeLiftingSimulatorAutoFarmGUI.lua")
    
addscript(6711745807,"My Kingdom [Infinite Money - Open Source]", "MyKingdomInfiniteMoneyOpenSource", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyKingdomInfiniteMoneyOpenSource.lua")
                    
                    
addscriptexist(662417684, "LUCKYBLOCKSBattlegroundsLuckyBlockclicktpinfitejump", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LUCKYBLOCKSBattlegroundsLuckyBlockclicktpinfitejump.lua")
                    
addscriptexist(9049840490, "SonicSpeedSimulatorGet15KCoinsEvery6Hours", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulatorGet15KCoinsEvery6Hours.lua")
                    
addscriptexist(6878438976, "DeveloperInc10KCashIn30Seconds", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeveloperInc10KCashIn30Seconds.lua")
                    
addscriptexist(386329050, "TheBlackMesaIncidentFreeGamepassGun", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheBlackMesaIncidentFreeGamepassGun.lua")
                    
addscriptexist(9049840490, "SonicSpeedSimulatorGainXpStepsByDoingNothing", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulatorGainXpStepsByDoingNothing.lua")
                    
addscriptexist(4505214429, "SoulEaterResonanceEaterFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SoulEaterResonanceEaterFarm.lua")
                    
addscriptexist(5023820864, "TradeTowerPPHAXV2GUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TradeTowerPPHAXV2GUI.lua")
                    
addscriptexist(6297822481, "TitanWarfareInfiniteGas", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TitanWarfareInfiniteGas.lua")
                    
addscriptexist(5993942214, "RushPointSilentAIM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RushPointSilentAIM.lua")
                    
addscriptexist(4566572536, "VehicleLegendsSpeedBoostSpeedBoostMultiplierRainbowCar", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VehicleLegendsSpeedBoostSpeedBoostMultiplierRainbowCar.lua")
                    
addscriptexist(6679274937, "VansWorldBMXAutoCollectCoinsAutoXpGainCompleteAllQuetstMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VansWorldBMXAutoCollectCoinsAutoXpGainCompleteAllQuetstMore.lua")
                    
addscriptexist(8549047195, "AnimeWarriorsSimulatorTeleportToTheFinalWorld", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeWarriorsSimulatorTeleportToTheFinalWorld.lua")
                    
addscriptexist(654732683, "CarCrushers2CORECONTROLGUIV2", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarCrushers2CORECONTROLGUIV2.lua")
                    
addscriptexist(6442957604, "CustomPCTycoonCollectAllEggs", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CustomPCTycoonCollectAllEggs.lua")
                    
addscriptexist(9041110505, "UnlimitedUpgradeSimulatorInfinityPowerCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UnlimitedUpgradeSimulatorInfinityPowerCoins.lua")
                    
addscriptexist(9123917180, "TeleporterSimulatorBasicAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TeleporterSimulatorBasicAutoFarm.lua")
                    
addscriptexist(9049840490, "SonicSpeedSimulatorAutoFarmCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SonicSpeedSimulatorAutoFarmCoins.lua")
                    
addscriptexist(662417684, "LUCKYBLOCKSBattlegroundsLuckyBlockRunSpeedFpsBoost", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LUCKYBLOCKSBattlegroundsLuckyBlockRunSpeedFpsBoost.lua")
                    
addscriptexist(8137333410, "PixelArtColorbynumberAutoPaint", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PixelArtColorbynumberAutoPaint.lua")
    
addscript(8823442198,"Deepwoken Battle Arena [Auto Collect]", "DeepwokenBattleArenaAutoCollect", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeepwokenBattleArenaAutoCollect.lua")
                    
                    
addscriptexist(7560156054, "ClickerSimulatorAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerSimulatorAutoFarmGUI.lua")
    
addscript(8382553377,"Boom Simulator [GUI - Auto Farm, Teleports]", "BoomSimulatorGUIAutoFarmTeleports", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BoomSimulatorGUIAutoFarmTeleports.lua")
                    
                    
addscriptexist(8781849572, "StarSimulatorBetaInfresources", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StarSimulatorBetaInfresources.lua")
                    
addscriptexist(155382109, "SurviveAndKillTheKillersInArea51InfAmmoGiveAllGunsKilleresp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurviveAndKillTheKillersInArea51InfAmmoGiveAllGunsKilleresp.lua")
    
addscript(8044403176,"Vehicle Champions [Auto Click, Auto Rebirth, Auto Upgrade]", "VehicleChampionsAutoClickAutoRebirthAutoUpgrade", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VehicleChampionsAutoClickAutoRebirthAutoUpgrade.lua")
                    
    
addscript(3725149043,"Rocket Ball [Rocket Ball No Cooldown, Sword No Cooldown]", "RocketBallRocketBallNoCooldownSwordNoCooldown", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RocketBallRocketBallNoCooldownSwordNoCooldown.lua")
                    
                    
addscriptexist(155382109, "SurviveandKilltheKillersinArea51GetAllWeaponsRefillAmmoESP", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurviveandKilltheKillersinArea51GetAllWeaponsRefillAmmoESP.lua")
    
addscript(6381829480,"King Legacy [Auto Stats, Auto Farm, Bring All Fruit]", "KingLegacyAutoStatsAutoFarmBringAllFruit", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KingLegacyAutoStatsAutoFarmBringAllFruit.lua")
                    
                    
addscriptexist(8781849572, "StarSimulatorBetaInfplanks", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StarSimulatorBetaInfplanks.lua")
    
addscript(8862273695,"Another JToH RPG [Get every item in the game]", "AnotherJToHRPGGeteveryiteminthegame", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnotherJToHRPGGeteveryiteminthegame.lua")
                    
    
addscript(8073154099,"The Intruder [Intruder detection]", "TheIntruderIntruderdetection", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheIntruderIntruderdetection.lua")
                    
                    
addscriptexist(292439477, "PhantomForcesFireRateHacks", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesFireRateHacks.lua")
                    
addscriptexist(3623096087, "MuscleLegendsAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MuscleLegendsAutoFarmGUI.lua")
                    
addscriptexist(3623096087, "MuscleLegendsAutoFarmNewGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MuscleLegendsAutoFarmNewGUI.lua")
    
addscript(8644729967,"Zone of Alienation [Kill All Mobs]", "ZoneofAlienationKillAllMobs", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZoneofAlienationKillAllMobs.lua")
                    
                    
addscriptexist(6401440818, "MONOLITHDEFENSEInfiniteTechUpgradePoints", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MONOLITHDEFENSEInfiniteTechUpgradePoints.lua")
                    
addscriptexist(5116869569, "DoodleWorldGUIAutoFarming", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DoodleWorldGUIAutoFarming.lua")
    
addscript(6555084601,"Вирус [RP] [Godmode]", "ВирусRPGodmode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ВирусRPGodmode.lua")
                    
                    
addscriptexist(8781849572, "StarSimulatorBetaInfiniteIronPlatesPlanks", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StarSimulatorBetaInfiniteIronPlatesPlanks.lua")
                    
addscriptexist(2414851778, "DungeonQuestAutoFarmAutoSkillWalkSpeed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DungeonQuestAutoFarmAutoSkillWalkSpeed.lua")
                    
addscriptexist(5116869569, "DoodleWorldAttackWildDoodlesAnywhere", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DoodleWorldAttackWildDoodlesAnywhere.lua")
                    
addscriptexist(8492553855, "ProjectUprightNewAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectUprightNewAutoFarmGUI.lua")
                    
addscriptexist(8781849572, "StarSimulatorBetaCompleteAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StarSimulatorBetaCompleteAutoFarmGUI.lua")
                    
addscriptexist(8781849572, "StarSimulatorBetaInfiniteResources", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StarSimulatorBetaInfiniteResources.lua")
                    
addscriptexist(3956818381, "NinjaLegendsGUIAutoSwingAutoBuy", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsGUIAutoSwingAutoBuy.lua")
                    
addscriptexist(30869879, "StopItSlenderGUIESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StopItSlenderGUIESP.lua")
                    
addscriptexist(8916037983, "starvingartistsAutoAdvertise", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/starvingartistsAutoAdvertise.lua")
                    
addscriptexist(2768379856, "300827SimpleESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/300827SimpleESP.lua")
                    
addscriptexist(8862273695, "AnotherJToHRPGAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnotherJToHRPGAutoFarm.lua")
                    
addscriptexist(2534724415, "EmergencyResponseLibertyCountyInfiniteStamina", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EmergencyResponseLibertyCountyInfiniteStamina.lua")
                    
addscriptexist(8044403176, "VehicleChampionsAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VehicleChampionsAutoFarmGUI.lua")
                    
addscriptexist(155382109, "SurviveandKilltheKillesrinArea51STKv71EngineGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurviveandKilltheKillesrinArea51STKv71EngineGUI.lua")
                    
addscriptexist(8073154099, "TheIntruderIntruderDetection", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheIntruderIntruderDetection.lua")
    
addscript(7708751418,"Smashing Simulator X [Auto Slash, Auto Rebirth, Auto Open Egg]", "SmashingSimulatorXAutoSlashAutoRebirthAutoOpenEgg", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SmashingSimulatorXAutoSlashAutoRebirthAutoOpenEgg.lua")
                    
                    
addscriptexist(155382109, "SurviveAndKillTheKillersInArea51GetAnOverpoweredRaygun", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurviveAndKillTheKillersInArea51GetAnOverpoweredRaygun.lua")
    
addscript(8897454112,"Pet Salon Tycoon [OP Auto Farm]", "PetSalonTycoonOPAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSalonTycoonOPAutoFarm.lua")
                    
                    
addscriptexist(5116869569, "DoodleWorldAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DoodleWorldAutoFarm.lua")
    
addscript(3210622855,"Manner's Badge Walk [Get All Sky World Badges]", "MannersBadgeWalkGetAllSkyWorldBadges", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MannersBadgeWalkGetAllSkyWorldBadges.lua")
                    
                    
addscriptexist(6778844213, "EuphoriaragdolltestingCoinFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EuphoriaragdolltestingCoinFarm.lua")
                    
addscriptexist(30869879, "StopItSlenderGodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StopItSlenderGodMode.lua")
    
addscript(6911148748,"Car Driving Indonesia [Rainbow Car & Car Speed]", "CarDrivingIndonesiaRainbowCarCarSpeed", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarDrivingIndonesiaRainbowCarCarSpeed.lua")
                    
                    
addscriptexist(6778844213, "EuphoriaragdolltestingDeathFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EuphoriaragdolltestingDeathFarm.lua")
                    
addscriptexist(6778844213, "EuphoriaragdolltestingGetTheMachineBadge", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EuphoriaragdolltestingGetTheMachineBadge.lua")
                    
addscriptexist(8884433153, "CollectAllPetsAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CollectAllPetsAutoFarm.lua")
    
addscript(5991118999,"Mowing Masters Simulator [Auto Farm, Auto Buy Bee Egg, Full Auto Rebirth]", "MowingMastersSimulatorAutoFarmAutoBuyBeeEggFullAutoRebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MowingMastersSimulatorAutoFarmAutoBuyBeeEggFullAutoRebirth.lua")
                    
                    
addscriptexist(7940932746, "ROBLOX–LeanExplosion", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ROBLOX–LeanExplosion.lua")
                    
addscriptexist(2866967438, "FishingSimulatorGUIFarming", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FishingSimulatorGUIFarming.lua")
                    
addscriptexist(3210622855, "MannersBadgeWalkGetAllCaveWorldBadges", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MannersBadgeWalkGetAllCaveWorldBadges.lua")
                    
addscriptexist(6778844213, "EuphoriaragdolltestingGetGamepassGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EuphoriaragdolltestingGetGamepassGUI.lua")
    
addscript(1417427737,"Mining Simulator [Noclip, Sell blocks, Fly]", "MiningSimulatorNoclipSellblocksFly", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulatorNoclipSellblocksFly.lua")
                    
                    
addscriptexist(1962086868, "TowerOfHellBypassAntiCheatTPToEndGetAllItemsGodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerOfHellBypassAntiCheatTPToEndGetAllItemsGodMode.lua")
                    
addscriptexist(3210622855, "MannersBadgeWalkGetAllBadgesForCaveWorld", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MannersBadgeWalkGetAllBadgesForCaveWorld.lua")
                    
addscriptexist(3210622855, "MannersBadgeWalkGetAllBadgesForSkyWorld", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MannersBadgeWalkGetAllBadgesForSkyWorld.lua")
    
addscript(8003084678,"oMega Obby Parkour 525 Stages [Infinite Prestige]", "oMegaObbyParkour525StagesInfinitePrestige", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/oMegaObbyParkour525StagesInfinitePrestige.lua")
                    
                    
addscriptexist(8003084678, "oMegaObbyParkour525StagesAutoStagesBadges", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/oMegaObbyParkour525StagesAutoStagesBadges.lua")
                    
addscriptexist(4997792989, "HOMELESSSimulatorinRussiaInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HOMELESSSimulatorinRussiaInfiniteMoney.lua")
                    
addscriptexist(8916037983, "starvingartistsFindAttrectiveServer", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/starvingartistsFindAttrectiveServer.lua")
                    
addscriptexist(8492553855, "ProjectUprightFarmStands", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectUprightFarmStands.lua")
                    
addscriptexist(5991163185, "SprayPaintAntiMuteAntiJumpscare", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SprayPaintAntiMuteAntiJumpscare.lua")
    
addscript(735030788,"Royale High [Gem Farm - Fix & Ear Rape]", "RoyaleHighGemFarmFixEarRape", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoyaleHighGemFarmFixEarRape.lua")
                    
                    
addscriptexist(7603178367, "ChipotleBurritoBuilderAutoDeliverBurritos", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ChipotleBurritoBuilderAutoDeliverBurritos.lua")
    
addscript(6551386772,"Battle Royale Simulator [Hit Box, AIMBOT, ESP]", "BattleRoyaleSimulatorHitBoxAIMBOTESP", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BattleRoyaleSimulatorHitBoxAIMBOTESP.lua")
                    
                    
addscriptexist(5670218884, "ItemasylumGiveweapons", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ItemasylumGiveweapons.lua")
                    
addscriptexist(8737602449, "PLSDONATERainbowModdedGoal", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PLSDONATERainbowModdedGoal.lua")
                    
addscriptexist(5062619730, "WarSimulatorGunMod", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WarSimulatorGunMod.lua")
                    
addscriptexist(8396586868, "AOnePieceGameAutoFarmGUIFruitHopperMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AOnePieceGameAutoFarmGUIFruitHopperMore.lua")
                    
addscriptexist(8448735476, "AnimeRiftsGUIAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeRiftsGUIAutoFarm.lua")
                    
addscriptexist(4588604953, "CriminalityEspGUINew", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriminalityEspGUINew.lua")
    
addscript(8308074824,"Meme Piece [Infinite Skill Points]", "MemePieceInfiniteSkillPoints", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MemePieceInfiniteSkillPoints.lua")
                    
                    
addscriptexist(8492553855, "ProjectUprightItemsFarmMobPlayersFarmAutoQuestMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectUprightItemsFarmMobPlayersFarmAutoQuestMore.lua")
    
addscript(5033328743,"The Scorch [Infinite Health]", "TheScorchInfiniteHealth", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheScorchInfiniteHealth.lua")
                    
                    
addscriptexist(4588604953, "CriminalityTeleportBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriminalityTeleportBypass.lua")
                    
addscriptexist(8737602449, "PLSDONATEMusicGUIDancesPackageAnimations", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PLSDONATEMusicGUIDancesPackageAnimations.lua")
                    
addscriptexist(662417684, "LUCKYBLOCKSBattlegroundsPlayersGetallgearsLuckyBlocks", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LUCKYBLOCKSBattlegroundsPlayersGetallgearsLuckyBlocks.lua")
                    
addscriptexist(3101667897, "LegendsOfSpeedAutoCollectOrbsAutoCollectGemsAutoRebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendsOfSpeedAutoCollectOrbsAutoCollectGemsAutoRebirth.lua")
                    
addscriptexist(5116869569, "DoodleWorldHealYourTeanAnywhere", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DoodleWorldHealYourTeanAnywhere.lua")
                    
addscriptexist(662417684, "LuckyBlocksBattlegroundsGUISpawnallblocks", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LuckyBlocksBattlegroundsGUISpawnallblocks.lua")
                    
addscriptexist(155615604, "PrisonLifeGUIGunModGunGiver", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLifeGUIGunModGunGiver.lua")
                    
addscriptexist(2512643572, "BubbleGumSimulatorGUIAutoFarmAutoBuy", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BubbleGumSimulatorGUIAutoFarmAutoBuy.lua")
                    
addscriptexist(5116869569, "DoodleWorldGrabAllChests", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DoodleWorldGrabAllChests.lua")
    
addscript(4456880028,"Ro Crash [Admin Panel]", "RoCrashAdminPanel", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoCrashAdminPanel.lua")
                    
    
addscript(4913331862,"Recoil Zombies [Zombie ESP & More!}", "RecoilZombiesZombieESPMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RecoilZombiesZombieESPMore.lua")
                    
                    
addscriptexist(5116869569, "DoodleWorldGeneratesGUIDs", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DoodleWorldGeneratesGUIDs.lua")
                    
addscriptexist(5116869569, "DoodleWorldHealYourTeam", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DoodleWorldHealYourTeam.lua")
    
addscript(2693023319,"Expedition Antarctica [Get 500B Coins]", "ExpeditionAntarcticaGet500BCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ExpeditionAntarcticaGet500BCoins.lua")
                    
                    
addscriptexist(7993293100, "TsunamiGameAutoWinFarmDeathsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TsunamiGameAutoWinFarmDeathsMore.lua")
    
addscript(8657732325,"World Sail [Auto Farm Enhance Level]", "WorldSailAutoFarmEnhanceLevel", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorldSailAutoFarmEnhanceLevel.lua")
                    
                    
addscriptexist(8657732325, "WorldSailBasicAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorldSailBasicAutoFarm.lua")
                    
addscriptexist(621129760, "KATIIRadioBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KATIIRadioBypass.lua")
                    
addscriptexist(1458767429, "ABARankedCoinsFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ABARankedCoinsFarm.lua")
                    
addscriptexist(2693023319, "FindTheBaconsCollectAllTheBaconsInTheServer", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FindTheBaconsCollectAllTheBaconsInTheServer.lua")
                    
addscriptexist(6284583030, "PetSimulatorXMasteryFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXMasteryFarm.lua")
    
addscript(7094672259,"Criminal Russia RP [Auto Farm]", "CriminalRussiaRPAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriminalRussiaRPAutoFarm.lua")
                    
                    
addscriptexist(2753915549, "BloxFruitsGUIMobFarmInfStam", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsGUIMobFarmInfStam.lua")
                    
addscriptexist(185655149, "WelcomeToBloxburgFreeAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WelcomeToBloxburgFreeAutoFarm.lua")
                    
addscriptexist(8781849572, "StarSimulatorBetaUnlockEveryonesLand", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StarSimulatorBetaUnlockEveryonesLand.lua")
                    
addscriptexist(3623096087, "MuscleLegendsKillLocationPirStats", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MuscleLegendsKillLocationPirStats.lua")
                    
addscriptexist(2248408710, "DestructionSimulatorAutoSellGunModsNoclip", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DestructionSimulatorAutoSellGunModsNoclip.lua")
                    
addscriptexist(4924922222, "BrookhavenHomeMenuHouseMenuPlayersMemu", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrookhavenHomeMenuHouseMenuPlayersMemu.lua")
                    
addscriptexist(8540346411, "RebirthChampionsXAutoClickAutoClaimChestsAutoBuyUpgrades", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RebirthChampionsXAutoClickAutoClaimChestsAutoBuyUpgrades.lua")
                    
addscriptexist(8357510970, "AnimePunchingSimulatorAutoClickRedeemCodesAutoRebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimePunchingSimulatorAutoClickRedeemCodesAutoRebirth.lua")
                    
addscriptexist(45146873, "TowerBattlesModdingTowerPurchasingTeleportAllZombie", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerBattlesModdingTowerPurchasingTeleportAllZombie.lua")
    
addscript(8893378293,"GRAMMY Week [All quest]", "GRAMMYWeekAllquest", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GRAMMYWeekAllquest.lua")
                    
                    
addscriptexist(8893378293, "GRAMMYWeekGetallevntitems", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GRAMMYWeekGetallevntitems.lua")
    
addscript(71315343,"Dragon Ball Rage [Auto Charge, Train energy, Auto zenkai]", "DragonBallRageAutoChargeTrainenergyAutozenkai", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBallRageAutoChargeTrainenergyAutozenkai.lua")
                    
    
addscript(5526330131,"RoPlace [Create The Void]", "RoPlaceCreateTheVoid", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoPlaceCreateTheVoid.lua")
                    
    
addscript(8787018842,"Deepwoken Battle Arena [No Cooldowns - Hide Name - Auto Souls]", "DeepwokenBattleArenaNoCooldownsHideNameAutoSouls", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeepwokenBattleArenaNoCooldownsHideNameAutoSouls.lua")
                    
                    
addscriptexist(2809202155, "YourBizarreAdventureAutoFarmTeleportsBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YourBizarreAdventureAutoFarmTeleportsBypass.lua")
                    
addscriptexist(8554378337, "WeaponFightingSimulatorAutoBossAutoGambleAutoOpenBossChest", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeaponFightingSimulatorAutoBossAutoGambleAutoOpenBossChest.lua")
                    
addscriptexist(7560156054, "ClickerSimulatorAutoClickAutoClaimGiftsAutoCollectChests", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerSimulatorAutoClickAutoClaimGiftsAutoCollectChests.lua")
                    
addscriptexist(5864786637, "InAnotherTimeKillAura", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/InAnotherTimeKillAura.lua")
    
addscript(6998582502,"Dungeon Crusaders [Auto Win]", "DungeonCrusadersAutoWin", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DungeonCrusadersAutoWin.lua")
                    
                    
addscriptexist(5023820864, "TradeTowerAutoClickAutoSellDisableAfk", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TradeTowerAutoClickAutoSellDisableAfk.lua")
                    
addscriptexist(6766156863, "StrongmanSimulatorTparena", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrongmanSimulatorTparena.lua")
    
addscript(7478757481,"Undertale", "UndertaleTimelineCollapseAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UndertaleTimelineCollapseAutoFarm.lua")
                    
                    
addscriptexist(8893378293, "GRAMMYWeekAutoCollectgrammys", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GRAMMYWeekAutoCollectgrammys.lua")
                    
addscriptexist(4855457388, "DemonfallGUIAllBossFarmOtherFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DemonfallGUIAllBossFarmOtherFarm.lua")
                    
addscriptexist(6555084601, "ВирусRPNukeGun–GiveItems–AntiCheatsBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ВирусRPNukeGun–GiveItems–AntiCheatsBypass.lua")
                    
addscriptexist(534701013, "TheLabyrinthAutoFishAutoTressMazeEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheLabyrinthAutoFishAutoTressMazeEsp.lua")
                    
addscriptexist(5490351219, "X100CLICKSClickerMadnessAutoClickAutoRebirthGamepass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/X100CLICKSClickerMadnessAutoClickAutoRebirthGamepass.lua")
                    
addscriptexist(1417427737, "MiningSimulatorOpenBuyMenuGotoCandyLandSellBlocks", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulatorOpenBuyMenuGotoCandyLandSellBlocks.lua")
                    
addscriptexist(8592863835, "MagnetSimulator2AutoFarmAutoSellAutoOpenEgg", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MagnetSimulator2AutoFarmAutoSellAutoOpenEgg.lua")
                    
addscriptexist(8232438881, "ThiefSimulatorRobFarmAutoSellATMFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThiefSimulatorRobFarmAutoSellATMFarm.lua")
                    
addscriptexist(2317712696, "TheWildWestAntiAfkGunSpeedSilentAim", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheWildWestAntiAfkGunSpeedSilentAim.lua")
                    
addscriptexist(654732683, "CarCrushers2AutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarCrushers2AutoFarm.lua")
                    
addscriptexist(6297822481, "TitanWarfareCrashServer", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TitanWarfareCrashServer.lua")
                    
addscriptexist(3956818381, "NinjaLegendsAutoSwingAutoSellAutoHoops", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsAutoSwingAutoSellAutoHoops.lua")
                    
addscriptexist(8357510970, "AnimePunchingSimulatorAutoClickAutoPracticeRedeemCodes", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimePunchingSimulatorAutoClickAutoPracticeRedeemCodes.lua")
                    
addscriptexist(6284583030, "PetSimulatorXxToolsv13", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXxToolsv13.lua")
                    
addscriptexist(7708751418, "SmashingSimulatorXFasterThrowStrongerThrow", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SmashingSimulatorXFasterThrowStrongerThrow.lua")
    
addscript(6801661790,"Roblox [Future Client]", "RobloxFutureClient", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxFutureClient.lua")
                    
                    
addscriptexist(5872075530, "AnarchyEspTeleportsUnlockRadio", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnarchyEspTeleportsUnlockRadio.lua")
                    
addscriptexist(2512643572, "BubbleGumSimulatorAutoBubblesAutoSellinfitejump", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BubbleGumSimulatorAutoBubblesAutoSellinfitejump.lua")
    
addscript(3759927663,"Zombie Strike [inf Ammo, God Mode]", "ZombieStrikeinfAmmoGodMode", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieStrikeinfAmmoGodMode.lua")
                    
                    
addscriptexist(6766156863, "StrongmanSimulatorAutoGrabAutoSellAutoOpenEgg", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrongmanSimulatorAutoGrabAutoSellAutoOpenEgg.lua")
    
addscript(4246487209,"Boss Fighting Simulator [Auto Power, Auto Sell, Boss Auto Farm]", "BossFightingSimulatorAutoPowerAutoSellBossAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BossFightingSimulatorAutoPowerAutoSellBossAutoFarm.lua")
                    
                    
addscriptexist(8592863835, "MagnetSimulator2TeleportCoinsToYouAutoSellAntiAfk", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MagnetSimulator2TeleportCoinsToYouAutoSellAntiAfk.lua")
    
addscript(1401417393,"Ragdoll System Test [WalkSpeed, Punch Aura, Anti Ban]", "RagdollSystemTestWalkSpeedPunchAuraAntiBan", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RagdollSystemTestWalkSpeedPunchAuraAntiBan.lua")
                    
                    
addscriptexist(6284583030, "PetSimulatorXGemFarmChestFarmAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXGemFarmChestFarmAutoFarm.lua")
                    
addscriptexist(6381829480, "KingLegacyAutoFarmAutoSeaKingBringAllFruit", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KingLegacyAutoFarmAutoSeaKingBringAllFruit.lua")
    
addscript(2483973525,"Demon Slayer Burning Ashes [Auto Farm & More!]", "DemonSlayerBurningAshesAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DemonSlayerBurningAshesAutoFarmMore.lua")
                    
                    
addscriptexist(4954752502, "TowerOfMiseryAutocollectgoldnuggets", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerOfMiseryAutocollectgoldnuggets.lua")
                    
addscriptexist(4490140733, "MyRestaurantXPFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyRestaurantXPFarm.lua")
                    
addscriptexist(1962086868, "TowerofHellAutoFarmGodModeRemoveKillParts", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofHellAutoFarmGodModeRemoveKillParts.lua")
                    
addscriptexist(8554378337, "WeaponFightingSimulatorCollectRewardsФutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeaponFightingSimulatorCollectRewardsФutoFarm.lua")
                    
addscriptexist(8396586868, "A0nePieceGameAutoSkillAutoFarmAutoPunch", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/A0nePieceGameAutoSkillAutoFarmAutoPunch.lua")
    
addscript(6384825976,"SCP-3008 [Esp]", "SCP3008Esp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SCP3008Esp.lua")
                    
                    
addscriptexist(735030788, "RoyaleHighEggHunt", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoyaleHighEggHunt.lua")
                    
addscriptexist(6403373529, "SlapBattlesSlapAura", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlapBattlesSlapAura.lua")
    
addscript(6170705260,"Blending Simulator 2 [Auto Farm, Arena Tp, Tp home]", "BlendingSimulator2AutoFarmArenaTpTphome", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BlendingSimulator2AutoFarmArenaTpTphome.lua")
                    
                    
addscriptexist(6998582502, "DungeonCrusadersKillAuraFpsBoostWalkSpeed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DungeonCrusadersKillAuraFpsBoostWalkSpeed.lua")
                    
addscriptexist(7817016260, "BloxstonEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxstonEsp.lua")
                    
addscriptexist(2788229376, "DaHoodCollectitems", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodCollectitems.lua")
                    
addscriptexist(606849621, "JailbreakkillAuraAutoFarmCollectairdrops", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakkillAuraAutoFarmCollectairdrops.lua")
                    
addscriptexist(6284583030, "PetSimulatorXMiniFarmingGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXMiniFarmingGUI.lua")
                    
addscriptexist(3527629287, "BIGPaintballKillAllOpenSource", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BIGPaintballKillAllOpenSource.lua")
    
addscript(2745661925,"Jump Over The Walls [Auto Farm & More!]", "JumpOverTheWallsAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JumpOverTheWallsAutoFarmMore.lua")
                    
                    
addscriptexist(6783611814, "BuildaBoattoSurvive24KGOLDNEvent", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildaBoattoSurvive24KGOLDNEvent.lua")
                    
addscriptexist(6961824067, "RobloxFlingTarget", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxFlingTarget.lua")
                    
addscriptexist(292439477, "PhantomForcesSkinediting", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesSkinediting.lua")
    
addscript(221718525,"Ninja Tycoon [Auto Click]", "NinjaTycoonAutoClick", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaTycoonAutoClick.lua")
                    
    
addscript(6683744559,"Fighters EX [Spoof username]", "FightersEXSpoofusername", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FightersEXSpoofusername.lua")
                    
                    
addscriptexist(8603729161, "walk50000studsfornothingAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/walk50000studsfornothingAutoFarm.lua")
    
addscript(6186926816,"Tapping Kingdom [Inf pet storage]", "TappingKingdomInfpetstorage", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingKingdomInfpetstorage.lua")
                    
                    
addscriptexist(654732683, "CarCrusher2CoreControlGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarCrusher2CoreControlGUI.lua")
                    
addscriptexist(4111023553, "DeepwokenAntiAcid", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeepwokenAntiAcid.lua")
                    
addscriptexist(2753915549, "BloxFruitsAutoFarmBoneFarmBossDropFruit", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsAutoFarmBoneFarmBossDropFruit.lua")
    
addscript(4811576324,"Totally Accurate Gun Simulator [Kill All]", "TotallyAccurateGunSimulatorKillAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TotallyAccurateGunSimulatorKillAll.lua")
                    
                    
addscriptexist(536102540, "DBZFinalStandAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DBZFinalStandAutoFarm.lua")
                    
addscriptexist(5310653431, "RobloxStreamSniper", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxStreamSniper.lua")
                    
addscriptexist(6667701234, "FateXeroTPallitems", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FateXeroTPallitems.lua")
                    
addscriptexist(648362523, "BreakingPointSilentAimAlwaysHitGunSlinger", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BreakingPointSilentAimAlwaysHitGunSlinger.lua")
                    
addscriptexist(2809202155, "YourBizarreAdventureInvis", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YourBizarreAdventureInvis.lua")
    
addscript(9689546964,"Roblox [Menu 2016]", "RobloxMenu2016", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxMenu2016.lua")
                    
                    
addscriptexist(6998582502, "DungeonCrusadersAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DungeonCrusadersAutoFarm.lua")
    
addscript(6821114498,"Demon Slayer", "DemonSlayerFinalConquestGiveweaponsGivebreathingsGivefinalselections", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DemonSlayerFinalConquestGiveweaponsGivebreathingsGivefinalselections.lua")
                    
                    
addscriptexist(6737970321, "LivetopiaKickPlayerRagdollplayerHeadAmongUs", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LivetopiaKickPlayerRagdollplayerHeadAmongUs.lua")
                    
addscriptexist(735030788, "RoyaleHighGemFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoyaleHighGemFarm.lua")
                    
addscriptexist(8396586868, "A0nepiecegameDupe", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/A0nepiecegameDupe.lua")
    
addscript(8365905206,"Untitled Tag Game [Coin Auto-Collector]", "UntitledTagGameCoinAutoCollector", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UntitledTagGameCoinAutoCollector.lua")
                    
                    
addscriptexist(6783611814, "BuildaBoattoSurviveBagde", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildaBoattoSurviveBagde.lua")
    
addscript(4499822233,"Star Wars Bounty Hunters Outer Rim [Kill All, Infinity Credits & Kill All Bounties]", "StarWarsBountyHuntersOuterRimKillAllInfinityCreditsKillAllBounties", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StarWarsBountyHuntersOuterRimKillAllInfinityCreditsKillAllBounties.lua")
                    
                    
addscriptexist(4954096313, "FieldTripZGodmodeAllandYouselfKillZombiesEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FieldTripZGodmodeAllandYouselfKillZombiesEsp.lua")
    
addscript(8099517179,"Color Fling [Auto Farm]", "ColorFlingAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ColorFlingAutoFarm.lua")
                    
    
addscript(3144588566,"The Lost Land [Auto Farm Ores - Pickup Stuff]", "TheLostLandAutoFarmOresPickupStuff", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheLostLandAutoFarmOresPickupStuff.lua")
                    
                    
addscriptexist(8396586868, "A0nePieceGameAutoFarmAutoSkillAutofergruit", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/A0nePieceGameAutoFarmAutoSkillAutofergruit.lua")
                    
addscriptexist(536102540, "DragonBallAutoQuestAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBallAutoQuestAutoFarm.lua")
    
addscript(5327880096,"Online Business Simulator 2 [Auto work online]", "OnlineBusinessSimulator2Autoworkonline", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OnlineBusinessSimulator2Autoworkonline.lua")
                    
                    
addscriptexist(189707, "NaturalDisasterSurvivalIncreasesthechancesofsurvival", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NaturalDisasterSurvivalIncreasesthechancesofsurvival.lua")
                    
addscriptexist(7708751418, "SmashingSimulatorXobjectmod", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SmashingSimulatorXobjectmod.lua")
    
addscript(8892207911,"Ragdoll Engine [Push All]", "RagdollEnginePushAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RagdollEnginePushAll.lua")
                    
                    
addscriptexist(5327880096, "OnlineBusinessSimulator2Autodeliverycrate", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OnlineBusinessSimulator2Autodeliverycrate.lua")
                    
addscriptexist(7800644383, "UntitledHoodAntiCheatBypass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UntitledHoodAntiCheatBypass.lua")
    
addscript(340809482,"Limited Simulator [Crash All, Auto Sell, Auto Buy]", "LimitedSimulatorCrashAllAutoSellAutoBuy", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LimitedSimulatorCrashAllAutoSellAutoBuy.lua")
                    
    
addscript(6558291063,"Would You Rather 2 [Auto Farm Coins – Vip Room & More]", "WouldYouRather2AutoFarmCoins–VipRoomMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WouldYouRather2AutoFarmCoins–VipRoomMore.lua")
                    
    
addscript(5229285987,"V4 Air Force Academy [Kill All - Loop Kill & Click Kill]", "V4AirForceAcademyKillAllLoopKillClickKill", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/V4AirForceAcademyKillAllLoopKillClickKill.lua")
                    
                    
addscriptexist(7009799230, "PressureWashSimulatorAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PressureWashSimulatorAutoFarmGUI.lua")
                    
addscriptexist(8884433153, "CollectAllPetsAutoQuestAutoCollectCoinsAutobuypets", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CollectAllPetsAutoQuestAutoCollectCoinsAutobuypets.lua")
                    
addscriptexist(192800, "WorkAtaPizzaPlaceAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorkAtaPizzaPlaceAutoFarm.lua")
                    
addscriptexist(1537690962, "BeeSwarmSimulatorGUIAutoFarmMuchMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeeSwarmSimulatorGUIAutoFarmMuchMore.lua")
    
addscript(5736409216,"Mall Tycoon [Auto Collect, Auto Buy, Auto rebirth]", "MallTycoonAutoCollectAutoBuyAutorebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MallTycoonAutoCollectAutoBuyAutorebirth.lua")
                    
                    
addscriptexist(659222129, "Swordburst2FreeGUIAutoFarmMoreOpenSourse", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Swordburst2FreeGUIAutoFarmMoreOpenSourse.lua")
    
addscript(4934471106,"My Hero Mania [GUI - Mob Auto Farm - Auto Quest]", "MyHeroManiaGUIMobAutoFarmAutoQuest", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyHeroManiaGUIMobAutoFarmAutoQuest.lua")
                    
                    
addscriptexist(8396586868, "A0nePieceGameAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/A0nePieceGameAutoFarm.lua")
    
addscript(8950979693,"Anime Rebirth Simulator [Auto Click, Auto Attack Npc, Suto Buy Dispenser]", "AnimeRebirthSimulatorAutoClickAutoAttackNpcSutoBuyDispenser", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeRebirthSimulatorAutoClickAutoAttackNpcSutoBuyDispenser.lua")
                    
                    
addscriptexist(8377686524, "UndertaleLastResetTpEvent", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UndertaleLastResetTpEvent.lua")
    
addscript(34623863,"Roblox [WalkSpeed]", "RobloxWalkSpeed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxWalkSpeed.lua")
                    
    
addscript(4599968871,"Tower Of Hell Easy [Infinite Money]", "TowerOfHellEasyInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerOfHellEasyInfiniteMoney.lua")
                    
                    
addscriptexist(6667701234, "FateXeroSkinFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FateXeroSkinFarm.lua")
    
addscript(6078267880,"Tower Of Hell Easy [Inf Money]", "TowerOfHellEasyInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerOfHellEasyInfMoney.lua")
                    
                    
addscriptexist(6494523288, "BladeQuestAutoFarmKillAuraAutoRewards", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BladeQuestAutoFarmKillAuraAutoRewards.lua")
                    
addscriptexist(537413528, "BuildABoatForTreasureAutoFarmGodModeWaterAutoCommonChests", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureAutoFarmGodModeWaterAutoCommonChests.lua")
                    
addscriptexist(8897454112, "PetSalonTycoonInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSalonTycoonInfMoney.lua")
                    
addscriptexist(4042427666, "AnimeFightingSimulatorAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightingSimulatorAutoFarmGUI.lua")
    
addscript(5171093784,"Don’t Press The Button 4 [Auto Win – Auto Press – Auto Coins]", "Don’tPressTheButton4AutoWin–AutoPress–AutoCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Don’tPressTheButton4AutoWin–AutoPress–AutoCoins.lua")
                    
    
addscript(1282541750,"Would You Rather 2 [Coins Farm]", "WouldYouRather2CoinsFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WouldYouRather2CoinsFarm.lua")
                    
    
addscript(8479386309,"Egg Hunt 2022 Lost in Time [Collect All Coins & More!]", "EggHunt2022LostinTimeCollectAllCoinsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EggHunt2022LostinTimeCollectAllCoinsMore.lua")
                    
    
addscript(6561788350,"SPLIX UI LIB – Free To Use – New UI 2022", "SPLIXUILIB–FreeToUse–NewUI2022", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SPLIXUILIB–FreeToUse–NewUI2022.lua")
                    
                    
addscriptexist(7419509075, "cartridearoundusedcarbatterySpawnCartsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/cartridearoundusedcarbatterySpawnCartsMore.lua")
    
addscript(8639059522,"Magnifying Simulator [Damage Multiplier]", "MagnifyingSimulatorDamageMultiplier", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MagnifyingSimulatorDamageMultiplier.lua")
                    
                    
addscriptexist(1224212277, "MadCityInfiniteXpGetToLevel100In2Hours", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityInfiniteXpGetToLevel100In2Hours.lua")
                    
addscriptexist(7480222488, "RobloxSkeletonEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxSkeletonEsp.lua")
                    
addscriptexist(1240644540, "VampireHunters3DNATestEveryone", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VampireHunters3DNATestEveryone.lua")
                    
addscriptexist(8377686524, "UndertaleLastResetAllWeapons", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UndertaleLastResetAllWeapons.lua")
                    
addscriptexist(8377686524, "UndertaleLastResetInstaKillEverythingDOESNTWORKWITHBOSSPHASES", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UndertaleLastResetInstaKillEverythingDOESNTWORKWITHBOSSPHASES.lua")
                    
addscriptexist(7800644383, "UntitledHoodLettuceAutoFarmFast", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UntitledHoodLettuceAutoFarmFast.lua")
                    
addscriptexist(6667701234, "FateXeroTeleportAllItems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FateXeroTeleportAllItems.lua")
    
addscript(8300860655,"Warfronts (BETA) [Kill Everyone / Kill All Enemies]", "WarfrontsBETAKillEveryoneKillAllEnemies", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WarfrontsBETAKillEveryoneKillAllEnemies.lua")
                    
                    
addscriptexist(7336302630, "ProjectDeltaAutoLoot–LootAnywhere", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectDeltaAutoLoot–LootAnywhere.lua")
                    
addscriptexist(8639059522, "MagnifyingSimulatorGUIAutoOpenBoxAutoCollectOrbsAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MagnifyingSimulatorGUIAutoOpenBoxAutoCollectOrbsAutoFarm.lua")
                    
addscriptexist(4111023553, "DEEPWOKENEnchantSniper", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DEEPWOKENEnchantSniper.lua")
                    
addscriptexist(8811271345, "BalancedCraftwarsOverhaulGUIMobFarmOreFarmPlayersKill", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BalancedCraftwarsOverhaulGUIMobFarmOreFarmPlayersKill.lua")
    
addscript(6067142556,"Roblox [Fix Bug]", "RobloxFixBug", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxFixBug.lua")
                    
                    
addscriptexist(6677985923, "MillionaireEmpireTycoonInfCash", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MillionaireEmpireTycoonInfCash.lua")
    
addscript(7114303730,"Dragon Orbz [Auto FArm, Auto Quest, Auto Points]", "DragonOrbzAutoFArmAutoQuestAutoPoints", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonOrbzAutoFArmAutoQuestAutoPoints.lua")
                    
    
addscript(7543421878,"Insult O Matic - Auto Insult Generator", "InsultOMaticAutoInsultGenerator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/InsultOMaticAutoInsultGenerator.lua")
                    
                    
addscriptexist(6558291063, "Wouldyourather2AutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Wouldyourather2AutoFarm.lua")
    
addscript(8110180444,"Strong Pet Simulator [Auto Farm GUI]", "StrongPetSimulatorAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrongPetSimulatorAutoFarmGUI.lua")
                    
                    
addscriptexist(6442957604, "CustomPCTycoonAutoPCBuildAndSell", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CustomPCTycoonAutoPCBuildAndSell.lua")
                    
addscriptexist(6442957604, "CustomPCTycoonAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CustomPCTycoonAutoFarm.lua")
                    
addscriptexist(7114303730, "DragonOrbzAutoFarmAutoQuestMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonOrbzAutoFarmAutoQuestMore.lua")
    
addscript(7198676364,"Climb a Rainbow Pop it [Auto Farm]", "ClimbaRainbowPopitAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClimbaRainbowPopitAutoFarm.lua")
                    
    
addscript(3295514368,"Sandhurst Military Academy [Click kill, loop kill, Effecting Me]", "SandhurstMilitaryAcademyClickkillloopkillEffectingMe", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SandhurstMilitaryAcademyClickkillloopkillEffectingMe.lua")
                    
    
addscript(8365063484,"Miami Drive [Inf Money]", "MiamiDriveInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiamiDriveInfMoney.lua")
                    
                    
addscriptexist(6125809531, "UntitledAttackOnTitanMISSIONAUTOFARM", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UntitledAttackOnTitanMISSIONAUTOFARM.lua")
                    
addscriptexist(8377686524, "UndertaleLastResetGodmode", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UndertaleLastResetGodmode.lua")
                    
addscriptexist(5108587039, "PalmRidgeBetaAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PalmRidgeBetaAutoFarm.lua")
                    
addscriptexist(6808416928, "DDAYAimbotESPMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DDAYAimbotESPMore.lua")
                    
addscriptexist(292439477, "PhantomForcesSnipeHead", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesSnipeHead.lua")
                    
addscriptexist(6125809531, "UntitledAttackOnTitanAutoFArmKillAuraInfGas", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UntitledAttackOnTitanAutoFArmKillAuraInfGas.lua")
                    
addscriptexist(6284583030, "PetSimulatorXAutoEnchant", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoEnchant.lua")
                    
addscriptexist(8110180444, "StrongPetSimulatorAutoCarryAutoeggInstantTrain", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrongPetSimulatorAutoCarryAutoeggInstantTrain.lua")
    
addscript(4689179508,"Project Ghoul [Auto Spin]", "ProjectGhoulAutoSpin", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectGhoulAutoSpin.lua")
                    
                    
addscriptexist(3017870574, "2PlayerEvolutionTycoonAutopickup", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/2PlayerEvolutionTycoonAutopickup.lua")
                    
addscriptexist(8357510970, "AnimePunchingSimulatorAutoClickAutoBestheroAutotrain", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimePunchingSimulatorAutoClickAutoBestheroAutotrain.lua")
    
addscript(8661265102,"Clicker Simulator [Auto Click]", "ClickerSimulatorAutoClick", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerSimulatorAutoClick.lua")
                    
                    
addscriptexist(4195834406, "DragonBallOnlineGenerationsPlayerKillAuraServerHopTeleportToBosses", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBallOnlineGenerationsPlayerKillAuraServerHopTeleportToBosses.lua")
                    
addscriptexist(6494523288, "BladeQuestAutofarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BladeQuestAutofarm.lua")
                    
addscriptexist(648362523, "BreakingPointAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BreakingPointAutoFarm.lua")
    
addscript(7655489843,"Anime Battlegrounds X [Punch Aura - Infinite Stamina - No Cooldown & More!]", "AnimeBattlegroundsXPunchAuraInfiniteStaminaNoCooldownMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeBattlegroundsXPunchAuraInfiniteStaminaNoCooldownMore.lua")
                    
                    
addscriptexist(654732683, "CarCrushers2GUIAtutoFarmVehicleStats", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarCrushers2GUIAtutoFarmVehicleStats.lua")
                    
addscriptexist(4111023553, "DeepwokenSunshineV3UpdatedOP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeepwokenSunshineV3UpdatedOP.lua")
                    
addscriptexist(6297822481, "TitanWarfareEnhancedDamage", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TitanWarfareEnhancedDamage.lua")
                    
addscriptexist(4580204640, "SurvivetheKillerAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurvivetheKillerAutoFarm.lua")
                    
addscriptexist(4996049426, "AllStarTowerDefenseAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AllStarTowerDefenseAutoFarm.lua")
                    
addscriptexist(4616652839, "ShindoLifeAutoSpinAutoRejoin", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoLifeAutoSpinAutoRejoin.lua")
                    
addscriptexist(1537690962, "BeeSwarmSimulatorRedeemCodesGetBoostsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeeSwarmSimulatorRedeemCodesGetBoostsMore.lua")
                    
addscriptexist(8232438881, "ThiefSimulatorAutoRobNPC–AutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThiefSimulatorAutoRobNPC–AutoFarmMore.lua")
                    
addscriptexist(8232438881, "ThiefSimulatorMoneyFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThiefSimulatorMoneyFarm.lua")
                    
addscriptexist(1345139196, "TreasureHuntSimulatorAutoFarmChestsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TreasureHuntSimulatorAutoFarmChestsMore.lua")
    
addscript(6582467377,"Vanity [Aimbot]", "VanityAimbot", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VanityAimbot.lua")
                    
                    
addscriptexist(9945521676, "Roblox–VoiceChatSPYV1Script", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Roblox–VoiceChatSPYV1Script.lua")
                    
addscriptexist(292439477, "PhantomForcesHitBox", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesHitBox.lua")
    
addscript(8585910608,"Paintball Wars [Gun Mod]", "PaintballWarsGunMod", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PaintballWarsGunMod.lua")
                    
    
addscript(3834081103,"Roblox– Toolspy – SPY On Palayers Tools", "Roblox–Toolspy–SPYOnPalayersTools", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Roblox–Toolspy–SPYOnPalayersTools.lua")
                    
                    
addscriptexist(7285447838, "TokyoSagaNoCooldownsForEverythingShowHitboxInfiniteHunger", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TokyoSagaNoCooldownsForEverythingShowHitboxInfiniteHunger.lua")
    
addscript(3102144307,"Anime Clickers Simulator [Auto Pick Up Scavenger Shards]", "AnimeClickersSimulatorAutoPickUpScavengerShards", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeClickersSimulatorAutoPickUpScavengerShards.lua")
                    
                    
addscriptexist(6582467377, "VanityDeleteTool", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VanityDeleteTool.lua")
    
addscript(8834250772,"Attack Simulator [Auto Farm]", "AttackSimulatorAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AttackSimulatorAutoFarm.lua")
                    
    
addscript(8381567809,"Ninja Star Simulator [Auto Farm & Auto Collect - Basic Auto Farm]", "NinjaStarSimulatorAutoFarmAutoCollectBasicAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaStarSimulatorAutoFarmAutoCollectBasicAutoFarm.lua")
                    
                    
addscriptexist(8232438881, "ThiefSimulatorAutoRobAutoSellMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThiefSimulatorAutoRobAutoSellMore.lua")
                    
addscriptexist(6494523288, "BladeQuestAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BladeQuestAutoFarm.lua")
    
addscript(8584121669,"Pet Simulator X Fan Made [Infinite Gems]", "PetSimulatorXFanMadeInfiniteGems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXFanMadeInfiniteGems.lua")
                    
                    
addscriptexist(8584121669, "PetSimulatorXFanMadeInfiniteCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXFanMadeInfiniteCoins.lua")
                    
addscriptexist(7797478022, "BrokenBonesSimulatorInfiniteCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrokenBonesSimulatorInfiniteCash.lua")
    
addscript(5771467270,"TTD 3 [AntiCheat Bypass]", "TTD3AntiCheatBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TTD3AntiCheatBypass.lua")
                    
                    
addscriptexist(8260276694, "AbilityWarsGUIKillAllMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AbilityWarsGUIKillAllMore.lua")
    
addscript(5130498426,"AoT:Insertplayground [OP Admin Power]", "AoTInsertplaygroundOPAdminPower", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AoTInsertplaygroundOPAdminPower.lua")
                    
    
addscript(8966584990,"Orthoxia Alpha [GodMode]", "OrthoxiaAlphaGodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OrthoxiaAlphaGodMode.lua")
                    
                    
addscriptexist(4954752502, "TowerofMiseryAutoWinTeleportToWinnerRoom", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofMiseryAutoWinTeleportToWinnerRoom.lua")
                    
addscriptexist(7305309231, "TaxiBossINFINITEMONEYFARMSCRIPT100KIN50SECONDS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TaxiBossINFINITEMONEYFARMSCRIPT100KIN50SECONDS.lua")
                    
addscriptexist(8069117419, "DemonSoulSoulFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DemonSoulSoulFarm.lua")
                    
addscriptexist(6728870912, "WorldofStandsDemoInfiniteGoldVampMasks", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorldofStandsDemoInfiniteGoldVampMasks.lua")
                    
addscriptexist(286090429, "ArsenalGunMods", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalGunMods.lua")
                    
addscriptexist(6284583030, "PetSimulatorXSCAMSCRIPTInfiniteGems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXSCAMSCRIPTInfiniteGems.lua")
    
addscript(8697536518,"Pet Simulator Z [Infinite Money]", "PetSimulatorZInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorZInfiniteMoney.lua")
                    
                    
addscriptexist(8232438881, "ThiefSimulatorGUIAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThiefSimulatorGUIAutoFarm.lua")
                    
addscriptexist(4581966615, "AnomicMoneyGenerator50KPerSec", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnomicMoneyGenerator50KPerSec.lua")
                    
addscriptexist(6953291455, "EatingSimulatorAutoEat", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EatingSimulatorAutoEat.lua")
    
addscript(4375458071,"Elemental Grind Game [Auto Farm]", "ElementalGrindGameAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ElementalGrindGameAutoFarm.lua")
                    
                    
addscriptexist(6284583030, "PetSimulatorXBKGUIAutoFarmAutoOpenMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXBKGUIAutoFarmAutoOpenMore.lua")
                    
addscriptexist(8260276694, "AbilityWarsKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AbilityWarsKillAll.lua")
    
addscript(2971329387,"Cooks Burger [Toggle All Doors]", "CooksBurgerToggleAllDoors", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CooksBurgerToggleAllDoors.lua")
                    
                    
addscriptexist(109814071, "MedievalWarfareReforgedGUIGameKiller", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MedievalWarfareReforgedGUIGameKiller.lua")
    
addscript(7951464846,"Penguin Tycoon [Auto Fish]", "PenguinTycoonAutoFish", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PenguinTycoonAutoFish.lua")
                    
                    
addscriptexist(1962086868, "TowerofHellAutoWinGodmodeRemoveKillparts", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofHellAutoWinGodmodeRemoveKillparts.lua")
    
addscript(7256524608,"Streaming Simulator [Top Chair]", "StreamingSimulatorTopChair", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StreamingSimulatorTopChair.lua")
                    
                    
addscriptexist(7256524608, "StreamingSimulatorGamaPass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StreamingSimulatorGamaPass.lua")
                    
addscriptexist(7256524608, "StreamingSimulatorInfMoneyunlockallislands", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StreamingSimulatorInfMoneyunlockallislands.lua")
                    
addscriptexist(6284583030, "PetSimulatorXAutohatch", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutohatch.lua")
                    
addscriptexist(7560156054, "ClickerSimulatorAutoClickAutoCollectChetsAutoBuyJumps", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerSimulatorAutoClickAutoCollectChetsAutoBuyJumps.lua")
                    
addscriptexist(7256524608, "StreamingSimulatorUFOCamera", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StreamingSimulatorUFOCamera.lua")
                    
addscriptexist(6953291455, "EatingSimulatorAutoClickAutoSellForselocation", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EatingSimulatorAutoClickAutoSellForselocation.lua")
    
addscript(7896264844,"Find the Markers [Marker Esp, Tp random Marker]", "FindtheMarkersMarkerEspTprandomMarker", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FindtheMarkersMarkerEspTprandomMarker.lua")
                    
    
addscript(7548385157,"Penguin Tycoon [Auto Farm]", "PenguinTycoonAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PenguinTycoonAutoFarm.lua")
                    
                    
addscriptexist(7256524608, "StreamingSimulatorInfenergy", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StreamingSimulatorInfenergy.lua")
                    
addscriptexist(6284583030, "PetSimulatorXDupe", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXDupe.lua")
                    
addscriptexist(7256524608, "StreamingSimulatorTrigonComputer", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StreamingSimulatorTrigonComputer.lua")
                    
addscriptexist(7256524608, "StreamingSimulatorTeslaMonitor", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StreamingSimulatorTeslaMonitor.lua")
                    
addscriptexist(662417684, "LuckyBlockBattlegroundsNEWGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LuckyBlockBattlegroundsNEWGUI.lua")
    
addscript(6505994717,"Epic Egg Hunt 2021 [Collect All Eggs]", "EpicEggHunt2021CollectAllEggs", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EpicEggHunt2021CollectAllEggs.lua")
                    
                    
addscriptexist(7800644383, "UntitledHoodSilentAIMAimBot", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UntitledHoodSilentAIMAimBot.lua")
    
addscript(331811267,"Innovation Inc. Spaceship [Crash Server]", "InnovationIncSpaceshipCrashServer", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/InnovationIncSpaceshipCrashServer.lua")
                    
    
addscript(7150360576,"A Bizarre Village [Kill All]", "ABizarreVillageKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ABizarreVillageKillAll.lua")
                    
                    
addscriptexist(9945521676, "RobloxChatBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxChatBypass.lua")
                    
addscriptexist(2629642516, "BitcoinMinerAutoSnowFlakeAutoOvetclockAutoCrates", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BitcoinMinerAutoSnowFlakeAutoOvetclockAutoCrates.lua")
                    
addscriptexist(6055959032, "JailbirdBanBypass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbirdBanBypass.lua")
                    
addscriptexist(2317712696, "TheWildWestESPFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheWildWestESPFarmMore.lua")
                    
addscriptexist(621129760, "KATSilentAIMSnaplines", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KATSilentAIMSnaplines.lua")
                    
addscriptexist(7127407851, "AttackonTitanEvolutionUnlockAllGamepassKillAuraMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AttackonTitanEvolutionUnlockAllGamepassKillAuraMore.lua")
    
addscript(5009679035,"carry people simulator 2 [GUI - Grab Aura]", "carrypeoplesimulator2GUIGrabAura", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/carrypeoplesimulator2GUIGrabAura.lua")
                    
                    
addscriptexist(8317588085, "BlockTycoonInfiniteBlocks", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BlockTycoonInfiniteBlocks.lua")
                    
addscriptexist(3101667897, "LegendsOfSpeedAutoFarmUtilitesMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendsOfSpeedAutoFarmUtilitesMore.lua")
    
addscript(5000143962,"SPACE SAILORS [Auto Ore Farm]", "SPACESAILORSAutoOreFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SPACESAILORSAutoOreFarm.lua")
                    
                    
addscriptexist(7655489843, "AnimeBattlegroundsXX1000AbilityDamageAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeBattlegroundsXX1000AbilityDamageAutoFarmMore.lua")
    
addscript(156149963,"Car Crash Simulator [Fast Car]", "CarCrashSimulatorFastCar", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarCrashSimulatorFastCar.lua")
                    
    
addscript(566399244,"Elemental Battlegrounds [Auto Farm]", "ElementalBattlegroundsAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ElementalBattlegroundsAutoFarm.lua")
                    
                    
addscriptexist(8540346411, "RebirthChampionsXAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RebirthChampionsXAutoFarm.lua")
                    
addscriptexist(8592863835, "MagnetSimulator2AutoFarmInfiniteCoinsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MagnetSimulator2AutoFarmInfiniteCoinsMore.lua")
                    
addscriptexist(5712833750, "AnimalSimulatorEXPFarmUnlockMostAnimals", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimalSimulatorEXPFarmUnlockMostAnimals.lua")
                    
addscriptexist(6284583030, "PetSimulatorXDupeScript", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXDupeScript.lua")
                    
addscriptexist(2413927524, "TheRakeRemasteredGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheRakeRemasteredGUI.lua")
    
addscript(3436903748,"Squadron [Auto Farm]", "SquadronAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SquadronAutoFarm.lua")
                    
                    
addscriptexist(4169490976, "MortemMetallumNuke", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MortemMetallumNuke.lua")
                    
addscriptexist(306964494, "LoomianLegacyFreeAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LoomianLegacyFreeAutoFarm.lua")
    
addscript(7107498084,"Anime Battle Tycoon [Auto Collect Cash, God Mode, Infite Jump]", "AnimeBattleTycoonAutoCollectCashGodModeInfiteJump", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeBattleTycoonAutoCollectCashGodModeInfiteJump.lua")
                    
    
addscript(5546255721,"Rebirth Champions [Auto Click, Unlock GamePasses, Craft All Pets]", "RebirthChampionsAutoClickUnlockGamePassesCraftAllPets", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RebirthChampionsAutoClickUnlockGamePassesCraftAllPets.lua")
                    
                    
addscriptexist(8834250772, "AttackSimulatorAutoAttackSpawnAutoBuyWeaponsAutoCollectChests", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AttackSimulatorAutoAttackSpawnAutoBuyWeaponsAutoCollectChests.lua")
                    
addscriptexist(2727067538, "WorldZeroKillAuraAutoFeedPetWalkSpeed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorldZeroKillAuraAutoFeedPetWalkSpeed.lua")
                    
addscriptexist(2534724415, "EmergencyResponseLibertyCountyInfAmmo", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EmergencyResponseLibertyCountyInfAmmo.lua")
                    
addscriptexist(7107498084, "AnimeBattleSpawnWorkersAutoSellAutoBuyNewWorld", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeBattleSpawnWorkersAutoSellAutoBuyNewWorld.lua")
                    
addscriptexist(6284583030, "PetSimulatorXAutoFarmChestAutoEggAutoCollectLootBags", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmChestAutoEggAutoCollectLootBags.lua")
                    
addscriptexist(3823781113, "SaberSimulatorAutoSwingAutoFarmStrengthAutoSellwhenFull", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SaberSimulatorAutoSwingAutoFarmStrengthAutoSellwhenFull.lua")
                    
addscriptexist(3260590327, "TowerDefenseSimulatorCameraCounterAutoStrats", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerDefenseSimulatorCameraCounterAutoStrats.lua")
                    
addscriptexist(2413927524, "RakeREMASTERINGInfStaminaBoxespNoFallDamage", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RakeREMASTERINGInfStaminaBoxespNoFallDamage.lua")
                    
addscriptexist(7107498084, "AnimeBattleBuySpawnerAutoCollectAutoSpawner", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeBattleBuySpawnerAutoCollectAutoSpawner.lua")
                    
addscriptexist(5326405001, "BaseBattlesSilentAimPlayerEspFly", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BaseBattlesSilentAimPlayerEspFly.lua")
                    
addscriptexist(7150360576, "ABizarreVillageItemFarmResetStandgetStand", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ABizarreVillageItemFarmResetStandgetStand.lua")
                    
addscriptexist(7180042682, "MilitaryTycoonAutoUpgradeAutoSellFly", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MilitaryTycoonAutoUpgradeAutoSellFly.lua")
                    
addscriptexist(566399244, "ElementalBattlegroundsAutoFarmStandsAutoFarmGems", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ElementalBattlegroundsAutoFarmStandsAutoFarmGems.lua")
                    
addscriptexist(8916037983, "starvingartistsCopyFigure", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/starvingartistsCopyFigure.lua")
                    
addscriptexist(7797478022, "BrokenBonesAutoUpgrade", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrokenBonesAutoUpgrade.lua")
                    
addscriptexist(7797478022, "BrokenBonesSimulatorInfbreaks", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrokenBonesSimulatorInfbreaks.lua")
                    
addscriptexist(8357510970, "AnimePunchingSimulatorAutoFarmAutoUpgradeAutoRebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimePunchingSimulatorAutoFarmAutoUpgradeAutoRebirth.lua")
                    
addscriptexist(6085581583, "ProjectHeroXMobFarmAutoInvisAllLoopInvisYourself", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectHeroXMobFarmAutoInvisAllLoopInvisYourself.lua")
                    
addscriptexist(428114181, "AzureMinesNoClipCameraInGameGuisCameraTweaks", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AzureMinesNoClipCameraInGameGuisCameraTweaks.lua")
                    
addscriptexist(5104202731, "SouthwestFloridaAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SouthwestFloridaAutoFarm.lua")
                    
addscriptexist(7842028704, "AnimeClashSimulatorAutoFarmAutoChakraAutoSell", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeClashSimulatorAutoFarmAutoChakraAutoSell.lua")
    
addscript(2960777560,"Treasure Quest [Auto Farm]", "TreasureQuestAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TreasureQuestAutoFarm.lua")
                    
    
addscript(6104994594,"Pilfering Pirates [Infinity jump, Aump power, Anti afk]", "PilferingPiratesInfinityjumpAumppowerAntiafk", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PilferingPiratesInfinityjumpAumppowerAntiafk.lua")
                    
    
addscript(527730528,"Magic Training", "MagicTraining", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MagicTraining.lua")
                    
    
addscript(7424863999,"Super Hero VS God Tycoon [Inf Money]", "SuperHeroVSGodTycoonInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperHeroVSGodTycoonInfMoney.lua")
                    
                    
addscriptexist(4580204640, "SurvivetheKillerEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurvivetheKillerEsp.lua")
    
addscript(3494008884,"Donut Bakery Tycoon [Infity Money]", "DonutBakeryTycoonInfityMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DonutBakeryTycoonInfityMoney.lua")
                    
                    
addscriptexist(7842028704, "AnimeClashSimulatorAutoFarmAutoSellFarmBoss", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeClashSimulatorAutoFarmAutoSellFarmBoss.lua")
                    
addscriptexist(8069117419, "DemonSoulAutoFarmAutoSkillAutoDraw", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DemonSoulAutoFarmAutoSkillAutoDraw.lua")
                    
addscriptexist(8357510970, "AnimePunchingSimulatorAutoPunchAutoEggsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimePunchingSimulatorAutoPunchAutoEggsMore.lua")
    
addscript(2961297129,"Death Zone [Item ESP - Base Noclip - Walkspeed]", "DeathZoneItemESPBaseNoclipWalkspeed", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeathZoneItemESPBaseNoclipWalkspeed.lua")
                    
                    
addscriptexist(4996049426, "AllStarTowerDefenseAutoJoimExtremeGoWorld", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AllStarTowerDefenseAutoJoimExtremeGoWorld.lua")
                    
addscriptexist(189707, "NaturalDisasterSurvivalAutoWinNoFallDamageVopeMap", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NaturalDisasterSurvivalAutoWinNoFallDamageVopeMap.lua")
                    
addscriptexist(5910449407, "ProjectMenacingGodMode", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectMenacingGodMode.lua")
    
addscript(7135656646,"Shoot people simulator [Instant Kill - Silent AIM - No Cooldown]", "ShootpeoplesimulatorInstantKillSilentAIMNoCooldown", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShootpeoplesimulatorInstantKillSilentAIMNoCooldown.lua")
                    
                    
addscriptexist(286090429, "ArsenalValentinesDayEventFarmHearts", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalValentinesDayEventFarmHearts.lua")
    
addscript(6068707488,"Navy Simulator [Auto Farm, Fly, Walk Speed]", "NavySimulatorAutoFarmFlyWalkSpeed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NavySimulatorAutoFarmFlyWalkSpeed.lua")
                    
                    
addscriptexist(7896264844, "FindtheMarkersCollectallmarkersteleporttomarkersteleporttoworlds", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FindtheMarkersCollectallmarkersteleporttomarkersteleporttoworlds.lua")
                    
addscriptexist(171391948, "VehicleSimulatorMoneyFarm300KIn5Mimutes", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VehicleSimulatorMoneyFarm300KIn5Mimutes.lua")
    
addscript(6722284015,"1v1 pistol [Silent AIM]", "1v1pistolSilentAIM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/1v1pistolSilentAIM.lua")
                    
    
addscript(8514738257,"SBRP [Infinite SP]", "SBRPInfiniteSP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SBRPInfiniteSP.lua")
                    
                    
addscriptexist(1224212277, "MadCityAutoWashingLaundry", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityAutoWashingLaundry.lua")
                    
addscriptexist(2185497593, "ArcadeIsland2VaultAutoSolver", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArcadeIsland2VaultAutoSolver.lua")
                    
addscriptexist(5310653431, "StreamingSimulatorAutoFarmGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StreamingSimulatorAutoFarmGUI.lua")
                    
addscriptexist(7462526249, "NIKELANDGetEventItem", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NIKELANDGetEventItem.lua")
    
addscript(6422372837,"Snipers [Inf Ammo]", "SnipersInfAmmo", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SnipersInfAmmo.lua")
                    
                    
addscriptexist(6683744559, "FightersEXInfiniteXP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FightersEXInfiniteXP.lua")
                    
addscriptexist(7842028704, "AnimeClashSimulatorAutoClickAutoSellBuythepets", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeClashSimulatorAutoClickAutoSellBuythepets.lua")
                    
addscriptexist(4195834406, "DragonBallNoCooldownNoCombatLogTeleport", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBallNoCooldownNoCombatLogTeleport.lua")
    
addscript(8689635909,"Cookie Simulator 2 [Auto Cookies, TP Gems, Auto Sell]", "CookieSimulator2AutoCookiesTPGemsAutoSell", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CookieSimulator2AutoCookiesTPGemsAutoSell.lua")
                    
    
addscript(7549229959,"Squid Game [Win First Game, Win Second Game, Win rope game]", "SquidGameWinFirstGameWinSecondGameWinropegame", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SquidGameWinFirstGameWinSecondGameWinropegame.lua")
                    
    
addscript(8288069630,"Stone Miner Simulator [Infinite Gems - Free Gold - Auto Sell]", "StoneMinerSimulatorInfiniteGemsFreeGoldAutoSell", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StoneMinerSimulatorInfiniteGemsFreeGoldAutoSell.lua")
                    
                    
addscriptexist(6422372837, "SnipersSniperMod", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SnipersSniperMod.lua")
                    
addscriptexist(7167319176, "ChicagoRemasteredMoneyFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ChicagoRemasteredMoneyFarm.lua")
    
addscript(7034960857,"Transforming toy simulator [Inf Money]", "TransformingtoysimulatorInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TransformingtoysimulatorInfMoney.lua")
                    
                    
addscriptexist(679737281, "MoonCityTeleportAimbotVehicle", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MoonCityTeleportAimbotVehicle.lua")
                    
addscriptexist(8649501395, "NFLTycoonInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NFLTycoonInfMoney.lua")
                    
addscriptexist(8649501395, "NFLTycoonCollectFootballCollectionThingies", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NFLTycoonCollectFootballCollectionThingies.lua")
                    
addscriptexist(6422372837, "SnipersInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SnipersInfMoney.lua")
                    
addscriptexist(1537690962, "BeeSwarmSimulatorCrashServer", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeeSwarmSimulatorCrashServer.lua")
                    
addscriptexist(8308074824, "MemePieceGetAllItems–EvenAdminItems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MemePieceGetAllItems–EvenAdminItems.lua")
                    
addscriptexist(3623096087, "MuscleLegendsAutoFarmAutoDurabilityAutoRebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MuscleLegendsAutoFarmAutoDurabilityAutoRebirth.lua")
                    
addscriptexist(7453798168, "YouTubeSimulatorXESPWalkSpeedAntiAfk", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YouTubeSimulatorXESPWalkSpeedAntiAfk.lua")
                    
addscriptexist(7167319176, "ChicagoRemasteredCashFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ChicagoRemasteredCashFarm.lua")
    
addscript(5911084042,"Specter [Auto Farm]", "SpecterAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpecterAutoFarm.lua")
                    
                    
addscriptexist(4753520418, "TheHooodSilentAIM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheHooodSilentAIM.lua")
                    
addscriptexist(3823781113, "SaberSimulatorStrengthFarmAutoSellSaferBossFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SaberSimulatorStrengthFarmAutoSellSaferBossFarm.lua")
    
addscript(4225025295,"OP NINJA SIMULATOR [AutoFarm, Auto Equip Katana]", "OPNINJASIMULATORAutoFarmAutoEquipKatana", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OPNINJASIMULATORAutoFarmAutoEquipKatana.lua")
                    
                    
addscriptexist(1554960397, "CarDealershipTycoonModCarLoopFlipAllCarsFeinvisible", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarDealershipTycoonModCarLoopFlipAllCarsFeinvisible.lua")
                    
addscriptexist(8592863835, "MagnetSimulator2AutoFarmAutoAttackAutoSell", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MagnetSimulator2AutoFarmAutoAttackAutoSell.lua")
                    
addscriptexist(3623096087, "MuscleLegendsAutoLiftLegendsGymAntiAFK", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MuscleLegendsAutoLiftLegendsGymAntiAFK.lua")
                    
addscriptexist(7453798168, "YouTubeSimulatorXAutoFarmAutoClickAutoCollectGems", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YouTubeSimulatorXAutoFarmAutoClickAutoCollectGems.lua")
                    
addscriptexist(2727067538, "WorldZeroKillAuraAutoSellDropsMagnet", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorldZeroKillAuraAutoSellDropsMagnet.lua")
                    
addscriptexist(5023820864, "TradeTowerAutoMoneyFarmAutoSellAutoClickUpgrade", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TradeTowerAutoMoneyFarmAutoSellAutoClickUpgrade.lua")
                    
addscriptexist(3956818381, "NinjaLegendsAutoBuyAutoFarmInfiteJump", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsAutoBuyAutoFarmInfiteJump.lua")
                    
addscriptexist(3956818381, "NinjaLegendsAutoSwingAutoSellBuySwords", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsAutoSwingAutoSellBuySwords.lua")
                    
addscriptexist(662417684, "LUCKYBLOCKSAutoLuckBlockAutoGalaxyBlockTeleport", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LUCKYBLOCKSAutoLuckBlockAutoGalaxyBlockTeleport.lua")
                    
addscriptexist(2788229376, "DaHoodAutoStompHeadlessGodBlock", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodAutoStompHeadlessGodBlock.lua")
    
addscript(7755155116,"Sword Factory [Teleport Drop]", "SwordFactoryTeleportDrop", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwordFactoryTeleportDrop.lua")
                    
    
addscript(6400572259,"Anime Brawl", "AnimeBrawlALLOUTAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeBrawlALLOUTAutoFarm.lua")
                    
                    
addscriptexist(3956818381, "NinjaLegendsAutoSellAutoSellAutobuySwords", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsAutoSellAutoSellAutobuySwords.lua")
                    
addscriptexist(7755155116, "SwordFactoryAutoButtonClicker", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwordFactoryAutoButtonClicker.lua")
                    
addscriptexist(4787629450, "BOOGABOOGAKillauraGodmodeInvisibility", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BOOGABOOGAKillauraGodmodeInvisibility.lua")
                    
addscriptexist(2753915549, "BloxFruitsFruitHopperAutoStoreRevamp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsFruitHopperAutoStoreRevamp.lua")
                    
addscriptexist(2753915549, "BloxFruitsAutoFarmDungeonBuyItem", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsAutoFarmDungeonBuyItem.lua")
                    
addscriptexist(7655745946, "DunkingSimulatorEarthAutoFarmSpaceAutoFarmAlwaysScore", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DunkingSimulatorEarthAutoFarmSpaceAutoFarmAlwaysScore.lua")
                    
addscriptexist(6422372837, "SnipersBETAGetModMenu", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SnipersBETAGetModMenu.lua")
    
addscript(7535149098,"Space Tycoon [Insta Kill]", "SpaceTycoonInstaKill", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpaceTycoonInstaKill.lua")
                    
                    
addscriptexist(5780309044, "StandsAwakeningRareItemAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StandsAwakeningRareItemAutoFarm.lua")
    
addscript(6911596531,"Defend the Statue [Auto Kill]", "DefendtheStatueAutoKill", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DefendtheStatueAutoKill.lua")
                    
                    
addscriptexist(4410049285, "DrivingSimulatorUnlockAllLocationsRegularAutoFarmRainbowCar", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DrivingSimulatorUnlockAllLocationsRegularAutoFarmRainbowCar.lua")
                    
addscriptexist(5987922834, "TransfurOutbreakGUIAutoInfectMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TransfurOutbreakGUIAutoInfectMore.lua")
                    
addscriptexist(8588872272, "DemonSlayerMoonriseGUIAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DemonSlayerMoonriseGUIAutoFarm.lua")
    
addscript(3398014311,"Restaurant Tycoon 2 [AutoCollect Money Plates, Fast Service, Auto Seat Customers]", "RestaurantTycoon2AutoCollectMoneyPlatesFastServiceAutoSeatCustomers", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RestaurantTycoon2AutoCollectMoneyPlatesFastServiceAutoSeatCustomers.lua")
                    
    
addscript(4632627223,"Black Grimoire [Level 1 - 999 In 2 Hours]", "BlackGrimoireLevel1999In2Hours", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BlackGrimoireLevel1999In2Hours.lua")
                    
    
addscript(5171347293,"Cabin Crew Simulator [Infinite Money]", "CabinCrewSimulatorInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CabinCrewSimulatorInfiniteMoney.lua")
                    
                    
addscriptexist(8592863835, "MagnetSimulator2UnlockAllGamepassesAutoFarmCoinsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MagnetSimulator2UnlockAllGamepassesAutoFarmCoinsMore.lua")
                    
addscriptexist(7560156054, "ClickerSimulatorAutoShiny", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerSimulatorAutoShiny.lua")
    
addscript(6081494153,"Project Gaming [Damage Mod]", "ProjectGamingDamageMod", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectGamingDamageMod.lua")
                    
    
addscript(7279999673,"Dragon Blade Open World RPG [Free Coins & Item Crafting - Auto Craft]", "DragonBladeOpenWorldRPGFreeCoinsItemCraftingAutoCraft", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBladeOpenWorldRPGFreeCoinsItemCraftingAutoCraft.lua")
                    
                    
addscriptexist(3095204897, "IsleESPAntiKickMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/IsleESPAntiKickMore.lua")
    
addscript(9528010,"Blood & Iron [Anticheat Bypass]", "BloodIronAnticheatBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloodIronAnticheatBypass.lua")
                    
    
addscript(6166086846,"Street Sweeper [One Punch And Hitboxes]", "StreetSweeperOnePunchAndHitboxes", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StreetSweeperOnePunchAndHitboxes.lua")
                    
                    
addscriptexist(7114303730, "DragonOrbzAutoFarmWithAutoQuest", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonOrbzAutoFarmWithAutoQuest.lua")
                    
addscriptexist(2629642516, "BitcoinMinerSnowflakeFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BitcoinMinerSnowflakeFarm.lua")
    
addscript(1240123653,"Zombie Attack [Auto Farm, Walk Speed, Noclip]", "ZombieAttackAutoFarmWalkSpeedNoclip", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieAttackAutoFarmWalkSpeedNoclip.lua")
                    
                    
addscriptexist(6284583030, "PetSimulatorXGhostPetXGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXGhostPetXGUI.lua")
                    
addscriptexist(286090429, "ArsenalVALENTINESUpdateAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalVALENTINESUpdateAutoFarm.lua")
    
addscript(1021289358,"Football Universe [Magnets - Hitbox Increase & More!]", "FootballUniverseMagnetsHitboxIncreaseMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FootballUniverseMagnetsHitboxIncreaseMore.lua")
                    
                    
addscriptexist(5987922834, "TransfurOutbreakGodModeSelectcumfurryCrashserver", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TransfurOutbreakGodModeSelectcumfurryCrashserver.lua")
                    
addscriptexist(537413528, "BuildABoatForTreasureAutoFarmAutoBuyAntiAfk", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureAutoFarmAutoBuyAntiAfk.lua")
                    
addscriptexist(537413528, "BuildABoatForTreasureAutoFarmWaterGodModeFly", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureAutoFarmWaterGodModeFly.lua")
    
addscript(8656125900,"Brits VIP Party [Complete Event - Gather Free Hats]", "BritsVIPPartyCompleteEventGatherFreeHats", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BritsVIPPartyCompleteEventGatherFreeHats.lua")
                    
                    
addscriptexist(2866967438, "FishingSimulatorAutoKillAutoSellAutoRemovedrop", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FishingSimulatorAutoKillAutoSellAutoRemovedrop.lua")
                    
addscriptexist(7655745946, "DunkingSImulatorAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DunkingSImulatorAutoFarm.lua")
                    
addscriptexist(606849621, "JailbreakTeleportSystemFast", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakTeleportSystemFast.lua")
    
addscript(7187281400,"Touch Football World Cup [Easy Goal Tool]", "TouchFootballWorldCupEasyGoalTool", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TouchFootballWorldCupEasyGoalTool.lua")
                    
                    
addscriptexist(5041144419, "SCPRoleplayExpFarmSilentAimInstantReload", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SCPRoleplayExpFarmSilentAimInstantReload.lua")
                    
addscriptexist(6403373529, "SlapBattlesServerLagger", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlapBattlesServerLagger.lua")
                    
addscriptexist(7140186081, "GunGameKillAura", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GunGameKillAura.lua")
                    
addscriptexist(621129760, "KATAutoFarmSilentAimNew", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KATAutoFarmSilentAimNew.lua")
                    
addscriptexist(536102540, "DragonBallFinalStandAutoQuestAutoPlayGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBallFinalStandAutoQuestAutoPlayGUI.lua")
                    
addscriptexist(534701013, "TheLabyrinthAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheLabyrinthAutoFarm.lua")
                    
addscriptexist(7655745946, "DunkingSimulatorAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DunkingSimulatorAutoFarm.lua")
                    
addscriptexist(292439477, "PhantomForcesShootGrenades", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesShootGrenades.lua")
                    
addscriptexist(7047488135, "SpeedySimulatorAutoFarmGemsSpeed", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedySimulatorAutoFarmGemsSpeed.lua")
    
addscript(5229802390,"Anime Cross World [God mode]", "AnimeCrossWorldGodmode", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeCrossWorldGodmode.lua")
                    
                    
addscriptexist(8592863835, "MagnetSimulator2AutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MagnetSimulator2AutoFarm.lua")
                    
addscriptexist(1962086868, "TowerOfHellGodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerOfHellGodMode.lua")
                    
addscriptexist(6604417568, "Minerscave13XrayNoFullArmorup", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Minerscave13XrayNoFullArmorup.lua")
    
addscript(7603193259,"Friday Night Bloxxin [Auto Player - Insta Solo]", "FridayNightBloxxinAutoPlayerInstaSolo", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FridayNightBloxxinAutoPlayerInstaSolo.lua")
                    
                    
addscriptexist(8448735476, "dbzadventuresunleashedAutoAttackAutoSkillsAutoQuest", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/dbzadventuresunleashedAutoAttackAutoSkillsAutoQuest.lua")
                    
addscriptexist(2866967438, "FishingSimulatorKillMonsterKillMobbyAutoSell", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FishingSimulatorKillMonsterKillMobbyAutoSell.lua")
                    
addscriptexist(8523408215, "AloSanctuaryOrbCollectorEventGetAFreeCap", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AloSanctuaryOrbCollectorEventGetAFreeCap.lua")
                    
addscriptexist(2788229376, "DaHoodFlyAutoBuyTeleports", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodFlyAutoBuyTeleports.lua")
                    
addscriptexist(8592863835, "MagnetSimulator2GUIx25SellTeleportsAllLocations", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MagnetSimulator2GUIx25SellTeleportsAllLocations.lua")
                    
addscriptexist(1345139196, "TreasureHuntSimulatorTeleportChestDigFaster", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TreasureHuntSimulatorTeleportChestDigFaster.lua")
                    
addscriptexist(8554378337, "WeaponFightingSimulatorStartFarmCollectRewardsAntiAfk", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeaponFightingSimulatorStartFarmCollectRewardsAntiAfk.lua")
    
addscript(2377868063,"ZONE WAR!! Strucid [Aimbot, Visuals, GunMods]", "ZONEWARStrucidAimbotVisualsGunMods", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZONEWARStrucidAimbotVisualsGunMods.lua")
                    
                    
addscriptexist(3102144307, "AnimeClickerSimulatorAutoTapFasterTapAutoBoss", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeClickerSimulatorAutoTapFasterTapAutoBoss.lua")
                    
addscriptexist(6284583030, "PetSimulatorXFastAutoEnchant", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXFastAutoEnchant.lua")
    
addscript(7989049516,"Anime Masters [Auto Punch, Auto Rebirth, Auto Farm]", "AnimeMastersAutoPunchAutoRebirthAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeMastersAutoPunchAutoRebirthAutoFarm.lua")
                    
                    
addscriptexist(301549746, "CounterBloxWallBang", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CounterBloxWallBang.lua")
                    
addscriptexist(3102144307, "AnimeClickerSimulatorAutoClickAutoRebirthOpenStar", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeClickerSimulatorAutoClickAutoRebirthOpenStar.lua")
                    
addscriptexist(13822889, "LumberTycoon2FullbrightKeystrokesRejoinServer", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LumberTycoon2FullbrightKeystrokesRejoinServer.lua")
    
addscript(6895636084,"Myth Piece (Beta) [Double Stats]", "MythPieceBetaDoubleStats", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MythPieceBetaDoubleStats.lua")
                    
                    
addscriptexist(292439477, "PhantomForcesGrenadePrediction", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesGrenadePrediction.lua")
    
addscript(9468057661,"Super Hero Tycoon [Set Player Money, Set Walk Speed, Delete Doors]", "SuperHeroTycoonSetPlayerMoneySetWalkSpeedDeleteDoors", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperHeroTycoonSetPlayerMoneySetWalkSpeedDeleteDoors.lua")
                    
                    
addscriptexist(8592863835, "MagnetSimulator2AutoFarmAutoRebirthSellAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MagnetSimulator2AutoFarmAutoRebirthSellAll.lua")
                    
addscriptexist(4581966615, "AnomicPrinterAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnomicPrinterAutoFarm.lua")
    
addscript(8690998110,"Gorilla Tag Professional [INFINITE WINS & MORE!]", "GorillaTagProfessionalINFINITEWINSMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GorillaTagProfessionalINFINITEWINSMORE.lua")
                    
                    
addscriptexist(8054462345, "MichaelsZombiesInstalKill", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MichaelsZombiesInstalKill.lua")
    
addscript(137877687,"RoCitizens [Auto Farm]", "RoCitizensAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoCitizensAutoFarm.lua")
                    
    
addscript(6737540754,"TITANAGE [Full Auto Farm]", "TITANAGEFullAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TITANAGEFullAutoFarm.lua")
                    
                    
addscriptexist(6875469709, "STRONGESTPUNCHSIMULATORAutoPunchAutoOrbCollectionAutoWorld", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/STRONGESTPUNCHSIMULATORAutoPunchAutoOrbCollectionAutoWorld.lua")
    
addscript(8169234858,"Mr Hood [Full Anti Cheat Bypass]", "MrHoodFullAntiCheatBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MrHoodFullAntiCheatBypass.lua")
                    
                    
addscriptexist(8592863835, "MagnetSimulator2GUIAutoFarmAutoHatchMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MagnetSimulator2GUIAutoFarmAutoHatchMore.lua")
                    
addscriptexist(137885680, "ZombieRushAutoFarmAutobringAllAimbot", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieRushAutoFarmAutobringAllAimbot.lua")
                    
addscriptexist(286090429, "ArsenalSilentAimBotAntiAimNameTagEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalSilentAimBotAntiAimNameTagEsp.lua")
                    
addscriptexist(2534724415, "EmergencyResponseLibertyCountyInfiniteAmmo", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EmergencyResponseLibertyCountyInfiniteAmmo.lua")
    
addscript(6878620017,"Mega Obby [Complete All Stages]", "MegaObbyCompleteAllStages", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MegaObbyCompleteAllStages.lua")
                    
                    
addscriptexist(2753915549, "Roblox", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Roblox.lua")
                    
addscriptexist(8357510970, "AnimePunchingSimulatorAutoTapAutoRebirthOpenEgg", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimePunchingSimulatorAutoTapAutoRebirthOpenEgg.lua")
    
addscript(7508789810,"Devious Lick Simulator [Auto Farm, Auto Sell, Auto Combine]", "DeviousLickSimulatorAutoFarmAutoSellAutoCombine", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeviousLickSimulatorAutoFarmAutoSellAutoCombine.lua")
                    
                    
addscriptexist(7508789810, "DeviousLickSimulatorAutoSellCollectDropsAutoCombineAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeviousLickSimulatorAutoSellCollectDropsAutoCombineAll.lua")
                    
addscriptexist(8656125900, "BritsVIPPartyftPinkPantheressAllBadges", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BritsVIPPartyftPinkPantheressAllBadges.lua")
    
addscript(6879598157,"Roblox [Animation Logger]", "RobloxAnimationLogger", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxAnimationLogger.lua")
                    
                    
addscriptexist(8592863835, "MagnetSimulator218XAutoSellScript", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MagnetSimulator218XAutoSellScript.lua")
                    
addscriptexist(574407221, "SuperHeroTycoonStealMoneyOnceStealMoneyCratesDeletelaserDoors", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperHeroTycoonStealMoneyOnceStealMoneyCratesDeletelaserDoors.lua")
    
addscript(6484864709,"Gym Tycoon [Auto WorkOut, Redeem Codes, Collect Drops]", "GymTycoonAutoWorkOutRedeemCodesCollectDrops", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GymTycoonAutoWorkOutRedeemCodesCollectDrops.lua")
                    
                    
addscriptexist(4954096313, "FieldTripZAutoHetHealitemsGodModeYourSelfFly", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FieldTripZAutoHetHealitemsGodModeYourSelfFly.lua")
                    
addscriptexist(7842028704, "AnimeClashSimulatorTheGameSucksAutoBuyPetsAutoEquipbestpets", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeClashSimulatorTheGameSucksAutoBuyPetsAutoEquipbestpets.lua")
                    
addscriptexist(3101667897, "LegendsOfSpeedFarmOrbsFastAutoRebirthsAutoWinRace", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendsOfSpeedFarmOrbsFastAutoRebirthsAutoWinRace.lua")
                    
addscriptexist(7842028704, "AnimeClashSimulatorAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeClashSimulatorAutoFarm.lua")
                    
addscriptexist(155615604, "PrisonLifeGodModeArrestPlayerKillAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLifeGodModeArrestPlayerKillAll.lua")
                    
addscriptexist(263761432, "HorrificHousingAutoFarmCoinsInfityJumpPets", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HorrificHousingAutoFarmCoinsInfityJumpPets.lua")
                    
addscriptexist(2809202155, "YourBizarreAdventureTpAutoitemsAutoQuestWalkSpeed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YourBizarreAdventureTpAutoitemsAutoQuestWalkSpeed.lua")
    
addscript(5055081323,"Swordman Simulator [Auto Farm]", "SwordmanSimulatorAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwordmanSimulatorAutoFarm.lua")
                    
                    
addscriptexist(621129760, "KATAimBotAutoFarmPlayerEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KATAimBotAutoFarmPlayerEsp.lua")
    
addscript(3203685552,"BEAR [Auto Collect]", "BEARAutoCollect", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BEARAutoCollect.lua")
                    
                    
addscriptexist(8656125900, "BritsVIPPartyftPinkPantheressCollectCoins", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BritsVIPPartyftPinkPantheressCollectCoins.lua")
                    
addscriptexist(6125809531, "UntitledAttackOnTitanAutoFarmKillAura", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UntitledAttackOnTitanAutoFarmKillAura.lua")
    
addscript(7499189111,"Encounters [Kill Player, Kick Player, inf Mana]", "EncountersKillPlayerKickPlayerinfMana", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EncountersKillPlayerKickPlayerinfMana.lua")
                    
                    
addscriptexist(3956818381, "NinjaLegendsAutoSwingAutoEquipSwordAutoSell", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsAutoSwingAutoEquipSwordAutoSell.lua")
                    
addscriptexist(6872265039, "BedWarsAimBotinvisibilityinstantBreak", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BedWarsAimBotinvisibilityinstantBreak.lua")
                    
addscriptexist(6284583030, "PetSimulatorXCrash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXCrash.lua")
                    
addscriptexist(2619187362, "SuperPowerFightingSimulatorAutoTrainAutoMiniChestsAutoQuest", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperPowerFightingSimulatorAutoTrainAutoMiniChestsAutoQuest.lua")
                    
addscriptexist(648362523, "BreakingPointAimBotLightOnHiqhSpeed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BreakingPointAimBotLightOnHiqhSpeed.lua")
                    
addscriptexist(6938803436, "AnimeDimensionsSimulatorAutoFarmAutoSkill", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeDimensionsSimulatorAutoFarmAutoSkill.lua")
                    
addscriptexist(3823781113, "SaberSimulatorAutoSwingAutoSellAutoEquipSaber", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SaberSimulatorAutoSwingAutoSellAutoEquipSaber.lua")
    
addscript(182781154,"The Maze Runner [ChestAutoFarm, Treasure Auto Farm, Fly]", "TheMazeRunnerChestAutoFarmTreasureAutoFarmFly", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheMazeRunnerChestAutoFarmTreasureAutoFarmFly.lua")
                    
                    
addscriptexist(2414851778, "DungeonQuestAutoFarmWalkSpeedHipHight", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DungeonQuestAutoFarmWalkSpeedHipHight.lua")
    
addscript(990566015,"Cursed Islands [Auto Farm, Auto buy, Fly]", "CursedIslandsAutoFarmAutobuyFly", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CursedIslandsAutoFarmAutobuyFly.lua")
                    
                    
addscriptexist(6284583030, "PetSimulatorXAutoEggsAutoFarmSendAllPets", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoEggsAutoFarmSendAllPets.lua")
                    
addscriptexist(1240123653, "ZombieAttackAutoFarmEquipAllGunsEquipAllKnifes", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieAttackAutoFarmEquipAllGunsEquipAllKnifes.lua")
                    
addscriptexist(2512643572, "BubbleGumSimulatorAutoFarmAutoSellAutoEggs", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BubbleGumSimulatorAutoFarmAutoSellAutoEggs.lua")
                    
addscriptexist(3956818381, "NinjaLegendsAutoswingsAutosellBossFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsAutoswingsAutosellBossFarm.lua")
    
addscript(7981138297,"Roblox [RainBow Concole]", "RobloxRainBowConcole", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxRainBowConcole.lua")
                    
                    
addscriptexist(182781154, "TheMazeRunnerChestEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheMazeRunnerChestEsp.lua")
                    
addscriptexist(7014716500, "ProBorderCrashServer", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProBorderCrashServer.lua")
                    
addscriptexist(4111023553, "DeepwokenAutoFlingAutoParryAutoParryU", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeepwokenAutoFlingAutoParryAutoParryU.lua")
    
addscript(2978450615,"Mad Paintball [Kill All]", "MadPaintballKillAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadPaintballKillAll.lua")
                    
                    
addscriptexist(182781154, "TheMazeRunnerChestFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheMazeRunnerChestFarm.lua")
    
addscript(914010731,"Ro-Ghoul [Farm, AutoEquip, Auto Skills]", "RoGhoulFarmAutoEquipAutoSkills", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoGhoulFarmAutoEquipAutoSkills.lua")
                    
    
addscript(8311081337,"One Piece", "OnePieceBurstingRageInfiniteStatsAutoFarmChestFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OnePieceBurstingRageInfiniteStatsAutoFarmChestFarm.lua")
                    
                    
addscriptexist(370731277, "MeepCityAvatarCloner", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MeepCityAvatarCloner.lua")
    
addscript(3173458677,"Draw It [Auto Guess]", "DrawItAutoGuess", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DrawItAutoGuess.lua")
                    
                    
addscriptexist(292439477, "PhantomForcesRainbowGunArms", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesRainbowGunArms.lua")
    
addscript(281489669,"Wizard Tycoon - 2 Player [Kill All]", "WizardTycoon2PlayerKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WizardTycoon2PlayerKillAll.lua")
                    
    
addscript(4932220972,"Robbing Tycoon [Remote Kill Parts + Grab Money]", "RobbingTycoonRemoteKillPartsGrabMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobbingTycoonRemoteKillPartsGrabMoney.lua")
                    
    
addscript(8303498444,"Blocky World [Mine Ores]", "BlockyWorldMineOres", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BlockyWorldMineOres.lua")
                    
                    
addscriptexist(8303498444, "BlockyWorldInfiniteCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BlockyWorldInfiniteCoins.lua")
    
addscript(6811842210,"Parkour Run REJOIN AUTO FARM - REMOVE KILL PARTS", "ParkourRunREJOINAUTOFARMREMOVEKILLPARTS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ParkourRunREJOINAUTOFARMREMOVEKILLPARTS.lua")
                    
                    
addscriptexist(8303498444, "BlockyWorldMobFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BlockyWorldMobFarm.lua")
    
addscript(6859865958,"YouTube Simulator [Auto Farm, Redeem All Codes, Buy all sd cards]", "YouTubeSimulatorAutoFarmRedeemAllCodesBuyallsdcards", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YouTubeSimulatorAutoFarmRedeemAllCodesBuyallsdcards.lua")
                    
                    
addscriptexist(6604417568, "Minerscave13NoDamage", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Minerscave13NoDamage.lua")
                    
addscriptexist(735030788, "RoyaleHighAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoyaleHighAutoFarm.lua")
                    
addscriptexist(147848991, "BeAParkourNinjaAutoKillPlayers", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeAParkourNinjaAutoKillPlayers.lua")
    
addscript(5984870779,"GARENA FREE FIRE - [Gun Mod Script]", "GARENAFREEFIREGunModScript", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GARENAFREEFIREGunModScript.lua")
                    
                    
addscriptexist(7548385157, "BuildTowerSimulatorKillAllZombies", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildTowerSimulatorKillAllZombies.lua")
                    
addscriptexist(2317712696, "TheWildWestSILENTAIM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheWildWestSILENTAIM.lua")
    
addscript(6589036319,"Sec [Inf Coins]", "SecInfCoins", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SecInfCoins.lua")
                    
                    
addscriptexist(5303541547, "TwoPieceAutoFarmAutoStatsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TwoPieceAutoFarmAutoStatsMore.lua")
                    
addscriptexist(4520749081, "KingLegacyAutofarmAutoFarmMobsAutoStat", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KingLegacyAutofarmAutoFarmMobsAutoStat.lua")
    
addscript(5874381161,"Noob Invasion [GUI - Auto Farm & More!]", "NoobInvasionGUIAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NoobInvasionGUIAutoFarmMore.lua")
                    
                    
addscriptexist(6266940721, "StockRiseInfiniteMoneyFEB2022", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StockRiseInfiniteMoneyFEB2022.lua")
                    
addscriptexist(6442957604, "CustomPCTycoonAutoFarmFEB2022", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CustomPCTycoonAutoFarmFEB2022.lua")
                    
addscriptexist(7681451450, "AnimeSimulatorXAutoFarmGUIFEB2022", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeSimulatorXAutoFarmGUIFEB2022.lua")
                    
addscriptexist(7047488135, "SpeedSimulatorAutoLoopGetSpeed", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedSimulatorAutoLoopGetSpeed.lua")
    
addscript(6429911702,"Master's Difficulty Chart Obby [complete all stages, complete monthly challange, complete experimental zone]", "MastersDifficultyChartObbycompleteallstagescompletemonthlychallangecompleteexperimentalzone", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MastersDifficultyChartObbycompleteallstagescompletemonthlychallangecompleteexperimentalzone.lua")
                    
                    
addscriptexist(537413528, "BuildABoatForTreasureNewAutoFarmingCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureNewAutoFarmingCoins.lua")
                    
addscriptexist(1224212277, "MadCityScriptInfiniteXp", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityScriptInfiniteXp.lua")
    
addscript(5358493390,"Admin GUI [cmdX]", "AdminGUIcmdX", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdminGUIcmdX.lua")
                    
                    
addscriptexist(8357510970, "AnimePunchingSimulatorGUIAutoClickAutoRebirthMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimePunchingSimulatorGUIAutoClickAutoRebirthMore.lua")
                    
addscriptexist(8554378337, "WeaponFightingSimulatorGUIFarmingBossGamepass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeaponFightingSimulatorGUIFarmingBossGamepass.lua")
                    
addscriptexist(606849621, "JailbreakSimpleCarBoost", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakSimpleCarBoost.lua")
    
addscript(8457306665,"Fruit Fighter Simulator [Auto Collect, Auto Sell]", "FruitFighterSimulatorAutoCollectAutoSell", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FruitFighterSimulatorAutoCollectAutoSell.lua")
                    
                    
addscriptexist(156149963, "CrashChat", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CrashChat.lua")
                    
addscriptexist(7993293100, "TsunamiGameAutoFarmCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TsunamiGameAutoFarmCoins.lua")
                    
addscriptexist(662417684, "LuckyBlockBattlegroundsPressEtogetitems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LuckyBlockBattlegroundsPressEtogetitems.lua")
                    
addscriptexist(4616652839, "ShindoLifeGUIFarmlvlandAutoStats", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoLifeGUIFarmlvlandAutoStats.lua")
                    
addscriptexist(3102144307, "AnimeClickerSimulatorGUIFarmingPetsBoss", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeClickerSimulatorGUIFarmingPetsBoss.lua")
    
addscript(6191637341,"Weapon Simulator 2 [GUI - Auto Power, Damage Kill]", "WeaponSimulator2GUIAutoPowerDamageKill", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeaponSimulator2GUIAutoPowerDamageKill.lua")
                    
    
addscript(4586420508,"Speed Simulator [Auto Farming Drink]", "SpeedSimulatorAutoFarmingDrink", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedSimulatorAutoFarmingDrink.lua")
                    
                    
addscriptexist(13822889, "LumberTycoon2MenuDarkMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LumberTycoon2MenuDarkMode.lua")
    
addscript(6628835921,"Money Simulator X [Auto Farming]", "MoneySimulatorXAutoFarming", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MoneySimulatorXAutoFarming.lua")
                    
                    
addscriptexist(281489669, "WizardTycoon2PlayerAutoBuyAll", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WizardTycoon2PlayerAutoBuyAll.lua")
                    
addscriptexist(8554378337, "WeaponFightingSimulatorGUIAutoFarmAutoCollectMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeaponFightingSimulatorGUIAutoFarmAutoCollectMore.lua")
                    
addscriptexist(45146873, "TowerBattlesAutoFarmCredits", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerBattlesAutoFarmCredits.lua")
                    
addscriptexist(6299805723, "AnimeFightersSimulatorGUITeleportsOpenSource", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightersSimulatorGUITeleportsOpenSource.lua")
                    
addscriptexist(7535149098, "SpaceTycoonFarmSecretGemsMoreOpenSource", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpaceTycoonFarmSecretGemsMoreOpenSource.lua")
                    
addscriptexist(621129760, "KATGunModNoRecoilINFAmmoMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KATGunModNoRecoilINFAmmoMore.lua")
    
addscript(4866692557,"Age of Heroes [Farm Mobs - Kill Players]", "AgeofHeroesFarmMobsKillPlayers", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AgeofHeroesFarmMobsKillPlayers.lua")
                    
    
addscript(8575272167,"Awakening Furry Defenses [Shut Down The Server Script]", "AwakeningFurryDefensesShutDownTheServerScript", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AwakeningFurryDefensesShutDownTheServerScript.lua")
                    
                    
addscriptexist(8357510970, "AnimePunchingSimulatorAutoPunchTeleportsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimePunchingSimulatorAutoPunchTeleportsMore.lua")
                    
addscriptexist(2693023319, "ExpeditionAntarcticaGetAllBadgesInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ExpeditionAntarcticaGetAllBadgesInfMoney.lua")
    
addscript(7487495382,"Vectus - Public Test [No Fall Damage, Speed, Inf Stamina]", "VectusPublicTestNoFallDamageSpeedInfStamina", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VectusPublicTestNoFallDamageSpeedInfStamina.lua")
                    
    
addscript(6843905606,"Critical Legends [Infinite Upgrade Points]", "CriticalLegendsInfiniteUpgradePoints", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriticalLegendsInfiniteUpgradePoints.lua")
                    
                    
addscriptexist(8357510970, "AnimePunchingSimulatorAutoPunchAutoEggAutoUpgrade", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimePunchingSimulatorAutoPunchAutoEggAutoUpgrade.lua")
                    
addscriptexist(205224386, "HideandSeekExtremeFindAllPlayersGrabCoinsEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HideandSeekExtremeFindAllPlayersGrabCoinsEsp.lua")
    
addscript(7143997817,"Simple Piece [Auto Farm – Kill Aura & More!]", "SimplePieceAutoFarm–KillAuraMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SimplePieceAutoFarm–KillAuraMore.lua")
                    
    
addscript(8000744340,"l v s t [Get A Sword]", "lvstGetASword", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/lvstGetASword.lua")
                    
    
addscript(228181322,"Dinosaur Simulator [AntiAttack, Invisible, infinite Jump]", "DinosaurSimulatorAntiAttackInvisibleinfiniteJump", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DinosaurSimulatorAntiAttackInvisibleinfiniteJump.lua")
                    
                    
addscriptexist(45146873, "TowerBattlesFarmCredits", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerBattlesFarmCredits.lua")
    
addscript(5398368730,"Ragdoll Street Fight Simulator [Auto Farm Players]", "RagdollStreetFightSimulatorAutoFarmPlayers", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RagdollStreetFightSimulatorAutoFarmPlayers.lua")
                    
                    
addscriptexist(8425637426, "WriteaLetterInfiniteNotes", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WriteaLetterInfiniteNotes.lua")
                    
addscriptexist(8425637426, "WriteaLetterClearAllLetters", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WriteaLetterClearAllLetters.lua")
                    
addscriptexist(5326405001, "BaseBattlesGunModInfAmmo", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BaseBattlesGunModInfAmmo.lua")
                    
addscriptexist(606849621, "JailbreakVYNIXIUSGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakVYNIXIUSGUI.lua")
    
addscript(8105433301,"Funny Tower Defense [Infinite Cash]", "FunnyTowerDefenseInfiniteCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FunnyTowerDefenseInfiniteCash.lua")
                    
    
addscript(8561066003,"Critical Legends 1 & 2 [GUI - Auto Farm Mobs]", "CriticalLegends12GUIAutoFarmMobs", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriticalLegends12GUIAutoFarmMobs.lua")
                    
                    
addscriptexist(6284583030, "PetSimulatorXNEWServerCrasher", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXNEWServerCrasher.lua")
    
addscript(8107622002,"Heroes Unlimited Testing [LOOP Kill All]", "HeroesUnlimitedTestingLOOPKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HeroesUnlimitedTestingLOOPKillAll.lua")
                    
    
addscript(3738091713,"Boxing League [Auto Pushing Bag - Open Sourse]", "BoxingLeagueAutoPushingBagOpenSourse", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BoxingLeagueAutoPushingBagOpenSourse.lua")
                    
                    
addscriptexist(6802248248, "SAITAMANIAAutoFarmAutoStats", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SAITAMANIAAutoFarmAutoStats.lua")
    
addscript(2473334918,"Gas Station Simulator [Gas Seller, Teleport]", "GasStationSimulatorGasSellerTeleport", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GasStationSimulatorGasSellerTeleport.lua")
                    
                    
addscriptexist(7056922815, "Reaper2AutoFarmAutoQuestAutoEat", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Reaper2AutoFarmAutoQuestAutoEat.lua")
                    
addscriptexist(6125809531, "UntitledAttackOnTitanInfiniteGasInfiniteBladesDrawRussianFlag", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UntitledAttackOnTitanInfiniteGasInfiniteBladesDrawRussianFlag.lua")
    
addscript(7290417439,"Slayer Life [Insta Kill]", "SlayerLifeInstaKill", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlayerLifeInstaKill.lua")
                    
    
addscript(7426523309,"Roblox Esp [Chams Player]", "RobloxEspChamsPlayer", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxEspChamsPlayer.lua")
                    
    
addscript(8380203210,"Obliteration Orbs [Auto Rank Up]", "ObliterationOrbsAutoRankUp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ObliterationOrbsAutoRankUp.lua")
                    
                    
addscriptexist(8380203210, "ObliterationOrbsRemoveHarmful", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ObliterationOrbsRemoveHarmful.lua")
                    
addscriptexist(1962086868, "TowerofHellGUIAutoFarmGodmode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofHellGUIAutoFarmGodmode.lua")
                    
addscriptexist(6299805723, "AnimeFightersSimulatorPetSpeedChanger", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightersSimulatorPetSpeedChanger.lua")
                    
addscriptexist(3102144307, "AnimeClickerSimulatorGUIAutoClickMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeClickerSimulatorGUIAutoClickMore.lua")
                    
addscriptexist(8380203210, "ObliterationOrbsAutoCollectOrbs", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ObliterationOrbsAutoCollectOrbs.lua")
                    
addscriptexist(7993293100, "TsunamiGameAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TsunamiGameAutoFarm.lua")
                    
addscriptexist(8204899140, "FootballFusion2Magnet", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FootballFusion2Magnet.lua")
                    
addscriptexist(6284583030, "PetSimulatorXUpdateGui", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXUpdateGui.lua")
                    
addscriptexist(1730877806, "GrandPieceOnlineHitBoxSizeChanger", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GrandPieceOnlineHitBoxSizeChanger.lua")
                    
addscriptexist(6297822481, "TitanWarfareMARLEYANSOLDIERPRESSTOKILLSCRIPT", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TitanWarfareMARLEYANSOLDIERPRESSTOKILLSCRIPT.lua")
                    
addscriptexist(286090429, "ArsenalARSONIAGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalARSONIAGUI.lua")
                    
addscriptexist(8554378337, "WeaponFightingSimulatorGUIAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeaponFightingSimulatorGUIAutoFarm.lua")
                    
addscriptexist(4954752502, "TowerofMiseryGUIGodModeAutoWin", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofMiseryGUIGodModeAutoWin.lua")
                    
addscriptexist(286090429, "ArsenalAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalAutoFarm.lua")
                    
addscriptexist(8554378337, "WeaponFightingSimulatorAutoFarmCollectRewardsSelectArea", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeaponFightingSimulatorAutoFarmCollectRewardsSelectArea.lua")
                    
addscriptexist(2580982329, "TextingSimulatorAutoClick", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TextingSimulatorAutoClick.lua")
                    
addscriptexist(3233893879, "BadBusiness254loopmapvotingscreen", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BadBusiness254loopmapvotingscreen.lua")
    
addscript(3465272868,"My Hero Blockidemia [Auto Farm]", "MyHeroBlockidemiaAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyHeroBlockidemiaAutoFarm.lua")
                    
                    
addscriptexist(6843905606, "CriticalLegendsget1ofeveryitemmaterial", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriticalLegendsget1ofeveryitemmaterial.lua")
    
addscript(4967465336,"Ray's Mod [no cooldown]", "RaysModnocooldown", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaysModnocooldown.lua")
                    
                    
addscriptexist(182781154, "TheMazeRunnerEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheMazeRunnerEsp.lua")
                    
addscriptexist(7114796110, "AnimeTrainingSimulatorAutoKillAutoTrainAutoRebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeTrainingSimulatorAutoKillAutoTrainAutoRebirth.lua")
                    
addscriptexist(6843905606, "CriticalLegendsInfGold", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriticalLegendsInfGold.lua")
                    
addscriptexist(7279999673, "DragonBladeOpenWorldRPGAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBladeOpenWorldRPGAutoFarm.lua")
                    
addscriptexist(70005410, "BloxHuntTokensAutoFarm", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxHuntTokensAutoFarm.lua")
    
addscript(7232779505,"Type Race [Auto Type]", "TypeRaceAutoType", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TypeRaceAutoType.lua")
                    
                    
addscriptexist(1537690962, "BeeSwarmSimulatorRedeemCodes", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeeSwarmSimulatorRedeemCodes.lua")
                    
addscriptexist(7993293100, "TsunamiGameFarmPointsWins", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TsunamiGameFarmPointsWins.lua")
                    
addscriptexist(7560156054, "ClickerSimulatorAutoRebirth", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerSimulatorAutoRebirth.lua")
                    
addscriptexist(566399244, "ElementalBattlegroundsGodModeInvisibility", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ElementalBattlegroundsGodModeInvisibility.lua")
                    
addscriptexist(7346416636, "PopItTradingAdminPanel", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PopItTradingAdminPanel.lua")
                    
addscriptexist(4111023553, "DeepwokenEsp", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeepwokenEsp.lua")
    
addscript(6490016198,"Slayer Tycoon [Anti Ac, Auto Buy Food...]", "SlayerTycoonAntiAcAutoBuyFood", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlayerTycoonAntiAcAutoBuyFood.lua")
                    
                    
addscriptexist(6769764667, "FactorySimulatorAutoAfkAutoHarvestAutoSell", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FactorySimulatorAutoAfkAutoHarvestAutoSell.lua")
                    
addscriptexist(7993293100, "TsunamiGameAutoFarmPoints", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TsunamiGameAutoFarmPoints.lua")
                    
addscriptexist(4855457388, "DemonfallFrostOniFarmFlyMore", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DemonfallFrostOniFarmFlyMore.lua")
    
addscript(86322978,"Ultimate Random Night 0.9.3 [God Guard / UnGod]", "UltimateRandomNight093GodGuardUnGod", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UltimateRandomNight093GodGuardUnGod.lua")
                    
                    
addscriptexist(4855457388, "DemonfallOreFarmTrinketFarm", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DemonfallOreFarmTrinketFarm.lua")
                    
addscriptexist(7140186081, "GunGameSpanHitsandMore", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GunGameSpanHitsandMore.lua")
                    
addscriptexist(7279999673, "DragonBladeOpenWorldRPGInstantKill", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBladeOpenWorldRPGInstantKill.lua")
                    
addscriptexist(6843905606, "CriticalLegendsGetAllChetsItems", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriticalLegendsGetAllChetsItems.lua")
                    
addscriptexist(6843905606, "CriticalLegendsGodModeAutoTpGui", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriticalLegendsGodModeAutoTpGui.lua")
                    
addscriptexist(6843905606, "CriticalLegendsBlackMarkerHop", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriticalLegendsBlackMarkerHop.lua")
                    
addscriptexist(3233893879, "BadBusiness254GrenadeTPKill", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BadBusiness254GrenadeTPKill.lua")
                    
addscriptexist(8054462345, "MichaelsZombiesKillAutraGunModsZombiesEsp", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MichaelsZombiesKillAutraGunModsZombiesEsp.lua")
                    
addscriptexist(7114796110, "AnimeTrainingSimulatorFarmMobsAutoRebirthMore", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeTrainingSimulatorFarmMobsAutoRebirthMore.lua")
    
addscript(5400959086,"TASK FORCE [Change code name]", "TASKFORCEChangecodename", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TASKFORCEChangecodename.lua")
                    
                    
addscriptexist(7279999673, "DragonBladeOpenWorldRPGMAxSkill", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBladeOpenWorldRPGMAxSkill.lua")
                    
addscriptexist(6843905606, "CriticalLegendsTeleporttoallchests", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriticalLegendsTeleporttoallchests.lua")
                    
addscriptexist(3102144307, "AnimeClickerSimulatorAutoClickFarmBossAutoOpenEgg", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeClickerSimulatorAutoClickFarmBossAutoOpenEgg.lua")
                    
addscriptexist(7508789810, "DeviousLickSimulatorAutoFarmAutoSellAutoStrength", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeviousLickSimulatorAutoFarmAutoSellAutoStrength.lua")
                    
addscriptexist(2685347741, "GhostSimulatorAutoSell", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GhostSimulatorAutoSell.lua")
                    
addscriptexist(7860844204, "LifeSentenceSilentAim", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LifeSentenceSilentAim.lua")
                    
addscriptexist(1962086868, "TowerofHellWimAutoWinGodmode", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofHellWimAutoWinGodmode.lua")
                    
addscriptexist(7560156054, "ClickerSimulatorAutoClicker", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerSimulatorAutoClicker.lua")
                    
addscriptexist(735030788, "RoyaleHighTeleporttoyouDiamondFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoyaleHighTeleporttoyouDiamondFarm.lua")
                    
addscriptexist(6170705260, "BlendingSimulator2AutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BlendingSimulator2AutoFarm.lua")
                    
addscriptexist(536102540, "DBZFinalStandFarmMobs", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DBZFinalStandFarmMobs.lua")
                    
addscriptexist(6284583030, "PetSimulatorXAutoFarmAutoOpenEggAutoPetCollection", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmAutoOpenEggAutoPetCollection.lua")
                    
addscriptexist(4042427666, "AnimeFightingSimulatorSlayerFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightingSimulatorSlayerFarm.lua")
                    
addscriptexist(2685347741, "GhostSimulatorAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GhostSimulatorAutoFarm.lua")
                    
addscriptexist(735030788, "RoyaleHighTeleportFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoyaleHighTeleportFarm.lua")
                    
addscriptexist(7279999673, "DragonBladeOpenWorldRPGFlingPLayers", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBladeOpenWorldRPGFlingPLayers.lua")
                    
addscriptexist(1224212277, "MadCityAutoFarmXp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityAutoFarmXp.lua")
                    
addscriptexist(7279999673, "DragonBladeOpenWorldRPGDeleteHouse", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBladeOpenWorldRPGDeleteHouse.lua")
    
addscript(7057761396,"Epic Fidget Hunt [All Fidgets]", "EpicFidgetHuntAllFidgets", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EpicFidgetHuntAllFidgets.lua")
                    
                    
addscriptexist(7057761396, "EpicFidgetHuntPopsFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EpicFidgetHuntPopsFarm.lua")
                    
addscriptexist(662417684, "LUCKYBLOCKSAllTools", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LUCKYBLOCKSAllTools.lua")
                    
addscriptexist(6356806222, "LagTest2021NoLag", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LagTest2021NoLag.lua")
                    
addscriptexist(6442957604, "CustomPCTycoonRedeemAllCodes", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CustomPCTycoonRedeemAllCodes.lua")
    
addscript(5112591059,"Ninjaman Simulator [Inf Strength]", "NinjamanSimulatorInfStrength", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjamanSimulatorInfStrength.lua")
                    
                    
addscriptexist(6170705260, "BlendingSimulator2BlendTokensFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BlendingSimulator2BlendTokensFarm.lua")
    
addscript(4714807265,"click to get bigger [Inf Coins]", "clicktogetbiggerInfCoins", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/clicktogetbiggerInfCoins.lua")
                    
    
addscript(2597632885,"sno day [All Hat]", "snodayAllHat", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/snodayAllHat.lua")
                    
    
addscript(6220960770,"Blades World [Auto Farm]", "BladesWorldAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BladesWorldAutoFarm.lua")
                    
    
addscript(8116417963,"Carcraft [Kill ALl]", "CarcraftKillALl", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarcraftKillALl.lua")
                    
                    
addscriptexist(7791873535, "REALISTICHOODAllGamepass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/REALISTICHOODAllGamepass.lua")
                    
addscriptexist(735030788, "RoyaleHighFastFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoyaleHighFastFarm.lua")
    
addscript(4646477729,"Tower Heroes [Auto Farm]", "TowerHeroesAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerHeroesAutoFarm.lua")
                    
    
addscript(1478636977,"Monster Battle [Auto Farm]", "MonsterBattleAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MonsterBattleAutoFarm.lua")
                    
    
addscript(6853377206,"Ported Weapon Animations [Silent Aim, Auto Shoot]", "PortedWeaponAnimationsSilentAimAutoShoot", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PortedWeaponAnimationsSilentAimAutoShoot.lua")
                    
                    
addscriptexist(4714807265, "clicktogetbiggerInаRebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/clicktogetbiggerInаRebirth.lua")
    
addscript(6585294146,"Lifting Items Simulator [Auto Farm]", "LiftingItemsSimulatorAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LiftingItemsSimulatorAutoFarm.lua")
                    
    
addscript(6810246027,"extraOrdinary [Auto Farm, Kill Aura]", "extraOrdinaryAutoFarmKillAura", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/extraOrdinaryAutoFarmKillAura.lua")
                    
                    
addscriptexist(7791873535, "REALISTICHOODInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/REALISTICHOODInfMoney.lua")
                    
addscriptexist(7860844204, "LifeSentencePlayerespAttackauraRobesp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LifeSentencePlayerespAttackauraRobesp.lua")
                    
addscriptexist(7187281400, "TouchFootballWorldCupAutoGoal", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TouchFootballWorldCupAutoGoal.lua")
    
addscript(8105323516,"Trash Game [Infinite Moeny, Auto Collect Trash, Auto Rebirth]", "TrashGameInfiniteMoenyAutoCollectTrashAutoRebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TrashGameInfiniteMoenyAutoCollectTrashAutoRebirth.lua")
                    
                    
addscriptexist(537413528, "BuildABoatForTreasureDeleteDamage", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureDeleteDamage.lua")
                    
addscriptexist(735030788, "RoyaleHighInfDiamond", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoyaleHighInfDiamond.lua")
                    
addscriptexist(4459593483, "FORCEInfCredits", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FORCEInfCredits.lua")
                    
addscriptexist(6810246027, "extraOrdinaryFreezeenemies", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/extraOrdinaryFreezeenemies.lua")
                    
addscriptexist(6810246027, "extraOrdinaryKillAura", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/extraOrdinaryKillAura.lua")
                    
addscriptexist(7014716500, "ProBorderspeedmax", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProBorderspeedmax.lua")
                    
addscriptexist(2866967438, "FishingFrontierAutoFarmKillMonstersAutoSell", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FishingFrontierAutoFarmKillMonstersAutoSell.lua")
                    
addscriptexist(2809202155, "AnimeClickerSimulatorAutoClickAutoRebirthAutoBuyEggs", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeClickerSimulatorAutoClickAutoRebirthAutoBuyEggs.lua")
                    
addscriptexist(4111023553, "DeepwokenCombatFeaturesMovementFeaturesVisualFeatures", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeepwokenCombatFeaturesMovementFeaturesVisualFeatures.lua")
    
addscript(258258996,"Miner's Haven [Auto farm, Base mods, Webhooks]", "MinersHavenAutofarmBasemodsWebhooks", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MinersHavenAutofarmBasemodsWebhooks.lua")
                    
                    
addscriptexist(2809202155, "YourBizarreAdventureAutobuyStandattachStandFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YourBizarreAdventureAutobuyStandattachStandFarm.lua")
                    
addscriptexist(1962086868, "TowerofHellInfiniteJumpGodModeAntiFog", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofHellInfiniteJumpGodModeAntiFog.lua")
                    
addscriptexist(7014716500, "ProBorderStrengthmax", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProBorderStrengthmax.lua")
    
addscript(961426258,"Koala Cafe [Invisible, Auto Mop]", "KoalaCafeInvisibleAutoMop", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KoalaCafeInvisibleAutoMop.lua")
                    
                    
addscriptexist(2317712696, "TheWildWestEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheWildWestEsp.lua")
    
addscript(3440262694,"Airport Tycoon [Redeem Codes]", "AirportTycoonRedeemCodes", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AirportTycoonRedeemCodes.lua")
                    
    
addscript(6114360009,"Prison Life 3 [Auto Farm]", "PrisonLife3AutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLife3AutoFarm.lua")
                    
                    
addscriptexist(6542731310, "DogecoinMiningTycoonGumDupe", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DogecoinMiningTycoonGumDupe.lua")
                    
addscriptexist(6284583030, "PetSimulatorXAutofarmTroll", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutofarmTroll.lua")
                    
addscriptexist(1899149341, "VehicleTycoonFastMoneyFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VehicleTycoonFastMoneyFarm.lua")
                    
addscriptexist(5780309044, "StandsAwakeningItemFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StandsAwakeningItemFarm.lua")
                    
addscriptexist(7896264844, "FindtheMarkersBypassAntiGrabGrabAllMarkers", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FindtheMarkersBypassAntiGrabGrabAllMarkers.lua")
                    
addscriptexist(413424176, "CloneTycoon2AdminFunction", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CloneTycoon2AdminFunction.lua")
                    
addscriptexist(6114360009, "PrisonLife3AutoRob1000PerSecond", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLife3AutoRob1000PerSecond.lua")
                    
addscriptexist(6902912928, "GETTOTHETOPInfinitePoints", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GETTOTHETOPInfinitePoints.lua")
                    
addscriptexist(6902912928, "GETTOTHETOPAutoWin", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GETTOTHETOPAutoWin.lua")
    
addscript(4695007916,"Weight Lifting Simulator 3 [Infinite Strength]", "WeightLiftingSimulator3InfiniteStrength", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeightLiftingSimulator3InfiniteStrength.lua")
                    
    
addscript(2877178664,"I Dont Feel So Oof [Auto Farm]", "IDontFeelSoOofAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/IDontFeelSoOofAutoFarm.lua")
                    
    
addscript(7336128600,"Pet Legends [GUI Auto Farm Aura & More!]", "PetLegendsGUIAutoFarmAuraMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetLegendsGUIAutoFarmAuraMore.lua")
                    
                    
addscriptexist(3956818381, "NinjaLegendsAutoFarmGui", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsAutoFarmGui.lua")
    
addscript(7215261025,"Retro TDS [Infinite in Game Cash]", "RetroTDSInfiniteinGameCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RetroTDSInfiniteinGameCash.lua")
                    
                    
addscriptexist(185655149, "WelcometoBloxburgHairdresserAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WelcometoBloxburgHairdresserAutoFarm.lua")
                    
addscriptexist(654732683, "CarCrushers2GRINDHELPERUTILITY", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarCrushers2GRINDHELPERUTILITY.lua")
    
addscript(6432407703,"Big City Tycoon [Collect Presents]", "BigCityTycoonCollectPresents", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BigCityTycoonCollectPresents.lua")
                    
                    
addscriptexist(6055959032, "JailbirdEspSilentAim", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbirdEspSilentAim.lua")
                    
addscriptexist(1345139196, "TreasureHuntSimulatorAutoFarmAutorebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TreasureHuntSimulatorAutoFarmAutorebirth.lua")
    
addscript(7666393362,"Tower of Guessing [Get Answer Of Floor]", "TowerofGuessingGetAnswerOfFloor", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofGuessingGetAnswerOfFloor.lua")
                    
    
addscript(6830111083,"Sandy Shores [Kill All Players]", "SandyShoresKillAllPlayers", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SandyShoresKillAllPlayers.lua")
                    
                    
addscriptexist(583507031, "PapersPleaseGunMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PapersPleaseGunMode.lua")
                    
addscriptexist(5112591059, "NinjamanSimulatorInfiniteStrength", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjamanSimulatorInfiniteStrength.lua")
                    
addscriptexist(7666393362, "TowerofGuessingInfiniteSkips", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofGuessingInfiniteSkips.lua")
                    
addscriptexist(7666393362, "TowerofGuessingGetAllBadgesAutoComlete", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofGuessingGetAllBadgesAutoComlete.lua")
    
addscript(6305942109,"Laundry Simulator [Auto Farm, All Gamepass]", "LaundrySimulatorAutoFarmAllGamepass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LaundrySimulatorAutoFarmAllGamepass.lua")
                    
                    
addscriptexist(6442957604, "DarkDexv3CustomIcons", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DarkDexv3CustomIcons.lua")
                    
addscriptexist(6407649031, "NOSCOPEARCADESilentAimOpenSourse", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NOSCOPEARCADESilentAimOpenSourse.lua")
                    
addscriptexist(3101667897, "LegendsOfSpeedAutoFarmHoopsRebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendsOfSpeedAutoFarmHoopsRebirth.lua")
    
addscript(6466630690,"Cat Infection [Anti Infection]", "CatInfectionAntiInfection", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CatInfectionAntiInfection.lua")
                    
                    
addscriptexist(6466630690, "CatInfectionKillAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CatInfectionKillAll.lua")
                    
addscriptexist(5023820864, "TradeTowerAutoClickAutoUpgradeAutoCase", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TradeTowerAutoClickAutoUpgradeAutoCase.lua")
    
addscript(6198225400,"Legends Re:Written [Artifact Farm - Mob Auto Farm & God Mode]", "LegendsReWrittenArtifactFarmMobAutoFarmGodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendsReWrittenArtifactFarmMobAutoFarmGodMode.lua")
                    
                    
addscriptexist(318978013, "KickOffDeEquipBallFromPlayersSpamToGetPasses", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KickOffDeEquipBallFromPlayersSpamToGetPasses.lua")
                    
addscriptexist(5911084042, "SpecterInfiniteMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpecterInfiniteMoney.lua")
                    
addscriptexist(8323912766, "ROBLOXFakeInGamePrompt", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ROBLOXFakeInGamePrompt.lua")
                    
addscriptexist(7791873535, "REALISTICHOODGetAllGuns", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/REALISTICHOODGetAllGuns.lua")
    
addscript(6751371363,"Hood Duels [Auto Farm]", "HoodDuelsAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HoodDuelsAutoFarm.lua")
                    
    
addscript(8114798443,"Webman Simulator [Infinite Strong & Energy, Auto Open Egg]", "WebmanSimulatorInfiniteStrongEnergyAutoOpenEgg", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WebmanSimulatorInfiniteStrongEnergyAutoOpenEgg.lua")
                    
    
addscript(2577040780,"Eviction Notice [Auto Challenge]", "EvictionNoticeAutoChallenge", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EvictionNoticeAutoChallenge.lua")
                    
                    
addscriptexist(2788229376, "DaHoodGod", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodGod.lua")
                    
addscriptexist(6466630690, "CatInfectionLoopKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CatInfectionLoopKillAll.lua")
                    
addscriptexist(5993942214, "RushPointInfAmmo", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RushPointInfAmmo.lua")
                    
addscriptexist(4934471106, "MyHeroManiaFarmMobsHidename", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyHeroManiaFarmMobsHidename.lua")
                    
addscriptexist(6938803436, "AnimeDimensionsSimulatorAutoJoinLobbyAutoKillMobs", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeDimensionsSimulatorAutoJoinLobbyAutoKillMobs.lua")
                    
addscriptexist(8116417963, "CarcraftInfiniteCurrency", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarcraftInfiniteCurrency.lua")
                    
addscriptexist(6802248248, "SAITAMANIAFarmLevelCollectGiftMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SAITAMANIAFarmLevelCollectGiftMore.lua")
                    
addscriptexist(6299805723, "AnimeFightersSimulatorFarmMoneyLevelFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightersSimulatorFarmMoneyLevelFarmMore.lua")
                    
addscriptexist(5233782396, "CreaturesofSonariaAfkAutoBellsFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CreaturesofSonariaAfkAutoBellsFarm.lua")
                    
addscriptexist(735030788, "RoyaleHighFarmGems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoyaleHighFarmGems.lua")
                    
addscriptexist(4520749081, "KingLegacyGUIFarmLevelAutoStatsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KingLegacyGUIFarmLevelAutoStatsMore.lua")
    
addscript(69817459,"Digimon Masters [Insta Collect All Chests]", "DigimonMastersInstaCollectAllChests", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DigimonMastersInstaCollectAllChests.lua")
                    
    
addscript(7853511605,"Transfurify Remastered [Auto Escape]", "TransfurifyRemasteredAutoEscape", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TransfurifyRemasteredAutoEscape.lua")
                    
    
addscript(168097015,"Star Wars [No Recoil, No Spread, No Overheat]", "StarWarsNoRecoilNoSpreadNoOverheat", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StarWarsNoRecoilNoSpreadNoOverheat.lua")
                    
                    
addscriptexist(4632627223, "BlackGrimoireWellAutoQuest", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BlackGrimoireWellAutoQuest.lua")
                    
addscriptexist(4111023553, "DeepwokenServerHop", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeepwokenServerHop.lua")
                    
addscriptexist(2693023319, "ExpeditionAntarcticaNodamagewater", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ExpeditionAntarcticaNodamagewater.lua")
                    
addscriptexist(2693023319, "ExpeditionAntarcticaInfEnergyExhaustion", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ExpeditionAntarcticaInfEnergyExhaustion.lua")
                    
addscriptexist(4616652839, "ShindoLifeChristmasFarmNPCs", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoLifeChristmasFarmNPCs.lua")
                    
addscriptexist(2753915549, "BloxFruitsAutoFarmTeleportAutoSkill", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsAutoFarmTeleportAutoSkill.lua")
                    
addscriptexist(4996049426, "AllStarTowerDefenseCandyFarmAutoChrismaseventQuickLeave", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AllStarTowerDefenseCandyFarmAutoChrismaseventQuickLeave.lua")
                    
addscriptexist(306964494, "LoomianLegacyAutoFinder", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LoomianLegacyAutoFinder.lua")
                    
addscriptexist(6284583030, "PetSimulatorXAutoFarmAutoOpenEggStatTacker", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmAutoOpenEggStatTacker.lua")
                    
addscriptexist(648362523, "BreakingPointSilentAimRapidThrowKillaura", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BreakingPointSilentAimRapidThrowKillaura.lua")
                    
addscriptexist(292439477, "PhantomForcesAimLockNoShake", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesAimLockNoShake.lua")
                    
addscriptexist(318978013, "KickOffAutoFarmGoalFast", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KickOffAutoFarmGoalFast.lua")
                    
addscriptexist(2693023319, "ExpeditionAntarcticaCoinFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ExpeditionAntarcticaCoinFarm.lua")
                    
addscriptexist(137885680, "ZombieRushBESTAUTOFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieRushBESTAUTOFARM.lua")
                    
addscriptexist(6802248248, "SAITAMANIAServerHop", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SAITAMANIAServerHop.lua")
                    
addscriptexist(192800, "WorkataPizzaPlaceGetGolgenTrophy", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorkataPizzaPlaceGetGolgenTrophy.lua")
    
addscript(7280776979,"Hyundai Mobility Adventure [Auto Farm]", "HyundaiMobilityAdventureAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HyundaiMobilityAdventureAutoFarm.lua")
                    
                    
addscriptexist(6490016198, "SlayerTycoonMINEWOOD", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlayerTycoonMINEWOOD.lua")
                    
addscriptexist(3587619225, "MegaEasyObbyAUTOFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MegaEasyObbyAUTOFARM.lua")
                    
addscriptexist(5104202731, "SouthwestFloridaBetaCarSpeed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SouthwestFloridaBetaCarSpeed.lua")
    
addscript(3127396113,"Avengers Testing Server [Kill All]", "AvengersTestingServerKillAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AvengersTestingServerKillAll.lua")
                    
                    
addscriptexist(6769764667, "FactorySimulatorHarvestAuraAutopickupFillBright", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FactorySimulatorHarvestAuraAutopickupFillBright.lua")
    
addscript(6824046084,"Silly's Difficulty Chart Obby [Auto Farm]", "SillysDifficultyChartObbyAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SillysDifficultyChartObbyAutoFarm.lua")
                    
                    
addscriptexist(4913581664, "CartRideIntoRditeMessWithCarts", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CartRideIntoRditeMessWithCarts.lua")
                    
addscriptexist(6802248248, "SAITAMANIAGiantSnowmanFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SAITAMANIAGiantSnowmanFarm.lua")
    
addscript(4793451617,"Planet Mining Simulator [Auto Farm & More!]", "PlanetMiningSimulatorAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PlanetMiningSimulatorAutoFarmMore.lua")
                    
                    
addscriptexist(5736409216, "MallTycoonGUIAutoBuyAutoCollectMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MallTycoonGUIAutoBuyAutoCollectMore.lua")
                    
addscriptexist(6802248248, "SAITAMANIAGiftServerHop", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SAITAMANIAGiftServerHop.lua")
                    
addscriptexist(648362523, "BreakingPointNEWAUTOFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BreakingPointNEWAUTOFARM.lua")
                    
addscriptexist(6769764667, "FactorySimulatorGUIAutoFarmAutoSellMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FactorySimulatorGUIAutoFarmAutoSellMore.lua")
                    
addscriptexist(6769764667, "FactorySimulatorGUIAutoFarmAutoPickup", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FactorySimulatorGUIAutoFarmAutoPickup.lua")
    
addscript(7563640378,"Super Click Simulator 2 [Auto Farm]", "SuperClickSimulator2AutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperClickSimulator2AutoFarm.lua")
                    
    
addscript(8305160617,"Roblox [Auto Leave]", "RobloxAutoLeave", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxAutoLeave.lua")
                    
                    
addscriptexist(7429434108, "AnimeTappersGUIAUTOFARMGIVEALLPASS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeTappersGUIAUTOFARMGIVEALLPASS.lua")
                    
addscriptexist(7050008107, "HospitalTycoonPrioritizeMoneyAutoCollestCashKillAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HospitalTycoonPrioritizeMoneyAutoCollestCashKillAll.lua")
    
addscript(5244411056,"Bloxy Bingo [Auto MArk, Auto Bingo, Rejoin]", "BloxyBingoAutoMArkAutoBingoRejoin", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxyBingoAutoMArkAutoBingoRejoin.lua")
                    
                    
addscriptexist(7444263453, "JetpackJumpersFastAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JetpackJumpersFastAutoFarm.lua")
    
addscript(8207275875,"Roliday Rumble 2021 [Kill Aura, Freeze Entity]", "RolidayRumble2021KillAuraFreezeEntity", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RolidayRumble2021KillAuraFreezeEntity.lua")
                    
                    
addscriptexist(920587237, "AdoptMeSpawnAnyPets", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMeSpawnAnyPets.lua")
                    
addscriptexist(6284583030, "PetSimulatorXQuest25ChristmasEvent", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXQuest25ChristmasEvent.lua")
    
addscript(7663721179,"Crystal Valley Mining Simulator [Quest Giver, Auto Farm]", "CrystalValleyMiningSimulatorQuestGiverAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CrystalValleyMiningSimulatorQuestGiverAutoFarm.lua")
                    
                    
addscriptexist(6859865958, "YouTubeSimulatorAutoVidemadeAutoEditVideotp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YouTubeSimulatorAutoVidemadeAutoEditVideotp.lua")
    
addscript(6370195843,"Armed Disease Control [AUTO COLLECT PRESENTS]", "ArmedDiseaseControlAUTOCOLLECTPRESENTS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArmedDiseaseControlAUTOCOLLECTPRESENTS.lua")
                    
                    
addscriptexist(5023820864, "TradeTowerAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TradeTowerAutoFarm.lua")
    
addscript(8170900938,"Right 2 Fight V0.1.1 [Damage Multiplier]", "Right2FightV011DamageMultiplier", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Right2FightV011DamageMultiplier.lua")
                    
                    
addscriptexist(7663721179, "CrystalValleyMiningSimulatorAutoFarmAutoCollectTpQuest", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CrystalValleyMiningSimulatorAutoFarmAutoCollectTpQuest.lua")
                    
addscriptexist(6284583030, "PetSimulatorXx3SpeedHoverBoard", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXx3SpeedHoverBoard.lua")
                    
addscriptexist(292439477, "PhantomForcesBanlandChatenabler", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesBanlandChatenabler.lua")
                    
addscriptexist(3823781113, "SaberSimulatorCrackedGui20", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SaberSimulatorCrackedGui20.lua")
                    
addscriptexist(4954096313, "FieldTripZKillAllPlayers", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FieldTripZKillAllPlayers.lua")
    
addscript(855499080,"SKYWARS [Anti Cheat Bypass]", "SKYWARSAntiCheatBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SKYWARSAntiCheatBypass.lua")
                    
    
addscript(6161747775,"Pirate Clash [Kill Aura]", "PirateClashKillAura", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PirateClashKillAura.lua")
                    
                    
addscriptexist(443406476, "ProjectLazarusZombiesGunMod", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectLazarusZombiesGunMod.lua")
                    
addscriptexist(6284583030, "PetSimulatorXAutoCollectLootBags", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoCollectLootBags.lua")
                    
addscriptexist(2809202155, "YourBizarreAdventureItemAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YourBizarreAdventureItemAutoFarm.lua")
                    
addscriptexist(3102144307, "AnimeClickerSimulatorAutoClickAutoOpenEggAutoRebirth", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeClickerSimulatorAutoClickAutoOpenEggAutoRebirth.lua")
                    
addscriptexist(306964494, "LoomianLegacyAutoEncounter", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LoomianLegacyAutoEncounter.lua")
                    
addscriptexist(2727067538, "WorldZeroKillAuraAutoUpdradeAutoSell", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorldZeroKillAuraAutoUpdradeAutoSell.lua")
    
addscript(5874128725,"No Jumping Difficulty Chart Obby [UNLOCK JUMP, ALL LEVELS]", "NoJumpingDifficultyChartObbyUNLOCKJUMPALLLEVELS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NoJumpingDifficultyChartObbyUNLOCKJUMPALLLEVELS.lua")
                    
                    
addscriptexist(155382109, "SurviveandKilltheKillersinArea51EspinfAmmoGiveallweapons", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurviveandKilltheKillersinArea51EspinfAmmoGiveallweapons.lua")
                    
addscriptexist(4996049426, "AllStarTowerDefenseTeleporttoElfFarming", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AllStarTowerDefenseTeleporttoElfFarming.lua")
                    
addscriptexist(4996049426, "AllStarTowerDefenseGiftFarming", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AllStarTowerDefenseGiftFarming.lua")
                    
addscriptexist(6720959312, "LootQuestAutoFarmAutoSellMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LootQuestAutoFarmAutoSellMore.lua")
                    
addscriptexist(1224212277, "MadCityNewXpFarming", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityNewXpFarming.lua")
                    
addscriptexist(6950767274, "FightersEraAutoJob", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FightersEraAutoJob.lua")
                    
addscriptexist(5326405001, "BaseBattlesINFAmmoGunModeEspHitboxes", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BaseBattlesINFAmmoGunModeEspHitboxes.lua")
                    
addscriptexist(292439477, "PhantomForcesСhamsRaycastOpenSourse", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesСhamsRaycastOpenSourse.lua")
    
addscript(6219745799,"Vibe Airline [Make Seats freak Out]", "VibeAirlineMakeSeatsfreakOut", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VibeAirlineMakeSeatsfreakOut.lua")
                    
    
addscript(2990100290,"RPG Simulator [Auto Farm, Auto Skill]", "RPGSimulatorAutoFarmAutoSkill", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RPGSimulatorAutoFarmAutoSkill.lua")
                    
                    
addscriptexist(258258996, "MinersHavenAutoFarmAUTOSACRAFICECrateTp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MinersHavenAutoFarmAUTOSACRAFICECrateTp.lua")
                    
addscriptexist(443406476, "ProjectLazarusInfAmmo", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectLazarusInfAmmo.lua")
                    
addscriptexist(4058282580, "BoxingSimulatorFasterAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BoxingSimulatorFasterAutoFarm.lua")
    
addscript(1499872953,"Boku No Roblox [Auto-Farm, Auto-Use & More!]", "BokuNoRobloxAutoFarmAutoUseMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BokuNoRobloxAutoFarmAutoUseMore.lua")
                    
                    
addscriptexist(4632627223, "BlackGrimoireAutoWood", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BlackGrimoireAutoWood.lua")
    
addscript(7608438089,"The Winter Escape [Instantly Claim Items]", "TheWinterEscapeInstantlyClaimItems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheWinterEscapeInstantlyClaimItems.lua")
                    
    
addscript(54865335,"Floppy's Playtime [Ints Win]", "FloppysPlaytimeIntsWin", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FloppysPlaytimeIntsWin.lua")
                    
    
addscript(2986677229,"Giant Simulator [Auto Orbs]", "GiantSimulatorAutoOrbs", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GiantSimulatorAutoOrbs.lua")
                    
    
addscript(5006110264,"Fire Breathing Simulator [Best Auto-Farming INF Money]", "FireBreathingSimulatorBestAutoFarmingINFMoney", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FireBreathingSimulatorBestAutoFarmingINFMoney.lua")
                    
                    
addscriptexist(4639625707, "OilWarfareTycoonAutoFarmAutorebirthAutoAirdrop", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OilWarfareTycoonAutoFarmAutorebirthAutoAirdrop.lua")
                    
addscriptexist(4598019433, "genericroleplaygaemAutoTreeFarming", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/genericroleplaygaemAutoTreeFarming.lua")
                    
addscriptexist(4733278992, "SwordBloxOnlineRebirthAutoCraft", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwordBloxOnlineRebirthAutoCraft.lua")
                    
addscriptexist(2377868063, "StrucidSilentAimBase", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrucidSilentAimBase.lua")
    
addscript(7550128349,"London", "LondonNewJourneyMoneyFarmingSilentAim", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LondonNewJourneyMoneyFarmingSilentAim.lua")
                    
                    
addscriptexist(5023820864, "TradeTowerAutoCoinFlip", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TradeTowerAutoCoinFlip.lua")
                    
addscriptexist(3233893879, "BadBusinessGunModeESPAimBotMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BadBusinessGunModeESPAimBotMore.lua")
    
addscript(7430861102,"Aincrad Adventures [Teleport To Quest Giver]", "AincradAdventuresTeleportToQuestGiver", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AincradAdventuresTeleportToQuestGiver.lua")
                    
                    
addscriptexist(258258996, "MinersHavenAutoFarmSpooferMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MinersHavenAutoFarmSpooferMore.lua")
                    
addscriptexist(6808416928, "AimbloxSimpleAIMWallbagMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AimbloxSimpleAIMWallbagMore.lua")
                    
addscriptexist(4169490976, "MortemMetallumLightWeaponDamageBoost", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MortemMetallumLightWeaponDamageBoost.lua")
                    
addscriptexist(7430861102, "AincradAdventuresAutoFarmMonkeyGodMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AincradAdventuresAutoFarmMonkeyGodMode.lua")
                    
addscriptexist(6284583030, "PetSimulatorXShowPetHiddenChances", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXShowPetHiddenChances.lua")
                    
addscriptexist(6284583030, "PetSimulatorXEggOfManyGiftsAutoBuy", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXEggOfManyGiftsAutoBuy.lua")
                    
addscriptexist(7430861102, "AincradAdventuresBestItemsScriptsGiver", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AincradAdventuresBestItemsScriptsGiver.lua")
                    
addscriptexist(6679274937, "VansWorldGiverEventItem", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VansWorldGiverEventItem.lua")
    
addscript(885450884,"The Grand Crossing [Cashier Auto-Farm]", "TheGrandCrossingCashierAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheGrandCrossingCashierAutoFarm.lua")
                    
                    
addscriptexist(6824046084, "SillysDifficultyChartAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SillysDifficultyChartAutoFarm.lua")
    
addscript(7490012056,"ALL STAR BRAWL [Infinite Awakening]", "ALLSTARBRAWLInfiniteAwakening", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ALLSTARBRAWLInfiniteAwakening.lua")
                    
    
addscript(6985028626,"Roblox Community Space", "RobloxCommunitySpaceHolidayEditionGetBackPack", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxCommunitySpaceHolidayEditionGetBackPack.lua")
                    
                    
addscriptexist(6085581583, "ProjectHeroAutoQuestAutoStaminaAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectHeroAutoQuestAutoStaminaAutoFarm.lua")
                    
addscriptexist(4639625707, "OilWarfareTycoonAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OilWarfareTycoonAutoFarm.lua")
                    
addscriptexist(6198225400, "LegendsReWrittenAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendsReWrittenAutoFarm.lua")
    
addscript(2984072291,"Zombie Stories [Silent Aim]", "ZombieStoriesSilentAim", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieStoriesSilentAim.lua")
                    
    
addscript(5732966938,"WORLD DEFENDERS - Tower Defense [Insta Kill]", "WORLDDEFENDERSTowerDefenseInstaKill", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WORLDDEFENDERSTowerDefenseInstaKill.lua")
                    
    
addscript(7449695387,"Pet Fighters Simulator [Auto FArm, Auto Collect Coins, Click Attack]", "PetFightersSimulatorAutoFArmAutoCollectCoinsClickAttack", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetFightersSimulatorAutoFArmAutoCollectCoinsClickAttack.lua")
                    
                    
addscriptexist(4924922222, "BrookhavenRPAllPasesFeHeadlessGarage", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrookhavenRPAllPasesFeHeadlessGarage.lua")
    
addscript(7198500613,"Impossible Squid Game [Auto Farm]", "ImpossibleSquidGameAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ImpossibleSquidGameAutoFarm.lua")
                    
                    
addscriptexist(6284583030, "PetSimulatorXAutoFarmAutoBuyeggTp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmAutoBuyeggTp.lua")
                    
addscriptexist(920587237, "AdoptMeUPDATEAutoFarmEggFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMeUPDATEAutoFarmEggFarmMore.lua")
                    
addscriptexist(7114796110, "AnimeTrainingSimulatorGamepass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeTrainingSimulatorGamepass.lua")
    
addscript(3057050847,"Site-76", "Site76PrisonAnomaliesNoclipModDetector", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Site76PrisonAnomaliesNoclipModDetector.lua")
                    
    
addscript(5595252083,"RIOTFALL [Always HeadShot]", "RIOTFALLAlwaysHeadShot", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RIOTFALLAlwaysHeadShot.lua")
                    
                    
addscriptexist(1417427737, "MiningSimulatorAutoMineAutoSellNukeAura", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulatorAutoMineAutoSellNukeAura.lua")
                    
addscriptexist(6284583030, "PetSimulatorXUnlockGamepassAutoFarmAntiLag", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXUnlockGamepassAutoFarmAntiLag.lua")
                    
addscriptexist(6085581583, "ProjectHeroAddStaminaKillAuraAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectHeroAddStaminaKillAuraAutoFarm.lua")
    
addscript(3311165597,"Dragon Blox Ultimate [Auto Farm - Select Mob & More!]", "DragonBloxUltimateAutoFarmSelectMobMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBloxUltimateAutoFarmSelectMobMore.lua")
                    
    
addscript(5026999321,"A Dumb Day [TP ALL ITEM, INF HEALTH]", "ADumbDayTPALLITEMINFHEALTH", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ADumbDayTPALLITEMINFHEALTH.lua")
                    
                    
addscriptexist(6329844902, "LastPiratesMOBFARMAUTOATTACH", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LastPiratesMOBFARMAUTOATTACH.lua")
                    
addscriptexist(4042427666, "AnimeFightingSimulatorAutoFarmAutoFarmAllAitJump", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightingSimulatorAutoFarmAutoFarmAllAitJump.lua")
    
addscript(5535087806,"Tapping Mania [Easy Stats, Auto-Farm]", "TappingManiaEasyStatsAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingManiaEasyStatsAutoFarm.lua")
                    
                    
addscriptexist(6403373529, "SlapBattlesKillAuraAntiRagdollAntiTimeStop", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlapBattlesKillAuraAntiRagdollAntiTimeStop.lua")
                    
addscriptexist(3738091713, "BoxingLeagueNoSlow", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BoxingLeagueNoSlow.lua")
                    
addscriptexist(6802248248, "SAITAMANIAAutoFarmKillAura", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SAITAMANIAAutoFarmKillAura.lua")
                    
addscriptexist(2248408710, "DestructionSimulatorAddMoneyAddLvl", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DestructionSimulatorAddMoneyAddLvl.lua")
                    
addscriptexist(5041144419, "SCPRoleplaySilentAIMESPMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SCPRoleplaySilentAIMESPMore.lua")
    
addscript(5648523896,"Trenches", "TrenchesAlphaESPGunModeMeleeAura", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TrenchesAlphaESPGunModeMeleeAura.lua")
                    
                    
addscriptexist(277751860, "EpicMinigamesAntiCheatBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EpicMinigamesAntiCheatBypass.lua")
                    
addscriptexist(2984072291, "ZombieStoriesSilentAIM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieStoriesSilentAIM.lua")
    
addscript(2901172949,"Right 2 Fight 1 [Shot Mobs]", "Right2Fight1ShotMobs", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Right2Fight1ShotMobs.lua")
                    
    
addscript(8160862936,"SUPER EATER SIMULATOR [Auto-Farm, Auto-Buy]", "SUPEREATERSIMULATORAutoFarmAutoBuy", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SUPEREATERSIMULATORAutoFarmAutoBuy.lua")
                    
                    
addscriptexist(3233893879, "BadBusiness253HitboxextendESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BadBusiness253HitboxextendESP.lua")
                    
addscriptexist(2317712696, "TheWildWestAutoSprintAimBotFullBright", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheWildWestAutoSprintAimBotFullBright.lua")
                    
addscriptexist(286090429, "ArsenalEspAimbot", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalEspAimbot.lua")
                    
addscriptexist(4490140733, "MyRestaurantAutoFarmFaspNPCsAutoSit", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyRestaurantAutoFarmFaspNPCsAutoSit.lua")
                    
addscriptexist(7608438089, "TheWinterEscapeAutoFullCheer", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheWinterEscapeAutoFullCheer.lua")
                    
addscriptexist(6055959032, "JailbirdESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbirdESP.lua")
                    
addscriptexist(6679274937, "VansWorldAutoQuestTpCoins", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VansWorldAutoQuestTpCoins.lua")
    
addscript(7251333950,"untitled furry defenses [No Enemies]", "untitledfurrydefensesNoEnemies", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/untitledfurrydefensesNoEnemies.lua")
                    
                    
addscriptexist(292439477, "PhantomForcesPacificColdFrontPt2THIRDPERSON", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesPacificColdFrontPt2THIRDPERSON.lua")
                    
addscriptexist(6085581583, "ProjectHeroAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectHeroAutoFarm.lua")
                    
addscriptexist(10198661638, "MythicalStairsAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MythicalStairsAutoFarm.lua")
                    
addscriptexist(7430861102, "AincradAdventuresMobAutoFarming", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AincradAdventuresMobAutoFarming.lua")
                    
addscriptexist(6590798593, "WaterlooathomeInstaReload", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WaterlooathomeInstaReload.lua")
    
addscript(3145447020,"Mount Everest Climbing Roleplay [Oxygen Refill]", "MountEverestClimbingRoleplayOxygenRefill", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MountEverestClimbingRoleplayOxygenRefill.lua")
                    
                    
addscriptexist(621129760, "KATNewSimpleAim", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KATNewSimpleAim.lua")
    
addscript(7686955826,"Rolling Thunder [Auto-Farm]", "RollingThunderAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RollingThunderAutoFarm.lua")
                    
                    
addscriptexist(6085581583, "ProjectHeroKillAura", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectHeroKillAura.lua")
                    
addscriptexist(258258996, "MinersHavenBESTHUBMOREFUNCTIONS35", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MinersHavenBESTHUBMOREFUNCTIONS35.lua")
    
addscript(8012821049,"Floppy's Playtime! [Auto input security code]", "FloppysPlaytimeAutoinputsecuritycode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FloppysPlaytimeAutoinputsecuritycode.lua")
                    
                    
addscriptexist(23578803, "HotelElephantGiveeveryone10kRemoveeveryone10kServerCrush", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HotelElephantGiveeveryone10kRemoveeveryone10kServerCrush.lua")
                    
addscriptexist(7444263453, "JetpackJumpersIndJump", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JetpackJumpersIndJump.lua")
    
addscript(3486025575,"Magnet Simulator [Auto Sell, Auto FArm, Auto Buy]", "MagnetSimulatorAutoSellAutoFArmAutoBuy", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MagnetSimulatorAutoSellAutoFArmAutoBuy.lua")
                    
    
addscript(5534174456,"Tropical Resort Tycoon [Tp Tycoon, Auto Build, Auto Obby]", "TropicalResortTycoonTpTycoonAutoBuildAutoObby", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TropicalResortTycoonTpTycoonAutoBuildAutoObby.lua")
                    
                    
addscriptexist(6878620017, "MegaObbyAutoLvl", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MegaObbyAutoLvl.lua")
                    
addscriptexist(6720959312, "LootQuestAutoFarmMobHideName", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LootQuestAutoFarmMobHideName.lua")
                    
addscriptexist(263761432, "HorrificHousingAntiFall", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HorrificHousingAntiFall.lua")
                    
addscriptexist(6085581583, "ProjectHeroAutoFarmAutoQuestStats", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectHeroAutoFarmAutoQuestStats.lua")
    
addscript(1535701761,"The Clown Killings Reborn [Kill Aura,Esp, HitBox]", "TheClownKillingsRebornKillAuraEspHitBox", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheClownKillingsRebornKillAuraEspHitBox.lua")
                    
                    
addscriptexist(5874128725, "NoJumpingDifficultyChartObbyFastFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NoJumpingDifficultyChartObbyFastFarm.lua")
                    
addscriptexist(6403373529, "SlapBattlesHitboxExtender", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlapBattlesHitboxExtender.lua")
    
addscript(5192488964,"Bully some monater [Infiniti Stamina]", "BullysomemonaterInfinitiStamina", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BullysomemonaterInfinitiStamina.lua")
                    
                    
addscriptexist(443406476, "ProjectLazarusInfinitiAmmo", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectLazarusInfinitiAmmo.lua")
                    
addscriptexist(6198225400, "LegendsReWrittenOreFarming", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendsReWrittenOreFarming.lua")
    
addscript(3082002798,"Teen Titans Battlegrounds [Loop Kill All Players]", "TeenTitansBattlegroundsLoopKillAllPlayers", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TeenTitansBattlegroundsLoopKillAllPlayers.lua")
                    
    
addscript(5834211079,"City - 8 [No Jump Delay]", "City8NoJumpDelay", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/City8NoJumpDelay.lua")
                    
    
addscript(5926001758,"Color Block [Auto Win, Farm Pumpkins, Auto Buy Pets]", "ColorBlockAutoWinFarmPumpkinsAutoBuyPets", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ColorBlockAutoWinFarmPumpkinsAutoBuyPets.lua")
                    
                    
addscriptexist(7430861102, "AincradAdventuresInstaKillKillAura", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AincradAdventuresInstaKillKillAura.lua")
                    
addscriptexist(6198225400, "LegendsReWrittenChestsFarming", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendsReWrittenChestsFarming.lua")
    
addscript(3224790922,"Attack On Titan [Inf Jump, Hide Name, No Clip]", "AttackOnTitanInfJumpHideNameNoClip", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AttackOnTitanInfJumpHideNameNoClip.lua")
                    
                    
addscriptexist(4520749081, "KingLegacyAutoFarmAutoStatsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KingLegacyAutoFarmAutoStatsMore.lua")
                    
addscriptexist(2986677229, "GiantSimulatorAutoQuestFarmSwordFarmSword", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GiantSimulatorAutoQuestFarmSwordFarmSword.lua")
                    
addscriptexist(2629642516, "BitcoinMinerTpGamePassAutoBuildBlackList", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BitcoinMinerTpGamePassAutoBuildBlackList.lua")
                    
addscriptexist(3082002798, "TeenTitansBattlegroundsKillPlayersWalkSзeedJumpPower", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TeenTitansBattlegroundsKillPlayersWalkSзeedJumpPower.lua")
                    
addscriptexist(292439477, "PhantomForcesAim", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesAim.lua")
                    
addscriptexist(6284583030, "PetSimulatorXNewFarmingGUIHoverboardMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXNewFarmingGUIHoverboardMore.lua")
                    
addscriptexist(2753915549, "BloxFruitsAutoFarmAutoBuyMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsAutoFarmAutoBuyMore.lua")
                    
addscriptexist(7503115095, "PopItTradingAUTOFARMINGTOYS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PopItTradingAUTOFARMINGTOYS.lua")
                    
addscriptexist(7232779505, "TypeRaceAUTOPLAYER", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TypeRaceAUTOPLAYER.lua")
                    
addscriptexist(4520749081, "KingLegacyWalkSpeedTranslatorSpectate", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KingLegacyWalkSpeedTranslatorSpectate.lua")
                    
addscriptexist(2512643572, "BubbleGunSimulatorAUTOFARMAUTOSELLAUTOBUY", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BubbleGunSimulatorAUTOFARMAUTOSELLAUTOBUY.lua")
                    
addscriptexist(2809202155, "YourBizarreAdventureAUTOFARMAUTOSKILLTP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YourBizarreAdventureAUTOFARMAUTOSKILLTP.lua")
    
addscript(7772810845,"The Presentation Experience [POINT FARM]", "ThePresentationExperiencePOINTFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThePresentationExperiencePOINTFARM.lua")
                    
                    
addscriptexist(183364845, "SpeedRun4NEWGUIFARMING", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedRun4NEWGUIFARMING.lua")
                    
addscriptexist(3233893879, "BadBusiness253SilentAIM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BadBusiness253SilentAIM.lua")
                    
addscriptexist(71315343, "DragonBallRageAutoFarmAutoEnergy", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBallRageAutoFarmAutoEnergy.lua")
                    
addscriptexist(71315343, "DragonBallRageFEWorkingAurasPlayMusicFE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBallRageFEWorkingAurasPlayMusicFE.lua")
                    
addscriptexist(6191637341, "WeaponSimulator2AutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeaponSimulator2AutoFarm.lua")
                    
addscriptexist(7549229959, "SquidGameTheGlassBridgeAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SquidGameTheGlassBridgeAutoFarm.lua")
    
addscript(4110892437,"Kaiju Universe [Server Crash Script]", "KaijuUniverseServerCrashScript", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KaijuUniverseServerCrashScript.lua")
                    
    
addscript(8097148487,"Magic Champions [Farm Gui]", "MagicChampionsFarmGui", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MagicChampionsFarmGui.lua")
                    
                    
addscriptexist(537413528, "BuildABoatForTreasureAutoFarmNEW", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureAutoFarmNEW.lua")
                    
addscriptexist(4556951723, "RagdollPhysicsMusicPlayerFreeBadgeandMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RagdollPhysicsMusicPlayerFreeBadgeandMore.lua")
                    
addscriptexist(7608438089, "TheWinterEscapeInfiniteCheer", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheWinterEscapeInfiniteCheer.lua")
                    
addscriptexist(6284583030, "PetSimulatorXUPDATEBESTFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXUPDATEBESTFARM.lua")
    
addscript(7739897561,"Impossible Squid game [Click Mark]", "ImpossibleSquidgameClickMark", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ImpossibleSquidgameClickMark.lua")
                    
                    
addscriptexist(6711562581, "EightDriverCarRacingStatsCarModifier", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EightDriverCarRacingStatsCarModifier.lua")
                    
addscriptexist(4598019433, "genericroleplaygaemKillAuraESPMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/genericroleplaygaemKillAuraESPMore.lua")
                    
addscriptexist(413424176, "CloneTycoon2SetEveryoneOnLeaderboardToAnyNumberYouWant", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CloneTycoon2SetEveryoneOnLeaderboardToAnyNumberYouWant.lua")
                    
addscriptexist(292439477, "PhantomForcesAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesAutoFarm.lua")
                    
addscriptexist(735030788, "RoyaleHighLevelFarming", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoyaleHighLevelFarming.lua")
                    
addscriptexist(5984870779, "GARENAFREEFIREAutoSpamKillInstaKillKillAll", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GARENAFREEFIREAutoSpamKillInstaKillKillAll.lua")
                    
addscriptexist(621129760, "KATHitboxExtender", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KATHitboxExtender.lua")
                    
addscriptexist(7444263453, "JetpackJumpersNewBagINFJumps", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JetpackJumpersNewBagINFJumps.lua")
                    
addscriptexist(6711562581, "EightDriverCarRacingDestroyerFucker", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EightDriverCarRacingDestroyerFucker.lua")
                    
addscriptexist(6284583030, "PetSimulatorXEasyWithdrawDepositToBank", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXEasyWithdrawDepositToBank.lua")
                    
addscriptexist(6284583030, "PetSimulatorXDupeGemDupe", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXDupeGemDupe.lua")
                    
addscriptexist(8533682846, "MagicTrainingAntiCheatBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MagicTrainingAntiCheatBypass.lua")
                    
addscriptexist(6191637341, "WeaponSimulator2AUTOFARMAUTOBUY", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeaponSimulator2AUTOFARMAUTOBUY.lua")
    
addscript(4704006941,"Blade Throwing Simulator [AUTO-FARM, FREE GAMEPASS, FORCE TRADE]", "BladeThrowingSimulatorAUTOFARMFREEGAMEPASSFORCETRADE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BladeThrowingSimulatorAUTOFARMFREEGAMEPASSFORCETRADE.lua")
                    
                    
addscriptexist(6711562581, "EightDriverCarRacingMoneyExpFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EightDriverCarRacingMoneyExpFarm.lua")
                    
addscriptexist(7114796110, "AnimeTrainingSimulatorAUTOFARMAUTOTRAINAUTOEGG", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeTrainingSimulatorAUTOFARMAUTOTRAINAUTOEGG.lua")
    
addscript(413053960,"The Legendary Swords 2 RPG [INF Gold, INF Healt, More!]", "TheLegendarySwords2RPGINFGoldINFHealtMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheLegendarySwords2RPGINFGoldINFHealtMore.lua")
                    
    
addscript(1466995005,"RAGDOLL UNIVERSE [Snowflake Farm]", "RAGDOLLUNIVERSESnowflakeFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RAGDOLLUNIVERSESnowflakeFarm.lua")
                    
    
addscript(2281639237,"Stands Online v25 [Stand Arrow & Locacaca Farm]", "StandsOnlinev25StandArrowLocacacaFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StandsOnlinev25StandArrowLocacacaFarm.lua")
                    
                    
addscriptexist(171391948, "VehicleSimulatorMILESFARMAUTOFARMMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VehicleSimulatorMILESFARMAUTOFARMMORE.lua")
                    
addscriptexist(5244411056, "BloxyBingoAUTOFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxyBingoAUTOFARM.lua")
    
addscript(5228496215,"Remote Spy", "RemoteSpy", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RemoteSpy.lua")
                    
                    
addscriptexist(4566572536, "VehicleLegendsAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VehicleLegendsAutoFarm.lua")
                    
addscriptexist(920587237, "AdoptMeGingerBreadAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMeGingerBreadAutoFarm.lua")
    
addscript(6905196703,"2 Player Hacker Tycoon [ALL WEAPONS]", "2PlayerHackerTycoonALLWEAPONS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/2PlayerHackerTycoonALLWEAPONS.lua")
                    
    
addscript(2313058949,"Tornado Alley Ultimate [TP, SPECTATE GAME, GIVE ITEMS]", "TornadoAlleyUltimateTPSPECTATEGAMEGIVEITEMS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TornadoAlleyUltimateTPSPECTATEGAMEGIVEITEMS.lua")
                    
    
addscript(7768149183,"Find The Trollfaces [AUTO-FARM]", "FindTheTrollfacesAUTOFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FindTheTrollfacesAUTOFARM.lua")
                    
    
addscript(7049683699,"Ragdoll Engine [NEW SCRIPT GUI]", "RagdollEngineNEWSCRIPTGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RagdollEngineNEWSCRIPTGUI.lua")
                    
                    
addscriptexist(5130598377, "UNIVERSALAIMBOTVISUALS–RIOTFALLSUPPORT", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UNIVERSALAIMBOTVISUALS–RIOTFALLSUPPORT.lua")
    
addscript(2716845201,"Warrior Simulator [COINS FARM, NPC FARM, TP]", "WarriorSimulatorCOINSFARMNPCFARMTP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WarriorSimulatorCOINSFARMNPCFARMTP.lua")
                    
    
addscript(4032944086,"Workout Island [AUTO-FARM, AUTO-SELL, KILL-AURA]", "WorkoutIslandAUTOFARMAUTOSELLKILLAURA", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorkoutIslandAUTOFARMAUTOSELLKILLAURA.lua")
                    
                    
addscriptexist(5712833750, "AnimalSimulatorExpFarmCollectCheats", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimalSimulatorExpFarmCollectCheats.lua")
    
addscript(7017764865,"Be a Baby! Simulator [AUTO-FARM, AUTO-SELL, MORE!]", "BeaBabySimulatorAUTOFARMAUTOSELLMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeaBabySimulatorAUTOFARMAUTOSELLMORE.lua")
                    
                    
addscriptexist(4410049285, "DrivingSimulatorNEWAUTOFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DrivingSimulatorNEWAUTOFARM.lua")
                    
addscriptexist(6902912928, "GETTOTHETOPAUTOWINGIVEPOINTS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GETTOTHETOPAUTOWINGIVEPOINTS.lua")
                    
addscriptexist(294790062, "RobloxTitanicGodModeGeneratePointBreakBoat", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxTitanicGodModeGeneratePointBreakBoat.lua")
                    
addscriptexist(4954752502, "TowerofMiseryAutoFarmDestroyKillParts", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofMiseryAutoFarmDestroyKillParts.lua")
                    
addscriptexist(6284583030, "PetSimulatorXDupeGemsPets", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXDupeGemsPets.lua")
                    
addscriptexist(6198225400, "LegendsReWrittenAutoChestFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendsReWrittenAutoChestFarm.lua")
                    
addscriptexist(4042427666, "AnimeFightingSimulatorAUTOFARMAUTOTPTELEPORTS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightingSimulatorAUTOFARMAUTOTPTELEPORTS.lua")
                    
addscriptexist(6198225400, "LegendsReWrittenINFGOLD", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendsReWrittenINFGOLD.lua")
                    
addscriptexist(5104202731, "SouthwestFloridaBetInvivibleGunCarModsAutoJob", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SouthwestFloridaBetInvivibleGunCarModsAutoJob.lua")
                    
addscriptexist(4520749081, "KingLegacyUPDATEHUBBEST", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KingLegacyUPDATEHUBBEST.lua")
    
addscript(7199972186,"[ALPHA] Blood Engine 2 ", "ALPHABloodEngine2SlashManiaKILLALL", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ALPHABloodEngine2SlashManiaKILLALL.lua")
                    
    
addscript(121891070,"Legend Of Korra [SIMPLE AUTO LEVEL]", "LegendOfKorraSIMPLEAUTOLEVEL", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendOfKorraSIMPLEAUTOLEVEL.lua")
                    
    
addscript(7774228661,"Pirates Dream [SIMPLE AUTO FARM MOBS]", "PiratesDreamSIMPLEAUTOFARMMOBS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PiratesDreamSIMPLEAUTOFARMMOBS.lua")
                    
                    
addscriptexist(6769764667, "FactorySimulatorNEWGUIFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FactorySimulatorNEWGUIFARM.lua")
                    
addscriptexist(3652625463, "LiftingSimulatorNEWSIMPLEAUTOFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LiftingSimulatorNEWSIMPLEAUTOFARM.lua")
    
addscript(2888719930,"Boxing Simulator 2 [AUTO-FARM]", "BoxingSimulator2AUTOFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BoxingSimulator2AUTOFARM.lua")
                    
                    
addscriptexist(6753004901, "SwingCityInfStamina", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwingCityInfStamina.lua")
                    
addscriptexist(6753004901, "SwingCityAttachMode", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwingCityAttachMode.lua")
                    
addscriptexist(155615604, "PrisonLifeKILLAURA", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLifeKILLAURA.lua")
    
addscript(5598577415,"Frog Simulator [AUTO-FARM, AUTO-BUY, MORE!]", "FrogSimulatorAUTOFARMAUTOBUYMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FrogSimulatorAUTOFARMAUTOBUYMORE.lua")
                    
                    
addscriptexist(292439477, "PhantomForcesNOGUNBOBSWAY", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesNOGUNBOBSWAY.lua")
                    
addscriptexist(7774228661, "PiratesDreamKILLAURAMOBS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PiratesDreamKILLAURAMOBS.lua")
    
addscript(4067702497,"Offbeat Journeys [ KILL ALL ]", "OffbeatJourneysKILLALL", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OffbeatJourneysKILLALL.lua")
                    
                    
addscriptexist(5233268561, "ABizarreJourneyKILLAURA", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ABizarreJourneyKILLAURA.lua")
                    
addscriptexist(2753915549, "BloxFruitsAUTOFARMTPTONPC", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsAUTOFARMTPTONPC.lua")
                    
addscriptexist(6447798030, "FunkyFridayNEWAUTOPLAYER", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FunkyFridayNEWAUTOPLAYER.lua")
    
addscript(7239452266,"Pop It Simulator [Auto Farm, Tp, Fps Boost]", "PopItSimulatorAutoFarmTpFpsBoost", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PopItSimulatorAutoFarmTpFpsBoost.lua")
                    
                    
addscriptexist(537413528, "BuildABoatForTreasureAUTOFARMHALLOWEENBOSS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureAUTOFARMHALLOWEENBOSS.lua")
    
addscript(7728383137,"Dalgona Simulator [AUTO-FARMING]", "DalgonaSimulatorAUTOFARMING", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DalgonaSimulatorAUTOFARMING.lua")
                    
                    
addscriptexist(6284583030, "PetSimulatorXNEWGUIAutoFarmAutoOpenAllGamepassesMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXNEWGUIAutoFarmAutoOpenAllGamepassesMORE.lua")
    
addscript(7711545622,"The Fashion Awards 2021 [COMPLETE ALL QUESTS]", "TheFashionAwards2021COMPLETEALLQUESTS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheFashionAwards2021COMPLETEALLQUESTS.lua")
                    
                    
addscriptexist(189707, "NaturalDisasterSurvivalAUTOFARMLOCALSCRIPTS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NaturalDisasterSurvivalAUTOFARMLOCALSCRIPTS.lua")
                    
addscriptexist(185655149, "WelcometoBloxburgUPDATEAUTOFARMING", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WelcometoBloxburgUPDATEAUTOFARMING.lua")
                    
addscriptexist(142823291, "MurderMystery2ESPEMOTESTROLL", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2ESPEMOTESTROLL.lua")
                    
addscriptexist(3823781113, "SaberSimulatorNEWGUIAutoFarmAutoBuyAutoSell", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SaberSimulatorNEWGUIAutoFarmAutoBuyAutoSell.lua")
                    
addscriptexist(606849621, "JailbreakAIMBOTESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakAIMBOTESP.lua")
                    
addscriptexist(6299805723, "AnimeFightersSimulatorALLAUTOFARMSCOLLECTDROPS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightersSimulatorALLAUTOFARMSCOLLECTDROPS.lua")
                    
addscriptexist(6628835921, "MoneySimulatorXMOREFUNCTIONAUTOFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MoneySimulatorXMOREFUNCTIONAUTOFARM.lua")
                    
addscriptexist(2727067538, "WorldZeroKILLAURAAUTOFEEDPETAUTOITEM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorldZeroKILLAURAAUTOFEEDPETAUTOITEM.lua")
                    
addscriptexist(621129760, "KATBESTHUBAUTOKILLESPMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KATBESTHUBAUTOKILLESPMORE.lua")
    
addscript(6073366803,"Rage Runner [AUTO-WIN, INF Jump, No Fall]", "RageRunnerAUTOWININFJumpNoFall", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RageRunnerAUTOWININFJumpNoFall.lua")
                    
                    
addscriptexist(183364845, "SpeedRun4AUTOFARM3UNLOCKALLLEVELS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedRun4AUTOFARM3UNLOCKALLLEVELS.lua")
                    
addscriptexist(2202352383, "SuperHeroTrainingSimulatorJumpFarmTeleportFastFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperHeroTrainingSimulatorJumpFarmTeleportFastFarm.lua")
                    
addscriptexist(5712833750, "AnimalSimulatorExpFarmRejoinCollectCheats", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimalSimulatorExpFarmRejoinCollectCheats.lua")
                    
addscriptexist(4032944086, "WorkoutIslandKillAuraAutoAutoSell", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorkoutIslandKillAuraAutoAutoSell.lua")
                    
addscriptexist(2716845201, "WarriorSimulatorCoinsFarmNPCFarmTp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WarriorSimulatorCoinsFarmNPCFarmTp.lua")
                    
addscriptexist(6905196703, "2PlayerHackerTycoonAllweapons", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/2PlayerHackerTycoonAllweapons.lua")
                    
addscriptexist(891852901, "Greenville", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Greenville.lua")
                    
addscriptexist(7711545622, "TheFashionAwards2021Swords", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheFashionAwards2021Swords.lua")
                    
addscriptexist(3398014311, "RestaurantTycoon2AutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RestaurantTycoon2AutoFarm.lua")
                    
addscriptexist(7797478022, "BrokenBonesSimulatorInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrokenBonesSimulatorInfMoney.lua")
                    
addscriptexist(680750021, "CaseClickerAutoClickAutoSEllAutoRebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CaseClickerAutoClickAutoSEllAutoRebirth.lua")
                    
addscriptexist(4058282580, "BoxingSimulatorAutoFarmAutoEggAutoSell", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BoxingSimulatorAutoFarmAutoEggAutoSell.lua")
                    
addscriptexist(7429434108, "AnimeTappersAutoTapAutoComboFarmYen", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeTappersAutoTapAutoComboFarmYen.lua")
                    
addscriptexist(292439477, "PhantomForcesAImBotGudModsEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesAImBotGudModsEsp.lua")
                    
addscriptexist(3956818381, "NinjaLegendsAutoFarmAutoSellUnlockAllIslands", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsAutoFarmAutoSellUnlockAllIslands.lua")
                    
addscriptexist(4580204640, "SurvivetheKillerAutoFarmKillAllPanicTp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurvivetheKillerAutoFarmKillAllPanicTp.lua")
                    
addscriptexist(2619187362, "SuperPowerFightingSimulatorAutoFarmAutoAnubisAutoEvilPumpkin", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperPowerFightingSimulatorAutoFarmAutoAnubisAutoEvilPumpkin.lua")
                    
addscriptexist(4954752502, "TowerofMiseryAfkFarmInstaWinHightSpeed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofMiseryAfkFarmInstaWinHightSpeed.lua")
                    
addscriptexist(189707, "NaturalDisasterSurvivalFreeeCompasNaturalDetectNoFallDamage", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NaturalDisasterSurvivalFreeeCompasNaturalDetectNoFallDamage.lua")
    
addscript(7485253727,"True Piece [Auto Farm mobs, Auto Quest, Fruit Farm]", "TruePieceAutoFarmmobsAutoQuestFruitFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TruePieceAutoFarmmobsAutoQuestFruitFarm.lua")
                    
                    
addscriptexist(2788229376, "DaHoodAntoLockSilentAimEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodAntoLockSilentAimEsp.lua")
                    
addscriptexist(4616652839, "ShindoLifeAutoQuestAutoFarmBossAutoSKill", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoLifeAutoQuestAutoFarmBossAutoSKill.lua")
                    
addscriptexist(6802248248, "SAITAMANIAAutoQuestAutoFarmUseSkills", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SAITAMANIAAutoQuestAutoFarmUseSkills.lua")
                    
addscriptexist(7485253727, "TruePieceChestFarm", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TruePieceChestFarm.lua")
                    
addscriptexist(1224212277, "MadCityInfiniteAmmo", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityInfiniteAmmo.lua")
                    
addscriptexist(4580204640, "SurvivetheKillerTpDoorAfkFArmEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurvivetheKillerTpDoorAfkFArmEsp.lua")
                    
addscriptexist(4566572536, "VehicleLegendsAutoCollectCoins", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VehicleLegendsAutoCollectCoins.lua")
                    
addscriptexist(534701013, "TheLabyrinthAutoFarmEspAutoInvisible", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheLabyrinthAutoFarmEspAutoInvisible.lua")
                    
addscriptexist(294790062, "RobloxTitanicGodModeSpamDropItem", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxTitanicGodModeSpamDropItem.lua")
    
addscript(2184634969,"Survival Island [Fill Hunger and Water]", "SurvivalIslandFillHungerandWater", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurvivalIslandFillHungerandWater.lua")
                    
                    
addscriptexist(7449695387, "PetFightersSimulatorFastAttackAutoQuestFarmMobs", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetFightersSimulatorFastAttackAutoQuestFarmMobs.lua")
                    
addscriptexist(2317712696, "TheWildWestOreEsp", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheWildWestOreEsp.lua")
                    
addscriptexist(7485253727, "TruePieceAutoFarmAutoQuestInvisible", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TruePieceAutoFarmAutoQuestInvisible.lua")
                    
addscriptexist(4787629450, "BOOGABOOGATeleportKillAuraSilentAim", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BOOGABOOGATeleportKillAuraSilentAim.lua")
                    
addscriptexist(6769764667, "FactorySimulatorAutoMine", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FactorySimulatorAutoMine.lua")
                    
addscriptexist(7485253727, "TruePieceTeleportBYPASS", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TruePieceTeleportBYPASS.lua")
    
addscript(5909047091,"Zombie Tycoon [All Gamepasses]", "ZombieTycoonAllGamepasses", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieTycoonAllGamepasses.lua")
                    
                    
addscriptexist(2619187362, "SuperPowerFightingSimulatorAUTOCOLLECTPUMPKINS", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperPowerFightingSimulatorAUTOCOLLECTPUMPKINS.lua")
    
addscript(3198259055,"SoulShatters Test Place [GODMODE]", "SoulShattersTestPlaceGODMODE", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SoulShattersTestPlaceGODMODE.lua")
                    
                    
addscriptexist(654732683, "CarCrushers2FlyAutoFarmNoclip", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarCrushers2FlyAutoFarmNoclip.lua")
                    
addscriptexist(2986677229, "GiantSimulatorAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GiantSimulatorAutoFarm.lua")
                    
addscriptexist(6512923934, "UltraClickersAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UltraClickersAutoFarm.lua")
                    
addscriptexist(2753915549, "BloxFruitsAutoFarmFastAttack", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsAutoFarmFastAttack.lua")
                    
addscriptexist(3260590327, "TowerDefenseSimulatorTowersRemoveToversAutoSkip", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerDefenseSimulatorTowersRemoveToversAutoSkip.lua")
                    
addscriptexist(7449695387, "PetFightersSimulatorGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetFightersSimulatorGui.lua")
                    
addscriptexist(7485253727, "TruePieceAutoFarm", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TruePieceAutoFarm.lua")
                    
addscriptexist(2262441883, "ElectricStateDarkRPKillSpeedTeleportKeyBinds", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ElectricStateDarkRPKillSpeedTeleportKeyBinds.lua")
                    
addscriptexist(6802248248, "SAITAMANIAKillAura", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SAITAMANIAKillAura.lua")
                    
addscriptexist(286090429, "ArsenalAIMBOTESPALL", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalAIMBOTESPALL.lua")
                    
addscriptexist(29812337, "FramedEsp", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FramedEsp.lua")
                    
addscriptexist(7280118908, "SchoolSimulatorFreeGamepasses", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SchoolSimulatorFreeGamepasses.lua")
                    
addscriptexist(893973440, "FleetheFacilityNeverFailHacking", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FleetheFacilityNeverFailHacking.lua")
                    
addscriptexist(3678761576, "ENTRENCHEDEspWalkSpeed", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ENTRENCHEDEspWalkSpeed.lua")
                    
addscriptexist(3057050847, "Site76PrisonAnomaliesEspModGunsInfMoneyExp", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Site76PrisonAnomaliesEspModGunsInfMoneyExp.lua")
    
addscript(7718790950,"Legend Piece [INF Level, INF Gems, INF Stats]", "LegendPieceINFLevelINFGemsINFStats", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendPieceINFLevelINFGemsINFStats.lua")
                    
                    
addscriptexist(7444263453, "JetpackJumpersINFJumps", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JetpackJumpersINFJumps.lua")
                    
addscriptexist(13822889, "LumberTycoon2PAINTTOOLAUTODUPEGAMEMODS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LumberTycoon2PAINTTOOLAUTODUPEGAMEMODS.lua")
                    
addscriptexist(6284583030, "PetSimulatorXHATCHANYEGGPETFake", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXHATCHANYEGGPETFake.lua")
                    
addscriptexist(7336128600, "PetLegendsAutoFarm", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetLegendsAutoFarm.lua")
    
addscript(7387530636,"Pirate Warriors AutoFarm", "PirateWarriorsAutoFarm", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PirateWarriorsAutoFarm.lua")
                    
                    
addscriptexist(13822889, "LumberTycoon2DupeInventoryDupeMoney", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LumberTycoon2DupeInventoryDupeMoney.lua")
                    
addscriptexist(7239452266, "PopItSimulatorInfinitiGemsMoney", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PopItSimulatorInfinitiGemsMoney.lua")
                    
addscriptexist(4580204640, "SurvivetheKillerRemoveESPCreateESPRefreshESP", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurvivetheKillerRemoveESPCreateESPRefreshESP.lua")
                    
addscriptexist(7940932746, "RobloxReconnected", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxReconnected.lua")
                    
addscriptexist(537413528, "BuildABoatForTreasureAutoFarmAutoBuildImage", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureAutoFarmAutoBuildImage.lua")
                    
addscriptexist(7453798168, "YoutubeSimulatorXAutoClickAntiAfkAutoBuy", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YoutubeSimulatorXAutoClickAntiAfkAutoBuy.lua")
    
addscript(730951264,"The Maze [Inf Axe]", "TheMazeInfAxe", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheMazeInfAxe.lua")
                    
                    
addscriptexist(4580204640, "SurvivetheKillerKillEspAfkFarmTeleporttodoor", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurvivetheKillerKillEspAfkFarmTeleporttodoor.lua")
                    
addscriptexist(166986752, "PlaneCrazyKillPlayerWithSeatsTrapPlayer", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PlaneCrazyKillPlayerWithSeatsTrapPlayer.lua")
                    
addscriptexist(413424176, "CloneTycoon2KikBanPlayerInfiniteCashGemsGiantclone", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CloneTycoon2KikBanPlayerInfiniteCashGemsGiantclone.lua")
                    
addscriptexist(2551991523, "BrokenBonesIVInfMoneySpamChat", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrokenBonesIVInfMoneySpamChat.lua")
                    
addscriptexist(3956818381, "NinjaLegendsAutoSwordAutoSellUnlockallislands", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsAutoSwordAutoSellUnlockallislands.lua")
                    
addscriptexist(4246487209, "BossFightingSimulatorAutoClickSowrdAutoKillBossAutoUpgradeBackPack", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BossFightingSimulatorAutoClickSowrdAutoKillBossAutoUpgradeBackPack.lua")
                    
addscriptexist(443406476, "ProjectLazarusZOMBIESX10DAMAGE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectLazarusZOMBIESX10DAMAGE.lua")
                    
addscriptexist(662417684, "LUCKYBLOCKSInfAllBox", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LUCKYBLOCKSInfAllBox.lua")
                    
addscriptexist(142823291, "MurderMystery2KILLALLSHERIFANDMURDERESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2KILLALLSHERIFANDMURDERESP.lua")
                    
addscriptexist(7453798168, "YouTubeSimulatorXAUTOCLICKAUTOEDITSTELEPORTS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YouTubeSimulatorXAUTOCLICKAUTOEDITSTELEPORTS.lua")
                    
addscriptexist(6484864709, "GymTycoonAutoWorkOutAutoCollectDropAutoNPCCheckIn", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GymTycoonAutoWorkOutAutoCollectDropAutoNPCCheckIn.lua")
    
addscript(5865858426,"Retail Tycoon 2 [Auto Farm Event]", "RetailTycoon2AutoFarmEvent", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RetailTycoon2AutoFarmEvent.lua")
                    
                    
addscriptexist(2551991523, "BrokenBonesIVStartStopClose", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrokenBonesIVStartStopClose.lua")
                    
addscriptexist(137885680, "ZombieRushKILLALLBRINGALLESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieRushKILLALLBRINGALLESP.lua")
                    
addscriptexist(621129760, "KATAimSpamKnifeInfAmmo", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KATAimSpamKnifeInfAmmo.lua")
    
addscript(734159876,"SharkBite [Kill Shark/Infinite Tooth/Kill Survives]", "SharkBiteKillSharkInfiniteToothKillSurvives", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SharkBiteKillSharkInfiniteToothKillSurvives.lua")
                    
    
addscript(4543144283,"Mega Noob Simulator [Auto Kill, Kill Aura, Collect Coins]", "MegaNoobSimulatorAutoKillKillAuraCollectCoins", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MegaNoobSimulatorAutoKillKillAuraCollectCoins.lua")
                    
                    
addscriptexist(891852901, "GreenvilleAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GreenvilleAutoFarm.lua")
    
addscript(7555007091,"Hexa Game [AutoWin]", "HexaGameAutoWin", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HexaGameAutoWin.lua")
                    
    
addscript(1182833048,"Growing Up [flying broom]", "GrowingUpflyingbroom", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GrowingUpflyingbroom.lua")
                    
                    
addscriptexist(3851622790, "BreakInInstaHealTeleportGiveitems", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BreakInInstaHealTeleportGiveitems.lua")
                    
addscriptexist(13822889, "LumberTycoon2ANTIBLACKLISTMAXLANDPAINTTOOL", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LumberTycoon2ANTIBLACKLISTMAXLANDPAINTTOOL.lua")
                    
addscriptexist(3101667897, "LegendsOfSpeedAUTOFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendsOfSpeedAUTOFARM.lua")
    
addscript(7470980441,"Anime Attack Simulator [AUTO-FARM ALL WORLDS]", "AnimeAttackSimulatorAUTOFARMALLWORLDS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeAttackSimulatorAUTOFARMALLWORLDS.lua")
                    
    
addscript(6951762614,"UFO Simulator [AUTO-FARM, AUTO-CLAIM, MORE!]", "UFOSimulatorAUTOFARMAUTOCLAIMMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UFOSimulatorAUTOFARMAUTOCLAIMMORE.lua")
                    
    
addscript(4836887463,"Dog Piece [Give Fruit, Auto Skill, UI Toggle]", "DogPieceGiveFruitAutoSkillUIToggle", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DogPieceGiveFruitAutoSkillUIToggle.lua")
                    
                    
addscriptexist(6299805723, "AnimeFightersSimulatorAutoFarmExtraDamageAutoCollectYen", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightersSimulatorAutoFarmExtraDamageAutoCollectYen.lua")
                    
addscriptexist(3956818381, "NinjaLegendsAUTOBUYAUTOFARMAUTOSELLMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsAUTOBUYAUTOFARMAUTOSELLMORE.lua")
                    
addscriptexist(6104994594, "PilferingPiratesAutoFarmDefenseAutoFarmLevelAutoAttack", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PilferingPiratesAutoFarmDefenseAutoFarmLevelAutoAttack.lua")
                    
addscriptexist(155615604, "PrisonLifeKILLALLKILLAURALOCALPLAYER", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLifeKILLALLKILLAURALOCALPLAYER.lua")
                    
addscriptexist(920587237, "AdoptMeNEWAUTOFARMAUTOCHECKMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMeNEWAUTOFARMAUTOCHECKMORE.lua")
                    
addscriptexist(1962086868, "TowerofHellINFJUMPAUTOFARMNODAMAGE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofHellINFJUMPAUTOFARMNODAMAGE.lua")
                    
addscriptexist(6284583030, "PetSimulatorXNEWGUIFREEALLPASSMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXNEWGUIFREEALLPASSMORE.lua")
                    
addscriptexist(606849621, "JailbreakGODMODEFREEMONEYVEHICLEMOD", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakGODMODEFREEMONEYVEHICLEMOD.lua")
                    
addscriptexist(4282985734, "CombatWarriorsKILLAURAAUTOPARRYESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CombatWarriorsKILLAURAAUTOPARRYESP.lua")
                    
addscriptexist(7244314500, "FightmanSimulatorAUTOFARMUSEALLCODES", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FightmanSimulatorAUTOFARMUSEALLCODES.lua")
                    
addscriptexist(142823291, "MurderMystery2AUTOFARMKILLALLMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2AUTOFARMKILLALLMORE.lua")
                    
addscriptexist(185655149, "BloxburgALLAUTOFARMAUTODRIVEANTIAFK", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxburgALLAUTOFARMAUTODRIVEANTIAFK.lua")
    
addscript(7045537335,"Anime Worlds Simulator [AUTO-FARM, LOCAL SETTING]", "AnimeWorldsSimulatorAUTOFARMLOCALSETTING", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeWorldsSimulatorAUTOFARMLOCALSETTING.lua")
                    
                    
addscriptexist(3527629287, "BIGPaintballNEWUNLOCKALLGUNS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BIGPaintballNEWUNLOCKALLGUNS.lua")
                    
addscriptexist(2619187362, "SuperPowerFightingSimulatorNEWAUTOFARMINGGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperPowerFightingSimulatorNEWAUTOFARMINGGUI.lua")
                    
addscriptexist(4616652839, "ShindoFarmPumpkin", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoFarmPumpkin.lua")
                    
addscriptexist(537413528, "BuildABoatForTreasureAutoFarmAutoBuyFly", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureAutoFarmAutoBuyFly.lua")
                    
addscriptexist(6610021055, "NoobArmyTycoonTPtochestsautomaticallycollect", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NoobArmyTycoonTPtochestsautomaticallycollect.lua")
                    
addscriptexist(2512643572, "BubbleGumSimulatorTPautomaticallyclick", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BubbleGumSimulatorTPautomaticallyclick.lua")
                    
addscriptexist(6339160453, "AnimeNinjaWarTycoonInfmoneyfireinfinite", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeNinjaWarTycoonInfmoneyfireinfinite.lua")
                    
addscriptexist(7429434108, "AnimeTappersAutoFarmAutoRebirthBossFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeTappersAutoFarmAutoRebirthBossFarm.lua")
                    
addscriptexist(920587237, "AdoptMeAutoFarmCandy", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMeAutoFarmCandy.lua")
    
addscript(6706152946,"Jojo", "JojoCrusadersHeavenKillAura", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JojoCrusadersHeavenKillAura.lua")
                    
                    
addscriptexist(4520749081, "KingLegacyAUTOFARMAUTOQUESTMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KingLegacyAUTOFARMAUTOQUESTMORE.lua")
                    
addscriptexist(5865858426, "RetailTycoon2AutoPumpkinSmasher", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RetailTycoon2AutoPumpkinSmasher.lua")
                    
addscriptexist(4566572536, "VehicleLegendsNEWAUTOFARMSERVERHOP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VehicleLegendsNEWAUTOFARMSERVERHOP.lua")
    
addscript(3607821695,"Vietnam War Simulator [Auto Farm]", "VietnamWarSimulatorAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VietnamWarSimulatorAutoFarm.lua")
                    
                    
addscriptexist(4520749081, "KingLegacyGUIAUTOSTATSFARMINGESPMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KingLegacyGUIAUTOSTATSFARMINGESPMORE.lua")
                    
addscriptexist(13822889, "LumberTycoon2COLORWOODMAXLANDMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LumberTycoon2COLORWOODMAXLANDMORE.lua")
                    
addscriptexist(606849621, "JailbreakFASTGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakFASTGUI.lua")
    
addscript(4806026225,"Defender's Depot [Auto Grab]", "DefendersDepotAutoGrab", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DefendersDepotAutoGrab.lua")
                    
                    
addscriptexist(4996049426, "AllStarTowerDefenseFarmCandy", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AllStarTowerDefenseFarmCandy.lua")
    
addscript(3116680775,"One Blox Man [AUTO-TRAIN]", "OneBloxManAUTOTRAIN", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OneBloxManAUTOTRAIN.lua")
                    
                    
addscriptexist(294790062, "RobloxTitanic", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxTitanic.lua")
                    
addscriptexist(189707, "NaturalDisasterSurvivalGUIFLYNOCLIPMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NaturalDisasterSurvivalGUIFLYNOCLIPMORE.lua")
                    
addscriptexist(4282985734, "CombatWarriorsKillAuraInfiniteStaminaKillAuraRange", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CombatWarriorsKillAuraInfiniteStaminaKillAuraRange.lua")
                    
addscriptexist(920587237, "AdoptMeAutoPayOuFlyINfJumpFreeePopCorn", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMeAutoPayOuFlyINfJumpFreeePopCorn.lua")
                    
addscriptexist(2629642516, "BitcoinMinerMaxOverLockAutoExchangeBitcoinMultiplier", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BitcoinMinerMaxOverLockAutoExchangeBitcoinMultiplier.lua")
    
addscript(6635351922,"CaveWorld [ESP, TRACER]", "CaveWorldESPTRACER", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CaveWorldESPTRACER.lua")
                    
    
addscript(7313926139,"Manic Mining! [AUTO-FARM, LOCAL PLAYER, MORE!]", "ManicMiningAUTOFARMLOCALPLAYERMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ManicMiningAUTOFARMLOCALPLAYERMORE.lua")
                    
                    
addscriptexist(6284583030, "PetSimulatorXAutoFarmAutoEggAutoEquipBestPets", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmAutoEggAutoEquipBestPets.lua")
                    
addscriptexist(142823291, "MurderMystery2AutoFarmGodmodeKillAura", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2AutoFarmGodmodeKillAura.lua")
                    
addscriptexist(1962086868, "TowerOfHellGodmodeWinInfiniteJump", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerOfHellGodmodeWinInfiniteJump.lua")
                    
addscriptexist(3738091713, "BoxingLeagueAUTOFARMAUTOUPDATE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BoxingLeagueAUTOFARMAUTOUPDATE.lua")
                    
addscriptexist(5320510816, "BreakingPointXKNIFEFARMGUNFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BreakingPointXKNIFEFARMGUNFARM.lua")
                    
addscriptexist(6432407703, "BigCityTycoonAutoBuildPrioritizeGreensAutoObby", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BigCityTycoonAutoBuildPrioritizeGreensAutoObby.lua")
                    
addscriptexist(3652625463, "LiftingSimulatorAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LiftingSimulatorAutoFarm.lua")
                    
addscriptexist(6938803436, "AnimeDimensionsSimulatorAUTOFARMAUTOSKILLMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeDimensionsSimulatorAUTOFARMAUTOSKILLMORE.lua")
                    
addscriptexist(6284583030, "PetSimulatorXNewGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXNewGui.lua")
                    
addscriptexist(2753915549, "BloxFruitsESPAUTOSTATSFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsESPAUTOSTATSFARM.lua")
                    
addscriptexist(171391948, "VehicleSimulatorCARMODIFIER", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VehicleSimulatorCARMODIFIER.lua")
    
addscript(6186867282,"Project XL [Auto Attack/Auto Skills/Auto rob]", "ProjectXLAutoAttackAutoSkillsAutorob", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectXLAutoAttackAutoSkillsAutorob.lua")
                    
                    
addscriptexist(4282985734, "CombatWarriorsKillAuraAutoParryKillAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CombatWarriorsKillAuraAutoParryKillAll.lua")
                    
addscriptexist(6720959312, "BuildABoatForTreasureGodAutoFarmTransform", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureGodAutoFarmTransform.lua")
    
addscript(4545436299,"Pet Clicks Simulator [AUTO-FARM, DEV TOOL]", "PetClicksSimulatorAUTOFARMDEVTOOL", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetClicksSimulatorAUTOFARMDEVTOOL.lua")
                    
                    
addscriptexist(6299805723, "AnimeFightersSimulatorAUTOFARMGUIAUTOOPEN", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightersSimulatorAUTOFARMGUIAUTOOPEN.lua")
                    
addscriptexist(6432407703, "BigCityTycoonFLYINFMONEYAUTOBUILD", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BigCityTycoonFLYINFMONEYAUTOBUILD.lua")
    
addscript(7393403076,"Anime Artifacts Simulator [AUTO-COINS, AUTO-FARM MORE!]", "AnimeArtifactsSimulatorAUTOCOINSAUTOFARMMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeArtifactsSimulatorAUTOCOINSAUTOFARMMORE.lua")
                    
                    
addscriptexist(920587237, "AdoptMePETFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMePETFARM.lua")
    
addscript(9557370371,"MULTI TOOLS GUI [BY TERNI]", "MULTITOOLSGUIBYTERNI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MULTITOOLSGUIBYTERNI.lua")
                    
    
addscript(7261675971,"Anime Storm Simulator [GUI FARM]", "AnimeStormSimulatorGUIFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeStormSimulatorGUIFARM.lua")
                    
    
addscript(5985232436,"Infectious Smile [Hip Height, Reset Character]", "InfectiousSmileHipHeightResetCharacter", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/InfectiousSmileHipHeightResetCharacter.lua")
                    
                    
addscriptexist(7336128600, "PetLegendsAutoFarmAntiAfkAutoOpenEggs", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetLegendsAutoFarmAntiAfkAutoOpenEggs.lua")
                    
addscriptexist(6432407703, "BigCityTycoonFARMINGMONEY", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BigCityTycoonFARMINGMONEY.lua")
                    
addscriptexist(3527629287, "BIGPaintballKILLALL", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BIGPaintballKILLALL.lua")
                    
addscriptexist(6339160453, "NarutoWarTycoonINFMONEYCHI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NarutoWarTycoonINFMONEYCHI.lua")
    
addscript(4716045691,"POLYBATTLE [AIM, INF AMMO]", "POLYBATTLEAIMINFAMMO", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/POLYBATTLEAIMINFAMMO.lua")
                    
    
addscript(338521019,"Identity Fraud [ESP, Cheat Bypass]", "IdentityFraudESPCheatBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/IdentityFraudESPCheatBypass.lua")
                    
    
addscript(4651779470,"RECOIL [Toggle Esp, Aim, Clear walls]", "RECOILToggleEspAimClearwalls", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RECOILToggleEspAimClearwalls.lua")
                    
                    
addscriptexist(137885680, "ZombieRushAutoShootAutoEquip", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieRushAutoShootAutoEquip.lua")
                    
addscriptexist(4616652839, "ShindoAutoFarmVipServerAutoRank", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoAutoFarmVipServerAutoRank.lua")
                    
addscriptexist(6953291455, "EatingSimulatorAUTOFARMAUTOBUYAUTOEGGMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EatingSimulatorAUTOFARMAUTOBUYAUTOEGGMORE.lua")
                    
addscriptexist(7180042682, "MilitaryTycoonAUTOBUILDAUTOKILLMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MilitaryTycoonAUTOBUILDAUTOKILLMORE.lua")
    
addscript(7476406054,"Grow Up Simulator [AUTO-BUY, AUTO-FARM, AUTO-EGG MORE!]", "GrowUpSimulatorAUTOBUYAUTOFARMAUTOEGGMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GrowUpSimulatorAUTOBUYAUTOFARMAUTOEGGMORE.lua")
                    
                    
addscriptexist(4872321990, "IslandsFarmingFestivalAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/IslandsFarmingFestivalAutoFarm.lua")
    
addscript(6507107360,"Magnet Masters [FARM, AUTO-OPEN, MORE!]", "MagnetMastersFARMAUTOOPENMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MagnetMastersFARMAUTOOPENMORE.lua")
                    
                    
addscriptexist(445664957, "ParkourINFINITEPOINTSLEVEL", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ParkourINFINITEPOINTSLEVEL.lua")
                    
addscriptexist(142823291, "MurderMystery2KILLALL2021ANTIBAN", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2KILLALL2021ANTIBAN.lua")
                    
addscriptexist(4616652839, "ShindoLifeAUTOFARMMISSIONMOBSMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoLifeAUTOFARMMISSIONMOBSMORE.lua")
    
addscript(5229400211,"Battle-Gods-Simulator [Auto-Buy, Auto-Farm, MORE!]", "BattleGodsSimulatorAutoBuyAutoFarmMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BattleGodsSimulatorAutoBuyAutoFarmMORE.lua")
                    
    
addscript(1167791961,"Knife Simulator [MONEY FARM,AIM]", "KnifeSimulatorMONEYFARMAIM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KnifeSimulatorMONEYFARMAIM.lua")
                    
                    
addscriptexist(6284583030, "PetSimulatorXPETSDUPENEWAUTOFARMMORE2021", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXPETSDUPENEWAUTOFARMMORE2021.lua")
                    
addscriptexist(7549229959, "SquidGameNEWGUI2021", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SquidGameNEWGUI2021.lua")
    
addscript(6761201193,"Ro-Squid Game {WINS FARM]", "RoSquidGameWINSFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoSquidGameWINSFARM.lua")
                    
    
addscript(5740246170,"Tower Simulator [Auto Click/Auto Upgrade/Collect Bricks]", "TowerSimulatorAutoClickAutoUpgradeCollectBricks", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerSimulatorAutoClickAutoUpgradeCollectBricks.lua")
                    
                    
addscriptexist(3198259055, "SoulShattersBetterStaminaAimBotBettySpear", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SoulShattersBetterStaminaAimBotBettySpear.lua")
    
addscript(7082539621,"Anime Destroyers Simulator [Auto-farm, Updates, More!]", "AnimeDestroyersSimulatorAutofarmUpdatesMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeDestroyersSimulatorAutofarmUpdatesMore.lua")
                    
    
addscript(7262582142,"Paint Simulator [MONEY FARM]", "PaintSimulatorMONEYFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PaintSimulatorMONEYFARM.lua")
                    
                    
addscriptexist(3823781113, "SaberSimulatorAutoSwingAutoSellAutoKing", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SaberSimulatorAutoSwingAutoSellAutoKing.lua")
                    
addscriptexist(3260590327, "TowerDefenseSimulatorAUTOPLACEAUTOFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerDefenseSimulatorAUTOPLACEAUTOFARM.lua")
                    
addscriptexist(7336128600, "PetLegendsAutoOpenEggTeleportAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetLegendsAutoOpenEggTeleportAutoFarm.lua")
                    
addscriptexist(185655149, "WelcometoBloxburgBESTAUTOFARM", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WelcometoBloxburgBESTAUTOFARM.lua")
                    
addscriptexist(3527629287, "BIGPaintballBESTGUIKILLALL", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BIGPaintballBESTGUIKILLALL.lua")
                    
addscriptexist(4996049426, "AllStarTowerDefenseFARMGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AllStarTowerDefenseFARMGUI.lua")
                    
addscriptexist(3272915504, "WorldofMagicGodModeChestFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorldofMagicGodModeChestFarm.lua")
    
addscript(6734679364,"Ninja Blade [BEST GUI, AUTO-FARM]", "NinjaBladeBESTGUIAUTOFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaBladeBESTGUIAUTOFARM.lua")
                    
                    
addscriptexist(537413528, "BuildABoatForTreasureNEWAUTOFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureNEWAUTOFARM.lua")
                    
addscriptexist(3823781113, "SaberSimulatorAutoClickBossFarmBetaCandyFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SaberSimulatorAutoClickBossFarmBetaCandyFarm.lua")
    
addscript(6129557066,"UFO Tycoon [AUTO-BUILD, AUTO-COLLECT]", "UFOTycoonAUTOBUILDAUTOCOLLECT", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UFOTycoonAUTOBUILDAUTOCOLLECT.lua")
                    
                    
addscriptexist(7453798168, "YouTubeSimulatorXAutoClickAutoEditAutoCollectGems", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YouTubeSimulatorXAutoClickAutoEditAutoCollectGems.lua")
                    
addscriptexist(142823291, "MurderMystery2KillAllAutoFarmKnifeSpam", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2KillAllAutoFarmKnifeSpam.lua")
    
addscript(7541759836,"凹凸世界：自由丛林", "凹凸世界：自由丛林", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/凹凸世界：自由丛林.lua")
                    
                    
addscriptexist(4866692557, "AgeofHeroes3FARMS", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AgeofHeroes3FARMS.lua")
    
addscript(6410967163,"Beeface", "BeefaceBeaBeeNoclipAutoSellAutoExpand", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeefaceBeaBeeNoclipAutoSellAutoExpand.lua")
                    
    
addscript(5708035517,"Hide and Seek [Auto Farm/Game Pass]", "HideandSeekAutoFarmGamePass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HideandSeekAutoFarmGamePass.lua")
                    
    
addscript(6590445138,"Island Survival [Auto Farm]", "IslandSurvivalAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/IslandSurvivalAutoFarm.lua")
                    
                    
addscriptexist(7393403076, "AnimeArtifactsSimulatorFARMMONEYTEMPLATEDEMON", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeArtifactsSimulatorFARMMONEYTEMPLATEDEMON.lua")
                    
addscriptexist(606849621, "JailbreakAutoFarmInfNitroKillAura", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakAutoFarmInfNitroKillAura.lua")
    
addscript(5734383673,"Roblox [Fly facilities]", "RobloxFlyfacilities", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxFlyfacilities.lua")
                    
                    
addscriptexist(566399244, "ElementalBattlegroundsGUIAUTOFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ElementalBattlegroundsGUIAUTOFARM.lua")
                    
addscriptexist(6951762614, "UFOSimulatorAUTOBUYAUTOKILLMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UFOSimulatorAUTOBUYAUTOKILLMORE.lua")
                    
addscriptexist(4581966615, "AnomicAntiCheatBypassWalkSpeedInfiniteStamina", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnomicAntiCheatBypassWalkSpeedInfiniteStamina.lua")
                    
addscriptexist(7393403076, "AnimeArtifactsSimulatorFARMCOLLECT", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeArtifactsSimulatorFARMCOLLECT.lua")
                    
addscriptexist(6875469709, "STRONGESTPUNCHSIMULATORFarmArtifactInvisiblemodeSafeMode", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/STRONGESTPUNCHSIMULATORFarmArtifactInvisiblemodeSafeMode.lua")
                    
addscriptexist(1962086868, "TowerofHellGODMODEGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofHellGODMODEGUI.lua")
                    
addscriptexist(4616652839, "ShindoBESTGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoBESTGUI.lua")
                    
addscriptexist(6284583030, "PetSimulatorXUPDATEDGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXUPDATEDGUI.lua")
                    
addscriptexist(7082539621, "AnimeDestroyersSimulatorAUTOFARMGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeDestroyersSimulatorAUTOFARMGUI.lua")
                    
addscriptexist(292439477, "PhantomForcesAimBotEspFov", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesAimBotEspFov.lua")
                    
addscriptexist(5490351219, "ClickerMadnessAutoClickAutoRebirthAutoeggBuyer", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerMadnessAutoClickAutoRebirthAutoeggBuyer.lua")
    
addscript(164051105,"Super Bomb Survival [AUTO-WIN]", "SuperBombSurvivalAUTOWIN", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperBombSurvivalAUTOWIN.lua")
                    
                    
addscriptexist(4545436299, "PetClicksSimulatorINFGEMSFARMMONEY", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetClicksSimulatorINFGEMSFARMMONEY.lua")
                    
addscriptexist(3607821695, "VietnamWarSimulator", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VietnamWarSimulator.lua")
    
addscript(6042596851,"Navy War Tycoon [Auto Purchase/Auto rebirth/Auto Tp player]", "NavyWarTycoonAutoPurchaseAutorebirthAutoTpplayer", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NavyWarTycoonAutoPurchaseAutorebirthAutoTpplayer.lua")
                    
    
addscript(3376584594,"Flight Simulator [Inf money]", "FlightSimulatorInfmoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FlightSimulatorInfmoney.lua")
                    
                    
addscriptexist(286090429, "ArsenalNEWBESTGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalNEWBESTGUI.lua")
                    
addscriptexist(2248408710, "DestructionSimulatorAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DestructionSimulatorAutoFarm.lua")
                    
addscriptexist(621129760, "KATAimbotSelentAimEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KATAimbotSelentAimEsp.lua")
                    
addscriptexist(3233893879, "BadBusinessBESTGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BadBusinessBESTGUI.lua")
    
addscript(6573910231,"Project Star [Stand Arrow,Rokakaka]", "ProjectStarStandArrowRokakaka", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectStarStandArrowRokakaka.lua")
                    
                    
addscriptexist(286090429, "ArsenalAIMKILLALLESPTRIGER", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalAIMKILLALLESPTRIGER.lua")
                    
addscriptexist(3376584594, "FlightSimulatorInfXp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FlightSimulatorInfXp.lua")
                    
addscriptexist(443406476, "ProjectLazarusKILLALLZOMBIES", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectLazarusKILLALLZOMBIES.lua")
                    
addscriptexist(7082539621, "AnimeDestroyersSimulatorOPENSOURSE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeDestroyersSimulatorOPENSOURSE.lua")
                    
addscriptexist(142823291, "MurderMystery2KILLALLESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2KILLALLESP.lua")
                    
addscriptexist(6573910231, "ProjectStarMOBSFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectStarMOBSFARM.lua")
                    
addscriptexist(920587237, "AdoptMeBabyAutoFarmBuyeggAutoHealothers", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMeBabyAutoFarmBuyeggAutoHealothers.lua")
                    
addscriptexist(7045537335, "AnimeWorldsSimulatorFarmMisc", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeWorldsSimulatorFarmMisc.lua")
                    
addscriptexist(6284583030, "PetSimulatorXNEWBESTGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXNEWBESTGUI.lua")
                    
addscriptexist(443406476, "ProjectLazarusAutoFarmKillAll", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectLazarusAutoFarmKillAll.lua")
                    
addscriptexist(7393403076, "AnimeArtifactsSimulatorFARMMOBSFASTATTACH", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeArtifactsSimulatorFARMMOBSFASTATTACH.lua")
    
addscript(6010281397,"Squid Game [God Mode/Fake Lag]", "SquidGameGodModeFakeLag", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SquidGameGodModeFakeLag.lua")
                    
                    
addscriptexist(7082539621, "AnimeDestroyersAutoFarm", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeDestroyersAutoFarm.lua")
    
addscript(7277488595,"Luobu Launch Party [Auto Farm]", "LuobuLaunchPartyAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LuobuLaunchPartyAutoFarm.lua")
                    
    
addscript(6417110811,"Roblox [telekinesis]", "Robloxtelekinesis", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Robloxtelekinesis.lua")
                    
                    
addscriptexist(3494008884, "DonutBakeryTycoonInfMoney", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DonutBakeryTycoonInfMoney.lua")
                    
addscriptexist(4616652839, "ShindoAutoFarmGodmodeStoryFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoAutoFarmGodmodeStoryFarm.lua")
    
addscript(7540891731,"Red Light, Green Light [Auto Farm]", "RedLightGreenLightAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RedLightGreenLightAutoFarm.lua")
                    
                    
addscriptexist(4924922222, "BrookhavenAdmincommands", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrookhavenAdmincommands.lua")
                    
addscriptexist(6872265039, "BedWarsKillAuraEspAntiKnockBack", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BedWarsKillAuraEspAntiKnockBack.lua")
    
addscript(7502447797,"Squid Game - Automatic registration underworks", "SquidGameAutomaticregistrationunderworks", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SquidGameAutomaticregistrationunderworks.lua")
                    
                    
addscriptexist(6573910231, "ProjectStarInfXp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectStarInfXp.lua")
                    
addscriptexist(2546155523, "RoVilleAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoVilleAutoFarm.lua")
                    
addscriptexist(3351674303, "DrivingEmpireAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DrivingEmpireAutoFarm.lua")
                    
addscriptexist(2248408710, "DestructionSimulatorInfMoneyAutoSellAddlvl", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DestructionSimulatorInfMoneyAutoSellAddlvl.lua")
    
addscript(32331218,"Mega Marble Run Pit [Auto Farm]", "MegaMarbleRunPitAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MegaMarbleRunPitAutoFarm.lua")
                    
    
addscript(9555658167,"Roblox [All Animation]", "RobloxAllAnimation", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxAllAnimation.lua")
                    
                    
addscriptexist(6284583030, "PetSimulatorXAutoFarmWalkSpeedAntiAfk", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmWalkSpeedAntiAfk.lua")
                    
addscriptexist(2788229376, "DaHoodAutoFarmCrushServerAutoBuys", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodAutoFarmCrushServerAutoBuys.lua")
    
addscript(5100475194,"Obby Trivia[Auto Farm]", "ObbyTriviaAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ObbyTriviaAutoFarm.lua")
                    
                    
addscriptexist(648362523, "BreakingPointFullbrightGundowmAfkKill", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BreakingPointFullbrightGundowmAfkKill.lua")
                    
addscriptexist(6573910231, "ProjectStarFarmItemInvis", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectStarFarmItemInvis.lua")
                    
addscriptexist(7009799230, "PressureWashSimulatorInfWater", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PressureWashSimulatorInfWater.lua")
                    
addscriptexist(4246487209, "BossFightingSimulator", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BossFightingSimulator.lua")
                    
addscriptexist(185655149, "WelcometoBloxburgAutoFarmAutoBuild", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WelcometoBloxburgAutoFarmAutoBuild.lua")
                    
addscriptexist(7045537335, "AnimeWorldsSimulatorAutoFarm", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeWorldsSimulatorAutoFarm.lua")
                    
addscriptexist(6073366803, "RageRunnerAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RageRunnerAutoFarm.lua")
    
addscript(4958515691,"Gladiator Simulator [Auto Train]", "GladiatorSimulatorAutoTrain", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GladiatorSimulatorAutoTrain.lua")
                    
                    
addscriptexist(6284583030, "PetSimulatorXCrushServer", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXCrushServer.lua")
                    
addscriptexist(155382109, "SurviveandKilltheKillersinArea51TeleportGetallGunsCodeChecker", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurviveandKilltheKillersinArea51TeleportGetallGunsCodeChecker.lua")
    
addscript(1069951594,"Fall of Hell [Auto Win/+Time/Freeze Parts]", "FallofHellAutoWinTimeFreezeParts", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FallofHellAutoWinTimeFreezeParts.lua")
                    
                    
addscriptexist(1069951594, "FallofHellGodmode", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FallofHellGodmode.lua")
                    
addscriptexist(6299805723, "AnimeFightersSimulatorAutoSellFightersAutoCollectdropAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightersSimulatorAutoSellFightersAutoCollectdropAutoFarm.lua")
                    
addscriptexist(155615604, "PrisonLifeAutoArrset", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLifeAutoArrset.lua")
    
addscript(6198039277,"Cyber City Tycoon [Auto Farm]", "CyberCityTycoonAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CyberCityTycoonAutoFarm.lua")
                    
                    
addscriptexist(2716845201, "WarriorSimulatorAutoFarmCollectCoinsAutoMoon", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WarriorSimulatorAutoFarmCollectCoinsAutoMoon.lua")
    
addscript(6243699076,"The Mimic [Monster Esp/Door Ecp/Full Bright]", "TheMimicMonsterEspDoorEcpFullBright", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheMimicMonsterEspDoorEcpFullBright.lua")
                    
    
addscript(7172485708,"Twenty One Pilots Concert Experience [Farm Coins 18/18]", "TwentyOnePilotsConcertExperienceFarmCoins1818", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TwentyOnePilotsConcertExperienceFarmCoins1818.lua")
                    
                    
addscriptexist(4058282580, "BoxingSimulatorAutoPunchAutosellBuyalldna", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BoxingSimulatorAutoPunchAutosellBuyalldna.lua")
    
addscript(3457390032,"Club Roblox [Auto Farm]", "ClubRobloxAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClubRobloxAutoFarm.lua")
                    
    
addscript(2376885433,"Vesteria [God mode]", "VesteriaGodmode", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VesteriaGodmode.lua")
                    
    
addscript(3700469782,"2 Player Among Us Tycoon [1 click $2 million]", "2PlayerAmongUsTycoon1click2million", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/2PlayerAmongUsTycoon1click2million.lua")
                    
                    
addscriptexist(4787629450, "BOOGABOOGAAutoHeal", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BOOGABOOGAAutoHeal.lua")
                    
addscriptexist(6897226634, "TimberTREECUTTINGAURA", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TimberTREECUTTINGAURA.lua")
    
addscript(7081641016,"Bank Robbery Simulator [ Auto CollectDrop/Auto Sell/Bag]", "BankRobberySimulatorAutoCollectDropAutoSellBag", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BankRobberySimulatorAutoCollectDropAutoSellBag.lua")
                    
                    
addscriptexist(6951762614, "UFOSimulatorAutoFarmAutoBuy", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UFOSimulatorAutoFarmAutoBuy.lua")
                    
addscriptexist(4581966615, "AnomicInfStaminaFlyArrestPlayers", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnomicInfStaminaFlyArrestPlayers.lua")
    
addscript(7087534079,"Naruto Defense Simulator [Kill all]", "NarutoDefenseSimulatorKillall", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NarutoDefenseSimulatorKillall.lua")
                    
                    
addscriptexist(4410049285, "DrivingSimulatorInfNitro", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DrivingSimulatorInfNitro.lua")
    
addscript(7232621271,"Luobu Mystery Box Hunt [GET ALL BOXES]", "LuobuMysteryBoxHuntGETALLBOXES", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LuobuMysteryBoxHuntGETALLBOXES.lua")
                    
                    
addscriptexist(6284583030, "OPPetSimulatorXGUIDupeRainbows", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OPPetSimulatorXGUIDupeRainbows.lua")
    
addscript(7025847767,"Destroyer Simulator [Auto Rage/Auto Punch Bags/Auto rebirth]", "DestroyerSimulatorAutoRageAutoPunchBagsAutorebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DestroyerSimulatorAutoRageAutoPunchBagsAutorebirth.lua")
                    
    
addscript(6279039046,"Sled Simulator [Auto Farm/Equip Good item]", "SledSimulatorAutoFarmEquipGooditem", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SledSimulatorAutoFarmEquipGooditem.lua")
                    
                    
addscriptexist(286090429, "ArsenalKillAllAimbotEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalKillAllAimbotEsp.lua")
                    
addscriptexist(5543622168, "CriticalTowerDefenseinfstats", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriticalTowerDefenseinfstats.lua")
                    
addscriptexist(7065731541, "SpeedmanSimulatorAutoEnergyAutoSpeedAutorebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedmanSimulatorAutoEnergyAutoSpeedAutorebirth.lua")
    
addscript(5837160206,"ACS [FireRate/Norecoil/Spread]", "ACSFireRateNorecoilSpread", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ACSFireRateNorecoilSpread.lua")
                    
                    
addscriptexist(6766156863, "StrongmanSimulatorAutoFarmWalkSpeedGetallBadges", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrongmanSimulatorAutoFarmWalkSpeedGetallBadges.lua")
                    
addscriptexist(606849621, "JailbreakAutoFarmKillauraGameinfo", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakAutoFarmKillauraGameinfo.lua")
                    
addscriptexist(263761432, "HorrificHousingAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HorrificHousingAutoFarm.lua")
                    
addscriptexist(6875469709, "StrongestPunchSimulatorAutoClickerAutoCollectOrbsNoclip", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrongestPunchSimulatorAutoClickerAutoCollectOrbsNoclip.lua")
                    
addscriptexist(2376885433, "VesteriaAutoFarmGodmodeKillAura", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VesteriaAutoFarmGodmodeKillAura.lua")
                    
addscriptexist(893973440, "FleeTheFacilityAntiComputerloseHackcomputerfromdistanceWalkSpeed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FleeTheFacilityAntiComputerloseHackcomputerfromdistanceWalkSpeed.lua")
    
addscript(6137522359,"Super Speed Simulator [Auto Farm/Collect All Orbs/Anti Afk]", "SuperSpeedSimulatorAutoFarmCollectAllOrbsAntiAfk", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperSpeedSimulatorAutoFarmCollectAllOrbsAntiAfk.lua")
                    
                    
addscriptexist(6186867282, "ProjectXLAutoFarmRedeemallCodesGetQuests", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectXLAutoFarmRedeemallCodesGetQuests.lua")
                    
addscriptexist(6284583030, "PetSimulatorXAutoFarmAutoCollectCoinsAutoopeneggs", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmAutoCollectCoinsAutoopeneggs.lua")
    
addscript(7182803956,"The Lift [God mode]", "TheLiftGodmode", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheLiftGodmode.lua")
                    
                    
addscriptexist(537413528, "BuildABoatForTreasureAutoFarmSpeedFly", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureAutoFarmSpeedFly.lua")
                    
addscriptexist(413424176, "CloneTycoon2AutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CloneTycoon2AutoFarm.lua")
    
addscript(7072693677,"Ro-Punch Man [Auto Farm]", "RoPunchManAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoPunchManAutoFarm.lua")
                    
                    
addscriptexist(286090429, "ArsenalKnifeAura", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalKnifeAura.lua")
                    
addscriptexist(5827078246, "CoinsHeroSimulatorAutoFarmAutoSellSpeed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CoinsHeroSimulatorAutoFarmAutoSellSpeed.lua")
    
addscript(5659599095,"BloxStreets [Auto Farm]", "BloxStreetsAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxStreetsAutoFarm.lua")
                    
    
addscript(5670292785,"Undead Defense Tycoon [Auto Farm]", "UndeadDefenseTycoonAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UndeadDefenseTycoonAutoFarm.lua")
                    
                    
addscriptexist(443406476, "TheMazeespmonstersgetallbatteriesnoclip", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheMazeespmonstersgetallbatteriesnoclip.lua")
    
addscript(5086470420,"LGBTQ+ Hangout 2 RAINBOW [Auto Farm]", "LGBTQHangout2RAINBOWAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LGBTQHangout2RAINBOWAutoFarm.lua")
                    
                    
addscriptexist(5740246170, "TowerSimulatorAUTOBUILD", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerSimulatorAUTOBUILD.lua")
                    
addscriptexist(183364845, "SpeedRun4AutoFarmFreezeUnlockAllLVl", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedRun4AutoFarmFreezeUnlockAllLVl.lua")
                    
addscriptexist(4520749081, "KingLegacyAutoQuestLevelFarmAutoBusoHaki", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KingLegacyAutoQuestLevelFarmAutoBusoHaki.lua")
                    
addscriptexist(443406476, "ProjectLazarusKillAuraInfAmmoInstaKill", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectLazarusKillAuraInfAmmoInstaKill.lua")
                    
addscriptexist(155615604, "PrisonLifeArrsetallAntiArrsetGunmode", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLifeArrsetallAntiArrsetGunmode.lua")
                    
addscriptexist(286090429, "ArsenalAimInfJumpEcp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalAimInfJumpEcp.lua")
    
addscript(6541075507,"Carnival Tycoon [Auto farm]", "CarnivalTycoonAutofarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarnivalTycoonAutofarm.lua")
                    
                    
addscriptexist(5320510816, "TimberAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TimberAutoFarm.lua")
                    
addscriptexist(277751860, "EpicMinigamesAutoWinInfJumpCheatRound", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EpicMinigamesAutoWinInfJumpCheatRound.lua")
                    
addscriptexist(4958515691, "GladiatorSimulator", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GladiatorSimulator.lua")
                    
addscriptexist(2413927524, "THERAKEINFINITERun", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/THERAKEINFINITERun.lua")
                    
addscriptexist(1962086868, "TowerofHellGodmodeInfJumpNoclip", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofHellGodmodeInfJumpNoclip.lua")
                    
addscriptexist(292439477, "PhantomForcesAimbotFlyAutorespawn", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesAimbotFlyAutorespawn.lua")
                    
addscriptexist(5736409216, "MallTycoonAutoCollectAntiAfkAllShops", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MallTycoonAutoCollectAntiAfkAllShops.lua")
                    
addscriptexist(4996049426, "AllStarTowerDefenseAutoErwinBuffAutoMerlinBuffAutoJoingame", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AllStarTowerDefenseAutoErwinBuffAutoMerlinBuffAutoJoingame.lua")
                    
addscriptexist(2753915549, "BloxFruitsMobFarmAutofarmmoneyInvis", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsMobFarmAutofarmmoneyInvis.lua")
                    
addscriptexist(4410049285, "DrivingSimulatorAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DrivingSimulatorAutoFarm.lua")
    
addscript(4999590694,"Zombie Defense Tycoon [Get a gamepass/farm GOO/Gun mod]", "ZombieDefenseTycoonGetagamepassfarmGOOGunmod", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieDefenseTycoonGetagamepassfarmGOOGunmod.lua")
                    
                    
addscriptexist(2281639237, "StandsOnlineShellsFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StandsOnlineShellsFarm.lua")
                    
addscriptexist(1554960397, "CarDealershipAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarDealershipAutoFarm.lua")
                    
addscriptexist(3956818381, "NinjaLegendsAutoFarmCoinsAutoFarmChiAutoSell", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsAutoFarmCoinsAutoFarmChiAutoSell.lua")
                    
addscriptexist(292439477, "PhantomForces", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForces.lua")
                    
addscriptexist(301549746, "CounterBloxAimBotEcpInfAmmo", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CounterBloxAimBotEcpInfAmmo.lua")
                    
addscriptexist(662417684, "LUCKYBLOCKSInfJumpAllgunsFly", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LUCKYBLOCKSInfJumpAllgunsFly.lua")
                    
addscriptexist(6284583030, "PetSimulatorXUpdateScript", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXUpdateScript.lua")
                    
addscriptexist(3527629287, "BIGPaintballKillallAimSpeed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BIGPaintballKillallAimSpeed.lua")
                    
addscriptexist(4999590694, "ZombieDefenseTycoonKillallzombiefast", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieDefenseTycoonKillallzombiefast.lua")
                    
addscriptexist(4520749081, "KingLegacyAutoFarmAutobusoMainWeapons", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KingLegacyAutoFarmAutobusoMainWeapons.lua")
                    
addscriptexist(1962086868, "TowerofHellGodmodeFlyTotop", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofHellGodmodeFlyTotop.lua")
                    
addscriptexist(2809202155, "YourBizarreAdventureItemFarmAutoFarmTeleports", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YourBizarreAdventureItemFarmAutoFarmTeleports.lua")
                    
addscriptexist(3527629287, "BIGPaintballGodmodeAimEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BIGPaintballGodmodeAimEsp.lua")
                    
addscriptexist(7177496972, "AnimeWarriors", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeWarriors.lua")
                    
addscriptexist(5326405001, "BaseBattlesINFINITEAMMO", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BaseBattlesINFINITEAMMO.lua")
    
addscript(5310443220,"GOD TYCOON [GET ALL WEAPONS]", "GODTYCOONGETALLWEAPONS", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GODTYCOONGETALLWEAPONS.lua")
                    
                    
addscriptexist(3851622790, "BreakInInstahealTeleprotsRemovetools", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BreakInInstahealTeleprotsRemovetools.lua")
                    
addscriptexist(4999590694, "ZombieDefenseTycoonInfGOO", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieDefenseTycoonInfGOO.lua")
                    
addscriptexist(1537690962, "BeeSwarmSimulatorAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeeSwarmSimulatorAutoFarm.lua")
                    
addscriptexist(292439477, "PhantomForcesAimFovKillAura", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PhantomForcesAimFovKillAura.lua")
                    
addscriptexist(4616652839, "ShindoAUTOQUEST", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoAUTOQUEST.lua")
                    
addscriptexist(621129760, "KATAimKillallEsp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KATAimKillallEsp.lua")
                    
addscriptexist(7177496972, "AnimeWarriorsAutoFarmAutoReplayFlyPart", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeWarriorsAutoFarmAutoReplayFlyPart.lua")
                    
addscriptexist(914010731, "RoGhoulAutoTaskAutoTrainerTeleport", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoGhoulAutoTaskAutoTrainerTeleport.lua")
                    
addscriptexist(5963376918, "AnimeTycoonAllweaponsSpeedNoclip", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeTycoonAllweaponsSpeedNoclip.lua")
                    
addscriptexist(4999590694, "ZombieDefenseTycoonInfammo", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieDefenseTycoonInfammo.lua")
                    
addscriptexist(7177496972, "AnimeWarriorsFarmMobKillAura", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeWarriorsFarmMobKillAura.lua")
                    
addscriptexist(7177496972, "AnimeWarriorsInstantKillSafeZone", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeWarriorsInstantKillSafeZone.lua")
                    
addscriptexist(286090429, "ArsenalCrachserver", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalCrachserver.lua")
                    
addscriptexist(6172932937, "EnergyAssaultAim", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EnergyAssaultAim.lua")
                    
addscriptexist(4954752502, "TowerofMiseryGODmode", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofMiseryGODmode.lua")
                    
addscriptexist(4999590694, "ZombieDefenseTycoonUNLOCKALLSKINS", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieDefenseTycoonUNLOCKALLSKINS.lua")
                    
addscriptexist(7009799230, "PressureWashSimulator", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PressureWashSimulator.lua")
                    
addscriptexist(13822889, "LumberTycoon2KillplayerFillingPlayerSpeed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LumberTycoon2KillplayerFillingPlayerSpeed.lua")
                    
addscriptexist(4999590694, "ZombieDefenseTycoonInfmoneyVeryfastautofarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieDefenseTycoonInfmoneyVeryfastautofarm.lua")
    
addscript(6808489605,"Aimblox BETA [Aim / Esp / Character]", "AimbloxBETAAimEspCharacter", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AimbloxBETAAimEspCharacter.lua")
                    
                    
addscriptexist(171391948, "VehicleSimulatorAutoFarmx2FlySuperCar", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VehicleSimulatorAutoFarmx2FlySuperCar.lua")
                    
addscriptexist(189707, "NaturalDisasterSurvivalAutosafeTpSpeed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NaturalDisasterSurvivalAutosafeTpSpeed.lua")
                    
addscriptexist(914010731, "RoGhoulAutoFatm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoGhoulAutoFatm.lua")
                    
addscriptexist(155615604, "PrisonLifeCrashServer", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLifeCrashServer.lua")
                    
addscriptexist(1240123653, "ZombieAttackAim", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieAttackAim.lua")
                    
addscriptexist(142823291, "MurderMystery2BombSpam", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2BombSpam.lua")
                    
addscriptexist(7453798168, "YouTubeSimulatorAutoRecordAutoUpdate", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YouTubeSimulatorAutoRecordAutoUpdate.lua")
                    
addscriptexist(286090429, "Arsenal", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arsenal.lua")
                    
addscriptexist(2866967438, "FishingSimulatorTeleportKIllShark", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FishingSimulatorTeleportKIllShark.lua")
    
addscript(1204965839,"Wolves' Life 3 [TP/INF.JUMP/ITEM/RAINBOW]", "WolvesLife3TPINFJUMPITEMRAINBOW", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WolvesLife3TPINFJUMPITEMRAINBOW.lua")
                    
    
addscript(6312753269,"Super Evolution [AUTOFARM/TP/ESP]", "SuperEvolutionAUTOFARMTPESP", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperEvolutionAUTOFARMTPESP.lua")
                    
                    
addscriptexist(6904735821, "ShoeSimulatorAUTOFARMANTIAFKGETALLAUTOBUY", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShoeSimulatorAUTOFARMANTIAFKGETALLAUTOBUY.lua")
                    
addscriptexist(4580204640, "JUMPPOWERFORALLGAMES", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JUMPPOWERFORALLGAMES.lua")
                    
addscriptexist(6904735821, "ShoeSimulatorGLASSLACES", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShoeSimulatorGLASSLACES.lua")
                    
addscriptexist(4058282580, "BoxingSimulatorAUTOFARMALLISLANDSCOINS", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BoxingSimulatorAUTOFARMALLISLANDSCOINS.lua")
                    
addscriptexist(537413528, "BuildABoatForTreasureOPAUTOFARM", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureOPAUTOFARM.lua")
                    
addscriptexist(6284583030, "PetSimulatorXGetallShopItemsforFree", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXGetallShopItemsforFree.lua")
                    
addscriptexist(4520749081, "KingLegacyAUTOFARMESPTP", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KingLegacyAUTOFARMESPTP.lua")
                    
addscriptexist(4580204640, "NOCLIPFORALLGAMES", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NOCLIPFORALLGAMES.lua")
    
addscript(6858184059,"Space Base Tycoon [AUTOFARM/ANTIAFK]", "SpaceBaseTycoonAUTOFARMANTIAFK", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpaceBaseTycoonAUTOFARMANTIAFK.lua")
                    
                    
addscriptexist(6273865312, "SupernaturalSimulatorAUTOFARMTPAUTOBUY", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SupernaturalSimulatorAUTOFARMTPAUTOBUY.lua")
                    
addscriptexist(6299805723, "AnimeFightersSimulatorAutoFarmAutoQuestGetCoin", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightersSimulatorAutoFarmAutoQuestGetCoin.lua")
                    
addscriptexist(6904735821, "ShoeSimulatorMONEYTRAILS", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShoeSimulatorMONEYTRAILS.lua")
                    
addscriptexist(6904735821, "ShoeSimulatorGRANDPARING", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShoeSimulatorGRANDPARING.lua")
                    
addscriptexist(6904735821, "ShoeSimulatorDEMONSHOES", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShoeSimulatorDEMONSHOES.lua")
                    
addscriptexist(5023820864, "TradeTowerAUTOCLICKAUTOSELLAUTOUPGRADEANTIAFKTP", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TradeTowerAUTOCLICKAUTOSELLAUTOUPGRADEANTIAFKTP.lua")
                    
addscriptexist(6339160453, "NarutoWarTycoonONLYAUTOBUYANDANTIAFK", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NarutoWarTycoonONLYAUTOBUYANDANTIAFK.lua")
    
addscript(6984315364,"RoPets [AUTOFARM/TP]", "RoPetsAUTOFARMTP", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoPetsAUTOFARMTP.lua")
                    
                    
addscriptexist(5865858426, "RetailTycoon2TPPLACEITEM", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RetailTycoon2TPPLACEITEM.lua")
                    
addscriptexist(6904735821, "ShoeSimulatorAUTOFARMAUTOBUY", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShoeSimulatorAUTOFARMAUTOBUY.lua")
                    
addscriptexist(6284583030, "PetSimulatorXFarmCoinPetsEggInstantCollect", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXFarmCoinPetsEggInstantCollect.lua")
                    
addscriptexist(4924922222, "BrookhavenADMINPANEL", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrookhavenADMINPANEL.lua")
                    
addscriptexist(6783611814, "BuildaBoattoSurviveAUTOFARM", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildaBoattoSurviveAUTOFARM.lua")
                    
addscriptexist(6284583030, "PetSimulatorXAUTOFARMTPANTIAFKBUYEGG", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAUTOFARMTPANTIAFKBUYEGG.lua")
                    
addscriptexist(6284583030, "PetSimulatorXAutoFarmTeleport", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmTeleport.lua")
                    
addscriptexist(5736409216, "MallTycoonAUTOSELLBUYREBIRTHSSPEEDANTIAFK", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MallTycoonAUTOSELLBUYREBIRTHSSPEEDANTIAFK.lua")
    
addscript(6331132338,"Pet Swarm Simulator [AUTOFARM/TPISLAND/INF.JUMP]", "PetSwarmSimulatorAUTOFARMTPISLANDINFJUMP", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSwarmSimulatorAUTOFARMTPISLANDINFJUMP.lua")
                    
    
addscript(6794368433,"Be a Spider! Tycoon [AUTOFARM/AUTOSELL]", "BeaSpiderTycoonAUTOFARMAUTOSELL", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeaSpiderTycoonAUTOFARMAUTOSELL.lua")
                    
                    
addscriptexist(6284583030, "PetSimulatorXTeleportOpenEggsAutoFarm", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXTeleportOpenEggsAutoFarm.lua")
                    
addscriptexist(6284583030, "PetSimulatorXAutoFarmCoinsHideGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmCoinsHideGui.lua")
                    
addscriptexist(5732966938, "WorldDefendersINFAMMOAUTOUPGRADETPTOMOBS", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorldDefendersINFAMMOAUTOUPGRADETPTOMOBS.lua")
    
addscript(1320186298,"Island Royale [AIM/FOV]", "IslandRoyaleAIMFOV", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/IslandRoyaleAIMFOV.lua")
                    
                    
addscriptexist(2377868063, "StrucidHITBOX", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrucidHITBOX.lua")
    
addscript(2130061659,"Eat And Destroy! [AUTOFARM/ANTIAFK]", "EatAndDestroyAUTOFARMANTIAFK", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EatAndDestroyAUTOFARMANTIAFK.lua")
                    
    
addscript(7015809878,"Action Tower Defense [AUTOKILLMOBS]", "ActionTowerDefenseAUTOKILLMOBS", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ActionTowerDefenseAUTOKILLMOBS.lua")
                    
                    
addscriptexist(6938803436, "AnimeDimensionsAUTOFARMINSTAKILL", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeDimensionsAUTOFARMINSTAKILL.lua")
                    
addscriptexist(1962086868, "TowerofhellINFJUMPFLYGODAUTOFARM", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofhellINFJUMPFLYGODAUTOFARM.lua")
    
addscript(6760562118,"Loot Lake Simulator [AUTOFARM/AUTOPLACE/ANTIAFK]", "LootLakeSimulatorAUTOFARMAUTOPLACEANTIAFK", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LootLakeSimulatorAUTOFARMAUTOPLACEANTIAFK.lua")
                    
    
addscript(7102729322,"Shaking Tapping [AUTOFARM/REBIRTHS/UPGRADES/EGG/ANTIAFK]", "ShakingTappingAUTOFARMREBIRTHSUPGRADESEGGANTIAFK", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShakingTappingAUTOFARMREBIRTHSUPGRADESEGGANTIAFK.lua")
                    
                    
addscriptexist(2960777560, "TreasureQuestAUTOFARM", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TreasureQuestAUTOFARM.lua")
                    
addscriptexist(5780309044, "StandsAwakeningGODMODECRASHAUTOFARMFLY", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StandsAwakeningGODMODECRASHAUTOFARMFLY.lua")
                    
addscriptexist(654732683, "CarCrushers2AUTOFARMINFPARTSSPEEDINFJUMP", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarCrushers2AUTOFARMINFPARTSSPEEDINFJUMP.lua")
    
addscript(6888253864,"Wacky Wizards [Inf Jump/Btools/Fly]", "WackyWizardsInfJumpBtoolsFly", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WackyWizardsInfJumpBtoolsFly.lua")
                    
                    
addscriptexist(6872265039, "BedwarsANTIKNOCKBACKKILLAURAESP", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BedwarsANTIKNOCKBACKKILLAURAESP.lua")
                    
addscriptexist(185655149, "WelcometoBloxburgAUTOFARMESPTP", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WelcometoBloxburgAUTOFARMESPTP.lua")
                    
addscriptexist(6494523288, "BladeQuestOPAUTOFARM", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BladeQuestOPAUTOFARM.lua")
                    
addscriptexist(2262441883, "ElectricStateDarkRPAUTOFARMTPSPEED", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ElectricStateDarkRPAUTOFARMTPSPEED.lua")
                    
addscriptexist(4580204640, "WALKSPEEDFORALLGAMES", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WALKSPEEDFORALLGAMES.lua")
                    
addscriptexist(2768379856, "3008ESPPICKUPALLITEMS", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/3008ESPPICKUPALLITEMS.lua")
                    
addscriptexist(6186867282, "ProjectXLv51хAUTOFARMAUTOQUESTTPTONPC", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectXLv51хAUTOFARMAUTOQUESTTPTONPC.lua")
                    
addscriptexist(3527629287, "BIGPaintballAIMESPSPEEDOBVIUOSLYKILL", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BIGPaintballAIMESPSPEEDOBVIUOSLYKILL.lua")
                    
addscriptexist(621129760, "KATESPAIMINFAMMOSPEED", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KATESPAIMINFAMMOSPEED.lua")
                    
addscriptexist(2377868063, "StrucidESPAIMSPEEDJUMPNORECOIL", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrucidESPAIMSPEEDJUMPNORECOIL.lua")
                    
addscriptexist(1537690962, "BeeSwarmSimulatorALLALLALL", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeeSwarmSimulatorALLALLALL.lua")
                    
addscriptexist(71315343, "DragonBallRage", "to_hen", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBallRage.lua")
                    
addscriptexist(6888253864, "WackyWizards", "to_hen", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WackyWizards.lua")
                    
addscriptexist(192800, "Workinapizzeria", "to_hen", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Workinapizzeria.lua")
                    
addscriptexist(2376885433, "VesteriaFLYTPPLTPAUTOFARM", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VesteriaFLYTPPLTPAUTOFARM.lua")
                    
addscriptexist(4872321990, "IslandsAUTOFARMKILLALLTPINFITEMS", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/IslandsAUTOFARMKILLALLTPINFITEMS.lua")
                    
addscriptexist(2986677229, "GiantSimulator", "to_hen", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GiantSimulator.lua")
                    
addscriptexist(606849621, "JailbreakGoodcheat", "DED SHOT", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakGoodcheat.lua")
                    
addscriptexist(6299805723, "AnimeFightersSimulatorNewAutoFarm", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightersSimulatorNewAutoFarm.lua")
                    
addscriptexist(4855457388, "DemonfallAutoFarmNoCD", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DemonfallAutoFarmNoCD.lua")
    
addscript(5551657553,"Business Legends", "BusinessLegends", "to_hen", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BusinessLegends.lua")
                    
                    
addscriptexist(71315343, "DragonBallRageFarmItself", "to_hen", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBallRageFarmItself.lua")
                    
addscriptexist(1240123653, "ZombieAttackNew", "to_hen", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieAttackNew.lua")
                    
addscriptexist(2809202155, "YourBizarreAdventureXenonCracked", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YourBizarreAdventureXenonCracked.lua")
                    
addscriptexist(2809202155, "YourBizarreAdventureAutoFarm", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YourBizarreAdventureAutoFarm.lua")
                    
addscriptexist(920587237, "AdoptMePlayerMiscAutoFarm", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMePlayerMiscAutoFarm.lua")
                    
addscriptexist(6788787407, "WarriorChampionsOPGUIAutoFarm", "UKpansR", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WarriorChampionsOPGUIAutoFarm.lua")
                    
addscriptexist(2986677229, "GiantSimulatorScript", "to_hen", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GiantSimulatorScript.lua")
                    
addscriptexist(4616652839, "ShindoLifeInfiniteSpinsQuestFarmRollsFarmAutoMoney", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoLifeInfiniteSpinsQuestFarmRollsFarmAutoMoney.lua")
                    
addscriptexist(3101667897, "LegendOfSpeedFarmingTeleport", "to_hen", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendOfSpeedFarmingTeleport.lua")
    
addscript(7016719633,"Developer Simulator OP GUI! - AutoFarm - AutoBuy", "DeveloperSimulatorOPGUIAutoFarmAutoBuy", "UKpansR", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeveloperSimulatorOPGUIAutoFarmAutoBuy.lua")
                    
                    
addscriptexist(4058282580, "BoxingSimulatorREALLYOPGUIAutoSellAutoFarm", "UKpansR", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BoxingSimulatorREALLYOPGUIAutoSellAutoFarm.lua")
                    
addscriptexist(286090429, "ArsenalVIEWMODELCHANGER–SKINARMMELEECHANGERCLIENTSIDED", "Полотенчик", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalVIEWMODELCHANGER–SKINARMMELEECHANGERCLIENTSIDED.lua")
                    
addscriptexist(920587237, "AdoptMeVGHubScript2021", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMeVGHubScript2021.lua")
                    
addscriptexist(6766156863, "StrongmanSimulatorNewScript", "to_hen", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrongmanSimulatorNewScript.lua")
                    
addscriptexist(4850718823, "SkatePark200KXP15MILLIONCREDITSOPENSOURCE", "Полотенчик", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SkatePark200KXP15MILLIONCREDITSOPENSOURCE.lua")
                    
addscriptexist(4996049426, "AllStarTowerDefenseAutoFarmUnitsInteractionSelectUnits", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AllStarTowerDefenseAutoFarmUnitsInteractionSelectUnits.lua")
    
addscript(6196669580,"Monster Quest - Auto Farm - Anti Afk", "MonsterQuestAutoFarmAntiAfk", "UKpansR", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MonsterQuestAutoFarmAntiAfk.lua")
                    
    
addscript(6698203444,"Brick Magnet Simulator - Auto Farm - Auto Buy - Mix", "BrickMagnetSimulatorAutoFarmAutoBuyMix", "UKpansR", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrickMagnetSimulatorAutoFarmAutoBuyMix.lua")
                    
                    
addscriptexist(4042427666, "AnimeFightingSimulatorAttackBossMiscMain", "to_hen", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightingSimulatorAttackBossMiscMain.lua")
    
addscript(3137426313,"Tap Farm Tycoon! FULL AFK GUI", "TapFarmTycoonFULLAFKGUI", "UKpansR", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TapFarmTycoonFULLAFKGUI.lua")
                    
                    
addscriptexist(2753915549, "BloxFruitsXenosHubGUI", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsXenosHubGUI.lua")
                    
addscriptexist(286090429, "ArsenalGUNMODSFORNEWUPDATEJULY2021", "Полотенчик", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalGUNMODSFORNEWUPDATEJULY2021.lua")
                    
addscriptexist(2809202155, "YourBizarreAdventureMiscAutoSkills", "to_hen", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YourBizarreAdventureMiscAutoSkills.lua")
                    
addscriptexist(6953291455, "EatingSimulatorAutoFarmBuyEggMisc", "to_hen", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EatingSimulatorAutoFarmBuyEggMisc.lua")
                    
addscriptexist(6299805723, "AnimeFightersSimulatorAutofarmAutoBuyEggsInfiniteYen", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightersSimulatorAutofarmAutoBuyEggsInfiniteYen.lua")
    
addscript(6792241488,"Weight Lifing Simulator", "WeightLifingSimulator", "to_hen", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeightLifingSimulator.lua")
                    
                    
addscriptexist(286090429, "ROBLOXDYNAMICSILENTAIM–WORKSONARSENALCOUNTERBLOXOPENSOURCE", "Полотенчик", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ROBLOXDYNAMICSILENTAIM–WORKSONARSENALCOUNTERBLOXOPENSOURCE.lua")
    
addscript(6848886250,"Pop it Fidget Simulator Gui", "PopitFidgetSimulatorGui", "UKpansR", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PopitFidgetSimulatorGui.lua")
                    
    
addscript(6723408631,"Idle Tappers GUI!", "IdleTappersGUI", "UKpansR", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/IdleTappersGUI.lua")
                    
                    
addscriptexist(606849621, "JailbreakAutoFarm", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakAutoFarm.lua")
                    
addscriptexist(4543144283, "MegaNoobSimulatorOPGUI", "UKpansR", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MegaNoobSimulatorOPGUI.lua")
                    
addscriptexist(6938803436, "AnimeDimensions", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeDimensions.lua")
                    
addscriptexist(1696916806, "BaseRaidersGUNMOD", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BaseRaidersGUNMOD.lua")
    
addscript(1919383429,"Embrithas", "Embrithas", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Embrithas.lua")
                    
                    
addscriptexist(4855457388, "Demonfall", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Demonfall.lua")
    
addscript(6676587884,"My Chicken Farm! [BETA] GUI", "MyChickenFarmBETAGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyChickenFarmBETAGUI.lua")
                    
    
addscript(4670822595,"Secret Hatching Simulator 2 GUI", "SecretHatchingSimulator2GUI", "UKpansR", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SecretHatchingSimulator2GUI.lua")
                    
                    
addscriptexist(301549746, "CounterBloxHexagon", "UKpansR", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CounterBloxHexagon.lua")
                    
addscriptexist(1345139196, "TreasureHuntSimulator", "MaGiXx", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TreasureHuntSimulator.lua")
    
addscript(4822852675,"Typing Simulator GUI", "TypingSimulatorGUI", "UKpansR", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TypingSimulatorGUI.lua")
                    
    
addscript(6997540091,"Flower Magnet Simulator NEW GUI!", "FlowerMagnetSimulatorNEWGUI", "UKpansR", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FlowerMagnetSimulatorNEWGUI.lua")
                    
                    
addscriptexist(4042427666, "AnimeFightingSimulator", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightingSimulator.lua")
    
addscript(6659645288,"Gold Rush", "GoldRush", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GoldRush.lua")
                    
    
addscript(6381681200,"My Fish Store Tycoon", "MyFishStoreTycoon", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyFishStoreTycoon.lua")
                    
                    
addscriptexist(4651779470, "RECOILBETA", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RECOILBETA.lua")
    
addscript(6011691652,"Magnet Legends", "MagnetLegends", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MagnetLegends.lua")
                    
                    
addscriptexist(3486025575, "MagnetSimulator", "MaGiXx", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MagnetSimulator.lua")
                    
addscriptexist(6897226634, "Timber", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Timber.lua")
                    
addscriptexist(6678877691, "ZOWIP", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZOWIP.lua")
                    
addscriptexist(286090429, "ArsenalGUNMOD", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalGUNMOD.lua")
    
addscript(6645344332,"Egg Collecting Simulator", "EggCollectingSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EggCollectingSimulator.lua")
                    
    
addscript(6672200623,"Bat Simulator GUI", "BatSimulatorGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BatSimulatorGUI.lua")
                    
    
addscript(6647511053,"Coin Collecting Simulator", "CoinCollectingSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CoinCollectingSimulator.lua")
                    
    
addscript(6028934209,"Soda Champions Simulator", "SodaChampionsSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SodaChampionsSimulator.lua")
                    
    
addscript(3271441918,"Hero Simulator GUI", "HeroSimulatorGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HeroSimulatorGUI.lua")
                    
    
addscript(6234390472,"Cooking in the Rain", "CookingintheRain", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CookingintheRain.lua")
                    
                    
addscriptexist(4806026225, "DefendersDepot", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DefendersDepot.lua")
    
addscript(5930941618,"My Salon GUI", "MySalonGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MySalonGUI.lua")
                    
    
addscript(6419299687,"Crash Simulator", "CrashSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CrashSimulator.lua")
                    
    
addscript(5733777811,"Lockpicking Simulator", "LockpickingSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LockpickingSimulator.lua")
                    
    
addscript(5541000308,"Knight Simulator", "KnightSimulator", "MaGiXx", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KnightSimulator.lua")
                    
                    
addscriptexist(6794368433, "BeaSpiderTycoon", "MaGiXx", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeaSpiderTycoon.lua")
    
addscript(6285815281,"LankyBox Simulator", "LankyBoxSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LankyBoxSimulator.lua")
                    
    
addscript(6422237656,"My Toy Factory", "MyToyFactory", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyToyFactory.lua")
                    
    
addscript(6689894296,"Brawl Legends", "BrawlLegends", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrawlLegends.lua")
                    
    
addscript(5254674128,"Pet Store Tycoon!", "PetStoreTycoon", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetStoreTycoon.lua")
                    
                    
addscriptexist(4598019433, "GenericRoleplayGaem", "MaGiXx", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GenericRoleplayGaem.lua")
    
addscript(6412367780,"Celebrity Simulator", "CelebritySimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CelebritySimulator.lua")
                    
    
addscript(6156903749,"Clicker Lords", "ClickerLords", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerLords.lua")
                    
    
addscript(6459707978,"Delivery Simulator", "DeliverySimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeliverySimulator.lua")
                    
                    
addscriptexist(5712833750, "AnimalSimulator", "MaGiXx", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimalSimulator.lua")
                    
addscriptexist(6299805723, "AnimeFightersSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightersSimulator.lua")
                    
addscriptexist(6542731310, "DogecoinMiningTycoon", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DogecoinMiningTycoon.lua")
    
addscript(6704182071,"Cooking Simulator", "CookingSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CookingSimulator.lua")
                    
                    
addscriptexist(6788787407, "WarriorChampions", "MaGiXx", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WarriorChampions.lua")
                    
addscriptexist(5264342538, "EndlessMiningSimulator", "MaGiXx", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EndlessMiningSimulator.lua")
    
addscript(6075756195,"Clicking Havoc", "ClickingHavoc", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickingHavoc.lua")
                    
    
addscript(6090535886,"Blade Masters", "BladeMasters", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BladeMasters.lua")
                    
                    
addscriptexist(6915291292, "BakerySimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BakerySimulator.lua")
    
addscript(6544175281,"Food Magnet Simulator", "FoodMagnetSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FoodMagnetSimulator.lua")
                    
                    
addscriptexist(6766156863, "StrongmanSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrongmanSimulator.lua")
                    
addscriptexist(6897226634, "TimberGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TimberGUI.lua")
    
addscript(6892252562,"Grow Old Simulator", "GrowOldSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GrowOldSimulator.lua")
                    
    
addscript(6759841279,"Breaking Simulator", "BreakingSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BreakingSimulator.lua")
                    
                    
addscriptexist(4793451617, "PlanetMiningSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PlanetMiningSimulator.lua")
    
addscript(6411761937,"Arcana", "Arcana", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arcana.lua")
                    
    
addscript(6812577005,"Gold Factory Simulator", "GoldFactorySimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GoldFactorySimulator.lua")
                    
                    
addscriptexist(5991118999, "CutTheGrassSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CutTheGrassSimulator.lua")
                    
addscriptexist(4811576324, "TotallyAccurateGunSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TotallyAccurateGunSimulator.lua")
    
addscript(6774188812,"Mini Metro", "MiniMetro", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiniMetro.lua")
                    
    
addscript(4846954296,"Toy Clicking Simulator!", "ToyClickingSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ToyClickingSimulator.lua")
                    
                    
addscriptexist(6245984328, "NERFStrike", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NERFStrike.lua")
                    
addscriptexist(4616652839, "ShindoAutoFarm", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoAutoFarm.lua")
    
addscript(986331525,"Nuke Site", "NukeSite", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NukeSite.lua")
                    
    
addscript(5853107391,"Stranger Things", "StrangerThingsStarcourtMall", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrangerThingsStarcourtMall.lua")
                    
                    
addscriptexist(6766156863, "StrongmanSimulatorGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrongmanSimulatorGUI.lua")
                    
addscriptexist(2960777560, "TreasureQuest", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TreasureQuest.lua")
    
addscript(6501876313,"Coconut Simulator GUI", "CoconutSimulatorGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CoconutSimulatorGUI.lua")
                    
                    
addscriptexist(6859865958, "YouTubeSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YouTubeSimulator.lua")
                    
addscriptexist(6683744559, "AdvancedFighterEX", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdvancedFighterEX.lua")
    
addscript(1828509885,"Egg Farm Simulator", "EggFarmSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EggFarmSimulator.lua")
                    
                    
addscriptexist(3457390032, "ClubRoblox", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClubRoblox.lua")
                    
addscriptexist(2248408710, "DestructionSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DestructionSimulator.lua")
    
addscript(6417787939,"City Life Tycoon", "CityLifeTycoon", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CityLifeTycoon.lua")
                    
    
addscript(39972972,"Make a Cake!", "MakeaCake", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MakeaCake.lua")
                    
                    
addscriptexist(6331132338, "PetSwarmSimulator", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSwarmSimulator.lua")
                    
addscriptexist(3652625463, "LiftingSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LiftingSimulator.lua")
                    
addscriptexist(662417684, "LUCKYBLOCKSBattlegrounds", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LUCKYBLOCKSBattlegrounds.lua")
                    
addscriptexist(301549746, "CounterBlox", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CounterBlox.lua")
                    
addscriptexist(1167791961, "KnifeSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KnifeSimulator.lua")
                    
addscriptexist(734159876, "SharkBite", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SharkBite.lua")
                    
addscriptexist(5534174456, "TropicalResortTycoon", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TropicalResortTycoon.lua")
                    
addscriptexist(3956818381, "NinjaLegends", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegends.lua")
                    
addscriptexist(6808416928, "AimbloxBETA", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AimbloxBETA.lua")
                    
addscriptexist(6872265039, "BedWars", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BedWars.lua")
                    
addscriptexist(6610021055, "NoobArmyTycoon", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NoobArmyTycoon.lua")
    
addscript(6514274883,"Dream Island Tycoon", "DreamIslandTycoon", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DreamIslandTycoon.lua")
                    
    
addscript(6770817102,"Cyber Base Tycoon", "CyberBaseTycoon", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CyberBaseTycoon.lua")
                    
    
addscript(1583450123,"BIG BOOGA DIG", "BIGBOOGADIG", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BIGBOOGADIG.lua")
                    
                    
addscriptexist(1224212277, "MadCityGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityGUI.lua")
    
addscript(6817892742,"Build and Sail", "BuildandSail", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildandSail.lua")
                    
                    
addscriptexist(3271441918, "HeroSimulator", "MaGiXx", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HeroSimulator.lua")
                    
addscriptexist(6494523288, "BladeQuest", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BladeQuest.lua")
                    
addscriptexist(6737970321, "LivetopiaADMIN", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LivetopiaADMIN.lua")
                    
addscriptexist(5379581123, "SwordFightandFlexYourTime", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SwordFightandFlexYourTime.lua")
                    
addscriptexist(621129760, "KAT", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KAT.lua")
    
addscript(3400631762,"Bizarre Blox", "BizarreBlox", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BizarreBlox.lua")
                    
                    
addscriptexist(1758401491, "PublicBathroomSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PublicBathroomSimulator.lua")
    
addscript(204990346,"Tiny Tanks!", "TinyTanks", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TinyTanks.lua")
                    
    
addscript(6771382126,"Noob Piece", "NoobPiece", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NoobPiece.lua")
                    
    
addscript(6264160858,"Plants v. Noobs", "PlantsvNoobs", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PlantsvNoobs.lua")
                    
                    
addscriptexist(137885680, "ZombieRush", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieRush.lua")
                    
addscriptexist(1224212277, "BuildABoatForTreasure", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasure.lua")
                    
addscriptexist(142823291, "MurderMystery3", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery3.lua")
                    
addscriptexist(3177438863, "SuperSaiyanSimulator2", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperSaiyanSimulator2.lua")
                    
addscriptexist(920587237, "AdoptMe", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMe.lua")
                    
addscriptexist(3145447020, "MountEverestClimbingRoleplay", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MountEverestClimbingRoleplay.lua")
                    
addscriptexist(4893679160, "BrainSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrainSimulator.lua")
                    
addscriptexist(3823781113, "SaberSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SaberSimulator.lua")
    
addscript(6495194916,"Dinosaur City", "DinosaurCity", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DinosaurCity.lua")
                    
                    
addscriptexist(5320510816, "MadCityFARMXp", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityFARMXp.lua")
                    
addscriptexist(6114360009, "PrisonLife3", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLife3.lua")
                    
addscriptexist(6273865312, "SupernaturalSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SupernaturalSimulator.lua")
    
addscript(6425918578,"Ore Magnet Simulator", "OreMagnetSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OreMagnetSimulator.lua")
                    
    
addscript(6679028787,"Mega Hotel Tycoon", "MegaHotelTycoon", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MegaHotelTycoon.lua")
                    
                    
addscriptexist(6769764667, "FactorySimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FactorySimulator.lua")
                    
addscriptexist(6312753269, "SuperEvolution", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperEvolution.lua")
                    
addscriptexist(4543144283, "MegaNoobSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MegaNoobSimulator.lua")
                    
addscriptexist(5062619730, "WarSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WarSimulator.lua")
    
addscript(5346447287,"Tapping Gods", "TappingGods", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingGods.lua")
                    
                    
addscriptexist(574407221, "SuperHeroTycoon", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperHeroTycoon.lua")
                    
addscriptexist(8288069630, "PlanetMinignSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PlanetMinignSimulator.lua")
    
addscript(5414779423,"Science Simulator!", "ScienceSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ScienceSimulator.lua")
                    
                    
addscriptexist(9840387028, "EraofAlthea", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EraofAlthea.lua")
    
addscript(5692464985,"Gridiron Football", "GridironFootball", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GridironFootball.lua")
                    
                    
addscriptexist(5865858426, "RetailTycoon", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RetailTycoon.lua")
                    
addscriptexist(6544175281, "FoodMagnetSimulatorGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FoodMagnetSimulatorGUI.lua")
                    
addscriptexist(6279039046, "SledSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SledSimulator.lua")
                    
addscriptexist(662417684, "LUCKYBLOCKSBattlegroundsGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LUCKYBLOCKSBattlegroundsGUI.lua")
    
addscript(8851865158,"Aethelbeorn", "Aethelbeorn", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Aethelbeorn.lua")
                    
                    
addscriptexist(6234390472, "Cookingintherain", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Cookingintherain.lua")
                    
addscriptexist(2961297129, "DEATHZONE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DEATHZONE.lua")
    
addscript(6371984839,"Lifting Titans GUI", "LiftingTitansGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LiftingTitansGUI.lua")
                    
                    
addscriptexist(8533682846, "GiantSimulatorGUIV2", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GiantSimulatorGUIV2.lua")
    
addscript(6973939752,"Arsenal BANAN", "ArsenalBANAN", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalBANAN.lua")
                    
                    
addscriptexist(2732246600, "BloodyBattleGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloodyBattleGUI.lua")
                    
addscriptexist(4924922222, "BrookhavenRP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrookhavenRP.lua")
                    
addscriptexist(5543622168, "CriticalTowerDefense", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CriticalTowerDefense.lua")
    
addscript(6574375780,"Dark Piece", "DarkPiece", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DarkPiece.lua")
                    
    
addscript(9360490232,"Dash FE GUI", "DashFEGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DashFEGUI.lua")
                    
    
addscript(6580889100,"Build A Boat For Treasure GUI", "BuildABoatForTreasureGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureGUI.lua")
                    
                    
addscriptexist(192800, "WorkataPizzaPlace", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorkataPizzaPlace.lua")
                    
addscriptexist(6410967163, "BeefaceBeaBee", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeefaceBeaBee.lua")
                    
addscriptexist(6461766546, "AHerosDestiny", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AHerosDestiny.lua")
                    
addscriptexist(5327880096, "OnlineBusinessSimulator2", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OnlineBusinessSimulator2.lua")
    
addscript(6531005851,"Hub Script", "HubScript", "MaGiXx", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HubScript.lua")
                    
                    
addscriptexist(4499822233, "StarWarsBountyHuntersOuterRim", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StarWarsBountyHuntersOuterRim.lua")
                    
addscriptexist(4850718823, "SkatePark", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SkatePark.lua")
                    
addscriptexist(4934471106, "MyHeroMania", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyHeroMania.lua")
    
addscript(6440133276,"Shampoo Simulator", "ShampooSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShampooSimulator.lua")
                    
    
addscript(5709572883,"Lift Legends Simulator", "LiftLegendsSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LiftLegendsSimulator.lua")
                    
                    
addscriptexist(5293755937, "SpeedRunSImulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedRunSImulator.lua")
    
addscript(5609538200,"Tower of Fun", "TowerofFun", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofFun.lua")
                    
                    
addscriptexist(142823291, "MurderMystery2FAKEKNIFE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2FAKEKNIFE.lua")
                    
addscriptexist(6531005851, "LiftingTitans", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LiftingTitans.lua")
    
addscript(5614655179,"Ultimate Admin Script", "UltimateAdminScript", "ChipyxaOOFicial", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UltimateAdminScript.lua")
                    
                    
addscriptexist(5827078246, "CoinsHeroSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CoinsHeroSimulator.lua")
                    
addscriptexist(2753915549, "BloxFruits", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruits.lua")
                    
addscriptexist(2629642516, "BitcoinMiner", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BitcoinMiner.lua")
    
addscript(1229173778,"Lab Experiment", "LabExperiment", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LabExperiment.lua")
                    
    
addscript(3082130015,"Ninja Magic", "NinjaMagic", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaMagic.lua")
                    
                    
addscriptexist(6490016198, "SlayerTycoon", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlayerTycoon.lua")
                    
addscriptexist(155382109, "SurviveandKilltheKillersinArea51", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurviveandKilltheKillersinArea51.lua")
                    
addscriptexist(3339374541, "MidnightRacingTokyo", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MidnightRacingTokyo.lua")
                    
addscriptexist(6329844902, "LastPirates", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LastPirates.lua")
    
addscript(230503554,"Speed Run SImulator GUI", "SpeedRunSImulatorGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedRunSImulatorGUI.lua")
                    
                    
addscriptexist(5293755937, "SpeedRunSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedRunSimulator.lua")
                    
addscriptexist(4704006941, "BladeThrowingSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BladeThrowingSimulator.lua")
    
addscript(5854098726,"Spooky Simulator", "SpookySimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpookySimulator.lua")
                    
    
addscript(2577423786,"Superhero Simulator", "SuperheroSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperheroSimulator.lua")
                    
    
addscript(394506555,"Glue Piece", "GluePiece", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GluePiece.lua")
                    
                    
addscriptexist(6804602922, "BoxingSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BoxingSimulator.lua")
                    
addscriptexist(5006110264, "FireBreathingSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FireBreathingSimulator.lua")
                    
addscriptexist(5659599095, "BloxStreets", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxStreets.lua")
    
addscript(418574428,"Downfall", "Downfall", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Downfall.lua")
                    
                    
addscriptexist(263761432, "HorrificHousing", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HorrificHousing.lua")
    
addscript(5153937061,"Silent Aim for FPS games", "SilentAimforFPSgames", "ChipyxaOOFicial", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SilentAimforFPSgames.lua")
                    
    
addscript(6352880659,"Snowball.io", "Snowballio", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Snowballio.lua")
                    
    
addscript(2616498302,"Slaying Simulator", "SlayingSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlayingSimulator.lua")
                    
    
addscript(5257505590,"Saiyan Fighting Simulator", "SaiyanFightingSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SaiyanFightingSimulator.lua")
                    
    
addscript(6002047566,"Sorcerer Fighting Simulator", "SorcererFightingSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SorcererFightingSimulator.lua")
                    
                    
addscriptexist(2622527242, "rBreachGUI", "ChipyxaOOFicial", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/rBreachGUI.lua")
                    
addscriptexist(3494008884, "DonutBakeryTycoon", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DonutBakeryTycoon.lua")
                    
addscriptexist(3458435516, "LimitedSimulator2", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LimitedSimulator2.lua")
    
addscript(4952780297,"Combat Rift", "CombatRift", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CombatRift.lua")
                    
                    
addscriptexist(2990100290, "RPGSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RPGSimulator.lua")
    
addscript(6048603509,"Blademaster Simulator", "BlademasterSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BlademasterSimulator.lua")
                    
    
addscript(5784984978,"Milk Simulator", "MilkSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MilkSimulator.lua")
                    
    
addscript(5546188609,"Scythe Simulator", "ScytheSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ScytheSimulator.lua")
                    
    
addscript(1862413075,"Farming Simulator", "FarmingSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FarmingSimulator.lua")
                    
                    
addscriptexist(6305942109, "LaundrySimulatorV2", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LaundrySimulatorV2.lua")
                    
addscriptexist(5546188609, "ScytheSimulatorV2", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ScytheSimulatorV2.lua")
    
addscript(5025324461,"Smacking Simulator", "SmackingSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SmackingSimulator.lua")
                    
                    
addscriptexist(1962086868, "TowerofHell", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofHell.lua")
                    
addscriptexist(7860844204, "AntLifeESP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AntLifeESP.lua")
                    
addscriptexist(6973939752, "ArsenalBANANINF", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalBANANINF.lua")
    
addscript(5617870058,"Pet Battle Simulator", "PetBattleSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetBattleSimulator.lua")
                    
    
addscript(3268321767,"Saitama Simulator", "SaitamaSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SaitamaSimulator.lua")
                    
    
addscript(4520536611,"Fitness Simulator", "FitnessSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FitnessSimulator.lua")
                    
    
addscript(6485529694,"Bee Sim NEW GUI", "BeeSimNEWGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeeSimNEWGUI.lua")
                    
                    
addscriptexist(137885680, "ZombieRushGUI", "ChipyxaOOFicial", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieRushGUI.lua")
                    
addscriptexist(2473334918, "GasStationSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GasStationSimulator.lua")
    
addscript(5665787539,"Gods Of Glory", "GodsOfGlory", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GodsOfGlory.lua")
                    
                    
addscriptexist(286090429, "ArsenalNewGui", "TSQ", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalNewGui.lua")
    
addscript(5265888165,"Ninja Clicker Simulator", "NinjaClickerSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaClickerSimulator.lua")
                    
                    
addscriptexist(155615604, "PrisonLifeGui", "ChipyxaOOFicial", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLifeGui.lua")
    
addscript(5098853904,"Circle Simulator", "CircleSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CircleSimulator.lua")
                    
    
addscript(1689414409,"Roblox Uno", "RobloxUno", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxUno.lua")
                    
    
addscript(5905532025,"Human Simulator", "HumanSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HumanSimulator.lua")
                    
    
addscript(4950829171,"Fart Simulator", "FartSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FartSimulator.lua")
                    
                    
addscriptexist(142823291, "MurderMystery2ESPGui", "ChipyxaOOFicial", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2ESPGui.lua")
    
addscript(1599679393,"Pet Simulator!", "PetSimulator", "Ykpon", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulator.lua")
                    
    
addscript(6090639744,"Bacon Simulator", "BaconSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BaconSimulator.lua")
                    
    
addscript(5024229518,"Trading Simulator", "TradingSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TradingSimulator.lua")
                    
    
addscript(5852812686,"Candy Clicking Simulator", "CandyClickingSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CandyClickingSimulator.lua")
                    
    
addscript(2210085102,"INF ammo Naval Warfare", "INFammoNavalWarfare", "ChipyxaOOFicial", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/INFammoNavalWarfare.lua")
                    
                    
addscriptexist(6305942109, "LaundrySimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LaundrySimulator.lua")
    
addscript(2193332090,"SuperHero Fighting Simulator", "SuperHeroFightingSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperHeroFightingSimulator.lua")
                    
                    
addscriptexist(5784984978, "MilkSImulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MilkSImulator.lua")
                    
addscriptexist(2580982329, "TextingSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TextingSimulator.lua")
                    
addscriptexist(5736409216, "MallTycoon", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MallTycoon.lua")
    
addscript(5372450078,"Teddie Simulator", "TeddieSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TeddieSimulator.lua")
                    
                    
addscriptexist(1537690962, "BeeSwarmSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeeSwarmSimulator.lua")
                    
addscriptexist(413424176, "CloneTycoon2", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CloneTycoon2.lua")
                    
addscriptexist(6681032961, "MuseumTycoon", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MuseumTycoon.lua")
    
addscript(4926599832,"My Donut Store", "MyDonutStore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyDonutStore.lua")
                    
    
addscript(6368458125,"PolyCityRP", "PolyCityRP", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PolyCityRP.lua")
                    
                    
addscriptexist(286090429, "ArsenalGUI", "DeathDemon", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalGUI.lua")
    
addscript(2673595672,"Dashing Simulator", "DashingSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DashingSimulator.lua")
                    
    
addscript(5151156182,"Pet Heroes", "PetHeroes", "Ykpon", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetHeroes.lua")
                    
                    
addscriptexist(4520749081, "KingLegacy", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KingLegacy.lua")
                    
addscriptexist(621129760, "KATaim", "ChipyxaOOFicial", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KATaim.lua")
                    
addscriptexist(301549746, "CounterBloxBloxTap", "ChipyxaOOFicial", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CounterBloxBloxTap.lua")
    
addscript(5801771332,"Murder Mystery 3 GUI", "MurderMystery3GUI", "ChipyxaOOFicial", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery3GUI.lua")
                    
                    
addscriptexist(5736409216, "MallTycoonAutoFarm", "ChipyxaOOFicial", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MallTycoonAutoFarm.lua")
                    
addscriptexist(155615604, "PrisonLife", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLife.lua")
                    
addscriptexist(171391948, "VehicleSimulator", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VehicleSimulator.lua")
                    
addscriptexist(6485529694, "BeeSim", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeeSim.lua")
                    
addscriptexist(4616652839, "Shindo", "Ykpon", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Shindo.lua")
                    
addscriptexist(221718525, "NinjaTycoon", "Ykpon", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaTycoon.lua")
    
addscript(2041312716,"Ragdoll Engine", "RagdollEngine", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RagdollEngine.lua")
                    
                    
addscriptexist(4566572536, "VehicleLegends", "Ykpon", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VehicleLegends.lua")
                    
addscriptexist(621129760, "KATAIMBOT", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KATAIMBOT.lua")
                    
addscriptexist(3623096087, "MuscleLegends", "Ykpon", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MuscleLegends.lua")
                    
addscriptexist(662417684, "LuckyBlocksBattlegrounds", "Ykpon", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LuckyBlocksBattlegrounds.lua")
                    
addscriptexist(286090429, "ArsenalAim", "DeathDemon", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalAim.lua")
                    
addscriptexist(3101667897, "LegensOfSpeed", "Саске", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegensOfSpeed.lua")
                    
addscriptexist(893973440, "FleeTheFacility", "Саске", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FleeTheFacility.lua")
    
addscript(4470259111,"Trolling GUI", "TrollingGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TrollingGUI.lua")
                    
                    
addscriptexist(21532277, "Notoriety", "rg10008", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Notoriety.lua")
                    
addscriptexist(654732683, "CarCrushers2", "rg10008", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarCrushers2.lua")
                    
addscriptexist(1224212277, "MadCity", "BackSlash", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCity.lua")
    
addscript(4623386862,"Piggy [BOOK 2]", "PiggyBOOK2", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PiggyBOOK2.lua")
                    
                    
addscriptexist(4580204640, "SurvivetheKiller", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurvivetheKiller.lua")
    
addscript(1265834997,"Hitbox", "Hitbox", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Hitbox.lua")
                    
                    
addscriptexist(2512643572, "BubbleGumSimulator", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BubbleGumSimulator.lua")
                    
addscriptexist(2041312716, "RobloxRagdollEngine", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxRagdollEngine.lua")
                    
addscriptexist(3101667897, "Legendofspeed", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Legendofspeed.lua")
                    
addscriptexist(1417427737, "MiningSimulator", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningSimulator.lua")
                    
addscriptexist(606849621, "JailBreak", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailBreak.lua")
    
addscript(5902977746,"Ultimate Tower Defense Sim", "UltimateTowerDefenseSim", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UltimateTowerDefenseSim.lua")
                    
                    
addscriptexist(2619187362, "SuperPowerFightingSimulator", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperPowerFightingSimulator.lua")
                    
addscriptexist(445664957, "Parkour", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Parkour.lua")
    
addscript(3072832953,"Escape Prison Obby", "EscapePrisonObby", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EscapePrisonObby.lua")
                    
                    
addscriptexist(1537690962, "BeeSwarmSimulatorv2", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeeSwarmSimulatorv2.lua")
                    
addscriptexist(1499872953, "BokuNoRobloxRemastered", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BokuNoRobloxRemastered.lua")
                    
addscriptexist(3527629287, "BIGPaintball", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BIGPaintball.lua")
                    
addscriptexist(3351674303, "DrivingSimulator", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DrivingSimulator.lua")
    
addscript(5569431582,"Little World", "LittleWorld", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LittleWorld.lua")
                    
    
addscript(5118969548,"Spider", "Spider", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Spider.lua")
                    
                    
addscriptexist(5201039691, "TatakaiReborn", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TatakaiReborn.lua")
                    
addscriptexist(185655149, "Bloxburgv2", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Bloxburgv2.lua")
                    
addscriptexist(2202352383, "SuperPowerTrainingSimulator", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperPowerTrainingSimulator.lua")
                    
addscriptexist(2414851778, "DungeonQuest", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DungeonQuest.lua")
    
addscript(5002210114,"Kitty", "Kitty", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Kitty.lua")
                    
    
addscript(4865990095,"Power Simulator 2", "PowerSimulator2", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PowerSimulator2.lua")
                    
    
addscript(4830389640,"Ronald", "Ronald", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ronald.lua")
                    
                    
addscriptexist(4616652839, "ShindoLifev2", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoLifev2.lua")
                    
addscriptexist(1962086868, "TowerOfHell", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerOfHell.lua")
                    
addscriptexist(1899149341, "VehicleTycoon", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VehicleTycoon.lua")
                    
addscriptexist(606849621, "Jailbreak", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Jailbreak.lua")
                    
addscriptexist(4616652839, "Shindolife", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Shindolife.lua")
                    
addscriptexist(142823291, "MURDERMYSTERYII", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MURDERMYSTERYII.lua")
                    
addscriptexist(4616652839, "ShindoLife", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoLife.lua")
    
addscript(5600963870,"Shark Evolution", "SharkEvolution", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SharkEvolution.lua")
                    
    
addscript(4934958405,"Fruit Collecting Sim Script", "FruitCollectingSimScript", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FruitCollectingSimScript.lua")
                    
    
addscript(4723618670,"Wisteria", "Wisteria", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Wisteria.lua")
                    
                    
addscriptexist(137877687, "RoCitizens", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoCitizens.lua")
    
addscript(6264538681,"Workout Island Script", "WorkoutIslandScript", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorkoutIslandScript.lua")
                    
                    
addscriptexist(5278850819, "stayaliveandflex", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/stayaliveandflex.lua")
    
addscript(7794847395,"Tapping Masters Script", "TappingMastersScript", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingMastersScript.lua")
                    
    
addscript(6121562632,"Relinquit", "Relinquit", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Relinquit.lua")
                    
                    
addscriptexist(4522347649, "RevizAdmin", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RevizAdmin.lua")
    
addscript(5744669807,"Undertale Ultimate TimeLine", "UndertaleUltimateTimeLine", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UndertaleUltimateTimeLine.lua")
                    
                    
addscriptexist(2551184308, "AfterTheFlashMirage", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AfterTheFlashMirage.lua")
    
addscript(4859936288,"Clicker Story", "ClickerStory", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerStory.lua")
                    
    
addscript(10740140258,"Castle Clickers", "CastleClickers", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CastleClickers.lua")
                    
                    
addscriptexist(112420803, "KohlsAdminHouseNBC", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KohlsAdminHouseNBC.lua")
                    
addscriptexist(86322978, "UltimateRandomNight", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UltimateRandomNight.lua")
    
addscript(60654525,"The Legendary Swords RPG", "TheLegendarySwordsRPG", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheLegendarySwordsRPG.lua")
                    
                    
addscriptexist(54865335, "UltimateDrivingWestover", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UltimateDrivingWestover.lua")
                    
addscriptexist(2377868063, "StrucidBETA", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StrucidBETA.lua")
    
addscript(4601704679,"Bakon", "Bakon", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Bakon.lua")
                    
                    
addscriptexist(1069951594, "FallofHell", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FallofHell.lua")
    
addscript(5645001551,"Munition (BETA)", "MunitionBETA", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MunitionBETA.lua")
                    
                    
addscriptexist(3351674303, "DrivingEmpireBETA", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DrivingEmpireBETA.lua")
    
addscript(5359071009,"Hunter x Online", "HunterxOnline", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HunterxOnline.lua")
                    
                    
addscriptexist(5272267802, "BeaToy", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeaToy.lua")
                    
addscriptexist(4616652839, "ShindoLifeV2", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoLifeV2.lua")
                    
addscriptexist(228181322, "DinosaurSimulator", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DinosaurSimulator.lua")
                    
addscriptexist(5951002734, "ProjectBaki2", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectBaki2.lua")
    
addscript(3339793570,"Pushing Simulator", "PushingSimulator", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PushingSimulator.lua")
                    
    
addscript(6153022230,"Justice Jungle", "JusticeJungle", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JusticeJungle.lua")
                    
                    
addscriptexist(155382109, "SurviveandKill", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurviveandKill.lua")
    
addscript(5266363557,"Combo Clickers", "ComboClickers", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ComboClickers.lua")
                    
                    
addscriptexist(2866967438, "FishingSimulator", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FishingSimulator.lua")
    
addscript(4795251564,"Blocks!", "Blocks", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blocks.lua")
                    
    
addscript(901793731,"D-DAY", "DDAY", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DDAY.lua")
                    
                    
addscriptexist(536102540, "DragonBallZFinalStand", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBallZFinalStand.lua")
                    
addscriptexist(3725149043, "SuperDoomspire", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperDoomspire.lua")
    
addscript(4369222337,"Potion Simulator", "PotionSimulator", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PotionSimulator.lua")
                    
    
addscript(4359012847,"Slashing Masters", "SlashingMasters", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SlashingMasters.lua")
                    
    
addscript(5230682285,"Space Legends", "SpaceLegends", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpaceLegends.lua")
                    
                    
addscriptexist(659222129, "Swordburst2", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Swordburst2.lua")
    
addscript(16613936,"Greenwood Town", "GreenwoodTown", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GreenwoodTown.lua")
                    
                    
addscriptexist(5293755937, "SpeedRunSimulatorFARM", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedRunSimulatorFARM.lua")
                    
addscriptexist(4556951723, "RagdollPhysics", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RagdollPhysics.lua")
                    
addscriptexist(4723618670, "WisteriaAUTOFARM", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WisteriaAUTOFARM.lua")
    
addscript(3168928542,"Mining Inc Remastered", "MiningIncRemastered", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MiningIncRemastered.lua")
                    
                    
addscriptexist(137877687, "RoCitizensPaintingEditor", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoCitizensPaintingEditor.lua")
                    
addscriptexist(2041312716, "RagdollEngineCrashServer", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RagdollEngineCrashServer.lua")
                    
addscriptexist(5201039691, "Tatakai", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Tatakai.lua")
    
addscript(10963175,"Game Store Money Script", "GameStoreMoneyScript", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GameStoreMoneyScript.lua")
                    
    
addscript(6409175633,"Auto-Sing [NGYU]", "AutoSingNGYU", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AutoSingNGYU.lua")
                    
    
addscript(1252559098,"Snow Shoveling Simulator", "SnowShovelingSimulator", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SnowShovelingSimulator.lua")
                    
                    
addscriptexist(5902977746, "SuperheroTowerDefense", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperheroTowerDefense.lua")
    
addscript(625364452,"Nerf FPS V5.46", "NerfFPSV546", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NerfFPSV546.lua")
                    
    
addscript(4828705676,"Reaper Simulator 2", "ReaperSimulator2", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ReaperSimulator2.lua")
                    
                    
addscriptexist(5293755937, "SpeedRunSImx1000click", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedRunSImx1000click.lua")
                    
addscriptexist(286090429, "Arsenalv2", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arsenalv2.lua")
    
addscript(5942932659,"Wormface AUTO FARM", "WormfaceAUTOFARM", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WormfaceAUTOFARM.lua")
                    
    
addscript(6110766473,"Flex Fight", "FlexFight", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FlexFight.lua")
                    
    
addscript(5977280685,"Ninja Legends 2", "NinjaLegends2", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegends2.lua")
                    
                    
addscriptexist(5665787539, "GodsOfGloryBETA", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GodsOfGloryBETA.lua")
    
addscript(5802761955,"Last Honor - Gun Testing", "LastHonorGunTesting", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LastHonorGunTesting.lua")
                    
                    
addscriptexist(4893679160, "BigBrainSimulator", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BigBrainSimulator.lua")
                    
addscriptexist(4872321990, "Island", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Island.lua")
    
addscript(746820961,"Unit 1968", "Unit1968", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Unit1968.lua")
                    
    
addscript(6360242367,"Multi Tools GUI", "MultiToolsGUI", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MultiToolsGUI.lua")
                    
                    
addscriptexist(2961297129, "DeathZone", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeathZone.lua")
    
addscript(4857069142,"Clicking Simulator 2.0", "ClickingSimulator20", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickingSimulator20.lua")
                    
                    
addscriptexist(6512923934, "noclipespclicktparsenal", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/noclipespclicktparsenal.lua")
    
addscript(5314315093,"IQ Obby", "IQObby", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/IQObby.lua")
                    
                    
addscriptexist(277751860, "EpicMinigames", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EpicMinigames.lua")
                    
addscriptexist(2413927524, "THERAKE", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/THERAKE.lua")
                    
addscriptexist(4787629450, "BOOGABOOGA", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BOOGABOOGA.lua")
                    
addscriptexist(2866967438, "FishingSimOP", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FishingSimOP.lua")
                    
addscriptexist(13822889, "LumberTycoon2", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LumberTycoon2.lua")
    
addscript(9068020514,"Animation Changer", "AnimationChanger", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimationChanger.lua")
                    
                    
addscriptexist(2546155523, "RoVille", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoVille.lua")
                    
addscriptexist(5942932659, "Wormface", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Wormface.lua")
                    
addscriptexist(648362523, "BreakingPoint", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BreakingPoint.lua")
                    
addscriptexist(606849621, "JailbreakALLROBS", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakALLROBS.lua")
    
addscript(3852084464,"Auto-Sing [Revenge]", "AutoSingRevenge", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AutoSingRevenge.lua")
                    
                    
addscriptexist(2533391464, "SnowmanSimulator", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SnowmanSimulator.lua")
    
addscript(1962657432,"ChatSpy", "ChatSpy", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ChatSpy.lua")
                    
                    
addscriptexist(301549746, "CounterBloxRage", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CounterBloxRage.lua")
                    
addscriptexist(155615604, "PRISONLIFEBestGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PRISONLIFEBestGui.lua")
                    
addscriptexist(5002210114, "KittyAutoredeem", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KittyAutoredeem.lua")
    
addscript(9548631810,"Adopt Me TP", "AdoptMeTP", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMeTP.lua")
                    
                    
addscriptexist(8533682846, "AdoptMeFarmEvent", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMeFarmEvent.lua")
                    
addscriptexist(4616652839, "ShindoLifeALLGUI", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoLifeALLGUI.lua")
    
addscript(4500662699,"Blood Moon Tycoon 2", "BloodMoonTycoon2", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloodMoonTycoon2.lua")
                    
                    
addscriptexist(3272915504, "WorldofMagic", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WorldofMagic.lua")
    
addscript(5732973455,"HOURS", "HOURS", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HOURS.lua")
                    
    
addscript(5291187056,"Gui for Phantom For, Bad Bus", "GuiforPhantomForBadBus", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GuiforPhantomForBadBus.lua")
                    
                    
addscriptexist(4580204640, "ALLGAMESESP", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ALLGAMESESP.lua")
                    
addscriptexist(155615604, "GGPrisonPrsionLifeGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GGPrisonPrsionLifeGui.lua")
                    
addscriptexist(2041312716, "hatspin", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/hatspin.lua")
    
addscript(7493270266,"Fly, noclip, infinity jump, btools", "Flynoclipinfinityjumpbtools", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Flynoclipinfinityjumpbtools.lua")
                    
                    
addscriptexist(2202352383, "SuperPowerTrainingSim", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperPowerTrainingSim.lua")
                    
addscriptexist(4003872968, "GiantSurvival", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GiantSurvival.lua")
                    
addscriptexist(286090429, "ArsenalРЎСЃAimBot", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalРЎСЃAimBot.lua")
    
addscript(10508802866,"Chat Bypass", "ChatBypass", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ChatBypass.lua")
                    
                    
addscriptexist(2788229376, "DaHood", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHood.lua")
                    
addscriptexist(2413927524, "THERAKEв„ў", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/THERAKEв„ў.lua")
    
addscript(5767189684,"DungeonFall", "DungeonFall", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DungeonFall.lua")
                    
                    
addscriptexist(370731277, "MeepCitySuperGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MeepCitySuperGui.lua")
                    
addscriptexist(370731277, "MeepCityGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MeepCityGui.lua")
                    
addscriptexist(1240123653, "ZombieAttackGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieAttackGui.lua")
                    
addscriptexist(893973440, "FleetheFacilityBetaGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FleetheFacilityBetaGui.lua")
                    
addscriptexist(5617626326, "BloodSamurai2", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloodSamurai2.lua")
    
addscript(749703080,"Avatar", "AvatarTheLastAirbender", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AvatarTheLastAirbender.lua")
                    
    
addscript(5080886060,"Heroes Legacy", "HeroesLegacy", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HeroesLegacy.lua")
                    
    
addscript(6609377660,"Roblox RTX", "RobloxRTX", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxRTX.lua")
                    
    
addscript(5000625666,"Car Tycoon! Demo", "CarTycoonDemo", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarTycoonDemo.lua")
                    
    
addscript(4399032158,"Thick Legends", "ThickLegends", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThickLegends.lua")
                    
                    
addscriptexist(301549746, "CounterBloxaimbotESP", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CounterBloxaimbotESP.lua")
                    
addscriptexist(4520749081, "KingPiece", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KingPiece.lua")
                    
addscriptexist(5670292785, "UndeadDefenseTycoon", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UndeadDefenseTycoon.lua")
    
addscript(5721826509,"Amongst Us!", "AmongstUs", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AmongstUs.lua")
                    
                    
addscriptexist(3587619225, "MegaEasyObby", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MegaEasyObby.lua")
                    
addscriptexist(730951264, "TheMaze", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TheMaze.lua")
                    
addscriptexist(4616652839, "ShindoLifeInfiniteSpins", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoLifeInfiniteSpins.lua")
                    
addscriptexist(4872321990, "Islands", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Islands.lua")
                    
addscriptexist(4616652839, "ShindoLife2", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoLife2.lua")
                    
addscriptexist(286090429, "ArsenalRAINBOWGUN", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalRAINBOWGUN.lua")
    
addscript(4960315473,"Bleach Era", "BleachEra", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BleachEra.lua")
                    
    
addscript(5098929086,"Tapping Simulator", "TappingSimulator", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingSimulator.lua")
                    
    
addscript(3923754109,"Backflip Simulator", "BackflipSimulator", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BackflipSimulator.lua")
                    
                    
addscriptexist(258258996, "MinersHavenReincarnation", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MinersHavenReincarnation.lua")
                    
addscriptexist(914010731, "RoGhoul", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoGhoul.lua")
                    
addscriptexist(2686500207, "ABizarreDay", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ABizarreDay.lua")
                    
addscriptexist(1537690962, "BeeSwarmSimulatorGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeeSwarmSimulatorGui.lua")
    
addscript(4347362871,"My Farm", "MyFarm", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyFarm.lua")
                    
                    
addscriptexist(221718525, "NarutoTycoon", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NarutoTycoon.lua")
                    
addscriptexist(1730877806, "GrandPieceOnline", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GrandPieceOnline.lua")
    
addscript(9824221333,"CBRO ARSENAL ANTI AIM", "CBROARSENALANTIAIM", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CBROARSENALANTIAIM.lua")
                    
    
addscript(5167508836,"YouTube Champions", "YouTubeChampions", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YouTubeChampions.lua")
                    
    
addscript(5396265722,"An Astonishing Day", "AnAstonishingDay", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnAstonishingDay.lua")
                    
                    
addscriptexist(5130598377, "VacumSimulator", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VacumSimulator.lua")
                    
addscriptexist(4470259111, "AdminGUI", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdminGUI.lua")
    
addscript(2636441885,"Speed City", "SpeedCity", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedCity.lua")
                    
                    
addscriptexist(3127396113, "AvengersTestingServer", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AvengersTestingServer.lua")
                    
addscriptexist(70005410, "BloxHunt", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxHunt.lua")
    
addscript(4457085477,"Clover", "Clover", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Clover.lua")
                    
                    
addscriptexist(855499080, "SkyWars", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SkyWars.lua")
    
addscript(5790039516,"Lil Nas X Concert Experience", "LilNasXConcertExperience", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LilNasXConcertExperience.lua")
                    
    
addscript(755776245,"Restaurant Tycoon", "RestaurantTycoon", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RestaurantTycoon.lua")
                    
                    
addscriptexist(4623386862, "Piggy", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Piggy.lua")
                    
addscriptexist(5535087806, "TappingMania", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingMania.lua")
    
addscript(5835263912,"One Piece", "OnePieceMillennium3", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OnePieceMillennium3.lua")
                    
    
addscript(5291924966,"Tapping Legends", "TappingLegends", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegends.lua")
                    
                    
addscriptexist(370731277, "MeepCity", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MeepCity.lua")
                    
addscriptexist(5490351219, "ClickerMadness", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerMadness.lua")
                    
addscriptexist(185655149, "BloxburgGUI", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxburgGUI.lua")
    
addscript(4254575069,"Champion Simulator", "ChampionSimulator", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ChampionSimulator.lua")
                    
                    
addscriptexist(3823781113, "SaberSimulatorGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SaberSimulatorGui.lua")
                    
addscriptexist(2788229376, "DaHoodScript", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodScript.lua")
                    
addscriptexist(230503554, "SpeedandJumphack", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SpeedandJumphack.lua")
                    
addscriptexist(4616652839, "ShinobiLife2", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShinobiLife2.lua")
                    
addscriptexist(4872321990, "IslandsGuiv2", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/IslandsGuiv2.lua")
                    
addscriptexist(2753915549, "FruitBloxAutoFarm", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FruitBloxAutoFarm.lua")
                    
addscriptexist(537413528, "BuildABoatCandyFarm", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatCandyFarm.lua")
                    
addscriptexist(286090429, "AimandWhArsenalandmore", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AimandWhArsenalandmore.lua")
                    
addscriptexist(1458767429, "AnimeBattleArena", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeBattleArena.lua")
                    
addscriptexist(4616652839, "ShibobiLife2GUI", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShibobiLife2GUI.lua")
                    
addscriptexist(171391948, "VehicleSimulatorGUI", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VehicleSimulatorGUI.lua")
                    
addscriptexist(263761432, "HorrificHousingInfMoney", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HorrificHousingInfMoney.lua")
                    
addscriptexist(734159876, "SharkBiteGUI", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SharkBiteGUI.lua")
                    
addscriptexist(137885680, "ZombieRushKillAll", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZombieRushKillAll.lua")
                    
addscriptexist(13822889, "LumberTycoon2PaintTools", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LumberTycoon2PaintTools.lua")
                    
addscriptexist(6610021055, "NoobyChat", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NoobyChat.lua")
                    
addscriptexist(142823291, "MurderMystery2Coin", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2Coin.lua")
                    
addscriptexist(920587237, "AdoptMeGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMeGui.lua")
    
addscript(5083731857,"Saitama Simulator AutoFarm", "SaitamaSimulatorAutoFarm", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SaitamaSimulatorAutoFarm.lua")
                    
                    
addscriptexist(566399244, "ElementalBattlegrounds", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ElementalBattlegrounds.lua")
                    
addscriptexist(301549746, "CounterBloxSkinChanger", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CounterBloxSkinChanger.lua")
                    
addscriptexist(914010731, "RoGhoulAutoFarm", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoGhoulAutoFarm.lua")
                    
addscriptexist(1224212277, "MadCitySuperGUI", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCitySuperGUI.lua")
                    
addscriptexist(263761432, "HorrificHousingAutoXp", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HorrificHousingAutoXp.lua")
    
addscript(6429781923,"Infinity Jump", "InfinityJump", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/InfinityJump.lua")
                    
                    
addscriptexist(142823291, "MurderMystery2Gui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2Gui.lua")
                    
addscriptexist(1599679393, "PetSimulatorGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorGui.lua")
                    
addscriptexist(4616652839, "ShinobiLife2AutoFarm", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShinobiLife2AutoFarm.lua")
                    
addscriptexist(5083731857, "SaitamaSimulatorGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SaitamaSimulatorGui.lua")
                    
addscriptexist(1224212277, "MadCityGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityGui.lua")
                    
addscriptexist(1962086868, "TowerofHellGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofHellGui.lua")
                    
addscriptexist(5709572883, "LiftLegendsSimulatorAutoGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LiftLegendsSimulatorAutoGui.lua")
                    
addscriptexist(920587237, "AdoptMeGUI", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMeGUI.lua")
                    
addscriptexist(3101667897, "LegendofSpeedAutoFarm", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LegendofSpeedAutoFarm.lua")
                    
addscriptexist(5709572883, "LiftlegendsSimulatorFree", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LiftlegendsSimulatorFree.lua")
                    
addscriptexist(606849621, "JailbreakMobileGarageFree", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailbreakMobileGarageFree.lua")
                    
addscriptexist(3056526277, "BuildandSurviveGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildandSurviveGui.lua")
                    
addscriptexist(662417684, "LuckyBlocksBattlegroundsGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LuckyBlocksBattlegroundsGui.lua")
                    
addscriptexist(3527629287, "BIGPaintballGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BIGPaintballGui.lua")
                    
addscriptexist(13822889, "LumberTycoon2Gui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LumberTycoon2Gui.lua")
                    
addscriptexist(3527629287, "BIGPaintballAutoKill", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BIGPaintballAutoKill.lua")
    
addscript(5596703547,"Weight Lifting Simulator 5", "WeightLiftingSimulator5", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeightLiftingSimulator5.lua")
                    
                    
addscriptexist(654732683, "CarCrusher2GUI", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarCrusher2GUI.lua")
                    
addscriptexist(443406476, "ProjectLazarusZOMBIES", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectLazarusZOMBIES.lua")
                    
addscriptexist(205224386, "HideandSeek", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HideandSeek.lua")
                    
addscriptexist(2202352383, "SuperPowerTrainingGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SuperPowerTrainingGui.lua")
                    
addscriptexist(185655149, "BloxBurgGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxBurgGui.lua")
                    
addscriptexist(4580204640, "SurvivetheKillerGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurvivetheKillerGui.lua")
                    
addscriptexist(3956818381, "NinjaLegendsGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsGui.lua")
                    
addscriptexist(1962086868, "TowerOfHellGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerOfHellGui.lua")
                    
addscriptexist(537413528, "BuildABoatGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatGui.lua")
                    
addscriptexist(606849621, "JailBreakGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JailBreakGui.lua")
                    
addscriptexist(171391948, "VehicleSimulatorGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VehicleSimulatorGui.lua")
                    
addscriptexist(286090429, "ArsenalGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalGui.lua")
                    
addscriptexist(4042427666, "AnimeFightingSimGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeFightingSimGui.lua")
                    
addscriptexist(286090429, "ArsenalGuiv0", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalGuiv0.lua")
                    
addscriptexist(2041312716, "RagdollEngineGui", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RagdollEngineGui.lua")