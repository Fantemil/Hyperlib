local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local orbitDistance = 10
local orbitSpeed = 2
local orbitAngle = 0
local targetPlayerName = ""
local isOrbiting = false

local Window = OrionLib:MakeWindow({Name = "Orbit Player", HidePremium = false, SaveConfig = true, ConfigFolder = "OrbitPlayer"})

local OrbitTab = Window:MakeTab({
    Name = "Orbit Controls",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local function updatePlayerDropdown()
    local playerNames = {}
    for _, otherPlayer in pairs(Players:GetPlayers()) do
        table.insert(playerNames, otherPlayer.Name)
    end
    return playerNames
end

OrbitTab:AddDropdown({
    Name = "Select Player",
    Default = "",
    Options = updatePlayerDropdown(),
    Callback = function(Value)
        targetPlayerName = Value
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

OrbitTab:AddToggle({
    Name = "Toggle Orbit",
    Default = false,
    Callback = function(Value)
        isOrbiting = Value
    end    
})

local function getPlayerByName(name)
    for _, otherPlayer in pairs(Players:GetPlayers()) do
        if otherPlayer.Name == name then
            return otherPlayer
        end
    end
    return nil
end

RunService.Heartbeat:Connect(function(deltaTime)
    if not isOrbiting then return end

    local targetPlayer = getPlayerByName(targetPlayerName)
    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
        
        -- Update orbit angle
        orbitAngle = orbitAngle + orbitSpeed * deltaTime
        
        -- Calculate new position
        local offset = Vector3.new(
            math.cos(orbitAngle) * orbitDistance,
            0,
            math.sin(orbitAngle) * orbitDistance
        )
        
        -- Set new position and orientation
        humanoidRootPart.CFrame = CFrame.new(targetPosition + offset) * CFrame.Angles(0, orbitAngle + math.pi/2, 0)
    end
end)

Players.PlayerAdded:Connect(function()
    OrbitTab:UpdateDropdown({
        Name = "Select Player",
        Options = updatePlayerDropdown()
    })
end)

Players.PlayerRemoving:Connect(function()
    OrbitTab:UpdateDropdown({
        Name = "Select Player",
        Options = updatePlayerDropdown()
    })
end)

OrionLib:Init()