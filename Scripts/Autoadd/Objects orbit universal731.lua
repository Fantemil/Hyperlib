local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local orbitDistance = 10
local orbitSpeed = 2
local orbitWidth = 5
local orbitHeight = 10 -- ÐÑÑÐ¾ÑÐ° Ð¾ÑÐ±Ð¸ÑÑ
local orbitAngle = 0
local targetPlayerName = ""
local isOrbiting = false
local objectName = "redcoin"
local objectCount = 10
local objects = {}

local function findAllObjects(root, name)
    local objs = {}
    local function search(container)
        for _, child in ipairs(container:GetChildren()) do
            if child.Name == name then
                table.insert(objs, child)
            end
            search(child)
        end
    end
    search(root)
    return objs
end

local function updateObjectList()
    objects = findAllObjects(game, objectName)
end

local function getPlayerByName(name)
    for _, otherPlayer in pairs(Players:GetPlayers()) do
        if otherPlayer.Name == name then
            return otherPlayer
        end
    end
    return nil
end

local Window = OrionLib:MakeWindow({Name = "Orbit Objects", HidePremium = false, SaveConfig = true, ConfigFolder = "OrbitObjects"})

local OrbitTab = Window:MakeTab({
    Name = "Orbit Controls",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local SlapBattlesTab = Window:MakeTab({
    Name = "Slap Battles",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local EGTab = Window:MakeTab({
    Name = "EG",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local playerDropdown

local function updatePlayerDropdown()
    local playerNames = {}
    for _, otherPlayer in pairs(Players:GetPlayers()) do
        table.insert(playerNames, otherPlayer.Name)
    end
    if playerDropdown then
        playerDropdown:Refresh(playerNames, true)
    end
end

-- UI Ð´Ð»Ñ Ð½Ð°ÑÑÑÐ¾Ð¹ÐºÐ¸ Ð¾ÑÐ±Ð¸ÑÑ
playerDropdown = OrbitTab:AddDropdown({
    Name = "Select Player",
    Default = "",
    Options = {},
    Callback = function(Value)
        targetPlayerName = Value
    end    
})

OrbitTab:AddTextbox({
    Name = "Object Name",
    Default = "redcoin",
    TextDisappear = true,
    Callback = function(Value)
        objectName = Value
        updateObjectList()
    end  
})

OrbitTab:AddTextbox({
    Name = "Object Count",
    Default = "10",
    TextDisappear = true,
    Callback = function(Value)
        local newCount = tonumber(Value)
        if newCount then
            objectCount = newCount
        else
            OrionLib:MakeNotification({
                Name = "Invalid Input",
                Content = "Please enter a valid number for object count.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end  
})

OrbitTab:AddTextbox({
    Name = "Orbit Speed",
    Default = "2",
    TextDisappear = true,
    Callback = function(Value)
        local newSpeed = tonumber(Value)
        if newSpeed then
            orbitSpeed = newSpeed
        else
            OrionLib:MakeNotification({
                Name = "Invalid Input",
                Content = "Please enter a valid number for orbit speed.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end  
})

OrbitTab:AddTextbox({
    Name = "Orbit Width",
    Default = "5",
    TextDisappear = true,
    Callback = function(Value)
        local newWidth = tonumber(Value)
        if newWidth then
            orbitWidth = newWidth
        else
            OrionLib:MakeNotification({
                Name = "Invalid Input",
                Content = "Please enter a valid number for orbit width.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end  
})

OrbitTab:AddTextbox({
    Name = "Orbit Height",
    Default = "10",
    TextDisappear = true,
    Callback = function(Value)
        local newHeight = tonumber(Value)
        if newHeight then
            orbitHeight = newHeight
        else
            OrionLib:MakeNotification({
                Name = "Invalid Input",
                Content = "Please enter a valid number for orbit height.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end  
})

OrbitTab:AddToggle({
    Name = "Toggle Orbit",
    Default = false,
    Callback = function(Value)
        isOrbiting = Value
        if isOrbiting then
            updateObjectList()
        end
    end    
})

RunService.Heartbeat:Connect(function(deltaTime)
    if not isOrbiting then return end

    local targetPlayer = getPlayerByName(targetPlayerName)
    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
        
        -- Update orbit angle
        orbitAngle = orbitAngle + orbitSpeed * deltaTime
        
        for i = 1, math.min(objectCount, #objects) do
            local object = objects[i]
            
            -- Calculate vertical position in "ÑÑÑÐ±Ð°"
            local heightOffset = ((i - 1) / (objectCount - 1)) * orbitHeight - (orbitHeight / 2)
            
            local offset = Vector3.new(
                math.cos(orbitAngle + (i * 2 * math.pi / objectCount)) * orbitDistance,
                heightOffset,
                math.sin(orbitAngle + (i * 2 * math.pi / objectCount)) * orbitDistance
            )
            
            -- Set new position
            object.CFrame = CFrame.new(targetPosition + offset)
        end
    end
end)

Players.PlayerAdded:Connect(function()
    updatePlayerDropdown()
end)

Players.PlayerRemoving:Connect(function()
    updatePlayerDropdown()
end)

local function initializePlayerDropdown()
    local playerNames = {}
    for _, otherPlayer in pairs(Players:GetPlayers()) do
        table.insert(playerNames, otherPlayer.Name)
    end
    playerDropdown:Refresh(playerNames, true)
end

initializePlayerDropdown()

OrionLib:Init()