local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

function isSpy(player)
    local boolFolder = player:FindFirstChild("boolFolder")
    if boolFolder then
        local isSpy = boolFolder:FindFirstChild("isSpy")
        if isSpy then
            return isSpy.Value
        end
    end
    return false
end

function createESP(player)
    if player ~= LocalPlayer and player.Character and isSpy(player) then
        local highlight = Instance.new("Highlight")
        highlight.Name = "ESP"
        highlight.FillTransparency = 0.5
        highlight.OutlineTransparency = 0
        highlight.Adornee = player.Character
        highlight.Parent = player.Character
    end
end

function removeESP(player)
    if player.Character and player.Character:FindFirstChild("ESP") then
        player.Character.ESP:Destroy()
    end
end

function updateESPColor()
    local hue = tick() % 5 / 5
    local color = Color3.fromHSV(hue, 1, 1)
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("ESP") then
            player.Character.ESP.FillColor = color
        end
    end
end

function checkAndCreateESP()
    for _, player in pairs(Players:GetPlayers()) do
        if isSpy(player) and not (player.Character and player.Character:FindFirstChild("ESP")) then
            createESP(player)
        elseif not isSpy(player) and player.Character and player.Character:FindFirstChild("ESP") then
            removeESP(player)
        end
    end
end

-- Initial ESP creation for existing players
for _, player in pairs(Players:GetPlayers()) do
    createESP(player)
end

-- Monitor new players
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        wait(0.5)  -- Add a short delay to ensure the character is fully loaded
        createESP(player)
    end)
end)

Players.PlayerRemoving:Connect(removeESP)

-- Loop to update colors and check spy status
RunService.RenderStepped:Connect(function()
    updateESPColor()
    checkAndCreateESP()
end)