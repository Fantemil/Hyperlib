
function addscript(Place,Gamename,title,author,scriptlink)
    if game.PlaceId == Place then
        _G.main = Window:NewTab(Gamename)
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
local Window = Library.CreateLib("Hyperlib", "BloodTheme")

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


                  
      
  
                        
addscriptexist(2753915549, "BloxFruitsGUIAutoLevelFarmStackMobsMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsGUIAutoLevelFarmStackMobsMore.lua")
                        
addscriptexist(2753915549, "BloxFruitsGUIFastAttackModeAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsGUIFastAttackModeAutoFarmMore.lua")
        
addscript(1344307396, "DestroytheNoobGiveAllItems", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DestroytheNoobGiveAllItems.lua")
                        
        
addscript(4522347649, "FREEADMINServerLagger", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FREEADMINServerLagger.lua")
                        
                        
addscriptexist(2753915549, "BloxFruitsAutoFarmAutoStatsTeleports", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxFruitsAutoFarmAutoStatsTeleports.lua")
        
addscript(7991339063, "RainbowFriendsAutoCollectItemsFinishAreaTeleportWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RainbowFriendsAutoCollectItemsFinishAreaTeleportWalkspeed.lua")
                        
        
addscript(4997792989, "HomelessSimulatorInRussiaPetAutofarmInfMoney", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HomelessSimulatorInRussiaPetAutofarmInfMoney.lua")
                        
        
addscript(9993529229, "CounterBloxRemasteredSilentAimEspAimbot", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CounterBloxRemasteredSilentAimEspAimbot.lua")
                        
        
addscript(9872472334, "EvadeGUIAutoFarmGodModeMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EvadeGUIAutoFarmGodModeMore.lua")
                        
        
addscript(10192063645, "ThyHoodToolCollector", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThyHoodToolCollector.lua")
                        
        
addscript(5956785391, "ProjectSlayersStunEffectServerBreaker", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ProjectSlayersStunEffectServerBreaker.lua")
                        
        
addscript(488667523, "ThoseWhoRemainItemESP", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThoseWhoRemainItemESP.lua")
                        
        
addscript(5732301513, "TRENCHESKillAllEnemies", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TRENCHESKillAllEnemies.lua")
                        
        
addscript(3177438863, "DragonBloxGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBloxGUI.lua")
                        
        
addscript(7502726087, "BeaHeroAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BeaHeroAutoFarm.lua")
                        
        
addscript(2248408710, "DestructionSimulatorGUIModBombModGunMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DestructionSimulatorGUIModBombModGunMore.lua")
                        
        
addscript(2534724415, "EmergencyResponseLibertyCountyGUIUnlockCarsAutoATMMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EmergencyResponseLibertyCountyGUIUnlockCarsAutoATMMore.lua")
                        
        
addscript(10484095306100000, "CLIMB100000STAIRSTOVIPTeleportToMysteryHouse", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CLIMB100000STAIRSTOVIPTeleportToMysteryHouse.lua")
                        
        
addscript(9585537847, "SHADOVISRPGFastItemSkillsAutoCollectMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SHADOVISRPGFastItemSkillsAutoCollectMore.lua")
                        
        
addscript(10531659515, "ShovelBattlesAutoFarmAutoKillAllBreakAllPlayers", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShovelBattlesAutoFarmAutoKillAllBreakAllPlayers.lua")
                        
        
addscript(662417684, "LuckyBlockBattlegroundsBlockGiver", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LuckyBlockBattlegroundsBlockGiver.lua")
                        
        
addscript(1803644552, "SurviveTheDisasters2Anticheatbypass", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SurviveTheDisasters2Anticheatbypass.lua")
                        
        
addscript(1428232912, "MurderMystery2Fly", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery2Fly.lua")
                        
        
addscript(9524757503, "iHeartLandMusicTycoonInstantlycomplete", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/iHeartLandMusicTycoonInstantlycomplete.lua")
                        
        
addscript(5993942214, "RushPointSkinChanger", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RushPointSkinChanger.lua")
                        
        
addscript(85697719, "KingdomLife2NameChangeForEveryPlayer", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KingdomLife2NameChangeForEveryPlayer.lua")
                        
        
addscript(185655149, "BloxburgPizzaDeliveryJobAutoFarmWithTpBypass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BloxburgPizzaDeliveryJobAutoFarmWithTpBypass.lua")
                        
                        
addscriptexist(155615604, "PrisonLifeTeleportsGunModesArest", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLifeTeleportsGunModesArest.lua")
                        
addscriptexist(10192063645, "ThyhoodGetExcalibur", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ThyhoodGetExcalibur.lua")
                        
addscriptexist(9872472334, "EvadeTpTomapTPTosafezoneAutoJump", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EvadeTpTomapTPTosafezoneAutoJump.lua")
        
addscript(5780309044, "standsawakeningInstantlyChangeStandWalkspeedNoclip", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/standsawakeningInstantlyChangeStandWalkspeedNoclip.lua")
                        
        
addscript(3956818381, "NinjaLegendsDupePets", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NinjaLegendsDupePets.lua")
                        
                        
addscriptexist(2788229376, "DaHoodAutoFarmKorbloxAutoFarmWeight", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodAutoFarmKorbloxAutoFarmWeight.lua")
        
addscript(6677985923, "MillionaireEmpireTycoonCashGiverWalkspeedJumppower", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MillionaireEmpireTycoonCashGiverWalkspeedJumppower.lua")
                        
        
addscript(1962086868, "TowerOfHellGetAllGearsNOTFE", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerOfHellGetAllGearsNOTFE.lua")
                        
                        
addscriptexist(2788229376, "DaHoodAimlockTargetAimbotAntiAim", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodAimlockTargetAimbotAntiAim.lua")
        
addscript(50630210801, "MyModdedDayTeleportsGrabAllItemsInfinityTimeStop", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MyModdedDayTeleportsGrabAllItemsInfinityTimeStop.lua")
                        
        
addscript(10108131074, "MowTheLawnAutoRefilGasAutoMowAutoHatchEggs", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MowTheLawnAutoRefilGasAutoMowAutoHatchEggs.lua")
                        
        
addscript(1067652383411, "RacingRocketAutoClickPowerAutoHatchAutoUpgradeRocket", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RacingRocketAutoClickPowerAutoHatchAutoUpgradeRocket.lua")
                        
                        
addscriptexist(85697719, "KingdomLifeIINameChangeForEveryPlayer", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KingdomLifeIINameChangeForEveryPlayer.lua")
        
addscript(7180042682, "MilitaryTycoonAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MilitaryTycoonAutoFarm.lua")
                        
        
addscript(7952502098, "ImpossibleGlassBridgeObbyAutoWinInfiniteCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ImpossibleGlassBridgeObbyAutoWinInfiniteCash.lua")
                        
                        
addscriptexist(9524757503, "iHeartLandMusicTycoonGetFreeItem", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/iHeartLandMusicTycoonGetFreeItem.lua")
        
addscript(2185497593, "ArcadeIslandXWorkingArcadeAutoFarmmoney", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArcadeIslandXWorkingArcadeAutoFarmmoney.lua")
                        
        
addscript(6289365295, "SkysDifficultyChartObbyAutoComplete", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SkysDifficultyChartObbyAutoComplete.lua")
                        
                        
addscriptexist(155615604, "PrisonLifeGunModeGiveGunWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PrisonLifeGunModeGiveGunWalkspeed.lua")
        
addscript(8508303900162, "TowerofFloodEscape2FreeOpenCase", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TowerofFloodEscape2FreeOpenCase.lua")
                        
        
addscript(87509976474, "TappinglegendsXAutoClickAutoRebirthAutoHatch", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappinglegendsXAutoClickAutoRebirthAutoHatch.lua")
                        
        
addscript(8737602449, "PlsDonateAutoThankAutoBegAntiAfk", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PlsDonateAutoThankAutoBegAntiAfk.lua")
                        
                        
addscriptexist(537413528, "BuildaboatfortreasureAutoFarmAutoBuyTeleports", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildaboatfortreasureAutoFarmAutoBuyTeleports.lua")
        
addscript(2551991523, "BrokenBones4AutoBreakBones", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrokenBones4AutoBreakBones.lua")
                        
        
addscript(648362523, "BreakingPointAutoWin", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BreakingPointAutoWin.lua")
                        
        
addscript(102131021, "FloodSurvivalWavesChooseMapsInfinityJumpTeleports", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FloodSurvivalWavesChooseMapsInfinityJumpTeleports.lua")
                        
        
addscript(10753832846, "AxeGuiFactoryDamageLoop", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AxeGuiFactoryDamageLoop.lua")
                        
        
addscript(9498006165, "TappingSimulatorRemoveEggHatchandClickDelay", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingSimulatorRemoveEggHatchandClickDelay.lua")
                        
                        
addscriptexist(2248408710, "DestructionSimulatorAddCoinsResetRemoveCooldown", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DestructionSimulatorAddCoinsResetRemoveCooldown.lua")
                        
addscriptexist(2788229376, "DaHoodSmoothAimLock", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodSmoothAimLock.lua")
        
addscript(106311815871102, "StoneMinerSimulator2ClaimAllCodesClaimsAllloginRewards", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StoneMinerSimulator2ClaimAllCodesClaimsAllloginRewards.lua")
                        
                        
addscriptexist(2788229376, "DaHoodCashCollectFlyNoclip", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodCashCollectFlyNoclip.lua")
                        
addscriptexist(106311815871102, "StoneMinerSimulator2AutoRebirth", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StoneMinerSimulator2AutoRebirth.lua")
        
addscript(98298692105, "KarateKickSimulatorKillAll", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KarateKickSimulatorKillAll.lua")
                        
                        
addscriptexist(537413528, "BuildABoatForTreasureAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BuildABoatForTreasureAutoFarm.lua")
        
addscript(4616652839170, "ShindoLifeAutofarmMobsAutoKeyPressInfiniteJump", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ShindoLifeAutofarmMobsAutoKeyPressInfiniteJump.lua")
                        
        
addscript(1242235469, "ballandaxeUnlockYourAxeRemoveLimits", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ballandaxeUnlockYourAxeRemoveLimits.lua")
                        
        
addscript(94171973341, "AnimeStoryAutoFarmAutoQuest", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeStoryAutoFarmAutoQuest.lua")
                        
        
addscript(6229116934, "HoopzGUIAimbotSilentAim", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HoopzGUIAimbotSilentAim.lua")
                        
                        
addscriptexist(2788229376, "DaHoodGUIAimLockSilentAimMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodGUIAimLockSilentAimMore.lua")
        
addscript(8482451541, "BrickDefenseAutoAddsTowersWhenReleased", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BrickDefenseAutoAddsTowersWhenReleased.lua")
                        
        
addscript(9264596435, "IdleHeroesSimulatorAutoFarmAutoUpgrade", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/IdleHeroesSimulatorAutoFarmAutoUpgrade.lua")
                        
        
addscript(10320240572, "EasyRaceClickerFastAutoWin", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EasyRaceClickerFastAutoWin.lua")
                        
        
addscript(105082968787, "MurderMystery7RedeemAllCodes", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMystery7RedeemAllCodes.lua")
                        
        
addscript(12242122772, "MadCityAutoFarmEXP", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MadCityAutoFarmEXP.lua")
                        
                        
addscriptexist(3527629287, "BIGPaintballUnlockAll", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BIGPaintballUnlockAll.lua")
        
addscript(621129760, "KnifeAbilityTestSilentAimAimTorsoFov", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KnifeAbilityTestSilentAimAimTorsoFov.lua")
                        
        
addscript(2860904296719118471981788929662860904290111958650, "ArsenalAimlockEspAimKey", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ArsenalAimlockEspAimKey.lua")
                        
                        
addscriptexist(2788229376, "DaHoodSilentAimanotherversion", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHoodSilentAimanotherversion.lua")
        
addscript(10275942471, "ColorRaceGetalotofWinsSpeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ColorRaceGetalotofWinsSpeed.lua")
                        
        
addscript(8227619186, "MurderMysteryAGemsAutoFarmWalkspeedInfJump", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MurderMysteryAGemsAutoFarmWalkspeedInfJump.lua")
                        
        
addscript(5490351219100, "ClickerMadnessAutoFarmBossFarmClaimFlags", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ClickerMadnessAutoFarmBossFarmClaimFlags.lua")
                        
        
addscript(9648883891, "FestivalTycoonAutoEndTycoon", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FestivalTycoonAutoEndTycoon.lua")
                        
        
addscript(107143652871, "AnimeRaceClickerAutoFarmAutoHatchUnlockWorlds", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeRaceClickerAutoFarmAutoHatchUnlockWorlds.lua")
                        
        
addscript(9030362964, "FieldGoalSimulatorAutoFarmGoals", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FieldGoalSimulatorAutoFarmGoals.lua")
                        
        
addscript(920587237, "AdoptMeAutoFarmFunFunctionsFly", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdoptMeAutoFarmFunFunctionsFly.lua")
                        
        
addscript(10524502174, "OnePunchFightersSimulatorAutoFarmAutoDeleteAutoBuy", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OnePunchFightersSimulatorAutoFarmAutoDeleteAutoBuy.lua")
                        
                        
addscriptexist(10484095306100000, "CLIMB100000STAIRSTOVIPTeleportToEnd", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CLIMB100000STAIRSTOVIPTeleportToEnd.lua")
        
addscript(9662949425, "PunchabrickwallsimulatorInfBonesAutoUpAutoRebirth", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PunchabrickwallsimulatorInfBonesAutoUpAutoRebirth.lua")
                        
        
addscript(277751860, "EpicMinigamesWalkspeedInfinityJumpClickTP", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EpicMinigamesWalkspeedInfinityJumpClickTP.lua")
                        
        
addscript(68046029226804602922, "BOXINGBETAWalkspeedRagdollInfDodgeStamina", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BOXINGBETAWalkspeedRagdollInfDodgeStamina.lua")
                        
        
addscript(8146731988, "UltraPowerTycoonAutoCollectAutoBuyWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UltraPowerTycoonAutoCollectAutoBuyWalkspeed.lua")
                        
        
addscript(6608498361, "cursedtanksimulatorKillAllTanks", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/cursedtanksimulatorKillAllTanks.lua")
                        
        
addscript(8894888083, "PinataLegendsInfinityGemsandCoins", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PinataLegendsInfinityGemsandCoins.lua")
                        
        
addscript(9992339729, "LongestAnswerWinsInfinityBlocks", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LongestAnswerWinsInfinityBlocks.lua")
                        
        
addscript(5498056786, "HandballAssociationInfinityStamina", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HandballAssociationInfinityStamina.lua")
                        
        
addscript(2066381781, "DeadlySinsRetributionAutoSpinRace", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeadlySinsRetributionAutoSpinRace.lua")
                        
                        
addscriptexist(2066381781, "DeadlySinsRetributionAutoSpinMagic", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DeadlySinsRetributionAutoSpinMagic.lua")
        
addscript(15549603971, "CarDealershipTycoonAutoFarmAutoDrive", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CarDealershipTycoonAutoFarmAutoDrive.lua")
                        
        
addscript(2537430692, "JengaWinGameFly", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/JengaWinGameFly.lua")
                        
        
addscript(321411488422704793545534823654700266321411488401160789089, "FlagWarsHitboxChams", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FlagWarsHitboxChams.lua")
                        
        
addscript(6516141723, "DOORSAutoSkipLvlInstantInteract", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORSAutoSkipLvlInstantInteract.lua")
                        
                        
addscriptexist(8737602449, "PLSDONATEFlyWalkspeed", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PLSDONATEFlyWalkspeed.lua")
        
addscript(4913581664, "CartRideIntoRditeAutoClick", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CartRideIntoRditeAutoClick.lua")
                        
        
addscript(6610021055, "NoobArmyTycoonInfiniteGems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NoobArmyTycoonInfiniteGems.lua")
                        
                        
addscriptexist(9648883891, "FestivalTycoonInfiniteCashGetFreeItems", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FestivalTycoonInfiniteCashGetFreeItems.lua")
        
addscript(7138009149, "PHIGHTINGInfiniteCash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PHIGHTINGInfiniteCash.lua")
                        
        
addscript(9742783208, "RaiseaYippeeAutoClickAutoFood", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RaiseaYippeeAutoClickAutoFood.lua")
                        
        
addscript(8891045283160, "FindTheBaconsGetAllBacons", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FindTheBaconsGetAllBacons.lua")
                        
        
addscript(62845830302, "PetSimulatorXAutoFarmAutoCollect", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmAutoCollect.lua")
                        
                        
addscriptexist(6284583030, "PetSimulatorXGUIAutoFarmChestFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXGUIAutoFarmChestFarmMore.lua")
                        
addscriptexist(62845830302, "PetSimulatorXAutoFarmAutoopenEggAutoFarmChest", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmAutoopenEggAutoFarmChest.lua")
                        
addscriptexist(62845830302, "PetSimulatorXAutoHatchAutoFarm", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoHatchAutoFarm.lua")
        
addscript(628458303027167864814887836057846059628458303002316994223, "PetSimulatorXAutoFarmAutoEggs", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmAutoEggs.lua")
                        
                        
addscriptexist(62845830302, "PetSimulatorXAutoFarmAutoHatch", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmAutoHatch.lua")
                        
addscriptexist(62845830302, "PetSimulatorXAutoFarmAutoEggWalkSpeed", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmAutoEggWalkSpeed.lua")
                        
addscriptexist(6284583030, "PetSimulatorXMasteryAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXMasteryAutoFarm.lua")
                        
addscriptexist(6284583030, "PetSimulatorXBanBypass", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXBanBypass.lua")
                        
addscriptexist(6284583030, "PetSimulatorXAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarm.lua")
        
addscript(62845830306, "PetSimulatorXAutoFarmAutoEggOpeningMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmAutoEggOpeningMore.lua")
                        
                        
addscriptexist(62845830306, "PetSimulatorXNewFarmingGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXNewFarmingGUI.lua")
                        
addscriptexist(6284583030, "PetSimulatorXAntiSteal", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAntiSteal.lua")
                        
addscriptexist(6284583030, "PetSimulatorXMasteryFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXMasteryFarm.lua")
        
addscript(62845830308, "PetSimulatorXxToolsv13", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXxToolsv13.lua")
                        
                        
addscriptexist(62845830308, "PetSimulatorXGemFarmChestFarmAutoFarm", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXGemFarmChestFarmAutoFarm.lua")
                        
addscriptexist(62845830308, "PetSimulatorXMiniFarmingGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXMiniFarmingGUI.lua")
                        
addscriptexist(6284583030, "PetSimulatorXGhostPetXGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXGhostPetXGUI.lua")
                        
addscriptexist(6284583030, "PetSimulatorXFastAutoEnchant", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXFastAutoEnchant.lua")
                        
addscriptexist(62845830302, "PetSimulatorXCrash", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXCrash.lua")
                        
addscriptexist(62845830302, "PetSimulatorXAutoEggsAutoFarmSendAllPets", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoEggsAutoFarmSendAllPets.lua")
                        
addscriptexist(6284583030, "PetSimulatorXNEWServerCrasher", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXNEWServerCrasher.lua")
                        
addscriptexist(6284583030, "PetSimulatorXUpdateGui", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXUpdateGui.lua")
        
addscript(62845830303, "PetSimulatorXAutofarmTroll", "rbxscript", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutofarmTroll.lua")
                        
                        
addscriptexist(6284583030, "PetSimulatorXAutoFarmAutoOpenEggStatTacker", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmAutoOpenEggStatTacker.lua")
                        
addscriptexist(62845830303, "PetSimulatorXEggOfManyGiftsAutoBuy", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXEggOfManyGiftsAutoBuy.lua")
                        
addscriptexist(62845830303, "PetSimulatorXAutoFarmAutoBuyeggTp", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmAutoBuyeggTp.lua")
                        
addscriptexist(62845830303, "PetSimulatorXUnlockGamepassAutoFarmAntiLag", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXUnlockGamepassAutoFarmAntiLag.lua")
                        
addscriptexist(6284583030, "PetSimulatorXNewFarmingGUIHoverboardMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXNewFarmingGUIHoverboardMore.lua")
                        
addscriptexist(6284583030, "PetSimulatorXUPDATEBESTFARM", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXUPDATEBESTFARM.lua")
                        
addscriptexist(6284583030, "PetSimulatorXEasyWithdrawDepositToBank", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXEasyWithdrawDepositToBank.lua")
                        
addscriptexist(6284583030, "PetSimulatorXDupeGemDupe", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXDupeGemDupe.lua")
                        
addscriptexist(6284583030, "PetSimulatorXDupeGemsPets", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXDupeGemsPets.lua")
                        
addscriptexist(62845830303, "PetSimulatorXNEWGUIAutoFarmAutoOpenAllGamepassesMORE", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXNEWGUIAutoFarmAutoOpenAllGamepassesMORE.lua")
                        
addscriptexist(6284583030, "PetSimulatorXHATCHANYEGGPETFake", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXHATCHANYEGGPETFake.lua")
                        
addscriptexist(6284583030, "PetSimulatorXAUTOFARMTPANTIAFKBUYEGG", "wsufy.lnd", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAUTOFARMTPANTIAFKBUYEGG.lua")
        
addscript(628458303027200444501514553748, "PetSimulatorXAutoFarmTeleport", "Acc", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PetSimulatorXAutoFarmTeleport.lua")
                        
        
addscript(6755746130, "FruitJuiceTycoonRefreshedAutoFarmAutoSellAutoBuy", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FruitJuiceTycoonRefreshedAutoFarmAutoSellAutoBuy.lua")
                        
        
addscript(83575109702, "AnimePunchingSimulatorAutoTapAutoRebirthAutoOpenEgg", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimePunchingSimulatorAutoTapAutoRebirthAutoOpenEgg.lua")
                        
        
addscript(8884433153, "CollectAllPetsAutoFarmAutoCollectAutoClaimRewards", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CollectAllPetsAutoFarmAutoCollectAutoClaimRewards.lua")
                        
                        
addscriptexist(8884433153, "CollectAllPetsAutoClaimDailyEggAutoFarmTPEgg", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CollectAllPetsAutoClaimDailyEggAutoFarmTPEgg.lua")
                        
addscriptexist(8884433153, "CollectAllPetsAutoEggsAutoFarmAutoCollect", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CollectAllPetsAutoEggsAutoFarmAutoCollect.lua")
                        
addscriptexist(8884433153, "CollectAllPetsGUIAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CollectAllPetsGUIAutoFarm.lua")
        
addscript(88844331532, "CollectAllPetsAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CollectAllPetsAutoFarm.lua")
                        
                        
addscriptexist(8884433153, "CollectAllPetsAutoQuestAutoCollectCoinsAutobuypets", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CollectAllPetsAutoQuestAutoCollectCoinsAutobuypets.lua")
        
addscript(85543783372, "WEAPONFIGHTINGSIMULATORAutoFarmCollectRewards", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WEAPONFIGHTINGSIMULATORAutoFarmCollectRewards.lua")
                        
        
addscript(85543783373, "WeaponFightingSimulatorGUIStartFarmSelectAreaToFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeaponFightingSimulatorGUIStartFarmSelectAreaToFarmMore.lua")
                        
                        
addscriptexist(85543783373, "WeaponFightingSimulatorAutoFarmAllAreasMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeaponFightingSimulatorAutoFarmAllAreasMore.lua")
                        
addscriptexist(85543783372, "WeaponFightingSimulatorFreeGamePassesAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeaponFightingSimulatorFreeGamePassesAutoFarmMore.lua")
        
addscript(8554378337912, "WeaponFightingSimulatorAutoBossAutoGambleAutoOpenBossChest", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeaponFightingSimulatorAutoBossAutoGambleAutoOpenBossChest.lua")
                        
                        
addscriptexist(8554378337, "WeaponFightingSimulatorStartFarmCollectRewardsAntiAfk", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeaponFightingSimulatorStartFarmCollectRewardsAntiAfk.lua")
                        
addscriptexist(85543783372, "WeaponFightingSimulatorGUIFarmingBossGamepass", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeaponFightingSimulatorGUIFarmingBossGamepass.lua")
                        
addscriptexist(85543783372, "WeaponFightingSimulatorGUIAutoFarmAutoCollectMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeaponFightingSimulatorGUIAutoFarmAutoCollectMore.lua")
        
addscript(855437833711, "WeaponFightingSimulatorGUIAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeaponFightingSimulatorGUIAutoFarm.lua")
                        
                        
addscriptexist(855437833711, "WeaponFightingSimulatorAutoFarmCollectRewardsSelectArea", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WeaponFightingSimulatorAutoFarmCollectRewardsSelectArea.lua")
                        
addscriptexist(8750997647, "TappingLegendsXAutoRebirthAutoTapAutoEggs", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegendsXAutoRebirthAutoTapAutoEggs.lua")
                        
addscriptexist(87509976474, "TappingLegendsXGUIAutoClickAutoRebirthMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegendsXGUIAutoClickAutoRebirthMore.lua")
        
addscript(8750997647315, "TappingLegendsXAutoClickAutoUpgrade", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegendsXAutoClickAutoUpgrade.lua")
                        
                        
addscriptexist(8750997647315, "TappingLegendsXAutoEggsAutoRebirth", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegendsXAutoEggsAutoRebirth.lua")
        
addscript(513059837715, "TappingLegendsXAutoFarmsAutoHatchAutoRebirth", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegendsXAutoFarmsAutoHatchAutoRebirth.lua")
                        
                        
addscriptexist(87509976473, "TappingLegendsXAutoClickAutoRebirth", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegendsXAutoClickAutoRebirth.lua")
                        
addscriptexist(8750997647315, "TappingLegendsXAutoClickerAutorebirthAutoEgg", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegendsXAutoClickerAutorebirthAutoEgg.lua")
                        
addscriptexist(8750997647, "TappingLegendsXAutoTapAutoRebirthAutoclicker", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegendsXAutoTapAutoRebirthAutoclicker.lua")
        
addscript(8750997647215, "TappingLegendsXUPDATEDAUTOFARMGUI", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegendsXUPDATEDAUTOFARMGUI.lua")
                        
        
addscript(8750997647152, "TappingLegendsXGUIAutoTapAutoRebirthMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TappingLegendsXGUIAutoTapAutoRebirthMore.lua")
                        
        
addscript(83041918303, "AnimeAdventuresAutoChallengeAutoInfMode", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeAdventuresAutoChallengeAutoInfMode.lua")
                        
                        
addscriptexist(8304191830, "AnimeAdventuresGUIFullAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeAdventuresGUIFullAutoFarmMore.lua")
                        
addscriptexist(8304191830, "AnimeAdventuresAutoFarm", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeAdventuresAutoFarm.lua")
                        
addscriptexist(8304191830, "AnimeAdventuresFullAutoFarmAutoUpgradeSelectWorld", "Qalnik", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeAdventuresFullAutoFarmAutoUpgradeSelectWorld.lua")
                        
addscriptexist(8304191830, "AnimeAdventuresAutoAbilytiAutoUpgrade", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeAdventuresAutoAbilytiAutoUpgrade.lua")
                        
addscriptexist(83041918303, "AnimeAdventuresAutoChallengeAutoInfMode", "astrofile", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeAdventuresAutoChallengeAutoInfMode.lua3.lua")
                        
addscriptexist(8304191830, "AnimeAdventuresGUIFullAutoFarmMore", "Terni", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AnimeAdventuresGUIFullAutoFarmMore.lua3.lua")