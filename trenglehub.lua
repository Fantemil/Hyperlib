_G.gamecount = 0
_G.scriptcount = 0
lastupdate = "GMT +1: 07.03.2023 21:14:22"
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
function bigRedItalicText(text)
    game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
        Text = text,
        Color = Color3.fromRGB(255, 0, 0), -- set the color to red
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
    name = title
    if game.PlaceId == Place then
        Window = _G.Window
        _G.main = Window:NewTab(Gamename)
        main = _G.main
        _G.script = main:NewSection("---Scripts---")
        _G.script:NewButton(title, author, function()
            function toexecute()
                loadstring(game:HttpGet(scriptlink))()
            end
            bigBlueItalicText("Attempting to execute your script...")

            local success, result = pcall(toexecute)
            if success then
                bigGreenItalicText(getLocalPlayerName().. ", your Script executed successfully!")
            else
                bigRedItalicText(getLocalPlayerName().. ", your Script failed to execute!")
            end
        end)
    end
end

function addscriptexist(Place,title,author,scriptlink)
    _G.scriptcount = _G.scriptcount + 1
    name = title

    if game.PlaceId == Place then
        _G.script:NewButton(title, author, function()
            function toexecute()
                loadstring(game:HttpGet(scriptlink))()
            end
            bigBlueItalicText("Attempting to execute your script...")

            local success, result = pcall(toexecute)
            if success then
                bigGreenItalicText(getLocalPlayerName().. ", your Script executed successfully!")
            else
                bigRedItalicText(getLocalPlayerName().. ", your Script failed to execute!")
            end
        end)
    end
        
end
function addscriptuniversal(title,author,scriptlink)
    _G.scriptcount = _G.scriptcount + 1
    name = title

    _G.generalscriptssection:NewButton(title, author, function()
            function toexecute()
                loadstring(game:HttpGet(scriptlink))()
            end
            bigBlueItalicText("Attempting to execute your script...")

            local success, result = pcall(toexecute)
            if success then
                bigGreenItalicText(getLocalPlayerName().. ", your Script executed successfully!")
            else
                bigRedItalicText(getLocalPlayerName().. ", your Script failed to execute!")
            end
        end)
end
function addhub(title,author,scriptlink)
    _G.scriptcount = _G.scriptcount + 1
    name = title

    _G.gamehubsection:NewButton(title, author, function()
            function toexecute()
                loadstring(game:HttpGet(scriptlink))()
            end
            bigBlueItalicText("Attempting to execute your script...")
            local success, result = pcall(toexecute)
            if success then
                bigGreenItalicText(getLocalPlayerName().. ", your Script executed successfully!")
            else
                bigRedItalicText(getLocalPlayerName().. ", your Script failed to execute!")
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

addscript(2116002761,"Current Game", "Aftons Family Diner", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Aftons%20Family%20Diner.lua")
addscript(9280321544, "Current Game","98% Fail Impossible Glass Bridge!: Give Gears, Show Correct Glasses, Finish Bridge", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Fail%20Impossible%20Glass%20Bridge%20Give%20Gears%20Show%20Correct%20Glasses%20Finish%20Bridge.lua")

addscript(11658205626, "Current Game","Saitama Battlegrounds: Farm Player, Hitbox Expander, Auto Skills", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Saitama%20Battlegrounds%20Farm%20Player%20Hitbox%20Expander%20Auto%20Skills.lua")

addscript(5926001758,"Current Game", "Color Block: Inf Jump, Instant Freeze, SpeedHack", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Color%20Block%20Inf%20Jump%20Instant%20Freeze%20SpeedHack.lua")
addscriptexist(3272915504, "Arcane Odyssey: Chest Esp", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arcane%20Odyssey%20Chest%20Esp.lua")

addscript(7952502098, "Current Game","Impossible Glass Bridge Obby: Teleports, Auto Farm, Walkspeed", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Impossible%20Glass%20Bridge%20Obby%20Teleports%20Auto%20Farm%20Walkspeed.lua")

addscriptexist(3272915504, "Arcane Odyssey: Island Tp", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arcane%20Odyssey%20Island%20Tp.lua")

addscriptexist(2753915549, "VOID HUB | NEW GUI!!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VOID%20HUB%20%20NEW%20GUI.lua")
addscriptexist(3956818381, "Ninja Legends: Auto Sell, Auto Swing, Auto Hoops", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ninja%20Legends%20Auto%20Sell%20Auto%20Swing%20Auto%20Hoops.lua")

addscriptexist(537413528, "Build A Boat For Treasure: Auto Hatch, Auto Win, Auto Farm Gold", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Build%20A%20Boat%20For%20Treasure%20Auto%20Hatch%20Auto%20Win%20Auto%20Farm%20Gold.lua")

addscript(6678877691,"Current Game", "ZO SAMURAI - Killaura", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZO%20SAMURAI%20%20Killaura.lua")
addscriptexist(3272915504, "Arcane Odyssey: Instant Max Level And Galleeons", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arcane%20Odyssey%20Instant%20Max%20Level%20And%20Galleeons.lua")

addscriptexist(3272915504, "Arcane Odyssey: Auto Fish", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arcane%20Odyssey%20Auto%20Fish.lua")

addscriptexist(3101667897, "Legends of Speed Autofarm ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Legends%20of%20Speed%20Autofarm%20.lua")
addscriptexist(3272915504, "Arcane Odyssey: God mode", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arcane%20Odyssey%20God%20mode.lua")

addscriptexist(12299415668, "Aggressive Multiplayer: Collect All Orbs", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Aggressive%20Multiplayer%20Collect%20All%20Orbs.lua")

addscript(10313751253,"Current Game", "Free Bike Spawn Gamepass", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Free%20Bike%20Spawn%20Gamepass.lua")
addscriptexist(11943871352, "Homework Printing Simulator: Unlock All, Inf Cash", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Homework%20Printing%20Simulator%20Unlock%20All%20Inf%20Cash.lua")

addscriptexist(6284583030, "Pet Simulator X: Auto Fuse, Auto-Collect, Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pet%20Simulator%20X%20Auto%20Fuse%20AutoCollect%20Auto%20Farm.lua")

addscriptexist(5938036553, "FRONTLINES: FPS Booster, Fullbright, Aimbot", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FRONTLINES%20FPS%20Booster%20Fullbright%20Aimbot.lua")

addscriptexist(5938036553, "FRONTLINES | ESP Boxes, Tracers, Rainbow", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FRONTLINES%20%20ESP%20Boxes%20Tracers%20Rainbow.lua")
addscript(11345435986, "Current Game","Chainsaw Man: Devil's Heart: Autofarm Mobs, Player name esp, Mob esp", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Chainsaw%20Man%20Devils%20Heart%20Autofarm%20Mobs%20Player%20name%20esp%20Mob%20esp.lua")

addscript(8540168650, "Current Game","Stand Upright: Rebooted: Auto Buy, Auto Store, Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Stand%20Upright%20Rebooted%20Auto%20Buy%20Auto%20Store%20Auto%20Farm.lua")

addscriptexist(6284583030, "Pet Simulator X: Auto Farm, Auto Collect & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pet%20Simulator%20X%20Auto%20Farm%20Auto%20Collect%20%20More.lua")

addscriptexist(5938036553, "FRONTLINES | Hitbox Extender", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FRONTLINES%20%20Hitbox%20Extender.lua")
addscriptexist(11345435986, "Chainsaw Man: Auto Dash", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Chainsaw%20Man%20Auto%20Dash.lua")

addscriptexist(11746859781, "Bubble Gum Clicker: AutoFarm, Auto Spin & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Bubble%20Gum%20Clicker%20AutoFarm%20Auto%20Spin%20%20More.lua")

addscriptexist(5938036553, "FRONTLINES | Speed Hack", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FRONTLINES%20%20Speed%20Hack.lua")
addscript(8908228901, "Current Game","SharkBite 2: Insta Kill", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SharkBite%20%20Insta%20Kill.lua")

addscript(10456235914, "Current Game","Redwood Prison: Reworked: Kill All, One Punch Man, Give Weapon", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Redwood%20Prison%20Reworked%20Kill%20All%20One%20Punch%20Man%20Give%20Weapon.lua")

addscript(662417684, "Current Game","LUCKY BLOCKS Battlegrounds: Hitbox, Open Blocks, Keyless", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LUCKY%20BLOCKS%20Battlegrounds%20Hitbox%20Open%20Blocks%20Keyless.lua")

addhub("Vsync Hub: 5+ Games", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Vsync%20Hub%20%20Games.lua")

addscriptexist(6516141723, "OP Doors Entity Spawner", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20Doors%20Entity%20Spawner.lua")
addhub("Universal Chat Censority Bypasser", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Chat%20Censority%20Bypasser.lua")

addscript(6804602922, "Current Game","BOXING BETA: Inf Stam, WalkSpeed, NoClip", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BOXING%20BETA%20Inf%20Stam%20WalkSpeed%20NoClip.lua")

addscript(10427804764,"Current Game", "Soulmate Colour GUI | Set your color to anything", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Soulmate%20Colour%20GUI%20%20Set%20your%20color%20to%20anything.lua")
addscriptexist(9872472334, "Evade: Anti Afk, Auto Farm Money & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Evade%20Anti%20Afk%20Auto%20Farm%20Money%20%20More.lua")

addscript(7899881670, "Current Game","RB World 4: AimBot", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RB%20World%20%20AimBot.lua")

addhub("Kidde Hub Universal Hub V1.0.3", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Kidde%20Hub%20Universal%20Hub%20V.lua")
addscriptexist(3101667897, "Legends Of Speed: Auto Race, Auto Join Race, Auto Speed", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Legends%20Of%20Speed%20Auto%20Race%20Auto%20Join%20Race%20Auto%20Speed.lua")

addscriptexist(3297964905, "Weaponry: Kill All, Movement Mods, Esp", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Weaponry%20Kill%20All%20Movement%20Mods%20Esp.lua")

addhub("Galaxy Hub: 10+ Games", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Galaxy%20Hub%20%20Games.lua")

addscriptexist(6516141723, "Roblox Doors Auto die record", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Roblox%20Doors%20Auto%20die%20record.lua")
addhub("Universal Silent Aim for ROBLOXs Weapons Kit", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Silent%20Aim%20for%20ROBLOXs%20Weapons%20Kit.lua")

addscriptexist(6097258548, "Iron Man Simulator 2: Auto Kill", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Iron%20Man%20Simulator%20%20Auto%20Kill.lua")

addscript(7848359510,"Current Game", "Free gamepasses / dumb game", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Free%20gamepasses%20%20dumb%20game.lua")
addscript(10599426741, "Current Game","Zach's Service Station: Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Zachs%20Service%20Station%20Auto%20Farm.lua")

addscriptexist(11818704485, "+1 Damage Every Second: bring all mobs zone", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Damage%20Every%20Second%20bring%20all%20mobs%20zone.lua")

addscript(4616652839,"Current Game", "NEW Shindo Life Teleport Locations Script  NOW FOR ALL MAIN VILLAGES  ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NEW%20Shindo%20Life%20Teleport%20Locations%20Script%20%20NOW%20FOR%20ALL%20MAIN%20VILLAGES%20%20.lua")
addscript(9938675423, "Current Game","Oaklands: Infinity Stamina", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Oaklands%20Infinity%20Stamina.lua")

addscriptexist(6679968919, "Fly Race: Auto Rebirth, Auto Stud & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Fly%20Race%20Auto%20Rebirth%20Auto%20Stud%20%20More.lua")

addscriptuniversal("Pets Simulator X Visual Pets", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pets%20Simulator%20X%20Visual%20Pets.lua")
addscriptexist(7952502098, "Impossible Glass Bridge Obby: Auto Win, Fly, Rejoin", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Impossible%20Glass%20Bridge%20Obby%20Auto%20Win%20Fly%20Rejoin.lua")

addscriptuniversal("Universal ROSMM Key Bypass", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20ROSMM%20Key%20Bypass.lua")

addscript(2413927524, "Current Game","The Rake REMASTERED: ESP", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/The%20Rake%20REMASTERED%20ESP.lua")

addscript(9874911474,"Current Game", "Tha Bronx OP Script!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Tha%20Bronx%20OP%20Script.lua")
addhub("X333 Hub: 5+ Games", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/X%20Hub%20%20Games.lua")

addscript(6193049807, "Current Game","Tha Hood: Inf Jumps, Force Reset & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Tha%20Hood%20Inf%20Jumps%20Force%20Reset%20%20More.lua")

addscriptexist(286090429, "AdvanceTech | Arsenal | V3", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdvanceTech%20%20Arsenal%20%20V.lua")
addscript(4505214429, "Current Game","Soul Eater: Resonance: Free Things", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Soul%20Eater%20Resonance%20Free%20Things.lua")

addscriptexist(286090429, "Arsenal: FOV, Silent Aim, Killaura", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arsenal%20FOV%20Silent%20Aim%20Killaura.lua")

addscriptexist(9872472334, "DevHub [Evade Added] +5 Games", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DevHub%20Evade%20Added%20%20Games.lua")
addscript(2534724415, "Current Game","Emergency Response: Liberty County: Car Speed, Auto Solve, Teleports", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Emergency%20Response%20Liberty%20County%20Car%20Speed%20Auto%20Solve%20Teleports.lua")

addscriptexist(2788229376, "Da Hood: Jumppower, Anti Lock, Aimlock", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Da%20Hood%20Jumppower%20Anti%20Lock%20Aimlock.lua")

addscriptexist(11040063484, "Sword Fighters Simulator: Teleports, Auto Ascend & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Sword%20Fighters%20Simulator%20Teleports%20Auto%20Ascend%20%20More.lua")

addscript(590744701,"Current Game", "RBLXWare | Anti-Ban ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RBLXWare%20%20AntiBan%20.lua")
addhub("Haram Hub: 5+ Games", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Haram%20Hub%20%20Games.lua")

addscriptexist(2788229376, "Da Hood: Aim Lock, Auto Setup, Notifications", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Da%20Hood%20Aim%20Lock%20Auto%20Setup%20Notifications.lua")

addscript(10455492548,"Current Game", "Pobeg ot a4 adopt mi parkur ben - Teleport to end/start, inf jumps", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pobeg%20ot%20a%20adopt%20mi%20parkur%20ben%20%20Teleport%20to%20endstart%20inf%20jumps.lua")
addscriptuniversal("Universal Sword Glitcher", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Sword%20Glitcher.lua")

addscriptexist(10704789056, "Drive World: Car Boost", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Drive%20World%20Car%20Boost.lua")

addscript(4520749081, "Current Game","King Legacy: Auto Stats, Auto Skills, Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/King%20Legacy%20Auto%20Stats%20Auto%20Skills%20Auto%20Farm.lua")

addscriptuniversal("The Rake || Rake ESP [Open Source]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/The%20Rake%20%20Rake%20ESP%20Open%20Source.lua")
addscript(8884433153, "Current Game","Collect All Pets: Auto Equip Best Pets, Auto Eggs, Teleports", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Collect%20All%20Pets%20Auto%20Equip%20Best%20Pets%20Auto%20Eggs%20Teleports.lua")

addscriptuniversal("Universal: Alt Control", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Alt%20Control.lua")

addscriptexist(6516141723, "Doors - ESP for almost everything, Alot More!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Doors%20%20ESP%20for%20almost%20everything%20Alot%20More.lua")
addscriptexist(662417684, "LUCKY BLOCKS Battlegrounds: Walkspeed, Jump Power, Spawn Blocks", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LUCKY%20BLOCKS%20Battlegrounds%20Walkspeed%20Jump%20Power%20Spawn%20Blocks.lua")

addscript(5827078246, "Current Game","Coins Hero Simulator: Auto Hatch Eggs, Auto Buy, Auto Sell", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Coins%20Hero%20Simulator%20Auto%20Hatch%20Eggs%20Auto%20Buy%20Auto%20Sell.lua")

addscript(10446125875, "Current Game","Anime Fruit Simulator: Auto Attack, Auto Upgrade, Auto Hatch", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Anime%20Fruit%20Simulator%20Auto%20Attack%20Auto%20Upgrade%20Auto%20Hatch.lua")

addhub("Xix Script Hub [WORKS IN ANY GAME] [UPDATE]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Xix%20Script%20Hub%20WORKS%20IN%20ANY%20GAME%20UPDATE.lua")
addscriptexist(8549934015, "REx: Reincarnated: Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/REx%20Reincarnated%20Auto%20Farm.lua")

addscriptexist(2788229376, "Da Hood: Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Da%20Hood%20Auto%20Farm.lua")

addscriptexist(2788229376, "Da Hood: Auto Farm Atm, Auto Farm, Infinite Jump & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Da%20Hood%20Auto%20Farm%20Atm%20Auto%20Farm%20Infinite%20Jump%20%20More.lua")

addscriptuniversal("Universal click tp script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20click%20tp%20script.lua")
addscript(2548157192, "Current Game","Funeral Home and Graveyard: Admin Panel", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Funeral%20Home%20and%20Graveyard%20Admin%20Panel.lua")

addscriptexist(9872472334, "Evade: Auto Win, Teleport Method, Wallpapers", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Evade%20Auto%20Win%20Teleport%20Method%20Wallpapers.lua")

addscriptexist(6284583030, "Pet Simulator X: Visual Pets", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pet%20Simulator%20X%20Visual%20Pets.lua")

addscriptexist(2788229376, "[UPDATED] Zinc Hub v3.1", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UPDATED%20Zinc%20Hub%20v.lua")
addscriptexist(6678877691, "ZO: Kill Aura", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZO%20Kill%20Aura.lua")

addscript(7991339063, "Current Game","Rainbow Friends: Walkspeed, Enable Jump, Get Items", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rainbow%20Friends%20Walkspeed%20Enable%20Jump%20Get%20Items.lua")

addscript(6902912928, "Current Game","GET TO THE TOP: Inf Money", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GET%20TO%20THE%20TOP%20Inf%20Money.lua")

addscript(11781005288,"Current Game", "+1 Jetpack Fuel Per Second Autofarm etc", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Jetpack%20Fuel%20Per%20Second%20Autofarm%20etc.lua")
addscriptexist(11636413564, "Meme Mergers: Auto Merge, Auto Click Best Block, Auto Rebirth", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Meme%20Mergers%20Auto%20Merge%20Auto%20Click%20Best%20Block%20Auto%20Rebirth.lua")

addscriptuniversal("Universal Fly, ESP", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Fly%20ESP.lua")

addscriptexist(10704789056, "Drive World AUTOFARM 100% FREE OP!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Drive%20World%20AUTOFARM%20%20FREE%20OP.lua")
addscript(379614936, "Current Game","Assassin: Esp, Infinite Jump, Walkhack & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Assassin%20Esp%20Infinite%20Jump%20Walkhack%20%20More.lua")

addscriptexist(9872472334, "Evade: Godmode, ESP, Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Evade%20Godmode%20ESP%20Auto%20Farm.lua")

addscript(183364845,"Current Game", "New Speed Run 4 Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/New%20Speed%20Run%20%20Script.lua")
addscript(3194099138, "Current Game","R'lyeh The Sunken City: Unlock Everything", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rlyeh%20The%20Sunken%20City%20Unlock%20Everything.lua")

addscriptexist(3272915504, "Arcane Odyssey: Chest Tp", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arcane%20Odyssey%20Chest%20Tp.lua")

addscript(3255508650, "Current Game","brawl 2: God Mode", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/brawl%20%20God%20Mode.lua")

addhub("CineHub V1.8 - By Dismal", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CineHub%20V%20%20By%20Dismal.lua")
addscriptexist(9984770240, "Obby but you're a ball: Finish Medium Obby, Finish Easy Obby, Skip Level", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Obby%20but%20youre%20a%20ball%20Finish%20Medium%20Obby%20Finish%20Easy%20Obby%20Skip%20Level.lua")

addscript(7664045612, "Current Game","Tiny Bread Factory: AutoFarm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Tiny%20Bread%20Factory%20AutoFarm.lua")

addscriptexist(3255508650, "brawl 2: Kill Aura", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/brawl%20%20Kill%20Aura.lua")

addscript(1240123653,"Current Game", "Zombie Attack: Autofarm OP", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Zombie%20Attack%20Autofarm%20OP.lua")
addscriptexist(9961650006, "Shockwave Racing: Auto Farm Wins", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Shockwave%20Racing%20Auto%20Farm%20Wins.lua")

addscript(8916037983, "Current Game","starving artists: Redeem All Codes", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/starving%20artists%20Redeem%20All%20Codes.lua")

addscriptuniversal("UserAlert - Dodging made easy ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UserAlert%20%20Dodging%20made%20easy%20.lua")
addscriptexist(3272915504, "Arcane Odyssey: Kill Aura, Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arcane%20Odyssey%20Kill%20Aura%20Auto%20Farm.lua")

addscript(6298464951, "Current Game","Roblox Is Unbreakable: Mob Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Roblox%20Is%20Unbreakable%20Mob%20Auto%20Farm.lua")

addscript(30869879,"Current Game", "Stop it Slender Page Collector ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Stop%20it%20Slender%20Page%20Collector%20.lua")
addscriptexist(3272915504, "Arcane Odyssey: Auto Farm Chests", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arcane%20Odyssey%20Auto%20Farm%20Chests.lua")

addscriptexist(189707, "Natural Disaster Survival: Auto Farm Win", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Natural%20Disaster%20Survival%20Auto%20Farm%20Win.lua")

addscriptexist(11302865934, "Official JHub For Robloxs Games", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Official%20JHub%20For%20Robloxs%20Games.lua")
addscriptexist(11345435986, "Chainsaw Man: Devil`s: Auto Farm Mobs, Player Name Esp & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Chainsaw%20Man%20Devils%20Auto%20Farm%20Mobs%20Player%20Name%20Esp%20%20More.lua")

addscript(11397035899, "Current Game","Unicorn Tycoon: Auto Merge, Auto Collect, Auto Purchases", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Unicorn%20Tycoon%20Auto%20Merge%20Auto%20Collect%20Auto%20Purchases.lua")

addscriptuniversal("Universal Synapse X", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Synapse%20X.lua")

addhub("One Protocol Hub: 17 Games supported", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/One%20Protocol%20Hub%20%20Games%20supported.lua")
addscript(5865858426, "Current Game","Retail Tycoon 2: Auto-Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Retail%20Tycoon%20%20AutoFarm.lua")

addscriptexist(11746859781, "Bubble Gum Clicker: Auto spin wheel, auto blow bubble, auto claim daily gifts", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Bubble%20Gum%20Clicker%20Auto%20spin%20wheel%20auto%20blow%20bubble%20auto%20claim%20daily%20gifts.lua")
addscriptexist(537413528, "Build A Boat For Treasure: Inf Jumps, Fly & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Build%20A%20Boat%20For%20Treasure%20Inf%20Jumps%20Fly%20%20More.lua")

addscriptexist(2788229376, "Da Hood: Troll, Aimlock, Killbot", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Da%20Hood%20Troll%20Aimlock%20Killbot.lua")

addscriptuniversal("Player Teleport Script || Tween, Teleport Button", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Player%20Teleport%20Script%20%20Tween%20Teleport%20Button.lua")
addscriptexist(990566015, "Cursed Islands: Auto Farm, Water GodMode, Esp & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Cursed%20Islands%20Auto%20Farm%20Water%20GodMode%20Esp%20%20More.lua")

addscript(1962086868, "Current Game","Tower Of Hell: God Mode, Auto Farm, Infinite Jump & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Tower%20Of%20Hell%20God%20Mode%20Auto%20Farm%20Infinite%20Jump%20%20More.lua")

addscript(10108131074, "Current Game","Mow The Lawn: Auto Farm, Walkspeed, Jumppower", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Mow%20The%20Lawn%20Auto%20Farm%20Walkspeed%20Jumppower.lua")

addscriptuniversal("Universal Aimbot UI Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Aimbot%20UI%20Script.lua")
addscriptuniversal("Universal Remove Surface Textures and Effects", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Remove%20Surface%20Textures%20and%20Effects.lua")

addscript(11153589280, "Current Game","DOORS Race: Auto Win, Auto Tap", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORS%20Race%20Auto%20Win%20Auto%20Tap.lua")

addscriptuniversal("Universal Chat-Bot", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20ChatBot.lua")

addscriptexist(606849621, "Jailbreak AutoRob/AutoFarm ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Jailbreak%20AutoRobAutoFarm%20.lua")
addscriptexist(7056922815, "Reaper 2: Inf Jumps, Auto Farm & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Reaper%20%20Inf%20Jumps%20Auto%20Farm%20%20More.lua")

addscript(7732789524, "Current Game","Neo Soccer League: Fling every ball", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Neo%20Soccer%20League%20Fling%20every%20ball.lua")

addscriptexist(537413528, "Build A Boat For Treasure AUTOFARM ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Build%20A%20Boat%20For%20Treasure%20AUTOFARM%20.lua")
addscriptuniversal("Universal: RTX", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20RTX.lua")

addscript(7336302630, "Current Game","Project Delta: Movement Prediction, Projectile Drop Prediction", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Project%20Delta%20Movement%20Prediction%20Projectile%20Drop%20Prediction.lua")

addscriptexist(537413528, "OP SCRIPT FOR BUILD A BOAT FOR TREASURE ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20SCRIPT%20FOR%20BUILD%20A%20BOAT%20FOR%20TREASURE%20.lua")
addscriptuniversal("Universal Camera Flasher", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Camera%20Flasher.lua")

addscriptexist(1962086868, "Tower Of Hell: Auto Farm, Teleport To End, God Mode & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Tower%20Of%20Hell%20Auto%20Farm%20Teleport%20To%20End%20God%20Mode%20%20More.lua")

addscriptexist(3101667897, "Legends Of Speed: Auto Rebirth, Walkspeed & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Legends%20Of%20Speed%20Auto%20Rebirth%20Walkspeed%20%20More.lua")

addscriptexist(2753915549, "Blox Fruit Script Created By Blood Bath", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruit%20Script%20Created%20By%20Blood%20Bath.lua")
addscriptexist(1240123653, "Zombie Attack: Auto Kill", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Zombie%20Attack%20Auto%20Kill.lua")

addscriptexist(3398014311, "Resaurant Tycoon 2: Auto-Farm, Auto Collect Bills", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Resaurant%20Tycoon%20%20AutoFarm%20Auto%20Collect%20Bills.lua")

addscriptuniversal("RobloxSMM UPDATED ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxSMM%20UPDATED%20.lua")
addscriptexist(6735572261, "Pilgrammed: Auto Attack, God Mode & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pilgrammed%20Auto%20Attack%20God%20Mode%20%20More.lua")

addscriptuniversal("Universal Dominus Builder", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Dominus%20Builder.lua")

addscriptexist(2788229376, "Da Hood: Aimlock", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Da%20Hood%20Aimlock.lua")

addscriptexist(3297964905, "Weaponry Kill All Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Weaponry%20Kill%20All%20Script.lua")
addscriptexist(9825515356, "Hood Customs: Headless, Aim Lock & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Hood%20Customs%20Headless%20Aim%20Lock%20%20More.lua")

addscript(185655149, "Current Game","Welcome to Bloxburg: Pizza Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Welcome%20to%20Bloxburg%20Pizza%20Auto%20Farm.lua")

addhub("AirHub | UNIVERSAL AIMBOT, WALL HACK ESP & CROSSHAIR GUI", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AirHub%20%20UNIVERSAL%20AIMBOT%20WALL%20HACK%20ESP%20%20CROSSHAIR%20GUI.lua")
addscriptexist(9825515356, "Hood Customs: AntiLock", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Hood%20Customs%20AntiLock.lua")

addscriptexist(5602055394, "Hood Modded: Anti-Lock", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Hood%20Modded%20AntiLock.lua")

addscriptexist(2788229376, "ZAPPED V3 GUI | BEST FREE DA HOOD SCRIPT", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZAPPED%20V%20GUI%20%20BEST%20FREE%20DA%20HOOD%20SCRIPT.lua")
addscriptuniversal("Universal: Teleports", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Teleports.lua")

addscriptexist(12389327869, "Contact: A-888: Auto-Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Contact%20A%20AutoFarm.lua")

addscript(9796685905,"Current Game", "Super Hero Race Clicker Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Super%20Hero%20Race%20Clicker%20Script.lua")
addscript(2295122555, "Current Game","Project JoJo: Auto Farm Level, Money Farm, Items Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Project%20JoJo%20Auto%20Farm%20Level%20Money%20Farm%20Items%20Farm.lua")

addscriptexist(7288936208, "Super Blox Soccer: Ball Size, Auto bypass Anti Cheat", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Super%20Blox%20Soccer%20Ball%20Size%20Auto%20bypass%20Anti%20Cheat.lua")

addscriptexist(3272915504, "Arcane Odyssey: Infinite Statpoints", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arcane%20Odyssey%20Infinite%20Statpoints.lua")

addscriptexist(537413528, "Build A Boat Auto Farm Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Build%20A%20Boat%20Auto%20Farm%20Script.lua")
addscriptexist(6516141723, "DOORS: Insta Kill, Infinite Ammo, Fast Reload", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORS%20Insta%20Kill%20Infinite%20Ammo%20Fast%20Reload.lua")

addscriptexist(8568266872, "Kill Monsters To Save Princess: Auto Waves, Fast Hit", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Kill%20Monsters%20To%20Save%20Princess%20Auto%20Waves%20Fast%20Hit.lua")

addscriptexist(3398014311, "Restaurant Tycoon 2: Insta Finish For Npcs, Instant Cook", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Restaurant%20Tycoon%20%20Insta%20Finish%20For%20Npcs%20Instant%20Cook.lua")

addscript(6741970382,"Current Game", "troll script and cool features", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/troll%20script%20and%20cool%20features.lua")
addscriptexist(6516141723, "DOORS: ROOMS Auto Complete", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORS%20ROOMS%20Auto%20Complete.lua")

addscriptuniversal("Universal Block Builder", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Block%20Builder.lua")

addscript(1069951594,"Current Game", "Fall of Hell - AutoWin, GodMode, FOV Changer", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Fall%20of%20Hell%20%20AutoWin%20GodMode%20FOV%20Changer.lua")
addscriptexist(142823291, "Murder Mystery 2: Esp, Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Murder%20Mystery%20%20Esp%20Auto%20Farm.lua")

addscript(9049840490, "Current Game","Sonic Speed Simulator: Auto Rebirth, Infinity Exp", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Sonic%20Speed%20Simulator%20Auto%20Rebirth%20Infinity%20Exp.lua")

addscript(6160139406,"Current Game", "The Underground War 3 Flag Steal", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/The%20Underground%20War%20%20Flag%20Steal.lua")
addscriptuniversal("Universal Simple webhook messenger", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Simple%20webhook%20messenger.lua")

addscript(12400504665, "Current Game","Hood Arena: Anti Slow, Esp, Aimlock", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Hood%20Arena%20Anti%20Slow%20Esp%20Aimlock.lua")

addscriptuniversal("Name Hider | Universal Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Name%20Hider%20%20Universal%20Script.lua")
addhub("Pickle Hub: 3 Games", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pickle%20Hub%20%20Games.lua")

addscriptexist(1962086868, "Tower of Hell: Inf Jumps, Auto Win & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Tower%20of%20Hell%20Inf%20Jumps%20Auto%20Win%20%20More.lua")

addscriptexist(662417684, "LUCKY BLOCKS Battlegrounds: Keybinds, Spawn Block, Teleports", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LUCKY%20BLOCKS%20Battlegrounds%20Keybinds%20Spawn%20Block%20Teleports.lua")

addscript(5076734934,"Current Game", "Rooms Script | Working ✅", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rooms%20Script%20%20Working%20.lua")
addscript(11939339894, "Current Game","be a dad and get milk simulator: Collect Money", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/be%20a%20dad%20and%20get%20milk%20simulator%20Collect%20Money.lua")

addscript(855499080, "Current Game","SKYWARS: Auto Farm, Teleports", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SKYWARS%20Auto%20Farm%20Teleports.lua")

addscriptexist(189707, "Natural Disaster Survival: Spam Sound, Teleports, Click TP", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Natural%20Disaster%20Survival%20Spam%20Sound%20Teleports%20Click%20TP.lua")

addscriptuniversal("Roblox Friend Botter [RoSMM]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Roblox%20Friend%20Botter%20RoSMM.lua")
addscriptexist(537413528, "Build A Boat For Treasure: Click TP, Auto Farm & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Build%20A%20Boat%20For%20Treasure%20Click%20TP%20Auto%20Farm%20%20More.lua")

addscriptexist(3956818381, "Ninja Legends: Auto Sell, Auto Swing, Auto Buy", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ninja%20Legends%20Auto%20Sell%20Auto%20Swing%20Auto%20Buy.lua")

addscriptexist(10982284336, "Auto Farm Basic / OXYGEN", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Auto%20Farm%20Basic%20%20OXYGEN.lua")
addscript(5130598377, "Current Game","A Universal Time: God Mode, Auto Quest, Items Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/A%20Universal%20Time%20God%20Mode%20Auto%20Quest%20Items%20Farm.lua")

addscriptuniversal("Universal Aimbot", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Aimbot.lua")

addscript(11334163219,"Current Game", "Anime Power Simulator - V3.0", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Anime%20Power%20Simulator%20%20V.lua")
addscriptexist(7991339063, "Rainbow Friends: Get All, Esp & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rainbow%20Friends%20Get%20All%20Esp%20%20More.lua")

addscript(2248408710, "Current Game","Destruction Simulator: No Cooldown, Walkspeed, Jump Power", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Destruction%20Simulator%20No%20Cooldown%20Walkspeed%20Jump%20Power.lua")

addscriptexist(142823291, "Murder Mystery 2: Server Crasher, Auto Farm, Kill All", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Murder%20Mystery%20%20Server%20Crasher%20Auto%20Farm%20Kill%20All.lua")

addscript(4759640416,"Current Game", "The Underground War 2 Flag TP", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/The%20Underground%20War%20%20Flag%20TP.lua")
addscript(2551991523, "Current Game","Broken Bones IV: Auto-Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Broken%20Bones%20IV%20AutoFarm.lua")

addscriptexist(662417684, "LUCKY BLOCKS Battlegrounds: Fly, Spawn Blocks, Jumppower", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LUCKY%20BLOCKS%20Battlegrounds%20Fly%20Spawn%20Blocks%20Jumppower.lua")

addhub("Gaming's Script Hub: 50+ Games", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Gamings%20Script%20Hub%20%20Games.lua")

addscript(5902977746,"Current Game", "Ultimate Tower Defense: AutoFish, Teleports & More", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ultimate%20Tower%20Defense%20AutoFish%20Teleports%20%20More.lua")
addscriptexist(11298754833, "MinerShaft: Diomond Ruby Steel Iron ESP", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MinerShaft%20Diomond%20Ruby%20Steel%20Iron%20ESP.lua")

addscriptexist(7288936208, "Super Blox Soccer: Reach, Anti Cheat Bypass, Ball Size", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Super%20Blox%20Soccer%20Reach%20Anti%20Cheat%20Bypass%20Ball%20Size.lua")

addscriptexist(6735572261, "Pilgrammed: Auto Parry", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pilgrammed%20Auto%20Parry.lua")

addscriptuniversal("Holos Alts Controls", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Holos%20Alts%20Controls.lua")
addscript(6110766473, "Current Game","Flex Fight: Auto-Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Flex%20Fight%20AutoFarm.lua")

addscriptexist(2788229376, "DH Zinc Hub V2.9.5 [OP]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DH%20Zinc%20Hub%20V%20OP.lua")
addscriptexist(2753915549, "Blox Fruits: Auto Farm Coins", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruits%20Auto%20Farm%20Coins.lua")

addscriptexist(5938036553, "FRONTLINES: Kill All", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FRONTLINES%20Kill%20All.lua")

addscript(891852901, "Current Game","Greenville: Car Tuning Gui", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Greenville%20Car%20Tuning%20Gui.lua")

addscriptexist(3272915504, "Arcane Odyssey: Infinite Money", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arcane%20Odyssey%20Infinite%20Money.lua")

addscriptexist(1962086868, "Tower Of Hell: AutoWin, Get All Items, GodMode", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Tower%20Of%20Hell%20AutoWin%20Get%20All%20Items%20GodMode.lua")
addscriptexist(3272915504, "Arcane Odyssey: Kill Aura", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arcane%20Odyssey%20Kill%20Aura.lua")

addscript(6507422231, "Current Game","Twilight Daycare: Hide Name, Crash Server & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Twilight%20Daycare%20Hide%20Name%20Crash%20Server%20%20More.lua")

addscript(5293755937,"Current Game", "Speed Run Simulator GUI", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Speed%20Run%20Simulator%20GUI.lua")
addscriptexist(8568266872, "Kill Monsters To Save Princess: Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Kill%20Monsters%20To%20Save%20Princess%20Auto%20Farm.lua")

addscriptexist(11040063484, "Sword Fighters Simulator: Kill Aura, Auto Collect Orbs, Auto Claim Chests & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Sword%20Fighters%20Simulator%20Kill%20Aura%20Auto%20Collect%20Orbs%20Auto%20Claim%20Chests%20%20More.lua")

addscriptexist(606849621, "Jailbreak - No Wait, Inf Nitro, No Shoot Delay & More", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Jailbreak%20%20No%20Wait%20Inf%20Nitro%20No%20Shoot%20Delay%20%20More.lua")
addscriptexist(1537690962, "Bee Swarm Simulator: Auto Jelly Spinner", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Bee%20Swarm%20Simulator%20Auto%20Jelly%20Spinner.lua")

addscriptexist(3101667897, "Legends Of Speed: Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Legends%20Of%20Speed%20Auto%20Farm.lua")

addscript(11939099110,"Current Game", "Ski-Race OP Autofarm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SkiRace%20OP%20Autofarm.lua")
addscriptuniversal("GO TO JAIL AND MAKE FRIENDS TO ESCAPE tycoon", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GO%20TO%20JAIL%20AND%20MAKE%20FRIENDS%20TO%20ESCAPE%20tycoon.lua")
addscriptexist(2753915549, "Blox Fruits SCRIPT Pc AutoFarm Level,Devil Fruit,Gun Mastery,More FREE", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruits%20SCRIPT%20Pc%20AutoFarm%20LevelDevil%20FruitGun%20MasteryMore%20FREE.lua")
addhub("Wheel Hub Free/Paid/Universal Script Hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Wheel%20Hub%20FreePaidUniversal%20Script%20Hub.lua")
addscriptuniversal("sasdoors v1.3 | doors gui", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/sasdoors%20v%20%20doors%20gui.lua")
addscript(2474168535,"Current Game", "westbound.pro [V1.6]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/westboundpro%20V.lua")
addscriptexist(4616652839, "NEW Shindo Life INFINITE Jump Script ! ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NEW%20Shindo%20Life%20INFINITE%20Jump%20Script%20%20.lua")
addscriptuniversal("Friend Detector, Friend Notification System", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Friend%20Detector%20Friend%20Notification%20System.lua")
addscriptuniversal("xaoui ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/xaoui%20.lua")
addscriptuniversal("Team Skeet UI Library - for script devs", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Team%20Skeet%20UI%20Library%20%20for%20script%20devs.lua")
addscriptuniversal("Car Dealership Tycoon Auto Farm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Car%20Dealership%20Tycoon%20Auto%20Farm.lua")
addscriptexist(292439477, "Phantom Forces | Chams ESP", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20%20Chams%20ESP.lua")
addscriptexist(292439477, "Phantom Forces Aimbot, ESP And Name ESP Working 15/02/2023", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20Aimbot%20ESP%20And%20Name%20ESP%20Working%20.lua")
addscript(12197250120,"Current Game", "+1 World Autofarm and stuff", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20World%20Autofarm%20and%20stuff.lua")
addscript(6075270490,"Current Game", "Teamwork Puzzles Autofarm/Autocomplete", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Teamwork%20Puzzles%20AutofarmAutocomplete.lua")
addscriptexist(537413528, "OP Build A Boat For Treasure Autofarm Script V.G Hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20Build%20A%20Boat%20For%20Treasure%20Autofarm%20Script%20VG%20Hub.lua")
addscriptexist(11345435986, "Chainsaw Man: Devils Heart | Heart Farm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Chainsaw%20Man%20Devils%20Heart%20%20Heart%20Farm.lua")
addscriptexist(11345435986, "Chainsaw Man: Devils Heart | Auto Farm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Chainsaw%20Man%20Devils%20Heart%20%20Auto%20Farm.lua")
addscriptexist(537413528, "Build A Boat Script[New]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Build%20A%20Boat%20ScriptNew.lua")
addscriptexist(6516141723, "Roblox Doors Custom Entity Spawner V2", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Roblox%20Doors%20Custom%20Entity%20Spawner%20V.lua")
addscript(10726371567,"Current Game", "Auto Collect Card ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Auto%20Collect%20Card%20.lua")
addscriptuniversal("Sikus UI Library sliders, toggles, dropdowns and more!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Sikus%20UI%20Library%20sliders%20toggles%20dropdowns%20and%20more.lua")
addscriptuniversal("Chat Bypasser Script Unbannable", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Chat%20Bypasser%20Script%20Unbannable.lua")
addscriptexist(292439477, "Phantom Forces | Third Person [OPEN SOURCE]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20%20Third%20Person%20OPEN%20SOURCE.lua")
addscriptexist(292439477, "Phantom Forces | Gun Mods [OPEN SOURCE]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20%20Gun%20Mods%20OPEN%20SOURCE.lua")
addscript(11989217843,"Current Game", "COLLECT CARD / OXYGEN", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/COLLECT%20CARD%20%20OXYGEN.lua")
addscriptuniversal("Auto ServerHop Devil Heart Farm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Auto%20ServerHop%20Devil%20Heart%20Farm.lua")
addhub("Finite Hub [FREE AND PAID FEATURES]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Finite%20Hub%20FREE%20AND%20PAID%20FEATURES.lua")
addscriptexist(2788229376, "[OP] DH Zinc Hub v2.8 [NEW FEATURES & LOTS MORE]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20DH%20Zinc%20Hub%20v%20NEW%20FEATURES%20%20LOTS%20MORE.lua")
addscriptexist(7732789524, "Auto Kick All Ball", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Auto%20Kick%20All%20Ball.lua")
addscriptexist(6678877691, "ZoWare Script OP Constantly Bypassed", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZoWare%20Script%20OP%20Constantly%20Bypassed.lua")
addscript(4483381587,"Current Game", "Remote Spy | Simple Spy V3", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Remote%20Spy%20%20Simple%20Spy%20V.lua")
addscriptexist(4483381587, "Webhook Spammer Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Webhook%20Spammer%20Script.lua")
addscriptexist(2753915549, " Blox Fruits Void Hub V2 Teleport Mirage And Gear", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Blox%20Fruits%20Void%20Hub%20V%20Teleport%20Mirage%20And%20Gear.lua")
addhub("OXYGEN HUB 26 Games ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OXYGEN%20HUB%20%20Games%20.lua")
addscriptexist(5602055394, "HOOD MODDED SCRIPT", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HOOD%20MODDED%20SCRIPT.lua")
addscript(8130299583,"Current Game", "trident survival", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/trident%20survival.lua")
addscriptuniversal("Simple Lua Obfuscator", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Simple%20Lua%20Obfuscator.lua")
addscriptexist(2788229376, "DA HOOD ABYS FREE INTERNAL SCRIPT", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DA%20HOOD%20ABYS%20FREE%20INTERNAL%20SCRIPT.lua")
addscriptexist(2788229376, "FREE DA HOOD SCRIPT UI PARADOX", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FREE%20DA%20HOOD%20SCRIPT%20UI%20PARADOX.lua")
addscript(301549746,"Current Game", "Counter Blox Godmode", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Counter%20Blox%20Godmode.lua")
addscriptexist(301549746, "Counterblox Destroy Any Instance Exploit", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Counterblox%20Destroy%20Any%20Instance%20Exploit.lua")
addscriptexist(1537690962, "BioHazard Bee Swarm Simulator OP Insane Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BioHazard%20Bee%20Swarm%20Simulator%20OP%20Insane%20Script.lua")
addhub("Gamings Script Hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Gamings%20Script%20Hub.lua")
addscript(11912525919,"Current Game", "every second you get 1+... ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/every%20second%20you%20get%20%20.lua")
addscript(8246874626,"Current Game", " Dragon Soul Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Dragon%20Soul%20Script.lua")
addscriptexist(11746859781, " Bubble Gum Clicker Script ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Bubble%20Gum%20Clicker%20Script%20.lua")
addscriptexist(2809202155, "NEW Your Bizarre Adventure Click To Teleport Script ! ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NEW%20Your%20Bizarre%20Adventure%20Click%20To%20Teleport%20Script%20%20.lua")
addscriptexist(4616652839, "NEW Shindo Life Teleport Locations Script  Just For Ember Village  ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NEW%20Shindo%20Life%20Teleport%20Locations%20Script%20%20Just%20For%20Ember%20Village%20%20.lua")
addscript(3351674303,"Current Game", "Pearl・Driving Empire", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PearlDriving%20Empire.lua")
addscriptexist(6284583030, "Pet Simulator X Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pet%20Simulator%20X%20Script.lua")
addscriptexist(7991339063, "Rainbow Friends Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rainbow%20Friends%20Script.lua")
addscript(11542692507,"Current Game", "Mendopt Me Auto Quest", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Mendopt%20Me%20Auto%20Quest.lua")
addscriptexist(920587237, "Get all NFR and MFR pets | Adopt Me", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Get%20all%20NFR%20and%20MFR%20pets%20%20Adopt%20Me.lua")
addscript(2990100290,"Current Game", "RPG Simulator 6FootHub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RPG%20Simulator%20FootHub.lua")
addscriptexist(185655149, "Bloxburg Pizza Delivery Auto Farm Hair stylist and more Working anti-ban", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Bloxburg%20Pizza%20Delivery%20Auto%20Farm%20Hair%20stylist%20and%20more%20Working%20antiban.lua")
addscriptexist(142823291, "Kidachi - Murder Mystery 2 Valentine Update", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Kidachi%20%20Murder%20Mystery%20%20Valentine%20Update.lua")
addhub("BatuhanG Script Hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BatuhanG%20Script%20Hub.lua")
addscript(54865335,"Current Game", "FREE Ultimate Driving AUTOFARM", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FREE%20Ultimate%20Driving%20AUTOFARM.lua")
addscript(9846056789,"Current Game", "Diamond in Cups ESP", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Diamond%20in%20Cups%20ESP.lua")
addscript(7499189111,"Current Game", "Encounters Fighting OP Kill All Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Encounters%20Fighting%20OP%20Kill%20All%20Script.lua")
addscript(4508456371,"Current Game", "Shortest Answer Wins OP Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Shortest%20Answer%20Wins%20OP%20Script.lua")
addscript(2665326799,"Current Game", "Find The Button OP Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Find%20The%20Button%20OP%20Script.lua")
addscript(8146731988,"Current Game", "Ultra Power Tycoon OP Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ultra%20Power%20Tycoon%20OP%20Script.lua")
addscriptexist(7991339063, "Rainbow friends OP Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rainbow%20friends%20OP%20Script.lua")
addscript(7167649916,"Current Game", "Trophy Script Hub OP", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Trophy%20Script%20Hub%20OP.lua")
addscript(335760407,"Current Game", "best free gui for the game lol", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/best%20free%20gui%20for%20the%20game%20lol.lua")
addscript(6777872443,"Current Game", "Synergy Hub Re-Written", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Synergy%20Hub%20ReWritten.lua")
addscriptexist(2753915549, "Blox Fruits Void Hub Transform Race V4 UPDATED", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruits%20Void%20Hub%20Transform%20Race%20V%20UPDATED.lua")
addscriptexist(6284583030, "ExtremeHUB - 25 Scripts", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ExtremeHUB%20%20%20Scripts.lua")
addscriptexist(10704789056, "OP Drive World GUI [ Scourge Hub ]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20Drive%20World%20GUI%20%20Scourge%20Hub%20.lua")
addscriptexist(286090429, "⭐ Scourge Hub - Keyless - 20 Games - New", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Scourge%20Hub%20%20Keyless%20%20%20Games%20%20New.lua")
addscriptuniversal("Phantom Forces | Anti Aim [Open Source]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20%20Anti%20Aim%20Open%20Source.lua")
addscript(71315343,"Current Game", "Dragon Ball Rage Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Dragon%20Ball%20Rage%20Script.lua")
addscript(8567596064,"Current Game", " Anime Showdown Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Anime%20Showdown%20Script.lua")
addscriptexist(10704789056, "drive world op autofarm script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/drive%20world%20op%20autofarm%20script.lua")
addscriptexist(6777872443, "Pixel Piece FULL AUTOFARM", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pixel%20Piece%20FULL%20AUTOFARM.lua")
addscriptexist(286090429, "DevHub NEW LOADSTRING", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DevHub%20NEW%20LOADSTRING.lua")
addscriptexist(8908228901, "Sharkbite 2 - OP Free Boats", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Sharkbite%20%20%20OP%20Free%20Boats.lua")
addscriptexist(155615604, "Prison Life Script Library", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Prison%20Life%20Script%20Library.lua")
addscriptexist(2788229376, "Script hub with some features", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Script%20hub%20with%20some%20features.lua")
addscriptexist(10945472407, "Strong Muscle Simulator GUI", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Strong%20Muscle%20Simulator%20GUI.lua")
addscriptexist(6284583030, "OP Roblox Pet Simulator X Autofarm And Dupe Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20Roblox%20Pet%20Simulator%20X%20Autofarm%20And%20Dupe%20Script.lua")
addscript(3652625463,"Current Game", "MOONWARE V2 | 5+ Games", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MOONWARE%20V%20%20%20Games.lua")
addscriptexist(9498006165, "King Hub | Tapping Simulator! 🐾", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/King%20Hub%20%20Tapping%20Simulator%20.lua")
addscript(11620947043,"Current Game", "King Hub | Flappy Clicker", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/King%20Hub%20%20Flappy%20Clicker.lua")
addscript(6512923934,"Current Game", "Ultra Clickers Simulator OP Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ultra%20Clickers%20Simulator%20OP%20Script.lua")
addscript(8054462345,"Current Game", "[ Part/Zombie/Box esp, Gun cheats. Speed hacks, Instant reload and more! ]Michaels Zombies", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20PartZombieBox%20esp%20Gun%20cheats%20Speed%20hacks%20Instant%20reload%20and%20more%20Michaels%20Zombies.lua")
addscriptexist(2866967438, "Fishing Simulator - OP Autofarm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Fishing%20Simulator%20%20OP%20Autofarm.lua")
addscript(4913581664,"Current Game", "New Hub for Cart Ride Into Rdite", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/New%20Hub%20for%20Cart%20Ride%20Into%20Rdite.lua")
addscript(10836055001,"Current Game", "Monster Hunt Simulator Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Monster%20Hunt%20Simulator%20Script.lua")
addhub(" Jumble Hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Jumble%20Hub.lua")
addscriptexist(9848789324, "InfernoHub - Ragdoll Engine", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/InfernoHub%20%20Ragdoll%20Engine.lua")
addscriptexist(4483381587, "UNIVERSAL KELREPL KEY SYSTEM BYPASS", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UNIVERSAL%20KELREPL%20KEY%20SYSTEM%20BYPASS.lua")
addscriptexist(10704789056, "Drive World FREE AUTOFARM", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Drive%20World%20FREE%20AUTOFARM.lua")
addscriptexist(9984770240, "obby but ur a ball script hub stuff", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/obby%20but%20ur%20a%20ball%20script%20hub%20stuff.lua")
addscriptexist(9984770240, "Obby but youre a ball GUI | Skip level | finish game", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Obby%20but%20youre%20a%20ball%20GUI%20%20Skip%20level%20%20finish%20game.lua")
addscript(11929558254,"Current Game", "Every Second You Get +1... Autofarm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Every%20Second%20You%20Get%20%20Autofarm.lua")
addscriptuniversal("Phantom Forces | Movement Changer [Open Source]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20%20Movement%20Changer%20Open%20Source.lua")
addscriptexist(4483381587, "Rizzler Ultimate Rizz", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rizzler%20Ultimate%20Rizz.lua")
addscriptexist(9984770240, "Obby but youre a ball skip levelnot gui", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Obby%20but%20youre%20a%20ball%20skip%20levelnot%20gui.lua")
addscript(11547613362,"Current Game", "King Hub | Anime Fly Race Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/King%20Hub%20%20Anime%20Fly%20Race%20Script.lua")
addscriptexist(3351674303, "FREE Driving Empire Autofarm ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FREE%20Driving%20Empire%20Autofarm%20.lua")
addscriptuniversal("Military Tycoon Auto Raid Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Military%20Tycoon%20Auto%20Raid%20Script.lua")
addscriptuniversal("Military Tycoon Event Farm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Military%20Tycoon%20Event%20Farm.lua")
addscriptexist(11334163219, "Anime Power Simulator Script - NEW ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Anime%20Power%20Simulator%20Script%20%20NEW%20.lua")
addscriptexist(2753915549, "Kidachi ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎‎ ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Kidachi%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20.lua")
addscriptexist(3351674303, "AeroHub | #1 Hub for Car Games", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AeroHub%20%20%20Hub%20for%20Car%20Games.lua")
addscriptexist(286090429, "OP Arsenal Kill All and Silent Aim Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20Arsenal%20Kill%20All%20and%20Silent%20Aim%20Script.lua")
addscriptexist(9992339729, "Longest Answer Wins AutoFarm AutoWin", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Longest%20Answer%20Wins%20AutoFarm%20AutoWin.lua")
addscriptexist(7305309231, "FREE Taxi Boss Autofarm & More!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FREE%20Taxi%20Boss%20Autofarm%20%20More.lua")
addscript(11156779721,"Current Game", "AUTO PICKUP, MINE AURA, CHOP AURA", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AUTO%20PICKUP%20MINE%20AURA%20CHOP%20AURA.lua")
addscriptexist(1554960397, "FREE Car Dealership Tycoon Autofarm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FREE%20Car%20Dealership%20Tycoon%20Autofarm.lua")
addscriptexist(3652625463, "Lifting Simulator [Binary Hub]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Lifting%20Simulator%20Binary%20Hub.lua")
addscriptexist(891852901, "Autofarm and Car Manipulation for GREENVILLE ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Autofarm%20and%20Car%20Manipulation%20for%20GREENVILLE%20.lua")
addscript(11729688377,"Current Game", "Booga Auto Farm, Kill Aura, Invisibility ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Booga%20Auto%20Farm%20Kill%20Aura%20Invisibility%20.lua")
addscriptexist(815405518, "The Floor Is Lava INSTANT WIN", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/The%20Floor%20Is%20Lava%20INSTANT%20WIN.lua")
addscript(7346416636,"Current Game", "Cool features script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Cool%20features%20script.lua")
addscript(6278885452,"Current Game", "Strong Katana Simulator Instant Cash", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Strong%20Katana%20Simulator%20Instant%20Cash.lua")
addscriptexist(301549746, "Counter Blox | Gun Mods", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Counter%20Blox%20%20Gun%20Mods.lua")
addscript(4520619420,"Current Game", "AeroHub | FREE HUB FOR Leeuwarden, Katana Simulator, Zombie Merge Tycoon And Much More!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AeroHub%20%20FREE%20HUB%20FOR%20Leeuwarden%20Katana%20Simulator%20Zombie%20Merge%20Tycoon%20And%20Much%20More.lua")
addscriptexist(4616652839, "Project Nexus+++++++", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Project%20Nexus.lua")
addscriptexist(815405518, "The The Floor Is LAVA!🔥", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/The%20The%20Floor%20Is%20LAVA.lua")
addscript(11196588443,"Current Game", "Autofarm for ZOMBIE MERGE TYCOON", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Autofarm%20for%20ZOMBIE%20MERGE%20TYCOON.lua")
addscript(11063612131,"Current Game", "Every Second You Get 1 Jump Power DIFFERENT GAME", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Every%20Second%20You%20Get%20%20Jump%20Power%20DIFFERENT%20GAME.lua")
addscript(314927855,"Current Game", "Some reach stuff new", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Some%20reach%20stuff%20new.lua")
addscript(8438158667,"Current Game", "Hub with some features", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Hub%20with%20some%20features.lua")
addscript(4566572536,"Current Game", "AeroHub | FREE HUB FOR Vehicle-Legends, Katana Simulator, Zombie Merge Tycoon and much more!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AeroHub%20%20FREE%20HUB%20FOR%20VehicleLegends%20Katana%20Simulator%20Zombie%20Merge%20Tycoon%20and%20much%20more.lua")
addhub("Pearl・Script Hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PearlScript%20Hub.lua")
addscriptexist(12996397, "Mega Fun Obby Auto-Complete Stages", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Mega%20Fun%20Obby%20AutoComplete%20Stages.lua")
addscriptexist(292439477, "Phantom Forces AimBot ESP", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20AimBot%20ESP.lua")
addscriptexist(7047488135, "Speed Run Simulator ⚡Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Speed%20Run%20Simulator%20Script.lua")
addscript(11216791462,"Current Game", "Hungry Pigs Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Hungry%20Pigs%20Script.lua")
addscript(3214114884,"Current Game", "[ BYPASSED ANTI-TELEPORT RETURN NEW Kill all Cash Farm, ESP, Auto Capture flags, AND MORE ] Flag Wars", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20BYPASSED%20ANTITELEPORT%20RETURN%20NEW%20Kill%20all%20Cash%20Farm%20ESP%20Auto%20Capture%20flags%20AND%20MORE%20%20Flag%20Wars.lua")
addscriptexist(185655149, "ILLUSION BLOXBURG PIZZA DELIVERY AUTOFARM", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ILLUSION%20BLOXBURG%20PIZZA%20DELIVERY%20AUTOFARM.lua")
addscriptexist(621129760, "Tracer | KAT Loads Of Features BEST", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Tracer%20%20KAT%20Loads%20Of%20Features%20BEST.lua")
addscriptexist(4483381587, "Lyrics bot > let people request songs!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Lyrics%20bot%20%20let%20people%20request%20songs.lua")
addscriptuniversal("Phantom Forces | Frag Indicator [Open Source]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20%20Frag%20Indicator%20Open%20Source.lua")
addscript(11701792069,"Current Game", "Snow Plow Simulator script GUI", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Snow%20Plow%20Simulator%20script%20GUI.lua")
addscript(648362523,"Current Game", "Breaking Point [250K+ Coins per hour]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Breaking%20Point%20K%20Coins%20per%20hour.lua")
addscriptexist(9872472334, "Evade Script [NEW!]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Evade%20Script%20NEW.lua")
addscriptexist(6516141723, "Doors Auto Farm ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Doors%20Auto%20Farm%20.lua")
addscript(11912525067,"Current Game", "1 Jump Power Every Second Autofarm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Jump%20Power%20Every%20Second%20Autofarm.lua")
addscriptexist(2788229376, "OP Dahood Autofarm Exploit GUI SpaceX", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20Dahood%20Autofarm%20Exploit%20GUI%20SpaceX.lua")
addhub("Local Hub - KAT", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Local%20Hub%20%20KAT.lua")
addhub("Local Hub - Build A Boat For Treasure", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Local%20Hub%20%20Build%20A%20Boat%20For%20Treasure.lua")
addhub("Local Hub - Blox Fruits", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Local%20Hub%20%20Blox%20Fruits.lua")
addscript(6728870912,"Current Game", "World Of Stands | Chest Autofarm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/World%20Of%20Stands%20%20Chest%20Autofarm.lua")
addscript(11400511154,"Current Game", "Monkey Tycoon [Binary Hub]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Monkey%20Tycoon%20Binary%20Hub.lua")
addscriptexist(8054462345, "Michaels Zombies Knife Kill Aura Zombies ESP No Recoil No Spread Fire Rare and more", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Michaels%20Zombies%20Knife%20Kill%20Aura%20Zombies%20ESP%20No%20Recoil%20No%20Spread%20Fire%20Rare%20and%20more.lua")
addscriptexist(11701792069, "Snow Plow Simulator Gui", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Snow%20Plow%20Simulator%20Gui.lua")
addscriptexist(286090429, "DevHub 5+ Games", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DevHub%20%20Games.lua")
addscriptexist(3956818381, "Ninja Legends [NEW]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ninja%20Legends%20NEW.lua")
addscriptexist(2866967438, "Fishing Simulator Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Fishing%20Simulator%20Script.lua")
addscriptexist(142823291, "Murder Mystery 2 GUI", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Murder%20Mystery%20%20GUI.lua")
addscriptexist(286090429, "Arsenal DevHub [OP GUIs]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arsenal%20DevHub%20OP%20GUIs.lua")
addscript(11874473440,"Current Game", "New Script For Car Factory Tycoon", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/New%20Script%20For%20Car%20Factory%20Tycoon.lua")
addscript(11884594868,"Current Game", "OP Anime Defense Simulator Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20Anime%20Defense%20Simulator%20Script.lua")
addscript(5154858502,"Current Game", "Murderers vs. Sheriffs Kill All Knife Aura Gun Aura Name ESP Chams ESP and more", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Murderers%20vs%20Sheriffs%20Kill%20All%20Knife%20Aura%20Gun%20Aura%20Name%20ESP%20Chams%20ESP%20and%20more.lua")
addscriptexist(10925589760, "Auto Merge Auto Tap Auto Complete Obby Auto Rebirth", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Auto%20Merge%20Auto%20Tap%20Auto%20Complete%20Obby%20Auto%20Rebirth.lua")
addscriptexist(9872472334, "Evade | GodMode, Speed, Fly, Gift Farm & more", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Evade%20%20GodMode%20Speed%20Fly%20Gift%20Farm%20%20more.lua")
addscriptexist(920587237, "ReQiuYTPL Hub, AdoptMe, Adopt Me Pet autofarm, Auto Neon, Auto Trade, and more!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ReQiuYTPL%20Hub%20AdoptMe%20Adopt%20Me%20Pet%20autofarm%20Auto%20Neon%20Auto%20Trade%20and%20more.lua")
addscriptexist(8737602449, "PLS DONATE [Binary Hub]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PLS%20DONATE%20Binary%20Hub.lua")
addscriptuniversal("Phantom Forces | Fast Animations [Open Source]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20%20Fast%20Animations%20Open%20Source.lua")
addscriptexist(11547613362, "[🚀MOUNTS] ⛩️ Anime Fly Race", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MOUNTS%20%20Anime%20Fly%20Race.lua")
addscript(1215581239,"Current Game", "Doomspire Brickbattle AUTO KILL ALL", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Doomspire%20Brickbattle%20AUTO%20KILL%20ALL.lua")
addscript(10889408214,"Current Game", "DEFLECT | Legit Auto Deflect | Perfect Auto Deflect | Hitbox Expander | Lag Server", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DEFLECT%20%20Legit%20Auto%20Deflect%20%20Perfect%20Auto%20Deflect%20%20Hitbox%20Expander%20%20Lag%20Server.lua")
addscriptexist(155615604, "Prison Life op gui ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Prison%20Life%20op%20gui%20.lua")
addscriptuniversal("Phantom Forces | Hit Box Expander [Open Source]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20%20Hit%20Box%20Expander%20Open%20Source.lua")
addscriptexist(142823291, "Kidachi‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Kidachi%20%20%20%20%20%20%20%20%20%20%20.lua")
addscriptexist(3101667897, "Legends Of Speed ⚡ | Autofarm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Legends%20Of%20Speed%20%20%20Autofarm.lua")
addscriptexist(3101667897, "Legends Of Speed ⚡ | Autofarm Open Source", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Legends%20Of%20Speed%20%20%20Autofarm%20Open%20Source.lua")
addscriptexist(1962086868, "Tower Of Hell GUI", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Tower%20Of%20Hell%20GUI.lua")
addscriptexist(4483381587, "BetterBypasser Chat Bypass", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BetterBypasser%20Chat%20Bypass.lua")
addscriptexist(4483381587, "[Universal] Common Utilities V1.0.4", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Common%20Utilities%20V.lua")
addscriptexist(2753915549, "Space Hub OVERPOWERED", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Space%20Hub%20OVERPOWERED.lua")
addscriptexist(2534724415, "#1 Free ER:LC GUI [ Scourge Hub ]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Free%20ERLC%20GUI%20%20Scourge%20Hub%20.lua")
addscriptexist(6516141723, "Pearl ・DOORS👁️", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pearl%20DOORS.lua")
addscriptexist(537413528, "Build A Boat For Treasure : [Crash Server]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Build%20A%20Boat%20For%20Treasure%20%20Crash%20Server.lua")
addscriptexist(537413528, "Build A Boat For Treasure [GUI - Auto Quest, Auto Farm, Functions, ClickDetectors]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Build%20A%20Boat%20For%20Treasure%20GUI%20%20Auto%20Quest%20Auto%20Farm%20Functions%20ClickDetectors.lua")
addscript(11227601015,"Current Game", "Iicrrbii Universal [Work] ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Iicrrbii%20Universal%20Work%20.lua")
addscriptexist(8908228901, "Pearl・Sharkbite 2", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PearlSharkbite%20.lua")
addscript(11866253403,"Current Game", "Ragdoll Jump Race", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ragdoll%20Jump%20Race.lua")
addscriptexist(2753915549, "Blox Fruit Gui Hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruit%20Gui%20Hub.lua")
addscript(7791873535,"Current Game", "REALISTIC HOOD AUTOFARM 1MIL IN UNDER 2 MINS!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/REALISTIC%20HOOD%20AUTOFARM%20MIL%20IN%20UNDER%20%20MINS.lua")
addscriptexist(8908228901, "Catware Sharkbite 2 script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Catware%20Sharkbite%20%20script.lua")
addscriptexist(9872472334, "Evade Gift Auto Farm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Evade%20Gift%20Auto%20Farm.lua")
addscriptuniversal("Phantom Forces Script | Silent Aim, Rage Bot and more. [SYNAPSE X ONLY]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20Script%20%20Silent%20Aim%20Rage%20Bot%20and%20more%20SYNAPSE%20X%20ONLY.lua")
addscriptexist(2788229376, "PULSE GUI | DA HOOD", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PULSE%20GUI%20%20DA%20HOOD.lua")
addscriptexist(286090429, "Arsenal Gui ESP AIMLOCK", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arsenal%20Gui%20ESP%20AIMLOCK.lua")
addscript(6137321701,"Current Game", "Free nightvision script for Blair READ DESC", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Free%20nightvision%20script%20for%20Blair%20READ%20DESC.lua")
addscriptexist(11729688377, "Cheaters Hub | Supported 9 games", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Cheaters%20Hub%20%20Supported%20%20games.lua")
addscript(10875701453,"Current Game", "Cheaters Hub | Edward the Man-Eating Train", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Cheaters%20Hub%20%20Edward%20the%20ManEating%20Train.lua")
addscriptexist(10875701453, "Edward The Man Eating Train Script Collection", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Edward%20The%20Man%20Eating%20Train%20Script%20Collection.lua")
addscript(2971329387,"Current Game", "Cook Burgers Fridge and Freezer door spammer", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Cook%20Burgers%20Fridge%20and%20Freezer%20door%20spammer.lua")
addscriptexist(189707, "Natural Disaster Survival Hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Natural%20Disaster%20Survival%20Hub.lua")
addscript(2210085102,"Current Game", "Naval Warfare Hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Naval%20Warfare%20Hub.lua")
addscriptexist(335760407, "Street Soccer Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Street%20Soccer%20Script.lua")
addscript(5972698540,"Current Game", "Easy Obby TP Menu", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Easy%20Obby%20TP%20Menu.lua")
addscriptexist(3956818381, "Obscure Hub 45+ GAMES", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Obscure%20Hub%20%20GAMES.lua")
addscriptexist(537413528, "Build A Boat For Treasure Gui", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Build%20A%20Boat%20For%20Treasure%20Gui.lua")
addscript(10462101644,"Current Game", "Tall Man Run script Read desc", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Tall%20Man%20Run%20script%20Read%20desc.lua")
addscriptuniversal("Phantom Forces | Knife Aura [Open Source]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20%20Knife%20Aura%20Open%20Source.lua")
addscript(6590798593,"Current Game", "#1 Waterloo At Home GUI", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Waterloo%20At%20Home%20GUI.lua")
addscriptexist(2753915549, "Devil Fruit Farm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Devil%20Fruit%20Farm.lua")
addscript(5766084948,"Current Game", "Scp: The Red Lake", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Scp%20The%20Red%20Lake.lua")
addscript(11736744212,"Current Game", "MinersCraft GUI: Includes Killaura, Bhop, Xray, Infinite Jump & More!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MinersCraft%20GUI%20Includes%20Killaura%20Bhop%20Xray%20Infinite%20Jump%20%20More.lua")
addscriptuniversal("School of Hierarchy [Mob Farm | Boxes Farm | Potential Script | No Cooldown ETC]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/School%20of%20Hierarchy%20Mob%20Farm%20%20Boxes%20Farm%20%20Potential%20Script%20%20No%20Cooldown%20ETC.lua")
addscriptuniversal("Phantom Forces | Silent Aim [Open Source]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20%20Silent%20Aim%20Open%20Source.lua")
addscript(6048573718,"Current Game", "POSX - MOST ADVANCED TELEPORT GENERATOR", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/POSX%20%20MOST%20ADVANCED%20TELEPORT%20GENERATOR.lua")
addscriptexist(11866253403, "Ragdoll Jump Race OP Gui", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ragdoll%20Jump%20Race%20OP%20Gui.lua")
addscriptexist(6679968919, "Fly Race Gui OP Auto Farm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Fly%20Race%20Gui%20OP%20Auto%20Farm.lua")
addscriptuniversal("Ohio. [Money Farm | Collect Items | Fly | Noclip ETC]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ohio%20Money%20Farm%20%20Collect%20Items%20%20Fly%20%20Noclip%20ETC.lua")
addscriptexist(2753915549, "Blox Fruit Skays Hub [Early Beta]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruit%20Skays%20Hub%20Early%20Beta.lua")
addscriptexist(11729688377, "Cheaters Hub | Booga Booga [REBORN]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Cheaters%20Hub%20%20Booga%20Booga%20REBORN.lua")
addscriptexist(730951264, "OP The Maze GUI", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20The%20Maze%20GUI.lua")
addscript(21532277,"Current Game", "⭐ #1 Notoriety Autofarm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20%20Notoriety%20Autofarm.lua")
addscriptexist(11040063484, "⭐OP Sword Fightining Simulator GUI", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20Sword%20Fightining%20Simulator%20GUI.lua")
addscriptexist(8908228901, "⭐OP Sharkbite GUI", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20Sharkbite%20GUI.lua")
addscript(4410049285,"Current Game", "⭐OP Universal Car Modifier", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20Universal%20Car%20Modifier.lua")
addscript(6918802270,"Current Game", "First Script Ever Project New World", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/First%20Script%20Ever%20Project%20New%20World.lua")
addscriptexist(1537690962, "Universal Notes script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Notes%20script.lua")
addscript(11656036986,"Current Game", "CrossHub - make roblox games to become rich and famous [Christmas Update]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CrossHub%20%20make%20roblox%20games%20to%20become%20rich%20and%20famous%20Christmas%20Update.lua")
addscriptexist(6516141723, "DOORS OP GUI Hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORS%20OP%20GUI%20Hub.lua")
addscriptexist(9498006165, "Celestial Hub 30+ GAMES", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Celestial%20Hub%20%20GAMES.lua")
addscriptexist(2753915549, "BLOX FRUITS CHEST FARM GET FAST BELI I SERVERHOP", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BLOX%20FRUITS%20CHEST%20FARM%20GET%20FAST%20BELI%20I%20SERVERHOP.lua")
addscriptexist(142823291, "⭐Murder Mystery 2 GUI Autofarm, Godmode, Kill All, Silent Aim, And More", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Murder%20Mystery%20%20GUI%20Autofarm%20Godmode%20Kill%20All%20Silent%20Aim%20And%20More.lua")
addscript(8069117419,"Current Game", "Demon Soul Simulator: AutoFarm. AutoSoul. Teleports.", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Demon%20Soul%20Simulator%20AutoFarm%20AutoSoul%20Teleports.lua")
addscriptexist(286090429, "Arsenal Script AIMBOT ESP ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arsenal%20Script%20AIMBOT%20ESP%20.lua")
addscript(9586878618,"Current Game", "Inazuma Rebirth [Money Farm | Level Farm | Speed Farm | Stamina Farm | Dribble Farm]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Inazuma%20Rebirth%20Money%20Farm%20%20Level%20Farm%20%20Speed%20Farm%20%20Stamina%20Farm%20%20Dribble%20Farm.lua")
addscript(2768379856,"Current Game", "⭐ #1 SCP-3008 GUI", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20%20SCP%20GUI.lua")
addscriptexist(4616652839, "New Shindo Life Script Platinium Hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/New%20Shindo%20Life%20Script%20Platinium%20Hub.lua")
addscriptexist(11040063484, "Sword Fighters Simulator Script Auto Raids and Dungeons Platinium Hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Sword%20Fighters%20Simulator%20Script%20Auto%20Raids%20and%20Dungeons%20Platinium%20Hub.lua")
addscriptexist(4483381587, "Galaxy Hub | 20+ Supported Games", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Galaxy%20Hub%20%20%20Supported%20Games.lua")
addscript(1340132428,"Current Game", "#1 Armored Patrol GUI V3", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Armored%20Patrol%20GUI%20V.lua")
addscript(10118559731,"Current Game", "Shindai - Nicos Nextbots and more", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Shindai%20%20Nicos%20Nextbots%20and%20more.lua")
addscript(7525610732,"Current Game", "Best kaizen script out there", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Best%20kaizen%20script%20out%20there.lua")
addscriptexist(11656036986, "CrossHub - make roblox games to become rich and famous [New Version]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CrossHub%20%20make%20roblox%20games%20to%20become%20rich%20and%20famous%20New%20Version.lua")
addscript(10967799786,"Current Game", "Pet Lifting Simulator OP Script ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pet%20Lifting%20Simulator%20OP%20Script%20.lua")
addscriptexist(8540346411, "Rebirth Champions X Script Finish the game in a minute", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rebirth%20Champions%20X%20Script%20Finish%20the%20game%20in%20a%20minute.lua")
addscriptexist(142823291, "Eclipse Hub UNIVERSAL 10+ Games Supported KICK, BLIND, RESET, ALL IN MM2", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Eclipse%20Hub%20UNIVERSAL%20%20Games%20Supported%20KICK%20BLIND%20RESET%20ALL%20IN%20MM.lua")
addscript(10914683361,"Current Game", "Instant Order & Instant Serve Busy Business", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Instant%20Order%20%20Instant%20Serve%20Busy%20Business.lua")
addscriptexist(2753915549, "Netna hub GUI Insane auto farm and more", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Netna%20hub%20GUI%20Insane%20auto%20farm%20and%20more.lua")
addscriptexist(292439477, "Phantom Forces script Insane", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20script%20Insane.lua")
addscriptexist(2753915549, "Playback hub insane bloxfruit gui", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Playback%20hub%20insane%20bloxfruit%20gui.lua")
addscriptexist(2727067538, "World Zero Script | Twist GUI - Kill Aura, Auto Farm & MUCH MORE!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/World%20Zero%20Script%20%20Twist%20GUI%20%20Kill%20Aura%20Auto%20Farm%20%20MUCH%20MORE.lua")
addscriptexist(2753915549, "Space Hub INSANE GUI", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Space%20Hub%20INSANE%20GUI.lua")
addscript(5956785391,"Current Game", "INSANE PROJECT SLAYERS FREE SCRIPT", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/INSANE%20PROJECT%20SLAYERS%20FREE%20SCRIPT.lua")
addscriptexist(286090429, "Dark hub insane gui", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Dark%20hub%20insane%20gui.lua")
addscriptexist(286090429, "OP Zyrex Hub for aresenal", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20Zyrex%20Hub%20for%20aresenal.lua")
addscript(11330149751,"Current Game", "Making Scam Calls To Save Your Best Friend Tycoon Autofarm Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Making%20Scam%20Calls%20To%20Save%20Your%20Best%20Friend%20Tycoon%20Autofarm%20Script.lua")
addscript(11445923563,"Current Game", "Fixed One Fruit Simulator Best Script Keyless ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Fixed%20One%20Fruit%20Simulator%20Best%20Script%20Keyless%20.lua")
addscript(9601565001,"Current Game", "OP Car Crash System", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20Car%20Crash%20System.lua")
addscriptexist(4913581664, "OP Cart Ride Script READ DESC", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20Cart%20Ride%20Script%20READ%20DESC.lua")
addscriptexist(2753915549, "Blox Fruits Best Autofarm script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruits%20Best%20Autofarm%20script.lua")
addscriptexist(2788229376, "Nova Gui v3 | OP | FREE | DA HOOD", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Nova%20Gui%20v%20%20OP%20%20FREE%20%20DA%20HOOD.lua")
addscript(13822889,"Current Game", "MoonShine - Lumber Tycoon 2", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MoonShine%20%20Lumber%20Tycoon%20.lua")
addscript(10598587051,"Current Game", "Anime Clicker Fight | Cefrus Hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Anime%20Clicker%20Fight%20%20Cefrus%20Hub.lua")
addscriptexist(189707, "Natural Disaster Survival: AutoFarm, Choose Map, Visuals", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Natural%20Disaster%20Survival%20AutoFarm%20Choose%20Map%20Visuals.lua")
addscriptexist(11330149751, "Best making scam calls to save your best friend tycoon script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Best%20making%20scam%20calls%20to%20save%20your%20best%20friend%20tycoon%20script.lua")
addscriptexist(7056922815, "Reaper 2 - AutoFarm, AutoQuest, Teleports", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Reaper%20%20%20AutoFarm%20AutoQuest%20Teleports.lua")
addscriptexist(8054462345, "Goodwill - Michaels Zombies", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Goodwill%20%20Michaels%20Zombies.lua")
addscriptuniversal("Kapspire Admin Roblox Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Kapspire%20Admin%20Roblox%20Script.lua")
addscript(2772610559,"Current Game", "Farming and Friends Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Farming%20and%20Friends%20Script.lua")
addscriptexist(11063612131, "Every Second You Get +1 Jump Power | nihub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Every%20Second%20You%20Get%20%20Jump%20Power%20%20nihub.lua")
addscriptexist(10598587051, "Anime Clicker Fight ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Anime%20Clicker%20Fight%20.lua")
addscriptexist(286090429, "Arsenal Script | Silent Aimbot, ESP, Kill Aura, Gun Mods and more!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arsenal%20Script%20%20Silent%20Aimbot%20ESP%20Kill%20Aura%20Gun%20Mods%20and%20more.lua")
addscriptuniversal("Blacksite Zeta Script | Gun Mods and more!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blacksite%20Zeta%20Script%20%20Gun%20Mods%20and%20more.lua")
addscriptuniversal("Illusion Aimblox Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Illusion%20Aimblox%20Script.lua")
addscript(10404327868,"Current Game", "Timber Champions Best Keyless script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Timber%20Champions%20Best%20Keyless%20script.lua")
addscriptexist(286090429, "mopsHub | 12+ Games", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/mopsHub%20%20%20Games.lua")
addscript(8506369721,"Current Game", "Dig To China AUTO FARM + AUTO REBIRTH & MORE!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Dig%20To%20China%20AUTO%20FARM%20%20AUTO%20REBIRTH%20%20MORE.lua")
addscriptexist(2809202155, "YBA Op Shiny Farm script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/YBA%20Op%20Shiny%20Farm%20script.lua")
addscriptexist(11063612131, " Every Second You Get +1 Jump Power AUTO FARM + AUTO REBIRTH & MORE!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Every%20Second%20You%20Get%20%20Jump%20Power%20AUTO%20FARM%20%20AUTO%20REBIRTH%20%20MORE.lua")
addscriptexist(8540346411, "OPEN SOURCE! | KYLEES HUB | Rebirth Champions X! | 100M EVENT!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OPEN%20SOURCE%20%20KYLEES%20HUB%20%20Rebirth%20Champions%20X%20%20M%20EVENT.lua")
addscriptexist(606849621, "ICE TRAY V3 JAILBREAK SCRIPT", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ICE%20TRAY%20V%20JAILBREAK%20SCRIPT.lua")
addscriptexist(4483381587, "Platinium Hub Universal Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Platinium%20Hub%20Universal%20Script.lua")
addscriptexist(11445923563, "One Fruit Simulator Op Script Keyless", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/One%20Fruit%20Simulator%20Op%20Script%20Keyless.lua")
addscriptexist(9224601490, "Auto Farm your fruit get gems easily", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Auto%20Farm%20your%20fruit%20get%20gems%20easily.lua")
addscriptuniversal("Crips Gaming Chair [Discontinued]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Crips%20Gaming%20Chair%20Discontinued.lua")
addscriptuniversal("Hydrogen Executor For Android & MacOS", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Hydrogen%20Executor%20For%20Android%20%20MacOS.lua")
addscript(4671928756,"Current Game", "WEBHOOK TOOLS - UNIVERSAL SCRIPT", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/WEBHOOK%20TOOLS%20%20UNIVERSAL%20SCRIPT.lua")
addscriptexist(10925589760, "Merge Simulator AUTO MERGE - AUTO BUY UPGRADES & MORE!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Merge%20Simulator%20AUTO%20MERGE%20%20AUTO%20BUY%20UPGRADES%20%20MORE.lua")
addscript(9551640993,"Current Game", "Mining Simulator 2 AUTO DELIVER GIFTS & MORE!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Mining%20Simulator%20%20AUTO%20DELIVER%20GIFTS%20%20MORE.lua")
addscript(11346342371,"Current Game", " making memes in your basement at 3 AM tycoon AUTO FARM - AUTO ENCOURAGE & MORE!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20making%20memes%20in%20your%20basement%20at%20%20AM%20tycoon%20AUTO%20FARM%20%20AUTO%20ENCOURAGE%20%20MORE.lua")
addscriptexist(8540346411, "Rebirth Champions X AUTO FARMING & MORE! FREE GUI SCRIPT", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rebirth%20Champions%20X%20AUTO%20FARMING%20%20MORE%20FREE%20GUI%20SCRIPT.lua")
addscriptexist(10404327868, "Timber Champions AUTO FARM - AUTO COLLECT ORBS + CHESTS & MORE!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Timber%20Champions%20AUTO%20FARM%20%20AUTO%20COLLECT%20ORBS%20%20CHESTS%20%20MORE.lua")
addscriptexist(4483381587, "Distic Hub || Mobile Script Hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Distic%20Hub%20%20Mobile%20Script%20Hub.lua")
addscriptexist(9872472334, "Evade Halloween Ticket Autofarm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Evade%20Halloween%20Ticket%20Autofarm.lua")
addscript(5780309044,"Current Game", "Stands Awakening Dupe Method + Script!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Stands%20Awakening%20Dupe%20Method%20%20Script.lua")
addscriptexist(2788229376, "Working Da Hood Crash BetterDaHood BDH", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Working%20Da%20Hood%20Crash%20BetterDaHood%20BDH.lua")
addscriptexist(8884433153, "Collect All Pets Auto Farm Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Collect%20All%20Pets%20Auto%20Farm%20Script.lua")
addscriptexist(4282985734, "Combat Warriors hitbox extender script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Combat%20Warriors%20hitbox%20extender%20script.lua")
addscriptexist(8726743209, "Refinery Caves Auto Sell Ores Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Refinery%20Caves%20Auto%20Sell%20Ores%20Script.lua")
addscriptexist(8726743209, "Refinery Caves Purple Tree Finder Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Refinery%20Caves%20Purple%20Tree%20Finder%20Script.lua")
addscriptexist(3214114884, "Flag Wars Kill All Money Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Flag%20Wars%20Kill%20All%20Money%20Script.lua")
addscriptexist(9992339729, "Longest Answer Wins Auto answer OP script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Longest%20Answer%20Wins%20Auto%20answer%20OP%20script.lua")
addscriptexist(4872321990, "Islands Auto Harvest Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Islands%20Auto%20Harvest%20Script.lua")
addscript(5993942214,"Current Game", "Rush Point Skin Changer Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rush%20Point%20Skin%20Changer%20Script.lua")
addscript(2039118386,"Current Game", "Neighborhood war silent aimbot script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Neighborhood%20war%20silent%20aimbot%20script.lua")
addscriptexist(1224212277, "Mad City Unpatched Kill All Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Mad%20City%20Unpatched%20Kill%20All%20Script.lua")
addscript(10895555747,"Current Game", "Walmart Land Infinite Tokens Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Walmart%20Land%20Infinite%20Tokens%20Script.lua")
addscriptexist(2788229376, "OP Da Hood Speed Bypass CFrame Speed", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20Da%20Hood%20Speed%20Bypass%20CFrame%20Speed.lua")
addscript(10836305188,"Current Game", "FALL [Impossible] Script v1", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FALL%20Impossible%20Script%20v.lua")
addscriptexist(2753915549, "Blox Fruit HoHo Hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruit%20HoHo%20Hub.lua")
addscript(9585537847,"Current Game", "Shadovis Rpg Cheat Menu", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Shadovis%20Rpg%20Cheat%20Menu.lua")
addscriptexist(4483381587, "GalaxyHub - Free Hub 14+ Games", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GalaxyHub%20%20Free%20Hub%20%20Games.lua")
addscript(9431770682,"Current Game", "Lost Rooms Script ESP, Fly, Farm and More", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Lost%20Rooms%20Script%20ESP%20Fly%20Farm%20and%20More.lua")
addscript(7728848215,"Current Game", "Slashing Simulator ScriptAuto Farm, Auto Sell, Teleports, Auto Eggs & More", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Slashing%20Simulator%20ScriptAuto%20Farm%20Auto%20Sell%20Teleports%20Auto%20Eggs%20%20More.lua")
addscript(6953291455,"Current Game", "Eating Simulator ScriptAuto Farm, Auto Sell, Teleports, Ranks & More", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Eating%20Simulator%20ScriptAuto%20Farm%20Auto%20Sell%20Teleports%20Ranks%20%20More.lua")
addscript(8884334497,"Current Game", "Celestial Hub 30+ Supported Games", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Celestial%20Hub%20%20Supported%20Games.lua")
addscript(9285238704,"Current Game", "Race Clicker Fastest Auto Win & Server Hop", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Race%20Clicker%20Fastest%20Auto%20Win%20%20Server%20Hop.lua")
addscript(10047913840,"Current Game", "Training Simulator Script Auto Farm, AutoEgg, Teleports & More", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Training%20Simulator%20Script%20Auto%20Farm%20AutoEgg%20Teleports%20%20More.lua")
addscript(8328351891,"Current Game", "Mega Mansion Tycoon Gui", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Mega%20Mansion%20Tycoon%20Gui.lua")
addscriptexist(142823291, "Brand New Murder Mystery 2 GUI", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Brand%20New%20Murder%20Mystery%20%20GUI.lua")
addscriptexist(292439477, "Roblox Universal No Recoil Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Roblox%20Universal%20No%20Recoil%20Script.lua")
addscriptexist(9585537847, "Shadovis RPG Kill Aura Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Shadovis%20RPG%20Kill%20Aura%20Script.lua")
addscriptexist(8054462345, "Michaels Zombies Script Kill Aura, Noclip, No Reload...", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Michaels%20Zombies%20Script%20Kill%20Aura%20Noclip%20No%20Reload.lua")
addscript(4951858512,"Current Game", "Victory Race Autofarm Wins", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Victory%20Race%20Autofarm%20Wins.lua")
addscript(4733278992,"Current Game", "Sword Blox Online Kill Aura Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Sword%20Blox%20Online%20Kill%20Aura%20Script.lua")
addscriptexist(7305309231, "Taxi Boss Auto Farm Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Taxi%20Boss%20Auto%20Farm%20Script.lua")
addscript(7127407851,"Current Game", "Attack on Titan: Evolution GUI | Always Nape, Speed Bypass", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Attack%20on%20Titan%20Evolution%20GUI%20%20Always%20Nape%20Speed%20Bypass.lua")
addscript(8304191830,"Current Game", "Anime Adventures GUI | Auto Farm, Auto Merchant & MORE", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Anime%20Adventures%20GUI%20%20Auto%20Farm%20Auto%20Merchant%20%20MORE.lua")
addscriptexist(4490140733, "My Restaurant OP Auto Farm | Make Money Fast", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/My%20Restaurant%20OP%20Auto%20Farm%20%20Make%20Money%20Fast.lua")
addscriptexist(9498006165, "Tapping Simulator GUI | SKIP SHINY STAGE *OP*", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Tapping%20Simulator%20GUI%20%20SKIP%20SHINY%20STAGE%20OP.lua")
addscriptexist(6872265039, "Roblox Bedwars Script VAPE V4 + Config!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Roblox%20Bedwars%20Script%20VAPE%20V%20%20Config.lua")
addscript(9840387028,"Current Game", "Era Of Althea Script GUI | Auto Farm, Auto Quest & MORE", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Era%20Of%20Althea%20Script%20GUI%20%20Auto%20Farm%20Auto%20Quest%20%20MORE.lua")
addscript(6468323505,"Current Game", "Anime Warriors Script GUI | God Mode, Auto Farm & MORE", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Anime%20Warriors%20Script%20GUI%20%20God%20Mode%20Auto%20Farm%20%20MORE.lua")
addscriptexist(6468323505, "Spellbound Infinite Money Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Spellbound%20Infinite%20Money%20Script.lua")
addscriptexist(1224212277, "Mad City: Chapter 2 | Fast Auto Rob With Server Hop", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Mad%20City%20Chapter%20%20%20Fast%20Auto%20Rob%20With%20Server%20Hop.lua")
addscript(9167501050,"Current Game", "Lightsaber Arena Script | Kill Aura, Auto Block & MORE", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Lightsaber%20Arena%20Script%20%20Kill%20Aura%20Auto%20Block%20%20MORE.lua")
addscript(1899149341,"Current Game", "Vehicle Tycoon Script | Collect All Gifts", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Vehicle%20Tycoon%20Script%20%20Collect%20All%20Gifts.lua")
addscript(3840352284,"Current Game", "Volleyball | No Line-Fault script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Volleyball%20%20No%20LineFault%20script.lua")
addscriptexist(8054462345, "Michaels Zombies Script | Always Headshot & Insta Reload", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Michaels%20Zombies%20Script%20%20Always%20Headshot%20%20Insta%20Reload.lua")
addscriptexist(6284583030, "Pet Simulator X ! Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pet%20Simulator%20X%20%20Script.lua")
addscript(3686253681,"Current Game", "Planet simulator | Insanely Fast Auto Farm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Planet%20simulator%20%20Insanely%20Fast%20Auto%20Farm.lua")
addscript(8950974597,"Current Game", "Anime Speed Simulator | Gui", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Anime%20Speed%20Simulator%20%20Gui.lua")
addscript(7180042682,"Current Game", "Military Tycoon | LASER TRUCK event farm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Military%20Tycoon%20%20LASER%20TRUCK%20event%20farm.lua")
addscriptexist(5993942214, "Rush point Script | Silent Aim, No Recoil", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rush%20point%20Script%20%20Silent%20Aim%20No%20Recoil.lua")
addscriptexist(5956785391, "Project Slayers Script | INFINITE WEN, Boss Farm & MORE", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Project%20Slayers%20Script%20%20INFINITE%20WEN%20Boss%20Farm%20%20MORE.lua")
addscript(596894229,"Current Game", "Elemental Adventure Script | Auto XP Farm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Elemental%20Adventure%20Script%20%20Auto%20XP%20Farm.lua")
addscriptexist(6678877691, "ZO SAMURAI SCRIPT | Insane Features, Anti Cheat Bypass", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZO%20SAMURAI%20SCRIPT%20%20Insane%20Features%20Anti%20Cheat%20Bypass.lua")
addscript(6677985923,"Current Game", "[UPDATED] Millionaire Empire Tycoon | Infinite Money!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UPDATED%20Millionaire%20Empire%20Tycoon%20%20Infinite%20Money.lua")
addscript(5201039691,"Current Game", "Tatakai V.2 Script | Money Farm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Tatakai%20V%20Script%20%20Money%20Farm.lua")
addscript(7026949294,"Current Game", "Sword Simulator Script | Auto Farm, Auto Eggs & MORE!!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Sword%20Simulator%20Script%20%20Auto%20Farm%20Auto%20Eggs%20%20MORE.lua")
addscriptexist(13822889, "Lumber Tycoon 2 Script | Dazed X", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Lumber%20Tycoon%20%20Script%20%20Dazed%20X.lua")
addscriptexist(6284583030, "LKHUB | Insane Script Hub For Multiple Games", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LKHUB%20%20Insane%20Script%20Hub%20For%20Multiple%20Games.lua")
addscript(4832438542, "Current Game","VR Hands: Gun Mod", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VR%20Hands%20Gun%20Mod.lua")

addscriptexist(537413528, "Build A Boat For Treasure: AutoFarm Gold", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Build%20A%20Boat%20For%20Treasure%20AutoFarm%20Gold.lua")

addscript(9761112321, "Current Game","Survival Bruno the Encanto Movie Killer: Admin Cmds", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Survival%20Bruno%20the%20Encanto%20Movie%20Killer%20Admin%20Cmds.lua")

addscriptuniversal("Universal Webhook Manager", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Webhook%20Manager.lua")

addscriptexist(9872472334, "Evade: Auto Win, Auto Farm Valentines", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Evade%20Auto%20Win%20Auto%20Farm%20Valentines.lua")

addscriptexist(1554960397, "Car Dealership Tycoon: Walkspeed, Jump Power, Teleports", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Car%20Dealership%20Tycoon%20Walkspeed%20Jump%20Power%20Teleports.lua")

addscript(9733390246, "Current Game","Stair Tappers: Auto Tap", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Stair%20Tappers%20Auto%20Tap.lua")

addscript(914010731, "Current Game","Ro-Ghoul: Auto Skills, Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoGhoul%20Auto%20Skills%20Auto%20Farm.lua")

addscriptexist(3527629287, "Big Paintball: Kill All, Fly, Esp", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Big%20Paintball%20Kill%20All%20Fly%20Esp.lua")

addscriptexist(370731277, "MeepCity: Teleports, Rejoin, Big Head", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/MeepCity%20Teleports%20Rejoin%20Big%20Head.lua")

addscriptexist(3272915504, "Arcane Odyssey: Kill Aura, Chest Farm, Auto Farm Pirates", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arcane%20Odyssey%20Kill%20Aura%20Chest%20Farm%20Auto%20Farm%20Pirates.lua")

addscriptexist(662417684, "LUCKY BLOCKS Battlegrounds: Teleports, Get Blocks & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LUCKY%20BLOCKS%20Battlegrounds%20Teleports%20Get%20Blocks%20%20More.lua")

addscriptexist(3297964905, "Weaponry [beta]: Kill All, Movement Modifiers, Esp", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Weaponry%20beta%20Kill%20All%20Movement%20Modifiers%20Esp.lua")

addscriptexist(8908228901, "SharkBite 2: Gun Mod, Auto Farm, Firerate", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SharkBite%20%20Gun%20Mod%20Auto%20Farm%20Firerate.lua")

addhub("Frightened Hub: 2 Games", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Frightened%20Hub%20%20Games.lua")

addscriptexist(648362523, "Breaking Point: FullBright, Aimbot, WallCheck & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Breaking%20Point%20FullBright%20Aimbot%20WallCheck%20%20More.lua")

addscriptuniversal("Universal FE Ravager", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20FE%20Ravager.lua")

addscriptexist(2753915549, "Blox Fruits: Auto Raid, Farm & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruits%20Auto%20Raid%20Farm%20%20More.lua")

addscript(141084271, "Current Game","Rise of the Dead: Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rise%20of%20the%20Dead%20Auto%20Farm.lua")

addscriptexist(142823291, "Murder Mystery 2: Esp, Infinity Jumps, Fake Knife", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Murder%20Mystery%20%20Esp%20Infinity%20Jumps%20Fake%20Knife.lua")

addscript(11258371342, "Current Game","PacSun Los Angeles Tycoon: Auto Build, Auto ATM, Ws", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PacSun%20Los%20Angeles%20Tycoon%20Auto%20Build%20Auto%20ATM%20Ws.lua")

addscript(3095204897, "Current Game","Isle: Infinite capacity, Collect All, Automatic hack", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Isle%20Infinite%20capacity%20Collect%20All%20Automatic%20hack.lua")

addscript(3279760276, "Current Game","Chechnya 1994: Loop Kill All", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Chechnya%20%20Loop%20Kill%20All.lua")

addscriptexist(6516141723, "DOORS: Notification, Esp, Skip Level", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORS%20Notification%20Esp%20Skip%20Level.lua")

addscriptexist(9551640993, "Mining Simulator 2: Auto Sell, Auto Mine & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Mining%20Simulator%20%20Auto%20Sell%20Auto%20Mine%20%20More.lua")

addhub("V.G Hub: 140+ Games", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VG%20Hub%20%20Games.lua")

addscriptexist(286090429, "Arsenal: Aimbot, Silent Aim, Gun Mods", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arsenal%20Aimbot%20Silent%20Aim%20Gun%20Mods.lua")

addscriptexist(2788229376, "Da Hood: Aimlock, Cash Tools, Trolling", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Da%20Hood%20Aimlock%20Cash%20Tools%20Trolling.lua")

addscript(10673860069, "Current Game","Horse Racing Club: Inf Money, Auto Win Race & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Horse%20Racing%20Club%20Inf%20Money%20Auto%20Win%20Race%20%20More.lua")

addscriptexist(142823291, "Murder Mystery 2: God Mode, Auto Farm, Invisible", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Murder%20Mystery%20%20God%20Mode%20Auto%20Farm%20Invisible.lua")

addscriptuniversal("Universal: Chat Bypasser, ForRealium Keyless", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Chat%20Bypasser%20ForRealium%20Keyless.lua")

addscript(2619187362, "Current Game","Super Power Fighting Simulator: Auto Farm, Anit Afk", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Super%20Power%20Fighting%20Simulator%20Auto%20Farm%20Anit%20Afk.lua")

addscriptexist(3101667897, "Legends Of Speed: Auto Farm, Auto Race & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Legends%20Of%20Speed%20Auto%20Farm%20Auto%20Race%20%20More.lua")

addscript(8750997647, "Current Game","Tapping Legends X: Auto Tap, Auto Rebirth, Auto Upgrade", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Tapping%20Legends%20X%20Auto%20Tap%20Auto%20Rebirth%20Auto%20Upgrade.lua")

addscriptexist(662417684, "LUCKY BLOCKS Battlegrounds: Get All", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/LUCKY%20BLOCKS%20Battlegrounds%20Get%20All.lua")

addscriptexist(1962086868, "Tower of Hell: Godmode, Bunny Hop, Gravity", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Tower%20of%20Hell%20Godmode%20Bunny%20Hop%20Gravity.lua")

addscript(9737855826, "Current Game","Trade Simulator: Auto Buy", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Trade%20Simulator%20Auto%20Buy.lua")

addscriptexist(2788229376, "Da Hood: Noclip, Aimlock, Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Da%20Hood%20Noclip%20Aimlock%20Auto%20Farm.lua")

addscriptexist(8054462345, "Michael's Zombies: Esp, Knife Aura, Silent Aim", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Michaels%20Zombies%20Esp%20Knife%20Aura%20Silent%20Aim.lua")

addscriptexist(3272915504, "Arcane Odyssey: Kill Aura, Farm Mobs", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arcane%20Odyssey%20Kill%20Aura%20Farm%20Mobs.lua")

addscriptexist(8540346411, "Rebirth Champions X: Auto Click, Auto Rebirth & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rebirth%20Champions%20X%20Auto%20Click%20Auto%20Rebirth%20%20More.lua")

addscriptexist(11542692507, "Anime Souls Simulator: Auto Farm, Auto Kill Raid, Auto Attack", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Anime%20Souls%20Simulator%20Auto%20Farm%20Auto%20Kill%20Raid%20Auto%20Attack.lua")

addscriptexist(7056922815, "Reaper 2: Inf Jumps, Walkspeed, Noclip", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Reaper%20%20Inf%20Jumps%20Walkspeed%20Noclip.lua")

addscriptuniversal("Universal: Teleports GUI", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Teleports%20GUI.lua")

addscriptexist(5780309044, "Stands Awakening: Jumppower, Auto Farm Players, Brightness", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Stands%20Awakening%20Jumppower%20Auto%20Farm%20Players%20Brightness.lua")

addscriptexist(5130598377, "A Universal Time: Teleports, Inf Jump & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/A%20Universal%20Time%20Teleports%20Inf%20Jump%20%20More.lua")

addscript(7232779505, "Current Game","Type Race: AutoFarm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Type%20Race%20AutoFarm.lua")

addscript(10087074695, "Current Game","Knife Strife: Reach, Kill All, Instant Kill", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Knife%20Strife%20Reach%20Kill%20All%20Instant%20Kill.lua")

addscript(9862832367, "Current Game","Never-Ending Cart Ride: Inf Studs", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NeverEnding%20Cart%20Ride%20Inf%20Studs.lua")

addscriptexist(6728870912, "World of Stands: Auto Skills, Auto Farm Player, Chest ESP", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/World%20of%20Stands%20Auto%20Skills%20Auto%20Farm%20Player%20Chest%20ESP.lua")

addscriptexist(2753915549, "Blox Fruits: Fruit Mastery, Auto Farm & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruits%20Fruit%20Mastery%20Auto%20Farm%20%20More.lua")

addscript(4954096313, "Current Game","Field Trip Z: Auto Heal, Esp, God Mode & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Field%20Trip%20Z%20Auto%20Heal%20Esp%20God%20Mode%20%20More.lua")

addscriptexist(7305309231, "Taxi Boss: Anti Afk, Auto Farm, Options", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Taxi%20Boss%20Anti%20Afk%20Auto%20Farm%20Options.lua")

addscript(2581070838, "Current Game","Connect 4: EMP", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Connect%20%20EMP.lua")

addscriptuniversal("Universal FE Eat Self Hats", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20FE%20Eat%20Self%20Hats.lua")

addscriptexist(2753915549, "Blox Fruits: Teleports, Auto Farm & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruits%20Teleports%20Auto%20Farm%20%20More.lua")

addscriptexist(621129760, "Knife Ability Test: Walkspeed, Silent Aim, ESP", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Knife%20Ability%20Test%20Walkspeed%20Silent%20Aim%20ESP.lua")

addscriptexist(10596377987, "Bee Tycoon!: Auto Collect Honey", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Bee%20Tycoon%20Auto%20Collect%20Honey.lua")

addscriptuniversal("Universal: Auto Click", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Auto%20Click.lua")

addscriptexist(4490140733, "My Restaurant: Auto Farm, Teleport", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/My%20Restaurant%20Auto%20Farm%20Teleport.lua")

addscript(11981794711, "Current Game","Color Race: Auto Win, Auto Hatch, Walkspeed", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Color%20Race%20Auto%20Win%20Auto%20Hatch%20Walkspeed.lua")

addscriptexist(443406476, "Project Lazarus: Gun Mod, Free Points, Kill All", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Project%20Lazarus%20Gun%20Mod%20Free%20Points%20Kill%20All.lua")

addscriptexist(2788229376, "Da Hood: Aimbot, Kill Aura, Cash Aura", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Da%20Hood%20Aimbot%20Kill%20Aura%20Cash%20Aura.lua")

addscriptexist(9498006165, "Tapping Simulator: Auto Equip Best Pets, Auto Tap, Teleports", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Tapping%20Simulator%20Auto%20Equip%20Best%20Pets%20Auto%20Tap%20Teleports.lua")

addscriptexist(3956818381, "Ninja Legends: Auto Rebirth, Auto Sell, Auto Swing", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ninja%20Legends%20Auto%20Rebirth%20Auto%20Sell%20Auto%20Swing.lua")

addscriptexist(920587237, "Adopt Me: AutoFarm, Auto Baby", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Adopt%20Me%20AutoFarm%20Auto%20Baby.lua")

addscriptexist(920587237, "Adopt Me: Visual Pets", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Adopt%20Me%20Visual%20Pets.lua")

addscriptexist(537413528, "Build A Boat For Treasure: Server Crasher, Auto Farm, Esp", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Build%20A%20Boat%20For%20Treasure%20Server%20Crasher%20Auto%20Farm%20Esp.lua")

addscriptuniversal("Universal ChatGPT In Roblox", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20ChatGPT%20In%20Roblox.lua")

addscriptexist(537413528, "Build A Boat For Treasure: AutoFarm, Crash Server, Bread", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Build%20A%20Boat%20For%20Treasure%20AutoFarm%20Crash%20Server%20Bread.lua")

addscriptexist(2788229376, "Da Hood: Anit Lock UI", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Da%20Hood%20Anit%20Lock%20UI.lua")

addscriptexist(6516141723, "DOORS: Item Esp, Auto Hide, Fullbright & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORS%20Item%20Esp%20Auto%20Hide%20Fullbright%20%20More.lua")

addhub("Proxima Hub: 10+ Games", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Proxima%20Hub%20%20Games.lua")

addhub("Universal: Fly, Walkspeed, Noclip", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Fly%20Walkspeed%20Noclip.lua")

addscriptexist(6741970382, "Zombie lab: Gun Mod", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Zombie%20lab%20Gun%20Mod.lua")

addscriptexist(3956818381, "Ninja Legends: Auto Sell, Auto Swing & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ninja%20Legends%20Auto%20Sell%20Auto%20Swing%20%20More.lua")

addscript(3851622790, "Current Game","Break In (Story): Teleports, Auto Hit Bad Guys, Befriend Cat", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Break%20In%20Story%20Teleports%20Auto%20Hit%20Bad%20Guys%20Befriend%20Cat.lua")

addscript(9819654737, "Current Game","Raise A Sonic: Auto Collect, Auto Click, Poor Aura", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Raise%20A%20Sonic%20Auto%20Collect%20Auto%20Click%20Poor%20Aura.lua")

addscript(9655469250, "Current Game","EarthScape Tycoon: AutoFarm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EarthScape%20Tycoon%20AutoFarm.lua")

addscriptexist(6735572261, "Pilgrammed: Auto Farm Mobs", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pilgrammed%20Auto%20Farm%20Mobs.lua")

addscriptexist(2753915549, "Blox Fruits: Auto Farm Level, Kill Aura & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruits%20Auto%20Farm%20Level%20Kill%20Aura%20%20More.lua")

addscriptexist(205224386, "Hide and Seek Extreme: ESP, Auto Win, Collect Coins", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Hide%20and%20Seek%20Extreme%20ESP%20Auto%20Win%20Collect%20Coins.lua")

addhub("NiFox Hub: 3+ Games", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NiFox%20Hub%20%20Games.lua")

addscript(11227688003, "Current Game","Every Second You Get Smarter: Auto Collect", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Every%20Second%20You%20Get%20Smarter%20Auto%20Collect.lua")

addscript(6356806222, "Current Game","Lag Test 2021: Anti Lag", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Lag%20Test%20%20Anti%20Lag.lua")

addscript(6938803436, "Current Game","Anime Dimensions Simulator: Auto Raid, Auto Win", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Anime%20Dimensions%20Simulator%20Auto%20Raid%20Auto%20Win.lua")

addscript(10027379988, "Current Game","Sheep Farm: Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Sheep%20Farm%20Auto%20Farm.lua")

addscriptexist(11582083063, "Piece Adventures Simulator: Auto Skill, Auto Farm, Auto Collect & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Piece%20Adventures%20Simulator%20Auto%20Skill%20Auto%20Farm%20Auto%20Collect%20%20More.lua")

addscript(445664957, "Current Game","Parkour: Free Gamepasses, Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Parkour%20Free%20Gamepasses%20Auto%20Farm.lua")

addscriptexist(6741970382, "Zombie lab: Anti Cheat Bypass, Cure Giver, Virus Giver", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Zombie%20lab%20Anti%20Cheat%20Bypass%20Cure%20Giver%20Virus%20Giver.lua")

addscript(2929719084, "Current Game","F3X Islands: tntmasters SS", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FX%20Islands%20tntmasters%20SS.lua")

addscriptexist(6679968919, "Fly Race: Walkspeed, Jump Power, Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Fly%20Race%20Walkspeed%20Jump%20Power%20Auto%20Farm.lua")

addscriptexist(920587237, "Adopt Me: Auto Buy, Auto Trade, Jumppower", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Adopt%20Me%20Auto%20Buy%20Auto%20Trade%20Jumppower.lua")

addhub("Speed X Hub: 10+ Games", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Speed%20X%20Hub%20%20Games.lua")

addscriptexist(6516141723, "DOORS: Auto Skip Levels, Fullbright, Skip Level", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORS%20Auto%20Skip%20Levels%20Fullbright%20Skip%20Level.lua")

addscriptexist(6284583030, "Pet Simulator X: AutoFarm, Auto Hatch & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pet%20Simulator%20X%20AutoFarm%20Auto%20Hatch%20%20More.lua")

addscript(6353494961, "Current Game","Zombie Arena: Infinity Cash", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Zombie%20Arena%20Infinity%20Cash.lua")

addscriptexist(6516141723, "DOORS: Press Q + Left Mouse click To Give Items", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORS%20Press%20Q%20%20Left%20Mouse%20click%20To%20Give%20Items.lua")

addscriptexist(6284583030, "Pet Simulator X: Pet Sniper", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pet%20Simulator%20X%20Pet%20Sniper.lua")

addscriptexist(4490140733, "My Restaurant: Auto-Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/My%20Restaurant%20AutoFarm.lua")

addscriptexist(6735572261, "Pilgrammed: Fly, Speed & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pilgrammed%20Fly%20Speed%20%20More.lua")

addscriptexist(2788229376, "Da Hood: RTX, Chat Spy, Trash Talk", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Da%20Hood%20RTX%20Chat%20Spy%20Trash%20Talk.lua")

addscript(11815999225, "Current Game","Streak Swords: Admin Panel", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Streak%20Swords%20Admin%20Panel.lua")

addscriptexist(7732789524, "Neo Soccer League: Auto Win", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Neo%20Soccer%20League%20Auto%20Win.lua")

addscriptexist(10875701453, "Edward the Man-Eating Train: Infinity Ammo, Inf Health, Esp", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Edward%20the%20ManEating%20Train%20Infinity%20Ammo%20Inf%20Health%20Esp.lua")

addscript(7378050129, "Current Game","Kill R63 with DOOM music: Infinity Ammo", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Kill%20R%20with%20DOOM%20music%20Infinity%20Ammo.lua")

addscriptexist(12389327869, "Contact: A-888: No Spread, No Recoil, Inf Ammo", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Contact%20A%20No%20Spread%20No%20Recoil%20Inf%20Ammo.lua")

addscriptexist(662417684, "Lucky Block Battlegrounds: Block Select, Hide Name", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Lucky%20Block%20Battlegrounds%20Block%20Select%20Hide%20Name.lua")

addscriptexist(6953291455, "Eating Simulator: Auto-Farm, Auto Sell, Teleports", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Eating%20Simulator%20AutoFarm%20Auto%20Sell%20Teleports.lua")

addscriptexist(11620947043, "Flappy Clicker: Auto Click, Auto Rebirth, Auto Buy Lands", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Flappy%20Clicker%20Auto%20Click%20Auto%20Rebirth%20Auto%20Buy%20Lands.lua")

addscriptexist(9796685905, "Super Hero Race Clicker: Free Gamepasses, Auto Farm Win", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Super%20Hero%20Race%20Clicker%20Free%20Gamepasses%20Auto%20Farm%20Win.lua")

addscriptexist(3297964905, "Weaponry: Auto Kill, Esp, Walkspeed", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Weaponry%20Auto%20Kill%20Esp%20Walkspeed.lua")

addscriptexist(5926001758, "Color Block: Inf Jump, Click TP, Speed Hack", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Color%20Block%20Inf%20Jump%20Click%20TP%20Speed%20Hack.lua")

addscriptuniversal("Universal For Realium Chat Bypasser", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20For%20Realium%20Chat%20Bypasser.lua")

addscriptexist(2548157192, "Funeral Home and Graveyard: Break the Game", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Funeral%20Home%20and%20Graveyard%20Break%20the%20Game.lua")

addscript(7560156054, "Current Game","Clicker Simulator: Auto Hatch Eggs, Auto Rebirth, Auto Tap", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Clicker%20Simulator%20Auto%20Hatch%20Eggs%20Auto%20Rebirth%20Auto%20Tap.lua")

addscriptexist(1962086868, "Tower of Hell: Anti Cheat Bypass, Give Items, Remove Fog", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Tower%20of%20Hell%20Anti%20Cheat%20Bypass%20Give%20Items%20Remove%20Fog.lua")

addscriptuniversal("Universal Chat Modifier", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Chat%20Modifier.lua")

addscriptexist(9825515356, "Hood Customs: Silent Aim, Fly, ESP", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Hood%20Customs%20Silent%20Aim%20Fly%20ESP.lua")

addscriptexist(8540346411, "Rebirth Champions X: Auto Rebirth, Auto Egg, Auto Click", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rebirth%20Champions%20X%20Auto%20Rebirth%20Auto%20Egg%20Auto%20Click.lua")

addscript(6933626061, "Current Game","TLK Prison: Get Items", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TLK%20Prison%20Get%20Items.lua")

addscriptexist(8054462345, "Michael's Zombies: Auto Win", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Michaels%20Zombies%20Auto%20Win.lua")

addscriptexist(10726371567, "Find The Simpsons: Auto Collect", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Find%20The%20Simpsons%20Auto%20Collect.lua")

addscriptexist(155615604, "Prison Life: Keycard Sniper", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Prison%20Life%20Keycard%20Sniper.lua")

addscriptexist(2727067538, "World // Zero: Auto Farm, Noclip, Speed & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/World%20%20Zero%20Auto%20Farm%20Noclip%20Speed%20%20More.lua")

addscriptexist(10455492548, "Побег от а4 адопт ми паркур бэн: Teleport to end/start, Inf jumps", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%D0%9F%D0%BE%D0%B1%D0%B5%D0%B3%20%D0%BE%D1%82%20%D0%B0%20%D0%B0%D0%B4%D0%BE%D0%BF%D1%82%20%D0%BC%D0%B8%20%D0%BF%D0%B0%D1%80%D0%BA%D1%83%D1%80%20%D0%B1%D1%8D%D0%BD%20Teleport%20to%20endstart%20Inf%20jumps.lua")

addscriptexist(1224212277, "Mad City: Infinity Nitro, Teleports & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Mad%20City%20Infinity%20Nitro%20Teleports%20%20More.lua")

addscript(9143982021, "Current Game","Sword Battles: Teleports", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Sword%20Battles%20Teleports.lua")

addscriptexist(2753915549, "Blox Fruits: Fruit Mastery, Farm Gun Mastery, Auto Farm Lvl", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruits%20Fruit%20Mastery%20Farm%20Gun%20Mastery%20Auto%20Farm%20Lvl.lua")

addscript(147848991, "Current Game","Be A Parkour Ninja: Hitbox", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Be%20A%20Parkour%20Ninja%20Hitbox.lua")

addscriptexist(142823291, "Murder Mystery 2: Esp, Teleports, Kill Sheriff", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Murder%20Mystery%20%20Esp%20Teleports%20Kill%20Sheriff.lua")

addscript(3725149043, "Current Game","Super Doomspire: Inf Jump", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Super%20Doomspire%20Inf%20Jump.lua")

addscriptuniversal("Universal Animation Speed-Inator", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Animation%20SpeedInator.lua")

addscriptexist(5989426850, "Transfur Infection 2: Walk Through Kill Barriers", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Transfur%20Infection%20%20Walk%20Through%20Kill%20Barriers.lua")

addscript(12166287786, "Current Game","+1 Fat Every Second: Auto Rebirth, Auto Win, Walkspeed", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Fat%20Every%20Second%20Auto%20Rebirth%20Auto%20Win%20Walkspeed.lua")

addscript(11162791099, "Current Game","Free Hatchers: Auto Eggs, Auto Rebirth, Auto Equip Best", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Free%20Hatchers%20Auto%20Eggs%20Auto%20Rebirth%20Auto%20Equip%20Best.lua")

addscriptexist(4282985734, "Combat Warriors: Silent Aim, Auto Parry & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Combat%20Warriors%20Silent%20Aim%20Auto%20Parry%20%20More.lua")

addscriptexist(2753915549, "Blox Fruits: Auto Stats, Teleports, Aimbot", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruits%20Auto%20Stats%20Teleports%20Aimbot.lua")

addscriptexist(537413528, "Build A Boat For Treasure: Morph, Teleports, Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Build%20A%20Boat%20For%20Treasure%20Morph%20Teleports%20Auto%20Farm.lua")

addscript(970962039, "Current Game","Limited Time: Sign Bot", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Limited%20Time%20Sign%20Bot.lua")

addscript(29812337, "Current Game","Framed: Aim Lock, FOV, Esp", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Framed%20Aim%20Lock%20FOV%20Esp.lua")

addscriptexist(537413528, "Build A Boat For Treasure: Walkspeed, Teleports & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Build%20A%20Boat%20For%20Treasure%20Walkspeed%20Teleports%20%20More.lua")

addscript(10894722579, "Current Game","Feed The Noob Tycoon: Auto Sell, Auto Collect, Auto Buy & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Feed%20The%20Noob%20Tycoon%20Auto%20Sell%20Auto%20Collect%20Auto%20Buy%20%20More.lua")

addscriptexist(12996397, "Mega Fun Obby: Auto Rebirth, Auto Farm & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Mega%20Fun%20Obby%20Auto%20Rebirth%20Auto%20Farm%20%20More.lua")

addscript(4580204640, "Current Game","Survive the Killer: Loot Aura, Teleports, Remove Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Survive%20the%20Killer%20Loot%20Aura%20Teleports%20Remove%20Farm.lua")

addscriptexist(893973440, "Flee the Facility: Anti Slow, Teleports & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Flee%20the%20Facility%20Anti%20Slow%20Teleports%20%20More.lua")

addscriptexist(292439477, "Phantom Forces: Aim Bot, Esp & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20Aim%20Bot%20Esp%20%20More.lua")

addscriptexist(12996397, "Mega Fun Obby: Auto Win, Auto Farm & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Mega%20Fun%20Obby%20Auto%20Win%20Auto%20Farm%20%20More.lua")

addscriptexist(891852901, "Greenville: Car Speed, Anti Afk, Walkspeed", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Greenville%20Car%20Speed%20Anti%20Afk%20Walkspeed.lua")

addscript(6403373529, "Current Game","Slap Battles: Kill Aura, God Mode, ESP", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Slap%20Battles%20Kill%20Aura%20God%20Mode%20ESP.lua")

addhub("Wheel Hub: Vehicle Games", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Wheel%20Hub%20Vehicle%20Games.lua")

addscriptexist(648362523, "Breaking Point: AutoFarm Credits", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Breaking%20Point%20AutoFarm%20Credits.lua")

addscriptexist(4872321990, "Islands: Loot Aura", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Islands%20Loot%20Aura.lua")

addscriptexist(3956818381, "Ninja Legends: Auto Sell, Auto Farm, Auto Buy", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ninja%20Legends%20Auto%20Sell%20Auto%20Farm%20Auto%20Buy.lua")

addscript(10198661638, "Current Game","Farm Factory Tycoon", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Farm%20Factory%20Tycoon.lua")

addscript(8425637426, "Current Game","Write a Letter: Server Crasher", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Write%20a%20Letter%20Server%20Crasher.lua")

addscriptexist(286090429, "Arsenal: Hitbox Expander", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arsenal%20Hitbox%20Expander.lua")

addhub("Cloud Hub: 5+ Games", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Cloud%20Hub%20%20Games.lua")

addscriptexist(6284583030, "Pet Simulator X: Auto-Farm, Auto Use Boosts & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pet%20Simulator%20X%20AutoFarm%20Auto%20Use%20Boosts%20%20More.lua")

addscriptexist(2753915549, "Blox Fruits: Devil Fruit Finder", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruits%20Devil%20Fruit%20Finder.lua")

addscript(10253248401, "Current Game","Elemental Powers Tycoon: No Cooldown", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Elemental%20Powers%20Tycoon%20No%20Cooldown.lua")

addscriptexist(1962086868, "Tower of Hell: Get Items, Auto Win, Walkspeed", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Tower%20of%20Hell%20Get%20Items%20Auto%20Win%20Walkspeed.lua")

addscriptexist(4924922222, "Brookhaven RP: Lots Of Cool Features", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Brookhaven%20RP%20Lots%20Of%20Cool%20Features.lua")

addscriptexist(6516141723, "DOORS: Esp", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORS%20Esp.lua")

addscriptexist(11542692507, "Anime Souls Simulator: Auto-Farm, Auto Hatch & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Anime%20Souls%20Simulator%20AutoFarm%20Auto%20Hatch%20%20More.lua")

addscriptexist(4616652839, "Shindo Life: Auto Spin, Infinity Bloodlines & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Shindo%20Life%20Auto%20Spin%20Infinity%20Bloodlines%20%20More.lua")

addscriptexist(11345435986, "Chainsaw Man: Server Hop, Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Chainsaw%20Man%20Server%20Hop%20Auto%20Farm.lua")

addscriptexist(606849621, "Jailbreak: Auto Rob", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Jailbreak%20Auto%20Rob.lua")

addscript(12325279589, "Current Game","Head Fly Race: Auto Collect", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Head%20Fly%20Race%20Auto%20Collect.lua")

addscriptexist(7336302630, "Project Delta: Silent Aim, Perfect Prediction", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Project%20Delta%20Silent%20Aim%20Perfect%20Prediction.lua")

addscriptexist(7056922815, "Reaper 2: Auto Quest, Auto Skill & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Reaper%20%20Auto%20Quest%20Auto%20Skill%20%20More.lua")

addscriptexist(6284583030, "Pet Simulator X: Auto Hatch Eggs, Auto Farm, Auto Conveyor", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pet%20Simulator%20X%20Auto%20Hatch%20Eggs%20Auto%20Farm%20Auto%20Conveyor.lua")

addscript(8821374215, "Current Game","Saisei: Fast Swing", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Saisei%20Fast%20Swing.lua")

addscriptexist(445664957, "Parkour: Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Parkour%20Auto%20Farm.lua")

addscriptexist(8737602449, "PLS DONATE: Сlub Teleport Bypass", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PLS%20DONATE%20%D0%A1lub%20Teleport%20Bypass.lua")

addscriptexist(606849621, "Jailbreak: Infinity Nitro", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Jailbreak%20Infinity%20Nitro.lua")

addscript(12264058682, "Current Game","GO TO JAIL AND MAKE FRIENDS TO ESCAPE tycoon: Auto Upgrade, Auto Buy, Auto Fill", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GO%20TO%20JAIL%20AND%20MAKE%20FRIENDS%20TO%20ESCAPE%20tycoon%20Auto%20Upgrade%20Auto%20Buy%20Auto%20Fill.lua")

addscriptexist(11939099110, "Ski Race: Auto Farm, Auto Win, Rejoin Autofarm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ski%20Race%20Auto%20Farm%20Auto%20Win%20Rejoin%20Autofarm.lua")

addscriptexist(3851622790, "Break In (Story): Walkspeed, Auto Planks, Infinity Energy", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Break%20In%20Story%20Walkspeed%20Auto%20Planks%20Infinity%20Energy.lua")

addscriptexist(648362523, "Breaking Point: Silent Aim", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Breaking%20Point%20Silent%20Aim.lua")

addscriptexist(6516141723, "DOORS: Instant Interact, Anti-Seek, Remove Seek Obstacles", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORS%20Instant%20Interact%20AntiSeek%20Remove%20Seek%20Obstacles.lua")

addscriptexist(3351674303, "Driving Empire: Auto-Farm, Car Speed & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Driving%20Empire%20AutoFarm%20Car%20Speed%20%20More.lua")

addscript(6461766546, "Current Game","A Hero's Destiny: Auto Stats, Auto Farm Lvl, Auto Skills", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/A%20Heros%20Destiny%20Auto%20Stats%20Auto%20Farm%20Lvl%20Auto%20Skills.lua")

addscriptexist(8884334497, "Mining Clicker Simulator: Auto Upgrade, Auto Claim Rewards & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Mining%20Clicker%20Simulator%20Auto%20Upgrade%20Auto%20Claim%20Rewards%20%20More.lua")

addscript(171391948, "Current Game","Vehicle Simulator: Keybinds, Speed", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Vehicle%20Simulator%20Keybinds%20Speed.lua")

addscript(9666226803, "Current Game","Hotel Simulator: Infinite Kitchen Supplies", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Hotel%20Simulator%20Infinite%20Kitchen%20Supplies.lua")

addscriptexist(2768379856, "3008: Instant Interact", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Instant%20Interact.lua")

addscriptuniversal("Universal Remote Spy, Script Viewer, Explorer", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Remote%20Spy%20Script%20Viewer%20Explorer.lua")

addscriptexist(6913960180, "Undertale Crazy Multiverse Tim: Finish Obby", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Undertale%20Crazy%20Multiverse%20Tim%20Finish%20Obby.lua")

addscriptexist(11196588443, "Zombie Merge Tycoon: Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Zombie%20Merge%20Tycoon%20Auto%20Farm.lua")

addscriptexist(2768379856, "3008: Spam Something", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Spam%20Something.lua")

addscriptexist(9872472334, "Evade: Click TP, God Mode, Teleports", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Evade%20Click%20TP%20God%20Mode%20Teleports.lua")

addscriptexist(4924922222, "Brookhaven RP: Teleporter, Instant Kill All & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Brookhaven%20RP%20Teleporter%20Instant%20Kill%20All%20%20More.lua")

addscriptexist(11063612131, "Every Second You Get +1 Jump Power: Auto Farm, Auto Rebirth & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Every%20Second%20You%20Get%20%20Jump%20Power%20Auto%20Farm%20Auto%20Rebirth%20%20More.lua")

addscriptexist(6516141723, "DOORS: Instant Interact, Auto Skip Level & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORS%20Instant%20Interact%20Auto%20Skip%20Level%20%20More.lua")

addscript(12142833213, "Current Game","Trampoline Towers: Farm Wins", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Trampoline%20Towers%20Farm%20Wins.lua")

addscriptexist(3101667897, "Legends Of Speed: Auto Rebirth, Auto Get Steps, Auto Get Gems", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Legends%20Of%20Speed%20Auto%20Rebirth%20Auto%20Get%20Steps%20Auto%20Get%20Gems.lua")

addscript(164051105, "Current Game","Super Bomb Sirvival: Auto Farm, God Mode, Esp & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Super%20Bomb%20Sirvival%20Auto%20Farm%20God%20Mode%20Esp%20%20More.lua")

addscriptexist(893973440, "Flee the Facility: Player Esp, Computer Esp, Inf Stamina", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Flee%20the%20Facility%20Player%20Esp%20Computer%20Esp%20Inf%20Stamina.lua")

addscriptexist(4616652839, "Shindo Life: Auto Farm, Auto Rank, Auto War & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Shindo%20Life%20Auto%20Farm%20Auto%20Rank%20Auto%20War%20%20More.lua")

addscript(4866692557, "Current Game","Age of Heroes: Rep Farm, Life Saver, Auto Orbs & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Age%20of%20Heroes%20Rep%20Farm%20Life%20Saver%20Auto%20Orbs%20%20More.lua")

addscriptexist(3851622790, "Break In (Story): Kill Aura, Kill All Players, GodMode", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Break%20In%20Story%20Kill%20Aura%20Kill%20All%20Players%20GodMode.lua")

addscriptexist(2248408710, "Destruction Simulator: Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Destruction%20Simulator%20Auto%20Farm.lua")

addscript(6788787407, "Current Game","Warrior Champions: Auto Farm, Auto Swing, Auto Sell & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Warrior%20Champions%20Auto%20Farm%20Auto%20Swing%20Auto%20Sell%20%20More.lua")

addscriptexist(8146731988, "Ultra Power Tycon: Teleports, Speed, Jumppower", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ultra%20Power%20Tycon%20Teleports%20Speed%20Jumppower.lua")

addscriptexist(3652625463, "Lifting Simulator: Auto Sell, Auto Gain & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Lifting%20Simulator%20Auto%20Sell%20Auto%20Gain%20%20More.lua")

addscript(2537430692, "Current Game","Jenga: TP Win", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Jenga%20TP%20Win.lua")

addscriptexist(7180042682, "Military Tycoon: Auto Raid, Server Hop", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Military%20Tycoon%20Auto%20Raid%20Server%20Hop.lua")

addscriptexist(5780309044, "Stands Awakening: Farm Items, Farm Players, Inf Rokaka", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Stands%20Awakening%20Farm%20Items%20Farm%20Players%20Inf%20Rokaka.lua")

addscriptuniversal("Universal FE Drop Hats", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20FE%20Drop%20Hats.lua")

addscriptexist(142823291, "Murder Mystery 2: Auto Farm, EXP Farm, ESP", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Murder%20Mystery%20%20Auto%20Farm%20EXP%20Farm%20ESP.lua")

addscriptexist(7056922815, "Reaper 2: Auto Farms Mobs Get Quests, Teleports", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Reaper%20%20Auto%20Farms%20Mobs%20Get%20Quests%20Teleports.lua")

addscriptexist(189707, "Natural Disaster Survival: Godmode, Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Natural%20Disaster%20Survival%20Godmode%20Auto%20Farm.lua")

addscript(6205205961, "Current Game","Escape Running Head: Unlock boss Gamepass, Unlock double jump Gamepass", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Escape%20Running%20Head%20Unlock%20boss%20Gamepass%20Unlock%20double%20jump%20Gamepass.lua")

addscript(4065093137, "Current Game","eat sand: Auto Click, Auto Equip, Auto Take Shelter", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/eat%20sand%20Auto%20Click%20Auto%20Equip%20Auto%20Take%20Shelter.lua")

addscriptexist(1554960397, "Car Dealership Tycoon: Auto Race", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Car%20Dealership%20Tycoon%20Auto%20Race.lua")

addscript(9264596435, "Current Game","Idle Heroes Simulator: Auto Level Up, Auto Attack, Auto Tp", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Idle%20Heroes%20Simulator%20Auto%20Level%20Up%20Auto%20Attack%20Auto%20Tp.lua")

addscriptexist(10704789056, "Drive World: Fast Cash Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Drive%20World%20Fast%20Cash%20Auto%20Farm.lua")

addscriptexist(11636413564, "Meme Mergers: Simple Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Meme%20Mergers%20Simple%20Auto%20Farm.lua")

addscript(338574920, "Current Game","Wings of Glory: Muzzle velocity changer", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Wings%20of%20Glory%20Muzzle%20velocity%20changer.lua")

addscriptexist(2753915549, "Blox Fruits: Auto Buy Haki", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruits%20Auto%20Buy%20Haki.lua")

addscriptexist(6735572261, "Pilgrammed: Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pilgrammed%20Auto%20Farm.lua")

addscriptexist(6516141723, "DOORS: Entity Spawner", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORS%20Entity%20Spawner.lua")

addscriptexist(8821374215, "Saisei: Fast Swing, No Stun, Range OP", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Saisei%20Fast%20Swing%20No%20Stun%20Range%20OP.lua")

addscriptexist(11746859781, "Bubble Gum Clicker: Auto Spin Wheel, Auto Click, Auto Claim Daily", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Bubble%20Gum%20Clicker%20Auto%20Spin%20Wheel%20Auto%20Click%20Auto%20Claim%20Daily.lua")

addscriptexist(6735572261, "Pilgrammed: Auto ore mine", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pilgrammed%20Auto%20ore%20mine.lua")

addhub("Gaming Script Hub: 51 Games", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Gaming%20Script%20Hub%20%20Games.lua")

addhub("Better Roblox: Aimbot, ESP & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Better%20Roblox%20Aimbot%20ESP%20%20More.lua")

addscriptexist(189707, "Natural Disaster Survival: God Mod, Auto Farm, Teleport Method", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Natural%20Disaster%20Survival%20God%20Mod%20Auto%20Farm%20Teleport%20Method.lua")

addscriptexist(286090429, "Arsenal: Silent Aim, Auto Kill & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arsenal%20Silent%20Aim%20Auto%20Kill%20%20More.lua")

addscriptexist(292439477, "Phantom Forces: ESP", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20ESP.lua")

addscriptuniversal("Universal Friend Detector, Friend Notification System", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Friend%20Detector%20Friend%20Notification%20System.lua")

addscriptuniversal("Universal: 5 Games", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20%20Games.lua")

addscriptexist(2788229376, "Da Hood: Teleports, ESP & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Da%20Hood%20Teleports%20ESP%20%20More.lua")

addscriptexist(11430505281, "Anime Weapon Simulator: Auto-Farm, Auto Collect, Auto Click", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Anime%20Weapon%20Simulator%20AutoFarm%20Auto%20Collect%20Auto%20Click.lua")

addscript(298400657, "Current Game","Dragon Ball Final Remastered: Auto Gauntlet", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Dragon%20Ball%20Final%20Remastered%20Auto%20Gauntlet.lua")

addscriptexist(2474168535, "Westbound: No Recoil, No Spread, Silent Aim", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Westbound%20No%20Recoil%20No%20Spread%20Silent%20Aim.lua")

addscript(6708206173, "Current Game","Rate My Avatar: Trivia Booth", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rate%20My%20Avatar%20Trivia%20Booth.lua")

addscriptexist(11636413564, "Meme Mergers: Auto Merge, Auto Click, Auto Obby", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Meme%20Mergers%20Auto%20Merge%20Auto%20Click%20Auto%20Obby.lua")

addscriptexist(6284583030, "Pet Simulator X: Auto-Farm, Keybinds & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pet%20Simulator%20X%20AutoFarm%20Keybinds%20%20More.lua")

addscriptexist(9143982021, "Sword Battles: Spam Skills", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Sword%20Battles%20Spam%20Skills.lua")

addscript(5740246170, "Current Game","Tower Simulator: Auto Build, Auto Upgrade", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Tower%20Simulator%20Auto%20Build%20Auto%20Upgrade.lua")

addscriptexist(8328351891, "Mega Mansion Tycoon: Auto collect, Auto Build", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Mega%20Mansion%20Tycoon%20Auto%20collect%20Auto%20Build.lua")

addscriptexist(2413927524, "The Rake REMASTERED: Esp Rake", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/The%20Rake%20REMASTERED%20Esp%20Rake.lua")

addscriptexist(6735572261, "Pilgrammed: Rainbow Hair, Blank avatar, ESP", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pilgrammed%20Rainbow%20Hair%20Blank%20avatar%20ESP.lua")

addscriptexist(11939099110, "Ski Race: Auto Hatch Egg, Auto give power, Infinite Jump", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ski%20Race%20Auto%20Hatch%20Egg%20Auto%20give%20power%20Infinite%20Jump.lua")

addscriptexist(6735572261, "Pilgrammed: Esp, Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pilgrammed%20Esp%20Auto%20Farm.lua")

addscriptexist(8884433153, "Collect All Pets: Auto Upgrade, Auto Egg & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Collect%20All%20Pets%20Auto%20Upgrade%20Auto%20Egg%20%20More.lua")

addscript(6243699076, "Current Game","The Mimic: Fullbright, ESP, Sprint", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/The%20Mimic%20Fullbright%20ESP%20Sprint.lua")

addscriptexist(6735572261, "Pilgrammed: Grab all mirrors", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pilgrammed%20Grab%20all%20mirrors.lua")

addscriptexist(7499189111, "Encounters: Esp, Legit, Rage", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Encounters%20Esp%20Legit%20Rage.lua")

addscriptexist(10673860069, "Horse Racing Club: Auto Win Race, Inf Money/Exp, Rainbow Saddle", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Horse%20Racing%20Club%20Auto%20Win%20Race%20Inf%20MoneyExp%20Rainbow%20Saddle.lua")

addscriptexist(6735572261, "Pilgrammed: Spawn setter", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pilgrammed%20Spawn%20setter.lua")

addscriptexist(6735572261, "Pilgrammed: Farm Chest", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pilgrammed%20Farm%20Chest.lua")

addscriptexist(2753915549, "Blox Fruits: Auto Farm Level, Auto Raid & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruits%20Auto%20Farm%20Level%20Auto%20Raid%20%20More.lua")

addscriptexist(7991339063, "Rainbow Friends: Sprint, Fullbright, Anti Detect", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rainbow%20Friends%20Sprint%20Fullbright%20Anti%20Detect.lua")

addscriptexist(155615604, "Prison Life: Adm Cmds", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Prison%20Life%20Adm%20Cmds.lua")

addscriptexist(185655149, "Welcome to Bloxburg: Auto Farm, Anit Cheat Bypass", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Welcome%20to%20Bloxburg%20Auto%20Farm%20Anit%20Cheat%20Bypass.lua")

addscriptexist(11582083063, "Piece Adventures Simulator: Auto Attack, Auto Skills, Auto Collect Coins", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Piece%20Adventures%20Simulator%20Auto%20Attack%20Auto%20Skills%20Auto%20Collect%20Coins.lua")

addscriptexist(537413528, "Build A Boat For Treasure: Auto-Farm, Auto Buy, Teleports", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Build%20A%20Boat%20For%20Treasure%20AutoFarm%20Auto%20Buy%20Teleports.lua")

addscriptexist(8908228901, "SharkBite 2: Free Things, ESP, Speed", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SharkBite%20%20Free%20Things%20ESP%20Speed.lua")

addscriptexist(537413528, "Build A Boat For Treasure: God Mode, Auto Farm, Misc", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Build%20A%20Boat%20For%20Treasure%20God%20Mode%20Auto%20Farm%20Misc.lua")

addscriptexist(10673860069, "Horse Racing Club: Remove Race Obstacles", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Horse%20Racing%20Club%20Remove%20Race%20Obstacles.lua")

addscriptexist(6075270490, "Teamwork Puzzles: Auto Win", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Teamwork%20Puzzles%20Auto%20Win.lua")

addscriptexist(142823291, "Murder Mystery 2: Esp", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Murder%20Mystery%20%20Esp.lua")

addscriptexist(2753915549, "Blox Fruits: Auto Farm, Auto Raid, Fruit Mastery", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruits%20Auto%20Farm%20Auto%20Raid%20Fruit%20Mastery.lua")

addscriptexist(6516141723, "DOORS: Impossible Mode", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORS%20Impossible%20Mode.lua")

addscriptexist(2753915549, "Blox Fruits: Teleports, Server Hop & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruits%20Teleports%20Server%20Hop%20%20More.lua")

addscript(11810939759, "Current Game","Guess The Build: Redeem All Codes", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Guess%20The%20Build%20Redeem%20All%20Codes.lua")

addscriptexist(7899881670, "RB World 4: Anti Cheat Bypass", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RB%20World%20%20Anti%20Cheat%20Bypass.lua")

addscript(9834528893, "Current Game","+1 Jump Every Second: Delete Cringe", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Jump%20Every%20Second%20Delete%20Cringe.lua")

addscriptexist(6516141723, "DOORS: Morph", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORS%20Morph.lua")

addscriptexist(11345435986, "Chainsaw Man: Devil’s Heart: Esp", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Chainsaw%20Man%20Devils%20Heart%20Esp.lua")

addscript(2746687316, "Current Game","Games Unite Testing Place: Esp", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Games%20Unite%20Testing%20Place%20Esp.lua")

addscriptexist(9872472334, "Evade: Auto Farm Wins", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Evade%20Auto%20Farm%20Wins.lua")

addscriptexist(6516141723, "DOORS: Anti Cheat Bypass", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DOORS%20Anti%20Cheat%20Bypass.lua")

addscriptexist(141084271, "Rise Of The Dead: Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rise%20Of%20The%20Dead%20Auto%20Farm.lua")

addscript(11606818992, "Current Game","STEEP STEPS: Anti Cheat Bypass", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/STEEP%20STEPS%20Anti%20Cheat%20Bypass.lua")

addscriptexist(8908228901, "SharkBite 2: Insta Kill Shark", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SharkBite%20%20Insta%20Kill%20Shark.lua")

addscriptexist(6735572261, "Pilgrammed: God Mode, Chest Farm & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pilgrammed%20God%20Mode%20Chest%20Farm%20%20More.lua")

addscriptexist(10982284336, "Anime Idle Simulator: Unlimited Dps", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Anime%20Idle%20Simulator%20Unlimited%20Dps.lua")

addscriptexist(10673860069, "Horse Racing Club: Infinite Money, Infinite Exp, Auto Win Race & More", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Horse%20Racing%20Club%20Infinite%20Money%20Infinite%20Exp%20Auto%20Win%20Race%20%20More.lua")

addscriptexist(8540346411, "Rebirth Champions X: Auto Collect", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rebirth%20Champions%20X%20Auto%20Collect.lua")

addscriptexist(2753915549, "Blox Fruits: Auto Farm, Fast Attack", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruits%20Auto%20Farm%20Fast%20Attack.lua")

addscriptexist(7056922815, "Reaper 2: AutoFarm, Auto Quest, Teleports", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Reaper%20%20AutoFarm%20Auto%20Quest%20Teleports.lua")

addscriptexist(9655469250, "EarthScape Tycoon: Gun Mods", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/EarthScape%20Tycoon%20Gun%20Mods.lua")

addscriptexist(7899881670, "RB World 4: Hitbox, Aimbot, Auto Block", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RB%20World%20%20Hitbox%20Aimbot%20Auto%20Block.lua")

addscript(340227283, "Current Game","RoBowling: Always Hit A Strike", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoBowling%20Always%20Hit%20A%20Strike.lua")

addscriptexist(11636413564, "Meme Mergers: Auto Click, Finish Obby", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Meme%20Mergers%20Auto%20Click%20Finish%20Obby.lua")

addscriptexist(155615604, "Prison Life: Silent Aim, FOV, Teleports", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Prison%20Life%20Silent%20Aim%20FOV%20Teleports.lua")

addscriptexist(21532277, "Notoriety: Infinity Jump, Gun Mods, Loot Aura", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Notoriety%20Infinity%20Jump%20Gun%20Mods%20Loot%20Aura.lua")

addscriptexist(155615604, "Prison Life: Name Color GUI", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Prison%20Life%20Name%20Color%20GUI.lua")

addscriptexist(6735572261, "Pilgrammed: Ore Esp", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pilgrammed%20Ore%20Esp.lua")

addscript(11940636110, "Current Game","Mining Factory Tycoon: Inf Cash, Finish Obby, Walkspeed", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Mining%20Factory%20Tycoon%20Inf%20Cash%20Finish%20Obby%20Walkspeed.lua")

addscriptexist(11542692507, "Anime Souls Simulator: Auto Egg, Auto Equip Best, Auto Upgrade", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Anime%20Souls%20Simulator%20Auto%20Egg%20Auto%20Equip%20Best%20Auto%20Upgrade.lua")

addscriptexist(11345435986, "Chainsaw Man: Devil's Heart: Auto Farm", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Chainsaw%20Man%20Devils%20Heart%20Auto%20Farm.lua")

addscript(23578803, "Current Game","Hotel Elephant: Server Crasher", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Hotel%20Elephant%20Server%20Crasher.lua")

addscriptexist(6728870912, "World of Stands: AutoFarm, Walkspeed, Noclip", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/World%20of%20Stands%20AutoFarm%20Walkspeed%20Noclip.lua")

addscriptexist(286090429, "Arsenal: Kill All, Silent Aim, Tags", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arsenal%20Kill%20All%20Silent%20Aim%20Tags.lua")

addhub("Silver Hub: Keyless", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Silver%20Hub%20Keyless.lua")

addscript(8589310348, "Current Game","Glory Kill Testing: Kill All, Auto Reload, No recoil", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Glory%20Kill%20Testing%20Kill%20All%20Auto%20Reload%20No%20recoil.lua")

addscriptexist(11929558254, "+1 Per Second: Worlds Auto Farm, TP To Rebirth Place, Walkspeed", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Per%20Second%20Worlds%20Auto%20Farm%20TP%20To%20Rebirth%20Place%20Walkspeed.lua")

addscriptexist(8568266872, "Kill Monsters to Save Princess: Auto Farm, Auto Egg, Auto Skill", "pulled from rbxscript.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Kill%20Monsters%20to%20Save%20Princess%20Auto%20Farm%20Auto%20Egg%20Auto%20Skill.lua")
