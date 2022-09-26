wait(3)

repeat task.wait() until game:isLoaded()
wait(3)
repeat task.wait() until game:GetService("Players")
repeat task.wait() until game:GetService("Players").LocalPlayer
repeat task.wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
repeat task.wait() until game:GetService("Workspace"):FindFirstChild('__MAP')


-- Skidded the teleport from charwar - https://v3rmillion.net/showthread.php?tid=1040972
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
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

function doprint(text)
 if syn or iskrnlclosure then
  rconsoleprint(text)
 else
  print(text)
 end 
end

if game.PlaceId == 6284583030 then
    doprint('@@LIGHT_CYAN@@')
 doprint("Joined new game ".. game.JobId .. "\n")
 workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "get coins")
 workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "farm coin")
 workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "join coin")

 local GameLibrary = require(game:GetService("ReplicatedStorage").Framework.Library)

 local function GetMyPets()
  local returntable = {}
  for i,v in pairs(GameLibrary.Save.Get().Pets) do
   if v.e then 
    table.insert(returntable, v.uid)
   end
  end
  return returntable
 end

 local function FarmCoin(CoinID, PetID)
  game.workspace['__THINGS']['__REMOTES']["join coin"]:InvokeServer({[1] = CoinID, [2] = {[1] = PetID}})
  game.workspace['__THINGS']['__REMOTES']["farm coin"]:FireServer({[1] = CoinID, [2] = PetID})
 end

 local GotChest = false
 local Area = ""
 for q,s in pairs({'Spawn', "Fantasy", "Tech"}) do
  if not GotChest then
   GameLibrary.WorldCmds.Load(s)
   repeat wait() until GameLibrary.WorldCmds.HasLoaded(s)
   local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
   for i,v in pairs(ListCoins) do
    if v.n == 'Christmas Gingerbread Chest' then
     Area = string.gsub(v.a, " FRONT", "")
     local Starttick = tick()
                    doprint('@@LIGHT_GREEN@@')
     doprint("Found "..v.n.." in "..Area.." with index "..i.."\n")
     repeat wait()
      for a,b in pairs(GetMyPets()) do
       coroutine.wrap(function()
        FarmCoin(i, b)
       end)()
      end
     until not game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1][i] or tick() > (Starttick + 10)
     GotChest = true
    end
   end

   if not GotChest then
                doprint('@@LIGHT_RED@@')
    doprint("There Was No Gingerbread Chest In The " ..s .." World\n")
   end
  end
 end
 if GotChest then
        doprint('@@LIGHT_GREEN@@')
        local Stage = GameLibrary.Save.Get().ChristmasEventQuest.Stage or "n/a"
        local Progress = GameLibrary.Save.Get().ChristmasEventQuest.Progress or "n/a"
        doprint("OMG Got Christmas Gingerbread Chest in ".. Area.."\nNew Progress: "..Progress.." on Stage "..Stage.."\n\n")
 else
        doprint('@@LIGHT_RED@@')
  doprint("not got Christmas Gingerbread Chest\n\n")
 end
end
Teleport()