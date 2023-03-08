local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/SmoxHub/SmoxHub/main/SEXIST.lua"))()

SolarisLib:Notification("Notification", "Loaks-Hub will no longer update the script for this game since it's dead")

_G.AutoCoin = true
function autocoin()
    while _G.AutoCoin == true do 
        for i,v in pairs(game:GetService("Workspace").Coins:GetChildren()) do
            task.wait()
            if v.Name == "Coin" then 
                v.CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
            end
        end
    end
end

_G.AutoSpeed = true
function autospeed()
    while _G.AutoSpeed == true do 
        wait(0.1)
        game:GetService("ReplicatedStorage").BuySM:FireServer()
    end
end

_G.rebirth = true
function autorebirth()
    while _G.rebirth == true do 
        wait(0.1)
        game:GetService("ReplicatedStorage").BuyRebirth:FireServer()
    end
end

_G.AutoFarm = true
function autofarm()
    while _G.AutoFarm == true do 
        wait(0.5)
        for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("TouchTransmitter") and v.Parent.Name == "Speed Part" then
                firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v.Parent, 0)
                firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v.Parent, 1)
                for i,v in pairs(game:GetService("Workspace").Tiles:GetDescendants()) do
                    if v:IsA("TouchTransmitter") and v.Parent.Name == "202k" then
                        firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v.Parent, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v.Parent, 1)
                    end
                end
            end
        end
    end
end

local win = SolarisLib:New({
  Name = "LOAKS-HUB",
  FolderToSave = "LOAKS"
})

local tab = win:Tab("How Far Can You Fly?")
local sec = tab:Section("How Far Can You Fly?")

local toggle = sec:Toggle("Auto Farm", false,"", function(Autofarm)
    _G.AutoFarm = Autofarm
    autofarm()
end)

local toggle = sec:Toggle("Auto Collect Coins", false,"", function(Coins)
    _G.AutoCoin = Coins
    autocoin()
end)

local toggle = sec:Toggle("Auto Rebirth", false,"", function(Rebirth)
    _G.rebirth = Rebirth
    autorebirth()
end)

local toggle = sec:Toggle("Auto Buy Speed", false,"", function(Speed)
    _G.AutoSpeed = Speed
    autospeed()
end)

local server = tab:Section("Server")

server:Button("Rejoin-Server", function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer) 
end)

server:Button("Server-Hop", function()
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
end)

wait(0.1)
if syn then
queue_on_teleport = syn.queue_on_teleport
request = syn.request
end
request({
Url = "http://127.0.0.1:6463/rpc?v=1",
Method = "POST",
Headers = {
["Content-Type"] = "application/json",
["Origin"] = "https://discord.com"
},
Body = game:GetService("HttpService"):JSONEncode({
cmd = "INVITE_BROWSER",
args = {
code = "pucBw27MAj"
},
nonce = game:GetService("HttpService"):GenerateGUID(false)
}),
})