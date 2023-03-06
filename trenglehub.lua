_G.gamecount = 0
_G.scriptcount = 0
lastupdate = "GMT +1: 06.03.2023 14:44:06"
--^^^dont touch ^^^
function addscript(Place,Gamename,title,author,scriptlink)
    _G.gamecount = _G.gamecount + 1
    _G.scriptcount = _G.scriptcount + 1
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
    _G.scriptcount = _G.scriptcount + 1
    if game.PlaceId == Place then
        _G.script:NewButton(title, author, function()
            loadstring(game:HttpGet(scriptlink))()
            end)
    end
        
end
function addscriptuniversal(title,author,scriptlink)
    _G.scriptcount = _G.scriptcount + 1
    _G.generalscriptssection:NewButton(title, author, function()
        loadstring(game:HttpGet(scriptlink))()
        end)
end
function addhub(title,author,scriptlink)
    _G.scriptcount = _G.scriptcount + 1
    _G.gamehubsection:NewButton(title, author, function()
        loadstring(game:HttpGet(scriptlink))()
        end)
end
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Library/kavo-ui.lua"))()
_G.Window = Library.CreateLib("Hyperlib", "BloodTheme")
Window = _G.Window
Statstab = Window:NewTab("Status")
local StatusSection = Statstab:NewSection("---Last Update---")
StatusSection:NewLabel(lastupdate)
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
_G.gamehubsection = gamehubsection
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



function bigRedText(text)
    game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
        Text = text,
        Color = Color3.new(1, 0, 0),
        Font = Enum.Font.GothamBold,
        FontSize = Enum.FontSize.Size48,
    })
end


-- Create the clearChat() function
function clearChat()
    local clearMessage = ""
    for i = 1, 20 do
        clearMessage = clearMessage .. " "
    end
    
    for i = 1, 30 do
        game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
            Text = clearMessage,
            Color = Color3.new(1, 1, 1), -- set the color to white to make the messages invisible
            Font = Enum.Font.SourceSans,
            FontSize = Enum.FontSize.Size18,
        })
    end
end

function bigBlueItalicText(text)
    game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
        Text = text,
        Color = Color3.fromRGB(0, 162, 255), -- set the color to blue
        Font = Enum.Font.SourceSansItalic,
        TextTransparency = 0,
        TextStrokeTransparency = 0,
        TextScaled = false,
        TextWrapped = false,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        TextStrokeColor3 = Color3.new(0, 0, 0),
        FontSize = Enum.FontSize.Size48,
    })
end

function getLocalPlayerName()
    local player = game:GetService("Players").LocalPlayer
    return player.Name
end
function characterCount(str)
    return #str
end
function addDashes(num)
    local result = ""
    for i = 1, num do
        result = result .. "-"
    end
    return result
end
function bigGreenItalicText(text)
    game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
        Text = text,
        Color = Color3.fromRGB(0, 255, 0), -- set the color to blue
        Font = Enum.Font.SourceSansItalic,
        TextTransparency = 0,
        TextStrokeTransparency = 0,
        TextScaled = false,
        TextWrapped = false,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        TextStrokeColor3 = Color3.new(0, 0, 0),
        FontSize = Enum.FontSize.Size48,
    })
end
function rprint(text, color)
    rconsoleprint("\n".. text, color)
end

local usercustom = "Welcome to Hyperlib," .. " " .. getLocalPlayerName() .. "!"
local customlen = characterCount(usercustom)
clearChat()
bigRedText(usercustom)
bigRedText(addDashes(customlen))
bigBlueItalicText("Script developed by Fantemil")
bigRedText(addDashes(customlen))
bigBlueItalicText("Check out the Project on Github:")
bigGreenItalicText("https://github.com/Fantemil/Hyperlib")
bigRedText(addDashes(customlen))


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


addscript(286090429,"Scripts for Current Game", "Lux - Arsenal AutoWin and More!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Lux%20%20Arsenal%20AutoWin%20and%20More.lua")
addscriptexist(6284583030, "Pet Simulator X Created By BloodBath#9170", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pet%20Simulator%20X%20Created%20By%20BloodBath.lua")
addscript(12192552089,"Scripts for Current Game", "[RELEASE] Fruit Warriors", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RELEASE%20Fruit%20Warriors.lua")
addscript(9992339729,"Scripts for Current Game", "AUTO ANSWER FOR LONGEST / CLOSEST ANSWER WINS", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AUTO%20ANSWER%20FOR%20LONGEST%20%20CLOSEST%20ANSWER%20WINS.lua")
addscriptuniversal("Kya-Ware | Making games better to play!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KyaWare%20%20Making%20games%20better%20to%20play.lua")
addscriptuniversal("17F7Os Anti Http Spy", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FOs%20Anti%20Http%20Spy.lua")
addscriptuniversal("Team Skeet UI Library - for script devs", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Team%20Skeet%20UI%20Library%20%20for%20script%20devs.lua")
addscript(12480945489,"Scripts for Current Game", "Ice Cream Clicker Script Auto Lick, Auto Sell, ETC", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ice%20Cream%20Clicker%20Script%20Auto%20Lick%20Auto%20Sell%20ETC.lua")
addscriptuniversal("Faster Tween Script [NEW]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Faster%20Tween%20Script%20NEW.lua")
addscript(12336036424,"Scripts for Current Game", "Slasher Blade: Kill Aura", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Slasher%20Blade%20Kill%20Aura.lua")
addscriptexist(6284583030, "RoFast, Pet Simulator X", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoFast%20Pet%20Simulator%20X.lua")
addscriptuniversal("[NEW] Teleport / Tween GUI", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NEW%20Teleport%20%20Tween%20GUI.lua")
addscriptexist(2788229376, "DaHood - DaUberHub [NEW]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHood%20%20DaUberHub%20NEW.lua")
addscriptuniversal("17F7Os RConsole Admin Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FOs%20RConsole%20Admin%20Script.lua")