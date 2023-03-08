local Network = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Uvxtq/Project-AlphaZero/main/AlphaZero/CustomFuncs/Network.lua"))()
local Players = game:GetService("Players");
local GroupService = game:GetService("GroupService")
local CreatorId, PlaceId, JobId = game.CreatorId, game.PlaceId, game.JobId;
local LocalPlayer = Players.LocalPlayer;
local TeleportService = game:GetService("TeleportService");
local HttpService = game:GetService("HttpService");
local Request = (syn and syn.request) or (http and http.request) or http_request

local GroupId = nil;
if Players:GetPlayerByUserId(CreatorId) == nil then
    local Group = GroupService:GetGroupInfoAsync(CreatorId)
    GroupId = Group.Id;
end

local function GetWorstRank()
    local WorstRank = math.huge
    local Group = GroupService:GetGroupInfoAsync(CreatorId)
    for _, Rank in next, Group.Roles do
        if Rank.Rank < WorstRank then
            WorstRank = Rank.Rank
        end
    end
    return WorstRank
end

local function IsAdmin(Player)
    if Player.UserId == CreatorId then
        return true;
    elseif GroupId ~= nil then
        local InGroup = Player:IsInGroup(CreatorId)
        local GroupRank = Player:GetRankInGroup(GroupId)
        local WorstRank = GetWorstRank()

        if InGroup and GroupRank > WorstRank then
            return true;
        end
    end
    return false;
end

local function ServerHop()
    local Servers = {}
    local Response = Request({Url = string.format("https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=Asc&limit=100", PlaceId)})
    local Body = HttpService:JSONDecode(Response.Body)
    if Body and Body.data then
        for _, Server in next, Body.data do
            if type(Server) == "table" and tonumber(Server.playing) and tonumber(Server.maxPlayers) and Server.playing < Server.maxPlayers and Server.id ~= JobId then
                table.insert(Servers, 1, Server.id)
            end
        end
    end

    if #Servers > 0 then
        TeleportService:TeleportToPlaceInstance(PlaceId, Servers[math.random(1, #Servers)], LocalPlayer)
        Network:QueueOnTeleport([[
            repeat task.wait() until game:IsLoaded()

            local Network = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Uvxtq/Project-AlphaZero/main/AlphaZero/CustomFuncs/Network.lua"))()
            Network:Notify("Server Hop", "Successfully Hopped To New Server", 5)
        ]])
    else
        Network:Notify("Server Hop", "No servers found to hop to", 10)
    end
end

for _, Player in next, Players:GetPlayers() do
    if IsAdmin(Player) then
        LocalPlayer:Kick(string.format("Admin Detected (%s), Server Hopping...", Player.Name))
        ServerHop()
    end
end

Players.PlayerAdded:Connect(function(Player)
    if IsAdmin(Player) then
        LocalPlayer:Kick(string.format("Admin Detected (%s), Server Hopping...", Player.Name))
        ServerHop()
    end
end)