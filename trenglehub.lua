getgenv().gamecount = 0
getgenv().scriptcount = 0
lastupdate = "GMT +2: 03.08.2023 18:03:36"
--^^^dont touch ^^^
getgenv().hubscripts = {
    allscripts = {}
}
getgenv().uniscripts = {
    allscripts = {}
}
version = "Hyperlib V.3.3"
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
end
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
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Library/kavo-ui.lua"))()
getgenv().Window = Library.CreateLib(version, "DarkTheme")
Window = getgenv().Window


local Player = Window:NewTab("Player/General")
local PlayerSection = Player:NewSection("Player")
local GeneralSection = Player:NewSection("General")
GeneralSection:NewButton("Rejoin", "Rejoins the game", function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
end)
GeneralSection:NewButton("Exit Game", "Exits the game", function()
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

        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Hyperlib/main/trenglehub.lua"))()
    end)
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


getgenv().generalscripts = Window:NewTab("Universal")
getgenv().generalscriptssection = generalscripts:NewSection("---Universal Scripts---")
getgenv().generalload = getgenv().generalscriptssection:NewButton("Load Universal Scripts", "Loads all Universal Scripts", function()
    if getgenv().loadedgeneral == false then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Hyperlib/main/Games/universal.lua"))()
        local function sortScripts()
            table.sort(getgenv().uniscripts.allscripts, function(a, b)
                return a.title < b.title
            end)
        end
        sortScripts()
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
    else
        bigRedItalicText("You have already loaded all Universal Scripts!")
        spawn(function()
            getgenv().generalload:UpdateButton("Already Loaded!")
            wait(5)
            getgenv().generalload:UpdateButton("Finished loading!")
        end)
    end

end)
getgenv().gamehubs = Window:NewTab("Game Hubs")
getgenv().gamehubsection = gamehubs:NewSection("---Game Hubs---")
getgenv().hubload= getgenv().gamehubsection:NewButton("Load Game Hubs", "Loads all Game Hubs", function()
    if getgenv().loadedhub == false then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Hyperlib/main/Games/hub.lua"))()
        local function sortHubs()
            table.sort(getgenv().hubscripts.allscripts, function(a, b)
                return a.title < b.title
            end)
        end
        sortHubs()
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
    else
        bigRedItalicText("You have already loaded the Game Hubs!")
        spawn(function()
            getgenv().hubload:UpdateButton("Already Loaded!")
            wait(5)
            getgenv().hubload:UpdateButton("Finished loading!")
        end)
    end
end)

Statstab = Window:NewTab("Statistics")
local StatusSection = Statstab:NewSection("---Last Update---")
StatusSection:NewLabel(formatTimeForUser(lastupdate))
local Keybinds = Window:NewTab("Keybinds")
local KeybindsSection = Keybinds:NewSection("---Keybinds---")
KeybindsSection:NewKeybind("Toggle UI", "Press T To toggle the Hyperlib UI (Click to change Keybind)", Enum.KeyCode.T, function()
	Library:ToggleUI()
end)

local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("---Credits---")
local CreditsSection2 = Credits:NewSection("Made by fantemil")
CreditsSection2:NewButton("Copy GitHub Link", "Copies the GitHub Link to your clipboard", function()
    setclipboard("https://github.com/Fantemil/Hyperlib")
    bigGreenItalicText("Copied GitHub Link to clipboard!")
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
else
    print("Failed to load game specific scripts")
    bigRedItalicText("There were no scripts found for this game!")
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
