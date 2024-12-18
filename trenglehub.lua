

lastupdate = "GMT +0: 26.10.2024 17:43:33"



local asciiart = [[

 _   _                       _ _ _
| | | |_   _ _ __   ___ _ __| (_) |__
| |_| | | | | '_ \ / _ \ '__| | | '_ \
|  _  | |_| | |_) |  __/ |  | | | |_) |
|_| |_|\__, | .__/ \___|_|  |_|_|_.__/
       |___/|_|
]]
function bigRedItalicText(text)
    pcall(function()
        game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
            Text = text,
            Color = Color3.fromRGB(255, 0, 0), 
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
    end)

    pcall(function()
        game.TextChatService.TextChannels.RBXSystem:DisplaySystemMessage("<font color=\"rgb(255, 0, 0)\">" ..
        text .. "</font> ")
    end)
end

function getGUIs(parent)
    local guis = {}

    for _, gui in pairs(parent:GetChildren()) do
        if gui:IsA("GuiBase2d") or gui:IsA("BillboardGui") then
            table.insert(guis, gui)
        end
    end

    return guis
end

getgenv().coreGui = game:GetService("CoreGui")

function checkAndManageGUIs()
    local currentGUIs = getGUIs(coreGui)

    
    local newGUIs = {}
    for _, gui in pairs(currentGUIs) do
        if not table.find(previousGUIs, gui) then
            table.insert(newGUIs, gui)
        end
    end

    
    for _, gui in pairs(previousGUIs) do
        if not table.find(currentGUIs, gui) then
            print("Found new Guis")
            gui:Destroy() 
        end
    end

    
    for _, gui in pairs(newGUIs) do
        gui:Destroy() 
    end

    previousGUIs = currentGUIs 
end

function ManagerRefreshGuis()
    for gui, _ in pairs(guitrackedbyhyperlib) do
        if not table.find(currentGUIs, gui) then
            
            guitrackedbyhyperlib[gui][1]:RemoveLabel()
            guitrackedbyhyperlib[gui][2]:RemoveButton()
            guitrackedbyhyperlib[gui][6]:RemoveButton()
            
        end
        
        if ignoredguis[gui] == true then
            
            guitrackedbyhyperlib[gui][1]:RemoveLabel()
            guitrackedbyhyperlib[gui][2]:RemoveButton()
            guitrackedbyhyperlib[gui][6]:RemoveButton()
            
            guitrackedbyhyperlib[gui] = nil
        end
    end
end
function isMobile()
    local UserInputService = game:GetService("UserInputService")

    if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
        return true
    else
        return false
    end
end

if getgenv().hyperlibreload == nil then
    getgenv().hyperlibreload = false
end
if getgenv().serverhoptolow == nil then
    getgenv().serverhoptolow = false
end
if getgenv().hyperlibblock == nil then
    getgenv().hyperlibblock = true
else
    if getgenv().hyperlibblock == true then
        bigRedItalicText("Another Hyperlib instance is already running! Aborting...")
        return
    elseif getgenv().hyperlibblock == false then
        getgenv().hyperlibblock = true
    end
end

getgenv().gamecount = 0
getgenv().scriptcount = 0

getgenv().hubscripts = {
    allscripts = {}
}
getgenv().uniscripts = {
    allscripts = {}
}
version = "Hyperlib V.3.6.5 (Legacy)"
getgenv().statusdict = {}



function getLocalPlayerName()
    local player = game:GetService("Players").LocalPlayer
    return player.Name
end

function bigRedText(text)
    pcall(function()
        game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
            Text = text,
            Color = Color3.new(1, 0, 0),
            Font = Enum.Font.GothamBold,
            FontSize = Enum.FontSize.Size48,
        })
    end)
    pcall(function()
        game.TextChatService.TextChannels.RBXSystem:DisplaySystemMessage("<font color=\"rgb(255, 0, 0)\">" ..
        text .. "</font> ")
    end)
end
function bigGreenItalicText(text)
    pcall(function()
        game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
            Text = text,
            Color = Color3.fromRGB(0, 255, 0), 
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
    end)

    pcall(function()
        game.TextChatService.TextChannels.RBXSystem:DisplaySystemMessage("<font color=\"rgb(0, 255, 0)\">" ..
        text .. "</font> ")
    end)
end
function clearChat()
    local clearMessage = ""
    for i = 1, 20 do
        clearMessage = clearMessage .. " "
    end

    for i = 1, 30 do
        pcall(function()
            game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
                Text = clearMessage,
                Color = Color3.new(1, 1, 1), 
                Font = Enum.Font.SourceSans,
                FontSize = Enum.FontSize.Size18,
            })
        end)
        pcall(function()
            game.TextChatService.TextChannels.RBXSystem:DisplaySystemMessage("‎")
        end)
    end
end

function bigBlueItalicText(text)
    pcall(function()
        game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
            Text = text,
            Color = Color3.fromRGB(0, 162, 255), 
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
    end)

    pcall(function()
        game.TextChatService.TextChannels.RBXSystem:DisplaySystemMessage("<font color=\"rgb(0, 162, 255)\">" ..
        text .. "</font> ")
    end)
end
local function formatTimeForUser(lastupdate)
    local function parseDateTime(dateTimeStr)
        local gmtOffset, dateStr, timeStr = string.match(dateTimeStr, "GMT ([+-]%d+): (%d+%.%d+%.%d+) (%d+:%d+:%d+)")
        local day, month, year = string.match(dateStr, "(%d+)%.(%d+)%.(%d+)")
        local hour, minute, second = string.match(timeStr, "(%d+):(%d+):(%d+)")
        return os.time({
            year = tonumber(year),
            month = tonumber(month),
            day = tonumber(day),
            hour = tonumber(hour),
            min = tonumber(minute),
            sec = tonumber(second)
        }) - tonumber(gmtOffset) * 3600 
    end

    local function getTimezoneOffset()
        
        local utcTime = os.time(os.date("!*t"))

        
        local localTime = os.time()

        
        local offsetInSeconds = os.difftime(localTime, utcTime)

        
        local offsetInHours = offsetInSeconds / 3600

        return offsetInHours
    end

    local userTimezoneOffset = getTimezoneOffset()
    local parsedTime = parseDateTime(lastupdate)
    local userTimeInSeconds = parsedTime + userTimezoneOffset * 3600

    
    local formattedTime = os.date("%A, %B %d %H:%M:%S %Y", userTimeInSeconds)
    return formattedTime
end





function addscript(Place, Gamename, title, author, scriptlink, origin)
    getgenv().gamecount = getgenv().gamecount + 1
    getgenv().scriptcount = getgenv().scriptcount + 1

    if game.PlaceId == Place then
        getgenv().gamescripts = {
            place = Place,
            gamename = Gamename,
            allscripts = {}
        }
        local scriptdata = {
            title = title,
            author = author,
            scriptlink = scriptlink,
            origin = origin
        }
        table.insert(getgenv().gamescripts.allscripts, scriptdata)
    end
end

function addscriptexist(Place, title, author, scriptlink, origin)
    getgenv().scriptcount = getgenv().scriptcount + 1
    name = title

    if game.PlaceId == Place then
        local scriptdata = {
            title = title,
            author = author,
            scriptlink = scriptlink,
            origin = origin
        }
        table.insert(getgenv().gamescripts.allscripts, scriptdata)
    end
end

function addscriptuniversal(title, author, scriptlink, origin)
    getgenv().scriptcount = getgenv().scriptcount + 1
    local scriptdata = {
        title = title,
        author = author,
        scriptlink = scriptlink,
        origin = origin
    }
    table.insert(getgenv().uniscripts.allscripts, scriptdata)
end

function addhub(title, author, scriptlink, origin)
    getgenv().scriptcount = getgenv().scriptcount + 1
    local scriptdata = {
        title = title,
        author = author,
        scriptlink = scriptlink,
        origin = origin
    }
    table.insert(getgenv().hubscripts.allscripts, scriptdata)
end

function UpdateWindowTitle(title)
    getgenv().hyperlibguititle.Text = title
end

function DisplayWindowMessage(title)
    spawn(function()
        UpdateWindowTitle(title)
        wait(3)
        UpdateWindowTitle(version)
    end)
end

function sortHubs()
    table.sort(getgenv().hubscripts.allscripts, function(a, b)
        return a.title < b.title
    end)
end

function sortUni()
    table.sort(getgenv().uniscripts.allscripts, function(a, b)
        return a.title < b.title
    end)
end

function getCurrentPlayerCount()
    return #game.Players:GetPlayers()
end
function getMaxPlayerCount()
    return game.Players.MaxPlayers
end
function getClientPing()
    local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()
    return math.floor(ping + 0.5)
end

local fps = 0
local lastTick = tick()
game:GetService("RunService").Heartbeat:Connect(function()
    local currentTick = tick()
    fps = 1 / (currentTick - lastTick)
    lastTick = currentTick
end)

function getFPS()
    return math.floor(fps + 0.5)
end

function getPlaceID()
    return game.PlaceId
end

function getPlaceName()
    return game.Place.Name
end

function getServerID()
    return game.JobId
end
local function getClientUptime()
    return tick()
end


getgenv().HyperlibLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Library/kavo-ui.lua"))()
getgenv().Window = getgenv().HyperlibLibrary.CreateLib(version, "DarkTheme")
Window = getgenv().Window
getgenv().hyperlibgui.ZIndexBehavior = Enum.ZIndexBehavior.Global


repeat
    UpdateWindowTitle("Waiting for game to load.")
    wait(0.1)
    UpdateWindowTitle("Waiting for game to load..")
    wait(0.1)
    UpdateWindowTitle("Waiting for game to load...")
    wait(0.1)
until game:IsLoaded()
UpdateWindowTitle("Game is loaded!")


if game.PlaceId == 13772394625 then
    UpdateWindowTitle("Protecting against Blade Ball Anticheat...")
    for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
        if v.Name == "Security" then
            for i, v in game.ReplicatedStorage.Security:GetChildren() do
                v:Destroy()
            end
            game.ReplicatedStorage.Security:Destroy()
        end
    end
    UpdateWindowTitle("Successfully protected against Blade Ball Anticheat!")
end
UpdateWindowTitle(version)
local Player = Window:NewTab("Toolbox")
local PlayerSection = Player:NewSection("Player")
local GeneralSection = Player:NewSection("General")

GeneralSection:NewButton("Rejoin", "Rejoins the game", function()
    getgenv().hyperlibblock = false
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
end)
GeneralSection:NewButton("Exit Game", "Exits the game", function()
    getgenv().hyperlibblock = false
    game:Shutdown()
end)
GeneralSection:NewButton("Clear Chat", "Clears the chat", function()
    clearChat()
end)
getgenv().guireloader = GeneralSection:NewButton("Reload Hyperlib", "Reloads the Gui with the newest Version", function()
    spawn(function()
        guireloader:UpdateButton("Reloading in 3")
        wait(1)
        guireloader:UpdateButton("Reloading in 2")
        wait(1)
        guireloader:UpdateButton("Reloading in 1")
        wait(1)
        guireloader:UpdateButton("Reloading...")
        wait(1)
        getgenv().hyperlibgui:Destroy()
        
        getgenv().hyperlibreload = true
        getgenv().hyperlibblock = false
        pcall(function()
            getgenv().HyperlibMobileButtonGUI:Destroy()
        end)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Hyperlib/main/trenglehub.lua"))()
    end)
end)

getgenv().hyperlibkill = GeneralSection:NewButton("Kill Hyperlib", "Kills the Hyperlib Gui", function()
    spawn(function()
        hyperlibkill:UpdateButton("Closing Hyperlib in 3")
        wait(1)
        hyperlibkill:UpdateButton("Closing Hyperlib in 2")
        wait(1)
        hyperlibkill:UpdateButton("Closing Hyperlib in 1")
        wait(1)
        hyperlibkill:UpdateButton("Goodbye!")
        wait(1)
        getgenv().hyperlibgui:Destroy()
        
        getgenv().hyperlibreload = false
        getgenv().hyperlibblock = false
        pcall(function()
            getgenv().HyperlibMobileButtonGUI:Destroy()
        end)
    end)
end)

getgenv().mobiletogglestate = false
getgenv().mobilebuttontoggle = GeneralSection:NewButton("Load Mobile GUI Toggle", "Enable/Disable the Mobile GUI Toggle", function()
    
    if getgenv().mobiletogglestate == false then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Hyperlib/refs/heads/main/Extensions/mobiletoggle.lua"))()
        getgenv().mobilebuttontoggle:UpdateButton("Unload Mobile GUI Toggle")
    else
        getgenv().HyperlibMobileButtonGUI:Destroy()
        mobiletogglestate = false
        getgenv().mobilebuttontoggle:UpdateButton("Load Mobile GUI Toggle")
        bigGreenItalicText("Unloading Mobile GUI Toggle!")
    end
end)

getgenv().serverhopper = GeneralSection:NewButton("Server Hop",
    "Hop to another random Server", function()

        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        
        function TPReturner()
            local sortOrder = math.random(1, 2) == 1 and "Asc" or "Desc"
            local Site
            if foundAnything == "" then
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' ..
                PlaceID .. '/servers/Public?sortOrder=' .. sortOrder .. '&limit=100&excludeFullGames=true'))
            else
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' ..
                PlaceID .. '/servers/Public?sortOrder=' .. sortOrder .. '&limit=100&cursor=' .. foundAnything .. '&excludeFullGames=true'))
            end
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
        
            local serverList = {}
            for _, v in pairs(Site.data) do
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    table.insert(serverList, tostring(v.id))
                end
            end
        
            if #serverList > 0 then
                local randomIndex = math.random(1, #serverList) 
                local randomServerID = serverList[randomIndex]
                table.insert(AllIDs, randomServerID)
        
                pcall(function()
                    bigGreenItalicText("Teleporting to a random server now!")
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, randomServerID, game.Players.LocalPlayer)
                end)
            else
                if foundAnything ~= "" then
                    TPReturner()
                end
            end
        end
        
        function Teleport()
            while wait() do
                pcall(function()
                    TPReturner()
                end)
            end
        end
        
        spawn(function()
            while true do
                getgenv().serverhopper:UpdateButton("Teleporting")
                wait(0.1)
                getgenv().serverhopper:UpdateButton("Teleporting.")
                wait(0.1)
                getgenv().serverhopper:UpdateButton("Teleporting..")
                wait(0.1)
                getgenv().serverhopper:UpdateButton("Teleporting...")
                wait(0.1)
            end
        end)
        
        bigGreenItalicText("Teleporting to a random server...")
        Teleport()
end)
getgenv().serverhopperlower = GeneralSection:NewButton("Server Hop to emptiest Server",
    "Hop to another Server thats as empty as it can be", function()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false

    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' ..
            PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' ..
            PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i, v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _, Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        wait()
                        getgenv().serverhoptolow = true
                        bigGreenItalicText("Teleporting now!")
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end

    function Teleport()
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end

    spawn(function()
        while true do
            getgenv().serverhopperlower:UpdateButton("Teleporting")
            wait(0.1)
            getgenv().serverhopperlower:UpdateButton("Teleporting.")
            wait(0.1)
            getgenv().serverhopperlower:UpdateButton("Teleporting..")
            wait(0.1)
            getgenv().serverhopperlower:UpdateButton("Teleporting...")
            wait(0.1)
        end
    end)
    bigGreenItalicText("Teleporting to a Server with the lowest amount of players...")
    Teleport()
end)
getgenv().serverhopperhigher = GeneralSection:NewButton("Server Hop to full Server",
"Hop to the full Server", function()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour

    function TPReturner()
        local Site
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' ..
            PlaceID .. '/servers/Public?sortOrder=Desc&limit=100' .. "&excludeFullGames=true"))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' ..
            PlaceID .. '/servers/Public?sortOrder=Desc&limit=100&cursor=' .. foundAnything .. "&excludeFullGames=true"))
        end
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end

        local serverList = Site.data

        if #serverList > 0 then
            local targetServer = serverList[1]
            local serverID = tostring(targetServer.id)
            table.insert(AllIDs, serverID)

            pcall(function()
                bigGreenItalicText("Teleporting to the fullest server with space available now!")
                game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, serverID, game.Players.LocalPlayer)
            end)
        else
            if foundAnything ~= "" then
                TPReturner()
            end
        end
    end

    function Teleport()
        while wait() do
            pcall(function()
                TPReturner()
            end)
        end
    end

    spawn(function()
        while true do
            getgenv().serverhopperhigher:UpdateButton("Teleporting")
            wait(0.1)
            getgenv().serverhopperhigher:UpdateButton("Teleporting.")
            wait(0.1)
            getgenv().serverhopperhigher:UpdateButton("Teleporting..")
            wait(0.1)
            getgenv().serverhopperhigher:UpdateButton("Teleporting...")
            wait(0.1)
        end
    end)

    bigGreenItalicText("Teleporting to the fullest server with space available...")
    Teleport()
end)

PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)
PlayerSection:NewSlider("Gravity", "Changes the gravity", 250, 0, function(v)
    game.Workspace.Gravity = v
end)
getgenv().loadedgeneral = false
getgenv().loadedhub = false



loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Hyperlib/main/Games/universal.lua"))()
sortUni()

loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Hyperlib/main/Games/hub.lua"))()
sortHubs()


getgenv().generalscripts = Window:NewTab("Universal")
getgenv().generalscriptssection = generalscripts:NewSection("Universal Scripts")
getgenv().generalscriptsinformation = generalscriptssection:NewLabel("Doesnt need to be loaded, for searching!")
getgenv().generalscriptsallloaded = false
getgenv().generalload = getgenv().generalscriptssection:NewButton("Load Universal Scripts", "Loads all Universal Scripts",
    function()
        spawn(function()
            local ongoingexecution = false
            bigBlueItalicText(
            "Starting Loading of Universal Scripts. This may take a while to finish, because there is a wait between each script to ensure that your game doesnt freeze.")
            for i, v in pairs(getgenv().uniscripts.allscripts) do
                getgenv().generalscriptssection:NewLabel(v.title)
                getgenv().statusdict[v.title] = getgenv().generalscriptssection:NewLabel("Status: Not yet executed")
                getgenv().generalscriptssection:NewButton("Execute", v.author, function()
                    function toexecute()
                        loadstring(game:HttpGet(v.scriptlink))()
                    end

                    bigBlueItalicText("Starting execution of your script...")
                    ongoingexecution = true
                    spawn(function()
                        while ongoingexecution == true do
                            getgenv().statusdict[v.title]:UpdateLabel("Status: Executing")
                            wait(0.1)
                            getgenv().statusdict[v.title]:UpdateLabel("Status: Executing.")
                            wait(0.1)
                            getgenv().statusdict[v.title]:UpdateLabel("Status: Executing..")
                            wait(0.1)
                            getgenv().statusdict[v.title]:UpdateLabel("Status: Executing...")
                            wait(0.1)
                        end
                    end)


                    local success, result = pcall(toexecute)
                    if success then
                        bigGreenItalicText(getLocalPlayerName() .. ", your Script finished execution successfully!")
                        ongoingexecution = false
                        wait(0.5)
                        getgenv().statusdict[v.title]:UpdateLabel("Status: Executed successfully")
                        wait(5)
                        getgenv().statusdict[v.title]:UpdateLabel(
                        "Status: You have successfully executed this script before")
                    else
                        bigRedItalicText(getLocalPlayerName() .. ", your Script failed to finish execution!")
                        ongoingexecution = false
                        wait(0.5)
                        getgenv().statusdict[v.title]:UpdateLabel("Status: Failed to execute")
                        wait(5)
                        getgenv().statusdict[v.title]:UpdateLabel(
                        "Status: You have failed to execute this script before")
                    end
                end)
                getgenv().generalscriptssection:NewButton("Copy Origin link of Script", v.origin, function()
                    setclipboard(v.origin)
                    bigGreenItalicText("Copied Origin link of Script to clipboard!")
                end)
                wait(0.01)
            end

            getgenv().loadedgeneral = true
            getgenv().generalload:UpdateButton("Finished loading!")
            spawn(function()
                wait(0.5)
                bigGreenItalicText("Successfully loaded all Universal Scripts!")
                UpdateWindowTitle("Successfully loaded all Universal Scripts!")
                wait(3)
                UpdateWindowTitle(version)
            end)
            getgenv().generalload:RemoveButton()
        end)
    end)

getgenv().gamehubs = Window:NewTab("Game Hubs")
getgenv().gamehubsection = gamehubs:NewSection("Game Hub Scripts")
getgenv().gamehubinformation = gamehubsection:NewLabel("Doesnt need to be loaded, for searching!")
getgenv().hubload = getgenv().gamehubsection:NewButton("Load Game Hubs", "Loads all Game Hubs", function()
    spawn(function()
        local ongoingexecution = false
        bigBlueItalicText(
        "Starting Loading of Game Hubs. This may take a while to finish, because there is a wait between each script to ensure that your game doesnt freeze.")
        for i, v in pairs(getgenv().hubscripts.allscripts) do
            getgenv().gamehubsection:NewLabel(v.title)
            getgenv().statusdict[v.title] = getgenv().gamehubsection:NewLabel("Status: Not yet executed")
            getgenv().gamehubsection:NewButton("Execute", v.author, function()
                function toexecute()
                    loadstring(game:HttpGet(v.scriptlink))()
                end

                bigBlueItalicText("Starting execution of your script...")
                ongoingexecution = true
                spawn(function()
                    while ongoingexecution == true do
                        getgenv().statusdict[v.title]:UpdateLabel("Status: Executing")
                        wait(0.1)
                        getgenv().statusdict[v.title]:UpdateLabel("Status: Executing.")
                        wait(0.1)
                        getgenv().statusdict[v.title]:UpdateLabel("Status: Executing..")
                        wait(0.1)
                        getgenv().statusdict[v.title]:UpdateLabel("Status: Executing...")
                        wait(0.1)
                    end
                end)


                local success, result = pcall(toexecute)
                if success then
                    bigGreenItalicText(getLocalPlayerName() .. ", your Script finished execution successfully!")
                    ongoingexecution = false
                    wait(0.5)
                    getgenv().statusdict[v.title]:UpdateLabel("Status: Executed successfully")
                    wait(5)
                    getgenv().statusdict[v.title]:UpdateLabel(
                    "Status: You have successfully executed this script before")
                else
                    bigRedItalicText(getLocalPlayerName() .. ", your Script failed to finish execution!")
                    ongoingexecution = false
                    wait(0.5)
                    getgenv().statusdict[v.title]:UpdateLabel("Status: Failed to execute")
                    wait(5)
                    getgenv().statusdict[v.title]:UpdateLabel("Status: You have failed to execute this script before")
                end
            end)
            
            getgenv().gamehubsection:NewButton("Copy Origin link of Script", v.origin, function()
                setclipboard(v.origin)
                bigGreenItalicText("Copied Origin link of Script to clipboard!")
            end)
            wait(0.01)
        end


        getgenv().loadedhub = true
        getgenv().hubload:UpdateButton("Finished loading!")
        spawn(function()
            wait(0.5)
            bigGreenItalicText("Successfully loaded all Game Hubs!")
            UpdateWindowTitle("Successfully loaded all Game Hubs!")
            wait(3)
            UpdateWindowTitle(version)
        end)
        getgenv().hubload:RemoveButton()
    end)
end)






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


local usercustom = "Welcome to Hyperlib," .. " " .. getLocalPlayerName() .. "!"
local customlen = characterCount(usercustom)
clearChat()
bigRedText(usercustom)
bigRedText(addDashes(customlen))
bigBlueItalicText("Script developed by Fantemil")
bigBlueItalicText("Special thanks to pkplaysrblx for helping!")
bigRedText(addDashes(customlen))
bigBlueItalicText("Check out the Project on Github:")
bigGreenItalicText("https://github.com/Fantemil/Hyperlib")
bigRedText(addDashes(customlen))

print(asciiart .. "\n\n" .. version .. "\n\nWelcome " .. getLocalPlayerName() .. "!")




local gameid = game.PlaceId
local success, result = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Hyperlib/main/Games/" .. gameid .. ".lua"))()
end)
if success then
    getgenv().gamespecific = true
    
    local function sortScripts()
        table.sort(getgenv().gamescripts.allscripts, function(a, b)
            return a.title < b.title
        end)
    end
    local ongoingexecution = false
    sortScripts()
    
    getgenv().gamescripttab = Window:NewTab(getgenv().gamescripts.gamename)
    
    getgenv().gamescriptsection = gamescripttab:NewSection("Scripts")
    
    for i, v in pairs(getgenv().gamescripts.allscripts) do
        getgenv().gamescriptsection:NewLabel(v.title)
        getgenv().statusdict[v.title] = getgenv().gamescriptsection:NewLabel("Status: Not yet executed")
        getgenv().gamescriptsection:NewButton("Execute", v.author, function()
            function toexecute()
                loadstring(game:HttpGet(v.scriptlink))()
            end

            bigBlueItalicText("Starting execution of your script...")
            ongoingexecution = true
            spawn(function()
                while ongoingexecution == true do
                    getgenv().statusdict[v.title]:UpdateLabel("Status: Executing")
                    wait(0.1)
                    getgenv().statusdict[v.title]:UpdateLabel("Status: Executing.")
                    wait(0.1)
                    getgenv().statusdict[v.title]:UpdateLabel("Status: Executing..")
                    wait(0.1)
                    getgenv().statusdict[v.title]:UpdateLabel("Status: Executing...")
                    wait(0.1)
                end
            end)


            local success, result = pcall(toexecute)
            if success then
                bigGreenItalicText(getLocalPlayerName() .. ", your Script finished execution successfully!")
                ongoingexecution = false
                wait(0.5)
                getgenv().statusdict[v.title]:UpdateLabel("Status: Executed successfully")
                wait(5)
                getgenv().statusdict[v.title]:UpdateLabel("Status: You have successfully executed this script before")
            else
                bigRedItalicText(getLocalPlayerName() .. ", your Script failed to finish execution!")
                ongoingexecution = false
                wait(0.5)
                getgenv().statusdict[v.title]:UpdateLabel("Status: Failed to execute")
                wait(5)
                getgenv().statusdict[v.title]:UpdateLabel("Status: You have failed to execute this script before")
            end
        end)
        getgenv().gamescriptsection:NewButton("Copy Origin link of Script", v.origin, function()
            setclipboard(v.origin)
            bigGreenItalicText("Copied Origin link of Script to clipboard!")
        end)
    end
    bigGreenItalicText("There were scripts found for this game!")
    if getgenv().hyperlibreload == false and getgenv().serverhoptolow == false then
        spawn(function()
            UpdateWindowTitle("Found Scripts for this game!")
            wait(3)
            UpdateWindowTitle(version)
        end)
    end
else
    getgenv().gamespecific = false
    print("Failed to load game specific scripts")
    bigRedItalicText("There were no scripts found for this game!")
    if getgenv().hyperlibreload == false then
        spawn(function()
            UpdateWindowTitle("No Scripts found for this game!")
            wait(3)
            UpdateWindowTitle(version)
        end)
    end
end
queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/trenglehub.lua"))()')
pcall(function()
    if getgenv().hyperlibreload == true then
        getgenv().hyperlibreload = false
        spawn(function()
            wait(0.5)
            bigGreenItalicText("Successfully reloaded Hyperlib!")
            UpdateWindowTitle("Successful Reload!")
            wait(5)
            UpdateWindowTitle(version)
        end

        )
    end
end)
pcall(function()
    if getgenv().serverhoptolow == true then
        
        local playercount = #game:GetService("Players"):GetPlayers()
        getgenv().serverhoptolow = false
        spawn(function()
            wait(0.5)
            bigGreenItalicText("Successfully hopped to a Server with " .. playercount .. " players!")
            UpdateWindowTitle("Hopped to Server with " .. playercount .. " players!")
            wait(5)
            UpdateWindowTitle(version)
        end

        )
    end
end)

getgenv().ExploitManager = Window:NewTab("GUI Manager")
getgenv().ExploitManagerSection = ExploitManager:NewSection("GUI Manager")
getgenv().ExploitManagerInformation = ExploitManagerSection:NewLabel("You can kill other Exploit GUIs here")
getgenv().ExploitManagerKillAll = ExploitManagerSection:NewButton("Kill all Exploit GUIs",
    "Kills all GUIs that were made after the execution of Hyperlib", function()
    
    for gui, _ in pairs(guitrackedbyhyperlib) do
        
        gui:Destroy()
        
        guitrackedbyhyperlib[gui][1]:RemoveLabel()
        guitrackedbyhyperlib[gui][2]:RemoveButton()
        guitrackedbyhyperlib[gui][6]:RemoveButton()
        
        guitrackedbyhyperlib[gui] = nil
    end

    spawn(function()
        wait(0.5)
        bigGreenItalicText("Successfully killed all other GUIs!")
        UpdateWindowTitle("Successfully killed GUIs!")
        wait(3)
        UpdateWindowTitle(version)
    end)
end)
getgenv().ExploitManagerIgnoreAll = ExploitManagerSection:NewButton("Ignore all Exploit GUIs",
    "Ignores all GUIs that were made after the execution of Hyperlib", function()
    
    for gui, _ in pairs(guitrackedbyhyperlib) do
        
        ignoredguis[gui] = true
        
        guitrackedbyhyperlib[gui][1]:RemoveLabel()
        guitrackedbyhyperlib[gui][2]:RemoveButton()
        guitrackedbyhyperlib[gui][6]:RemoveButton()
        
        guitrackedbyhyperlib[gui] = nil
    end
    spawn(function()
        wait(0.5)
        bigGreenItalicText("Successfully ignored all other GUIs!")
        UpdateWindowTitle("Successfully ignored GUIs!")
        wait(3)
        UpdateWindowTitle(version)
    end)
end)

spawn(function()
    wait(3)
    local coreGui = game:GetService("CoreGui")
    getgenv().previousGUIs = getGUIs(coreGui) 
    local newGUIs = {}
    local alreadyfound = false
    getgenv().guitrackedbyhyperlib = {}
    getgenv().ignoredguis = {}
    while true do
        local trackedisempty = true
        getgenv().currentGUIs = getGUIs(coreGui)
        
        for _, gui in pairs(currentGUIs) do
            if not table.find(previousGUIs, gui) then
                table.insert(newGUIs, gui)
            end
        end
        
        if #newGUIs > 0 then
            trackedisempty = false
            
            for _, gui in pairs(newGUIs) do
                
                if gui ~= getgenv().hyperlibgui then
                    
                    

                    for gui2, _ in pairs(guitrackedbyhyperlib) do
                        
                        
                        if gui2 == gui then
                            alreadyfound = true
                        end
                    end

                    if alreadyfound == false then
                        ignoredguis[gui] = false

                        local guiName = gui.Name
                        local guiType = gui.ClassName
                        local guiLabel = ExploitManagerSection:NewLabel(guiName .. " (" .. guiType .. ")")
                        local guiButton = ExploitManagerSection:NewButton("Remove", "Removes the GUI", function()
                            gui:Destroy()
                            
                            ManagerRefreshGuis()
                            bigGreenItalicText("Successfully removed " .. guiName .. " (" .. guiType .. ")!")
                        end)
                        local ignoreButton = ExploitManagerSection:NewButton("Ignore", "Ignores the GUI", function()
                            
                            guitrackedbyhyperlib[gui][1]:RemoveLabel()
                            guitrackedbyhyperlib[gui][2]:RemoveButton()
                            guitrackedbyhyperlib[gui][6]:RemoveButton()
                            guitrackedbyhyperlib[gui] = nil
                            bigGreenItalicText("Successfully ignored " .. guiName .. " (" .. guiType .. ")!")
                        end)
                        
                        guitrackedbyhyperlib[gui] = { guiLabel, guiButton, guiName, guiType, gui, ignoreButton }
                    end
                end
            end
            newGUIs = {} 
        end
        
        ManagerRefreshGuis()
        


        previousGUIs = currentGUIs
        wait(5)
    end
end)
Statstab = Window:NewTab("Informations")
local StatusSection = Statstab:NewSection("Informations")
local maxplayers = getMaxPlayerCount()
local playerlabel = StatusSection:NewLabel("Players: " .. getCurrentPlayerCount() .. "/" .. maxplayers)
local pinglabel = StatusSection:NewLabel("Ping: " .. getClientPing())
local fpslabel = StatusSection:NewLabel("FPS: " .. getFPS())
local placeidlabel = StatusSection:NewLabel("Place ID: " .. getPlaceID())
local copyplaceidbutton = StatusSection:NewButton("Copy Place ID", "Copies the Place ID to your clipboard", function()
    setclipboard(tostring(getPlaceID()))
    bigGreenItalicText("Copied Place ID to clipboard!")
end)
local serveridlabel = StatusSection:NewLabel("Server ID: " .. getServerID())
local copyservidbutton = StatusSection:NewButton("Copy Server ID", "Copies the Server ID to your clipboard", function()
    setclipboard(tostring(getServerID()))
    bigGreenItalicText("Copied Server ID to clipboard!")
end)
task.spawn(function()
    while hyperlibblock do
        playerlabel:UpdateLabel("Players: " .. getCurrentPlayerCount() .. "/" .. maxplayers)
        wait(5)
    end
end)
task.spawn(function()
    while hyperlibblock do
        pinglabel:UpdateLabel("Ping: " .. getClientPing() .. "ms")
        fpslabel:UpdateLabel("FPS: " .. getFPS())
        wait(1)
    end
end)
StatusSection:NewLabel("Last Update of Hub: " .. formatTimeForUser(lastupdate))
StatusSection:NewLabel("Script Version: " .. version)

StatusSection:NewLabel("Script was made and is maintained by fantemil")
StatusSection:NewLabel("Thanks to pkplaysrblx for helping!")

StatusSection:NewButton("Copy GitHub Link", "Copies the GitHub Link to your clipboard", function()
    setclipboard("https://github.com/Fantemil/Hyperlib")
    bigGreenItalicText("Copied GitHub Link to clipboard!")
end)
StatusSection:NewButton("Copy Link to Discord Server", "Copies the Discord Server Link to your clipboard", function()
    setclipboard("https://discord.gg/dTcjXmKJdT")
    bigGreenItalicText("Copied Discord Server Link to clipboard!")
end)


local Keybinds = Window:NewTab("Keybinds")
local KeybindsSection = Keybinds:NewSection("Keybinds")
KeybindsSection:NewKeybind("Toggle UI", "Press T To toggle the Hyperlib UI (Click to change Keybind)", Enum.KeyCode.T,
    function()
        getgenv().HyperlibLibrary:ToggleUI()
    end)

local SearchTab = Window:NewTab("Search")
local SearchSection = SearchTab:NewSection("Search Tool")
local InformationLabel = SearchSection:NewLabel("Information:")
local InformationLabel1 = SearchSection:NewLabel("All Search Mode are not case sensitive")
local InformationLabel2 = SearchSection:NewLabel('Tick "Contains" if Script you Search contains Term')
local InformationLabel3 = SearchSection:NewLabel('Tick "Exact" if Script you Search = Term')
local InformationLabel4 = SearchSection:NewLabel('Tick "Starts with" if Script you Search startswith Term')
local ParameterSection = SearchTab:NewSection("Parameters")
local ContainsToggle = ParameterSection:NewToggle("Contains", "Searches for Scripts that contain your Term",
    function(state)
        if state == true then
            getgenv().contains = true
        else
            getgenv().contains = false
        end
    end)
local ExactToggle = ParameterSection:NewToggle("Exact", "Searches for Scripts that are exactly the same as your Term",
    function(state)
        if state == true then
            getgenv().exact = true
        else
            getgenv().exact = false
        end
    end)
local StartsWithToggle = ParameterSection:NewToggle("Starts with", "Searches for Scripts that start with your Term",
    function(state)
        if state == true then
            getgenv().startswith = true
        else
            getgenv().startswith = false
        end
    end)
if gamespecific then
    local gamespecificsearch = SearchTab:NewSection("Search for Scripts by Name in this Game")
    local gamespecificsearchtextbox = gamespecificsearch:NewTextBox("Search", "Search for Scripts in this Game",
        function(text)
            pcall(function()
                getgenv().QueryTab:RemoveTab()
            end)
            getgenv().querystatusdict = {}
            
            local unspaced = string.gsub(text, " ", "")
            
            if unspaced == "" then
                DisplayWindowMessage("Please enter a Term to search for!")
                return
            end
            
            if contains == false and exact == false and startswith == false then
                DisplayWindowMessage("Please select a Search Mode!")
                return
            end
            
            if contains == true and exact == true or contains == true and startswith == true or exact == true and startswith == true then
                DisplayWindowMessage("Please select only one Search Mode!")
                return
            end
            
            if contains == true then
                local results = {}
                
                for _, script in pairs(getgenv().gamescripts.allscripts) do
                    if string.find(script.title:lower(), text:lower()) then
                        table.insert(results, script)
                    end
                end
                
                if #results == 0 then
                    DisplayWindowMessage("No Results found!")
                    return
                end
                
                table.sort(results, function(a, b)
                    return a.title < b.title
                end)
                DisplayWindowMessage("Found " .. #results .. " Results! View in Query Tab!")
                getgenv().QueryTab = Window:NewTab("Query")

                getgenv().QuerySection = QueryTab:NewSection("Query")
                local DeleteQueryTab = QuerySection:NewButton("Delete Query", "Deletes the Query Tab", function()
                    getgenv().QueryTab:RemoveTab()
                    
                    getgenv().querystatusdict = {}
                    getgenv().QueryTab = nil
                    getgenv().QuerySection = nil
                end)
                for i, v in pairs(results) do
                    getgenv().QuerySection:NewLabel(v.title)
                    getgenv().querystatusdict[v.title] = getgenv().QuerySection:NewLabel("Status: Not yet executed")
                    getgenv().QuerySection:NewButton("Execute", v.author, function()
                        function toexecute()
                            loadstring(game:HttpGet(v.scriptlink))()
                        end

                        bigBlueItalicText("Starting execution of your script...")
                        ongoingexecution = true
                        spawn(function()
                            while ongoingexecution do
                                
                                getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing")
                                wait(0.1)
                                getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing.")
                                wait(0.1)
                                getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing..")
                                wait(0.1)
                                getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing...")
                                wait(0.1)
                            end
                        end)
                        local success, result = pcall(toexecute)
                        if success then
                            bigGreenItalicText(getLocalPlayerName() .. ", your Script finished execution successfully!")
                            ongoingexecution = false
                            wait(0.5)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Successfully executed")
                            wait(5)
                            getgenv().querystatusdict[v.title]:UpdateLabel(
                            "Status: You have successfully executed this script before")
                        else
                            bigRedItalicText(getLocalPlayerName() .. ", your Script failed to finish execution!")
                            ongoingexecution = false
                            wait(0.5)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Failed to execute")
                            wait(5)
                            getgenv().querystatusdict[v.title]:UpdateLabel(
                            "Status: You have unsuccessfully executed this script before")
                        end
                    end)
                    getgenv().QuerySection:NewButton("Copy Origin link of Script", v.origin, function()
                        setclipboard(v.origin)
                        bigGreenItalicText("Copied Origin link of Script to clipboard!")
                    end)
                    wait(0.01)
                end
                return
            end
            
            if exact == true then
                local results = {}
                
                for _, script in pairs(getgenv().gamescripts.allscripts) do
                    if script.title:lower() == text:lower() then
                        table.insert(results, script)
                    end
                end
                
                if #results == 0 then
                    DisplayWindowMessage("No Results found!")
                    return
                end
                
                table.sort(results, function(a, b)
                    return a.title < b.title
                end)
                DisplayWindowMessage("Found " .. #results .. " Results! View in Query Tab!")
                getgenv().QueryTab = Window:NewTab("Query")

                getgenv().QuerySection = QueryTab:NewSection("Query")
                local DeleteQueryTab = QuerySection:NewButton("Delete Query", "Deletes the Query Tab", function()
                    getgenv().QueryTab:RemoveTab()
                    
                    getgenv().querystatusdict = {}
                    getgenv().QueryTab = nil
                    getgenv().QuerySection = nil
                end)
                for i, v in pairs(results) do
                    getgenv().QuerySection:NewLabel(v.title)
                    getgenv().querystatusdict[v.title] = getgenv().QuerySection:NewLabel("Status: Not yet executed")
                    getgenv().QuerySection:NewButton("Execute", v.author, function()
                        function toexecute()
                            loadstring(game:HttpGet(v.scriptlink))()
                        end

                        bigBlueItalicText("Starting execution of your script...")
                        ongoingexecution = true
                        spawn(function()
                            while ongoingexecution do
                                
                                getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing")
                                wait(0.1)
                                getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing.")
                                wait(0.1)
                                getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing..")
                                wait(0.1)
                                getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing...")
                                wait(0.1)
                            end
                        end)
                        local success, result = pcall(toexecute)
                        if success then
                            bigGreenItalicText(getLocalPlayerName() .. ", your Script finished execution successfully!")
                            ongoingexecution = false
                            wait(0.5)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Successfully executed")
                            wait(5)
                            getgenv().querystatusdict[v.title]:UpdateLabel(
                            "Status: You have successfully executed this script before")
                        else
                            bigRedItalicText(getLocalPlayerName() .. ", your Script failed to finish execution!")
                            ongoingexecution = false
                            wait(0.5)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Failed to execute")
                            wait(5)
                            getgenv().querystatusdict[v.title]:UpdateLabel(
                            "Status: You have unsuccessfully executed this script before")
                        end
                    end)
                    getgenv().QuerySection:NewButton("Copy Origin link of Script", v.origin, function()
                        setclipboard(v.origin)
                        bigGreenItalicText("Copied Origin link of Script to clipboard!")
                    end)
                    wait(0.01)
                end
                return
            end
            if startswith then
                local results = {}
                
                for _, script in pairs(getgenv().gamescripts.allscripts) do
                    if script.title:lower():sub(1, #text) == text:lower() then
                        table.insert(results, script)
                    end
                end
                
                if #results == 0 then
                    DisplayWindowMessage("No Results found!")
                    return
                end
                
                table.sort(results, function(a, b)
                    return a.title < b.title
                end)
                DisplayWindowMessage("Found " .. #results .. " Results! View in Query Tab!")
                getgenv().QueryTab = Window:NewTab("Query")
                getgenv().QuerySection = QueryTab:NewSection("Query")
                local DeleteQueryTab = QuerySection:NewButton("Delete Query", "Deletes the Query Tab", function()
                    getgenv().QueryTab:RemoveTab()
                    
                    getgenv().querystatusdict = {}
                    getgenv().QueryTab = nil
                    getgenv().QuerySection = nil
                end)
                for i, v in pairs(results) do
                    getgenv().QuerySection:NewLabel(v.title)
                    getgenv().querystatusdict[v.title] = getgenv().QuerySection:NewLabel("Status: Not yet executed")
                    getgenv().QuerySection:NewButton("Execute", v.author, function()
                        function toexecute()
                            loadstring(game:HttpGet(v.scriptlink))()
                        end

                        bigBlueItalicText("Starting execution of your script...")
                        ongoingexecution = true
                        spawn(function()
                            while ongoingexecution do
                                
                                getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing")
                                wait(0.1)
                                getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing.")
                                wait(0.1)
                                getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing..")
                                wait(0.1)
                                getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing...")
                                wait(0.1)
                            end
                        end)
                        local success, result = pcall(toexecute)
                        if success then
                            bigGreenItalicText(getLocalPlayerName() .. ", your Script finished execution successfully!")
                            ongoingexecution = false
                            wait(0.5)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Successfully executed")
                            wait(5)
                            getgenv().querystatusdict[v.title]:UpdateLabel(
                            "Status: You have successfully executed this script before")
                        else
                            bigRedItalicText(getLocalPlayerName() .. ", your Script failed to finish execution!")
                            ongoingexecution = false
                            wait(0.5)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Failed to execute")
                            wait(5)
                            getgenv().querystatusdict[v.title]:UpdateLabel(
                            "Status: You have unsuccessfully executed this script before")
                        end
                    end)
                    getgenv().QuerySection:NewButton("Copy Origin link of Script", v.origin, function()
                        setclipboard(v.origin)
                        bigGreenItalicText("Copied Origin link of Script to clipboard!")
                    end)
                    wait(0.01)
                end
                return
            end
        end)
end
local gamehubsearch = SearchTab:NewSection("Search for Game Hubs by Name")
local gamehubsearchtextbox = gamehubsearch:NewTextBox("Search", "Search for Scripts in the Game Hub Database",
    function(text)
        pcall(function()
            getgenv().QueryTab:RemoveTab()
        end)
        getgenv().querystatusdict = {}
        local unspaced = string.gsub(text, " ", "")
        if unspaced == "" then
            DisplayWindowMessage("Please enter a Term to search for!")
            return
        end
        if contains == false and exact == false and startswith == false then
            DisplayWindowMessage("Please select a Search Mode!")
            return
        end
        
        if contains == true and exact == true or contains == true and startswith == true or exact == true and startswith == true then
            DisplayWindowMessage("Please select only one Search Mode!")
            return
        end
        if contains == true then
            local results = {}
            
            for _, script in pairs(getgenv().hubscripts.allscripts) do
                if script.title:lower():find(text:lower()) then
                    table.insert(results, script)
                end
            end
            
            if #results == 0 then
                DisplayWindowMessage("No Results found!")
                return
            end
            
            table.sort(results, function(a, b)
                return a.title < b.title
            end)
            DisplayWindowMessage("Found " .. #results .. " Results! View in Query Tab!")
            getgenv().QueryTab = Window:NewTab("Query")
            getgenv().QuerySection = QueryTab:NewSection("Query")
            local DeleteQueryTab = QuerySection:NewButton("Delete Query", "Deletes the Query Tab", function()
                getgenv().QueryTab:RemoveTab()
                
                getgenv().querystatusdict = {}
                getgenv().QueryTab = nil
                getgenv().QuerySection = nil
            end)
            for i, v in pairs(results) do
                getgenv().QuerySection:NewLabel(v.title)
                getgenv().querystatusdict[v.title] = getgenv().QuerySection:NewLabel("Status: Not yet executed")
                getgenv().QuerySection:NewButton("Execute", v.author, function()
                    function toexecute()
                        loadstring(game:HttpGet(v.scriptlink))()
                    end

                    bigBlueItalicText("Starting execution of your script...")
                    ongoingexecution = true
                    spawn(function()
                        while ongoingexecution do
                            
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing")
                            wait(0.1)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing.")
                            wait(0.1)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing..")
                            wait(0.1)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing...")
                            wait(0.1)
                        end
                    end)
                    local success, result = pcall(toexecute)
                    if success then
                        bigGreenItalicText(getLocalPlayerName() .. ", your Script finished execution successfully!")
                        ongoingexecution = false
                        wait(0.5)
                        getgenv().querystatusdict[v.title]:UpdateLabel("Status: Successfully executed")
                        wait(5)
                        getgenv().querystatusdict[v.title]:UpdateLabel(
                        "Status: You have successfully executed this script before")
                    else
                        bigRedItalicText(getLocalPlayerName() .. ", your Script failed to finish execution!")
                        ongoingexecution = false
                        wait(0.5)
                        getgenv().querystatusdict[v.title]:UpdateLabel("Status: Failed to execute")
                        wait(5)
                        getgenv().querystatusdict[v.title]:UpdateLabel(
                        "Status: You have failed to execute this script before")
                    end
                end)
                getgenv().QuerySection:NewButton("Copy Origin link of Script", v.origin, function()
                    setclipboard(v.origin)
                    bigGreenItalicText("Copied Origin link of Script to clipboard!")
                end)
                wait(0.01)
            end
            return
        end
        if exact then
            local results = {}
            
            for _, script in pairs(getgenv().hubscripts.allscripts) do
                if script.title:lower() == text:lower() then
                    table.insert(results, script)
                end
            end
            
            if #results == 0 then
                DisplayWindowMessage("No Results found!")
                return
            end
            
            table.sort(results, function(a, b)
                return a.title < b.title
            end)
            DisplayWindowMessage("Found " .. #results .. " Results! View in Query Tab!")
            getgenv().QueryTab = Window:NewTab("Query")
            getgenv().QuerySection = QueryTab:NewSection("Query")
            local DeleteQueryTab = QuerySection:NewButton("Delete Query", "Deletes the Query Tab", function()
                getgenv().QueryTab:RemoveTab()
                
                getgenv().querystatusdict = {}
                getgenv().QueryTab = nil
                getgenv().QuerySection = nil
            end)
            for i, v in pairs(results) do
                getgenv().QuerySection:NewLabel(v.title)
                getgenv().querystatusdict[v.title] = getgenv().QuerySection:NewLabel("Status: Not yet executed")
                getgenv().QuerySection:NewButton("Execute", v.author, function()
                    function toexecute()
                        loadstring(game:HttpGet(v.scriptlink))()
                    end

                    bigBlueItalicText("Starting execution of your script...")
                    ongoingexecution = true
                    spawn(function()
                        while ongoingexecution do
                            
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing")
                            wait(0.1)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing.")
                            wait(0.1)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing..")
                            wait(0.1)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing...")
                            wait(0.1)
                        end
                    end)
                    local success, result = pcall(toexecute)
                    if success then
                        bigGreenItalicText(getLocalPlayerName() .. ", your Script finished execution successfully!")
                        ongoingexecution = false
                        wait(0.5)
                        getgenv().querystatusdict[v.title]:UpdateLabel("Status: Successfully executed")
                        wait(5)
                        getgenv().querystatusdict[v.title]:UpdateLabel(
                        "Status: You have successfully executed this script before")
                    else
                        bigRedItalicText(getLocalPlayerName() .. ", your Script failed to finish execution!")
                        ongoingexecution = false
                        wait(0.5)
                        getgenv().querystatusdict[v.title]:UpdateLabel("Status: Failed to execute")
                        wait(5)
                        getgenv().querystatusdict[v.title]:UpdateLabel(
                        "Status: You have failed to execute this script before")
                    end
                end)
                getgenv().QuerySection:NewButton("Copy Origin link of Script", v.origin, function()
                    setclipboard(v.origin)
                    bigGreenItalicText("Copied Origin link of Script to clipboard!")
                end)
                wait(0.01)
            end
            return
        end
        if startswith then
            local results = {}
            
            for _, script in pairs(getgenv().hubscripts.allscripts) do
                if script.title:lower():sub(1, #text) == text:lower() then
                    table.insert(results, script)
                end
            end
            
            if #results == 0 then
                DisplayWindowMessage("No Results found!")
                return
            end
            
            table.sort(results, function(a, b)
                return a.title < b.title
            end)
            DisplayWindowMessage("Found " .. #results .. " Results! View in Query Tab!")
            getgenv().QueryTab = Window:NewTab("Query")
            getgenv().QuerySection = QueryTab:NewSection("Query")
            local DeleteQueryTab = QuerySection:NewButton("Delete Query", "Deletes the Query Tab", function()
                getgenv().QueryTab:RemoveTab()
                
                getgenv().querystatusdict = {}
                getgenv().QueryTab = nil
                getgenv().QuerySection = nil
            end)
            for i, v in pairs(results) do
                getgenv().QuerySection:NewLabel(v.title)
                getgenv().querystatusdict[v.title] = getgenv().QuerySection:NewLabel("Status: Not yet executed")
                getgenv().QuerySection:NewButton("Execute", v.author, function()
                    function toexecute()
                        loadstring(game:HttpGet(v.scriptlink))()
                    end

                    bigBlueItalicText("Starting execution of your script...")
                    ongoingexecution = true
                    spawn(function()
                        while ongoingexecution do
                            
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing")
                            wait(0.1)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing.")
                            wait(0.1)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing..")
                            wait(0.1)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing...")
                            wait(0.1)
                        end
                    end)
                    local success, result = pcall(toexecute)
                    if success then
                        bigGreenItalicText(getLocalPlayerName() .. ", your Script finished execution successfully!")
                        ongoingexecution = false
                        wait(0.5)
                        getgenv().querystatusdict[v.title]:UpdateLabel("Status: Successfully executed")
                        wait(5)
                        getgenv().querystatusdict[v.title]:UpdateLabel(
                        "Status: You have successfully executed this script before")
                    else
                        bigRedItalicText(getLocalPlayerName() .. ", your Script failed to finish execution!")
                        ongoingexecution = false
                        wait(0.5)
                        getgenv().querystatusdict[v.title]:UpdateLabel("Status: Failed to execute")
                        wait(5)
                        getgenv().querystatusdict[v.title]:UpdateLabel(
                        "Status: You have failed to execute this script before")
                    end
                end)
                getgenv().QuerySection:NewButton("Copy Origin link of Script", v.origin, function()
                    setclipboard(v.origin)
                    bigGreenItalicText("Copied Origin link of Script to clipboard!")
                end)
                wait(0.01)
            end
            return
        end
    end)
local universalsearch = SearchTab:NewSection("Search for Universal Scripts by Name")
local universalsearchtextbox = universalsearch:NewTextBox("Search", "Seafch for Universal Scripts in the Database",
    function(text)
        pcall(function()
            getgenv().QueryTab:RemoveTab()
        end)
        getgenv().querystatusdict = {}
        local unspaced = string.gsub(text, " ", "")
        if unspaced == "" then
            DisplayWindowMessage("Please enter a valid Search Query!")
            return
        end
        if contains == false and exact == false and startswith == false then
            DisplayWindowMessage("Please select a Search Mode!")
            return
        end
        
        if contains == true and exact == true or contains == true and startswith == true or exact == true and startswith == true then
            DisplayWindowMessage("Please select only one Search Mode!")
            return
        end
        if contains then
            local results = {}
            
            for _, script in pairs(getgenv().uniscripts.allscripts) do
                if script.title:lower():find(text:lower()) then
                    table.insert(results, script)
                end
            end
            
            if #results == 0 then
                DisplayWindowMessage("No Results found!")
                return
            end
            
            table.sort(results, function(a, b)
                return a.title < b.title
            end)
            DisplayWindowMessage("Found " .. #results .. " Results! View in Query Tab!")
            getgenv().QueryTab = Window:NewTab("Query")
            getgenv().QuerySection = QueryTab:NewSection("Query")
            local DeleteQueryTab = QuerySection:NewButton("Delete Query", "Deletes the Query Tab", function()
                getgenv().QueryTab:RemoveTab()
                
                getgenv().querystatusdict = {}
                getgenv().QueryTab = nil
                getgenv().QuerySection = nil
            end)
            for i, v in pairs(results) do
                getgenv().QuerySection:NewLabel(v.title)
                getgenv().querystatusdict[v.title] = getgenv().QuerySection:NewLabel("Status: Not yet executed")
                getgenv().QuerySection:NewButton("Execute", v.author, function()
                    function toexecute()
                        loadstring(game:HttpGet(v.scriptlink))()
                    end

                    bigBlueItalicText("Starting execution of your script...")
                    ongoingexecution = true
                    spawn(function()
                        while ongoingexecution do
                            
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing")
                            wait(0.1)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing.")
                            wait(0.1)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing..")
                            wait(0.1)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing...")
                            wait(0.1)
                        end
                    end)
                    local success, result = pcall(toexecute)
                    if success then
                        bigGreenItalicText(getLocalPlayerName() .. ", your Script finished execution successfully!")
                        ongoingexecution = false
                        wait(0.5)
                        getgenv().querystatusdict[v.title]:UpdateLabel("Status: Successfully executed")
                        wait(5)
                        getgenv().querystatusdict[v.title]:UpdateLabel(
                        "Status: You have successfully executed this script before")
                    else
                        bigRedItalicText(getLocalPlayerName() .. ", your Script failed to finish execution!")
                        ongoingexecution = false
                        wait(0.5)
                        getgenv().querystatusdict[v.title]:UpdateLabel("Status: Failed to execute")
                        wait(5)
                        getgenv().querystatusdict[v.title]:UpdateLabel(
                        "Status: You have failed to execute this script before")
                    end
                end)
                getgenv().QuerySection:NewButton("Copy Origin link of Script", v.origin, function()
                    setclipboard(v.origin)
                    bigGreenItalicText("Copied Origin link of Script to clipboard!")
                end)
                wait(0.01)
            end
            return
        end
        if exact then
            local results = {}
            
            for _, script in pairs(getgenv().uniscripts.allscripts) do
                if script.title:lower() == text:lower() then
                    table.insert(results, script)
                end
            end
            
            if #results == 0 then
                DisplayWindowMessage("No Results found!")
                return
            end
            
            table.sort(results, function(a, b)
                return a.title < b.title
            end)
            DisplayWindowMessage("Found " .. #results .. " Results! View in Query Tab!")
            getgenv().QueryTab = Window:NewTab("Query")
            getgenv().QuerySection = QueryTab:NewSection("Query")
            local DeleteQueryTab = QuerySection:NewButton("Delete Query", "Deletes the Query Tab", function()
                getgenv().QueryTab:RemoveTab()
                
                getgenv().querystatusdict = {}
                getgenv().QueryTab = nil
                getgenv().QuerySection = nil
            end)
            for i, v in pairs(results) do
                getgenv().QuerySection:NewLabel(v.title)
                getgenv().querystatusdict[v.title] = getgenv().QuerySection:NewLabel("Status: Not yet executed")
                getgenv().QuerySection:NewButton("Execute", v.author, function()
                    function toexecute()
                        loadstring(game:HttpGet(v.scriptlink))()
                    end

                    bigBlueItalicText("Starting execution of your script...")
                    ongoingexecution = true
                    spawn(function()
                        while ongoingexecution do
                            
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing")
                            wait(0.1)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing.")
                            wait(0.1)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing..")
                            wait(0.1)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing...")
                            wait(0.1)
                        end
                    end)
                    local success, result = pcall(toexecute)
                    if success then
                        bigGreenItalicText(getLocalPlayerName() .. ", your Script finished execution successfully!")
                        ongoingexecution = false
                        wait(0.5)
                        getgenv().querystatusdict[v.title]:UpdateLabel("Status: Successfully executed")
                        wait(5)
                        getgenv().querystatusdict[v.title]:UpdateLabel(
                        "Status: You have successfully executed this script before")
                    else
                        bigRedItalicText(getLocalPlayerName() .. ", your Script failed to finish execution!")
                        ongoingexecution = false
                        wait(0.5)
                        getgenv().querystatusdict[v.title]:UpdateLabel("Status: Failed to execute")
                        wait(5)
                        getgenv().querystatusdict[v.title]:UpdateLabel(
                        "Status: You have failed to execute this script before")
                    end
                end)
                getgenv().QuerySection:NewButton("Copy Origin link of Script", v.origin, function()
                    setclipboard(v.origin)
                    bigGreenItalicText("Copied Origin link of Script to clipboard!")
                end)
                wait(0.01)
            end
            return
        end
        if startswith then
            local results = {}
            
            for _, script in pairs(getgenv().uniscripts.allscripts) do
                if script.title:lower():sub(1, #text) == text:lower() then
                    table.insert(results, script)
                end
            end
            
            if #results == 0 then
                DisplayWindowMessage("No Results found!")
                return
            end
            
            table.sort(results, function(a, b)
                return a.title < b.title
            end)
            DisplayWindowMessage("Found " .. #results .. " Results! View in Query Tab!")
            getgenv().QueryTab = Window:NewTab("Query")
            getgenv().QuerySection = QueryTab:NewSection("Query")
            local DeleteQueryTab = QuerySection:NewButton("Delete Query", "Deletes the Query Tab", function()
                getgenv().QueryTab:RemoveTab()
                
                getgenv().querystatusdict = {}
                getgenv().QueryTab = nil
                getgenv().QuerySection = nil
            end)
            for i, v in pairs(results) do
                getgenv().QuerySection:NewLabel(v.title)
                getgenv().querystatusdict[v.title] = getgenv().QuerySection:NewLabel("Status: Not yet executed")
                getgenv().QuerySection:NewButton("Execute", v.author, function()
                    function toexecute()
                        loadstring(game:HttpGet(v.scriptlink))()
                    end

                    bigBlueItalicText("Starting execution of your script...")
                    ongoingexecution = true
                    spawn(function()
                        while ongoingexecution do
                            
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing")
                            wait(0.1)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing.")
                            wait(0.1)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing..")
                            wait(0.1)
                            getgenv().querystatusdict[v.title]:UpdateLabel("Status: Executing...")
                            wait(0.1)
                        end
                    end)
                    local success, result = pcall(toexecute)
                    if success then
                        bigGreenItalicText(getLocalPlayerName() .. ", your Script finished execution successfully!")
                        ongoingexecution = false
                        wait(0.5)
                        getgenv().querystatusdict[v.title]:UpdateLabel("Status: Successfully executed")
                        wait(5)
                        getgenv().querystatusdict[v.title]:UpdateLabel(
                        "Status: You have successfully executed this script before")
                    else
                        bigRedItalicText(getLocalPlayerName() .. ", your Script failed to finish execution!")
                        ongoingexecution = false
                        wait(0.5)
                        getgenv().querystatusdict[v.title]:UpdateLabel("Status: Failed to execute")
                        wait(5)
                        getgenv().querystatusdict[v.title]:UpdateLabel(
                        "Status: You have failed to execute this script before")
                    end
                end)
                getgenv().QuerySection:NewButton("Copy Origin link of Script", v.origin, function()
                    setclipboard(v.origin)
                    bigGreenItalicText("Copied Origin link of Script to clipboard!")
                end)
                wait(0.01)
            end
            return
        end
    end)



if isMobile() == true then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Hyperlib/refs/heads/main/Extensions/mobiletoggle.lua"))()
end

