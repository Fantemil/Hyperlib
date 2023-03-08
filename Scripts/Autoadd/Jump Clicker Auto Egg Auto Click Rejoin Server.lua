local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/SmoxHub/SmoxHub/main/SEXIST.lua"))()
  
function autowin()
    while _G.WinFarm == true do 
        if game:GetService("Workspace").ScriptableObjects.Barrir.SecondLevel.Transparency == 1 then
            wait(0)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4.64972591, 2000000, 48.0375328, 1, 0, 0, 0, 0, -1, 0, 1, 0)wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4.64972591, 3000000, -164.482651, 1, 0, 0, 0, 0, -1, 0, 1, 0)wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4.64972591, 2000000, -350.482651, 1, 0, 0, 0, 0, -1, 0, 1, 0)wait(0.1)
        else
           wait(0.1)
        end
    end
end

_G.Rebirth = true
function autorebirth()
    while _G.Rebirth == true do 
        wait(0.1)
        game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.RebirthService.RF.Rebirth:InvokeServer()
    end
end

_G.Click = true
function autoclick()
    while _G.Click == true do 
        task.wait()
        game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.JumpService.RE.Tap:FireServer()
    end
end

local win = SolarisLib:New({
  Name = "LOAKS-HUB",
  FolderToSave = "LOAKS"
})

local tab = win:Tab("Jump Clicker")
local sec = tab:Section("Jump Clicker")
local sec1 = tab:Section("Auto Open Egg")

local toggle = sec:Toggle("Auto Farm ", false,"", function(Value)
    _G.WinFarm = Value
    autowin()
end)

local toggle = sec:Toggle("Auto Rebirth", false,"", function(rebirth)
    _G.Rebirth = rebirth
    autorebirth()
end)

local toggle = sec:Toggle("Auto Click", false,"", function(Click)
    _G.Click = Click
    autoclick()
end)

local tab = win:Tab("Server")
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

local toggle = sec1:Toggle("Auto Egg", false,"", function(Vals)
    OpenEgg = Vals
end)

local dropdown = sec1:Dropdown("Auto Open", {"Creatures Egg", "ExoticCreatures Egg", "Jelly Egg", "Arctic Egg", "Sun Egg", "Spirit Egg", "Magma Egg", "Neon Egg", "Void Egg", "Alien Egg", "Elemental Egg"},"","Dropdown", function(Value)
    SelectedEgg = Value
end)

spawn(function()
    while true do wait()
        if OpenEgg then
            wait(0.5)
            print(SelectedEgg)
            if SelectedEgg == "Creatures Egg" then 
                game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.PetService.RF.UnboxEgg:InvokeServer(workspace.ScriptableObjects.Eggs.CreaturesEgg) 

            elseif SelectedEgg == "Exotic Creatures Egg" then
                game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.PetService.RF.UnboxEgg:InvokeServer(workspace.ScriptableObjects.Eggs.ExoticCreaturesEgg) 
   
            elseif SelectedEgg == "Jelly Egg" then
                game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.PetService.RF.UnboxEgg:InvokeServer(workspace.ScriptableObjects.Eggs.JellyEgg) 
   
            elseif SelectedEgg == "Arctic Egg" then
                game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.PetService.RF.UnboxEgg:InvokeServer(workspace.ScriptableObjects.Eggs.ArcticEgg) 

            elseif SelectedEgg == "Sun Egg" then
                game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.PetService.RF.UnboxEgg:InvokeServer(workspace.ScriptableObjects.Eggs.SunEgg) 

            elseif SelectedEgg == "Spirit Egg" then
                game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.PetService.RF.UnboxEgg:InvokeServer(workspace.ScriptableObjects.Eggs.SpiritEgg) 

            elseif SelectedEgg == "Magma Egg" then
                game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.PetService.RF.UnboxEgg:InvokeServer(workspace.ScriptableObjects.Eggs.MagmaEgg) 

            elseif SelectedEgg == "Neon Egg" then
                game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.PetService.RF.UnboxEgg:InvokeServer(workspace.ScriptableObjects.Eggs.NeonEgg)

            elseif SelectedEgg == "Void Egg" then
                game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.PetService.RF.UnboxEgg:InvokeServer(workspace.ScriptableObjects.Eggs.VoidEgg)
   
            elseif SelectedEgg == "Alien Egg" then
                game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.PetService.RF.UnboxEgg:InvokeServer(workspace.ScriptableObjects.Eggs.AlienEgg)

            elseif SelectedEgg == "Elemental Egg" then 
                game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.PetService.RF.UnboxEgg:InvokeServer(workspace.ScriptableObjects.Eggs.ElementalEgg)
            end
        end
    end
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