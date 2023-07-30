local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local plr = game.Players.LocalPlayer
local module_enemies = require(game:GetService("ReplicatedStorage").Modules.Enemies)
local folder_enemies = game:GetService("Workspace").NPC
local module_eggs = require(game:GetService("ReplicatedStorage").Modules.Eggs)
local enemies, enemiess, eggs = {}, {}, {}

for enemyName, enemyData in pairs(module_enemies) do
    local location = enemyData.Location
    enemies[location] = enemies[location] or {}
    table.insert(enemies[location], enemyName)
end

for _, enemyNames in pairs(enemies) do
    for _, enemyName in ipairs(enemyNames) do
        table.insert(enemiess, enemyName)
    end
end

for eggName in pairs(module_eggs) do
    table.insert(eggs, eggName)
end

local Window = Rayfield:CreateWindow({
    Name = "1234 | " .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
    LoadingTitle = "1234",
    LoadingSubtitle = "1234"
})

local Main = Window:CreateTab("🚀 Main")
local AutoStuff = Window:CreateTab("💦 AutoStuff")

local AutoFarm1 = Main:CreateSection("AutoFarm [1]")

local Enable_AutoFarm_Muscle, Enable_AutoFarm = false, false

local farm_Muscle_toggle = Main:CreateToggle({
    Name = "AutoFarm Muscle",
    CurrentValue = false,
    Flag = "farm3",
    Callback = function(autofarm_muscle_boolean)
        Enable_AutoFarm_Muscle = autofarm_muscle_boolean
    end
})

local farm_toggle = Main:CreateToggle({
    Name = "AutoFarm Enemy",
    CurrentValue = false,
    Flag = "farm2",
    Callback = function(autofarm_boolean)
        Enable_AutoFarm = autofarm_boolean
    end
})

local selected_enemy = "None Selected"
local farm_dropdown = Main:CreateDropdown({
    Name = "Select Enemy",
    Options = enemiess,
    CurrentOption = selected_enemy,
    Flag = "Enemy_Dropdown",
    Callback = function(autofarm_dropdown)
        selected_enemy = autofarm_dropdown
    end
})

local AutoFarm2 = Main:CreateSection("Auto [2]")

local Enable_AutpPick = false

local pickup_toggle = Main:CreateToggle({
    Name = "AutoPick Gems/Coins",
    CurrentValue = false,
    Flag = "pickup",
    Callback = function(pickup_toggle)
        Enable_AutpPick = pickup_toggle
    end
})

local AutoStuff1 = AutoStuff:CreateSection("AutoHatch [1]")

local Enable_AutoHatchX1, Enable_AutoHatchX3 = false, false

local autohatchX1_toggle = AutoStuff:CreateToggle({
    Name = "AutoEggs 1x",
    CurrentValue = false,
    Flag = "autohatchX1",
    Callback = function(autohatchX1_toggle)
        Enable_AutoHatchX1 = autohatchX1_toggle
    end
})

local autohatchX3_toggle = AutoStuff:CreateToggle({
    Name = "AutoEggs 3x",
    CurrentValue = false,
    Flag = "autohatchX3",
    Callback = function(autohatchX3_toggle)
        Enable_AutoHatchX3 = autohatchX3_toggle
    end
})

local selected_egg = "None Selected"
local egg_dropdown = AutoStuff:CreateDropdown({
    Name = "Select Egg [STAY NEAR EGG]",
    Options = eggs,
    CurrentOption = selected_egg,
    Flag = "Egg_Dropdown",
    Callback = function(egg_callback)
        selected_egg = egg_callback
    end
})

local function open_Egg(egg, mode)
    local modeStr = mode == 1 and "Single" or "Triple"
    game:GetService("ReplicatedStorage").Network.OpenEgg:InvokeServer(egg, modeStr)
end

local function Punch(enemy, id)
    game:GetService("ReplicatedStorage").Network.Punch:FireServer(enemy, id)
end

local function autoHatch()
    while true do
        task.wait()
        if Enable_AutoHatchX1 or Enable_AutoHatchX3 then
            open_Egg(selected_egg, Enable_AutoHatchX1 and 1 or 3)
        end
    end
end

local function autoFarm()
    while true do
        task.wait()
        if Enable_AutoFarm_Muscle then
            if Enable_AutoFarm and not found_enemy then
                Punch("Bully", nil)
            else
                return
            end
        end
        if Enable_AutoFarm then
            found_enemy = false
            for _, v in pairs(folder_enemies:GetChildren()) do
                if selected_enemy == v.Name then
                    for _, z in pairs(v:GetChildren()) do
                        if v:FindFirstChild(z.Name) then
                            repeat
                                task.wait(.005)
                                if not found_enemy then
                                    found_enemy = true
                                    local enemy_cframe = z.HumanoidRootPart.CFrame
                                    plr.Character.HumanoidRootPart.CFrame = enemy_cframe * CFrame.new(1.5, 1, 2.7)
                                end
                                Punch(selected_enemy, z.Name)
                            until not v:FindFirstChild(z.Name)
                            found_enemy = false
                        end
                    end
                end
            end
        end
    end
end

local function autoPick()
    while true do
        task.wait()
        if Enable_AutpPick then
            local coins = game:GetService("Workspace").Interaction.Coins
            local gems = game:GetService("Workspace").Interaction.Gems
            for _, v in pairs(coins:GetChildren()) do
                v.CFrame = plr.Character.HumanoidRootPart.CFrame
            end
        end
    end
end

task.spawn(autoHatch)
task.spawn(autoFarm)
task.spawn(autoPick)