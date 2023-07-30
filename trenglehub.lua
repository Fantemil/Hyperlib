getgenv().gamecount = 0
getgenv().scriptcount = 0
lastupdate = "GMT +1: 30.07.2023 19:10:16"

--^^^dont touch ^^^
getgenv().statusdict = {}
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



function addscript(Place,Gamename,title,author,scriptlink, origin)
    getgenv().gamecount = getgenv().gamecount + 1
    getgenv().scriptcount = getgenv().scriptcount + 1
    local ongoingexecution  = false
    name = title
    if game.PlaceId == Place then
        Window = getgenv().Window
        getgenv().main = Window:NewTab(Gamename)
        main = getgenv().main
        getgenv().script = main:NewSection("---Scripts---")
        getgenv().script:NewLabel(title)
        getgenv().statusdict[title] = getgenv().script:NewLabel("Status: Not yet executed")
        getgenv().script:NewButton("Execute", author, function()
            function toexecute()
                loadstring(game:HttpGet(scriptlink))()
            end
            bigBlueItalicText("Starting execution of your script...")
            ongoingexecution = true
            spawn(function()
                while ongoingexecution == true do
                    getgenv().statusdict[title]:UpdateLabel("Status: Executing")
                    wait(0.1)
                    getgenv().statusdict[title]:UpdateLabel("Status: Executing.")
                    wait(0.1)
                    getgenv().statusdict[title]:UpdateLabel("Status: Executing..")
                    wait(0.1)
                    getgenv().statusdict[title]:UpdateLabel("Status: Executing...")
                    wait(0.1)
                end
            end)
            local success, result = pcall(toexecute)
            if success then
                ongoingexecution = false
                bigGreenItalicText(getLocalPlayerName().. ", your Script finished execution successfully!")
                wait(0.5)
                getgenv().statusdict[title]:UpdateLabel("Status: Executed successfully")
                wait(5)
                getgenv().statusdict[title]:UpdateLabel("Status: You have successfully executed this script before")
            else
                ongoingexecution = false
                bigRedItalicText(getLocalPlayerName().. ", your Script failed to finish execution!")
                wait(0.5)
                getgenv().statusdict[title]:UpdateLabel("Status: Failed to execute")
                wait(5)
                getgenv().statusdict[title]:UpdateLabel("Status: You have failed to execute this script before")
            end
        end)
        getgenv().script:NewButton("Copy Origin link of Script", origin, function()
            setclipboard(origin)
            bigGreenItalicText("Copied Origin link of Script to clipboard!")

        end)
    end
end

function addscriptexist(Place,title,author,scriptlink, origin)
    getgenv().scriptcount = getgenv().scriptcount + 1
    name = title
    local ongoingexecution  = false
    if game.PlaceId == Place then
        getgenv().script:NewLabel(title)
        getgenv().statusdict[title] = getgenv().script:NewLabel("Status: Not yet executed")
        getgenv().script:NewButton("Execute", author, function()
            function toexecute()
                loadstring(game:HttpGet(scriptlink))()
            end
            bigBlueItalicText("Starting execution of your script...")
            ongoingexecution = true
            spawn(function()
                while ongoingexecution == true do
                    getgenv().statusdict[title]:UpdateLabel("Status: Executing")
                    wait(0.1)
                    getgenv().statusdict[title]:UpdateLabel("Status: Executing.")
                    wait(0.1)
                    getgenv().statusdict[title]:UpdateLabel("Status: Executing..")
                    wait(0.1)
                    getgenv().statusdict[title]:UpdateLabel("Status: Executing...")
                    wait(0.1)
                end
            end)

            
            local success, result = pcall(toexecute)
            if success then
                bigGreenItalicText(getLocalPlayerName().. ", your Script finished execution successfully!")
                ongoingexecution = false
                wait(0.5)
                getgenv().statusdict[title]:UpdateLabel("Status: Executed successfully")
                wait(5)
                getgenv().statusdict[title]:UpdateLabel("Status: You have successfully executed this script before")
            else
                bigRedItalicText(getLocalPlayerName().. ", your Script failed to finish execution!")
                ongoingexecution = false
                wait(0.5)
                getgenv().statusdict[title]:UpdateLabel("Status: Failed to execute")
                wait(5)
                getgenv().statusdict[title]:UpdateLabel("Status: You have failed to execute this script before")

            end
        end)
        getgenv().script:NewButton("Copy Origin link of Script", origin, function()
            setclipboard(origin)
            bigGreenItalicText("Copied Origin link of Script to clipboard!")
        end)
    end
        
end
function addscriptuniversal(title,author,scriptlink,origin)
    local ongoingexecution  = false
    getgenv().scriptcount = getgenv().scriptcount + 1
    name = title
    getgenv().generalscriptssection:NewLabel(title)
    getgenv().statusdict[title] = getgenv().generalscriptssection:NewLabel("Status: Not yet executed")
    getgenv().generalscriptssection:NewButton("Execute", author, function()
            function toexecute()
                loadstring(game:HttpGet(scriptlink))()
            end
            ongoingexecution = true
            bigBlueItalicText("Starting execution of your script...")
            spawn(
                function()
                    while ongoingexecution == true do
                        getgenv().statusdict[title]:UpdateLabel("Status: Executing")
                        wait(0.1)
                        getgenv().statusdict[title]:UpdateLabel("Status: Executing.")
                        wait(0.1)
                        getgenv().statusdict[title]:UpdateLabel("Status: Executing..")
                        wait(0.1)
                        getgenv().statusdict[title]:UpdateLabel("Status: Executing...")
                        wait(0.1)
                    end
                end)
            
            local success, result = pcall(toexecute)
            if success then
                ongoingexecution = false

                bigGreenItalicText(getLocalPlayerName().. ", your Script finished execution successfully!")
                wait(0.5)
                getgenv().statusdict[title]:UpdateLabel("Status: Executed successfully")

                wait(5)
                getgenv().statusdict[title]:UpdateLabel("Status: You have successfully executed this script before")
            else
                ongoingexecution = false
                bigRedItalicText(getLocalPlayerName().. ", your Script failed to finish execution!")
                wait(0.5)
                getgenv().statusdict[title]:UpdateLabel("Status: Failed to execute")
                wait(5)
                getgenv().statusdict[title]:UpdateLabel("Status: You have failed to execute this script before")
                
            end
        end)
    getgenv().generalscriptssection:NewButton("Copy Origin link of Script", origin, function()
        setclipboard(origin)
        bigGreenItalicText("Copied Origin link of Script to clipboard!")
    end)
end
function addhub(title,author,scriptlink,origin)
    local ongoingexecution  = false
    getgenv().scriptcount = getgenv().scriptcount + 1
    name = title
    getgenv().gamehubsection:NewLabel(title)
    getgenv().statusdict[title] = getgenv().gamehubsection:NewLabel("Status: Not yet executed")
    getgenv().gamehubsection:NewButton("Execute", author, function()
            function toexecute()
                loadstring(game:HttpGet(scriptlink))()
            end
            bigBlueItalicText("Starting execution of your script...")
            ongoingexecution = true
            spawn(
                function()
                    while ongoingexecution == true do
                        getgenv().statusdict[title]:UpdateLabel("Status: Executing")
                        wait(0.1)
                        getgenv().statusdict[title]:UpdateLabel("Status: Executing.")
                        wait(0.1)
                        getgenv().statusdict[title]:UpdateLabel("Status: Executing..")
                        wait(0.1)
                        getgenv().statusdict[title]:UpdateLabel("Status: Executing...")
                        wait(0.1)
                    end
                end)
            local success, result = pcall(toexecute)
            if success then
                ongoingexecution = false
                bigGreenItalicText(getLocalPlayerName().. ", your Script finished execution successfully!")
                wait(0.5)
                getgenv().statusdict[title]:UpdateLabel("Status: Executed successfully")
                wait(5)
                getgenv().statusdict[title]:UpdateLabel("Status: You have successfully executed this script before")
            else
                ongoingexecution = false
                bigRedItalicText(getLocalPlayerName().. ", your Script failed to finish execution!")
                wait(0.5)
                getgenv().statusdict[title]:UpdateLabel("Status: Failed to execute")
                wait(5)
                getgenv().statusdict[title]:UpdateLabel("Status: You have failed to execute this script before")

            end
        end)
    getgenv().gamehubsection:NewButton("Copy Origin link of Script", origin, function()
        setclipboard(origin)
        bigGreenItalicText("Copied Origin link of Script to clipboard!")
    end)
end
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Library/kavo-ui.lua"))()
getgenv().Window = Library.CreateLib("Hyperlib V3", "DarkTheme")
Window = getgenv().Window





getgenv().generalscripts = Window:NewTab("General")
getgenv().generalscriptssection = getgenv().generalscripts:NewSection("---General/Universal Scripts---")
getgenv().generalscriptssection:NewButton("Load General Scripts", "Loads all General Scripts", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Hyperlib/main/Games/universal.lua"))()
end)
getgenv().gamehubs = Window:NewTab("Game Hubs")
getgenv().gamehubsection = gamehubs:NewSection("---Game Hubs---")
getgenv().gamehubsection:NewButton("Load Game Hubs", "Loads all Game Hubs", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Hyperlib/main/Games/hub.lua"))()
end)
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

Statstab = Window:NewTab("Status")
local StatusSection = Statstab:NewSection("---Last Update---")
StatusSection:NewLabel(lastupdate)
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
    print("Successfully loaded game specific scripts")
else
    print("Failed to load game specific scripts")
end
