-- Initial setup
local players = game:GetService("Players")
local localPlayer = players.LocalPlayer
local replicatedStorage = game:GetService("ReplicatedStorage")
local runService = game:GetService("RunService")

-- Create GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CustomizationGui"
screenGui.Parent = localPlayer:WaitForChild("PlayerGui")

local toggleButton = Instance.new("TextButton")
toggleButton.Name = "ToggleButton"
toggleButton.Size = UDim2.new(0, 200, 0, 50)
toggleButton.Position = UDim2.new(0, 10, 0, 10)
toggleButton.Text = "Turn On"
toggleButton.Parent = screenGui

-- Variables for button state and connections
local isEnabled = false
local updateConnection

-- Function to convert a Color3 to a hex number
local function color3ToHex(color)
    local r = math.floor(color.R * 255)
    local g = math.floor(color.G * 255)
    local b = math.floor(color.B * 255)
    return tonumber(string.format("0x%02X%02X%02X", r, g, b))
end

-- Function to send color update request
local function sendColorUpdate(meshType, hexColor)
    local args = {
        [1] = 1,
        [2] = meshType,
        [3] = hexColor
    }
    replicatedStorage:WaitForChild("Customize"):FireServer(unpack(args))
end

-- Function to send texture update request
local function copyTextureIDForMesh(meshType, textureID)
    local args = {
        [1] = 3,
        [2] = meshType,
        [3] = textureID
    }
    replicatedStorage:WaitForChild("Customize"):FireServer(unpack(args))
end

-- Function to find the nearest player to the local player
local function getNearestPlayer()
    local nearestPlayer = nil
    local shortestDistance = math.huge

    for _, player in pairs(players:GetPlayers()) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local playerPos = player.Character.HumanoidRootPart.Position
            local localPos = localPlayer.Character.HumanoidRootPart.Position
            local distance = (playerPos - localPos).Magnitude

            if distance < shortestDistance then
                shortestDistance = distance
                nearestPlayer = player
            end
        end
    end

    return nearestPlayer
end

-- Function to process Mouth and Mustache individually
local function handleMouthOrMustache(nearestPlayer)
    local mouthPart = nearestPlayer.Character:FindFirstChild("Mouth", true)
    local mustachePart = nearestPlayer.Character:FindFirstChild("Mustache", true)

    -- If Mouth is found first, apply the texture and exit
    if mouthPart and mouthPart:IsA("MeshPart") and mouthPart.TextureID then
        copyTextureIDForMesh(2, mouthPart.TextureID) -- Apply Mouth texture
        return true -- Stop further checking
    end
    
    -- If Mouth is not found or no texture, apply Mustache texture
    if mustachePart and mustachePart:IsA("MeshPart") and mustachePart.TextureID then
        copyTextureIDForMesh(2, mustachePart.TextureID) -- Apply Mustache texture
        return true -- Stop further checking
    end
    
    return false -- If neither texture is applied, return false
end

-- Function to update the colors and textures for various meshes
local function updateCharacterAppearance()
    local nearestPlayer = getNearestPlayer()

    if nearestPlayer and nearestPlayer.Character then
        local meshMappings = {
            {name = "Gloves", typeID = 4},
            {name = "Shoes", typeID = 5},
            {name = "Shirt", typeID = 2},
            {name = "Overalls", typeID = 1},
            {name = "Face", typeID = 6},
            {name = "Cap", typeID = 3},
            {name = "HairOpen", typeID = 7},
            {name = "Nose", typeID = 8}
        }

        for _, meshInfo in pairs(meshMappings) do
            local meshPart = nearestPlayer.Character:FindFirstChild(meshInfo.name, true)
            if meshPart and meshPart:IsA("MeshPart") then
                local hexColor = color3ToHex(meshPart.Color)
                sendColorUpdate(meshInfo.typeID, hexColor)
            end
        end

        -- Handle Mouth and Mustache
        handleMouthOrMustache(nearestPlayer)

        -- Process other textures normally
        local textureMappings = {
            {name = "Eyes", typeID = 4},
            {name = "Buttons", typeID = 3},
            {name = "SideBurns", typeID = 5},
            {name = "Emblem", typeID = 1}
        }

        for _, textureInfo in pairs(textureMappings) do
            local meshPart = nearestPlayer.Character:FindFirstChild(textureInfo.name, true)
            if meshPart and meshPart:IsA("MeshPart") and meshPart.TextureID then
                copyTextureIDForMesh(textureInfo.typeID, meshPart.TextureID)
            end
        end
    end
end

-- Function to enable updates
local function enableUpdates()
    if not updateConnection then
        updateConnection = runService.RenderStepped:Connect(updateCharacterAppearance)
    end
end

-- Function to disable updates
local function disableUpdates()
    if updateConnection then
        updateConnection:Disconnect()
        updateConnection = nil
    end
end

-- Toggle button functionality
toggleButton.MouseButton1Click:Connect(function()
    isEnabled = not isEnabled
    toggleButton.Text = isEnabled and "Turn Off" or "Turn On"
    
    if isEnabled then
        enableUpdates()
    else
        disableUpdates()
    end
end)

-- Initial setup
if isEnabled then
    enableUpdates()
end
