
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