local players = game:GetService("Players")
local localPlayer = players.LocalPlayer
local camera = workspace.CurrentCamera
local runService = game:GetService("RunService")

-- Function to create a Drawing text
local function createText()
    local text = Drawing.new("Text")
    text.Size = 18
    text.Outline = true
    text.Center = true
    text.Visible = false
    return text
end

-- Table to hold the Drawing texts for each player
local playerText = {}

-- Function to generate rainbow colors
local function rainbowColor(frequency)
    local r = math.floor(math.sin(frequency + 0) * 127 + 128)
    local g = math.floor(math.sin(frequency + 2) * 127 + 128)
    local b = math.floor(math.sin(frequency + 4) * 127 + 128)
    return Color3.fromRGB(r, g, b)
end

-- Update the Drawing texts
local function updateTexts()
    local time = tick()
    for _, player in pairs(players:GetPlayers()) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local rootPart = player.Character.HumanoidRootPart
            local head = player.Character:FindFirstChild("Head")
            if head then
                local screenPos, onScreen = camera:WorldToViewportPoint(head.Position + Vector3.new(0, 2, 0))
                
                if onScreen then
                    local distance = (localPlayer.Character.HumanoidRootPart.Position - rootPart.Position).magnitude
                    local text = playerText[player]
                    
                    if not text then
                        text = createText()
                        playerText[player] = text
                    end
                    
                    text.Position = Vector2.new(screenPos.X, screenPos.Y)
                    text.Text = player.Name .. " | " .. math.floor(distance) .. " studs"
                    text.Color = rainbowColor(time + player.UserId)
                    text.Visible = true
                else
                    if playerText[player] then
                        playerText[player].Visible = false
                    end
                end
            end
        elseif playerText[player] then
            playerText[player].Visible = false
        end
    end
end

-- Update the texts every frame
runService.RenderStepped:Connect(updateTexts)

-- Clean up when a player leaves
players.PlayerRemoving:Connect(function(player)
    if playerText[player] then
        playerText[player]:Remove()
        playerText[player] = nil
    end
end)