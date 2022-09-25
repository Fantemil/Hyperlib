local Title = "Anime Worlds Simulator"

for i,v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v.Name == Title then
        v:Destroy()
    end
end

local Run = game:GetService("RunService")

local localplayer = game:GetService("Players").LocalPlayer
local character = localplayer.Character or localplayer.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")

game:GetService("ReplicatedStorage").Remotes.Events.ChangeSetting:FireServer("AutoPlant", true)
game:GetService("ReplicatedStorage").Remotes.Events.ChangeSetting:FireServer("AutoFeed", true)
game:GetService("ReplicatedStorage").Remotes.Events.ChangeSetting:FireServer("AutoMerge", true)
game:GetService("ReplicatedStorage").Remotes.Events.ChangeSetting:FireServer("AutoEquip", true)

getgenv().Target = "Hoshi"
getgenv().Mode = "Mob"
--getgenv().Zone = "Mellow Meadows"
getgenv().Enabled = false
getgenv().AutoHatch = false
getgenv().BushSize = false
getgenv().Orb = "Z1Orb"
getgenv().AutoPlace = false

local mobTable = {}
local zoneTable = {}

for i,v in pairs(workspace.Zones:GetChildren()) do
    table.insert(zoneTable, v.Name)
end

local function refreshEnemies()
    table.clear(mobTable)
    
    for i,v in pairs(workspace.Enemies:GetChildren()) do
        if not table.find(mobTable, (v.Name:split("_"))[2]) then
            table.insert(mobTable, (v.Name:split("_"))[2])
        end
    end
    
    return mobTable
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new(Title, 5013109572)

local autoFarmPage = venyx:addPage("Farming")
local miscPage = venyx:addPage("Misc")
local lpPage = venyx:addPage("Local Player")

local section1 = autoFarmPage:addSection("Auto-Farm")
local section2 = lpPage:addSection("Physics")
local section3 = miscPage:addSection("Misc")

local edit2 = section1:addToggle("Auto-Farm Enabled", false, function(value)
    getgenv().Enabled = value
end)

section1:addDropdown("Bush Size", {"BigBoi", "Smol"}, function(value)
    getgenv().BushSize = value
    
    section1:updateToggle(edit2, "Auto-Farm Enabled", false)
    getgenv().Enabled = false
    task.wait(0.1)
    section1:updateToggle(edit2, "Auto-Farm Enabled", true)
    getgenv().Enabled = true
    
end)

section1:addDropdown("Mode", {"Fruit","Mob"}, function(value)
    getgenv().Mode = value
end)

local edit = section1:addDropdown("Target", refreshEnemies(), function(value)
    getgenv().Target = value
end)

section1:addButton("Refresh Targets", function()
    section1:updateDropdown(edit, "Target", refreshEnemies(), function()
        getgenv().Target = value
    end)
end)

section2:addDropdown("Tp to Zone", zoneTable, function(value)
    getgenv().Zone = value
    
    hrp.CFrame = CFrame.new(workspace.Zones[value].TeleportPosition.Position)
    
    game:GetService("ReplicatedStorage").Remotes.Events.TeleportedToZone:FireServer(value)
    
    task.delay(1, function()
        section1:updateDropdown(edit, "Target", refreshEnemies(), function()
            getgenv().Target = value
        end)
    end)

end)

section2:addSlider("WalkSpeed", 16, 16, 100, function(value)
    humanoid.WalkSpeed = value
end)

section2:addSlider("JumpPower", 50, 50, 250, function(value)
    humanoid.JumpPower = value
end)

section3:addButton("Hatch All", function()
    for i = 1, 10 do
        game:GetService("ReplicatedStorage").Remotes.Events.HatchOrb:FireServer(i)
    end
end)

section3:addToggle("Auto-Hatch", false, function(value)
    getgenv().AutoHatch = value
end)

section3:addButton("Place Orbs", function()
    for i = 1, 10 do
        game:GetService("ReplicatedStorage").Remotes.Events.PlaceOrb:FireServer(i, getgenv().Orb)
    end
end)

section3:addToggle("Auto Place", false, function(value)
    getgenv().AutoPlace = value
end)

local orbs = {}

for i,v in pairs(game:GetService("ReplicatedStorage").Assets.Orbs:GetChildren()) do
    table.insert(orbs, v.Name)
end

section3:addDropdown("Orb to place", orbs, function(value)
    getgenv().Orb = value
end)

local function punch()
    game:GetService("ReplicatedStorage").Remotes.Events.PerformAttack:FireServer("Melee", "Punch")
end

task.spawn(function()
    while task.wait(1) do
        if getgenv().Enabled then
            punch()
        end
        
        if getgenv().AutoHatch then
            for i = 1, 10 do
                game:GetService("ReplicatedStorage").Remotes.Events.HatchOrb:FireServer(i)    
            end
        end
        
        if getgenv().AutoPlace then
            for i = 1, 10 do
                game:GetService("ReplicatedStorage").Remotes.Events.PlaceOrb:FireServer(i, getgenv().Orb)
            end
        end
    end
end)

Run.Heartbeat:Connect(function()
    if getgenv().Enabled then
        humanoid:ChangeState(11)
    end
end)

local function mob()
    local closestEnemy

    for i,v in pairs(workspace.Enemies:GetChildren()) do
        if string.find(v.Name, getgenv().Target) then
            if v:FindFirstChild("HumanoidRootPart") then
                if not closestEnemy then
                    closestEnemy = v
                else
                    if (hrp.Position - closestEnemy.HumanoidRootPart.Position).Magnitude > (hrp.Position - v.HumanoidRootPart.Position).Magnitude then
                        closestEnemy = v
                    end
                end
            end
        end
    end
    
    if closestEnemy then
        return closestEnemy
    end
end

local function fruitBush()
    local closestEnemy

    function yes(v)
        if v:IsA("Part") and (v.Position - hrp.Position).Magnitude < math.huge then
            if v:FindFirstChildOfClass("Model") then
                if not closestEnemy then
                    closestEnemy = v
                else
                    if (hrp.Position - closestEnemy.Position).Magnitude > (hrp.Position - v.Position).Magnitude then
                        closestEnemy = v
                    end
                end
            end
        end
    end

    for i,v in pairs(workspace.FruitBushes:GetDescendants()) do
        if getgenv().BushSize == "BigBoi" and v:FindFirstChild("TrainingBush") then
            yes(v)
        elseif getgenv().BushSize == "Smol" and v:FindFirstChildOfClass("Model") and not v:FindFirstChild("TrainingBush") then
            yes(v)
        end
    end
   
    if closestEnemy then
        return closestEnemy
    end
end

while true do
    if getgenv().Enabled then
        if getgenv().Mode == "Mob" then
            local mob = mob()
            
            if mob then
                local healthbar = mob:FindFirstChild("HumanoidRootPart"):FindFirstChild("EnemyHealthOverhead") or mob:FindFirstChild("HumanoidRootPart"):FindFirstChild("BossHealthOverhead")

                if healthbar then
                    local offset = CFrame.new(0, -5, 0)
                    
                    local healthbar = healthbar.Back.Progress.Text:split(" / ")
                    
                    repeat
                        
                            hrp.CFrame = CFrame.new(mob.HumanoidRootPart.Position) * offset
                        
                        task.wait(0.2)
                    until mob:FindFirstChild("HumanoidRootPart") == nil or healthbar[1] == healthbar[2] or not getgenv().Enabled or getgenv().Mode ~= "Mob"  or getgenv().Target ~= (mob.Name:split("_"))[2]
                end
    
                
            end
        elseif getgenv().Mode == "Fruit" then
            local fruitBush= fruitBush()
            
            if fruitBush then
                repeat
                    pcall(function()
                        if getgenv().BushSize == "Smol" then
                            hrp.CFrame = CFrame.new(fruitBush.Position) * CFrame.new(0, 2.5, 0)
                        elseif getgenv().BushSize == "BigBoi" then
                            hrp.CFrame = CFrame.new(fruitBush.Position) * CFrame.new(0, 5, 0)
                        end
                    end)
    
                    task.wait(0.2)
                until (not fruitBush:FindFirstChildOfClass("Model")) or not getgenv().Enabled or getgenv().Mode ~= "Fruit"

            end
        end
    end

    task.wait(0.2)
end