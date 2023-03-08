local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/SmoxHub/SmoxHub/main/SEXIST.lua"))()

function autoHatch()
while _G.autoHatch == true do
game:GetService("ReplicatedStorage").CommonEvents.PetSystem.BuyPet:FireServer(_G.selectEgg,true)
wait(1)
end
end

function autoTrail()
while _G.autoTrail == true do
game:GetService("ReplicatedStorage").CommonEvents.TrailSystem.BuyTrail:FireServer(_G.selectTrail)
wait(2)
end
end

_G.WinFarm = true
function autowin()
  while _G.WinFarm == true do 
    if game:GetService("Workspace").Components.Door.CanCollide == true then
      game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4, 24.5, -6) 
      wait(3)
    else
      wait(0.1)
      game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(1800, 190020, 736828)             
    end
  end
end

_G.AutoClick = true
function autoclick()
  while _G.AutoClick == true do 
     task.wait()
    game:GetService("ReplicatedStorage").CommonEvents.Clicking:FireServer()
  end
end

_G.AutoRebirth = true
function autorebirth()
  while _G.AutoRebirth == true do 
    wait(1)
    game:GetService("ReplicatedStorage").CommonEvents.Rebirth:FireServer()
  end
end

local win = SolarisLib:New({
  Name = "LOAKS-HUB",
  FolderToSave = "LOAKS"
})

local tab = win:Tab("Easy Race Clicker")
local sec = tab:Section("Easy Race Clicker")
local sec1 = tab:Section("Auto Open")

local toggle = sec:Toggle("Auto Farm", false,"", function(Value)
  _G.WinFarm = Value
  autowin()
end)

local toggle = sec:Toggle("Auto Click", false,"", function(click)
  _G.AutoClick = click
  autoclick()
end)

local toggle = sec:Toggle("Auto Rebirth", false,"", function(rebirth)
  _G.AutoRebirth = rebirth
  autorebirth()
end)

local tab = win:Tab("Other")
local server = tab:Section("Server")
local Visual = tab:Section("Visual")

local toggle = Visual:Toggle("Player-Esp", false,"", function(autoesp)
  espLoaks = autoesp
  while espLoaks do wait(1)
    local players = game.Players:GetPlayers()
    for i,v in pairs(players) do
      local esp = Instance.new("Highlight")
      esp.Name = v.Name
      esp.FillTransparency = 0
      esp.FillColor = Color3.new(0, 0, 203)
      esp.OutlineColor = Color3.new(155, 155, 155)
      esp.OutlineTransparency = 0
      esp.Parent = v.Character
    end
    print("ESP UPDATED PLAYERS")
  end
end)

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

local toggle = sec1:Toggle("Auto Hatch", false,"", function(Value)
  _G.autoHatch = Value
  autoHatch()
end)

local dropdown = sec1:Dropdown("Eggs", {"Noob","Starter","Pro","Epic","Legendary","Mythic", "Godly"},"","Dropdown", function(Value)
  _G.selectEgg = Value
  print(_G.selectEgg)
end)

local toggle = sec1:Toggle("Auto Trail", false,"", function(Value)
  _G.autoTrail = Value
  autoTrail()
end)

local dropdown = sec1:Dropdown("Trail", {"Noob","Starter","Pro","Epic","Legendary","Mythic", "Godly"},"","Dropdown", function(Value)
  _G.selectTrail = Value
  print(_G.selectTrail)
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