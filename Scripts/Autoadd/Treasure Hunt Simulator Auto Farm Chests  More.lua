repeat wait() until game:IsLoaded()

-- Making sure the game is Treasure Hunt Simulator
if game.PlaceId ~= 1345139196 then
    game.Players.LocalPlayer:Kick("This script only works on Treasure Hunt Simulator!")
end
if getgenv().thunt_gui_executed then
    game.Players.LocalPlayer:Kick("GUI executed twice!")
end

-- Services
local PhysicsService = game:GetService("PhysicsService")
local RunService = game:GetService("RunService")
local MarketplaceService = game:GetService("MarketplaceService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local VirtualUser = game:GetService("VirtualUser")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")

-- Global Environment Variables
getgenv().thunt_gui_executed = true
getgenv().cheat_settings = {}
getgenv().cheat_settings.autochest = false
getgenv().cheat_settings.autosell = false
getgenv().cheat_settings.autobuyshovels = false
getgenv().cheat_settings.autobuybackpacks = false
getgenv().cheat_settings.autobuypets = false
getgenv().cheat_settings.autorebirth = false
getgenv().cheat_settings.autobuycrates = false
getgenv().cheat_settings.autoopencrates = false
getgenv().cheat_settings.freegamepass = false
getgenv().cheat_settings.gcollide = true
getgenv().cheat_settings.autoinvisible = false
getgenv().cheat_settings.walkspeed = false
getgenv().cheat_settings.jumppower = false
getgenv().cheat_settings.autoserverhop = false
getgenv().cheat_settings.antiafk = true
getgenv().cheat_settings.savesettings = false

-- Predefining needed game data
getgenv().thunt_data = {}
getgenv().thunt_data.chests = ReplicatedStorage:WaitForChild("Chests")
getgenv().thunt_data.crates = ReplicatedStorage:WaitForChild("Crates")
getgenv().thunt_data.shovels = ReplicatedStorage:WaitForChild("Shovels")
getgenv().thunt_data.backpacks = ReplicatedStorage:WaitForChild("Backpacks")
getgenv().thunt_data.pets = ReplicatedStorage:WaitForChild("Pets")
getgenv().thunt_data.gamepasses = ReplicatedStorage:WaitForChild("Gamepasses")
getgenv().thunt_data.buy_item = ReplicatedStorage:WaitForChild("Events"):WaitForChild("Checkout")
getgenv().thunt_data.buy_crate = ReplicatedStorage:WaitForChild("Events"):WaitForChild("BuyCrate")
getgenv().thunt_data.open_crate = ReplicatedStorage:WaitForChild("Events"):WaitForChild("SendOpenCrate")
getgenv().thunt_data.rebirth = ReplicatedStorage:WaitForChild("Events"):WaitForChild("Rebirth")
getgenv().thunt_data.check_if_owned = ReplicatedStorage:WaitForChild("Events"):WaitForChild("CheckIfOwned")

function thunt_data.getChestNames(with_health)
    local ret_val = {}
    for ind, val in pairs(getgenv().thunt_data.chests:GetChildren()) do
        if with_health then
            ret_val[ind] = val.Name.." ("..val:WaitForChild("Health").Value..")"
        else
            ret_val[ind] = val.Name
        end
    end
    return ret_val
end

function thunt_data.getCrateNames()
    local ret_val = {}
    for ind, val in pairs(getgenv().thunt_data.crates:GetChildren()) do
        ret_val[ind] = val.Name
    end
    return ret_val
end

-- Predefining player data
getgenv().player_data = {}

-- Cheat needed variables
getgenv().cheat_vars = {}
getgenv().cheat_vars.walkspeed = 16
getgenv().cheat_vars.jumppower = 50
getgenv().cheat_vars.servermin = 6
getgenv().cheat_vars.servermax= 14

getgenv().cheat_vars.chosen_autobuycrate = {}
getgenv().cheat_vars.chosen_autoopencrates = {}

local crates_arr = getgenv().thunt_data.getCrateNames()
for i,v in pairs(crates_arr) do
    getgenv().cheat_vars.chosen_autobuycrate[v] = false
    getgenv().cheat_vars.chosen_autoopencrates[v] = false
end


getgenv().cheat_vars.chosen_autofarm = {}
local chests_arr = getgenv().thunt_data.getChestNames(true)
for i,v in pairs(chests_arr) do
    getgenv().cheat_vars.chosen_autofarm[v] = false
end

sandblocks = workspace:WaitForChild("SandBlocks")

-- Utility functions
-- Data related functions
local function saveData()
    if getgenv().player_data["player"] == nil then
        return false
    end
    local table = 
    {
        cheat_var = getgenv().cheat_vars,
        cheat_setting = getgenv().cheat_settings
    }
    local json = HttpService:JSONEncode(table)
    makefolder("THUNT_GUI")
    writefile("THUNT_GUI\\data_"..getgenv().player_data["player"].Name.."v1.txt", json)
    return true
end

local function loadData()
    if getgenv().player_data["player"] == nil then
        return false
    end
    if(not isfile("THUNT_GUI\\data_"..getgenv().player_data["player"].Name.."v1.txt")) then
        return nil
    end
    local file_content = readfile("THUNT_GUI\\data_"..getgenv().player_data["player"].Name.."v1.txt")
    local table = HttpService:JSONDecode(file_content)
    if table.cheat_setting.savesettings == true then
        getgenv().cheat_vars = table.cheat_var
        getgenv().cheat_settings = table.cheat_setting
    end
    return true
end

local function removeData()
    if getgenv().player_data["player"] == nil then
        return false
    end
    if isfile("THUNT_GUI\\data_"..getgenv().player_data["player"].Name.."v1.txt") then
        delfile("THUNT_GUI\\data_"..getgenv().player_data["player"].Name.."v1.txt")
    end
end

-- Other functions
local function spawnThread(task, ...)
    local cor = coroutine.create(task)
    local success, message = coroutine.resume(cor, ...)
    return cor, success, message
end

local function updatePlayerData()
    getgenv().player_data["player"] = Players.LocalPlayer
    getgenv().player_data["character"] = getgenv().player_data["player"].Character or getgenv().player_data["player"].CharacterAdded:Wait()
    getgenv().player_data["humanoid"] = getgenv().player_data["character"]:WaitForChild("Humanoid")
    getgenv().player_data["root"] = getgenv().player_data["character"]:WaitForChild("HumanoidRootPart")
    getgenv().player_data["tool"] = nil
    for ind, val in pairs(getgenv().player_data["player"]:WaitForChild("Backpack"):GetChildren()) do
        if val:IsA("Tool") then
            getgenv().player_data["tool"] = val
            break
        end
    end

    if getgenv().player_data["tool"] == nil then
        for ind, val in pairs(getgenv().player_data["character"]:GetChildren()) do
            if val:IsA("Tool") then
                getgenv().player_data["tool"] = val
                break
            end
        end
    end
    getgenv().player_data["coins"] = getgenv().player_data["player"]:WaitForChild("leaderstats"):WaitForChild("Coins")
end

local function createInstance(inst, args)
    local instance = Instance.new(inst)
    -- Instance properties
    for key, value in pairs(args) do
        instance[key] = value
    end
    return instance
end

local function strToVec2(str, char)
    local temp = string.split(str, char)
    return {temp[1], temp[2]}
end

-- Cheat functions
updatePlayerData()

local function goInvisible()
    local clone = getgenv().player_data["character"]:WaitForChild("LowerTorso"):WaitForChild("Root"):Clone()
    local before_tp = getgenv().player_data["root"].CFrame 

    getgenv().player_data["root"].Anchored = true
    getgenv().player_data["root"].CFrame = CFrame.new(-102, 10, -416)
    getgenv().player_data["root"].Anchored = false
    
    local part = createInstance("Part", 
    {
        Anchored = true,
        CFrame = CFrame.new(-102, 10, -416),
        Size = Vector3.new(5, 5, 5),
        CanTouch = true,
        CanCollide = false,
        Parent = workspace
    })
    part.Touched:Connect(function()
        game.Players.LocalPlayer.Character.LowerTorso.Root:Destroy()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = before_tp
        part:Destroy()
    end)
end

local function serverHop(min_players, max_players)
    local servers = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
    local teleported = false
    local cursor = ""
    while not teleported  do
        if servers.nextPageCursor ~= nil then
            for i,v in pairs(servers.data) do
                if v.playing < min_players then
                    continue
                end
                if v.playing > max_players then
                    continue
                end
                teleported = true
                TeleportService:TeleportToPlaceInstance(game.PlaceId, v.id)
                break
            end
            if not teleported then
                cursor = servers.nextPageCursor
                servers = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100&cursor="..cursor))
            end
        else
            wait(10)
            servers = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100&cursor="..cursor))
        end
        wait(1)
    end
end

local function teleportTo(cframe)
    getgenv().player_data["root"].CFrame = cframe
end

local function setWalkSpeed(number)
    getgenv().player_data["humanoid"].WalkSpeed = number
end

local function setJumpPower(number)
    getgenv().player_data["humanoid"].JumpPower = number
end

local function platformStand()
    local args = 
    {
        Anchored = true,
        Parent = workspace,
        CFrame = getgenv().player_data["root"].CFrame - Vector3.new(0, 3.6, 0)
    }
    
    local part = createInstance("Part", args)

    -- Removing part
    part.TouchEnded:Connect(function(tpart)
        if tpart.Parent == getgenv().player_data["character"] then
            part:Destroy()
        end
    end)
end

local function findChest(filters)
    for ind1, part1 in pairs(sandblocks:GetChildren()) do
        if part1:FindFirstChild("Chest") then
            local chest_type =  part1:FindFirstChild("Mat")
            if chest_type == nil then
                continue
            end
            for i,v in pairs(filters) do
                if v == chest_type.Value or v:match(chest_type.Value) then
                    return part1
                end
            end
        end
    end
    return nil
end

local function getFirstBlock()
    local children = sandblocks:GetChildren()
    for i,v in pairs(children) do
        if v:FindFirstChild("Rock") == nil and v:FindFirstChild("Chest") == nil then
            return v
        end
    end
    return nil
end

local function digBlock(block)
    while getgenv().player_data["tool"] == nil do
        updatePlayerData()
        wait()
    end
    while(getgenv().player_data["tool"].Parent ~= getgenv().player_data["character"] and getgenv().player_data["tool"].Parent ~= getgenv().player_data["player"]:WaitForChild("Backpack"))  do
        updatePlayerData()
        wait()
    end

    getgenv().player_data["humanoid"]:EquipTool(getgenv().player_data["tool"])

    getgenv().player_data["tool"]:FindFirstChild("RemoteClick"):FireServer(block)
end

local function checkMaxBackpack()
    local amount = getgenv().player_data["player"]:WaitForChild("PlayerGui"):WaitForChild("Gui"):WaitForChild("Buttons"):WaitForChild("Sand"):WaitForChild("Amount")
    local backpack_status = strToVec2(amount.Text, " / ")
    return backpack_status[1] == backpack_status[2]
end

local function sell()
    while checkMaxBackpack() do
        teleportTo(CFrame.new(2201.05762, 9.94674683, -254.006104))
        wait()
    end
end

local function sellReturn()
    local cframe = getgenv().player_data["root"].CFrame
    sell()
    getgenv().player_data["root"].CFrame = cframe
end

local function checkIfItemOwned(item_name)
    getgenv().thunt_data.check_if_owned:InvokeServer(item_name)
end

local function buyItem(item_name)
    local args = 
    {
        [1] = item_name
    }  
    getgenv().thunt_data.buy_item:FireServer(unpack(args))
end

local function buyCrate(crate_name, target_name,quantity)
    local args = 
    {
        [1] = getgenv().thunt_data.crates[crate_name],
        [2] = target_name,
        [3] = quantity
    }
    
    getgenv().thunt_data.buy_crate:FireServer(unpack(args))
end

local function openCrate(crate_name)
    local args = 
    {
        [1] = getgenv().thunt_data.crates[crate_name]
    }

    getgenv().thunt_data.open_crate:FireServer(unpack(args))
end

local function rebirth()
    getgenv().thunt_data.rebirth:FireServer()
end

local function getCurrentItem(item_type)
    if string.lower(item_type) == "shovels" then
        return getgenv().player_data["tool"].Name
    elseif string.lower(item_type) == "backpacks" then
        local backpack
        for i,v in pairs(getgenv().player_data["character"]:GetChildren()) do
            if v:IsA("Model") then
                return v.Name
            end
        end
    elseif string.lower(item_type) == "pets" then
        local pet_holder = getgenv().player_data["character"]:WaitForChild("PetHolder")
        local children = pet_holder:GetChildren()
        if #children == 0 then
            return "None"
        end
        return children[1].Name
    end
end

local function getNextBestItem(item_type, max_price)
    local current_item_name = getCurrentItem(item_type)
    if current_item_name == nil then
        return nil
    end
    local current_item
    local min_price
    if current_item_name ~= "None" then
        current_item = getgenv().thunt_data[item_type][current_item_name]
        if current_item == nil then
            return nil
        end
        min_price = current_item:WaitForChild("Price").Value
    else
        min_price = 0
    end
    
    local next_best_item
    for i, item in pairs(getgenv().thunt_data[item_type]:GetChildren()) do
        if item_type == "shovels" then
            local item_tool = item:WaitForChild(item.Name)
            local item_configuration = item_tool:WaitForChild("Configurations")
            local item_type = item_configuration:WaitForChild("ToolType")

            if item_type.Value == "Bomb" then
                continue
            end
        end

        local item_price = item:WaitForChild("Price").Value

        if item_price <= min_price then
            continue
        elseif item_price > max_price then
            continue
        end

        next_best_item = item
        min_price = item_price
    end
    return next_best_item
end

local function buyNextBestItem(item_type)
    local item = getNextBestItem(item_type, getgenv().player_data["coins"].Value)
    if item == nil then
        return
    end
    buyItem(item.Name)
end

local function buyEverything()
    if getgenv().cheat_settings.autorebirth then
        rebirth()
    end

    if getgenv().cheat_settings.autobuyshovels then
        buyNextBestItem("shovels")
    end

    if getgenv().cheat_settings.autobuybackpacks then
        buyNextBestItem("backpacks")
    end

    if getgenv().cheat_settings.autobuypets then
        buyNextBestItem("pets")
    end

    updatePlayerData()
end

-- Free gamepasses
local oldFunction
oldFunction = hookmetamethod(game, "__namecall", newcclosure(function(Self, ...)
    if not checkcaller() then
        if Self == MarketplaceService then
            local method = getnamecallmethod()
            if method == "UserOwnsGamePassAsync" then
                if getgenv().cheat_settings.freegamepass then
                    return true
                else
                    return oldFunction(Self, ...)
                end
            end
        end
    end
    return oldFunction(Self, ...)
end))

-- Autochest
local function autoChest(chests)
    local block = findChest(chests) or getFirstBlock()
    if block == nil then
        return
    end
    local hp = block.Health.Value
    local retries = 0
    while getgenv().cheat_settings.autochest and block ~= nil do
        if block.Parent ~= sandblocks then
            break
        end

        if getgenv().cheat_settings.autosell then
            if checkMaxBackpack() then
                sellReturn()
                buyEverything()
            end
        end
        

        getgenv().cheat_settings.gcollide = false
        teleportTo(block.CFrame + Vector3.new(0, block.Size.Y, 0))
        digBlock(block)
        wait(getgenv().player_data["tool"]:WaitForChild("Configurations"):WaitForChild("AttackLength").Value)

        if block.Health.Value >= hp then
            retries = retries + 1
        else
            retries = 0
        end

        if retries >= 3 then
            block.Parent = nil
            break
        end

        hp = block.Health.Value
    end
end

-- Cheat event functions
-- Auto character update
getgenv().player_data["player"].CharacterAdded:Connect(function(char)
    updatePlayerData()
    if getgenv().cheat_settings.autoinvisible then
        goInvisible()
    end
end)

-- Anti afk
getgenv().player_data["player"].Idled:Connect(function()
    if getgenv().cheat_settings.antiafk == true then
        VirtualUser:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        wait(1)
        VirtualUser:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
    end
end)

-- Noclip
RunService.Stepped:Connect(function()
    getgenv().player_data["character"].HumanoidRootPart.CanCollide = getgenv().cheat_settings.gcollide
    getgenv().player_data["character"].Head.CanCollide = getgenv().cheat_settings.gcollide
    getgenv().player_data["character"].UpperTorso.CanCollide = getgenv().cheat_settings.gcollide
    getgenv().player_data["character"].LowerTorso.CanCollide = getgenv().cheat_settings.gcollide
    getgenv().player_data["character"].LeftUpperArm.CanCollide = getgenv().cheat_settings.gcollide
    getgenv().player_data["character"].LeftLowerArm.CanCollide = getgenv().cheat_settings.gcollide
    getgenv().player_data["character"].LeftHand.CanCollide = getgenv().cheat_settings.gcollide
    getgenv().player_data["character"].RightUpperArm.CanCollide = getgenv().cheat_settings.gcollide
    getgenv().player_data["character"].RightLowerArm.CanCollide = getgenv().cheat_settings.gcollide
    getgenv().player_data["character"].RightHand.CanCollide = getgenv().cheat_settings.gcollide
end) 

-- Jumpspeed and walkspeed
RunService.Stepped:Connect(function()
    if getgenv().cheat_settings.walkspeed then
        setWalkSpeed(getgenv().cheat_vars["walkspeed"])
    end
    if getgenv().cheat_settings.jumppower then
        setJumpPower(getgenv().cheat_vars["jumppower"])
    end
end)

while loadData() == false do
    wait(1)
end

-- GUI
local KavoLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local window = KavoLibrary.CreateLib("Treasure Hunt", "Midnight")

-- Main tab
local main_tab = window:NewTab("Main")
local autofarm_section = main_tab:NewSection("Main")
autofarm_section:NewLabel("Autofarm Chests")
autofarm_section:NewToggle("On/Off", "Teleports around the map collecting chests", function(state)
    getgenv().cheat_settings.autochest = state
end)

local text = "Chests: "
for k,v in pairs(getgenv().cheat_vars.chosen_autofarm) do
    if v == true then
        text = text..k..", "
    end
end

local label = autofarm_section:NewLabel(text)
autofarm_section:NewDropdown("Chests", "Which chests to autofarm", chests_arr, function(currentOption)
    getgenv().cheat_vars.chosen_autofarm[currentOption] = not(getgenv().cheat_vars.chosen_autofarm[currentOption])
    local new_text = "Chests: "
    for k,v in pairs(getgenv().cheat_vars.chosen_autofarm) do
        if v == true then
            new_text = new_text..k..", "
        end
    end
    label:UpdateLabel(new_text)
end)

autofarm_section:NewToggle("Auto rebirth", "Automatically rebirths when possible.", function(state)
    getgenv().cheat_settings.autorebirth = state
end)

autofarm_section:NewToggle("Auto sell", "Automatically sells when your backpack is full", function(state)
    getgenv().cheat_settings.autosell = state
end)

autofarm_section:NewToggle("Auto buy shovels", "Buys the best available shovel when you get enough money.", function(state)
    getgenv().cheat_settings.autobuyshovels = state
end)

autofarm_section:NewToggle("Auto buy backpacks", "Buys the best available backpack when you get enough money.", function(state)
    getgenv().cheat_settings.autobuybackpacks = state
end)

autofarm_section:NewToggle("Auto buy pets", "Buys the best available pet when you get enough money.", function(state)
    getgenv().cheat_settings.autobuypets = state
end)

autofarm_section:NewLabel("Auto server hop")

autofarm_section:NewToggle("Auto server hop", "Will server hop if there's too many or too few players.", function(state)
    getgenv().cheat_settings.autoserverhop = state
end)

autofarm_section:NewSlider("Minimum Players: ", "", 14, 1, function(val)
    getgenv().cheat_vars.servermin = val - 1
end)

autofarm_section:NewSlider("Maximum Players: ", "", 14, 1, function(val)
    getgenv().cheat_vars.servermax = val + 1
end)

autofarm_section:NewLabel("Auto buy crates")

local crate_text = "Crates: "
for k,v in pairs(getgenv().cheat_vars.chosen_autobuycrate) do
    if v == true then
        crate_text = crate_text..k..", "
    end
end

local autocrates_label = autofarm_section:NewLabel(crate_text)

autofarm_section:NewToggle("Auto buy crates", "Buys the chosen crates pet you have enough money.", function(state)
    getgenv().cheat_settings.autobuycrates = state
end)

autofarm_section:NewDropdown("Choose crates", "Which crates to buy", crates_arr, function(current_option)
    getgenv().cheat_vars.chosen_autobuycrate[current_option] = not(getgenv().cheat_vars.chosen_autobuycrate[current_option])
    local new_text = "Crates: "
    for k,v in pairs(getgenv().cheat_vars.chosen_autobuycrate) do
        if v == true then
            new_text = new_text..k..", "
        end
    end
    autocrates_label:UpdateLabel(new_text)
end)

autofarm_section:NewLabel("Auto open crates")

local autocrate_text = "Crates: "
for k,v in pairs(getgenv().cheat_vars.chosen_autoopencrates) do
    if v == true then
        autocrate_text = autocrate_text..k..", "
    end
end

local autocrates_label = autofarm_section:NewLabel(crate_text)

autofarm_section:NewToggle("Auto open crates", "Opens selected crates.", function(state)
    getgenv().cheat_settings.autoopencrates = state
end)

autofarm_section:NewDropdown("Choose crates", "Which crates to open", crates_arr, function(current_option)
    getgenv().cheat_vars.chosen_autoopencrates[current_option] = not(getgenv().cheat_vars.chosen_autoopencrates[current_option])
    local new_text = "Crates: "
    for k,v in pairs(getgenv().cheat_vars.chosen_autoopencrates) do
        if v == true then
            new_text = new_text..k..", "
        end
    end
    autocrates_label:UpdateLabel(new_text)
end)

-- Misc tab
local misc_tab = window:NewTab("Misc")
local gamepass_section = misc_tab:NewSection("Free gamepasses | NOT WORKING")
gamepass_section:NewToggle("On/Off", "Unlocks all the gamepasses that are possible to unlock.", function(state)
    getgenv().cheat_settings.freegamepass = state
end)
local crates_section = misc_tab:NewSection("Crates")

local chosen_crate = "Tier1"
local chosen_player = getgenv().player_data["player"].Name
local chosen_quantity = 1

crates_section:NewDropdown("Choose crate", "Which crate to buy", crates_arr, function(current_option)
    chosen_crate = current_option
end)

local player_list = Players:GetPlayers()
for i,v in pairs(player_list) do
    player_list[i] = v.Name
end

local player_dropdown = crates_section:NewDropdown(chosen_player, "Choose player", player_list, function(current_option)
    chosen_player = current_option
end)

crates_section:NewButton("Refresh", "Refresh player list", function()
    player_list = Players:GetPlayers()
    for i,v in pairs(player_list) do
        player_list[i] = v.Name
    end
    player_dropdown:Refresh(player_list)
end)

crates_section:NewSlider("Quantity", "", 100, 1, function(val)
    chosen_quantity = val
end)

crates_section:NewButton("Buy", "Buy Crates", function()
    buyCrate(chosen_crate, chosen_player, chosen_quantity)
end)

-- Local Player Tab
local localplayer_tab = window:NewTab("Local Player")
local walkspeed_section = localplayer_tab:NewSection("Walk speed")
walkspeed_section:NewToggle("On/Off", "Walk speed cheat.", function(state)
    getgenv().cheat_settings.walkspeed = state
end)

walkspeed_section:NewSlider("Walk speed", "", 500, 16, function(val)
    getgenv().cheat_vars.walkspeed = val
end)

local jumppower_section = localplayer_tab:NewSection("Jump power")
jumppower_section:NewToggle("On/Off", "Jump power cheat.", function(state)
    getgenv().cheat_settings.jumppower = state
end)
jumppower_section:NewSlider("Jump Power", "", 500, 16, function(val)
    getgenv().cheat_vars.jumppower = val
end)

local other_section = localplayer_tab:NewSection("Other")
other_section:NewButton("Kill player", "Kills the player", function()
    getgenv().player_data["humanoid"].Health = 0
end)

other_section:NewToggle("Auto Invisible", "Makes you automatically go invisible", function(state)
    getgenv().cheat_settings.autoinvisible = state
    if getgenv().cheat_settings.autoinvisible then
        pcall(function()
            goInvisible()
        end)
    end
end)

other_section:NewToggle("Noclip", "Noclip", function(state)
    getgenv().cheat_settings.gcollide = not state
end)
local antiafk
antiafk = other_section:NewButton("Anti afk (on)", "Anti afk", function()
    getgenv().cheat_settings.antiafk = not getgenv().cheat_settings.antiafk
    if getgenv().cheat_settings.antiafk then
        antiafk:UpdateButton("Anti afk (on)")
    else
        antiafk:UpdateButton("Anti afk (off)")
    end
end)

other_section:NewToggle("Save settings", "Save settings", function(state)
    getgenv().cheat_settings.savesettings = state
    saveData()
end)

-- Cheat logic

-- Saving data
spawnThread(function()
    while wait(15) do
        if getgenv().cheat_settings.savesettings then
            saveData()
        end
    end
end)

-- Auto chest
spawnThread(function()
    while wait() do
        while getgenv().cheat_settings.autochest do
            if getgenv().player_data["character"] == nil or getgenv().player_data["tool"] == nil then
                updatePlayerData()
            end

            local arr = {}

            for k,v in pairs(getgenv().cheat_vars.chosen_autofarm) do
                if v == true then
                    table.insert(arr, k)
                end
            end

            autoChest(arr)

            buyEverything()
            wait()
        end
    end
end)

-- Auto rebirth
spawnThread(function()
    while wait() do
        while getgenv().cheat_settings.autorebirth do
            rebirth()
            wait(5)
        end
    end
end)

-- Auto buy crates
spawnThread(function()
    while wait() do
        while getgenv().cheat_settings.autobuycrates do
            for k,v in pairs(getgenv().cheat_vars.chosen_autobuycrate) do
                if v == true then
                    buyCrate(k, getgenv().player_data["player"].Name, 1)
                end
            end
            wait(0.5)
        end
    end
end)

-- Auto open crates
spawnThread(function()
    while wait() do
        while getgenv().cheat_settings.autoopencrates do
            for k,v in pairs(getgenv().cheat_vars.chosen_autoopencrates) do
                if v == true then
                    openCrate(k)
                end
            end
            wait()
        end
    end
end)

-- Auto server hop
local can_teleport = true
spawnThread(function()
    while wait() do
        while getgenv().cheat_settings.autoserverhop do
            if can_teleport == true then
                if #Players:GetPlayers() < getgenv().cheat_vars.servermin then
                    serverHop(getgenv().cheat_vars.servermin, getgenv().cheat_vars.servermax)
                end
                if #Players:GetPlayers() > getgenv().cheat_vars.servermax then
                    serverHop(getgenv().cheat_vars.servermin, getgenv().cheat_vars.servermax)
                end
            end
            wait(15)
        end
    end
end)

getgenv().player_data["player"].OnTeleport:Connect(function(state)
    if state == Enum.TeleportState.Started then
        syn.queue_on_teleport(game:HttpGet("https://raw.githubusercontent.com/glof2/thuntgui/main/GUI.lua"))
        can_teleport = false
    end
    if state == Enum.TeleportState.Failed then
        can_teleport = true
    end
end)