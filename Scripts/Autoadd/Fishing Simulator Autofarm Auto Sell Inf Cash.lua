--by Purples

local Config = {
    WindowName = "version 2.3",
    Color = Color3.fromRGB(182,41,243),
    Keybind = Enum.KeyCode.RightBracket
}



local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Bracket/main/BracketV3.lua"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("Fishing Simulator")


local Section1 = Tab1:CreateSection("")
local Section2 = Tab1:CreateSection("")

local RunService = game:GetService("RunService")
local player = game.Players.LocalPlayer
local hum = player.Character.HumanoidRootPart
local mouse = player:GetMouse() 
local tpservice= game:GetService("TeleportService")
local VirtualUser= game:service'VirtualUser'

local ToolsCache = game:GetService("ReplicatedStorage").ToolsCache[player.UserId]
local plrTools
local bLocation
local fuckMonster
local fuckMobby

local seacreatureSelectionned
local locationSelected
local eggs

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

function EquipTool()
    game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.SetEquippedItem:InvokeServer(2)
    local args = {
     [1] = game:GetService("ReplicatedStorage").ToolsCache:FindFirstChild(player.UserId)[plrTools]
    }
    game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.EquipTool:FireServer(unpack(args))
end

game:service'Players'.LocalPlayer.Idled:connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

-------------





-------------------------------------------------------



Section1:CreateLabel("Farming")

local Toggle6 = Section1:CreateToggle("Auto Kill", nil, function(State)
    shared.toggle = State
     if shared.toggle then
    fuckMonster = RunService.Stepped:Connect(function()
     for i, v in pairs(game.Workspace:GetChildren()) do
     if v:FindFirstChild("Health") and v:FindFirstChild("IsSeaMonster") then
        if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                 
                
                    for i, getTools in pairs(player.Character:GetChildren()) do
                        if getTools:IsA("Tool") and  getTools:FindFirstChild("GripC1") then
                            plrTools = getTools.Name
                        end
                    end
                 
                    teleport(v.HumanoidRootPart.CFrame + Vector3.new(0, 30, 0))
                    wait(1)
                    game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.MonsterHit:FireServer(workspace[v.Name], tostring(plrTools), true)
                    break
                elseif not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                    EquipTool()
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

local Toggle11 = Section1:CreateToggle("Auto Kill Mobby Wood", nil, function(State)
    shared.toggle = State
     if shared.toggle then
    fuckMobby = RunService.Stepped:Connect(function()
     for i, v in pairs(game.Workspace:GetChildren()) do
     if v:FindFirstChild("Health") and v:FindFirstChild("IsSeaMonster") and v.Name == "MobbyWood" then
        if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                 
                
                    for i, getTools in pairs(player.Character:GetChildren()) do
                        if getTools:IsA("Tool") and  getTools:FindFirstChild("GripC1") then
                            plrTools = getTools.Name
                        end
                    end
                 
                    teleport(v.HumanoidRootPart.CFrame + Vector3.new(0, 50, 0))
                    wait(1)
                    game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.MonsterHit:FireServer(workspace[v.Name], tostring(plrTools), true)
                    break
                elseif not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                    EquipTool()
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


local Toggle8 = Section1:CreateToggle("Reduce Lag", nil, function(State)
    toggle = State
     if toggle then
        while toggle do 
            wait(30)
            for i, v in pairs(game.Workspace.DroppedItems:GetChildren()) do
                if v:IsA("Model") then
                    v:Destroy()
                end
            end
        end
      end
end)

local Toggle10 = Section1:CreateToggle("Auto Lock Rare Items", nil, function(State)
    toggle = State
     if toggle then
        while toggle do 
            wait(.1)
for i, v in pairs(game.Players.LocalPlayer.PlayerGui.Interface.Inventory.Inventory.Frame.Backpack.List.Container:GetChildren()) do
        if string.match(v.Name, "key") then
            for i, model in pairs(v:GetDescendants()) do
                if model:IsA("Tool") then
                    if model.RarityLevel.Value >= 4 then
                        
                        if v.DraggableComponent.Contents.LockIcon.Visible == false then
                            print(v.Name, model.Name, model.RarityLevel.Value)
                        local args = {
                            [1] = "Tools",
                            [2] = v.Name,
                            [3] = true
                        }
                        game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.SetInventoryItemLock:InvokeServer(unpack(args))
                                                    
                        end
                    end
                end
            end
        end
end
            
        end
      end
end)

Toggle10:AddToolTip("Rarity Locked: \nEpic \nLegendary \nEvent \nSecret")

local Toggle1 = Section1:CreateToggle("Auto Caught", nil, function(State)
toggle = State
    while toggle do
        wait(2.6)
        game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.FishCaught:FireServer()
    end
end)

local Toggle2 = Section1:CreateToggle("Auto Sell", nil, function(State)
toggle = State
    while toggle do
        wait(2.6)
        game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.processGameItemSold:InvokeServer("SellEverything")
    end
end)

local Toggle3 = Section1:CreateToggle("Remove Fog", nil, function(State)
    toggle = State
        while toggle do
        if  game.Lighting.FogEnd == 100 then
         game.Lighting.FogEnd = 1000000
        end
            game.Lighting.FogEnd = 1000000
            game.Lighting.GlobalLighting:Destroy()
            game.Lighting.Atmosphere:Destroy()     
             game.Lighting.Lighting:Destroy()  
              game.Lighting.ColorCorrection:Destroy()     
               game.Lighting.Bloom:Destroy()     
                game.Lighting.Blur:Destroy()     
                 game.Lighting.Atmosphere:Destroy()                 
        end
end)

Section1:CreateLabel("Chest")

local Toggle4 = Section1:CreateToggle("Daily Chest", nil, function(State)
    toggle = State
        while toggle do
                for i, v in pairs(game.Workspace.Islands:GetDescendants()) do
                    if v:IsA("Model") and string.match(v.Name, "Chest") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                        wait(1)
                        fireproximityprompt(v.HumanoidRootPart.ProximityPrompt)
                    end
                end            
        end
end)

local Toggle9 = Section1:CreateToggle("Random Chest", nil, function(State)
    toggle = State
        while toggle do
                for i, v in pairs(game.Workspace.RandomChests:GetDescendants()) do
                    if v:IsA("Model") and string.match(v.Name, "Chest") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                        wait(1)
                        fireproximityprompt(v.HumanoidRootPart.ProximityPrompt)
                    end
                end            
        end
end)

local Toggle5 = Section1:CreateToggle("Suken Chest", nil, function(State)
    toggle = State
        while toggle do
            wait(5)
             for i, v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "ShipModel") then
                        teleport(v.HitBox.CFrame)
                        for i, x in pairs(v:GetChildren()) do
                            if string.match(x.Name, "Chest_") then
                                teleport(x.HumanoidRootPart.CFrame)
                                wait(1)
                                fireproximityprompt(x.HumanoidRootPart.ProximityPrompt)    
                            end                                
                        end
                    break
                 end
              end
        end
end)


---------------------------------------------------------------------
Section1:CreateLabel("Teleport")

local Dropdown2 = Section1:CreateDropdown("Store", {"Boat Store","Raygan's Tavern","Supplies Store", "Pets Store"}, function(String)
    locationSelected = String
end)

local Button1 = Section1:CreateButton("Teleport", function()
    if locationSelected == "Boat Store" then
            game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.EnterDoor:InvokeServer("BoatShopInterior", "Inside")
        elseif locationSelected == "Raygan's Tavern" then
            game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.EnterDoor:InvokeServer("TavernInterior", "Inside")
        elseif locationSelected == "Supplies Store" then
            game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.EnterDoor:InvokeServer("SuppliesStoreInterior", "Inside")  
        elseif locationSelected == "Pets Store" then
            game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.EnterDoor:InvokeServer("PetShop", "MainEntrance")
    end
end)

local Dropdown3 = Section1:CreateDropdown("Location", {"Port Jackson","Ancient Shores","Shadow Isles", "Pharaoh's Dunes", "Eruption Island", "Monster's Borough", "Suken Ship"}, function(String)
    locationSelected = String
end)

local Button2 = Section1:CreateButton("Teleport", function()
    if locationSelected == "Port Jackson" then
        teleport(CFrame.new(1.8703980445862, 53.57190322876, -188.37982177734))           
        elseif locationSelected == "Ancient Shores" then
        teleport(CFrame.new(-2436.431640625, 43.564971923828, -1683.4526367188))    
        elseif locationSelected == "Shadow Isles" then
        teleport(CFrame.new(2196.9926757812, 43.491630554199, -2216.4543457031))    
        elseif locationSelected == "Pharaoh's Dunes" then
        teleport(CFrame.new(-4142.74609375, 46.71378326416, 262.05679321289))
        elseif locationSelected == "Eruption Island" then
        teleport(CFrame.new(3022.9311523438, 52.347640991211, 1323.74609375))
        elseif locationSelected == "Monster's Borough" then
        teleport(CFrame.new(-3211.9047851562, 41.850345611572, 2735.306640625))  
        elseif locationSelected == "Suken Ship" then
             for i, v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "ShipModel") then
                        teleport(v.HitBox.CFrame)
                    break
                 end
              end                               
    end
end)

Section2:CreateLabel("Boats")

local Slider1 = Section2:CreateSlider("Boat Speed", 0,150,nil,true, function(Value)
 for i, v in pairs(game.Workspace:GetChildren()) do
        if v.Name == (game.Players.LocalPlayer.Name .. "'s Boat") then
             v.Controller.VehicleSeat.MaxSpeed = tonumber(Value)
         end
    end   
end)

local Button3 = Section2:CreateButton("Tp to Boat", function()
    for i, v in pairs(game.Workspace:GetChildren()) do
        if v.Name == (game.Players.LocalPlayer.Name .. "'s Boat") then
             teleport(v.Controller.VehicleSeat.CFrame + Vector3.new(0, 3, 0))
        end
    end
end)
local Button4 = Section2:CreateButton("Remove Borders", function()
    for i, v in pairs(game.Workspace.IgnoredByMouse.BoatBorders:GetChildren()) do
        v:Destroy()
    end
end)   

Section2:CreateLabel("Pets")


local Dropdown4 = Section2:CreateDropdown("Egg's", {"Royals","Normal","Ruby", "Void", "Silver", "Stone", "Gold"}, function(String)
    eggs = String
end)

local Button8 = Section2:CreateButton("Buy", function()
    if eggs == "Royal" then
        game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.OpenLootboxFunction:InvokeServer("royalegg")    
        elseif eggs == "Normal" then
        game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.OpenLootboxFunction:InvokeServer("normalegg")   
        elseif eggs == "Ruby" then
        game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.OpenLootboxFunction:InvokeServer("rubyegg")   
        elseif eggs == "Void" then
        game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.OpenLootboxFunction:InvokeServer("voidegg")
        elseif eggs == "Silver" then
        game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.OpenLootboxFunction:InvokeServer("silverchest")
        elseif eggs == "Stone" then
        game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.OpenLootboxFunction:InvokeServer("stonechest")    
        elseif eggs == "Gold" then
        game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.OpenLootboxFunction:InvokeServer("goldchest")            
    end
end)

Section2:CreateLabel("Misc")


local Button8 = Section2:CreateButton("Instant ProximityPrompt", function()
game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
   prompt.HoldDuration = 0
end)
end) 

local Button5 = Section2:CreateButton("Rejoins", function()
tpservice:Teleport(game.PlaceId, plr)
end) 

local Button6 = Section2:CreateButton("Server Hop", function()
switchServer()
end)   

local Button7 = Section2:CreateButton("Discord", function()
setclipboard("adgXmSMCUM") 
end)

local Toggle7 = Section2:CreateToggle("UI Toggle", nil, function(State)
    Window:Toggle(State)
end)

Toggle7:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
    Config.Keybind = Enum.KeyCode[Key]
end)    
Toggle7:SetState(true)

EquipTool()
game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(character)
    EquipTool()
end)

--Hi