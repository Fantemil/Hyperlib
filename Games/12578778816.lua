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
addscript(12578778816, "Current Game","GUI for void update", "Uploaded by Partner on scriptblox.com", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GUI%20for%20void%20update.lua", "https://scriptblox.com/script/Billionaire-Simulator-2-VOID!!-GUI-for-void-update-12146")