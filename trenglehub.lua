
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

local generalscripts = Window:NewTab("General Scripts")
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
                    