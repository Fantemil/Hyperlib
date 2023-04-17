local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local RunService = game:GetService("RunService")
local player = game.Players.LocalPlayer
local hum = player.Character.HumanoidRootPart
local mouse = player:GetMouse() 
local tpservice= game:GetService("TeleportService")
 
local ToolsCache = game:GetService("ReplicatedStorage").ToolsCache[player.UserId]
local plrTools
local bLocation
local fuckMonster
local fuckMobby
local autoSell
local autoChest
local autoCaught
 
-- Credits To Charwar for Server Hop
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
 
 
-- Server Hop
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
 
function switchServer()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end
 
 
-- Teleportion system by [...] Open source script from RobloxScripts.com
function teleport(loc)
    bLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    if game.Players.LocalPlayer.Character.Humanoid.Sit then
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end
    wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
end
 
-- Get Tools Name (Just hidden the tool in replicatedstorage, savageeeee but characte win)
for i, getTools in pairs(player.Character:GetChildren()) do
    if getTools:IsA("Tool") and  getTools:FindFirstChild("GripC1") then
        plrTools = getTools.Name
    end
end
 
print(plrTools)
 
local function fireproximityprompt(Obj, Amount, Skip)
    if Obj.ClassName == "ProximityPrompt" then 
        Amount = Amount or 1
        local PromptTime = Obj.HoldDuration
        if Skip then 
            Obj.HoldDuration = 0
        end
        for i = 1, Amount do 
            Obj:InputHoldBegin()
            if not Skip then 
                wait(Obj.HoldDuration)
            end
            Obj:InputHoldEnd()
        end
        Obj.HoldDuration = PromptTime
    else 
        error("userdata<ProximityPrompt> expected")
    end
end 
    
_G.MainColor = Color3.fromRGB(255,255,255);
_G.MainTextColor = Color3.fromRGB(69,69,69);
 
_G.SecondaryColor = Color3.fromRGB(255,255,255);
 
_G.ButtonColor = Color3.fromRGB(255,255,255);
_G.ToggleColor = Color3.fromRGB(255,255,255);
_G.SliderColor = Color3.fromRGB(255,255,255);
_G.TertiaryColor = Color3.fromRGB(34, 34, 34);
_G.DraggerCircleColor = Color3.fromRGB(255,255,255);
_G.PointerColor = Color3.fromRGB(34, 34, 34);
 
local w = library:CreateWindow("Utilities") -- Creates the window
 
local b = w:CreateFolder("Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°")
 
 
 
b:Button("Caught",function()
    game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.FishCaught:FireServer()
end)
 
b:Button("Sell",function()
   game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.processGameItemSold:InvokeServer("SellEverything")
end)
 
b:Button("Remove Fog",function()
game.Lighting.FogEnd = 1000000
game.Lighting.GlobalLighting:Destroy()
game.Lighting.Atmosphere:Destroy()
end)
 
local hh = library:CreateWindow("Teleport") -- Creates the window
 
local h = hh:CreateFolder("â¢â¢â¢â¢â¢â¢â¢â¢â¢â¢â¢Storeâ¢â¢â¢â¢â¢â¢â¢â¢â¢â¢â¢â¢â¢")
local i = hh:CreateFolder("â¢â¢â¢â¢â¢â¢â¢â¢â¢â¢â¢Islandâ¢â¢â¢â¢â¢â¢â¢â¢â¢â¢â¢â¢â¢")
 
 
local enterBoat = true
h:Button("Boat Store",function()
    if enterBoat == true then
       game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.EnterDoor:InvokeServer("BoatShopInterior", "Inside")  
        enterBoat = false
    else
         enterBoat = true
        game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.EnterDoor:InvokeServer("BoatShopInterior","MainEntrance")
    end
end)
 
local enterTavern = true
h:Button("Raygan's Tavern",function()
    if enterTavern == true then
       game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.EnterDoor:InvokeServer("TavernInterior", "Inside")  
        enterTavern = false
    else
         enterTavern = true
        game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.EnterDoor:InvokeServer("TavernInterior","MainEntrance")
    end
end)
 
local enterSupplies = true
h:Button("Supplies Store",function()
    if enterSupplies == true then
       game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.EnterDoor:InvokeServer("SuppliesStoreInterior", "Inside")  
        enterSupplies = false
    else
         enterSupplies = true
        game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.EnterDoor:InvokeServer("SuppliesStoreInterior","MainEntrance")
    end
end)
 
local enterPets = true
h:Button("Pets Store",function()
    if enterPets == true then
       game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.EnterDoor:InvokeServer("PetShop", "MainEntrance")  
        enterPets = false
    else
         enterPets = true
        game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.EnterDoor:InvokeServer("PetShop","MainExit")
    end
end)
 
h:Button("Suken Ship",function()
 for i, v in pairs(game.Workspace:GetChildren()) do
    if string.find(v.Name, "ShipModel") then
            teleport(v.HitBox.CFrame)
        break
     end
  end
end)
 
i:Button("Port Jackson",function()
     teleport(CFrame.new(1.8703980445862, 53.57190322876, -188.37982177734))
end)
 
i:Button("Ancient Shores",function()
     teleport(CFrame.new(-2436.431640625, 43.564971923828, -1683.4526367188))
end)
 
i:Button("Shadow Isles",function()
     teleport(CFrame.new(2196.9926757812, 43.491630554199, -2216.4543457031))
end)
 
i:Button("Pharaoh's Dunes",function()
     teleport(CFrame.new(-4142.74609375, 46.71378326416, 262.05679321289))
end)
 
i:Button("Eruption Island",function()
     teleport(CFrame.new(3022.9311523438, 52.347640991211, 1323.74609375))
end)
 
i:Button("Monster's Borough",function()
     teleport(CFrame.new(-3211.9047851562, 41.850345611572, 2735.306640625))
end)
 
local Window2 = library:CreateWindow("Farm")
local c = Window2:CreateFolder("Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°")
 
c:Toggle("Kill Monster",function(bool)
    shared.toggle = bool
     if shared.toggle == true then
    fuckMonster = RunService.Stepped:Connect(function()
     for i, v in pairs(game.Workspace:GetChildren()) do
     if v:FindFirstChild("Health") and v:FindFirstChild("IsSeaMonster") and v.Name == "GreatWhiteShark" or v.Name == "BigGreatWhiteShark" or v.Name == "KillerWhale" or v.Name == "NeonGreatWhiteShark" then
        if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                 
                
                    for i, getTools in pairs(player.Character:GetChildren()) do
                        if getTools:IsA("Tool") and  getTools:FindFirstChild("GripC1") then
                            plrTools = getTools.Name
                        end
                    end
                 
                    teleport(v.HumanoidRootPart.CFrame + Vector3.new(0, 30, 0))
                    wait(0.25)
                    game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.MonsterHit:FireServer(workspace[v.Name], tostring(plrTools), true)
                    break
                elseif not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                 
               break
            end
        end
     end
     end)
    else
         fuckMonster:Disconnect()
          teleport(CFrame.new(1.8703980445862, 53.57190322876, -188.37982177734))
        end
end)
 
c:Toggle("Kill Mobby",function(bool)
    shared.toggle = bool
     if shared.toggle == true then
    fuckMobby = RunService.Stepped:Connect(function()
     for i, v in pairs(game.Workspace:GetChildren()) do
     if v:FindFirstChild("Health") and v:FindFirstChild("IsSeaMonster") and v.Name == "MobyWood" then
        if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                 
                
                    for i, getTools in pairs(player.Character:GetChildren()) do
                        if getTools:IsA("Tool") and  getTools:FindFirstChild("GripC1") then
                            plrTools = getTools.Name
                        end
                    end
                 
                    teleport(v.HumanoidRootPart.CFrame + Vector3.new(0, 10, 0))
                    wait(0.25)
                    game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.MonsterHit:FireServer(workspace[v.Name], tostring(plrTools), true)
                    break
                elseif not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                 
               break
            end
        end
     end
     end)
    else
         fuckMobby:Disconnect()
          teleport(CFrame.new(1.8703980445862, 53.57190322876, -188.37982177734))
        end
end)
 
c:Toggle("Auto Caught",function(bool)
    shared.toggle = bool
     if shared.toggle == true then
 
    
    autoCaught = coroutine.wrap(function()
        while true and shared.toggle == true do
            wait(2.6)
            warn("Caught")
            game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.FishCaught:FireServer()
        end
    end)()
 
    else
          autoCaught:Disconnect()
          teleport(CFrame.new(1.8703980445862, 53.57190322876, -188.37982177734))
        end
end)
 
c:Toggle("Auto Sell",function(bool)
    shared.toggle = bool
     if shared.toggle == true then
    autoSell = RunService.Stepped:Connect(function()
            game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.processGameItemSold:InvokeServer("SellEverything")
     end)
    else
         autoSell:Disconnect()
         
        end
end)
 
c:Toggle("Auto Map Chest",function(bool)
    shared.toggle = bool
     if shared.toggle == true then
    autoChest = RunService.Stepped:Connect(function()
            
 for i, v in pairs(game.Workspace.RandomChests:GetChildren()) do
            if v:IsA("Model") then
                  teleport(v.HumanoidRootPart.CFrame + Vector3.new(0, 0, 0))
                  wait(0.25)
                  fireproximityprompt(v.HumanoidRootPart.ProximityPrompt)
            end
        end
     end)
    else
         autoChest:Disconnect()
          teleport(CFrame.new(1.8703980445862, 53.57190322876, -188.37982177734))
        end
end)
 
 
local Window3 = library:CreateWindow("Boat");
local d = Window3:CreateFolder("Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°")
 
d:Slider("Speed",{
    min = 10; -- min value of the slider
    max = 400; -- max value of the slider
    precise = true; -- max 2 decimals
},function(value)
     for i, v in pairs(game.Workspace:GetChildren()) do
        if v.Name == (game.Players.LocalPlayer.Name .. "'s Boat") then
             v.Controller.VehicleSeat.MaxSpeed = tonumber(value)
             v.TakeDamage:Destroy()
         end
    end
end)
 
 
d:Button("Remove Borders",function()
    for i, v in pairs(game.Workspace.IgnoredByMouse.BoatBorders:GetChildren()) do
        v:Destroy()
    end
end)
d:Button("Tp to Boat",function()
    for i, v in pairs(game.Workspace:GetChildren()) do
            if v.Name == (game.Players.LocalPlayer.Name .. "'s Boat") then
                teleport(v.Controller.VehicleSeat.CFrame + Vector3.new(0, 3, 0))
            end
        end
end)
 
 
 
local Window4 = library:CreateWindow("Unboxing");
local e = Window4:CreateFolder("Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°EggsÂ°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°")
local f = Window4:CreateFolder("Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°RoadsÂ°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°")
e:Button("Royal",function()
game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.OpenLootboxFunction:InvokeServer("royalegg")
end)
e:Button("Normal",function()
game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.OpenLootboxFunction:InvokeServer("normalegg")
end)
e:Button("Ruby",function()
game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.OpenLootboxFunction:InvokeServer("rubyegg")
end)
e:Button("Void",function()
game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.OpenLootboxFunction:InvokeServer("voidegg")
end)
 
f:Button("Silver",function()
game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.OpenLootboxFunction:InvokeServer("silverchest")
end)
f:Button("Stone",function()
game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.OpenLootboxFunction:InvokeServer("stonechest")
end)
f:Button("Gold",function()
game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.OpenLootboxFunction:InvokeServer("goldchest")
end)
 
local Window666 = library:CreateWindow("Misc");
local g = Window666:CreateFolder("Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°Â°")
local toggleTp = false
 
g:Button("Click Teleport (E)",function()
             if toggleTp == false then
                toggleTp = true
            else
                toggleTp = false
             end
    
        
            mouse.KeyDown:connect(function(key) 
                if key == "e" then 
                    if mouse.Target then 
                        if toggleTp == true then
                        hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
                        end
                    end 
                end 
            end)
       
    
    
end)
 
g:Button("Rejoins",function()
tpservice:Teleport(game.PlaceId, plr)
end)
 
g:Button("Server Hop",function()
switchServer()
end)
 
g:Button("Discord",function()
setclipboard("HUnTFaE4H6") 
end)
 
g:DestroyGui()