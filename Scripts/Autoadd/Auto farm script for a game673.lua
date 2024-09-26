--[[
hehe pls subscribe
 Thank you so much for using this script 
]] 
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Auto Farm", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local autoClickEnabled = false
local autoBuyClickerEnabled = false
local autoBuyMoneyEnabled = false
local autoPrestigeEnabled = false

function autoClick()
    while autoClickEnabled do
        game:GetService("ReplicatedStorage").Events.ClickMoney:FireServer()
        wait(0.0000001)
    end
end

function autoBuyClicker()
    while autoBuyClickerEnabled do
        local args = {
            [1] = 2,
            [2] = false
        }
        game:GetService("ReplicatedStorage").Events.Upgrade:FireServer(unpack(args))
        wait(0.1)
    end
end

function autoBuyMoney()
    while autoBuyMoneyEnabled do
        local args = {
            [1] = 1,
            [2] = false
        }
        game:GetService("ReplicatedStorage").Events.Upgrade:FireServer(unpack(args))
        wait(0.1)
    end
end

function autoPrestige()
    while autoPrestigeEnabled do
        game:GetService("ReplicatedStorage").Events.Prestige:FireServer()
        wait(0.1)
    end
end

local mainTab = Window:MakeTab({
    Name = "Auto Farm",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

mainTab:AddToggle({
    Name = "Auto Click Money",
    Default = false,
    Callback = function(value)
        autoClickEnabled = value
        if value then
            spawn(autoClick)
        end
    end    
})

mainTab:AddToggle({
    Name = "Auto Buy Clicker",
    Default = false,
    Callback = function(value)
        autoBuyClickerEnabled = value
        if value then
            spawn(autoBuyClicker)
        end
    end    
})

mainTab:AddToggle({
    Name = "Auto Buy Money",
    Default = false,
    Callback = function(value)
        autoBuyMoneyEnabled = value
        if value then
            spawn(autoBuyMoney)
        end
    end    
})

mainTab:AddToggle({
    Name = "Auto Prestige",
    Default = false,
    Callback = function(value)
        autoPrestigeEnabled = value
        if value then
            spawn(autoPrestige)
        end
    end    
})

local AutoGemFarmTab = Window:MakeTab({
    Name = "Auto Gem Farm",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

AutoGemFarmTab:AddToggle({
    Name = "Auto Upgrade",
    Default = false,
    Callback = function(value)
        _G.AutoUpgrade = value
        while _G.AutoUpgrade do
            local args1 = {[1] = 1, [2] = false}
            game:GetService("ReplicatedStorage").Events.Upgrade.GemUpgrade:FireServer(unpack(args1))
            
            local args2 = {[1] = 2, [2] = false}
            game:GetService("ReplicatedStorage").Events.Upgrade.GemUpgrade:FireServer(unpack(args2))
            
            local args3 = {[1] = 3, [2] = false}
            game:GetService("ReplicatedStorage").Events.Upgrade.GemUpgrade:FireServer(unpack(args3))

            wait(0.1)
        end
    end
})

AutoGemFarmTab:AddToggle({
    Name = "Auto Clicker",
    Default = false,
    Callback = function(value)
        _G.AutoClicker = value
        while _G.AutoClicker do
            game:GetService("ReplicatedStorage").Events.ClickMoney.ClickGem:FireServer()
            wait(0.0000001)
        end
    end
})

OrionLib:Init()