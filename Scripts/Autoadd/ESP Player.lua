local players = game:GetService("Players")
local localPlayer = players.LocalPlayer
local camera = workspace.CurrentCamera

local function createESPBox(player)
    local box = Instance.new("BoxHandleAdornment")
    box.Name = "ESPBox"
    box.Adornee = player.Character
    box.Size = player.Character:GetExtentsSize()
    box.Color3 = Color3.new(1, 0, 0)
    box.AlwaysOnTop = true
    box.ZIndex = 5
    box.Transparency = 0.7
    box.Parent = camera
end

local function destroyESPBoxes()
    for _, child in ipairs(camera:GetChildren()) do
        if child:IsA("BoxHandleAdornment") and child.Name == "ESPBox" then
            child:Destroy()
        end
    end
end

local espEnabled = true
local toggleKey = Enum.KeyCode.P

-- create ESP boxes for all players in the game
for _, player in ipairs(players:GetPlayers()) do
    if player ~= localPlayer and player.Character then
        createESPBox(player)
    end
end

-- create ESP boxes for new players who join the game
players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        if espEnabled then
            createESPBox(player)
        end
    end)
end)

-- remove ESP boxes when players leave the game
players.PlayerRemoving:Connect(function(player)
    local espBox = camera:FindFirstChild("ESPBox")
    if espBox and espBox.Adornee == player.Character then
        espBox:Destroy()
    end
end)

-- toggle ESP on and off with the 'P' key
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == toggleKey and not gameProcessedEvent then
        espEnabled = not espEnabled
        if espEnabled then
            for _, player in ipairs(players:GetPlayers()) do
                if player ~= localPlayer and player.Character then
                    createESPBox(player)
                end
            end
        else
            destroyESPBoxes()
        end
    end
end)