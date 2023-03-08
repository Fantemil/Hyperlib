local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/SmoxHub/Smox-UI/main/F2B'))()

_G.AutoKill = true
function autokill()
  while _G.AutoKill == true do -- WE ARE SEXIST BITCHES
loadstring(game:HttpGet("https://raw.githubusercontent.com/SmoxHub/Smox-UI/main/Sexist"))()
     wait(18) -- I didn't want to check the distance so I just made it do it after 18sec 
  end
end

--Idk did I check if there was a touch interest?? If there was shit you can do better code LMFAO
_G.AutoHeal = true
function autoheal()
  while _G.AutoHeal == true do 
   wait(5)
for i,v in pairs(game:GetService("Workspace")["__DEBRIS"].MonsterDrops:GetChildren()) do
  if v.Name == "Heart" then 
    v.CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
  end
  end
  end
end

_G.AutoStar = true
function autostar()
  while _G.AutoStar == true do 
   wait(1)
  for i,v in pairs(game:GetService("Workspace")["__DEBRIS"].MonsterDrops:GetChildren()) do
  if v.Name == "Star" then -- Collect Stars daddy
    v.CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
  end 
  end
end
end

_G.AutoCoin = true
function autocoin()
  while _G.AutoCoin == true do 
   wait(1)
for i,v in pairs(game:GetService("Workspace")["__DEBRIS"].MonsterDrops:GetChildren()) do
  if v.Name == "Coin" then -- Coins
    v.CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
  end
  end
  end
end
    setclipboard("discord.gg/VbT6QVJqYN")
local Window = Rayfield:CreateWindow({
 Name = "SmoxHub coming back!?",
 LoadingTitle = "Build and Survive",
 LoadingSubtitle = "By SmoxHub",
 ConfigurationSaving = {
  Enabled = true,
  FolderName = "F2B",
  FileName = "F2B-HUB"
 },
 KeySystem = true, 
 KeySettings = {
  Title = "F2B-HUB",
  Subtitle = "Key System",
  Note = "Join copied to clipboard (discord.gg/VbT6QVJqYN)",
  SaveKey = true,
  Key = "FK9YH*$#GRJI!@*" -- if you are smart you should put this and not really join the discord or just remove this so you don't have to put a key

    }
})

local Tab = Window:CreateTab("Auto Farm", 4483362458)

local Section = Tab:CreateSection("Section Example")
Section:Set("SmoxHub Back?")

local Toggle = Tab:CreateToggle({
 Name = "Auto Kill Monsters",
 CurrentValue = false,
 Flag = "Toggle1",
 Callback = function(Kill)
  _G.AutoKill = Kill
  autokill()
 end,
})
local Toggle = Tab:CreateToggle({
 Name = "Auto Heal",
 CurrentValue = false,
 Flag = "Toggle1",
 Callback = function(Value)
  _G.AutoHeal = Value
  autoheal()
 end,
})

local Toggle = Tab:CreateToggle({
 Name = "Auto Collect Star",
 CurrentValue = false,
 Flag = "Toggle1", 
 Callback = function(Value)
    _G.AutoStar = Value
  autostar()
 end,
})
local Toggle = Tab:CreateToggle({
 Name = "Auto Collect Coins",
 CurrentValue = false,
 Flag = "Toggle1", 
 Callback = function(Value)
    _G.AutoCoin = Value
  autocoin()
 end,
})

local Tab1 = Window:CreateTab("Server", 4483362458) 

local Section = Tab1:CreateSection("Server")
local Button = Tab1:CreateButton({
 Name = "Rejoin-Server",
 Callback = function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer) 

 end,
})
local Button = Tab1:CreateButton({
 Name = "Server-Hop",
 Callback = function()
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
Teleport() 
 end,
}) 