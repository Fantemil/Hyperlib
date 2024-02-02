-- Initialize ESP
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local ESPFolder = Instance.new("Folder")
ESPFolder.Name = "ESP"
ESPFolder.Parent = game.CoreGui

-- Function to create ESP for a specific player with a larger hitbox
local function createESP(player)
    local Box = Instance.new("BoxHandleAdornment")
    Box.Size = player.Character.HumanoidRootPart.Size + Vector3.new(5, 5, 5) -- Increase hitbox size by adding Vector3 values
    Box.Color3 = Color3.new(0, 1, 0) -- Green color for simplicity, you can modify this
    Box.Transparency = 0.5
    Box.AlwaysOnTop = true
    Box.Adornee = player.Character.HumanoidRootPart
    Box.Parent = ESPFolder
end

-- Function to update ESP positions
local function updateESP()
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            createESP(player)
        end
    end
end

-- Run the updateESP function periodically
while wait(1) do
    ESPFolder:ClearAllChildren() -- Clear old ESP
    updateESP()
end