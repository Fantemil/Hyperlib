local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Billionaire Simulator 2", "DarkTheme")

local Main = Window:NewTab("Managers")
local MainSection = Main:NewSection("Earth Manager")

local earthToggleState = false

local function moonfunction(hq, args)
    local hq100 = workspace.MoonHQs[hq].FactoryFunction.M2
    hq100:InvokeServer(unpack(args))
end

local function heavenRemoteSpy(hq, args)
    local hq98 = workspace.HeavenHQs[hq].FactoryFunction.M2
    hq98:InvokeServer(unpack(args))
end

local function executeRemoteSpy(hq, args)
    local hq99 = workspace.HQs[hq].FactoryFunction.M2
    hq99:InvokeServer(unpack(args))
end

local function voidfunction(hq, args)
    local hq69 = workspace.VoidHQs[hq].FactoryFunction.M2
    hq69:InvokeServer(unpack(args))
end

MainSection:NewToggle("Auto Buy Managers", "When you get enough", function(earthmanager)
    earthToggleState = earthmanager
    if earthToggleState then
        getgenv().earth = true
        spawn(function()
            while getgenv().earth do
                wait()
                local playerName = game.Players.LocalPlayer.Name
                local hq
                for i = 1, 6 do
                    local hqName = "HQ" .. i
                    local ownerName = workspace.HQs[hqName].Settings.OwnerName.Value
                    if ownerName == playerName then
                        hq = hqName
                        break
                    end
                end

                if hq then
                    for i = 1, 8 do
                        local args = {i}
                        executeRemoteSpy(hq, args)
                    end
                end
            end
        end)
    else
        getgenv().earth = false
    end
end)

MainSection:NewDropdown("Manager Buy", "Select which manager you want to buy.", {"HotDog Manager-1K Coins","Retail Manager-15K Coins","Rogames Manager-100K Coins", "Warehouse Manager-500K Coins", "Crypto Manager-1.2M Coins", "Police Manager-10M Coins", "Tower Manager-100M Coins", "Bank Manager-500M Coins"}, function(SelectedLocation)
    local playerName = game.Players.LocalPlayer.Name
    local hq
    for i = 1, 6 do
        local hqName = "HQ" .. i
        local ownerName = workspace.HQs[hqName].Settings.OwnerName.Value
        if ownerName == playerName then
            hq = hqName
            break
        end
    end

    if hq then
        local hq1 = workspace.HQs[hq].FactoryFunction.M2
        if SelectedLocation == "HotDog Manager-1K Coins" then
            hq1:InvokeServer(1)
        elseif SelectedLocation == "Retail Manager-15K Coins" then
            hq1:InvokeServer(2)
        elseif SelectedLocation == "Rogames Manager-100K Coins" then
            hq1:InvokeServer(3)
        elseif SelectedLocation == "Warehouse Manager-500K Coins" then
            hq1:InvokeServer(4)
        elseif SelectedLocation == "Crypto Manager-1.2M Coins" then
            hq1:InvokeServer(5)
        elseif SelectedLocation == "Police Manager-10M Coins" then
            hq1:InvokeServer(6)
        elseif SelectedLocation == "Tower Manager-100M Coins" then
            hq1:InvokeServer(7)
        elseif SelectedLocation == "Bank Manager-500M Coins" then
            hq1:InvokeServer(8)
        end
    end
end)

local MainSection = Main:NewSection("Heaven Managers")

MainSection:NewToggle("Auto Buy Managers", "When you get enough money", function(heavenmanager)
    heavenToggleState = heavenmanager
    if heavenToggleState then
        getgenv().heaven = true
        spawn(function()
            while getgenv().heaven do
                wait()
                local playerName = game.Players.LocalPlayer.Name
                local hq
                for i = 1, 6 do
                    local hqName = "HeavenHQ" .. i
                    local ownerName = workspace.HeavenHQs[hqName].Settings.OwnerName.Value
                    if ownerName == playerName then
                        hq = hqName
                        break
                    end
                end

                if hq then
                    for i = 1, 8 do
                        local args = {i}
                        heavenRemoteSpy(hq, args)
                    end
                end
            end
        end)
    else
        getgenv().heaven = false
    end
end)

MainSection:NewDropdown("Manager Buy", "Select which manager you want to buy.", {"Cloud Manager-1K Coins","Golden Mirror Manager-15K Coins","Golden Cloud Manager-100K Coins", "Holy Gates Manager-500K Coins", "Angel Statue Manager-1.2M Coins", "Harp Manager-10M Coins", "Blessed Book Manager-100M Coins", "Throne Manager-500M Coins"}, function(SelectedLocation)
    local playerName = game.Players.LocalPlayer.Name
    local hq
    for i = 1, 6 do
        local hqName = "HeavenHQ" .. i
        local ownerName = workspace.HeavenHQs[hqName].Settings.OwnerName.Value
        if ownerName == playerName then
            hq = hqName
            break
        end
    end

    if hq then
        local hq2 = workspace.HeavenHQs[hq].FactoryFunction.M2
        if SelectedLocation == "Cloud Manager-1K Coins" then
            hq2:InvokeServer(1)
        elseif SelectedLocation == "Golden Mirror Manager-15K Coins" then
            hq2:InvokeServer(2)
        elseif SelectedLocation == "Golden Cloud Manager-100K Coins" then
            hq2:InvokeServer(3)
        elseif SelectedLocation == "Holy Gates Manager-500K Coins" then
            hq2:InvokeServer(4)
        elseif SelectedLocation == "Angel Statue Manager-1.2M Coins" then
            hq2:InvokeServer(5)
        elseif SelectedLocation == "Harp Manager-10M Coins" then
            hq2:InvokeServer(6)
        elseif SelectedLocation == "Blessed Book Manager-100M Coins" then
            hq2:InvokeServer(7)
        elseif SelectedLocation == "Throne Manager-500M Coins" then
            hq2:InvokeServer(8)
        end
    end
end)

local MainSection = Main:NewSection("Moon Managers")

MainSection:NewToggle("Auto Buy Managers", "When you get enough money", function(moonmanager)
    moonToggleState = moonmanager
    if moonToggleState then
        getgenv().moon = true
        spawn(function()
            while getgenv().moon do
                wait()
                local playerName = game.Players.LocalPlayer.Name
                local hq
                for i = 1, 6 do
                    local hqName = "MoonHQ" .. i
                    local ownerName = workspace.MoonHQs[hqName].Settings.OwnerName.Value
                    if ownerName == playerName then
                        hq = hqName
                        break
                    end
                end

                if hq then
                    for i = 1, 8 do
                        local args = {i}
                        moonfunction(hq, args)
                    end
                end
            end
        end)
    else
        getgenv().moon = false
    end
end)

MainSection:NewDropdown("Manager Buy", "Select which manager you want to buy.", {"Rover Stand Manager-1K Coins","Observatory Manager-15K Coins","Black Hole Manager-100K Coins", "Solar System Manager-500K Coins", "Missile Launcher Manager-1.2M Coins", "Greenhouse Manager-10M Coins", "Defence System Manager-100M Coins", "Launchpad Manager-500M Coins"}, function(SelectedLocation)
    local playerName = game.Players.LocalPlayer.Name
    local hq
    for i = 1, 6 do
        local hqName = "MoonHQ" .. i
        local ownerName = workspace.MoonHQs[hqName].Settings.OwnerName.Value
        if ownerName == playerName then
            hq = hqName
            break
        end
    end

    if hq then
        local hq2 = workspace.MoonHQs[hq].FactoryFunction.M2
        if SelectedLocation == "Rover Stand Manager-1K Coins" then
            hq2:InvokeServer(1)
        elseif SelectedLocation == "Observatory Manager-15K Coins" then
            hq2:InvokeServer(2)
        elseif SelectedLocation == "Black Hole Manager-100K Coins" then
            hq2:InvokeServer(3)
        elseif SelectedLocation == "Solar System Manager-500K Coins" then
            hq2:InvokeServer(4)
        elseif SelectedLocation == "Missile Launcher Manager-1.2M Coins" then
            hq2:InvokeServer(5)
        elseif SelectedLocation == "Greenhouse Manager-10M Coins" then
            hq2:InvokeServer(6)
        elseif SelectedLocation == "Defence System Manager-100M Coins" then
            hq2:InvokeServer(7)
        elseif SelectedLocation == "Launchpad Manager-500M Coins" then
            hq2:InvokeServer(8)
        end
    end
end)

local MainSection = Main:NewSection("Void Managers")

MainSection:NewToggle("Auto Buy Managers", "When you get enough money", function(voidmanager)
    voidToggleState = voidmanager
    if voidToggleState then
        getgenv().void = true
        spawn(function()
            while getgenv().void do
                wait()
                local playerName = game.Players.LocalPlayer.Name
                local hq
                for i = 1, 6 do
                    local hqName = "VoidHQ" .. i
                    local ownerName = workspace.VoidHQs[hqName].Settings.OwnerName.Value
                    if ownerName == playerName then
                        hq = hqName
                        break
                    end
                end

                if hq then
                    for i = 1, 8 do
                        local args = {i}
                        voidfunction(hq, args)
                    end
                end
            end
        end)
    else
        getgenv().void = false
    end
end)

MainSection:NewDropdown("Manager Buy", "Select which manager you want to buy.", {"Galaxy Manager-1K Coins","Stellar Mountain Manager-15K Coins","Dark Matter Core Manager-100K Coins", "Void Portal Manager-500K Coins", "Space Crystal Manager-1.2M Coins", "Galatic Core Manager-10M Coins", "Plasma Generator Manager-100M Coins", "Neutron Star Manager-500M Coins"}, function(SelectedLocation)
    local playerName = game.Players.LocalPlayer.Name
    local hq
    for i = 1, 6 do
        local hqName = "VoidHQ" .. i
        local ownerName = workspace.VoidHQs[hqName].Settings.OwnerName.Value
        if ownerName == playerName then
            hq = hqName
            break
        end
    end

    if hq then
        local hq2 = workspace.VoidHQs[hq].FactoryFunction.M2
        if SelectedLocation == "Galaxy Manager-1K Coins" then
            hq2:InvokeServer(1)
        elseif SelectedLocation == "Stellar Mountain Manager-15K Coins" then
            hq2:InvokeServer(2)
        elseif SelectedLocation == "Dark Matter Core Manager-100K Coins" then
            hq2:InvokeServer(3)
        elseif SelectedLocation == "Void Portal Manager-500K Coins" then
            hq2:InvokeServer(4)
        elseif SelectedLocation == "Space Crystal Manager-1.2M Coins" then
            hq2:InvokeServer(5)
        elseif SelectedLocation == "Galatic Core Manager-10M Coins" then
            hq2:InvokeServer(6)
        elseif SelectedLocation == "Plasma Generator Manager-100M Coins" then
            hq2:InvokeServer(7)
        elseif SelectedLocation == "Neutron Star Manager-500M Coins" then
            hq2:InvokeServer(8)
        end
    end
end)

local Rebirth = Window:NewTab("Rebirth")
local RebirthSection = Rebirth:NewSection("Earth Rebirth")

RebirthSection:NewButton("Rebirth", "Will rebirth", function()
    game:GetService("ReplicatedStorage"):WaitForChild("R"):FireServer("MOGwtg-=u39-TGJ3-yj3NMY", "R36")
end)

RebirthSection:NewToggle("Auto Rebirth", "Auto rebirth", function(state)
    if state then
        _G.RebirthAuto = true
        while _G.RebirthAuto == true do wait()
            game:GetService("ReplicatedStorage"):WaitForChild("R"):FireServer("MOGwtg-=u39-TGJ3-yj3NMY", "R36")
        end
    else
        _G.RebirthAuto = false
    end
end)

local hRebirthSection = Rebirth:NewSection("Heaven Rebirth")

hRebirthSection:NewButton("Rebirth", "Will rebirth", function()
    game:GetService("ReplicatedStorage"):WaitForChild("R"):FireServer("MOGwtg-=u39-TGJ3-yj3NMY", "hR36")
end)

hRebirthSection:NewToggle("Auto Rebirth", "Auto rebirth", function(hrebirth)
    if hrebirth then
        _G.hRebirthAuto = true
        while _G.RebirthAuto == true do wait()
            game:GetService("ReplicatedStorage"):WaitForChild("R"):FireServer("MOGwtg-=u39-TGJ3-yj3NMY", "hR36")
        end
    else
        _G.hRebirthAuto = false
    end
end)

local mRebirthSection = Rebirth:NewSection("Moon Rebirth")

mRebirthSection:NewButton("Rebirth", "Will rebirth", function()
    game:GetService("ReplicatedStorage"):WaitForChild("R"):FireServer("MOGwtg-=u39-TGJ3-yj3NMY", "mR36")
end)

mRebirthSection:NewToggle("Auto Rebirth", "Auto rebirth", function(mrebirth)
    if mrebirth then
        _G.mRebirthAuto = true
        while _G.RebirthAuto == true do wait()
            game:GetService("ReplicatedStorage"):WaitForChild("R"):FireServer("MOGwtg-=u39-TGJ3-yj3NMY", "mR36")
        end
    else
        _G.mRebirthAuto = false
    end
end)

local vRebirthSection = Rebirth:NewSection("Void Rebirth")

vRebirthSection:NewButton("Rebirth", "Will rebirth", function()
    game:GetService("ReplicatedStorage"):WaitForChild("R"):FireServer("MOGwtg-=u39-TGJ3-yj3NMY", "vR36")
end)

vRebirthSection:NewToggle("Auto Rebirth", "Auto rebirth", function(vrebirth)
    if vrebirth then
        _G.vRebirthAuto = true
        while _G.RebirthAuto == true do wait()
            game:GetService("ReplicatedStorage"):WaitForChild("R"):FireServer("MOGwtg-=u39-TGJ3-yj3NMY", "vR36")
        end
    else
        _G.vRebirthAuto = false
    end
end)

local Teleport = Window:NewTab("World Teleporter")
local earthTeleportSection = Teleport:NewSection("Earth Teleport")

earthTeleportSection:NewButton("Earth Teleport", "Will teleport you to earth", function()
    game:GetService("ReplicatedStorage"):WaitForChild("TeleportWorld"):FireServer("earth")
end)

local heavenTeleportSection = Teleport:NewSection("Heaven Teleport")

heavenTeleportSection:NewButton("Heaven Teleport", "Will teleport to heaven", function()
    game:GetService("ReplicatedStorage"):WaitForChild("TeleportWorld"):FireServer("heaven")
end)

local moonTeleportSection = Teleport:NewSection("Moon Teleport")

moonTeleportSection:NewButton("Moon Teleport", "Will teleport to moon", function()
    game:GetService("ReplicatedStorage"):WaitForChild("TeleportWorld"):FireServer("moon")
end)

local voidTeleportSection = Teleport:NewSection("Void Teleport")

voidTeleportSection:NewButton("Void Teleport", "Will teleport to void", function()
    game:GetService("ReplicatedStorage"):WaitForChild("TeleportWorld"):FireServer("void")
end)

local Crates = Window:NewTab("Crates")
local CratesSection = Crates:NewSection("Earth Crates")

CratesSection:NewDropdown("Crate Buyer", "Select which crate you want to buy.", {"Chain Crate-10 Gems","Luxury Crate-2.5K Gems","100K Earth Crate-100K Gems", "50M Crowns Exclusive Crate-50M Crowns"}, function(SelectedLocation)
    if SelectedLocation == "Chain Crate-10 Gems" then
        game:GetService("ReplicatedStorage"):WaitForChild("CrateRE"):FireServer("Chain Crate", 8.5)
    elseif SelectedLocation == "Luxury Crate-2.5K Gems" then
        game:GetService("ReplicatedStorage"):WaitForChild("CrateRE"):FireServer("Luxury Crate", 8.5)
    elseif SelectedLocation == "100K Earth Crate-100K Gems" then
        game:GetService("ReplicatedStorage"):WaitForChild("CrateRE"):FireServer("100k Earth Crate", 8.5)
    elseif SelectedLocation == "50M Crowns Exclusive Crate-50M Crowns" then
        game:GetService("ReplicatedStorage"):WaitForChild("CrateRE"):FireServer("50M Crowns Exclusive Crate", 8.5)
    end
end)

local AutoWork = Window:NewTab("Auto Work")
local AutoWorkSection = AutoWork:NewSection("Earth Auto Work")

local earthAutoWorkToggleState = false

local function executeAutoWork(workNumber)
    local hq = ""
    local playerName = game.Players.LocalPlayer.Name
    for i = 1, 6 do
        local hqName = "HQ" .. i
        local ownerName = workspace.HQs[hqName].Settings.OwnerName.Value
        if ownerName == playerName then
            hq = hqName
            break
        end
    end
    
    if hq ~= "" then
        local clickedEvent = workspace.HQs[hq].Clicked
        clickedEvent:FireServer("SW", workNumber)
    end
end

AutoWorkSection:NewToggle("Auto Work All", "Automatically performs all Earth works", function(state)
    earthAutoWorkToggleState = state
    if earthAutoWorkToggleState then
        spawn(function()
            while earthAutoWorkToggleState do
                wait()
                for i = 1, 9 do
                    executeAutoWork(i)
                end
            end
        end)
    end
end)

local AutoWorkSection = AutoWork:NewSection("Heaven Auto Work")

local heavenAutoWorkToggleState = false

local function heavenAutoWork(workNumber)
    local hq = ""
    local playerName = game.Players.LocalPlayer.Name
    for i = 1, 6 do
        local hqName = "HeavenHQ" .. i
        local ownerName = workspace.HeavenHQs[hqName].Settings.OwnerName.Value
        if ownerName == playerName then
            hq = hqName
            break
        end
    end
    
    if hq ~= "" then
        local clickedEvent = workspace.HeavenHQs[hq].Clicked
        clickedEvent:FireServer("SW", workNumber)
    end
end

AutoWorkSection:NewToggle("Auto Work All", "Automatically performs all Heaven works", function(heavenwork)
    heavenAutoWorkToggleState = heavenwork
    if heavenAutoWorkToggleState then
        spawn(function()
            while heavenAutoWorkToggleState do
                wait()
                for i = 1, 9 do
                    heavenAutoWork(i)
                end
            end
        end)
    end
end)

local AutoWorkSection = AutoWork:NewSection("Moon Auto Work")

local moonAutoWorkToggleState = false

local function moonAutoWork(workNumber)
    local hq = ""
    local playerName = game.Players.LocalPlayer.Name
    for i = 1, 6 do
        local hqName = "MoonHQ" .. i
        local ownerName = workspace.MoonHQs[hqName].Settings.OwnerName.Value
        if ownerName == playerName then
            hq = hqName
            break
        end
    end
    
    if hq ~= "" then
        local clickedEvent = workspace.MoonHQs[hq].Clicked
        clickedEvent:FireServer("SW", workNumber)
    end
end

AutoWorkSection:NewToggle("Auto Work All", "Automatically performs all Moon works", function(moonwork)
    moonAutoWorkToggleState = moonwork
    if moonAutoWorkToggleState then
        spawn(function()
            while moonAutoWorkToggleState do
                wait()
                for i = 1, 9 do
                    moonAutoWork(i)
                end
            end
        end)
    end
end)

local AutoWorkSection = AutoWork:NewSection("Void Auto Work")

local voidAutoWorkToggleState = false

local function voidAutoWork(workNumber)
    local hq = ""
    local playerName = game.Players.LocalPlayer.Name
    for i = 1, 6 do
        local hqName = "VoidHQ" .. i
        local ownerName = workspace.VoidHQs[hqName].Settings.OwnerName.Value
        if ownerName == playerName then
            hq = hqName
            break
        end
    end
    
    if hq ~= "" then
        local clickedEvent = workspace.VoidHQs[hq].Clicked
        clickedEvent:FireServer("SW", workNumber)
    end
end

AutoWorkSection:NewToggle("Auto Work All", "Automatically performs all Void works", function(voidwork)
    voidAutoWorkToggleState = voidwork
    if voidAutoWorkToggleState then
        spawn(function()
            while voidAutoWorkToggleState do
                wait()
                for i = 1, 9 do
                    voidAutoWork(i)
                end
            end
        end)
    end
end)

local AutoBuy = Window:NewTab("Auto Buy Places")
local AutoBuySection = AutoBuy:NewSection("Earth Auto Buy Places")

local EarthAutoBuykToggleState = false

local function EarthAutoBuy(buyNumber)
    local hq = ""
    local playerName = game.Players.LocalPlayer.Name
    for i = 1, 6 do
        local hqName = "HQ" .. i
        local ownerName = workspace.HQs[hqName].Settings.OwnerName.Value
        if ownerName == playerName then
            hq = hqName
            break
        end
    end
    
    if hq ~= "" then
        local clickedEvent = workspace.HQs[hq].Clicked
        clickedEvent:FireServer("PurchaseS", buyNumber)
        wait()
    end
end

AutoBuySection:NewToggle("Auto Buy Places", "Automatically performs all buy", function(earthbuy)
    EarthAutoBuykToggleState = earthbuy
    if EarthAutoBuykToggleState then
        spawn(function()
            while EarthAutoBuykToggleState do
                wait()
                for i = 1, 9 do
                    EarthAutoBuy(i)
                end
            end
        end)
    end
end)

local AutoBuySection = AutoBuy:NewSection("Heaven Auto Buy Places")

local HeavenAutoBuykToggleState = false

local function HeavenAutoBuy(buyNumber)
    local hq = ""
    local playerName = game.Players.LocalPlayer.Name
    for i = 1, 6 do
        local hqName = "HeavenHQ" .. i
        local ownerName = workspace.HeavenHQs[hqName].Settings.OwnerName.Value
        if ownerName == playerName then
            hq = hqName
            break
        end
    end
    
    if hq ~= "" then
        local clickedEvent = workspace.HeavenHQs[hq].Clicked
        clickedEvent:FireServer("PurchaseS", buyNumber)
        wait()
    end
end

AutoBuySection:NewToggle("Auto Buy Places", "Automatically performs all buy", function(heavenbuy)
    HeavenAutoBuykToggleState = heavenbuy
    if HeavenAutoBuykToggleState then
        spawn(function()
            while HeavenAutoBuykToggleState do
                wait()
                for i = 1, 9 do
                    HeavenAutoBuy(i)
                end
            end
        end)
    end
end)


local AutoBuySection = AutoBuy:NewSection("Moon Auto Buy Places")

local MoonAutoBuykToggleState = false

local function MoonAutoBuy(buyNumber)
    local hq = ""
    local playerName = game.Players.LocalPlayer.Name
    for i = 1, 6 do
        local hqName = "MoonHQ" .. i
        local ownerName = workspace.MoonHQs[hqName].Settings.OwnerName.Value
        if ownerName == playerName then
            hq = hqName
            break
        end
    end
    
    if hq ~= "" then
        local clickedEvent = workspace.MoonHQs[hq].Clicked
        clickedEvent:FireServer("PurchaseS", buyNumber)
        wait()
    end
end

AutoBuySection:NewToggle("Auto Buy Places", "Automatically performs all buy", function(moonbuy)
    MoonAutoBuykToggleState = moonbuy
    if MoonAutoBuykToggleState then
        spawn(function()
            while MoonAutoBuykToggleState do
                wait()
                for i = 1, 9 do
                    MoonAutoBuy(i)
                end
            end
        end)
    end
end)

local AutoBuySection = AutoBuy:NewSection("Void Auto Buy Places")

local VoidAutoBuyToggleState = false

local function VoidAutoBuy(buyNumber)
    local hq = ""
    local playerName = game.Players.LocalPlayer.Name
    for i = 1, 6 do
        local hqName = "VoidHQ" .. i
        local ownerName = workspace.VoidHQs[hqName].Settings.OwnerName.Value
        if ownerName == playerName then
            hq = hqName
            break
        end
    end
    
    if hq ~= "" then
        local clickedEvent = workspace.VoidHQs[hq].Clicked
        clickedEvent:FireServer("PurchaseS", buyNumber)
        wait()
    end
end

AutoBuySection:NewToggle("Auto Buy Places", "Automatically performs all buy", function(voidbuy)
    VoidAutoBuyToggleState = voidbuy
    if VoidAutoBuyToggleState then
        spawn(function()
            while VoidAutoBuyToggleState do
                wait()
                for i = 1, 9 do
                    VoidAutoBuy(i)
                end
            end
        end)
    end
end)