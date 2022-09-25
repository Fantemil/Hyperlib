repeat wait() until game:IsLoaded() 

local lib = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)()
local wait = lib.subs.Wait 
local plr = game.Players.LocalPlayer
local cha = plr.Character or plr.CharacterAdded:Wait()
local hrp = cha:WaitForChild("HumanoidRootPart")
local hum = cha:WaitForChild("Humanoid")
local x = require(game:GetService("ReplicatedStorage").WeaponData)
local types = {"SFOTH", "Sword", "Club", "Longsword", "Katana", "Axe", "Spear", "Domini", "Knife", "Aguman", "Trident", "Mallet", "Blade", "Gauntlets", "Lance", "Scythe", "Twin Blade", "Greatsword", "Falchion", "Fans", "Claws"}
local request = http_request or request or HttpPost or syn.request
local senv = getsenv(plr.PlayerScripts.Client)
local hooked = {}
_G.Weapon = nil 
_G.WeaponType = nil 
_G.WeaponM1 = nil
local queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)

if game:GetService("ReplicatedStorage"):WaitForChild("UnloadedMaps") then 
    for i,v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("UnloadedMaps"):GetChildren()) do 
        v.Parent = game.Workspace.Maps 
    end 
end

if game:GetService("ReplicatedStorage"):WaitForChild("UnloadedEnemies") then 
    for i,v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("UnloadedEnemies"):GetChildren()) do 
        v.Parent = game.Workspace.NPCs
    end 
end

plr.OnTeleport:Connect(function(state)
 if state == Enum.TeleportState.Started then
  if queueteleport then
   queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/Novaz5792/Unknown/main/SHADOVIS'))()")
  end
 end
end)

plr.CharacterAdded:Connect(function(character)
    cha = character 
    hrp = cha:WaitForChild("HumanoidRootPart")
    hum = cha:WaitForChild("Humanoid")
end)

if game:GetService("Workspace"):FindFirstChild("Stuff") then 
    game:GetService("Workspace").Stuff:Destroy()
    wait(1)
    local folder = Instance.new("Folder")
    folder.Parent = game:GetService("Workspace")
    folder.Name = "Stuff"
else 
    local folder = Instance.new("Folder")
    folder.Parent = game:GetService("Workspace")
    folder.Name = "Stuff"
end 

local drops = {} 

for i,v in pairs(x) do 
    if (not table.find(drops, i)) then 
        table.insert(drops, i)
        table.sort(drops)
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

local oldmt 
oldmt = hookmetamethod(game, "__index", function(self, index)
    if self == hum and index == ("WalkSpeed" or "JumpPower") then
        return 16
    end 
    return oldmt(self, index)
end)

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

local function touch(thing, position)
    if (thing.Position - position).Magnitude < 10 then  
        firetouchinterest(hrp, thing, 0)
        wait() 
        firetouchinterest(hrp, thing, 1)
    end
end 

local function getclosestmob(range) 
    local closest = nil 
    local maxdist = math.huge
    for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do 
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
    local atable = {} 
    for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do 
        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then 
            local distance = (v.HumanoidRootPart.Position - hrp.Position).Magnitude 
            if distance < (range or 15) then 
                table.insert(atable, v.HumanoidRootPart)
            end 
        end 
    end 
    return atable
end 

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
        Info = {"Kalas A Skid", "Part Of Equip Thing By Kalas"},
        Credit = false, 
        Background = "",
        Visible = true
    }
})

local main1 = window:CreateTab({
    Name = "Main"
})

local main2 = window:CreateTab({
    Name = "Raid"
})

local mainsec1 = main2:CreateSection({
    Name = "Raid Stuff"
})

local section1 = main1:CreateSection({
    Name = "Auto Farm"
})

local section2 = main1:CreateSection({
    Name = "Kill Aura", 
    Side = "Right"
})

local section3 = main1:CreateSection({
    Name = "Main"
})

local section4 = main1:CreateSection({
    Name = "Items", 
    Side = "Right"
})

local section5 = main1:CreateSection({
    Name = "Platform", 
    Side = "Right"
})

local fsection2 = main1:CreateSection({
    Name = "Misc", 
    Side = "Right"
})

local section6 = main1:CreateSection({
    Name = "Settings", 
    Side = "Right"
})

local section7 = main1:CreateSection({
    Name = "Auto Skill (Hook)"
})

local section8 = main1:CreateSection({
    Name = "Teleports"
})

local persistence = section6:AddPersistence({
    Name = "Load/Save Config"
})

local fsection1 = main1:CreateSection({
    Name = "Level Stuff"
})

section1:AddToggle({
    Name = "Auto Farm", 
    Value = false, 
    Flag = "AF", 
    Callback = function(state) a = state 
        while a do
            for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do 
                local var = string.split(v.Name, "Lv") 
                if table.find((b or {}), var[1]) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then 
                    if c == "Above/Below" then 
                        hrp.CFrame = v.HumanoidRootPart.CFrame + Vector3.new(0, d, 0)
                    elseif c == "Behind/Infront" then 
                        hrp.CFrame = v.HumanoidRootPart.CFrame + v.HumanoidRootPart.CFrame.lookVector * d 
                    else 
                        hrp.CFrame = v.HumanoidRootPart.CFrame
                    end 
                end 
            end 
            task.wait()
        end 
    end 
})

section1:AddButton({
    Name = "Teleport To NPC", 
    Callback = function()
        for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do 
            local var = string.split(v.Name, "Lv") 
            if table.find((b or {}), var[1]) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then 
                hrp.CFrame = v.HumanoidRootPart.CFrame 
            end 
        end 
    end 
})

section1:AddSearchBox({
    Name = "Select NPC", 
    List = enemies, 
    Multi = true,
    Flag = "SNPC",
    Callback = function(selected) 
        b = selected  
    end
})

section1:AddDropdown({
    Name = "Select Position", 
    List = {"Above/Below", "Behind/Infront"}, 
    Flag = "SP", 
    Nothing = "Select...",
    Callback = function(selected)
        c = selected 
    end 
})

section1:AddSlider({
    Name = "Position Distance", 
    Value = 5, 
    Min = -50, 
    Max = 50, 
    Flag = "PD",
    Callback = function(value)
        d = value 
    end 
})

section2:AddToggle({
    Name = "Kill Aura", 
    Value = false, 
    Flag = "KA", 
    Callback = function(state) e = state
        while e do 
            if getallnearby(f) ~= 0 then 
                for i,v in pairs(getallnearby(f)) do 
                    cha.Combat.RemoteEvent:FireServer("Input", _G.Weapon, math.random, _G.WeaponM1, v)
                end 
            end 
            task.wait((g or .1))
        end 
    end 
})

section2:AddSlider({
    Name = "Kill Aura Range", 
    Value = 25, 
    Min = 5, 
    Max = 100, 
    Flag = "KAR", 
    Callback = function(value)
        f = value 
    end 
})

section2:AddSlider({
    Name = "Kill Aura Speed", 
    Value = 0.1,
    Min = 0.1, 
    Max = 1, 
    Precise = 1, 
    Flag = "KAS", 
    Callback = function(value)
        g = value 
    end 
})

section3:AddToggle({
    Name = "Auto Rebirth", 
    Value = false, 
    Flag = "AR", 
    Callback = function(state) h = state
        while h do 
            if game:GetService("ReplicatedStorage"):FindFirstChild("RemoteEvent") then 
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Rebirth")
            end 
            task.wait(1)
        end 
    end 
})

section3:AddToggle({
    Name = "Auto Offering", 
    Value = false, 
    Flag = "AO", 
    Callback = function(state) i = state 
        while i do 
            if game:GetService("ReplicatedStorage"):FindFirstChild("RemoteEvent") then 
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer("ClaimOffering")
            end 
            task.wait(1)
        end 
    end 
})

section3:AddToggle({
    Name = "Auto Collect Cubits",
    Value = false, 
    Flag = "ACC", 
    Callback = function(state) j = state 
        while j do 
            for i,v in pairs(game:GetService("Workspace").Projectiles:GetChildren()) do 
                if v.Name == "Cubit" then 
                    for i1,v1 in pairs(v:GetChildren()) do 
                        if v1.Name ~= "Highlight" then 
                            fireproximityprompt(v1)
                        end 
                    end 
                end
            end 
            for i,v in pairs(game:GetService("Workspace")["Client Cubits"]:GetChildren()) do 
                if v.Name == "Cubit" then 
                    for i1,v1 in pairs(v:GetChildren()) do 
                        if v1.Name ~= "Highlight" then 
                            fireproximityprompt(v1)
                        end 
                    end 
                end 
            end 
            task.wait(1)
        end 
    end 
})

section3:AddToggle({
    Name = "Knight Amulet Godmode", 
    Value = false, 
    Flag = "GODMODEKNIGHT", 
    Callback = function(state) aa = state 
        while aa do 
            game:GetService("Players").LocalPlayer.Character.Combat.RemoteEvent:FireServer("Input", "Heavy KnightForgotten Knight Amulet", math.random, "Evade")
            task.wait(.1)
        end 
    end 
})

section3:AddToggle({
    Name = "Block Godmode", 
    Value = false, 
    Flag = "BGM", 
    Callback = function(state) qp = state 
        while qp do 
            for i,v in pairs(game.Players.LocalPlayer.Character.Equipment:GetChildren()) do 
                if x[v.Name] and game:GetService("ReplicatedStorage").CombatData:FindFirstChild(x[v.Name].Type) then
                    local req = require(game:GetService("ReplicatedStorage").CombatData[x[v.Name].Type])
                    for i1,v1 in pairs(debug.getconstants(req)) do 
                        if v1 == "Block" then 
                            cha.Combat.RemoteEvent:FireServer("Input", v.Name, math.random, "Block")
                        end 
                    end 
                end 
            end 
            task.wait(.1)
        end 
    end 
})

section3:AddToggle({
    Name = "Infinite Ozymandias", 
    Value = false, 
    Flag = "IO", 
    Callback = function(state) k = state
        while k do 
            if table.find((l or {}), "Cerulean") then 
                cha.Combat.RemoteEvent:FireServer("Input", "OzymandiasCerulean Ozymandias", math.random, "Excel")
            end 
            if table.find((l or {}), "Crimson") then 
                cha.Combat.RemoteEvent:FireServer("Input", "OzymandiasCrimson Ozymandias", math.random, "Excel")
            end 
            if table.find((l or {}), "Wicked") then 
                cha.Combat.RemoteEvent:FireServer("Input", "OzymandiasWicked Ozymandias", math.random, "Excel")
            end 
            task.wait(.7)
        end 
    end 
})

section3:AddDropdown({
    Name = "Select Ozymandias(s)", 
    Multi = true, 
    List = {"Crimson", "Cerulean", "Wicked"}, 
    Flag = "SO",
    Callback = function(selected)
        l = selected 
    end 
})

section3:AddButton({
    Name = "Open Selected Shop",
    Callback = function()
        for i,v in pairs(game:GetService("Workspace").Stores:GetChildren()) do 
            for i1,v1 in pairs(v:GetChildren()) do 
                if v1:FindFirstChild("TouchInterest") then 
                    if qr == "Armor" then 
                        touch(v1, Vector3.new(-190, 35, -545))
                    elseif qr == "Beginner" then
                        touch(v1, Vector3.new(-41, 4, -591))
                    elseif qr == "Village" then 
                        touch(v1, Vector3.new(42, 12, -1000))
                    elseif qr == "Draconic" then 
                        touch(v1, Vector3.new(6430, 2442, 10858))
                    elseif qr == "Depths" then 
                        touch(v1, Vector3.new(4263, -40, -641))
                    elseif qr == "Sky" then 
                        touch(v1, Vector3.new(-1863, 1006, -1420))
                    elseif qr == "Athenia" then 
                        touch(v1, Vector3.new(-5382, 4, 171))
                    elseif qr == "Rebirth Hub" then 
                        touch(v1, Vector3.new(2897, -6, 3057))
                    elseif qr == "Slave Mines" then 
                        touch(v1, Vector3.new(95, 382, 5632))
                    end 
                end 
            end 
        end 
    end 
})

section3:AddDropdown({
    Name = "Select Shop", 
    List = {"Draconic", "Depths", "Sky", "Athenia", "Rebirth Hub", "Slave Mines", "Beginner", "Armor", "Village"}, 
    Nothing = "Select...",
    Flag = "SHOP", 
    Callback = function(selected)
        qr = selected 
    end 
})

section4:AddToggle({
    Name = "Auto Collect Items", 
    Value = false, 
    Flag = "ACI", 
    Callback = function(state) m = state
        while m do 
            for i,v in pairs(game:GetService("Workspace").Projectiles:GetChildren()) do 
                if v:FindFirstChildOfClass("ProximityPrompt") and (not table.find((n or {}), v.Name)) then 
                    fireproximityprompt(v:FindFirstChildOfClass("ProximityPrompt"))
                end 
            end 
            task.wait(.1)
        end 
    end 
})

section4:AddSearchBox({
    Name = "Blacklist Items", 
    Nothing = "Select...", 
    List = drops, 
    Flag = "BI", 
    Multi = true, 
    Callback = function(selected) 
        n = selected 
    end 
})

section4:AddToggle({
    Name = "Webhook Notify Items",
    Value = false, 
    Flag = "WNI", 
    Callback = function(state) 
        tog = state 
    end 
})

plr.PlayerGui.Interface.Container.Inventory.Items.ChildAdded:Connect(function(child)
    if tog then 
        for i,v in pairs(child:WaitForChild("ViewportFrame"):GetChildren()) do 
            if v.Name ~= "Camera" then
                for i1,v1 in pairs(child:GetChildren()) do 
                    if (not string.find(v1.Name, "UI")) and (not string.find(v1.Name, "Viewport")) then 
                        sendmsg("Collected : "..v.Name.." | Rarity : "..v1.Name, tonumber(0xff0000))
                    end 
                end 
            end 
        end 
    end 
end) 

section4:AddTextBox({
    Name = "Enter Webhook", 
    Callback = function(text)
        web = text 
    end 
})

section5:AddToggle({
    Name = "Loop TP To Newest Platform", 
    Value = false, 
    Flag = "LTTNP", 
    Callback = function(state) o = state 
        while o do 
            if game:GetService("Workspace"):WaitForChild("Stuff") then 
                local num = 0 
                local chosen = nil 
                for i,v in ipairs(game:GetService("Workspace").Stuff:GetChildren()) do 
                    local su = v.Name:sub(-1)
                    if tonumber(su) > num then 
                        chosen = v 
                        num = tonumber(su) 
                    end 
                end 
                if chosen ~= nil and (chosen.Position - hrp.Position).Magnitude > 12.5 then 
                    hrp.CFrame = chosen.CFrame + Vector3.new(0, 4, 0)
                end 
            end 
            task.wait((q or .1))
        end 
    end 
})

local current = 1 

section5:AddToggle({
    Name = "Loop TP To Platforms (Order)", 
    Value = false, 
    Flag = "LTTPO", 
    Callback = function(state) p = state 
        while p do
            if game:GetService("Workspace"):FindFirstChild("Stuff") then 
                if game:GetService("Workspace").Stuff:GetChildren()[current] then 
                    hrp.CFrame = game:GetService("Workspace").Stuff:GetChildren()[current].CFrame + Vector3.new(0, 4, 0)
                    current = current + 1 
                else 
                    current = 1 
                end 
            end 
            task.wait((q or 1))
        end 
    end 
})

section5:AddSlider({
    Name = "Teleport Speed", 
    Value = 1,
    Min = .1, 
    Max = 10,
    Precise = 1, 
    Flag = "TS", 
    Callback = function(state) 
        q = state 
    end 
})

section5:AddButton({
    Name = "Teleport To Newest Platform", 
    Callback = function()
        if game:GetService("Workspace"):WaitForChild("Stuff") then 
            local num = 0 
            local chosen = nil 
            for i,v in ipairs(game:GetService("Workspace").Stuff:GetChildren()) do 
                local su = v.Name:sub(-1)
                if tonumber(su) > num then 
                    chosen = v 
                    num = tonumber(su) 
                end 
            end 
            if chosen ~= nil then 
                hrp.CFrame = chosen.CFrame + Vector3.new(0, 4, 0)
            end 
        end 
    end 
})

section5:AddButton({
    Name = "Create Platform", 
    Callback = function()
        local instance = Instance.new("Part")
        instance.Size = Vector3.new(25, 1, 25) 
        instance.Anchored = true 
        instance.CFrame = CFrame.new(hrp.Position - Vector3.new(0, 3, 0))
        instance.Parent = game:GetService("Workspace"):WaitForChild("Stuff")
        instance.Name = "Part"..tostring(#game:GetService("Workspace").Stuff:GetChildren())
    end 
})

section5:AddButton({
    Name = "Delete Newest Platform", 
    Callback = function()
        if game:GetService("Workspace"):WaitForChild("Stuff") then 
            local num = 0 
            local chosen = nil 
            for i,v in ipairs(game:GetService("Workspace").Stuff:GetChildren()) do 
                local su = v.Name:sub(-1)
                if tonumber(su) > num then 
                    chosen = v 
                    num = tonumber(su) 
                end 
            end 
            if chosen ~= nil then 
                chosen:Destroy()
            end 
        end 
    end 
})

local enabled = false 

section7:AddButton({
    Name = "Hook Next Remote", 
    Callback = function()
        enabled = true 
    end 
})

section7:AddToggle({
    Name = "Spam Hooked Remote", 
    Value = false, 
    Flag = "SHR", 
    Keybind = {
        Mode = "Toggle", 
        Flag = "KEYBIND",
        Callback = function(state) 
            r = state 
        end 
    },
    Callback = function(state) r = state
        while r do 
            cha.Combat.RemoteEvent:FireServer(table.unpack((kk or {})))
            task.wait((z or .1))
        end 
    end 
})

section7:AddSlider({
    Name = "Spam Speed", 
    Value = .1, 
    Min = .1, 
    Max = 5, 
    Precise = 1, 
    Flag = "SS", 
    Callback = function(value)
        z = value 
    end 
})

local drop = section7:AddDropdown({
    Name = "Select Hooked",
    List = {hooked}, 
    Flag = "SH",
    Callback = function(selected)
        kk = selected 
    end 
})

fsection1:AddToggle({
    Name = "Auto Store Levels", 
    Value = false, 
    Flag = "ASL", 
    Callback = function(state) mm = state
        while mm do 
            if playerlvl() >= tonumber((bb or math.huge)) then 
                plr.PlayerGui.Interface.LevelStow.Custom.Text = playerlvl() * tostring("0."..nn)
                firetouchinterest(hrp, game:GetService("Workspace").AncestralAltar.Brazier, 0)
                wait()
                firetouchinterest(hrp, game:GetService("Workspace").AncestralAltar.Brazier, 1)
                wait(.1)
                mousemoveabs(830, 670)
                wait(.5)
                mouse1click()
            end 
            task.wait()
        end
    end 
})

fsection1:AddSlider({
    Name = "% To Store", 
    Value = 10, 
    Min = 1, 
    Max = 99, 
    Flag = "%TS", 
    Callback = function(value)
        nn = value 
    end 
})

fsection1:AddTextBox({
    Name = "Level To Store At",
    Flag = "LTSA",
    Callback = function(text)
        bb = text 
    end 
})

fsection2:AddToggle({
    Name = "Noclip", 
    Value = false,
    Flag = "NC",
    Callback = function(state)
        mn = state 
    end 
})

fsection2:AddToggle({
    Name = "WalkSpeed Toggle", 
    Value = false, 
    Flag = "WST", 
    Callback = function(state) nbv = state 
        while nbv do 
            hum.WalkSpeed = kl
            task.wait()
        end 
    end 
})

fsection2:AddSlider({
    Name = "WalkSpeed",
    Value = 16,
    Min = 16, 
    Max = 500, 
    Flag = "WS", 
    Callback = function(value) 
        kl = value 
    end 
})

fsection2:AddToggle({
    Name = "Remove Lighting Tints",
    Value = false, 
    Flag = "RLT",
    Callback = function(state) bfg = state 
        while bfg do 
            for i,v in pairs(game:GetService("Lighting"):GetChildren()) do 
                v:Destroy()
            end 
            task.wait(.1)
        end 
    end 
})

fsection2:AddToggle({
    Name = "Infinite Fly", 
    Value = false, 
    Flag = "IF", 
    Callback = function(state) qq = state 
        while qq do 
            if hrp:WaitForChild("BodyVelocity") and hrp:WaitForChild("BodyVelocity").Velocity.Y < 0 then 
                hrp:WaitForChild("BodyVelocity").Velocity = Vector3.new(0, math.floor(math.abs(hrp:WaitForChild("BodyVelocity").Velocity.Y) * 1.5 + 0.5), 0)
            end 
            task.wait()
        end 
    end 
})

fsection2:AddToggle({
    Name = "Hide Projectiles (No Lag)", 
    Value = false, 
    Flag = "HPNL", 
    Callback = function(state)
        rn = state 
    end 
})

fsection2:AddButton({
    Name = "Load Clothing", 
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

section8:AddDropdown({
    Name = "Select Area", 
    Nothing = "Nothing",
    List = {"Citadel", "Rebirth Portals", "The Depths", "Sea Prison", "CitadelLeft", "CitadelRight", "CitadelFront", "Tarnished Realm", "Hall Of Time", "Athenia", "Slave Mines", "Hub Of Rebirth", "Sky Island"},
    Sort = true,
    Callback = function(selected)
        ppp = selected 
    end 
})

mainsec1:AddToggle({
    Name = "Auto Join Raid", 
    Value = false, 
    Flag = "AJR", 
    Callback = function(state) ut = state 
        while ut do 
            if (not game:GetService("Workspace"):FindFirstChild("Cutscenes")) then 
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer("StartRaid", "Banland")
            end
            task.wait(60)
        end 
    end 
})

mainsec1:AddToggle({
    Name = "Auto Farm Raid", 
    Value = false, 
    Flag = "AFR", 
    Callback = function(state) it = state 
        while it do 
            if getclosestmob() ~= nil then 
                hrp.CFrame = getclosestmob().HumanoidRootPart.CFrame + Vector3.new(0, 5, 0)
            end 
            if plr.PlayerGui.Interface:FindFirstChild("TextLabel") then 
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer("StartRaid", "Banland")
                task.wait(15)
            end 
            task.wait()    
        end 
    end 
})

mainsec1:AddToggle({
    Name = "Auto Equip Weapon (Skill)", 
    Value = false, 
    Flag = "AEWS", 
    Callback = function(state) klg = state 
        while klg do 
            if table.find((ppmr or {}), "Holy Charm F") then 
                for i,v in pairs(debug.getupvalues(senv.IncrementInventory)[2]["Inventory"]) do 
                    if type(v) == "table" and v[1] == "Holy Charm" then 
                        game:GetService("ReplicatedStorage").RemoteEvent:FireServer("ChangeEquipment", i)
                        task.wait(6)
                    end 
                end 
            end 
            if table.find((ppmr or {}), "Aurelion Hood F") then 
                for i,v in pairs(debug.getupvalues(senv.IncrementInventory)[2]["Inventory"]) do 
                    if type(v) == "table" and v[1] == "Aurelion Hood" then 
                        game:GetService("ReplicatedStorage").RemoteEvent:FireServer("ChangeEquipment", i)
                        task.wait(6)
                    end 
                end 
            end 
            if table.find((ppmr or {}), "Judgement Blade R") then 
                for i,v in pairs(debug.getupvalues(senv.IncrementInventory)[2]["Inventory"]) do 
                    if type(v) == "table" and v[1] == "Judgement Blade" then 
                        game:GetService("ReplicatedStorage").RemoteEvent:FireServer("ChangeEquipment", i)
                        task.wait(6)
                    end 
                end 
            end 
            if table.find((ppmr or {}), "Aurelion Hood R") then 
                for i,v in pairs(debug.getupvalues(senv.IncrementInventory)[2]["Inventory"]) do 
                    if type(v) == "table" and v[1] == "Aurelion Hood" then 
                        game:GetService("ReplicatedStorage").RemoteEvent:FireServer("ChangeEquipment", i)
                        task.wait(6)
                    end 
                end 
            end 
            if table.find((ppmr or {}), "Inferno Charm F") then 
                for i,v in pairs(debug.getupvalues(senv.IncrementInventory)[2]["Inventory"]) do 
                    if type(v) == "table" and v[1] == "Inferno Charm" then 
                        game:GetService("ReplicatedStorage").RemoteEvent:FireServer("ChangeEquipment", i)
                        task.wait(6)
                    end 
                end 
            end 
            if table.find((ppmr or {}), "Solar Staff M1") then 
                for i,v in pairs(debug.getupvalues(senv.IncrementInventory)[2]["Inventory"]) do 
                    if type(v) == "table" and v[1] == "Solar Staff" then 
                        game:GetService("ReplicatedStorage").RemoteEvent:FireServer("ChangeEquipment", i)
                        task.wait(6)
                    end 
                end 
            end 
            if table.find((ppmr or {}), "Darkmatter Fists Smash") then 
                for i,v in pairs(debug.getupvalues(senv.IncrementInventory)[2]["Inventory"]) do 
                    if type(v) == "table" and v[1] == "Darkmatter Fists" then 
                        game:GetService("ReplicatedStorage").RemoteEvent:FireServer("ChangeEquipment", i)
                        task.wait(6)
                    end 
                end 
            end 
            task.wait()
        end 
    end 
})

mainsec1:AddToggle({
    Name = "Spam Selected Skill", 
    Value = false, 
    Flag = "SSS", 
    Callback = function(state) tn = state 
        while tn do 
            if getclosestmob() ~= nil then 
                if table.find((ppmr or {}), "Holy Charm F") then 
                    game:GetService("Players").LocalPlayer.Character.Combat.RemoteEvent:FireServer("Input", "HolyHoly Charm", math.random, "Meteor")
                end 
                if table.find((ppmr or {}), "Aurelion Hood F") then 
                    game:GetService("Players").LocalPlayer.Character.Combat.RemoteEvent:FireServer("Input", "AureusAurelion Hood", math.random, "Darkness")
                end 
                if table.find((ppmr or {}), "Judgement Blade R") then 
                    game:GetService("Players").LocalPlayer.Character.Combat.RemoteEvent:FireServer("Input", "EmpyreusJudgement Blade", math.random, "Cast")
                end 
                if table.find((ppmr or {}), "Aurelion Hood R") then 
                    game:GetService("Players").LocalPlayer.Character.Combat.RemoteEvent:FireServer("Input", "AureusAurelion Hood", math.random, "Enroot")
                end 
                if table.find((ppmr or {}), "Inferno Charm F") then 
                    game:GetService("Players").LocalPlayer.Character.Combat.RemoteEvent:FireServer("Input", "InfernoInferno Charm", math.random, "Stormage")
                end 
                if table.find((ppmr or {}), "Solar Staff M1") then 
                    game:GetService("Players").LocalPlayer.Character.Combat.RemoteEvent:FireServer("Input", "Solar Staff", math.random, "Annihilate", getclosestmob().HumanoidRootPart.Position)
                end 
                if table.find((ppmr or {}), "Darkmatter Fists Smash") then 
                    game:GetService("Players").LocalPlayer.Character.Combat.RemoteEvent:FireServer("Input", "MatterDarkmatter Fists", math.random, "Pound")
                end 
            end 
            task.wait(#(ppmr or {}) * .25)
        end 
    end 
})

game:GetService("RunService").RenderStepped:Connect(function()
    if (mmn or r or tn or rn) then 
        for i,v in pairs(game:GetService("Workspace"):WaitForChild("Projectiles"):GetChildren()) do 
            if v:IsA("BasePart") then 
                v.Transparency = 1
            end 
        end 
    end 
end)

mainsec1:AddDropdown({
    Name = "Select Skill(s) To Spam", 
    Nothing = "Select...", 
    Multi = true,
    List = {"Holy Charm F", "Aurelion Hood F", "Judgement Blade R", "Aurelion Hood R", "Inferno Charm F", "Solar Staff M1", "Darkmatter Fists Smash"},
    Callback = function(selected) 
        ppmr = selected 
    end 
})

game:GetService("RunService").Stepped:Connect(function()
    if mn then 
        for i,v in pairs(cha:GetDescendants()) do 
            if v:IsA("BasePart") and v.CanCollide then 
                v.CanCollide = false 
            end 
        end 
    end 
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if (a or it) then  
        for i,v in pairs(cha:GetDescendants()) do 
            if v:IsA("BasePart") and v.CanCollide then 
                v.CanCollide = false 
            end 
        end 
        hrp.Velocity = Vector3.new(0, -1, 0)
    end
end) 

local oldnc 
oldnc = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    if enabled and (not checkcaller()) and tostring(self.Name) == "RemoteEvent" then 
        hooked = {} 
        for i,v in ipairs(args) do
            table.insert(hooked, v)
        end
        drop:UpdateList({
            List = hooked
        })
        enabled = false
        return self.FireServer(self, unpack(args)) 
    end 
    return oldnc(self, ...)
end)

lib.Notify({
    Text = "Nothing = Something Is Selected"
})

for i,v in pairs(getconnections(plr.Idled)) do 
    v:Disable()
end 

wait(1)

persistence:LoadFile("Main")

wait(1)

pcall(function()
    while wait(.5) do 
        persistence:SaveFile("Main")
    end 
end)