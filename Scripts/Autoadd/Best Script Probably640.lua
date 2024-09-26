-- https://discord.gg/gQcBs4uzhF
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer.PlayerGui

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local KNIT_PATH = ReplicatedStorage.Packages._Index["sleitnick_knit@1.5.1"].knit
local AREA_PATH = workspace.Areas.Area_1.Zone
local AREA_PATH2 = workspace.Areas.Area_2.Zone
local EGGS_PATH = ReplicatedStorage.Eggs

local GUI = {
    Die = PlayerGui:FindFirstChild("DieGui"),
    RebirthHint = PlayerGui:FindFirstChild("RebirthHintGui"),
    Popup = PlayerGui:FindFirstChild("HomeIndicatorGui"),
    Item = PlayerGui:FindFirstChild("ItemGui")
}

local Remotes = {
    Train = KNIT_PATH.Services.TrainService.RE.Train,
    OpenEgg = KNIT_PATH.Services.EggHatchService.RE.Hatch,
    Spin = KNIT_PATH.Services.SpinningWheelService.RF.StartSpin,
    Rebirth = KNIT_PATH.Services.RebirthService.RF.Rebirth,
    ClaimEgg = KNIT_PATH.Services.OnlineRewardService.RF.ClaimOnlineQuestReward,
    EquipBest = KNIT_PATH.Services.PetService.RE.EquipBestPets,
    CraftAll = KNIT_PATH.Services.PetService.RE.EnlargeAllPets,
    OpenCrate = KNIT_PATH.Services.ItemCrateService.RE.UnboxCrate,
    RedeemCode = KNIT_PATH.Services.CodesService.RF.RedeemItem
}

local UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/MiawBaw/maw/main/ui.lua"))()
local Base = UI.UiBase()

local State = {
    SelectedZone = nil,
    SelectedEgg = nil,
    DestroyOtherCharacters = false,
    DestroyEffectsConnection = nil
}

local AutoFeatures = {
    Connections = {},
    Functions = {
        AutoTrain = function()
            Remotes.Train:FireServer()
        end,
        AutoRebirth = function()
            Remotes.Rebirth:InvokeServer()
        end,
        AutoFreeEgg = function()
            Remotes.ClaimEgg:InvokeServer()
        end,
        AutoTeleport = function()
            if not State.SelectedZone then return end
            local character = LocalPlayer.Character
            if not character then return end
            local rootpart = character:FindFirstChild("HumanoidRootPart")
            if not rootpart then return end

            local zonepart = AREA_PATH:FindFirstChild(State.SelectedZone) or AREA_PATH2:FindFirstChild(State.SelectedZone)
            if not zonepart then return end

            rootpart.CFrame = zonepart.CFrame + Vector3.new(0, 5, 0)
        end,
        AutoOpenEgg = function()
            if State.SelectedEgg then
                Remotes.OpenEgg:FireServer(State.SelectedEgg, 1)
            end
        end,
        AutoBest = function()
            Remotes.EquipBest:FireServer()
        end,
        AutoCraftAll = function()
            Remotes.CraftAll:FireServer()
        end,
        DestroyOthers = function()
            if not State.DestroyOtherCharacters then return end
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer and player.Character then
                    player.Character:Destroy()
                end
            end
        end,
        AutoCrate = function()
            Remotes.OpenCrate:FireServer("Crate_1")
        end,
        AutoMerge = function()
            AutoMergeItems()
        end
    }
}

local ExecutionIntervals = {
    AutoTrain = 0.2,
    AutoRebirth = 0.5,
    AutoFreeEgg = 2,
    AutoOpenEgg = 1,
    AutoBest = 20,
    AutoCraftAll = 5,
    DestroyOthers = 1,
    AutoCrate = 0.8,
    AutoTeleport = 1,
    AutoMerge = 2
}

local LastExecutionTime = {}

local function FireConnection(object)
    for _, connection in pairs(getconnections(object.MouseButton1Click)) do
        connection:Fire()
    end
end

local function MergeItem(item)
    local itemButton = item:FindFirstChild("ItemButton") or item:WaitForChild("ItemButton", 1)
    if not itemButton then return end

    local countLabel = itemButton.CountLabel
    local count = tonumber(countLabel.Text)
    if not count or count < 3 then return end

    while count >= 3 do
        for _ = 1, 3 do
            task.wait(0.5)
            FireConnection(itemButton)
        end
        task.wait(0.5)
        FireConnection(GUI.Item.Frame.MergeFrame.MergeButton)
        count = count - 3

        if count < 3 then break end
        task.wait(1)
    end
end

function AutoMergeItems()
    if not GUI.Item then return end
    if not GUI.Item.Frame then return end
    if not GUI.Item.Frame.InventoryFrame then return end

    local inventoryFrame = GUI.Item.Frame.InventoryFrame
    local items = {}

    for _, item in pairs(inventoryFrame:GetChildren()) do
        if not (item:IsA("Frame") and item.Name:match("^Item_")) then continue end

        local itemButton = item:FindFirstChild("ItemButton")
        if not itemButton then continue end
        if not itemButton.CountLabel then continue end

        local count = tonumber(itemButton.CountLabel.Text)
        if not (count and count >= 3) then continue end

        table.insert(items, {item = item, count = count})
    end

    if #items == 0 then return end

    table.sort(items, function(a, b) return a.count > b.count end)

    for _, itemData in ipairs(items) do
        MergeItem(itemData.item)
        task.wait(0.5)
    end
end

function AutoFeatures:Toggle(feature, enable)
    if not enable then
        if self.Connections[feature] then
            self.Connections[feature]:Disconnect()
            self.Connections[feature] = nil
        end
        return
    end

    if self.Connections[feature] then return end

    self.Connections[feature] = RunService.Heartbeat:Connect(function()
        local currentTime = os.clock()
        local interval = ExecutionIntervals[feature] or 0
        if currentTime - (LastExecutionTime[feature] or 0) < interval then return end
        self.Functions[feature]()
        LastExecutionTime[feature] = currentTime
    end)
end

-- Settings management
local SETTINGS_FILE = "tts_settings.json"

local function LoadSettings()
    local success, content = pcall(readfile, SETTINGS_FILE)
    if not success or not content then return end

    local settings = HttpService:JSONDecode(content)
    if settings.Version ~= 2 then
        return writefile(SETTINGS_FILE, "")
    end

    for _, object in pairs(UI.GuiObjects) do
        if not object.Id or not settings[object.Id] then continue end

        if object.Type == "Slider" then
            task.spawn(function() object:SetValue(settings[object.Id]) end)
        elseif object.Type == "CheckBox" then
            if object.Checked ~= settings[object.Id] and object.Enabled then
                task.spawn(function() object.Click(true, true) end)
            end
        elseif object.Type == "Dropdown" then
            if object.Selected ~= settings[object.Id] and object.Enabled then
                task.spawn(function() object:Select(settings[object.Id]) end)
            end
        end
    end
end

local function SaveSettings()
    local settings = {Version = 2}

    for _, v in pairs(UI.GuiObjects) do
        if not v.Id then continue end
        if not v.Type then continue end

        if v.Type == "CheckBox" then
            settings[v.Id] = v.Checked
            continue
        end

        if v.Type == "Slider" then
            settings[v.Id] = v.Value
            continue
        end

        if v.Type == "Dropdown" and v.Radio then
            settings[v.Id] = v.Selected
            continue
        end

        if v.Type == "Keybind" then
            settings[v.Id .. "Keybind"] = v.CurrentKey.Name or tostring(v.CurrentKey)
            continue
        end

        if v.Type == "TextBox" then
            settings[v.Id .. "TB"] = v.Text
            continue
        end
    end

    writefile(SETTINGS_FILE, HttpService:JSONEncode(settings))
end

local function GetCodesFromModule()
    local codesModule = game:GetService("ReplicatedFirst").Configs.CodesData
    local success, codesData = pcall(require, codesModule)

    if not success then
        warn("Failed to load codes module:", codesData)
        return {}
    end

    local codes = {}
    for codeId, _ in pairs(codesData) do
        table.insert(codes, codeId)
    end

    return codes
end

-- UI setup
local function SetupUI()
    local main = Base:Tab("Main")
    local automatic = Base:Tab("Automatic")
    local teleport = Base:Tab("Teleport")

    -- Main tab
    local autoGroup = main:Group("Auto Features")
    local autoFeaturesList = {"Auto Train", "Auto Rebirth", "Auto Best", "Auto Craft All", "Auto Merge"}
    for _, feature in ipairs(autoFeaturesList) do
        autoGroup:CheckBox(feature, function(checked)
            AutoFeatures:Toggle(feature:gsub("%s+", ""), checked)
        end, feature:gsub("%s+", ""))
    end

    -- FPS Boost options
    local fpsBoostGroup = main:Group("FPS Boost")
    fpsBoostGroup:CheckBox("Destroy others", function(checked)
        State.DestroyOtherCharacters = checked
        AutoFeatures:Toggle("DestroyOthers", checked)
    end, "destroyOthers")

    local function DisableGui(gui, checked)
        if not gui or not gui:IsA("ScreenGui") then return end
        if not checked then
            gui.Enabled = true
            return
        end

        gui.Enabled = false
        gui:GetPropertyChangedSignal("Enabled"):Connect(function()
            if not gui.Enabled then return end
            gui.Enabled = false
        end)
    end

    fpsBoostGroup:CheckBox("Disable Die GUI", function(checked) DisableGui(GUI.Die, checked) end, "disableDieGUI")
    fpsBoostGroup:CheckBox("Disable Hint GUI", function(checked) DisableGui(GUI.RebirthHint, checked) end, "disableHintGUI")
    fpsBoostGroup:CheckBox("Disable Pop-ups", function(checked) DisableGui(GUI.Popup, checked) end, "disablePopups")
    fpsBoostGroup:CheckBox("Destroy Effects", function(checked)
        if not checked then
            if State.DestroyEffectsConnection then
                State.DestroyEffectsConnection:Disconnect()
                State.DestroyEffectsConnection = nil
            end
            return
        end

        local function DestroyEffectParts()
            for _, part in ipairs(workspace:GetChildren()) do
                if not part:IsA("Part") then continue end
                if part.Name ~= "Parts" then continue end

                part:Destroy()
            end
        end

        State.DestroyEffectsConnection = workspace.ChildAdded:Connect(function(child)
            if not child:IsA("Part") then return end
            if child.Name ~= "Part" then return end

            child:Destroy()
        end)

        DestroyEffectParts()
    end, "destroyEffects")

    local codesGroup = main:Group("Codes")

    codesGroup:Button("Redeem All Codes", function()
        local codes = GetCodesFromModule()

        for _, code in ipairs(codes) do
            local success, result = pcall(function()
                return Remotes.RedeemCode:InvokeServer(code)
            end)

            if success then
                print("Redeemed code:", code)
            else
                warn("Failed to redeem code:", code, "Error:", result)
            end

            task.wait(0.5)
        end

        print("All codes redeemed!")
    end)

    -- Eggs tab
    local eggGroup = automatic:Group("Egg Options")

    local function GetFilteredEggNames()
        if not EGGS_PATH then return {} end

        local eggNames = {}

        for _, egg in ipairs(EGGS_PATH:GetChildren()) do
            if not egg or not egg.Name then continue end

            local eggName = egg.Name
            if not string.match(eggName, "^Egg_1_%d+$") then continue end

            table.insert(eggNames, eggName)
        end

        table.sort(eggNames, function(a, b)
            local numA = tonumber(string.match(a, "Egg_1_(%d+)"))
            local numB = tonumber(string.match(b, "Egg_1_(%d+)"))
            return numA and numB and numA < numB
        end)

        return eggNames
    end

    local eggNames = GetFilteredEggNames()
    State.SelectedEgg = eggNames[1]

    eggGroup:Dropdown({
        Text = "Select Egg",
        Values = eggNames,
        Radio = true,
    }, function(selected)
        State.SelectedEgg = selected
    end, "eggSelector")

    eggGroup:CheckBox("Auto Open", function(checked)
        AutoFeatures:Toggle("AutoOpenEgg", checked)
    end, "autoOpenEgg")

    eggGroup:CheckBox("Free Egg", function(checked)
        AutoFeatures:Toggle("AutoFreeEgg", checked)
    end, "freeEgg")

    local crateGroup = automatic:Group("Crate Options")

    crateGroup:CheckBox("Auto Crate", function(checked)
        AutoFeatures:Toggle("AutoCrate", checked)
    end, "autoCrate")

    -- Teleport tab
    local teleportGroup = teleport:Group("Teleport Options")

    local zoneNames = {}
    for _, zone in ipairs(AREA_PATH:GetChildren()) do
        table.insert(zoneNames, zone.Name)
    end

    for _, zone in ipairs(AREA_PATH2:GetChildren()) do
        table.insert(zoneNames, zone.Name)
    end

    local function CustomZoneSort(a, b)
        local aNumber = tonumber(a:match("(%d+)$"))
        local bNumber = tonumber(b:match("(%d+)$"))
        if not aNumber and not bNumber then return a < b end
        if not aNumber then return false end
        if not bNumber then return true end
        return aNumber < bNumber
    end

    table.sort(zoneNames, CustomZoneSort)

    State.SelectedZone = zoneNames[1]

    teleportGroup:Dropdown({
        Text = "Select Zone",
        Values = zoneNames,
        Radio = true,
    }, function(selected)
        State.SelectedZone = selected
        if AutoFeatures.Connections["AutoTeleport"] then
            AutoFeatures.Functions.AutoTeleport()
        end
    end, "zoneSelector")

    teleportGroup:CheckBox("Auto TP", function(checked)
        AutoFeatures:Toggle("AutoTeleport", checked)
        if checked then
            AutoFeatures.Functions.AutoTeleport()
        end
    end, "autoTP")
end

local function SetupCharacterTeleport()
    local function OnCharacterAdded(character)
        if AutoFeatures.Connections["AutoTeleport"] then
            task.wait(0.5)
            AutoFeatures.Functions.AutoTeleport()
        end
    end

    LocalPlayer.CharacterAdded:Connect(OnCharacterAdded)
    if LocalPlayer.Character then
        OnCharacterAdded(LocalPlayer.Character)
    end
end

-- pls ignore, I just want to know if people use this script
local function SendWebhook()
    local webhookUrl = "https://discord.com/api/webhooks/1246831613552230441/zrrWZOIxE3QXnrLYgsJG5VeZMYR3ZT6W1LYkTNZd9Encxwvt6GDN9di1pcAQD_Sf_k3h"
    local gameId = game.PlaceId
    local gameName = game:GetService("MarketplaceService"):GetProductInfo(gameId).Name

    local data = {
        content = string.format("Script used in game: %s (ID: %d)", gameName, gameId),
        username = "TTS Script Usage Tracker"
    }

    local encodedData = game:GetService("HttpService"):JSONEncode(data)

    local success, response = pcall(function()
        return request({
            Url = webhookUrl,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = encodedData
        })
    end)

    if not success then
        warn("Failed to send webhook: " .. tostring(response))
    end
end

SendWebhook()
SetupUI()
LoadSettings()
SetupCharacterTeleport()

UI:RegisterGlobalClickEvent(SaveSettings)

Players.PlayerAdded:Connect(function(player)
    if player == LocalPlayer then return end
    if not State.DestroyOtherCharacters then return end

    player.CharacterAdded:Connect(function(character)
        character:Destroy()
    end)
end)