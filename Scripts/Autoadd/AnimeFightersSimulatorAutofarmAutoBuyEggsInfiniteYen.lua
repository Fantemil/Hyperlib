local player = game.Players.LocalPlayer
local world = workspace.Worlds[player.World.Value]
local enemies, eggs, petVals, toDelete = {}, {}, {}, {}

for i, v in pairs(world.Enemies:GetChildren()) do if not table.find(enemies, v.Name) then table.insert(enemies, v.Name) end end
for i, v in pairs(require(game:GetService("ReplicatedStorage").ModuleScripts.EggStats)) do table.insert(eggs, i) end
for i, v in pairs(game:GetService("ReplicatedStorage").ModuleScripts.PetStats:GetChildren()) do for i, v in pairs(require(v)) do petVals[tostring(v.DisplayName)] = v.Rarity end end
    
local attack = function(t)
    local n = 1
    for i, v in pairs(workspace.Pets:GetChildren()) do
        if v.Data.Owner.Value == player then
            game:GetService("ReplicatedStorage").Remote.SendPet:FireServer(v, t, n)
            n = n + 1
        end
    end
end

local nearestTarget = function(t)
    local nearest, dist = nil, math.huge
    for i, v in pairs(world.Enemies:GetChildren()) do
        if v.Name == t and v:FindFirstChild('HumanoidRootPart') then
            local newDist = player:DistanceFromCharacter(v.HumanoidRootPart.Position)
            if newDist < dist then
                dist = newDist; nearest = v
            end
        end
    end
    return nearest
end

local deleteSomething = function()
    for i, v in pairs(player.PlayerGui.MainGui.Pets.Main.Scroll:GetChildren()) do
        if v:IsA('ImageButton') and v:FindFirstChild('PetName') and toDelete[petVals[v.PetName.Text]] then
            game:GetService("ReplicatedStorage").Remote.ManagePet:FireServer(v.UID.Value, 'Lock', false)
            game:GetService("ReplicatedStorage").Remote.MassSell:FireServer({[1] = v.UID.Value})
        end
    end
end

workspace.Effects.ChildAdded:Connect(function(penis)
    if penis.Name == 'Yen' then
        game:GetService("ReplicatedStorage").Remote.Pickup:FireServer('Gem', 100000, 'Yen')
    end
end)

local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local window = Material.Load({Title = "Anime Fighters Simulator - cameron was here", Style = 3, SizeX = 500, SizeY = 350, Theme = "Aqua"})
local tab = window.New({Title = "Main"})
tab.Toggle({Text = "Enabled", Callback = function(v) farm = v end})
tab.Dropdown({ Text = "Selection", Callback = function(v) selection = v end, Options = enemies})
tab.Toggle({Text = "Open Egg", Callback = function(v) eggFarm = v end})
tab.Dropdown({Text = "Egg Selection", Callback = function(v) eggSelection = v end, Options = eggs})
tab.Toggle({Text = "Auto Delete", Callback = function(v) autoDelete = v end})
tab.DataTable({Text = "Rarities to delete", Callback = function(v) toDelete = v end, Options = {['Common'] = false, ['Rare'] = false, ['Epic'] = false, ['Legendary'] = false}})

spawn(function()
    while true do 
        if eggFarm and eggSelection ~= nil then game:GetService("ReplicatedStorage").Remote.OpenEgg:InvokeServer(workspace.Worlds:FindFirstChild(eggSelection, true), 1) end
        if autoDelete then deleteSomething() end 
        wait()
    end
end)

while true do
    if farm then
        local target = nearestTarget(selection)
        if target ~= nil then
            attack(target)
            while target:FindFirstChild('Health') and target.Health.Value > 0 and farm do game:GetService("ReplicatedStorage").Remote.ClickerDamage:FireServer() wait() end
        end
    end
    wait()
end