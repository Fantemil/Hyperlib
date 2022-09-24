-- Settings
local Settings = {
   Cookie = "", -- Your cookie
   PlaceId = "", -- PlaceId of target's current game
   UserId = "", -- UserId of target
}

-- Objects
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer

local RequestFunction
if syn and syn.request then
   RequestFunction = syn.request
elseif request then
   RequestFunction = request
elseif http and http.request then
   RequestFunction = http.request
elseif http_request then
   RequestFunction = http_request
end

local CsrfToken = ""
local FakeUserAgent =  "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) discord/0.0.305 Chrome/69.0.3497.128 Electron/4.0.8 Safari/537.36"

-- Functions
local GetCsrfToken = function(Cookie)
   local Request = RequestFunction({
       Url = "https://auth.roblox.com/v2/logout",
       Method = "POST",
       Headers = {
           ["content-type"] = "application/json",
           ["user-agent"] = FakeUserAgent,
           ["cookie"] = ".ROBLOSECURITY=" .. Cookie
       }
   })
   return Request.Headers["x-csrf-token"]
end

local SafeRequest = function(Url, Method)
   return RequestFunction({
       Url = Url,
       Method = Method,
       Headers = {
           ["content-type"] = "application/json",
           ["user-agent"] = FakeUserAgent,
           ["cookie"] = ".ROBLOSECURITY=" .. Settings.Cookie,
           ["x-csrf-token"] = CsrfToken
       }
   })
end

-- Start
if not RequestFunction then
   return print("Your executor does not support http requests.")
end

CsrfToken = GetCsrfToken(Settings.Cookie)

if not CsrfToken then
   return print("The cookie you have entered is not valid.")
end

local Thumbnail = SafeRequest("https://www.roblox.com/headshot-thumbnail/json?userId=" .. Settings.UserId .. "&width=48&height=48", "GET")
Thumbnail = HttpService:JSONDecode(Thumbnail.Body).Url

local Index = 0
repeat RunService.Heartbeat:Wait()
   local GameInstances = SafeRequest("https://www.roblox.com/games/getgameinstancesjson?placeId=" .. Settings.PlaceId .. "&startindex=" .. Index)
   pcall(spawn, function() GameInstances = HttpService:JSONDecode(GameInstances.Body) end)
   wait(0.2)
   if GameInstances and GameInstances.Collection and not GameInstances.StatusCode then
       for _,a in pairs(GameInstances.Collection) do
           for _,b in pairs(a.CurrentPlayers) do
               if b.Id == Settings.UserId or b.Thumbnail.Url == Thumbnail then
                   return TeleportService:TeleportToPlaceInstance(tonumber(Settings.PlaceId), a.Guid)
               end
           end
       end
       if Index > GameInstances.TotalCollectionSize then
           return print("Could not find game server.")
       end
       print(tostring(Index) .. "/" .. tostring(GameInstances.TotalCollectionSize) .. " servers scanned")
       Index = Index + 10
   end
until nil