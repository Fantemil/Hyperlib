if not game:IsLoaded() then
    repeat wait() until game:IsLoaded()
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Smash Legends") -- Creates the window

local x = library:CreateWindow("Worlds")

local b = w:CreateFolder("Auto Farm") -- Creates the folder(U will put here your buttons,etc)

local c = w:CreateFolder("Eggs")

local d = x:CreateFolder("Teleports")

local e = x:CreateFolder("Objects")

local player = game:GetService("Players").LocalPlayer

local TweenService = game:GetService("TweenService")

local function PlayerIsAlive()
    if player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0 then
        return true
    else
        return nil
    end
end

local function HammerSwing()
    game:GetService("ReplicatedStorage").Remotes.HammerSwing:FireServer()
end

local function Sell()
    game:GetService("ReplicatedStorage").Remotes.SellRequest:InvokeServer()
end

local Egg

local function HatchEgg()
    local Buy_Egg = game:GetService("Workspace").EggVendors[Egg].Config.EggId.Value
    game:GetService("ReplicatedStorage").Remotes.HatchEgg:FireServer(Buy_Egg)
end

local function RedeemCode()
    local Code = "e"
    game:GetService("ReplicatedStorage").Remotes.RedeemCode:InvokeServer(Code)
end

local function BuyAllHammers()
    game:GetService("ReplicatedStorage").Remotes.BuyAllHammers:FireServer()
end

local function OpenChest()
    for i, v in pairs(game:GetService("Workspace").InterfaceObjects.Chests:GetChildren()) do
        game:GetService("ReplicatedStorage").Remotes.OpenChest:FireServer(tostring(v))
    end
end

local Teleport

local function Teleports()
    game:GetService("ReplicatedStorage").Remotes.TeleportRequest:FireServer(Teleport)
end

local function UnlockRegion()
    game:GetService("ReplicatedStorage").Remotes.RequestRegionUnlock:InvokeServer()
end

local function Prestige()
    game:GetService("ReplicatedStorage").Remotes.Prestige:FireServer()
end

local function GotoEgg()
    for i, v in pairs(game:GetService("Workspace").EggVendors[Egg]:GetChildren()) do
        if v.Name == "Root" then
            player.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0, 10, 0)
        end
    end
end

local function TweenToEgg()
    local tweenInfo = TweenInfo.new(1)
    for i, v in pairs(game:GetService("Workspace").EggVendors[Egg]:GetChildren()) do
        if v.Name == "Root" then
            local tween = TweenService:Create(player.Character.HumanoidRootPart, tweenInfo, { CFrame = v.CFrame * CFrame.new(0, 10, 0) })
            tween:Play()
        end
    end
end

local Dist

getgenv().AutoHammerSwing = nil
getgenv().AutoSell = nil
getgenv().AutoBuyEgg = nil
getgenv().AutoUpgradeHammer = nil
getgenv().AutoOpenChest = nil
getgenv().Goto_KingOfTheHill = nil
getgenv().AutoBuyRegion = nil
getgenv().AutoPrestige = nil
getgenv().AutoDestroyObjects = nil
getgenv().AutoDestroyEventObjects = nil

local function ClosestEventObject()
    local target
    local closest = math.huge
    for i, v in pairs(game:GetService("Workspace")["_EventObjects"]:GetChildren()) do
        if v and v:FindFirstChild("Root") and v.Root.Anchored == true then
            if player.Character:FindFirstChild("HumanoidRootPart") then
                local me = player.Character.HumanoidRootPart.Position
                local Object = v.Root.Position
                local dist = (me - Object).magnitude
                if dist < closest then
                    closest = dist
                    target = v
                end
            end
        end
    end
    return target
end

local function Goto_KOTH()
    if ClosestEventObject() and AutoDestroyEventObjects then
        return nil
    end

    if AutoDestroyObjects then
        return nil
    end

    local tweenInfo = TweenInfo.new(1)
    if PlayerIsAlive() then
        for i, v in pairs(game:GetService("Workspace")["_KOTHMap"]:GetChildren()) do
            if v.Name == "KOTH_Zone" and v:FindFirstChildOfClass("TouchTransmitter") then
                local tween = TweenService:Create(player.Character.HumanoidRootPart, tweenInfo, { CFrame = v.CFrame * CFrame.new(0, 81, 0) })
                tween:Play()
            end
        end
    end
end

local function ClosestRegionObject()
    local target
    local closest = math.huge
    for i, v in pairs(game:GetService("Workspace")["_Objects"][Region]:GetChildren()) do
        if v:FindFirstChild("Root") and v.Root.Anchored == true then
            if player.Character:FindFirstChild("HumanoidRootPart") then
                local me = player.Character.HumanoidRootPart.Position
                local Object = v.Root.Position
                local dist = (me - Object).magnitude
                if dist < closest then
                    closest = dist
                    target = v
                end
            end
        end
    end
    if ClosestEventObject() and AutoDestroyEventObjects then
        return nil
    else
        return target
    end
end

local function DestroyObjects()
    if ClosestRegionObject() then
        if player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0 and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = ClosestRegionObject().Root.CFrame * CFrame.new(0, 0, Dist)
        end
    end
end

local function DestroyEventObjects()
    if ClosestEventObject() then
        if player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0 and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = ClosestEventObject().Root.CFrame * CFrame.new(0, 0, Dist)
        end
    end
end

b:Toggle("Auto Swing Hammer", function(bool)
    spawn(function()
        shared.toggle = bool
        if shared.toggle then
            AutoHammerSwing = true
        else
            AutoHammerSwing = false
        end

        while true do
            if AutoHammerSwing and HammerSwing() then
                coroutine.wrap(HammerSwing)()
            end
            wait()
        end
    end)
end)

b:Toggle("Auto Sell", function(bool)
    spawn(function()
        shared.toggle = bool
        if shared.toggle then
            AutoSell = true
        else
            AutoSell = false
        end

        while true do
            if AutoSell and Sell() then
                coroutine.wrap(Sell)()
            end
            wait()
        end
    end)
end)

b:Toggle("Auto Prestige", function(bool)
    spawn(function()
        shared.toggle = bool
        if shared.toggle then
            AutoPrestige = true
        else
            AutoPrestige = false
        end

        while true do
            if AutoPrestige and Prestige() then
                coroutine.wrap(Prestige)()
            end
            wait()
        end
    end)
end)

b:Toggle("Auto Upgrade Hammer", function(bool)
    spawn(function()
        shared.toggle = bool
        if shared.toggle then
            AutoUpgradeHammer = true
        else
            AutoUpgradeHammer = false
        end

        while true do
            if AutoUpgradeHammer and BuyAllHammers() then
                coroutine.wrap(BuyAllHammers)()
            end
            wait()
        end
    end)
end)

b:Toggle("Auto Buy Worlds", function(bool)
    spawn(function()
        shared.toggle = bool
        if shared.toggle then
            AutoBuyRegion = true
        else
            AutoBuyRegion = false
        end

        while true do
            if AutoBuyRegion and UnlockRegion() then
                coroutine.wrap(UnlockRegion)()
            end
            wait()
        end
    end)
end)

b:Toggle("Goto To KOTH", function(bool)
    spawn(function()
        shared.toggle = bool
        if shared.toggle then
            Goto_KingOfTheHill = true
        else
            Goto_KingOfTheHill = false
        end

        while true do
            if Goto_KingOfTheHill and Goto_KOTH() then
                coroutine.wrap(Goto_KOTH)()
            end
            wait(1)
        end
    end)
end)

b:Toggle("Auto Open Chests", function(bool)
    spawn(function()
        shared.toggle = bool
        if shared.toggle then
            AutoOpenChest = true
        else
            AutoOpenChest = false
        end

        while true do
            if AutoOpenChest and OpenChest() then
                coroutine.wrap(OpenChest)()
            end
            wait()
        end
    end)
end)

c:Dropdown("Select An Egg", game:GetService("Workspace").EggVendors:GetChildren(), true, function(NewEgg) --true/false, replaces the current title "Dropdown" with the option that t
    Egg = NewEgg
end)

c:Toggle("Auto Buy Egg", function(bool)
    spawn(function()
        shared.toggle = bool
        if shared.toggle then
            AutoBuyEgg = true
        else
            AutoBuyEgg = false
        end

        while true do
            if AutoBuyEgg then
                if Egg and HatchEgg() then
                    coroutine.wrap(HatchEgg)()
                end
            end
            wait()
        end
    end)
end)

c:Button("Teleport To Egg", function()
    spawn(function()
        if Goto_KingOfTheHill then
            print("Turn Off Go To King Of The Hill")
        end

        if AutoDestroyObjects then
            print("Turn Off Auto Destroy Objects")
        end

        if AutoDestroyEventObjects then
            print("Turn Off Auto Destroy Event Objects")
        end

        if Egg and GotoEgg() then
            coroutine.wrap(GotoEgg)()
        end
    end)
end)

c:Button("Tween To Egg", function()
    spawn(function()
        if Goto_KingOfTheHill then
            print("Turn Off Go To King Of The Hill")
        end

        if AutoDestroyObjects then
            print("Turn Off Auto Destroy Objects")
        end

        if AutoDestroyEventObjects then
            print("Turn Off Auto Destroy Event Objects")
        end

        if Egg and TweenToEgg() then
            coroutine.wrap(TweenToEgg)()
        end
    end)
end)


d:Dropdown("Select An World", game:GetService("Workspace")["_Regions"]:GetChildren(), true, function(NewTeleport) --true/false, replaces the current title "Dropdown" with the option that t
    Teleport = NewTeleport
end)

d:Button("Goto World", function()
    spawn(function()
        if Teleport and Teleports() then
            coroutine.wrap(Teleports)()
        end
    end)
end)

e:Dropdown("Select An World", game:GetService("Workspace")["_Objects"]:GetChildren(), true, function(NewRegion) --true/false, replaces the current title "Dropdown" with the option that t
    Region = NewRegion
end)

local Wait_Time = 1

e:Slider("Distance", {
    min = 1; -- min value of the slider
    max = 20; -- max value of the slider
    precise = false; -- max 2 decimals
}, function(value)
    Dist = value
end)

e:Slider("Wait Time", {
    min = 0.1; -- min value of the slider
    max = 10; -- max value of the slider
    precise = false; -- max 2 decimals
}, function(value)
    Wait_Time = value
end)

e:Toggle("Auto Destroy Objects", function(bool)
    spawn(function()
        shared.toggle = bool
        if shared.toggle then
            AutoDestroyObjects = true
        else
            AutoDestroyObjects = false
        end

        while true do
            if AutoDestroyObjects then
                if Region then
                    if ClosestRegionObject() then
                        coroutine.wrap(ClosestRegionObject)()
                    end
                    if Dist and DestroyObjects() then
                        coroutine.wrap(DestroyObjects)()
                    end
                end
            end
            wait(Wait_Time)
        end
    end)
end)

e:Toggle("Destroy Event Objects", function(bool)
    spawn(function()
        shared.toggle = bool
        if shared.toggle then
            AutoDestroyEventObjects = true
        else
            AutoDestroyEventObjects = false
        end

        while true do
            if AutoDestroyEventObjects then
                if ClosestEventObject() then
                    coroutine.wrap(ClosestEventObject)()
                end

                if Dist and DestroyEventObjects() then
                    coroutine.wrap(DestroyEventObjects)()
                end
            end
            wait(Wait_Time)
        end
    end)
end)