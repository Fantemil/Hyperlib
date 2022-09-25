local library = loadstring(game:HttpGet('https://pastebin.com/raw/T3tvmaz4'))()
local MainWindow = library:CreateWindow("Farming")
local EggsWindow = library:CreateWindow("Eggs")

local GameLibrary = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))
local Network = GameLibrary.Network
local Run_Service = game:GetService("RunService")
local rs = Run_Service.RenderStepped
local CurrencyOrder = {"Rainbow Coins", "Tech Coins", "Fantasy Coins", "Coins", "Diamonds"}

local IMightKillMyselfCauseOfThis = {
            --Misc
            ['VIP'] = {'VIP'};
            --Spawn
            ['Town'] = {'Town', 'Town FRONT'}; ['Forest'] = {'Forest', 'Forest FRONT'}; ['Beach'] = {'Beach', 'Beach FRONT'}; ['Mine'] = {'Mine', 'Mine FRONT'}; ['Winter'] = {'Winter', 'Winter FRONT'}; ['Glacier'] = {'Glacier', 'Glacier Lake'}; ['Desert'] = {'Desert', 'Desert FRONT'}; ['Volcano'] = {'Volcano', 'Volcano FRONT'};
            -- Fantasy init
            ['Enchanted Forest'] = {'Enchanted Forest', 'Enchanted Forest FRONT'}; ['Ancient'] = {'Ancient Island'}; ['Samurai'] = {'Samurai Island', 'Samurai Island FRONT'}; ['Candy'] = {'Candy Island'}; ['Haunted'] = {'Haunted Island', 'Haunted Island FRONT'}; ['Hell'] = {'Hell Island'}; ['Heaven'] = {'Heaven Island'};
            -- Tech
            ['Ice Tech'] = {'Ice Tech'}; ['Tech City'] = {'Tech City'; 'Tech City FRONT'}; ['Dark Tech'] = {'Dark Tech'; 'Dark Tech FRONT'}; ['Steampunk'] = {'Steampunk'; 'Steampunk FRONT'}, ['Alien Forest'] = {"Alien Forest"; "Alien Forest FRONT"}, ['Alien Lab'] = {"Alien Lab"; "Alien Lab FRONT"}, ['Glitch'] = {"Glitch"; "Glitch FRONT"}; ['Hacker Portal'] = {"Hacker Portal", "Hacker Portal FRONT"};
            -- Axolotl
            ['Axolotl Ocean'] = {'Axolotl Ocean', 'Axolotl Ocean FRONT'}; ['Axolotl Deep Ocean'] = {'Axolotl Deep Ocean', 'Axolotl Deep Ocean FRONT'}; ['Axolotl Cave'] = {'Axolotl Cave', 'Axolotl Cave FRONT'};
            -- Minecraft
            ['Pixel Forest'] = {'Pixel Forest', 'Pixel Forest FRONT'}; ['Pixel Kyoto'] = {'Pixel Kyoto', 'Pixel Kyoto FRONT'}; ['Pixel Alps'] = {'Pixel Alps', 'Pixel Alps FRONT'} ; ['Pixel Vault'] = {'Pixel Vault', 'Pixel Vault FRONT'};
        }

        local AreaList = { --These match the IMightKillMyselfCuaseOfThis table
            'VIP';
            'Town'; 'Forest'; 'Beach'; 'Mine'; 'Winter'; 'Glacier'; 'Desert'; 'Volcano';
            'Enchanted Forest'; 'Ancient'; 'Samurai'; 'Candy'; 'Haunted'; 'Hell'; 'Heaven';
            'Ice Tech'; 'Tech City'; 'Dark Tech'; 'Steampunk'; 'Alien Lab'; 'Alien Forest'; 'Glitch'; "Hacker Portal";
            'Axolotl Ocean'; 'Axolotl Deep Ocean'; 'Axolotl Cave';
            'Pixel Forest'; 'Pixel Kyoto'; 'Pixel Alps'; 'Pixel Vault';
        }

        local Chests = {
            -- Spawn
            "Magma Chest",
            -- Fantasy
            "Enchanted Chest", "Hell Chest", "Haunted Chest", "Angel Chest", "Grand Heaven Chest",
            -- Tech
            "Giant Tech Chest"; "Giant Steampunk Chest"; "Giant Alien Chest"; "Giant Hacker Chest";
            -- exolot
           "Giant Ocean Chest";
           -- Minecraft
           "Giant Pixel Chest";
        }


workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "buy egg")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "join coin")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "farm coin")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "claim orbs")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "change pet target")

--Farms a coin. It seems to work. That's fun
function FarmCoin(CoinID, PetID)
    game.workspace['__THINGS']['__REMOTES']["join coin"]:InvokeServer({[1] = CoinID, [2] = {[1] = PetID}})
    game.workspace['__THINGS']['__REMOTES']["farm coin"]:FireServer({[1] = CoinID, [2] = PetID})
end

function GetMyPets()
   local returntable = {}
   for i,v in pairs(GameLibrary.Save.Get().Pets) do
       if v.e then 
           table.insert(returntable, v.uid)
       end
   end
   return returntable
end

--returns all coins within the given area (area must be a table of conent)
function GetCoins(area)
    local returntable = {}
    local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
    for i,v in pairs(ListCoins) do
        if MainWindow.flags.FarmingArea == 'All' or table.find(IMightKillMyselfCauseOfThis[MainWindow.flags.FarmingArea], v.a) then
            local shit = v
            shit["index"] = i
            table.insert(returntable, shit)
         end
    end
    return returntable
end

--Sexy man ( wYn#0001 ) made this for me. It works, not sure how, it does.
function GetCoinTable(area)
    local CoinTable = GetCoins(area)
    function getKeysSortedByValue(tbl, sortFunction)
        local keys = {}
        for key in pairs(tbl) do
            table.insert(keys, key)
        end
        table.sort(
            keys,
            function(a, b)
                return sortFunction(tbl[a].h, tbl[b].h)
            end
        )
        return keys
    end
    local sortedKeys = getKeysSortedByValue(CoinTable, function(a, b) return a > b end)
    local newCoinTable = {}

    for i,v in pairs(sortedKeys) do
        table.insert(newCoinTable, CoinTable[v])
    end
    
    return newCoinTable
end

--Not sure exactly why I did this
local AreaWorldTable = {}
for _, v in pairs(game:GetService("ReplicatedStorage").Game.Coins:GetChildren()) do
    for _, b in pairs(v:GetChildren()) do
        table.insert(AreaWorldTable, b.Name)
    end
    table.insert(AreaWorldTable, v.Name)
end

--Returns all the currently alive chests in the game  the same was getcoins does
function AllChests()
    local returntable = {}
    local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
    for i,v in pairs(ListCoins) do
        local shit = v
        shit.index = i
        for aa,bb in pairs(AreaWorldTable) do
            if string.find(v.n, bb) or  string.find(v.n, "Giant") then
                local thing = string.gsub(v.n, bb.." ", "")
                if table.find(Chests, thing) then
                    shit.n = thing
                    table.insert(returntable, shit)
                end
            end
        end
    end
    return returntable
end

--[[
--the remote works like this. I'm too scared to test anything else out
function CollectOrbs()
    local ohTable1 = {[1] = {}}
    for i,v in pairs(game.workspace['__THINGS'].Orbs:GetChildren()) do
        ohTable1[1][i] = v.Name
    end
    game.workspace['__THINGS']['__REMOTES']["claim orbs"]:FireServer(ohTable1)
end
]]

if _G.MyConnection then _G.MyConnection:Disconnect() end
_G.MyConnection = game.Workspace.__THINGS.Orbs.ChildAdded:Connect(function(Orb)
    game.Workspace.__THINGS.__REMOTES["claim orbs"]:FireServer({{Orb.Name}})
end)

MainWindow:Toggle("Enabled", {flag = 'FarmingEnabled'}, function(new)
    local CurrentFarmingPets = {}
    while task.wait() and MainWindow.flags.FarmingEnabled do
        local pethingy = GetMyPets()
        
        if MainWindow.flags.FarmingType == 'Normal' then
            local cointhiny = GetCoins(MainWindow.flags.FarmingArea)
            for i = 1, #cointhiny do
                if MainWindow.flags.FarmingEnabled and game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) then
                    for _, bb in pairs(pethingy) do
                        if MainWindow.flags.FarmingEnabled and game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) then
                                wait(0.1)
                            spawn(function()
                                FarmCoin(cointhiny[i].index, bb)
                            end)
                        end
                    end
                    repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index)
                end
            end

        elseif MainWindow.flags.FarmingType == 'Chest' then
            for i,v in pairs(AllChests()) do
                if (v.n == MainWindow.flags.FarmingSingleChest) or (MainWindow.flags.FarmingSingleChest == 'All') then
                    local starttick = tick()
                    for a, b in pairs(pethingy) do
                        coroutine.wrap(function() FarmCoin(v.index, b) end)()
                    end
                    repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index) or #game:GetService("Workspace")["__THINGS"].Coins[v.index].Pets:GetChildren() == 0
                    warn(v.n .. " has been broken in", tick()-starttick)
                end
            end

        elseif MainWindow.flags.FarmingType == 'Multi Target' then
            local cointhiny = GetCoins(MainWindow.flags.FarmingArea)
            for i = 1, #cointhiny do
                if i%#pethingy == #pethingy-1 then wait() end
                if not CurrentFarmingPets[pethingy[i%#pethingy+1]] or CurrentFarmingPets[pethingy[i%#pethingy+1]] == nil then
wait(0.1)
                    spawn(function()
                        CurrentFarmingPets[pethingy[i%#pethingy+1]] = 'Farming'
                        FarmCoin(cointhiny[i].index, pethingy[i%#pethingy+1])
                        repeat rs:wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) or #game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index).Pets:GetChildren() == 0
                        CurrentFarmingPets[pethingy[i%#pethingy+1]] = nil
                    end)
                end
            end

        elseif MainWindow.flags.FarmingType == 'Highest Value' then
            local cointhiny = GetCoinTable(MainWindow.flags.FarmingArea)
            for a,b in pairs(pethingy) do
                spawn(function() wait() FarmCoin(cointhiny[1].index, b) end)
            end
            repeat rs:wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[1].index) or #game:GetService("Workspace")["__THINGS"].Coins[cointhiny[1].index].Pets:GetChildren() == 0

        elseif MainWindow.flags.FarmingType == 'Nearest' then
            local NearestOne = nil
            local NearestDistance = math.huge
            for i,v in pairs(game:GetService("Workspace")["__THINGS"].Coins:GetChildren()) do
                if (v.POS.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < NearestDistance then
                    NearestOne = v
                    NearestDistance = (v.POS.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                end
            end
            for a,b in pairs(pethingy) do
                spawn(function() FarmCoin(NearestOne.Name, b) end)
            end
        end
    end
end)
MainWindow:Dropdown("Type", {flag = 'FarmingType', list = {'Normal', 'Chest', 'Multi Target', 'Highest Value', 'Nearest'}})
MainWindow:Dropdown("If chest", {flag = 'FarmingSingleChest', list = Chests})
MainWindow:Dropdown("Area", {flag = 'FarmingArea', list = AreaList})
MainWindow:Toggle("Collect Loot Bags", {flag = 'Lootbags', default = _G.Lootbags or false}, function()
    if MainWindow.flags.Lootbags then
        local Running = {}
        while wait() and MainWindow.flags.Lootbags do
            for i, v in pairs(game:GetService("Workspace")["__THINGS"].Lootbags:GetChildren()) do
                spawn(function()
                    if v ~= nil and v.ClassName == 'MeshPart' then
                        if not Running[v.Name] then
                            Running[v.Name] = true
                            local StartTick = tick()
                            v.Transparency = 1
                            for a,b in pairs(v:GetChildren()) do
                                if not string.find(b.Name, "Body") then
                                    b:Destroy()
                                end
                            end
                            repeat task.wait()
                                v.CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                            until v == nil or not v.Parent or tick() > StartTick + 3
                            Running[v.Name] = nil
                        end
                    end
                end)
            end
        end
    end
end)
MainWindow:Button("Stat Tracker", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/dPXXyp4A'))()
    wait(60)
    warn("60s has PASSED!")
end)

MainWindow:Button("POSSIBLE Lag reduction", function()
    game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs["Coin Rewards HUD"].Disabled = true
    if game:GetService("Workspace"):FindFirstChild("__DEBRIS") then
      game:GetService("Workspace")["__DEBRIS"]:Destroy()
    end
end)


local MyEggData = {}
local littleuselesstable = {}
local GameLibrary = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))
for i,v in pairs(GameLibrary.Directory.Eggs) do
    local temptable = {}
    temptable['Name'] = i
    temptable['Currency'] = v.currency
    temptable['Price'] = v.cost
    table.insert(MyEggData, temptable)
end

table.sort(MyEggData, function(a, b)
    return a.Price < b.Price
end)

local EggData = {}
for i,v in pairs(CurrencyOrder) do
    table.insert(EggData, " ")
    table.insert(EggData, "-- "..v.." --")
    for a,b in pairs(MyEggData) do
        if b.Currency == v then
            table.insert(EggData, b.Name)
        end
    end
end

EggsWindow:Toggle("Open Eggs", {flag = 'OpenEggs'}, function(new)
    while wait() and EggsWindow.flags.OpenEggs do
        local ohTable1 = {
            [1] = EggsWindow.flags.SelectedEgg,
            [2] = EggsWindow.flags.TripleEggs
        }
        workspace.__THINGS.__REMOTES["buy egg"]:InvokeServer(ohTable1)
    end
end)
EggsWindow:Dropdown('Egg', {flag = 'SelectedEgg', list = EggData})
EggsWindow:Toggle("Triple Eggs", {flag = 'TripleEggs'})
EggsWindow:Section(" ")
EggsWindow:Button("Remove Egg animation", function()
    for i,v in pairs(getgc(true)) do
        if (typeof(v) == 'table' and rawget(v, 'OpenEgg')) then
            v.OpenEgg = function()
                return
            end
        end
    end
end)
EggsWindow:Button("Teleport Gamepass", function()
    local main = debug.getupvalues(require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library")).Save.Get)[2][game.Players.LocalPlayer].save.Gamepasses
    table.insert(main,18674296)
    table.insert(main,18674298)
    table.insert(main,18674321)
end)

EggsWindow:Section("amGerard || Gerard#0001")

--Anti AFK stolen from infinite yield // the readily available old one :)
local GC = getconnections or get_signal_cons
if GC then
    for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
else
    print("lol bad exploit")
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end

warn("Everything has loaded fully. Enjoy :)")