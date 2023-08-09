

lastupdate = "GMT +2: 08.08.2023 19:06:05"
function bigRedItalicText(text)
    pcall(function()
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
    end)
    
    pcall(function()
        game.TextChatService.TextChannels.RBXSystem:DisplaySystemMessage("<font color=\"rgb(255, 0, 0)\">" .. text .. "</font> ")
    
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
    
    -- Identify new GUIs
    local newGUIs = {}
    for _, gui in pairs(currentGUIs) do
        if not table.find(previousGUIs, gui) then
            table.insert(newGUIs, gui)
        end
    end
    
    -- Remove old GUIs
    for _, gui in pairs(previousGUIs) do
        if not table.find(currentGUIs, gui) then
            print("Found new Guis")
            gui:Destroy()  -- Remove GUI
        end
    end
    
    -- Kill new GUIs
    for _, gui in pairs(newGUIs) do
        gui:Destroy()  -- Kill new GUI
    end

    previousGUIs = currentGUIs  -- Update previousGUIs for the next iteration
end
function ManagerRefreshGuis()
    for gui, _ in pairs(guitrackedbyhyperlib) do
            if not table.find(currentGUIs, gui) then
                -- if the gui was removed, remove the guiLabel and guiButton
                guitrackedbyhyperlib[gui][1]:RemoveLabel()
                guitrackedbyhyperlib[gui][2]:RemoveButton()
                -- remove the entry from guitrackedbyhyperlib
                guitrackedbyhyperlib[gui] = nil
            end
    end
end
-- check if getgenv().hyperlibreload exists
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
lastupdate = "GMT +2: 04.08.2023 12:05:01"
--^^^dont touch ^^^
getgenv().hubscripts = {
    allscripts = {}
}
getgenv().uniscripts = {
    allscripts = {}
}
version = "Hyperlib V.3.4"
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
            game.TextChatService.TextChannels.RBXSystem:DisplaySystemMessage("<font color=\"rgb(255, 0, 0)\">".. text .. "</font> ")
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
        }) - tonumber(gmtOffset) * 3600 -- Adjust for GMT offset in seconds
    end

    local function getTimezoneOffset()
        -- Get the current time in UTC
        local utcTime = os.time(os.date("!*t"))

        -- Get the current local time
        local localTime = os.time()

        -- Calculate the difference between local time and UTC time in seconds
        local offsetInSeconds = os.difftime(localTime, utcTime)

        -- Convert the offset to hours
        local offsetInHours = offsetInSeconds / 3600

        return offsetInHours
    end

    local userTimezoneOffset = getTimezoneOffset()
    local parsedTime = parseDateTime(lastupdate)
    local userTimeInSeconds = parsedTime + userTimezoneOffset * 3600

    -- Format the time with the full day name
    local formattedTime = os.date("%A, %B %d %H:%M:%S %Y", userTimeInSeconds)
    return formattedTime
end
function bigGreenItalicText(text)
    pcall(function()
        game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
            Text = text,
            Color = Color3.fromRGB(0, 255, 0), -- set the color to green
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
            game.TextChatService.TextChannels.RBXSystem:DisplaySystemMessage("<font color=\"rgb(0, 255, 0)\">" .. text .. "</font> ")
        end)
end
-- Create the clearChat() function
function clearChat()
    local clearMessage = ""
    for i = 1, 20 do
        clearMessage = clearMessage .. " "
    end
    
    for i = 1, 30 do
        pcall(function()
            game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
                Text = clearMessage,
                Color = Color3.new(1, 1, 1), -- set the color to white to make the messages invisible
                Font = Enum.Font.SourceSans,
                FontSize = Enum.FontSize.Size18,
            })
        end)
        pcall (function()
            game.TextChatService.TextChannels.RBXSystem:DisplaySystemMessage("‎")
        end)
    end
end

function bigBlueItalicText(text)
    pcall(function()
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
    end)
    
        pcall(function()
            game.TextChatService.TextChannels.RBXSystem:DisplaySystemMessage("<font color=\"rgb(0, 162, 255)\">".. text .. "</font> ")
        end)
end




function addscript(Place,Gamename,title,author,scriptlink, origin)
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

function addscriptexist(Place,title,author,scriptlink, origin)
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
function addscriptuniversal(title,author,scriptlink,origin)
    getgenv().scriptcount = getgenv().scriptcount + 1
    local scriptdata = {
        title = title,
        author = author,
        scriptlink = scriptlink,
        origin = origin
    }
    table.insert(getgenv().uniscripts.allscripts, scriptdata)
end
function addhub(title,author,scriptlink,origin)
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
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Library/kavo-ui.lua"))()
getgenv().Window = Library.CreateLib(version, "DarkTheme")
Window = getgenv().Window
-- getgenv().hyperlibgui.DisplayOrder = 999999999999999999
getgenv().hyperlibgui.ZIndexBehavior = Enum.ZIndexBehavior.Global
local topZIndex = 2147483647 

-- check if getgenv().hyperlibblock exists

local Player = Window:NewTab("Player/General")
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

        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Hyperlib/main/trenglehub.lua"))()
    end)
end)
getgenv().serverhopperlower = GeneralSection:NewButton("Server Hop to empty Server" , "Hop to another Server thats as empty as it can be", function() 
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
 
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
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


-- preloading the universal scripts into memory
loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Hyperlib/main/Games/universal.lua"))()
sortUni()
-- preloading the game hubs into memory
loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Hyperlib/main/Games/hub.lua"))()
sortHubs()


getgenv().generalscripts = Window:NewTab("Universal")
getgenv().generalscriptssection = generalscripts:NewSection("---Universal Scripts---")
getgenv().generalscriptsallloaded = false
getgenv().generalload = getgenv().generalscriptssection:NewButton("Load Universal Scripts", "Loads all Universal Scripts", function()
 
      
        local ongoingexecution = false
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
                    bigGreenItalicText(getLocalPlayerName().. ", your Script finished execution successfully!")
                    ongoingexecution = false
                    wait(0.5)
                    getgenv().statusdict[v.title]:UpdateLabel("Status: Executed successfully")
                    wait(5)
                    getgenv().statusdict[v.title]:UpdateLabel("Status: You have successfully executed this script before")
                else
                    bigRedItalicText(getLocalPlayerName().. ", your Script failed to finish execution!")
                    ongoingexecution = false
                    wait(0.5)
                    getgenv().statusdict[v.title]:UpdateLabel("Status: Failed to execute")
                    wait(5)
                    getgenv().statusdict[v.title]:UpdateLabel("Status: You have failed to execute this script before")
    
                end
            end)
            getgenv().generalscriptssection:NewButton("Copy Origin link of Script", v.origin, function()
                setclipboard(v.origin)
                bigGreenItalicText("Copied Origin link of Script to clipboard!")
            end)

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
getgenv().gamehubs = Window:NewTab("Game Hubs")
getgenv().gamehubsection = gamehubs:NewSection("---Game Hubs---")
getgenv().hubload= getgenv().gamehubsection:NewButton("Load Game Hubs", "Loads all Game Hubs", function()
       
      
        local ongoingexecution = false
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
                    bigGreenItalicText(getLocalPlayerName().. ", your Script finished execution successfully!")
                    ongoingexecution = false
                    wait(0.5)
                    getgenv().statusdict[v.title]:UpdateLabel("Status: Executed successfully")
                    wait(5)
                    getgenv().statusdict[v.title]:UpdateLabel("Status: You have successfully executed this script before")
                else
                    bigRedItalicText(getLocalPlayerName().. ", your Script failed to finish execution!")
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

local gameid = game.PlaceId
local success, result = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Hyperlib/main/Games/" ..  gameid .. ".lua"))()

end)
if success then
    -- sort the scripts in getgenv().gamescripts.allscripts alphabetically from a to z
    local function sortScripts()
        table.sort(getgenv().gamescripts.allscripts, function(a, b)
            return a.title < b.title
        end)
    end
    local ongoingexecution = false
    sortScripts()
    -- make a new tab
    getgenv().gamescripttab = Window:NewTab(getgenv().gamescripts.gamename)
    -- make a new section in the tab
    getgenv().gamescriptsection = gamescripttab:NewSection("---" .. "Scripts" .. "---")
    -- for every script in getgenv().gamescripts.allscripts,
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
                bigGreenItalicText(getLocalPlayerName().. ", your Script finished execution successfully!")
                ongoingexecution = false
                wait(0.5)
                getgenv().statusdict[v.title]:UpdateLabel("Status: Executed successfully")
                wait(5)
                getgenv().statusdict[v.title]:UpdateLabel("Status: You have successfully executed this script before")
            else
                bigRedItalicText(getLocalPlayerName().. ", your Script failed to finish execution!")
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
    print("Loaded game specific scripts")
    bigGreenItalicText("There were scripts found for this game!")
    if getgenv().hyperlibreload == false and  getgenv().serverhoptolow == false then
        spawn(function()
            UpdateWindowTitle("Found Scripts for this game!")
            wait(3)
            UpdateWindowTitle(version)
        end)

    end
else
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
pcall (function()
    if getgenv().serverhoptolow == true then
        -- determine the amount of players in the server
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
getgenv().ExploitManagerSection = ExploitManager:NewSection("---Exploit Manager---")
getgenv().ExploitManagerInformation = ExploitManagerSection:NewLabel("You can kill other Exploit GUIs here")
getgenv().ExploitManagerKillAll = ExploitManagerSection:NewButton("Kill all Exploit GUIs", "Kills all GUIs that were made after the execution of Hyperlib", function()
    -- for every entry in the dictionary guitrackedbyhyperlib
    for gui, _ in pairs(guitrackedbyhyperlib) do
        -- destroy the gui
        gui:Destroy()
        -- remove the guiLabel and guiButton
        guitrackedbyhyperlib[gui][1]:RemoveLabel()
        guitrackedbyhyperlib[gui][2]:RemoveButton()
        -- remove the entry from guitrackedbyhyperlib
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

spawn(function()
    wait(3)
    local coreGui = game:GetService("CoreGui")
    getgenv().previousGUIs = getGUIs(coreGui)  -- Store previous Core GUIs here
    local newGUIs = {}
    local alreadyfound = false
    getgenv().guitrackedbyhyperlib = {}
    while true do
        local trackedisempty = true
        getgenv().currentGUIs = getGUIs(coreGui)
        -- check if any GUIs were added
        for _, gui in pairs(currentGUIs) do
            if not table.find(previousGUIs, gui) then
                table.insert(newGUIs, gui)
            end
        end
        -- if newGUis is not empty
        if #newGUIs > 0 then
            trackedisempty = false
            -- for each gui make a textlabel with the name of the gui and a remove gui button
            for _, gui in pairs(newGUIs) do
                -- check if gui is the same as getgenv().hyperlibgui if it is not then run
                if gui ~= getgenv().hyperlibgui then
                    --check if gui already tracked if not  run
                    -- do this with a for loop and set a bool value already foudn

                    for gui2, _ in pairs(guitrackedbyhyperlib) do
                        -- if the key is the same as the gui then set alreadyfound to true (do not compare the values)
                        --access the gui at guitrackedbyhyperlib[gui2][5]
                        if gui2 == gui then
                            alreadyfound = true
                        end
                    end
                      
                    if alreadyfound == false then

                        local guiName = gui.Name
                        local guiType = gui.ClassName
                        local guiLabel = ExploitManagerSection:NewLabel(guiName .. " (" .. guiType .. ")")
                        local guiButton = ExploitManagerSection:NewButton("Remove", "Removes the GUI", function()
                            gui:Destroy()
                            -- remove the gui entry from guitrackedbyhyperlib
                            ManagerRefreshGuis()
                            bigGreenItalicText("Successfully removed " .. guiName .. " (" .. guiType .. ")!")
                        end)
                        -- make a entry to gutrackedbyhyperlib with {gui object : { guiLabel, guiButton }}
                        guitrackedbyhyperlib[gui] = {guiLabel, guiButton, guiName, guiType, gui}
                    end
                end

            end
            newGUIs = {}  -- Reset newGUIs table
        end
        -- check if any GUIs were removed by checking if all gui objects that were tracked by hyperlib are still in the currentGUIs table
        ManagerRefreshGuis()
        -- if there are no GUIs left that are tracked by hyperlib, make a new label
        

        previousGUIs = currentGUIs  
        wait(5)
    end

end)
Statstab = Window:NewTab("Informations")
local StatusSection = Statstab:NewSection("---Informations---")
StatusSection:NewLabel("Last Update: ".. formatTimeForUser(lastupdate))
StatusSection:NewLabel("Script Version: " .. version)
StatusSection:NewButton("Copy Link to Discord Server", "Copies the Discord Server Link to your clipboard", function()
    setclipboard("https://discord.gg/dTcjXmKJdT")
    bigGreenItalicText("Copied Discord Server Link to clipboard!")
end)
StatusSection:NewLabel("Script was made and is maintained by fantemil")

StatusSection:NewButton("Copy GitHub Link", "Copies the GitHub Link to your clipboard", function()
    setclipboard("https://github.com/Fantemil/Hyperlib")
    bigGreenItalicText("Copied GitHub Link to clipboard!")
end)
local Keybinds = Window:NewTab("Keybinds")
local KeybindsSection = Keybinds:NewSection("---Keybinds---")
KeybindsSection:NewKeybind("Toggle UI", "Press T To toggle the Hyperlib UI (Click to change Keybind)", Enum.KeyCode.T, function()
	Library:ToggleUI()
end)