
local VLib = loadstring(game:HttpGet("https://gitlab.com/L1ZOT/test-project/-/raw/main/PJM-GUI"))()
local Win = VLib:Window("Project Meow", "Mining Simulator 2")
local Autofarm = Win:Tab("Autofarm")
local TabEgg = Win:Tab("Eggs")
local Misc = Win:Tab("Misc")
local Teleport = Win:Tab("Teleport")
local Credits = Win:Tab("Credits")

local Player = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local LoadModules = require(game.ReplicatedStorage.LoadModule);

getgenv().v2 = require(game:GetService("ReplicatedStorage").LoadModule)
getgenv().u6 = v2("ChunkUtil")
getgenv().v3 = v2("Constants")
getgenv().v4 = v3.CellSize * v3.ChunkSize

local MainData = game:GetService("RunService"):IsServer() and LoadModules("DataService") or LoadModules("LocalData");

Misc:Button("Get Gamepasses (Some Are Visual)", function()
    local PassesMod = MainData:GetData("Passes");
    PassesMod["Fast Hatch"] = true
    PassesMod["MS1Lucky Gamepass"] = true
    PassesMod["Infinity Backpack"] = false -- KEPP AT FALSE
    PassesMod["MS1Quantum Storage"] = true
    PassesMod["Triple Hatch"] = true
    PassesMod["Teleporter"] = true
    PassesMod["MS1Auto Egg Equip"] = true
    PassesMod["MS1Private Mine"] = true
    PassesMod["VIP"] = true
    PassesMod["Lucky Pass"] = true
    PassesMod["MS1Nuke"] = true
    PassesMod["2x Gems"] = true
    PassesMod["Omega Nuke"] = true
    PassesMod["MS12x Dig"] = true
    PassesMod["Stronger Pickaxe"] = true
    PassesMod["Omega Scythe"] = true
    PassesMod["MS12x Shiny Chance"] = true
    PassesMod["Small Storage"] = true
    PassesMod["More Pets!"] = true
    PassesMod["MS12x Tokens"] = true
    PassesMod["MS1Teleporter Pad"] = true
    PassesMod["Medium Storage"] = true
    PassesMod["MS1VIP"] = true
    PassesMod["MS1Collapse Meter"] = true
    PassesMod["Large Storage"] = true
    PassesMod["MS1Mythical Scythe"] = true
    PassesMod["MS1Sprint"] = true
end)

Autofarm:Toggle("Farm Mouse Pointing", false, function(t)
    StartMousePointing = t
end)

spawn(function()
    while task.wait() do
        if StartMousePointing then
            pcall(function()
                local Workspace = game:GetService("Workspace")
                local Module = require(game:GetService("ReplicatedStorage").LoadModule)
                local Constants = Module("Constants")
                local newRaycast = RaycastParams.new()
                newRaycast.CollisionGroup = Constants.CollisionGroups.MineRaycast
                local UserInputService = game:GetService("UserInputService")
                local CurrentCamera = Workspace.CurrentCamera
                local ChunkUtil = Module("ChunkUtil")
                local MousePos = UserInputService:GetMouseLocation()

                local GetPartPos = Workspace:Raycast(CurrentCamera.CFrame.Position, CurrentCamera:ViewportPointToRay(MousePos.x, MousePos.y).Direction.Unit * 150, newRaycast);
                local FinalPos = GetPartPos.Position - GetPartPos.Normal;

                local CellId = ChunkUtil.worldToCell(FinalPos)
                game:GetService("ReplicatedStorage").Events.MineBlock:FireServer(CellId)
            end)
        end
    end
end)

Autofarm:Toggle("Blox Aura", false, function(t)
    BloxAura = t
end)

Autofarm:Slider("Chunk Refreshing Speed",0,10,10, function(t)
    getgenv().Chunk_Refresh = t
end)

spawn(function()
    while task.wait(.7) do
        if BloxAura then
            pcall(function()

                for i,v in pairs(game:GetService("Workspace").Chunks:GetChildren()) do
                    for i,v in pairs(v:GetChildren()) do
                    if v3.MaxSelectionDistance > (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
                    local a = v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position * math.random(0.1, 0.001) 
                        CID2 = a
                        local convert2 = u6.worldToCell(a - Vector3.new(0,-1,0))
                
                        game:GetService("ReplicatedStorage").Events.MineBlock:FireServer(convert2)
                    task.wait(0.001)
                end
                    end
                end
                
                -- local convert = u6.worldToChunkId(CID2 - Vector3.new(0,1,0))

-- for i,v in pairs(game:GetService("Workspace").Chunks[convert]:GetChildren()) do
--     if v3.MaxSelectionDistance > (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
--     local a = v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position * math.random(0.1, 0.001) 
--     CID = a
--     local nande = u6.worldToCell(CID)
--     -- print(nande)
--     game:GetService("ReplicatedStorage").Events.MineBlock:FireServer(nande)
--     task.wait(0.1)
--     end
-- end
            end)
        end
    end
end)

-- spawn(function()
--     while task.wait(.7) do
--         if BloxAura then
--             pcall(function()

-- getgenv().b = nil
-- getgenv().CID = 0
-- -- / math.random(2,80)
-- for i,v in pairs(game:GetService("Workspace").Chunks:GetChildren()) do
--     for i,v in pairs(v:GetChildren()) do
--     if v3.MaxSelectionDistance > (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
--     local a = v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position * math.random(0.1, 0.001) 
--         -- CID = u6.worldToCell(a)
--         CID2 = u6.worldToChunkId(a)
--         -- print(CID)
--         print(CID2)
--         -- game:GetService("ReplicatedStorage").Events.MineBlock:FireServer(CID)
--     -- end
--     task.wait(0.001)
-- end
--     end
-- end
-- wait(getgenv().Chunk_Refresh)
-- -- local v6, v7 = v3.CellSize, v3.ChunkSize
--             end)
--         end
--     end
-- end)

-- local ohString1 = "Tool"
-- local ohString2 = "Firebane"

-- game:GetService("ReplicatedStorage").Events.PurchaseRebirthShopItem:FireServer(ohString1, ohString2)


Autofarm:line()

local Ore_Table = {}
for i,v in pairs(game:GetService("ReplicatedStorage").Assets.BlockDecorations:GetChildren()) do
    table.insert(Ore_Table, v.Name)
end

Autofarm:Dropdown("Select target", Ore_Table, function(t)
    Select_Ore = t
end)

Autofarm:Toggle("Target Selected Block", false, function(t)
    StartSelOre = t
end)

spawn(function()
    while task.wait() do
        if StartSelOre then
            pcall(function()
                -- local plr = game:GetService("Players").LocalPlayer
                -- local startPos = plr.Character.HumanoidRootPart
                -- local endPos 
                -- local Module = require(game:GetService("ReplicatedStorage").LoadModule)
                -- local ChunkUtil = Module("ChunkUtil")
                -- local Constants = Module("Constants")
                -- local newRaycast = RaycastParams.new()
                -- newRaycast.CollisionGroup = Constants.CollisionGroups.MineRaycast
                
                -- for i,v in pairs(game:GetService("Workspace").Decoration:GetChildren()) do
                --     if v.Name == Select_Ore then
                --         endPos = v
                --     end
                -- end
            
                -- local result = game.workspace:Raycast(startPos.Position, endPos.Position - startPos.Position, newRaycast)
                -- local ffs = result.Position - result.Normal
                -- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = endPos.CFrame

                -- local CellId = ChunkUtil.worldToCell(ffs)
                -- game:GetService("ReplicatedStorage").Events.MineBlock:FireServer(CellId)
                
                getgenv().b = nil
                getgenv().CID = 0
                -- / math.random(2,80)
                for i,v in pairs(game:GetService("Workspace").Decoration:GetChildren()) do
                    if v.Name == Select_Ore then
                        -- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.009644, -15000, -110.048203, 1, 0, 0, 0, 1, 0, 0, 0, )
                        if 10 > (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                            local h = v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position * math.random(0.1, 0.001)
                                CGI = u6.worldToCell(h)
                                print(CGI)
                            game:GetService("ReplicatedStorage").Events.MineBlock:FireServer(CGI)
                        end
                    end
                end
                --     for i,v in pairs(v:GetChildren()) do
                --     if 5 > (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
                --     local a = v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position * math.random(0.1, 0.001) 
                --         CID = u6.worldToCell(a)
                --         -- CID2 = u6.worldToChunkId(a)
                --         -- print(CID)
                --         -- print(CID2)
                --         game:GetService("ReplicatedStorage").Events.MineBlock:FireServer(CID)
                --     -- end
                --     task.wait(0.001)
                -- end
                --     end
                -- end
                
            end)
        end
    end
end)

Autofarm:line()

spawn(function()
local test = require(game:GetService("ReplicatedStorage").SharedModules.Helpers.ToolCanMineBlock)
    
test = function() return true end
end)

local SellAreas = {}
for i,v in pairs(game:GetService("Workspace").Teleports:GetChildren()) do
    if string.find(v.Name, "Sell") then
        table.insert(SellAreas, v.Name)
    end
end

Autofarm:Dropdown("Select Sell Location", SellAreas, function(t)
    Select_Sell_Location = t
end)

Autofarm:Toggle("Auto Sell", false, function(t)
    Autosell = t
end)
spawn(function()
    while task.wait() do
        if Autosell then
            pcall(function()
                local v8 = require(game.ReplicatedStorage.LoadModule);
                local v19 = v8("GetBackpackStatus");
                local v59 = v19();
                if v59.Full then
                    print("sold")
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Teleports[Select_Sell_Location].CFrame
                    game:GetService("ReplicatedStorage").Events.Teleport:FireServer(Select_Sell_Location)
                end

                -- local a = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.HUD.Left.Backpack.Label.Text
                -- if string.match(a, "(.+) / .+") == string.match(a, ".+ / (.+)") then
                --     print("sold")
                --     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Teleports[Select_Sell_Location].CFrame
                --     -- game:GetService("ReplicatedStorage").Events.Teleport:FireServer(Select_Sell_Location)
                -- else
                -- end
            end)
        end
    end
end)

Autofarm:Toggle("X-ray (Lag)", false, function(t)
    startX_Ray = t
end)

spawn(function()
    while wait() do
        if startX_Ray then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Chunks:GetChildren()) do
                    for i,v in pairs(v:GetChildren()) do
                    if v3.MaxSelectionDistance > (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
                        v.Transparency = 0.7
                    task.wait(0.001)
                end
                    end
                end
            end)
        end
    end
end)

Autofarm:line()

local Lock_Ore_Table = {}
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Inventory.Frame.Container.Ores.Content.Frame.Items:GetChildren()) do
    if v.ClassName == "Frame" then
        table.insert(Lock_Ore_Table, v.Name)
    end
end

Autofarm:Checklist("Select Ore Lock", "selore", Lock_Ore_Table, function(t)
    Sel_OreLock = t
end)

Autofarm:Toggle("Auto Lock Selected Ore", false, function(t)
    Auto_Lock_Ore = t
end)

spawn(function()
    while wait() do
        if Auto_Lock_Ore then
            pcall(function()
                for i2,v2 in pairs(checklists["selore"].Value) do
                    if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Inventory.Frame.Container.Ores.Content.Frame.Items[v2].Frame.Locked.Visible then
                    
                    else
                        local ohString1 = v2
                        game:GetService("ReplicatedStorage").Events.LockOre:FireServer(ohString1)
                    end
                end
            end)
        end
    end
end)

local Eggs_Table = {}
for i,v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
    table.insert(Eggs_Table, v.Name)
end

TabEgg:Dropdown("Select Egg", Eggs_Table, function(t)
    Slected_Egg = t
end)

TabEgg:Toggle("Auto Open Selected Egg", false, function(t)
    AutoOpen_Sel_Egg = t
end)

spawn(function()
    while task.wait() do
        if AutoOpen_Sel_Egg then
            pcall(function()
                -- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Eggs[Slected_Egg].EggName.CFrame
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if AutoOpen_Sel_Egg then
            pcall(function()
                game:GetService("ReplicatedStorage").Events.OpenEgg:FireServer(Slected_Egg)
            end)
        end
    end
end)

spawn(function()
    while game:GetService("RunService").Heartbeat:wait() do
      if AutoOpen_Sel_Egg then
         pcall(function()
            if not game:GetService("Workspace"):FindFirstChild("ManahubPart") then
               local ManahubPart = Instance.new("Part")
               ManahubPart.Name = "ManahubPart"
               ManahubPart.Parent = game.Workspace
               ManahubPart.Anchored = true
               ManahubPart.Transparency = 1
               ManahubPart.Size = Vector3.new(30,-0.5,30)
           elseif game:GetService("Workspace"):FindFirstChild("ManahubPart") then
               game.Workspace["ManahubPart"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.6, 0)
           end
         end)
           else
              if game:GetService("Workspace"):FindFirstChild("ManahubPart") then
                game.Workspace.ManahubPart.CFrame = CFrame.new(0,0,0)
              end
       end
   end
 end)

 Misc:Toggle("Auto Buy Tools", false, function(t)
    AutoTool = t
 end)

 spawn(function()
    while task.wait() do
        if AutoTool then
            pcall(function()
                for i,v in pairs(game:GetService("ReplicatedStorage").Assets.Tools:GetChildren()) do
                    local ohString1 = "SurfaceTools"
                    local ohNumber2 = i
                    game:GetService("ReplicatedStorage").Events.PurchaseShopItem:FireServer(ohString1, ohNumber2)
                    local ohString1 = "MoltenTools"
                    local ohNumber2 = i
                    game:GetService("ReplicatedStorage").Events.PurchaseShopItem:FireServer(ohString1, ohNumber2)
                    local ohString1 = "FrozenTools"
                    local ohNumber2 = i
                    game:GetService("ReplicatedStorage").Events.PurchaseShopItem:FireServer(ohString1, ohNumber2)
                    local ohString1 = "CyberTools"
                    local ohNumber2 = 1
                    game:GetService("ReplicatedStorage").Events.PurchaseShopItem:FireServer(ohString1, ohNumber2)
                end
            end)
        end
        wait(1)
    end
end)

Misc:Toggle("Auto Buy BackPacks", false, function(t)
    AutoBackPacks = t
 end)

 spawn(function()
    while task.wait() do
        if AutoBackPacks then
            pcall(function()
                for i,v in pairs(game:GetService("ReplicatedStorage").Assets.Backpacks:GetChildren()) do
                    local ohString1 = "SurfaceBackpacks"
                    local ohNumber2 = i
                    game:GetService("ReplicatedStorage").Events.PurchaseShopItem:FireServer(ohString1, ohNumber2)
                    local ohString1 = "MoltenBackpacks"
                    local ohNumber2 = i
                    game:GetService("ReplicatedStorage").Events.PurchaseShopItem:FireServer(ohString1, ohNumber2)
                    local ohString1 = "FrozenBackpacks"
                    local ohNumber2 = i
                    game:GetService("ReplicatedStorage").Events.PurchaseShopItem:FireServer(ohString1, ohNumber2)
                    local ohString1 = "CyberBackpacks"
                    local ohNumber2 = i
                    game:GetService("ReplicatedStorage").Events.PurchaseShopItem:FireServer(ohString1, ohNumber2)
                end
            end)
        end
        wait(1)
    end
end)

Misc:Toggle("Auto Rebirth", false, function(t)
    getgenv().Auto_Rebirth = t
end)

spawn(function()
    while task.wait() do
        if Auto_Rebirth then
            pcall(function()
                game:GetService("ReplicatedStorage").Events.Rebirth:FireServer()
            end)
        end
    end
end)

Misc:Toggle("Auto Equip Best Pets", false, function(t)
    AutoEquipBest = t
 end)

 spawn(function()
    while task.wait() do
        if AutoEquipBest then
            pcall(function()
                game:GetService("ReplicatedStorage").Events.EquipBestPets:FireServer()
            end)
        end
        wait(10)
    end
end)

Misc:line()

Misc:Toggle("Auto Buy Spins", false, function(t)
    AutoBuySpins = t
end)

spawn(function()
    while wait() do
        if AutoBuySpins then
            pcall(function()
                game:GetService("ReplicatedStorage").Events.BuySpinToWin:FireServer()
            end)
        end
        wait(4)
    end
end)

Misc:Toggle("Auto Use Spins", false, function(t)
    AutoUseSpins = t
end)

spawn(function()
    while wait() do
        if AutoUseSpins then
            pcall(function()
                game:GetService("ReplicatedStorage").Events.PlaySpinToWin:FireServer()
                game:GetService("ReplicatedStorage").Events.ClaimSpinToWin:FireServer()
            end)
        end
        wait(4)
    end
end)

Misc:Toggle("Auto Claim Achievements", false, function(t)
    AutoclaimAchievements = t
end)

spawn(function()
    while wait() do
        if AutoclaimAchievements then
            pcall(function()
                for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Achievements.Frame.Container.Content.Frame:GetChildren()) do
                    if v.ClassName == "Frame" then
                        local ohString1 = v.Name
                        game:GetService("ReplicatedStorage").Events.ClaimAchievementReward:FireServer(ohString1)
                    end
                end
            end)
        end
        wait(4)
    end
end)

Misc:Toggle("Auto Claim Free Gift", false, function(t)
    AutoclaimGif = t
end)

spawn(function()
    while wait() do
        if AutoclaimGif then
            pcall(function()
                game:GetService("ReplicatedStorage").Events.ClaimJuly4thGift:FireServer()
            end)
        end
        wait(4)
    end
end)

for i,v in pairs(game:GetService("Workspace").Teleports:GetChildren()) do
    Teleport:Button(v.Name, function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(v.Name)
    end)
end

Credits:Label("Credits")

Credits:Button("Project Meow Dev Team", function()
    setclipboard("https://discord.gg/97anmxFpkU")
 end)
 
 Credits:Button("Project Meow Discord Server", function()
    setclipboard("https://discord.gg/97anmxFpkU")
        local req = (syn and syn.request) or (http and http.request) or http_request
        if req then
            req({
                Url = 'http://127.0.0.1:6463/rpc?v=1',
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json',
                    Origin = 'https://discord.com'
                },
                Body = game:GetService('HttpService'):JSONEncode({
                    cmd = 'INVITE_BROWSER',
                    nonce = game:GetService('HttpService'):GenerateGUID(false),
                    args = {code = '97anmxFpkU'}
                })
            })
        end
 end)
 
 Credits:line()
 
 Credits:Button("Destroy Gui", function()
    game.CoreGui:FindFirstChild("woof"):Destroy()
 end)
 
 Credits:Button("Rejoin", function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
 end)
  local function HttpGet(url)
      return game:GetService("HttpService"):JSONDecode(htgetf(url))
  end
  Credits:Button("Server Hop",function()
      local PlaceID = game.PlaceId
      local AllIDs = {}
      local foundAnything = ""
      local actualHour = os.date("!*t").hour
      local Deleted = false
      --[[
      local File = pcall(function()
          AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
      end)
      if not File then
          table.insert(AllIDs, actualHour)
          writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
      end
      ]]
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
                                  -- delfile("NotSameServers.json")
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
                          -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
 
  Credits:line()
 
  VLib:setTheme(Credits)
