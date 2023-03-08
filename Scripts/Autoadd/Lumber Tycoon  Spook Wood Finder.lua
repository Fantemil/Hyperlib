getgenv().webhook = "webhook here"


local Tree

local sizeTable = {}
local sizeTable2 = {}
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



repeat task.wait() until game:IsLoaded()


for i,v in pairs (workspace:GetDescendants()) do
   if v:IsA("StringValue") and v.Name == "TreeClass" then
       if v.Value == "Spooky" then
           if v.Parent:FindFirstChild("WoodSection") then

               getgenv().val = 0
               getgenv().val = getgenv().val + v.Parent.WoodSection.Size.Y / (1 / (v.Parent.WoodSection.Size.X * v.Parent.WoodSection.Size.Z))


           end
       end
   end
end

for i,v in pairs (workspace:GetDescendants()) do
   if v:IsA("StringValue") and v.Name == "TreeClass" then
       if v.Value == "SpookyNeon" then
           if v.Parent:FindFirstChild("WoodSection") then

               getgenv().val2 = 0
               getgenv().val2 = getgenv().val2 + v.Parent.WoodSection.Size.Y / (1 / (v.Parent.WoodSection.Size.X * v.Parent.WoodSection.Size.Z))


           end
       end
   end
end

for i, v in pairs(workspace:GetChildren()) do
   if v.Name == "TreeRegion" then
       for k, l in pairs(v:GetChildren()) do
           if l:FindFirstChild("TreeClass") and l:FindFirstChild("WoodSection") and l:FindFirstChild("Owner") then
               if l.TreeClass.Value == "Spooky" and l.Owner.Value == nil then
                   Tree = l
               end
           end
       end
   end
end

for i, v in pairs(workspace:GetChildren()) do
   if v.Name == "TreeRegion" then
       for k, l in pairs(v:GetChildren()) do
           if l:FindFirstChild("TreeClass") and l:FindFirstChild("WoodSection") and l:FindFirstChild("Owner") then
               if l.TreeClass.Value == "SpookyNeon" and l.Owner.Value == nil then
                   Tree2 = l
               end
           end
       end
   end
end

if Tree2 == nil then

else
   local sinCFrame = Tree2["WoodSection"].CFrame
   local time = os.date("%c", os.time())
   local teleport2 = "```lua\n".. 'game:GetService("TeleportService")'..":TeleportToPlaceInstance".."("..game.PlaceId..",".. "'" .. game.JobId.. "'".. ",".."game.Players.LocalPlayer"..")```"
   local tpScript = "game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(" .. tostring(sinCFrame) .. ")"

   function webhook(NAME)
       url = getgenv().webhook
       local data = {
           ["content"] = "",
           ["username"] = NAME,
           ["embeds"] = {
               {
                   ["title"] = 'Sinister Wood Found!!!!',
                   ["description"] = "Size **" .. getgenv().val2 .. "** Sinister Wood",
                   ["type"] = "rich",
                   ["footer"] = {
                       ["text"] = time
                   },
                   fields = {

                       {
                           name = "**Join script**",
                           value = teleport2,
                           inline = true
                       },

                       {
                           name = "**Auto Claimer**",
                           value = '```lua\nloadstring(game:HttpGet("https://pastebin.com/raw/uaK9gH1s"))()```',
                           inline = false
                       },
                       {
                           name = "**Teleport Script**",
                           value = "```lua\n" .. tpScript .. "```",
                           inline = false

                       }




                   }
               }
           }
       }
       local newdata = game:GetService("HttpService"):JSONEncode(data)

       local headers = {
           ["content-type"] = "application/json"
       }

       request = http_request or request or HttpPost or syn.request
       local a = {Url = url, Body = newdata, Method = "POST", Headers = headers}

       request(a)
   end

   webhook("Sinister Finder")
   Teleport()

end

if Tree == nil then
   Teleport()

else


   local spookCFrame = Tree["WoodSection"].CFrame
   local time = os.date("%c", os.time())
   local teleport = "```lua\n".. 'game:GetService("TeleportService")'..":TeleportToPlaceInstance".."("..game.PlaceId..",".. "'" .. game.JobId.. "'".. ",".."game.Players.LocalPlayer"..")```"
   local tpScript = "game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(" .. tostring(spookCFrame) .. ")"

   function webhook(NAME)
       url = getgenv().webhook
       local data = {
           ["content"] = "",
           ["username"] = NAME,
           ["embeds"] = {
               {
                   ["title"] = 'Spook Wood Found',
                   ["description"] = "Size **" .. getgenv().val .. "** Spook Wood",
                   ["type"] = "rich",
                   ["footer"] = {
                       ["text"] = time
                   },
                   fields = {

                       {
                           name = "**Join script**",
                           value = teleport,
                           inline = true
                       },

                       {
                           name = "**Auto Claimer**",
                           value = '```lua\nloadstring(game:HttpGet("https://pastebin.com/raw/uaK9gH1s"))()```',
                           inline = false
                       },
                       {
                           name = "**Teleport Script**",
                           value = "```lua\n" .. tpScript .. "```",
                           inline = false

                       }




                   }
               }
           }
       }
       local newdata = game:GetService("HttpService"):JSONEncode(data)

       local headers = {
           ["content-type"] = "application/json"
       }

       request = http_request or request or HttpPost or syn.request
       local a = {Url = url, Body = newdata, Method = "POST", Headers = headers}

       request(a)
   end

   webhook("Spook Finder")


   Teleport()
end