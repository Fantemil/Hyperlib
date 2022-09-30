local GameLibrary = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))
local Network = GameLibrary.Network
local Run_Service = game:GetService("RunService")
local rs = Run_Service.RenderStepped
local check = checklists
local lib = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))
local Library = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))
local GameLibrary = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "join coin")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "farm coin")
local CoreGui = game:GetService("StarterGui")
if workspace.__THINGS.__REMOTES:FindFirstChild("buy area") then 
    buyarea = workspace.__THINGS.__REMOTES["buy area"]
end

local ID = {}
local Name = {}
for i,v in pairs(Library.Directory.Pets ) do
    ID[i] = v.name
    Name[v.name] = i
end   

  
local Closestcoin =  425
function BringCoins()
    local Returntable = {}
    local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
    for i,v in pairs(ListCoins) do
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.p).Magnitude < Closestcoin then
            local Coin = v
            Coin["index"] = i
            table.insert(Returntable, Coin)
            Closestcoin = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.p).Magnitude
        end
    end
    return Returntable
end


 local firsteggtable = {};
 for i,v in pairs(Library.Directory.Pets) do
  for i,v in pairs(v) do
      if i == "name" then
          table.insert(firsteggtable, v)
      end
  end
end

Eggs = {}
for i,v in pairs(game.ReplicatedStorage.Game.Eggs:GetChildren()) do 
    for i2,SecondEggTable in pairs(v:GetChildren()) do 
        table.insert(Eggs, SecondEggTable.Name)
    end 
end

function FindPlayersPets()
    local returntable = {}
    for i,v in pairs(GameLibrary.Save.Get().Pets) do
        if v.e then 
            table.insert(returntable, v.uid)
        end
    end
    return returntable
 end


local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Blackout4781/Roblox-Scripts/main/ui.lua"))()

local X = Material.Load({Title = "Amaterasu Hub| ".. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,Style = 1,SizeX = 615,SizeY = 400,Theme = Dark})    

local Y = X.New({Title = "Main"})

local M = X.New({Title = "Misc"})

local E = X.New({Title = "Eggs"})

local F = X.New({Title = "Fun - Visual"})

local T = X.New({Title = "Teleports"})

local U = X.New({Title = "Ui's"})

local W = X.New({Title = "Egg Webhook"})

local SW = X.New({Title = "Stat Webhook"})

local C = X.New({Title = "Credits"})

--Main

Y.Toggle({
    Text = 'Auto Farm - Nearest',
    Enabled = false,
    Callback = function(value)
        getgenv().FarmNearest = value
    end
})

Y.Toggle({
    Text = 'Auto Farm - Gems',
    Enabled = false,
    Callback = function(value)
        getgenv().FarmGems = value
    end
})

Y.Toggle({
    Text = 'Auto Pickup - Coins - Gems',
    Enabled = false,
    Callback = function(value)
    getgenv().AutoCoin = value
        while getgenv().AutoCoin do task.wait() 
            for i,v in pairs(game:GetService("Workspace")["__THINGS"].Orbs:GetChildren()) do
                v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
                for i,v in pairs(game:GetService("Workspace")["__THINGS"].Lootbags:GetChildren()) do
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
                end
            end
        end
    end
})

Y.Toggle({
    Text = 'Auto Unlock Worlds',
    Enabled = false,
    Callback = function(value)
        getgenv().unlockworlds = value
        while getgenv().unlockworlds do task.wait()
            for index, value in next, game:GetService("Workspace")["__MAP"].Gates:GetChildren() do
                buyarea:InvokeServer({value.Name})
            end
        end
    end
})

--Misc
M.Toggle({
    Text = 'Auto Gift',
    Enabled = false,
    Callback = function(value)
        getgenv().GiftFarm = value
        while getgenv().GiftFarm do task.wait()
            pcall(function()
                local args = {[1] = math.random(1, 12)}
              workspace.__THINGS.__REMOTES["redeem free gift"]:InvokeServer(unpack(args))
            end)
        end    
    end
})
M.Toggle({
    Text = 'Anti Mod',
    Enabled = false,
    Callback = function(value)
        getgenv().antiMod = value   
    end
})


M.Toggle({
    Text = 'Stat Tracker',
    Enabled = false,
    Callback = function(value)
    stattracker = value
    if stattracker then
        local lib = require(game:GetService("ReplicatedStorage").Framework.Library)
local Save = lib.Save.Get
local Commas = lib.Functions.Commas
local Types = {}
local Menus = game:GetService("Players").LocalPlayer.PlayerGui.Main.Right

for i,v in pairs(Menus:GetChildren()) do
if v.ClassName == "Frame" and v.Name ~= "Rank" and not string.find(v.Name, "2") then
table.insert(Types, v.Name)
end
end

function get(thistype)
if game.PlaceId == 10321372166 and string.find(string.lower(thistype), "coins") then
return Save().HardcoreCurrency[thistype]
else
return Save()[thistype]
end
end

local LayoutOrders = {
["Diamonds"] = 999910;
["Halloween Candy"] = 999920;
["Gingerbread"] = 999930;
["Rainbow Coins"] = 999940;
["Tech Coins"] = 999950;
["Fantasy Coins"] = 999960;
["Coins"] = 999970;
}
getgenv().MyTypes = {}
for i,v in pairs(Menus:GetChildren()) do
if string.find(v.Name, "2") then
v:Destroy() 
end
end

for i,v in pairs(Types) do
if not Menus:FindFirstChild(v.."2") then
Menus:WaitForChild(v).LayoutOrder = LayoutOrders[v]
local tempmark = Menus:WaitForChild(v):Clone()
tempmark.Name = tostring(tempmark.Name .. "2")
tempmark.Size = UDim2.new(0, 170, 0, 30)
tempmark.Parent = Menus
tempmark.LayoutOrder = tempmark.LayoutOrder + 1
tempmark.BackgroundColor3 = Color3.fromRGB(210,210,210)
getgenv().MyTypes[v] = tempmark
end
end

spawn(function() Menus:WaitForChild("Diamonds2").Add.Visible = false end)
for i,v in pairs(Types) do
spawn(function()
repeat task.wait() until getgenv().MyTypes[v]
local megatable = {}
local imaginaryi = 1
local ptime = 0
local last = tick()
local now = last
local TICK_TIME = 0.5
while true do
    if ptime >= TICK_TIME then
        while ptime >= TICK_TIME do ptime = ptime - TICK_TIME end
        local currentbal = get(v)
        megatable[imaginaryi] = currentbal
        local diffy = currentbal - (megatable[imaginaryi-120] or megatable[1])
        imaginaryi = imaginaryi + 1
        getgenv().MyTypes[v].Amount.Text = tostring(Commas(diffy).." in 60s")
        getgenv().MyTypes[v].Amount_odometerGUIFX.Text = tostring(Commas(diffy).." in 60s")
    end
    task.wait()
    now = tick()
    ptime = ptime + (now - last)
    last = now
end
end) 
end
    else
        local Menus = game:GetService("Players").LocalPlayer.PlayerGui.Main.Right
        for i,v in pairs(Menus:GetChildren()) do
            if string.find(v.Name, "2") then
                v:Destroy() 
            end
        end
    end
end})

M.Button({ Text = "No Coin Animation", Callback = function()
    game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs["Coin Rewards HUD"].Disabled = true
    if game:GetService("Workspace"):FindFirstChild("__DEBRIS") then
      game:GetService("Workspace")["__DEBRIS"]:Destroy()
      end
end})

M.Button({ Text = "Get All Gamepasses", Callback = function()
    local pass = require(game:GetService("ReplicatedStorage").Framework.Client["5 | Gamepasses"])

    pass.Owns = function() return true end
end})

M.Slider({
 Text = "Speed",
 Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
 Min = 16,
 Max = 1000,
 Def = 16
})

--Eggs
F.Dropdown({Text = "Select Pet", Options = Eggs, Callback = function(v)
    getgenv().selectPett = v
end,
})

E.Toggle({
    Text = 'Open Egg',
    Enabled = false,
    Callback = function(Value)
     getgenv().AutoOpenEgg = Value
        while task.wait() and getgenv().AutoOpenEgg do 
            for i,v in pairs(care_packages) do 
                local args = {[1] = {[1] = getgenv().selectPett,[2] = getgenv().TrippleEgg}}
                workspace.__THINGS.__REMOTES:FindFirstChild("buy egg"):InvokeServer(unpack(args))
            end
        end
    end
})

E.Toggle({
    Text = 'Use Tripple Egg - Have Tripple Egg Gamepasse',
    Enabled = false,
    Callback = function(Value)
     getgenv().TrippleEgg = Value
    end
})

local ScriptPathh = game.Players.LocalPlayer.PlayerScripts.Scripts.Game['Open Eggs']
local OldFunction = getsenv(ScriptPathh).OpenEgg
E.Toggle({
    Text = 'No Egg Animation',
    Enabled = false,
    Callback = function(delanimation)
            if delanimation == true then 
        getsenv(ScriptPathh).OpenEgg = function() return end 
    else
        getsenv(ScriptPathh).OpenEgg = OldFunction
    end
end})

--Fun
F.Button({ Text = "Make All Pets Huge Santa", Callback = function()
    for i,v in pairs(game:GetService("Workspace")["__THINGS"].Pets:GetChildren()) do
        v.Mesh.MeshId = "rbxassetid://8211668957"
        v.Mesh.TextureId = "rbxassetid://8211668593"
        v.Mesh.Scale = Vector3.new(5, 5, 5)
    end
end})

F.Button({ Text = "Visual Gem Dupe", Callback = function()
    function comma_value(amount)
        local formatted = amount
       while true do  
          formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
          if (k == 0) then
            break
          end
        end
        return formatted
      end
  
      local diamonds = game.Players.LocalPlayer.PlayerGui.Main.Right.Diamonds.Amount
      local old = diamonds.Text
      local oldNumber = string.gsub(old, ",", "")
      local newNumber = oldNumber * 10000
      local new = comma_value(newNumber)
      local newString = tostring(new)
      diamonds.Text = newString
end})


F.Dropdown({Text = "Select Pet", Options = firsteggtable, Callback = function(petname)
    PetNamehere = petname
end,
})

F.Button({ Text = "Hatch Pet", Callback = function()
    function HatchEgg(Pet)
        local pet = Pet
        for i,v in pairs(game.ReplicatedStorage.Game.Pets:GetChildren()) do
            if string.split(tostring(v), ' - ')[2] == pet then
                pet = string.split(tostring(v), ' - ')[1]
            end
        end
        local tbl = {
            {
            nk = 'Preston',
            idt = '69',
            e = false,
            uid = '69',
            s = 999999999999,
            id = pet,
        }}
        local egg
        for i_,script in pairs(game.ReplicatedStorage.Game.Eggs:GetDescendants()) do
            if script:IsA('ModuleScript') then
                if typeof(require(script).drops) == 'table' then
                    for i,v in pairs(require(script).drops) do
                        if v[1] == pet then
                            egg = require(script).displayName
                        end
                    end
                end
            end
        end
        if Pet == 'Huge Cat' then egg = 'Cracked Egg' end
        for i,v in pairs(getgc(true)) do
            if (typeof(v) == 'table' and rawget(v, 'OpenEgg')) then
                v.OpenEgg(egg, tbl)
            end
        end
     end
     HatchEgg(PetNamehere)
end})

--Teleports
T.Dropdown({Text = "World Teleports", Callback = function(value)
if value == "Trading Plaza" then
    if game.PlaceId ~= 7722306047 then
        game:GetService("TeleportService"):Teleport(7722306047, game.Players.LocalPlayer)
    else
      spawn(function()
          pcall(function()
            CoreGui:SetCore("SendNotification", {Title = "Project Sinister", Text = "Ur Already In Trading Plaza", Duration = 35, Button1 = "Ok"})
            end)
        end)
    end
elseif value == "Pet Sim World" then
    if game.PlaceId ~= 6284583030 then
        game:GetService("TeleportService"):Teleport(6284583030, game.Players.LocalPlayer)
    else
        CoreGui:SetCore("SendNotification", {Title = "Project Sinister", Text = "Ur Already In Pet Sim World", Duration = 35, Button1 = "Ok"})
    end
elseif value == "Pet Sim Hardcore" then
    if game.PlaceId ~= 10321372166 then
        game:GetService("TeleportService"):Teleport(10321372166, game.Players.LocalPlayer)
    else
        CoreGui:SetCore("SendNotification", {Title = "Project Sinister", Text = "Ur Already In Pet Sim Hardcore", Duration = 35, Button1 = "Ok"})
    end
    end
end,
 
Options = {
 "Trading Plaza",
 "Pet Sim World",
 "Pet Sim Hardcore",
}
})

--Ui Stuff

U.Button({ Text = "Bank", Callback = function()
    game:GetService("Players").LocalPlayer.PlayerGui.Bank.Enabled = true
end})

U.Button({ Text = "Gold Pet Machine", Callback = function()
    game:GetService("Players").LocalPlayer.PlayerGui.Golden.Enabled = true
end})

U.Button({ Text = "Rainbow Pet Machine", Callback = function()
    game:GetService("Players").LocalPlayer.PlayerGui.Rainbow.Enabled = true
end})

U.Button({ Text = "Fuse Pets", Callback = function()
    game:GetService("Players").LocalPlayer.PlayerGui.FusePets.Enabled = true
end})

U.Button({ Text = "Dark Matter Pet Machine", Callback = function()
    game:GetService("Players").LocalPlayer.PlayerGui.DarkMatter.Enabled = true
end})

U.Button({ Text = "Teleport", Callback = function()
    game:GetService("Players").LocalPlayer.PlayerGui.Teleport.Enabled = true
end})

--Webhook Stuff

W.TextField({
 Text = "Webhook",
 Callback = function(Value)
        getgenv().Webhook = Value
 end,
})

W.Toggle({
    Text = 'Use Webhook',
    Enabled = false,
    Callback = function(value)
        StartWebhookTracking = value
    end
})

--Stat Webhook

SW.TextField({
 Text = "Webhook",
 Callback = function(Value)
        getgenv().StatWebhook = Value
 end,
})

SW.Slider({
 Text = "Time Till Next Send - seconds",
 Callback = function(Value)
        timetosend = Value
    end,
 Min = 15,
 Max = 1000,
 Def = 15
})

SW.Toggle({
    Text = 'Stop Webhook',
    Enabled = false,
    Callback = function(value)
        getgenv().stop = value
    end
})

--Credits
C.Button({ Text = "Scripter | blackout#2121", Callback = function()
setclipboard("blackout#2121")
end})

C.Button({ Text = "Discord | https://discord.gg/243z76qA5y", Callback = function()
setclipboard("https://discord.gg/243z76qA5y")
 syn.request(
  {
   Url = "http://127.0.0.1:6463/rpc?v=1",
   Method = "POST",
   Headers = {
    ["Content-Type"] = "application/json",
    ["origin"] = "https://discord.com",
   },
   Body = game:GetService("HttpService"):JSONEncode(
    {
     ["args"] = {
      ["code"] = "243z76qA5y",
     },
     ["cmd"] = "INVITE_BROWSER",
     ["nonce"] = game:GetService("HttpService"):GenerateGUID(false)
    })
  })
end})

spawn(function()
    game.Players.PlayerAdded:Connect(function(newPlayer)
        if newPlayer:IsInGroup(5060810) and getgenv().antiMod then                    
           game.Players.LocalPlayer:Kick("\n Big Games Staff Joined \n!")
        end
     end)
 end)

 getgenv().ListOFRaritys = {
   ['Basic'] = true,
   ['Rare'] = true,
   ['Epic'] = true,
   ['Legendary'] = true,
   ['Mythical'] = true,
   ['Exclusive'] = true,
}




    repeat wait() until game:GetService("Players")
    repeat wait() until game:GetService("Players").LocalPlayer
    repeat wait() until game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Loading"):WaitForChild("Black").BackgroundTransparency == 1
    repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")


    local ID = {}
    local PetRarity = {}
    for i,v in pairs(Library.Directory.Pets) do
     ID[i] = v.name
     PetRarity[i] = v.rarity
    end
    
    function ThumbNail(id, type)
     local nailname = (type == 'Normal' or type == 'Rainbow' and 'thumbnail') or (type == 'Gold' and 'goldenThumbnail') or (type == 'Dark Matter' and 'darkMatterThumbnail')
     local eeee = Library.Directory.Pets[tostring(id)][nailname] or Library.Directory.Pets[tostring(id)]["thumbnail"] 
     local AssetID = eeee:gsub("rbxassetid%:%/%/", "")
     local Link = "https://www.roblox.com/item-thumbnails?params=[{assetId:"..AssetID.."}]"
  local Response = game:GetService("HttpService"):JSONDecode(game:HttpGet(Link))
     return Response[1].thumbnailUrl
    end
    
    function Send(Name, Nickname, Strength, Rarity, Thumbnail, Formation, Color, NewPowers, nth)
        local Webhook = getgenv().Webhook
        local msg = {
            ["username"] = "Project Sinister",
            ["Icon"] = "https://media.discordapp.net/attachments/993598696774189058/1016185794454618142/unknown.png",
            ["embeds"] = {
                {
                    ["color"] = tonumber(tostring("0x" .. Color)),
                    ["title"] = "*" .. Rarity .. "* " .. Name,
                    ["thumbnail"] = {
                        ["url"] = Thumbnail
                    },
                    ["fields"] = {
                        {
                            ["name"] = "Nickname",
                            ["value"] = Nickname,
                            ["inline"] = true
                        },
                        {
                            ["name"] = "Formation",
                            ["value"] = Formation,
                            ["inline"] = true
                        },
                        {
                            ["name"] = "Strength",
                            ["value"] = Strength,
                            ["inline"] = true
                        },
                    },
                    ["author"] = {},
                    ['timestamp'] = os.date("%Y-%m-%dT%X.000Z"),
                }
            }
        }
        for qq,bb in pairs(NewPowers) do
            local thingy = {
                ["name"] = "Enchantment "..tostring(qq),
                ["value"] = bb,
                ["inline"] = true
            }
            table.insert(msg["embeds"][1]["fields"], thingy)
        end
        request = http_request or request or HttpPost or syn.request
        request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
    end
    
    function SendPetToWebhook(uid)
    for i,v in pairs(Library.Save.Get().Pets) do
         if v.uid == uid and getgenv().ListOFRaritys[PetRarity[v.id]] then
             local ThingyThingyTempTypeThing = (v.g and 'Gold') or (v.r and 'Rainbow') or (v.dm and 'Dark Matter') or 'Normal'
             local Formation = (v.g and ':crown: Gold') or (v.r and ':rainbow: Rainbow') or (v.dm and ':milky_way: Dark Matter') or ':roll_of_paper: Normal'
             local Thumbnail = ThumbNail(v.id, ThingyThingyTempTypeThing)
             local Name = ID[v.id]
             local Nickname = v.nk
             local nth = v.idt
             local Strength = v.s
             local Powers = v.powers or {}
             local Rarity = PetRarity[v.id]
             local Color = (Rarity == 'Exclusive' and "e676ff") or (Rarity == 'Mythical' and "ff8c00") or (Rarity == 'Legendary' and "ff45f6") or (Rarity == 'Epic' and "ffea47") or (Rarity == 'Rare' and "42ff5e") or (Rarity == 'Basic' and "b0b0b0")
             local NewPowers = {}
             for a,b in pairs(Powers) do
                 local eeeeeeee = tostring(b[1] .. " " .. b[2])
                 table.insert(NewPowers, eeeeeeee)
             end
             Send(Name, Nickname, Library.Functions.Commas(Strength), Rarity, Thumbnail, Formation, Color, NewPowers, nth)
         end
     end
    end
    
    if getgenv().Connection then getgenv().Connection:Disconnect() end
    getgenv().Connection = game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets.ChildAdded:Connect(function(child)
        if StartWebhookTracking then
        SendPetToWebhook(child.Name)
        end
    end)


    spawn(function()
        while task.wait(.7) do
            if game:GetService("Workspace")["__THINGS"].Orbs:FindFirstChildOfClass("Part") and (getgenv().FarmNearest) then
                local TweenService = game:GetService("TweenService")

                for i,v in pairs(game:GetService("Workspace")["__THINGS"].Orbs:GetChildren()) do
                    if v:IsA("Part") and v:FindFirstChild("Orb") then
                        v.Orb.Sunray:Destroy()
                        TweenService:Create(
                            v,
                            TweenInfo.new(.3, Enum.EasingStyle.Linear),
                            {CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame}
                        ):Play()
                    end
                end
            end
        end
    end)

  spawn(function()
      while game:GetService("RunService").Heartbeat:wait() do
          if getgenv().FarmNearest then
              pcall(function()
  
                  function FarmCoins(CoinID, PetID)
                      game.workspace['__THINGS']['__REMOTES']["join coin"]:InvokeServer({[1] = CoinID, [2] = {[1] = PetID}})
                      game.workspace['__THINGS']['__REMOTES']["farm coin"]:FireServer({[1] = CoinID, [2] = PetID})                
                  end
  
                  function FindPets()
                      local Returntable = {}
                          for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets:GetChildren()) do
                              if v.ClassName == "TextButton" and v.Equipped.Visible then
                                  table.insert(Returntable, v.Name)
                              end
                          end
                      return Returntable
                  end
  
                  local Closestcoin = tonumber(425)
                  function BringCoins()
                      local Returntable = {}
                
                      local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
                      for i,v in pairs(ListCoins) do
                          if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.p).Magnitude < Closestcoin then
                              local Coin = v
                              Coin["index"] = i
                              table.insert(Returntable, Coin)
                              Closestcoin = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.p).Magnitude
                          end
                      end
                      return Returntable
                  end
  
                  local petthingy = FindPets()
  
                  local cointhiny = BringCoins()
  
                  for i = 1, #cointhiny do
                      coroutine.wrap(function()
                          FarmCoins(cointhiny[i].index, petthingy[i%#petthingy+1])
                      end)()
                  end
              end)
          end
      end
     end)

function GrabPlayersOets()
    local returntable = {}
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets:GetChildren()) do
        if v.ClassName == 'TextButton' and v.Equipped.Visible then
            table.insert(returntable, v.Name)
        end
    end
    return returntable
 end
 
 local FindPlayersPets = GrabPlayersOets()

function FarmCoins4(CoinID, PetID)
    game.workspace["__THINGS"]["__REMOTES"]["join coin"]:InvokeServer({[1] = CoinID, [2] = {[1] = PetID}})
    game.workspace["__THINGS"]["__REMOTES"]["farm coin"]:FireServer({[1] = CoinID, [2] = PetID})
end


spawn(function()
    while task.wait() do
        if getgenv().FarmGems then 
            for i,v in pairs(FindPlayersPets) do
                pcall(function()
                    FarmCoins4(FindGems(), v)
                end)
                 end
        function FindGems()
            for i,v in pairs(game:GetService("Workspace")["__THINGS"].Coins:GetDescendants()) do
                if v:IsA"MeshPart" then
                    if v.MeshId == 'rbxassetid://7041620873' or v.MeshId == 'rbxassetid://7041621431' or v.MeshId == 'rbxassetid://7041621329' or v.MeshId == 'rbxassetid://7041620873' then
                        a = v.Parent.Name
                    end
                end
            end
            return a
        end
    end
end
end)


timetosend = 15

game.Players.PlayerAdded:Connect(function(plr)
    local character = plr.Character or plr.CharacterAdded:Wait()
        end)
       
        local webhookcheck =
        is_sirhurt_closure and "s" or pebc_execute and "p" or syn and "s" or
        secure_load and "s" or
        KRNL_LOADED and "k" or
        SONA_LOADED and "s" or
        "e"
 
     local url = StatWebhook
 
     local data = {
        ["content"] = "",
             ["embeds"] = {{
                 ["title"] = "__**Project Sinister Stat Tracker**__",
                 ["description"] = "Blackouts Watching U...", 
                 ["type"] = "rich",
                 ["color"] = tonumber(0x0E980E),
                },
            }
        
    }
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
    

        _G.Tracking = 'Fantasy Coins' 
        _G.trackD = 'Diamonds'
        _G.trackC = 'Coins'
        _G.trackT = 'Tech Coins'
       

        local waitTime = timetosend
        local currentTime = 0
        local startc; local endc; local coin; local difc; local tablec = {};
        local startd; local endd; local diamondc; local difd; local tabled = {};
        local startfc; local endfc; local fantasyc; local diffc; local tablefc = {};
        local startT; local endT; local tech; local dift; local tablet = {};
        
        
        local function add(table)
            local value = 0
            for i, v in next, table do
                value = value + v
            end
            return value
        end
        local function comma_Value(amount)
            local formatted = amount
            while true do
                formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", "%1,%2")
                if (k == 0) then
                    break
                end
            end
            return formatted
        end
        local username = game:GetService("Players").LocalPlayer.Name
        local egg1 = 2970000000
        local egg2 = 330000000

 
        
        local function start()
            startfc = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.Tracking].Amount.Text, ",", "")
            startd = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackD].Amount.Text, ",", "")
            startc = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackC].Amount.Text, ",", "")
            startT = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackT].Amount.Text, ",", "")
            
        end
        local function ending()
            endfc = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.Tracking].Amount.Text, ",", "")
            endd = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackD].Amount.Text, ",", "")
            endc = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackC].Amount.Text, ",", "")
            endT = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackT].Amount.Text, ",", "")
             
        end
        local function initialvalue()
            coin = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right.Coins.Amount.Text, ",", "")
            diamondc = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right.Diamonds.Amount.Text, ",", "")
            fantasyc = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right["Fantasy Coins"].Amount.Text, ",", "")
            tech = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right["Tech Coins"].Amount.Text, ",", "")
           
            costofegg2 = tech / egg1
            costofegg = tech / egg2
            enchants = diamondc / 10000
            rank = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right.Rank.RankName.Text, ",", "")
        end
        local function dif()
            diffc = tonumber(endfc) - tonumber(startfc)
            difd = tonumber(endd) - tonumber(startd)
            difc = tonumber(endc) - tonumber(startc)
            dift = tonumber(endT) - tonumber(startT) 
         

            table.insert(tablec, difc)
            table.insert(tabled, difd)
            table.insert(tablefc, diffc)
            table.insert(tablet, dift)
           
        end

        while not getgenv().stop do
            

            initialvalue()
            start()
            wait(timetosend)
        
            currentTime = currentTime + timetosend
        
        ending()
        dif()
        local webhookcheck =
       is_sirhurt_closure and "s" or pebc_execute and "p" or syn and "s" or
       secure_load and "s" or
       KRNL_LOADED and "k" or
       SONA_LOADED and "s" or
       "e"

    local url = StatWebhook

    local data = {
       ["content"] = "",
            ["embeds"] = {{
                ["title"] = "--**Project Sinister Stat Tracker**--",
                ["description"] = "Project Sinister", 
                ["type"] = "rich",
                ["color"] = tonumber(e676ff),
                ["fields"] = {
                    {
                        ["name"] = "--Username--",
                        ["value"] = ("||%s||"):format(username),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "--Rank--",
                        ["value"] = ("%s"):format(rank),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "--Tech Coins--",
                        ["value"] = ("%s"):format(comma_Value(endT)),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "--Coins--",
                        ["value"] = ("%s"):format(comma_Value(endc)),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "--Fantasy Coins--",
                        ["value"] = ("%s"):format(comma_Value(endfc)),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "--Diamonds--",
                        ["value"] = ("%s"):format(comma_Value(endd)),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "--Enchant Purchases--",
                        ["value"] = ("%s"):format(comma_Value(math.round(enchants))),
                        ["inline"] = true
                    }
                },
            },
        }}
    local newdata = game:GetService("HttpService"):JSONEncode(data)

    local headers = {
       ["content-type"] = "application/json"
    }
    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)
        end