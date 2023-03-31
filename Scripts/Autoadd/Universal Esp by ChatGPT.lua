-- Configuration
local ESP_COLOR = Color3.new(1, 0, 0) -- The color of the ESP

-- Variables
local players = game:GetService("Players")
local player = players.LocalPlayer
local camera = workspace.CurrentCamera
local espFolder = Instance.new("Folder")
espFolder.Name = "ESP"
espFolder.Parent = game.CoreGui

-- Function to create an ESP for a player
local function createPlayerESP(player)
    local espBox = Instance.new("BoxHandleAdornment")
    espBox.Name = player.Name
    espBox.AlwaysOnTop = true
    espBox.ZIndex = 5
    espBox.Adornee = player.Character.HumanoidRootPart
    espBox.Size = player.Character.HumanoidRootPart.Size + Vector3.new(0.1, 0.1, 0.1)
    espBox.Color3 = ESP_COLOR
    espBox.Transparency = 0.5
    espBox.Parent = espFolder
end

-- Function to remove an ESP for a player
local function removePlayerESP(player)
    local espBox = espFolder:FindFirstChild(player.Name)
    if espBox then
        espBox:Destroy()
    end
end

-- Function to update the ESPs for all players
local function updatePlayerESP()
    for _, p in pairs(players:GetPlayers()) do
        if p ~= player and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            createPlayerESP(p)
        else
            removePlayerESP(p)
        end
    end
end

-- Connect events
players.PlayerAdded:Connect(updatePlayerESP)
players.PlayerRemoving:Connect(removePlayerESP)
camera.ChildAdded:Connect(function(child)
    if child:IsA("Model") and child.Name == "PlayerGui" and child.Parent == players.LocalPlayer then
        updatePlayerESP()
    end
end)