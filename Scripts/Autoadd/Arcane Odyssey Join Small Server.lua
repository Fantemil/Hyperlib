local placeId = (game.PlaceId ~= 3272915504) and game.PlaceId or 12604352060
local http = game:GetService("HttpService")
local tps = game:GetService("TeleportService")
local function fetchNext(cursor)
   cursor = cursor or ""
   return http:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. placeId .. "/servers/public?limit=100&cursor="..cursor))
end

local f = fetchNext()
local toJoin;
local maximum = math.huge
while(f.nextPageCursor) do
   for i, server in next, f.data do
       if(server.playing < maximum)then
           maximum = server.playing
           print("Found server with max: ", maximum)
           toJoin = server
       end
   end
   f = fetchNext(f.nextPageCursor)
end

if(toJoin)then
   warn("We go tp")
   tps:TeleportToPlaceInstance(game.PlaceId, toJoin.id, game.Players.LocalPlayer, nil, tps:GetLocalPlayerTeleportData() or 1)
end