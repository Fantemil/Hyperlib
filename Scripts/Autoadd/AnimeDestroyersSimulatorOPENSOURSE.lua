_G.Enabled = false
_G.World = "One Blox Docks"
_G.Target = "Pirate Thug"
_G.Mode = "Target"
_G.Distance = 6

local Run = game:GetService("RunService")
local Players = game:GetService("Players")

local uiName = "Anime Destroyers"

local localPlayer = Players.LocalPlayer
local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local HRP = character.HumanoidRootPart
local Humanoid = character.Humanoid

for i,v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v.Name == uiName then
        v:Destroy()
    end 
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local ui = library.new(uiName)

local page = ui:addPage("Auto-Farm")
local section = page:addSection("Settings")

section:addToggle("Enabled", false, function(value)
    _G.Enabled = value
end)

section:addSlider("Distance", _G.Distance, 0, 10, function(value)
    _G.Distance = value
end)

section:addDropdown("Mode", {"Target", "Kill All", "Kill All (Closest)"}, function(value)
    _G.Mode = value
end)

local worldsTable = {}

for i,v in pairs(workspace.Buildings:GetChildren()) do
    if not (table.find(worldsTable, v.Name)) then
        table.insert(worldsTable, v.Name)
    end
end

--[[ 

section:addDropdown("World", worldsTable, function(value)
    _G.World = value
end) 

]]

local mobTable = {}

for i,v in pairs(workspace.Enemies:GetChildren()) do
    if v:FindFirstChild("HumanoidRootPart") then
        if v.HumanoidRootPart:FindFirstChild("InfoBar") then
            if not table.find(mobTable, v.HumanoidRootPart.InfoBar.NameLabel.Text) then
                table.insert(mobTable, v.HumanoidRootPart.InfoBar.NameLabel.Text)
            end
        end
    end
end

section:addDropdown("Target", mobTable, function(value)
    _G.Target = value
end)

for i,v in pairs(localPlayer.PlayerGui.MainGui.Frames.Inventory.PowerList:GetChildren()) do
    if v:IsA("ImageButton") and v.EquipMark.Visible == true then
        for i = 2, 3 do
            local ohString1 = v.Name
            local ohNumber2 = i
            local ohBoolean3 = true
            
            game:GetService("ReplicatedStorage").Remotes.EquipItem:InvokeServer(ohString1, ohNumber2, ohBoolean3)
        end
    end
end

task.spawn(function()
    while true do
        for i,v in pairs(workspace.Coins:GetChildren()) do
            if v:IsA("MeshPart") then
                v.CFrame = CFrame.new(HRP.Position)
            end
        end
        
        task.wait(1)
    end
end)

Run.Heartbeat:Connect(function()
    if _G.Enabled then
        Humanoid:ChangeState(11)
        game:GetService("Workspace").HealingWells.Well.CFrame = CFrame.new(HRP.Position)
    end
end)

function attack(Entity)
    local tool = character:FindFirstChildOfClass("Tool") or localPlayer.Backpack:FindFirstChildOfClass("Tool")
    
    if tool then
        tool.Parent = character
        
        for i = 1, 10 do
            local ohTable2 = {
             [1] = {
              [1] = Entity,
              [2] = Entity.HumanoidRootPart.Position
             }
            }
            
            game:GetService("ReplicatedStorage").Remotes.UseSword:InvokeServer(tool, ohTable2)
        end
    end
end

function getClosestEntity()
    local closestEntity

    for i,v in pairs(workspace.Enemies:GetChildren()) do
        local vHRP = v:FindFirstChild("HumanoidRootPart")
        
        if vHRP then
            local InfoBar = vHRP:FindFirstChild("InfoBar")
            
            if _G.Mode == "Target" then
                if InfoBar then
                    if InfoBar.NameLabel.Text == _G.Target then
                        if not (closestEntity) then
                            closestEntity = v
                        elseif closestEntity then
                            if (closestEntity.HumanoidRootPart.Position - HRP.Position).Magnitude > (vHRP.Position - HRP.Position).Magnitude then
                                closestEntity = v
                            end
                        end
                    end
                end
            elseif _G.Mode == "Kill All (Closest)" then
                if not (closestEntity) then
                    closestEntity = v
                elseif closestEntity then
                    if (closestEntity.HumanoidRootPart.Position - HRP.Position).Magnitude > (vHRP.Position - HRP.Position).Magnitude then
                        closestEntity = v
                    end
                end
            elseif _G.Mode == "Kill All" then
                closestEntity = v
                
                return closestEntity
            end
            
        end
    end
    
    return closestEntity
end

while true do
    if _G.Enabled ~= false then
        
        local entity = getClosestEntity()
        
        if entity then
            local eHRP = entity:FindFirstChild("HumanoidRootPart")
            local eHumanoid = entity:FindFirstChild("Humanoid")
            local HealthBar = enti
            
            if eHRP and eHumanoid then
                local HealthBar = eHRP:FindFirstChild("HealthBar")
                
                if HealthBar then
                    local yes = _G.Mode
                    
                    while true do
                        if tostring(HealthBar.Background.HP.Text):split(" / ")[1] == "0" then
                            break
                        end
                        
                        if _G.Enabled == false then
                            break
                        end
                        
                        if _G.Mode ~= yes then
                            break
                        end
                        
                        HRP.CFrame = CFrame.new(eHRP.Position) * CFrame.new(0, _G.Distance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                        
                        
                        task.spawn(function()
                            attack(entity)
                        end)
                        
                        task.wait(0.05)
                    end
                end
            end
        end
    end
    
    task.wait(0.2)
end