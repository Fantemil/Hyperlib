local Functions, Information = {}, {}

function Information:GetEggs()
    local eggs = {}
    for _,v in next, game:GetService("Workspace").Scripted.EggHolders:GetChildren() do
        if v.Name:find("Robux") or v.Name:find("Daily") then continue end
        table.insert(eggs, v.Name)
    end
    table.sort(eggs, function(A, Z)
        return A < Z
    end)
    return eggs
end

function Information:GetTouches()
    local touches = {}
    for _,v in next, game:GetService("Workspace").Scripted.TouchParts:GetChildren() do
        table.insert(touches, v.Name)
    end
    table.sort(touches, function(A, Z)
        return A < Z
    end)
    return touches
end

function Information:GetRebirths()
    local rebirths = {}
    for i,v in next, game:GetService("Players").LocalPlayer.PlayerGui.Rebirth.Holder.Holder.ScrollHolder.ScrollingFrame:GetChildren() do
        if v.ClassName == "Frame" and v.Name ~= "Invisible" then
            local num = tonumber(v.Name)
            local suffix = ""
            if num >= 10^12 then
                num = math.floor(num / (10^12))
                suffix = "T"
            elseif num >= 10^9 then
                num = math.floor(num / (10^9))
                suffix = "B"
            elseif num >= 10^6 then
                num = math.floor(num / (10^6))
                suffix = "M"
            elseif num >= 10^3 then
                num = math.floor(num / (10^3))
                suffix = "K"
            end
            table.insert(rebirths, num .. suffix)
        end
    end
    return rebirths
end


function Functions:Click()
    game:GetService("ReplicatedStorage").Events.Click:FireServer()
end

function Functions:Hatch()
    if shared.Triple then
        game:GetService("ReplicatedStorage").Functions.Hatch:InvokeServer(shared.egg, "Triple")
    else
        game:GetService("ReplicatedStorage").Functions.Hatch:InvokeServer(shared.egg, "Single")
    end
end

function Functions:OpenUI()
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Scripted.TouchParts[shared.selectedUI]:FindFirstChild("TouchPart"), 0)
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Scripted.TouchParts[shared.selectedUI]:FindFirstChild("TouchPart"), 1)
end

function Functions:CollectChests()
    for _,v in next, game:GetService("Workspace").Scripted.Chests:GetChildren() do
        if v.Name == "VIPChest" then continue end
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v:FindFirstChild("TouchPart"), 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v:FindFirstChild("TouchPart"), 1)
    end
end

function Functions:BuyUpgrade(upgr)
    game:GetService("ReplicatedStorage").Functions.PurchaseUpgrade:InvokeServer("Spawn", upgr)
end

function Functions:CreateUpgradeToggles(Tab)
    for _,v in next, game:GetService("Players").LocalPlayer.PlayerGui.SpawnUpgrades.Holder.Holder.ScrollHolder.ScrollingFrame:GetChildren() do
        if v.ClassName == "Frame" and v.Name ~= "Invisible" then
            if v.Holder:FindFirstChild("TextLabel") and not v.Holder:FindFirstChild("TextLabel").Text:find("+") then
                Tab:CreateToggle({
                    Name = "Auto ".. v.Holder:FindFirstChild("TextLabel").Text,
                    CurrentValue = false,
                    Flag = "Auto ".. v.Holder:FindFirstChild("TextLabel").Text,
                    Callback = function(Value)
                        shared[v.Name] = Value
                        while shared[v.Name] do
                            task.wait()
                            if not shared[v.Name] then
                                break
                            end
                            Functions:BuyUpgrade(v.Name)
                        end
                    end,
                 })
            end
        end
    end
end

function Functions:ClaimGifts()
    for i = 1,12 do
        game:GetService("ReplicatedStorage").Events.CollectDailyReward:FireServer("Reward " .. tostring(i))
        task.wait(0.1)
    end
end

function Functions:Rebirth()
    game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(tonumber(shared.amount))
end

function Functions:BuyClicks()
    game:GetService("ReplicatedStorage").Functions.BuyPotion:InvokeServer("Click", 1)
end
function Functions:BuyGems()
    game:GetService("ReplicatedStorage").Functions.BuyPotion:InvokeServer("Gem", 1)
end
function Functions:BuyRebirths()
    game:GetService("ReplicatedStorage").Functions.BuyPotion:InvokeServer("Rebirth", 1)
end
function Functions:BuyLuck()
    game:GetService("ReplicatedStorage").Functions.BuyPotion:InvokeServer("Luck", 1)
end

function Functions:Mastery()
    game:GetService("ReplicatedStorage").Functions.IncreaseMastery:InvokeServer()
end

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
    Name = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
    LoadingTitle = "W Open Source script",
    LoadingSubtitle = "by kooggy",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = "OS",
       FileName = "TM"
    }
 })

local Tab = Window:CreateTab("Home Tab", 11600721595)

local Section = Tab:CreateSection("Release")

local Label = Tab:CreateLabel("Released 4/5/23")

local Tab = Window:CreateTab("Farming Tab", 12858102132)

local Section = Tab:CreateSection("Farming")

Tab:CreateToggle({
    Name = "Auto Tap",
    CurrentValue = false,
    Flag = "Auto Tap",
    Callback = function(Value)
        shared.tap = Value 
        while shared.tap do
            task.wait()
            if not shared.tap then break end
            Functions:Click()
        end
    end,
})
Tab:CreateToggle({
    Name = "Auto Mastery",
    CurrentValue = false,
    Flag = "Auto Mastery",
    Callback = function(Value)
        shared.mastery = Value 
        while shared.mastery do
            task.wait()
            if not shared.mastery then break end
            Functions:Mastery()
        end
    end,
})

local Section = Tab:CreateSection("Rebirthing")

Tab:CreateToggle({
    Name = "Auto Rebirth",
    CurrentValue = false,
    Flag = "Auto Rebirth",
    Callback = function(Value)
        shared.rebirth = Value 
        while shared.rebirth do
            task.wait()
            if not shared.rebirth then break end
            Functions:Rebirth()
        end
    end,
})

Tab:CreateDropdown({
    Name = "Select Rebirth",
    Options = Information:GetRebirths(),
    CurrentOption = "",
    Flag = "Select Rebirth",
    Callback = function(Option)
        local num = tonumber(Option:match("%d+"))
        local suffix = Option:match("%a+")
        if suffix == "K" then
            num = num * 10^3
        elseif suffix == "M" then
            num = num * 10^6
        elseif suffix == "B" then
            num = num * 10^9
        elseif suffix == "T" then
            num = num * 10^12
        end
        shared.amount = tostring(num)
    end,
 })

 local Tab = Window:CreateTab("Pet Tab", 12918264394)

local Section = Tab:CreateSection("Eggs")
 
Tab:CreateToggle({
    Name = "Auto Hatch",
    CurrentValue = false,
    Flag = "Auto Hatch",
    Callback = function(Value)
        shared.hatch = Value 
        while shared.hatch do
            task.wait()
            if not shared.hatch then break end
            Functions:Hatch()
        end
    end,
})

Tab:CreateToggle({
    Name = "Triple Hatch",
    CurrentValue = false,
    Flag = "Triple Hatch",
    Callback = function(Value)
        shared.Triple = Value
    end,
})

Tab:CreateDropdown({
    Name = "Select Egg",
    Options = Information:GetEggs(),
    CurrentOption = "",
    Flag = "Select Egg",
    Callback = function(Option)
        shared.egg = Option
    end,
 })

local Tab = Window:CreateTab("Shop Tab", 11600750651)

local Section = Tab:CreateSection("Upgrades")


Functions:CreateUpgradeToggles(Tab)

local Section = Tab:CreateSection("Potions")

Tab:CreateToggle({
    Name = "Auto Buy Clicks Boost",
    CurrentValue = false,
    Flag = "Auto Buy Clicks Boost",
    Callback = function(Value)
        shared.clicksboost = Value 
        while shared.clicksboost do
            task.wait()
            if not shared.clicksboost then break end
            Functions:BuyClicks()
        end
    end,
})
Tab:CreateToggle({
    Name = "Auto Buy Gems Boost",
    CurrentValue = false,
    Flag = "Auto Buy Gems Boost",
    Callback = function(Value)
        shared.gemsboost = Value 
        while shared.gemsboost do
            task.wait()
            if not shared.gemsboost then break end
            Functions:BuyGems()
        end
    end,
})
Tab:CreateToggle({
    Name = "Auto Buy Rebirths Boost",
    CurrentValue = false,
    Flag = "Auto Buy Rebirths Boost",
    Callback = function(Value)
        shared.rebirthboost = Value 
        while shared.rebirthboost do
            task.wait()
            if not shared.rebirthboost then break end
            Functions:BuyRebirths()
        end
    end,
})
Tab:CreateToggle({
    Name = "Auto Buy Luck Boost",
    CurrentValue = false,
    Flag = "Auto Buy Luck Boost",
    Callback = function(Value)
        shared.luckboost = Value 
        while shared.luckboost do
            task.wait()
            if not shared.luckboost then break end
            Functions:BuyLuck()
        end
    end,
})

local Tab = Window:CreateTab("Miscellaneous Tab", 11600761450)

local Section = Tab:CreateSection("Rewards")

Tab:CreateToggle({
    Name = "Auto Claim Gifts",
    CurrentValue = false,
    Flag = "Auto Claim Gifts",
    Callback = function(Value)
        shared.gifts = Value 
        while shared.gifts do
            task.wait()
            if not shared.gifts then break end
            Functions:ClaimGifts()
        end
    end,
})

Tab:CreateToggle({
    Name = "Auto Collect Chests",
    CurrentValue = false,
    Flag = "Auto Collect Chests",
    Callback = function(Value)
        shared.chests = Value 
        while shared.chests do
            task.wait()
            if not shared.chests then break end
            Functions:CollectChests()
        end
    end,
})


local Section = Tab:CreateSection("UI")

Tab:CreateButton({
    Name = "Open UI",
    Callback = function()
        Functions:OpenUI()
    end,
 })

Tab:CreateDropdown({
    Name = "Select UI To Open",
    Options = Information:GetTouches(),
    CurrentOption = "",
    Flag = "Select UI To Open",
    Callback = function(Option)
        shared.selectedUI = Option
        print(shared.selectedUI)
    end,
 })

 local Tab = Window:CreateTab("Information Tab", 11607938487)

 local Section = Tab:CreateSection("Client Information")

 local dt = DateTime.now()

 local Time = "Time: %s %s"
 local Ping = "Ping: %s"
 local CPU = "CPU Usage: %s"
 local TimeLabel = Tab:CreateLabel(Time:format(dt:FormatLocalTime("dddd", "en-us"), dt:FormatLocalTime("LT", "en-us")))
 local PingLabel = Tab:CreateLabel(Ping:format(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString():match("%d+.%d")))
 local CPULabel = Tab:CreateLabel(CPU:format(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString():match("%p%d+%p%u+%p")))

 local Section = Tab:CreateSection("Server Information")

 local Uptime = 0
 local Uptime2 = "Server Uptime: %d Seconds"
 local Players = "Players: %d"
 local PlayersLabel = Tab:CreateLabel(Players:format(#game.Players:GetPlayers()))
 local UptimeLabel = Tab:CreateLabel(Uptime2:format(Uptime))

 task.spawn(function()
     while task.wait(1) do
         Uptime = Uptime + 1
         TimeLabel:Set(Time:format(DateTime.now():FormatLocalTime("dddd", "en-us"), DateTime.now():FormatLocalTime("LT", "en-us")))
         PingLabel:Set(Ping:format(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString():match("%d+.%d")))
         CPULabel:Set(CPU:format(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString():match("%p%d+%p%u+%p")))
         PlayersLabel:Set(Players:format(#game.Players:GetPlayers()))
         UptimeLabel:Set(Uptime2:format(Uptime))
     end
 end)