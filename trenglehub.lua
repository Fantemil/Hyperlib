_G.gamecount = 0
_G.scriptcount = 0
lastupdate = "GMT +1: 07.03.2023 15:39:52"
function getLocalPlayerName()
    local player = game:GetService("Players").LocalPlayer
    return player.Name
end
function bigRedText(text)
    game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
        Text = text,
        Color = Color3.new(1, 0, 0),
        Font = Enum.Font.GothamBold,
        FontSize = Enum.FontSize.Size48,
    })
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

--^^^dont touch ^^^
function addscript(Place,Gamename,title,author,scriptlink, website)
    _G.gamecount = _G.gamecount + 1
    _G.scriptcount = _G.scriptcount + 1
    if game.PlaceId == Place then
        Window = _G.Window
        _G.main = Window:NewTab(Gamename)
        main = _G.main
        _G.script = main:NewSection("---Scripts---")
        _G.script:NewButton(title, author, function()
            function toexecute()
                loadstring(game:HttpGet(scriptlink))()
            end
            local success, result = pcall(toexecute)
            if success then
                bigGreenItalicText(getLocalPlayerName().. ", your Script executed successfully!")
            else
                bigRedText(getLocalPlayerName().. ", your Script failed to execute!")
            end
        end)
    end
end

function addscriptexist(Place,title,author,scriptlink)
    _G.scriptcount = _G.scriptcount + 1
    if game.PlaceId == Place then
        _G.script:NewButton(title, author, function()
            function toexecute()
                loadstring(game:HttpGet(scriptlink))()
            end
            local success, result = pcall(toexecute)
            if success then
                bigGreenItalicText(getLocalPlayerName().. ", your Script executed successfully!")
            else
                bigRedText(getLocalPlayerName().. ", your Script failed to execute!")
            end
        end)
    end
        
end
function addscriptuniversal(title,author,scriptlink)
    _G.scriptcount = _G.scriptcount + 1
    _G.generalscriptssection:NewButton(title, author, function()
            function toexecute()
                loadstring(game:HttpGet(scriptlink))()
            end
            local success, result = pcall(toexecute)
            if success then
                bigGreenItalicText(getLocalPlayerName().. ", your Script executed successfully!")
            else
                bigRedText(getLocalPlayerName().. ", your Script failed to execute!")
            end
        end)
end
function addhub(title,author,scriptlink)
    _G.scriptcount = _G.scriptcount + 1
    _G.gamehubsection:NewButton(title, author, function()
            function toexecute()
                loadstring(game:HttpGet(scriptlink))()
            end
            local success, result = pcall(toexecute)
            if success then
                bigGreenItalicText(getLocalPlayerName().. ", your Script executed successfully!")
            else
                bigRedText(getLocalPlayerName().. ", your Script failed to execute!")
            end
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




addscriptexist(2788229376, "pluto skidded script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/pluto%20skidded%20script.lua")
addscriptexist(606849621, "Jailbreak Client Sided All Guns", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Jailbreak%20Client%20Sided%20All%20Guns.lua")
addscriptexist(6284583030, "Massive Comet - AutoFarm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Massive%20Comet%20%20AutoFarm.lua")
addscript(5938036553,"Current Game", "FRONTLINES | New Hitbox Extender [OPEN SOURCE]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FRONTLINES%20%20New%20Hitbox%20Extender%20OPEN%20SOURCE.lua")
addscriptexist(6872265039, "BEDWARS SERVER CRASHER!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BEDWARS%20SERVER%20CRASHER.lua")
addscript(286090429,"Current Game", "Lux - Arsenal AutoWin and More!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Lux%20%20Arsenal%20AutoWin%20and%20More.lua")
addscriptexist(6284583030, "Pet Simulator X Created By BloodBath#9170", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pet%20Simulator%20X%20Created%20By%20BloodBath.lua")
addscript(12192552089,"Current Game", "[RELEASE] Fruit Warriors", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RELEASE%20Fruit%20Warriors.lua")
addscript(9992339729,"Current Game", "AUTO ANSWER FOR LONGEST / CLOSEST ANSWER WINS", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AUTO%20ANSWER%20FOR%20LONGEST%20%20CLOSEST%20ANSWER%20WINS.lua")
addscriptuniversal("Kya-Ware | Making games better to play!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KyaWare%20%20Making%20games%20better%20to%20play.lua")
addscriptuniversal("17F7Os Anti Http Spy", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FOs%20Anti%20Http%20Spy.lua")
addscript(12480945489,"Current Game", "Ice Cream Clicker Script Auto Lick, Auto Sell, ETC", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ice%20Cream%20Clicker%20Script%20Auto%20Lick%20Auto%20Sell%20ETC.lua")
addscriptuniversal("Faster Tween Script [NEW]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Faster%20Tween%20Script%20NEW.lua")
addscript(12336036424,"Current Game", "Slasher Blade: Kill Aura", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Slasher%20Blade%20Kill%20Aura.lua")
addscriptexist(6284583030, "RoFast, Pet Simulator X", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoFast%20Pet%20Simulator%20X.lua")
addscriptuniversal("[NEW] Teleport / Tween GUI", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NEW%20Teleport%20%20Tween%20GUI.lua")
addscriptexist(2788229376, "DaHood - DaUberHub [NEW]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHood%20%20DaUberHub%20NEW.lua")
addscriptuniversal("17F7Os RConsole Admin Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FOs%20RConsole%20Admin%20Script.lua")
addscriptuniversal("Block Name Finder Script ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Block%20Name%20Finder%20Script%20.lua")
addscriptexist(12480945489, "shiny.wtf | ICE CREAM CLICKER", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/shinywtf%20%20ICE%20CREAM%20CLICKER.lua")
addscript(10565582849,"Current Game", "Button Simulator 2023", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Button%20Simulator%20.lua")
addscript(815405518,"Current Game", "The Floor is Lava AutoWins/Points", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/The%20Floor%20is%20Lava%20AutoWinsPoints.lua")
addscript(3272915504,"Current Game", "Kidachi | Auto Fish n More", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Kidachi%20%20Auto%20Fish%20n%20More.lua")
addscript(9498006165,"Current Game", "[ kHub ] Tapping Simulator Script [Working - 2023] | Auto Click!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20kHub%20%20Tapping%20Simulator%20Script%20Working%20%20%20%20Auto%20Click.lua")
addscript(2866967438,"Current Game", "[ kHub ] Fishing Simulator Ultimate Script [Working - 2023] | Auto-Farm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20kHub%20%20Fishing%20Simulator%20Ultimate%20Script%20Working%20%20%20%20AutoFarm.lua")
addscript(6772424226,"Current Game", "2 player millionaires tycoon autofarm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20player%20millionaires%20tycoon%20autofarm.lua")
addscript(11943871352,"Current Game", "Homework Printing Simulator Instant finish game [UPDATED]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Homework%20Printing%20Simulator%20Instant%20finish%20game%20UPDATED.lua")
addhub("Pog Hub Script 17+ Game", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pog%20Hub%20Script%20%20Game.lua")
addscript(8568266872,"Current Game", "Kill Monsters to Save Princess", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Kill%20Monsters%20to%20Save%20Princess.lua")
addscript(11040063484,"Current Game", "Sword Fighters Simulator", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Sword%20Fighters%20Simulator.lua")
addscript(893973440,"Current Game", "Flee The Facility: Bypass Anti Cheat", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Flee%20The%20Facility%20Bypass%20Anti%20Cheat.lua")
addscript(3398014311,"Current Game", "Restaurant Tycoon 2 ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Restaurant%20Tycoon%20%20.lua")
addscript(4490140733,"Current Game", "My Restaurant: autofarm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/My%20Restaurant%20autofarm.lua")
addscriptexist(205224386, "Hide And Seek Extreme ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Hide%20And%20Seek%20Extreme%20.lua")
addscript(12996397,"Current Game", "Mega Fun Obby: AutoFarm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Mega%20Fun%20Obby%20AutoFarm.lua")
addscriptexist(286090429, "Arsenal: Silent Aim, More!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arsenal%20Silent%20Aim%20More.lua")
addscript(8260276694, "Current Game","Ability Wars: Hitbox", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ability%20Wars%20Hitbox.lua")

addscript(3956818381, "Current Game","Ninja Legends: Auto Swing, Auto Sell & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ninja%20Legends%20Auto%20Swing%20Auto%20Sell%20%20More.lua")

addscript(920587237,"Current Game", "Adopt Me: Autofarm Baby Mode", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Adopt%20Me%20Autofarm%20Baby%20Mode.lua")
addscript(3101667897, "Current Game","Legends Of Speed: Auto Collect, Auto Rebirth, Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Legends%20Of%20Speed%20Auto%20Collect%20Auto%20Rebirth%20Auto%20Farm.lua")

addscriptexist(6284583030, "Pet Simulator X: Chat Control", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pet%20Simulator%20X%20Chat%20Control.lua")

addscriptexist(2788229376, "Da Hood: Over 20+ Features!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Da%20Hood%20Over%20%20Features.lua")
addscript(1554960397, "Current Game","Car Dealership Tycoon: Auto Race, Walkspeed & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Car%20Dealership%20Tycoon%20Auto%20Race%20Walkspeed%20%20More.lua")

addscript(189707, "Current Game","Natural Disaster Survival: No Fall Damage, Auto Win, Get Balloon", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Natural%20Disaster%20Survival%20No%20Fall%20Damage%20Auto%20Win%20Get%20Balloon.lua")

addscript(142823291,"Current Game", "Murder Mystery 2: OP", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Murder%20Mystery%20%20OP.lua")
addscript(681326327, "Current Game","Fairy Tail: Magic Era: Trinket Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Fairy%20Tail%20Magic%20Era%20Trinket%20Farm.lua")

addhub("03.s Hub: 10+ Games", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/s%20Hub%20%20Games.lua")

addscript(9872472334,"Current Game", "Evade: Awesome autofarm feature!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Evade%20Awesome%20autofarm%20feature.lua")
addscript(10714365287, "Current Game","Anime Racing Clicker: Anti Afk, Auto Farm, Auto Claim Rewards", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Anime%20Racing%20Clicker%20Anti%20Afk%20Auto%20Farm%20Auto%20Claim%20Rewards.lua")

addscriptuniversal("Universal: Fly, Noclip, Inf Yield, CMD-X", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Fly%20Noclip%20Inf%20Yield%20CMDX.lua")

addscriptexist(286090429, "Arsenal: AimBot, Esp, BHop", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arsenal%20AimBot%20Esp%20BHop.lua")

addscriptexist(189707, "Natural Disaster Survival", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Natural%20Disaster%20Survival.lua")
addscript(4282985734, "Current Game","Combat Warriors: Auto Parry", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Combat%20Warriors%20Auto%20Parry.lua")

addscriptuniversal("Universal: Headless, Inf Jumps & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Headless%20Inf%20Jumps%20%20More.lua")

addscript(11690069089,"Current Game", "Best Script To Make It Louder : Simulator", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Best%20Script%20To%20Make%20It%20Louder%20%20Simulator.lua")
addscriptexist(2753915549, "Blox Fruits: FOV, Aimbot & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruits%20FOV%20Aimbot%20%20More.lua")

addscriptexist(4282985734, "Combat Warriors: Kill Aura, Anti Parry, Walkspeed", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Combat%20Warriors%20Kill%20Aura%20Anti%20Parry%20Walkspeed.lua")

addscript(3297964905, "Current Game","Weaponry: Silent Aim, Esp", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Weaponry%20Silent%20Aim%20Esp.lua")

addscript(6735572261,"Current Game", "Selenium Pilgrammed", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Selenium%20Pilgrammed.lua")
addscriptuniversal("Universal: ESP", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20ESP.lua")

addscriptuniversal("Silver Hub: 5+ Games", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Silver%20Hub%20%20Games.lua")

addscript(11302865934,"Current Game", "Every Second You Get +1 HP v0.6.5", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Every%20Second%20You%20Get%20%20HP%20v.lua")
addscript(6679968919, "Current Game","Fly Race: Auto Rebirth", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Fly%20Race%20Auto%20Rebirth.lua")

addscript(11818704485, "Current Game","+1 Damage Every Second: Inf Rebirth", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Damage%20Every%20Second%20Inf%20Rebirth.lua")

addscriptexist(5938036553, "FRONTLINES Script | mopsHub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FRONTLINES%20Script%20%20mopsHub.lua")
addscriptexist(537413528, "Build A Boat For Treasure: God Mode, Auto Farm & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Build%20A%20Boat%20For%20Treasure%20God%20Mode%20Auto%20Farm%20%20More.lua")

addscriptexist(286090429, "Arsenal: Aimbot, Esp, Tracers", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arsenal%20Aimbot%20Esp%20Tracers.lua")

addscriptuniversal("Universal RConsole Admin", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20RConsole%20Admin.lua")

addhub("Toddys hub 3 games supported", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Toddys%20hub%20%20games%20supported.lua")
addscriptexist(3956818381, "Ninja Legends: Auto Swing, Auto Sell When Full & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ninja%20Legends%20Auto%20Swing%20Auto%20Sell%20When%20Full%20%20More.lua")

addscriptexist(3272915504, "Arcane Odyssey: Island Teleport", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arcane%20Odyssey%20Island%20Teleport.lua")

addscript(6516141723,"Current Game", "Doors | ESP, Speed Changer, Auto-Library, Entity ESP, & more!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Doors%20%20ESP%20Speed%20Changer%20AutoLibrary%20Entity%20ESP%20%20more.lua")
addscript(12389327869, "Current Game","Contact: A-888: KillAura, Gun Mod, Walkspeed", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Contact%20A%20KillAura%20Gun%20Mod%20Walkspeed.lua")

addscriptexist(3101667897, "Legends Of Speed: Auto Farm, Auto Open, Animations", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Legends%20Of%20Speed%20Auto%20Farm%20Auto%20Open%20Animations.lua")

addscriptexist(4924922222, "IceHub - Brookhaven Gamepass Unlocker", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/IceHub%20%20Brookhaven%20Gamepass%20Unlocker.lua")
addscript(9848789324, "Current Game","Ragdoll Engine: Admin Cmds, Fly, Esp", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ragdoll%20Engine%20Admin%20Cmds%20Fly%20Esp.lua")

addscript(2818280787, "Current Game","Pet Simulator 2: Auto Eggs, Auto Farm, Teleports", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pet%20Simulator%20%20Auto%20Eggs%20Auto%20Farm%20Teleports.lua")

addscript(6913960180,"Current Game", "Deviously Steal All Souls And Cores", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Deviously%20Steal%20All%20Souls%20And%20Cores.lua")
addscriptexist(2753915549, "Blox Fruits: Auto Farm Level, Auto Stats, Auto Rengoku", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruits%20Auto%20Farm%20Level%20Auto%20Stats%20Auto%20Rengoku.lua")

addscriptuniversal("Universal FE Car", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20FE%20Car.lua")

addscriptexist(3101667897, "Legends Of Speed: Auto Rebirth, Auto Orbs & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Legends%20Of%20Speed%20Auto%20Rebirth%20Auto%20Orbs%20%20More.lua")

addscriptexist(6284583030, " Pet Simulator X Script mzlff hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Pet%20Simulator%20X%20Script%20mzlff%20hub.lua")
addscriptuniversal("Universal RTX Gui Deobfuscated", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20RTX%20Gui%20Deobfuscated.lua")

addscript(9399205659, "Current Game","DragonBall: Ultimate Clash 2: Inf Money, Admin Char", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DragonBall%20Ultimate%20Clash%20%20Inf%20Money%20Admin%20Char.lua")

addscriptuniversal("Universal Menu Modifier", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Menu%20Modifier.lua")

addscriptuniversal("Car Dealership tycoon", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Car%20Dealership%20tycoon.lua")
addscriptuniversal("Universal Anti Http Spy", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Anti%20Http%20Spy.lua")

addscript(5012114941, "Current Game","Hoop Paradise: Aimbot", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Hoop%20Paradise%20Aimbot.lua")

addscriptexist(12336036424, "THE BEST SCRIPT / OXYGEN", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/THE%20BEST%20SCRIPT%20%20OXYGEN.lua")
addscript(5910449407, "Current Game","Project Menacing: God Mode, Invisible & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Project%20Menacing%20God%20Mode%20Invisible%20%20More.lua")

addscript(9224601490, "Current Game","Fruit Battlegrounds: Fly, Walkspeed, Esp", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Fruit%20Battlegrounds%20Fly%20Walkspeed%20Esp.lua")

addscriptexist(11690069089, "Make It Louder : Simulator: Auto-Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Make%20It%20Louder%20%20Simulator%20AutoFarm.lua")

addscriptexist(537413528, "Best BABFT Build a boat for treasure Script 40ish+ features", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Best%20BABFT%20Build%20a%20boat%20for%20treasure%20Script%20ish%20features.lua")
addscriptexist(6735572261, "Pilgrammed: Auto Parry, Auto Deposit, Godmode", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pilgrammed%20Auto%20Parry%20Auto%20Deposit%20Godmode.lua")

addscriptexist(6516141723, "DOORS: Walkspeed, Esp, Entity Spawner", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORS%20Walkspeed%20Esp%20Entity%20Spawner.lua")

addscriptexist(4924922222, "IceHub - Brookhaven RP", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/IceHub%20%20Brookhaven%20RP.lua")
addscriptuniversal("Universal Click TP", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Click%20TP.lua")

addscriptuniversal("Universal RTX GUI", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20RTX%20GUI.lua")

addscript(6361937392, "Current Game","steal time from others & be the best: Hitbox", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/steal%20time%20from%20others%20%20be%20the%20best%20Hitbox.lua")

addscript(10945472407,"Current Game", "Best Strong Muscle Simulator Script!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Best%20Strong%20Muscle%20Simulator%20Script.lua")
addscript(4783966408, "Current Game","Plates of Fate: Remastered: Inf Jumps, Inf Yield & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Plates%20of%20Fate%20Remastered%20Inf%20Jumps%20Inf%20Yield%20%20More.lua")

addscript(990566015, "Current Game","Cursed Islands: Auto Win, Auto Delete Disasters, Auto Collect", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Cursed%20Islands%20Auto%20Win%20Auto%20Delete%20Disasters%20Auto%20Collect.lua")

addscriptuniversal("Auto Fishing for Arcane Odyssey", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Auto%20Fishing%20for%20Arcane%20Odyssey.lua")
addscript(5989426850, "Current Game","Transfur Infection 2: Delete Barriers", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Transfur%20Infection%20%20Delete%20Barriers.lua")

addscript(621129760, "Current Game","KAT: Silent Aim, Aimlock, Server Hop", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KAT%20Silent%20Aim%20Aimlock%20Server%20Hop.lua")

addscriptuniversal("Universal: Click Q to Animations", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Click%20Q%20to%20Animations.lua")

addscript(8540346411,"Current Game", "Op script for Rebirth Champions X", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Op%20script%20for%20Rebirth%20Champions%20X.lua")
addscript(2377868063, "Current Game","Strucid: Hitbox Expander, Keybinds", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Strucid%20Hitbox%20Expander%20Keybinds.lua")

addscript(6002091275, "Current Game","Stone-Haven County Asylum: Kill Aura, Auto Search, Teleports", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/StoneHaven%20County%20Asylum%20Kill%20Aura%20Auto%20Search%20Teleports.lua")

addscript(10982284336, "Current Game","Anime Idle Simulator: Inf DPS, Auto Upgrade, Auto Farm Level", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Anime%20Idle%20Simulator%20Inf%20DPS%20Auto%20Upgrade%20Auto%20Farm%20Level.lua")

addscript(11298754833,"Current Game", "diomond ruby steel iron ORE ESP", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/diomond%20ruby%20steel%20iron%20ORE%20ESP.lua")
addscript(7253149844, "Current Game","SCP Games and SCP Monsters: Morph", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SCP%20Games%20and%20SCP%20Monsters%20Morph.lua")

addscriptexist(6735572261, "Pilgrammed: Mob Auto Farm, ServerHop", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pilgrammed%20Mob%20Auto%20Farm%20ServerHop.lua")

addscriptuniversal("Universal FE Spider", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20FE%20Spider.lua")

addscriptuniversal("Universal Infinity Yield, Player Section, Owl Hub", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Infinity%20Yield%20Player%20Section%20Owl%20Hub.lua")

addscript(730951264, "Current Game","The Maze: Esp, Auto Grab, Fullbright & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/The%20Maze%20Esp%20Auto%20Grab%20Fullbright%20%20More.lua")

addhub("TRXDENT Universal Script Hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TRXDENT%20Universal%20Script%20Hub.lua")
addscriptexist(189707, "Natural Disaster Survival: Auto Warn, Auto Farm, Esp & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Natural%20Disaster%20Survival%20Auto%20Warn%20Auto%20Farm%20Esp%20%20More.lua")

addscript(9984770240, "Current Game","Obby but you're a ball: Finish Obby, Skip Current Level, Skip Hard Obby", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Obby%20but%20youre%20a%20ball%20Finish%20Obby%20Skip%20Current%20Level%20Skip%20Hard%20Obby.lua")

addscript(7305309231, "Current Game","Taxi Boss: Anti Afk, Car Speed, Walkspeed", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Taxi%20Boss%20Anti%20Afk%20Car%20Speed%20Walkspeed.lua")

addscriptexist(2788229376, "Da Hood: Silent Aim, Aimlock, Auto Buy Guns", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Da%20Hood%20Silent%20Aim%20Aimlock%20Auto%20Buy%20Guns.lua")

addscriptexist(3272915504, "Kidachi | Arcane Odyssey", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Kidachi%20%20Arcane%20Odyssey.lua")
addscript(10596377987, "Current Game","Bee Tycoon: Auto-Collect Honey", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Bee%20Tycoon%20AutoCollect%20Honey.lua")

addscriptexist(621129760, "KAT: Click TP, Silent Aim, Teleports", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KAT%20Click%20TP%20Silent%20Aim%20Teleports.lua")

addscriptexist(7056922815, "Reaper 2: Auto Quest, Auto Farm Mobs", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Reaper%20%20Auto%20Quest%20Auto%20Farm%20Mobs.lua")

addscriptexist(370731277, "new meepcity script with fixed stuff", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/new%20meepcity%20script%20with%20fixed%20stuff.lua")
addscript(5602055394, "Current Game","Hood Modded: Auto Buy, Headless & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Hood%20Modded%20Auto%20Buy%20Headless%20%20More.lua")

addscript(10704789056, "Current Game","Drive World: Auto-Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Drive%20World%20AutoFarm.lua")

addscriptexist(6516141723, "DOORS: Spawn Tablet", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORS%20Spawn%20Tablet.lua")

addscript(12083773314,"Current Game", "Troopy army simulator Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Troopy%20army%20simulator%20Script.lua")
addhub("Hawk Hub: 5+ Games", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Hawk%20Hub%20%20Games.lua")

addscriptexist(3272915504, "Arcane Odyssey: Chest Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arcane%20Odyssey%20Chest%20Farm.lua")

addscript(9961650006, "Current Game","Shockwave Racing: AutoFarm WINS", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Shockwave%20Racing%20AutoFarm%20WINS.lua")

addscriptuniversal("In Game Executor Synapse X", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/In%20Game%20Executor%20Synapse%20X.lua")
addscript(8737602449, "Current Game","PLS DONATE: Remote Decryption Logger", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PLS%20DONATE%20Remote%20Decryption%20Logger.lua")

addscript(8549934015, "Current Game","REx Reincarnated: Ore Esp, Ore Teleport", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/REx%20Reincarnated%20Ore%20Esp%20Ore%20Teleport.lua")

addscriptuniversal("change player display user client sided", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/change%20player%20display%20user%20client%20sided.lua")
addscriptexist(3272915504, "Arcane Odyssey: Inf Stamina", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arcane%20Odyssey%20Inf%20Stamina.lua")

addscript(10925589760, "Current Game","Merge SimulatorL: Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Merge%20SimulatorL%20Auto%20Farm.lua")

addscript(4738545896, "Current Game","SHOOT OUT: Auto Kill, Gun Mods, Silent Aim", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SHOOT%20OUT%20Auto%20Kill%20Gun%20Mods%20Silent%20Aim.lua")

addscriptexist(12083773314, "BEST SCRIPT / OXYGEN", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BEST%20SCRIPT%20%20OXYGEN.lua")
addhub("Solarium Hub Key Bypassed", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Solarium%20Hub%20Key%20Bypassed.lua")

addscript(12299415668, "Current Game","Aggressive Multiplayer: Auto Farm Players", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Aggressive%20Multiplayer%20Auto%20Farm%20Players.lua")

addscriptuniversal("Eternals Alt Control", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Eternals%20Alt%20Control.lua")
addscriptexist(3272915504, "Arcane Odyssey: Mob Farm, Kill Aura, Chest Farm & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arcane%20Odyssey%20Mob%20Farm%20Kill%20Aura%20Chest%20Farm%20%20More.lua")

addscript(413424176, "Current Game","Clone Tycoon 2: Inf Cash", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Clone%20Tycoon%20%20Inf%20Cash.lua")

addscriptexist(12299415668, "Aggressive Multiplayer: Auto Farm Orbs", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Aggressive%20Multiplayer%20Auto%20Farm%20Orbs.lua")

addscriptexist(189707, "Natural Disaster Survival - Disable fall damage, Walk On Water, Choose Map", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Natural%20Disaster%20Survival%20%20Disable%20fall%20damage%20Walk%20On%20Water%20Choose%20Map.lua")
addscriptexist(3272915504, "Arcane Odyssey: God Mode", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arcane%20Odyssey%20God%20Mode.lua")

addscriptexist(3272915504, "Arcane Odyssey: Infinite Stamina", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arcane%20Odyssey%20Infinite%20Stamina.lua")

addscriptexist(3272915504, "Arcane Odyssey Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arcane%20Odyssey%20Script.lua")
addscriptexist(2414851778, "Dungeon Quest!: Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Dungeon%20Quest%20Auto%20Farm.lua")

addscript(4840156698, "Current Game","Homework Printing Simulator: Infinite Money", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Homework%20Printing%20Simulator%20Infinite%20Money.lua")

addscript(6097258548, "Current Game","Iron Man Simulator 2: Kill All", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Iron%20Man%20Simulator%20%20Kill%20All.lua")

addscript(7288936208,"Current Game", "Reach script and anti cheat bypasser+Antiban ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Reach%20script%20and%20anti%20cheat%20bypasserAntiban%20.lua")
addscriptexist(8568266872, "Kill Monsters to Save Princess: Auto Farm, Redeeem All Codes", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Kill%20Monsters%20to%20Save%20Princess%20Auto%20Farm%20Redeeem%20All%20Codes.lua")

addscript(11780831899, "Current Game","psychic playground: Auto Collect Orbs", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/psychic%20playground%20Auto%20Collect%20Orbs.lua")

addscriptexist(10925589760, "Merge Simulator: Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Merge%20Simulator%20Auto%20Farm.lua")

addscriptexist(6284583030, "PET SIMULATOR X | OP SCRIPT THE BEST", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PET%20SIMULATOR%20X%20%20OP%20SCRIPT%20THE%20BEST.lua")
addscriptexist(8737602449, "PLS DONATE: Auto Claim", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PLS%20DONATE%20Auto%20Claim.lua")

addscript(292439477, "Current Game","Phantom Forces: Aimbot", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20Aimbot.lua")

addscript(8726743209,"Current Game", "Refinery Caves - Best Script Atm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Refinery%20Caves%20%20Best%20Script%20Atm.lua")
addscript(11250063361, "Current Game","Strongest Anime Squad Simulator: Auto Farm, Kill Aura, Insta Kill, Crash Server, Get Gamepassses", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Strongest%20Anime%20Squad%20Simulator%20Auto%20Farm%20Kill%20Aura%20Insta%20Kill%20Crash%20Server%20Get%20Gamepassses.lua")

addscript(2727067538, "Current Game","World Zero: God Mode", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/World%20Zero%20God%20Mode.lua")

addscriptexist(11040063484, "Sword Fighters Simulator Auto Farm Kill Aura", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Sword%20Fighters%20Simulator%20Auto%20Farm%20Kill%20Aura.lua")
addscriptexist(2727067538, "World // Zero: Kill Aura, Auto Farm & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/World%20%20Zero%20Kill%20Aura%20Auto%20Farm%20%20More.lua")

addscriptexist(2788229376, "Da Hood: Aimbot, Fast Reload, Auto Armor & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Da%20Hood%20Aimbot%20Fast%20Reload%20Auto%20Armor%20%20More.lua")

addscript(12172698927,"Current Game", "Sword Race INF Money, Auto Rebirth,Auto Egg", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Sword%20Race%20INF%20Money%20Auto%20RebirthAuto%20Egg.lua")
addscriptexist(2414851778, "Dungeon Quest!: Auto Start, Kill Aura, Auto Swing & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Dungeon%20Quest%20Auto%20Start%20Kill%20Aura%20Auto%20Swing%20%20More.lua")

addscript(4972091010, "Current Game","Zombie Uprising: Aimbot, Trigger Bot, Esp & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Zombie%20Uprising%20Aimbot%20Trigger%20Bot%20Esp%20%20More.lua")

addscript(443406476, "Current Game","Project Lazarus: Instant Kill, Kill All Zombies, Inf Ammo", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Project%20Lazarus%20Instant%20Kill%20Kill%20All%20Zombies%20Inf%20Ammo.lua")

addscriptexist(12172698927, "inf money / OXYGEN ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/inf%20money%20%20OXYGEN%20.lua")
addscript(11257760806, "Current Game","live in a back alley simulator: Auto Sell, Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/live%20in%20a%20back%20alley%20simulator%20Auto%20Sell%20Auto%20Farm.lua")

addscript(70501379, "Current Game","Trade Hangout: Anti Afk, Steal Dominos, Spam Held Tool", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Trade%20Hangout%20Anti%20Afk%20Steal%20Dominos%20Spam%20Held%20Tool.lua")

addscript(11582083063,"Current Game", "BEST Auto Farm / OXYGEN", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BEST%20Auto%20Farm%20%20OXYGEN.lua")
addscriptuniversal("Universal: Anti Afk", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Anti%20Afk.lua")

addscriptexist(12389327869, "Contact: A-888: Kill All", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Contact%20A%20Kill%20All.lua")

addscript(9825515356, "Current Game","Hood Customs: Aim Lock", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Hood%20Customs%20Aim%20Lock.lua")

addscript(11430505281,"Current Game", "Team Skeet AWS open source", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Team%20Skeet%20AWS%20open%20source.lua")
addhub("Adminus Hub: 3 Games", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Adminus%20Hub%20%20Games.lua")

addscriptexist(2788229376, "Da Hood: Infinity Stamina, Auto Farm & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Da%20Hood%20Infinity%20Stamina%20Auto%20Farm%20%20More.lua")

addscriptexist(142823291, "Murder Mystery 2: ESP, Fake Knife, Get Xbox Knife", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Murder%20Mystery%20%20ESP%20Fake%20Knife%20Get%20Xbox%20Knife.lua")
addscript(7120576005, "Current Game","Stack Ball: Auto Win", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Stack%20Ball%20Auto%20Win.lua")

addscriptexist(2753915549, "Kidachi | Bloxfruit ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Kidachi%20%20Bloxfruit%20.lua")
addscript(11636413564, "Current Game","Meme Mergers: Auto Merge, Auto Click Best Block, Auto Rebirth & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Meme%20Mergers%20Auto%20Merge%20Auto%20Click%20Best%20Block%20Auto%20Rebirth%20%20More.lua")

addscript(11746859781, "Current Game","Bubble Gum Clicker: Auto Spin Wheel, Auto Sell, Auto Bubble", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Bubble%20Gum%20Clicker%20Auto%20Spin%20Wheel%20Auto%20Sell%20Auto%20Bubble.lua")

addscriptexist(5602055394, "Hood Modded: Fly, Float, FOV", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Hood%20Modded%20Fly%20Float%20FOV.lua")
