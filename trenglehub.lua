
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
function addscriptuniversal(title,author,scriptlink)
    
    _G.generalscriptssection:NewButton(title, author, function()
        loadstring(game:HttpGet(scriptlink))()
        end)
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
PlayerSection:NewSlider("Gravity", "Changes the gravity", 250, 0, function(v)
    game.Workspace.Gravity = v
end)




generalscripts = Window:NewTab("General")
_G.generalscripts = generalscripts
generalscriptssection = generalscripts:NewSection("---General/Universal Scripts---")
_G.generalscriptssection = generalscriptssection
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
KeybindsSection:NewKeybind("Toggle UI", "Press T To toggle the Hyperlib UI (Click to change Keybind)", Enum.KeyCode.T, function()
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


if game.PlaceId  == 7047488135 then
    local exclusivemain = Window:NewTab("Exclusive")
    exscript = exclusivemain:NewSection("Autofarms")
    exscript:NewButton("Auto Collect Orbs", "Auto Collects all Orbs; get speed SUPER FAST", function()
        
        local playerHead = game.Players.LocalPlayer.Character.Head
        while true do
            for i, v in pairs(game:GetService("Workspace").OrbSpawns:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent  then
                    firetouchinterest(playerHead, v.Parent, 0)
                    wait(0.01)
                    firetouchinterest(playerHead, v.Parent, 1)
                end
                
                
            end
        end  
    end)
    exscript:NewButton("Auto Collect Rings", "Auto Collects all Rings; Can also get you speed",function()
        local playerHead = game.Players.LocalPlayer.Character.Head
        while true do
            for i, v in pairs(game:GetService("Workspace").OrbSpawns:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent  then
                    firetouchinterest(playerHead, v.Parent, 0)
                    wait(0.01)
                    firetouchinterest(playerHead, v.Parent, 1)
                end
                
                
            end
        end  
    end)
    exscript:NewButton("Auto Clicker", "Just a simple auto clicker", function()
        while true do
            game:GetService("ReplicatedStorage").Remotes.AddSpeed:FireServer()
            wait(0.01)
        end
    end)
    rebirthex = exclusivemain:NewSection("Rebirth")
    rebirthex:NewButton("Auto Rebirth", "Automatically rebirths you", function(state)
        while true do
            
            game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
            wait(0.1)
            
        end
    end)
end


addscriptexist(537413528, "Build A Boat Auto Farm Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Build%20A%20Boat%20Auto%20Farm%20Script.lua")
addscript(6741970382,"Scripts for Current Game", "new script for this game", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/new%20script%20for%20this%20game.lua")
addscript(1069951594,"Scripts for Current Game", "Fall of Hell - AutoWin, GodMode, FOV Changer", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Fall%20of%20Hell%20%20AutoWin%20GodMode%20FOV%20Changer.lua")
addscriptexist(2788229376, "OhioMode V2, The Best Da Hood Script.", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OhioMode%20V%20The%20Best%20Da%20Hood%20Script.lua")
addscript(6160139406,"Scripts for Current Game", "The Underground War 3 Flag Steal", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/The%20Underground%20War%20%20Flag%20Steal.lua")
addscript(5076734934,"Scripts for Current Game", "Rooms Script | Working ✅", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rooms%20Script%20%20Working%20.lua")
addscript(10982284336,"Scripts for Current Game", "Auto Farm Basic / OXYGEN", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Auto%20Farm%20Basic%20%20OXYGEN.lua")
addscript(11334163219,"Scripts for Current Game", "Anime Power Simulator - V3.0", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Anime%20Power%20Simulator%20%20V.lua")
addscript(4759640416,"Scripts for Current Game", "The Underground War 2 Flag TP", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/The%20Underground%20War%20%20Flag%20TP.lua")
addscript(5902977746,"Scripts for Current Game", "Ultimate Tower Defense: AutoFish, Teleports & More", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ultimate%20Tower%20Defense%20AutoFish%20Teleports%20%20More.lua")
addscriptexist(2788229376, "(DH) Zinc Hub V2.9.5 [OP]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DH%20Zinc%20Hub%20V%20OP.lua")
addscript(1962086868,"Scripts for Current Game", "Tower Of Hell: AutoWin, Get All Items, GodMode", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Tower%20Of%20Hell%20AutoWin%20Get%20All%20Items%20GodMode.lua")
addscript(5293755937,"Scripts for Current Game", "Speed Run Simulator GUI", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Speed%20Run%20Simulator%20GUI.lua")
addscript(11345435986,"Scripts for Current Game", "Chainsaw Man: Devil's Heart | Auto Farm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Chainsaw%20Man%20Devils%20Heart%20%20Auto%20Farm.lua")
addscriptexist(537413528, "Build A Boat Script[New]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Build%20A%20Boat%20ScriptNew.lua")
addscript(6516141723,"Scripts for Current Game", "Roblox Doors Custom Entity Spawner V2", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Roblox%20Doors%20Custom%20Entity%20Spawner%20V.lua")
addscript(10726371567,"Scripts for Current Game", "Auto Collect Card ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Auto%20Collect%20Card%20.lua")
addscript(292439477,"Scripts for Current Game", "Phantom Forces | Third Person [OPEN SOURCE]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20%20Third%20Person%20OPEN%20SOURCE.lua")
addscriptexist(292439477, "Phantom Forces | Gun Mods [OPEN SOURCE]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20%20Gun%20Mods%20OPEN%20SOURCE.lua")
addscript(11989217843,"Scripts for Current Game", "COLLECT CARD / OXYGEN", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/COLLECT%20CARD%20%20OXYGEN.lua")
addscriptexist(2788229376, "[OP] DH Zinc Hub v2.8 [NEW FEATURES & LOTS MORE]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20DH%20Zinc%20Hub%20v%20NEW%20FEATURES%20%20LOTS%20MORE.lua")
addscript(7732789524,"Scripts for Current Game", "Auto Kick All Ball", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Auto%20Kick%20All%20Ball.lua")
addscript(6678877691,"Scripts for Current Game", "ZoWare (Script) (OP) (Constantly Bypassed)", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZoWare%20Script%20OP%20Constantly%20Bypassed.lua")
addscript(4483381587,"Scripts for Current Game", "Remote Spy | Simple Spy V3", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Remote%20Spy%20%20Simple%20Spy%20V.lua")
addscriptexist(4483381587, "Webhook Spammer Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Webhook%20Spammer%20Script.lua")
addscriptexist(606849621, "Jailbreak - No Wait, Inf Nitro, No Shoot Delay & More", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Jailbreak%20%20No%20Wait%20Inf%20Nitro%20No%20Shoot%20Delay%20%20More.lua")
addscript(11939099110,"Scripts for Current Game", "Ski-Race OP Autofarm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SkiRace%20OP%20Autofarm.lua")
addscriptexist(2753915549, "Blox Fruits SCRIPT Pc AutoFarm Level,Devil Fruit,Gun Mastery,More FREE", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruits%20SCRIPT%20Pc%20AutoFarm%20LevelDevil%20FruitGun%20MasteryMore%20FREE.lua")
addscript(2474168535,"Scripts for Current Game", "westbound.pro [V1.4]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/westboundpro%20V.lua")
addscript(4616652839,"Scripts for Current Game", "NEW Shindo Life INFINITE Jump Script ! ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NEW%20Shindo%20Life%20INFINITE%20Jump%20Script%20%20.lua")
addscriptexist(292439477, "Phantom Forces | Chams ESP", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20%20Chams%20ESP.lua")
addscriptexist(292439477, "Phantom Forces Aimbot, ESP And Name ESP Working 15/02/2023", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20Aimbot%20ESP%20And%20Name%20ESP%20Working%20.lua")
addscript(12197250120,"Scripts for Current Game", "+1 World Autofarm and stuff", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20World%20Autofarm%20and%20stuff.lua")
addscript(6075270490,"Scripts for Current Game", "Teamwork Puzzles Autofarm/Autocomplete", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Teamwork%20Puzzles%20AutofarmAutocomplete.lua")
addscriptexist(537413528, "OP Build A Boat For Treasure Autofarm Script V.G Hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20Build%20A%20Boat%20For%20Treasure%20Autofarm%20Script%20VG%20Hub.lua")
addscriptexist(11345435986, "Chainsaw Man: Devil's Heart | Heart Farm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Chainsaw%20Man%20Devils%20Heart%20%20Heart%20Farm.lua")
addscript(3351674303,"Scripts for Current Game", "Pearl・Driving Empire", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PearlDriving%20Empire.lua")
addscriptexist(6284583030, "Pet Simulator X Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pet%20Simulator%20X%20Script.lua")
addscript(7991339063,"Scripts for Current Game", "Rainbow Friends Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rainbow%20Friends%20Script.lua")
addscript(11542692507,"Scripts for Current Game", "Mendopt Me Auto Quest", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Mendopt%20Me%20Auto%20Quest.lua")
addscript(920587237,"Scripts for Current Game", "Get all NFR and MFR pets | Adopt Me", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Get%20all%20NFR%20and%20MFR%20pets%20%20Adopt%20Me.lua")
addscript(2990100290,"Scripts for Current Game", "RPG Simulator (6FootHub)", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RPG%20Simulator%20FootHub.lua")
addscript(185655149,"Scripts for Current Game", "Bloxburg Pizza Delivery Auto Farm (Hair stylist and more) (Working anti-ban)", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Bloxburg%20Pizza%20Delivery%20Auto%20Farm%20Hair%20stylist%20and%20more%20Working%20antiban.lua")
addscript(142823291,"Scripts for Current Game", "Kidachi - Murder Mystery 2 Valentine Update", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Kidachi%20%20Murder%20Mystery%20%20Valentine%20Update.lua")
addscript(54865335,"Scripts for Current Game", "FREE Ultimate Driving AUTOFARM", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FREE%20Ultimate%20Driving%20AUTOFARM.lua")
addscript(9846056789,"Scripts for Current Game", "Diamond in Cups ESP", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Diamond%20in%20Cups%20ESP.lua")
addscript(7499189111,"Scripts for Current Game", "Encounters Fighting OP Kill All Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Encounters%20Fighting%20OP%20Kill%20All%20Script.lua")
addscript(4508456371,"Scripts for Current Game", "Shortest Answer Wins OP Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Shortest%20Answer%20Wins%20OP%20Script.lua")
addscript(2665326799,"Scripts for Current Game", "Find The Button OP Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Find%20The%20Button%20OP%20Script.lua")
addscript(8146731988,"Scripts for Current Game", "Ultra Power Tycoon OP Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ultra%20Power%20Tycoon%20OP%20Script.lua")
addscriptexist(7991339063, "Rainbow friends OP Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rainbow%20friends%20OP%20Script.lua")
addscriptexist(2753915549, " Blox Fruits Void Hub V2 Teleport Mirage And Gear", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Blox%20Fruits%20Void%20Hub%20V%20Teleport%20Mirage%20And%20Gear.lua")
addscript(5602055394,"Scripts for Current Game", "HOOD MODDED SCRIPT", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HOOD%20MODDED%20SCRIPT.lua")
addscript(8130299583,"Scripts for Current Game", "trident survival", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/trident%20survival.lua")
addscriptexist(2788229376, "DA HOOD ABYS FREE INTERNAL SCRIPT", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DA%20HOOD%20ABYS%20FREE%20INTERNAL%20SCRIPT.lua")
addscriptexist(2788229376, "FREE DA HOOD SCRIPT UI PARADOX", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FREE%20DA%20HOOD%20SCRIPT%20UI%20PARADOX.lua")
addscript(301549746,"Scripts for Current Game", "Counter Blox Godmode", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Counter%20Blox%20Godmode.lua")
addscriptexist(301549746, "Counterblox Destroy Any Instance Exploit", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Counterblox%20Destroy%20Any%20Instance%20Exploit.lua")
addscriptexist(1537690962, "BioHazard Bee Swarm Simulator OP Insane Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BioHazard%20Bee%20Swarm%20Simulator%20OP%20Insane%20Script.lua")
addscript(11912525919,"Scripts for Current Game", "every second you get 1+... ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/every%20second%20you%20get%20%20.lua")
addscript(8246874626,"Scripts for Current Game", " Dragon Soul Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Dragon%20Soul%20Script.lua")
addscript(11746859781,"Scripts for Current Game", " Bubble Gum Clicker Script ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Bubble%20Gum%20Clicker%20Script%20.lua")
addscriptexist(2809202155, "NEW Your Bizarre Adventure Click To Teleport Script ! ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NEW%20Your%20Bizarre%20Adventure%20Click%20To%20Teleport%20Script%20%20.lua")
addscriptexist(4616652839, "NEW Shindo Life Teleport Locations Script ( Just For Ember Village ) ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NEW%20Shindo%20Life%20Teleport%20Locations%20Script%20%20Just%20For%20Ember%20Village%20%20.lua")
addscript(7167649916,"Scripts for Current Game", "Trophy Script Hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Trophy%20Script%20Hub.lua")
addscript(335760407,"Scripts for Current Game", "best free gui for the game lol", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/best%20free%20gui%20for%20the%20game%20lol.lua")
addscript(6777872443,"Scripts for Current Game", "Synergy Hub Re-Written", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Synergy%20Hub%20ReWritten.lua")
addscriptexist(2753915549, "Blox Fruits Void Hub Transform Race V4 (UPDATED)", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruits%20Void%20Hub%20Transform%20Race%20V%20UPDATED.lua")
addscriptexist(6284583030, "ExtremeHUB - 25 Scripts", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ExtremeHUB%20%20%20Scripts.lua")
addscript(10704789056,"Scripts for Current Game", "OP Drive World GUI [ Scourge Hub ]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20Drive%20World%20GUI%20%20Scourge%20Hub%20.lua")
addscript(286090429,"Scripts for Current Game", "⭐ Scourge Hub - Keyless - 20 Games - New", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Scourge%20Hub%20%20Keyless%20%20%20Games%20%20New.lua")
addscript(71315343,"Scripts for Current Game", "Dragon Ball Rage Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Dragon%20Ball%20Rage%20Script.lua")
addscript(8567596064,"Scripts for Current Game", " Anime Showdown Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Anime%20Showdown%20Script.lua")
addscriptexist(10704789056, "drive world op autofarm script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/drive%20world%20op%20autofarm%20script.lua")
addscriptexist(6777872443, "Pixel Piece (FULL AUTOFARM)", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pixel%20Piece%20FULL%20AUTOFARM.lua")
addscriptexist(286090429, "DevHub NEW LOADSTRING", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DevHub%20NEW%20LOADSTRING.lua")
addscript(8908228901,"Scripts for Current Game", "Sharkbite 2 - OP Free Boats", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Sharkbite%20%20%20OP%20Free%20Boats.lua")
addscriptexist(155615604, "Prison Life Script Library", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Prison%20Life%20Script%20Library.lua")
addscript(10945472407,"Scripts for Current Game", "Strong Muscle Simulator GUI", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Strong%20Muscle%20Simulator%20GUI.lua")
addscriptexist(6284583030, "OP Roblox Pet Simulator X Autofarm And Dupe Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20Roblox%20Pet%20Simulator%20X%20Autofarm%20And%20Dupe%20Script.lua")
addscript(3652625463,"Scripts for Current Game", "MOONWARE V2 | 3+ Games", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MOONWARE%20V%20%20%20Games.lua")
addscript(9498006165,"Scripts for Current Game", "King Hub | Tapping Simulator! 🐾", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/King%20Hub%20%20Tapping%20Simulator%20.lua")
addscript(11620947043,"Scripts for Current Game", "King Hub | Flappy Clicker", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/King%20Hub%20%20Flappy%20Clicker.lua")
addscript(6512923934,"Scripts for Current Game", "Ultra Clickers Simulator OP Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ultra%20Clickers%20Simulator%20OP%20Script.lua")
addscript(8054462345,"Scripts for Current Game", "[ Part/Zombie/Box esp, Gun cheats. Speed hacks, Instant reload and more! ]Michael's Zombies", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20PartZombieBox%20esp%20Gun%20cheats%20Speed%20hacks%20Instant%20reload%20and%20more%20Michaels%20Zombies.lua")
addscript(2866967438,"Scripts for Current Game", "Fishing Simulator - OP Autofarm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Fishing%20Simulator%20%20OP%20Autofarm.lua")
addscript(4913581664,"Scripts for Current Game", "New Hub for Cart Ride Into Rdite", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/New%20Hub%20for%20Cart%20Ride%20Into%20Rdite.lua")
addscript(10836055001,"Scripts for Current Game", "Monster Hunt Simulator Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Monster%20Hunt%20Simulator%20Script.lua")
addscript(9848789324,"Scripts for Current Game", "InfernoHub - Ragdoll Engine", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/InfernoHub%20%20Ragdoll%20Engine.lua")
addscriptexist(4483381587, "UNIVERSAL KELREPL KEY SYSTEM BYPASS", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UNIVERSAL%20KELREPL%20KEY%20SYSTEM%20BYPASS.lua")
addscriptexist(10704789056, "Drive World FREE AUTOFARM", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Drive%20World%20FREE%20AUTOFARM.lua")
addscript(9984770240,"Scripts for Current Game", "obby but ur a ball script hub stuff", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/obby%20but%20ur%20a%20ball%20script%20hub%20stuff.lua")
addscriptexist(9984770240, "Obby but you're a ball GUI | Skip level | finish game", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Obby%20but%20youre%20a%20ball%20GUI%20%20Skip%20level%20%20finish%20game.lua")
addscript(11929558254,"Scripts for Current Game", "Every Second You Get +1... Autofarm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Every%20Second%20You%20Get%20%20Autofarm.lua")
addscriptexist(4483381587, "Rizzler (Ultimate Rizz)", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rizzler%20Ultimate%20Rizz.lua")
addscriptexist(9984770240, "Obby but you're a ball skip level(not gui)", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Obby%20but%20youre%20a%20ball%20skip%20levelnot%20gui.lua")
addscript(11547613362,"Scripts for Current Game", "King Hub | Anime Fly Race Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/King%20Hub%20%20Anime%20Fly%20Race%20Script.lua")
addscriptexist(3351674303, "FREE Driving Empire Autofarm ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FREE%20Driving%20Empire%20Autofarm%20.lua")
addscriptexist(11334163219, "Anime Power Simulator Script - NEW ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Anime%20Power%20Simulator%20Script%20%20NEW%20.lua")
addscriptexist(2753915549, "Kidachi ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎‎ ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Kidachi%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20.lua")
addscriptexist(3351674303, "AeroHub | #1 Hub for Car Games", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AeroHub%20%20%20Hub%20for%20Car%20Games.lua")
addscriptexist(286090429, "OP Arsenal Kill All and Silent Aim Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20Arsenal%20Kill%20All%20and%20Silent%20Aim%20Script.lua")
addscript(9992339729,"Scripts for Current Game", "Longest Answer Wins AutoFarm AutoWin", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Longest%20Answer%20Wins%20AutoFarm%20AutoWin.lua")
addscript(7305309231,"Scripts for Current Game", "FREE Taxi Boss Autofarm & More!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FREE%20Taxi%20Boss%20Autofarm%20%20More.lua")
addscript(11156779721,"Scripts for Current Game", "AUTO PICKUP, MINE AURA, CHOP AURA", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AUTO%20PICKUP%20MINE%20AURA%20CHOP%20AURA.lua")
addscript(1554960397,"Scripts for Current Game", "FREE Car Dealership Tycoon Autofarm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FREE%20Car%20Dealership%20Tycoon%20Autofarm.lua")
addscriptexist(3652625463, "Lifting Simulator [Binary Hub]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Lifting%20Simulator%20Binary%20Hub.lua")
addscript(891852901,"Scripts for Current Game", "Autofarm and Car Manipulation for GREENVILLE ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Autofarm%20and%20Car%20Manipulation%20for%20GREENVILLE%20.lua")
addscript(11729688377,"Scripts for Current Game", "Booga Auto Farm, Kill Aura, Invisibility ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Booga%20Auto%20Farm%20Kill%20Aura%20Invisibility%20.lua")
addscript(815405518,"Scripts for Current Game", "The Floor Is Lava INSTANT WIN", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/The%20Floor%20Is%20Lava%20INSTANT%20WIN.lua")
addscript(7346416636,"Scripts for Current Game", "Cool features script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Cool%20features%20script.lua")
addscript(6278885452,"Scripts for Current Game", "Strong Katana Simulator Instant Cash", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Strong%20Katana%20Simulator%20Instant%20Cash.lua")
addscriptexist(301549746, "[SEMI PATCHED] Counter Blox | Gun Mods", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SEMI%20PATCHED%20Counter%20Blox%20%20Gun%20Mods.lua")
addscript(4520619420,"Scripts for Current Game", "AeroHub | FREE HUB FOR Leeuwarden, Katana Simulator, Zombie Merge Tycoon And Much More!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AeroHub%20%20FREE%20HUB%20FOR%20Leeuwarden%20Katana%20Simulator%20Zombie%20Merge%20Tycoon%20And%20Much%20More.lua")
addscriptexist(4616652839, "Project Nexus+++++++", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Project%20Nexus.lua")
addscriptexist(815405518, "The The Floor Is LAVA!🔥", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/The%20The%20Floor%20Is%20LAVA.lua")
addscript(11196588443,"Scripts for Current Game", "Autofarm for ZOMBIE MERGE TYCOON", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Autofarm%20for%20ZOMBIE%20MERGE%20TYCOON.lua")
addscript(11063612131,"Scripts for Current Game", "Every Second You Get 1 Jump Power (DIFFERENT GAME)", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Every%20Second%20You%20Get%20%20Jump%20Power%20DIFFERENT%20GAME.lua")
addscript(314927855,"Scripts for Current Game", "Some reach stuff new", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Some%20reach%20stuff%20new.lua")
addscript(8438158667,"Scripts for Current Game", "Hub with some features", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Hub%20with%20some%20features.lua")
addscript(4566572536,"Scripts for Current Game", "AeroHub | FREE HUB FOR Vehicle-Legends, Katana Simulator, Zombie Merge Tycoon and much more!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AeroHub%20%20FREE%20HUB%20FOR%20VehicleLegends%20Katana%20Simulator%20Zombie%20Merge%20Tycoon%20and%20much%20more.lua")
addscript(12996397,"Scripts for Current Game", "Mega Fun Obby (Auto-Complete Stages)", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Mega%20Fun%20Obby%20AutoComplete%20Stages.lua")