-- Configuration
local ESP_COLOR = Color3.fromRGB(255, 0, 0) -- Color of the ESP blocks
local ESP_TRANSPARENCY = 0.5 -- Transparency of the ESP blocks
local ESP_THICKNESS = 0.05 -- Thickness of the ESP blocks
local UPDATE_FREQUENCY = 0.1 -- How often to update the ESP (in seconds)

-- Function to create ESP block for a player
local function createESP(player)
    local torso = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    if torso then
        local esp = Instance.new("BoxHandleAdornment")
        esp.Adornee = torso
        esp.Size = torso.Size + Vector3.new(0.1, 0.1, 0.1) -- Slightly larger than the torso
        esp.Color3 = ESP_COLOR
        esp.Transparency = ESP_TRANSPARENCY
        esp.AlwaysOnTop = true
        esp.ZIndex = 5
        esp.Parent = torso
    end
end

-- Function to update ESP positions
local function updateESP()
    for _, player in ipairs(game.Players:GetPlayers()) do
        createESP(player)
    end
end

-- Initial ESP creation
for _, player in ipairs(game.Players:GetPlayers()) do
    createESP(player)
end

-- Update ESP periodically
while true do
    updateESP()
    wait(UPDATE_FREQUENCY)
end
