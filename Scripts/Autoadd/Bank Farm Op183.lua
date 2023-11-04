repeat task.wait() until game:IsLoaded()

SendWebhook = true
Webhook = ""

local Workspace = game:GetService("Workspace")
local Map =  Workspace.Map
local AreasOfImportance = Map.AreasOfImportance
local Bank = AreasOfImportance.Bank
local CashStacks = Bank.CashStacks
local Players = game:GetService("Players")
local Player = Players.LocalPlayer 
local Character = Player.Character
local Humanoid = Character:WaitForChild("Humanoid")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PlayerData = ReplicatedStorage:FindFirstChild("AllPlayerData")

local function fireproximityprompt(Obj, Amount, Skip)
    if Obj.ClassName == "ProximityPrompt" then 
        Amount = Amount or 1
        local PromptTime = Obj.HoldDuration
        if Skip then 
            Obj.HoldDuration = 0
        end
        for i = 1, Amount do 
            Obj:InputHoldBegin()
            if not Skip then 
                wait(Obj.HoldDuration)
            end
            Obj:InputHoldEnd()
        end
        Obj.HoldDuration = PromptTime
    else 
        error("userdata<ProximityPrompt> expected")
    end
end

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

local function SendInfo()
    local url = Webhook
    local data = {
        ["embeds"] = {
            {
                ["title"] = "Stat Update",
                ["description"] = "Username: ||" .. game.Players.LocalPlayer.Name .. "||",
                ["type"] = "rich",
                ["color"] = tonumber(0x7269da),
            }
        }
    }

    data.embeds[1].description = data.embeds[1].description .. "\nLevel: " .. PlayerData[Player.Name]["Char Data"].ActualLevel.Value
    data.embeds[1].description = data.embeds[1].description .. "\nCash: " .. PlayerData[Player.Name]["Char Data"].Cash.Value
    data.embeds[1].description = data.embeds[1].description .. "\nStat Points: " .. PlayerData[Player.Name]["Char Data"].StatPoints.Value

    local newdata = game:GetService("HttpService"):JSONEncode(data)

    local headers = {
        ["content-type"] = "application/json"
    }

    local request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)
end


while task.wait() do
local function isCashStacksEmpty()
    local cashStacks = CashStacks:GetChildren()
    return #cashStacks == 0
end

if game:GetService("Workspace").Values.BankRobbed.Value == true then
    if isCashStacksEmpty() then
        if SendWebhook == true then
        SendInfo()
        else
        task.wait(0.2)
        Teleport()
        task.wait(15)
        end
    else
        for i, v in pairs(CashStacks:GetDescendants()) do
            if v.ClassName == "ProximityPrompt" then
                Character:SetPrimaryPartCFrame(CFrame.new(v.Parent.Position))
                fireproximityprompt(v, 1, true)
            end
        end
    end
    elseif game:GetService("Workspace").Values.BankRobbed.Value == false then
        Character:SetPrimaryPartCFrame(CFrame.new(Bank.BankDoor.Position) * CFrame.new(0, 0, 2))
        task.wait(0.1)
        fireproximityprompt(Bank.BankDoor.ProximityPrompt, 1, true)
    end
end