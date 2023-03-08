repeat wait() until game:IsLoaded() 

local lib = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)()
local wait = lib.subs.Wait 
local plr = game.Players.LocalPlayer
local cha = plr.Character or plr.CharacterAdded:Wait()
local hrp = cha:WaitForChild("HumanoidRootPart")
local hum = cha:WaitForChild("Humanoid")
local x = require(game:GetService("ReplicatedStorage").WeaponData)
local types = {"SFOTH", "Sword", "Club", "Longsword", "Katana", "Axe", "Spear", "Domini", "Knife", "Aguman", "Trident", "Mallet", "Blade", "Gauntlets", "Lance", "Scythe", "Twin Blade", "Greatsword", "Falchion", "Fans", "Claws"}
_G.Weapon = nil 
_G.WeaponType = nil 
_G.WeaponM1 = nil
local remoteargs = {}
local request = http_request or request or HttpPost or syn.request

local fixes = {
    ["K"] = 10 ^ 3,
    ["M"] = 10 ^ 6,
    ["B"] = 10 ^ 9,
    ["T"] = 10 ^ 12,
    ["Qd"] = 10 ^ 15, 
    ["Qn"] = 10 ^ 18,
    ["Sx"] = 10 ^ 21,
    ["Sp"] = 10 ^ 24
}

local function playerlvl()
    local fix = plr.leaderstats.Lvl.Value:sub(-1)
    if fixes[fix] then
        return tonumber(plr.leaderstats.Lvl.Value:sub(1, -2)) * fixes[fix]
    elseif tonumber(plr.leaderstats.Lvl.Value) then
        return tonumber(plr.leaderstats.Lvl.Value)
    end
end

local oldmt 
oldmt = hookmetamethod(game, "__index", function(self, index)
    if self == hum and index == ("WalkSpeed" or "JumpPower") then
        return 16
    end 
    return oldmt(self, index)
end)

local dropss = {} 

for i,v in pairs(x) do 
    if (not table.find(dropss, i)) then 
        table.insert(dropss, i)
        table.sort(dropss)
    end 
end 

local enemies = {} 

for i,v in pairs(game.Workspace.NPCs:GetChildren()) do 
    local split = string.split(v.Name, "Lv")
    if (not table.find(enemies, split[1])) then 
        table.insert(enemies, split[1])
        table.sort(enemies)
    end 
end 

game.Workspace.NPCs.ChildAdded:Connect(function(child)
    local split = string.split(child.Name, "Lv")
    if (not table.find(enemies, split[1])) then 
        table.insert(enemies, split[1])
        table.sort(enemies)
    end 
end)

function sendmsg(text, hex)
local url = (web or "https://pornhub.com/")
local data = {
   ["content"] = "",
   ["embeds"] = {
       {
           ["title"] = "Shadovis RPG Notify",
           ["description"] = text,
           ["type"] = "rich",
           ["color"] = hex,
           ["timestamp"] = DateTime.now():ToIsoDate()
       }
   }
}
local encoded = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
local enddata = {
    Url = url, 
    Body = encoded, 
    Method = "POST", 
    Headers = headers
}
request(enddata)
end

local function openshop(k, pos)
    if (k.Position - pos).Magnitude < 10 then  
        firetouchinterest(hrp, k, 0)
        wait() 
        firetouchinterest(hrp, k, 1)
    end
end 

local function getclosestmob(range) 
    local closest = nil 
    local maxdist = math.huge
    for i,v in pairs(game.Workspace.NPCs:GetChildren()) do 
        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then 
            local dist = (v.HumanoidRootPart.Position - hrp.Position).Magnitude
            if dist < maxdist and dist < (range or math.huge) then 
                maxdist = dist 
                closest = v
            end 
        end 
    end
    return closest
end

local function getallnearby(range)
    local table1 = {} 
    for i,v in pairs(game.Workspace.NPCs:GetChildren()) do 
        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then 
            local dist = (v.HumanoidRootPart.Position - hrp.Position).Magnitude 
            if dist < (range or 25) then 
                table.insert(table1, v.HumanoidRootPart)
            end 
        end 
    end 
    return table1 
end 

plr.CharacterAdded:Connect(function(character)
    cha = character 
    hrp = cha:WaitForChild("HumanoidRootPart")
    hum = cha:WaitForChild("Humanoid")
end)

cha.Equipment.ChildAdded:Connect(function(child)
    if x[child.Name] and table.find(types, x[child.Name].Type) then 
        _G.Weapon = child.Name 
        _G.WeaponType = x[child.Name].Type 
        local req = require(game:GetService("ReplicatedStorage").CombatData[tostring(x[child.Name].Type)])
        for i,v in pairs(debug.getconstants(req)) do 
            if v == "SlashEvent" then 
                _G.WeaponM1 = "SlashEvent"
            elseif v == "StabEvent" then 
                _G.WeaponM1 = "StabEvent"
            elseif v == "SlamEvent" then 
                _G.WeaponM1 = "SlamEvent"
            elseif v == "JoustHurt" then 
                _G.WeaponM1 = "JoustHurt"
            end 
        end
    end
end) 

for i,v in pairs(cha.Equipment:GetChildren()) do 
    if x[v.Name] and table.find(types, x[v.Name].Type) then 
        _G.Weapon = v.Name 
        _G.WeaponType = x[v.Name].Type 
        local req = require(game:GetService("ReplicatedStorage").CombatData[_G.WeaponType])
        for i,v in pairs(debug.getconstants(req)) do 
            if v == "SlashEvent" then 
                _G.WeaponM1 = "SlashEvent"
            elseif v == "StabEvent" then 
                _G.WeaponM1 = "StabEvent"
            elseif v == "SlamEvent" then 
                _G.WeaponM1 = "SlamEvent"
            elseif v == "JoustHurt" then 
                _G.WeaponM1 = "JoustHurt"
            end 
        end
    end 
end 

local window = lib:CreateWindow({
    Name = "Novaz#5792",
    Themeable = {
        Info = {"Kalas A Skid"},
        Credit = false, 
        Background = "",
        Visible = true
    }
})

local main1 = window:CreateTab({
    Name = "Main"
})

local main2 = window:CreateTab({
    Name = "Main2"
})

local section = main1:CreateSection({
    Name = "Main"
})

local section6 = main1:CreateSection({
    Name = "Auto Farm"
})

local section5 = main1:CreateSection({
    Name = "Items",
    Side = "Right"
})

local section1 = main1:CreateSection({
    Name = "Kill Aura Closest",
    Side = "Right"
})

local section3 = main1:CreateSection({
    Name = "Kill Aura Multi",
    Side = "Right"
})

local section4 = main2:CreateSection({
    Name = "Platform"
})

local section2 = main1:CreateSection({
    Name = "Settings",
    Side = "Right"
})

local pers = section2:AddPersistence({
    Name = "Load/Save Config"
})

local section10 = main2:CreateSection({
    Name = "Auto Skill (Hook)"
})

local section11 = main2:CreateSection({
    Name = "Auto Store Levels"
})

local section7 = main2:CreateSection({
    Name = "Shops", 
    Side = "Right"
})

local section8 = main2:CreateSection({
    Name = "Teleports", 
    Side = "Right"
})

local section9 = main2:CreateSection({
    Name = "Misc", 
    Side = "Right"
})

section:AddToggle({
    Name = "Auto Rebirth", 
    Value = false, 
    Flag = "AUTOREBIRTH", 
    Callback = function(state)
        q = state
        while q and task.wait(1) do 
            pcall(function()
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Rebirth")
            end) 
        end 
    end 
})

section:AddToggle({
    Name = "Auto Collect Offering", 
    Value = false, 
    Flag = "OFFERING", 
    Callback = function(state)
        u = state 
        while u and task.wait() do 
            pcall(function()
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer("ClaimOffering")
            end)
        end 
    end 
})

section:AddToggle({
    Name = "Auto Collect Cubits", 
    Value = false, 
    Flag = "CUBIT", 
    Callback = function(state)
        io = state 
        while io and task.wait() do 
            pcall(function()
                for i,v in pairs(game.Workspace.Projectiles:GetChildren()) do 
                    if v:FindFirstChild("ProximityPrompt") and v.Name == "Cubit" then 
                        fireproximityprompt(v:FindFirstChild("ProximityPrompt"))
                    end 
                end 
                for i,v in pairs(game.Workspace["Client Cubits"]:GetChildren()) do 
                    if v.Name == "Cubit" then 
                        for o,k in pairs(v:GetChildren()) do 
                            if k.Name ~= "Highlight" then 
                                fireproximityprompt(k)
                            end 
                        end 
                    end 
                end 
            end) 
        end 
    end
})

section:AddToggle({
    Name = "Inf Ozymandias Buff", 
    Value = false, 
    Flag = "OZYM", 
    Callback = function(state)
        o = state 
        while o and task.wait(.7) do 
            pcall(function()
                cha.Combat.RemoteEvent:FireServer("Input", "OzymandiasCerulean Ozymandias", math.random, "Excel")
                cha.Combat.RemoteEvent:FireServer("Input", "OzymandiasCrimson Ozymandias", math.random, "Excel")
                cha.Combat.RemoteEvent:FireServer("Input", "OzymandiasWicked Ozymandias", math.random, "Excel")
            end) 
        end 
    end 
})

section:AddToggle({
    Name = "Knight Amulet Godmode", 
    Value = false, 
    Flag = "KNIGHTGOD", 
    Callback = function(state)
        i = state 
        while i and task.wait(.2) do 
            pcall(function()
                cha.Combat.RemoteEvent:FireServer("Input", "Heavy KnightForgotten Knight Amulet", 4, "Evade")
            end) 
        end 
    end 
})

section:AddToggle({
    Name = "Shield Godmode",
    Value = false, 
    Flag = "BLOCKGM",
    Callback = function(state)
        tkt = state 
        while tkt and task.wait(.1) do 
            for i,v in pairs(cha.Equipment:GetChildren()) do 
                if x[v.Name] and x[v.Name].Type == "Shield" then 
                    cha.Combat.RemoteEvent:FireServer("Input", v.Name, math.random, "Block")
                end
            end 
        end 
    end 
})

section:AddButton({
    Name = "Load Clothing (Causes Lag)",
    Callback = function()
        for i,v in pairs(game:GetService("ReplicatedStorage").Costumes:GetChildren()) do 
            for i1,v1 in pairs(game.Workspace.NPCs:GetChildren()) do 
                if string.find(v1.Name, v.Name) and (not v1:FindFirstChild("Body Colors")) then 
                    for o,k in pairs(v:GetChildren()) do 
                        local copy = k:Clone() 
                        copy.Parent = v1 
                    end 
                end
            end 
        end 
    end 
})

section:AddButton({
    Name = "Collect Cubits", 
    Callback = function()
        pcall(function()
            for i,v in pairs(game.Workspace.Projectiles:GetChildren()) do 
                if v:FindFirstChild("ProximityPrompt") then 
                    fireproximityprompt(v:FindFirstChild("ProximityPrompt"))
                end 
            end 
            for i,v in pairs(game.Workspace["Client Cubits"]:GetChildren()) do 
                if v.Name == "Cubit" then 
                    for o,k in pairs(v:GetChildren()) do 
                        if k.Name ~= "Highlight" then 
                            fireproximityprompt(k)
                        end 
                    end 
                end 
            end 
        end) 
    end 
})

section1:AddToggle({
    Name = "Kill Aura (Closest)", 
    Value = false, 
    Flag = "KILLAURACLOSEST", 
    Callback = function(state)
        a = state 
        while a and task.wait((c or .1)) do 
            pcall(function()
                cha.Combat.RemoteEvent:FireServer("Input", _G.Weapon, math.random, _G.WeaponM1, getclosestmob(b).HumanoidRootPart)
            end) 
        end 
    end 
})

section1:AddSlider({
    Name = "Kill Aura Range", 
    Value = 25, 
    Min = 5, 
    Max = 100, 
    Flag = "KILLAURARANGE", 
    Callback = function(value)
        b = value 
    end 
})

section1:AddSlider({
    Name = "Kill Aura Speed", 
    Value = 0.1, 
    Min = 0.1, 
    Max = 5, 
    Precise = 1,
    Flag = "WAIT", 
    Callback = function(value)
        c = value 
    end 
})

section3:AddToggle({
    Name = "Kill Aura (Multi)", 
    Value = false, 
    Flag = "KILLAURAMULTI", 
    Callback = function(state)
        f = state 
        while f and task.wait((d or .1)) do 
            pcall(function()
                if getallnearby(e) ~= 0 then 
                    for i,v in pairs(getallnearby(e)) do 
                        cha.Combat.RemoteEvent:FireServer("Input", _G.Weapon, math.random, _G.WeaponM1, v)
                    end 
                end 
            end) 
        end 
    end 
})

section3:AddSlider({
    Name = "Kill Aura Range", 
    Value = 25, 
    Min = 5, 
    Max = 100, 
    Flag = "KILLAURARANGE2", 
    Callback = function(value)
        e = value 
    end 
})

section3:AddSlider({
    Name = "Kill Aura Speed", 
    Value = 0.1, 
    Min = 0.1, 
    Max = 5, 
    Precise = 1,
    Flag = "WAIT2", 
    Callback = function(value)
        d = value 
    end 
})

section4:AddButton({
    Name = "Create Platform", 
    Callback = function()
        local part = Instance.new("Part")
        part.Name = "APARTNO"
        part.Anchored = true 
        part.CFrame = hrp.CFrame + Vector3.new(0, -4, 0)
        part.Size = Vector3.new(25, 1, 25)
        part.Parent = game.Workspace
    end 
})

section4:AddButton({
    Name = "Destroy Platform", 
    Callback = function()
        if game.Workspace:FindFirstChild("APARTNO") then 
            game.Workspace:FindFirstChild("APARTNO"):Destroy() 
        end 
    end 
})

section4:AddToggle({
    Name = "TP To Platforms In Order", 
    Value = false, 
    Flag = "TPTO", 
    Callback = function(state)
        paz = state 
        while paz and task.wait() do 
            for i,v in ipairs(game.Workspace:GetChildren()) do 
                if v.Name == "APARTNO" and task.wait((ppb or 1)) then 
                    hrp.CFrame = v.CFrame + Vector3.new(0, 3, 0)
                end 
            end 
        end 
    end 
})

section4:AddSlider({
    Name = "Teleport Speed", 
    Value = 1, 
    Min = 1, 
    Max = 50, 
    Callback = function(value)
        ppb = value 
    end 
})

section4:AddToggle({
    Name = "Loop Teleport To Platform", 
    Value = false, 
    Flag = "LTPT",
    Callback = function(state)
        tt = state 
        while tt and task.wait() do 
            if game.Workspace:FindFirstChild("APARTNO") then 
                hrp.CFrame = game.Workspace:FindFirstChild("APARTNO").CFrame + Vector3.new(0, 3, 0)
            end
        end 
    end 
})

section4:AddButton({
    Name = "Teleport To Platform", 
    Callback = function()
        if game.Workspace:FindFirstChild("APARTNO") then 
            hrp.CFrame = game.Workspace:FindFirstChild("APARTNO").CFrame + Vector3.new(0, 3, 0)
        end 
    end 
})

section5:AddToggle({
    Name = "Auto Pickup Drops", 
    Value = false, 
    Flag = "DROPS", 
    Callback = function(state)
        op = state 
        while op and task.wait() do 
            pcall(function()
                for i,v in pairs(game.Workspace.Projectiles:GetChildren()) do 
                    if v.Name ~= "Cubit" and v:FindFirstChild("ProximityPrompt") and (v.Position - hrp.Position).Magnitude < (oe or math.huge) and (not table.find((k or {}), v.Name)) then 
                        fireproximityprompt(v:FindFirstChild("ProximityPrompt"))
                    end 
                end 
            end) 
        end 
    end 
})

section5:AddSlider({
    Name = "Pickup Range", 
    Value = 25, 
    Min = 25, 
    Max = 500, 
    Flag = "PICKUPRANGE", 
    Callback = function(value) 
        oe = value 
    end
})

section5:AddSearchBox({
    Name = "Select Item To Blacklist", 
    Flag = "ITEMBLACKLIST",
    Multi = true,
    List = dropss,
    Callback = function(selected)
        k = selected
    end 
})

section6:AddToggle({
    Name = "Auto Farm Selected", 
    Flag = "AUTOFARM", 
    Value = false, 
    Callback = function(state)
        ll = state 
        while ll and task.wait() do 
            pcall(function()
                for i,v in pairs(game.Workspace.NPCs:GetChildren()) do 
                    local split = string.split(v.Name, "Lv") 
                    if table.find(pp, split[1]) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then 
                        if iom == "Above/Below" then 
                            hrp.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, lmn, 0)
                        elseif iom == "Behind/Infront" then 
                            hrp.CFrame = v.HumanoidRootPart.CFrame + v.HumanoidRootPart.CFrame.lookVector * lmn 
                        else 
                            hrp.CFrame = v.HumanoidRootPart.CFrame 
                        end 
                    end 
                end 
            end) 
        end 
    end
})

section6:AddSearchBox({
    Name = "Select Enemies", 
    Flag = "SELECT", 
    List = enemies, 
    Multi = true, 
    Callback = function(selected)
        pp = selected 
    end
})

section6:AddDropdown({
    Name = "Select Position", 
    Flag = "POSITION", 
    Nothing = "Select Position",
    List = {"Above/Below", "Behind/Infront"}, 
    Callback = function(selected)
        iom = selected 
    end 
})

section6:AddSlider({
    Name = "Position Distance", 
    Flag = "DISTANCE",
    Value = -2, 
    Min = -25, 
    Max = 25, 
    Callback = function(selected)
        lmn = selected
    end 
})

section7:AddButton({
    Name = "Open Selected Shop", 
    Callback = function()
        for i,v in pairs(game.Workspace.Stores:GetChildren()) do 
            for o,k in pairs(v:GetChildren()) do 
                if k:FindFirstChild("TouchInterest") then 
                    if ppo == "Armor" then 
                        openshop(k, Vector3.new(-190, 34, -545))
                    elseif ppo == "Beginner" then
                        openshop(k, Vector3.new(-41, 4, -591))
                    elseif ppo == "Village" then 
                        openshop(k, Vector3.new(42, 12, -1000))
                    elseif ppo == "Draconic" then 
                        openshop(k, Vector3.new(6429, 2442, 10858))
                    elseif ppo == "Depths" then 
                        openshop(k, Vector3.new(4263, -40, -641))
                    elseif ppo == "Sky" then 
                        openshop(k, Vector3.new(-1863, 1006, -1420))
                    elseif ppo == "Athenia" then 
                        openshop(k, Vector3.new(-5382, 4, 171))
                    elseif ppo == "Rebirth Hub" then 
                        openshop(k, Vector3.new(2897, -7, 3057))
                    elseif ppo == "Slave Mines" then 
                        openshop(k, Vector3.new(95, 381, 5632))
                    end 
                end 
            end 
        end 
    end 
})

section7:AddSearchBox({
    Name = "Select Shop", 
    Nothing = "Nothing",
    List = {"Draconic", "Depths", "Sky", "Athenia", "Rebirth Hub", "Slave Mines", "Beginner", "Armor", "Village"},
    Flag = "SHOP",
    Callback = function(selected)
        ppo = selected 
    end 
})

section8:AddButton({
    Name = "Teleport To Area",
    Callback = function()
        if ppp == "Citadel" then 
            hrp.CFrame = CFrame.new(6277, 2405, 10929)
        elseif ppp == "CitadelLeft" then 
            hrp.CFrame = CFrame.new(6386, 2423, 10372)
        elseif ppp == "CitadelRight" then 
            hrp.CFrame = CFrame.new(6728, 2402, 11584)
        elseif ppp == "CitadelFront" then 
            hrp.CFrame = CFrame.new(7232, 2428, 10952)
        elseif ppp == "Sky Island" then 
            hrp.CFrame = CFrame.new(-758, 391, -1716)
        elseif ppp == "Rebirth Portals" then 
            hrp.CFrame = CFrame.new(109, 2, -624)
        elseif ppp == "Hub Of Rebirth" then 
            hrp.CFrame = CFrame.new(2872, -11, 3095)
        elseif ppp == "Slave Mines" then 
            hrp.CFrame = CFrame.new(164, 378, 5674)
        elseif ppp == "Athenia" then 
            hrp.CFrame = CFrame.new(-5323, -1, 27)
        elseif ppp == "Hall Of Time" then 
            hrp.CFrame = CFrame.new(-5063, 700, 4447)
        elseif ppp == "Tarnished Realm" then 
            hrp.CFrame = CFrame.new(-5062, 683, 3419)
        elseif ppp == "The Depths" then 
            hrp.CFrame = CFrame.new(4149, 411, -527)
        elseif ppp == "Sea Prison" then 
            hrp.CFrame = CFrame.new(5221, 401, 1584)
        end 
    end 
})

section8:AddSearchBox({
    Name = "Select Area", 
    Nothing = "Nothing",
    List = {"Citadel", "Rebirth Portals", "The Depths", "Sea Prison", "CitadelLeft", "CitadelRight", "CitadelFront", "Tarnished Realm", "Hall Of Time", "Athenia", "Slave Mines", "Hub Of Rebirth", "Sky Island"},
    Sort = true,
    Callback = function(selected)
        ppp = selected 
    end 
})

section9:AddToggle({
    Name = "Noclip", 
    Value = false, 
    Flag = "NOCLIP", 
    Callback = function(state)
        lmnn = state 
    end 
})

section9:AddToggle({
    Name = "Toggle Walkspeed", 
    Value = false, 
    Callback = function(state)
        kkkk = state 
        while kkkk and task.wait() do 
            hum.WalkSpeed = clk
        end 
    end 
})

section9:NewSlider({
    Name = "WalkSpeed", 
    Value = 16, 
    Min = 16, 
    Max = 250, 
    Callback = function(value)
        clk = value 
    end 
})

section9:AddToggle({
    Name = "Remove Lighting Tints", 
    Value = false, 
    Flag = "TINTS",
    Callback = function(state)
        ttr = state 
        while ttr and task.wait() do 
            for i,v in pairs(game:GetService("Lighting"):GetChildren()) do 
                v:Destroy()
            end 
        end 
    end 
})

section9:AddToggle({
    Name = "Infinite Fly Time", 
    Flag = "FLYTIME", 
    Value = false, 
    Callback = function(state)
        pimn = state 
        while pimn and task.wait() do 
            pcall(function()
                if hrp:FindFirstChild("BodyVelocity") then 
                    hrp.BodyVelocity.Velocity = Vector3.new(0, 50, 0)
                end 
            end) 
        end 
    end 
})

section10:AddButton({
    Name = "Hook Next Remote", 
    Callback = function() 
        hooktoggle = true 
    end 
})

section10:AddToggle({
    Name = "Spam Hooked Remote", 
    Value = false, 
    Flag = "SPAM", 
    Callback = function(state)
        qr = state 
        while qr and task.wait((ppoirn or .1)) do 
            pcall(function()
                game:GetService("Players").LocalPlayer.Character.Combat.RemoteEvent:FireServer(table.unpack(table69))
            end) 
        end 
    end 
})

section10:AddSlider({
    Name = "Spam Speed", 
    Value = .1, 
    Min = .1, 
    Max = 5, 
    Precision = 1,
    Callback = function(amount)
        ppoirn = amount 
    end 
})

local childadded
local enabledd = false

section9:AddButton({
    Name = "Webhook Notify Items", 
    Callback = function()
        if enabledd == false then 
            enabledd = true 
            lib.Notify({
                Text = "Webhook Enabled"
            })          
            childadded = plr.PlayerGui.Interface.Container.Inventory.Items.ChildAdded:Connect(function(child)
                for i,v in pairs(child:WaitForChild("ViewportFrame"):GetChildren()) do 
                    if v.Name ~= "Camera" then
                        for i1,v1 in pairs(child:GetChildren()) do 
                            if (not string.find(v1.Name, "UI")) and (not string.find(v1.Name, "Viewport")) then 
                                sendmsg("Collected : "..v.Name.." | Rarity : "..v1.Name, tonumber(0xff0000))
                            end 
                        end 
                    end 
                end 
            end) 
        elseif enabledd then
            enabledd = false
            lib.Notify({
                Text = "Webhook Disabled"
            })
            childadded:Disconnect()
        end 
    end 
})

section9:AddTextBox({
    Name = "WEBHOOK URL", 
    Callback = function(typed)
        web = typed 
    end 
})

section11:AddToggle({
    Name = "Auto Store Levels", 
    Value = false, 
    Callback = function(state)
        mid = state 
        while mid and task.wait(5) do 
            if playerlvl() >= tonumber(pcal) then 
                plr.PlayerGui.Interface.LevelStow.Custom.Text = playerlvl() * tostring("0."..deez)
                firetouchinterest(hrp, game:GetService("Workspace").AncestralAltar.Brazier, 0)
                wait()
                firetouchinterest(hrp, game:GetService("Workspace").AncestralAltar.Brazier, 1)
                wait(.1)
                mousemoveabs(830, 670)
                wait(.1)
                mouse1click()
            end 
        end 
    end 
})

section11:AddTextBox({
    Name = "Level To Store At", 
    Callback = function(text)
        pcal = text
    end
})

section11:AddSlider({
    Name = "% To Store",
    Value = 1, 
    Min = 1,
    Max = 99, 
    Callback = function(slide)
        deez = slide 
    end 
})

lib.Notify({
    Text = "Nothing = Something Is Selected"
})

game:GetService("RunService").Stepped:Connect(function()
    if lmnn or ll then 
        for i,v in pairs(cha:GetDescendants()) do 
            if v:IsA("BasePart") and v.CanCollide then 
                v.CanCollide = false 
            end 
        end 
    end 
    if ll then 
        hrp.Velocity = Vector3.new(0, 0, 0)
    end 
end)

local oldnc 
oldnc = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    if hooktoggle and tostring(self.Name) == "RemoteEvent" then 
        table69 = {}
        for i,v in ipairs(args) do 
            table.insert(table69, v)
        end 
        hooktoggle = false 
        return self.FireServer(self, unpack(args))
    end
    return oldnc(self, ...)
end)

for i,v in pairs(getconnections(plr.Idled)) do 
    v:Disable()
end 

for i,v in pairs(game:GetService("ReplicatedStorage").UnloadedMaps:GetChildren()) do 
    v.Parent = game.Workspace.Maps 
end

for i,v in pairs(game:GetService("ReplicatedStorage").UnloadedEnemies:GetChildren()) do 
    v.Parent = game.Workspace.NPCs
end