for i, v in next, getconnections(game:GetService("Players").LocalPlayer.Idled) do
    v:Disable()
end

-- Variable 
local plr = game.Players.LocalPlayer
local wrk = game.Workspace
local reps = game.ReplicatedStorage

-- Tables

local areaTable = {}
local mobTable = {}
local statueTable = {}

for i,v in pairs(wrk["__WORKSPACE"].FightersPoint:GetChildren()) do
    table.insert(statueTable, v.Name)
end

for i,v in pairs(wrk["__CURRENTAREA"]:GetChildren()) do
    table.insert(areaTable, v.Name)
end


-- Functions

local Hitfunc;

for i,v in pairs(getgc()) do
    if type(v) == "function" and getinfo(v).source then
        if getinfo(v).source == "=Players."..plr.Name..".PlayerGui.UI.Client.Modules.PunchingSettings" then
            if getinfo(v).currentline == 30 then
                Hitfunc = v
            end
        end
    end
end

function nearestMobs(a,m)
    a = a or nil
    m = m or nil
    local dekat = nil
    local dist = math.huge
    if wrk["__WORKSPACE"].Mobs:FindFirstChild(a) then
        for i,v in pairs(wrk["__WORKSPACE"].Mobs[a]:GetChildren()) do
            if v.Name == m then
                if v:FindFirstChild("Settings") then
                    if v:FindFirstChild("HumanoidRootPart") then
                        if v.Settings.HP.Value >= 1 then
                            if plr.Character:FindFirstChild("HumanoidRootPart") then
                                local mag = (plr.Character:FindFirstChild("HumanoidRootPart").Position - v:FindFirstChild("HumanoidRootPart").Position).magnitude
                                if mag < dist then
                                    dist = mag
                                    dekat = v
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return dekat
end
                    
game:GetService("RunService").Heartbeat:Connect(function()
    for i,v in pairs(plr.PlayerGui.UI.CenterFrame.Backpack.Frame:GetChildren()) do
        if v.ClassName == "ImageLabel" then
            if v:FindFirstChild("Frame") then
                if v:GetAttribute("Rarity") == nil then
                    if v.Frame.ImageColor3 == Color3.fromRGB(230, 187, 31) then
                        v:SetAttribute("Rarity", "YellowRing")
                    elseif v.Frame.ImageColor3 == Color3.fromRGB(24, 155, 255) then
                        v:SetAttribute("Rarity", "BlueRing")
                    end
                end
            end
        end
    end
end)

-- Library

local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Shaman.lua'))()
local Flags = Library.Flags

local moblist 

local Window = Library:Window({Text = "Anime Evolution Simulator"})

local main = Window:Tab({Text = "Main"})
local credits = Window:Tab({Text = "Credits"})

local farm = main:Section({Text = "Farming"})
local buy = main:Section({Text = "Buy", Side = "Right"})
local boost = main:Section({Text  = "Boost & Gift"})
local fighter = main:Section({Text = "Fighter", Side = "Right"})
local teleport = main:Section({Text = "Teleport"})
local character = main:Section({Text = "Character", Side = "Right"})
local punya = credits:Section({Text = "Owner"})


farm:Toggle({
    Text = "Auto Click",
    Flag = "hit"
})

farm:Dropdown({
    Text = "Area List",
    List = areaTable,
    Flag = "areaname",
    Callback = function(selected)
        for _,v in pairs(mobTable) do table.remove(mobTable,_) end
        for _,v in pairs(mobTable) do table.remove(mobTable,_) end
        for _,v in pairs(mobTable) do table.remove(mobTable,_) end
        for _,v in pairs(mobTable) do table.remove(mobTable,_) end
        for _,v in pairs(mobTable) do table.remove(mobTable,_) end
        for _,v in pairs(mobTable) do table.remove(mobTable,_) end

        if wrk["__WORKSPACE"].Areas[selected]:FindFirstChild("Door") then
            game.StarterGui:SetCore("SendNotification",  {
                Title = "Farming Notification!";
                Text = "Unlock This ("..selected..") Area To Farm";
                Icon = "";
                Duration = 2.5;
            })
        else
            if wrk["__WORKSPACE"].Mobs:FindFirstChild(selected) then
                for i,v in pairs(wrk["__WORKSPACE"].Mobs[selected]:GetChildren()) do
                    insert = true
                    for i,v1 in pairs(mobTable) do if v1 == v.Name then insert = false end end
                    if insert == true then
                        table.insert(mobTable,v.Name)
                    end
                    moblist:Refresh({
                        List = mobTable
                    })
                end
            else
                plr.Character.HumanoidRootPart.CFrame = wrk["__WORKSPACE"].Areas[selected].Point.CFrame
                wait(0.2)
                for i,v in pairs(wrk["__WORKSPACE"].Mobs[Flags.areaname]:GetChildren()) do
                    insert = true
                    for i,v1 in pairs(mobTable) do if v1 == v.Name then insert = false end end
                    if insert == true then
                        table.insert(mobTable,v.Name)
                    end
                    moblist:Refresh({
                        List = mobTable
                    })
                end
            end
        end
    end
})

moblist = farm:Dropdown({
    Text = "Mob List",
    List = mobTable,
    Flag = "mobname"
})

farm:Toggle({
    Text = "Tp To Mob",
    Flag = "tptomob",
    Tooltip = "Tp To Nearest Mob.",
    Callback = function(bool)
        if bool then
            if wrk["__WORKSPACE"].Areas[Flags["statuename"]]:FindFirstChild("Door") then
                game.StarterGui:SetCore("SendNotification",  {
                    Title = "Farming Notification!";
                    Text = "Unlock This ("..Flags["areaname"]..") Area To Farming!";
                    Icon = "";
                    Duration = 2.5;
                })
            end
        end
    end
})

farm:Toggle({
    Text = "Collect Drop",
    Flag = "collectdrop"
})

buy:Toggle({
    Text = "Auto Rank up",
    Flag = "rankup"
})

buy:Toggle({
    Text = "Auto Buy Aura",
    Flag = "buyaura",
})

buy:Dropdown({
    Text = "Fighters Statue List",
    Flag = "statuename",
    List = statueTable
})

buy:Toggle({
    Text = "Auto Buy Fighters",
    Flag = "buystatue",
    Tooltip = "Must Unlocked Area You Choose",
    Callback = function(bool)
        if bool then
            if wrk["__WORKSPACE"].Areas[Flags["statuename"]]:FindFirstChild("Door") then
                game.StarterGui:SetCore("SendNotification",  {
                    Title = "Farming Notification!";
                    Text = "Unlock This ("..Flags["statuename"]..") Area To Buy Fighter";
                    Icon = "";
                    Duration = 2.5;
                })
            end
        end
    end
})

boost:Dropdown({
    Text = "Boosts List",
    List = {"x2 Lucky", "x2 Coins", "x2 Power", "x2 Damage"},
    Flag = "boostname"
})

boost:Toggle({
    Text = "Use Boost",
    Flag = "useboost"
})

boost:Toggle({
    Text = "Auto Claim Gift",
    Flag = "claimgift"
})

fighter:Dropdown({
    Text = "Ring List",
    Flag = "ringname",
    List = {"YellowRing", "BlueRing"}
})

fighter:Toggle({
    Text = "Auto Delete Fighter",
    Flag = "deletefighter"
})

character:Slider({
    Text = "Walkspeed",
    Default = 16,
    Minimum  = 16,
    Maximum = 150,
    Flag = "ws",
})

character:Slider({
    Text = "JumpPower",
    Default = 50,
    Minimum  = 50,
    Maximum = 200,
    Flag = "jp",
})

character:Toggle({
    Text = "Enabled",
    Flag = "wsjp"
})

punya:Label({
    Text = "Owner : Xiovr!",
    Color = Color3.fromRGB(47, 193, 31)
})

for i,v in pairs(wrk["__WORKSPACE"].Areas:GetChildren()) do
    teleport:Button({
        Text = v.Name,
        Callback = function()
            if v:FindFirstChild("Door") then
                game.StarterGui:SetCore("SendNotification",  {
                    Title = "Teleport Notification!";
                    Text = " Unlock This ("..v.Name..") Area To Teleport!";
                    Icon = "";
                    Duration = 2.5;
                })
            else
                plr.Character.HumanoidRootPart.CFrame = v.Point.CFrame
            end
        end
    })
end

-- ++ Functions

spawn(function()
    while task.wait() do
        if Flags.hit then
            Hitfunc()
        end
    end
end)

spawn(function()
    while task.wait() do
        if Flags["tptomob"] then
            if plr.Character:FindFirstChild("HumanoidRootPart") then
                if not wrk["__WORKSPACE"].Areas[Flags["areaname"]]:FindFirstChild("Door") then
                    if wrk["__WORKSPACE"].Mobs:FindFirstChild(Flags["areaname"]) then
                        if nearestMobs(Flags["areaname"], Flags["mobname"]) ~= nil then
                            plr.Character.HumanoidRootPart.CFrame = nearestMobs(Flags["areaname"], Flags["mobname"]):FindFirstChild("HumanoidRootPart").CFrame
                        end
                    else
                        plr.Character.HumanoidRootPart.CFrame = wrk["__WORKSPACE"].Areas[Flags["areaname"]].Point.CFrame
                    end
                end
            end
        end
    end
end)


spawn(function()
    while task.wait() do
        if Flags["collectdrop"] then
            for i,v in pairs(wrk["__DROPS"]:GetChildren()) do
                reps.Remotes.Client:FireServer({"DropCollect", v.Name})
                v:Destroy()
            end
        end
    end        
end)

spawn(function()
    while task.wait(0.5) do
        if Flags["rankup"] then
            reps.Remotes.Client:FireServer({"RankUp"})
        end
    end           
end)

spawn(function()
    while task.wait(0.5) do
        if Flags["buyaura"] then
            reps.Remotes.Client:FireServer({"Aura"})
        end
    end
end)

spawn(function()
    while task.wait(0.7) do
        if Flags["buystatue"] then
            if not wrk["__WORKSPACE"].Areas[Flags["statuename"]]:FindFirstChild("Door") then
                plr.Character.HumanoidRootPart.CFrame = wrk.__WORKSPACE.FightersPoint[Flags["statuename"]]["Star"].Part.CFrame
                reps.Remotes.Client:FireServer({"BuyTier", wrk.__WORKSPACE.FightersPoint[Flags["statuename"]], "E", {}})
            end
        end
    end           
end)

spawn(function()
    while task.wait(0.4) do
        if Flags["useboost"] then
            reps.Remotes.Client:FireServer({"BoostUse", Flags["boostname"]})
        end
    end
end)

spawn(function()
    while task.wait(0.2) do
        if Flags["deletefighter"] then
            for i,v in pairs(plr.PlayerGui.UI.CenterFrame.Backpack.Frame:GetChildren()) do
                if v.ClassName == "ImageLabel" then
                    if v:FindFirstChild("Frame") then
                        if v:GetAttribute("Rarity") == Flags["ringname"] then
                            if v.Frame.Equipped.Visible == false then
                                reps.Remotes.Client:FireServer({"EquipFighter", "Delete", {[v.Name] = true}})
                            end
                        end
                    end
                end
            end
        end
    end
end)

spawn(function()
    while task.wait() do
        if Flags["claimgift"] then
            for i,v in pairs(plr.PlayerGui.UI.CenterFrame.Gifts.Frame:GetChildren()) do
                if v.ClassName == "ImageLabel" then
                    if v:FindFirstChild("Frame") then
                        if v.Frame.TextLabel.Text == "Claim" then
                            reps.Remotes.Client:FireServer({"Gift", v.Name})
                        end
                    end
                end
            end
        end
    end
end)

spawn(function()
    while task.wait() do
        if Flags["wsjp"] then
            plr.Character.Humanoid.WalkSpeed = Flags["ws"]
            plr.Character.Humanoid.JumpPower = Flags["jp"]
        end
    end
end)

main:Select()