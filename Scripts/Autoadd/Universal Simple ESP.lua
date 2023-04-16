-- Settings
local espDistance = 100 -- Distance in studs to display ESP
local espBoxSize = Vector3.new(4, 6, 0) -- Size of the ESP box
local espBoxColor = Color3.fromRGB(0, 255, 0) -- Color of the ESP box

-- Functions
local function createBox(player)
    local box = Instance.new("BoxHandleAdornment")
    box.Size = espBoxSize
    box.Adornee = player.Character.HumanoidRootPart
    box.Color3 = espBoxColor
    box.AlwaysOnTop = true
    box.ZIndex = 5
    box.Parent = player.Character.HumanoidRootPart
    return box
end

local function removeBox(box)
    if box then
        box:Destroy()
    end
end

local function updateESP()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if distance <= espDistance then
                local box = createBox(player)
                player.CharacterAdded:Connect(function()
                    removeBox(box)
                    box = createBox(player)
                end)
            end
        end
    end
end

-- Main
updateESP()
game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        wait(1)
        updateESP()
    end)
end)