--\\settings
local minRichPeople = 2
local minBought = 1000
local delay = true

--\\code
print("innit"); repeat wait() until game:IsLoaded(); task.wait(1)
if game.GameId == 3367801828 then
    print("loaded")
    local function speakmessage(message)
        game.StarterGui:SetCore("SendNotification", {
            Title = "garfieldcatto";
            Text = message;
            Icon = "";
            Duration = 15;
        })
    end

    --charwar serverhop https://v3rmillion.net/showthread.php?tid=1040972
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    local File = pcall(function()
        AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
    end)
    if not File then
        table.insert(AllIDs, actualHour)
        writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
    end
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
                                delfile("NotSameServers.json")
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
                        writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                        wait()
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
    --server checker
    minBought=minBought-1
   
    local moneyValues={}
    local attractive=0

    for i,v in pairs(game:GetService("Players"):GetDescendants()) do
        if v.Name=="Bought" and v:IsA("IntValue") and v.Parent.Name=="leaderstats" then
            table.insert(moneyValues,v.Value)
        end
    end

    for i,v in pairs(moneyValues) do
        if v>minBought then
            attractive = attractive+ 1
        end
    end

    if attractive < minRichPeople then
        print("not attractive")
        speakmessage("not attractive enough"); if delay then task.wait(1.5) end; Teleport()
    else
        print("attractive")
        speakmessage("attractive server found")
    end
end