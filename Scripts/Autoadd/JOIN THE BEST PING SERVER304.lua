local HTTPService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local StatsService = game:GetService("Stats")

local function fetchServersData(placeId, limit)
    local url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?limit=%d", placeId, limit)
    local success, response = pcall(function()
        return HTTPService:JSONDecode(game:HttpGet(url))
    end)

    if success and response and response.data then
        return response.data
    end

    return nil
end

local placeId = game.PlaceId
local serverLimit = 100
local servers = fetchServersData(placeId, serverLimit)

if not servers then
    return
end

local lowestPingServer = servers[1]

for _, server in pairs(servers) do
    if server["ping"] < lowestPingServer["ping"] then
        lowestPingServer = server
    end
end

local commonLoadTime = 5
task.wait(commonLoadTime)

local pingThreshold = 100
local serverStats = StatsService.Network.ServerStatsItem
local dataPing = serverStats["Data Ping"]:GetValueString()
local pingValue = tonumber(dataPing:match("(%d+)"))

if pingValue >= pingThreshold then
    TeleportService:TeleportToPlaceInstance(placeId, lowestPingServer.id)
else
   	-- Good ping
end